Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C13436CB218
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 01:05:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BA7110E7AF;
	Mon, 27 Mar 2023 23:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1914110E7B3;
 Mon, 27 Mar 2023 23:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679958299; x=1711494299;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Yk6Uf4C9+IlxfEvJKp+N8cmJ8n2+DOYGM6ydI5ZrnTM=;
 b=FsgUqC+Og56gCokeOBYpJLeqe4NjXe0EcBTNXmmOU42rlbLvCv3Kfg75
 YhQNPhlO/gZbCz3ilBcExsZVP9rbBo8mLL9KwCL9jL1ygLqmx/+Ik9P6T
 RheEyODIpllPcXiMdIjngwNrFGfa8HLS7y0vDrBvXFOSNo0grbogukBgz
 wHA2AdkOc+bv4URTGtF/Og6j1OTxkUP3b6kLm4rcQCyMpIHWkmbLkP2i+
 B8LkurpFK1GuQTH/EcibmXctDPjXu6i4ustxLFI+Zogc7UWuxmj1vTYFj
 vkUAKH4bTR4BLhiPMxPUUr7p52Nj02N1j810cLGW7MyCfp7mQeMJmPe+O A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="339137147"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="339137147"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 16:04:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="677129328"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="677129328"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 27 Mar 2023 16:04:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 16:04:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 16:04:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 16:04:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 16:04:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X/275ioI4ciIrt0ApfstVGnCE+Ezj5SEp1R0YGoWg0/hdhXAdJNM1X/FBrA986FX4wl71BY3yuXuhrVHgr4Nsvr1Hd36attTQ/nD3DRWT42TyhK67dWNcrkNoHZ6fwt+S0e2FPasxNNsu7muDR3OaBbx8QJmjNyauBz+e6Akr/WSAhWG7yqZw7XKKddOTzCIjjVC1SAcwiAeu7s+6tryh2Pw2bTlSm+WLhzD2jFs7gE6L/zUApHO6Za/Cs2El97xcUVeAVx2El0O3+vmufKTJaILeVR618TiBNfXpmBw/hZughnGvyT3l+PtjPAxX7aeWpFescEO9vsNXol79N52Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wQ9ZLKf4wN2prQ46dxhOa2S896b/AATZ/Nk+Bl3iuKk=;
 b=dOfqeNSXYUlGVVSZZaL7HwLdwh9CzckhC7hekr3TCIhCAChPwjZqFrC6lXG+zbyfGTVT5DRiYgC2VXseQjhWk2SeHJO9Dujb9Hkd0S2LsbHLmaNMBlTWOmoPcSL3N+JXVYVgRGWdwywSIaW8pFCSa7zUc3Xa5zBeVjI+uivHRik/UZZGW6XtVv5aoLGTENtAXIM13KpOkGid0b87ewrb61CLSjc9xet+2TqMD5U/g8ytaOP+DRm9M4r3Dm7ZoFzEf91CaU080No9DDQ3Frk7pq4MqN3L8nPlJ9f+m0BpA/bMQSPsxMAaJOhChL2KYge86+nNBt2UFao4s/FmB6XUHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by CY5PR11MB6236.namprd11.prod.outlook.com (2603:10b6:930:23::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Mon, 27 Mar
 2023 23:04:55 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::9722:bfa9:c7a:1250]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::9722:bfa9:c7a:1250%6]) with mapi id 15.20.6222.028; Mon, 27 Mar 2023
 23:04:52 +0000
Message-ID: <14d722ff-f577-297d-db95-4d6f95d39336@intel.com>
Date: Mon, 27 Mar 2023 16:04:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20230325003442.1767568-1-vinay.belgaumkar@intel.com>
 <ZCAjl7AmtScKwKHf@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <ZCAjl7AmtScKwKHf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR21CA0022.namprd21.prod.outlook.com
 (2603:10b6:a03:114::32) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|CY5PR11MB6236:EE_
X-MS-Office365-Filtering-Correlation-Id: 969ab499-f999-4688-7594-08db2f17ac44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ay30zvrpRpm2TjrWZbXCqyE4YNMB57nX7d4t59yGB5duW2nQhhApWGriXzmzzdPLRo3QY+Dptk2c61Q2UTNTTCmhiSLMy0rRn4fBUC/0BBFwso1qBp1NWXNMbKruNn8v5YbDdwU3uK2byBg4fDuidf3D+RjI557YQAtOmV6Q3BbAmdr8O7cpZvfIbwT0yUGYXc8QK98oTaCqwa6i4btaTpw6fqApD723Vq8o9yam2DKxANC57Fj94YncSygRk3M9BtBdwnFkmXpgQN1QmasbDqrOuJ1wMvOwC7D90bZzNblRPXItUyg2hWr27bxiqAABGXZyHWnUfS6OkHDaQxzzjgWOC5Ai6pSpTOIv1NCrO4+Ne0hJOMO6bynoe7/MSB/0luKkVleVTQaZpEQVAyGIxozdnHtafCvpMgPBFWYojY0R0PImhR8Ufuli/U1JasJbxjMsaGV8OfJ50kYyX2HISbGMPvfRZDRdL71hmQCRH5GG26VCRA/bAn1meVIPacsJuA+EX4MlHCOhTiQnpV64coOqHIvrJYancQDL9lNLy99ugqd3HyMpoHfAvcz+1Wda0Fmi0KwHE4Foq5ToXt/StCP8j8lSC3+t8XOG1Wb6R/FJ91TCrJ+gWFA4PemD2iYToJbW8jlnfJReGoXyYxv2hQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(39860400002)(366004)(136003)(346002)(451199021)(37006003)(6636002)(316002)(478600001)(36756003)(8936002)(6862004)(82960400001)(31696002)(5660300002)(86362001)(2906002)(4326008)(38100700002)(66476007)(450100002)(8676002)(66556008)(66946007)(41300700001)(186003)(6506007)(26005)(53546011)(6512007)(2616005)(83380400001)(31686004)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFIrdHl4WGtmTlhHalFkRGt0YjBFMHhHc2pmdUg2MjlEUlBIRGhwU3Yxbkpa?=
 =?utf-8?B?bTRQN3JxZzBUVGtqTVJESm9yVHNzL1J2TDdxZkRBWnExWXNna1hUUzJiMjZy?=
 =?utf-8?B?ZUJsQXFzb0tkbnZZcHYzbEZaSEdha3k2SmdLK2lNTW02WnNPSkpBWXNVQzc5?=
 =?utf-8?B?ZkhrSVNqNGx0Nk1lNXZINklYREVWYUV5cmpkT2VOcVBNKzZUaDdteWZPUjNV?=
 =?utf-8?B?QnAvVnZtdkFpbkhlbTVZSEVKNFJSajdsbFB5Mm1wUzlwQm51bUJkck5TdmxP?=
 =?utf-8?B?bkYvZTVUUHJjY2EzSDVydmxTeUhHRFp0Q1hIeTZXdm5oSEJ5ZTRtK3NOb3Fs?=
 =?utf-8?B?STllUjVSRTkyL2o0enBnS1k5OGpGNjFmMG9Ka2NzYmFjQmdCYzlKblRwNlps?=
 =?utf-8?B?UTNZYkZJNkpablo0WFQzcVNtR051bXVmc0ViYmhRN0xXQ0FEUG02MUpjaG9C?=
 =?utf-8?B?aW56YUNVT3ZDSnVnN0ZmWXp4VUJQTEh1Y3FpQnU0NWVEWUd6RGRPamRJYTBD?=
 =?utf-8?B?RW9QOVpxSzVaczVUUU1PMXlkOElFYldEV0VXU3ZqVnZDWTd5bnNXTGJmeEVJ?=
 =?utf-8?B?NDhVUEZ6b0lnSWh3T3ZhWU1oa2FlZFFrL3NwbnRraWdrSER2dml4V08xZm4x?=
 =?utf-8?B?NWFYQlREalg0ZUtrSGwwQ0IvcFVzdGgzcWNxYStnSFZTZFpSMElvTFF0UENj?=
 =?utf-8?B?MklVcEdkMk9MOTVqRHIxQS8veEJMMHpLTGVRRDNrb2ZrZWp2akp6cUo3TFhD?=
 =?utf-8?B?WDFIQ3RaQWRBRlg4NldlODNmN3J3SnMycXpZWVJ2RVhaTFpHOTBia2xEUG1K?=
 =?utf-8?B?WTlxbEpndXZidTdibXNrSHREb3JpMWZOdmNKakFwMFh2Nzk3Y1M4eUhPUU92?=
 =?utf-8?B?akl3VUg3dFkwL0h1emo5TEZUUGZORUQ1SEo4MG5GZGw0VUYwUzkvOTZySjVY?=
 =?utf-8?B?MS9Ra201KzFxbXFDRm1NNWVoV2xBZHVsdWlDWWVIYU15TjZkVnhOZXR6R1Mz?=
 =?utf-8?B?MkQ2UGlhMXduWEg5R1U3eENPQklycmx4T2U0Q3NjVkdPaGRoV0V3RVJrK2Ru?=
 =?utf-8?B?bzZCUFBDY2UvSXBvMThBQUcyeGw0WmFEUytFY21zc1NvYWlQdjNTc1FzYjEw?=
 =?utf-8?B?R2xteFhmY2NOdEFKTmRZaFVGRVRldmt5YmJDR21KKzFaWE9pc0RGQ1dmZjJm?=
 =?utf-8?B?R2ZWeG9GbzlsWWpjdUQ2bkdhOUxrZCtNUDU5K0g4M3FWSjB1MWhsei8wdjlX?=
 =?utf-8?B?Nzc1YmJsazZDdWpxejQ5Sk51ai9BbnlBWkJ5bFM0SFBxN2xsQWlJcVBJQlhX?=
 =?utf-8?B?aUpUek5ZNW0zN0YxSzhzc0RqQzJLTWhDOWxXRWZuSVJVMkxycU44TTdUVWhD?=
 =?utf-8?B?MlEzc3NOcG02bWpyaHEybS9LRVNHSVhUaHZBT0hSSXJic01ZN2dVYVlTZG56?=
 =?utf-8?B?R0pkQ2ZRenpVanJ4ZHUxRC9UVUJhcGordmRnTGNKUVNsVFJBQzFkcHFYRE4x?=
 =?utf-8?B?WkRxd0pJN3NZaHRGcVZ6T3puMGpNejgvSkUvdEZESGQ0SU1lODBlTitpWGlY?=
 =?utf-8?B?Sk8wbFRKQk9rckxHdFlMaU9vZTJ0b1I4clkzeSsyMUlza0t2UzUvVWxqYkNH?=
 =?utf-8?B?eUliTmFYYy9BOHh6MHg4OGVuRktOVmpnV1lURkZkV29tK0Qrbkc4bGxTVEZo?=
 =?utf-8?B?NXR2KzNCTnd3R08xRHpUcTg3bHhkUHV1Zkg2aDFvN2tSb0Q2UnBDUTh2TTZ5?=
 =?utf-8?B?a2FtWElPR0RUNVVtL1BsYmVnK0lWZFlFNGk0TVd0RVVTT2g4ZzBzRFhlME8v?=
 =?utf-8?B?bEFXd3pMbnhFaEh1dFVLaHZQUWxMdVVoMzZRNklMOFVjckNnQjREcTRtbzdY?=
 =?utf-8?B?b1BscC9IZEg1RzBZWEtWWGtLdEczU0ZvUjVRM3N6Q3dSODJESDBaVUFLU0s2?=
 =?utf-8?B?bm5sTlJBZE04UVVWT0p6V1VSSjFUdTNHbU95alN5MysyQlVuR1V3SGU2dVBB?=
 =?utf-8?B?TDMzQ1l1Tkc0ZERRWEZ0RzQvb1R2YXBkWEYvTllBVkF3anY3SVZDQ1RteXZP?=
 =?utf-8?B?R0c3bXpxWkYzYktVMTQvdTdKVk9aRkxkalRCSUJHeEd5ZTgrN245VUlaK2dp?=
 =?utf-8?B?Uit6YUtJd3RaWVNRWGNrNFVyb2p1MGdmWTI1ZCtCcXJGTEdvQUNyL0oyWHRt?=
 =?utf-8?B?NVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 969ab499-f999-4688-7594-08db2f17ac44
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2023 23:04:52.5378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EO3Xi+q715UEpixvicZdN1mXswbI9CjrRihp2wCaYx1940JGt5TTOhkb+RvAc16wjCzFh9Bz5Cjt0Mz9ZmWx646WUZev/CihUKj4E8syjqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6236
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/xe_guc_pc: Restore
 max freq first
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/26/2023 3:51 AM, Rodrigo Vivi wrote:
> On Fri, Mar 24, 2023 at 05:34:42PM -0700, Vinay Belgaumkar wrote:
>> When min/max are both at RPn, restoring min back to 300
>> will not work. Max needs to be increased first.
> why max needs to come first in this case? we should probably at
> least document so we don't forget it again...
I was assuming we use soft limits like in i915, but looks like we don't. 
So, this is not an issue.
>
>> Also, add
>> igt_assert() here, which would have caught the issue.
> I was going to ask if we should really add asserts inside the fixture
> or maybe using igt_require instead, but then I noticed more cases
> doing the assert...

Do we still need to add the assert in this case?

Thanks,

Vinay.

>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/xe/xe_guc_pc.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/tests/xe/xe_guc_pc.c b/tests/xe/xe_guc_pc.c
>> index 60c93288..43bf6f48 100644
>> --- a/tests/xe/xe_guc_pc.c
>> +++ b/tests/xe/xe_guc_pc.c
>> @@ -489,8 +489,8 @@ igt_main
>>   
>>   	igt_fixture {
>>   		xe_for_each_gt(fd, gt) {
>> -			set_freq(sysfs, gt, "min", stash_min);
>> -			set_freq(sysfs, gt, "max", stash_max);
>> +			igt_assert(set_freq(sysfs, gt, "max", stash_max) > 0);
>> +			igt_assert(set_freq(sysfs, gt, "min", stash_min) > 0);
>>   		}
>>   		close(sysfs);
>>   		xe_device_put(fd);
>> -- 
>> 2.38.1
>>
