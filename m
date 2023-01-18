Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9C8671832
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 10:52:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D283E10E6F8;
	Wed, 18 Jan 2023 09:52:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E4510E6F8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 09:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674035546; x=1705571546;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pAXPbqs9iUT4VD5GHBrbe0OhDi6IHnbZVtiprXJK6Jo=;
 b=P7GtQQ7zegQB+tlhlXTpyaB2jsC6nvuOJa0NdCv2uzEPVIvZEabvFXdU
 mOSL0B03QtfDn+mF9mQAAWm3Md2cL2WjfQLu+uc5gYC6kFfi6P7Wtzw/M
 WFO3VPczGiKT+aeEt2ThnzjScFGs8HmFb/cDxh4CpUm06A6anluSkAtJs
 bd97bPkm2yvqP4iYnwcGW3TVaWU8W2NSknQPLhCMykOxrCPiFlCNcvDwv
 KZWvIJkz4UNxuQtM0JQNQXJXeCAE9zD0Qeh+InASjl3dxnQKiAx8nlces
 fNlsCG7BAUIp0XayufLoGFLL/ekNjvmTPgIpxe7IzJBsg4xTELamQA/Mr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="324995949"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="324995949"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 01:52:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="652863072"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="652863072"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 01:52:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <Y8bh7WSIJg18ta92@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230116173422.1858527-1-jani.nikula@intel.com>
 <Y8bh7WSIJg18ta92@intel.com>
Date: Wed, 18 Jan 2023 11:52:22 +0200
Message-ID: <87v8l4cgq1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: add struct i915_dsm to wrap
 dsm members together
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 17 Jan 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Jan 16, 2023 at 07:34:21PM +0200, Jani Nikula wrote:
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 72ca62c22797..13fab81a39b8 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -86,6 +86,35 @@ struct intel_pxp;
>>  
>>  #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
>>  
>> +struct i915_dsm {
>> +	/*
>> +	 * Data Stolen Memory - aka "i915 stolen memory" gives us the start and
>> +	 * end of stolen 
>
> The 'Data Stolen Memory - aka "i915 stolen memory"' should probably be moved
> above along with the struct definition, and leave just the resource part,
> something like Stolen gives us the start and end of stolen...."
>
> or something like that...

Agreed.

>
> But up to you, the patch already looks like a good move
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to din, and took the rare liberty to update the comments
while applying.

BR,
Jani.



-- 
Jani Nikula, Intel Open Source Graphics Center
