Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F346ABE153
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 18:55:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C168D10E573;
	Tue, 20 May 2025 16:55:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IKV63+Sv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6C6510E575;
 Tue, 20 May 2025 16:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747760152; x=1779296152;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s46C8ANkOqu02bmnzPpEfN3GKr3hYArCg+e2GsFnZno=;
 b=IKV63+SvSU8dxil5aXPfnv/SjQohO507pHaeEa6s4c3WVF7FOft/LPst
 VA8BdAbqiE/mE5Zw7Nh8yyYZ0GEJKMObtsHrEpdJgn+MDhojT6NpCaU8O
 WJHnf/fGtOF0mZ3DE2JwrqzN4oKJ02JIITYId3xiachgUxD8YoL7dpmwC
 iAM+gEsgFZgpPJGCR0sJbjl1yecCpXXd5ZWYL084Ny1SPB2UVwHKg9mtT
 A4Chi/MvoLKjP6AwHl7CZUEC+KP8rYTQFOkKtPPtclC+DEq1WlrVxFbJI
 jpJzJJgFuxHyAn69bCgqoc9Fk5ixrmDvBXizvIwx/PktW37moauA2Ry7T g==;
X-CSE-ConnectionGUID: 2HNkc090TXqoRrNJleClXQ==
X-CSE-MsgGUID: gknZkHzEQbWFesFPsX4B8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="59936126"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="59936126"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:55:47 -0700
X-CSE-ConnectionGUID: 0xk/DaZQTIyA4D/pcEBVpw==
X-CSE-MsgGUID: +nE4FqVgTfaPoKrsanps9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="170627854"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:55:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 09:55:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 09:55:46 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 09:55:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dJ2WQ4IFBIG84hZmDC679Wv0CkhJvZYSLBzkzkocLv/epAs1lWn/LuNJBXxVlJkbH/6A4tdXgET6aJ0tamlBhfc2My3aNlgNdCjPVaTfop+vmTQskDtyLnlENEUr40o8+APilAPOyzhGblLd0875xBb5JASru65HtnAqF/XN8fkh2NFuHra0UAiIR7RvF0uIVJUVICQj3VoPWnNNdrvlI/7geNAb52ZYzI7w3pC7QZDlbDD4GckGyLyVGG75GJgpZCA/es6caashEq6L917R/Lj7Q9kFo1yjD7rd6PKnLah2gt+dUTa3mBu7AiS4v48xmBXBCsYi5kl+TMPa0KSkcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s46C8ANkOqu02bmnzPpEfN3GKr3hYArCg+e2GsFnZno=;
 b=MmJujBdqupka52UJIMgoGL8Wks2LUcUG/Ia99UqmDZJAPu3Pq5a9W309phb7cUWqbRNAQg8uZyaByB3cMsDqcRlub5/IyEX0DFkXnRc+FnZrJUeMw0R3rwS4uBe+wm6k1QIokT6dCV85kgFNzrQGzWO8YZOLJvGImLCIkjFQwvt6KtAri/wwgMzbn9hO74//YYoDSERdTqO4gpR/Dl8prQ2Dlw4Vb9g64M9y+jkXyiJ177Ww4kwOZ4Qjr1WjsV8vZGRMnjAlYVxWwwJm/ooM4hvYihZfUZ3WyPfFLUps4KlDtBbKIykdfmfYDKaDtMh7Hjd3Gj5ZjqdFY169ZLnaOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW4PR11MB7152.namprd11.prod.outlook.com (2603:10b6:303:222::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Tue, 20 May
 2025 16:55:42 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 16:55:42 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: RE: [v7 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Thread-Topic: [v7 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Thread-Index: AQHbyV8yinshWhwSnUG5OVbtNE0I9LPbvOpg
Date: Tue, 20 May 2025 16:55:42 +0000
Message-ID: <DM4PR11MB636011A4EA7A0DAF9006F17BF49FA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
 <20250520075537.4074010-5-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250520075537.4074010-5-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW4PR11MB7152:EE_
x-ms-office365-filtering-correlation-id: 3731165a-2b68-405d-538e-08dd97bf27f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?MmhjYWoyUkFEL3M2bnJqUGVQSi9xSy8rYlIxUkxFeGxhU1E4OTRYd2NUazZC?=
 =?utf-8?B?NVoyeXJPamd2dDkwN3A5RHNBUTdheUJCbjQ2bVZ2UHNQblBKYTMybFBKTUd1?=
 =?utf-8?B?K1k0dy9pRjJQbVNhUDlrb2ZwRWxyVVhYb0xaRXExVUUrM3hUQW41eW1IVDVM?=
 =?utf-8?B?MHU1RTNmZlNBYmRKaGtQS2g3UXNleGRYcmF0WlNMSmQyUEh2eThCcDN1cGZa?=
 =?utf-8?B?d2pkeFZkMXN4enZZYVFWUEJEOS83SjQzRXdkV1dkZklFV1crRjFXNG9lK29j?=
 =?utf-8?B?NmJrZU1PMXhoUUpDL0FDQmR2TU5waFo5WjRrVDdFcFp1Rm9DMVQzWGNaMmNO?=
 =?utf-8?B?ZTJyK29lclk5aXVndG14MVdJa0FITDVpU1hzZWh4ZVg3ZnQ3MWRYcEFNVkxV?=
 =?utf-8?B?TXMrQ3AxalE1MXVOUTVVN0s4UTUrRkdjeGMvSWhwVE9XRkZOY1RBcjRHYi9a?=
 =?utf-8?B?VzBNdmVzenBuRTFSZDJvME9pWXlkcjdGMi9zMGdNT08xL1A5UkNHMDErZ1g5?=
 =?utf-8?B?Nm5XdVpDYTJidEUwWnJQazcyaEpvaXVUUWxsaTRaMkVTdlZ6c2ZGVEg2UlU3?=
 =?utf-8?B?SFFvQ1NvZVE4dzZLWWFkTCtNV1dVeG56dnM4QU1SU1pva0h2b01ETjYyTXhj?=
 =?utf-8?B?aGpmRXI1c21GQTUwcXVzNVAxcURHdCtlQ1NxcDFCTDFHem5MaG9YcEpaeER5?=
 =?utf-8?B?NlhDZGdWdDdadkRmZkJpQVVjUFFRbFVRSTlvZHQ0RjdsbHozd21EWVRSM1M2?=
 =?utf-8?B?TFpaYzdyN2tiMUJnSUxsLy9xekdWWUNvRGJGcnhwVkxtTnI4ZkZGWHRRbXJ1?=
 =?utf-8?B?Q1dYbTRKS1E5NjdjK2ZEUWU0MmoxNTRuM3pKdjdvT3p6Z24raGQyTktXaVdr?=
 =?utf-8?B?WjVMVWkxVzk0TUhQWEpSN0N6NFJxODVrZ1dGK2IzeTE2OTdBTnNGVTJJUEk1?=
 =?utf-8?B?azJ2ZDIyOHpVNjUzWW12VHg1bjFheDN0RWs5dW9KbW94YjVRVTNmdDQyMVly?=
 =?utf-8?B?bzRrSlJDL2s1Y0ppSDNaTTBMRlpLaHFiek84Sk5CbUs0RVYrZ243dU53bytp?=
 =?utf-8?B?MEhMQXM1elByMHFyclp5dWJZWndPRTVoTkZQNWpneGdQVkNHRis4ODNHUjRZ?=
 =?utf-8?B?R1hSdytGTkZ6NEdWS2c3SXZ2N3pPNVdWUDlCRk9ITWI3WTBJOEVud200cG03?=
 =?utf-8?B?UGhFN1pObUxVTUNXM3VhNHJJU01XZE9panYvMWpKdFNYeUFOekxxbTU0WnZn?=
 =?utf-8?B?NDBOUVRsUko4M0pZTGU3QXNWOS92UzdDSFFSWDdIMnlLVHI0R3FZRmFDZVBK?=
 =?utf-8?B?cS8rdDF3UVlhb0czVUU5WjdyTEhzK2o0dTFJZ05pVmVDVjJIV01ONEg2RFZi?=
 =?utf-8?B?dXVoZmR2Z0lJN3ZFTWhobGllNHJNWDlDUENrM3V2REtFR0dWZHpOai91ZWRi?=
 =?utf-8?B?TXVrV3JyRWl0d3QzZllXK3hzeWkvZCtRYTNoblFmckVIcWdtTHFiTHRFdEFP?=
 =?utf-8?B?K1l5YTVNU1VJTy9oaWJ2c2dBaGt0NzU5dEhuWHRvanovVDVVNTFJNTh4ZFg2?=
 =?utf-8?B?ekRCK0JncjdtKzBuQnFGZzVOTEQwSmNmb1dvRWw0MXFkNGVjUEY2K2pOdExR?=
 =?utf-8?B?SHY5R3dGR1laYkMvM08xdTVaeVc3cUxDR01QWEVnZjdzbmpHM1NhZTBURGRZ?=
 =?utf-8?B?Y0R5Z3B0dUZQZXd3b0REcVNPNjZ2VXpndkxvcEt3L0w1bSs1WDkydnlOVFlh?=
 =?utf-8?B?L0xHTGdhZVpaamppZW93S1kwNWJ3SkRCeWVZZ2d4Y1pBbytOVkFMbWtKMEZw?=
 =?utf-8?B?UzFuSEJEYlZITHEwd1dEdlpYa3pNZUwwR3ZRT1p6NHBVVzFEZTI0ZmxQMytI?=
 =?utf-8?B?TVZNMDdpM256MTlKb2g5SVk5bjJSTkZkY3pXZUNpMTVSTmpnb2N3a0lXRVV0?=
 =?utf-8?B?bS8zSnNzRHdZUlZuQ2grL3RuNHJoQ2RveDdSeEFSTXk3UnRjRUNYdlY5ZS91?=
 =?utf-8?Q?/cGNDXSpzrs+tafwLusw5Mp/n9r4AY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmZsTG9vTFpSRXVpTmN2OFN1UTFYZFJPTUFRWnpqL0d4QzFPa21mbE02Nko3?=
 =?utf-8?B?cTFFczhMUXpvM2VkMUtMbEo2STY4bWt5SFovUm04R1ZQSzdGU1JFMXJmeEZs?=
 =?utf-8?B?dmxtbE5MNTFjekVUd1pUc1pGL2lmVnB0TittUjNZSllzMHlYVEx6aVppRGcy?=
 =?utf-8?B?cDVPOXFidmV6SXk0UUwvZTQ2R2NrWngyMGlocWdJRitnY1haaHFuSlp2MDR3?=
 =?utf-8?B?RVNtZVBkaVowdERyblh2OUpjeGR4OGJxVmZta1hkTU9wWFZTRENaZzV6MnIx?=
 =?utf-8?B?aFR3Wm10aXJGSnFxR2wxZVRKUWtsWGNOWXQyTmxNVkxyZ1h6dmNQRXZHcFB3?=
 =?utf-8?B?aGZOZGJ6dUhnMlI5cWgrR3B2MFJUalN0b09GTFFlcGlCcy9aQ2ZaSncxZTZj?=
 =?utf-8?B?OHVSdTBWRXhFT2lteUllWENMRGN1RjI3OUxveGZKY2dBVUVBbEwxZ0h1d2g3?=
 =?utf-8?B?RjcremtJUmtqdVdkNzZzWnlnOUhjV1ZsbUlCUnlWdjdPSFgvK2ExVkZUVmZm?=
 =?utf-8?B?U3FrcENTUkdjWGpWbDlBVmpxRzRFMjZYM05UWDZZUG1zNmVZSHFsYXBnbURZ?=
 =?utf-8?B?TVFHWmdZakhZUzNuZ2NCYUJwTWpPaFhuaFI0Wmo4blY1UmVkSmY0NldNN2tn?=
 =?utf-8?B?aGd0akJSbUIrN2F0c24xUTUrRlpqK3lIUkZNOFQrVjFtemJHcjZ3a2dxRzEx?=
 =?utf-8?B?QjhrckRuMG5VUDN2K3lXRkxHREJRMEVDd3ZEcE1ZRTh3a1dCT1BuVVVXcFp5?=
 =?utf-8?B?cVBzeWpmc2VmTzlpaEhQdWZzVVpRSEF1cS9xd3pOYVNqU0NTTjB3eEhTZ3li?=
 =?utf-8?B?c2JLZjI4bTEzMHZibC8xc01jTzlrK0pTeGR5YU5LMllVZU9ZcTJxVjB2TGlF?=
 =?utf-8?B?WVlMZWtaLzB5cG8xelg1NFFPY2xsM1h4Z3hqT1B3MHBkdWs5VnRib3BnWC8z?=
 =?utf-8?B?eXdlKzlvQ2plc2s2NkY0a29xekpTMDFiaHV1NFQ3b0tDalhPb0NnUVBiNHMx?=
 =?utf-8?B?eTRMTXpadnFRK0JmSnRKdVVYbWlIbm4xNmJRTGxGVEhMdzJUUHdicTNCd1E0?=
 =?utf-8?B?b0w4SXo3MXl0RE8rMk1kWHJnbHNINmx3T0hFNlgzZTRNend3VnZkWnAxekNB?=
 =?utf-8?B?UGRUZ2F6a3crOGtWL2dGMlRjMDZ1aGM4WUl5THVZa0c4a21FUzlZQi9teC94?=
 =?utf-8?B?T2JVTlltbCtDWmpmdm9MdjFUQlNYempmUnVWWk1yMjg0VE9JOVdtVVl6Mis4?=
 =?utf-8?B?eGp3NHFHMEJFVkJSVGpsODJCTTRhYVlVNnczZnpYdFNNZm5jK3p1djdzeFJP?=
 =?utf-8?B?bkhzNDlYclZwRmZEOGcvTGtQQk80blU3b0hSeXFLSHNzYnlRb25qU05FZmR3?=
 =?utf-8?B?T29xdUZrcnZSd1NTWW0vTlQ0Z0VPL25LZXlkUnlDUitaQlMvNHM5d3JPckJL?=
 =?utf-8?B?ZFpuS1ZzbDZMc2JvdUJ3RXB2b0dvV1Jyb2J4dmhrNS9lZ05TNUh4aitEd1p0?=
 =?utf-8?B?aXNyQldaUHN6Y00xZEJlMUVzVmU1MmpIYkhlRTNZUGlkamRFM3lYMWVLcld5?=
 =?utf-8?B?ZG53TVFjQ0dJR0g5YS9peUtMNDltUXNMRFYzdnI5Q0VKU0VmT2I3MW5HQWh3?=
 =?utf-8?B?dVNmREJ1NFhRcFlybEIrSzdmNWs1NHFLUm4xeGFzTlBPVmZyc2RPdFp0U1BT?=
 =?utf-8?B?QVI3Q0c3anJZNXhWeVhXdndIdG8wWEFncWZ4N0hERjFpbnBibVVwN2NIbkda?=
 =?utf-8?B?Q3JKUTYxaXJnam5Pc0pnQ3JCS1JxUzRNUFlkaThCdzg5Y0tka2FHdUhyZitB?=
 =?utf-8?B?WGNlVVJodjZtamFNVUhUV2dCYS90WlJISWYvbG0wT0FHalFaZ0xiczcvV3la?=
 =?utf-8?B?STFYRndJZHZUbjVuUHIvWU91U0RTZkxGSTJaSjRqelVzaWsyNG5HaUwvSExx?=
 =?utf-8?B?V1NPVXJnaXAxSkZzY1QrQnNsNG9OcnEvdlVrNmFmWkM5QSs1VDRIZDF0dDRJ?=
 =?utf-8?B?cHBRZE5OUVFsTnJQN1NvamxQUDZFcExBVnI0eXZ3K2Q3YUJPYTJFZ2g2YU9F?=
 =?utf-8?B?RDhrKzRRbU9uVWxhQWdzenM2TUI5TmhtczRwQkJJUGxHNWdYakw0UnJsZWJ1?=
 =?utf-8?Q?Klf27WgB41WAo3dP8XzyIDKh1?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3731165a-2b68-405d-538e-08dd97bf27f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2025 16:55:42.1322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 98svsfFmV5T65h2dNvxuV9PGVtKGQsBp/CIt5WUxI6zazgQmXUFB1/f4ZpFcDu4piPg4UWWmFkg3N0DpaNrHWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7152
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2Rh
eSwgTWF5IDIwLCAyMDI1IDE6MjYgUE0NCj4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogdmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb207IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsN
Cj4gTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgQm9yYWgsIENoYWl0
YW55YSBLdW1hcg0KPiA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW3Y3IDA0LzExXSBkcm0vaTkxNS9kc2I6IEltcGxlbWVudCBpbnRlbF9kc2JfZ29zdWIoKQ0K
PiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gDQo+IEFkZCBzdXBwb3J0IGZvciB0aGUgbmV3IEdPU1VCIERTQiBpbnN0cnVjdGlvbiAo
YXZhaWxhYmxlIG9uIHB0bCspLCB3aGljaA0KPiBpbnN0cnVjdHMgdGhlIERTQiB0byBqdW1wIHRv
IGEgZGlmZmVyZW50IGJ1ZmZlciwgZXhlY3V0aWUgdGhlIGNvbW1hbmRzIHRoZXJlLCBhbmQNCj4g
dGhlbiByZXR1cm4gZXhlY3V0aW9uIHRvIHRoZSBuZXh0IGluc3RydWN0aW9uIGluIHRoZSBvcmln
aW5hbCBidWZmZXIuDQoNCk5pdDogVHlwbyBpbiBleGVjdXRlDQoNCj4gVGhlcmUgYXJlIGEgZmV3
IGFsaWdubWVudCByZWxhdGVkIHdvcmthcm91bmRzIHRoYXQgbmVlZCB0byBiZSBkZWFsdCB3aXRo
IHdoZW4NCj4gZW1pdHRpbmcgR09TVUIgaW5zdHJ1Y3Rpb24uDQo+IA0KPiB2MjogUmlnaHQgc2hp
ZnQgaGVhZCBhbmQgdGFpbCBwb2ludGVyIHBhc3NlZCB0byBnb3N1YiBjb21tYW5kIChjaGFpdGFu
eWEpDQo+IHYzOiBBZGQgbWFjcm8gZm9yIHJpZ2h0IHNoaWZ0aW5nIGhlYWQvdGFpbCBwb2ludGVy
cyAoQW5pbWVzaCkNCg0KQ2hhbmdlcyBMb29rIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1h
IFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBDaGFpdGFueWEgS3VtYXIgQm9yYWggPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8
IDU3ICsrKysrKysrKysrKysrKysrKysrKysrKw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5oIHwgIDIgKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA1OSBpbnNlcnRpb25z
KCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4g
aW5kZXggOWIyZGU0ZTdlNjgxLi5kYWQ0ODNkNGIxY2YgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtOTMsNiArOTMsMTAgQEAgc3RydWN0IGlu
dGVsX2RzYiB7DQo+ICAvKiBzZWUgRFNCX1JFR19WQUxVRV9NQVNLICovDQo+ICAjZGVmaW5lIERT
Ql9PUENPREVfUE9MTAkJCTB4QQ0KPiAgLyogc2VlIERTQl9SRUdfVkFMVUVfTUFTSyAqLw0KPiAr
I2RlZmluZSBEU0JfT1BDT0RFX0dPU1VCCQkweEMgLyogcHRsKyAqLw0KPiArI2RlZmluZSAgIERT
Ql9HT1NVQl9IRUFEX1NISUZUCQkyNg0KPiArI2RlZmluZSAgIERTQl9HT1NVQl9UQUlMX1NISUZU
CQkwDQo+ICsjZGVmaW5lICAgRFNCX0dPU1VCX0NPTlZFUlRfQUREUih4KQkoKHgpID4+IDYpDQo+
IA0KPiAgc3RhdGljIGJvb2wgcHJlX2NvbW1pdF9pc192cnJfYWN0aXZlKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCSAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMp
DQo+IEBAIC01MzMsNiArNTM3LDU5IEBAIHN0YXRpYyB2b2lkIGludGVsX2RzYl9hbGlnbl90YWls
KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikNCj4gIAlkc2ItPmZyZWVfcG9zID0gYWxpZ25lZF90YWls
IC8gNDsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgdm9pZCBpbnRlbF9kc2JfZ29zdWJfYWxpZ24oc3Ry
dWN0IGludGVsX2RzYiAqZHNiKSB7DQo+ICsJdTMyIGFsaWduZWRfdGFpbCwgdGFpbDsNCj4gKw0K
PiArCWludGVsX2RzYl9pbnNfYWxpZ24oZHNiKTsNCj4gKw0KPiArCXRhaWwgPSBkc2ItPmZyZWVf
cG9zICogNDsNCj4gKwlhbGlnbmVkX3RhaWwgPSBBTElHTih0YWlsLCBDQUNIRUxJTkVfQllURVMp
Ow0KPiArDQo+ICsJLyoNCj4gKwkgKiAiVGhlIEdPU1VCIGluc3RydWN0aW9uIGNhbm5vdCBiZSBw
bGFjZWQgaW4NCj4gKwkgKiAgY2FjaGVsaW5lIFFXIHNsb3QgNiBvciA3IChudW1iZXJlZCAwLTcp
Ig0KPiArCSAqLw0KPiArCWlmIChhbGlnbmVkX3RhaWwgLSB0YWlsIDw9IDIgKiA4KQ0KPiArCQlp
bnRlbF9kc2JfYnVmZmVyX21lbXNldCgmZHNiLT5kc2JfYnVmLCBkc2ItPmZyZWVfcG9zLCAwLA0K
PiArCQkJCQlhbGlnbmVkX3RhaWwgLSB0YWlsKTsNCj4gKw0KPiArCWRzYi0+ZnJlZV9wb3MgPSBh
bGlnbmVkX3RhaWwgLyA0Ow0KPiArfQ0KPiArDQo+ICt2b2lkIGludGVsX2RzYl9nb3N1YihzdHJ1
Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICsJCSAgICAgc3RydWN0IGludGVsX2RzYiAqc3ViX2RzYikN
Cj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0YzsNCj4gKwlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Yy0+YmFzZS5k
ZXYpOw0KPiArCXVuc2lnbmVkIGludCBoZWFkLCB0YWlsOw0KPiArCXU2NCBoZWFkX3RhaWw7DQo+
ICsNCj4gKwlpZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBkc2ItPmlkICE9IHN1Yl9kc2It
PmlkKSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJaWYgKCFhc3NlcnRfZHNiX3RhaWxfaXNfYWxp
Z25lZChzdWJfZHNiKSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJaW50ZWxfZHNiX2dvc3ViX2Fs
aWduKGRzYik7DQo+ICsNCj4gKwloZWFkID0gaW50ZWxfZHNiX2hlYWQoc3ViX2RzYik7DQo+ICsJ
dGFpbCA9IGludGVsX2RzYl90YWlsKHN1Yl9kc2IpOw0KPiArDQo+ICsJaGVhZF90YWlsID0gKCh1
NjQpKERTQl9HT1NVQl9DT05WRVJUX0FERFIoaGVhZCkpIDw8DQo+IERTQl9HT1NVQl9IRUFEX1NI
SUZUKSB8DQo+ICsJCSgodTY0KShEU0JfR09TVUJfQ09OVkVSVF9BRERSKHRhaWwpKSA8PA0KPiBE
U0JfR09TVUJfVEFJTF9TSElGVCk7DQo+ICsNCj4gKwlpbnRlbF9kc2JfZW1pdChkc2IsIGxvd2Vy
XzMyX2JpdHMoaGVhZF90YWlsKSwNCj4gKwkJICAgICAgIChEU0JfT1BDT0RFX0dPU1VCIDw8IERT
Ql9PUENPREVfU0hJRlQpIHwNCj4gKwkJICAgICAgIHVwcGVyXzMyX2JpdHMoaGVhZF90YWlsKSk7
DQo+ICsNCj4gKwkvKg0KPiArCSAqICJOT1RFOiB0aGUgaW5zdHJ1Y3Rpb25zIHdpdGhpbiB0aGUg
Y2FjaGVsaW5lDQo+ICsJICogIEZPTExPV0lORyB0aGUgR09TVUIgaW5zdHJ1Y3Rpb24gbXVzdCBi
ZSBOT1BzLiINCj4gKwkgKi8NCj4gKwlpbnRlbF9kc2JfYWxpZ25fdGFpbChkc2IpOw0KPiArfQ0K
PiArDQo+ICB2b2lkIGludGVsX2RzYl9maW5pc2goc3RydWN0IGludGVsX2RzYiAqZHNiKSAgew0K
PiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gZHNiLT5jcnRjOw0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gaW5kZXggZTg0M2M1MmJmOTdjLi44YjJj
ZjBhN2I3ZTYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
aA0KPiBAQCAtNTcsNiArNTcsOCBAQCB2b2lkIGludGVsX2RzYl92YmxhbmtfZXZhZGUoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsICB2b2lkIGludGVsX2RzYl9wb2xsKHN0cnVj
dCBpbnRlbF9kc2IgKmRzYiwNCj4gIAkJICAgIGk5MTVfcmVnX3QgcmVnLCB1MzIgbWFzaywgdTMy
IHZhbCwNCj4gIAkJICAgIGludCB3YWl0X3VzLCBpbnQgY291bnQpOw0KPiArdm9pZCBpbnRlbF9k
c2JfZ29zdWIoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiArCQkgICAgIHN0cnVjdCBpbnRlbF9k
c2IgKnN1Yl9kc2IpOw0KPiAgdm9pZCBpbnRlbF9kc2JfY2hhaW4oc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ICAJCSAgICAgc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiAgCQkg
ICAgIHN0cnVjdCBpbnRlbF9kc2IgKmNoYWluZWRfZHNiLA0KPiAtLQ0KPiAyLjI1LjENCg0K
