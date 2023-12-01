Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3716080154F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 22:27:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE84A10E930;
	Fri,  1 Dec 2023 21:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84D7710E96A
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 21:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701465963; x=1733001963;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=uViLQn4SdDwn39fcu4MQYq9RcbbevHrqeQjynYWFMXw=;
 b=J6EDm3zEyuL8voa/yBMMUE1PASZoaVb0KlznOLmpvqIEClqESf19V2Js
 6eCVUs278LEo75E/m/TOX+dbGRVDr4WGbo1FUSnSlLEBaslL973tXEVhh
 nnbKY2UWHD3CvAsPafAaNgsnGxeeVOw2pZRbM4K7PZdMTXaASqRBPOUZV
 h1XZDdfiem0IDhXla8Srx6qYI+ypzFEH3BkPCaqlcHUOMsudpjXInnbJb
 bsK15sMHohiwK5quUgfBcnsJa2i7yEdVmcvkJCyEi9HT3BY1P2VNtAz4H
 UlY23XDmTDi6iwUL/WaAhCPCVdlqa9w4MAIQDJaGEnTmKUedeFunyHEFv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="567658"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; 
   d="scan'208";a="567658"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 13:25:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="804195481"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="804195481"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 13:25:47 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 13:25:48 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 13:25:48 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 13:25:48 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 13:25:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BehRZoH1IFXklTWhBmUhJ9alPkju55+fIqXvPmq4LhxZk5Ak2kJQcYGrFPWLXH9b7QfX/hZFeUg8zNEL5lfngYhEvBZLBDsvn5Az/6BO0GGvs7/KxxfsbOdEiyqvVMxKTkpT8d57dtz0Dwz1h/VwZW6kmq8dMo1XIoAreRvxAO/SEaQKhbGTnVwskalbhFBdGc6r+yxeFCwMp1iCJ9KNPmfrzptX9INDtiMh7BZO+vcFLguj0Z6pghrkMBkRB08zL8R9NhyfomXzl4mJilGUPahneQS/L6qTn+zMtKlEJqjaVUGHjAJLygfcDcjzeE04QNHX5pF1u8yBkrIOmIPfZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MkI3niw4s7GojA8xcMHf4JvXRHrjMbBaKEFcFwuHHhk=;
 b=LpyiYIsdf5D7Q/lF98q78oGq9TL4N3AGsEkRhvFyUoqOQcG76oMRzzg0OVetKqhwvvuABrIFJZzi7lWuOS4yK/DGhSTLWu4wWTV73Hrg+KUd51hbfYdRx8ZpNdwYLF4NBH5KKWzINeC6Me1XdniTHmgrLiPxHq5YpEnPMTiavqRQo8kZisTF4Glzb430CI3a8SPF1cI+tDsf5f1q12DPj4g1qe18j70I7iK6VqMUk/W+t1Aa8JVzGpzwtCHgELcqt7oXGW/GSUiW8hV7xj6M2k9F4bYJL5HgavA4DwoIAhl9qDjMgcsc9qYXwM1CzDZzsdfCBxhw6aUQ2G3mV/jUNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS0PR11MB6373.namprd11.prod.outlook.com (2603:10b6:8:cb::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.27; Fri, 1 Dec
 2023 21:25:45 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7046.028; Fri, 1 Dec 2023
 21:25:45 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231128115138.13238-5-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
 <20231128115138.13238-5-ville.syrjala@linux.intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 1 Dec 2023 18:25:39 -0300
Message-ID: <170146593946.74196.13146410961667805061@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR01CA0038.prod.exchangelabs.com (2603:10b6:a03:94::15)
 To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS0PR11MB6373:EE_
X-MS-Office365-Filtering-Correlation-Id: f6e108c1-6ebd-4eab-74f7-08dbf2b4143a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tGmEkFj1ZzPlmPjSQt2O4VoLCmJwB8TmkBllZ5g5O0XLmRESmPSfD+bYxmAajzKRDxZrrJwcJmdA35jSRL7UCEZ7E4GG0VLDjNWNFeaFzYWaFqOp+slYPWBwsZHwQAmKDuQ2YTXH1XVJA9uDLKIXJ8yFoYic6m3QT1BWFiTtw1Nn/+/5V5FP9eOPJvCuPMWTMRjtGOFB5G0RvEwv87wTHOp/P0AM3F+NLHdnjrwyUFTWkO03Fo7sBjyDv+CmkFVoJHQ0lA0MogR+UgVFC37ffZztDis1Qk4QzlbJ1Qa98lWreNMaZkDrie7GlBpiRIuq00uQJICBKbNO9+8YBjBy76m+1Xnq9BM2vWki/Cg4Uwry+VdBaHMre+904uGl3UNTfz5auaBZvBAxJc+x6G+Fk7+19ccErStdotdu+V1TJ/cmu3t24SUH9z8EEFyXEdOTR1Kd1IqBnDIcMzog4u/5G4UmG+DAv1gIH5/NwIIoAhFvG6gk5qc1WI8tSXBrNBP1dE9ETukeeQl88mkd4kaOtpN957RWE8dzoMB5oQOVBGaUCbwqM6rAJ3BqD8jy6zA/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(396003)(376002)(39860400002)(366004)(136003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(38100700002)(86362001)(44832011)(41300700001)(5660300002)(4001150100001)(2906002)(33716001)(83380400001)(82960400001)(66476007)(66556008)(66946007)(6506007)(6486002)(478600001)(6666004)(6512007)(26005)(9686003)(316002)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b2V5bkVvcWRVOHp3OEc0eGMwN1V6VEtuMWpmQlN3a0tnQlpSdGYxWjZuT2pM?=
 =?utf-8?B?RStHejJZMzk3NW9UcUg5L0hYRWU3L2xKWDVqNHNKRlZrcXFXa0VCUGg3M2xo?=
 =?utf-8?B?eE03UU1iZkdJY3RSNXN3a1haeFZCT2VFTnNBQklRaTZCdVlUL21yeDJ1T0Js?=
 =?utf-8?B?dGFwSldlSENRWTV1VFZxazh1bkVQWjU2bE5hcDhmREhLVUp6VGhCeEVUb1dL?=
 =?utf-8?B?eDZ1cmo5V01GSzh3ZkpnVnQxRGxqQ3cxWURyMElWNzVUZVJqMUdSOFBha2FP?=
 =?utf-8?B?Tyt3ZStneDhVQTBZZVRUUDk1UEJRK25EUTk2S2NvMnNLeHlPdGpsUGxhVEF0?=
 =?utf-8?B?SEZSSDg4aXhFejF2YTNncnZGYkNYQVZLYXJtUzQzT2M0NER6TVphM2UwV04y?=
 =?utf-8?B?ZUpBS0lHOHFBVDAwNStoYTF4SXhuK3Q1S0p3QXBCalpQaFYvYXIxeE9hTVRB?=
 =?utf-8?B?aVBBYWVWZTNySldiRkJ2QTdac2NBaWNjVGI3NVArUFNnQmhLRDcwZDRsckFH?=
 =?utf-8?B?K2RXTWJjMlRaT0ExaVZzTS9wd3JWNmN4R2JmS280TVU4a08ybEhYZlJ5UjZ2?=
 =?utf-8?B?WUUwMmtDNlBRb21YbHd1bHhKRGpyYW5RYXRMcVU0QjdEejNMK2s4UmNWckxa?=
 =?utf-8?B?Ny9KeEk5c0NPZG02cDZ5M2kyRThEOTYySk9aaEVVVUl4WEdaOFU3RzIzSzIz?=
 =?utf-8?B?Z3lpaGVPREx4YkpDN1F0bXZCc2lOYmV0RWFQdndmUUJ4ZWN3cmhFdXhNTldS?=
 =?utf-8?B?T2JhN252UWZwTWhLVmVTenQvNUV2NGllNnE4V2hTZjZCM005a0hhUjVjeFF1?=
 =?utf-8?B?QmJ3YzN2aUZteTVHUUYxdmVQVXZBcEc3ZUJ4Ti96SndFNmFROG1SbFRJU1k4?=
 =?utf-8?B?MHZXQWhMaVJnaThlZ21rcUFFZk8rRXB3aWdsazZIMjRxSWEwUnZGRklRLzkx?=
 =?utf-8?B?YkVoNm5NbmlyNXRUS2xXY3J3eWhPU1NQVWhxaURtMUc4cHFySzRMdFo0NC9w?=
 =?utf-8?B?Tkg5WkNqKzVkZ0xwRnZiZ3VDcm10OGNjMkxFYXdvdnhYVzIvUjUwRkltMW84?=
 =?utf-8?B?ZDdGTFJwNm9SQkFZOEFaaVVxbndzdXh1ZnlldGdIUlhKZmdoN0xpYkNuTGFG?=
 =?utf-8?B?M0x4K20vS3pEZlBya1F3VG93amViK2lHRUFvaE9PMm4vbDN1c1VibTF4aFFT?=
 =?utf-8?B?dEprQmxrekNrSlJqcFNWQUkwUjYwa1MrWmVReTVqNXdFOEhnR2lvMGVSWk9u?=
 =?utf-8?B?UGs5OFRtMU1BTTNGbkk4TzRXVjI4T24xUTVIejJYcjNqTDBXWGpHNkk2ZCs2?=
 =?utf-8?B?Z2tmdHFjeE8yR0xBcUQwZm4vVUExU0JManU2aEhJUWFrYlN6aURaNGNaS3VP?=
 =?utf-8?B?WXl3dzZteXlncmJmVUlaYzBSN0cxMDV5dVFlSmpFb1E0OE1TOVZ1SWhUTDVP?=
 =?utf-8?B?dzdKdll4LzFGOWhJL3h1S0hZYzcwd3JGZXZHa3N3dTcrZGxRMi9UalNSZ0Fq?=
 =?utf-8?B?c08xT0N3QWZ4alB2TDUzRC9VRkluZ240ampNMXBETXdPSml2aGlVWkhnRXAx?=
 =?utf-8?B?czZVTFNxY01zMjNoTlE1Mk9yMlVnL0JTZC9DWnkyY1NYc2dvRVdOY1BMYXEr?=
 =?utf-8?B?N2k5Z1JkWnVNNFBOdUJuckZYUGVpbG40TG9jMExGUGpaN2F2bC8rUGp3dXFO?=
 =?utf-8?B?QkhGLzJpR2cwRkhQaVFWT0JjMmliQUJSMHhJWWRCa0xucHRuT0ZmWVJkVzBV?=
 =?utf-8?B?WXZLYzhva0JabEMzSWt1RVNEemdjZlZySStnQW80UWNpYjFtUjFiY0VSalNU?=
 =?utf-8?B?M1VlWGNrRjk0WkNkc2NyYUQ2NGFXWlRoRWViejJ4U0Z4eWw3ZVVjanNjYzk5?=
 =?utf-8?B?SXY0Y1NBTjczeHpCaFBHS3JaM2V3WllYQ2EwR3BHTUM0U3JFa21YZDNuNHFv?=
 =?utf-8?B?UWdONUljMi9YZ3VQVVFCV0dJTUpjUHZWdUVJQXpxYnI1TlRGOUVtSm9uZ0xo?=
 =?utf-8?B?V25CSEMvL1gwMjBleW5EZ25mYWJRcDg1YVdpSzJhaUN4UXZGWmJESEZYVCtJ?=
 =?utf-8?B?S3M2aCszZXFGQmlhUmNybjAxaFRSbkFSTUMvWkdoc3FIN09tb1k0RE5OQ1pL?=
 =?utf-8?B?TEdxSXdMbUpxYjd0T0xwVVhjSXJ0aEFFZTIwcDZRMXQ2YXprNGhYSXR6NEVI?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6e108c1-6ebd-4eab-74f7-08dbf2b4143a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 21:25:45.2751 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jV6V437FIDRnwiVxpGAengNA2/9zKNfuPCMs93FsYgpNQdJBVSLEpplx7gVcbTKvncm/5oZuJWAC342VoetAFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6373
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/cdclk: Rewrite
 cdclk->voltage_level selection to use tables
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

Quoting Ville Syrjala (2023-11-28 08:51:34-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>The cdclk->voltage_level if ladders are hard to read, especially as
>they're written the other way around compared to how bspec lists
>the limits. Let's rewrite them to use simple arrays that gives us
>the max cdclk for each voltage level.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 83 ++++++++++++++--------
> 1 file changed, 53 insertions(+), 30 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index d45071675629..6f0a050ad663 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -1446,50 +1446,73 @@ static u8 bxt_calc_voltage_level(int cdclk)
>         return DIV_ROUND_UP(cdclk, 25000);
> }
>=20
>+static u8 calc_voltage_level(int cdclk, int num_voltage_levels,
>+                             const int voltage_level_max_cdclk[])
>+{
>+        int voltage_level;
>+
>+        for (voltage_level =3D 0; voltage_level < num_voltage_levels; vol=
tage_level++) {
>+                if (cdclk <=3D voltage_level_max_cdclk[voltage_level])
>+                        return voltage_level;
>+        }
>+
>+        MISSING_CASE(cdclk);
>+        return num_voltage_levels - 1;
>+}
>+
> static u8 icl_calc_voltage_level(int cdclk)
> {
>-        if (cdclk > 556800)
>-                return 2;
>-        else if (cdclk > 312000)
>-                return 1;
>-        else
>-                return 0;
>+        static const int icl_voltage_level_max_cdclk[] =3D {
>+                [0] =3D 312000,
>+                [1] =3D 556800,
>+                [2] =3D 652800,
>+        };
>+
>+        return calc_voltage_level(cdclk,
>+                                  ARRAY_SIZE(icl_voltage_level_max_cdclk)=
,
>+                                  icl_voltage_level_max_cdclk);
> }
>=20
> static u8 ehl_calc_voltage_level(int cdclk)
> {
>-        if (cdclk > 326400)
>-                return 3;
>-        else if (cdclk > 312000)
>-                return 2;
>-        else if (cdclk > 180000)
>-                return 1;
>-        else
>-                return 0;
>+        static const int ehl_voltage_level_max_cdclk[] =3D {
>+                [0] =3D 180000,
>+                [1] =3D 312000,
>+                [2] =3D 326400,
>+                [3] =3D 556800,
>+        };
>+
>+        return calc_voltage_level(cdclk,
>+                                  ARRAY_SIZE(ehl_voltage_level_max_cdclk)=
,
>+                                  ehl_voltage_level_max_cdclk);
> }
>=20
> static u8 tgl_calc_voltage_level(int cdclk)
> {
>-        if (cdclk > 556800)
>-                return 3;
>-        else if (cdclk > 326400)
>-                return 2;
>-        else if (cdclk > 312000)
>-                return 1;
>-        else
>-                return 0;
>+        static const int tgl_voltage_level_max_cdclk[] =3D {
>+                [0] =3D 312000,
>+                [1] =3D 326400,
>+                [2] =3D 556800,
>+                [3] =3D 652800,
>+        };
>+
>+        return calc_voltage_level(cdclk,
>+                                  ARRAY_SIZE(tgl_voltage_level_max_cdclk)=
,
>+                                  tgl_voltage_level_max_cdclk);
> }
>=20
> static u8 rplu_calc_voltage_level(int cdclk)
> {
>-        if (cdclk > 556800)
>-                return 3;
>-        else if (cdclk > 480000)
>-                return 2;
>-        else if (cdclk > 312000)
>-                return 1;
>-        else
>-                return 0;
>+        static const int rplu_voltage_level_max_cdclk[] =3D {
>+                [0] =3D 312000,
>+                [1] =3D 480000,
>+                [2] =3D 556800,
>+                [3] =3D 652800,
>+        };
>+
>+        return calc_voltage_level(cdclk,
>+                                  ARRAY_SIZE(rplu_voltage_level_max_cdclk=
),
>+                                  rplu_voltage_level_max_cdclk);
> }
>=20
> static void icl_readout_refclk(struct drm_i915_private *dev_priv,
>--=20
>2.41.0
>
