Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B63B826CF88
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 01:21:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F10456E0EF;
	Wed, 16 Sep 2020 23:21:27 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 875BB6E0EF
 for <Intel-GFX@lists.freedesktop.org>; Wed, 16 Sep 2020 23:21:26 +0000 (UTC)
IronPort-SDR: SQxEVpAPNQVUr0hsauYpZRw/z4TFnx589GO9fEKHFj7SFJMjazidV3vc2UTu88FPDEtWQo/zDl
 OsDHX/dlrhWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139094285"
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="139094285"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 16:21:26 -0700
IronPort-SDR: 4FZ0XqbLX2odyNGwi+ibe6xNmiHV4/IcH2rsZoBr0Y1PExbVltc1rG0Spfs0RFQlrHGql9aAzZ
 goDNSL8CbZ6w==
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="483500469"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.88.203])
 ([10.212.88.203])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 16:21:25 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <e042e1a9-c839-610f-ceb0-39850d1c4beb@intel.com>
Date: Wed, 16 Sep 2020 16:21:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 00/12] drm/i915/guc: Update to GuC v49
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 9/16/2020 10:16 AM, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
>
> Update to the latest GuC firmware and enable by default.

Missing a big note to make it clear that all these patches have to be 
squashed into one before pushing.

Daniele

>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>
>
> Daniele Ceraolo Spurio (1):
>    drm/i915/uc: turn on GuC/HuC auto mode by default
>
> John Harrison (5):
>    drm/i915/guc: ADS changes for GuC v42
>    drm/i915/guc: Increased engine classes in ADS
>    drm/i915/guc: Update firmware to v49.0.1
>    drm/i915/guc: Improved reporting when GuC fails to load
>    drm/i915/guc: Clear pointers on free
>
> Matthew Brost (3):
>    drm/i915/guc: Support logical engine mapping table in ADS
>    drm/i915/guc: Setup private_data pointer in GuC ADS
>    drm/i915/guc: Remove GUC_CTL_CTXINFO init param
>
> Michal Wajdeczko (3):
>    drm/i915/guc: New GuC IDs based on engine class and instance
>    drm/i915/guc: Kill guc_ads.reg_state_buffer
>    drm/i915/guc: Setup doorbells data in ADS
>
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   3 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c       |  18 ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c   | 132 +++++++++++++++----
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c    |   1 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c    |  27 +++-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h  |  82 +++++++-----
>   drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h   |   5 +
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     |  27 ++--
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |   2 +
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h |   6 +-
>   drivers/gpu/drm/i915/i915_params.h           |   2 +-
>   11 files changed, 207 insertions(+), 98 deletions(-)
>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
