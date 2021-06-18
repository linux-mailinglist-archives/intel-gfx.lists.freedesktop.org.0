Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3973AC9FC
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 13:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6DC36E9F2;
	Fri, 18 Jun 2021 11:37:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A10F6E9F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 11:37:49 +0000 (UTC)
IronPort-SDR: xkoln3Rg0QbKrrcLse/3/Q9Bp/pcVcTTub1cj3vCnzWJ+voEvBWprosfqj+GEucJoe0a5H43AW
 ZT+pMrhgutVA==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="206357635"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="206357635"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 04:37:48 -0700
IronPort-SDR: E2miJG/wmmxAQE+nRi3ZPGmjTGL/sjTTulEqg5T6tQJ9JX4zkP4X7bCxvgit5TVI9PBam2a/oy
 AedwUR+eo0uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="554709074"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 18 Jun 2021 04:37:47 -0700
Received: from [10.249.155.199] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.155.199])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 15IBbkbD025316; Fri, 18 Jun 2021 12:37:46 +0100
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <YMxNaH5MQakeg1L7@mwanda>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <4ce0b6c2-438e-43b5-7ed0-89e911d857a1@intel.com>
Date: Fri, 18 Jun 2021 13:37:45 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YMxNaH5MQakeg1L7@mwanda>
Content-Language: en-US
Subject: Re: [Intel-gfx] [bug report] drm/i915/guc: Add support for data
 reporting in GuC responses
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Dan,

On 18.06.2021 09:38, Dan Carpenter wrote:
> Hello Michal Wajdeczko,
> 
> The patch b839a869dfc9: "drm/i915/guc: Add support for data reporting
> in GuC responses" from Mar 26, 2018, leads to the following static
> checker warning:
> 
> 	drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:307 intel_guc_ct_enable()
> 	error: passing non negative 4095 to ERR_PTR

Thanks for catching that!

Please note that data returned by these CTB (de)registration actions is
defined as MBZ, so this should never happen.

Anyway, fix posted [1] but since we are in the middle of GuC update [2]
we would rather wait and merge rebased version.

Thanks,
Michal

[1] https://patchwork.freedesktop.org/patch/440046/
[2] https://patchwork.freedesktop.org/series/91106/

> 
> drivers/gpu/drm/i915/gt/uc/.intel_guc.c
>    405          intel_guc_notify(guc);
>    406  
>    407          /*
>    408           * No GuC command should ever take longer than 10ms.
>    409           * Fast commands should still complete in 10us.
>    410           */
>    411          ret = __intel_wait_for_register_fw(uncore,
>    412                                             guc_send_reg(guc, 0),
>    413                                             INTEL_GUC_MSG_TYPE_MASK,
>    414                                             INTEL_GUC_MSG_TYPE_RESPONSE <<
>    415                                             INTEL_GUC_MSG_TYPE_SHIFT,
>    416                                             10, 10, &status);
>    417          /* If GuC explicitly returned an error, convert it to -EIO */
>    418          if (!ret && !INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(status))
>    419                  ret = -EIO;
> 
> If __intel_wait_for_register_fw() fails then either "ret" is set or
> "status" status has a code and "ret" becomes -EIO.
> 
>    420  
>    421          if (ret) {
>    422                  DRM_ERROR("MMIO: GuC action %#x failed with error %d %#x\n",
>    423                            action[0], ret, status);
>    424                  goto out;
> 
> So if there is any errors we return here.
> 
>    425          }
>    426  
>    427          if (response_buf) {
>    428                  int count = min(response_buf_size, guc->send_regs.count - 1);
>    429  
>    430                  for (i = 0; i < count; i++)
>    431                          response_buf[i] = intel_uncore_read(uncore,
>    432                                                              guc_send_reg(guc, i + 1));
>    433          }
>    434  
>    435          /* Use data from the GuC response as our return value */
>    436          ret = INTEL_GUC_MSG_TO_DATA(status);
> 
> But this is setting "ret" to something positive in the 0xffff range.
> The caller treats it as an error code.
> 
>    437  
>    438  out:
>    439          intel_uncore_forcewake_put(uncore, guc->send_regs.fw_domains);
>    440          mutex_unlock(&guc->send_mutex);
>    441  
>    442          return ret;
>    443  }
> 
> regards,
> dan carpenter
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
