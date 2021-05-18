Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C61CE387825
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 13:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 171F06EB38;
	Tue, 18 May 2021 11:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C00CF6EB38
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 11:55:31 +0000 (UTC)
IronPort-SDR: qB/Xhzu6Lv6ou8Z+0BaNP+FvTPtx1jyR+KzliC1kJJj+uO/TDvC+RLO4PsWPHocI0thk7nK6ZT
 DKCO8ecy3Ayw==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="221742382"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="221742382"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 04:55:31 -0700
IronPort-SDR: gqNAODqXoMtdBKY5RJEa9ji4tNpKsN13BZBdrkEjpH3eBE4MflyBDkCHbpLWZsUvkTiofortdp
 +A0Ea7IwbFfQ==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="393924659"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 04:55:29 -0700
Date: Tue, 18 May 2021 14:58:48 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210518115848.GA24407@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210515031035.2561658-11-matthew.d.roper@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v4 10/23] drm/i915/adl_p: Don't config MBUS
 and DBUF during display initialization
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

On Fri, May 14, 2021 at 08:10:22PM -0700, Matt Roper wrote:
> From: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> Alderlake-P don't have programing sequences for MBUS or DBUF during
> display initializaiton, instead it requires programing to those
> registers during modeset because it to depend on the pipes left
> enabled.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> Bspec: 49213
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 29d2f1d0cffd..26d2eba87486 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5246,6 +5246,9 @@ static void gen12_dbuf_slices_config(struct drm_i91=
5_private *dev_priv)
>  {
>  	enum dbuf_slice slice;
>  =

> +	if (IS_ALDERLAKE_P(dev_priv))
> +		return;
> +
>  	for_each_dbuf_slice(dev_priv, slice)
>  		intel_de_rmw(dev_priv, DBUF_CTL_S(slice),
>  			     DBUF_TRACKER_STATE_SERVICE_MASK,
> @@ -5257,6 +5260,9 @@ static void icl_mbus_init(struct drm_i915_private *=
dev_priv)
>  	unsigned long abox_regs =3D INTEL_INFO(dev_priv)->abox_mask;
>  	u32 mask, val, i;
>  =

> +	if (IS_ALDERLAKE_P(dev_priv))
> +		return;
> +
>  	mask =3D MBUS_ABOX_BT_CREDIT_POOL1_MASK |
>  		MBUS_ABOX_BT_CREDIT_POOL2_MASK |
>  		MBUS_ABOX_B_CREDIT_MASK |
> -- =

> 2.25.4
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
