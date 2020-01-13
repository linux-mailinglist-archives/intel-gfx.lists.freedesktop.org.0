Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC44139118
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 13:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C1CE89DD5;
	Mon, 13 Jan 2020 12:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F93189DD5;
 Mon, 13 Jan 2020 12:31:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 04:31:00 -0800
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="217392562"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 04:30:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, daniel@ffwll.ch,
 sam@ravnborg.org, sudeep.dutt@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>
In-Reply-To: <20200113115557.32713-2-pankaj.laxminarayan.bharadiya@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200113115557.32713-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200113115557.32713-2-pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 13 Jan 2020 14:30:54 +0200
Message-ID: <87ftgjmtc1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/print: introduce new struct
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
Cc: pankaj.laxminaryan.bharadiya@outlook.iglb.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 13 Jan 2020, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:
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
> ---
>  include/drm/drm_print.h | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>
> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> index 8f99d389792d..61a7224e697d 100644
> --- a/include/drm/drm_print.h
> +++ b/include/drm/drm_print.h
> @@ -553,4 +553,34 @@ void __drm_err(const char *format, ...);
>  #define DRM_DEBUG_PRIME_RATELIMITED(fmt, ...)				\
>  	DRM_DEV_DEBUG_PRIME_RATELIMITED(NULL, fmt, ##__VA_ARGS__)
>  
> +/*
> + * struct drm_device based WARNs
> + *
> + *
> + * drm_WARN*() acts like WARN*(), but with the key difference of
> + * using device specific information so that we know from which device
> + * warning is originating from.
> + *
> + * Prefer drm_device based dev_WARN* over regular WARN*

drm_WARN, not dev_WARN.

I don't really appreciated changing case mid-symbol, but that matches
dev_WARN. :/

Other than that,

Acked-by: Jani Nikula <jani.nikula@intel.com>


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
