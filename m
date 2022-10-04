Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 078485F3D37
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 09:27:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C1A010E131;
	Tue,  4 Oct 2022 07:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A5710E131
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 07:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664868431; x=1696404431;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uvrUVYT1zBXs9t2VNkwoHAw+vQDAKNIJdCD0w5iNcvQ=;
 b=ZNhLh48Fn2uWN9nJ0TT1wyxrA5gGOmDjLCgBjPQza/HHpXMhbS6Jotv2
 dkxi0w7MmqBlhaSb5DHb0D81yIKGYa49nx/1j6CIRXyciCjFbXU5aL+Gu
 XopKMxt+7A0xC71g+YOtnQUE3Ov/oderzmKMFENhnyc47XCvOcke/+hbx
 WTwChe1tMIdweQby//QtqGW0IgSrtyTFBL3TaEax5X6+wt0DrV1jM/Z8t
 n4X4J5irPaM6uLWLpXLS11RAUoPtUbgFGmypt/+lhREkqiqn5nDfGrz6K
 eVjLkP9AEq/PXGYWiaOzhi46kJL+m7U2J+JrTkWTly6DkHrtLPwUUznbs Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="283214620"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="283214620"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 00:27:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="712916319"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="712916319"
Received: from pvarla-mobl4.gar.corp.intel.com (HELO localhost)
 ([10.252.39.104])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 00:27:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221003223258.2650934-4-andrzej.hajda@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
 <20221003223258.2650934-4-andrzej.hajda@intel.com>
Date: Tue, 04 Oct 2022 10:27:05 +0300
Message-ID: <87lepwujzq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: refactor intel_uncore_rmw
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 04 Oct 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> Two small changes in intel_uncore_rmw will allow to use it more broadly:
> - write register unconditionally, for use with latch registers,
> - return old value of the register, IRQ cleanup and similar.
>
> If we really want to keep write-only-if-changed feature maybe other
> helper will be more suitable for it, intel_uncore_rmw name suggests
> unconditional write.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Please fix the subject line to state "make intel_uncore_rmw() write
unconditionally" because that's what this change is, not
refactoring. IMO refactoring implies non-functional changes.

On the change,

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_uncore.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> index 7e1b3b89f68959..5449146a06247c 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -433,15 +433,15 @@ intel_uncore_read64_2x32(struct intel_uncore *uncore,
>  #define intel_uncore_write64_fw(...) __raw_uncore_write64(__VA_ARGS__)
>  #define intel_uncore_posting_read_fw(...) ((void)intel_uncore_read_fw(__VA_ARGS__))
>  
> -static inline void intel_uncore_rmw(struct intel_uncore *uncore,
> -				    i915_reg_t reg, u32 clear, u32 set)
> +static inline u32 intel_uncore_rmw(struct intel_uncore *uncore,
> +				   i915_reg_t reg, u32 clear, u32 set)
>  {
>  	u32 old, val;
>  
>  	old = intel_uncore_read(uncore, reg);
>  	val = (old & ~clear) | set;
> -	if (val != old)
> -		intel_uncore_write(uncore, reg, val);
> +	intel_uncore_write(uncore, reg, val);
> +	return old;
>  }
>  
>  static inline void intel_uncore_rmw_fw(struct intel_uncore *uncore,

-- 
Jani Nikula, Intel Open Source Graphics Center
