Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC26F33845C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 04:28:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1FC46E0C8;
	Fri, 12 Mar 2021 03:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F866E0C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 03:28:35 +0000 (UTC)
IronPort-SDR: uL0UsnlN9Jr//HhgIdi00hFydtNrYPO9X8hBhrENpzAd6yNDzr3eTtFl9AWQIMeKoiPvSuO7b8
 rrpYPXjdIErQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="186402830"
X-IronPort-AV: E=Sophos;i="5.81,242,1610438400"; d="scan'208";a="186402830"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 19:28:33 -0800
IronPort-SDR: tQKXNSZe7ewfuquT7tHpmVdkFaisJg0ztEWksi7Ou9dLGTQzgC326W0FQF1XUYufZzHheAd6kd
 dnhi2VNMGB2A==
X-IronPort-AV: E=Sophos;i="5.81,242,1610438400"; d="scan'208";a="409718293"
Received: from adixit-mobl1.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.6.189])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 19:28:33 -0800
Date: Thu, 11 Mar 2021 19:28:31 -0800
Message-ID: <87o8fp6of4.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Jason Ekstrand <jason@jlekstrand.net>
In-Reply-To: <20210311202017.1133327-2-jason@jlekstrand.net>
References: <cover.1611354210.git.ashutosh.dixit@intel.com>
 <20210311202017.1133327-1-jason@jlekstrand.net>
 <20210311202017.1133327-2-jason@jlekstrand.net>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/27.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Disable pread/pwrite ioctl's
 for future platforms (v2)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 11 Mar 2021 12:20:17 -0800, Jason Ekstrand wrote:
>
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index b2e3b5cfccb4a..78ad5a9dd4784 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -374,10 +374,19 @@ int
>  i915_gem_pread_ioctl(struct drm_device *dev, void *data,
>		     struct drm_file *file)
>  {
> +	struct drm_i915_private *i915 = to_i915(dev);
>	struct drm_i915_gem_pread *args = data;
>	struct drm_i915_gem_object *obj;
>	int ret;
>
> +	/* Pread is disallowed for all platforms after TGL-LP */
> +	if (INTEL_GEN(i915) >= 12 && !IS_TIGERLAKE(i915))
> +		return -EOPNOTSUPP;
> +
> +	/* All discrete memory platforms are Gen12 or above */
> +	if (WARN_ON(HAS_LMEM(i915)))
> +		return -EOPNOTSUPP;

Not sure but you are probably trying to make it explicit that pread/pwrite
are truly gone on dGfx? Because real dGfx are Gen12+ the code will return
from the first if statement and never get to the second if statement. And
there's talk on the relocation thread about tripping fake LMEM here for
platforms prior to Gen12.

So I'd suggest get rid of this second if statement and only retain the
first (for both pread and pwrite) since that seems to be entirely
sufficient.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
