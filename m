Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A37D1842101
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 11:19:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A46112EFC;
	Tue, 30 Jan 2024 10:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 628 seconds by postgrey-1.36 at gabe;
 Tue, 30 Jan 2024 10:19:13 UTC
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D36F2112EC7;
 Tue, 30 Jan 2024 10:19:13 +0000 (UTC)
Received: from 91-155-255-116.elisa-laajakaista.fi ([91.155.255.116]
 helo=RAVPPB-CIM.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1rUlCw-00000001XzI-1hpw; Tue, 30 Jan 2024 12:19:11 +0200
Message-ID: <2b584847a20341a7173974d3fc94aeaddd9d4643.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org
Date: Tue, 30 Jan 2024 12:19:09 +0200
In-Reply-To: <48607d58e5cdf8341ffdd522257542fa2ce41a19.1705410327.git.jani.nikula@intel.com>
References: <cover.1705410327.git.jani.nikula@intel.com>
 <48607d58e5cdf8341ffdd522257542fa2ce41a19.1705410327.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [PATCH 03/10] drm/print: add drm_dbg_printer() for drm device
 specific printer
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2024-01-16 at 15:07 +0200, Jani Nikula wrote:
> We've lacked a device specific debug printer. Add one. Take category
> into account too.
>=20
> __builtin_return_address(0) is inaccurate here, so don't use it. If
> necessary, we can later pass __func__ to drm_dbg_printer() by wrapping
> it inside a macro.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/drm_print.c | 21 +++++++++++++++++++++
>  include/drm/drm_print.h     | 24 ++++++++++++++++++++++++
>  2 files changed, 45 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/drm_print.c b/drivers/gpu/drm/drm_print.c
> index 91dbcdeaad3f..673b29c732ea 100644
> --- a/drivers/gpu/drm/drm_print.c
> +++ b/drivers/gpu/drm/drm_print.c
> @@ -189,6 +189,27 @@ void __drm_printfn_debug(struct drm_printer *p, stru=
ct va_format *vaf)
>  }
>  EXPORT_SYMBOL(__drm_printfn_debug);
> =20
> +void __drm_printfn_dbg(struct drm_printer *p, struct va_format *vaf)
> +{
> +	const struct drm_device *drm =3D p->arg;
> +	const struct device *dev =3D drm ? drm->dev : NULL;
> +	enum drm_debug_category category =3D p->category;
> +	const char *prefix =3D p->prefix ?: "";
> +	const char *prefix_pad =3D p->prefix ? " " : "";
> +
> +	if (!__drm_debug_enabled(category))
> +		return;
> +
> +	/* Note: __builtin_return_address(0) is useless here. */
> +	if (dev)
> +		dev_printk(KERN_DEBUG, dev, "[" DRM_NAME "]%s%s %pV",
> +			   prefix_pad, prefix, vaf);
> +	else
> +		printk(KERN_DEBUG "[" DRM_NAME "]%s%s %pV",
> +		       prefix_pad, prefix, vaf);
> +}
> +EXPORT_SYMBOL(__drm_printfn_dbg);
> +
>  void __drm_printfn_err(struct drm_printer *p, struct va_format *vaf)
>  {
>  	struct drm_device *drm =3D p->arg;
> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> index b8b4cb9bb878..27e23c06dad4 100644
> --- a/include/drm/drm_print.h
> +++ b/include/drm/drm_print.h
> @@ -176,6 +176,7 @@ struct drm_printer {
>  	void (*puts)(struct drm_printer *p, const char *str);
>  	void *arg;
>  	const char *prefix;
> +	enum drm_debug_category category;
>  };
> =20
>  void __drm_printfn_coredump(struct drm_printer *p, struct va_format *vaf=
);
> @@ -184,6 +185,7 @@ void __drm_printfn_seq_file(struct drm_printer *p, st=
ruct va_format *vaf);
>  void __drm_puts_seq_file(struct drm_printer *p, const char *str);
>  void __drm_printfn_info(struct drm_printer *p, struct va_format *vaf);
>  void __drm_printfn_debug(struct drm_printer *p, struct va_format *vaf);
> +void __drm_printfn_dbg(struct drm_printer *p, struct va_format *vaf);

I was wondering why you had both _debug() and _dbg() functions here,
but I see your goal is to remove _debug() at the end (done in the last
patch in the series).


>  void __drm_printfn_err(struct drm_printer *p, struct va_format *vaf);
> =20
>  __printf(2, 3)
> @@ -331,6 +333,28 @@ static inline struct drm_printer drm_debug_printer(c=
onst char *prefix)
>  	return p;
>  }
> =20
> +/**
> + * drm_dbg_printer - construct a &drm_printer for drm device specific ou=
tput
> + * @drm: the &struct drm_device pointer, or NULL
> + * @category: the debug category to use
> + * @prefix: debug output prefix, or NULL for no prefix
> + *
> + * RETURNS:
> + * The &drm_printer object
> + */
> +static inline struct drm_printer drm_dbg_printer(struct drm_device *drm,
> +						 enum drm_debug_category category,
> +						 const char *prefix)
> +{
> +	struct drm_printer p =3D {
> +		.printfn =3D __drm_printfn_dbg,
> +		.arg =3D drm,
> +		.prefix =3D prefix,
> +		.category =3D category,
> +	};
> +	return p;
> +}
> +
>  /**
>   * drm_err_printer - construct a &drm_printer that outputs to drm_err()
>   * @drm: the &struct drm_device pointer

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
