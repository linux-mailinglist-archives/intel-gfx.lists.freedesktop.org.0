Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F17C9F3151
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 14:14:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1273810E060;
	Mon, 16 Dec 2024 13:14:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kWZG4GEi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5597F10E060
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 13:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734354859; x=1765890859;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KvkoJYf9d6VQyO0HvQlC67Zs3ZQKT4unK2Us/zH0wJA=;
 b=kWZG4GEieEzHyoTqkT68CpzlCA8MQW720g/PCShoI2q8n8zkmD/Uq6sh
 ohODiz/wPv4T0GiyaLasR8RPhtPXjWB347+dB//yWSMA40fRIuBmVNyFO
 xpm0WukbpAGf1XhZyzAy3imvYOnaU0Mg6Qv8+i7aYXLaoG2SK9lgK45YD
 Udo5Z45Z0sYFMAhUkpRNW/lmPb1/+TapV3KVir/50oMyJburFaxi9Qf+x
 xbtBoZnRGxm/H0NHX0b6JDFlIJZl0J6szTs+ei3QTzXzEyJTq90Ksy1nE
 fHCksejLasE69HciEsagab6YBcWnrFg4K/pV1jk6TVFqUnrgjbztW3Kff g==;
X-CSE-ConnectionGUID: +FEBzZGRTymA98vzekJQkg==
X-CSE-MsgGUID: itj9eN+dTGq9O09Msn8O+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34883312"
X-IronPort-AV: E=Sophos;i="6.12,238,1728975600"; d="scan'208";a="34883312"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 05:14:19 -0800
X-CSE-ConnectionGUID: LqIUK9eIRDWt4RwJJGJkmA==
X-CSE-MsgGUID: xbIxwHAKRcaqgYVsvh04vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102178338"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.245])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 05:14:16 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: balasubramani.vivekanandan@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, gustavo.sousa@intel.com,
 clinton.a.taylor@intel.com, matthew.s.atwood@intel.com,
 dnyaneshwar.bhadane@intel.com, haridhar.kalvala@intel.com,
 shekhar.chauhan@intel.com
Subject: Re: [PATCH] drm/i915/display: program DBUF_CTL tracker state
 service to 0x8
In-Reply-To: <20241216124507.2695739-1-ravi.kumar.vodapalli@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241216124507.2695739-1-ravi.kumar.vodapalli@intel.com>
Date: Mon, 16 Dec 2024 15:14:13 +0200
Message-ID: <87ikrjsrbu.fsf@intel.com>
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

On Mon, 16 Dec 2024, Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com> wrote:
> Program Tracker state service(DBUF_CTL Register) for TGLLP, SVL,
> RYF, DG1, ACM, ACMPLUS, RKLC, RKLGM, ADLS platforms to 0x8 which
> is not the default value.

Why?

Every single commit message *must* state why the change is being
made. What's the impact?

The commit message is not supposed be just the patch translated to
English.

Please imagine having to write a high level pull request changelog
similar to [1] based on commit messages alone. I have no idea what I
would write about this change.


BR,
Jani.


[1] https://lore.kernel.org/all/87h68ni0wd.fsf@intel.com/


> Bspec: 49213
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 34465d56def0..d9ba48b68979 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1126,7 +1126,9 @@ static void gen12_dbuf_slices_config(struct intel_display *display)
>  {
>  	enum dbuf_slice slice;
>  
> -	if (display->platform.alderlake_p)
> +	if (display->platform.alderlake_p || display->platform.dg2 ||
> +	    display->platform.alderlake_p_raptorlake_p ||
> +	    DISPLAY_VER(display) >= 14)
>  		return;
>  
>  	for_each_dbuf_slice(display, slice)

-- 
Jani Nikula, Intel
