Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A1938E7F1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 15:43:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA7DE6E817;
	Mon, 24 May 2021 13:43:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E34546E817;
 Mon, 24 May 2021 13:43:15 +0000 (UTC)
IronPort-SDR: AQQwBFwDFkGGbq6Ujfz+NX+RFfrkp6DAhNLLEzjTmwHvtJQemUE/ovFvBP8QpkLM3v+P7Wy/qv
 Wphi8nj0Py9g==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="287503527"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="287503527"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 06:43:13 -0700
IronPort-SDR: ZwWyZcPmhg5qyauafuwTk19+zFmWfPR7FVkBnmGeDZygvCDykd2z5FKobl7rr+r9hg4cGp8D3z
 fDpSxe/rYNqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="632628627"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga005.fm.intel.com with ESMTP; 24 May 2021 06:43:12 -0700
Received: from [10.249.134.123] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.134.123])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 14ODhBxW022753; Mon, 24 May 2021 14:43:11 +0100
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <20210506191451.77768-40-matthew.brost@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <596cb7fb-588a-f5f1-6119-1393b8faf8a6@intel.com>
Date: Mon, 24 May 2021 15:43:11 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210506191451.77768-40-matthew.brost@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH 39/97] drm/i915/guc: Increase size of
 CTB buffers
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 06.05.2021 21:13, Matthew Brost wrote:
> With the introduction of non-blocking CTBs more than one CTB can be in
> flight at a time. Increasing the size of the CTBs should reduce how
> often software hits the case where no space is available in the CTB
> buffer.
> 
> Cc: John Harrison <john.c.harrison@intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 77dfbc94dcc3..d6895d29ed2d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -63,11 +63,16 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
>   *      +--------+-----------------------------------------------+------+
>   *
>   * Size of each `CT Buffer`_ must be multiple of 4K.
> - * As we don't expect too many messages, for now use minimum sizes.
> + * We don't expect too many messages in flight at any time, unless we are
> + * using the GuC submission. In that case each request requires a minimum
> + * 16 bytes which gives us a maximum 256 queue'd requests. Hopefully this

nit: all our CTB calculations are in dwords now, not bytes

> + * enough space to avoid backpressure on the driver. We increase the size
> + * of the receive buffer (relative to the send) to ensure a G2H response
> + * CTB has a landing spot.

hmm, but we are not checking G2H CTB yet
will start doing it around patch 54/97
so maybe this other patch should be introduced earlier ?

>   */
>  #define CTB_DESC_SIZE		ALIGN(sizeof(struct guc_ct_buffer_desc), SZ_2K)
>  #define CTB_H2G_BUFFER_SIZE	(SZ_4K)
> -#define CTB_G2H_BUFFER_SIZE	(SZ_4K)
> +#define CTB_G2H_BUFFER_SIZE	(4 * CTB_H2G_BUFFER_SIZE)

in theory, we (host) should be faster than GuC, so G2H CTB shall be
almost always empty, if this is not a case, maybe we should start
monitoring what is happening and report some warnings if G2H is half full ?

>  
>  #define MAX_US_STALL_CTB	1000000
>  
> @@ -753,7 +758,7 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>  	/* beware of buffer wrap case */
>  	if (unlikely(available < 0))
>  		available += size;
> -	CT_DEBUG(ct, "available %d (%u:%u)\n", available, head, tail);
> +	CT_DEBUG(ct, "available %d (%u:%u:%u)\n", available, head, tail, size);
>  	GEM_BUG_ON(available < 0);
>  
>  	header = cmds[head];
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
