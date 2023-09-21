Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CAD7A94E1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 15:41:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3246610E0F2;
	Thu, 21 Sep 2023 13:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCE4810E0F2;
 Thu, 21 Sep 2023 13:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695303704; x=1726839704;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=FwnjK173hohx/50fYQlGrhDWo8Xsc7onYH7gI3P2I/g=;
 b=JbEgRYQwijDgul5inyVbDQBmUyXC1d7amcxJZRTCq+h65wFlRbh86cI8
 K6J8lv7yS3U/P48zF47Xd7F0Ni4LUH6uhgo3L9AHct2R+48678MJCWOYV
 aXinTxVgsGpIjnZf55B6oQKumXojq4XZDw4RfZhZcIAFoNmXnZ8NArKLs
 84GagMX9Sj76A2LztmnPatvlJYofwv2E9Utc9PeHhUKA3YiGkJbCRyrxp
 scBe3C6qGqEnXsBP142R1yfeG20xNc+ohe7LgdxA3DHuaXbBGw2cGaayI
 AE4336eHTTZHv0KZIl9p72/gN8jxpI6taeay7nXv1Sag5hiY0k7eAmzgj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="444634201"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="444634201"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:22:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="723759466"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="723759466"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 06:22:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 06:22:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 06:22:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 06:22:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 06:22:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=irs4W5GyiXAeZiyACtWO2vSyMT7mUe+LOyU/MOeWQ8DA4HC/AB+6F6A8F8Ivb1hLghcEZBg6lfCceybzl62l0cgYizfJXsCXUr362C+LbJ8iCP2beuD2nqUFePK5roqT2RrgKTxBzcGVXchSZemQwLJMl0zSuot8urKU+too3K9xviYsPU75AH5Fd4pe2he67vTJ93Qj4CYAJqAmMk+98/gS9VKE5Jubjiq/lqLmTaMVon3TAvXlKmEMNFg8Pg8+sDE7NMzLpEQYzZuy4Emv7BQEYbuhtTD3ElPHEFGQ8OheV++WHnt5It7OvRRNTG7O7qgdLEWrdfHWgbV2H32Dyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+xnvLuktHX13HIfAQOPUVxEX2VN48h9zx1mCs/FO+u8=;
 b=Vd71Ol7nUlnm9vVv6swtu/lgD/qNsgWaCQnEHLFZtZxzHVhrRD88qhylGklrqxP9EL8v238NDEHpDQQxnZfhz6j2kFxfvx4v/OwtUiucGqjDN/6evRfW1MJeMJTMeFr6vNYZwR+aLfVVNeFuWmJLAP6J57LUNs2cJHT3qpm6Q/vXdbb09Bsf4PrAPiD1OlEkk6KEV6baCw++J7R9a+zR9Xv2efcfhDwhZAgAJKcsyFrxZ5SVavowKHoQNduuA3tB2sTuvlDmKpsOKQvBILqSiXOTFSE/A4vptXtTFKc8ADJsyJWFL4jThXbvDbQCiftnMiBL1W5FMywslYdmOGLuNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB8238.namprd11.prod.outlook.com (2603:10b6:610:155::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.21; Thu, 21 Sep
 2023 13:22:26 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6792.026; Thu, 21 Sep 2023
 13:22:26 +0000
Date: Thu, 21 Sep 2023 08:22:23 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <6xbdhnsalvs7d2i6crfcniog3pepg4gospzyq7vakptla4vgef@opjfzuwbdjr6>
References: <20230904115517.458662-1-vinod.govindapillai@intel.com>
 <20230904115517.458662-3-vinod.govindapillai@intel.com>
 <ZQGRH4aWpp078lBl@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZQGRH4aWpp078lBl@intel.com>
X-ClientProxiedBy: BY3PR05CA0006.namprd05.prod.outlook.com
 (2603:10b6:a03:254::11) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB8238:EE_
X-MS-Office365-Filtering-Correlation-Id: 053934fc-44a4-433e-4dbd-08dbbaa5cc67
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dj51Gnt6MJTRYwB4a6lFHj3ifxhdM2WS5dKk9XalXwGO7LnJYc+KNaZ+uizSqmmCEi8EdUm4VLK5noCMmeBbJ3ynIJ+1CD0gvv/JGX9IriS/g/5iVZoNSQ1W81VDApuoSRhSpNKnfmfNB+GrMDR1SROYlonrvnO7NYY3QwEAZi1u66PIeC2fzV/5o5NRntK32C3cm89y1Tdt7XDPF3p3e8UKbMAWn+WGSbiiEG/3ZaSbCbGP/5D5im6YGn4n/XG1RCljcX7/o9ohgzGrNd7uH50+7LkJdNPCPFLfuajUlV3WszzFweOFjc1UTG6P4UJnKLjTxHRKB484N/pdeMzKvyTNq/3R0SEwdpFh0JnYk4S0pLCsCJOOadtocFTjudDYnFRDRmBj9/l116sgqmznQHwyJBKGpjamiLMteBMLqpyt6kwN7UhsIzv6Bl1St6nlUeHw3ibYyMpSGJrAuVsC1G8YSift0HFFCCLQr9hymbEzMocijPGchAxxMMbkCS0wGmduaG4Oc5yhipito567fZF9ST2jAqtEgs7cIdLHFztYGoIgsKLrAQZMmOinupYy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(39860400002)(366004)(376002)(136003)(346002)(1800799009)(186009)(451199024)(6486002)(83380400001)(6512007)(9686003)(26005)(66574015)(316002)(6916009)(41300700001)(66476007)(66556008)(66946007)(5660300002)(4326008)(8676002)(8936002)(6666004)(6506007)(2906002)(478600001)(86362001)(82960400001)(38100700002)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?OJgLbKjHUEbjPsb6CdFWUGsEyLkgVwZkfulbfLxBrlONWLVEopOjYEfszs?=
 =?iso-8859-1?Q?8iz+UlCOQKYQGQSFhOjjyGe7FrECJ3/+mlscpuWViRoqqhmuQyCCC1TtH0?=
 =?iso-8859-1?Q?dAAFnQqnoOK7Mykdb6pvP7PeMfDIIujMxNnO5SIukdJiVE+1gAjEkhJEht?=
 =?iso-8859-1?Q?Oxb1wRG9+PTw1Tj4FozMXN8IKTh/KEEuARJmQ/v133WJ751QeQIvRQyHA0?=
 =?iso-8859-1?Q?ma6SFZI+prcKK/7qq1No/CIGavTCNbaa13qEcDcLPm86CpnPf2ofLIGKiw?=
 =?iso-8859-1?Q?OyMqoSHi9JWO8Q3R+hWoOqiMvmTFcIEkaMTSoAYs98xZzeMRaZLI8HJef3?=
 =?iso-8859-1?Q?kV6IMEtUjz6lLC+SSwFU9yXj+sqhCkA9i2P5rbsf47vMtQHSo053PUlkjg?=
 =?iso-8859-1?Q?TVHjoxL6OGG0vR89f4jDo4xyQSi4agzS2JIB9zHl/VMQ3ULtedutfBa0yx?=
 =?iso-8859-1?Q?eD9eOTjUZlh7KPYAD3vJh0V78PPSjVEOUqmcVBIUH9u+KNHRG74fzIbdDn?=
 =?iso-8859-1?Q?9CP2dKxfNwZ1Vx+eHUlWmG9euoP1pV+fnz4N4yCLkcZQ/8HJhX1glr/OFI?=
 =?iso-8859-1?Q?0rP3sWN4jpiHQCNaOWpKLhZ22BeEQTmkj2SIgHjvBG68AwravMf65AcjA6?=
 =?iso-8859-1?Q?jE4I+v671WebEPBKe5/LG5tvjeWpT4/s9ViRQZ8FSjevKhQqHYV7LlmYCi?=
 =?iso-8859-1?Q?uoYKlO3a/PYxaWunf/labb+wmMaEVq4DlN8iRZQYsN77+OJyleuaG5sLap?=
 =?iso-8859-1?Q?Fsf7WqwPupd5LzXZHZaKgJ18P0e220rgMORfcjRJC+XYYIsg/B83MH5qKz?=
 =?iso-8859-1?Q?gjOuWXjUgCTpsESnNYBtjnFXhwm/0r91JWE2jd7mRVl3URzvc9hXm2HS3Q?=
 =?iso-8859-1?Q?NZDoEZoMzmdQnLR705kVLBlgr9HXIYzkk+JLiMtZIvtjd7EF24hm8mQ6gD?=
 =?iso-8859-1?Q?uhLrnscTu4nFIUg6zIfucV3m14htqFdkf9ZuqSjYS1NeUXiCxrRqz8hzYx?=
 =?iso-8859-1?Q?Nqnrmie/2McxRQ/pC0MstxCcmlYcdoKZM/x945dfe4Mdt2B5Ovp9TXgEme?=
 =?iso-8859-1?Q?PzAydTU5RzH6bXDxQI8JQ68HqTCJOPkwp4YO5+XQMppgRZATY6c4QyFiOh?=
 =?iso-8859-1?Q?619Y/h4al21WNP4vmHfZsKGvFbxx+DCC5IhlbPEIajsthIedW61DrSs4J/?=
 =?iso-8859-1?Q?imeVgydxbCt/tqh3hUtX4xpR6TexBekC1ndrthPbx2m+Hn0DknOo9nfUMW?=
 =?iso-8859-1?Q?2uCzjs3CUABpEcSDrI5E10mAM+ZAdGDEXVnSprdGaPbzkJEt9QNP16TihV?=
 =?iso-8859-1?Q?JITjiEQ9uUxj38WV00yTooTDL7tm5jZJ5CRYTRXnD8hfCqLCA6XnswbSBC?=
 =?iso-8859-1?Q?dw2dWMDOTery/F+OwV8PVPRZhIDOWx1fs/8vUoJQHiynY4N8mhU9d0Qrv1?=
 =?iso-8859-1?Q?zfCoLom3vzHvvaCynBqMgvEt8I8sfo3Qt985aTy+ife2UBNSOvv9QPLIvV?=
 =?iso-8859-1?Q?hgIabtowVqSfIWlq9+YIcbnA52UUZ2N2iha6cWFdGpE+vIFyU3MoC9gOq6?=
 =?iso-8859-1?Q?MB6k82xkRaG35uC4I/TMxYfg0AcqvcLpQfdYZ4rn23sFbWhpgVzjqkjhv1?=
 =?iso-8859-1?Q?ZKhAuM09qMUCWOOfBIbsirJ6bHjHP1z70X5nZQtGq0Rvrudv3eHoiOeA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 053934fc-44a4-433e-4dbd-08dbbaa5cc67
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 13:22:26.7747 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +qg//mTXldheidlBG+19LGaZgO4fRWLf9QrlaeBhE4A8GpQkAg/vwqxPvSC8LZmtUYGtnfvqrk+V4l74vClW0xuTJjTM1ZedTlsPoaFFVbA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8238
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4 2/2] drm/i915/lnl: FBC is
 supported with per pixel alpha
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
Cc: matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 13, 2023 at 01:38:23PM +0300, Ville Syrjälä wrote:
>On Mon, Sep 04, 2023 at 02:55:17PM +0300, Vinod Govindapillai wrote:
>> For LNL onwards, FBC can be supported on planes with per
>> pixel alpha
>>
>> Bspec: 69560
>> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> index a3999ad95a19..c0e4caec03ea 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -1209,7 +1209,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>>  		return 0;
>>  	}
>>
>> -	if (plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
>> +	if (DISPLAY_VER(i915) < 20 &&
>
>Bspec still says 15. Someone needs to figure this mess out for
>all LNL patches.

The HW reports IP version 20. The name of the IP is "Xe2-LPD (formerly Display_15)".
For checking the display version, we don't care about the name or former
name, we care about what is in the GMD_ID.

Lucas De Marchi

>
>> +	    plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
>>  	    fb->format->has_alpha) {
>
>We would have already rejected the pixel format earlier, so atm this
>check is redundant.
>
>>  		plane_state->no_fbc_reason = "per-pixel alpha not supported";
>>  		return 0;
>> --
>> 2.34.1
>
>-- 
>Ville Syrjälä
>Intel
