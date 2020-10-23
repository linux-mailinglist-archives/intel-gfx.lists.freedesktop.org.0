Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8973D2977C9
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 21:33:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D856E81C;
	Fri, 23 Oct 2020 19:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B0296E81C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 19:33:36 +0000 (UTC)
IronPort-SDR: v+QJZ8fUQxWwuRKBWyPAb6jvL9BPTsrL6+8Qh8p4NnYjFng6l3qPnsDC9AyhhMsXQGEpCugHNK
 QWgmITGagGhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="164228092"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="164228092"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:33:35 -0700
IronPort-SDR: CnW/51lDOl5/2BgmJmjDzFju5abFtEbVdeisGlI9xtqgyjPR5MFYDkf0VCorhuc+P4D3GkgGZe
 vy44OdT7cppA==
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="359691521"
Received: from spoase-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.216.15])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 12:33:35 -0700
Date: Fri, 23 Oct 2020 12:33:34 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201023193334.5le3sk75oubmje4y@ldmartin-desk1>
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
 <20201023133420.12039-19-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023133420.12039-19-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 18/19] drm/i915: Use GEN3_IRQ_INIT() to
 init south interrupts in icp+
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 23, 2020 at 04:34:19PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>No reason not to use GEN3_IRQ_INIT() on icp+.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
>---
> drivers/gpu/drm/i915/i915_irq.c | 8 ++------
> 1 file changed, 2 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 04a6f322110d..b4eddf49a62a 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -3713,14 +3713,10 @@ static void gen8_irq_postinstall(struct drm_i915_p=
rivate *dev_priv)
>
> static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
> {
>+	struct intel_uncore *uncore =3D &dev_priv->uncore;
> 	u32 mask =3D SDE_GMBUS_ICP;
>
>-	drm_WARN_ON(&dev_priv->drm, I915_READ(SDEIER) !=3D 0);
>-	I915_WRITE(SDEIER, 0xffffffff);
>-	POSTING_READ(SDEIER);
>-
>-	gen3_assert_iir_is_zero(&dev_priv->uncore, SDEIIR);
>-	I915_WRITE(SDEIMR, ~mask);
>+	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
> }
>
> static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
>-- =

>2.26.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
