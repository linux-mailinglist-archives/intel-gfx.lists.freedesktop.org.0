Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF735533799
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 09:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE4C10EA66;
	Wed, 25 May 2022 07:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B3A310EA66
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 07:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653464734; x=1685000734;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q1jUN4nuWl+x6sBZXPg3aORMWSe0JRhyMfkJBAkostY=;
 b=jZ/pE9PwTspyOqoWK5QoTt3ZB5kgAD1QqjI9nJ3Em2Mqgmgapc1n3u2U
 tyyM6+zhIEpvEgIm4xDvFiep2EWx6MlNSwOpArxhuoA7Pg+JJRsGMQ+c3
 kOuS+pvgcDLT7cApeKwWhGMEOxq+kSf/BXeBSQ2mUlkbTVpsIj66V2Djr
 MS5jRZIwXIxm8pvSLgEjTO5eNa3XKgcYgDzatAiX8sE8iHU7VfSIgb2of
 nxQhqz0l0jwbCkm/JPWw2CegLycX6ycAAwxkpKiOYb4UzkJjZVPqI/6fy
 qi5Fxr4sFDTWTF3a1JKPVNd0kZ0FMwUUUwGePJi6iW9w2TZapFryZrGSN g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="271320713"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="271320713"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 00:45:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="676760660"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 25 May 2022 00:45:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 25 May 2022 00:45:16 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 25 May 2022 00:45:16 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 25 May 2022 00:45:16 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 25 May 2022 00:45:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bner8exJUFRxSoVc1d2d8kGrybV99chLtmcBTG15fsR/a9EL6XTioYTGrk5ymQouKSenmM+UzqllFw2hLAJChRA5yyrXUxtx9xrFBlaxWhDGlpZVVYg7O8fm++w6b+avD9eoUmZk//RvmtTjlkKakLbqVxSTfPX3BuAUR3JGuY9toabDtTdipvtLyvj8PFhTmkYNHvSZhuxWG9blrEExozA9Ecs2D7tqH4yBk2jcgvHAk4ESGialjUURRkVF79uuwy1YNoPuqYtT6+t8zFLCMI2sBIoe5T9fS6ANwOGqdtHz9s9rmjXudDYJEkOyeImTvH02xim/K4vlsBcWlVKzxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/65vuBJNuux9Lp0vDRNEid0+cJZBmMqzKyrBOI8vCvs=;
 b=FkWPgIR56Npb/8d559Xq6zwWQgqj5k1cDcg/hwHPfgOwrg9kQw0kcbDfdjdnuBeq1sS/l7WWvZoRKQ3BBElvToAJGdHOXoFV2UtnzVtDIv/IjsVCo/dweYcxeswP/h6GLnwApKnyo5eM770wn63CmVzomxQRTwT6yqznlql9Df53+tUhKKWU/TpZsY1A9JITloDY68JTy4mbb392JOg6Iws///HmkXj73r/Fe+leWX/VBJRorr25Vfs29UimUALp5NVK61nUPRL0xe/86JYzbqMNeanJkhllrQM7AqdxHL7y95mXZitMHRo4GjRcJwHfFUOknorgvUUB/uTT7wp24g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN6PR11MB4066.namprd11.prod.outlook.com (2603:10b6:405:82::34) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Wed, 25 May
 2022 07:45:12 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::3c23:de89:27ec:6156]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::3c23:de89:27ec:6156%3]) with mapi id 15.20.5293.013; Wed, 25 May 2022
 07:45:12 +0000
Message-ID: <56d4a7a2-81b2-bb0c-f4d5-459513412af5@intel.com>
Date: Wed, 25 May 2022 13:15:02 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20220511083121.3729202-1-ankit.k.nautiyal@intel.com>
 <YofqGVyLsHVFPEQo@mdroper-desk1.amr.corp.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <YofqGVyLsHVFPEQo@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0120.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::35) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ffd43e9e-3a8e-44f2-e162-08da3e227feb
X-MS-TrafficTypeDiagnostic: BN6PR11MB4066:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BN6PR11MB4066AAD0C377D78E2BFBC80ECED69@BN6PR11MB4066.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UiNQWpvukBdX+ohP319tXIlh8kMbQEc2pW/tZ+qE3ftPKSig1K+b43a9aELJ3yWX4LDtftV1crYxkbHZ2MR1DDwnjRsRZNYRGBxyZmn60YD86myTzN5oqMtgKRud7qM9bvqS1XICUmOnqKeD1QMjWg6/Ik39PZmXCQxD5PhruiQTF893zOAfMQVfxG99YbaD2FQWduL6w9XxItkXCj3GvILJfunx/+PrPOllx/8KD70LmRjo86bJDUI2i6HrKacDacqzLU4ZIHbpvSyYntsfZ4EFQVAsK0YtwCVLeT54ytEVzNTEXjoMSOqogrZj1FoztKvjubBuB4XDbIJMAEuNV8l8zp+QqBs+PCQniqQD0RlIFSYJNO8cLWy/M6jq+e6ndXSeREW1nTIXLzDh5BOx3uvJtZQyt1DDu2G9y9ATKq6khWNA1ZObVDa1GV1AbotKk2ZI2SbcIw3Nk+CXJ8o+vpln3NbUvIM2BQkRv6Mbt9xqDEUBd260qRd3s//5o20crqTR13sZJbL3ozeHWT0XWfPE5dJym0dhyi+Kew8BKjuRPKWexWw+UF74Wf3fPQg6vvDh/h0v462ZxgprfVeKPPL1ytsqjUcmjQr8HgVZwlrvzUlwnFbxpxYLQw0ARHXjZt/uThpDq7rY7V7DUNOpSahp2nuBgc/z/HK97yVRLW8sdtHmq1gSmbScKj8f66Fbg6VYKpWSuqVEjw9CV6PjGQnUCGpvupCU+Wf2VaXbBMk3Mm7p8Qn8a/dUPlGSOeIF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(37006003)(186003)(107886003)(2616005)(2906002)(8936002)(6636002)(316002)(36756003)(38100700002)(31686004)(83380400001)(66476007)(66946007)(26005)(66556008)(6512007)(6862004)(4326008)(8676002)(5660300002)(55236004)(6506007)(6486002)(6666004)(53546011)(86362001)(31696002)(508600001)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVpuOUxVSlJkV0Rnalg1bVpBMVVIc0V3am4yeEdORk01M2JlQzdqZ2gySjhI?=
 =?utf-8?B?ZGxqUUE0NXQvSmp6SHh6NkF3RkZKeHl1YnVNejJHdkF1cW40Uk5DWC9jTUZF?=
 =?utf-8?B?WnppU0NNSWE0MytvZ0p6d0s3WjllYVNuTVpKUjVxUmVtaU54dFpNZi9odUZ4?=
 =?utf-8?B?enBPNUd2YThLVjhwbWJuakdOQ1Q2VVFkZEtYMzdkWEdiQnR6V0lqeEdsN25j?=
 =?utf-8?B?UHd5TDFNL3BmUFBoRTVpc3huMWJRWWs1YnhtdEtZaTJkclhoSngyTTNNN1ZQ?=
 =?utf-8?B?cXhqL3hnWDlYL2Jhbnl5SmwwS3ZSK3RHaDhLMnNNZGJ4M0FYejgrYk82V1Ru?=
 =?utf-8?B?Q1lpWjAwdWVxREo4YXhCVXVodWN4b3h6TnBHdXM3eDJ0dktacStVUWdkWkhR?=
 =?utf-8?B?WlJrRFJka2dzRzdYNmZOMGs0U2dzSWIwZ3dNMGpnL0c2STZWNlpuNE9kUG1s?=
 =?utf-8?B?VDg5bnhudEppUndRRzdhTEJmSjF2WHVYZ3B2c0ZkVnBNV2gyN0xNS3AvNHIr?=
 =?utf-8?B?bzk3ZE8xeWx2eVJxQVhHMS9jdEJ1L3lSM3FWUVV6ak1TTGFDWlNnNjhvWWcz?=
 =?utf-8?B?ZmU0c21jMC9VVVJSZEduNFNHeWVJMDRwbGtGNmx5VWRxVzNRbnI2WlJBZTZW?=
 =?utf-8?B?UHpybXIvWTdOWjBoMmhCRTNRV2JMSGoyRDVuTlBuSWhwck5JaGxqdDErdGRX?=
 =?utf-8?B?TWtGWjBUNUUyZTlEYW82MktKSjIwWVhSM1hMUVpKb2NHcHo1Rmk5dVFid1Na?=
 =?utf-8?B?V2s3SitIcU1GZU9Fb2xucmVCRm1EQXhsOXdtSDE5K2FhS2ozMXNwNmdqaUlQ?=
 =?utf-8?B?UHJRKzVhMGY0aEhJUTg3SCtNSUZVOTNEZXhsZndLRUtlNmVrNWtXTGoyRWdl?=
 =?utf-8?B?b3NiWjBhN0F6Ym41YkV6UmNiQ2cyU0NlbGJBN3dOaXlPMXdtZWZlSmQySHJ2?=
 =?utf-8?B?L0JaWVI4U0o1MFJ0cjRZSHZwL2pkWHVTTjA0RnBXaGlMcVlvZ1Q2MDZkZE1l?=
 =?utf-8?B?OHMwUlZkbm13bTh2QXV6aDRjemt1dFRNdENjN2lZOVlJNXRJS1RBa3JWcjRQ?=
 =?utf-8?B?SkVUbVluQjdXUWxmdjltWVBkNkZMajR3eitLMW5ENEN3c2xUak1PL2V6OWhD?=
 =?utf-8?B?anQvMkYzRDg5RG9OY1RSeGxQOWNkZzRRNmlCVHJ5dm9EZXJ6dDJQQjVEQjJJ?=
 =?utf-8?B?ZmNTV25KdlY4b0dYNkZhYUlDT0M5VnBvaEllcUMwZ2xmYXRQRlBEZ0E1UTB3?=
 =?utf-8?B?MjRqeGMyS2laN2tnWlRQM3FjZVFCZzN3S2JRU3lwdzdEQTJXSnB4UUM2SXRS?=
 =?utf-8?B?S3gxMStxZGVZTVM3WDYwcm5oWm0xcHltTnNtNjBXT2xCc0lIbWNUa0w2WUdv?=
 =?utf-8?B?N0Nnb3VhZ0hPbnFRZUxtVzJwWEV6QlZMM0pDWlZ6NENwcDUreTQyMXBRUldT?=
 =?utf-8?B?VWFvRUNOci9YRUdTOS93R2VuSkdBc1UwMEhEZGdWZ0hxK1NUUGd1S0dXbWpx?=
 =?utf-8?B?cXZXOWFmL2NpR3A5SjhNaklvWWlFeFZHVnlCV1dOQjUrdGdtQmlPOStNdzVx?=
 =?utf-8?B?SXVEYmRpMjQ4RVQ5MDBjeWJ1TEdQV090MXhMMHRWcHRmWFYweDVvWHNnbGdV?=
 =?utf-8?B?WkE4TjdLWFlVN1NKeHV4Wk4rYkpJeUZNanZqRm5ONE5xZlpORG41ejhiamhD?=
 =?utf-8?B?cXpkQXVxc2hrek1ZaExtVUJRQStraURuZjBJcFp1RnE4d2NPcnVvc09rNG9n?=
 =?utf-8?B?dSsxUlIwZndWSlhRT3Z2RkpTT2NjRHlhMDFtOG5oYlJZVmhWSE5Cbmt2WVVP?=
 =?utf-8?B?eGgxR2dXMS9zVkJpcHN1T09wQnVLdjZ2MWlQTUQ5UFAzbVU5SkdqLzJidlZU?=
 =?utf-8?B?TVNnaXAvQy9hdk9lTWFVNFlBUGxmV3VzdzZoM3AyNlA5THo5OUJDVlYza21E?=
 =?utf-8?B?VTlWVzUxNWc0NTc4SmIreHJ5VzRNN2Q3UjBNSHMwTmd6SE1WczNwOUlEYmlR?=
 =?utf-8?B?M1VrMmZuOU53R0RUcXQvZlo1NUwwYTU2RCszL0k0NVFNa3p5NWUrUW1EMDZ3?=
 =?utf-8?B?RXZxSXlBaTU5V0l5RjBkT1VGc3ZsVVppRHQyLzUrRkp5MDZ1UmVQSXoxdnBa?=
 =?utf-8?B?WXppVE5zcXJtYm53K0lDQUsyNlZHMFQ3N3doS0g4MXpIemh3NkJoTWQ2bHpG?=
 =?utf-8?B?L1JsQ2VUazhuNEx4TSt3dGkxdzB3NDdqY092MnFVUmQyaE1DazVZR1Jrem0r?=
 =?utf-8?B?azhvY2djbkNOYityakZhNW5GTkExNEh0WUVPTjZneDBWTkR5ak92alVZeXd3?=
 =?utf-8?B?UHUyK2hyVEpwWURqK3JONG5JeEc5a3pPbXU0T2NPcXpuemRNRnR3MjZvWFNF?=
 =?utf-8?Q?ccAQeTX0+Vg+xfMo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffd43e9e-3a8e-44f2-e162-08da3e227feb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2022 07:45:12.7008 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L8QLCKBHSF1kuHoVXxfC1vX3zzhi0b2zlcJUHDHdAME9OVgtXn25DrLjbGJDm2qql5XNx5oy7/PlKgEOaIJGuUI+/zFtoFg2W4O7QbS5q9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4066
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Support 4k@30 on HDMI
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


On 5/21/2022 12:50 AM, Matt Roper wrote:
> On Wed, May 11, 2022 at 02:01:21PM +0530, Ankit Nautiyal wrote:
>> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
>>
>> This patch adds a fix to support 297MHz of dot clock by calculating
>> the pll values using synopsis algorithm.
>> This will help to support 4k@30 mode for HDMI monitors on DG2.
>>
>> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_snps_phy.c | 31 +++++++++++++++++++
>>   1 file changed, 31 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> index 0dd4775e8195..ec1700dd3bc6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> @@ -517,6 +517,36 @@ static const struct intel_mpllb_state dg2_hdmi_148_5 = {
>>   		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
>>   };
>>   
>> +/* values in the below table are calculted using the algo */
>> +static const struct intel_mpllb_state dg2_hdmi_297 = {
>> +	.clock = 297000,
>> +	.ref_control =
>> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
>> +	.mpllb_cp =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
>> +	.mpllb_div =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2),
> When I calculate these tables out by hand, I also have
>
>          REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3)
>
> as part of mpllb_div.  Can you double check that?


Thanks Matt, for catching this.

I did find out that the dp_mpllb_freq_vco should be set to 3 for 
SNPS_PHY_MPLLB_DIV, as per the calculations for 297 Mhz.

I will fix this in the next patch set.

Thanks & Regards,

Ankit

>
>
> Matt
>
>> +	.mpllb_div2 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 86) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
>> +	.mpllb_fracn1 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
>> +	.mpllb_fracn2 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 26214) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 26214),
>> +	.mpllb_sscen =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
>> +};
>> +
>>   static const struct intel_mpllb_state dg2_hdmi_594 = {
>>   	.clock = 594000,
>>   	.ref_control =
>> @@ -551,6 +581,7 @@ static const struct intel_mpllb_state * const dg2_hdmi_tables[] = {
>>   	&dg2_hdmi_27_0,
>>   	&dg2_hdmi_74_25,
>>   	&dg2_hdmi_148_5,
>> +	&dg2_hdmi_297,
>>   	&dg2_hdmi_594,
>>   	NULL,
>>   };
>> -- 
>> 2.25.1
>>
