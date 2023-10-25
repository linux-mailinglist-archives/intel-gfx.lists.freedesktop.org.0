Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 104AF7D714F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 17:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D97C10E5D0;
	Wed, 25 Oct 2023 15:57:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18FF410E5D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 15:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698249421; x=1729785421;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=EJiLRLS0sd9WjBeCe2gDbDoH8dV0Lw2vJjmzSEjG3Dk=;
 b=SCzAPuwDQzq7OzDu6f14JvlyqfjcCcqdZJbPeTfSkOxu5zY31wV4Etnt
 ipG0H7kF6HhURNhm02alMI4O1eybadyuY85gGDIERWkIU7F3PbVMSq2gq
 YGBSwHCNgY3LNbggOnDxjD2MxSoGNPbb6wC8ivD6iccOeAykekKyXfxLh
 xZx8rDqImArc1zTtAKz/+/pwrQb3Z+xLyMJoxYbLK538H52KGsHjHsVHt
 9ZUzuKC02F+XfQVqMLMxJk0OJ0HYqRl+rM55MB0RAPG/PgpsXIndpkUtN
 bbQeewU+v+VTxEr/NMy12/6gjMIQyNjHdsFhNzJRMnbr/1M37ynjQeY3K w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="367546760"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="367546760"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 08:57:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="6578518"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.32.60])
 ([10.252.32.60])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 08:55:39 -0700
Message-ID: <a9cd7229-5ae1-da0e-228b-88cb88fee22b@linux.intel.com>
Date: Wed, 25 Oct 2023 17:56:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: imre.deak@intel.com, Nirmoy Das <nirmoy.das@intel.com>
References: <20231025135726.19662-1-nirmoy.das@intel.com>
 <ZTk35V4g5IA7+8ih@ideak-desk.fi.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <ZTk35V4g5IA7+8ih@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tc: Fix -Wformat-truncation in
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/25/2023 5:45 PM, Imre Deak wrote:
> On Wed, Oct 25, 2023 at 03:57:26PM +0200, Nirmoy Das wrote:
>> Fix below compiler warning:
>>
>> intel_tc.c:1879:11: error: ‘%d’ directive output may be truncated
>> writing between 1 and 11 bytes into a region of size 3
>> [-Werror=format-truncation=]
>> "%c/TC#%d", port_name(port), tc_port + 1);
>>             ^~
>> intel_tc.c:1878:2: note: ‘snprintf’ output between 7 and 17 bytes
>> into a destination of size 8
>>    snprintf(tc->port_name, sizeof(tc->port_name),
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>      "%c/TC#%d", port_name(port), tc_port + 1);
>>      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>
>> Fixes: fe03f637b7bd ("drm/i915/tc: Fix -Wformat-truncation in intel_tc_port_init")
>> intel_tc_port struct")
>> Cc: Mika Kahola <mika.kahola@intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_tc.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
>> index 37b0f8529b4f..0afcee279aff 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>> @@ -58,7 +58,7 @@ struct intel_tc_port {
>>   	struct delayed_work link_reset_work;
>>   	int link_refcount;
>>   	bool legacy_port:1;
>> -	char port_name[8];
>> +	char port_name[17];
> I'd use instead kasprintf() to suppress the warn.
>
> Imo (at one point) the 'Port %s:', tc->port_name prefix could be
> replaced by the usual [ENCODER:%d:%s].

That is even better, thanks I will resend.


Regards,

Nirmoy

>
>>   	enum tc_port_mode mode;
>>   	enum tc_port_mode init_mode;
>>   	enum phy_fia phy_fia;
>> -- 
>> 2.41.0
>>
