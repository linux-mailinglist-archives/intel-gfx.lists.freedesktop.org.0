Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F7FA61E1F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 22:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B4FB10E323;
	Fri, 14 Mar 2025 21:31:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iozuNfLG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F61B10E0E6;
 Fri, 14 Mar 2025 21:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741987860; x=1773523860;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Pufdo+UrEMb7ff04ApNstfPYDVzFw646S3SDdlt1yIo=;
 b=iozuNfLGKBxNoowokGJhbTfUuS+ZAsuPfT8aCaoJvbAkNoopOKeW3JtV
 JhmJ5tcMBdPtXMfVYw9fPy0ij65f6Zfln92P2/24NkAyNoTkh+IjIq9yS
 Pkik/M47W8SSX2PjgZ88NLSLslcB7cWFV7sd7JphBZdFWL/jKmKIdD7vH
 0sL+jT2POV0Zcq2d53FkQp2qbGMpzMw2u1hnn7mqMjpUBjmlSQZetXmw6
 culMHzs8GKviZLCAeYFx60zGkjIQ5hv93FILcj14ws+6HM5e7HtSGcIEt
 bzSObkhYrISxVQ7WmTLf1xt98dY78rvQrb+uGfyVEi21TlRuZ49rqjRcF g==;
X-CSE-ConnectionGUID: c/z+Jo8MSLWnyx6oc7DPew==
X-CSE-MsgGUID: hF/YEuUvQbGzaj+DT/Hgrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="43191379"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="43191379"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 14:30:24 -0700
X-CSE-ConnectionGUID: JYlGM+TRTnmeo+6mfz0BqQ==
X-CSE-MsgGUID: Gxj1IeOSRueP6n3PMNHaPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="122116077"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2025 14:30:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Mar 2025 14:30:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 14:30:22 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 14:30:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gV3ozBIkm7jzT0R2PANAd0FYY63uh8QrCfgNs5vIRFp1C3AOyGbyjgdMlW7RprUakVQLPMIMiNRpmk6RYL9cs33749FY0hIqPHdpFwb7aMngY5vYk/cNo4rC9fjrg2qK5RjhK86YU+ZsxxyKE0mxU4gq41q/qNFVIp7I8b9AOgqed0QJDBsvnMBptNER3xKGNL8SSzD8/YihjPG8AE+Hm+HNfOZQhXx9nP60HYG4Cm8MoeYF2mpL7nki/zg/NI31vLJvu9aQFLfX1dosk7en0wCZZeOBc9C4/gFcK1S+ERfeLqedlD2EfVi72tc4q7ElMGBV89rXJF/ytbzKlIWRMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F5kx4GljxbjxBZqyP7zViVuQroLiBYJWX1bGGtKIKkA=;
 b=lan4Hpi/0KySosG8/8JM7eMhvaC3yY5N3hI/EBDrcFRnyylvD1Ogt0XXnnpX+RaNl0QOFLSB4KM0+RXx4CCCGnRtD15p9Zze7fActAROqXskCaOoC0ske7omLmChp3O56wSvDt1oFkG3qm+Qz3F63tFGBw+JzFvzQHL5noMz5nDW2ViKBksckxcfiEExTBtYXnv7MgQaHS9C68MiTW0zazZaem0xqn0vBgbwh5WcUh7cXZRnk2s9+OdurTP2RcJlIhtAU7O7YK3JtX4pJtsp+tNifdwlXIgfX8XzE2AgmzW1nXVBCoQj3J9Om1cEheT07HWqGXs5JszEceC9blHDiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB6712.namprd11.prod.outlook.com (2603:10b6:806:25c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.28; Fri, 14 Mar
 2025 21:30:03 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8534.027; Fri, 14 Mar 2025
 21:30:03 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250314211737.GC1439735@mdroper-desk1.amr.corp.intel.com>
References: <20250311-xe3lpd-bandwidth-update-v5-0-a95a9d90ad71@intel.com>
 <20250311-xe3lpd-bandwidth-update-v5-1-a95a9d90ad71@intel.com>
 <20250314211737.GC1439735@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v5 1/3] drm/i915/display: Convert intel_bw.c internally to
 intel_display
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Ville
 =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Fri, 14 Mar 2025 18:29:57 -0300
Message-ID: <174198779709.24757.15213554631082714012@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0191.namprd04.prod.outlook.com
 (2603:10b6:303:86::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB6712:EE_
X-MS-Office365-Filtering-Correlation-Id: dbb0fef6-8550-46a2-5cf7-08dd633f617b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TXNyL2p6bUZnRHk3RjEyQ1pLUEFUNnc0NHo5ZjdwYnh2QzBJa3hCMTZQK3Zl?=
 =?utf-8?B?QUswUlZ3ZE5XbTI1MUR3SHExRHVKbGdqeCtDeXBEeDduSWdRWHBGQWhFN1FD?=
 =?utf-8?B?THJ6dEpvcWhyVkRJM0ZYeVVjalRkK3EvNDNja3NaMi9PdHdodW1NRmhTOXNP?=
 =?utf-8?B?UDRGUWdCeW1VbWpMdFJsRlhJcG9mM0V1WVRJOXZjNU5ycFV6SzV5RVI0eXJ3?=
 =?utf-8?B?cWdycEd6V0EzOXZOZmtDTllhRlY3dmM0d2tyVmVxTFU3dlUvS2FXR2JCTG9N?=
 =?utf-8?B?MW01eFlRa3FncmpvNW9GTnNMTytiQ28yazREZFFEQmFJdjhZSzZUUTluSkpS?=
 =?utf-8?B?RVVlL1Z2S0dCR2p0RDVsWm5RdThPaHpLQ1M0aVZ2V2JIMzJVbnRTaml3UFp3?=
 =?utf-8?B?dHA4dnhNVHZVZFlCMkFDMG1jZXlVYTgzM3FDQVptOFR6Q2Z3Tk4zSVU3bGtC?=
 =?utf-8?B?cFBQZ0t5RTBOT0c0cFNBN3dZbDFUVHdCQWNXWVNxcWhPSTQwWkxaNlp2T1NO?=
 =?utf-8?B?eFFpTXFEMjYxNWlkYXJqYnFJdDBqTml4WUdqUENLeVEvNks4Q0FZcEo4elJt?=
 =?utf-8?B?M2RHNGxkWThxVTYxNkF1eGRDNTRCQ3hkSnluUmd4aVRZWXJ3b1JuRkRwOUNH?=
 =?utf-8?B?Nmd1ZGUwMFdZUVkvdVVOdmNlcWE3M0w4ZWJLKzhUaWJBMHREZVFoa0EzWS9X?=
 =?utf-8?B?bStxQjZlL2RUSjF5VlF0Q3lhN0RnNUJCRVl0eXdxOTlxUUtBUWhlMEoxUFFq?=
 =?utf-8?B?TEluK3hxckZMT1dQMG1YU29GME5aZ09xdnZBR1dCQTJleVBLejVRbkxNTlFI?=
 =?utf-8?B?d3huSVBIRDh0Z1hTSkFPcHVCdktoOVgvYi9TT2Izekk4cVI2MlRKUzRIL3Fp?=
 =?utf-8?B?TWtQcHp5bHJMc2ZIVU9sTlVUNllmUytzZ2VwTTRUZTRsNi93U0ZkTjc2OUVS?=
 =?utf-8?B?Nmlnd1RnUUdnR1BkL3pHdUVIYmUyUTRaYlVwRGdoMlpZZ2xrOTFhOXg1NzdC?=
 =?utf-8?B?TXNJMnY1NmhWMkVBMkZVSkVwUTZvMklhNW1XNFdBUXJmbzZPMmo4UzZub0Vz?=
 =?utf-8?B?UENYdS9Td3hNL2xzTXNnYUJuZkRlbnAyclJOR3NaT3c4NVR0c0NSZjlpOUtp?=
 =?utf-8?B?VGtRWFZla1JSY2J0V0lzcjBZMUV1YlJtRmZjb25tcDFxNmNzbmxSSlA4ejRD?=
 =?utf-8?B?anZWSW1mcUdsRWloNGlhVUpvUVpjclo2NWVadTEzV0xac3ZMNXZvTXp2enNI?=
 =?utf-8?B?NlJBVE9MWXZRaGw4SmRaOW5NeXFVam1rYTdPRWFNOFA1YTFwM2tiSkZ6bjZw?=
 =?utf-8?B?SWMzYmcrT1dzbzJoV29hTnB4akJUVzFwdmpKbmcyN3hqYzVyZzFWN0ZZa1ha?=
 =?utf-8?B?Y1pJcEdzTk5mOVNuL0ZxYzJka05EMmNtN0tKQk11MkVCcDBSSnE5RU43ZTBx?=
 =?utf-8?B?OXg0QThkcU5yS3VIUzE4U09nUml6UmhPV1R1eWRsZUhJa2JIajcrcm0wK0Fl?=
 =?utf-8?B?blB3UG1vSUdVMHZUZW9HTGVGOUlwRmFoTGNpQUZaRmhnbXRZUXJFWHVxMTVF?=
 =?utf-8?B?NEZVUm41UmR2TnNkcWtKL3E1ZFpGdE9nNUFDV0FDd085WWU0RVJQYktCK2xL?=
 =?utf-8?B?ZzZ3d2VicmtJQzhMVldrRlVaVmg3VHF2SVpWM2JvTDBPRkZXOVBvSlZMUEwz?=
 =?utf-8?B?VE1TVi9iTUcya05GZmo0MG5WSXBkV3hLaGdla3BIUjVHWVNkdU44VlRNaVlF?=
 =?utf-8?B?TUo4eTdudGNGRWc3Qlp3dzd2dFN5b2hDQXZaazhWUzdLaGRRV25PMEptekZ2?=
 =?utf-8?B?V21xaVU3UWFjRmxSRXF6UGYvZTdNOEYvcmhZdHpRN05Bc3JBTlgyS29vaDEz?=
 =?utf-8?Q?MUyeJw63ua0cE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXBrNDBETko1eVJaWnVRWWlVZ1IrVFVSS0VOUDk5aU5wQU5LbklYV2ZMNFJy?=
 =?utf-8?B?TTJOalZNMFdRSitUbEg0Y3ZUY21PWjU0dDM4VlNTREdGUE50OHBZTXBqbUR0?=
 =?utf-8?B?eEF3ZjlWWSt6dGlmc09QdkNyY0hYbi9vMDhtd2hnMXZ1VXhpUVlPcGl6K01E?=
 =?utf-8?B?cWxNVDRTbEQvYVcremc5eFFSR1VNK09YbVhBVDQ3cXRGaVNkbmVBNEU1VHVY?=
 =?utf-8?B?Y2ZWcmRLZFhNa2NPbk5nR2haWDR3SXJiSFF3MHBaRDhJVm82REd5cEF0YUtZ?=
 =?utf-8?B?ODN4OGx6VUJUbXZZSHd5aURqdy95QkorRDVYeHM2VUlnWDQ0TU9vQldPNlcy?=
 =?utf-8?B?Z3dmTU52WW0yOWRIUnNyckZ0bXFYOFpRMlNvWXMrem1sVUNsUTFqVTg2ckNU?=
 =?utf-8?B?UE0veDJUblRtVHVVbFR2SUUvMUZCVDQ0UStiOVdidGM0NFNLVGNQWGJvWm5D?=
 =?utf-8?B?OE9NVldHbVlDdlhUMUZiT1ZFYm5DMWExUWNRbWx5WkZhd3hreGgycXI4dlhV?=
 =?utf-8?B?S0dDQ1hFblI1ZWs4QTBzbGFNU21yR0pDRUtTYnloMkw5UWZOUklQV1dNTytR?=
 =?utf-8?B?YU5Tc1pZSVgxcFhobDdZZi9ZN2wzSmNldUpiZWhiNGVyWUUzZFpXTWNyNlFB?=
 =?utf-8?B?SGpnU2p1RHRmSXY5dVRETDZORkZuWjk5VTVsc0F3WHdkcUE1c1ZEWG9uUnc3?=
 =?utf-8?B?cU4vM3Uva0ppS1BneElNajUvR0R6ZWFrdmxYTnZPSnQ0blNxampkZnJHQVUy?=
 =?utf-8?B?S1ZxQThSVEhRUllzdHc2dlg2T2pKOEp0Mk1xQjZ4d3hkbjRWbVJuU2ZEM2dI?=
 =?utf-8?B?ZTJkUWRGV3VKdUhiSDJhc0VkL1NDTW13dkJ5RjlTME8zU2x2Rnd0S3o4QVNw?=
 =?utf-8?B?L0I5NTNVdDBjKzlOTWdJT3psRk15NitKa1NudDdSazQ4bndDaGJUaVJVMlNX?=
 =?utf-8?B?cVJyVEw2TEh2M2xKbzhobjhhU0o5MTBLbzFlVTgvR0p0MDlYOFRmTDQ0aDNU?=
 =?utf-8?B?ZXJwdkJZa3N1aWNqZWE3TFlFZmFqTkZhQlp1KzRSd3FET3hsWEJuaUpnZjRs?=
 =?utf-8?B?cHYzYkp0WG1uTGF2d0ZKaWRBclYzcmdqS2R3RTlkMjR0UmxpY2V3amJUL0Iw?=
 =?utf-8?B?dGhCcWZUWXh5ODNBTFg2VGNWVjFXYWxwYktRaG1idDFzK2FkNDdWWmdBMHdR?=
 =?utf-8?B?SFZEWFFGM1NVMXdpU25EWEVSajMvMUxwWTJFY0pYajh4NVJDbnJKR3pJSS9S?=
 =?utf-8?B?SHFrVytadjFPaVlRZ0NrNDFoc1p3eEhPK1dkdENxMDMwdEpwWDY3VStEQ0hF?=
 =?utf-8?B?WHluU0hna0h0UmVTcnhsT3JWWDN0T2Q5VThqM2czaVRyeFU3YmxwcGZJaitN?=
 =?utf-8?B?c3ZSQzREeWF5dWNGdXprZk1FSm00WE5vNmkydmpyN1cvcnF6ZXB6T0Jza1JX?=
 =?utf-8?B?cnkzeXlrc3czM3dkRXlYanF5SFcyMHAvV2s4bjUrZHRCNHc5SFRwUHhIU1ll?=
 =?utf-8?B?c01QbXFkalZMcmVRZDIvWFNYVUNGRXpXVnN0YUJ3S1pKcHdROWdjRVc5OUNG?=
 =?utf-8?B?cTh0eVNmSUpxU2NPWnkrWXB0c2NVVXJvdWpYYStRb0tmeHd0VkJyV1g2cjRM?=
 =?utf-8?B?eUdmRS8xSFBSaVZxNkM4S2lWQXR4OVFWYkJWN2ExVkd5NVZnSmtuMUsvbmJj?=
 =?utf-8?B?YklzZlVXeVZ4eFpNYytvK3d6VEgvZE9zTjRFeGp5OXFwQUYwWmU0TUhKeThY?=
 =?utf-8?B?U3hKdlBqd0kvbk9LS0F1SWcweTVlWFR6bXFKSkhLWXRwVkhzbnV6U3NodFB2?=
 =?utf-8?B?Z3YyTWhtYVpLUVliY3JYSS9GV0tOWDRNMGVRVWdhQ0xURHV2VTBCQWlnV3Bu?=
 =?utf-8?B?bDZQVFArdFNkZVhOWmIwZ0xXand6MHV0cFpQK0FjcnJvOHFxM20yZHNHM3hN?=
 =?utf-8?B?RFBaUFdsVHRVVWhXNlBCWVRTeXpRMVROdGVNcWl3cXNvTmZkT3EwMWU4cHY3?=
 =?utf-8?B?N2xDUlJLc3gyTndxTE5FZFU4cWJadWJ6MlIyMnVES0I5VDJnSWREblcreHhF?=
 =?utf-8?B?U3V0WXBCR0U5VG1SektqeEVhL0VyZ0ozeTM1V2NZOWR2Z0xxTDZqVXRqNEVu?=
 =?utf-8?B?VUpPTDJLa0hyTWppRURZZy9kSEFmYzBNdkRTZXpISjZMRGt3a2c0STR1VTV4?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dbb0fef6-8550-46a2-5cf7-08dd633f617b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2025 21:30:03.1537 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TEDe0IEjxj4HuymhAe+8rAKsuoWzyzaYAtYIXWU2pa7eINmi3pT6xlChXe8gBx8iWEZab5T72U4PUpfbdkSIKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6712
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

Quoting Matt Roper (2025-03-14 18:17:37-03:00)
>On Tue, Mar 11, 2025 at 02:04:50PM -0300, Gustavo Sousa wrote:
>> Update intel_bw.c internally use intel_display. Conversion of the public
>> interface will come as a follow-up.
>>=20
>> v2:
>>   - Prefer intel_uncore_read() for MCHBAR registers. (Ville)
>> v3:
>>   - Remove the unnecessary inclusion of intel_de.h after changes from
>>     v2. (Ville)
>>=20
>> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c | 416 +++++++++++++++++--------=
-------
>>  1 file changed, 217 insertions(+), 199 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i=
915/display/intel_bw.c
>> index 048be287224774110d94fe2944daa580d8dc20a6..6f805af32926d3608929655d=
e97699747d7a5798 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -39,14 +39,15 @@ struct intel_qgv_info {
>>          u8 deinterleave;
>>  };
>> =20
>> -static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_=
priv,
>> +static int dg1_mchbar_read_qgv_point_info(struct intel_display *display=
,
>>                                            struct intel_qgv_point *sp,
>>                                            int point)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          u32 dclk_ratio, dclk_reference;
>>          u32 val;
>> =20
>> -        val =3D intel_uncore_read(&dev_priv->uncore, SA_PERF_STATUS_0_0=
_0_MCHBAR_PC);
>> +        val =3D intel_uncore_read(&i915->uncore, SA_PERF_STATUS_0_0_0_M=
CHBAR_PC);
>>          dclk_ratio =3D REG_FIELD_GET(DG1_QCLK_RATIO_MASK, val);
>>          if (val & DG1_QCLK_REFERENCE)
>>                  dclk_reference =3D 6; /* 6 * 16.666 MHz =3D 100 MHz */
>> @@ -54,18 +55,18 @@ static int dg1_mchbar_read_qgv_point_info(struct drm=
_i915_private *dev_priv,
>>                  dclk_reference =3D 8; /* 8 * 16.666 MHz =3D 133 MHz */
>>          sp->dclk =3D DIV_ROUND_UP((16667 * dclk_ratio * dclk_reference)=
 + 500, 1000);
>> =20
>> -        val =3D intel_uncore_read(&dev_priv->uncore, SKL_MC_BIOS_DATA_0=
_0_0_MCHBAR_PCU);
>> +        val =3D intel_uncore_read(&i915->uncore, SKL_MC_BIOS_DATA_0_0_0=
_MCHBAR_PCU);
>>          if (val & DG1_GEAR_TYPE)
>>                  sp->dclk *=3D 2;
>> =20
>>          if (sp->dclk =3D=3D 0)
>>                  return -EINVAL;
>> =20
>> -        val =3D intel_uncore_read(&dev_priv->uncore, MCHBAR_CH0_CR_TC_P=
RE_0_0_0_MCHBAR);
>> +        val =3D intel_uncore_read(&i915->uncore, MCHBAR_CH0_CR_TC_PRE_0=
_0_0_MCHBAR);
>>          sp->t_rp =3D REG_FIELD_GET(DG1_DRAM_T_RP_MASK, val);
>>          sp->t_rdpre =3D REG_FIELD_GET(DG1_DRAM_T_RDPRE_MASK, val);
>> =20
>> -        val =3D intel_uncore_read(&dev_priv->uncore, MCHBAR_CH0_CR_TC_P=
RE_0_0_0_MCHBAR_HIGH);
>> +        val =3D intel_uncore_read(&i915->uncore, MCHBAR_CH0_CR_TC_PRE_0=
_0_0_MCHBAR_HIGH);
>>          sp->t_rcd =3D REG_FIELD_GET(DG1_DRAM_T_RCD_MASK, val);
>>          sp->t_ras =3D REG_FIELD_GET(DG1_DRAM_T_RAS_MASK, val);
>> =20
>> @@ -74,22 +75,23 @@ static int dg1_mchbar_read_qgv_point_info(struct drm=
_i915_private *dev_priv,
>>          return 0;
>>  }
>> =20
>> -static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_p=
riv,
>> +static int icl_pcode_read_qgv_point_info(struct intel_display *display,
>>                                           struct intel_qgv_point *sp,
>>                                           int point)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          u32 val =3D 0, val2 =3D 0;
>>          u16 dclk;
>>          int ret;
>> =20
>> -        ret =3D snb_pcode_read(&dev_priv->uncore, ICL_PCODE_MEM_SUBSYSY=
STEM_INFO |
>> +        ret =3D snb_pcode_read(&i915->uncore, ICL_PCODE_MEM_SUBSYSYSTEM=
_INFO |
>>                               ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point=
),
>>                               &val, &val2);
>>          if (ret)
>>                  return ret;
>> =20
>>          dclk =3D val & 0xffff;
>> -        sp->dclk =3D DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_pri=
v) >=3D 12 ? 500 : 0),
>> +        sp->dclk =3D DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(display=
) >=3D 12 ? 500 : 0),
>>                                  1000);
>>          sp->t_rp =3D (val & 0xff0000) >> 16;
>>          sp->t_rcd =3D (val & 0xff000000) >> 24;
>> @@ -102,14 +104,15 @@ static int icl_pcode_read_qgv_point_info(struct dr=
m_i915_private *dev_priv,
>>          return 0;
>>  }
>> =20
>> -static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *d=
ev_priv,
>> -                                            struct intel_psf_gv_point *=
points)
>> +static int adls_pcode_read_psf_gv_point_info(struct intel_display *disp=
lay,
>> +                                             struct intel_psf_gv_point =
*points)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          u32 val =3D 0;
>>          int ret;
>>          int i;
>> =20
>> -        ret =3D snb_pcode_read(&dev_priv->uncore, ICL_PCODE_MEM_SUBSYSY=
STEM_INFO |
>> +        ret =3D snb_pcode_read(&i915->uncore, ICL_PCODE_MEM_SUBSYSYSTEM=
_INFO |
>>                               ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, N=
ULL);
>>          if (ret)
>>                  return ret;
>> @@ -122,10 +125,10 @@ static int adls_pcode_read_psf_gv_point_info(struc=
t drm_i915_private *dev_priv,
>>          return 0;
>>  }
>> =20
>> -static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
>> +static u16 icl_qgv_points_mask(struct intel_display *display)
>>  {
>> -        unsigned int num_psf_gv_points =3D i915->display.bw.max[0].num_=
psf_gv_points;
>> -        unsigned int num_qgv_points =3D i915->display.bw.max[0].num_qgv=
_points;
>> +        unsigned int num_psf_gv_points =3D display->bw.max[0].num_psf_g=
v_points;
>> +        unsigned int num_qgv_points =3D display->bw.max[0].num_qgv_poin=
ts;
>>          u16 qgv_points =3D 0, psf_points =3D 0;
>> =20
>>          /*
>> @@ -142,18 +145,19 @@ static u16 icl_qgv_points_mask(struct drm_i915_pri=
vate *i915)
>>          return ICL_PCODE_REQ_QGV_PT(qgv_points) | ADLS_PCODE_REQ_PSF_PT=
(psf_points);
>>  }
>> =20
>> -static bool is_sagv_enabled(struct drm_i915_private *i915, u16 points_m=
ask)
>> +static bool is_sagv_enabled(struct intel_display *display, u16 points_m=
ask)
>>  {
>> -        return !is_power_of_2(~points_mask & icl_qgv_points_mask(i915) =
&
>> +        return !is_power_of_2(~points_mask & icl_qgv_points_mask(displa=
y) &
>>                                ICL_PCODE_REQ_QGV_PT_MASK);
>>  }
>> =20
>>  int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>>                                    u32 points_mask)
>>  {
>> +        struct intel_display *display =3D &dev_priv->display;
>>          int ret;
>> =20
>> -        if (DISPLAY_VER(dev_priv) >=3D 14)
>> +        if (DISPLAY_VER(display) >=3D 14)
>>                  return 0;
>> =20
>>          /* bspec says to keep retrying for at least 1 ms */
>> @@ -164,27 +168,28 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_=
private *dev_priv,
>>                                  1);
>> =20
>>          if (ret < 0) {
>> -                drm_err(&dev_priv->drm,
>> +                drm_err(display->drm,
>>                          "Failed to disable qgv points (0x%x) points: 0x=
%x\n",
>>                          ret, points_mask);
>>                  return ret;
>>          }
>> =20
>> -        dev_priv->display.sagv.status =3D is_sagv_enabled(dev_priv, poi=
nts_mask) ?
>> +        display->sagv.status =3D is_sagv_enabled(display, points_mask) =
?
>>                  I915_SAGV_ENABLED : I915_SAGV_DISABLED;
>> =20
>>          return 0;
>>  }
>> =20
>> -static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
>> +static int mtl_read_qgv_point_info(struct intel_display *display,
>>                                     struct intel_qgv_point *sp, int poin=
t)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          u32 val, val2;
>>          u16 dclk;
>> =20
>> -        val =3D intel_uncore_read(&dev_priv->uncore,
>> +        val =3D intel_uncore_read(&i915->uncore,
>
>I know it was suggested not to convert the MCHBAR registers since those
>ones aren't technically display registers, but was it intentional to
>also keep these MTL ones on intel_uncore?  These are part of the display
>IP itself.  If these were just overlooked, we might want to send a
>follow-up patch for those.

My bad on not verifying that those offsets belong to the display IP.

I'll prepare a patch. Thanks for catching this!

--
Gustavo Sousa

>
>
>Matt
>
>>                                  MTL_MEM_SS_INFO_QGV_POINT_LOW(point));
>> -        val2 =3D intel_uncore_read(&dev_priv->uncore,
>> +        val2 =3D intel_uncore_read(&i915->uncore,
>>                                   MTL_MEM_SS_INFO_QGV_POINT_HIGH(point))=
;
>>          dclk =3D REG_FIELD_GET(MTL_DCLK_MASK, val);
>>          sp->dclk =3D DIV_ROUND_CLOSEST(16667 * dclk, 1000);
>> @@ -200,29 +205,30 @@ static int mtl_read_qgv_point_info(struct drm_i915=
_private *dev_priv,
>>  }
>> =20
>>  static int
>> -intel_read_qgv_point_info(struct drm_i915_private *dev_priv,
>> +intel_read_qgv_point_info(struct intel_display *display,
>>                            struct intel_qgv_point *sp,
>>                            int point)
>>  {
>> -        if (DISPLAY_VER(dev_priv) >=3D 14)
>> -                return mtl_read_qgv_point_info(dev_priv, sp, point);
>> -        else if (IS_DG1(dev_priv))
>> -                return dg1_mchbar_read_qgv_point_info(dev_priv, sp, poi=
nt);
>> +        if (DISPLAY_VER(display) >=3D 14)
>> +                return mtl_read_qgv_point_info(display, sp, point);
>> +        else if (display->platform.dg1)
>> +                return dg1_mchbar_read_qgv_point_info(display, sp, poin=
t);
>>          else
>> -                return icl_pcode_read_qgv_point_info(dev_priv, sp, poin=
t);
>> +                return icl_pcode_read_qgv_point_info(display, sp, point=
);
>>  }
>> =20
>> -static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>> +static int icl_get_qgv_points(struct intel_display *display,
>>                                struct intel_qgv_info *qi,
>>                                bool is_y_tile)
>>  {
>> -        const struct dram_info *dram_info =3D &dev_priv->dram_info;
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +        const struct dram_info *dram_info =3D &i915->dram_info;
>>          int i, ret;
>> =20
>>          qi->num_points =3D dram_info->num_qgv_points;
>>          qi->num_psf_points =3D dram_info->num_psf_gv_points;
>> =20
>> -        if (DISPLAY_VER(dev_priv) >=3D 14) {
>> +        if (DISPLAY_VER(display) >=3D 14) {
>>                  switch (dram_info->type) {
>>                  case INTEL_DRAM_DDR4:
>>                          qi->t_bl =3D 4;
>> @@ -250,7 +256,7 @@ static int icl_get_qgv_points(struct drm_i915_privat=
e *dev_priv,
>>                          MISSING_CASE(dram_info->type);
>>                          return -EINVAL;
>>                  }
>> -        } else if (DISPLAY_VER(dev_priv) >=3D 12) {
>> +        } else if (DISPLAY_VER(display) >=3D 12) {
>>                  switch (dram_info->type) {
>>                  case INTEL_DRAM_DDR4:
>>                          qi->t_bl =3D is_y_tile ? 8 : 4;
>> @@ -265,7 +271,7 @@ static int icl_get_qgv_points(struct drm_i915_privat=
e *dev_priv,
>>                          qi->deinterleave =3D is_y_tile ? 1 : 2;
>>                          break;
>>                  case INTEL_DRAM_LPDDR4:
>> -                        if (IS_ROCKETLAKE(dev_priv)) {
>> +                        if (display->platform.rocketlake) {
>>                                  qi->t_bl =3D 8;
>>                                  qi->max_numchannels =3D 4;
>>                                  qi->channel_width =3D 32;
>> @@ -284,39 +290,39 @@ static int icl_get_qgv_points(struct drm_i915_priv=
ate *dev_priv,
>>                          qi->max_numchannels =3D 1;
>>                          break;
>>                  }
>> -        } else if (DISPLAY_VER(dev_priv) =3D=3D 11) {
>> -                qi->t_bl =3D dev_priv->dram_info.type =3D=3D INTEL_DRAM=
_DDR4 ? 4 : 8;
>> +        } else if (DISPLAY_VER(display) =3D=3D 11) {
>> +                qi->t_bl =3D dram_info->type =3D=3D INTEL_DRAM_DDR4 ? 4=
 : 8;
>>                  qi->max_numchannels =3D 1;
>>          }
>> =20
>> -        if (drm_WARN_ON(&dev_priv->drm,
>> +        if (drm_WARN_ON(display->drm,
>>                          qi->num_points > ARRAY_SIZE(qi->points)))
>>                  qi->num_points =3D ARRAY_SIZE(qi->points);
>> =20
>>          for (i =3D 0; i < qi->num_points; i++) {
>>                  struct intel_qgv_point *sp =3D &qi->points[i];
>> =20
>> -                ret =3D intel_read_qgv_point_info(dev_priv, sp, i);
>> +                ret =3D intel_read_qgv_point_info(display, sp, i);
>>                  if (ret) {
>> -                        drm_dbg_kms(&dev_priv->drm, "Could not read QGV=
 %d info\n", i);
>> +                        drm_dbg_kms(display->drm, "Could not read QGV %=
d info\n", i);
>>                          return ret;
>>                  }
>> =20
>> -                drm_dbg_kms(&dev_priv->drm,
>> +                drm_dbg_kms(display->drm,
>>                              "QGV %d: DCLK=3D%d tRP=3D%d tRDPRE=3D%d tRA=
S=3D%d tRCD=3D%d tRC=3D%d\n",
>>                              i, sp->dclk, sp->t_rp, sp->t_rdpre, sp->t_r=
as,
>>                              sp->t_rcd, sp->t_rc);
>>          }
>> =20
>>          if (qi->num_psf_points > 0) {
>> -                ret =3D adls_pcode_read_psf_gv_point_info(dev_priv, qi-=
>psf_points);
>> +                ret =3D adls_pcode_read_psf_gv_point_info(display, qi->=
psf_points);
>>                  if (ret) {
>> -                        drm_err(&dev_priv->drm, "Failed to read PSF poi=
nt data; PSF points will not be considered in bandwidth calculations.\n");
>> +                        drm_err(display->drm, "Failed to read PSF point=
 data; PSF points will not be considered in bandwidth calculations.\n");
>>                          qi->num_psf_points =3D 0;
>>                  }
>> =20
>>                  for (i =3D 0; i < qi->num_psf_points; i++)
>> -                        drm_dbg_kms(&dev_priv->drm,
>> +                        drm_dbg_kms(display->drm,
>>                                      "PSF GV %d: CLK=3D%d \n",
>>                                      i, qi->psf_points[i].clk);
>>          }
>> @@ -398,20 +404,21 @@ static const struct intel_sa_info xe2_hpd_sa_info =
=3D {
>>          /* Other values not used by simplified algorithm */
>>  };
>> =20
>> -static int icl_get_bw_info(struct drm_i915_private *dev_priv, const str=
uct intel_sa_info *sa)
>> +static int icl_get_bw_info(struct intel_display *display, const struct =
intel_sa_info *sa)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          struct intel_qgv_info qi =3D {};
>>          bool is_y_tile =3D true; /* assume y tile may be used */
>> -        int num_channels =3D max_t(u8, 1, dev_priv->dram_info.num_chann=
els);
>> +        int num_channels =3D max_t(u8, 1, i915->dram_info.num_channels)=
;
>>          int ipqdepth, ipqdepthpch =3D 16;
>>          int dclk_max;
>>          int maxdebw;
>> -        int num_groups =3D ARRAY_SIZE(dev_priv->display.bw.max);
>> +        int num_groups =3D ARRAY_SIZE(display->bw.max);
>>          int i, ret;
>> =20
>> -        ret =3D icl_get_qgv_points(dev_priv, &qi, is_y_tile);
>> +        ret =3D icl_get_qgv_points(display, &qi, is_y_tile);
>>          if (ret) {
>> -                drm_dbg_kms(&dev_priv->drm,
>> +                drm_dbg_kms(display->drm,
>>                              "Failed to get memory subsystem information=
, ignoring bandwidth limits");
>>                  return ret;
>>          }
>> @@ -422,7 +429,7 @@ static int icl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>          qi.deinterleave =3D DIV_ROUND_UP(num_channels, is_y_tile ? 4 : =
2);
>> =20
>>          for (i =3D 0; i < num_groups; i++) {
>> -                struct intel_bw_info *bi =3D &dev_priv->display.bw.max[=
i];
>> +                struct intel_bw_info *bi =3D &display->bw.max[i];
>>                  int clpchgroup;
>>                  int j;
>> =20
>> @@ -449,7 +456,7 @@ static int icl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>                          bi->deratedbw[j] =3D min(maxdebw,
>>                                                 bw * (100 - sa->derating=
) / 100);
>> =20
>> -                        drm_dbg_kms(&dev_priv->drm,
>> +                        drm_dbg_kms(display->drm,
>>                                      "BW%d / QGV %d: num_planes=3D%d der=
atedbw=3D%u\n",
>>                                      i, j, bi->num_planes, bi->deratedbw=
[j]);
>>                  }
>> @@ -460,44 +467,45 @@ static int icl_get_bw_info(struct drm_i915_private=
 *dev_priv, const struct intel
>>           * as it will fail and pointless anyway.
>>           */
>>          if (qi.num_points =3D=3D 1)
>> -                dev_priv->display.sagv.status =3D I915_SAGV_NOT_CONTROL=
LED;
>> +                display->sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>>          else
>> -                dev_priv->display.sagv.status =3D I915_SAGV_ENABLED;
>> +                display->sagv.status =3D I915_SAGV_ENABLED;
>> =20
>>          return 0;
>>  }
>> =20
>> -static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const str=
uct intel_sa_info *sa)
>> +static int tgl_get_bw_info(struct intel_display *display, const struct =
intel_sa_info *sa)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          struct intel_qgv_info qi =3D {};
>> -        const struct dram_info *dram_info =3D &dev_priv->dram_info;
>> +        const struct dram_info *dram_info =3D &i915->dram_info;
>>          bool is_y_tile =3D true; /* assume y tile may be used */
>> -        int num_channels =3D max_t(u8, 1, dev_priv->dram_info.num_chann=
els);
>> +        int num_channels =3D max_t(u8, 1, dram_info->num_channels);
>>          int ipqdepth, ipqdepthpch =3D 16;
>>          int dclk_max;
>>          int maxdebw, peakbw;
>>          int clperchgroup;
>> -        int num_groups =3D ARRAY_SIZE(dev_priv->display.bw.max);
>> +        int num_groups =3D ARRAY_SIZE(display->bw.max);
>>          int i, ret;
>> =20
>> -        ret =3D icl_get_qgv_points(dev_priv, &qi, is_y_tile);
>> +        ret =3D icl_get_qgv_points(display, &qi, is_y_tile);
>>          if (ret) {
>> -                drm_dbg_kms(&dev_priv->drm,
>> +                drm_dbg_kms(display->drm,
>>                              "Failed to get memory subsystem information=
, ignoring bandwidth limits");
>>                  return ret;
>>          }
>> =20
>> -        if (DISPLAY_VER(dev_priv) < 14 &&
>> +        if (DISPLAY_VER(display) < 14 &&
>>              (dram_info->type =3D=3D INTEL_DRAM_LPDDR4 || dram_info->typ=
e =3D=3D INTEL_DRAM_LPDDR5))
>>                  num_channels *=3D 2;
>> =20
>>          qi.deinterleave =3D qi.deinterleave ? : DIV_ROUND_UP(num_channe=
ls, is_y_tile ? 4 : 2);
>> =20
>> -        if (num_channels < qi.max_numchannels && DISPLAY_VER(dev_priv) =
>=3D 12)
>> +        if (num_channels < qi.max_numchannels && DISPLAY_VER(display) >=
=3D 12)
>>                  qi.deinterleave =3D max(DIV_ROUND_UP(qi.deinterleave, 2=
), 1);
>> =20
>> -        if (DISPLAY_VER(dev_priv) >=3D 12 && num_channels > qi.max_numc=
hannels)
>> -                drm_warn(&dev_priv->drm, "Number of channels exceeds ma=
x number of channels.");
>> +        if (DISPLAY_VER(display) >=3D 12 && num_channels > qi.max_numch=
annels)
>> +                drm_warn(display->drm, "Number of channels exceeds max =
number of channels.");
>>          if (qi.max_numchannels !=3D 0)
>>                  num_channels =3D min_t(u8, num_channels, qi.max_numchan=
nels);
>> =20
>> @@ -514,7 +522,7 @@ static int tgl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>          clperchgroup =3D 4 * DIV_ROUND_UP(8, num_channels) * qi.deinter=
leave;
>> =20
>>          for (i =3D 0; i < num_groups; i++) {
>> -                struct intel_bw_info *bi =3D &dev_priv->display.bw.max[=
i];
>> +                struct intel_bw_info *bi =3D &display->bw.max[i];
>>                  struct intel_bw_info *bi_next;
>>                  int clpchgroup;
>>                  int j;
>> @@ -522,7 +530,7 @@ static int tgl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>                  clpchgroup =3D (sa->deburst * qi.deinterleave / num_cha=
nnels) << i;
>> =20
>>                  if (i < num_groups - 1) {
>> -                        bi_next =3D &dev_priv->display.bw.max[i + 1];
>> +                        bi_next =3D &display->bw.max[i + 1];
>> =20
>>                          if (clpchgroup < clperchgroup)
>>                                  bi_next->num_planes =3D (ipqdepth - clp=
chgroup) /
>> @@ -554,7 +562,7 @@ static int tgl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>                                                            num_channels =
*
>>                                                            qi.channel_wi=
dth, 8);
>> =20
>> -                        drm_dbg_kms(&dev_priv->drm,
>> +                        drm_dbg_kms(display->drm,
>>                                      "BW%d / QGV %d: num_planes=3D%d der=
atedbw=3D%u peakbw: %u\n",
>>                                      i, j, bi->num_planes, bi->deratedbw=
[j],
>>                                      bi->peakbw[j]);
>> @@ -565,7 +573,7 @@ static int tgl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>> =20
>>                          bi->psf_bw[j] =3D adl_calc_psf_bw(sp->clk);
>> =20
>> -                        drm_dbg_kms(&dev_priv->drm,
>> +                        drm_dbg_kms(display->drm,
>>                                      "BW%d / PSF GV %d: num_planes=3D%d =
bw=3D%u\n",
>>                                      i, j, bi->num_planes, bi->psf_bw[j]=
);
>>                  }
>> @@ -577,17 +585,17 @@ static int tgl_get_bw_info(struct drm_i915_private=
 *dev_priv, const struct intel
>>           * as it will fail and pointless anyway.
>>           */
>>          if (qi.num_points =3D=3D 1)
>> -                dev_priv->display.sagv.status =3D I915_SAGV_NOT_CONTROL=
LED;
>> +                display->sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>>          else
>> -                dev_priv->display.sagv.status =3D I915_SAGV_ENABLED;
>> +                display->sagv.status =3D I915_SAGV_ENABLED;
>> =20
>>          return 0;
>>  }
>> =20
>> -static void dg2_get_bw_info(struct drm_i915_private *i915)
>> +static void dg2_get_bw_info(struct intel_display *display)
>>  {
>> -        unsigned int deratedbw =3D IS_DG2_G11(i915) ? 38000 : 50000;
>> -        int num_groups =3D ARRAY_SIZE(i915->display.bw.max);
>> +        unsigned int deratedbw =3D display->platform.dg2_g11 ? 38000 : =
50000;
>> +        int num_groups =3D ARRAY_SIZE(display->bw.max);
>>          int i;
>> =20
>>          /*
>> @@ -598,7 +606,7 @@ static void dg2_get_bw_info(struct drm_i915_private =
*i915)
>>           * whereas DG2-G11 platforms have 38 GB/s.
>>           */
>>          for (i =3D 0; i < num_groups; i++) {
>> -                struct intel_bw_info *bi =3D &i915->display.bw.max[i];
>> +                struct intel_bw_info *bi =3D &display->bw.max[i];
>> =20
>>                  bi->num_planes =3D 1;
>>                  /* Need only one dummy QGV point per group */
>> @@ -606,20 +614,21 @@ static void dg2_get_bw_info(struct drm_i915_privat=
e *i915)
>>                  bi->deratedbw[0] =3D deratedbw;
>>          }
>> =20
>> -        i915->display.sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>> +        display->sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>>  }
>> =20
>> -static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
>> +static int xe2_hpd_get_bw_info(struct intel_display *display,
>>                                 const struct intel_sa_info *sa)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          struct intel_qgv_info qi =3D {};
>>          int num_channels =3D i915->dram_info.num_channels;
>>          int peakbw, maxdebw;
>>          int ret, i;
>> =20
>> -        ret =3D icl_get_qgv_points(i915, &qi, true);
>> +        ret =3D icl_get_qgv_points(display, &qi, true);
>>          if (ret) {
>> -                drm_dbg_kms(&i915->drm,
>> +                drm_dbg_kms(display->drm,
>>                              "Failed to get memory subsystem information=
, ignoring bandwidth limits");
>>                  return ret;
>>          }
>> @@ -631,33 +640,33 @@ static int xe2_hpd_get_bw_info(struct drm_i915_pri=
vate *i915,
>>                  const struct intel_qgv_point *point =3D &qi.points[i];
>>                  int bw =3D num_channels * (qi.channel_width / 8) * poin=
t->dclk;
>> =20
>> -                i915->display.bw.max[0].deratedbw[i] =3D
>> +                display->bw.max[0].deratedbw[i] =3D
>>                          min(maxdebw, (100 - sa->derating) * bw / 100);
>> -                i915->display.bw.max[0].peakbw[i] =3D bw;
>> +                display->bw.max[0].peakbw[i] =3D bw;
>> =20
>> -                drm_dbg_kms(&i915->drm, "QGV %d: deratedbw=3D%u peakbw:=
 %u\n",
>> -                            i, i915->display.bw.max[0].deratedbw[i],
>> -                            i915->display.bw.max[0].peakbw[i]);
>> +                drm_dbg_kms(display->drm, "QGV %d: deratedbw=3D%u peakb=
w: %u\n",
>> +                            i, display->bw.max[0].deratedbw[i],
>> +                            display->bw.max[0].peakbw[i]);
>>          }
>> =20
>>          /* Bandwidth does not depend on # of planes; set all groups the=
 same */
>> -        i915->display.bw.max[0].num_planes =3D 1;
>> -        i915->display.bw.max[0].num_qgv_points =3D qi.num_points;
>> -        for (i =3D 1; i < ARRAY_SIZE(i915->display.bw.max); i++)
>> -                memcpy(&i915->display.bw.max[i], &i915->display.bw.max[=
0],
>> -                       sizeof(i915->display.bw.max[0]));
>> +        display->bw.max[0].num_planes =3D 1;
>> +        display->bw.max[0].num_qgv_points =3D qi.num_points;
>> +        for (i =3D 1; i < ARRAY_SIZE(display->bw.max); i++)
>> +                memcpy(&display->bw.max[i], &display->bw.max[0],
>> +                       sizeof(display->bw.max[0]));
>> =20
>>          /*
>>           * Xe2_HPD should always have exactly two QGV points representi=
ng
>>           * battery and plugged-in operation.
>>           */
>> -        drm_WARN_ON(&i915->drm, qi.num_points !=3D 2);
>> -        i915->display.sagv.status =3D I915_SAGV_ENABLED;
>> +        drm_WARN_ON(display->drm, qi.num_points !=3D 2);
>> +        display->sagv.status =3D I915_SAGV_ENABLED;
>> =20
>>          return 0;
>>  }
>> =20
>> -static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
>> +static unsigned int icl_max_bw_index(struct intel_display *display,
>>                                       int num_planes, int qgv_point)
>>  {
>>          int i;
>> @@ -667,9 +676,9 @@ static unsigned int icl_max_bw_index(struct drm_i915=
_private *dev_priv,
>>           */
>>          num_planes =3D max(1, num_planes);
>> =20
>> -        for (i =3D 0; i < ARRAY_SIZE(dev_priv->display.bw.max); i++) {
>> +        for (i =3D 0; i < ARRAY_SIZE(display->bw.max); i++) {
>>                  const struct intel_bw_info *bi =3D
>> -                        &dev_priv->display.bw.max[i];
>> +                        &display->bw.max[i];
>> =20
>>                  /*
>>                   * Pcode will not expose all QGV points when
>> @@ -685,7 +694,7 @@ static unsigned int icl_max_bw_index(struct drm_i915=
_private *dev_priv,
>>          return UINT_MAX;
>>  }
>> =20
>> -static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
>> +static unsigned int tgl_max_bw_index(struct intel_display *display,
>>                                       int num_planes, int qgv_point)
>>  {
>>          int i;
>> @@ -695,9 +704,9 @@ static unsigned int tgl_max_bw_index(struct drm_i915=
_private *dev_priv,
>>           */
>>          num_planes =3D max(1, num_planes);
>> =20
>> -        for (i =3D ARRAY_SIZE(dev_priv->display.bw.max) - 1; i >=3D 0; =
i--) {
>> +        for (i =3D ARRAY_SIZE(display->bw.max) - 1; i >=3D 0; i--) {
>>                  const struct intel_bw_info *bi =3D
>> -                        &dev_priv->display.bw.max[i];
>> +                        &display->bw.max[i];
>> =20
>>                  /*
>>                   * Pcode will not expose all QGV points when
>> @@ -713,52 +722,54 @@ static unsigned int tgl_max_bw_index(struct drm_i9=
15_private *dev_priv,
>>          return 0;
>>  }
>> =20
>> -static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
>> +static unsigned int adl_psf_bw(struct intel_display *display,
>>                                 int psf_gv_point)
>>  {
>>          const struct intel_bw_info *bi =3D
>> -                        &dev_priv->display.bw.max[0];
>> +                        &display->bw.max[0];
>> =20
>>          return bi->psf_bw[psf_gv_point];
>>  }
>> =20
>> -static unsigned int icl_qgv_bw(struct drm_i915_private *i915,
>> +static unsigned int icl_qgv_bw(struct intel_display *display,
>>                                 int num_active_planes, int qgv_point)
>>  {
>>          unsigned int idx;
>> =20
>> -        if (DISPLAY_VER(i915) >=3D 12)
>> -                idx =3D tgl_max_bw_index(i915, num_active_planes, qgv_p=
oint);
>> +        if (DISPLAY_VER(display) >=3D 12)
>> +                idx =3D tgl_max_bw_index(display, num_active_planes, qg=
v_point);
>>          else
>> -                idx =3D icl_max_bw_index(i915, num_active_planes, qgv_p=
oint);
>> +                idx =3D icl_max_bw_index(display, num_active_planes, qg=
v_point);
>> =20
>> -        if (idx >=3D ARRAY_SIZE(i915->display.bw.max))
>> +        if (idx >=3D ARRAY_SIZE(display->bw.max))
>>                  return 0;
>> =20
>> -        return i915->display.bw.max[idx].deratedbw[qgv_point];
>> +        return display->bw.max[idx].deratedbw[qgv_point];
>>  }
>> =20
>>  void intel_bw_init_hw(struct drm_i915_private *dev_priv)
>>  {
>> -        if (!HAS_DISPLAY(dev_priv))
>> +        struct intel_display *display =3D &dev_priv->display;
>> +
>> +        if (!HAS_DISPLAY(display))
>>                  return;
>> =20
>> -        if (DISPLAY_VERx100(dev_priv) >=3D 1401 && IS_DGFX(dev_priv))
>> -                xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
>> -        else if (DISPLAY_VER(dev_priv) >=3D 14)
>> -                tgl_get_bw_info(dev_priv, &mtl_sa_info);
>> -        else if (IS_DG2(dev_priv))
>> -                dg2_get_bw_info(dev_priv);
>> -        else if (IS_ALDERLAKE_P(dev_priv))
>> -                tgl_get_bw_info(dev_priv, &adlp_sa_info);
>> -        else if (IS_ALDERLAKE_S(dev_priv))
>> -                tgl_get_bw_info(dev_priv, &adls_sa_info);
>> -        else if (IS_ROCKETLAKE(dev_priv))
>> -                tgl_get_bw_info(dev_priv, &rkl_sa_info);
>> -        else if (DISPLAY_VER(dev_priv) =3D=3D 12)
>> -                tgl_get_bw_info(dev_priv, &tgl_sa_info);
>> -        else if (DISPLAY_VER(dev_priv) =3D=3D 11)
>> -                icl_get_bw_info(dev_priv, &icl_sa_info);
>> +        if (DISPLAY_VERx100(display) >=3D 1401 && display->platform.dgf=
x)
>> +                xe2_hpd_get_bw_info(display, &xe2_hpd_sa_info);
>> +        else if (DISPLAY_VER(display) >=3D 14)
>> +                tgl_get_bw_info(display, &mtl_sa_info);
>> +        else if (display->platform.dg2)
>> +                dg2_get_bw_info(display);
>> +        else if (display->platform.alderlake_p)
>> +                tgl_get_bw_info(display, &adlp_sa_info);
>> +        else if (display->platform.alderlake_s)
>> +                tgl_get_bw_info(display, &adls_sa_info);
>> +        else if (display->platform.rocketlake)
>> +                tgl_get_bw_info(display, &rkl_sa_info);
>> +        else if (DISPLAY_VER(display) =3D=3D 12)
>> +                tgl_get_bw_info(display, &tgl_sa_info);
>> +        else if (DISPLAY_VER(display) =3D=3D 11)
>> +                icl_get_bw_info(display, &icl_sa_info);
>>  }
>> =20
>>  static unsigned int intel_bw_crtc_num_active_planes(const struct intel_=
crtc_state *crtc_state)
>> @@ -772,8 +783,8 @@ static unsigned int intel_bw_crtc_num_active_planes(=
const struct intel_crtc_stat
>> =20
>>  static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_sta=
te *crtc_state)
>>  {
>> +        struct intel_display *display =3D to_intel_display(crtc_state);
>>          struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
>> -        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>>          unsigned int data_rate =3D 0;
>>          enum plane_id plane_id;
>> =20
>> @@ -787,7 +798,7 @@ static unsigned int intel_bw_crtc_data_rate(const st=
ruct intel_crtc_state *crtc_
>> =20
>>                  data_rate +=3D crtc_state->data_rate[plane_id];
>> =20
>> -                if (DISPLAY_VER(i915) < 11)
>> +                if (DISPLAY_VER(display) < 11)
>>                          data_rate +=3D crtc_state->data_rate_y[plane_id=
];
>>          }
>> =20
>> @@ -797,37 +808,37 @@ static unsigned int intel_bw_crtc_data_rate(const =
struct intel_crtc_state *crtc_
>>  /* "Maximum Pipe Read Bandwidth" */
>>  static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_=
state)
>>  {
>> -        struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
>> -        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>> +        struct intel_display *display =3D to_intel_display(crtc_state);
>> =20
>> -        if (DISPLAY_VER(i915) < 12)
>> +        if (DISPLAY_VER(display) < 12)
>>                  return 0;
>> =20
>>          return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crt=
c_state), 10), 512);
>>  }
>> =20
>> -static unsigned int intel_bw_num_active_planes(struct drm_i915_private =
*dev_priv,
>> +static unsigned int intel_bw_num_active_planes(struct intel_display *di=
splay,
>>                                                 const struct intel_bw_st=
ate *bw_state)
>>  {
>>          unsigned int num_active_planes =3D 0;
>>          enum pipe pipe;
>> =20
>> -        for_each_pipe(dev_priv, pipe)
>> +        for_each_pipe(display, pipe)
>>                  num_active_planes +=3D bw_state->num_active_planes[pipe=
];
>> =20
>>          return num_active_planes;
>>  }
>> =20
>> -static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_pri=
v,
>> +static unsigned int intel_bw_data_rate(struct intel_display *display,
>>                                         const struct intel_bw_state *bw_=
state)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          unsigned int data_rate =3D 0;
>>          enum pipe pipe;
>> =20
>> -        for_each_pipe(dev_priv, pipe)
>> +        for_each_pipe(display, pipe)
>>                  data_rate +=3D bw_state->data_rate[pipe];
>> =20
>> -        if (DISPLAY_VER(dev_priv) >=3D 13 && i915_vtd_active(dev_priv))
>> +        if (DISPLAY_VER(display) >=3D 13 && i915_vtd_active(i915))
>>                  data_rate =3D DIV_ROUND_UP(data_rate * 105, 100);
>> =20
>>          return data_rate;
>> @@ -836,10 +847,10 @@ static unsigned int intel_bw_data_rate(struct drm_=
i915_private *dev_priv,
>>  struct intel_bw_state *
>>  intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>> +        struct intel_display *display =3D to_intel_display(state);
>>          struct intel_global_state *bw_state;
>> =20
>> -        bw_state =3D intel_atomic_get_old_global_obj_state(state, &dev_=
priv->display.bw.obj);
>> +        bw_state =3D intel_atomic_get_old_global_obj_state(state, &disp=
lay->bw.obj);
>> =20
>>          return to_intel_bw_state(bw_state);
>>  }
>> @@ -847,10 +858,10 @@ intel_atomic_get_old_bw_state(struct intel_atomic_=
state *state)
>>  struct intel_bw_state *
>>  intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>> +        struct intel_display *display =3D to_intel_display(state);
>>          struct intel_global_state *bw_state;
>> =20
>> -        bw_state =3D intel_atomic_get_new_global_obj_state(state, &dev_=
priv->display.bw.obj);
>> +        bw_state =3D intel_atomic_get_new_global_obj_state(state, &disp=
lay->bw.obj);
>> =20
>>          return to_intel_bw_state(bw_state);
>>  }
>> @@ -858,27 +869,27 @@ intel_atomic_get_new_bw_state(struct intel_atomic_=
state *state)
>>  struct intel_bw_state *
>>  intel_atomic_get_bw_state(struct intel_atomic_state *state)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>> +        struct intel_display *display =3D to_intel_display(state);
>>          struct intel_global_state *bw_state;
>> =20
>> -        bw_state =3D intel_atomic_get_global_obj_state(state, &dev_priv=
->display.bw.obj);
>> +        bw_state =3D intel_atomic_get_global_obj_state(state, &display-=
>bw.obj);
>>          if (IS_ERR(bw_state))
>>                  return ERR_CAST(bw_state);
>> =20
>>          return to_intel_bw_state(bw_state);
>>  }
>> =20
>> -static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *=
i915,
>> +static unsigned int icl_max_bw_qgv_point_mask(struct intel_display *dis=
play,
>>                                                int num_active_planes)
>>  {
>> -        unsigned int num_qgv_points =3D i915->display.bw.max[0].num_qgv=
_points;
>> +        unsigned int num_qgv_points =3D display->bw.max[0].num_qgv_poin=
ts;
>>          unsigned int max_bw_point =3D 0;
>>          unsigned int max_bw =3D 0;
>>          int i;
>> =20
>>          for (i =3D 0; i < num_qgv_points; i++) {
>>                  unsigned int max_data_rate =3D
>> -                        icl_qgv_bw(i915, num_active_planes, i);
>> +                        icl_qgv_bw(display, num_active_planes, i);
>> =20
>>                  /*
>>                   * We need to know which qgv point gives us
>> @@ -897,23 +908,23 @@ static unsigned int icl_max_bw_qgv_point_mask(stru=
ct drm_i915_private *i915,
>>          return max_bw_point;
>>  }
>> =20
>> -static u16 icl_prepare_qgv_points_mask(struct drm_i915_private *i915,
>> +static u16 icl_prepare_qgv_points_mask(struct intel_display *display,
>>                                         unsigned int qgv_points,
>>                                         unsigned int psf_points)
>>  {
>>          return ~(ICL_PCODE_REQ_QGV_PT(qgv_points) |
>> -                 ADLS_PCODE_REQ_PSF_PT(psf_points)) & icl_qgv_points_ma=
sk(i915);
>> +                 ADLS_PCODE_REQ_PSF_PT(psf_points)) & icl_qgv_points_ma=
sk(display);
>>  }
>> =20
>> -static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_privat=
e *i915)
>> +static unsigned int icl_max_bw_psf_gv_point_mask(struct intel_display *=
display)
>>  {
>> -        unsigned int num_psf_gv_points =3D i915->display.bw.max[0].num_=
psf_gv_points;
>> +        unsigned int num_psf_gv_points =3D display->bw.max[0].num_psf_g=
v_points;
>>          unsigned int max_bw_point_mask =3D 0;
>>          unsigned int max_bw =3D 0;
>>          int i;
>> =20
>>          for (i =3D 0; i < num_psf_gv_points; i++) {
>> -                unsigned int max_data_rate =3D adl_psf_bw(i915, i);
>> +                unsigned int max_data_rate =3D adl_psf_bw(display, i);
>> =20
>>                  if (max_data_rate > max_bw) {
>>                          max_bw_point_mask =3D BIT(i);
>> @@ -926,29 +937,31 @@ static unsigned int icl_max_bw_psf_gv_point_mask(s=
truct drm_i915_private *i915)
>>          return max_bw_point_mask;
>>  }
>> =20
>> -static void icl_force_disable_sagv(struct drm_i915_private *i915,
>> +static void icl_force_disable_sagv(struct intel_display *display,
>>                                     struct intel_bw_state *bw_state)
>>  {
>> -        unsigned int qgv_points =3D icl_max_bw_qgv_point_mask(i915, 0);
>> -        unsigned int psf_points =3D icl_max_bw_psf_gv_point_mask(i915);
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +        unsigned int qgv_points =3D icl_max_bw_qgv_point_mask(display, =
0);
>> +        unsigned int psf_points =3D icl_max_bw_psf_gv_point_mask(displa=
y);
>> =20
>> -        bw_state->qgv_points_mask =3D icl_prepare_qgv_points_mask(i915,
>> +        bw_state->qgv_points_mask =3D icl_prepare_qgv_points_mask(displ=
ay,
>>                                                                  qgv_poi=
nts,
>>                                                                  psf_poi=
nts);
>> =20
>> -        drm_dbg_kms(&i915->drm, "Forcing SAGV disable: mask 0x%x\n",
>> +        drm_dbg_kms(display->drm, "Forcing SAGV disable: mask 0x%x\n",
>>                      bw_state->qgv_points_mask);
>> =20
>>          icl_pcode_restrict_qgv_points(i915, bw_state->qgv_points_mask);
>>  }
>> =20
>> -static int mtl_find_qgv_points(struct drm_i915_private *i915,
>> +static int mtl_find_qgv_points(struct intel_display *display,
>>                                 unsigned int data_rate,
>>                                 unsigned int num_active_planes,
>>                                 struct intel_bw_state *new_bw_state)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          unsigned int best_rate =3D UINT_MAX;
>> -        unsigned int num_qgv_points =3D i915->display.bw.max[0].num_qgv=
_points;
>> +        unsigned int num_qgv_points =3D display->bw.max[0].num_qgv_poin=
ts;
>>          unsigned int qgv_peak_bw  =3D 0;
>>          int i;
>>          int ret;
>> @@ -964,7 +977,7 @@ static int mtl_find_qgv_points(struct drm_i915_priva=
te *i915,
>>           */
>>          if (!intel_can_enable_sagv(i915, new_bw_state)) {
>>                  new_bw_state->qgv_point_peakbw =3D U16_MAX;
>> -                drm_dbg_kms(&i915->drm, "No SAGV, use UINT_MAX as peak =
bw.");
>> +                drm_dbg_kms(display->drm, "No SAGV, use UINT_MAX as pea=
k bw.");
>>                  return 0;
>>          }
>> =20
>> @@ -974,27 +987,27 @@ static int mtl_find_qgv_points(struct drm_i915_pri=
vate *i915,
>>           */
>>          for (i =3D 0; i < num_qgv_points; i++) {
>>                  unsigned int bw_index =3D
>> -                        tgl_max_bw_index(i915, num_active_planes, i);
>> +                        tgl_max_bw_index(display, num_active_planes, i)=
;
>>                  unsigned int max_data_rate;
>> =20
>> -                if (bw_index >=3D ARRAY_SIZE(i915->display.bw.max))
>> +                if (bw_index >=3D ARRAY_SIZE(display->bw.max))
>>                          continue;
>> =20
>> -                max_data_rate =3D i915->display.bw.max[bw_index].derate=
dbw[i];
>> +                max_data_rate =3D display->bw.max[bw_index].deratedbw[i=
];
>> =20
>>                  if (max_data_rate < data_rate)
>>                          continue;
>> =20
>>                  if (max_data_rate - data_rate < best_rate) {
>>                          best_rate =3D max_data_rate - data_rate;
>> -                        qgv_peak_bw =3D i915->display.bw.max[bw_index].=
peakbw[i];
>> +                        qgv_peak_bw =3D display->bw.max[bw_index].peakb=
w[i];
>>                  }
>> =20
>> -                drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d requir=
ed %d qgv_peak_bw: %d\n",
>> +                drm_dbg_kms(display->drm, "QGV point %d: max bw %d requ=
ired %d qgv_peak_bw: %d\n",
>>                              i, max_data_rate, data_rate, qgv_peak_bw);
>>          }
>> =20
>> -        drm_dbg_kms(&i915->drm, "Matching peaks QGV bw: %d for required=
 data rate: %d\n",
>> +        drm_dbg_kms(display->drm, "Matching peaks QGV bw: %d for requir=
ed data rate: %d\n",
>>                      qgv_peak_bw, data_rate);
>> =20
>>          /*
>> @@ -1002,7 +1015,7 @@ static int mtl_find_qgv_points(struct drm_i915_pri=
vate *i915,
>>           * satisfying the required data rate is found
>>           */
>>          if (qgv_peak_bw =3D=3D 0) {
>> -                drm_dbg_kms(&i915->drm, "No QGV points for bw %d for di=
splay configuration(%d active planes).\n",
>> +                drm_dbg_kms(display->drm, "No QGV points for bw %d for =
display configuration(%d active planes).\n",
>>                              data_rate, num_active_planes);
>>                  return -EINVAL;
>>          }
>> @@ -1013,14 +1026,15 @@ static int mtl_find_qgv_points(struct drm_i915_p=
rivate *i915,
>>          return 0;
>>  }
>> =20
>> -static int icl_find_qgv_points(struct drm_i915_private *i915,
>> +static int icl_find_qgv_points(struct intel_display *display,
>>                                 unsigned int data_rate,
>>                                 unsigned int num_active_planes,
>>                                 const struct intel_bw_state *old_bw_stat=
e,
>>                                 struct intel_bw_state *new_bw_state)
>>  {
>> -        unsigned int num_psf_gv_points =3D i915->display.bw.max[0].num_=
psf_gv_points;
>> -        unsigned int num_qgv_points =3D i915->display.bw.max[0].num_qgv=
_points;
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +        unsigned int num_psf_gv_points =3D display->bw.max[0].num_psf_g=
v_points;
>> +        unsigned int num_qgv_points =3D display->bw.max[0].num_qgv_poin=
ts;
>>          u16 psf_points =3D 0;
>>          u16 qgv_points =3D 0;
>>          int i;
>> @@ -1031,22 +1045,22 @@ static int icl_find_qgv_points(struct drm_i915_p=
rivate *i915,
>>                  return ret;
>> =20
>>          for (i =3D 0; i < num_qgv_points; i++) {
>> -                unsigned int max_data_rate =3D icl_qgv_bw(i915,
>> +                unsigned int max_data_rate =3D icl_qgv_bw(display,
>>                                                          num_active_plan=
es, i);
>>                  if (max_data_rate >=3D data_rate)
>>                          qgv_points |=3D BIT(i);
>> =20
>> -                drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d requir=
ed %d\n",
>> +                drm_dbg_kms(display->drm, "QGV point %d: max bw %d requ=
ired %d\n",
>>                              i, max_data_rate, data_rate);
>>          }
>> =20
>>          for (i =3D 0; i < num_psf_gv_points; i++) {
>> -                unsigned int max_data_rate =3D adl_psf_bw(i915, i);
>> +                unsigned int max_data_rate =3D adl_psf_bw(display, i);
>> =20
>>                  if (max_data_rate >=3D data_rate)
>>                          psf_points |=3D BIT(i);
>> =20
>> -                drm_dbg_kms(&i915->drm, "PSF GV point %d: max bw %d"
>> +                drm_dbg_kms(display->drm, "PSF GV point %d: max bw %d"
>>                              " required %d\n",
>>                              i, max_data_rate, data_rate);
>>          }
>> @@ -1057,14 +1071,14 @@ static int icl_find_qgv_points(struct drm_i915_p=
rivate *i915,
>>           * reasons.
>>           */
>>          if (qgv_points =3D=3D 0) {
>> -                drm_dbg_kms(&i915->drm, "No QGV points provide sufficie=
nt memory"
>> +                drm_dbg_kms(display->drm, "No QGV points provide suffic=
ient memory"
>>                              " bandwidth %d for display configuration(%d=
 active planes).\n",
>>                              data_rate, num_active_planes);
>>                  return -EINVAL;
>>          }
>> =20
>>          if (num_psf_gv_points > 0 && psf_points =3D=3D 0) {
>> -                drm_dbg_kms(&i915->drm, "No PSF GV points provide suffi=
cient memory"
>> +                drm_dbg_kms(display->drm, "No PSF GV points provide suf=
ficient memory"
>>                              " bandwidth %d for display configuration(%d=
 active planes).\n",
>>                              data_rate, num_active_planes);
>>                  return -EINVAL;
>> @@ -1076,8 +1090,8 @@ static int icl_find_qgv_points(struct drm_i915_pri=
vate *i915,
>>           * cause.
>>           */
>>          if (!intel_can_enable_sagv(i915, new_bw_state)) {
>> -                qgv_points =3D icl_max_bw_qgv_point_mask(i915, num_acti=
ve_planes);
>> -                drm_dbg_kms(&i915->drm, "No SAGV, using single QGV poin=
t mask 0x%x\n",
>> +                qgv_points =3D icl_max_bw_qgv_point_mask(display, num_a=
ctive_planes);
>> +                drm_dbg_kms(display->drm, "No SAGV, using single QGV po=
int mask 0x%x\n",
>>                              qgv_points);
>>          }
>> =20
>> @@ -1085,7 +1099,7 @@ static int icl_find_qgv_points(struct drm_i915_pri=
vate *i915,
>>           * We store the ones which need to be masked as that is what PC=
ode
>>           * actually accepts as a parameter.
>>           */
>> -        new_bw_state->qgv_points_mask =3D icl_prepare_qgv_points_mask(i=
915,
>> +        new_bw_state->qgv_points_mask =3D icl_prepare_qgv_points_mask(d=
isplay,
>>                                                                      qgv=
_points,
>>                                                                      psf=
_points);
>>          /*
>> @@ -1101,38 +1115,38 @@ static int icl_find_qgv_points(struct drm_i915_p=
rivate *i915,
>>          return 0;
>>  }
>> =20
>> -static int intel_bw_check_qgv_points(struct drm_i915_private *i915,
>> +static int intel_bw_check_qgv_points(struct intel_display *display,
>>                                       const struct intel_bw_state *old_b=
w_state,
>>                                       struct intel_bw_state *new_bw_stat=
e)
>>  {
>> -        unsigned int data_rate =3D intel_bw_data_rate(i915, new_bw_stat=
e);
>> +        unsigned int data_rate =3D intel_bw_data_rate(display, new_bw_s=
tate);
>>          unsigned int num_active_planes =3D
>> -                        intel_bw_num_active_planes(i915, new_bw_state);
>> +                        intel_bw_num_active_planes(display, new_bw_stat=
e);
>> =20
>>          data_rate =3D DIV_ROUND_UP(data_rate, 1000);
>> =20
>> -        if (DISPLAY_VER(i915) >=3D 14)
>> -                return mtl_find_qgv_points(i915, data_rate, num_active_=
planes,
>> +        if (DISPLAY_VER(display) >=3D 14)
>> +                return mtl_find_qgv_points(display, data_rate, num_acti=
ve_planes,
>>                                             new_bw_state);
>>          else
>> -                return icl_find_qgv_points(i915, data_rate, num_active_=
planes,
>> +                return icl_find_qgv_points(display, data_rate, num_acti=
ve_planes,
>>                                             old_bw_state, new_bw_state);
>>  }
>> =20
>> -static bool intel_bw_state_changed(struct drm_i915_private *i915,
>> +static bool intel_bw_state_changed(struct intel_display *display,
>>                                     const struct intel_bw_state *old_bw_=
state,
>>                                     const struct intel_bw_state *new_bw_=
state)
>>  {
>>          enum pipe pipe;
>> =20
>> -        for_each_pipe(i915, pipe) {
>> +        for_each_pipe(display, pipe) {
>>                  const struct intel_dbuf_bw *old_crtc_bw =3D
>>                          &old_bw_state->dbuf_bw[pipe];
>>                  const struct intel_dbuf_bw *new_crtc_bw =3D
>>                          &new_bw_state->dbuf_bw[pipe];
>>                  enum dbuf_slice slice;
>> =20
>> -                for_each_dbuf_slice(i915, slice) {
>> +                for_each_dbuf_slice(display, slice) {
>>                          if (old_crtc_bw->max_bw[slice] !=3D new_crtc_bw=
->max_bw[slice] ||
>>                              old_crtc_bw->active_planes[slice] !=3D new_=
crtc_bw->active_planes[slice])
>>                                  return true;
>> @@ -1151,7 +1165,8 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw=
_state *bw_state,
>>                                     const struct skl_ddb_entry *ddb,
>>                                     unsigned int data_rate)
>>  {
>> -        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>> +        struct intel_display *display =3D to_intel_display(crtc);
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          struct intel_dbuf_bw *crtc_bw =3D &bw_state->dbuf_bw[crtc->pipe=
];
>>          unsigned int dbuf_mask =3D skl_ddb_dbuf_slice_mask(i915, ddb);
>>          enum dbuf_slice slice;
>> @@ -1160,7 +1175,7 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw=
_state *bw_state,
>>           * The arbiter can only really guarantee an
>>           * equal share of the total bw to each plane.
>>           */
>> -        for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask) {
>> +        for_each_dbuf_slice_in_mask(display, slice, dbuf_mask) {
>>                  crtc_bw->max_bw[slice] =3D max(crtc_bw->max_bw[slice], =
data_rate);
>>                  crtc_bw->active_planes[slice] |=3D BIT(plane_id);
>>          }
>> @@ -1169,8 +1184,8 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw=
_state *bw_state,
>>  static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
>>                                    const struct intel_crtc_state *crtc_s=
tate)
>>  {
>> +        struct intel_display *display =3D to_intel_display(crtc_state);
>>          struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
>> -        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>>          struct intel_dbuf_bw *crtc_bw =3D &bw_state->dbuf_bw[crtc->pipe=
];
>>          enum plane_id plane_id;
>> =20
>> @@ -1191,7 +1206,7 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_=
state *bw_state,
>>                                         &crtc_state->wm.skl.plane_ddb[pl=
ane_id],
>>                                         crtc_state->data_rate[plane_id])=
;
>> =20
>> -                if (DISPLAY_VER(i915) < 11)
>> +                if (DISPLAY_VER(display) < 11)
>>                          skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id=
,
>>                                                 &crtc_state->wm.skl.plan=
e_ddb_y[plane_id],
>>                                                 crtc_state->data_rate[pl=
ane_id]);
>> @@ -1200,13 +1215,13 @@ static void skl_crtc_calc_dbuf_bw(struct intel_b=
w_state *bw_state,
>> =20
>>  /* "Maximum Data Buffer Bandwidth" */
>>  static int
>> -intel_bw_dbuf_min_cdclk(struct drm_i915_private *i915,
>> +intel_bw_dbuf_min_cdclk(struct intel_display *display,
>>                          const struct intel_bw_state *bw_state)
>>  {
>>          unsigned int total_max_bw =3D 0;
>>          enum dbuf_slice slice;
>> =20
>> -        for_each_dbuf_slice(i915, slice) {
>> +        for_each_dbuf_slice(display, slice) {
>>                  int num_active_planes =3D 0;
>>                  unsigned int max_bw =3D 0;
>>                  enum pipe pipe;
>> @@ -1215,7 +1230,7 @@ intel_bw_dbuf_min_cdclk(struct drm_i915_private *i=
915,
>>                   * The arbiter can only really guarantee an
>>                   * equal share of the total bw to each plane.
>>                   */
>> -                for_each_pipe(i915, pipe) {
>> +                for_each_pipe(display, pipe) {
>>                          const struct intel_dbuf_bw *crtc_bw =3D &bw_sta=
te->dbuf_bw[pipe];
>> =20
>>                          max_bw =3D max(crtc_bw->max_bw[slice], max_bw);
>> @@ -1232,12 +1247,13 @@ intel_bw_dbuf_min_cdclk(struct drm_i915_private =
*i915,
>>  int intel_bw_min_cdclk(struct drm_i915_private *i915,
>>                         const struct intel_bw_state *bw_state)
>>  {
>> +        struct intel_display *display =3D &i915->display;
>>          enum pipe pipe;
>>          int min_cdclk;
>> =20
>> -        min_cdclk =3D intel_bw_dbuf_min_cdclk(i915, bw_state);
>> +        min_cdclk =3D intel_bw_dbuf_min_cdclk(display, bw_state);
>> =20
>> -        for_each_pipe(i915, pipe)
>> +        for_each_pipe(display, pipe)
>>                  min_cdclk =3D max(min_cdclk, bw_state->min_cdclk[pipe])=
;
>> =20
>>          return min_cdclk;
>> @@ -1246,6 +1262,7 @@ int intel_bw_min_cdclk(struct drm_i915_private *i9=
15,
>>  int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
>>                              bool *need_cdclk_calc)
>>  {
>> +        struct intel_display *display =3D to_intel_display(state);
>>          struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>>          struct intel_bw_state *new_bw_state =3D NULL;
>>          const struct intel_bw_state *old_bw_state =3D NULL;
>> @@ -1255,7 +1272,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_st=
ate *state,
>>          struct intel_crtc *crtc;
>>          int i;
>> =20
>> -        if (DISPLAY_VER(dev_priv) < 9)
>> +        if (DISPLAY_VER(display) < 9)
>>                  return 0;
>> =20
>>          for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
>> @@ -1274,7 +1291,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_st=
ate *state,
>>          if (!old_bw_state)
>>                  return 0;
>> =20
>> -        if (intel_bw_state_changed(dev_priv, old_bw_state, new_bw_state=
)) {
>> +        if (intel_bw_state_changed(display, old_bw_state, new_bw_state)=
) {
>>                  int ret =3D intel_atomic_lock_global_state(&new_bw_stat=
e->base);
>>                  if (ret)
>>                          return ret;
>> @@ -1309,7 +1326,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_st=
ate *state,
>>          if (new_min_cdclk <=3D cdclk_state->bw_min_cdclk)
>>                  return 0;
>> =20
>> -        drm_dbg_kms(&dev_priv->drm,
>> +        drm_dbg_kms(display->drm,
>>                      "new bandwidth min cdclk (%d kHz) > old min cdclk (=
%d kHz)\n",
>>                      new_min_cdclk, cdclk_state->bw_min_cdclk);
>>          *need_cdclk_calc =3D true;
>> @@ -1319,7 +1336,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_st=
ate *state,
>> =20
>>  static int intel_bw_check_data_rate(struct intel_atomic_state *state, b=
ool *changed)
>>  {
>> -        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>> +        struct intel_display *display =3D to_intel_display(state);
>>          const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>>          struct intel_crtc *crtc;
>>          int i;
>> @@ -1353,7 +1370,7 @@ static int intel_bw_check_data_rate(struct intel_a=
tomic_state *state, bool *chan
>> =20
>>                  *changed =3D true;
>> =20
>> -                drm_dbg_kms(&i915->drm,
>> +                drm_dbg_kms(display->drm,
>>                              "[CRTC:%d:%s] data rate %u num active plane=
s %u\n",
>>                              crtc->base.base.id, crtc->base.name,
>>                              new_bw_state->data_rate[crtc->pipe],
>> @@ -1365,14 +1382,15 @@ static int intel_bw_check_data_rate(struct intel=
_atomic_state *state, bool *chan
>> =20
>>  int intel_bw_atomic_check(struct intel_atomic_state *state)
>>  {
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>>          bool changed =3D false;
>> -        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>>          struct intel_bw_state *new_bw_state;
>>          const struct intel_bw_state *old_bw_state;
>>          int ret;
>> =20
>>          /* FIXME earlier gens need some checks too */
>> -        if (DISPLAY_VER(i915) < 11)
>> +        if (DISPLAY_VER(display) < 11)
>>                  return 0;
>> =20
>>          ret =3D intel_bw_check_data_rate(state, &changed);
>> @@ -1395,7 +1413,7 @@ int intel_bw_atomic_check(struct intel_atomic_stat=
e *state)
>>          if (!changed)
>>                  return 0;
>> =20
>> -        ret =3D intel_bw_check_qgv_points(i915, old_bw_state, new_bw_st=
ate);
>> +        ret =3D intel_bw_check_qgv_points(display, old_bw_state, new_bw=
_state);
>>          if (ret)
>>                  return ret;
>> =20
>> @@ -1407,8 +1425,8 @@ int intel_bw_atomic_check(struct intel_atomic_stat=
e *state)
>>  static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>>                                   const struct intel_crtc_state *crtc_st=
ate)
>>  {
>> +        struct intel_display *display =3D to_intel_display(crtc_state);
>>          struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
>> -        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>> =20
>>          bw_state->data_rate[crtc->pipe] =3D
>>                  intel_bw_crtc_data_rate(crtc_state);
>> @@ -1416,7 +1434,7 @@ static void intel_bw_crtc_update(struct intel_bw_s=
tate *bw_state,
>>                  intel_bw_crtc_num_active_planes(crtc_state);
>>          bw_state->force_check_qgv =3D true;
>> =20
>> -        drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes=
 %u\n",
>> +        drm_dbg_kms(display->drm, "pipe %c data rate %u num active plan=
es %u\n",
>>                      pipe_name(crtc->pipe),
>>                      bw_state->data_rate[crtc->pipe],
>>                      bw_state->num_active_planes[crtc->pipe]);
>> @@ -1499,8 +1517,8 @@ int intel_bw_init(struct drm_i915_private *i915)
>>           * Limit this only if we have SAGV. And for Display version 14 =
onwards
>>           * sagv is handled though pmdemand requests
>>           */
>> -        if (intel_has_sagv(i915) && IS_DISPLAY_VER(i915, 11, 13))
>> -                icl_force_disable_sagv(i915, state);
>> +        if (intel_has_sagv(i915) && IS_DISPLAY_VER(display, 11, 13))
>> +                icl_force_disable_sagv(display, state);
>> =20
>>          return 0;
>>  }
>>=20
>> --=20
>> 2.48.1
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
