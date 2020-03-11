Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBCF181C12
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 16:11:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51589892DE;
	Wed, 11 Mar 2020 15:11:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D7C89FFD
 for <Intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 15:11:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 08:11:09 -0700
X-IronPort-AV: E=Sophos;i="5.70,541,1574150400"; d="scan'208";a="236476468"
Received: from zye4-mobl1.amr.corp.intel.com (HELO [10.254.212.29])
 ([10.254.212.29])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 11 Mar 2020 08:11:06 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20200310091927.27401-1-tvrtko.ursulin@linux.intel.com>
From: "Ye, Tony" <tony.ye@intel.com>
Message-ID: <cef7ba32-4f19-342b-ddcf-56d63371f3c4@intel.com>
Date: Wed, 11 Mar 2020 23:11:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200310091927.27401-1-tvrtko.ursulin@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl:
 WaEnablePreemptionGranularityControlByUMD
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



On 3/10/2020 5:19 PM, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Certain workloads need the ability to disable preemption completely so
> allow them to do that by whitelisting GEN8_CS_CHICKEN1.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Michal Mrozek <michal.mrozek@intel.com>
> Cc: Tony Ye <tony.ye@intel.com>
> Cc: Rafael Antognolli <rafael.antognolli@intel.com>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> ---
> We need confirmation and acks from all three userspace components here.
> Especially since my impression was some are for and some were against
> whitelisting this one.

Media doesn't need this for TGL. But it's acceptable if other userspace 
wants to whitelist it.

Acked-by: Tony Ye <tony.ye@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 391f39b1fb26..37becdf77427 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1276,6 +1276,9 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
>   
>   		/* Wa_1806527549:tgl */
>   		whitelist_reg(w, HIZ_CHICKEN);
> +
> +		/* WaEnablePreemptionGranularityControlByUMD:tgl */
> +		whitelist_reg(w, GEN8_CS_CHICKEN1);
>   		break;
>   	default:
>   		break;
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
