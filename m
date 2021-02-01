Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FAD30B02C
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 20:15:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A696E9E6;
	Mon,  1 Feb 2021 19:15:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A97526E9E6
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 19:15:45 +0000 (UTC)
IronPort-SDR: bT2WAq8+NBpuaKRzY/YVC+XgBcowR9j2lwkAxcX3bJiWlhyb4WuPBqWMQZJVriFWArzz58FLnJ
 ZuFXaDiutZ6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="242256174"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="242256174"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 11:15:44 -0800
IronPort-SDR: W4Z197zJqe8vBhZZaCl+8MX6dqkEhJoz9H7qy+YJskvofH+I596XoNJ01ebd98DuBekRClG2Ig
 +QrVIdnTo9eQ==
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="575222394"
Received: from scewbso01.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.142.9])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 11:15:43 -0800
Date: Mon, 1 Feb 2021 11:15:41 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210201191541.ia6elqacegpskzoa@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
 <20210201183343.15292-12-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210201183343.15292-12-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 11/15] drm/i915: Sprinkle WARN(!pll) into
 icl/dg1 .clock_enable()
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

On Mon, Feb 01, 2021 at 08:33:39PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>The other DDI .enable_clock() functions are trying to protect us
>against pll=3D=3DNULL. A bit tempted to throw out all the WARNs as
>just unnecessary noise, but I guess they might have some use
>when poking around the shared_dpll code (not sure it wouldn't
>oops elsewhere though). So let's unify it all and sprinkle in
>the missing WARNs for icl/dg1.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++++++
> 1 file changed, 6 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 93552f3c2c43..b4984bbd7817 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3165,6 +3165,9 @@ static void dg1_ddi_enable_clock(struct intel_encode=
r *encoder,
> 	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> 	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>
>+	if (drm_WARN_ON(&dev_priv->drm, !pll))
>+		return;
>+
> 	/*
> 	 * If we fail this, something went very wrong: first 2 PLLs should be
> 	 * used by first 2 phys and last 2 PLLs by last phys
>@@ -3207,6 +3210,9 @@ static void icl_ddi_combo_enable_clock(struct intel_=
encoder *encoder,
> 	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> 	i915_reg_t reg =3D icl_dpclka_cfgcr0_reg(dev_priv, phy);
>
>+	if (drm_WARN_ON(&dev_priv->drm, !pll))
>+		return;
>+
> 	mutex_lock(&dev_priv->dpll.lock);
>
> 	/*
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
