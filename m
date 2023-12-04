Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A20F5804058
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 21:46:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3C810E402;
	Mon,  4 Dec 2023 20:46:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB20C10E402
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 20:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701722799; x=1733258799;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=MeKeslqj32RKYhlozIRBg8GM07FF8xViCeIdL6S5uFk=;
 b=crKhrgeHepxeQ1AwnZNao8TZsRdD771Gu2Tw4Wl/RagEMP3EyMQaXMMz
 xlO0d8fTk7E9o0nW9ooSMc0NT4QgYKQAQwawDX8+Rv/MNu9cN5EmYCVmy
 1U5u3Pg/5E0G8qIZrnHgBtv0+F8Whd8crW/zGPhYt967x+A1//k02HCAE
 yIkEOQFaF4cdk7ql0QVfpsrqsqsPiB8zhq1VAtG0vwLVyJI5jz8esHOUY
 xoyX+5NHQIqG3Cu7sBnihi3KkircmDHgTWE6qJXHcOVz+SQEu/pu/AYpM
 JwNoxJ4lxPG5fyQovEHOgCllmdcsSVRS0heiJZziqvU7aZke+8cjAdvl6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="852493"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; 
   d="scan'208";a="852493"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 12:46:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="799711384"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; d="scan'208";a="799711384"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 12:46:38 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 12:46:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 4 Dec 2023 12:46:37 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 4 Dec 2023 12:46:37 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 12:46:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U8NIm49FMdWioRPSfLstsiKgBgK4nztAUWm3J0tlBTsZ2lBAXZXl/aBj4flwvNthWD0gY4jPvim0EFua00vG7XdBGjoZjRrgNC46/dmSy/k5RHt86wHpH135k+9PgSuL5Au1SL4rPBEXOqcBdnrnoISS1UkMeQYQH/CwNR7YVDEqUlaAS9EN3ywUz2IKlddni3IVklr2/2JbPFxjGtQafBZ3HoPeBYEXtHsee5DOCNHo1bb6z4VGpyzs7C72wj0rPuRd1y0rYcTKkE+kFPXPl48nHhC1XdIjjcJ2OPL/zKk4g52YJIdHQ0xVIjZMuMF2MS5aW0iYZ8vrQQWiiAW2dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dyr0rKTWRjen0J5r+YtVJ2C9XXefQ4nRDvGmwk2yDqE=;
 b=OEEcwm+js4d8nAV9g3HSlIAAqskrme7O1GUGfgNO9s84IFUdBeesxVM0sRxGwL/2KUIfyZmi2xB4pd6t5tP2XrpHBbfxVi1bjIAK7Nm8sahXtVgvRiZhYDim/Tmp6wP2rahxO9ecIh3z1MaivJzfalTK+XWpczC8NuVLv5zUW/INdXQMsUsMNP/QWpXnL2Z526sw2gmrXId/PujRNEWl+dUqQTngOdDridM/5WUszWG4uIZfOGU0KoX/vH7NoA00Me8l58xiEWU8k96R+2I17M3UkUKrRHwabB8pTMgPToEx3Xz69M2y3BPBoXJKRQxHZi79/iQo1b1QlHDrGRe7qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH0PR11MB7544.namprd11.prod.outlook.com (2603:10b6:510:28d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 20:46:35 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 20:46:35 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZW4xGvqAYpc9HHF7@intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
 <20231128115138.13238-4-ville.syrjala@linux.intel.com>
 <170146161860.74196.15128036322042431763@gjsousa-mobl2>
 <ZW4xGvqAYpc9HHF7@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 4 Dec 2023 17:46:28 -0300
Message-ID: <170172278840.19717.10772744295565186200@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR08CA0072.namprd08.prod.outlook.com
 (2603:10b6:a03:117::49) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH0PR11MB7544:EE_
X-MS-Office365-Filtering-Correlation-Id: 19073d53-f9da-4d34-c672-08dbf50a1a2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q4Jt4P0EV1P0TytiAPKdMcffWlkor/cRRkZ+FRtzSRrrdGXoSkSg1Sv7ICvSMQoFFCX1lt5Nxp46jyXhIJuWKB+3Nvqp8Hk2Sn8C7YboagF47hXeNnKx7a1ySCrsRTj/1Ep+hQD5+1rnXYr1l7sEVPwKU01WnajOvnDPmCOqYUSVhNuTX9+iUm9R75nUHO7kvFwHoWDysW0w923R2cFxDgMXNkMNjPJBmS4WvWEWu1chwfAdin+YzlCdiN2YodUDvA4z6l+iIkq3dejphVyxQEU5x6flXRfJQXJYsJhhkbhpt1aMTlHEYdZlYNHA73dPiqFRMORgMDAVuIVuzxzJxk4eA9Kyr1ctsYE80nDsGrbPiyWCWYBMWiHMnXV6APzUd5rRjqDSUxS34VTFoJdkl7dgIfPvvj8uxNPMXBeyq5gf3z4VoJrjAK18IyWSOdlrV3AT+lsuvlf5v/WJ+KvekM9N/rjZ+ecmBSe89K5OpcHgWDvTAsQTi2B/AL22KIJnOAzEa32o6UNa1yBN3HyqVtfIVCjYFrrvHBz4ZA7DWLzE0sMn9WD8PkXugL7/A24I
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(136003)(346002)(366004)(396003)(39860400002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(41300700001)(5660300002)(2906002)(4001150100001)(44832011)(86362001)(33716001)(6512007)(478600001)(9686003)(4326008)(6666004)(82960400001)(83380400001)(26005)(6486002)(6506007)(38100700002)(8676002)(8936002)(66946007)(66556008)(6916009)(66476007)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nlk5WUZKc09Ia3VLaDlQU3hzWjhtT0lWeXQxbVpIL21MWWZlY1pJL1ZuVWpP?=
 =?utf-8?B?VkJwN0x1R2tGSVBQa3dadHNOM0ZIbWJ1SVNzSUNZeU4vQUc0WVp4TXVPb0sz?=
 =?utf-8?B?RVpWMS9TYjczck1IeGQ2RzFCdGRucnRqTVZpZ1p0UFFOUXVnanJnb1l3MnVT?=
 =?utf-8?B?ZXQ3VWJCV0tKS0NJWldUaEU4cU12REI1TGxkVFhyNmJSRmdUc0VweGYyT0xI?=
 =?utf-8?B?aDI0c25VYnJ4bFJjdjhCMm9SM1hyTkNvbW5wR2l4TUtSdWh5OFR3VExycnVs?=
 =?utf-8?B?by9oejhqMkwwSVA4UzlMT0pYMkRPcmlLcFd0VWY1eGt4Y3R4SFhzQWkwL1kv?=
 =?utf-8?B?UGtSSEFHR1NrVWZKdkpMTlQ2dnFMa05WTmdWQVViY2FETXV6Ynh0eDBncGFF?=
 =?utf-8?B?Uy9vamV6QzRNcjJGQS91NmRvb3ptdUdDTTFoVndkSFhqc2xydW5pUGhCS2VW?=
 =?utf-8?B?SGw4QzVUcCthMzEyNkJjL1Z0UEE5MVBKMWtRWTkxazV6UUNIN09IdlNBOTFp?=
 =?utf-8?B?aktueGFnZ2VuVExDbWV2c2Z4Z3R3S0h4VE9lMjVWZWZpcVd6bUQ4QXp4NWpN?=
 =?utf-8?B?MVpKZ3F6V2N2Z0tvUjdObEdESVNXblJwcXpvSGFHT1lqTE5xR21JSzBESW1H?=
 =?utf-8?B?SDNuaGZ0Sk8vaGkydGxaYjlucDEvd3J5MlRKWG9DbkdnVUdQckl2QXZEblE4?=
 =?utf-8?B?VHl1bjlQaXRNN3BzdDhWTUFhQ2RNSTRjMExFSU91Qi9xa0tYdjFzcU9oZHhG?=
 =?utf-8?B?dmNVYy9LODNRTjBZbGc5NVpYb2lwaEcyeitUdzdpR1QvZVBBb3hVMnAxWkNC?=
 =?utf-8?B?NGhQR3BZUHF6UU9ucTlJejhueWMvdU1uOVFHb3RMVE9RNktPeDU4bnovbUJI?=
 =?utf-8?B?SUtIaExVQ0xlY0Zoc296OThlZ3hNR1FMb1NXVFJ4bTI3QXo0bTJJZXk5aVVD?=
 =?utf-8?B?L2pKK1dGYTZFTE5IY2hRRGNaekFFTzVlaDIrUXNlemhGTmNTOFA2d3Z4TkMz?=
 =?utf-8?B?ZW1DeDFadG41SXdKejRMWlNQV0xkTU5xaHpncTJ3dFJTbUdvV3N6OXNyNjdL?=
 =?utf-8?B?TGdlN2ZVTVhMekYvREJJeEtZaWpyYmFpblF3YkU2Slh1Yit4UnhWaHVIZThO?=
 =?utf-8?B?ZmFyak5HSTVvNzdKT2VVMTFEa0pTSGlZaFZvbklGOG9iVnZydXpWaWR1cS9K?=
 =?utf-8?B?eWNEbkhmdjkzMlVEbHNLaGFYOFlKbDEzQ05CNXpDcGxLeFUvU2JOcFZNcURt?=
 =?utf-8?B?WFZycjdhbjZUVEo4QjdmU1Iwb1Z2aU0vc3BzMnhGVzFubFpRUU1PMTE5WXpU?=
 =?utf-8?B?Uyt6SjlPT25ITzNwUUFwemJiaWpaVzhpWk40V3FkaHU5bDk1QzUreWRiV0FZ?=
 =?utf-8?B?ZUlFaEszV0RHRVRwZ2Y0bGxTVUxLM3pDV0JydkpUeHRhbE40QzJES0R3cmQ1?=
 =?utf-8?B?QkVybVdtMFB3MnVyRUlmVThqWVJpTVVYK1hML0QzVWZsbHZzMzBNM2VDY3Rq?=
 =?utf-8?B?d0dqbTJKbElrRDcvdm03WHl0RGJEUmJkVUVrZ290NHJITU1kbHFmRG1yMnEy?=
 =?utf-8?B?OGNKekhjUm1uUFlCZ2JiSjhqOWtLQ1FETldiNmR4MHh1RTFYNHhQRmsyZnlQ?=
 =?utf-8?B?ejEzb1creEtEUENzNk9JNFJRWE9aMmZ0a1F1QWZBRmR6N2t1WlF2Rm4vSWdJ?=
 =?utf-8?B?aWRzRjN6MWxQRnlYL3pFWUFsMXJZdGlSdnY5T1ZkM2MxZHlaUGtVR0hLV1Jj?=
 =?utf-8?B?UERTM1oyY0g0b21qZzFQbnBpRFZaYlhmY1hEaDBzbkdPRnByT2xPc2Z2V1R3?=
 =?utf-8?B?bi85anEzL2xJVmpubGpJV3pMV2kydTlvOWtzcm9zckxFSmVWY1YwMVJoNWU3?=
 =?utf-8?B?VHBUSnlteFVNUGJpVDBFWGQrNGhhdE8wemZNSVFmNHFIUnlwTTVkZnBtcTFP?=
 =?utf-8?B?cy9MdVBPdFdqNlFqVWRub012RnR4Q0hsOHFueTVUNldtbTIvUGhib24vSlNo?=
 =?utf-8?B?eVh1cjg4bDFZaldHZzkxcUgwUDdBY0RxTmF2b2l5NUZTOUhoME9aNTFxZmpl?=
 =?utf-8?B?UENSNlY1Sm14WXpFbXp2dlRWMk00NUhpUEhiWXRwVGhuQmtWQ2UzTmc0cUlX?=
 =?utf-8?B?VkxEM1lMdVR2eEY0SVBzV2dHZ2d5NzA4ekxxc3cvaGd2TVVYSzlmK2h4OURj?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19073d53-f9da-4d34-c672-08dbf50a1a2d
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2023 20:46:34.4203 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m2hIp979kGCP4sr1ocY9YpDr81hWpAbUJhuOs6z6ygm8RDg9gp4FyWtvtSK5Rvgw28UeMpgF2GIfgG4BFvlTkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7544
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/cdclk: Remove the assumption
 that cd2x div==2 when using squashing
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2023-12-04 17:05:46-03:00)
>On Fri, Dec 01, 2023 at 05:13:38PM -0300, Gustavo Sousa wrote:
>> Quoting Ville Syrjala (2023-11-28 08:51:33-03:00)
>> >From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> >Currently we have a hardcoded assumption that the cd2x divider
>> >is always 2 when squahsing is used.
>>=20
>> It seems the code was actually making the assumption that the
>> divider is always 1. With the current code, when squashing is used, we
>> have that bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) is equivalent to
>> bxt_cdclk_cd2x_div_sel(dev_priv, vco / 2, vco), meaning that the
>> returned value will always be BXT_CDCLK_CD2X_DIV_SEL_1.
>
>The real cd2x divider is half of our 'divider' because we
>specify the full vco->cdclk divider instead of the vco->cd2xclk
>divider.=20

Got it.

>
>Alternatively you can think of it as being the cd2x divider
>specified in .1 binary fixed point format.
>
>But yeah, saying "cd2x divider is 2" probably isn't the best
>way to put this.

Yeah, maybe because of my little time with the driver code, but I had
interpreted it as the one used right after the PLL output (I'm taking
the diagram from MTL specs as reference).

Did I miss some comment in the code explaning that? Should one be added?

>
>>=20
>> > While that is true for all
>> >current platforms it might not hold in the future. So eliminate
>>=20
>> Not sure about the other platforms, but for MTL, I have checked the
>> BSpec table and also did some calculations by hand, and it seems like
>> the cd2x divider is actually always 1.
>>=20
>> Unless I'm missing something in my analysis above, I believe s/2/1/ in
>> the commit message is necessary. With that,
>>=20
>> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Considering that the above understanding about the divider is the common
sense, the r-b stands without the tweaks in the commit messages. Thanks
for the clarification!

--
Gustavo Sousa

>>=20
>> >the assumption and calculate the correct divider from the other
>> >parameters.
>> >
>> >Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >---
>> > drivers/gpu/drm/i915/display/intel_cdclk.c | 6 ++----
>> > 1 file changed, 2 insertions(+), 4 deletions(-)
>> >
>> >diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/d=
rm/i915/display/intel_cdclk.c
>> >index 87d5e5b67c4e..d45071675629 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> >@@ -1899,10 +1899,8 @@ static void _bxt_set_cdclk(struct drm_i915_priva=
te *dev_priv,
>> >=20
>> >         waveform =3D cdclk_squash_waveform(dev_priv, cdclk);
>> >=20
>> >-        if (waveform)
>> >-                clock =3D vco / 2;
>> >-        else
>> >-                clock =3D cdclk;
>> >+        clock =3D DIV_ROUND_CLOSEST(cdclk * cdclk_squash_len,
>> >+                                  cdclk_squash_divider(waveform));
>>=20
>> Nit: maybe take the opportunity to rename "clock" to "unsquashed" for
>> clarity?
>>=20
>> >=20
>> >         if (HAS_CDCLK_SQUASH(dev_priv))
>> >                 dg2_cdclk_squash_program(dev_priv, waveform);
>> >--=20
>> >2.41.0
>> >
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
