Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E80CDA062CF
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 18:00:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64FBA10EC1C;
	Wed,  8 Jan 2025 17:00:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C32XlFar";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BD4410EC1C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 17:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736355641; x=1767891641;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Gv+l00+qtnudHt7RpwOYxtsnkCM9I3fYQVNDGCquAaU=;
 b=C32XlFarctfoWMVYnw2hnLtyYuWPTkmulKjcD7KAArZePi/0C5FanTC4
 1yvoC3ltXLrjcldbFMWpi2z3KINSNqXBlwFdAti88jDLJHo1gWnfOYTJd
 F3wMr3Y5NlqDkQ12ogQLn+FLRh9H74bMo1Tb9phhsxeZDogPDU7Ay59eD
 2Y5wICbeyaSYWwMImEBr8asfnjNLzuSB56ld7mbPflSPan4d4V/byMsN1
 yKGtboyqaCLzOVKW7SzwAv+ajVMQ0JbTLpgBM4Ey2WJlXk3IwzobcG8Lf
 kABzJT1XCBHchFTo2+xkFI+NsB4gbnPt3OjPijJdJ6REhh8Qqahv0ZkD0 g==;
X-CSE-ConnectionGUID: L1Dom8gFSUyg3Mwozy00pg==
X-CSE-MsgGUID: tGeWJgUVQK2XUDRVla2JYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36754817"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="36754817"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 09:00:40 -0800
X-CSE-ConnectionGUID: hgGA9BS+QKK7lC6NAlYjlw==
X-CSE-MsgGUID: eT8wfWe0QJGTdbCMOgiI8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="103661382"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 09:00:37 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH] drm/i915/bios: Define eDP pipe joiner feature for VBT
In-Reply-To: <20250108143638.1125237-1-dnyaneshwar.bhadane@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250108143638.1125237-1-dnyaneshwar.bhadane@intel.com>
Date: Wed, 08 Jan 2025 19:00:34 +0200
Message-ID: <87bjwhkzpp.fsf@intel.com>
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

On Wed, 08 Jan 2025, Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com> wrote:
> There is new field "edp pipe joiner feature" size of 2 bytes in the
> eDP VBT block. Each bit represent panel number to be enable/disable
> for this feature.
>
> Default value:
> For ARL platform, 0x0000 to keep the feature disabled by default.
> Xe3lpd onwards, 0xFFFF to keep the feature enable by default by VBT.
>
> Bspec: 20142
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

The patch does it ways, so...

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

...but are you going to use the info for something?

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index e9b809568cd4..2fdad5170896 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -1090,6 +1090,7 @@ struct bdb_edp {
>  	u16 edp_dsc_disable;					/* 251+ */
>  	u16 t6_delay_support;					/* 260+ */
>  	u16 link_idle_time[16];					/* 260+ */
> +	u16 edp_pipe_joiner_feature;				/* 261+ */
>  } __packed;
>  
>  /*

-- 
Jani Nikula, Intel
