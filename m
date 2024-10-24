Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B6A9AF528
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:15:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A20A10E3DE;
	Thu, 24 Oct 2024 22:15:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TZ4UWWUR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8125410E3D5;
 Thu, 24 Oct 2024 22:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729808119; x=1761344119;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kXSDvrQf+F/77ejD6EHY8Qt8X/s9P8u2v9VlQvBhEMA=;
 b=TZ4UWWURBllFti2fLVRd3xwSejsBpOpIdxLCa1rEMH9GeCObR0dH3Sqf
 IH9mzRzoi71ib0BsuXnuZCw/0psS3GptOSgI7T4Mh8Jls6OiHx9MAfXFg
 lVDjGjPERMxMCnVtPx+1usgLvm5fWMZ7uA0s3ksOcnt1E+YaAyjBsdB4F
 Vd7oPQz1+/P7WNmEUUVXQ+3gyyXYH++rX3Y0Fr5Za8KgXpfiC5yuFKNIf
 DyiTKSOE5ysMtwT9hdSd+0+Dt0Lx9z8Iyovuy6FfgK6/ZWoeiwZKJm2cu
 G2jVTNFJ7II4dUzpKcp5yh7PNhHjPStREL6f2Hqghwvq6OYbALaey2GwO Q==;
X-CSE-ConnectionGUID: KCLnGPT3QMmnwGR67pKU2g==
X-CSE-MsgGUID: 67bQ/LglQgmt4WJ0jP/VaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40860899"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="40860899"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:15:18 -0700
X-CSE-ConnectionGUID: nnEwdRmrTU2zwnNamby2ww==
X-CSE-MsgGUID: 4am/LPwdRbibMbP80cRizg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80637900"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 15:15:18 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 15:15:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 15:15:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 15:15:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FEftGyJyCw8YOrQwD0zY41cB2gltdRD4sxiJ2jGZTdokeUFgqR6OBeQj6PZQ5cpkVkKLBSGM7BAS08+hhgy85FCgVFop/2kHG1ljs8Yn/Nimvs52tiBW+rjShgwSMr/zvok0XOCTqZ4PuOGKaZeu61DjlCxGtafzR/3VMYW8tURz7zW0h7DFHN2FbcJ+kjF8hS7kH2oHkkiWS4LmPiWAvUAH7qQ+peyyiyee5BNFeDupzCxWcTTdFHqbCfZNimAUuCEMOEcZJSxh4xfeWG6EnULn6DlG5zAhperzRrWuP+zLZtEVEOvUPoF6rtcHzvy2jtBO2woFICbeBt5H6LRfaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kXSDvrQf+F/77ejD6EHY8Qt8X/s9P8u2v9VlQvBhEMA=;
 b=eP7q8iAMS5EwEsRCEeYiU6GHxygHgrKJFcjIrcK6KYSfi2XW/XRIIe/Y1somipJ0quhKNA+DJuKSmwAWfxoBmM8UjqnnFmJXHVlm4WToMtZ3qOc49v+QnsUQXzWXYV8Igndh81PKIprBlSEFSF4v6AjhZuGTM2+CZZVfxjuHF5erUqbv74tyyps+hmcFk7sbU7NgSpwkc2WBllRMLRN9sOM2G9lJMAJxZZPMK1L3pv35qWLyeG5NCjSZzVOK1shWp65p5PDX1XhbNq2gHONHMLpxNSmib0eEScdjaVR05psCgtSWSFQN30+5g+C4zMqeMHe3Dw8xng5c+wjvCzn2MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:167::22)
 by DS0PR11MB7877.namprd11.prod.outlook.com (2603:10b6:8:f4::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8093.21; Thu, 24 Oct 2024 22:15:11 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::4137:d45e:2206:50aa]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::4137:d45e:2206:50aa%5]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 22:15:11 +0000
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
 transaction
Thread-Topic: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
 transaction
Thread-Index: AQHbJZUteWFUgPHtEUGFQT3c14peWLKVazQAgADcwwCAADFAgA==
Date: Thu, 24 Oct 2024 22:15:11 +0000
Message-ID: <fc292e32fac2e9f36a474d9c2b3f2bb009a40f73.camel@intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-8-clinton.a.taylor@intel.com>
 <MW4PR11MB705444C75DA8CE151657E689EF4E2@MW4PR11MB7054.namprd11.prod.outlook.com>
 <20241024191854.GM5725@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241024191854.GM5725@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0PR11MB5711:EE_|DS0PR11MB7877:EE_
x-ms-office365-filtering-correlation-id: 84c9b84f-10a2-453f-90a4-08dcf4795406
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VHZKa0tPTFpiZWFtaUR0RGlTR2c0QzB2dVIrSDB3U2I3bE0xM2ZPeTVoTnBj?=
 =?utf-8?B?WUExbzgyMjdFMktvSkFCWXhjcVZrSDkrQ0g1UDR2SmZ1S3pQUlVuZ3JTTUcv?=
 =?utf-8?B?ZTRoT050SEpyRG0vdzRHNy9BNVNvSEs2Zm1uMXlaTWV3UWVaU2RjZ1NNUnJx?=
 =?utf-8?B?UHdnaEM0TEY5dWNVKzRKczZQVlZ5VmJXV1hyQStjTmlONThNSkNpdUxCTndv?=
 =?utf-8?B?OW9nRXZFOTN1WlhCeHdwSTg2K2lnbFRIZXAxek5EQjJqdFhzdEhGdm5IUW16?=
 =?utf-8?B?QjFERk0zR0ZWSGdKYUszMStZTHRvWW1MTm1SSVU5S3BXTTVZVndIOFRPSFVM?=
 =?utf-8?B?MU1pcEFFM2k5bjI2OWFwOUp0MkJhZ2VqbXJtUitnRFl0bkVCenZBLzJkZkE1?=
 =?utf-8?B?VG1YTlpHN0hxR0FweDloSjJhVVVGSXBjQ2pIbXloejhOKzRCMFIvNlpqWDdV?=
 =?utf-8?B?bTJSSm1ZR2FYYkYxL0tVSEgwblVWa2J6ZGNMR2IxRTdXMWRXYUJBUmJFYjQy?=
 =?utf-8?B?Sy9JL0R6eGI5Qm5JL3RRd1ZxZXRhZ0JJcEhxZ01OdWhHY0VteHlwVUV2aDcx?=
 =?utf-8?B?YmhwdE1lM2pOQnJ6R24wT0JWbGQ0ekFudkNiK0l6eHdwZnhqN2J0VmZzUE1M?=
 =?utf-8?B?LzI1d04vNmMzZDBDTVdHd2FscXJwV0EyQmQ5NDlYcVNSRjk4ZWJGc1crL1Fn?=
 =?utf-8?B?R2J3UkVDME1VNTluWVVETGZiOXJqcldUTlA4ZENGNGkzZ2kzMmdJamV3THUv?=
 =?utf-8?B?ZmwyVXpiT0FkWXQyR2VhL0dtbXZGdW9ScVRQZFAzL0dCSEdZSU8xVFp5SUlz?=
 =?utf-8?B?VkQxY0RUNnVZcFp5ZTN3K0tEK0tkOUN2dVRjSW9nK0cvemQ3a0xsUW8zRGI1?=
 =?utf-8?B?VUJCYTd6UkhxOGdkZ0h6Q09wNTBCVW1XZU5zaW81YVlyT2xERGhZcjVNTmpI?=
 =?utf-8?B?ZGhRSkIwMEpWL1IwaDJiMDV1TmlzUG83eGhscmlGcGlqa3ZnNHh5WHVaZGRB?=
 =?utf-8?B?US9iTVNmYlRQSFFQaVlYWlVqKzBJLzVmUUlQTjRyWXdUV1hzaXE0WjRUNkV6?=
 =?utf-8?B?RnM3Y0JLcnY5M3llMkVmbUNZWlkrLzMwbWpYd0JnTEs4ZEFBY2pMS2NKZnU3?=
 =?utf-8?B?STY0SHBKcnFCc1dUVFB1OXI3SEFITGdNY3VscGc4RzBkWnpXN1ZuN1RUamFn?=
 =?utf-8?B?Njk4NUZjRnZyZSs4dDJUV2FGUEJPV0ZBczZ2cDZ5d2FqbkZoWkQxam5NNEpU?=
 =?utf-8?B?N3lkeHYxeTlIUWVMOVhGTERPU3REaEVTbHpZSDJ3blFjSm9NbndqbmxxdnJj?=
 =?utf-8?B?ZEJxbDBBbDgydXhnQnVGc1JoU2tHdHJTVFdDWUZPWVI4bVBoTjZYN0xOc1Vq?=
 =?utf-8?B?QVFEZkJXRmVpMWx1YXpIVlJjVVBMMU5VbG8wN1ZKVGI2Z0o4NC9WWnZ5K3Bj?=
 =?utf-8?B?eElDUWErVm9hZkZvVlJCNXlTUW5JRFlBMHFNU2pzZ1ZZaTJsaEFLSno3ZFRo?=
 =?utf-8?B?Z3Zhc1FQL042TVZDT0JsWVY4N3ZNaTZubEJqWDNWYmplaWZJa1RwdWFzMktM?=
 =?utf-8?B?bGxpTEhWai96LzBGZGVveFRPTUhQb2JLaXhIN0VTdmNtYmJJWnhNZVlRUmF3?=
 =?utf-8?B?Mm4vdUFBNnV0SXJnbWxtWFFvdU9PWXJicDMxUXhDNXl5OW1VZ01XK1BsWWNw?=
 =?utf-8?B?eFVqdmR4V2FMUmhTdGZlNjhJb1NoNVg0S3ZBcHNFVjQ5WEQyT1NBcUhoR3hI?=
 =?utf-8?B?dVp5U0RpZk9HOEsrZ3JneHdwYzFDYkpic2ptRXA1SXV4MVhKK2xRNE9wSEhQ?=
 =?utf-8?Q?21wgeB/FBxKbc7sE2tGviPIn0HYDZ5KDjj/VY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aURXT3ltRlgyTVNiZEwzM3hXcTJidDB6b0ZsSWRXdjM2SUhSTU5hUzBWZGFS?=
 =?utf-8?B?S29SYWVDTVVPdHN6VlVFYzhBdUt6QzY0UEM4WVRoS3QvQW9UaGU3MnBYZGJ6?=
 =?utf-8?B?UWpzUEU1eUlsMi81ZWF2OVJwT1lkLzh3VU9Kb3NLNzVvc3pWSm4rR2VoRnVO?=
 =?utf-8?B?U2RxTXVPME82dEtqcjY3dFFVaG9nQkoycDRHYmlubkMydjFzWHJBNHg4d3h2?=
 =?utf-8?B?WVhhaHZpWk1pOWl2Q1BzYVBhZnhId3piSm9wVjZzeFlvSGFRTUZ1akUxUE14?=
 =?utf-8?B?MG95SDFZZitNR1MzZFJSVm40NEFrTWJMTStTSXBIS09CcUZ2Mk1TTFplYjNI?=
 =?utf-8?B?bkVRY0c0LzJxMHM1cWlhUWdxUVRDelZRbkxVUWZnQnJPVTVLWTRPREZPandO?=
 =?utf-8?B?azV4U2ZKeDhGaUhaUVV5eDVzWEN4THFZcWNoN2RDZUpReW8vaStMOEU0YU12?=
 =?utf-8?B?ODVPaU9yS0xyYlhBNElwS2xQaVoxSjRXWi8xT1Qrdkl6Y25UNStwN0FHSGdn?=
 =?utf-8?B?UnQ1TjArSXY5Qi9Tcm9RMHlTd3VGV3BrWmJWYXpLWWZGMFdxYmNkVUJOWlV1?=
 =?utf-8?B?dUxDTVVzY1MxUGlKM3BqbENOeXNnTjM0bFNETFVvc2lvR21sZEpvTkI1YWkv?=
 =?utf-8?B?Q041SjJybzhrMkR2S0Z0R0VPM3g1L2JiWldsVmJjbkhGcDRmWllMRHpFWnZt?=
 =?utf-8?B?OTExaXZJUWs0a0RrZGxkYWY4Z0ErVW9FM24zdjVxeEY3Y1J1YTJNWHNDeFpU?=
 =?utf-8?B?UzdoWUwwSXlIeE0vL2xBQk5wU2tqUi9uYytOM0U1TFVPU0VrVklGeEMxZ2dX?=
 =?utf-8?B?WGxMTFkxWWIvbHluNjRIQ0JqVFBZWUc4SUU0L3dIMTQwNEpBY092MW8rYlA5?=
 =?utf-8?B?WTFjTzBNYnN3UlNKamorcmVZMThJamFNdXFvMlVUNjJmajFaVHhYOUNKTGhk?=
 =?utf-8?B?ZFNlUnc3K21RcnFscllyMnMxLzlNZmdxMlI4emtpeWh0TmZuc2dHVkg0aWR1?=
 =?utf-8?B?eWxWMk42LzlET0RSODJ2TGhhamVob2lVSEc1cGtNTjViUjhxaFhESktreGE4?=
 =?utf-8?B?WHlLMmtBbTBmdHJocEpCcFlCWVFMUGVUSmpGM0xITVEyZmloSU9uQUs1bWdk?=
 =?utf-8?B?OTNVcENCalU3bXdHQWJsN1dmc1ZjWjBzMm1uaUZST2RRelZGSE1jdU10eG83?=
 =?utf-8?B?QnZGY2Zkek5hcDlJTEMvMjVMZWV5UnZhVUVKVnFQaGM1eCt3RStoeFhOWk5E?=
 =?utf-8?B?TmtvaXhKMFowUDJCc2N3Y3BtbFlFcmJSTk1sUTh6Z00zN0N6WWxpMjE3cGd2?=
 =?utf-8?B?Mm9Hdk83dUVPM1RRcHFwVzVBZ2FiNTF1UWY5dzN5MW16eWh1ajFnaXhlWEdF?=
 =?utf-8?B?NlNBbzBOdlN3YmhmaFdBdVFYL2ZkcnF2MGk3WERJWjZVd0NiRVQwalFnMzNF?=
 =?utf-8?B?dEVHS0hnVUx3OHkrZFRiQTg3VzNsa3ZPSUppeHR5Mmo5ZitIblUyVVVxUjN0?=
 =?utf-8?B?U1ROM0ViTDgwbHNsb0hublA2bkZnM1dRQkM0SkJGNjhjM05xTm9sYjZ0djRG?=
 =?utf-8?B?dFRmMlZOWis1Q25GVG9MWHl4M0o3TXJpdmJ0dWtwQUY5N2NrdEV2ekg5SWVu?=
 =?utf-8?B?MDA0MWVPUkJBaGNIWElNZXNBeitkNEdteWR0dkhwRk5DdVFneEtDTndrdU1y?=
 =?utf-8?B?M2pyMitJb0RtUGxnY1pIeHhQOWM2aWhaOGU0MGlzRGhObjQvcHJZMS9VVXVl?=
 =?utf-8?B?UDJxT2JjcDl1ZXQ2d2NRdUlOYXhtZWtNSmJhempTY3d4S3FsTjNVUWp6ek11?=
 =?utf-8?B?WXVWQkY4bFhIRklJejYyMUhqN2hNb1JVRW9GR1hkYVBUTWxtQ1h5TDNpK2tH?=
 =?utf-8?B?QWQwRnpGQXpmbXpxYjBXYjRqeFlDRWZxTis1aStMdmRxcC9BMVFUV1FpaFNp?=
 =?utf-8?B?SlhkRkRodklFNSt0SnoyN2FSWVlyWnRhNGo1NWNiSHo2aGxPdVNjQkNFSUxk?=
 =?utf-8?B?VENkaDA5bjNWZ2N4c1FtWnplRVRSS1IrbEtSd0ZHZnhaMGx0SEcvZkZQMGNw?=
 =?utf-8?B?QmI1YkYwS0VNT2h5aGoyVGFMQUN3QVZwejdKaHlRSVN6T2pONUYyTzNzK2xZ?=
 =?utf-8?B?bWhtRzUzbDNHL0kwMHJkWWpTeng3Ly9JMFJJVnRBOUNpYmtGWkN3aHRBMVl3?=
 =?utf-8?B?ZUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <36F4A4977F210241B8B29096432022B0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84c9b84f-10a2-453f-90a4-08dcf4795406
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 22:15:11.7273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3d7fIogMvnjSNDV0m8nFpgYWGCDa+fG9BWKKOmELJFBoFbhiVNVkz8AjqKdrbaEbobbo4NSBBfdi1RTUGR37seiTuPbsR1TXQT8MubNii6U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7877
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

T24gVGh1LCAyMDI0LTEwLTI0IGF0IDEyOjE4IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUaHUsIE9jdCAyNCwgMjAyNCBhdCAwNjowODo0NkFNICswMDAwLCBLYWhvbGEsIE1pa2Egd3Jv
dGU6DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogSW50ZWwt
Z2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBP
ZiBDbGludA0KPiA+ID4gVGF5bG9yDQo+ID4gPiBTZW50OiBUaHVyc2RheSwgMjQgT2N0b2JlciAy
MDI0IDAuNDcNCj4gPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRl
bC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+IFN1YmplY3Q6IFtQQVRDSCB2MiAwNy8x
Ml0gZHJtL2k5MTUvY3gwOiBSZW1vdmUgYnVzIHJlc2V0IGFmdGVyIGV2ZXJ5IGMxMA0KPiA+ID4g
dHJhbnNhY3Rpb24NCj4gPiA+IA0KPiA+ID4gQzEwIHBoeSB0aW1lb3V0cyBvY2N1ciBvbiB4ZTNs
cGQgaWYgdGhlIGMxMCBidXMgaXMgcmVzZXQgZXZlcnkgdHJhbnNhY3Rpb24uDQo+ID4gPiBTdGFy
dGluZyB3aXRoIHhlM2xwZCB0aGlzIGlzIGJ1cyByZXNldCBub3QgbmVjZXNzYXJ5DQo+ID4gPiAN
Cj4gPiANCj4gPiBUaGlzIEMxMC9DMjAgYnVzIHJlc2V0IHdhcyBvcmlnaW5hbGx5IHBsYWNlZCBh
cyBhIHdvcmthcm91bmQgdG8gcHJldmVudCBidXMgdGltZW91dHMuDQo+ID4gVGhlc2UgdGltZW91
dHMgd2VyZSBmaXhlZCBlbHNld2hlcmUgYW5kIHRoZXJlZm9yZSB0aGVzZSBhcmUgdW5uZWNlc3Nh
cnkgbGluZXMuDQo+IA0KPiBJJ20gYSBiaXQgY29uZnVzZWQgYnkgdGhlIHBhdGNoIC8gZXhwbGFu
YXRpb24gaGVyZS4gIEJlZm9yZSB0aGlzIHBhdGNoDQo+IHdlIGRpZCB0aGUgcmVzZXQgb24gYWxs
IHBsYXRmb3JtcywgdW5jb25kaXRpb25hbGx5LiAgVGhlIGNvZGUgY2hhbmdlDQo+IGJlbG93IGlz
IHJlbW92aW5nIHRoZSByZXNldCBmcm9tIHRoZSBleGlzdGluZyBwbGF0Zm9ybXMgKE1UTC9BUkwg
YW5kDQo+IFhlMikgYnV0IGtlZXBpbmcgaXQgb25seSBvbiB0aGUgbmV3IFhlMyBwbGF0Zm9ybXMu
DQo+IA0KPiBJZiB0aGUgdGltZW91dCBteXN0ZXJ5IHdhcyBzb2x2ZWQgYW5kIHRoZXNlIHJlc2V0
cyBhcmUgbm8gbG9uZ2VyIG5lZWRlZCwNCj4gc2hvdWxkbid0IHdlIGJlIHJlbW92aW5nIHRoZSBs
aW5lIGNvbXBsZXRlbHkgcmF0aGVyIHRoYW4gbWFraW5nIGl0DQo+IGNvbmRpdGlvbmFsIHRvIHRo
ZSBuZXcgcGxhdGZvcm1zPyAgT3IgZG8gd2UgaGF2ZSBub3cgaGF2ZSBuZXcsDQo+IHVuZXhwbGFp
bmVkIGZhaWx1cmVzIHNwZWNpZmljYWxseSBvbiBYZTMgdGhhdCByZXF1aXJlcyB0aGF0IHdlIGJy
aW5nDQo+IGJhY2sgdGhpcyBoYWNrIGF0IHRoZSBzYW1lIHRpbWUgd2UncmUgcmVtb3ZpbmcgaXQg
ZnJvbSB0aGUgb2xkZXINCj4gcGxhdGZvcm1zPw0KPiANCkkgcmV2ZXJzZWQgdGhlIGNvbmRpdGlv
bmFsIHdoZW4gc3BsaXR0aW5nIHRoZSBjMTAgcGF0Y2hlcy4gV2lsbCBjb3JyZWN0IGFuZCBzZW5k
IGEgbmV3DQpzZXJpZXMuDQoNCi1DbGludA0KDQo+IA0KPiBNYXR0DQo+IA0KPiA+IFJldmlld2Vk
LWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IA0KPiA+ID4gU2ln
bmVkLW9mZi1ieTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4NCj4g
PiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3Bo
eS5jIHwgNiArKysrLS0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+IGluZGV4IGMxMzU3YmRiOGEzYi4uYTg5
NjZhN2E5OTI3IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPiBAQCAtMjI0LDcgKzIyNCw4IEBAIHN0YXRpYyBpbnQg
X19pbnRlbF9jeDBfcmVhZF9vbmNlKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ID4gPiAqZW5jb2Rl
ciwNCj4gPiA+ICAJICogZG93biBhbmQgbGV0IHRoZSBtZXNzYWdlIGJ1cyB0byBlbmQgdXANCj4g
PiA+ICAJICogaW4gYSBrbm93biBzdGF0ZQ0KPiA+ID4gIAkgKi8NCj4gPiA+IC0JaW50ZWxfY3gw
X2J1c19yZXNldChlbmNvZGVyLCBsYW5lKTsNCj4gPiA+ICsJaWYgKChESVNQTEFZX1ZFUihpOTE1
KSA+PSAzMCkpDQo+ID4gPiArCQlpbnRlbF9jeDBfYnVzX3Jlc2V0KGVuY29kZXIsIGxhbmUpOw0K
PiA+ID4gDQo+ID4gPiAgCXJldHVybiBSRUdfRklFTERfR0VUKFhFTFBEUF9QT1JUX1AyTV9EQVRB
X01BU0ssIHZhbCk7ICB9IEBAIC0NCj4gPiA+IDMxMyw3ICszMTQsOCBAQCBzdGF0aWMgaW50IF9f
aW50ZWxfY3gwX3dyaXRlX29uY2Uoc3RydWN0IGludGVsX2VuY29kZXINCj4gPiA+ICplbmNvZGVy
LA0KPiA+ID4gIAkgKiBkb3duIGFuZCBsZXQgdGhlIG1lc3NhZ2UgYnVzIHRvIGVuZCB1cA0KPiA+
ID4gIAkgKiBpbiBhIGtub3duIHN0YXRlDQo+ID4gPiAgCSAqLw0KPiA+ID4gLQlpbnRlbF9jeDBf
YnVzX3Jlc2V0KGVuY29kZXIsIGxhbmUpOw0KPiA+ID4gKwlpZiAoKERJU1BMQVlfVkVSKGk5MTUp
ID49IDMwKSkNCj4gPiA+ICsJCWludGVsX2N4MF9idXNfcmVzZXQoZW5jb2RlciwgbGFuZSk7DQo+
ID4gPiANCj4gPiA+ICAJcmV0dXJuIDA7DQo+ID4gPiAgfQ0KPiA+ID4gLS0NCj4gPiA+IDIuMjUu
MQ0K
