Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE71C8AA261
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 21:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4411113F14;
	Thu, 18 Apr 2024 19:00:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HdOPcLxw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32677113F12;
 Thu, 18 Apr 2024 19:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713466843; x=1745002843;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=c6pGMkYJ9mtWrC25hsWnnHQuw9Ueb+jF4BF4pfAB2Eg=;
 b=HdOPcLxwURL/5HoZYNt8fZxaTUU4Ap5Tc/M9mV4MYMC7ws2d17J6RjpF
 EWmaQrFRDtU6rn8qBxqGdXLfrq4iEPLbLu/Kd79vD1J7Z/u8paFBbanmv
 lJF9cUvVr1SPN2rKLkAakUdTSR5zivhLk4MysU7iOXkerXibbmySJvP29
 YYPtJIqBM/l0R20wCMvWx5i9DXSgbu8iGFTp5Sy2S9B+Kl6XxnQ6mWKrS
 o3nCooUbsjpLiHpjzES51m0J47emm5kUNQx6+Gh7UhNNn9TSDL2w0585Y
 M2I590Y4rqJTOQMDyZ7DAPzEQOWeQGtmvgHePV8XvjNCRoWzI3ReZdmgo Q==;
X-CSE-ConnectionGUID: VfV7sLTXSaq6L5y9tgo4hA==
X-CSE-MsgGUID: b+959IIlQbGVs/SADqHbvg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19738824"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="19738824"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 12:00:42 -0700
X-CSE-ConnectionGUID: /JC3lO10R+yT3j85DolOvw==
X-CSE-MsgGUID: ioFbbtmZQhGAo7OTNElRoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23140785"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 12:00:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 12:00:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 12:00:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 12:00:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 12:00:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L2Nk+RI9w0a9I7e3z6kpESBJn4q3Jrne3sJr9hufrjF9bc9s24y5hWPKw7K/yhmuLA1sbwuLQRzmgpmBlxjwtABiiIWx2jj5mB3eoVpQsOuMnY9lU53Sm9/IufuJrpUjpVPHfPNHhpHq8Wrk3yJJ2rtbdFHjRzeG3LZqfiPJO5r7gNPL2l4I3PQdSOK7dff+u1r/1HJafiEpOVIJRr9HKwTvWax+UDjLG0NSi43ysoCKY6r1qGCO0twmrrLDE1ypdRhK75T8H7OJsOEsjibT8raQYtZ6s+F/7eR6sBKrZI+ZsA53Q4qbGvbGecmrCHjAAtPOZ8FnIu62MDATpRsV9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k4Jndn/fe+6vgZaX1CW7qZw7u/nA0Z01/meuUbNCbIA=;
 b=dTrWh+hj0/q6gh2R1fSz4iJJZbpLn2ji6Mq/bpCGrej3KW3FmBKyk29PNlBAXMunwh6OSSu1sG6M0Ef6BQiw78dak08hdSNap+5qLcd3dJ+Bg3sLXTHKTOBgQktenTVm43qQbkTKVeHL3EVtn3LTjg4cMZ2cHXaqwWiqsRpi4lH3XZTe3hBjCur2xfCY3/fW3WEjahNCfsc7HgR0bm1GSuVFxidJxBAQcK3GZF5zHO9Tb95jTKTSdGVJ/f3qfSjrwl1LN2pOf0SG8G7XqZoUNOvcuJALxc6WnqqhKuUos8HkD5fwDZAZxImiLv9rSdT+eBiobCsOkwFvq4Un0wujFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB6064.namprd11.prod.outlook.com (2603:10b6:8:77::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.11; Thu, 18 Apr
 2024 19:00:28 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7519.010; Thu, 18 Apr 2024
 19:00:27 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <5e25c5fb8fcb88214b7b21bd42d52ffddf0afa48.1713450693.git.jani.nikula@intel.com>
References: <cover.1713450693.git.jani.nikula@intel.com>
 <5e25c5fb8fcb88214b7b21bd42d52ffddf0afa48.1713450693.git.jani.nikula@intel.com>
Subject: Re: [PATCH 3/5] drm/i915/dmc: split out per-platform firmware path
 selection
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <lucas.demarchi@intel.com>,
 <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 18 Apr 2024 16:00:20 -0300
Message-ID: <171346682004.2007.13295480744360247198@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0254.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::19) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB6064:EE_
X-MS-Office365-Filtering-Correlation-Id: aea37118-e79b-40c5-f292-08dc5fd9cfb6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: hAEN3wQFDShTPg0OuaNcf9aTgZs9oD/qbhfVjUYJCW48g/B7Zr2rS44xMEE6Tmi1sTbcGpNDKikrmob7RLYqeYyJi4wiypLOFFGJsphf83ihdUhGFy3rKHCVZu5kvSTpFi16bgbTlxwtdxVo9YOOHPqXpFgPQKEubnkwMj9KzdFfw5+YiQ9rDKYafnG8VVm46yDs0gLXAkc50MH0PFEVjgU3jjTT6udrMuiT22QfoJrwWUunqtDgp1n8JWUQGYvIMNKJ5sbYDRdbQkfyxlA3Mpz3s4UPsSEPs0MXE2AthL31pueK//iy+5Kmry0fKpgD3BxLiGEnNJh7dAeh3OEnQpuEzMqDHG1b8uJYRchR4z7SzdP/VFJTY0GZZYANSvgLgxW2SO6GWkR5NKmUwkAG9NAoDhuhGneIOJ5LnP3klV/VJtvmYEKcO/RSpmg9okVKL13vx+V7mLPweApMzA+ofWBg/dBnIb4UHpvlaY92IQhdNgvOJHQMIDuNsBNi19N8Jekol/+58pWQ1fh9dvYS/9iSRGzIbKkt62V65zKZ5YLpn1RUWiyIAbPc9hFrl2lYGdgK+E6VhcL7NOxiuHfsPfXQN59Nq6sAt9K1cYNQJgtVTDk3aHjxyO3MxppsNCObVSascEpRGHxYWDkVUGagYQGY/EhB1BwRYFLBzyt0XVM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmdNSEQ0NXFyMnBYS0wrQ0VLZjVBVGc0Y1ZsU2EwbjhDNkg3aVo2SUVJYWhU?=
 =?utf-8?B?aWNVUElSb01TVXl5cEZ2U29zT1lndE9ReFhQekRvRUM2M3IxSFJNT3p1ckww?=
 =?utf-8?B?am4zSFpDMEpyVEJCb2tJZHdLWU1SenY1K3FUa285dy9pUHJ6N2N1MGlONGNU?=
 =?utf-8?B?d2V4Mnp6VFIxNnZhcW9zMzRFRE9DR3FWWXhhTlR5VWFvN0pORGhBM0daQlRx?=
 =?utf-8?B?cERiNWZJMjBKdVNxZ2xIT3RubVlsYWV1VG1LTFFDVGN0NVJSazhlZXZLY1N4?=
 =?utf-8?B?UEt0Y2w2cUl4NGNYTThzZmozNUZQTjI4NTZHamV1SjVHNWE3dXQyRmdYcVpX?=
 =?utf-8?B?N1JZUUpFelZHa1ZNeUtLMElzR1lUU3RxbHJNYXE1Mk9sUDNVKzl0dXl6dEVm?=
 =?utf-8?B?QURsVTkrd29MZXhHMUUxd2N2VWRIeHdRNXNjODFUZzZvWUN0Z0hpc3J4SG5L?=
 =?utf-8?B?L0RTeUQ3WjdDc1pDYUJuMkw4TTdYVHpCQ3AxeUFGRGFWdnJ4VDlaM0FqejJt?=
 =?utf-8?B?RFl3WjNmR2VPV0FBYUNZbndnRjkxRWJSejJ4M3IveG1JQmVJL2g1eEVkNnp6?=
 =?utf-8?B?c3Z6MVZyRENhSGlzczl4dDZlRkRDUEV3OUxDa3ZYTDM1dlp1SVI5OUNkRFpo?=
 =?utf-8?B?U1VZMWkrdkdzL0lRaWdGSnZ1ako5RDVWaFQxMkFGdTBTWXVCSUxRU1pPVXBu?=
 =?utf-8?B?TDV4YWgyYkcvdTNCZENnSHUxVUlJSTR3ZGhML2tnbFc5ckpWRzZScWhpa3I0?=
 =?utf-8?B?bkprNDJ6MGw3QW5GQWJEZFJtdVdzMWZHWm5FU1l3OC94ZE54SzNVQ2ZTK00v?=
 =?utf-8?B?ZW9Bdno1eG1TS3VQUEpPSGtNelZLdUxvY1I0dVpRajBMVndzRzhLYTU1T0RE?=
 =?utf-8?B?a1JMSDl3VzNLTE5pdG5iUEFnUnFiTWdGNFhZcW0zWE5uQjZkZG9vQnQ4RzIz?=
 =?utf-8?B?ZnBEZ2JkT3UwZ3JtdUl3NnlWZklJenlGVW0xOGpGOUM5dFJ2TEhmOW9sZkpv?=
 =?utf-8?B?azJaKzlIQkRTRHE4WHN4ZUhtMjE2UGZIRU9ralNQMWFrZmZMMkJock1DUVBP?=
 =?utf-8?B?TmhhVXZOR0o2dUpFckF5T3J0UlJ0LzlodVBMRG5rRDcrbExkSnZKdGdKKzNU?=
 =?utf-8?B?d0pWSUQwcnJyamt2OFhVMmtmSzJrbTJGSHFCcW9WT3JkcFk2dUk4NWY2NGFZ?=
 =?utf-8?B?dk56ZjZTV2JwakVNRmdXMXNiUHVWenYwbzVqdkV2UXR6bldMdmlCVi84ckFK?=
 =?utf-8?B?Ni93RFFPcFIycytlbml0bjFZSEs2UFAyUWVqaVpUMkpCUkl4eE5GQjlvbjlJ?=
 =?utf-8?B?L09zQUxPaXZwZ0gwejVXVldJeFNaWlVJU2lUZXZQeTRlelYwckpoK0lNbHpM?=
 =?utf-8?B?cXowaEhKZXdCUzY5eURUTVl4aUYyY0Z3LzFlOVUwazRLakRLZzFBcFlUenov?=
 =?utf-8?B?KzZpN3ZTUVhEdFBubXByVHQwNXpnZVA5Y0Nkby82QTFlYlR6Y0d4Zk5OMmRm?=
 =?utf-8?B?VktVV2lLeHo1TmQzY1hINXRFVU9KdFJJRmdYcmVCa2JiemhoR1RTR25CbkZ4?=
 =?utf-8?B?NEpJeEliT1BKSWxHRS9Ibm91Ry9TRjBvMENGYVNkaGFMa3piRHBJSTZyOVFQ?=
 =?utf-8?B?aE96OVVISkRTdE5hdjhnRER1aXBPOG96S3NRRnU1V21DTnlyMGNUMHVVZXM5?=
 =?utf-8?B?RXdVaHpidlVNSDIwQWI4VEJYTjEzOW1jbVBiMitRVG9XTUNIdlBZM3FLcVlE?=
 =?utf-8?B?L3FSMU1jTUtwRTFnKzVCa3RYRzEzR0tWRm0yNlduS1VDRW5nQ1lpYzQ0d1RL?=
 =?utf-8?B?UG1Id1VPTTRBdHg0YW5VQWMrTlBiT2NpWTgvRDl1N09pT1Y1dFJRMVpneHlx?=
 =?utf-8?B?S3Zvc2xpRE9HbmRuWnJKYU5lbkRtVXJQQmR1cGtaeUZ3R3ZZKzBGOGtQNFl5?=
 =?utf-8?B?L1RPMWNLK0xMWlplMHNUZVlvTGR4WENaa21iWFpJeFNyMFZVZWNwajNpREpX?=
 =?utf-8?B?cXBLRlZ3bys0eE9pdTZvVVRrR2Iwc01qd3lpYU12cjJ1QmYrOWVhTlFkTnk1?=
 =?utf-8?B?V3BXQXM0dWJzT3JtcWUzZXREL0ljY01VOHo5cVFRYWVHdzQrQ2QwWWF6M1lG?=
 =?utf-8?B?eFNuSUhXb1lLbTVCeTU3VjdCWGFqLzVmdzVYTTRpOW9QekRZdnRBdnlOczJ2?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aea37118-e79b-40c5-f292-08dc5fd9cfb6
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 19:00:27.8688 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GakJcO5QkIZbhSahAym0ZkiHnbq6xmmIOT3PT1GyFAvwbYLYIJEc0vbEimMzyHZ2icxQS+/HNj5QDjzNB+I5nA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6064
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

Quoting Jani Nikula (2024-04-18 11:39:52-03:00)
>The big if ladder clutters intel_dmc_init(). Split it out to a separate
>function.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 96 +++++++++++++-----------
> 1 file changed, 54 insertions(+), 42 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i9=
15/display/intel_dmc.c
>index ee5db1aafd50..740c05ce83cc 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -142,6 +142,59 @@ MODULE_FIRMWARE(SKL_DMC_PATH);
> #define BXT_DMC_MAX_FW_SIZE                0x3000
> MODULE_FIRMWARE(BXT_DMC_PATH);
>=20
>+static const char *dmc_firmware_default(struct drm_i915_private *i915, u3=
2 *size)
>+{
>+        const char *fw_path =3D NULL;
>+        u32 max_fw_size =3D 0;
>+
>+        if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(20, 0)) {
>+                fw_path =3D XE2LPD_DMC_PATH;
>+                max_fw_size =3D XE2LPD_DMC_MAX_FW_SIZE;
>+        } else if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0)) {
>+                fw_path =3D MTL_DMC_PATH;
>+                max_fw_size =3D XELPDP_DMC_MAX_FW_SIZE;
>+        } else if (IS_DG2(i915)) {
>+                fw_path =3D DG2_DMC_PATH;
>+                max_fw_size =3D DISPLAY_VER13_DMC_MAX_FW_SIZE;
>+        } else if (IS_ALDERLAKE_P(i915)) {
>+                fw_path =3D ADLP_DMC_PATH;
>+                max_fw_size =3D DISPLAY_VER13_DMC_MAX_FW_SIZE;
>+        } else if (IS_ALDERLAKE_S(i915)) {
>+                fw_path =3D ADLS_DMC_PATH;
>+                max_fw_size =3D DISPLAY_VER12_DMC_MAX_FW_SIZE;
>+        } else if (IS_DG1(i915)) {
>+                fw_path =3D DG1_DMC_PATH;
>+                max_fw_size =3D DISPLAY_VER12_DMC_MAX_FW_SIZE;
>+        } else if (IS_ROCKETLAKE(i915)) {
>+                fw_path =3D RKL_DMC_PATH;
>+                max_fw_size =3D DISPLAY_VER12_DMC_MAX_FW_SIZE;
>+        } else if (IS_TIGERLAKE(i915)) {
>+                fw_path =3D TGL_DMC_PATH;
>+                max_fw_size =3D DISPLAY_VER12_DMC_MAX_FW_SIZE;
>+        } else if (DISPLAY_VER(i915) =3D=3D 11) {
>+                fw_path =3D ICL_DMC_PATH;
>+                max_fw_size =3D ICL_DMC_MAX_FW_SIZE;
>+        } else if (IS_GEMINILAKE(i915)) {
>+                fw_path =3D GLK_DMC_PATH;
>+                max_fw_size =3D GLK_DMC_MAX_FW_SIZE;
>+        } else if (IS_KABYLAKE(i915) ||
>+                   IS_COFFEELAKE(i915) ||
>+                   IS_COMETLAKE(i915)) {
>+                fw_path =3D KBL_DMC_PATH;
>+                max_fw_size =3D KBL_DMC_MAX_FW_SIZE;
>+        } else if (IS_SKYLAKE(i915)) {
>+                fw_path =3D SKL_DMC_PATH;
>+                max_fw_size =3D SKL_DMC_MAX_FW_SIZE;
>+        } else if (IS_BROXTON(i915)) {
>+                fw_path =3D BXT_DMC_PATH;
>+                max_fw_size =3D BXT_DMC_MAX_FW_SIZE;
>+        }
>+
>+        *size =3D max_fw_size;
>+
>+        return fw_path;
>+}
>+
> #define DMC_DEFAULT_FW_OFFSET                0xFFFFFFFF
> #define PACKAGE_MAX_FW_INFO_ENTRIES        20
> #define PACKAGE_V2_MAX_FW_INFO_ENTRIES        32
>@@ -1007,48 +1060,7 @@ void intel_dmc_init(struct drm_i915_private *i915)
>=20
>         INIT_WORK(&dmc->work, dmc_load_work_fn);
>=20
>-        if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(20, 0)) {
>-                dmc->fw_path =3D XE2LPD_DMC_PATH;
>-                dmc->max_fw_size =3D XE2LPD_DMC_MAX_FW_SIZE;
>-        } else if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0)) {
>-                dmc->fw_path =3D MTL_DMC_PATH;
>-                dmc->max_fw_size =3D XELPDP_DMC_MAX_FW_SIZE;
>-        } else if (IS_DG2(i915)) {
>-                dmc->fw_path =3D DG2_DMC_PATH;
>-                dmc->max_fw_size =3D DISPLAY_VER13_DMC_MAX_FW_SIZE;
>-        } else if (IS_ALDERLAKE_P(i915)) {
>-                dmc->fw_path =3D ADLP_DMC_PATH;
>-                dmc->max_fw_size =3D DISPLAY_VER13_DMC_MAX_FW_SIZE;
>-        } else if (IS_ALDERLAKE_S(i915)) {
>-                dmc->fw_path =3D ADLS_DMC_PATH;
>-                dmc->max_fw_size =3D DISPLAY_VER12_DMC_MAX_FW_SIZE;
>-        } else if (IS_DG1(i915)) {
>-                dmc->fw_path =3D DG1_DMC_PATH;
>-                dmc->max_fw_size =3D DISPLAY_VER12_DMC_MAX_FW_SIZE;
>-        } else if (IS_ROCKETLAKE(i915)) {
>-                dmc->fw_path =3D RKL_DMC_PATH;
>-                dmc->max_fw_size =3D DISPLAY_VER12_DMC_MAX_FW_SIZE;
>-        } else if (IS_TIGERLAKE(i915)) {
>-                dmc->fw_path =3D TGL_DMC_PATH;
>-                dmc->max_fw_size =3D DISPLAY_VER12_DMC_MAX_FW_SIZE;
>-        } else if (DISPLAY_VER(i915) =3D=3D 11) {
>-                dmc->fw_path =3D ICL_DMC_PATH;
>-                dmc->max_fw_size =3D ICL_DMC_MAX_FW_SIZE;
>-        } else if (IS_GEMINILAKE(i915)) {
>-                dmc->fw_path =3D GLK_DMC_PATH;
>-                dmc->max_fw_size =3D GLK_DMC_MAX_FW_SIZE;
>-        } else if (IS_KABYLAKE(i915) ||
>-                   IS_COFFEELAKE(i915) ||
>-                   IS_COMETLAKE(i915)) {
>-                dmc->fw_path =3D KBL_DMC_PATH;
>-                dmc->max_fw_size =3D KBL_DMC_MAX_FW_SIZE;
>-        } else if (IS_SKYLAKE(i915)) {
>-                dmc->fw_path =3D SKL_DMC_PATH;
>-                dmc->max_fw_size =3D SKL_DMC_MAX_FW_SIZE;
>-        } else if (IS_BROXTON(i915)) {
>-                dmc->fw_path =3D BXT_DMC_PATH;
>-                dmc->max_fw_size =3D BXT_DMC_MAX_FW_SIZE;
>-        }
>+        dmc->fw_path =3D dmc_firmware_default(i915, &dmc->max_fw_size);
>=20
>         if (i915->params.dmc_firmware_path) {
>                 if (strlen(i915->params.dmc_firmware_path) =3D=3D 0) {
>--=20
>2.39.2
>
