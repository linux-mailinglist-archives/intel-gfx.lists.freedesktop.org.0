Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D2B7D8072
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 12:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4319910E7A1;
	Thu, 26 Oct 2023 10:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF87210E7A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 10:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698315357; x=1729851357;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=eRRMtFRd/cS8lnjHiO3j2RvSvd3N0s/dpHxOMhXkUr0=;
 b=jnThD/yu04XPvOypRN71s6WNvwZpVzE+/mXJqyu1mAkaSBGXx51oJNQR
 o3hHCQPEwdh2dYBPJU0PLAbqwhdgXzNpSMeKH+94g83x5o2D8jiM3D96M
 hl9aW6OIMjDHC3RKmo0J6MB9JjDTNATB6GtUgVwQjzNmMko31ZlBnE9Kv
 6C+2VyeUbCwYISAiEsbR0DFsSYPKA8L2/jRYXYBF98IFpCVo13ixBaLVU
 EKt+oi5ZC9kpJxCudYxEOFDgaQ2kBGnhetINX/qGv9QqV4hBQMnR/Eb58
 bsRg8Qy2p9aoG5PYVexBxHhSI4ES8TpM0EfCMmGOV5w02mxcw3VtMLIPs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="306910"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="306910"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:15:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="1006335650"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="1006335650"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.41.172])
 ([10.249.41.172])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:15:28 -0700
Message-ID: <96d3e8f1-ebeb-6849-a0e9-ba07b89946a0@linux.intel.com>
Date: Thu, 26 Oct 2023 12:15:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: imre.deak@intel.com, Nirmoy Das <nirmoy.das@intel.com>,
 intel-gfx@lists.freedesktop.org, Mika Kahola <mika.kahola@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
References: <20231025170834.22691-1-nirmoy.das@intel.com>
 <ZTorwwfEiJm+n1pY@ideak-desk.fi.intel.com>
 <ZTo7Qv6eZbzrQYj9@ideak-desk.fi.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <ZTo7Qv6eZbzrQYj9@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tc: Fix -Wformat-truncation in
 intel_tc_port_init
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


On 10/26/2023 12:11 PM, Imre Deak wrote:
> On Thu, Oct 26, 2023 at 12:05:13PM +0300, Imre Deak wrote:
>> On Wed, Oct 25, 2023 at 07:08:34PM +0200, Nirmoy Das wrote:
>>> Fix below compiler warning:
>>>
>>> intel_tc.c:1879:11: error: ‘%d’ directive output may be truncated
>>> writing between 1 and 11 bytes into a region of size 3
>>> [-Werror=format-truncation=]
>>> "%c/TC#%d", port_name(port), tc_port + 1);
>>>             ^~
>>> intel_tc.c:1878:2: note: ‘snprintf’ output between 7 and 17 bytes
>>> into a destination of size 8
>>>    snprintf(tc->port_name, sizeof(tc->port_name),
>>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>      "%c/TC#%d", port_name(port), tc_port + 1);
>>>      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>
>>> v2: use kasprintf(Imre)
>>>
>>> Fixes: 3eafcddf766b ("drm/i915/tc: Move TC port fields to a new intel_tc_port struct")
>>> Cc: Mika Kahola <mika.kahola@intel.com>
>>> Cc: Imre Deak <imre.deak@intel.com>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Reviewed-by: Imre Deak <imre.deak@intel.com>
>>
>> Nit: port_name could be const.
>>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_tc.c | 9 ++++++---
>>>   1 file changed, 6 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
>>> index 37b0f8529b4f..0fa54450d51b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_tc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>>> @@ -58,7 +58,7 @@ struct intel_tc_port {
>>>   	struct delayed_work link_reset_work;
>>>   	int link_refcount;
>>>   	bool legacy_port:1;
>>> -	char port_name[8];
>>> +	char *port_name;
>>>   	enum tc_port_mode mode;
>>>   	enum tc_port_mode init_mode;
>>>   	enum phy_fia phy_fia;
>>> @@ -1875,8 +1875,10 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
>>>   	else
>>>   		tc->phy_ops = &icl_tc_phy_ops;
>>>   
>>> -	snprintf(tc->port_name, sizeof(tc->port_name),
>>> -		 "%c/TC#%d", port_name(port), tc_port + 1);
>>> +	tc->port_name = kasprintf(GFP_KERNEL, "%c/TC#%d", port_name(port),
>>> +				  tc_port + 1);
>>> +	if (!tc->port_name)
>>> +		return -ENOMEM;
> Missed it, but this needs to free tc;

Oh, thanks for catching it.


Regards,

Nirmoy

>
>>>   
>>>   	mutex_init(&tc->lock);
>>>   	/* TODO: Combine the two works */
>>> @@ -1897,6 +1899,7 @@ void intel_tc_port_cleanup(struct intel_digital_port *dig_port)
>>>   {
>>>   	intel_tc_port_suspend(dig_port);
>>>   
>>> +	kfree(dig_port->tc->port_name);
>>>   	kfree(dig_port->tc);
>>>   	dig_port->tc = NULL;
>>>   }
>>> -- 
>>> 2.41.0
>>>
