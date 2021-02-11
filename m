Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B450F318301
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 02:19:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A8AA6EDAA;
	Thu, 11 Feb 2021 01:19:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 590BD6EDAA
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 01:19:20 +0000 (UTC)
IronPort-SDR: 4kHe0zlJmQ5lrWpLK3bRw64uHWZI0LDLdUKlwhx6Xogc55SH+442e4aw9pckBrXPDYEYiEmIaO
 XvpPqWhGfxGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="179620762"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="179620762"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 17:19:19 -0800
IronPort-SDR: BU9EI1PqVPvA/87Nuo4DvGy4wb35jJhcF1aWyojrzugKwPGeksnHxheLjVO8S+B2jumjLKIrcu
 znQKKRMeUcGw==
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="586802557"
Received: from sganes2-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.225])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 17:19:19 -0800
Date: Wed, 10 Feb 2021 17:19:19 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210211011919.vcydfoplqarax7pd@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
 <20210128192413.1715802-7-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128192413.1715802-7-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 06/18] drm/i915/display13: Only enable
 legacy gamma for now
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 28, 2021 at 11:24:01AM -0800, Matt Roper wrote:
>The multi-segment gamma used on past platforms is gone and replaced by a
>logarithmic LUT.  Until logarithmic LUT is enabled, let's just turn off
>uapi color management (aside from legacy gamma) since it doesn't really
>make sense to expose the full degamma and CTM when we only have limited
>legacy gamma support to go with them.  Note that the hardware
>programming of the degamma and CTM is unchanged except that the degamma
>table now has 128 entries instead of just 33.
>
>The output CSC used implicitly for RGB->YUV conversions is also
>unchanged and will continue to function as expected.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/i915_pci.c | 13 ++++++++++++-
> 1 file changed, 12 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>index e5e10484bf8d..fb28f3b24dd8 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -945,7 +945,18 @@ static const struct intel_device_info adl_s_info = {
> 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),			\
> 	.ddb_size = 4096,						\
> 	.mbus_size = 2048,						\
>-	.num_supported_dbuf_slices = 4,
>+	.num_supported_dbuf_slices = 4,					\
>+	/*								\
>+	 * FIXME: Just enable legacy gamma (and no degamma/csc) until	\
>+	 * logarithmic LUT is implemented.				\
>+	 *								\
>+	 * LEGACY_LUT_LENGTH = 256 entries				\
>+	 *								\
>+	 * Note that once logarithmic LUT is enabled and we re-enable	\
>+	 * real color management, degamma_lut_size here should be set	\
>+	 * to 128.							\
>+	 */								\
>+	.color = { .degamma_lut_size = 0, .gamma_lut_size = 256 }
>
> #undef GEN
> #undef PLATFORM
>-- 
>2.25.4
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
