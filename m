Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 393214DD6FE
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 10:21:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D58410E504;
	Fri, 18 Mar 2022 09:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D96E10E504
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 09:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647595277; x=1679131277;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=L0h9Pz+6HVhyeUQ6F3KLZQq/y2CKhzsBqh2qxQogy/0=;
 b=Gfe0z5djw/Oeb32dUPwiQpsew3xSgGmzn9bea3R/iNxnzR4coaHnTdJW
 qAYa1TEcA7KRounCbWwX8EqFZMWTmifkwwEZ/Ad1n7yQ8AsMCObqwy+Ui
 k2vQvf1Eepy3A5pqFyZouqxKZ87xIbiU13h0QR/itIEHNTs/TK4UPYv0W
 57LlMYs6+oHaFRztYSBcQS1D7LxjAa56++mHl2JhRt3HNpf6TWRPMCe3s
 0CWoyzrArUgwGY8tqPCJ9GwDsADKAetJ+jzRing/0BMzYZ91wzXkaQsw6
 Lr5wd8UwgEuLRCmJacKZbPKQ4iL6sskYozijN46vTl5rwKw8jjJs6g73a Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="255926975"
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="255926975"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 02:21:16 -0700
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="541755571"
Received: from dplotkin-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.55.176])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 02:21:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220317194334.ejfuyyzuwgpf545v@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1647542120.git.jani.nikula@intel.com>
 <b35d1cab535265d04cd2161b0f8984d5d93af5c4.1647542120.git.jani.nikula@intel.com>
 <20220317194334.ejfuyyzuwgpf545v@ldmartin-desk2>
Date: Fri, 18 Mar 2022 11:21:11 +0200
Message-ID: <875yobmxa0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/dmc: fix i915_reg_t usage
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 17 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Mar 17, 2022 at 08:36:16PM +0200, Jani Nikula wrote:
>>i915_reg_t is supposed to be a somewhat opaque data type, not to be
>>looked inside.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
> but maybe also already clean up the remaining one?
>
> $ git grep "i915_reg_t.*= *{ *}"
> drivers/gpu/drm/i915/display/intel_display_debugfs.c:   i915_reg_t dc5_reg, dc6_reg = {};

So that's the one being fixed here.

> drivers/gpu/drm/i915/gt/intel_ring_submission.c:                        i915_reg_t last_reg = {}; /* keep gcc quiet */

I'll send a separate fix for that, not part of this series.

Thanks,
Jani.

>
> Lucas De Marchi
>
>>---
>> drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>>index 2e11725a0828..5de13f978e57 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>@@ -816,7 +816,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>> 	struct drm_i915_private *i915 = m->private;
>> 	intel_wakeref_t wakeref;
>> 	struct intel_dmc *dmc;
>>-	i915_reg_t dc5_reg, dc6_reg = {};
>>+	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
>>
>> 	if (!HAS_DMC(i915))
>> 		return -ENODEV;
>>@@ -868,7 +868,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>> 	}
>>
>> 	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(i915, dc5_reg));
>>-	if (dc6_reg.reg)
>>+	if (i915_mmio_reg_valid(dc6_reg))
>> 		seq_printf(m, "DC5 -> DC6 count: %d\n",
>> 			   intel_de_read(i915, dc6_reg));
>>
>>-- 
>>2.30.2
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
