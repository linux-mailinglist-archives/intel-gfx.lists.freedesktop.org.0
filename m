Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5406D58EA
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 08:51:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5136210E5D5;
	Tue,  4 Apr 2023 06:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 480E110E169;
 Tue,  4 Apr 2023 06:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680591078; x=1712127078;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ows6xq4mMvsX4sSybUcUHqWG9rB/Ektk2LMIYp+2Ef0=;
 b=OyNCJVqK/fv7Sb1Hu4L0qpSvV8m/CVhOms/9OYUZ0eJ3GYg3EwhIX0pb
 bBqbLnxGsYNLsq0yb1MFWe2y9E3OQjNh/gQkiize0swQevogPJdGN2Og8
 YG+XNYBln2+qkyxUq0grhpJMDjWNhQO6uhTRZodXxKlMWSIldE+zB/ZIm
 IWJEo7Mq2LO8QVPHPnOTen1eANOryFkUSJZ7h4bzy72X7Oa8WB5DevQ1h
 saIssWHiHgN1f7jaCktklzHRyh8e4DBKqxA93Rxtjsn1o4a7ID53kktFD
 8oGlCJx7hpHd6FEG0qbgTp5KYgV8AvRhxx+njlvPOTx8c+hBFFLvIdAgo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="326123658"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="326123658"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 23:51:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="755531763"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="755531763"
Received: from bdallmer-mobl.ger.corp.intel.com (HELO [10.249.32.152])
 ([10.249.32.152])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 23:51:15 -0700
Message-ID: <16f53bb3-a5c2-7379-c940-579e02924f66@linux.intel.com>
Date: Tue, 4 Apr 2023 08:51:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.1
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20230331102419.521392-1-maarten.lankhorst@linux.intel.com>
 <20230331102419.521392-4-maarten.lankhorst@linux.intel.com>
 <20230403203540.GY4085390@mdroper-desk1.amr.corp.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20230403203540.GY4085390@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 3/6] drm/i915: Fix comparison in
 intel_dram.
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey,

On 2023-04-03 22:35, Matt Roper wrote:
> On Fri, Mar 31, 2023 at 12:24:16PM +0200, Maarten Lankhorst wrote:
>> Gen13 should probably be the same as gen12, not gen11.
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> ---
>>   drivers/gpu/drm/i915/soc/intel_dram.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
>> index 9f0651d48d41..9649051ed8ed 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>> @@ -548,7 +548,7 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)
> I don't think we need this change.  We were only reading the this pcode
> mailbox for display purposes, and even on the latest graphics version 12
> platforms we shouldn't make it into this function anymore.  Instead the
> display IP now provides this information itself so there's no need to go
> through the GT's pcode mailbox; we read it directly from display
> registers in xelpdp_get_dram_info().  It looks like this condition here
> would only matter if we had a future platform with graphics version
> higher than 12, but display version lower than 14, which seems very
> unlikely.

Probably not, but it's at least cosmetically more correct. We only need 
the dram code for display, so in theory we could check for display_ver 
 >= 12 instead and have it unified.

If something breaks the pattern, we can fix it then. :)

~Maarten


