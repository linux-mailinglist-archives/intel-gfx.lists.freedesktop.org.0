Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19875589F0E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 18:03:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 999B392B70;
	Thu,  4 Aug 2022 16:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B972610FD7E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 16:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659628861; x=1691164861;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cCRCSrAapR+AQSg5GMFNotdKbll3rtO/uzUwmVFEeI4=;
 b=e28S8+u+qH3TIQjfxG3dyEPvPVbyjhQICG3DXPayuNyCs6shiBmEX6nl
 BQgz7aeE0y3VG2G+8jNCpUkIsZsNnDI4/lwIfLE/ekJHz2F9UNkJTQVGE
 7DIp+32SMXQZLixS3/YyB+a3kzyFOvtizub/8RgzJtEuQg+RwA9rw12SJ
 bCXkL3uirWa0OMIqHCsCqWFtibS7iA/VqI0PvHaaPZ+lX+v4t/FIgPQOn
 Jl9WODHqxWBbOa7BO20fjK8TVy5KKa++nMwnYqZKAn9wBHSzkZLncLxns
 jD41lzZJDlx96Q2Fyksdkbl1XJ0bqHMt6kfnGOKaj5C7Dx+klDdvcPPFx A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="276890170"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="276890170"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 09:00:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="729652411"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 04 Aug 2022 09:00:44 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 09:00:44 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 09:00:43 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 4 Aug 2022 09:00:43 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 4 Aug 2022 09:00:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F7+hnReuh/aWg6648fJWbcYbKje8OCecdY20LgkmDKyr7tz4hgQ2hxv3lEyrX+QOek1ft9CTxOP+w8qPyQZsSm2/fCbfbYMWsDCniW4OJNZ5To6Sp9CiQJ5TKhq5hS0ZZJKfWnhdiwU83w3pnom4y44V7SLPUj1iFqaINISlafIdqdX7QLRC1YwDkZZ4xX29/FfwLAeYF+utgirU7krsTRtPQmlUzXmFqTeDu2vrI/4URGeEKjSdc8jigs2k0JpPee3fHr3LRFJKBHN4zB0BmaihVCJMQYxttn4ythMPqR8/FzA9Jn7osX8cXyD+CW27S7qg4CuAauon246oCtQ14Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o0elDwoc8+nCbv4uQxMFOqFztfNFmWcpIVQx/XXn88Y=;
 b=F9M3HJ4yZXDZ8bCGqtDnOKCv6hyMR6MHbPv4s5bDDnGu8q7JKDE/wrC9wb4m5sXELmL2EzurGbsP1RdmKXpKFTE3pozF3jJ8JCloUCQdYz8wTpTrDLd+rH86xft8TwBSf5TE4aKjHEV/H25V3td6YUfLlKXjGnOALDAvNFWy/03AY+KUf/bB5UFMDRQ9fE5PTRKyTWq3MUCEBZRWW1NRlH4oCC2/yCop4J/a3+/8jTZ0T+mXpewU71Yjn/5b/43hfRaAoQqMLrnAwBXKns9X3AFORDGJ4KuwIIuQH90ag4eS7i/AyVDMhi4dYvXjF4O/Tz7eBcyNRC4/J7vkbAR36w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6353.namprd11.prod.outlook.com (2603:10b6:510:1ff::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.16; Thu, 4 Aug
 2022 16:00:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::38c8:a900:6915:3b3b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::38c8:a900:6915:3b3b%9]) with mapi id 15.20.5504.016; Thu, 4 Aug 2022
 16:00:41 +0000
Message-ID: <1dbf2ed1-fc2e-e34e-9d95-ca87bc9f60ff@intel.com>
Date: Thu, 4 Aug 2022 21:30:33 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: <imre.deak@intel.com>
References: <20220804102911.1346064-1-ankit.k.nautiyal@intel.com>
 <YuvpVtJDEdBrEpeH@ideak-desk.fi.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <YuvpVtJDEdBrEpeH@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0020.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bc2c3fbb-2ad6-487f-4461-08da76327b27
X-MS-TrafficTypeDiagnostic: PH7PR11MB6353:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gDAi8rbyNdEL5zAi7oHeUWmcwg/Da9/a5z8CVDS+JF4ftyC0kK3WTlewIZg0kstVm0LR6545JyGw8/hkOd8Ejz0fMoGGHONSqW5Jr/env3kTQvyzbQi636gHcfDtPjurCtHZUpD/MwSBNs3bJfBWzhIRAj20wkaEai1f+tBAjN/KJUomJ5dpR7k3zZN62vklpK6ZOoQBQDa+WFXWBT+WHV5f5Ilb/YZ3hKGMg5RVUBK/NWnccsTC34XrOAECFmKbJ5U7er9qjIkgOQs4vMgpccNBNsvLOowFNGQqaHIpO/ObztctuDVcQ05elo+Jenn83ar9l7HlfUahAZMVsTJjP8Xax3jZDEFBk/TD62iTEPgtJj40coiDqCHG8vK7vILd9HzOy8/RRyU82LbVX7E/BF2n7CiecNeb8Cc0pmEl9NFgH+iCiZykoURVGG1mtXJ/cAs3X+KYPVoc0mHIZiyDZqpbyRFl/KpaLVQahFU7Jkr1loHViuF1V8en3YJ5VIETLEh5AJc4Jdi3+3s8Yk3cDfkZlXmNbvT5GBMFt20wQIakbHKr8oHo+8d55Xkmexj/ETI7pSRg50I1s9gKTsCjPsk7XcxAWefQZ+9CuRFABHgRsAzLLaX9cE/eP6RQolAQ6bKxWsVNLVz22+8YqbQmelU7A2jZOY7WQMN3a9lzMb0QwCtm9pzO6GtocInUzLmNf/AbIxatFbBpYxPs5qDn94wAYspzlf2ddLueuaL4YVKetDw1tf1VLMBE9BZmYHPTpIXWgD81HpFs28uiIiMChTJPa8GWHMQ/z78ny0xmu9eEXPqSbCXiXFj364xd+lMZqoSu9nDKL/dEQMjrUkw29CMMedOkaSCALABJzXPHy74=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(366004)(136003)(376002)(346002)(966005)(6486002)(37006003)(316002)(6636002)(34206002)(5660300002)(478600001)(36756003)(2616005)(8676002)(82960400001)(4326008)(66556008)(8936002)(66476007)(66946007)(86362001)(31696002)(83380400001)(31686004)(41300700001)(2906002)(186003)(38100700002)(6512007)(55236004)(26005)(53546011)(6666004)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3RTS1hFSHZDVk5aQkhUUVJUaDJQams1RU16RE4vdU1QSktWZTh2YzFXQmQw?=
 =?utf-8?B?Zk9BeXBGazVmekJMRUhIRnljTGl4NFJRYmZTdEpwVHVhM0loSHNqRXJzUWVO?=
 =?utf-8?B?eTVxVWFMcE4rNHJoM1djRDFCNDZIbU8zMnBrNWNVM3o2TmpoN0dTeWtYenlx?=
 =?utf-8?B?VWxlWlFLVEFSVFhaV05xSUdKeTl0Nk4wTndFMllZb05TeUtpRHhIQ001UWlw?=
 =?utf-8?B?dVFHWlVrTkliT3JzQ3BJelM0QTl4czRBQVhkUmEyWFBhYk1DeXlQQi9tKzRI?=
 =?utf-8?B?Um0rb242VFJKUHVZYkNMMzFOd3daRzFQZlhMUTk5L0FWTUEzK2dtVUo4Rkh2?=
 =?utf-8?B?SER1eWFFQUdGZHpOMzFQY1BkSGdUdTQ4am9IZWNFRzZWZVh2UTI3NHZzbnRy?=
 =?utf-8?B?d3grZFR4OEFEcHg0QkUzcjZZZ0UxOVFxNlcvaHVoZTdJd0ZmbDBaRERFeXVi?=
 =?utf-8?B?WEdXbTdUcG1qK0NlZ3ZTelIyVG54Q3VOa2JJZnFBZEV4Y0tQSkgzbnFJN1Q5?=
 =?utf-8?B?ZEtnMEpqV3RpWFJHMzJSMytGRXJhNGt6ZnpEVythMEl2VWE3azJicDdxNEtO?=
 =?utf-8?B?RWM2M2tRRVl3QkZWUVord0E2Ny9JZEIrU2Y3UEZwRXpJekhTQnBLaFJ4Q01p?=
 =?utf-8?B?YVF4VW0vOFEvVzBGYjdkeHlqUDZ4a3ZyaWR2VGJCblg0S0svUUdKbWlNRG1B?=
 =?utf-8?B?c2V1dG5uYzlEbldzQXNZaVZYWEZnQmY4NUNERUlsdUFXUmpWNk9tK3FnVW5j?=
 =?utf-8?B?TnJ2Mmx2SzVZSnRvaEVPSXNEckI2SFhFZ0tDT0MyMFQxbDRtOFlJQTJzSXBG?=
 =?utf-8?B?bTI2U1NUdCtqNGQ4Y2FlSlNSZFp1Y0luUjRHR1pvQXhCbGxpZUUybjRZampv?=
 =?utf-8?B?bmtRMFRQc2Z4M29raDFwWWNBbkdONHVmWlFMdUR1a0hGc3BSbmE5anRBbndD?=
 =?utf-8?B?UUlVS1pGUnE1OGEycnRLaHdwbERGN1FPdlZaVlNQMzBRWU9MMlpINEp5TGxU?=
 =?utf-8?B?b0RHc0x3SnNVd280b25HR3J3WFNjRjNoK0FDWDBpM1pyRkUyYkFmL1pnSHda?=
 =?utf-8?B?RnJVeEg5MlBMS1VPQ09tSU1Ga3RSVGhKelRiajBIZFZOZVFmQWtsc0pKQk1O?=
 =?utf-8?B?dmg2cU5rMGZ5NEd6U1VnZUVTdElpRktMZE9jemRFcWF6M1E1ZENJNzN5YWN5?=
 =?utf-8?B?bTNIZ1BWSDIwMnNnMEwxdG9wYlZDL0xUaDRxNTYzYndjMUR6U0drem1oNm1L?=
 =?utf-8?B?QnNXa0JPZkVZTTFwZHkxbng5UWhOY2Y4RVE0UVVFTUQvclpiaG9NNi8rTHZ3?=
 =?utf-8?B?VUc2ZkwrSWgvWVhWU1lsRVZPa1crQStmTmlYd3hGVlBuOExyMEdhSHNZOHRR?=
 =?utf-8?B?a1FycGlDbnQvMnlHUEFEWjQ5Uk1sYjFteDR4NEt4SkRYNkkxUGFmSTI4bVRj?=
 =?utf-8?B?QU5pNUJaOCtITXhJU0R6ZzF5Y0R6SFRFbzRIK0J4OEowOEU2NE9KSzNNS0U5?=
 =?utf-8?B?QW5ocW15bThwWCszNkp5TkpqNUNReWE1b1VlT2VIZFd4QldubENZVDhVTUZq?=
 =?utf-8?B?dHhha2REVUdTRC83d1BId3BYU01tMTJRZStCbFZSUXBoRzVkbENScCtKbTJ2?=
 =?utf-8?B?MCtJM2QwRThpUStEVW1SNFh6MEVRcFJrUHBGcFVudE5XMVdJN1pNUFZFNUxB?=
 =?utf-8?B?RjVFZ1hSamdqS3oxZURRZHE4azhyQllobVpsd2ozblY3SWRTZmpPVGczRlRo?=
 =?utf-8?B?cW40SGhsQXVWWFdxMnBlR0NPM0xmMWhDdE0wNWI3U2lyRlV4SjFYcXBab0lj?=
 =?utf-8?B?cUMvYnA3VjBRNDUydTRONUZSaHVIcEduVjFMZ2wxZ2llZHA4UXd0cTZKRGZ4?=
 =?utf-8?B?M2hBeU9ibmtzR3YyaXNSOWRCNDNId1c3aVJpcnZ6SS82Y2JOSU4wSkN5ZVpa?=
 =?utf-8?B?bGRCY0xZcTRBTlRlS2xHNC9LNkhCeDByMWk2ekZjc0FsT2pnM3VwZ05xMFlV?=
 =?utf-8?B?THV0dG02N0dBOTNqaGNudk1WT0FxQTBpdVBDY2ZvZ3N4MU91SzluMVZtbU9m?=
 =?utf-8?B?ejhJcXhrd21sOWljQktLbDFtOERHTTRlWTI4bVE3QXdNT3ZnakRyaGNQN05k?=
 =?utf-8?B?aURHbERKanZXOVAxdW1ST21OeE9aOEhoNjFNc0lMQVc1ZXAzUkgyK2Z1bml3?=
 =?utf-8?B?aFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc2c3fbb-2ad6-487f-4461-08da76327b27
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2022 16:00:41.6240 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6FCMeLkQnaDqOKwyVq2JSgOktUO1b0OfETPU2USgLWqs8ZLhdBIRpNxvz9eTGjXXlClOfM7uz8JAH6bhrPJbS1DNeRccEJSJqXd5P2D3J3g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6353
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/combo_phy: Add Workaround to avoid
 flicker with HBR3 eDP Panels
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

Thanks Imre, for the comments, please find my response inline:

On 8/4/2022 9:14 PM, Imre Deak wrote:
> On Thu, Aug 04, 2022 at 03:59:11PM +0530, Ankit Nautiyal wrote:
>> WA_14014367875 : When Display PHY is configured in continuous
>> DCC calibration mode, the DCC (duty cycle correction) for the clock
>> erroneously goes through a state where the DCC code is 0x00 when it is
>> supposed to be transitioning from 0x10 to 0x0F. This glitch causes a
>> distortion in the clock, which leads to a bit error. The issue is known
>> to be causing flickering with eDP HBR3 panels.
>>
>> The work around configures the DCC in one-time-update mode.
>> This mode updates the DCC code one time during training and then
>> it does not change.  This will prevent on-the-fly updates so that the
>> glitch does not occur.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_combo_phy.c | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
>> index 64890f39c3cc..1b8bdc47671d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
>> @@ -242,9 +242,10 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
>>   				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
>>   				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2);
>>   
>> +		/* WA_14014367875 Set DCC calibration mode to Read once*/
> The usual format is 'Wa_<lineage>:<platforms>', so Wa_22012718247:...
> 'read once' is 'run once' afaics.

Indeed. Will fix the format and the typo here.


>
>>   		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN(0, phy),
>>   				     DCC_MODE_SELECT_MASK,
>> -				     DCC_MODE_SELECT_CONTINUOSLY);
>> +				     ~DCC_MODE_SELECT_MASK);
> I can see this WA listed only for ADL_P/N/S and TGL (and not for DG2/RKL
Alright, so perhaps need to use Platform check.
> for instance). ~DCC_MODE_SELECT_MASK should be 0, maybe add a
> dcc_calibration_mode() that could be used below as well.

Yes right, I did realize mask should have been 0. Will do the suggested 
changes.

>
> Could you file a ticket at
> https://gfxspecs.intel.com/Predator/Home/Index/49291
> which specifies this programming explicitly for each platform, but is
> incorrect now wrt. the above WA?

Makes sense, will file a bspec ticket.

Regards,

Ankit

>
>>   	}
>>   
>>   	ret &= icl_verify_procmon_ref_values(dev_priv, phy);
>> @@ -366,8 +367,9 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
>>   			intel_de_write(dev_priv, ICL_PORT_TX_DW8_GRP(phy), val);
>>   
>>   			val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
>> +
>> +			/* WA_14014367875 Set DCC calibration mode to Read once*/
>>   			val &= ~DCC_MODE_SELECT_MASK;
>> -			val |= DCC_MODE_SELECT_CONTINUOSLY;
>>   			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
>>   		}
>>   
>> -- 
>> 2.25.1
>>
