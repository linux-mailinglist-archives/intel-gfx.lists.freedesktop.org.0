Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BA82F66F6
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 18:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6D89897EE;
	Thu, 14 Jan 2021 17:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 169D6897EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 17:15:09 +0000 (UTC)
IronPort-SDR: RiFVgBdPDBMJwfVrEv8H2hf/Gv+gqMez2olrKUuvGPl4G8/+wHKo5NUJoP9Y72EUEaIaRxEeZV
 cx6U+rT3z0YA==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="178555920"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="178555920"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 09:15:06 -0800
IronPort-SDR: fl9rZWpb4+RwgDMwOw8yhWRFMwhnpaBl+itbhwMrEX2PUx0dRw8XburhltbajBZfSqwyCQsbCY
 yEnVduYSraJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="382335786"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 14 Jan 2021 09:15:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Jan 2021 19:15:03 +0200
Date: Thu, 14 Jan 2021 19:15:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <YAB8F6jLOrWT0cZs@intel.com>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
 <20210113220935.4151-9-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113220935.4151-9-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 08/18] drm/i915/display: VRR + DRRS
 cannot be enabled together
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

On Wed, Jan 13, 2021 at 02:09:25PM -0800, Manasi Navare wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> If VRR is enabled, DRRS cannot be enabled, so make this check
> in atomic check.

Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

if we want to keep this as a separete patch.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>  1 file changed, 3 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index a275303c0c5c..869a9d291e1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2845,6 +2845,9 @@ intel_dp_drrs_compute_config(struct intel_dp *intel=
_dp,
>  	struct intel_connector *intel_connector =3D intel_dp->attached_connecto=
r;
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  =

> +	if (pipe_config->vrr.enable)
> +		return;
> +
>  	/*
>  	 * DRRS and PSR can't be enable together, so giving preference to PSR
>  	 * as it allows more power-savings by complete shutting down display,
> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
