Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 823F782ECCA
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 11:32:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8E1910E475;
	Tue, 16 Jan 2024 10:32:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D18D10E475
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 10:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705401123; x=1736937123;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=6LhUlm2M66TrWHNleKQ0IdrVGaYiYHLDSH/yZa0ti+s=;
 b=j6zpfGnm/0PHMX1kFS9qrQs6Ad/dn2UUlTZGGtpfP/BLysGh5Ums1j0L
 bHK+etGnTE9kE1XGFn7W++eS3Oetc41jMbsab6D1AXBvuKDg2A5yFSgwU
 hpBF8ZfcU9A7vZo6YbjsU8B+20zFt/Zm2w3nQ4n9BGi8UWz1AuuMp1AWa
 IDLzO5yPch3IFzryYrc6YfiLamXYZ8r7ivraFy70z3DX5zdom2I0dz1Bz
 5bZhAyAGZDrkFhs7XNnG+dIb+f/lvHALoyFpsiTGOBH/uIkjgG/80M4pW
 DPSCO6B6IllX8RI0lYGvWg09hFJ3MvxOpgXw056drUxeH7IQjpibeWdGO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="7190356"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; 
   d="scan'208";a="7190356"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 02:32:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="903076485"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="903076485"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.32.218])
 ([10.246.32.218])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 02:32:01 -0800
Message-ID: <b0d61a87-047e-474d-bee5-8d9ef697a0a3@linux.intel.com>
Date: Tue, 16 Jan 2024 11:32:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/16] drm/i915: Disable the "binder"
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-6-ville.syrjala@linux.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240116075636.6121-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/16/2024 8:56 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Now that the GGTT PTE updates go straight to GSMBASE (bypassing
> GTTMMADR) there should be no more risk of system hangs? So the
> "binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
> necessary, disable it.
>
> My main worry with the MI_UPDATE_GTT are:
> - only used on this one platform so very limited testing coverage
> - async so more opprtunities to screw things up
> - what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
>    to finish?
> - requires working command submission, so even getting a working
>    display now depends on a lot more extra components working correctly
>
> TODO: MI_UPDATE_GTT might be interesting as an optimization
> though, so perhaps someone should look into always using it
> (assuming the GPU is alive and well)?
>
> v2: Keep using MI_UPDATE_GTT on VM guests
>
> Cc: Paz Zcharya <pazz@chromium.org>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 86f73fe558ca..e83dabc56a14 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -24,7 +24,8 @@
>   bool i915_ggtt_require_binder(struct drm_i915_private *i915)
>   {
>   	/* Wa_13010847436 & Wa_14019519902 */
> -	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
> +	return i915_run_as_guest() &&
> +		MEDIA_VER_FULL(i915) == IP_VER(13, 0);
>   }
>   
>   static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
