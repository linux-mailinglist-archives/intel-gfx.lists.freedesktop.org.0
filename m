Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A59413BD02
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 11:02:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFD7A6E8EC;
	Wed, 15 Jan 2020 10:02:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F778928B;
 Wed, 15 Jan 2020 10:02:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 02:02:42 -0800
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="213653316"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 02:02:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, daniel@ffwll.ch,
 sam@ravnborg.org, sudeep.dutt@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>
In-Reply-To: <20200115034455.17658-2-pankaj.laxminarayan.bharadiya@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200115034455.17658-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200115034455.17658-2-pankaj.laxminarayan.bharadiya@intel.com>
Date: Wed, 15 Jan 2020 12:02:35 +0200
Message-ID: <87y2u9jav8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [ [PATCH v2 01/10] drm/print: introduce new struct
 drm_device based WARN* macros
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Jan 2020, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> Add new struct drm_device based WARN* macros. These are modeled after
> the core kernel device based WARN* macros. These would be preferred
> over the regular WARN* macros, where possible.
>
> These macros include device information in the backtrace, so we know
> what device the warnings originate from.
>
> Knowing the device specific information in the backtrace would be
> helpful in development all around.
>
> Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  include/drm/drm_print.h | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
>
> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> index 8f99d389792d..894a0b9437e2 100644
> --- a/include/drm/drm_print.h
> +++ b/include/drm/drm_print.h
> @@ -553,4 +553,33 @@ void __drm_err(const char *format, ...);
>  #define DRM_DEBUG_PRIME_RATELIMITED(fmt, ...)				\
>  	DRM_DEV_DEBUG_PRIME_RATELIMITED(NULL, fmt, ##__VA_ARGS__)
>  
> +/*
> + * struct drm_device based WARNs
> + *
> + * drm_WARN*() acts like WARN*(), but with the key difference of
> + * using device specific information so that we know from which device
> + * warning is originating from.
> + *
> + * Prefer drm_device based drm_WARN* over regular WARN*
> + */
> +
> +/* Helper for struct drm_device based WARNs */
> +#define drm_WARN(drm, condition, format, arg...)			\
> +	WARN(condition, "%s %s: " format,				\
> +			dev_driver_string((drm)->dev),			\
> +			dev_name((drm)->dev), ## arg)
> +
> +#define drm_WARN_ONCE(drm, condition, format, arg...)			\
> +	WARN_ONCE(condition, "%s %s: " format,				\
> +			dev_driver_string((drm)->dev),			\
> +			dev_name((drm)->dev), ## arg)
> +
> +#define drm_WARN_ON(drm, x)						\
> +	drm_WARN((drm), (x), "%s",					\
> +		 "drm_WARN_ON(" __stringify(x) ")")
> +
> +#define drm_WARN_ON_ONCE(drm, x)					\
> +	drm_WARN_ONCE((drm), (x), "%s",					\
> +		      "drm_WARN_ON_ONCE(" __stringify(x) ")")
> +
>  #endif /* DRM_PRINT_H_ */

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
