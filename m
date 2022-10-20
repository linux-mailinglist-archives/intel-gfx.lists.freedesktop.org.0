Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 037E76062D6
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 16:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E714B10E4BF;
	Thu, 20 Oct 2022 14:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6F7310E4BF
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 14:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666275579; x=1697811579;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Uw5nOGxPjJcMcTP9+JCVYy/dXgu0ZojWfs1QUs8AuG0=;
 b=PjKTiCJ/b0voMIDk2JNEe60BLennrwTXa+qI/Gb3D69LO7YS6C3+BGKu
 Wr+8x+Qotc7BdGI9yJbds30LO31dEZj2gJynccT6bOYZFq+UNcHXdtlq1
 sJj181ITOYDbTy0LE4Dye8cEeGHBij/Fo9kyR9kH4tf4upUrdDfI55m3g
 YabsRnBHkCuooatFfagtMa82zlWdN1vS3BIYUr+C5WZwSaDBeAmzYVoEn
 8XB5KCKGNrqE8qE43a4WjP+89f3PPdiyYCx/qfbqPwsqrRLimRjIT7gjG
 AiGj3Y3QpKa8VblXgVRhSsPzsz1EcnRNIxCa+TJCMRcn2QTdOuZp7k1ti A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="305455435"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="305455435"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 07:19:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="734864744"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="734864744"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 20 Oct 2022 07:19:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Oct 2022 17:19:35 +0300
Date: Thu, 20 Oct 2022 17:19:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <Y1FY96J0ohzdsS4j@intel.com>
References: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
 <20221011063447.904649-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221011063447.904649-3-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 2/8] drm/i915/dp: Remove whitespace at
 the end of function.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 11, 2022 at 12:04:41PM +0530, Ankit Nautiyal wrote:
> Remove extraline left after intel_dp_configure_protocol_converter.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

First two patches pushed to drm-intel-next. Thanks.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9133d4c65437..359884617fdc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2690,7 +2690,6 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>  			   str_enable_disable(tmp));
>  }
>  
> -
>  bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
>  {
>  	u8 dprx = 0;
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
