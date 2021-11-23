Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 804D945AE19
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 22:13:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF5A2897B5;
	Tue, 23 Nov 2021 21:13:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B64C895B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 21:13:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="215842223"
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="215842223"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 13:13:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="650202684"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2021 13:12:59 -0800
Received: from [10.249.159.246] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.159.246])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1ANLCwEh010886; Tue, 23 Nov 2021 21:12:59 GMT
Message-ID: <8e7dbd9e-1947-aee4-9a28-4b66ad62b05b@intel.com>
Date: Tue, 23 Nov 2021 22:12:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.1
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-2-alan.previn.teres.alexis@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20211122230402.2023576-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC 1/7] drm/i915/guc: Add basic support for error
 capture lists
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



On 23.11.2021 00:03, Alan Previn wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
...

> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 77fbcd8730ee..0bfc92b1b982 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -4003,6 +4003,24 @@ int intel_guc_context_reset_process_msg(struct intel_guc *guc,
>  	return 0;
>  }
>  
> +int intel_guc_error_capture_process_msg(struct intel_guc *guc,
> +					 const u32 *msg, u32 len)
> +{
> +	int status;

likely it should be "u32" as few lines below you're using msg[0];

> +
> +	if (unlikely(len != 1)) {
> +		drm_dbg(&guc_to_gt(guc)->i915->drm, "Invalid length %u", len);

any error returned by the CTB message handler will trigger full dump of
unexpected message - do we really need this unlikely dbg message here ?

> +		return -EPROTO;
> +	}
> +
> +	status = msg[0];
> +	drm_info(&guc_to_gt(guc)->i915->drm, "Got error capture: status = %d", status);

IIRC all notification status are defined in GuC spec in hex, so maybe we
should also print it as %#x ?

-Michal

> +
> +	/* Add extraction of error capture dump */
> +
> +	return 0;
> +}
> +
>  static struct intel_engine_cs *
>  guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance)
>  {
> 
