Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6553870653
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 16:59:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0204A10EA0D;
	Mon,  4 Mar 2024 15:59:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NsRtF3Bt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06C9E10EA0A;
 Mon,  4 Mar 2024 15:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709567957; x=1741103957;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=M62yflQrSjoobTrZn9IvDAf2b25hqhKT67yZXHT7xVk=;
 b=NsRtF3Bt48IQY/fkdLbKm/3i5qQyMwHswGIobgRlnh3els0Skea9EUSw
 RnT1Cb9Mwm2eew1LKh4UHLuJKtVea02W2QUIaE5t3410gHgP2NoALN5Vz
 1EynD/Res1I2Qqq/R6cc59C5WURSs4zFz0LVWh8RJoZHxbVB1hZgCFO6M
 BhpJkZ8Wbz5HccbiuUQcDpTv7op+QUL8fE6F63isNYk6kM9dOTVbWfv3s
 h59NAOKCybFlnwuZicNxq/yM+UPL6pPZ0OsiPFOe/nnlgK5VTAxC0cLaG
 cGQMpxNlkwkvwHjnAEptPtsO4XzBodcbAIT60Xs9vHLqgXNB4Xutz/VAT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="3930187"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="3930187"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 07:59:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="13538773"
Received: from syakovle-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.3])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 07:59:12 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 1/4] drm/i915/hdcp: Move intel_hdcp_gsc_message def away
 from header file
In-Reply-To: <20240227053204.1748920-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240227053204.1748920-1-suraj.kandpal@intel.com>
 <20240227053204.1748920-2-suraj.kandpal@intel.com>
Date: Mon, 04 Mar 2024 17:59:01 +0200
Message-ID: <87il223s56.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 27 Feb 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Move intel_hdcp_gsc_message definition into intel_hdcp_gsc.h
> so that intel_hdcp_gsc_message can be redefined for xe as needed.
>
> --v2
> -Correct commit message to reflect what patch is actually doing [Arun]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

for merging this patch via drm-xe-next.

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h | 7 +------
>  2 files changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 302bff75b06c..35823e1f65d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -13,6 +13,12 @@
>  #include "intel_hdcp_gsc.h"
>  #include "intel_hdcp_gsc_message.h"
>  
> +struct intel_hdcp_gsc_message {
> +	struct i915_vma *vma;
> +	void *hdcp_cmd_in;
> +	void *hdcp_cmd_out;
> +};
> +
>  bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
>  {
>  	return DISPLAY_VER(i915) >= 14;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index eba2057c5a9e..5f610df61cc9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -10,12 +10,7 @@
>  #include <linux/types.h>
>  
>  struct drm_i915_private;
> -
> -struct intel_hdcp_gsc_message {
> -	struct i915_vma *vma;
> -	void *hdcp_cmd_in;
> -	void *hdcp_cmd_out;
> -};
> +struct intel_hdcp_gsc_message;
>  
>  bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);
>  ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,

-- 
Jani Nikula, Intel
