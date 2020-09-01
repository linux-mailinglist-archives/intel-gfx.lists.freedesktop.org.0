Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82177259F38
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 21:29:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D44A36E8E7;
	Tue,  1 Sep 2020 19:29:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E02C6E8E7
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Sep 2020 19:29:38 +0000 (UTC)
IronPort-SDR: ArF+v0t9fF5hiBq36L62Hr1GNXnuOFMkDFnZuCal3+o743ZAglG9dDVsUxX3Qum9whEKBDNElc
 0UXrLKXlx4Qg==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="175305738"
X-IronPort-AV: E=Sophos;i="5.76,380,1592895600"; d="scan'208";a="175305738"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2020 12:29:35 -0700
IronPort-SDR: nu78hzQi/EqQVkHWzIHS0fNpOP6JcQcOPqMGNmjDKlffIt98rD+G977gcFCTmEB1D5olLcs9EW
 NNFQYWJx/nOA==
X-IronPort-AV: E=Sophos;i="5.76,380,1592895600"; d="scan'208";a="501862320"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2020 12:29:35 -0700
Date: Tue, 1 Sep 2020 15:30:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200901193047.GB386451@intel.com>
References: <20200901010924.235808-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200901010924.235808-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Ignore
 IGNORE_PSR2_HW_TRACKING for platforms without sel fetch
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

On Mon, Aug 31, 2020 at 06:09:21PM -0700, Jos=E9 Roberto de Souza wrote:
> For platforms without selective fetch this register is reserved so
> do not write 0 to it.
> =

> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 8a9d0bdde1bf..4e09ae61d4aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -942,7 +942,7 @@ static void intel_psr_enable_source(struct intel_dp *=
intel_dp,
>  		intel_de_write(dev_priv, EXITLINE(cpu_transcoder), val);
>  	}
>  =

> -	if (HAS_PSR_HW_TRACKING(dev_priv))
> +	if (HAS_PSR_HW_TRACKING(dev_priv) && HAS_PSR2_SEL_FETCH(dev_priv))
>  		intel_de_rmw(dev_priv, CHICKEN_PAR1_1, IGNORE_PSR2_HW_TRACKING,
>  			     dev_priv->psr.psr2_sel_fetch_enabled ?
>  			     IGNORE_PSR2_HW_TRACKING : 0);
> -- =

> 2.28.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
