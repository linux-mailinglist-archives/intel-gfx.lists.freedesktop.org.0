Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E29074979B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 10:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0C4710E48A;
	Thu,  6 Jul 2023 08:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58F8310E489
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 08:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688632743; x=1720168743;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=xyEybg3E20rY1GAiv+tiGeIJqldXfJcSmxXe9r5rimI=;
 b=ZzOC4Hztt9st8X1f9xab+yw747WJ/JPFprGJiiTJnCKYaWz6KMIXqr2O
 eifpmGcm9BMzd+R6mZ4GcyMuU9fw8bNceVbwf2iKbsPOmJVWhLoDJlX3S
 HCZ6BEqxywCmUoULLXvRrb7tnN5atcmESGZpJhk74drAGkCtnKtCMoYZn
 lAC3StlPZVpH3nIc5M/EGmoXVfhFYz4TM8Rw8aTWQCuydYeUF2+j8Hd5w
 rRYvf+Q993GiE7UccEllQQz8NFYqy9kQrKwAMqVxphd1QjzpRIsyqYIQz
 OtLk7DhVZhYNgRqpQqm7pOnqv0xCIER0+ceEDo55SLoQOiVsrofRHpP2s Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="429586744"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="429586744"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:39:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="893484206"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="893484206"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:39:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-14-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
 <20230705202122.17915-14-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 11:38:59 +0300
Message-ID: <87pm55xwm4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915/sdvo: Print out the i2c pin
 and slave address
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 05 Jul 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> To reduce the guesswork a bit let's print out the SDVO
> device i2c bus and slave address during init.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index d7edb5714c4c..f0494b9aefe5 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2616,6 +2616,10 @@ intel_sdvo_select_i2c_bus(struct intel_sdvo *sdvo)
>  	else
>  		pin =3D GMBUS_PIN_DPB;
>=20=20
> +	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] I2C pin %d, slave addr 0x%=
x\n",
> +		    sdvo->base.base.base.id, sdvo->base.base.name,
> +		    pin, sdvo->slave_addr);
> +
>  	sdvo->i2c =3D intel_gmbus_get_adapter(dev_priv, pin);
>=20=20
>  	/*

--=20
Jani Nikula, Intel Open Source Graphics Center
