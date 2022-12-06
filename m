Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B5E643EB2
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 09:33:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16CCB10E302;
	Tue,  6 Dec 2022 08:33:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B64410E302
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 08:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670315579; x=1701851579;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=wQoIsPbFkZ8dG5lTH8XEWv4Or8VbJsy65HMV8HmkadU=;
 b=d69uDMou4FFxPsEmmh+QNmsPGH3it+i6KspbqKeKzW6WaZ+zh+qdCkJU
 dJrxPTCwO8AjIIns7vBlblgww/G1F7jvtTVxQTLaq+y/wmPSqO9zA4LIe
 VsCmE+3By2cP+yjrOB7OuzpnWhXoNqHBi+uaXrV0OVUMZKd5MlF83vrbs
 7NLEac8THTO9HRQ1z6cFDnErPxmMXKItxRn/EHP/w5cCzuS39/eQzUCsl
 BsxUwOzyGlXKfrULRhZvgNkJF2lsbWqFzNCI0M38/cqqP+RIXU9NpIvwv
 gHeoSdmzjQ4h0WyqL5xZEagbarfwyXhDMiI0nVVwXQ0tvQd4r6C/Vg8Qg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317710781"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="317710781"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 00:32:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="734912175"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="734912175"
Received: from kflahert-mobl.ger.corp.intel.com (HELO [10.213.212.142])
 ([10.213.212.142])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 00:32:57 -0800
Message-ID: <a52b763f-179a-8f3f-dfd3-d7d9329d6481@linux.intel.com>
Date: Tue, 6 Dec 2022 08:32:55 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
 <20220509210151.1843173-2-alan.previn.teres.alexis@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220509210151.1843173-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [Intel-gfx 1/6] drm/i915/guc: Fix GuC relay log
 debugfs failing open
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


On 09/05/2022 22:01, Alan Previn wrote:
> When GuC-Error-Capture was introduced, we created
> buf_in_use as a way to identify if relay logging
> had started. It is meant to replace the previous
> method where a mmap of the GuC log buffer was
> the indicator but not since GuC Error Capture
> shares that mapping throughout operation.
> 
> However, that method of checking was not updated
> when the debugfs guc_log_relay_ctl_open was called.
> Fix that check.
> 
> Fixes:
>     drm/i915/guc: Add capture region into intel_guc_log
>     (daff407a083d).

Wrong format of fixes tag - if you want this picked up by any of the 
automated tooling, it won't be. (And you probably do given DG2 is out of 
force probe.)

Regards,

Tvrtko

> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> Link: https://patchwork.freedesktop.org/patch/479021/?series=101603&rev=1
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> index 78d2989fe917..09f4d5fbca82 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> @@ -568,7 +568,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
>   
>   bool intel_guc_log_relay_created(const struct intel_guc_log *log)
>   {
> -	return log->buf_addr;
> +	return log->relay.buf_in_use;
>   }
>   
>   int intel_guc_log_relay_open(struct intel_guc_log *log)
