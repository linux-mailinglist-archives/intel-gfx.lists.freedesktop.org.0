Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 198A95FD8A8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 14:00:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1FF510E20D;
	Thu, 13 Oct 2022 11:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C28610E20D
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 11:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665662394; x=1697198394;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NXeSj+MF+MfEZGWjI1uMmao6zdNtCWkKPMa1TGtlJ9I=;
 b=ZiFcPqA794NViCCIiVxtdoUpIBVi8a8CrgellYTm2g1/wPSS3I93NvP9
 XGUrAcTxDc0uy6nyc4JFPVEY2hJlxBgrl7vz4fiBI+J56AoMVn77EU5UL
 RqQ9d4uNH1vvNnAH6ZELB002tkRLY75YDPtKhMmuBx0IaT/gBOf7tAYnu
 65f/p6ebXjTj1XOzgyIPjUg2C4IiYETG00uH1exy32ap9Wwc8HmPEERrv
 dAihTP3m5YBCfdg07w4h6ebLcwIfpnMm3GCwyNjuNIrjYwTvX5eANepjW
 2q2jyu52NCGKYKrjsXelC4jaje/OldsT+TlkJXmOOLNX2Fq7ivezwpH0B Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="288327038"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="288327038"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 04:59:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="731833466"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="731833466"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 13 Oct 2022 04:59:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 04:59:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 13 Oct 2022 04:59:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 13 Oct 2022 04:59:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TOeZ8x48G9Ovn+M6TFeIBdQIPm4d6CxlAoi1Y905Oa0fk7P4gSfcPhVA1SYenE+V//wABtKu+boDEXAsiDcvKcfJpxHtuWHrjr0MEwSfwUJ1X8R9sk+eROoZsfc9q+5FE143pSa/Ekm9MrxxbVcenErNo2tHpM8rrxqWxNETHQIq6HV7A9lbew83f/U3PbUOTJ7HfnUwOrEppFZOq3ry2xiCN/zT3UsafztzW8crVywlIZk8sbn4iLqnXV8ovQi0DfXZctWw4ICuUplvZrzB+M7nco7ET5f0MCBcr+Ri6YlNfnF6DhboY504WewPEBj0IYuIvTSjM7a72S/M9nbLmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pev6pJxAOR+J4QgvH/KFrmN2oR4NR5YVAHLLUst7vpU=;
 b=T8uZwS4w8njnorkvMUkF0SrtrYU5+HSHSAPA3Gf5Cs2B5gNi0Tn5lkxTHEF/yDXgj2+gJ5jjKXKIfZ6ViCSVWcVkyK0zZtjZ2wrhWeMRz33SfaL2LReS0YV5gduc84x918sn1ZX0c9OvzoqeGCMXALW/UhMwXktVosr3XE4pf3EKhIdyjIrci7EBctMpzyc081/x+USavJp8zhuUpCezLO1Pqn/Q/5TdJ2lGiibcIZy7yw345QnF2j8DXE+eSGnsJpoo/fTIZuM3gh3FL+8obgTHg8AiNZFr0554x0+HjWQlIVVeqqIefCU8dksuYJoMA2CQh9bNp5LZ695K3uCY1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6721.namprd11.prod.outlook.com (2603:10b6:510:1ad::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Thu, 13 Oct
 2022 11:59:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::dd59:fdd5:a9b5:9dae]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::dd59:fdd5:a9b5:9dae%4]) with mapi id 15.20.5723.026; Thu, 13 Oct 2022
 11:59:50 +0000
Message-ID: <d5ca90e8-2397-1473-c840-cabf736c27ce@intel.com>
Date: Thu, 13 Oct 2022 17:29:39 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20221013051124.1093410-1-ankit.k.nautiyal@intel.com>
 <Y0fo2VO+NUocRJtK@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y0fo2VO+NUocRJtK@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0023.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6721:EE_
X-MS-Office365-Filtering-Correlation-Id: da376a91-a010-4059-6fd5-08daad126e83
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QI17zb0tDRTERgCr0/X0Zc3+rfj3TK6Bew/Q8rY31boVWtj0Jh+CRh0uNjHsciCHk1gCswGsfhckkcHe1GWBsMnsNvsjndevElq2ZqXzqlhqQm0qtE4OTe9r/12woQlarc7jZW3pP9GIXtlP/4w3M5yRHyHmXawHDT/iNVJFQ9MiReRBoBdYBRO7D+U/yhEKDjIFD2nQM3YqHr6DQ3/scfyF5NABi/g9JabD8BCZu41nzihBaWcZNKkWcQeo9sRuS1o1gM6BXQaLawjzbhQr+zZP0yyUxukLoJH0lSP506Yk1xUOflrLnCk1kjKjXN6YYbRfabcjpG5ZxDUco/sl/Dqm3wxsCUlhIAH1pr/tSzN07a35+7xts6BZOl2Mj3DseLh/I8NrRtHDYqXKXM+HyiJgkpViL4hd0MB+yFCckOhurHdYyw3vU/jwnvlodzdv569ZJFAgo26MmMhrkInmdToAOB3FcYVeNeWLn75rN74u4hYzr3FbB7oGkOm6Umje4Qu718bEPwJweBmOSEzgONb6+zzRzfe74bit8PLJUx+xJbHoZJmD8C6aRH+QfkIs6eSI4Om9nvEdWIPWawdSy1LFqeyO98xthaq9GWQcF9o65UevaUPeuEyGMq4QDUezY1NZPQ6a6qpBPWdEV4BfuklgSD+IEpi+0dzlisVxTHmDUJ8EFy5nzDMZAOUD6uEo8S6D2NTEg6RiayabZftdw+OSSJYJyYtGAQC2NsHBg8LUi6m5e9LbF8u11Xz1+7FXKBh+6V9vpshN/jfexw7AYZYSACKjXTPJGL9FR4/D3Hw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(346002)(376002)(396003)(366004)(451199015)(2616005)(26005)(31686004)(41300700001)(8936002)(186003)(6512007)(5660300002)(86362001)(8676002)(4326008)(31696002)(55236004)(6506007)(53546011)(2906002)(38100700002)(82960400001)(316002)(6666004)(478600001)(66556008)(36756003)(6916009)(83380400001)(66574015)(66476007)(66946007)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWE3Qnk2TFc3TGd4RVBGTGNLcGlIL0puNGE3a0pZY3VsRTVlblV2U2FYQmRI?=
 =?utf-8?B?TDdEMXhSOWhQRExVbEZ6ajAwc1FnK28vME5pNUZJbW1mT0FwQk1vOHJicUlk?=
 =?utf-8?B?WDdvMlJlVDhwUDZOb3FCVmdwM3NnVUV6YU1TeGhGUDM2TCsyQXViT0wyaWp6?=
 =?utf-8?B?R002WSt2S0U4L3JtaW5YN1NRbE8vYmRucDI1eTdlU2lRV1NKejdqUDdmcm5h?=
 =?utf-8?B?ZmlDUVdESVQ0WHBpMDBBOXcyVDgvOGlVQlV4UzJHSi9PaGl6UnJHT0p3U1dt?=
 =?utf-8?B?OTQvVkFwaWdnamVJRFIzSkhsNlhwOGJBYjdPMlRxaERBZis3cjhhL2UrZEt6?=
 =?utf-8?B?c283WDRJcDlEeXpLK0JkcExLeHAvdGxTb0wyek1RTWEySEVLVTU1R0NURU96?=
 =?utf-8?B?MzFQQmFRVS9BWUFJM0kyeVpyOFlJWkwzbElUQy9RMmtkNWdScXV1QTdpMk9M?=
 =?utf-8?B?U2RXN3BhbGNULzRXVjNWUDVuMlZoTFYxTU1wRDdzaHVmNm9lck02VE9LYi9Y?=
 =?utf-8?B?OCtEaEhsaXFYdHFPdCt4azExU3BHZnNpZXRpSitjbzE5UVpiS0JWbUpKd21o?=
 =?utf-8?B?MFdvcEw5cExDUzVTNWlFWGtHc3pDODVnSTg0WVd1SE5jWWFrMlI0b2pKRFVL?=
 =?utf-8?B?cHJxekppSHlGK1FQdDlVa1ppNEFNMSt6Smc4MmJEV0lkemJ2cGloTE9MbWR6?=
 =?utf-8?B?Z1pzcXlZK3JCWVRKN1BWOVRMMWJNWkFSWlRzakJwNUx0c2lSRysvRFpBYnFY?=
 =?utf-8?B?NXFYY3pUVjFzbk80SjJrSEJqSEIzY0VLVXdhRkF4azllVEw5L2hYNVRrZUFU?=
 =?utf-8?B?V01nVGlia1VKbmxpeVhldjdFcWJUMmtGUVlrKzlJZ0hLQ0x0NklLMzFoczky?=
 =?utf-8?B?cTQxS0NUSXZ1M1ZqNHlNT2pFQTNlYnAvK0w5dk53NzRqY2Y2REdpeE9NY2lT?=
 =?utf-8?B?cEZPQkhXc0MzMzZxZEs5Z2ZwY1F6eGRTdGlKanYvYTF1eXpqOHZKbGZVd3ll?=
 =?utf-8?B?NE1aSEZaZmJockgxSmNvT2tkeEZINUd4S2ZuTGsxakF0Q2FzYzdkdGNBbEQr?=
 =?utf-8?B?akdlNmhjZnJpS1N6L09HazJVZ292c2tuNVF6L1BHWDBLWmtqTU9hWTRKVnJP?=
 =?utf-8?B?SFk5aVAraWNEVVpwTldpKytaVmk2RkpMUm1RL2J5UVAxUUJCV2FDbDByZ3J5?=
 =?utf-8?B?a3RqUFFHU0l5dkFycHJid1RtYjV4ZUdPNlVOTm4vcHNUVGxnYk9seFRSM3hi?=
 =?utf-8?B?eU9SMG41VzltVlJQemRza3FGd0U5UE5ybVV0aGNJWE5JM2ZwaGo0TDFaajlB?=
 =?utf-8?B?TUdHRWthcWFydUVXYkh6QVBKNnkxK0VSTlhWN3pQWlRpY2ZCVmJIbUdhUHNk?=
 =?utf-8?B?QktPN1Nxc2Y1eUlFTUlOSU5VUUJhWGZ3amFhK3RneXhwQTMzL2tpT2t3WmYr?=
 =?utf-8?B?MWZ2VUJPZUR3RzVBd2RDNFBsNDVXa08rRzdxamh2VWQ1VTJRbkl0K0M1NWo2?=
 =?utf-8?B?czVaQ0Vlbi9jNlpnOXkxQ2pVaWRwS3JjTXJRWVlvTkF3NmpJQTFrWW52Yy81?=
 =?utf-8?B?SWlxLzIyTk9LSnQyb0ZOeDZQWUFzSzFKcWs2SSsyRXVEaVRWMnp1ak1xUXpy?=
 =?utf-8?B?ZVM2dlVFOXgySzRrZXYrSVV4ZHpSUVFoV1ozbUtmRWVnK1R3cHNnekdtQ2hD?=
 =?utf-8?B?Sjc0RmdHRHJnK202aEZUc0lrWEh1VXFrQmYxeHVrLzhiNG04UkhBMGw1cGdn?=
 =?utf-8?B?RFJyM2M4QmxZMktNdzc1TmRNaWNPOStBVTZQYnZFTlBEZzIyZ3VOaHNXWUZh?=
 =?utf-8?B?N3p5Vk5lMTM0cXBySXdjZWJWTkd0MXpTOHlPcDBzTVlSZlB6bUErQ3o5ZXVz?=
 =?utf-8?B?T3liSW53dklEbmdyZjVWZmRLZjIwZ2RYakhtd01DTlpzQVV1QjA4WUFGUEF5?=
 =?utf-8?B?Y3YrempVZHZ4ZlEveHdLamhPeWdaR29TZTFXZ2w2ODd1Y2s5akUrR1lMSGY5?=
 =?utf-8?B?UWFoVlFJUS8yZGZOc0tCSDVnWW83ODhUSUkyYjdicGdmWFFwUUlmK0Nld0RB?=
 =?utf-8?B?cSszeGd1a3hjaGsybUhabnNEQkZCY0RlYllhSU5Pa2JVL1NYZ3NzWW5tUEhO?=
 =?utf-8?B?aUJNdktFajhpODdKOVF3V3gydURxVTVGSDZrcEIxLzFUSVhXMjlyTDd1bHpK?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: da376a91-a010-4059-6fd5-08daad126e83
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 11:59:50.5220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7jjsJt20UYQT8z6j5F+jXquYP7SQw8PHNctHLMjswyZcODisL38J93qlGkdjvlDPIsyit3jqU1ek3MPOsVUPWNtCQwz1qOyAl01fwj38YMU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6721
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune Interlaced modes for
 Display >= 12
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


On 10/13/2022 4:00 PM, Ville Syrjälä wrote:
> On Thu, Oct 13, 2022 at 10:41:24AM +0530, Ankit Nautiyal wrote:
>> Defeature Display Interlace support.
>> Support for Interlace modes is removed from Gen 12 onwards.
>> For DP we do not support interlace modes (except for very old
>> platforms).
> Yes we do. Specifically G4X/VLV/CHV do not support it,
> everything else does.

You are right. I think I misread the condition for DP and came to wrong 
conclusion.

Will need to add the condition for DP as well in that case.

Apologies for the confusion, and thanks for pointing it out.

>
>> Pruning the interlaced modes for HDMI for Display >=12.
>> Bspec: 50490
> The tagging there seems borked. Only ADLS shows it as not supported.

Yes the page is getting updated it seems. The HSDES for this reads 
affected platform as 12 and beyond.


>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 11 ++++++++++-
>>   1 file changed, 10 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index 93519fb23d9d..791bfb062c49 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -1990,6 +1990,9 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>>   	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return MODE_NO_DBLESCAN;
>>   
>> +	if (DISPLAY_VER(dev_priv) >= 12 && mode->flags & DRM_MODE_FLAG_INTERLACE)
>> +		return MODE_NO_INTERLACE;
>> +
> These are pointless if the connector doesn't declare interlace_allowed
> anyway.

You are right,  will drop this from mode valid then.

As an aside, I see, we do not set connector double_scan allowed, so  the 
above condition from mode_valid can also be removed I think.

Thanks & Regards,

Ankit


>
>>   	if ((mode->flags & DRM_MODE_FLAG_3D_MASK) == DRM_MODE_FLAG_3D_FRAME_PACKING)
>>   		clock *= 2;
>>   
>> @@ -2247,6 +2250,10 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>   		return -EINVAL;
>>   
>> +	if (DISPLAY_VER(dev_priv) >= 12 &&
>> +	    adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>> +		return -EINVAL;
>> +
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_hdmi,
>>   							 conn_state);
>> @@ -2956,7 +2963,9 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>>   				    ddc);
>>   	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);
>>   
>> -	connector->interlace_allowed = true;
>> +	if (DISPLAY_VER(dev_priv) < 12)
>> +		connector->interlace_allowed = true;
>> +
>>   	connector->stereo_allowed = true;
>>   
>>   	if (DISPLAY_VER(dev_priv) >= 10)
>> -- 
>> 2.25.1
