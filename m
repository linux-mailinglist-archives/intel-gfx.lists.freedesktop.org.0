Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEEACA3220
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:02:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185D210E1C7;
	Thu,  4 Dec 2025 10:02:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KtoQ+dFr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D475C10E1C7;
 Thu,  4 Dec 2025 10:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764842555; x=1796378555;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=6lDxGSsbmSi9xldPJRWfoYGt9CKZMbmcdoza4sOMbfg=;
 b=KtoQ+dFre3dZyAtT8YN2VMZQmUDRDzScUXCJJexS44ob/xzfyy3RTeA9
 YTmCYBUMg8yKFz/lPHndMV0w1OIu1sjjGBIeQ2jRCaZXKZBeKOvOXFe1F
 2suzbJKVENlffrmfp2j9MVksERTa9ogNBZ+u1xW724Ap/1d+2gT8tRkR0
 aC0COSDmtt9uGqeagdPXipZr9OViqh2Fmcf91f39xfBjSRVk9Q0kVSTHY
 gMB3EavpRdwyYVxysjTFqJku/ZFflJMQKJ5QS5fnM7hiEnOv99YfIgJEq
 mPwif3YMSndOXh3qMrchEsXrE/i1yteozo6Der3VDZHXKoiDgJV2JW8EE g==;
X-CSE-ConnectionGUID: jU1WNAV2SamCYOYU9W17nQ==
X-CSE-MsgGUID: aqlljUQsQQOyNxZMErL1ng==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="67019242"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="67019242"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:02:34 -0800
X-CSE-ConnectionGUID: GdksiDjaTPyQvwTo+vBT3w==
X-CSE-MsgGUID: AzvM2Z65S8yxQ38Qv5IHcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="218297414"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:02:33 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [Core-for-CI] fs: PM: Fix reverse check in
 filesystems_freeze_callback()
In-Reply-To: <20251203135551.2629298-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251203135551.2629298-1-chaitanya.kumar.borah@intel.com>
Date: Thu, 04 Dec 2025 12:02:30 +0200
Message-ID: <39a6b8d4aa810d82127b91056a4df8d2f86f9bb8@intel.com>
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

Acked-by: Jani Nikula <jani.nikula@intel.com>

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
