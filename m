Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACCB4BCA2B
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Feb 2022 19:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5339910E15E;
	Sat, 19 Feb 2022 18:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E90710E15E
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Feb 2022 18:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645296359; x=1676832359;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8b9gaUi9jdulmvMaIOO+H0Rkgrsfc6OpFPgxaS3fvDA=;
 b=Q7OLWGd/otJ6j/ekID0BXe5ijYZHP0ocr2ceJoNkIlIHGxNN65MLXKBz
 YyPWhBk38EmACaWH+BjZOz5c4Kn22QcSPck/Qodz5dLavui3++XrqgsYG
 Ob6OCG3lpHTdEuLgRxVohalWO9eMU3lVqYgxMiUG25L+iACHQsQZqpmlI
 /9xPaacPGKHPSJBLKuLeOfz5+sZiiEqcQMqPaZRYhtxHIV5M2bte80JDa
 6eymKzUu2RlWQljesqzQM5Uwv/Y+n7eNsP/1kWjaM4JRsrLQQCH/BW5Uv
 4q+XL4TjEi93z/5C5R6+M28Q808gus4VHxx8p6nEcWtqv+CqXW1ldYmTE Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10263"; a="312058819"
X-IronPort-AV: E=Sophos;i="5.88,381,1635231600"; d="scan'208";a="312058819"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2022 10:45:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,381,1635231600"; d="scan'208";a="507136453"
Received: from penglin1-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.88.150])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2022 10:45:58 -0800
Date: Sat, 19 Feb 2022 10:46:01 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220219184601.hxxynefrozikswh4@ldmartin-desk2>
References: <20220216174147.3073235-1-lucas.demarchi@intel.com>
 <164527485193.29220.4470529158548790549@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <164527485193.29220.4470529158548790549@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Refactor_ADS_access_to_use_iosys=5Fmap_=28rev4=29?=
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
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 19, 2022 at 12:47:31PM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: drm/i915/guc: Refactor ADS access to use iosys_map (rev4)
>URL   : https://patchwork.freedesktop.org/series/99711/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_11250_full -> Patchwork_22334_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_22334_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_22334_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Participating hosts (13 -> 13)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_22334_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_exec_balancer@bonded-dual:
>    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-tglb6/igt@gem_exec_balancer@bonded-dual.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-tglb6/igt@gem_exec_balancer@bonded-dual.html

<7>[    7.738070] i915 0000:00:02.0: [drm:intel_uc_init_early [i915]] enable_guc=0 (guc:no submission:no huc:no slpc:no)

>
>  * igt@gem_mmap_gtt@fault-concurrent-x:
>    - shard-snb:          [PASS][3] -> [INCOMPLETE][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-x.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb6/igt@gem_mmap_gtt@fault-concurrent-x.html

<7>[    4.614922] i915 0000:00:02.0: [drm:intel_uc_init_early [i915]] enable_guc=0 (guc:no submission:no huc:no slpc:no)


anything in this series can only change the behavior when using guc, so these failures can't be related to this series.

Lucas De Marchi
