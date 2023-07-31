Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A3C7696EA
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 14:58:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 467A910E28E;
	Mon, 31 Jul 2023 12:58:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 107FE10E28E
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 12:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690808318; x=1722344318;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=rnQacbdz/nEnU00oUDDHSfRwMXo27gXczo8SzcXH25U=;
 b=TE3XPAS+9tLbKAXyPdF0naQe3J+d4jkUgA+LJ6TJ7R2yOVgftT/+f2Yx
 M5kLs7e4KDtJRndPEi9hwiGjJVfo8DjmUKuOmX01bE4sm0Ju06NCi+BYJ
 j95DmMBlPjvDpf9IP9QFL+pjxitfkcHurM7T9MeBT8WuWg+i/siG+lcAC
 aplwR+YA37Qx29NpTxNksIJ7zOCwwkLGfjAuJ5tTcVPXaMazxm63cXeqK
 dmV6WOAb3h8i/6m6R1/Ta0OfgCzZb/z9DoaOKtM51MKn0+O1T4kr9xwqr
 /r+rcSpc6BUysU7elktau2rmqpSKaFSExwEHne0P6QUQ+Z9jBotE/31h/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="399958162"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="399958162"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 05:58:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="757938703"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="757938703"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 31 Jul 2023 05:58:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 05:58:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 05:58:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 05:58:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 05:58:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PPGRqslI+Y2fesrtgdz/Q1ePiekR+zw1WjsBchcEIk06/3RC6J1RIRO9MsRJGjxzhPDASCdr9ofz1OHSrUOAcoy8QKzVLZPtZepSyEYgB4BOXNbNY8y4FWTR6DqSF0/c3YTN90gMdMLl3tq0afkpFH4xYRBLiQ0h4ggaWqi3Qr1DeKcoczqGDXElzkmYD83e0/W8qHY6kXQ+rfpVyhO83S3reh8IZ2zDjA8EFmL/WyMH1K3bDVPvLMpyG0JT8lqMzFH/07hNMcUNsqzhZIKBNm8Q/QeP9MZRJuXhhNyUUfl1MsZXxnEXSFdEyPb1IjIFVNnOTDnfK4dDqNOKl3iP9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BH0Hm7JLYtIiuiin/zGdjT1YK0F77JyAvySzkMMF0mc=;
 b=L71Azy0U56sEFapdJ868nxPrDHqX/abPELOtU4kWC/98OivRXc20cplSWmGeRrUew292073PDw/YxMi8Z/k8l8ykVKedyX3muLF6i8mOXtDqasfJHknn8IE+xzFsFEXyYdKZlWBq5HPGDwoD6OGaQhbdLR20mZqFxmz4cib2vcIcTbLQGNIaIew0Lpa7L2V019XaeXhh9KA4CiPdZwV7dvF2o4jAj5QYSExHUB6iYRRbKjBWsuSYLAsNg+l+DDE71iHjjgWpAw3p7OZzJReNsdlIopQirBX+NTwmfmlHuEF1CZYymRUWII7NHDdwJgFKE1Ktq/JeqEtXKDKYGMX7yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CY8PR11MB7339.namprd11.prod.outlook.com (2603:10b6:930:9f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Mon, 31 Jul
 2023 12:58:34 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6631.039; Mon, 31 Jul 2023
 12:58:34 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <877cqgxryr.fsf@intel.com>
References: <20230725212716.3060259-1-gustavo.sousa@intel.com>
 <20230725212716.3060259-3-gustavo.sousa@intel.com> <877cqgxryr.fsf@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Mon, 31 Jul 2023 09:58:27 -0300
Message-ID: <169080830770.140656.12479044792983753457@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0289.namprd03.prod.outlook.com
 (2603:10b6:303:b5::24) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CY8PR11MB7339:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ad10108-e7dc-4d76-5ed3-08db91c5d905
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kP3fIjgpMCdA0zlHtPb8MpFm6fUjPbFTGDRP4QtWDEnfEG0vhKMUSsWWbpRjiABDDSfT38sgxxvLZi8FyMS/NZRVaIG1tzMFXAoWuavHkTjJRmCYJzxR5wL/IiMOSKpqZLUdb9NjyYFwp7OtqhLnBbvf8M3ZD87Lt5slkbCnWbAdLrqcpvLVSJoWf1jyDRHTytPEMWnva44e3aPpGxHftcY9KqKWycqntm/oRnPe77+vsbFA3f1kwJ7ZSg/0xV6PvwmluNG8baezgAcGeQzLaiFGB6CH/CJ2gQKWAf6d8kk9Y5tp+K2BoDk7YDdebGaeKDEYjYYAD5Xv9RjyM0RjiGfIcomjTCh6dfVp9A6Q/zPpfpjzvrZb5zqrCz2D5w32dKR1MZCPjVpTyKTZqOFPOGd9SOP0FWiIzU9tYuesT5tsd0mxijp1J3SpyYYSHFZkB/T5VvvkRjYxgN74SAl/1/ia23ZevakPsgqMe6toxlYDTgaVODcDy/5/qsu4L54C3uV+97/QIQDqL1mJ5tzGqdKOFfXSugvSHeXhz0Ioy3bktONGJSEaFcwfgt54Rjcy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(136003)(366004)(376002)(396003)(346002)(451199021)(6512007)(9686003)(6486002)(26005)(6506007)(83380400001)(186003)(44832011)(66946007)(66556008)(41300700001)(33716001)(82960400001)(86362001)(66476007)(316002)(5660300002)(8676002)(8936002)(38100700002)(2906002)(6666004)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlNiclBsaWNnUVhTbWdmSlVYR0dpL0pLcFVWZ0wwQWtTalpkS1J6V2ptWkxv?=
 =?utf-8?B?cC9YVWJPcER5S1o2Tit0ZU9PWHdDOG14RmcvOVd5bHhZTmtEQ0VZZWRPQkk3?=
 =?utf-8?B?eWJjY0cwdEw2ekFjaTByS3pvOWo2SUkzTkJjeGEyeE9LWlVmOVVPTFNEUDdn?=
 =?utf-8?B?SEF4YS9KSmVJOFJFOEp4cjU4SVp1aFhuajZTbVBLcWg2MVp4S29NOTBhdTRo?=
 =?utf-8?B?Z2djTmtETkxzWnVETkdxaUs5NWdxRzJGaG8ycmp5MHlEcFNwaFNxSmhVOUEw?=
 =?utf-8?B?d2ZGdDcwUitQVUYybkhwRGJzTlpKZHF3aEYwUkxUVWNXSmtXOEduYXkzNmJz?=
 =?utf-8?B?RExUZFk1RSttZDJCVWdIMFFlTDJpVEVrdzhZenZTUFF4QzBwTDNKVlkzTjVC?=
 =?utf-8?B?QktGVWdvZzQ1VEFvTmFpWXpnUzBsUTVhS2h6MzMzWjBiU3NRckNYSEV1cmpa?=
 =?utf-8?B?YUdqd3FxRkVPei9QdjA0cDh4V2lURloxTXI2dVFwWjQxY3h6UmtMRStMeGFK?=
 =?utf-8?B?UnR5cUJSbkhiOWNhdmd3cGhBbXhTKzRzcEZmcHpCY2pZMitva1E3KytJN1RB?=
 =?utf-8?B?M2dvSUdxNjlDc2RIY3BkOTI3L3hoN2lxZDhodm9MZE9ONUMvZFNCc3VNaDRI?=
 =?utf-8?B?WW9JRGc2WllsV0Fvd1A0bXZBd1pVcVREaGtFeDRxS1dSMHkzc1VGc3psTmR4?=
 =?utf-8?B?TnUwSUZITHh5dXZGdWxWWkFJcTQwUzJ3aEtSaU8yYkNIaDlKRlIxMTdRSUVL?=
 =?utf-8?B?SlFzcWZvZUo1SjI0bkE1cmdWQkZKMEE5M3BIajFHdUJRMndMSUtWcHMya0dx?=
 =?utf-8?B?NFBVY3loMmVIeEVmR0xYR0I1c3hGUE5QNTBPbHcwMUg3QXE2OXdmdHQ4SldC?=
 =?utf-8?B?cnhVY3BnZ0lzODNMb2N6NmdTMnZMU3hxSHB4MHZ3Tk1zM3hNNWVnQmd2djZW?=
 =?utf-8?B?R0lhbkZLaFJQYTVDSlBqTXVVQUVVQ2JWREgrek9WZ21TK200SGFpcTdZTExL?=
 =?utf-8?B?bUdsZkZMb0VKWElrRTRKWkVpMEdLdTZZdURuc0NXZnNIWUR0M0FXbVFJYUxZ?=
 =?utf-8?B?aWtUSVFpREQwZFA1L2Y4cFZpMzlDK0VxMFpaTEEyb3ltQWsrcTRlNjdrM05w?=
 =?utf-8?B?STc1REQ5VFo5RFNMcEZ1SlpqNnd2R3pCYWRJYnhIVGJDcDZEZHV0eDQ3QjRi?=
 =?utf-8?B?K3ZWMm50Sk5QMVl6aDNmWGpTcmdIaCt0N3drRlRhd2Z4NWRTTC91QVhrYjdX?=
 =?utf-8?B?Y21QcXNueW9ZNm5JdDE4S3FxTUhSbTdZbW5zOVVnKzkvWW1KYlpBTVFXbUlI?=
 =?utf-8?B?RWVsMjQvYk5hTEZpVVhlSHJzR2V0R2Y0MDl4bUVsQlNDdCtScTllUGwrWFNW?=
 =?utf-8?B?ZkxaZ2FhY3Q3Q0R2d0ptMHh2K05oZ0ZFOFZldjd4VXUzbTdRMWFGRWpFbVF6?=
 =?utf-8?B?NmlqNXVUMTVLRE1tbE1tTVZnZ0ZldGFjbnBmUlNNdGtsMUprNWVJYStjWHd1?=
 =?utf-8?B?dUFXVTBqZlpYVE9PUTZSSVpDNmhLNjlReTZadlhjVkEyNFV6c3VzTjZPU0Fo?=
 =?utf-8?B?VUJIblFtc3F0VElLOVBBL2YvRG9keGxyZTVOd0I2SFRNODJETjIwNGZPT1Fm?=
 =?utf-8?B?WVdsOUVYQlFBSTV0c3pCT0FGa25YMU94VGU4ekVDZHNtVlRaaWh1Ykd5Smt1?=
 =?utf-8?B?NXorUHd5VWlndElRaitpUGlSUTJ2K2M5dlF1Zm5tcWt5eWtDZkljK3hLcTdo?=
 =?utf-8?B?R3YzYlgzZVlFRnpnRHQycW55RllDNFd3Y3VnRUx3WXdQSnBHTnlTcE1BQzRz?=
 =?utf-8?B?dUdQTXZidTExMWZHZzZiV2xZNUhOY3JpVHNVTEdINDZOSFI1TThaN2I2NFU3?=
 =?utf-8?B?bXorK3hDS0lVOVhJTytXVHBDTEo0aFNtUnNSRDBBQzBNeDh6bEhXVDZObi9N?=
 =?utf-8?B?bzUxczEyTndUN0RZUERLdm1ycnR6SVJEK0dJKzVBZGFMd29iaGJHc1luZ1ZS?=
 =?utf-8?B?UTNSN2ZpQ0ZYeC9XVTVBZjdHZmJoYkExQ0h6THBFUUxldExOSGd5NExhTmlM?=
 =?utf-8?B?cEptdFBESTA3UlFuak9pa3cybHRyQ29TVVVycTA0S0RXa054Mm40WE1ueW9G?=
 =?utf-8?B?Qjh0MEViMWlJUmtZVTlVNndUMGE1cGhxYmFJeithZUNLRXA5UGVLWnBiZjZU?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ad10108-e7dc-4d76-5ed3-08db91c5d905
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2023 12:58:34.1533 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ywP0DlPV9MZGdsSE6TyG5d67qD6etrHfUepZ7rDbbspmY7rFftPXyIphF21wutGvTRO8qDGXbBFJhDktRoRLpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7339
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Simplify
 intel_cx0_program_phy_lane() with loop
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

Quoting Jani Nikula (2023-07-31 08:04:12-03:00)
>On Tue, 25 Jul 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> It is possible to generalize the "disable" value for the transmitters to
>> be a bit mask based on the port width and the port reversal boolean,
>> with a small exception for DP-alt mode with "x1" port width.
>>
>> Simplify the code by using such a mask and a for-loop instead of using
>> switch-case statements.
>>
>> BSpec: 64539
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 79 +++++---------------
>>  1 file changed, 20 insertions(+), 59 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/=
drm/i915/display/intel_cx0_phy.c
>> index b903ceb0b56a..f10ebdfd696a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -2604,7 +2604,8 @@ static void intel_cx0_program_phy_lane(struct drm_=
i915_private *i915,
>>                                         struct intel_encoder *encoder, i=
nt lane_count,
>>                                         bool lane_reversal)
>>  {
>> -        u8 l0t1, l0t2, l1t1, l1t2;
>> +        int i;
>> +        u8 disables;
>>          bool dp_alt_mode =3D intel_tc_port_in_dp_alt_mode(enc_to_dig_po=
rt(encoder));
>>          enum port port =3D encoder->port;
>> =20
>> @@ -2614,66 +2615,26 @@ static void intel_cx0_program_phy_lane(struct dr=
m_i915_private *i915,
>>                                C10_VDR_CTRL_MSGBUS_ACCESS,
>>                                MB_WRITE_COMMITTED);
>> =20
>> -        /* TODO: DP-alt MFD case where only one PHY lane should be prog=
rammed. */
>> -        l0t1 =3D intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX=
_CONTROL(1, 2));
>> -        l0t2 =3D intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX=
_CONTROL(2, 2));
>> -        l1t1 =3D intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX=
_CONTROL(1, 2));
>> -        l1t2 =3D intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX=
_CONTROL(2, 2));
>> -
>> -        l0t1 |=3D CONTROL2_DISABLE_SINGLE_TX;
>> -        l0t2 |=3D CONTROL2_DISABLE_SINGLE_TX;
>> -        l1t1 |=3D CONTROL2_DISABLE_SINGLE_TX;
>> -        l1t2 |=3D CONTROL2_DISABLE_SINGLE_TX;
>> -
>> -        if (lane_reversal) {
>> -                switch (lane_count) {
>> -                case 4:
>> -                        l0t1 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>> -                        fallthrough;
>> -                case 3:
>> -                        l0t2 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>> -                        fallthrough;
>> -                case 2:
>> -                        l1t1 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>> -                        fallthrough;
>> -                case 1:
>> -                        l1t2 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>> -                        break;
>> -                default:
>> -                        MISSING_CASE(lane_count);
>> -                }
>> -        } else {
>> -                switch (lane_count) {
>> -                case 4:
>> -                        l1t2 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>> -                        fallthrough;
>> -                case 3:
>> -                        l1t1 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>> -                        fallthrough;
>> -                case 2:
>> -                        l0t2 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>> -                        l0t1 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>> -                        break;
>> -                case 1:
>> -                        if (dp_alt_mode)
>> -                                l0t2 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>> -                        else
>> -                                l0t1 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>> -                        break;
>> -                default:
>> -                        MISSING_CASE(lane_count);
>> -                }
>> +        if (lane_reversal)
>> +                disables =3D REG_GENMASK8(3, 0) >> lane_count;
>> +        else
>> +                disables =3D REG_GENMASK8(3, 0) << lane_count;
>> +
>> +        if (dp_alt_mode && lane_count =3D=3D 1) {
>> +                disables &=3D ~REG_GENMASK8(1, 0);
>> +                disables |=3D REG_FIELD_PREP8(REG_GENMASK8(1, 0), 0x1);
>>          }
>> =20
>> -        /* disable MLs */
>> -        intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL=
(1, 2),
>> -                        l0t1, MB_WRITE_COMMITTED);
>> -        intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL=
(2, 2),
>> -                        l0t2, MB_WRITE_COMMITTED);
>> -        intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL=
(1, 2),
>> -                        l1t1, MB_WRITE_COMMITTED);
>> -        intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL=
(2, 2),
>> -                        l1t2, MB_WRITE_COMMITTED);
>> +        /* TODO: DP-alt MFD case where only one PHY lane should be prog=
rammed. */
>> +        for (i =3D 0; i < 4; i++) {
>> +                int tx =3D i % 2 + 1;
>> +                u8 lane_mask =3D i / 2 =3D=3D 0 ? INTEL_CX0_LANE0 : INT=
EL_CX0_LANE1;
>
>I'm just catching up on mails and quickly eyeballing stuff, but
>
>        i / 2 =3D=3D 0
>
>looks suspect.

i / 2 =3D=3D 0 should give us the correct selection of lane_mask: the first=
 two
iterations are for the first PHY lane and the last two are for the last PHY
lane.

--
Gustavo Sousa

>
>BR,
>Jani.
>
>> +
>> +                intel_cx0_rmw(i915, port, lane_mask, PHY_CX0_TX_CONTROL=
(tx, 2),
>> +                              CONTROL2_DISABLE_SINGLE_TX,
>> +                              disables & BIT(i) ? CONTROL2_DISABLE_SING=
LE_TX : 0,
>> +                              MB_WRITE_COMMITTED);
>> +        }
>> =20
>>          if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
>>                  intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES,
>
>--=20
>Jani Nikula, Intel Open Source Graphics Center
