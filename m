Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BD832E60C
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 11:19:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC5276E154;
	Fri,  5 Mar 2021 10:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A19AF6E154
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Mar 2021 10:19:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 24022936-1500050 for multiple; Fri, 05 Mar 2021 10:19:21 +0000
MIME-Version: 1.0
In-Reply-To: <87tuq1etts.fsf@intel.com>
References: <cover.1614094093.git.jani.nikula@intel.com>
 <51d718e2b6f0543c87d19994e55acc41d4fe8c48.1614094093.git.jani.nikula@intel.com>
 <20210224015455.4z2mhbtmeofzelxj@ldmartin-desk1> <87tuq1etts.fsf@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Date: Fri, 05 Mar 2021 10:19:20 +0000
Message-ID: <161493956025.15221.14472624414097711679@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 6/7] drm/i915: rename
 DISP_STEPPING->DISPLAY_STEP and GT_STEPPING->GT_STEP
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2021-02-24 08:46:55)
> On Tue, 23 Feb 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> > On Tue, Feb 23, 2021 at 05:35:11PM +0200, Jani Nikula wrote:
> >>Matter of taste. STEP matches the enums.
> >>
> >>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >>---
> >> drivers/gpu/drm/i915/display/intel_display_power.c |  2 +-
> >> drivers/gpu/drm/i915/display/intel_psr.c           |  4 ++--
> >> drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
> >> drivers/gpu/drm/i915/gt/intel_workarounds.c        | 10 +++++-----
> >> drivers/gpu/drm/i915/i915_drv.h                    | 10 +++++-----
> >> drivers/gpu/drm/i915/intel_device_info.c           |  2 +-
> >> drivers/gpu/drm/i915/intel_pm.c                    |  2 +-
> >> 7 files changed, 16 insertions(+), 16 deletions(-)
> >>
> >>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> >>index f00c1750febd..1f7b2700947a 100644
> >>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
> >>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> >>@@ -5349,7 +5349,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
> >>
> >>      if (IS_ALDERLAKE_S(dev_priv) ||
> >>          IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
> >>-         IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_B0))
> >>+         IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> >>              /* Wa_1409767108:tgl,dg1,adl-s */
> >>              table = wa_1409767108_buddy_page_masks;
> >>      else
> >>diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> >>index 7c6e561f86c1..da5084b54eb6 100644
> >>--- a/drivers/gpu/drm/i915/display/intel_psr.c
> >>+++ b/drivers/gpu/drm/i915/display/intel_psr.c
> >>@@ -548,7 +548,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
> >>
> >>      if (intel_dp->psr.psr2_sel_fetch_enabled) {
> >>              /* WA 1408330847 */
> >>-             if (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0) ||
> >>+             if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
> >
> > I always hated the DISP vs DISPLAY. It should be in the commit message.
> >
> > But if you are doing the s/STEPPING/STEP/, shouldn't the filename also use
> > step and all the functions/structs?
> 
> To be honest, the rename came as an afterthought, after Aditya (I think)
> added the STEP_X enums.
> 
> For me step everywhere sounds good, I wonder what the native speakers
> think.

IS_DISPLAY_STEPPING(STEP_X) is more flamboyant than
IS_DISPLAY_STEP(STEP_X), but we often make the concession for brevity
and in this case the consistency between macro and enum beats the
inconsistency in English. So STEP reads as a perfectly acceptable synonym
for STEPPING.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
