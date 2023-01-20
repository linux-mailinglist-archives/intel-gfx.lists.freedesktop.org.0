Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF51675371
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 12:32:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FE8610EA07;
	Fri, 20 Jan 2023 11:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FA4A10EA07;
 Fri, 20 Jan 2023 11:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674214338; x=1705750338;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qONkOFP8DnyyZBcwCooPKjF7KSBVfCQkJzSd5SQ/tIY=;
 b=Hu9HcD4bpt5phsAJABS6k2zOC5PE4llHGGMJ/9FdZmkguikrT+8aSAA2
 KKDvxpQHYBTgLdFHDquKs1jNYZ90VZY8W9pZu+9PyMMxPNTojvA5RSXZN
 eUSUnhDNW3PqSMoozxbFo5U6l+X3hXLHTZn+lzqopuIsD+zBxlQtDKqSl
 mJE7QFyIQRli5HPQgfot5+UQ5OaeXJieSMJx5jobpFFMJVNZs8jWU9pZ2
 wBe91ZoPWhNOkBbcWcs0m+UUZqi/Vwsa6j0gCjDww7kKdj3+O8nAJ8Oad
 6lVYSCSYgavnofjlJ+SIVUAT/HTM1Y+ntJOM7iGXcCzmGWNR/eG01Bakc Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="327654579"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="327654579"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 03:32:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="638136969"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="638136969"
Received: from melsaid-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.222.199])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 03:32:13 -0800
Date: Fri, 20 Jan 2023 12:32:10 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <Y8p7uvNmJlpPFWRC@ashyti-mobl2.lan>
References: <20230117163743.1003219-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230117163743.1003219-1-arnd@kernel.org>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: fix
 intel_selftest_modify_policy argument types
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
Cc: Arnd Bergmann <arnd@arndb.de>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Arnd,

On Tue, Jan 17, 2023 at 05:37:29PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The definition of intel_selftest_modify_policy() does not match the
> declaration, as gcc-13 points out:
> 
> drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c:29:5: error: conflicting types for 'intel_selftest_modify_policy' due to enum/integer mismatch; have 'int(struct intel_engine_cs *, struct intel_selftest_saved_policy *, u32)' {aka 'int(struct intel_engine_cs *, struct intel_selftest_saved_policy *, unsigned int)'} [-Werror=enum-int-mismatch]
>    29 | int intel_selftest_modify_policy(struct intel_engine_cs *engine,
>       |     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c:11:
> drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.h:28:5: note: previous declaration of 'intel_selftest_modify_policy' with type 'int(struct intel_engine_cs *, struct intel_selftest_saved_policy *, enum selftest_scheduler_modify)'
>    28 | int intel_selftest_modify_policy(struct intel_engine_cs *engine,
>       |     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Change the type in the definition to match.
> 
> Fixes: 617e87c05c72 ("drm/i915/selftest: Fix hangcheck self test for GuC submission")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Pushed to drm-intel-gt-next.

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c b/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c
> index 310fb83c527e..2990dd4d4a0d 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c
> @@ -28,8 +28,7 @@ struct intel_engine_cs *intel_selftest_find_any_engine(struct intel_gt *gt)
>  
>  int intel_selftest_modify_policy(struct intel_engine_cs *engine,
>  				 struct intel_selftest_saved_policy *saved,
> -				 u32 modify_type)
> -
> +				 enum selftest_scheduler_modify modify_type)
>  {
>  	int err;
>  
> -- 
> 2.39.0
