Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6EF27F8F8
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 07:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3457B6E133;
	Thu,  1 Oct 2020 05:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B80066E133
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Oct 2020 05:16:10 +0000 (UTC)
IronPort-SDR: htnkpPcnb39nNppnN2uQmXRBrAJ148IdVq6SO0ml/xFCxQwR8QNyWDFIv0FMI4Xc1PKCByIYyY
 75EDWLMy4Dhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="142033751"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="142033751"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 22:16:09 -0700
IronPort-SDR: BizJg/UHLVY4ohWr3IDv4H83TmU3NHIgBTTwZlrTtD0UNwKSDoHfsovun6GNIbYUrZW6FnlhA2
 Uk1h4c5OYpvQ==
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="515348179"
Received: from jjgryzlo-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.105.223])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 22:16:09 -0700
Date: Wed, 30 Sep 2020 22:16:02 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20201001051602.ubchygho7jrrbdkk@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
 <20200930064234.85769-24-lucas.demarchi@intel.com>
 <20200930172041.GB2245633@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930172041.GB2245633@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 23/24] drm/i915/dg1: Change DMC_DEBUG{1,
 2} registers
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 30, 2020 at 10:20:41AM -0700, Matt Roper wrote:
>On Tue, Sep 29, 2020 at 11:42:33PM -0700, Lucas De Marchi wrote:
>> From: Anshuman Gupta <anshuman.gupta@intel.com>
>>
>> DGFX devices have different DMC_DEBUG* counter MMIO address
>> offset. Incorporate these changes in i915_reg.h for DG1
>> and handle i915_dmc_info accordingly.
>>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 9 +++++++--
>>  drivers/gpu/drm/i915/i915_reg.h                      | 1 +
>>  2 files changed, 8 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 0bf31f9a8af5..472f119fe246 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -518,8 +518,13 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
>>  		   CSR_VERSION_MINOR(csr->version));
>>
>>  	if (INTEL_GEN(dev_priv) >= 12) {
>> -		dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
>> -		dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
>> +		if (IS_DG1(dev_priv)) {
>
>I think we'd want IS_DGFX here since this change should hold true for
>any future dgfx platform as well.  Aside from that,

not sure where this info came from, but it's not true. Not having DC6 is
not related to being DGFX an future platforms may as well support it.

>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>
>I notice the bspec does have a new DC6 residency register offset listed
>as well, which seems odd if we don't have DC6 support on this platform.
>

previous version of this patch was defining that but it's unused so I
removed it.

Lucas De Marchi

>
>Matt
>
>
>> +			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
>> +		} else {
>> +			dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
>> +			dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
>> +		}
>> +
>>  		/*
>>  		 * NOTE: DMC_DEBUG3 is a general purpose reg.
>>  		 * According to B.Specs:49196 DMC f/w reuses DC5/6 counter
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index bb5094b80f15..b856a1fb0a32 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -7538,6 +7538,7 @@ enum {
>>  #define BXT_CSR_DC3_DC5_COUNT	_MMIO(0x80038)
>>  #define TGL_DMC_DEBUG_DC5_COUNT	_MMIO(0x101084)
>>  #define TGL_DMC_DEBUG_DC6_COUNT	_MMIO(0x101088)
>> +#define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
>>
>>  #define DMC_DEBUG3		_MMIO(0x101090)
>>
>> --
>> 2.28.0
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>-- 
>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
>(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
