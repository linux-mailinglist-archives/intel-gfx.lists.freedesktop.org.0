Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 413C52C48E6
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 21:14:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BCB26EA84;
	Wed, 25 Nov 2020 20:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8A766EA82
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 20:14:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23108368-1500050 for multiple; Wed, 25 Nov 2020 20:14:41 +0000
MIME-Version: 1.0
In-Reply-To: <61248f45-d8f1-edec-656a-6eaddefb3789@intel.com>
References: <20201125003108.156110-1-aditya.swarup@intel.com>
 <87360xmzgr.fsf@intel.com>
 <160631840326.26272.537878967385128182@build.alporthouse.com>
 <61248f45-d8f1-edec-656a-6eaddefb3789@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Aditya Swarup <aditya.swarup@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 20:14:41 +0000
Message-ID: <160633528103.26272.17614370373850540908@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix REVID macros for TGL to
 fetch correct stepping
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Aditya Swarup (2020-11-25 17:51:04)
> On 11/25/20 7:33 AM, Chris Wilson wrote:
> > Quoting Jani Nikula (2020-11-25 11:45:56)
> >> On Tue, 24 Nov 2020, Aditya Swarup <aditya.swarup@intel.com> wrote:
> >>>  static inline const struct i915_rev_steppings *
> >>>  tgl_revids_get(struct drm_i915_private *dev_priv)
> >>>  {
> >>> -     if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv))
> >>> -             return tgl_uy_revids;
> >>> -     else
> >>> -             return tgl_revids;
> >>> +     const u8 revid = INTEL_REVID(dev_priv);
> >>> +
> >>> +     if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
> >>> +             if (TGL_UY_REVID_RANGE(revid)) {
> >>> +                     return tgl_uy_revids + revid;
> >>> +             } else {
> >>> +                     drm_dbg_kms(&dev_priv->drm,
> >>> +                                 "Unsupported SOC stepping found %u, using %lu instead\n",
> >>> +                                 revid, ARRAY_SIZE(tgl_uy_revids) - 1);
> > 
> > Also please don't have a dbg for every single IS_TGL_*_REVID
> > invocation. And this is not _kms, but driver; better yet, don't bother
> > with a drm_dbg_kms here at all.
> > 
> > If you want to actually check, add something like
> > intel_detect_preproduction_hw() and warn about unknown future revids.
> > Or include the info when we print the revid in the caps.
> 
> So, what you are suggesting is add an info print in that function intel_detect_preproduction_hw() right?
> Or something else?

I wouldn't put it in detect_preproduction, just using that as an example
of when we do probes for unexpected revids. E.g.,

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index ca16ea541ecc..f1ff5509c23a 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -273,6 +273,21 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
        }
 }

+/*
+ * HW that is more recent than the kernel runs the risk of us applying
+ * stale and disruptive w/a. Leave a debug tell-tale just in case.
+ */
+static void intel_detect_unknown_hw(struct drm_i915_private *dev_priv)
+{
+       bool post = false;
+
+       if (post) {
+               drm_dbg(&dev_priv->drm,
+                       "This machine is more recent than the w/a database!\n");
+               add_taint(TAINT_MACHINE_CHECK, LOCKDEP_STILL_OK);
+       }
+}
+
 static void sanitize_gpu(struct drm_i915_private *i915)
 {
        if (!INTEL_INFO(i915)->gpu_reset_clobbers_display)
@@ -343,6 +358,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
        intel_init_audio_hooks(dev_priv);

        intel_detect_preproduction_hw(dev_priv);
+       intel_detect_unknown_hw(dev_priv);

        return 0;


The taint is probably not justified in this case.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
