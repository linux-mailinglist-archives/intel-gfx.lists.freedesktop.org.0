Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CEC857CF3
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 13:51:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E20310E900;
	Fri, 16 Feb 2024 12:51:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VphCMTZk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55FCE10E900
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 12:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708087904; x=1739623904;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=Nmb2iOFEYiQmgYstKhtVFOuHRUecvFUNesx0TyOV+3Q=;
 b=VphCMTZkhRzpALYGdXDeA6rick/LLcpaLcQig39LJER4uCl3QJ0MMzAq
 HrEJiddT+pVhYCjPI07m3jpLVIFW+X/VzFpj2yEK/mLUjYC5zDZuICOJ2
 6uPu4D0ZK9cz3c0/zxcv3UAxK3R0Mw0uGuxEkKTv7HRfsnnFX31A8oY+E
 XEosVbbdYEDBlokwpx/yBuWJXeOYBSabLW7ABj3CKiF2yUzmZY3R3i9+8
 FL7A/BkO8+sfd2toLmQ+fCFp+DPTd3mCLkOlAMAH8k//juISOossYbfn5
 9ZC93uCbFL6kkm/kBdNmr4hnF2w5P8ol2qieEShGZ8KD2w6gw9NNHWrY2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="24676412"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; d="scan'208";a="24676412"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 04:51:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; d="scan'208";a="34614519"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 04:51:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 04:51:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 04:51:43 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 04:51:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J/Jd/Ag3vt7YWejtGAQLvi1T8xRl7sT5F1r6jwiMY26Xpaw0VfJuGdB5kRV3I/d3uG+J6ouY2X28Mc4KWifQQjfqbPYRET6ZTi6Ua/oUWaCOiz6gJgXYjFm73PaSzotboUkwfZP626CRyjGtqW+x2KReAqGqXG6wLQy95yImXJsNfH7TGIwXTWn1PmFS1DQ26A4vz9QaPRMSUxD/xNIZeBuIg02Vua+7dcyOgFAdGRyAHSH/p8RQOKO3Yc5e747fLJHO3J/o55qCrV6BdIl9MNd0mhxw60wSLUPmFsuVg8JKpbjxoRrRAfObLAmen9RszvnAexP8Y2Lxc5xOOWnCqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lHLs/8dztixEcRZDrGVAQRReOO9xFWCR1us6KdRTemo=;
 b=SmR3gAT7ZElkrNX456Wl6agwMZ619UHyscX5mS4/BICe/qJohDTA6IcjehYar03ebpIR9GFIcot7ZO34mb1wcEAsOdBxYJ5YiT8YWCMsQMBIb7OKTHq9uTGw6Vna/T7jBuEnARGiO21cgqfmw8moc5dQoMsD80lKsd9Nqn05VlAJGp+cYK8Nghy2wh5XvqHzZwouJJJQcnbln0wBtWmweV/rhxfEm2X6kpGgf51TPzkAHRIj+ryfdVvGNcasCEg8duKc9I5YtI0rErR/ccbsqRku4NALS/acuFphF13WX2+x3bdnzSNM4HSF2mzzUmrYNLe0/+DaPwsozuCqIGuEwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW3PR11MB4586.namprd11.prod.outlook.com (2603:10b6:303:5e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Fri, 16 Feb
 2024 12:51:41 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa%4]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 12:51:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240207013334.29606-5-ville.syrjala@linux.intel.com>
References: <20240207013334.29606-1-ville.syrjala@linux.intel.com>
 <20240207013334.29606-5-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 4/4] drm/i915/cdclk: Document CDCLK update methods
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 16 Feb 2024 09:51:36 -0300
Message-ID: <170808789627.10917.12293971835741985062@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0334.namprd04.prod.outlook.com
 (2603:10b6:303:8a::9) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW3PR11MB4586:EE_
X-MS-Office365-Filtering-Correlation-Id: 0dba02f0-a1eb-4296-75b4-08dc2eee0512
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HfuDvzZ/QmpdY+fo3qVRrRhlrNB5AzDYSH25NHvf+r5nlCcJ+zgDOP5gmcubmzZ4i8Na53XRcj07VYuJMUF3PCjogwNmNOyV2224ySBv0jM5pHtoqX6LoXywOk95mXS8lczO9kSvP1PzzWDNuKlb4WFhkAXXVOcydIdiwR+q1c9/YHtr67INjA8Cx2vgdWIXEY4GncLvrEpd0Zesc8G4h7xYuK6Bu5uItIv1tiZj3NznLamy48Lke/1KZLsIUujOOKruf3T+by+cHPFPDAZgR3FXA/wzVqe/bhyp/lVpNqktrwN2ZXtZHzheNbmrufe6u0RAmCyYfU7D2flWme66bFdK0B2afA/LQQofDmdS4WmU7ToOCKZWNjsbAXiuY09fSYJklMUn8PUhYpcvS1/6u9jQ2z9ykjZz47cw0wjX7Pz3/DCupNxR1NTfuzcsOV7vF4O8MZCiXQl3eToZm9BInp4fRk6Y26b8jUmfr60e7C5wuRGZeKJPp/AzLCdMIeOTE8iR4KWWswQHjkAcueGzqxXYlsYoIqbrJNdx37aJIgs+pNE0+CBxyMr4zNVZja4T
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(39860400002)(136003)(346002)(376002)(366004)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(6666004)(8676002)(8936002)(66476007)(66556008)(66946007)(66574015)(83380400001)(86362001)(38100700002)(82960400001)(478600001)(6512007)(26005)(6486002)(9686003)(6506007)(2906002)(316002)(5660300002)(41300700001)(33716001)(15650500001)(44832011);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0MrRlpWejlnRHU0b0ZVSUtHU21DaUp2TzJhTEhPaDhHMm5BSFhreDNrRGJa?=
 =?utf-8?B?UzVhYW8wVm12SllqSSsvUVhMU2hsTGNJbjJucnlVNU82MjkxSmJFMkdpTGFX?=
 =?utf-8?B?ZzFQVzkrVjJaVGZ0b1F1OVNRQmdVemtHR3d5S09HSmdJZWVoTVk5Z2VMQkVj?=
 =?utf-8?B?M2l5cjVXQVpDdFl0U2xWZEZlOEZENjlZVUs1VDNmeTlMODZaWWdaN1l4NFhD?=
 =?utf-8?B?cXBDTnI1bG5vU044ZkpQbzd4QjMzUmxCU0hxMW1FTmcwVXJwcFNkOHRKQU0r?=
 =?utf-8?B?ajR2RnBMYjBaSGZTSjl3ZWhDWXhNOHZpa3h6QmZFOGJ2R1I5T1FIZzM4UEtC?=
 =?utf-8?B?K0xGeGoza0h5aHZvUGg5OS9TNS9GLzA4UjFlR1B0cGFiR3lacXU5a21iY1dn?=
 =?utf-8?B?MHhLMXFEaDZaKzhaMzdkTkZ2OVl0R3dsb09CcHJJMURRYjdFS2Zpa0Nwb0Rv?=
 =?utf-8?B?Y3VXYjZKbWVWMlZzUTVRV1kzNDhwSnQ5My9hbG9mdDlrWCt6TnEwVERQSWpl?=
 =?utf-8?B?V0VNeDVCUEp2NDNlc2llS0hYVk5UZ2F3cklqK21qY2hQOCs3aFdtRTFkeW56?=
 =?utf-8?B?ak5pWXNhak1UQnRONWZ0SEhQZmpGTWZ5TnR3TmpKNDMzNDcwdE9ZZE1UYTJa?=
 =?utf-8?B?RVdwUzBKcWpPc0c4YnJ3VjZLWVBQbXJVUnE3d2pMWXNQdlZ5aFR6ZTUxRWlj?=
 =?utf-8?B?NTkwYlRET3U3TmZqY3VxcEVXR0pxTk5mMFQxRSthZ3M5Q3NzRmthUlBmSmp1?=
 =?utf-8?B?cVQrclJEQUlESEdrN1dNbURSa25ZSHM4Mm1nc0lTaUwxYU0rQldSdE80N3Ix?=
 =?utf-8?B?dFpBcnl3S0JNTEMzRHpvdDZYaGJlTjQ4VDhZWEJzaUdoY2tRcmY3VWd2bG9o?=
 =?utf-8?B?a3Jvajl3K0NuYzJEckdoNlR3K0ZUelBoQkxGV29VTnZDMndKbDE1WGpqK1g5?=
 =?utf-8?B?eUxzU1lPWk1Dc2E5ZXMxaTVDS1lvYmJOV1g0ZFdyTTN1dWhMUjJUcEorOTNU?=
 =?utf-8?B?WngydFdsOFVSK21pcTJKa3NwNTFQNmZHenMwL09lTVJZVGFNTk5OSmEwMkda?=
 =?utf-8?B?M0VjWFZ6cFZBeHpOZVhJY0Q2SEgrOXVCbklNWXZyWHdsZmMxQlF3SXU5Q3pa?=
 =?utf-8?B?azkvL1lSOEFoZ0gxaFZGNUlOY25DWmg5eGVWU0kyL3pLRHc5dTJNQm16cGFT?=
 =?utf-8?B?VUFQYU9mRllta2IvaDhoMWVzbXF3SE9NL2VidHlXY0RuN0U5cUs1QkdFTFhy?=
 =?utf-8?B?MWtDTmwzK09FZEJ2RUlTdzRpeXNYLzYwL09PR2RjRFVJQ09yWTRPTnZHd3Fw?=
 =?utf-8?B?L3dSRVJRTHovZm5JYzgrbjIrczFxSFlCTTN6Y3QzVXhhcmJSV2o2RnM0VkEw?=
 =?utf-8?B?TzBPa0tXWExtNlI4SmNybkFiYWNMdHIvTzlHUXRtZnVIQVlaTVZPWlgzVUpF?=
 =?utf-8?B?NXl2SnR3Ry9XQjd3L3lLelp5WGNveWhrV2I5WlFFZ1FCeXdjR3ZBS1FBdXg5?=
 =?utf-8?B?bEkwRFh0Rm9mcVY0OXpIVDloZTFsRUd6RjZMOFVHN0lnR3RSMFQyc1pRaUJW?=
 =?utf-8?B?NW10azF3S2dFRjZPbEFxWjNqWUc2Y2lSd25hTHJFRTUvZ1d2VTRWQnloTTFE?=
 =?utf-8?B?M0Z3K3dpVmVmcWxVZXhHT0MrUzF0NDdmcC8vSldlMWJldE1EbnIzRWhJNk9H?=
 =?utf-8?B?NnNxdFN4b21rZWY1UVE4NWNyV3pHd0lESTNGLys5ZmdMcjZmZE1pNnZGSkJL?=
 =?utf-8?B?NUVVNWFYVURoRFBzVjVTRHZaZnJnNVowVTdrWFpwcjVaUUQwWk1KTFRobWV3?=
 =?utf-8?B?anB5ZlMrT3NCQ3gyaUZFWUgxc1pmYmxPeEh3RUorRXB4TUprTE5say9OWmR4?=
 =?utf-8?B?TTBlQThKOXBVbFFQRm44WEhkOGYxVWQrK2Q4QzQrcTBkQW8vN2dCWXJqVmNu?=
 =?utf-8?B?bHJjK1I2dHYyZWU3MGJoYjNmNUtpM09xaXNVeFh2VE1hRXhyRVB1NlAxSzF1?=
 =?utf-8?B?NUpIdS9kMkNIUlZvbEhGenc2QjVQd0FmWFRrc2FySW5EOGR3dU45aFBXa2Ju?=
 =?utf-8?B?eG1nbG5xY3hxOWNjOFFqa3BselhyUmp2bG5wd3JwSkFCQXpvNGJNMGxmcVZM?=
 =?utf-8?B?em1IWlJlZFJEblIzWjNhY1RzOFNqWTE0NWg5dzVNZW1idXZHWFl5KzNMMkRS?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dba02f0-a1eb-4296-75b4-08dc2eee0512
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 12:51:40.4071 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LVB3yTqQ+HnXjDAJcYygD4Sw0CorBEc3W4vfWGLxz0v+tSzE7tuK5MSC5wnYeRajKftlG0DWO34JIUcDvUK5SA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4586
X-OriginatorOrg: intel.com
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

Quoting Ville Syrjala (2024-02-06 22:33:34-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Add a bit of documentation to briefly explain the methods
>by which we can change the CDCLK frequency.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 9 +++++++++
> 1 file changed, 9 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index ca00586fdbc8..30dae4fef6cb 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -63,6 +63,15 @@
>  * DMC will not change the active CDCLK frequency however, so that part
>  * will still be performed by the driver directly.
>  *
>+ * Several methods exist to change the CDCLK frequency, which ones are
>+ * supported depends on the platform:
>+ * - Full PLL disable + re-enable with new VCO frequency. Pipes must be i=
nactive.
>+ * - CD2X divider update. Single pipe can be active as the divider update
>+ *   can be synchronized with the pipe's start of vblank.
>+ * - Crawl the PLL smoothly to the new VCO frequency. Pipes can be active=
.
>+ * - Squash waveform update. Pipes can be active.
>+ * - Crawl and squash can also be done back to back. Pipes can be active.
>+ *

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

I think it would also be nice to have some explanation of the components
involved in the generation of the CDCLK. I would prepend this paragraph
with something like:

    The are multiple components involved in the generation of the CDCLK
    frequency:

    - We have the CDCLK PLL, which generates an output clock
      based on a reference clock.

    - The CD2X Divider, which divides the output of the PLL based on a
      divisor selected from a set of pre-defined choices.

    - The CD2X Squasher, which further divides the output based on a
      waveform represented as a sequence of bits where each zero
      "squashes out" a clock cycle.

    - And finally a fixed divider that divides the output frequency by
      2.

    As such, the resulting CDCLK frequency can be calculated with the
    following formula:

        cdclk =3D vco / cd2x_div / (sq_len / sq_div) / 2

    , where vco is the frequency output from the PLL; cd2x_div
    represents the CD2X Divider; sq_len and sq_div are the bit length
    and the number of high bits for the CD2X Squasher waveform; and 2
    represents the fixed divider.

    Note that some older platforms do not contain the CD2X Divider
    and/or CD2X Squasher, in which case we can ignore their respective
    factors in the formula above.

In case you like it, we could either add it to this patch or I could send a=
s
a separate patch. Your call.

--
Gustavo Sousa

>  * RAWCLK is a fixed frequency clock, often used by various auxiliary
>  * blocks such as AUX CH or backlight PWM. Hence the only thing we
>  * really need to know about RAWCLK is its frequency so that various
>--=20
>2.43.0
>
