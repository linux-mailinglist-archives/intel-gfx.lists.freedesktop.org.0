Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F4DCA6DE3
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 10:19:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1945D10E0C6;
	Fri,  5 Dec 2025 09:19:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TdXoqtC7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D383D10EA99;
 Fri,  5 Dec 2025 09:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764926392; x=1796462392;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=wwzwDFE0Oav7RbHopqjvoGVoiGkggDph9jlLZoVykhk=;
 b=TdXoqtC7VxulqGmpTyeisTh3Fw0N920EF5ggXIdwSr9/pOuX7lE0ctnp
 QSwfKXKz7xuQAe8RpfEgQerrQ/PaxLU/gVgmp23M0DSYoDv3kidb06nlK
 KYTphLe4iuJYpBQe3ONQwmFjp32VfS42VQaVAGwb4FhQCxP9+zz08nDaD
 lbboT8Wjm/3b8S6E0dPiZYB4vW1l7bCcUTSE7niLQef7JeRAzTy23CxbI
 SnzHsSfQ46mXE1rM1nhCLeIyEDLSaqEwkZhbwKyRTY70Q5KXqMMYFnOfC
 yxZQ4srSH0Xt9JNf9CbTNi4YUmtYtd4FE82smmSoPTiWrH3sjOvnPormP A==;
X-CSE-ConnectionGUID: OVQSCUb8QcavNz19ZQSGJw==
X-CSE-MsgGUID: Qgy18kXtTGm3l9i7/w+70w==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="78311080"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="78311080"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 01:19:51 -0800
X-CSE-ConnectionGUID: nVYdhaERQH+NW9ghT7HNmA==
X-CSE-MsgGUID: PEmCm1B+SQaGM4WETMcBEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="195683841"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 01:19:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [Core-for-CI] fs: PM: Fix reverse check in
 filesystems_freeze_callback()
In-Reply-To: <20251203135551.2629298-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251203135551.2629298-1-chaitanya.kumar.borah@intel.com>
Date: Fri, 05 Dec 2025 11:19:47 +0200
Message-ID: <198639d260d9cf69ccbda984cee6d2494306bdb9@intel.com>
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

On Wed, 03 Dec 2025, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
>
> The freeze_all_ptr check in filesystems_freeze_callback() introduced by
> commit a3f8f8662771 ("power: always freeze efivarfs") is reverse which
> quite confusingly causes all file systems to be frozen when
> filesystem_freeze_enabled is false.
>
> On my systems it causes the WARN_ON_ONCE() in __set_task_frozen() to
> trigger, most likely due to an attempt to freeze a file system that is
> not ready for that.
>
> Add a logical negation to the check in question to reverse it as
> appropriate.
>
> Fixes: a3f8f8662771 ("power: always freeze efivarfs")
> Cc: 6.18+ <stable@vger.kernel.org> # 6.18+
> Link: https://lore.kernel.org/linux-pm/12788397.O9o76ZdvQC@rafael.j.wysocki/
> References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15341
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> Reviewed-by: Jan Kara <jack@suse.cz>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks, pushed to topic/core-for-CI.

BR,
Jani.

> ---
>  fs/super.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/fs/super.c b/fs/super.c
> index 277b84e5c279..4c79f170ac0d 100644
> --- a/fs/super.c
> +++ b/fs/super.c
> @@ -1188,7 +1188,7 @@ static void filesystems_freeze_callback(struct super_block *sb, void *freeze_all
>  	if (!sb->s_op->freeze_fs && !sb->s_op->freeze_super)
>  		return;
>  
> -	if (freeze_all_ptr && !(sb->s_type->fs_flags & FS_POWER_FREEZE))
> +	if (!freeze_all_ptr && !(sb->s_type->fs_flags & FS_POWER_FREEZE))
>  		return;
>  
>  	if (!get_active_super(sb))

-- 
Jani Nikula, Intel
