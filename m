Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 647B71A106F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 17:43:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A9D6E89B;
	Tue,  7 Apr 2020 15:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAE876E89B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 15:43:01 +0000 (UTC)
IronPort-SDR: /X45id5ALRW4T9TPdeYW2bA87Cr+SaUNCl7qVXIplnGzMJ5GFqFtAZYkdOFbgGstpB/+UCPYLg
 EEBpTzKAnNLQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 08:43:01 -0700
IronPort-SDR: 3MjsQbuXlLgz2SMcAsQEC1XHG1dF0LXEvsB/agTQoEsqWAx9llAFU/25EklpHJy1WkC27lmGUK
 iG3aC84bZUSQ==
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; d="scan'208";a="243797348"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 08:43:00 -0700
Date: Tue, 7 Apr 2020 18:42:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200407154249.GE21484@ideak-desk.fi.intel.com>
References: <20200407011157.362092-1-jose.souza@intel.com>
 <20200407011157.362092-5-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407011157.362092-5-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 5/8] drm/i915/tc: Skip ref held check for
 TC legacy aux power wells
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 06, 2020 at 06:11:54PM -0700, Jos=E9 Roberto de Souza wrote:
> As part of ICL TC cold exit sequences we need to request aux power
> well before lock the access to TC ports, so skiping the
> intel_tc_port_ref_held() check for TC legacy ports.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
>  1 file changed, 3 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 1336247743c4..0383801a9acc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -560,6 +560,9 @@ static void icl_tc_port_assert_ref_held(struct drm_i9=
15_private *dev_priv,
>  	if (drm_WARN_ON(&dev_priv->drm, !dig_port))
>  		return;
>  =

> +	if (INTEL_GEN(dev_priv) =3D=3D 11 && dig_port->tc_legacy_port)
> +		return;
> +
>  	drm_WARN_ON(&dev_priv->drm, !intel_tc_port_ref_held(dig_port));
>  }
>  =

> -- =

> 2.26.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
