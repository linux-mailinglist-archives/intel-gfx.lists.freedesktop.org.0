Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C6782C33C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 17:02:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE22C10E029;
	Fri, 12 Jan 2024 16:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E6DD10E029
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 16:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705075338; x=1736611338;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=5cVyymXcaE0mFWMzsWoLcjk4LX5bYL5uqnq6PBFHv0A=;
 b=bBiCuFUajT67JmO+dChouskOVUzkjC/BqE6P4MzGYATTeGdI1Iw+oSJD
 SISEbseLgD1woYlI7sEO4CFNI4pBr1FvNuIg/xtvrFKYRiLkqeIqnCfZL
 hcvpwRohuP7Gfa3Yf+iLX7p0xDlzXkM5ozPsxFsQKNv3fAvFTgI4kpiYF
 WMrXa63GsYZ5LwmLUe2pB7QRcLgvtf8bjjC9eyIv7MgCGF0VWy41F5Hps
 wBWPCDX67oZedKZPUpbVFjYxp/eceYdveeI5AfYSQTtIwcbJZCorpvQkr
 alrrqL7aFG+UT0xnbRmjUBI7c8Ibr2Avv+Xueov99NPOvTUFwmyehBJjY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="398887237"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="398887237"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 08:02:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="24741287"
Received: from tsenx-mobl.ger.corp.intel.com (HELO localhost) ([10.252.38.158])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 08:02:12 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Drop -Wstringop-overflow
In-Reply-To: <20240112154912.1775199-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240112154912.1775199-1-lucas.demarchi@intel.com>
Date: Fri, 12 Jan 2024 18:02:07 +0200
Message-ID: <87zfxasfpc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Jan 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> -Wstringop-overflow is broken on GCC11. In future changes it will
> be moved to the normal C flags in the top level Makefile (out of
> Makefile.extrawarn), but accounting for the compiler support.
>
> Just remove it out of i915's forced extra warnings, preparing for the
> upcoming change and avoiding build warnings to show up.
>
> Fixes: 2250c7ead8ad ("drm/i915: enable W=1 warnings by default")
> References: https://lore.kernel.org/all/45ad1d0f-a10f-483e-848a-76a30252edbe@paulmck-laptop/
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index e777686190ca..c13f14edb508 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -17,7 +17,6 @@ subdir-ccflags-y += $(call cc-option, -Wunused-const-variable)
>  subdir-ccflags-y += $(call cc-option, -Wpacked-not-aligned)
>  subdir-ccflags-y += $(call cc-option, -Wformat-overflow)
>  subdir-ccflags-y += $(call cc-option, -Wformat-truncation)
> -subdir-ccflags-y += $(call cc-option, -Wstringop-overflow)
>  subdir-ccflags-y += $(call cc-option, -Wstringop-truncation)
>  # The following turn off the warnings enabled by -Wextra
>  ifeq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)

-- 
Jani Nikula, Intel
