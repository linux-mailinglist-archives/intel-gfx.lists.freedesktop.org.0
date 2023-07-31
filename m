Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2D5769BC4
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 18:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 122BF10E2B9;
	Mon, 31 Jul 2023 16:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B3010E2B9
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 16:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690819437; x=1722355437;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=1m2mxvOg3vjH0jBQ4OW9+z9tG+Nj9T7xPohdSwKMRQQ=;
 b=nDSDle1LJ3cAFtJoYaaRYundlKYSSvPa0vutyjK7GBDHoqRbjzAM5JvP
 /XxtwJCjzzFrbz+EOfcNxQOvV1nG8quyjMvOPX7GUg8amJEjyV1nKttxI
 C+15GPSaDNsEm1GAauhs8c0IAEXrRGk1IlApbYiAd+KpenbzzlF1IW5rF
 ij/jWufz2+jWQRwQQ69BhHYnkU1bh86PpB15RRcYzrlaSokh2WBBnPvdo
 QaP5UGrXgm1TqutSSiZ1Zle6z2fHZY3OYcp6CRt1VeAxlAtn3Hc0VNfET
 GaRceSe8R4osN5PkY8w4jvTT2FJewSojah1xCZwQMQLIBWpFBMDAznZbC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="367958533"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="367958533"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 09:03:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="1059032743"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="1059032743"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jul 2023 09:03:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 09:03:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 09:03:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 09:03:20 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 09:03:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wzx7XxQWTHCfYbK3y9Nj/paSeCta27aqYNdMJpwHQAtaGHtQoSXEW0NuD1zI5ekgiYsX5M6PftXlPPL+71JCm1eIlr8hQhzZeHlXRe9XyteqFEb/1RKZDC/MWUVGPhmPDEBKPjw/5sDsaZ1BVnpINdIUgyVEjnjIsUtuIGCg8yeYv07gr2cZUOcUeg5tIhiLVb1NgRk06kkkQ04Ds2Z50I+YAfHbqdBUbNXByN2o9p7D7QVhyz/w+O5oa40Uy6lIv/hjBE+Sl2ECp27xW18JDFkkGIi52NTxswEJ1bqCkO5JBxDyEEU17m9d7jzO+IVmkrxOc1o08FHC2mAwgnW99Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QDniFn43eKrm0mpRDe9jScZaI7pSRpnpqu1EpjfQK+Y=;
 b=UmTeAt0VZKoNJLtrQzVBuJf+rHEfxCE1x/WEIAakOLoZaqXC6GfYo4bbDGLrxIgWAHsbC06JqnoOTOJuzKyoytGL1f2T2kewESeShNcqBLRtW8oBaKw/Zqh9NdZx6Re6RmmqU81kuSrWfB5lkYuNagukiVpFmjF6irRj5Mbbs9jLXafrONsUOBbssqusu1blFT7mOeZDLH5JJGL1++pyVbBZsQefDJxxFJSFkDhT19AUJSKye07L38Fv0NgtQzk4tcByYuaxNZjotA4aFmJwuPmnslM8s/z6u2NplDoANFvZPb6qwQFPpAllsDYyo4WLIG+1kOJG/CqZWgX2iR83sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MW4PR11MB8289.namprd11.prod.outlook.com (2603:10b6:303:1e8::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.42; Mon, 31 Jul
 2023 16:03:16 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6631.039; Mon, 31 Jul 2023
 16:03:16 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87y1iww1st.fsf@intel.com>
References: <20230725212716.3060259-1-gustavo.sousa@intel.com>
 <20230725212716.3060259-3-gustavo.sousa@intel.com> <877cqgxryr.fsf@intel.com>
 <169080830770.140656.12479044792983753457@gjsousa-mobl2>
 <87y1iww1st.fsf@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Mon, 31 Jul 2023 13:03:04 -0300
Message-ID: <169081938456.140656.10068964348479283264@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P220CA0015.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::20) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MW4PR11MB8289:EE_
X-MS-Office365-Filtering-Correlation-Id: 3cddff12-ba49-433d-9140-08db91dfa65a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zonthAR+KZcOQ33JO9VE6t2QbHrgrtZJqWvcOB6Nh55fNLipJ7AKijvPwEj7L5yc+G1jncgDUiFuexdoKGxan+SRN7cTqWSJSmxTVpKyazN9JCKZNuqCaLZ8iTMRgglVTkkDno5JCKAlV1KfvRWKgB+90GHWrozUrIiRkaQdtpb9sxgnvh5ShSfRbKmTTrXxKuYLJQJSlciDDf/cpocVqLIr4nzSXvRsP6B00af2NBjJ+KGmspJK1dFNz2n2tbmDD0gp4se5q01EZZw8XrjzfeqJIagSKGwsDyewSxtDz8Uha54njOxNYSvSgnn3u3fiRJfJ853bD46ls/vugWY/0HOS/Xf6FVq7lfBorEkXrmxy2K0mqb2xJBk1hPdT7Kwc+A/Oo1ya9ykWRhEJ1ft4Uw+Lcr/xDJs+kqxhASLK5Wr2tZGik6GgEuBqeM18Jq6vYo0Laz9BwHtQDtcTMC6QvauVCPCxe625MZ45uFkevblyyIeeL4/Q4mvNZKJ97jId6MOhxm539VOMLdQyiSMA0py5OcQhswnbZY+Sp0vhTfqAENmeIaAY/7hu6nu94h72
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(39860400002)(366004)(136003)(376002)(346002)(451199021)(478600001)(33716001)(38100700002)(82960400001)(86362001)(6512007)(9686003)(6486002)(6666004)(186003)(26005)(8676002)(8936002)(6506007)(44832011)(5660300002)(2906002)(66476007)(66946007)(66556008)(41300700001)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1BMNm9kS2I0elNUMnVoVkZOcndUbVNsTHZhN3hadlJkZFRqZWloM3AyYjM0?=
 =?utf-8?B?UXYwaFcxMEZpNDR1aHlrNUhhL0I4NDV4c1JIQ096Zkg3RTMwSFoyK1BJSVc0?=
 =?utf-8?B?aE9VR3BndjVMQmRPdXE1ZDRNVUpoWDUxNjloTWV0KzVQUGhEYzYzSlJZMmxD?=
 =?utf-8?B?UnpLOWNFZGdJQjVYOElBYVBLWHVObDZ6Q1hNc0NteUZEQmY1K1o1MVZieDlP?=
 =?utf-8?B?REN0cG5RZTQzaytPZ2Q3a3Y3azVtbVlWQUoyQWxvNkQ0Y09peUdud25JOWRC?=
 =?utf-8?B?SXNTeVhGUkd3M0p6RFBJa1h1RHNSRFlsc2ZGcVJPV2NUZVUyTTc5M0JjbDNT?=
 =?utf-8?B?WE5RM0RIemEyMHJodzVxV1hZdC9mU0Y3dWlCeEhacVAxS0ZENXFHdGlManBL?=
 =?utf-8?B?K2crRU5KMU5lWUNua1ByQUtIcE5YSzRGRDZrREhFeXQwMWNnaGVIVlVMbXdP?=
 =?utf-8?B?RGlMMmJMc0NkQWUrMytJZkhidmRBM2RmVm51ekdrWkgwSmJvWlc2dzd1Z0o5?=
 =?utf-8?B?TDZQVkc1cWZXbWptNVlIUzZJWGtDdnVaT3IrLzNPOVp3ZHoyMmtMcUVEZmlI?=
 =?utf-8?B?NUpYaEZseUZaTFA4dTFYSW9YNzF2bXV0bjNZUnAza29ZdlFYVjRXdGNocWJj?=
 =?utf-8?B?K1BTRHhDZUNCdUQ1MVhCMXphRjRHWnRINkI4WlU4bUdsSU1IVTJNWW9INFZC?=
 =?utf-8?B?TGNKMUV4K3NrS2xtdmRkMGd6TDV5SUNlWm5rck9jRnFjcDJZaHpXcE5NaWJP?=
 =?utf-8?B?am0xcDU5TGUzVWRHTWkvZEdpSTVVa1BzTXBUaG01V0xXQmh2Y1NlYUhkb1A4?=
 =?utf-8?B?Rkt6YUIzcm1CT3JYeXg2VXlGTkM1NGdCVW13NmdnL2RWUVhkM1g5bWgvenpv?=
 =?utf-8?B?YVA5bmlXdTNjMlU1ZTJmMHhXYUh5VGlEU1EySXFvNUFLNUpSTU43UEo4emlW?=
 =?utf-8?B?MEplQnNBMFFadWdLVnl1ajVoYnk0WWNlVGJLUkhFcHY5dW1GWWV0SGpjOEM1?=
 =?utf-8?B?eEhqSWlzTmlPUGhGSis0ck8wZTJyeE9EN2piWTFteDJBbDFiQVNnWkpJR1BK?=
 =?utf-8?B?MXE3MkI5WnYzK0Q1VWdKOC9xRzdGRHoyQWRTM1JBZ0dCelpqNWt5Tkw3dk9q?=
 =?utf-8?B?U0hiTytyd0twODQ3TCsxd1BSUEE5Nzh4YWFnNnVKTkp5NDZBbFV6Q1BTSURN?=
 =?utf-8?B?SU03aUh4S1IvRlEvdkxZQlFWS2h6eFBOdVE5YlpvbjN5V0NuM3V1RGQzelA2?=
 =?utf-8?B?eEQ4OXAxbWdPQ2FGRURJcDZwRERTY21PNG9mdWFpWk9MZ2JEOEN1aTJNbEVV?=
 =?utf-8?B?VWl3dUtzSnhuUG1WbmVsNFQyek54eWhWck5Ydk9KR3lSOWdnVGxINm1KQlB4?=
 =?utf-8?B?ckdzemMvMHhCYi9QM3V2M2RXek1wTXp3ME0rcTBSQ2FmdDJJSFY2UVk4NXc0?=
 =?utf-8?B?TitRalhLNXczbFhxOVNodnlrMHFmM1VZaFpqSGFXSE9XaHZVbCtROHFGdU9T?=
 =?utf-8?B?R2wvMElBQlpoMUd5WjlQc3A2RFB4UVBLbG94SmpVQUZzLzRoMEJPTzNCMUtJ?=
 =?utf-8?B?dFRFaTFOd0RRcXpGc2dneExoTzVSTEc5TG5WRXZSV2NPWENJak5VcU5WSWk5?=
 =?utf-8?B?ejBFYXVMU1I1MG9ndzF3dGlxSWFvSjh6U1Y3OHlsQzAxcnBWUFI0MFJEVjJy?=
 =?utf-8?B?TWE2djcxWWNMQnJpRXU0bnpyV2x6N09Tb2dsZTRkM1FwNmJLK2lqbmVRRGZN?=
 =?utf-8?B?dnZTank2VHdzOWt0TEpQNUIxanlZdnBkd2pUR2JnSXhiN2dxbktjNXkxT1cw?=
 =?utf-8?B?Vk9OalZVcHJONXJJNG9sbmlBMW5lR3dSS2gxOHZqWFY2cFdvbjlCY0FES012?=
 =?utf-8?B?OEJYZ291cGxNM2ptZS9kQWpEbTg3by9jSVJaUHZ2K056RHhRN1R2ZEdPekw4?=
 =?utf-8?B?OG5jQktMNTBVVWJYUndVQTY0bGtQaS9zTFN2L00zQk52VFl2RjBSL2F4M2xF?=
 =?utf-8?B?c1Flam5kVTFvTDJyVlBHdmowYmJOQm83cXp6dHRBUFAwMEcyc1BmWG52a1pX?=
 =?utf-8?B?YUFlNnp4bHVBekV4MEprdS9jeUxmM1Q3dDQ1aHRzZkV0ajMreWVCaHRqTXRn?=
 =?utf-8?B?eGZ3VC9NdXlPa1FuVnhTaDY0ZEwwWlNpMzh5bWxxTXBqS3ZqeHVzNDQ2dWNw?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cddff12-ba49-433d-9140-08db91dfa65a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2023 16:03:16.2067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ixCNt1oNrrknH1einmW1aNkLsHQ6gNHMQl0P5ZHDMc4UQg7Vw08ubzCe6bFJtvrDHzXTD0j/P0AqKwhk5NByeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8289
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

Quoting Jani Nikula (2023-07-31 12:14:42-03:00)
>On Mon, 31 Jul 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2023-07-31 08:04:12-03:00)
>>>On Tue, 25 Jul 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>>> It is possible to generalize the "disable" value for the transmitters =
to
>>>> be a bit mask based on the port width and the port reversal boolean,
>>>> with a small exception for DP-alt mode with "x1" port width.
>>>>
>>>> Simplify the code by using such a mask and a for-loop instead of using
>>>> switch-case statements.
>>>>
>>>> BSpec: 64539
>>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 79 +++++--------------=
-
>>>>  1 file changed, 20 insertions(+), 59 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gp=
u/drm/i915/display/intel_cx0_phy.c
>>>> index b903ceb0b56a..f10ebdfd696a 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>>> @@ -2604,7 +2604,8 @@ static void intel_cx0_program_phy_lane(struct dr=
m_i915_private *i915,
>>>>                                         struct intel_encoder *encoder,=
 int lane_count,
>>>>                                         bool lane_reversal)
>>>>  {
>>>> -        u8 l0t1, l0t2, l1t1, l1t2;
>>>> +        int i;
>>>> +        u8 disables;
>>>>          bool dp_alt_mode =3D intel_tc_port_in_dp_alt_mode(enc_to_dig_=
port(encoder));
>>>>          enum port port =3D encoder->port;
>>>> =20
>>>> @@ -2614,66 +2615,26 @@ static void intel_cx0_program_phy_lane(struct =
drm_i915_private *i915,
>>>>                                C10_VDR_CTRL_MSGBUS_ACCESS,
>>>>                                MB_WRITE_COMMITTED);
>>>> =20
>>>> -        /* TODO: DP-alt MFD case where only one PHY lane should be pr=
ogrammed. */
>>>> -        l0t1 =3D intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_=
TX_CONTROL(1, 2));
>>>> -        l0t2 =3D intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_=
TX_CONTROL(2, 2));
>>>> -        l1t1 =3D intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_=
TX_CONTROL(1, 2));
>>>> -        l1t2 =3D intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_=
TX_CONTROL(2, 2));
>>>> -
>>>> -        l0t1 |=3D CONTROL2_DISABLE_SINGLE_TX;
>>>> -        l0t2 |=3D CONTROL2_DISABLE_SINGLE_TX;
>>>> -        l1t1 |=3D CONTROL2_DISABLE_SINGLE_TX;
>>>> -        l1t2 |=3D CONTROL2_DISABLE_SINGLE_TX;
>>>> -
>>>> -        if (lane_reversal) {
>>>> -                switch (lane_count) {
>>>> -                case 4:
>>>> -                        l0t1 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>>>> -                        fallthrough;
>>>> -                case 3:
>>>> -                        l0t2 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>>>> -                        fallthrough;
>>>> -                case 2:
>>>> -                        l1t1 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>>>> -                        fallthrough;
>>>> -                case 1:
>>>> -                        l1t2 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>>>> -                        break;
>>>> -                default:
>>>> -                        MISSING_CASE(lane_count);
>>>> -                }
>>>> -        } else {
>>>> -                switch (lane_count) {
>>>> -                case 4:
>>>> -                        l1t2 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>>>> -                        fallthrough;
>>>> -                case 3:
>>>> -                        l1t1 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>>>> -                        fallthrough;
>>>> -                case 2:
>>>> -                        l0t2 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>>>> -                        l0t1 &=3D ~CONTROL2_DISABLE_SINGLE_TX;
>>>> -                        break;
>>>> -                case 1:
>>>> -                        if (dp_alt_mode)
>>>> -                                l0t2 &=3D ~CONTROL2_DISABLE_SINGLE_TX=
;
>>>> -                        else
>>>> -                                l0t1 &=3D ~CONTROL2_DISABLE_SINGLE_TX=
;
>>>> -                        break;
>>>> -                default:
>>>> -                        MISSING_CASE(lane_count);
>>>> -                }
>>>> +        if (lane_reversal)
>>>> +                disables =3D REG_GENMASK8(3, 0) >> lane_count;
>>>> +        else
>>>> +                disables =3D REG_GENMASK8(3, 0) << lane_count;
>>>> +
>>>> +        if (dp_alt_mode && lane_count =3D=3D 1) {
>>>> +                disables &=3D ~REG_GENMASK8(1, 0);
>>>> +                disables |=3D REG_FIELD_PREP8(REG_GENMASK8(1, 0), 0x1=
);
>>>>          }
>>>> =20
>>>> -        /* disable MLs */
>>>> -        intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTR=
OL(1, 2),
>>>> -                        l0t1, MB_WRITE_COMMITTED);
>>>> -        intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTR=
OL(2, 2),
>>>> -                        l0t2, MB_WRITE_COMMITTED);
>>>> -        intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTR=
OL(1, 2),
>>>> -                        l1t1, MB_WRITE_COMMITTED);
>>>> -        intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTR=
OL(2, 2),
>>>> -                        l1t2, MB_WRITE_COMMITTED);
>>>> +        /* TODO: DP-alt MFD case where only one PHY lane should be pr=
ogrammed. */
>>>> +        for (i =3D 0; i < 4; i++) {
>>>> +                int tx =3D i % 2 + 1;
>>>> +                u8 lane_mask =3D i / 2 =3D=3D 0 ? INTEL_CX0_LANE0 : I=
NTEL_CX0_LANE1;
>>>
>>>I'm just catching up on mails and quickly eyeballing stuff, but
>>>
>>>        i / 2 =3D=3D 0
>>>
>>>looks suspect.
>>
>> i / 2 =3D=3D 0 should give us the correct selection of lane_mask: the fi=
rst two
>> iterations are for the first PHY lane and the last two are for the last =
PHY
>> lane.
>
>I think the most obvious way to express that is i < 2.

Indeed. Thanks!

--
Gustavo Sousa

>
>BR,
>Jani.
>
>>
>> --
>> Gustavo Sousa
>>
>>>
>>>BR,
>>>Jani.
>>>
>>>> +
>>>> +                intel_cx0_rmw(i915, port, lane_mask, PHY_CX0_TX_CONTR=
OL(tx, 2),
>>>> +                              CONTROL2_DISABLE_SINGLE_TX,
>>>> +                              disables & BIT(i) ? CONTROL2_DISABLE_SI=
NGLE_TX : 0,
>>>> +                              MB_WRITE_COMMITTED);
>>>> +        }
>>>> =20
>>>>          if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
>>>>                  intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES,
>>>
>>>--=20
>>>Jani Nikula, Intel Open Source Graphics Center
>
>--=20
>Jani Nikula, Intel Open Source Graphics Center
