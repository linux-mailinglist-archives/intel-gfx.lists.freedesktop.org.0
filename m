Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E7A30B02D
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 20:16:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 959BD6E9F3;
	Mon,  1 Feb 2021 19:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58B3B6E9F3
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 19:16:21 +0000 (UTC)
IronPort-SDR: x0JYdeeXI5idC+6Sha1K4dAVYOBI0iRvAjz81YAvDM7M4zgicj1c+pNrqobepSn6eLw/5+AvsH
 EQRm4azItLUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="168419417"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="168419417"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 11:16:20 -0800
IronPort-SDR: wYN/Ul8T+cwErG9BeJZ7zQgErD2owqePmekE9mHBbfoj+QfJJcaMOk8o4LHNZaJ9AbL4zJNBRd
 v5bcgEMyFTug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="395716995"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 01 Feb 2021 11:16:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Feb 2021 21:16:17 +0200
Date: Mon, 1 Feb 2021 21:16:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YBhTgYvNX3sp7KwU@intel.com>
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
 <20210201183343.15292-5-ville.syrjala@linux.intel.com>
 <20210201190720.mhsuf7qyq3oemqbp@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210201190720.mhsuf7qyq3oemqbp@ldmartin-desk1>
X-Patchwork-Hint: comment
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 01, 2021 at 11:07:20AM -0800, Lucas De Marchi wrote:
> On Mon, Feb 01, 2021 at 08:33:32PM +0200, Ville Syrj=E4l=E4 wrote:
> >From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> >Yank out the HSW/BDW code from intel_ddi_clk_{select,disable}()
> >and put it into the new encoder .{enable,disable}_clock() vfuncs.
> >
> >Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_ddi.c | 32 +++++++++++++++++++-----
> > 1 file changed, 26 insertions(+), 6 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
> >index da8bb9a2de0b..b46d7be1996b 100644
> >--- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >@@ -3433,9 +3433,6 @@ static void intel_ddi_clk_select(struct intel_enco=
der *encoder,
> >
> > 		intel_de_write(dev_priv, DPLL_CTRL2, val);
> >
> >-	} else if (INTEL_GEN(dev_priv) < 9) {
> >-		intel_de_write(dev_priv, PORT_CLK_SEL(port),
> >-			       hsw_pll_to_ddi_pll_sel(pll));
> > 	}
> >
> > 	mutex_unlock(&dev_priv->dpll.lock);
> >@@ -3458,12 +3455,30 @@ static void intel_ddi_clk_disable(struct intel_e=
ncoder *encoder)
> > 	} else if (IS_GEN9_BC(dev_priv)) {
> > 		intel_de_write(dev_priv, DPLL_CTRL2,
> > 			       intel_de_read(dev_priv, DPLL_CTRL2) | DPLL_CTRL2_DDI_CLK_OFF(=
port));
> >-	} else if (INTEL_GEN(dev_priv) < 9) {
> >-		intel_de_write(dev_priv, PORT_CLK_SEL(port),
> >-			       PORT_CLK_SEL_NONE);
> > 	}
> > }
> >
> >+static void hsw_ddi_enable_clock(struct intel_encoder *encoder,
> >+				 const struct intel_crtc_state *crtc_state)
> >+{
> >+	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> =

> since we are adding this new function, better to use i915 rather than
> dev_priv.

Hmm. Yeah, looks like we can do that in this case since
PORT_CLK_SEL() doesn't depend on 'dev_priv'. I'm just too lazy
to always check for that, and so I tend to do the rename only
when there are no register accesses in the function.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
