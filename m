Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E559286695C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 05:26:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADA7C10EE05;
	Mon, 26 Feb 2024 04:26:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QCglvgWO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00EB610EE05
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 04:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708921589; x=1740457589;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GjjyPQit9+n7v/h1iF4QloTWV0hUPVUd5l0H0+73g3M=;
 b=QCglvgWOxKVKuAH0j8WInpPYQlmHbUxH9A/5YnwWiBu18oBNN7yc+oNq
 e3NWuj9dKmO9DWduhdaxjfOCpJt8wNbkSvyvmwZpKap15eNKVs2fmJxNX
 9dtbqTofPPtEjhiyHcaCaVUoApUCWMq8Mx98ztPlFWTPFPzEx0vnKa9mK
 tInimyAPnCV0zL4KPzNrz9hq3A2WML1MOBaNfL4a+NnB2CcV3aKiAAsK2
 ESDOhrQIJLbnaIq8UzxXHeVdIsg/u9SB8mkT6PGR/lBqK2136f4ESynIZ
 hc5ApLIKvk2dOb0M3sGPxIW+ypd7piK2gA0+QG0DWkPUcVqs/uojYeAFk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="3049955"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="3049955"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2024 20:26:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="44020144"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Feb 2024 20:26:28 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 25 Feb 2024 20:26:27 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 25 Feb 2024 20:26:27 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 25 Feb 2024 20:26:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cWPdqM+bnPvjhzqgKlQWydTcrYo1lFrztDLZXq6S/SUIFOwg3BTbjr0Yxcy2Yp+Jjvce2zPg7Pzoz5aUS35ksptSZdX4NvEOLxpJstuNnhFibQWHW/Tkv4KcC6jFmtYPIgWpO83W4XlGoDQbBSuBE+DxVGY/FykSoo+ZC/yGy3onVGWdo2D2M0nNaSYrh6vNrS04phwoZw1mvEBmwFuhDNrFef5vGxe1hhgcz+kdb1LfE+rXYqBoWw86IzE45lFoFPQV2JXB281d99Ql5WOIef+K9vhfGm4P9VA1i5kvouz0jkmZVE/FOpOhaeUNyqx+/l7dPOSHT4RyzrcOXgD3hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LsrvdTC5GiCuVaLkMTFJ2mH00IS3dcJvZnRpZaRaX8E=;
 b=WigyvQG6lJYM/FW4XoRvq7QGAJrKpgSCMHLCXluDm6Zxcfi2eFlRAHmq9giZgfaKvLt/uiBFF8pXwV+M66Xhc6219TtU7aLCgqGv9IJVlP9xAXIHF92Xh6Bqn6TH3GZHXKeRheqolmdzxe95EiwsutAWF5advnCGT/hPMhvAkPvcDTIMDv4s87w6lKRNahtlQc6PiFeyNy+Y+sdK72+JdhkhUovPTBaad4VRxq7JLa6beFs57kP4+65Fef82LHPUDyADFqgfKUTd69NQOndRoZiNmEN2B1pLxSYhJvsUubhQurCUhzvmhSaNgxbm0rsSclFjIsilTr6rLzDrrEIwjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4757.namprd11.prod.outlook.com (2603:10b6:208:26b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.23; Mon, 26 Feb
 2024 04:26:25 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%7]) with mapi id 15.20.7339.023; Mon, 26 Feb 2024
 04:26:25 +0000
Message-ID: <b8f2bb3d-30fd-42f7-b120-af851f594225@intel.com>
Date: Mon, 26 Feb 2024 09:56:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
 i915_drrs_status
Content-Language: en-US
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20240221111223.2313692-1-bhanuprakash.modem@intel.com>
 <IA1PR11MB63487164DE1F2C03BDBC1C54B2562@IA1PR11MB6348.namprd11.prod.outlook.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <IA1PR11MB63487164DE1F2C03BDBC1C54B2562@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BM1PR01CA0153.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:68::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4757:EE_
X-MS-Office365-Filtering-Correlation-Id: 0885c498-6f09-434e-2511-08dc368317e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cPEvwBjk2fsQRm7eDpdawnoe7J5VNSWvPVYbZKAhfk6WjEWcHY0ZCSMZEEdjK3dMtkvQ/yy7Y5+ai/kEHkrBl4ahAfdQ0b05mRMBQB7M/FVO3oxPX75NYXydd7Wl+OqSCN0go6XhchFR/O8pUS6GkLSxndyNCwhqEVgT8WC6ZIcnaX2LdX4kcaUp0k4TCskxRG/QeKJQI1EgNH3M3Q9eQu7TGi0k8BPvuw0tgpg336WgFStPlMSn47vxkLtXirnw4jCoBafI55Q/OIu5/yprb6yaO19+56yy7u2Ki6zNydanNALcLnd3xt4Xn9TBuJhrvqXRmW3C8TcOvM3Sw+I47ovlIPRPMVdyri3NBG/L9lAzKlM3QynQzQk4XBMKGdi1jVEh+lkooqqh6CkVIS9Cva2eSVYIKvESn9hrt71uTJ+Vw+eGPu0I76KwYSmHrlhYyOc6Nn50UFypjv8BB3G32f7U9ooAcEz/76TukbnKvReePJruReQ9uqpTrpdX2NsEEohR0n4TQsM39AUHGPVnry2vwu8x+c4Ynzzkt9hdBMg9Kdtrs4BgOh6djkS/W2A8Jrl6Jsm6n2eRI6LJkIewCWhAROYWnOuJVU0JckfnmPZthCRIASdnZa/NfgIU2tMFYmxwzGx40Id8XXrX45ofUQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTlNR2JUYmFobmFJaXE1N2ttL01Pemo0b1NId2MvVmRRWlFLNWNHd1ZudEJ3?=
 =?utf-8?B?aG5NQ1hkSmxjbTJ3SkFlOHRXZGRGZkpZQUkzTUJkcFh6QjdaWnA2OEI5bGNR?=
 =?utf-8?B?Q29QZlVDZStYY1FLeHZ3YVlIdThhYXZ0cjNqUnlZRWR4WTk1V0JuZEFDQy9n?=
 =?utf-8?B?QVl6OGFHYTN4SjUyQXhHOUZucm94ck13akM0R1ZQQjJtODd6cnFUVmRaZTMy?=
 =?utf-8?B?Tlo4emV3dnRkc2VoMkJaY3BOcmovOEdlamJFRU1jVjBnT01oQTdBUnpHcHI3?=
 =?utf-8?B?cmg2THlRNmVKa0lYUDU2eE1YbDhibDMwSG1lRjlSSWwvdWliTUFRdWllUHlD?=
 =?utf-8?B?aXBRQVZpdi9jd3Z5elR4YW5Yc2pGVk5Na1d0cVRZWHJPYi9YU2RzS3VNU3Mx?=
 =?utf-8?B?a1FCeS9hQ3c2UGM2Y3hSRzVaRkZ4TnR5Y3hCSTljaHNlajRWZkRYWkYrbWVF?=
 =?utf-8?B?NXpEZFkwZWU1K2I1YldCMFIvbmxHaldrS0d1WHYvQUdKN2hteHpnaUdnUDZY?=
 =?utf-8?B?Y1NYL1hSNUY4K2JqSlRxZk9KeHppR0FsZ3FjUEhlYnYxYmdFVFY1UGFOYkp2?=
 =?utf-8?B?M0lsMXVRV0x0bWJtR21Dc2l6YUxjdkxscXF2OXc5QXZUa0xMbU9KQzNBVHQv?=
 =?utf-8?B?ekhRSGFBTUlFL29jSkhUeEFDTEk2NWd3Rnc5c2M1dmFsWjlGc0RXRzB1b05Z?=
 =?utf-8?B?NVdQU1RFSjVuYmR5QUk2RUF4S2RZOFhFNFF5NkFTUVpaOFk2bUZnWVpGbmhK?=
 =?utf-8?B?Vk9LR3FUeXZVZnNFUXdGbHVCMjl6MmtFM0VYMk9tRUp5elh2d0hFUE5iYXBG?=
 =?utf-8?B?VC9CUnpSNGEvOUhRYmxac2pwV2xhWFdBR3RaQU4wY1pDcjNwZFZYbHN5WWN3?=
 =?utf-8?B?RjZNcjdFZk9NbVhyZWV3M081NVJaYWVhbVFVOWcxV2lOVlVPYWpsVEZ1blJJ?=
 =?utf-8?B?UFR4T0FXdW9zWS9VckJzSm51b2YxUm51YThIYXNJelJhdkl0bnA2cWFZQ0hX?=
 =?utf-8?B?bWp0YTA1eGRBbWxUdXdPL05XbGJ3U0JFVEN1NnBBc3NUeEk5cUNEU3I2dWJ2?=
 =?utf-8?B?eWoyN3FWR2dWcVZ4T05nMTBZU2lWd21ocitJMzhkMFVBZUdmdzBid21XQmVL?=
 =?utf-8?B?ZFlWcUwzWkV2RXZLeXAwd1JHVFg4aXFna1JUaGJwQVhDMHgxdnE4dS9yRnNz?=
 =?utf-8?B?Q3FHQnYxc2dEajNUUWFuQUcxVHRkTFZnUUdpZkM3ODVlN3BwRkRLQ2YvVHdy?=
 =?utf-8?B?cE12SWVFOXZOenEzREhmTEZOYmwrVzZoZ215SHZJZzhFVHJJMHZXMHlmb1Rn?=
 =?utf-8?B?MmxaczNzSGhkd20wVmxQQWI3NEY5NlN6TkJNdWhIWDZ6THNob3p5b0JsL1VH?=
 =?utf-8?B?Qk5yNUhnR2wzZ2QvTVRqeGRwdHVoQlVBVlk0cEx4bTYxd3FLbXN1NnpPd01S?=
 =?utf-8?B?MGxRZWNVNDl6VmVQclg4L05pM0EreE96TElvanZUbGs5ZTUyM3A2VFZLRFVn?=
 =?utf-8?B?UEt1ZmRqa05SWXpHLzhPYVBXcDErR0EwVGwxS3E4MEExL0ZKOVVUSVhoTUxH?=
 =?utf-8?B?cGpNa1JNYTRycGJ0dGJEcm9sWStIUTA1eUphL3dzWjR2RFdkYjQvT0lKWnFS?=
 =?utf-8?B?S0ZCaXVNdEFadEF1bG5IYWFCcElKKzZrcFpRMGN1U2pNUXZHcjB6eWJ6RCsr?=
 =?utf-8?B?NEQvdSs0M0JTaHgrdXJPYnVTS0JIYU02Vmh3Q2VnRXdHb1hOQThMU3g1TDdt?=
 =?utf-8?B?eTV4UWpWOFZTNVl0NUNCZWtjV3BOZnFuNFJtdGROYlVUUmxRMzRETW9iOEwz?=
 =?utf-8?B?MGpVcVNHdi91TUMwZTBndG44QkxoYTBud0pWazhiWUFncDFvLzlQQWVYSktx?=
 =?utf-8?B?eUYwZU9UT3EyOVJIUU45bjYyb0RWV0hrbjVYWEFWWlNUZDkrWXhsSzlyWnlW?=
 =?utf-8?B?bXkyUm51Qi9Rem5ZNVJteTN3ckszV2l4Qi8yblF3SWhGV2NqMC9ENGJjUzV6?=
 =?utf-8?B?cnZubVJaYXBQT2tWY21MRnNNbkxia1pzMFJCOE90c2VCUkhwYS96WGN4TCtY?=
 =?utf-8?B?bm9qZjJXdW9VY3Uzb3JCdEI5WHhFV1ZIYzRWYmhTSFpJa0NnckZPdjRTcENM?=
 =?utf-8?B?OXRXVENTY1ZURUhpeG1QYWw0VUZRc2xnVFMweURQNklLcDJNR0lIUXhUQ0RC?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0885c498-6f09-434e-2511-08dc368317e9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 04:26:25.2960 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vTF+1TYmSMlmJToSLOS7GYxRrg1dZbh5w2Yqd5R+SX8uWiewprDzU6KdNS1wH2m3c95j2AlqYJZvMfGCCFUVi3DBekSguPuG3oeL5SdcM0o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4757
X-OriginatorOrg: intel.com
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


On 2/22/2024 11:27 AM, Golani, Mitulkumar Ajitkumar wrote:
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>> Bhanuprakash Modem
>> Sent: Wednesday, February 21, 2024 4:42 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>
>> Subject: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
>> i915_drrs_status
>>
>> If the connected panel supports both DRRS & PSR, driver gives preference to
>> PSR ("DRRS enabled: no"). Even though the hardware supports DRRS, IGT
>> treats ("DRRS enabled: yes") as not capable.
>>
>> Introduce a new entry "DRRS capable" to debugfs i915_drrs_status, so that
>> IGT will read the DRRS capability as "DRRS capable: yes".
>>
>> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_drrs.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c
>> b/drivers/gpu/drm/i915/display/intel_drrs.c
>> index 6282ec0fc9b4..169ef38ff188 100644
>> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
>> @@ -299,6 +299,7 @@ void intel_drrs_crtc_init(struct intel_crtc *crtc)  static
>> int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)  {
>>   	struct intel_crtc *crtc = m->private;
>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>   	const struct intel_crtc_state *crtc_state;
>>   	int ret;
>>
>> @@ -310,6 +311,11 @@ static int intel_drrs_debugfs_status_show(struct
>> seq_file *m, void *unused)
>>
>>   	mutex_lock(&crtc->drrs.mutex);
>>
>> +	seq_printf(m, "DRRS capable: %s\n",
>> +		   str_yes_no(crtc_state->has_drrs ||
>> +			      HAS_DOUBLE_BUFFERED_M_N(i915) ||
>> +			      intel_cpu_transcoder_has_m2_n2(i915,
>> +crtc_state->cpu_transcoder)));
>> +
> Adding DRRS capable property to debugfs.
>
> Change LGTM
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>


Thanks for the patch and review. Pushed to drm-intel-next.

Regards,

Ankit

>>   	seq_printf(m, "DRRS enabled: %s\n",
>>   		   str_yes_no(crtc_state->has_drrs));
>>
>> --
>> 2.43.0
