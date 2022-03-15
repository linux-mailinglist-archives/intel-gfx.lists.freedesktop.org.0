Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B274D9877
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 11:12:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A6FA10E40E;
	Tue, 15 Mar 2022 10:12:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE6D10E40B
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 10:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647339150; x=1678875150;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y84aaOcZS1yemyLQW1EDZoreg/9QHyZZ4IRtBi3JEFg=;
 b=Zv+lP+0Brt4QVYdc3yuCf3rqNzmK+YegCWkd9J7si5tX3ljXHuveQhbo
 e+MqZ19zrTiLeG6NyXoWzr8k7XlOr8idKy4k/oNJqus4ZTglKtOVCoyou
 QdxJk7EkJsVNIpxol407ND4+QqNdHQKrOV6yuHBeyN8VyiMFVCPlf/Ufs
 VvFDPg/1wiG5XkAkXf+HuSZKd6sqkkFSzdMBztLR/nbxfjaXlg412CuYJ
 s+Epb4bAI74v/2hEYB2dawMoGP6xxRYnKApxtk0AL6GXT9b0oZR8v3ImM
 swsrhVQVpiHLyVSz9Yl+vDgoX2ffX1uM3J4Ou7I43G1RH1WVkCPrZmvFj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255092688"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="255092688"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 03:12:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="634534123"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Mar 2022 03:12:29 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 03:12:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 15 Mar 2022 03:12:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 15 Mar 2022 03:12:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fOPv02pXAjEFWZqfHxRo1ELUqQrQEzBbb21amxX1UuQpl0lNrm5vsPVhl9ImiYDwXjALvZVPB3OKTCpeinefbBImN7ox5mLPSczVf/JB/PQsYloDNLs5aZ0QXcYwqQMhO8JQXee0btRo9mYmLWwz+IrNdBTPFit+qhRtYwBIxC299EYNgU18bLFXlW/WTJfyEUBaqeQ9Q4T/zPTfWw4qARecNb2NipjU9noWIuFX3EHzVeKY6MaL//19yfnNWK/fVvzZi2MbGEp7L337woJjyhH8S7hhyx/3ZfTE6sSLcOylvcI5dHdXXS1tgHLU5Jv3+NPGn081+H75O49q7izGeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1IH6cU1jvrVNkf12cWve79UANfgoXnY5qnne7oQ7EEI=;
 b=NBUq/D8uDkS5bozQMJhSh88/Lbf3wh8743EbLLx3DwExE6iUUjeu2fMKWEUSIhK8Az2xWgbvBs9nULzdf2ppbAb9oU3S+fV//rg6A2x1U793Hz+91MSWDAPTBSb6wjyDO4ROP3dBUZQ75AkrPVY//FBmzETzIWFhwBh9m4ePiJ/9Fxu51KH2uhNWROqQcvv3622IPo9shEeNoe8IhWEuPXfSGJtYdTnIGCHuUm7gu336uRsyCf2WYsvQXqhcF7Fu8+Uzr917w7o4nExge+ZyA006c6NoRjI/WLfiXKA9vb+u1bOmpT0qjQpfwfnuq6L/7e9UAtLYSD4FQ2DRZoSJ7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN6PR11MB3295.namprd11.prod.outlook.com (2603:10b6:805:c2::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.14; Tue, 15 Mar
 2022 10:12:25 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530%2]) with mapi id 15.20.5061.028; Tue, 15 Mar 2022
 10:12:25 +0000
Message-ID: <d73b776f-1b3c-a14a-2cc6-320cefab0ea0@intel.com>
Date: Tue, 15 Mar 2022 15:42:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.7.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220315080247.1161844-1-ankit.k.nautiyal@intel.com>
 <20220315080247.1161844-3-ankit.k.nautiyal@intel.com>
 <87czinvcek.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87czinvcek.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0121.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1a54b078-132c-4abe-1ad5-08da066c4d37
X-MS-TrafficTypeDiagnostic: SN6PR11MB3295:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <SN6PR11MB3295867FAF4641A07C6AB473CE109@SN6PR11MB3295.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lvcXzowiFgMd6kI7Ja7GhR/5ICFBHAdyqrP0tAS0B3qwmbBbu1yF5Z7FJpWb1xfE88dGLyjcPGR9bkvw7+GPpLxYZ1neXREvoDDgvKHOPilxqNrwqps3dNqDof3V/SLBjnPa+yDgEnbT0JBnAM15Mq1D7Q3TSTKbewBMLkEOCyIZgwf0PDMO+12CVSZzhBOWfexU07ilrP6dSwkFAUtMnBdhdZPNXpHO7VqnM6ct623G/K2U37pJivmQTGLDZR0x9MD0QxUXxpozfKyDzVylGQIYKI8GBCDqun//DFlUA5lVKMWdyupJ4UGk0reK5QpZLf3gpaDOdyH6jO7b2TRbeuDJKdDrbWPI3NOdXn3dY/DVyjFZFQ0ylJ7InSZI47K1LtNo9kNF6tDiTkWVeGolEenO7sXb+wJTpy2dy+wcUGQlszrqo/3/DlKCuptrOMC/Rd4bDY1SyCs34sXQ2xNXnwqOR7qxGb3YLabKVrSlGiPMRCPlwSWbbscKChLXdIRszGa0oWnrmOgwedWgO3tpZg0RW3pj7BKsVdO8GfM50W4xqh8LKlX/rjj4xB1ROJkCgy24pI5Aqq2vi7/J1bmDrUwlLx4yalHprOUOXJx6xlIGkV8liZj+RpbED/iVoKmjRjHHmJRYh3xST+AVmwtpgbqP4hbukxWBh3RQHYegqunLfgmrv9KKwMFaRhLeJgtEwB0PfaThIv/VwWwxt9QF/3HqrJ96TA7GxXd7jvz2Eq6OrDZ54i3dsiYYXk+XIwBS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(31696002)(38100700002)(2616005)(31686004)(36756003)(83380400001)(316002)(82960400001)(6486002)(66946007)(66556008)(66476007)(508600001)(8676002)(4326008)(2906002)(86362001)(55236004)(6506007)(53546011)(5660300002)(26005)(186003)(8936002)(6666004)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekpWRzdCQmlITWhDamhQVUZwb2VMaUo4M01HbjFsendad0V1dCs0NVVqU3Bm?=
 =?utf-8?B?RXBpVWpIME5RY00yMk45UEsvRE9GWEk2SzNYWXVENEJxU2c4UDl6KzU0L2tH?=
 =?utf-8?B?UWI3NjBUWVF5SWNNOGdWTENvRHJic3dmYUR1K2c3Vng4VGVCSFc1MUsvdUkz?=
 =?utf-8?B?d0JoL0RQeWx5MHdWQWpZbFMyc09mZmVwQU5xRFlYaGx4RkFnKzFZOU8wczFw?=
 =?utf-8?B?T28yaC9ZcEVuR3lZOXdUM3F3ZjlCV2d3Z1VpKzRaZmZBdVdlRUhaeTZ5THdx?=
 =?utf-8?B?ZUovWHg4S1FNemQxZUJjakkzaHZ1b0NWc0UwME95VDhybmNLeTNFbmU2bTFp?=
 =?utf-8?B?SGs3eXYyL3dlN0g2NWkrNUpvRXJIZW9wWmZ4SWZEZXRwN25sQ3hsK1dkbFpP?=
 =?utf-8?B?bTlKNVlGSDlDaHM2TjZNQUR3MEJmTTFsK0loNVMzN0Q2ZFdxcDVlMHBDK0Jk?=
 =?utf-8?B?c0JBSVdMS1VIaWZTN0RRTFZ4YVEvTnVzdTRzL3hPbm91MEt4QkJreEhZMG1u?=
 =?utf-8?B?ZWkvcHp6TFVNbTkzeXNmWkRMb1NiMkV3OTdHNlpMUTE2STdTZ1YzSlRFSDc1?=
 =?utf-8?B?N2lpVjhpanhLS1JWU0dENWNsS0lpQkN6bG9NWEpvWW1GcUpSbzNoZzFqSlBE?=
 =?utf-8?B?N0FvclJXWWd1Y2JhcjNCQXBYaFNSdE1vWUhpZHJUbXgzQi83djZwTzZiWlpu?=
 =?utf-8?B?TjZHcEdwZmFMYW96d2EvN2VyUUpEWENtbkxrQ0R1YStQZGhjRW55T0ZUT2RL?=
 =?utf-8?B?czQ3d2s3UnVVYThRd1hJelo2dVRvZjUrUXRJY2tmYVhPVXNmNTRmT3NJeUhX?=
 =?utf-8?B?MlZ3d2kvMDNvbGMyWTlCbUNHbCtUb2h6ZTRKZUt5dWswdnZKYzJhNlZBOXBx?=
 =?utf-8?B?Z2M4bFY3NDRxdVZkbTNmbE9jckpsT2ZDTTgrcHFWdFJVNUFTRWI0WkJlUG5N?=
 =?utf-8?B?VFpuamxQV1VNVEZPSDlzcXNvQnVCNzVWbm11S0EremNHY2FkWloxbitGRlNE?=
 =?utf-8?B?MFRwbW1ScDRzWU9aNTJNSndmT1ltYXowem8wUzgyZHJZMC9MQUk3TEwvZE9w?=
 =?utf-8?B?QzFTUmpEWWZ5cGZYMGdUeVJrczMrM2w5RHUwUVVUYVRtYVRFemdPRERoU25i?=
 =?utf-8?B?OVViVjhIZ1lWWHNlRWVvWnQ5Z2RxTGNNUmNnaUoyelFkWmlLVkIyMi8ybkht?=
 =?utf-8?B?VVE4blBBakRGRUpIS0dxczJ6VlFXNVVKVXhYOGFzOGJraS9GdzlJc1RmaklT?=
 =?utf-8?B?dnBML3FxMFBVSmZJaW5GU1dScndKTEQ2V2Zjd0JRaFMzcmxVbGlRdU0xTVFl?=
 =?utf-8?B?SyttM1EwWmM4aGpuS0hLUU5lRjdicHBTZEFlUTBPK2JVZSttaGI0SVlUYXVF?=
 =?utf-8?B?SmUyWFJPQUJaQUJkQTVraWNQVDBycG8zWDRVMmpHT2l2V0oxcUpLUjFWTkFq?=
 =?utf-8?B?d25PU3hFRUwwc2xVakZzelJiWmRPdW5MNEgwZW1nR0dDVXczZTVCdmR1NTBC?=
 =?utf-8?B?TlpmNFdJbWlUQjVmOGt4dldSTHp4QjFOQ3JHeWJOY1NkSDB5cTlSa1Q0MGFn?=
 =?utf-8?B?Skk5ZTY5c3JmV2ZpejIrZzlETXZ2Sm80OU1uaVF3WGxQVmpVcEZNWXpGck04?=
 =?utf-8?B?dHRXa0V0bkF6RVNTM2hEVVVkSWU1ZE82N2NuU3VVckxaYXU5Ny9uS1kyb3hK?=
 =?utf-8?B?eXJIOEsyVkp6MnhuYUtkUXpCejFDTUVQZVlHTzl5VUhUMmxZWE9IWGxhNVFW?=
 =?utf-8?B?dWlRRjd3Mi90ZE9LL2pldlVvT2d3NUpGTCtzNVhheGw4bks5TmhqVHB5RDRQ?=
 =?utf-8?B?cldzanJCMjhtdk1CSi8wNGMzL05KMGJNYjlKbXhzdHZRSituTGtmRDJ4ZXpU?=
 =?utf-8?B?a0ZTN0k1Q2IrUlhKbUZ3RUJiNzRkZEdIYXBpTVNhbnAyY2VkNzZuYVJlTmhx?=
 =?utf-8?B?Y3RqSjFLOWtvWVJ1aHJHSW9RRUpUNk0zeTIwOVA4SythZVl1c2MvUkFkdjZM?=
 =?utf-8?B?djhuR1R3dU53PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a54b078-132c-4abe-1ad5-08da066c4d37
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2022 10:12:25.1317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vo1H4Y5hksi15SXikmJ9wJKOX/LSQOTfVxpVZBoMSh07aLBOYnVNFLHienC+jMtXIDSnYOUZ2M/g/XG/hGqMVanblrNToECyIHHH8jW9z+Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3295
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/intel_combo_phy: Print
 procmon ref values
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


On 3/15/2022 2:08 PM, Jani Nikula wrote:
> On Tue, 15 Mar 2022, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Add debug print for Procmon Ref values, to help get the
>> voltage configurations of combo PHYs.
>>
>> v2: Used drm_dbg_kms for logs. (Jani)
>> Added names for different voltage levels. (Imre)
>>
>> Suggested-by: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   .../gpu/drm/i915/display/intel_combo_phy.c    | 36 +++++++++++++------
>>   1 file changed, 26 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
>> index 4dfe77351b8b..7ccf45578a7f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
>> @@ -25,18 +25,29 @@ enum {
>>   };
>>   
>>   static const struct icl_procmon {
>> +	char name[30];
> const char * please, and ditch those \0's in the initialization.

Thanks Jani. Fixed in new version.

Regards,

Ankit


>
>>   	u32 dw1, dw9, dw10;
>>   } icl_procmon_values[] = {
>> -	[PROCMON_0_85V_DOT_0] =
>> -		{ .dw1 = 0x00000000, .dw9 = 0x62AB67BB, .dw10 = 0x51914F96, },
>> -	[PROCMON_0_95V_DOT_0] =
>> -		{ .dw1 = 0x00000000, .dw9 = 0x86E172C7, .dw10 = 0x77CA5EAB, },
>> -	[PROCMON_0_95V_DOT_1] =
>> -		{ .dw1 = 0x00000000, .dw9 = 0x93F87FE1, .dw10 = 0x8AE871C5, },
>> -	[PROCMON_1_05V_DOT_0] =
>> -		{ .dw1 = 0x00000000, .dw9 = 0x98FA82DD, .dw10 = 0x89E46DC1, },
>> -	[PROCMON_1_05V_DOT_1] =
>> -		{ .dw1 = 0x00440000, .dw9 = 0x9A00AB25, .dw10 = 0x8AE38FF1, },
>> +	[PROCMON_0_85V_DOT_0] = {
>> +		.name = "0.85V dot0 (low-voltage)\0",
>> +		.dw1 = 0x00000000, .dw9 = 0x62AB67BB, .dw10 = 0x51914F96,
>> +	},
>> +	[PROCMON_0_95V_DOT_0] = {
>> +		.name = "0.95V dot0\0",
>> +		.dw1 = 0x00000000, .dw9 = 0x86E172C7, .dw10 = 0x77CA5EAB,
>> +	},
>> +	[PROCMON_0_95V_DOT_1] = {
>> +		.name = "0.95V dot1\0",
>> +		.dw1 = 0x00000000, .dw9 = 0x93F87FE1, .dw10 = 0x8AE871C5,
>> +	},
>> +	[PROCMON_1_05V_DOT_0] = {
>> +		.name = "1.05V dot0\0",
>> +		.dw1 = 0x00000000, .dw9 = 0x98FA82DD, .dw10 = 0x89E46DC1,
>> +	},
>> +	[PROCMON_1_05V_DOT_1] = {
>> +		.name = "1.05V dot1\0",
>> +		.dw1 = 0x00440000, .dw9 = 0x9A00AB25, .dw10 = 0x8AE38FF1,
>> +	},
>>   };
>>   
>>   static const struct icl_procmon *
>> @@ -113,6 +124,11 @@ static bool icl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
>>   
>>   	procmon = icl_get_procmon_ref_values(dev_priv, phy);
>>   
>> +	drm_dbg_kms(&dev_priv->drm,
>> +		    "Combo PHY %c %s PROCMON values : 0x%x, 0x%x, 0x%x\n",
>> +		    phy_name(phy), procmon->name, procmon->dw1, procmon->dw9,
>> +		    procmon->dw10);
>> +
>>   	ret = check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW1(phy),
>>   			    (0xff << 16) | 0xff, procmon->dw1);
>>   	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW9(phy),
