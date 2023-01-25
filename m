Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4A267B3C8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 15:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4EAD10E7B9;
	Wed, 25 Jan 2023 14:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2347 seconds by postgrey-1.36 at gabe;
 Wed, 25 Jan 2023 14:01:55 UTC
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3922C10E7B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 14:01:55 +0000 (UTC)
Received: from 91-155-254-125.elisa-laajakaista.fi ([91.155.254.125]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1pKfje-005vrZ-Ps;
 Wed, 25 Jan 2023 15:22:45 +0200
Message-ID: <64e38dd19751aae9718dd077e94cb557a5cbd378.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 15:22:40 +0200
In-Reply-To: <20230118151800.3669913-1-jani.nikula@intel.com>
References: <20230118151800.3669913-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/params: use generics for
 parameter printing
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

On Wed, 2023-01-18 at 17:17 +0200, Jani Nikula wrote:
> Replace the __builtin_strcmp() if ladder with generics.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Neat! I learned something new.  For the whole series:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>


>  drivers/gpu/drm/i915/i915_params.c | 55 +++++++++++++++++++-----------
>  1 file changed, 36 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index d634bd3f641a..6482e878f31e 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -222,27 +222,44 @@ i915_param_named_unsafe(lmem_size, uint, 0400,
>  i915_param_named_unsafe(lmem_bar_size, uint, 0400,
>  			"Set the lmem bar size(in MiB).");
> =20
> -static __always_inline void _print_param(struct drm_printer *p,
> -					 const char *name,
> -					 const char *type,
> -					 const void *x)
> +static void _param_print_bool(struct drm_printer *p, const char *name,
> +			      bool val)
>  {
> -	if (!__builtin_strcmp(type, "bool"))
> -		drm_printf(p, "i915.%s=3D%s\n", name,
> -			   str_yes_no(*(const bool *)x));
> -	else if (!__builtin_strcmp(type, "int"))
> -		drm_printf(p, "i915.%s=3D%d\n", name, *(const int *)x);
> -	else if (!__builtin_strcmp(type, "unsigned int"))
> -		drm_printf(p, "i915.%s=3D%u\n", name, *(const unsigned int *)x);
> -	else if (!__builtin_strcmp(type, "unsigned long"))
> -		drm_printf(p, "i915.%s=3D%lu\n", name, *(const unsigned long *)x);
> -	else if (!__builtin_strcmp(type, "char *"))
> -		drm_printf(p, "i915.%s=3D%s\n", name, *(const char **)x);
> -	else
> -		WARN_ONCE(1, "no printer defined for param type %s (i915.%s)\n",
> -			  type, name);
> +	drm_printf(p, "i915.%s=3D%s\n", name, str_yes_no(val));
>  }
> =20
> +static void _param_print_int(struct drm_printer *p, const char *name,
> +			     int val)
> +{
> +	drm_printf(p, "i915.%s=3D%d\n", name, val);
> +}
> +
> +static void _param_print_uint(struct drm_printer *p, const char *name,
> +			      unsigned int val)
> +{
> +	drm_printf(p, "i915.%s=3D%u\n", name, val);
> +}
> +
> +static void _param_print_ulong(struct drm_printer *p, const char *name,
> +			       unsigned long val)
> +{
> +	drm_printf(p, "i915.%s=3D%lu\n", name, val);
> +}
> +
> +static void _param_print_charp(struct drm_printer *p, const char *name,
> +			       const char *val)
> +{
> +	drm_printf(p, "i915.%s=3D%s\n", name, val);
> +}
> +
> +#define _param_print(p, name, val)				\
> +	_Generic(val,						\
> +		 bool: _param_print_bool,			\
> +		 int: _param_print_int,				\
> +		 unsigned int: _param_print_uint,		\
> +		 unsigned long: _param_print_ulong,		\
> +		 char *: _param_print_charp)(p, name, val)
> +
>  /**
>   * i915_params_dump - dump i915 modparams
>   * @params: i915 modparams
> @@ -252,7 +269,7 @@ static __always_inline void _print_param(struct drm_p=
rinter *p,
>   */
>  void i915_params_dump(const struct i915_params *params, struct drm_print=
er *p)
>  {
> -#define PRINT(T, x, ...) _print_param(p, #x, #T, &params->x);
> +#define PRINT(T, x, ...) _param_print(p, #x, params->x);
>  	I915_PARAMS_FOR_EACH(PRINT);
>  #undef PRINT
>  }

