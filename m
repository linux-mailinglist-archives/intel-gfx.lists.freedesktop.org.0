Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF78379D174
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 14:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25DD410E22F;
	Tue, 12 Sep 2023 12:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4A2C10E22F
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 12:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694523360; x=1726059360;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=h+IRHU2f/i/ZN/YVVCXb2T45xjJh1e4WuYcQOQchAwE=;
 b=K5/h0PY2xdr+IlVTWp8oo3lpAszwYe3MthI4+DvVPE7TG5TgQehXydYm
 7brYGhJ9c/XRn4maki9dIxI8PO3BeOck+HBTMkdgF+TAyXcOsyFtf5b5Q
 BDsuOrxf038NImpmFW1I0qz0eg9FiFHwKKRCB633y4wijCBWyAfXsxTFk
 GR/TTk+JANjFYz9qBWieIVr1oZ4C8wjUO7PqBcM7Og5gEXxHJ+BiqraUD
 JroyfM9/M8wAmeIw99XJ20BkSCqaJ7fCs7J/CZoRKIKjXkgXwOUjjlmfR
 jqIDqC4rHrM0Lt4NdmhADfy/tFljNLRZXa7gThhbM4yk2E/8E1xcZiJ6Z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="375694566"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="375694566"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:55:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="1074543342"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="1074543342"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 05:55:58 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 05:55:58 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 05:55:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 05:55:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 05:55:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C1H3pcADqqGpWobMS7dRxiEUxjlNyhoyaiKqtW/f3TF1Aw4KswRRaQqYM21t9Foo65EP28wd7vHr2u7o+wE/uc7MojJ/v5bjevemN1+cQBUOVZDB5N1c7AISQgq/F0ceZ7s9rQCDSn6wmnh7Qh8rhEu63m7a0AvS0oUV4AdeqEWMHPn1/yUMQbQQA4vJLFcWquBj1urvDTiliSvdSKRThp48FeRxhdXDcNc+b6S+zmfeAbHtMj2+oR+M8VOWFC5PBSoEfsrhha70XryhX2ZkmCY1CIUVbqmJ6Cx26vMr7lLa2F01EXK3AQmjQk58Yi/SS5CwXOYN/fCMoYMQqd6D0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tpU1H793cwQadMYJlV60eoTPBmcQjQ9ONepWWecaTT8=;
 b=WdZtDvlMZsU0mk71mNUNhRe6548AjyafwY4S7M9XAg6rO+OXF1FzOepmE3b/AOuWH17o5IIyj8FCZm7KIM4ioJeOQZ5YQZR2HKi00zRYH6ErW3ZvLqHJ/PIukH4YGGH/AM1oSC3Ouu1+HkrD0hrjsOiCFXPITv0eJW0BiSLtaOviLCOTNvjbCP9z40Y8D0lmC0eBJ7n7cvi8IeK1jCdI93RNdZk+tvKIse4wSUVozFkqeZPaf8zvQxhljjn8offpl9CJGQVM4eGM6Hb3qGhFE1dyTzVMOTM3eUaMROr4WU0ZyIs1Oaf/z5gPvzSqtUf/twq379wpyUt8Km7ll7HCxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by BY1PR11MB7983.namprd11.prod.outlook.com (2603:10b6:a03:52b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Tue, 12 Sep
 2023 12:55:49 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 12:55:49 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <MW4PR11MB70547E0C09D28285342928EEEFF1A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230911161540.36358-1-gustavo.sousa@intel.com>
 <MW4PR11MB70547E0C09D28285342928EEEFF1A@MW4PR11MB7054.namprd11.prod.outlook.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Tue, 12 Sep 2023 09:55:42 -0300
Message-ID: <169452334269.11624.10174288777590561812@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0291.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::26) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|BY1PR11MB7983:EE_
X-MS-Office365-Filtering-Correlation-Id: 0224f237-797c-4fe0-59e1-08dbb38f96b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L9nnnHEcr3iza+KwrtwhQDaWg2085zHNAwSjFXakKsjBmKzKOUDyIldYG8M6nuDePeAP4GQ2vdB0y2F4v+KMxAWnAe5kC+frKKJvPXpwSDKnW/EX92ytEdRlEQIVTBujcZYmySlNV6duBLXekNekVn6R17j4VUVxdu92pMp8GibjWytPu4RmUXW8jf1sT3Kp+/CzdSKXQACHhZyO1DHGKMtCMp2MuFWc6VoHghFo+Wy7Exoc9TVLJwBDiuyKAob5tUnrjVZSjOamvXb7rG8ml2MVr6HMvAvEkbTOQSVifPMAiYNEc148MTO8TKbKyzHJqi/dJhTMJociRvoD9u+RfrZM4gTSmy7wLdT2ogeN8tL8tpV1Yh1byAIKp8FY/UbL1ZedKBYY/AWELlFZuaL28JHV37DCLfO579WVy9MsIsYzpGZ7MLLOx6ItlZizskBaGj6BuceQy/G35SImdjhi/7sb64ERuo6tq1pf06s088F7l0/u0tA+epmA5KphmdZjqHQrYmS48CTk7A9rGKAmSTGoqP1hLxO+3vy0xFO2pe8Yjnvj7w4zY0Iahbq0tZNJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(346002)(396003)(366004)(136003)(39860400002)(451199024)(1800799009)(186009)(5660300002)(41300700001)(44832011)(8936002)(4326008)(8676002)(66556008)(66946007)(66476007)(316002)(33716001)(82960400001)(478600001)(6666004)(6486002)(26005)(107886003)(53546011)(6506007)(86362001)(83380400001)(2906002)(38100700002)(9686003)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFhIbDRkNlNVZnA2V0pYWUVER3JieWlmZ3pzZlNHSVdNRnE2ekdiaXUxWEVL?=
 =?utf-8?B?cmxkdncxQ2RzazVHK0dHN0dkb3V0czZVaTNLQTUrM2dtRE9hK2lYM1FuWG1s?=
 =?utf-8?B?VTdSTUxzQXRBUEZTMytjMmI4NG51ODNMU2Z3Ty9uVkxTZExIaUdDWXVGWVpr?=
 =?utf-8?B?RUpzYTdtV0VOZHhRMDA2MnliUEFBVjY1N01RQy8yOVhmNU92R3F3RVRPdSt1?=
 =?utf-8?B?NnhOVlJsWDZ0d3RiK0NOOGllUTg0ZlhvaXhVbElMWE9DRTV2YnJsZWVqNUhW?=
 =?utf-8?B?cFFSaVo0cWJXUWZURE5wYkRWUllmbGdvNEU1S0NsalA1WFp6Q2l0UkJQbTNS?=
 =?utf-8?B?V2w0ZkxMR3BtN2d1QW9ETzl1UkEwdlk0UHBVM1pqSUxsZTN3dHpVSGhMTkln?=
 =?utf-8?B?Yi9hN3JXQitPOUtENENvUXpzZnROZmtuQWRTRHFub2hZdGs5NXdNTndmaFdX?=
 =?utf-8?B?T29UQVBKOFZmTXppY3VtS0VLNFBZTmZ2elJ5THVZQUFkdFZhbHA5b2hZelNs?=
 =?utf-8?B?NnRhc0owTHdMRWIvR1Bndi9KSnc1dnpsNUpiZEVzRUt6M0dFN1hXS2N2eEQ0?=
 =?utf-8?B?SHFHWWlhVXZNYTFDMTRraXUxQlE1Q1F1eUJzVEx3SWdSTytoTCtrNCtGWit1?=
 =?utf-8?B?VUZad25BUXRBUktLaTgyTlR2TTRydnB3RjNFLytLSmkxRnNqMExLcEFGZnNB?=
 =?utf-8?B?OUZjSHh0dWF4dEk5N3VpUmdTNmVxejBEM05mb0VUK2JKU2xVdnZwS1NKVVJW?=
 =?utf-8?B?SFg2M1F1ZVBjQnk4aUlPQTlXSXMrWWJ1ODUyY29NTit6MGxoNzB2YUIwdURJ?=
 =?utf-8?B?REpiekc0QXRZdVUxTnBWYWtFdnZoODE4akRkdjJqc2dOZWVPRG1vNWl3YmJD?=
 =?utf-8?B?aFkvUkcvaGRYNTRhaFg5N3A0WTBSNFRYY3c3WXJCTVRqZ0hZMDZKVjBwalQ5?=
 =?utf-8?B?N0ZzSGhNdGlETFhLYkNhbjVjSVZHS1dNT21zbkI0TFlUcTA5cERxM2twTEt2?=
 =?utf-8?B?YzV2MUY2K2ZNNHpVOVQ4eEVHVjlKOURCS2svejZobm94UlRKMFpyMm8vYjJO?=
 =?utf-8?B?KzA3MklxQmJRc3pqRnhxWjFWNmtxZUg0WUZaOGRuenp4VWR2SG9HbUI4STJL?=
 =?utf-8?B?bWUrKys4TUNrYU9tL3l1ekVhbS9ZSU03QmxuTWtQM1Z5SU5vVGZyNHllM0Qy?=
 =?utf-8?B?ZUJidmtuUkNsMmJTL3k2T2t5bXdURjJ6cGkyTy9QL0lyOE0zNW1LUEs3YkhH?=
 =?utf-8?B?MWtpcEhJNW1FcG5Sdk1BaHo3L0MrV25lUkwrQTgyZGkzZEx3VkUzeSsyMHZX?=
 =?utf-8?B?VDcrQmRtVUM1WE56eEUzcS9rcmV0Qmt2TCtRMW5IOWxLSU0wemdwV25vRWtl?=
 =?utf-8?B?V3JxcE5nemVDQ3huZE1iTHJxMythVlFLQVAwWnRJbTVlQmo0VFY5d0Y1TnNE?=
 =?utf-8?B?cGl2dDl0VWUzTXB6bWM0WC9IbXBmVkJWRDRmalVEa1M4Z25WNEhzQTFSaFMv?=
 =?utf-8?B?ai9ERU93S2k0QmdaUVU1WVNESzEvcVFuK3pzSjYwY0lkUzZXOGFTRDBrdU1K?=
 =?utf-8?B?YmR2SVBweEVnNkdRSCtQS0JUMDBBRnFneU0vekpIS0hoazlIVXpPSm1pQW1D?=
 =?utf-8?B?Y3pLbUVHd1RYYWVNQWtha0NmVTJHc1hqWkhSakdPYjFtKzh5UXQreGJId2d4?=
 =?utf-8?B?Y3JKOU9XZlJYRU02RlFCQXpnaFhvN0VudThVTndFSzRRWUJTQzk2dHFVOVFt?=
 =?utf-8?B?L0VZMHNpV0lkbjZXN0ZBUThyZWJidDV6TWcrYzQzcTZSZEcrV3pCQWc3V3Qr?=
 =?utf-8?B?SzFYVG0vS1M3NEx2TmttLzdkY2FKc2wwRFVTNy83aUZCUzlOT1cvNGJORHdW?=
 =?utf-8?B?cjBaRW5Gb2IrL1RTb2d6cDc2RjBTNndQM2tZQWNxY3AxY1dXSUdwVTExa25F?=
 =?utf-8?B?M1R0ZWNqdzRsMTVTaklFck1RVmpCSjE5QXNyc0lIdXhNMm9Ucitoa2Rxb1BR?=
 =?utf-8?B?Tk9zMEd6T3VEMVRVWGtLNnpCcmkxcHhyL0ticVJMakZ5d013ZFRXd1g4WWV6?=
 =?utf-8?B?UEhVRjhIY3U5K3V3SExOdXpVRUhnNTF4Z1dmd3FTc1UxQU13ejVWb2JSYVZN?=
 =?utf-8?B?VUV6ekpISmNhWkpMUWZNYzhSTEZ6bnhOMGtxZEtDQnlKYUEvWlVGYld3VWQ5?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0224f237-797c-4fe0-59e1-08dbb38f96b4
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 12:55:49.6272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V30PXH2ra9xwMXS5Am7gZentDUViklqJNIWGxm50oY//Hnmhww7gUoQ/0+ebVbhVt6sKU3WkhP+AdzcsMOb5Lw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB7983
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: Add step for programming
 msgbus timer
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

Quoting Kahola, Mika (2023-09-12 09:26:59-03:00)
>> -----Original Message-----
>> From: Sousa, Gustavo <gustavo.sousa@intel.com>
>> Sent: Monday, September 11, 2023 7:16 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Kahola, Mika <mika.kahola@intel.com>; Taylor, Clinton A <clinton.a.t=
aylor@intel.com>
>> Subject: [PATCH] drm/i915/cx0: Add step for programming msgbus timer
>>=20
>> There was a recent update in the BSpec adding an extra step to the PLL e=
nable sequence, which is for programming the msgbus
>> timer. Since we also touch PHY registers during hw readout, let's do the=
 programming when starting a transaction rather than only
>> when doing the PLL enable sequence.
>>=20
>> The BSpec isn't clear about whether the programming should be done for o=
wned PHY lanes or only PHY lane 0. Let's program the
>> timer for owned PHY lanes for now. We can revisit this once we get clari=
fication from the BSpec.
>>=20
>> This might be the missing step that was causing the timeouts that we hav=
e recently seen during C20 SRAM register programming
>> sequences. With this in place, we shouldn't need the logic to bump the t=
imer thresholds, since now we have a documented value
>> that should be set peform programming the registers. As such, let's also=
 remove intel_cx0_bus_check_and_bump_timer(), but
>> keep the part that checks if hardware really detected a timeout, which m=
ight be useful debugging information.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 88 +++++++++---------- =
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  2 +-
>>  2 files changed, 42 insertions(+), 48 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/=
drm/i915/display/intel_cx0_phy.c
>> index e6d3027c821d..1b0a868845b7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -29,8 +29,6 @@
>>  #define INTEL_CX0_LANE1                BIT(1)
>>  #define INTEL_CX0_BOTH_LANES        (INTEL_CX0_LANE1 | INTEL_CX0_LANE0)
>>=20
>> -#define INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL        0x200
>> -
>>  bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)  {
>>          if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0) && phy < PHY_C)=
 @@ -73,19 +71,39 @@ assert_dc_off(struct
>> drm_i915_private *i915)
>>          drm_WARN_ON(&i915->drm, !enabled);
>>  }
>>=20
>> +static void intel_cx0_program_msgbus_timer(struct intel_encoder
>> +*encoder) {
>> +        int lane;
>> +        struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> +        u8 owned_lane_mask =3D intel_cx0_get_owned_lane_mask(i915, enco=
der);
>> +
>> +        for_each_cx0_lane_in_mask(owned_lane_mask, lane)
>> +                intel_de_rmw(i915,
>> +                             XELPDP_PORT_MSGBUS_TIMER(encoder->port, la=
ne),
>> +                             XELPDP_PORT_MSGBUS_TIMER_VAL_MASK,
>> +                             XELPDP_PORT_MSGBUS_TIMER_VAL);
>> +}
>> +
>>  /*
>>   * Prepare HW for CX0 phy transactions.
>>   *
>>   * It is required that PSR and DC5/6 are disabled before any CX0 messag=
e
>>   * bus transaction is executed.
>> + *
>> + * We also do the msgbus timer programming here to ensure that the
>> + timer
>> + * is already programmed before any access to the msgbus.
>>   */
>>  static intel_wakeref_t intel_cx0_phy_transaction_begin(struct intel_enc=
oder *encoder)  {
>> +        intel_wakeref_t wakeref;
>>          struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>>          struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>>=20
>>          intel_psr_pause(intel_dp);
>> -        return intel_display_power_get(i915, POWER_DOMAIN_DC_OFF);
>> +        wakeref =3D intel_display_power_get(i915, POWER_DOMAIN_DC_OFF);
>> +        intel_cx0_program_msgbus_timer(encoder);
>> +
>> +        return wakeref;
>>  }
>>=20
>>  static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder=
, intel_wakeref_t wakeref) @@ -121,42 +139,6 @@
>> static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port=
 port, i
>>          intel_clear_response_ready_flag(i915, port, lane);  }
>>=20
>> -/*
>> - * Check if there was a timeout detected by the hardware in the message=
 bus
>> - * and bump the threshold if so.
>> - */
>> -static void intel_cx0_bus_check_and_bump_timer(struct drm_i915_private =
*i915,
>> -                                               enum port port, int lane=
)
>> -{
>> -        enum phy phy =3D intel_port_to_phy(i915, port);
>> -        i915_reg_t reg;
>> -        u32 val;
>> -        u32 timer_val;
>> -
>> -        reg =3D XELPDP_PORT_MSGBUS_TIMER(port, lane);
>> -        val =3D intel_de_read(i915, reg);
>> -
>> -        if (!(val & XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT)) {
>> -                drm_warn(&i915->drm,
>> -                         "PHY %c lane %d: hardware did not detect a tim=
eout\n",
>> -                         phy_name(phy), lane);
>> -                return;
>> -        }
>> -
>> -        timer_val =3D REG_FIELD_GET(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, =
val);
>> -
>> -        if (timer_val =3D=3D INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL)
>> -                return;
>> -
>> -        val &=3D ~XELPDP_PORT_MSGBUS_TIMER_VAL_MASK;
>> -        val |=3D XELPDP_PORT_MSGBUS_TIMER_VAL(INTEL_CX0_MSGBUS_TIMER_BU=
MPED_VAL);
>> -
>> -        drm_dbg_kms(&i915->drm,
>> -                    "PHY %c lane %d: increasing msgbus timer threshold =
to %#x\n",
>> -                    phy_name(phy), lane, INTEL_CX0_MSGBUS_TIMER_BUMPED_=
VAL);
>> -        intel_de_write(i915, reg, val);
>> -}
>> -
>>  static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum p=
ort port,
>>                                    int command, int lane, u32 *val)
>>  {
>> @@ -170,7 +152,13 @@ static int intel_cx0_wait_for_ack(struct drm_i915_p=
rivate *i915, enum port port,
>>                                           XELPDP_MSGBUS_TIMEOUT_SLOW, va=
l)) {
>>                  drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for mes=
sage ACK. Status: 0x%x\n",
>>                              phy_name(phy), *val);
>> -                intel_cx0_bus_check_and_bump_timer(i915, port, lane);
>> +
>> +                if (!(intel_de_read(i915, XELPDP_PORT_MSGBUS_TIMER(port=
, lane)) &
>> +                      XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT))
>> +                        drm_warn(&i915->drm,
>> +                                 "PHY %c Hardware did not detect a time=
out\n",
>> +                                 phy_name(phy));
>> +
>
>drm_warn() seems a bit exaggerated here as we are informing only about not=
 detecting timeout.

Okay. I'll send a new version changing it to use drm_dbg_kms(). Thanks!

>Dbg message here might be sufficient. This is something that we could leav=
e out as well. We already
>have information about the timeouts if these happen.

I think querying the hardware might give us helpful debugging info in futur=
e
issues. A scenario that comes to mind is that we might *think* a timeout
happened, but the hardware might disagree, which could be indicative that t=
he
hardware is somehow misconfigured or that we somehow are not waiting enough=
.

--
Gustavo Sousa

>
>-Mika-
>
>>                  intel_cx0_bus_reset(i915, port, lane);
>>                  return -ETIMEDOUT;
>>          }
>> @@ -2737,39 +2725,45 @@ static void intel_cx0pll_enable(struct intel_enc=
oder *encoder,
>>          intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_=
CX0_BOTH_LANES,
>>                                              CX0_P2_STATE_READY);
>>=20
>> -        /* 4. Program PHY internal PLL internal registers. */
>> +        /*
>> +         * 4. Program PORT_MSGBUS_TIMER register's Message Bus Timer fi=
eld to 0xA000.
>> +         *    (This is done inside intel_cx0_phy_transaction_begin(), s=
ince we would need
>> +         *    the right timer thresholds for readouts too.)
>> +         */
>> +
>> +        /* 5. Program PHY internal PLL internal registers. */
>>          if (intel_is_c10phy(i915, phy))
>>                  intel_c10_pll_program(i915, crtc_state, encoder);
>>          else
>>                  intel_c20_pll_program(i915, crtc_state, encoder);
>>=20
>>          /*
>> -         * 5. Program the enabled and disabled owned PHY lane
>> +         * 6. Program the enabled and disabled owned PHY lane
>>           * transmitters over message bus
>>           */
>>          intel_cx0_program_phy_lane(i915, encoder, crtc_state->lane_coun=
t, lane_reversal);
>>=20
>>          /*
>> -         * 6. Follow the Display Voltage Frequency Switching - Sequence
>> +         * 7. Follow the Display Voltage Frequency Switching - Sequence
>>           * Before Frequency Change. We handle this step in bxt_set_cdcl=
k().
>>           */
>>=20
>>          /*
>> -         * 7. Program DDI_CLK_VALFREQ to match intended DDI
>> +         * 8. Program DDI_CLK_VALFREQ to match intended DDI
>>           * clock frequency.
>>           */
>>          intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
>>                         crtc_state->port_clock);
>>=20
>>          /*
>> -         * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
>> +         * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
>>           * LN<Lane for maxPCLK> to "1" to enable PLL.
>>           */
>>          intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>>                       intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANE=
S),
>>                       intel_cx0_get_pclk_pll_request(maxpclk_lane));
>>=20
>> -        /* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> =
=3D=3D "1". */
>> +        /* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK>=
 =3D=3D
>> +"1". */
>>          if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(en=
coder->port),
>>                                           intel_cx0_get_pclk_pll_ack(INT=
EL_CX0_BOTH_LANES),
>>                                           intel_cx0_get_pclk_pll_ack(max=
pclk_lane),
>> @@ -2778,7 +2772,7 @@ static void intel_cx0pll_enable(struct intel_encod=
er *encoder,
>>                           phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_=
US);
>>=20
>>          /*
>> -         * 10. Follow the Display Voltage Frequency Switching Sequence =
After
>> +         * 11. Follow the Display Voltage Frequency Switching Sequence =
After
>>           * Frequency Change. We handle this step in bxt_set_cdclk().
>>           */
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers=
/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> index b2db4cc366d6..adf8f4ce0d49 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> @@ -121,7 +121,7 @@
>>=20
>> _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2) + (lane) * 4)
>>  #define   XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT                REG_BIT(31)
>>  #define   XELPDP_PORT_MSGBUS_TIMER_VAL_MASK                REG_GENMASK(=
23, 0)
>> -#define   XELPDP_PORT_MSGBUS_TIMER_VAL(val)                REG_FIELD_PR=
EP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK,
>> val)
>> +#define   XELPDP_PORT_MSGBUS_TIMER_VAL                        REG_FIELD=
_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK,
>> 0xa000)
>>=20
>>  #define _XELPDP_PORT_CLOCK_CTL_A                        0x640E0
>>  #define _XELPDP_PORT_CLOCK_CTL_B                        0x641E0
>> --
>> 2.42.0
>
