Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E84B19D3383
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 07:23:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C5D10E392;
	Wed, 20 Nov 2024 06:23:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uc8uZCIk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3FBB10E392
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 06:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732083824; x=1763619824;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tqkk/K/6sNNfiwqE6Hn+gUtLG6ATPKwukQZ7N7PIDFQ=;
 b=Uc8uZCIkITMhzZXODROr2G9Gyc6+EzkyQ/dkE+qCOpPec5pXfQGP5TwJ
 cn8MXWTmGjPrzpoEf05bzH6dCgV+haza/lwt5wKgwmeln6Yg6tVT1B30L
 pfOjex0NnEJ05hUxSqeMW7phF80T61lID2AVEPmkfOkdv/yGVpBxQ5hSp
 d4XTXQUYB5NACF7/IYfSyP8IaMFGx5Bfcv6tbruuSOUMZI91nh++Nxanr
 F2tUfF8xaRcwRyyaraKeFva8RFNlf2xxpDL9nDvII4jJHOpz4xShX4vIY
 KHl6E328LypU02QTr79YsaPWmtN3oI27oyQLYd3P3+NtL5Mfjnb1hq1yI A==;
X-CSE-ConnectionGUID: i85ZjRBRTjOqdfXCo9U/dg==
X-CSE-MsgGUID: TOv7Ys2mQ2qDVoJZi4fXHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32372940"
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="32372940"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 22:23:44 -0800
X-CSE-ConnectionGUID: 5LRBvpDIQuO2rIQEoQWsCw==
X-CSE-MsgGUID: Ql1dqA6pQ/CzhMuCZw3+Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="90187606"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 22:23:45 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 22:23:44 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 22:23:43 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 22:23:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DEJfuSA8RjvoSbusOGvj+SBkfMHQXnYMXajLzgL2j2Pt9pJ1euWeircvsyWq9Hx8IhiosKyKMoneI2Jzip7LF+LJ3WSlGBMb5ECuZzmEMsw0kvOLcBhyVg5Zo9ip3IKtyP9QLYhb/sW3Y2Z4j028ToXblWA+2P/PXsGXCMPe/0TsSj4WkBd0bZExGVJMk/qzy+HSm1q5XXvULF4KU2AIrXoQbb+2hskjoc3laKwfHB5cLm4SyhDy36aAAjQZ7JhSLyjGV8qGA0YHeDs4MMPrqmAoAMZHzXtGfKYruzz/t5a+b6X6SUulyGvu00OWaDZWRLF2E1Z7Anc7moUwQOxiag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tqkk/K/6sNNfiwqE6Hn+gUtLG6ATPKwukQZ7N7PIDFQ=;
 b=FBjIhWecSS/AElMriqg/kGVIusk52RlAtZ/Nk/aJKBGkdTCLlb+4LPeGgGTGgBQjTLJSEXAQvobZD2nKQKd9QPiBhFzdLLlCnwIKFytw79k6ERpd/xtkyB250tclB9BdMatLXVJizoEx6B6B8ZPqJW6MHihpBYu6JfodYj1RkO6nAXH4kchkF3ulJqQbCC0M0fqqFOF3PodIqCYAUqh3vCFlq1L+p0AMtxyBzwaySt2xZ6bYuvY0dG5w1pKrd8+N/XkEYBkgJiDiDoQnf7gJF7EA7R6uDws8h7t3r0D7DAKPjBNWeacc63NcarGKEtZI+cu5gtSP3pudO+EFeEp+hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CH3PR11MB8436.namprd11.prod.outlook.com (2603:10b6:610:173::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Wed, 20 Nov
 2024 06:23:42 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8158.021; Wed, 20 Nov 2024
 06:23:42 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 3/3] drm/i915/dp: Compute as_sdp based on if vrr
 possible
Thread-Topic: [PATCH v3 3/3] drm/i915/dp: Compute as_sdp based on if vrr
 possible
Thread-Index: AQHbI6bswG6YPS8ocEKuvUYluEefNbK82pkAgAMHadA=
Date: Wed, 20 Nov 2024 06:23:41 +0000
Message-ID: <IA1PR11MB634875BFBB0B6E3BD2C98620B2212@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241021105100.2861830-4-mitulkumar.ajitkumar.golani@intel.com>
 <bb09d2f8-d1a3-4c34-8a38-f59088f5a299@intel.com>
In-Reply-To: <bb09d2f8-d1a3-4c34-8a38-f59088f5a299@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CH3PR11MB8436:EE_
x-ms-office365-filtering-correlation-id: ef4e3ed2-ed71-4308-29ce-08dd092be111
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?NXd6cTF4UC8wSHp1a2Z0cjNYZTE2aEVyVUxmS3RjcVVEVVZTcWQ4YnRpTkl1?=
 =?utf-8?B?VzRqTkhhSEdOVVJBSnBhSFEzam5jNnY3VWdoS1lXQmhiaGVCQUlteGxTaUJy?=
 =?utf-8?B?YXh2Rk9PY1ZiK2QrV1VjaTM0U0lKaHVFZEEzNXBWSGhtaHVWaWJDRlcxMkJI?=
 =?utf-8?B?TDhyN2dWdXdvU1dmWDhIL2xoTEd6WmpJOFdYWWRUS0p1U2ZSZElZaVgwZ3Uv?=
 =?utf-8?B?K2ltaHlPNEYwRjBCeDhTSlpPc2NaMTY0bUlrQU43Z0pqMEhNNlcxYVZoL2R3?=
 =?utf-8?B?ODR5cGlaN3lUOEFpazE4Z1lqd3ZsMUd0aTYrM01lQ0E3RjBtblBlajR2THd5?=
 =?utf-8?B?TlN3WGMrR3d3WWYrRTErMVA5ZmV1MUlyMWdjeDRsYk5aNnlib2NnMVlRd241?=
 =?utf-8?B?TUwwdXFocU1qZWwwTnQ4N0labzIrZzYxQ3BMalFCRFN6Z1MyUVcwUEVnR0Zw?=
 =?utf-8?B?K3g5MjEwcXZZM3B2dkRUUHQ4SlowOGQ5c2VnM2Z1L0V6TUNBcEdXZklTSHI0?=
 =?utf-8?B?YnN1Sy96emMzdGo4NXNiejFsMWp3ekVvUDMrM1hBcytoMDJjTzg2TFlaTkM2?=
 =?utf-8?B?QjJZZi9ZYWZidXIrcHllZUJGZEMzRTN5SG1pZ1VQc3VkODJtT0k1V29NNWhC?=
 =?utf-8?B?eEx2MGRkRk5UUk5QYXlEN3JmaVVpZStxbkZhQmkrNlZsZTQ5WlVWUDNoVE8z?=
 =?utf-8?B?ZThmWWRSZml2cDl1Wm5QdnBNdm5wamRxekFTU3ZLMDBRY1JYYmt1NTArL0VQ?=
 =?utf-8?B?R0NJcytDREZUcXkyeG9XbE92VVlPaXo1RFUyTTgwNmswMEZPTGRid1Vtbk5N?=
 =?utf-8?B?RXordkhCOS84Y0M5VFgwWkNvRzhnM05vYmNoSHdBWUZHejV1L0VOZjNJckN6?=
 =?utf-8?B?TTJ4S0ErZjJEUVg3Q2hUT1VWcTdaYnFpSWtjMjN5YVpnbmsrRkZieTB4elBE?=
 =?utf-8?B?cnlIN2Z3aTRiUVpHN3U4Sys0QUdYYVFRTTFHQlhxMmlYQlBDSldKZEJrWlpw?=
 =?utf-8?B?bXdneXc0WFBHSDg4NThjejZibHhTVGVKTmoxZzlmTHlveHZVT3FhVXBNYmRn?=
 =?utf-8?B?cTJaS2RQakdZZlRGMllNdTUrWUJoT2VrN2NGQ3JUd1JvcFpENnI2K0d0Q28r?=
 =?utf-8?B?SCtrWFA5TjdiN0QrTkdVemY2QXEwSHV5dEoraHk3QkMxUU1WNEJ5Tmpxd2cz?=
 =?utf-8?B?UU9lUkMvTFRzTURsRUoxRDlFbEc2N2wvc1RsYk5wVElRZU00R0tJRkZiS0Vx?=
 =?utf-8?B?S01abjR4OWFmVVNSWnVUUmJScHpCMVFTaFQ2UXJoa0IxK0d3eXVMM0ZCQ1pN?=
 =?utf-8?B?TGhUZFJQVHhVY3JGYzcydW0zQzZDRHgzOTB0YWxuK1FMcElBbVI3Q3JlSWZp?=
 =?utf-8?B?THNsbUR6YWdnaE1WNE16d3JBSlNPbmcwNWJTTWFKUFR3eTY2clhSSTIyQWFW?=
 =?utf-8?B?Z2dldG9RVVVMeXBFQ3hLNDB6VnhkZ0dSd3BabkY0QWE4aVExcGpHcDROcklR?=
 =?utf-8?B?QkozSmhXUkdtb3hnOGF5NnlLWW85SHQ2UGZRZFpodUwvNGdURGlkTFV3S3dV?=
 =?utf-8?B?ZXp3a2tpVkhORnRmbXlmVFFTazhTWmhzdkYrNjBJYmdjRUdWZG56UDZmdFVy?=
 =?utf-8?B?ZVZML3RhSEFrMzZXWkM4UllWOXZJeTBzWWZmYWk4VS91REV3d0RNMVJjeVd2?=
 =?utf-8?B?VjJiZEI0Y3JRelUxbktMUnlWc0wxbVd0S3FzbzBpNWNWKy9rb3JMTlNNRkw0?=
 =?utf-8?B?NkE2RGtpdExNbU51ckQxTkl4NzB2em56NlRjYkFMRFI2eW1MMVNvR1ZCTkNp?=
 =?utf-8?Q?1FcH6WLzB+WQu54vxnD1l9mUfVv3QbLfGKWck=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDVXRTVyOE10U3Q5VkplSzdmN1NsLzg4SExrQ2FpdTRRS29RdWora0U1bGQ1?=
 =?utf-8?B?MlNPZEk2d2x1d3lrc09BdDJhV0ZsTWRaRGpYaTAyQ21MeUp3VEtud3FsZEVm?=
 =?utf-8?B?NUp0YlBPQUcvL2pod2o2bzJ0cTNkSXhrNGtiT1lGYVpFSDY4eUkrZXlOdFZ1?=
 =?utf-8?B?QjNFOVcxc20xUzQvOGJ3UmJ3cUs4KytVUHdoSkNyWnBIUVNTMHhJZG1Ob3lh?=
 =?utf-8?B?dHQ5UFI0N0RzT0NBdXFoNDV5elhMZ2piVlRJL2VUaUZ6RVFYcXJBZjhSQWdk?=
 =?utf-8?B?THI2aVl4Mk0razJodkN5aXRWWTZPTURINCt3N3Y3TUVxeDNIWGRxRGdIQnQ5?=
 =?utf-8?B?UkJzSFNRalNJS3dmTnlGZk4xWVlvQnhPK3BNWDRPRll4b0kydk1DUk1wbkNG?=
 =?utf-8?B?VkZDNGdlMnRDZjdKSk5oanFhbVAvdmZnU3JsQWxkemwveGpQcS8wWSt1bUJI?=
 =?utf-8?B?TTJ1OEpSMlRVUU55VnFtSE9FdzIxS0pHM1lGd253VTBweElaVTVFWTBPYjNu?=
 =?utf-8?B?UmlPQXllY3gxTUxHeVh0NC9RZ1Z6UG5XMFpyQ01JWW91c1hPSHE2WDZoYkpv?=
 =?utf-8?B?MzQvMlF5aEZsOG02ZHFMelJYTmVLcnBHUTNiN1Z0RnFpY0FTVk1hdytleE5Y?=
 =?utf-8?B?dGlTS2FJaW5KV3E3RmU5alNZRmREQVN2VnlVdm54dkU3TXg3NXB3RERnRzFk?=
 =?utf-8?B?ZHlXT2ZwK1o3RFVIeEVKVE9zMUFEUVN0bndjMnVPL0pLQzBWR2JVRjFKaklu?=
 =?utf-8?B?MWFtVjArcjJtbXdsQ2pmM2ZReUcweVNWQ1ZwSWY0eEZDelowWTIvSUhUNnVP?=
 =?utf-8?B?eHZldlZnME9HQmo3ZUt4UTBIaGtlbUFwSGdzT3o3cGZFM2pueEpJUGg4Q0Va?=
 =?utf-8?B?emMxSU5ZcXMyZkRyQzZLczIwNHNUeFljZzlzOXhrQU9LclZveGQ3WEJ5aVlx?=
 =?utf-8?B?SjdKc2F5Y2RjbVM2OHZTdFVac01GU0M3V3Q1Q0tjbWlGRkE4ejhLNHlyTlJD?=
 =?utf-8?B?T1RPWmMwNk1xbThjZXk5dVcrQ2tUQnNYc3IzVmZLeGhzY2ZQVjJIODlQbUFD?=
 =?utf-8?B?TWY0Sm9hYlJhUCtxNzZkNEFJbE5YbjJ6NmE4Yk9LTFpJdGFrWENwSUhpTFlU?=
 =?utf-8?B?bDhjRE1DanR2bnlGTC9TaHFHREhVQzVxUFI0MUxoUWdkSXI2NUZRMUpMc1Iv?=
 =?utf-8?B?UkgxTjNJQnFPSEVPN0ZKMDNETTZYdDU0aHFTQy94NHlYRW52bWRSc2orY01G?=
 =?utf-8?B?eE1oYlROT3BlTWtGa3NLNjJHWGRFWm9wZVVPUXNYeTR2WXlMSTB3dThJcnUz?=
 =?utf-8?B?NW5HTlRpREFKVGVUZ0pEUmlMWlUvcXo2SERySzdkOFc3NUpCenBKWFRmS0RW?=
 =?utf-8?B?aTFtUHNHckw2em56akNLUlRKbHcyWVlKZ29PMEdOWEZTMFFia295TUYvNFVM?=
 =?utf-8?B?ZFN1a0Q3dEtNMW9MaWpEdUlMa1pvWVhtdTlsUG5uUzNWYWJzdHl4QkJvbmVh?=
 =?utf-8?B?YkJhWGtqUi8vN3lkVy9kMXFRZWQzak5DY3ZDT3pjeTFpcTZpM0FSZXloU1hD?=
 =?utf-8?B?VW93WGFqY3N4aDg5YzAvYUI0Tng4WTRkVEduN0k4S2pMT3FpSm1uQzNMamhG?=
 =?utf-8?B?R2RycVVkNzJQdXlMbURMUHVQRmNGN09EanhBeUlFWWhNVk5kTVMyK0V3QnFU?=
 =?utf-8?B?TlRhMTJuZWtyLy9GOWZqVnVRM1h2dW12NCtNdmRCUUdzNmFXUlJtK25EQUlX?=
 =?utf-8?B?OFJJZTl3NEFSSjNLNnRMR29zRkJZd1VKSHVQcll5VXFPd0k3K0JEUXdmZjUy?=
 =?utf-8?B?VGdtN1lxL1F0bnRXQytGQ3dYbEZ4RWh1LzFIeEZkT1FxaWhaQ3VhL3VodVM2?=
 =?utf-8?B?amJPR1JpV1ZqUjBtVTNMandFQ1hWOVk5OGRPTDc0SmVTQXc0dmdmSFFiK3R5?=
 =?utf-8?B?eWxNd0xzTWxveWg5RDFwRnRyLzNtSkxydkIrb0FQamJ4U3FsZzFYZmdmcmdp?=
 =?utf-8?B?c0ExbjlpUVNHeHJ5dXl1WjMrdnJWdE9FS1E2YmhwOElrV3pSZ0QyTDJLM0FM?=
 =?utf-8?B?aHFsYXdWT01nYkRtYlNPUUd6endwTXc3a2wyVGVhK0t0a3d3Si9MYnZhTGtY?=
 =?utf-8?B?WVE4RCtpUzBQWlBhc2FyZS9JV3lwalFKUC8ydHprTVBpcHNYWUFtVmVqTzky?=
 =?utf-8?Q?gTbq7kWMKSJ8pkNAVBAGfPM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef4e3ed2-ed71-4308-29ce-08dd092be111
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2024 06:23:42.0134 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yh07N2HsnqcYARNXFGyzNOCJExPIz+VPOMMKAGCY/B54bDUL6V8GDxZul3JV3Lqpk+wo6HB+H44j+QnJ5bwp4vWVElAov9JXjWp+KCiR5pDN6vl1kbPatfOe341ajVBw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8436
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmF1dGl5YWwsIEFua2l0
IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBTZW50OiAxOCBOb3ZlbWJlciAyMDI0
IDEzOjM4DQo+IFRvOiBHb2xhbmksIE1pdHVsa3VtYXIgQWppdGt1bWFyIDxtaXR1bGt1bWFyLmFq
aXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPjsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20NCj4gU3ViamVjdDogUmU6
IFtQQVRDSCB2MyAzLzNdIGRybS9pOTE1L2RwOiBDb21wdXRlIGFzX3NkcCBiYXNlZCBvbiBpZiB2
cnINCj4gcG9zc2libGUNCj4gDQo+IA0KPiBPbiAxMC8yMS8yMDI0IDQ6MjEgUE0sIE1pdHVsIEdv
bGFuaSB3cm90ZToNCj4gPiBBZGFwdGl2ZSBzeW5jIHNkcCBwYXJhbSBjb21wdXRhdGlvbiwgc3Bl
Y2lmaWNhbGx5IG1pbmltdW0gdnRvdGFsIGlzDQo+ID4gYmxvY2tpbmcgdnJyIGVuYWJsZSBhbmQg
ZGlzYWJsZSBmYXN0c2V0IHJlcXVpcmVtZW50cyBpbiBjZXJ0YWluDQo+ID4gc2NlbmFyaW8gaS5l
LiBkdXJpbmcgbnVsbCBtb2Rlc2V0LCB0aGlzIG1pbmltdW0gdnRvdGFsIHdlIGNhbg0KPiA+IGNv
bmZpZ3VyZSBkdXJpbmcgZnVsbCBtb2Rlc2V0IGFzIHdlbGwgd2hlbiBzaW5rIGlzIGhhdmluZyB2
cnIgc3VwcG9ydCwNCj4gPiB3aGVyZSBpdCBkb2Vzbid0IG5lZWQgZGVwZW5kZW5jeSBvbiB2cnIu
ZW5hYmxlIHN0YXR1cyBhbmQgY2FuIGFsc28NCj4gPiBtYXRjaCB2cnIgZW5hYmxlL2Rpc2FibGUg
ZmFzdHNldCByZXF1aXJlbWVudC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pdHVsIEdvbGFu
aSA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDQgKystLQ0KPiA+ICAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGluZGV4IGIx
ZjY4ZmZmNTI0ZC4uMGZlZmU2ZjE2MjU3IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IEBAIC0yNzY5LDcgKzI3NjksNyBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9kcF9jb21wdXRlX2FzX3NkcChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0K
PiA+ICAgCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0NCj4g
PiAgIAkJJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7DQo+ID4NCj4gPiAtCWlmICghY3J0
Y19zdGF0ZS0+dnJyLmVuYWJsZSB8fCAhaW50ZWxfZHAtPmFzX3NkcF9zdXBwb3J0ZWQpDQo+ID4g
KwlpZiAoIWludGVsX3Zycl9wb3NzaWJsZShjcnRjX3N0YXRlKSB8fCAhaW50ZWxfZHAtPmFzX3Nk
cF9zdXBwb3J0ZWQpDQo+ID4gICAJCXJldHVybjsNCj4gPg0KPiA+ICAgCWNydGNfc3RhdGUtPmlu
Zm9mcmFtZXMuZW5hYmxlIHw9DQo+ID4gaW50ZWxfaGRtaV9pbmZvZnJhbWVfZW5hYmxlKERQX1NE
UF9BREFQVElWRV9TWU5DKTsNCj4gPiBAQCAtMjc4Niw3ICsyNzg2LDcgQEAgc3RhdGljIHZvaWQg
aW50ZWxfZHBfY29tcHV0ZV9hc19zZHAoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4g
PiAgIAkJYXNfc2RwLT50YXJnZXRfcnJfZGl2aWRlciA9IHRydWU7DQo+ID4gICAJfSBlbHNlIHsN
Cj4gPiAgIAkJYXNfc2RwLT5tb2RlID0gRFBfQVNfU0RQX0FWVF9EWU5BTUlDX1ZUT1RBTDsNCj4g
PiAtCQlhc19zZHAtPnZ0b3RhbCA9IGFkanVzdGVkX21vZGUtPnZ0b3RhbDsNCj4gPiArCQlhc19z
ZHAtPnZ0b3RhbCA9IGNydGNfc3RhdGUtPnZyci52bWluICsgMTsNCj4gDQo+IFllcyB2cnIgdm1p
biBzaG91bGQgYmUgY29ycmVjdCB0aGluZyBoZXJlIGZvciBEQjEgYW5kIERCMiwgYnV0IHdlIGRv
IG5vdA0KPiBuZWVkIHRvIGFkZCAxIGhlcmUuDQo+IA0KPiBBbHNvLCB0aGlzIHNob3VsZCBiZSBh
IHNlcGFyYXRlIHBhdGNoLg0KDQpBZ3JlZWQsDQoNCkkgd2lsbCBzZXBhcmF0ZSB0aGVzZSBwYXRj
aGVzLiBUaGFua3MgZm9yIHJldmlldyBBbmtpdC4NCg0KUmVnYXJkcywNCk1pdHVsDQoNCj4gDQo+
IFJlZ2FyZHMsDQo+IA0KPiBBbmtpdA0KPiANCj4gPiAgIAkJYXNfc2RwLT50YXJnZXRfcnIgPSAw
Ow0KPiA+ICAgCX0NCj4gPiAgIH0NCg==
