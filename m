Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A91D06E7285
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 07:04:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05DCC10E07E;
	Wed, 19 Apr 2023 05:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A62E10E07E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 05:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681880687; x=1713416687;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WXr0kxTt/1Ob6y8cfWcEQmAcPoAFXRm+qiW4UPqeN6c=;
 b=I1F5YGxm4tYUS1dsFah81LsxyiQJr4RgANYYeN/2txtiHE5dAj66Sz+5
 QhisGqZScM98r2tHnG8ElxX8PJm0sdrPo6yy1YNY/fF/6/Y/3upad6zl4
 F4iJaCwXf2wAeiXd2uDMNseU0wRTpMtFXtsDk4HwWg3Ii1wtzAsHMeVmm
 VrKPVdW224j9C2al6nQOQvgAxbkYnYGDVNQdC7QAM7qhxe/PBYwAy067K
 7/fnRETIwmJrl44btx77aAkAe9q3B1GOpFulBVoKOUcka218Ie4ch91W4
 zIbQVTUBT2ziUNZ8YporjbGo4bt8WcX+EtNZrE2YLf3cgnNKfzcHMlhtO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="342840118"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="342840118"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 22:04:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="723925141"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="723925141"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 18 Apr 2023 22:04:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 22:04:46 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 22:04:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 22:04:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 22:04:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oadXmXmcWEbfELz7K2+XsVS9oaa1987zR30gqjODiRNRUXxqJCog5GSfwr84hHdXvhI/l0YjTzIf0Ej5ZUws0P37e5cvajaxYNTNrkWzX24SeqPgUNo1Y7chabGMUrEjYna+cKdDEs4MsQKUKPiVO153Vwu9IH4mKuRz/vOOsuUX0j/PpJ1Y6FSnJb+tsot/Kqjm8R65EcGPxU56vhIWr3qPzT5BbRO0qMNGwTCJFirYFFT10u+kwQ1pYE8cUJFJXyIkRuE2J2N04BS++qXWKHS8eAHIf1rTKUt2PDV+pxnwFXbxVAcqTfs39l5W0uQ4HPsmOaxpGUTf9skHuAr/tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M6Zn6QXGxHAa2uin7x35Zl2/HaZWzyt4yGNXpAo3Jgo=;
 b=T8wXl9CodIwEmIa5JEQcjEq1XcwBgiLSf+8uuzYePLzErFa+8m4GIF2coPI/BWDUN5Jo3gY1n3rYDzfB78LPBNfyIaMQd/DW/wri7fIyAai5DokOpjhkWzo95snJIUdDPk7W8ClodLVFIhRpdN5KiISMp1QH4f8iFQZjRAddQNX1XPwk+kha+nZw52PHPRwOShWihUMHzTbR3pa+uXXwJCbCXSVR+2E0ozXjdQ4yYzIiVa10ZlEdFxUBwnsQCOfUVT6cAdOm8S+RaqGD1ixyvdm1Nv80Y5+yrIyU4dbVr/3mlnzVXYokno2Y/ZbwGhrw8VXtDuvhg6hvYrhbS4pf9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB6725.namprd11.prod.outlook.com (2603:10b6:806:267::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 05:04:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6298.045; Wed, 19 Apr 2023
 05:04:42 +0000
Message-ID: <a1e188c8-f621-0667-dd28-b601a4ed7218@intel.com>
Date: Wed, 19 Apr 2023 10:34:33 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Manasi Navare <navaremanasi@chromium.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230411173408.1945921-1-navaremanasi@chromium.org>
 <ZDWcDhmJyMhQpQBa@intel.com>
 <CAE72mNkzD4fpXeTVyFaP+xQqDbSFm+yiQ8sBvGoD+beequfeaQ@mail.gmail.com>
 <ZDZAHj4PPaDD9HHj@intel.com>
 <CAE72mNmd2wAdLFQFLgKeDazyn+Qogd1h4N75hfJrtBsOndB2Vg@mail.gmail.com>
 <CAE72mNmy9Lm2vZz9S1q18-yAGWXsBkjhFkYDzoHZFQY6LqvOyw@mail.gmail.com>
 <ZD6RKS972byO+Fpa@intel.com> <fc47b7d8-0a93-716d-337b-405c601f2a6d@intel.com>
 <ZD6vHkhvyqzHra2X@intel.com>
 <CAE72mNmHzOthzY_EURJW6BQYXAFmqmKyYes=ccTefuo1Y0VJ7Q@mail.gmail.com>
 <347b307a-9f35-81a9-aba7-b2e425d9b28a@intel.com>
In-Reply-To: <347b307a-9f35-81a9-aba7-b2e425d9b28a@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB6725:EE_
X-MS-Office365-Filtering-Correlation-Id: 55054d8b-3d88-41e9-1c0a-08db409395a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BGiD/7yq2um7szyXilAjdw8P91cxDHGl9pXw2ti7QB2n7nVG0THjRHftJXCWNhjU0X/NXS1EYqwX+Qx8zCCDzE2S3YYW4FsLZg7rgmlicq3AfV2D84y03L4j2BGAW1j3Xcx2BDOyShALXS5nl2lt3nFXCWHoxX4BEdrKfRNVNZnhgZDLQHGUXbQ+mm6+Lo68k4sg7qTpRD+PNOi0dKSUntWzU32J9/Td9nMa+P6n0bwtk2YSo1ThNLNZHxQI6HYWOEB4KL0Pydxh5xqZRxpiFPbTDAsPlQL4Gj3uauPnMlMBW5kAFBe9qvsRGBv6rc1g4bGxipJlAkoxn6qk7DJPhxMlOMbS/UhCrK0vMlXRX/QT82zr10NvN1vSqIFI7OD3OAmUB4xwGHKQcrP2s8zvAj79CBi6HUZ+zc45JjaMcVf2dLpnczv27VpZrqLUMXfr+ns3jGwyK2hEOT7WVcAGQAlp/8bYXqD+KXlvDfPfad+ZpMat4wEGGIr9L3OYU8gBO0hfqCrRn/JCvLKhEs9op6JqDHnOMj73/K1LQj/1IpvsBk8/3JYlQJ2K1lrjw+XZAuKk1o5xTgBVZlzlxXOJlkVv0etoPnueZfEQpTJSavk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(396003)(136003)(346002)(366004)(451199021)(66476007)(478600001)(6666004)(38100700002)(8936002)(8676002)(316002)(82960400001)(41300700001)(4326008)(66946007)(66556008)(110136005)(186003)(2906002)(53546011)(6512007)(36756003)(26005)(83380400001)(6506007)(86362001)(66574015)(55236004)(31696002)(2616005)(31686004)(5660300002)(966005)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?blVYMWZnMHV4eUdXWk1jSUZ2eWNCVkMzb2FrKzh2dnp6UlIySUMvb1lrK0tv?=
 =?utf-8?B?NUZBZzFMeHhhYy81UWlsZG9tMnovenFseDBFYU9QVHNOUWFqMW95YmwvVHFS?=
 =?utf-8?B?eUZhZ09ndGJpVmc4NUpSUlVPRFMrdUd6NGRVVTN1WTdZNlROTlRjdXNNWUth?=
 =?utf-8?B?RkdlRFFRbzhQd3FMN2dqWnk2UGNlWnN1NDNHaHhqM3gxWUtNUWlWN3BTV3dn?=
 =?utf-8?B?MjI4Q1ZwaEdzRkNlYWJpZkNyRXFZVDdMdElwRFllUE50Y016Nm5UbkpxbnBh?=
 =?utf-8?B?SXJKb0dkVDdBMUQwUTdpeG5wNEpQY2t6R1phN3JnY3NpVDNDRSt1SzN6ZjNq?=
 =?utf-8?B?VWdObWc2T3pUUytzT1l3Sm8vNUIrWGxnTDVTcUlwREdUbGxHcldBeFJvSFVp?=
 =?utf-8?B?NysxRVppbGdpUll0ODU4ek9tVldaVnRDYllmUzVlVUgwcytFbDErenB6eWhp?=
 =?utf-8?B?WlpOeVBKaEpFYW52WW9iVDVhVERzdUdJWmxwMkNaWkI1Z3BKVlZUSnk1cXR6?=
 =?utf-8?B?Q0p3VjI4ckJYL21tVE9TV2tHM1JsUGRiZmNKNFBLQXFPbTljK3RNbkdwU1pQ?=
 =?utf-8?B?b0R0SkY0eGtXU1ZEU01PNFh5dW9EL25Za2xHZHRZckdCVUZkeUVKVEhEdGQ5?=
 =?utf-8?B?OTNFeUxCeDA5RGhJY1JWZkpwR05NL0QrZ1ltaE44RktpWlVPMlRIcm5XUCt3?=
 =?utf-8?B?WUVxSGVtTzBCL2piSlFFdHp1R3NPYkZEbEZyR08xamtQUHZVTDhmYTYvTDg2?=
 =?utf-8?B?TytwNTV3NUJDMjV5WGM4NnFSZTN5V2czb3ViTllvTUYyZS81aExzclFqcEgz?=
 =?utf-8?B?d3FCckoxbW85STRMUXQxM0NGTnJrYVdha1hENWo5cHUyUk0zM29DR0JXTnBt?=
 =?utf-8?B?MVBFN3U5Zi9CemZuM0RqaEtnZHVDZFdEN1VFZ2RZclVKZWpLdTFtTGZPbksv?=
 =?utf-8?B?NmRTbUtySnRaek5sVDVuanFaR1NDRkRITTgyb2daZTBUOTh5d3RWUjF1VWxH?=
 =?utf-8?B?OWcvVEJTZFFmRjNoVXpqTXJUMzBsRG5jUnNQUzRKS00yTTQ2TEIyQ2pYUS9T?=
 =?utf-8?B?UnZsZ1ROOGFqbllTbkZvRFVaMVl3UEt5YTBNMDZ3dW5pU2t2VGVOeEdublBp?=
 =?utf-8?B?amVlaFFiOHhvaVVRcGZWaUowUE0vb1ZmTm1jNGFCSXpxcEtmbUt0RVRBTGlx?=
 =?utf-8?B?cVdraHplb0FPd0svcmxrWks0cHRtODVlOEs1VlBNK2l2aVh2azQrcmtlRjlB?=
 =?utf-8?B?OEVldEEzOU1QLzhGR3VBTWU1WjYzUVZZVzl3bnlGQXgzdWdvUktCZkltVmpt?=
 =?utf-8?B?elplMGRCaG1XL0pvR0dqbndzUWR2Y1Jwbml1SVdXU1JMdTdoazI0cENKaVUx?=
 =?utf-8?B?WjVNN1hoU1YxVmlVZ2lvQUxTdWg4enJzL0lsZ0pKUCtRSWdHZEQ4L3F5S25M?=
 =?utf-8?B?QWZabDZ5Y3BNckpkRys1QXpOcW8yTEhGRThVWTFCZ3VkQ1A3bjhHMk96d043?=
 =?utf-8?B?U21rejY0UERUZFExcThkQWhuK2NOYVhlTmhoVnlJaWM3VkVrdytOSmVRdTNj?=
 =?utf-8?B?QnF5M2FHOFd6Rzc5OExVVTUxV3hPZS8vYmIxMFgrTWFTOVozZ2xJaERMV2wx?=
 =?utf-8?B?UHZrdDdqYndadTRIc01KU25RWWh2N1JubURCSDQ1bmg1bnV1K1JIUENqNHdE?=
 =?utf-8?B?YXB1SVZvRDhLMG1ZeCtOS3JxbjRQUkFuMVNrMytSVHhNTWhDK09ENnVuelIx?=
 =?utf-8?B?bnpQQ0RvZGc5bjU3OXJjYk9ieEhiREZXTVpkZ1cvRExPeGRDT2c0QUJQd3pK?=
 =?utf-8?B?bE9iUkg2dU16b3JndjJHTGswRGtKd1AzS000NmljYndCSnlCYzh0SU8yNWlW?=
 =?utf-8?B?V0F4Z0JKNW1hTHNBSkZlRnRFaytJOGRwN0ZES2hCc05kemgyaDZVbXhhSHFh?=
 =?utf-8?B?aHZSYk1GcjZHN2YzMjlsOUZ1bGR2SzUxNy9kanBEQTNSQVdoc1hDVXM3aEYw?=
 =?utf-8?B?aGcydmtPU1NPdUVzbjArNWFVUml2V1I1Rm1HUmVNbVZGb1BzUXlRbFZhNnV2?=
 =?utf-8?B?NXB3SlNTRGdkTDBja05FelQ0bUx5SEFxK2FxVGlMcXU1WVBWMzdCem40RnMr?=
 =?utf-8?B?UUpvNjNEeFhJSjJEMVZLZmRLZDRCRWl5RHM3L2huZnlVa0VCdFc4ZWN5U3Jk?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55054d8b-3d88-41e9-1c0a-08db409395a9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 05:04:41.9965 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 48/WX77faKtPvg/XASlArdNDhf6v/hZQJHyx1t8XhL+o5Q1/Bxy4tjPU3bR0xmsFIiFA7AYXBJKFP5108p6dBCtBrZARkwa/a0ofjnUDkko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6725
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Return correct err code
 for bpc < 0
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


On 4/19/2023 10:29 AM, Nautiyal, Ankit K wrote:
>
> On 4/19/2023 4:12 AM, Manasi Navare wrote:
>> Hi Ville and Ankit,
>>
>> I actually do not think this is a problem with the DSC logic, but it
>> is a problem with the intel_dp_link_compute_config() where we should
>> do something if max_bpp is 0 instead of just returning a -EINVAL
>> directly.
>> My question here:
>> - In case of PCON, yuv format, is it a valid case to have max bpp set 
>> to 0?
>> - This is where I am seeing it as set to 0
>> - If it isnt then the problem is probably where it computes max bpp
>> for hdmi case for yuv format
>
> I got your point. if limits.max_bpp is set to 0 (as given by 
> intel_dp_max_bpp)
>
> and we cannot discard it as mentioned by Ville, then even with DSC we 
> cant do anything.
>
> In such a case perhaps it makes sense to check if limit.max_bpp is 0 
> and return -EINVAL from intel_dp_compute_link_config.


Though just this change is not sufficient for that. I mean we will need 
to handle in intel_dp_compute_link_config.


>
> Regards,
>
> Ankit
>
>>
>> Manasi
>>
>> On Tue, Apr 18, 2023 at 7:54 AM Ville Syrjälä
>> <ville.syrjala@linux.intel.com> wrote:
>>> On Tue, Apr 18, 2023 at 08:09:16PM +0530, Nautiyal, Ankit K wrote:
>>>> On 4/18/2023 6:16 PM, Ville Syrjälä wrote:
>>>>> On Mon, Apr 17, 2023 at 03:48:12PM -0700, Manasi Navare wrote:
>>>>>> Hi Ville,
>>>>>>
>>>>>> Could you suggest how to handle the intel_dp_link_compute_config()
>>>>>> when the max_bpp is returned as 0, currently
>>>>>> it just exits the loop and returns a -EINVAL and this triggers 
>>>>>> the DSC path.
>>>>>> While we should be completely failing the modeset and encoder_config
>>>>>> in this case instead of trying DSC, correct?
>>>>> The DSC path needs to handle the bpp limits correctly:
>>>>> 1. Take the baseline limits already computed
>>>>> 2. Further restrict them based on sink/source DSC capabilities/etc.
>>>>> 3. Make sure the uncompressed bpp value chosen is between the min/max
>>>> I have some older patch to try similar thing [1]. We try to iterate 
>>>> over
>>>> bpc to find pipe_bpp in the limits, then try to find out 
>>>> compressed_bpp.
>>>>
>>>> But if intel_dp_max_bpp returns 0, limits.max_bpp is set to 0, so we
>>>> discard this for dsc case and re-calculate the limits.max_bpp?
>>> You shouldn't discard anything. DSC should take the already computed
>>> limits and potentially just shrink them further based on DSC specific
>>> constraints.
>>>
>>> Or is there some weird case where DSC would allow lower/higher bpp
>>> than what our uncompressed bpp limits declare?
>>>
>>>>
>>>> [1] 
>>>> https://patchwork.freedesktop.org/patch/519346/?series=111391&rev=3
>>>>
>>>>>> Manasi
>>>>>>
>>>>>> On Thu, Apr 13, 2023 at 8:23 AM Manasi Navare 
>>>>>> <navaremanasi@chromium.org> wrote:
>>>>>>> On Tue, Apr 11, 2023 at 10:22 PM Ville Syrjälä
>>>>>>> <ville.syrjala@linux.intel.com> wrote:
>>>>>>>> On Tue, Apr 11, 2023 at 05:07:01PM -0700, Manasi Navare wrote:
>>>>>>>>> On Tue, Apr 11, 2023 at 10:42 AM Ville Syrjälä
>>>>>>>>> <ville.syrjala@linux.intel.com> wrote:
>>>>>>>>>> On Tue, Apr 11, 2023 at 05:34:08PM +0000, Manasi Navare wrote:
>>>>>>>>>>> In the function intel_dp_max_bpp(), currently if bpc < 0 in 
>>>>>>>>>>> case of error,
>>>>>>>>>>> we return 0 instead of returning an err code of -EINVAL.
>>>>>>>>>>> This throws off the logic in the calling function.
>>>>>>>>>> What logic? The caller doesn't expect to get an error.
>>>>>>>>> If this returns a 0, we end up using limits.max_bpp = 0 and in
>>>>>>>>> intel_dp_compute_link_config_wide(),
>>>>>>>>> since max_bpp is 0, it exits this for loop:
>>>>>>>>>
>>>>>>>>> for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 
>>>>>>>>> 3) and returns
>>>>>>>>> -EINVAL which then wrongly goes to enable DSC even when link 
>>>>>>>>> BW is
>>>>>>>>> sufficient without DSC.
>>>>>>>> And how woud max_bpp<0 prevent that?
>>>>>>>>
>>>>>>>> The real problem seems to be that the DSC code totally
>>>>>>>> ignores bpp limits.
>>>>>>> Hi Ville,
>>>>>>>
>>>>>>> So I see a few concerns/questions:
>>>>>>> - Why is the Max bpp value 0 in intel_dp_max_bpp, is that a 
>>>>>>> valid case
>>>>>>> and how should our link configurations handle that case when 
>>>>>>> max_bpp
>>>>>>> is 0?
>>>>>>> - This is happening in a bug I am looking at with HDMI PCON, @Ankit
>>>>>>> Nautiyal  have we ever seen something similar where max_bpp for 
>>>>>>> HDMi
>>>>>>> PCON
>>>>>>> is returned 0?
>>>>>>> - I dont think its a problem with DSC code, but rather
>>>>>>> intel_dp_compute_link_config() outer for loop where we vary
>>>>>>> from max_bpp to min_bpp and see if any bpp works with available 
>>>>>>> link
>>>>>>> bw, how should we handle this when max_bpp = 0 if you are saying 
>>>>>>> thats
>>>>>>> a valid case?
>>>>>>> - In this patch if I return -EINVAL instead of 0, then atleast the
>>>>>>> entire encoder_config will fail and that will fail the modeset, 
>>>>>>> since
>>>>>>> it assumes max_bpp cannot be 0
>>>>>>>
>>>>>>> Could you please help answer above concerns and how to handle 
>>>>>>> max bpp
>>>>>>> = 0 case if that is valid? This patch is simply making that invalid
>>>>>>> resulting into modeset failure
>>>>>>>
>>>>>>> Manasi
>>>>>>>> -- 
>>>>>>>> Ville Syrjälä
>>>>>>>> Intel
>>> -- 
>>> Ville Syrjälä
>>> Intel
