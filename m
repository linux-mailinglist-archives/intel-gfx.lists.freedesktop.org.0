Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3591C4A6F30
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 11:54:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5512A10E7A4;
	Wed,  2 Feb 2022 10:54:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9625B10E7A4;
 Wed,  2 Feb 2022 10:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643799284; x=1675335284;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/XellQde3siNvoqu9gzqwvCeK+J6OZPHez1LZOciMr0=;
 b=HXYLNEuWdhoOaYo0eXkPsQDZrcpphfWnl6RIV4epSPvasZOAJ4cFecXM
 q029qs4hn/51AdVNekTidgYbB9bv+nZzZzhMOMBb3Amj6AwzjOBAp4aJF
 o3PzZn/+VvPBSggrJlS5kgbHCOwI//fsK5djN1TMtHT01XUxM0ixPU2Lr
 oTBM7ic/c/gplhCp5SRhq7v4z1I+K2T85B4KrGMGyBKDAaOCsKPYIHbEO
 PNuRkfp6j/Frhpl0S/uVx/yZ6mcS5Xc762ww09MhToMhXOdwLkiml2zgF
 l7Pm0XroitjyvYRCn5AQ+sGNdwXBALTZwOPHHWHYlTWCXx4TzNU4yFGv9 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="247660944"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="247660944"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 02:54:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="565947974"
Received: from dolandox-mobl1.ger.corp.intel.com (HELO [10.213.211.99])
 ([10.213.211.99])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 02:54:43 -0800
Message-ID: <b0998c4c-f76c-d6c4-6d6d-19de452f8e42@linux.intel.com>
Date: Wed, 2 Feb 2022 10:54:41 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20220201151946.258360-1-tvrtko.ursulin@linux.intel.com>
 <87h79i4lg6.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87h79i4lg6.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Improve error message
 when insufficient privilege
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/02/2022 16:10, Dixit, Ashutosh wrote:
> On Tue, 01 Feb 2022 07:19:46 -0800, Tvrtko Ursulin wrote:
>>
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Print out end user friendly help text when the running user has
>> insufficient privilege for accessing system wide performance counters.
> 
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Pushed, thank you!

Regards,

Tvrtko

>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Issue: https://gitlab.freedesktop.org/drm/intel/-/issues/5018
>> ---
>>   tools/intel_gpu_top.c | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index 81c724d1fe1c..0404a5881b40 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -1761,6 +1761,15 @@ int main(int argc, char **argv)
>> 	if (ret) {
>> 		fprintf(stderr,
>> 			"Failed to initialize PMU! (%s)\n", strerror(errno));
>> +		if (errno == EACCES && geteuid())
>> +			fprintf(stderr,
>> +"\n"
>> +"When running as a normal user CAP_PERFMON is required to access performance\n"
>> +"monitoring. See \"man 7 capabilities\", \"man 8 setcap\", or contact your\n"
>> +"distribution vendor for assistance.\n"
>> +"\n"
>> +"More information can be found at 'Perf events and tool security' document:\n"
>> +"https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html\n");
>> 		ret = EXIT_FAILURE;
>> 		goto err;
>> 	}
>> --
>> 2.32.0
>>
