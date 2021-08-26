Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFBB3F83BB
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 10:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C39516E544;
	Thu, 26 Aug 2021 08:26:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B4AF6E544
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 08:26:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="197933992"
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="197933992"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 01:26:34 -0700
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="527752253"
Received: from garrydex-mobl1.ger.corp.intel.com (HELO [10.213.254.71])
 ([10.213.254.71])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 01:26:33 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210826033559.1209020-1-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c824c665-0a49-e112-9134-97edeab3b8a4@linux.intel.com>
Date: Thu, 26 Aug 2021 09:26:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210826033559.1209020-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Ensure wa_init_finish() is called
 for ctx workaround list
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


On 26/08/2021 04:35, Matt Roper wrote:
> A recent restructuring of our context workaround list initialization
> added an early return for non-render engines; this caused us to
> potentially miss the wa_init_finish() call at the end of the function.
> The mistake is pretty harmless --- the only impact is that non-render
> engines on graphics version 12.50+ platforms we don't trim down the
> workaround list to reclaim some memory, and we don't print the usual
> "Initialized 1 context workaround" message in dmesg.  Let's change the
> early return to a jump down to the wa_init_finish() call at the bottom
> of the function.
> 
> Reported-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Fixes: 9e9dfd080201 ("drm/i915/dg2: Maintain backward-compatible nested batch behavior")
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 688ed04edbf6..94e1937f8d29 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -689,7 +689,7 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
>   		fakewa_disable_nestedbb_mode(engine, wal);
>   
>   	if (engine->class != RENDER_CLASS)
> -		return;
> +		goto done;
>   
>   	if (IS_DG1(i915))
>   		dg1_ctx_workarounds_init(engine, wal);
> @@ -720,6 +720,7 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
>   	else
>   		MISSING_CASE(GRAPHICS_VER(i915));
>   
> +done:
>   	wa_init_finish(wal);
>   }
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
