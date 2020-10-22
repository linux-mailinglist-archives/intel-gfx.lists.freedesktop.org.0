Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A107296196
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 17:22:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7EFE6E198;
	Thu, 22 Oct 2020 15:22:16 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F36926E198
 for <Intel-GFX@lists.freedesktop.org>; Thu, 22 Oct 2020 15:22:15 +0000 (UTC)
IronPort-SDR: y4Y6HEzs9eFWECK+5ThdjJjSY26YO3VsvLK2WDALSX79t/hLkNby4OoCBUvr7NfPtutV8dmlfE
 oqstXttzIk/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="252242456"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="252242456"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 08:22:13 -0700
IronPort-SDR: bxjBFIhhv6pc/Ht4v+8jBwQRxVK6lNCKyxiZr/H/IUYuyB3RMkeyaYJNcEIE4iWGR4Ec+2hp/E
 4rzSSjwsqTwg==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="534008722"
Received: from peterhae-mobl1.ger.corp.intel.com (HELO [10.249.41.22])
 ([10.249.41.22])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 08:22:12 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20201015182901.3197788-1-John.C.Harrison@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cf95a101-95c0-a28f-dca7-25c9fa9e6838@linux.intel.com>
Date: Thu, 22 Oct 2020 16:22:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201015182901.3197788-1-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH CI v2 0/4] drm/i915/guc: Update to GuC v49
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


+ Joonas for maintainer class question.

On 15/10/2020 19:28, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Update to the latest GuC firmware
> 
> v2: Rebase to newer tree, updated a commit message (review feedback
> from Daniele) and dropped the patch to enable GuC/HuC loading by
> default as apparently this is not allowed.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> 
> 
> John Harrison (4):
>    drm/i915/guc: Update to use firmware v49.0.1
>    drm/i915/guc: Improved reporting when GuC fails to load
>    drm/i915/guc: Clear pointers on free
>    CI: turn on GuC/HuC auto mode by default
> 
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   3 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c       |  18 ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c   | 132 +++++++++++++++----
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c    |   1 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c    |  31 +++--
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h  |  80 +++++------
>   drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h   |   5 +
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     |  29 ++--
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |   2 +
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h |   6 +-
>   drivers/gpu/drm/i915/i915_params.h           |   2 +-
>   11 files changed, 202 insertions(+), 107 deletions(-)

I tried to merge this for John today but the series applies to 
drm-intel-next-queued and not drm-intel-gt-next, which I thought is 
where GT/GuC should go to. Long story short, where to merge GuC patches 
and how is the question?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
