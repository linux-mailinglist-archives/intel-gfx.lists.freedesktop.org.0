Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DAA4256F6
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 17:46:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10B296E84E;
	Thu,  7 Oct 2021 15:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B6496E84E
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 15:46:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="223683893"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="223683893"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 08:45:57 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="524709162"
Received: from jadiaz2-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.28.252])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 08:45:57 -0700
Date: Thu, 7 Oct 2021 08:45:56 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20211007154556.zzf2xjr4cvorozne@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20211005171728.3147094-1-lucas.demarchi@intel.com>
 <163347577450.19283.9746136297993346850@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <163347577450.19283.9746136297993346850@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_remove_IS=5FACTIVE_=28rev3=29?=
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

On Tue, Oct 05, 2021 at 11:16:14PM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: drm/i915: remove IS_ACTIVE (rev3)
>URL   : https://patchwork.freedesktop.org/series/95312/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_10683_full -> Patchwork_21253_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_21253_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_21253_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_21253_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_exec_schedule@pi-common@vecs0:
>    - shard-skl:          [PASS][1] -> [FAIL][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/shard-skl8/igt@gem_exec_schedule@pi-common@vecs0.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21253/shard-skl6/igt@gem_exec_schedule@pi-common@vecs0.html


can't really be: doesn't even change anything in the final .ko

$ ls -l drivers/gpu/drm/i915/i915.ko{,.old}
-rw-rw-r-- 1 lucas lucas 35297704 Oct  7 08:44 drivers/gpu/drm/i915/i915.ko
-rw-rw-r-- 1 lucas lucas 35297704 Oct  7 08:44 drivers/gpu/drm/i915/i915.ko.old
$ git diff --no-index drivers/gpu/drm/i915/i915.ko{,.old}
$

Lucas De Marchi
