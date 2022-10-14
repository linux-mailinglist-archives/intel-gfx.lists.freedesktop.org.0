Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 717685FF5F0
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Oct 2022 00:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071FA10E0E4;
	Fri, 14 Oct 2022 22:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF6A10E0E4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 22:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665785305; x=1697321305;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=nSYd5+ApBo9yFPfHysx1uivCG5roke98PgRnsF91Vjc=;
 b=nFxLg32ssdSZ0e39EftxhlxLSk2XMVhJVVe3qKYQ0qAjomf19P5ueDCT
 rOAbHVPfDyI9xmjHaHCqdMoCG4tuFkCotnx0wZhmw22dArggjqOfuijS9
 vnVf1zfu4ng/jdDzu60yQW8WjP1c0ljOhJulzO1BI+RYyn2+YVzolLzUt
 ONMVnkxmF+jRNPDFXnIYk0ITBgWxMT+LIOiqmwbjXXUKDq/ESbzLhYpiu
 tCfV9KJt+i0C1jTowmUVy53hk5wdW7phMHbNARCkOpA35+hIQA02GB9YH
 Va3T2c49Q/oker0KABB86/wg+TcO/WhkNKY2DLM6FDnsjKGMl585GBj/V A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="332002887"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="332002887"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 15:08:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="630089033"
X-IronPort-AV: E=Sophos;i="5.95,185,1661842800"; d="scan'208";a="630089033"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 14 Oct 2022 15:08:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 15:08:23 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 15:08:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 14 Oct 2022 15:08:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 14 Oct 2022 15:08:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D/hHixSk3EcAG4EOjZgH7YdiMPHvfH5HMWdsbzyPW9xRi81xhJy6V2xR4THi2rwTmqy51flcPcPtUol9rhC6+NgkMj8GAFZno5WUb1uswoB8boCng4hIzpsMZXIPkweytSp0mMUpgNpLyEJ/zkYIpC+NYFEE+F/051CFZog5C5ea6pCcJWAvEHpyaV4QBRmqTFKP3BSdWQhDWHnGKQ+xdKFmzvYoB7tLXDjhkUuxlBxPsAOUbWc8E1rVob+207o/QBhUF62i0BQRfu8f5ekOTYw3b2FPzwG5D+B4fRSG8jUJf1BJZa6v7UZAC11oR4oQATAUYMdIYvz+19gbYMqbng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eILyXNrTWYkUtM0Tpvf/kUMvvU+ZGSAbkRCDbNlNN0I=;
 b=Y0B9NnhoaxkKxmRQvSC4/1LZWW+CO7CaK0TNixH2vb6WGf2LUA3mbmQLYvmE25jvHKRChkERUkGKUUKonoUBdAqD7TCluv+/4bhp8Gz2wcHCpvJJuBioDLQ2vYPkTwo8goBNXPNAVAGcjbsX2VQ9qmJix0i4/nmkGuW3yV2/R/0lUl7h5tmly060/wTkv2a5FU17E8CPGLIdiycVEvDp5Zcgo+M5du+PEgK0f0HvqLibyZltnU7EkIwVi7VQ+BfORMafEJalLDLIodA6COS3N5U472y6vJa8A/89O8v9AAH4/ZovlmW45osDQqkytJhA85iVTku1XrwZ7VK3yA46zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN2PR11MB4645.namprd11.prod.outlook.com (2603:10b6:208:269::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Fri, 14 Oct
 2022 22:08:21 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10%4]) with mapi id 15.20.5676.031; Fri, 14 Oct 2022
 22:08:21 +0000
Date: Fri, 14 Oct 2022 15:08:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20221014220819.l6r4ahndslsrlvmn@ldmartin-desk2.lan>
References: <20221013181426.306746-1-jose.souza@intel.com>
 <e77afa6bebf276952ff6750b7e8ac99623a7da92.camel@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e77afa6bebf276952ff6750b7e8ac99623a7da92.camel@intel.com>
X-ClientProxiedBy: SJ0PR05CA0185.namprd05.prod.outlook.com
 (2603:10b6:a03:330::10) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MN2PR11MB4645:EE_
X-MS-Office365-Filtering-Correlation-Id: 525c8690-6ffa-4e10-e265-08daae309b20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jN0+YT/0nq4In8X8fjJMc/zonvDpT4frK8WbJ+mNK/y9qETgNxf4HGi+s3cUC6UFoeKMqctTtIBvUs/iMb7TQNZtFG1SND2s0KLF4isV50efU3yLxgVETmuQyiA0x/XlTR+HFolZ7gR1e2ZDQ5ujEzkRSY9H+Cxek7nIX8AIIVvbDckRk2FNik1r1WYZRxwBmQWmy3UvHIuOW+OK4/43jv6us9gXTEMGvoBk01hI9jmb5OaiZDqZctJpyPPedo/xD38PClz9W2V/WTIjrZy8+Qn7ng+1Pu65RsQWmaBU00cMyADI8bT5jkw9cvuBwra759vPQUDLdwsTkT6cvKksUOfEfsytvPak8819nNjxRsGADOMCHlnc61+htjFntjE5nBWyZuAzjoO8znx8/ipWiad42FC8OvHfOADC5gN8msgUg3aH71CRAa65bLA8Ly91oiZHNXNFqqy5ejbxvVZfD8estT+3Ie7qLGsZqSdJS0SgzH+izfy6Mq8hBwXhEKBg7GmXlsHxXfmm6uM53fMLnZem6RiYDeV+8vv0I28vG2NrJ8rlVqgiQqcSpjHsyCHgO8vIB9lwpYX135BcR1cSmDiw8ARqiJLQS/P/WUPr4TjefcvRU1zHiqrkHUxlgoGyZ/rUR1OduBPWPz0ALJJfFuMO9eMiLgm/+m3kxAXebF+t/9ehz5hJAQsaaVgMmUJERBJsEMz4tmxCC4vlMXhSKQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(396003)(136003)(346002)(39860400002)(451199015)(6486002)(478600001)(6636002)(83380400001)(4326008)(8676002)(316002)(66476007)(66946007)(66556008)(86362001)(82960400001)(6506007)(41300700001)(9686003)(26005)(6862004)(8936002)(6512007)(5660300002)(36756003)(186003)(1076003)(38100700002)(4001150100001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amZXYjFYT2FFWCsrUkJaZjRLY0szZE5ZWURZeUM4Rnp6Tzkrak1wWi9SY0RZ?=
 =?utf-8?B?ZVRHYzZkekd5b3hnZGlVbExwWm44UVlPMDNBUzhBak9la3FTOXExR1IrbFlH?=
 =?utf-8?B?cVM2a0hYOU1UV0RWemZteGNVeDBhL3hNek12Um04L3dJVm1rMHdaVmg1QXAx?=
 =?utf-8?B?ZWVJU3NueVBDNXpjRGFMUWRseHRlaDlCRjFjeVlzSEhGUW8wWTFQKytmWGZq?=
 =?utf-8?B?VE9VS3N5NmdGaUZwQmhmRUdRaUQzaUdIWUtmdisxMHVTdGtnaXNqN3NZVUtp?=
 =?utf-8?B?dXVDY1Ryd3J3Y3ZsRTdIUlNuU29aUkRKRHZSR2FLWU54K0RUTjhGUG5pUjZh?=
 =?utf-8?B?cHorL3pWZ2xiNGorRVJHaEVsQjBIRU9rMTBCN0RVekRSaVJtcDFVa0xtVkhR?=
 =?utf-8?B?TlcrUkllamNqNnhFZXd4VVZrWjFqc2UyOS9GdHhEM244UjdrcTE4cTNaRW45?=
 =?utf-8?B?aTcyeUo3Q2szWjRKVDVaMG1DcmpaRE9uZGN4UGtTWCtGOWlleHcxNkJ1WjhG?=
 =?utf-8?B?YjF3d0xkUnNZVTRlL1hQMXd5YmpEL0VmWVcrT2d6WWtPdy9WS2NMcWxaMEo3?=
 =?utf-8?B?MWJ0ano5b3lCTHlTUCtlbnN2cERaN01tZHpLVjFWSm9WUzV0UC9kZVozSXRJ?=
 =?utf-8?B?L0RaQnBoVzRzK1AxdDNpZzJzZERqZGQ4MnhFSnNWdHZyZ1ljQlBYY3Vvemxh?=
 =?utf-8?B?SjBoNk1USDhIK0VDbFhPUnFYNk9KTmdySVdPNUhDMXd2NjdLUnJLZXIvNERC?=
 =?utf-8?B?NDFhRDdwVklWWE5kYllveHhNWXhjMGt2cTVJbHIxZ1o0d2RZU2toclYxTVI5?=
 =?utf-8?B?TkRaU1ZWWWxwOG03cW1qazY3YmVFSFJTNkM4RzJENGRqS0RUU21Qa2tvZ2lI?=
 =?utf-8?B?M0hDRlJsNTV6K1AzMU5QOUR3TW40ZURvaUlmODlRYXJvQWJ4Vzg1cEFFZU9a?=
 =?utf-8?B?bU45WGcxaStwMGhCSEtDODJxbmk0eHFtdlRxaHB2Z2MvUG5reGJtaTRCWjJ4?=
 =?utf-8?B?UjhWMnY3L01qMkZod0MvdkZRQzJWOUkzWjYrT0QvVTMxZ1EzTEg4OCtxS2ho?=
 =?utf-8?B?SENzVTNRZkppODdDUU1qUXNOMDdPNGkxY1U4LzhEemdjSVFOQkpPWFRvakVr?=
 =?utf-8?B?SmJFOWlERlFVL05yZjUzTmc1bndzU1VvZUNMcnN5aFBpQzBYWkl4bE9jTUIz?=
 =?utf-8?B?T2NPQUdrV0dRTjdrRG1EbU9UMGt5QkdPM1N1ZkwxTXFMZ3JIYWdqZzNTeU5T?=
 =?utf-8?B?SkVLcWpHTUZqQmVXbzg1ZXBmZjIyK0Q0b05SYll5eEdWUlQ1NWkzZjd1RGJZ?=
 =?utf-8?B?SFZSWGo1NTltVWcydnp1Z3JydkFnRnFCaGJ3bU5MT0Z5SlIxZE1sUUU1Q2RT?=
 =?utf-8?B?N1hQSURmVEkvV0VjR2lub1JNRHMvQW1DUjk1OUlBVWJFTk01RjQ5OHlpSDkr?=
 =?utf-8?B?YXBBK1hUanlSak9RRlU0TFREOEoxWVNidEQrU2daOG4vQldaMGJLSmQvRTRI?=
 =?utf-8?B?YWlxdGJJbjkvYm5RRWV3cXdSOU9YYmdLTEkvZzBwVmk5VjFxTlc2N3Z4K2RN?=
 =?utf-8?B?MzRleDlpckFNb1B1NnkrTEtXUmMxQTdIZFhLOXdsdXBFb3BLQmg2WGVTam5z?=
 =?utf-8?B?OE5lMnpGSDZHanhEcC9sY1hsTXVFWnNndXNGclIwQzhyY2w4WTZNSjNLMitq?=
 =?utf-8?B?NFJMRCs5Vlp5bTZJMDE4VFRyUlNpTTZMZ2gvNGtBSyt6WXRlckU4M0FVMFlS?=
 =?utf-8?B?SHc3aUErd0xxZUpNSHRQOXIvcmFCeGtBblR4eWJ3bkNGQWxCZ2EvQjdJS3RS?=
 =?utf-8?B?K2pYdncycjhJNlBST3J3alZuaVYzK0doR1F6eFFRdFE5RlIyWkJoaU1IQjJm?=
 =?utf-8?B?SE1ORXd0b1lqL3doWnBoNDljeThxdVpWb0N1eFNZNGJyZTVnVmpHallvTkZq?=
 =?utf-8?B?VEU1L1JCZEYrMENGZXZZUDNpWml1ZkdramNlYkRjeGlxWkFWbGJyVTNMc0hx?=
 =?utf-8?B?NWhndW1SdG1EckZ2clpNZGZIQ0x2Q0V5Y2o3UmxMYUNyRUlZYVVVTlZQMU9W?=
 =?utf-8?B?dmJhVUZKNmUwN0dPRE5JVGkwMWdNRzVyNTRmYWlyMzVPc3FBc3RXZXFrZ3Nz?=
 =?utf-8?B?cFoyeWpxYnNrS2s0eEpKdW56RzYyWVMyNFgzcExhUHgweThvTjVETkJJaXdw?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 525c8690-6ffa-4e10-e265-08daae309b20
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2022 22:08:21.3132 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 15b0oLqbkp5roa5ueYfvDGvh8LxqkDAINIzNq3UCpIV+HYzhA9YZ2DS6h9V+0awKDs8/68Ip6NW+UNudZohm1rCAYzKWkPIIEZ6jZ603DeQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4645
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915: Extend Wa_1607297627 to Alderlake-P
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 13, 2022 at 06:23:07PM +0000, Jose Souza wrote:
>missed the "drm/" in the subject 😛

with that,  Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi

>
>On Thu, 2022-10-13 at 11:14 -0700, José Roberto de Souza wrote:
>> BSpec: 54369
>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index b8eb20a155f0d..e1d5df3a5756e 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -2300,11 +2300,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>>  	}
>>
>>  	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>> -	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>> +	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) {
>>  		/*
>>  		 * Wa_1607030317:tgl
>>  		 * Wa_1607186500:tgl
>> -		 * Wa_1607297627:tgl,rkl,dg1[a0]
>> +		 * Wa_1607297627:tgl,rkl,dg1[a0],adlp
>>  		 *
>>  		 * On TGL and RKL there are multiple entries for this WA in the
>>  		 * BSpec; some indicate this is an A0-only WA, others indicate
>
