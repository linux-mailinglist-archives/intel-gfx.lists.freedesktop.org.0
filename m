Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E75387C8D99
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 21:14:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C19BF10E64B;
	Fri, 13 Oct 2023 19:14:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C3510E64E
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 19:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697224479; x=1728760479;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XscPqJ1KVKgaABUqbfYJMr4rspSomq8lgNbX6Ys0LsI=;
 b=KQvgquH2v+1PZz/XBK2dFZOx64HpddLm3iJuuI6MunZRwaCbXNX+2dcU
 Aqe6Pew9caArOKeYJO6jN6/KN1ZzLJJBDMK0rHrnkePiojOIljV3iWKgF
 7gKrXho83QNbew/wXdBBRaXiNEocqvO4Xcn3bMvceMd3coYnyDmCgo8v6
 c0aJNwBI6OXJFf3WnVyozGv2g4YiHehCRAbmds+f4NU4MMWrCplo/qrJP
 d5OivfaQUthfI1ERdxTbZH/CNY/6CtvdZZGW2NH59cw1y5fxIzI+diQVY
 GE02dBMAAhAlIb54LJBRA6mzcsMQ0Fb5kzKrw7xAOD6YlRixhW7nlq3vX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="388098446"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="388098446"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 12:14:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="928531705"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="928531705"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2023 12:14:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 12:14:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 12:14:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 13 Oct 2023 12:14:37 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 13 Oct 2023 12:14:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gcFguViQphK0RZ8f9QigqOeHqb+CgDWaxiS6HwLj14DVVFFNmqSOhZ+yWLD3/b8RLldDtOkvl/LTZaHMw2f8abeLSRo0NcFmtOnE2nr60iRcXJnPUHcDrV3LT45Bo5ybvaAFgUkg+wcg/nnZypqJUk4ad43XhZgRZEn1PphBqYZVmiHuVHF5xQRo6Wi3E6GBiZ/IY3U2Qv9QHiH+9GWBeTSYzLdyHt1on8Fg93IsvO1g5XobHLytbmqNc8stGBNS00S19OHRTCu75msSvXaYgyUuncq8bayr3p/gcgN/cXdZny+/JePwleZSy3qzEQPefWgV/HTjzSNyvc+Z2wtzdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sn89yJ3lDmSmPlOpHrDnN308GDCNsrFBihXpYHxrojo=;
 b=HAMZK1vBkxpVa9NVbjAGkH/UTzetjxCOLJH5evaPXVr64hlNwLA/F+GOx6/kAICecHfbTetEYjq0gim8YUmRKv2Hstnfr3igjcTubkg5nDYCyBxUDIaLw9KO+zKbZ+mC8sUR+0tl0fh2YJykSxUf2sdx0JS6o9Enu2/bpBfTEaqY0I1wLVvfp+0uaqklSYXKmaMTprfiHSOcLq22UtFQSIDD5fi3yc6n80dgGCwB+4JG8CONXcpL+FeLyb+OtLH6O11he1SBB8EbCr7nmeloLAI054bLdO4e7hu4BNOzc54hPHa1Qam0nTksHa5799wNoMFq+NC9j1Yeo0h484l39w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH0PR11MB5610.namprd11.prod.outlook.com (2603:10b6:510:e9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Fri, 13 Oct
 2023 19:14:32 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.043; Fri, 13 Oct 2023
 19:14:32 +0000
Message-ID: <33147999-e34c-449f-ae51-487d9f5e7006@intel.com>
Date: Fri, 13 Oct 2023 12:14:30 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20231012223826.2556700-1-jonathan.cavitt@intel.com>
 <20231012223826.2556700-5-jonathan.cavitt@intel.com>
 <fe011bb2-3377-4d96-a256-5434ff9319f0@intel.com>
 <CH0PR11MB54443725C13D61E8D8EC164BE5D2A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <1125fc7f-3f14-4ee8-bb3d-c39a30256964@intel.com>
In-Reply-To: <1125fc7f-3f14-4ee8-bb3d-c39a30256964@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0028.namprd03.prod.outlook.com
 (2603:10b6:303:8f::33) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH0PR11MB5610:EE_
X-MS-Office365-Filtering-Correlation-Id: 225368f2-4ad3-4b56-a691-08dbcc20a180
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O358QnH3+UFicGxrICaUtKb5MIuFXaR0kbPJqa5ZSDk2k04obneHdYwgHl4sQjUKVsN+0boXz7HTB56cQaydXpEqLE6EO+CgT7lSxPH1wxFPj5PumBMI+3U6pH+YATY4cTxjNGLVu221hGdW8INNbdYV3inqDBamDNss8JoIZLqU5so6jZ6Go8NtumUz/clSD73iGrIvnI6+hlU/r+GV2nU+NGlXNoywm0ZIvhWDWJZcpqxiWQbcNQo6tot6itY0HjtzDVJS7WVbcvTjuzsDy7OU80XQm0+2ZpCENFjz2jgEeySVjVe0ulyeYpemRragJoETRoZXEKzPnyndp7faK5O8m3mkBG0lsOVA20bYJjLW9XasSjiHoz4APT9XNr3rMiR9u9SEhayh0kOpxaxJkPOsOGaCB//S0X9MPDUJ+eDX4uqrDKWpGjjCfVkul8N8NiN72fdSD8yWk6WMzBvorHJ2QGRpNHt19LUIiHo0WvVamwWWbD+IwIIKxjp1BdGC7u2FqTRFWSZgd7JIoQXny5ACmHu8WB41itT+NNVLYcOyflmiMd8a7K6tRV+k7jT2NwO5oDz8UtDB3ucOHKitpwIjfRbAI6KumuwPTglrGlCPj3ctlTmLpn3I26mfNV+G6tBKWUpXBZH/Yl08r9eDVQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(366004)(136003)(396003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(6486002)(478600001)(4326008)(8676002)(54906003)(15650500001)(66476007)(66556008)(110136005)(316002)(66946007)(8936002)(82960400001)(86362001)(2906002)(38100700002)(36756003)(5660300002)(41300700001)(31696002)(26005)(6512007)(31686004)(2616005)(83380400001)(6506007)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVVyTStuTEN1a2dMNUpJaC83bkRKUkRYd3pKRVJ1akwxdlB0ZG40M1U1dFFn?=
 =?utf-8?B?R2lQazlTM1NrN0dzNUNOeGFIRmUyblJJT3pKa1JlUGw5NUg4Vk9ob0s0M3VI?=
 =?utf-8?B?UFVrR3VHOEM4RjkxdzJDakNEcG9uY0xiNzFpTEZJS0trZmpHSERiR1NZaEda?=
 =?utf-8?B?QTh1S0pvK0lsRi94MzhpL2dBemdMdnlpcHp2NjRMbUZyV2lWUkwyZkdGaS9R?=
 =?utf-8?B?MTNqZGxPcDZTRFN5OElOdGdGV2JWVmxNaFlwUnE5SHErY29iRHVxa3hReGk4?=
 =?utf-8?B?SE5acmpMZVliNmw1MUFXb0JoMEZtMjQ4VU5EblVRSllscVl0RXBTOVhWUHkr?=
 =?utf-8?B?NU9ObGVuN0NDVVVxM3pRRzErQUU5NXliMHJvQ2daQWIwdVo4S1VkWUVNTVkw?=
 =?utf-8?B?TFNHYXhmUG9WOVVRc2Q4WUV0N3ZtQU1CUUhrL2lWZU1vK3RyQjJYTFlKM2sr?=
 =?utf-8?B?bmM0WHpTbUNIWGtYem5mdjVNUnhhSGxDd0dqVDhLb1FqTDQrVGoxaGROOW45?=
 =?utf-8?B?NWFoVmNTMm1zclBmSXQzUDcvQVArOExoTHJhTmRJREEvNzkvczJFZm8rVUt1?=
 =?utf-8?B?MzZ0MzNiaVFPdEl0K0I0SHRPZ3VtVGlPZUM1MTdIT2lsWlVQRXQ5SWNROHla?=
 =?utf-8?B?TDJwRzd1YzFqVk5xOHF3di9WOTRKdmhIZzQrbk9XMllSV0N3d1Z4T2FKZUZL?=
 =?utf-8?B?dXBhWW42VmU4MkVKQjFKR2FIVzBpc2ZXbnRrRjR5TjZuWWJmMjZYN0U2YkJh?=
 =?utf-8?B?dVpGS1BER0JBVTRySTlSWW5Od3ZUMGp0M1haTUJKU1BYRTZRR0JRbkhockd0?=
 =?utf-8?B?aU1ZTW9MaG1UTzFpYUZ3Vk9NOTZOcGk0N0RPMHk1Z2gzY3FFNW9pNDNIR0dZ?=
 =?utf-8?B?Q0ZnQVhLTUF6NTM0K3ZYL3dHVGdCcEw2K1ZMajgvQ3NoeTVHWFBialhYNVlR?=
 =?utf-8?B?VGlzR1BGSmpNc0dsMlNOaDFiR0d4M1NCWnJFTUg5RDF3aEFLVmcva0tPMkhr?=
 =?utf-8?B?blFGMU1MWDlHYUYyZm8vSkxwaElPaGg0Z3FkNkkvQ2MwM0lrdlVIUFYzbVFO?=
 =?utf-8?B?RUcvcWhac3ZnRHpQbE1tQmo0UkVlN3lQaGF3VHpuUGp0RG1XbjBkTUhQUzVz?=
 =?utf-8?B?dVBGYWdiTG4rMGlqanVxRnJ4dzh1aEQ2QmF3aGZxQmF0UjlZZm9UMWxhTzc0?=
 =?utf-8?B?NWowSlFhUVFveExSZlBoYXJmYXd5cGhUVGVHNU9CUWlWQzUxWHFHbGFGMGJk?=
 =?utf-8?B?cTB3QjViajhxbjRxeE1tcjBEcWZnTUI2aDF0OCtnQVpHalAvaVIydDlUMmhD?=
 =?utf-8?B?Y0RMQ1d4aXNpT2dZVGtmM293VlBONjg2bjdORkloQ3ZObStGeCtkdDJKU3FL?=
 =?utf-8?B?K0cyVFA0ZEx2Y0Jkd3VuWERtemZKSlg3bXloL3V6ZFJtTTI1dTBFamFLSDNh?=
 =?utf-8?B?TzlRWjliMXZjZnFFd2FWV0RYWVlSU1RrRDh1cnFjYU5UT1JGZTByRktLSGFR?=
 =?utf-8?B?WU4yQm5LbVMzM215UHpZcDZNS2hMNHFEb3RhN3F5SitWRUY5RFdGS3JTMEtD?=
 =?utf-8?B?RWhaVHZ6dyszQm1POXZmMVY0KzUzSGtPVEh5OHJJaTVvNVNNN1Q4ZkhyRlgr?=
 =?utf-8?B?NHJjY3pZbEFOSUw0U25YdGZIdUlFTjZMZEJTdFdhZHlxVXpOZVUzZ1d0Tk9U?=
 =?utf-8?B?UndFK3pDeDFmM25wSkRmU09NK3ZmcFRpNEgwVmt3cHdGOUc4NVhwODVIcUg1?=
 =?utf-8?B?U1RhdWxpSzJqMmlqWWwwUXZaK0ZqbFZvYUhTZ29NRXIza0V6TW92R040VEZq?=
 =?utf-8?B?aHR3aDZ5TEZQTDM1Q082Qy9uRVlNWDB0NzROL0JEN2FUS253S3VicCsyZThN?=
 =?utf-8?B?ZjZ3RHJMa2RQWGZXbExBSWROWWNqOFREM0tEdTFURFNHRzJWQkl5THFMWmMy?=
 =?utf-8?B?UjFhZU1uR3JoUzhRdlNudGFnUGE1Q21MNTQyb3ZJenpXTndSZlhPQStHRmdC?=
 =?utf-8?B?eUFkRnUrbHFPbnNJNmJxQXJqKzBuMUE3Y0FOZTBVbEdWQmU2N2FLT1pxYUFE?=
 =?utf-8?B?TTNrMDNmQjQ1NkkyS0M4RzFCQ1FIemg1eXZ6MWZiWGVEQW5ZQVJkSXp4Z1Bu?=
 =?utf-8?B?VmVTWk9ZTG0vZDd0OHI5VkhPejJScE05RWVjZG5hTVZza1U2SkNESFlkdmgr?=
 =?utf-8?B?Tmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 225368f2-4ad3-4b56-a691-08dbcc20a180
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 19:14:32.5407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sOi8er/oYdwDkjeZhQfX0f/3HWLFOGwQoRaQiHzXCMLnKAr838WJUc9nwDSpIYpPtw3r75ojpDXSB1C8p8nWS09tXwaCB+yc6bmJFXwGrPA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5610
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v13 4/7] drm/i915: No TLB invalidation on
 suspended GT
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
Cc: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "Das, 
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/13/2023 12:12, John Harrison wrote:
> On 10/13/2023 07:42, Cavitt, Jonathan wrote:
>> -----Original Message-----
>> From: Harrison, John C <john.c.harrison@intel.com>
>> Sent: Thursday, October 12, 2023 6:08 PM
>> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; 
>> intel-gfx@lists.freedesktop.org
>> Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; 
>> chris.p.wilson@linux.intel.com; Iddamsetty, Aravind 
>> <aravind.iddamsetty@intel.com>; Yang, Fei <fei.yang@intel.com>; 
>> Shyti, Andi <andi.shyti@intel.com>; Das, Nirmoy 
>> <nirmoy.das@intel.com>; Krzysztofik, Janusz 
>> <janusz.krzysztofik@intel.com>; Roper, Matthew D 
>> <matthew.d.roper@intel.com>; tvrtko.ursulin@linux.intel.com; 
>> jani.nikula@linux.intel.com
>> Subject: Re: [PATCH v13 4/7] drm/i915: No TLB invalidation on 
>> suspended GT
>>> On 10/12/2023 15:38, Jonathan Cavitt wrote:
>>>> In case of GT is suspended, don't allow submission of new TLB 
>>>> invalidation
>>>> request and cancel all pending requests. The TLB entries will be
>>>> invalidated either during GuC reload or on system resume.
>>>>
>>>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>>> CC: John Harrison <john.c.harrison@intel.com>
>>>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>>> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> Acked-by: Nirmoy Das <nirmoy.das@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
>>>>    .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 22 
>>>> ++++++++++++-------
>>>>    drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  7 ++++++
>>>>    3 files changed, 22 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h 
>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>>> index 0949628d69f8b..2b6dfe62c8f2a 100644
>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>>> @@ -537,4 +537,5 @@ int intel_guc_invalidate_tlb_engines(struct 
>>>> intel_guc *guc);
>>>>    int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
>>>>    int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
>>>>                        const u32 *payload, u32 len);
>>>> +void wake_up_all_tlb_invalidate(struct intel_guc *guc);
>>>>    #endif
>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> index 1377398afcdfa..3a0d20064878a 100644
>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>> @@ -1796,13 +1796,24 @@ static void __guc_reset_context(struct 
>>>> intel_context *ce, intel_engine_mask_t st
>>>>        intel_context_put(parent);
>>>>    }
>>>>    -void intel_guc_submission_reset(struct intel_guc *guc, 
>>>> intel_engine_mask_t stalled)
>>>> +void wake_up_all_tlb_invalidate(struct intel_guc *guc)
>>>>    {
>>>>        struct intel_guc_tlb_wait *wait;
>>>> +    unsigned long i;
>>>> +
>>>> +    if (HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915)) {
>>> Why the change from 'if(!is_available) return' to 'if(HAS_) {doStuff}'?
>>
>> I feel like this question has two parts, so I'll answer them separately:
>>
>> 1. Why HAS_GUC_TLB_INVALIDATION and not 
>> intel_guc_tlb_invalidation_is_available?
>>
>> Wake_up_all_tlb_invalidate is called during the suspend/resume path, 
>> specifically in the
>> middle of suspend.  It's required for it to be called here to clean 
>> up any invalidations left
>> in the queue during the suspend/resume phase because they are no 
>> longer valid requests.
>> However, the suspend/resume phase also resets GuC, so 
>> intel_guc_is_ready returns false.
>> In short, using intel_guc_invalidation_is_available was causing us to 
>> skip this code section
>> incorrectly, resulting in spurious GuC TLB invalidation timeout 
>> errors during gt reset.
> I'm not following this argument. If a reset is occurring then there is 
> no need to issue the invalidate. And the previous version was skipping 
> if GuC is in reset but this version does not. Which means it is now 
> sending invalidate requests to GuC when GuC is not able to respond and 
> therefore more likely to cause timeout errors not less likely.
Hang on. I'm getting confused between sending the request and waking up 
blocked threads. Apologies.

Okay, that makes sense now.

John.

