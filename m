Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6EA30B00E
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 20:07:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23EF46E87B;
	Mon,  1 Feb 2021 19:07:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 883FB6E87B
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 19:07:25 +0000 (UTC)
IronPort-SDR: 5ulw98RUiPpr2B64fPxqnwRvpHHBXiNf4FygT9lkT6NtXW8LNeloLK/sBFd35ls5q15RAwufLR
 spG1CRszgzYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="265570135"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="265570135"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 11:07:24 -0800
IronPort-SDR: rGfzsSyqMTWneCTl2CnODailwycRgi+Dn+Q6aQGl2BBYhJlZ8j2JtEY9WRK2cBZnjotz3PIskj
 CFx7D8+ZGVVw==
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="479202991"
Received: from scewbso01.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.142.9])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 11:07:23 -0800
Date: Mon, 1 Feb 2021 11:07:20 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210201190720.mhsuf7qyq3oemqbp@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
 <20210201183343.15292-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210201183343.15292-5-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/15] drm/i915: Extract hsw_ddi_{enable,
 disable}_clock()
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

On Mon, Feb 01, 2021 at 08:33:32PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Yank out the HSW/BDW code from intel_ddi_clk_{select,disable}()
>and put it into the new encoder .{enable,disable}_clock() vfuncs.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 32 +++++++++++++++++++-----
> 1 file changed, 26 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index da8bb9a2de0b..b46d7be1996b 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3433,9 +3433,6 @@ static void intel_ddi_clk_select(struct intel_encode=
r *encoder,
>
> 		intel_de_write(dev_priv, DPLL_CTRL2, val);
>
>-	} else if (INTEL_GEN(dev_priv) < 9) {
>-		intel_de_write(dev_priv, PORT_CLK_SEL(port),
>-			       hsw_pll_to_ddi_pll_sel(pll));
> 	}
>
> 	mutex_unlock(&dev_priv->dpll.lock);
>@@ -3458,12 +3455,30 @@ static void intel_ddi_clk_disable(struct intel_enc=
oder *encoder)
> 	} else if (IS_GEN9_BC(dev_priv)) {
> 		intel_de_write(dev_priv, DPLL_CTRL2,
> 			       intel_de_read(dev_priv, DPLL_CTRL2) | DPLL_CTRL2_DDI_CLK_OFF(po=
rt));
>-	} else if (INTEL_GEN(dev_priv) < 9) {
>-		intel_de_write(dev_priv, PORT_CLK_SEL(port),
>-			       PORT_CLK_SEL_NONE);
> 	}
> }
>
>+static void hsw_ddi_enable_clock(struct intel_encoder *encoder,
>+				 const struct intel_crtc_state *crtc_state)
>+{
>+	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);

since we are adding this new function, better to use i915 rather than
dev_priv.

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
