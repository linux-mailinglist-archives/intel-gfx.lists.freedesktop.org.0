Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EEA49C9E8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 13:40:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51A7810E656;
	Wed, 26 Jan 2022 12:40:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CFEF10E656
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 12:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643200839; x=1674736839;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wnDTE/dbhlARKa+BntoDdoBbWZSbb2AsDtoZMW6CJb8=;
 b=nZLEq00LtNXiuqVryo2MJENYVb13hQbc/2KEWvR3ojiMcb9zkuRnRHBA
 FJ87K7Em9OjZtHZjnlbcrP0HybK473MR8FViPjL+jHcEtcP8neyQfHMg/
 H8w+sQBqrzZkTcp6LYTQbfUxG94EF8z6vBG2LfuEqsi9/lieS4kcpuyGN
 Kg47n3kydtXLgkITlyfrK5zLrcv+Li18ScNHI+Cg8BnT43k7OVCDb5aa7
 z/dGJ2wLvCxydYQAfPNG+596xTsyRSqKtEM8kYyknIp4N7llanwfJPjxe
 5L9tw4u5bxFioUwGE3FAaGDJGl56xQXZLwbNanNJtXtns4jy60j8Pn3/G A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246485417"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="246485417"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 04:40:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="563398339"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 04:40:36 -0800
Date: Wed, 26 Jan 2022 14:40:32 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220126124032.GC1958725@ideak-desk.fi.intel.com>
References: <20220126081539.23227-1-ville.syrjala@linux.intel.com>
 <20220126081539.23227-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220126081539.23227-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Enable rpm wakeref tracking
 whether runtime pm is enabled or not
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
Cc: intel-gfx@lists.freedesktop.org, Marco Elver <elver@google.com>,
 Dmitry Vyukov <dvyukov@google.com>, Vlastimil Babka <vbabka@suse.cz>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 26, 2022 at 10:15:39AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Don't see why we should skip the wakeref tracking when the
> platform doesn't support runtime pm. We still want all the
> code to be 100% leak free so let's track this unconditionally.
> 
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: Marco Elver <elver@google.com> # stackdepot
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 64c2708efc9e..3293ac71bcf8 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -77,9 +77,6 @@ track_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
>  	depot_stack_handle_t stack, *stacks;
>  	unsigned long flags;
>  
> -	if (!rpm->available)
> -		return -1;
> -
>  	stack = __save_depot_stack();
>  	if (!stack)
>  		return -1;
> -- 
> 2.34.1
> 
