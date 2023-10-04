Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EED7E7B985A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 00:48:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8028E10E13D;
	Wed,  4 Oct 2023 22:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F08F10E13D
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 22:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696459705; x=1727995705;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=qCFLrNuO8TgxHcQkuvAD0iR/ENvySyr6yivUFZE9b8o=;
 b=QD548Wph3JYZFy7CrDO/2T/IC2B/wUqQnrpK527FIsQtbPhLnpe4y3VQ
 Hl702bJoUlwdrXuIttzWkAWYyacN90j0Pb+zpqopTcLBDv2C5FUGp1wp3
 XNjXcXGM+Q5Evl1pBXejiOBpVND18syqwN7J6z3P679j15VccA8qe8ECS
 2ArrEeLarcpI3ztpuHr0/oHV5t+LiBupVxwoSmhBt2u9U3Wk05wYXu5Ba
 SlAeO58zeOVsKsIPjB6cXKyC9AucT4r/ygqZP7TQMg48xoxR3iXDDQs6D
 sgh6T9u/xfTMOTxlEjACf4cwCe2mS0mvhg9vf+P4z/su/UYOwmm5gwpRH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="383230986"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="383230986"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 15:48:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="701376065"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="701376065"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga003.jf.intel.com with ESMTP; 04 Oct 2023 15:48:15 -0700
Received: from [10.249.133.82] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.133.82])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 6B59C3740C;
 Wed,  4 Oct 2023 23:48:14 +0100 (IST)
Message-ID: <176222c0-0519-f3c7-5004-781124db482c@intel.com>
Date: Thu, 5 Oct 2023 00:48:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
 <20231004220739.1313307-4-jonathan.cavitt@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20231004220739.1313307-4-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH dii-client v6 2/5] drm/i915: Define and use
 GuC and CTB TLB invalidation routines
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
Cc: matthew.d.roper@intel.com, janusz.krzysztofik@intel.com,
 nirmoy.das@intel.com, andi.shyti@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 05.10.2023 00:07, Jonathan Cavitt wrote:
> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> 

snip

> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 6e22af31513a5..1ee4d4a988398 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -1115,6 +1115,11 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
>  	case INTEL_GUC_ACTION_NOTIFY_EXCEPTION:
>  		ret = intel_guc_crash_process_msg(guc, action);
>  		break;
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
> +		ret = intel_guc_tlb_invalidation_done(ct_to_guc(ct), hxg, request->size);
> +		if (unlikely(ret))
> +			ct_free_msg(request);

why this request message is released here ?

for other actions this is done in unified way either later in this
function (for success case) or in the caller (error case)

so this will cause double free for (unlikely) error case, no ?

> +		break;
>  	default:
>  		ret = -EOPNOTSUPP;
>  		break;
> @@ -1186,6 +1191,7 @@ static int ct_handle_event(struct intel_guc_ct *ct, struct ct_incoming_msg *requ
>  	switch (action) {
>  	case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
>  	case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>  		g2h_release_space(ct, request->size);
>  	}
>  
