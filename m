Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2B7511C87
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 19:16:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DC1E10E4AD;
	Wed, 27 Apr 2022 17:16:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3434810E4AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Apr 2022 17:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651079767; x=1682615767;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2ApIysIOl04y8ASXnynGSSog8g9CQUMCE+VYy0JqOPY=;
 b=daxmvioQy4TxhItVfRzky8ecMH427Gx/NL4y4jD59HmSgU/ts2xVpBvo
 2KWZXYdKxRFdexY4Fl/zdY6Mwc0iNKxooBYEvxrBhlv/SP6d6PW+Rcaq3
 687HdYmqIGra6EWsssulstewq1aKT7l3KH1ReL/On2ZBX8ob1DcxqOtgQ
 LXsQHPQMcPalva9FKPLN0n+qfmIfSxOfyeLIPUsxGheVGzNsQ0T6XNIDg
 tFdDvlLwcIbL1x+U/n+9swGk3Jo+7/y29DKGPNuWoUMVGFlPfFnXcqBWR
 BVOAhc5Pha8aBA0k+PWeESNmnT+e3VVGus+C0ZauV7yLrcQJ2QtCw2Sob w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10330"; a="245926966"
X-IronPort-AV: E=Sophos;i="5.90,293,1643702400"; d="scan'208";a="245926966"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 10:16:06 -0700
X-IronPort-AV: E=Sophos;i="5.90,293,1643702400"; d="scan'208";a="580717173"
Received: from jmwalsh-mobl.amr.corp.intel.com (HELO [10.213.205.227])
 ([10.213.205.227])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 10:16:05 -0700
Message-ID: <a8c0f755-cebe-a5c8-d1e2-1b78527201a6@linux.intel.com>
Date: Wed, 27 Apr 2022 18:16:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20220413225732.34943-1-ashutosh.dixit@intel.com>
 <b614c2c61a954de06fbe2c3a7c70d3a91804407e.1649982207.git.ashutosh.dixit@intel.com>
 <22e84175-eef3-5ef3-14f0-8a19bbdab70e@linux.intel.com>
 <87levq5y6d.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87levq5y6d.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Don't show engine information
 in fdinfo with GuC submission
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


On 27/04/2022 16:43, Dixit, Ashutosh wrote:
> On Wed, 27 Apr 2022 02:15:35 -0700, Tvrtko Ursulin wrote:
>>
>> On 15/04/2022 01:25, Ashutosh Dixit wrote:
>>> At present i915 does not fetch busyness information from GuC, resulting in
>>> incorrect busyness values in fdinfo. Because engine information is coupled
>>> with busyness in fdinfo, skip showing client engine information in fdinfo
>>> with GuC submission till fetching busyness is supported in the i915 GuC
>>> submission backend.
>>>
>>> v2 (Daniele):
>>>     Make commit title and description more precise
>>>     Add FIXME with brief description at code change
>>>     s/intel_guc_submission_is_used/intel_uc_uses_guc_submission/
>>>
>>> v3 (Daniele):
>>>     Drop FIXME in comment
>>>
>>> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/5564
>>> Fixes: 055634e4b62f ("drm/i915: Expose client engine utilisation via fdinfo")
>>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com
>>> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/i915_drm_client.c | 6 +++++-
>>>    1 file changed, 5 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
>>> index e539f6b23060..475a6f824cad 100644
>>> --- a/drivers/gpu/drm/i915/i915_drm_client.c
>>> +++ b/drivers/gpu/drm/i915/i915_drm_client.c
>>> @@ -145,7 +145,11 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
>>> 		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
>>> 	seq_printf(m, "drm-client-id:\t%u\n", client->id);
>>>    -	if (GRAPHICS_VER(i915) < 8)
>>> +	/*
>>> +	 * Temporarily skip showing client engine information with GuC submission till
>>> +	 * fetching engine busyness is implemented in the GuC submission backend
>>> +	 */
>>> +	if (GRAPHICS_VER(i915) < 8 || intel_uc_uses_guc_submission(&i915->gt0.uc))
>>> 		return;
>>> 		for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
>>
>> Thanks for fixing this while I was away. It was a simple miss, nothing
>> sinister. In terms of mention of "garbage" numbers being reported - were
>> they actually garbage or simply always zero?
> 
> Ah, you are referring to what I wrote in the bug. Actually I didn't check
> the values myself but was told we were displaying "garbage" values (or at
> least I interpreted it that way, and garbage meaning not just zero). But
> looking now at IGT outputs from that time appears the values were just zero
> :/
> 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11503/re-adlp-pub1/igt@drm_fdinfo@all-busy-idle-check-all.html
> 
> I think we could even have left zero values as is except that we'd have to
> fix the IGT failure.
> 
> Sorry for the confusion.

Np. One could even say that there is little difference between skip and 
fail, given both need manual handling in cibuglog to be marked as known 
until GuC support gets added. At least if I still remember how it works 
and that unexplained skips still count as fails.

Regards,

Tvrtko
