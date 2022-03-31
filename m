Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 028414ED5EA
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 10:40:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D26810F758;
	Thu, 31 Mar 2022 08:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C8C610F750
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 08:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648716010; x=1680252010;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=drvV4tqYq2yTJ8P2VXF+szlGrOitDMM5OkmtZYS1c1U=;
 b=QrrSa+vwg6ZwAGRy1N6NkTTXsF7ecXUPrv7G0hVZCsDcGLF9igwKslys
 8Mhrx1gi3cVQAdQDc+56VH2zqpgHMUXVPkWkKRB3mLGpFNxdGuDPo2lTp
 1SQOv5tO3eUId5HfqYFSjniKkSptZRs3h4u1J0IoafFFxeP1kvlMmmP8q
 NEdh1tg8sU9/KLa+tndvY4TAmRQ2HxNUxtOZDSldAx2Xn1prMboY5iO76
 7L1AaJ+EUhAW60PplJybe1+n72ZKwZMmfEqqrtAJ5IMy8m81gt0yjUss5
 92PgoMdTg1gQXrN3/2TbnkH56weGPefElVcOdm5FqCFaAG4o4CZ/yLwdG g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="247258767"
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; d="scan'208";a="247258767"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 01:40:08 -0700
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; d="scan'208";a="566281173"
Received: from vvendra-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.255.230.104])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 01:40:08 -0700
Date: Thu, 31 Mar 2022 01:40:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Casey Bowman <casey.g.bowman@intel.com>
Message-ID: <20220331084008.dknqvnyq6kp5f7bt@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220331000908.1225343-1-casey.g.bowman@intel.com>
 <20220331000908.1225343-2-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220331000908.1225343-2-casey.g.bowman@intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH v5 1/1] Split i915_run_as_guest into x86
 and non-x86
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>, daniel.vetter@intel.com,
 intel-gfx@lists.freedesktop.org, michael.cheng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 30, 2022 at 05:09:08PM -0700, Casey Bowman wrote:
>Splitting i915_run_as_guest into a more arch-friendly function
>as non-x86 builds do not support this functionality.
>
>Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


this is by no means and "RFC". For next patches please remove it when
you get an idea of what the patch should be.


The CI failure is unrelated, please re-trigger it in patchwork.

+Tomi: can I get super powers to retrigger others' people patches?
I promise I will use it responsibly :)

thanks
Lucas De Marchi

>---
> drivers/gpu/drm/i915/i915_utils.h | 5 +++++
> 1 file changed, 5 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
>index b2d89c43f24d..a42882e68eea 100644
>--- a/drivers/gpu/drm/i915/i915_utils.h
>+++ b/drivers/gpu/drm/i915/i915_utils.h
>@@ -428,7 +428,12 @@ static inline bool timer_expired(const struct timer_list *t)
>
> static inline bool i915_run_as_guest(void)
> {
>+#if IS_ENABLED(CONFIG_X86)
> 	return !hypervisor_is_type(X86_HYPER_NATIVE);
>+#else
>+	/* Not supported yet */
>+	return false;
>+#endif
> }
>
> bool i915_vtd_active(struct drm_i915_private *i915);
>-- 
>2.25.1
>
