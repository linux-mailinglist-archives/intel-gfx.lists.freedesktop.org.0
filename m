Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA63D35B5EA
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Apr 2021 17:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 344D06E0D7;
	Sun, 11 Apr 2021 15:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF666E0D7
 for <intel-gfx@lists.freedesktop.org>; Sun, 11 Apr 2021 15:34:00 +0000 (UTC)
IronPort-SDR: JURKaBAM0h0flhOsXNiZKtHcxw+L2PmjArl8IjyZMXenKsacqGN7KsTPt3suebAReDVuMNIMf9
 TLPbibbXKnmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="255366937"
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="255366937"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 08:33:59 -0700
IronPort-SDR: RAQcYI0HOFtuaSqwpUBgZFnNAqKJyNgdPWQEh/GisR4MoNhJmzuKanEE6dnzR2jmgX1lQVZqzM
 PQbsVvO7LzjQ==
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="451078694"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 08:33:59 -0700
Date: Sun, 11 Apr 2021 08:33:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210411153358.GA1637800@mdroper-desk1.amr.corp.intel.com>
References: <20210408045227.985408-1-lucas.demarchi@intel.com>
 <20210408045227.985408-2-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210408045227.985408-2-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: rename display.version to
 display.ver
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

On Wed, Apr 07, 2021 at 09:52:16PM -0700, Lucas De Marchi wrote:
> The macro we use to check is called DISPLAY_VER(). While using this
> macro and the new ones being added in following changes I made the
> mistake multiple times when mixing both "ver" and "version". Although
> it's usually better to prefer the complete name, the shorhand
> DISPLAY_VER() / GRAPHICS_VER / MEDIA_VER are clear and cause less
> visual polution.
> 
> Another issue is when copying the variable to other places.
> "display.version" would be copied to a "display_version" variable which
> is long and would make people abbreviate as "version", or "display_ver".
> In the first case it's not always clear what version refers to, and in
> the second case it just hints it should be the name in the first place.
> 
> So, in the same way use used "gen" rather than "generation", use "ver"
> instead of "version".

I'm indifferent on "ver" versus "version" but Jani suggested using the
full word "version" when we were first adding this, so you should
probably get an ack from him.


Matt

> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 2 +-
>  drivers/gpu/drm/i915/i915_pci.c          | 4 ++--
>  drivers/gpu/drm/i915/intel_device_info.h | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 69e43bf91a15..8c62bb2abd31 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1237,7 +1237,7 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>  #define INTEL_GEN(dev_priv)	(INTEL_INFO(dev_priv)->gen)
>  #define INTEL_DEVID(dev_priv)	(RUNTIME_INFO(dev_priv)->device_id)
>  
> -#define DISPLAY_VER(i915)	(INTEL_INFO(i915)->display.version)
> +#define DISPLAY_VER(i915)	(INTEL_INFO(i915)->display.ver)
>  #define IS_DISPLAY_RANGE(i915, from, until) \
>  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
>  #define IS_DISPLAY_VER(i915, v) (DISPLAY_VER(i915) == (v))
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 480553746794..ce5cbeaf036d 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -36,7 +36,7 @@
>  #include "i915_selftest.h"
>  
>  #define PLATFORM(x) .platform = (x)
> -#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1), .display.version = (x)
> +#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1), .display.ver = (x)
>  
>  #define I845_PIPE_OFFSETS \
>  	.pipe_offsets = { \
> @@ -723,7 +723,7 @@ static const struct intel_device_info bxt_info = {
>  static const struct intel_device_info glk_info = {
>  	GEN9_LP_FEATURES,
>  	PLATFORM(INTEL_GEMINILAKE),
> -	.display.version = 10,
> +	.display.ver = 10,
>  	.ddb_size = 1024,
>  	GLK_COLORS,
>  };
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 2f442d418a15..b16c75927a12 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -189,7 +189,7 @@ struct intel_device_info {
>  #undef DEFINE_FLAG
>  
>  	struct {
> -		u8 version;
> +		u8 ver;
>  
>  #define DEFINE_FLAG(name) u8 name:1
>  		DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
> -- 
> 2.31.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
