Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A79B1D451
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 10:36:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 403F710E7FB;
	Thu,  7 Aug 2025 08:36:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RyJyeXxe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A21510E7F9;
 Thu,  7 Aug 2025 08:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754555771; x=1786091771;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qTp7DKa98Ns3jOi5aCq5H0kN4mbDCBc6Ucqvv5dxXfM=;
 b=RyJyeXxeWjwxoV8C+YIBAS7OZ2SEr+tjURryyn5F5U1LrOcUqqTpPbkf
 /ZTJI+APoxbQjW8RxcEEVut9zcoOYhtNCLnbpdfeAf6h96C8H0LldoSzD
 0vBsfmCcaq/LLphNili6pShQghYGUU2cp5iRHqTMEFpON2xeVW22gGa0n
 /b0EQrmCbBpRo5fFKp2iYODcVMangRIdmMH3XmFkLbIJP5efnUwnIX0Lz
 Y6IV7iSyEtIL8r8qKYj1hHkolenCTFf/+6mg8K04nfTHyVyb2XhBbtCwq
 /J7vd52vs3Q+Jyt7zd0qdkP78xiysKY+s2IqdFOaksG9cT72oqjAzfkOU A==;
X-CSE-ConnectionGUID: iS/BLU/PScuwpzw9v/AGhw==
X-CSE-MsgGUID: RKNAW6+pRYiDnRqJ0TJjRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="55919856"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="55919856"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 01:36:11 -0700
X-CSE-ConnectionGUID: lhu38QY3TpGOvIkANuKECA==
X-CSE-MsgGUID: 8WkyyNUaQL2EmfVrTKVwqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="165384615"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 01:36:11 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 01:36:10 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 01:36:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.46)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 01:36:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZLTdJ6Covm3ic6aWTNxEI/hx838TJnyFsO7eBo0LQBB+6gqfyogGm2KJMUj1RxIjD7ATQctj3AwitjO0XsRBE5ooFdxvxiVwjHBGhZDhGgZQ70b8HO2ASRjl1n2w6zCpBHdJplgBtDJB7B0YB/1quc7CCTiakgFTEDWJDWb0EPxA+A8ZbpuOBvI4q/pL6yGnHXLC+lG0kHOpBqTABBSetnsB3VQiIW9o8/awHINyzTTT0zQTdOu66e8PHsbJ3REHMwmplOlC/IGl5ojvy99n14YTofpmAM9Vn234O7YE2cM2OGJVxe10gm3zLHrCJ7YUmXW358WAzLed+UOm9rr+ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qTp7DKa98Ns3jOi5aCq5H0kN4mbDCBc6Ucqvv5dxXfM=;
 b=pfbx2+kiBlzOBF7Ajf6Mwu+p5EgxjQw4vRNd//pwJDgS8aYM5L0OiBDP5WwQmT7S62/puR11FB13z8YJgxMPEvkpmIEEO+xK13hoYzb0eVUKntMtrwFQCmy4c7mccTef8xHZYYqFAaQ15Bln1MSOroUtm2Fr/Gh+XZD42swPdUkQgtyKYNurxevsjGNtFOPsEM6QA+Mm+cj9dXAJVnYR4+priQQbhxYcRDDdavvdEm7lJnKFjEV8XR10aMsxObgHVqASvzbKUfuxXvHmZnpU6RtVZA2zUHTuCyMy5FzQqjQVbT71Xb238cCEnQWM6AY41WiW1JAzC+DHztY4FW2AOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by MW3PR11MB4619.namprd11.prod.outlook.com
 (2603:10b6:303:5b::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Thu, 7 Aug
 2025 08:36:00 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8%8]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 08:36:00 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>, "Lin, Charlton"
 <charlton.lin@intel.com>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>
Subject: RE: [PATCH v2 03/19] drm/i915/lnl+/tc: Fix max lane count HW readout
Thread-Topic: [PATCH v2 03/19] drm/i915/lnl+/tc: Fix max lane count HW readout
Thread-Index: AQHcBexJWQ3g370hBEWnYbU7kR8HzrRW4KBA
Date: Thu, 7 Aug 2025 08:36:00 +0000
Message-ID: <DS4PPF69154114F34AB5559254B02B32D23EF2CA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-4-imre.deak@intel.com>
 <20250805093349.679158-2-imre.deak@intel.com>
In-Reply-To: <20250805093349.679158-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|MW3PR11MB4619:EE_
x-ms-office365-filtering-correlation-id: f12720ea-4b47-4c16-f1c9-08ddd58d701e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?QThBREhYTUQ4eW9jNStsMk13UHVHekdQNGxXa0sxSzYrek4yZStwSUQ0ZU5Y?=
 =?utf-8?B?RGJzU0ppNTNCUThGYVYzN0ZRdTdHbmlmZFRCNG0zYW9obXlxTndKTndQUW5m?=
 =?utf-8?B?R0FQZnp1OGR6cTBvbW1KcmNIWkJOVUt4cEVCcHpGVWk4a08xOTF1azh6bjhy?=
 =?utf-8?B?REZFd2FiQkZYZHdqWHUyKzVXVlArZWlyNDV0M3pmaUw2MCtNVXBva2NhWVJT?=
 =?utf-8?B?Ly84dUhUMzM3UFFnKzNvb1VHSFI4aEtQdVRBamJaRDU1Tk1GQWtJSDNjY25J?=
 =?utf-8?B?M1hKTEV4SUJLRjhOcE5razFqTlowU0pNd0h1d3pDMml2dHRiVzdFcHJsVE92?=
 =?utf-8?B?R3UweStidUhHaVQ4NlhaNVFHUGhYYjN3TnRJbEFTK29rYVc3WnF0TDJvdHBa?=
 =?utf-8?B?RUZzSlcyMGJxclZ5STAzZFFDSXBqYlJ1QXhFQWhnczlsSEtkNlJFcFhMN3BP?=
 =?utf-8?B?RlRnR043RzdQVWo1SjZLZFFGOHFOdGdzTVRzU05UYXB0a3Zhc1dtNCtaL0F3?=
 =?utf-8?B?VzJYK3pKcjlaTjlQajBuYWJXcnN1d3NQcm1uZU9LNndodk04Ym5ITzRBM3V0?=
 =?utf-8?B?dHQ4T0RwWnMyK0xZNTV2M2tDQ0dHaktDT2ROc2xUcVJ5MUFJV3EvN3VLdXF6?=
 =?utf-8?B?bEEyMWtPL2JYYytJSlRhamtVTENCVzB0UGoxZU41RXM1SHJxNHd6UFpqV1Zy?=
 =?utf-8?B?Qk1sLzY1Qngvd3JkYTM3dzY3SVBkVU9SbmV3ZncvY255QlhnRkRaZGYwUkdD?=
 =?utf-8?B?Vjk4ZWEzanBuREthdlBvdVlXMWpxQkNic0JCSWdLb3draVM4QnRWUGNDZmhj?=
 =?utf-8?B?VGpWdEN2WU9VaEg0RElXcytGSDBjcGhDU1J5OXF2WjZReEtPSDN4UkJ5MFds?=
 =?utf-8?B?VXdWZGNyK3FFb3RoOHBpaFdVZnZuVWVWcE1MVGRYSTFOQzZnUDhFaDFlQjlK?=
 =?utf-8?B?ditwT3pKQURya2VUeTZPVkRYVlZWQ0Iwc1R4cW84SWJGVFM4Ni9sWko5aXJY?=
 =?utf-8?B?OWVUdTUrWTdoZEpyNmxOVUxnVjlTVmFNcUorM2F2cTBKbUorVnNaWkdYWlBH?=
 =?utf-8?B?TUpudkRLbzJ4K1dXaXR1bTJyelVuT2plSEJoOUY4Um90RU84LzNzaGZCcWxQ?=
 =?utf-8?B?L0gxandKdndYYXliRFRabzNWUHV3UEFvNkN4Qnl5K016c29qMjh5WlZGL0VV?=
 =?utf-8?B?S1Y1dFZyemlzbExQWndWbW5JZ3AreFFYeG1VaUt4TEdTNW1xa2xXWjhyWW1t?=
 =?utf-8?B?REYzUWJVOTdHVGFFejN1R0VPayttTHhRZnVTV1czNGdqMS80SnNvVXB2TytR?=
 =?utf-8?B?UGE5dzVyOWxFN0VlTURCWmxwcndIYW9VYlB6aWJoWVZPMCthMmpMKzlvcXJa?=
 =?utf-8?B?cHgvT3RodHZhQmMxTjU2VVFDYTNDREswTU9qallTQkNtNXpOb2J1VHZwbmZC?=
 =?utf-8?B?L0ZlakFhaDdNalo0QjRXWk81Z0FXZ0w2UVovR1FzN09OaURWVTFKakV2WVdE?=
 =?utf-8?B?aW5BK3BGem1FNG5veGM0cVZoTkRoMnE0bU1OT1Q0cWtsT0luS1Bxd2FpOXFp?=
 =?utf-8?B?dmlrUElLZ015S3gwYjZQSDJJaldqYUNzS2p6UHBlMWhNSkJZYVlZdG51SGpq?=
 =?utf-8?B?d2dPN0ljeUxheW83UHhuU3ZrRE5yZHBuMEFrQzA0N2c3Mk1FdzdpYm5Wa1hU?=
 =?utf-8?B?bFN4OTEvYTZLOVZTRTBXQnRJZVcrVWZtWW9neGM1Z1JaSnlrajhNbi8xbGUx?=
 =?utf-8?B?MXFvZ3dHNWNHOWV0Mmt5U1QyK2RyZysxVjJxT3RRQkFCTFpoUzJjajhsZGYy?=
 =?utf-8?B?YlQrQUFvY3RleG12bWZNaTlCR3gwcVdibXZxK3JhS0xoZWhDTlVPOUxQdnRD?=
 =?utf-8?B?QzA5RVB1NTJvcXJ6L0ZjZlk3djNQVTBTMXpwUHpLTVF2bHlZYzlEcUpWV3Ru?=
 =?utf-8?B?VUJ1WlFjcnJ3dVVwZncwU2h5aVFBL01UdTR1aUJ2K0dnNVRDRmNEVmUvcUlI?=
 =?utf-8?Q?epp3TxETXCqWrnDIQEZfXGXDv31dpA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SFNhaEVpc2o4MUNZNTI4N3JPSCtMelkyZnVWSWgwV2JaNHRLd3piT0VZYTQr?=
 =?utf-8?B?dm1rZDU5MTdFTGlZU0pTajQ3YXppN3R3alBMOEdGdXFVakc1clQ2QnE3aWFP?=
 =?utf-8?B?SENuTW5nK1pETUFzSW1iYmNxU0E2eW1vaGJLZjlrSTBWQjBoeE1qOE1nQUhE?=
 =?utf-8?B?RDhuNm41NWduN0I0eUN3OEx0dk1YamZvcGh6ZUZ1eE5XeU5WMkZham1ORFA3?=
 =?utf-8?B?ZUZhL3NqTkxwd1NaSmVWaTg5NFZZdlpsV1RyVGgzTXBYRnVTeHVHbG0zWmhC?=
 =?utf-8?B?MXJ2QjFlNlhjVU4zSnp1OHFTOWswRGZYdTZFS0hRREZaSjJURTdRY1BSdzZl?=
 =?utf-8?B?QXZaYjlMaHRtdTZ0VXBCNXUzNTdGNWxocU9md3JudWdnVkllbEVldlZmWXBV?=
 =?utf-8?B?QW5RejlBNWhQV01OOTJLZnNvZHIwdzBmNmlTMUxnR1ZueVBCOWRDckFveXkx?=
 =?utf-8?B?alFxT3pERzZWY2I0M0NNbzZlSSs5Wm9zMlgxbkZENnFDMmhkV0tzSmtRYkJM?=
 =?utf-8?B?VTFCbmhzMWZDUFQ3ZU05ejgvQU93bTAzK1FjU0hJQ0o4bU9DMnYxcEc0V0JK?=
 =?utf-8?B?Q0x2c1RWM3pKSUEzWDdqMkNKSThvSEt5emtGRk0zUlNlWjFXRVRxQWxDNmIz?=
 =?utf-8?B?cVpCeEZlTTNJdHdNNDVRZHNuNkJqVE5WRkcwZzlvWndwZ0hFSU0ycCtydHFv?=
 =?utf-8?B?NGVjK1U2blh1ajJldjhkTHhMZDVwS1oyek9MY211cENsbzVGM0lRcmpxRHRv?=
 =?utf-8?B?emhPNDhrc3E4UE9CSjlCZWsvbEl4VjBwdC8yVi9YUnc2NVA2dFZMQzBTYXVl?=
 =?utf-8?B?bTV3Nk9NTnlrN0dIZyt0UTlRdEM5VkZvN2t5dExqdktBYXFHTlNJbWxVTDhO?=
 =?utf-8?B?T1pVdElicjRKRVQ1YUJEdnNKSUpyaHFzTGxha1pjSC90NVJKU1FicEFYQTVv?=
 =?utf-8?B?d0FROFZxVExTUmd1c25RWFNwQmd2SlRlS21DbG9wdldUNm9veWZIbit5aXNp?=
 =?utf-8?B?Q080dldScmVUSU5FTlNlU3hkNXRLd29JV1FhZUVoNnRtMnJkK3lCemxLYW5k?=
 =?utf-8?B?QzVFUnBkeitNaVJ6WWVhd1BYL2ZTd2p3dXh0ck40Q1dnc25FaW9nejg3dkJX?=
 =?utf-8?B?cHNySzZSQjg4dmJrWk4waG9UWk5SZFVnRHF0U2IvQU00TGxRVUxYR05MNGsw?=
 =?utf-8?B?bHVGbmN6b3lmemNxZG44Y05GT2VTTnBZM2R1RFVZMUU5L3NQQ2ZNQ1M1ZjFn?=
 =?utf-8?B?cXVGeFVFTEFEdGZlZjVqMTlKL1VNUk5TTmVPQUFKbktjOVI4ZnJIQk9Lckll?=
 =?utf-8?B?dnUwbmpvazNsV1NxNVJHYmNpYXZGUnd6Wm01N2pMSXBKelNNdGhGV05jcVlX?=
 =?utf-8?B?SXlQS2xYK0V3cXlJaUt1WmpSM0lqdHl2dWpCS1hVeWxRTm9aeUcrdHliVWxH?=
 =?utf-8?B?allCaE9mOVF5Snd0bWRES3IzQ1hNbW1QR0JFc1RaS2V0b2lCWGlUOTl2NHIr?=
 =?utf-8?B?eEVtR2tFOHZIOG00bkhzUWpCRW1KcXFkSjgzTmhpeDU0ZG9KdHNmOG9rTm9l?=
 =?utf-8?B?VjRyNURrR2NieUEwdzZ4YU9ZSVhvTDJSS0FQUXpLeGtSQzBDU1FQeDRNUkR1?=
 =?utf-8?B?TEhHSkNvdkU0K0ZUV2htVGhSclg5VFRmdGRRM2UwMnBXRHMxdDFaMzFQL0p5?=
 =?utf-8?B?azVTMTFkcGlPMXhBRVB1SThPYUdLeDJvWE9xNVFYOEo3ZjdZQVBBYStjS3dR?=
 =?utf-8?B?cUZiZXFKT1J5ODlSVzdMV09vWGFMcTZFMENNcmNRdUpxd3dETXdXelhtYzFI?=
 =?utf-8?B?bXhFVDJselNhUW9FZ2ExcWh2Uk91N0tndmc1cDMraEkzeC9RVFhTTTM0UGtH?=
 =?utf-8?B?WGdUTmxMdjl3YVZtSGpRd2IxV0tMVm9DK2JSSzZ3Vy8wY1Jra2RnKzVkS2ti?=
 =?utf-8?B?d2NCZTZRSHcvL2U1c0tKZGFXMnlXTFRLc3hzaVBWcWZGUjlVQlRlc2pSU3R1?=
 =?utf-8?B?SlllK2hTWG0rOThCN21zemxTQTZsakpoOWYzbGpWOWpEY1VzcVhxeEJIbFN2?=
 =?utf-8?B?OTZ3UWtDNUdWbXcxMkZwZUswV3d4QzBVbUJVMHYwVFBxeWJXNXpUTWdUK21s?=
 =?utf-8?Q?ydxN2nDsx1gv1JcLBUIBCxAcZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f12720ea-4b47-4c16-f1c9-08ddd58d701e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 08:36:00.4164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p8vMdE5//xy8LFZDmejwqZRefGfd9a3aSHsQrB8jf0zCLfCo8cFZvLUeMoYlt3JPpj0Uy1S3tmQD/ag/F/+tUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4619
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCA1IEF1Z3VzdCAyMDI1IDEyLjM0DQo+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc7IExpbiwgQ2hhcmx0b24gPGNoYXJsdG9uLmxpbkBpbnRl
bC5jb20+OyBBbG1haGFsbGF3eSwgS2hhbGVkIDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMDMvMTldIGRybS9pOTE1L2xubCsvdGM6IEZpeCBtYXgg
bGFuZSBjb3VudCBIVyByZWFkb3V0DQo+IA0KPiBPbiBMTkwrIGZvciBhIGRpc2Nvbm5lY3RlZCBz
aW5rIHRoZSBwaW4gYXNzaWdubWVudCB2YWx1ZSBnZXRzIGNsZWFyZWQgYnkgdGhlIEhXL0ZXIGFz
IHNvb24gYXMgdGhlIHNpbmsgZ2V0cyBkaXNjb25uZWN0ZWQsIGV2ZW4NCj4gaWYgdGhlIFBIWSBv
d25lcnNoaXAgZ290IGFjcXVpcmVkIGFscmVhZHkgYnkgdGhlIEJJT1MvZHJpdmVyIChhbmQgaGVu
Y2UgdGhlIFBIWSBpdHNlbGYgaXMgc3RpbGwgY29ubmVjdGVkIGFuZCB1c2VkIGJ5IHRoZSBkaXNw
bGF5KS4NCj4gRHVyaW5nIEhXIHJlYWRvdXQgdGhpcyBjYW4gcmVzdWx0IGluIGRldGVjdGluZyB0
aGUgUEhZJ3MgbWF4IGxhbmUgY291bnQgYXMgMCAtIG1hdGNoaW5nIHRoZSBhYm92ZSBjbGVhcmVk
IGFrYSBOT05FIHBpbg0KPiBhc3NpZ25tZW50IEhXIHN0YXRlLiBGb3IgYSBjb25uZWN0ZWQgUEhZ
IHRoZSBkcml2ZXIgaW4gZ2VuZXJhbCAob3V0c2lkZSBvZiBpbnRlbF90Yy5jKSBleHBlY3RzIHRo
ZSBtYXggbGFuZSBjb3VudCB2YWx1ZSB0byBiZQ0KPiB2YWxpZCBmb3IgdGhlIHZpZGVvIG1vZGUg
ZW5hYmxlZCBvbiB0aGUgY29ycmVzcG9uZGluZyBvdXRwdXQgKDEsIDIgb3IgNCkuIEVuc3VyZSB0
aGlzIGJ5IHNldHRpbmcgdGhlIG1heCBsYW5lIGNvdW50IHRvIDQgaW4gdGhpcyBjYXNlLg0KPiBO
b3RlLCB0aGF0IGl0IGRvZXNuJ3QgbWF0dGVyIGlmIHRoaXMgbGFuZSBjb3VudCBoYXBwZW5lZCB0
byBiZSBtb3JlIHRoYW4gdGhlIG1heCBsYW5lIGNvdW50IHdpdGggd2hpY2ggdGhlIFBIWSBnb3Qg
Y29ubmVjdGVkIGFuZA0KPiBlbmFibGVkLCBzaW5jZSB0aGUgb25seSB0aGluZyB0aGUgZHJpdmVy
IGNhbiBkbyB3aXRoIHN1Y2ggYW4gb3V0cHV0IC0gd2hlcmUgdGhlIERQLWFsdCBzaW5rIGlzIGRp
c2Nvbm5lY3RlZCAtIGlzIHRvIGRpc2FibGUgdGhlDQo+IG91dHB1dC4NCj4gDQo+IHYyOiBSZWJh
c2VkIG9uIGNoYW5nZSByZWFkaW5nIG91dCB0aGUgcGluIGNvbmZpZ3VyYXRpb24gb25seSBpZiB0
aGUgUEhZDQo+ICAgICBpcyBjb25uZWN0ZWQuDQo+IA0KPiBDYzogc3RhYmxlQHZnZXIua2VybmVs
Lm9yZyAjIHY2LjgrDQo+IFJlcG9ydGVkLWJ5OiBDaGFybHRvbiBMaW4gPGNoYXJsdG9uLmxpbkBp
bnRlbC5jb20+DQo+IFRlc3RlZC1ieTogS2hhbGVkIEFsbWFoYWxsYXd5IDxraGFsZWQuYWxtYWhh
bGxhd3lAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5j
IHwgOSArKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gaW5kZXggYjg0NTNmYzNh
YjY4OC4uYTg5ZmJiZjg0OGQ3ZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdGMuYw0KPiBAQCAtMjMsNiArMjMsNyBAQA0KPiAgI2luY2x1ZGUgImludGVsX21vZGVz
ZXRfbG9jay5oIg0KPiAgI2luY2x1ZGUgImludGVsX3RjLmgiDQo+IA0KPiArI2RlZmluZSBEUF9Q
SU5fQVNTSUdOTUVOVF9OT05FCTB4MA0KPiAgI2RlZmluZSBEUF9QSU5fQVNTSUdOTUVOVF9DCTB4
Mw0KPiAgI2RlZmluZSBEUF9QSU5fQVNTSUdOTUVOVF9ECTB4NA0KPiAgI2RlZmluZSBEUF9QSU5f
QVNTSUdOTUVOVF9FCTB4NQ0KPiBAQCAtMzA4LDYgKzMwOSw4IEBAIHN0YXRpYyBpbnQgbG5sX3Rj
X3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0KQ0KPiAgCQlSRUdfRklFTERfR0VUKFRDU1NfRERJX1NUQVRVU19QSU5fQVNTSUdOTUVOVF9N
QVNLLCB2YWwpOw0KPiANCj4gIAlzd2l0Y2ggKHBpbl9hc3NpZ25tZW50KSB7DQo+ICsJY2FzZSBE
UF9QSU5fQVNTSUdOTUVOVF9OT05FOg0KPiArCQlyZXR1cm4gMDsNCj4gIAlkZWZhdWx0Og0KPiAg
CQlNSVNTSU5HX0NBU0UocGluX2Fzc2lnbm1lbnQpOw0KPiAgCQlmYWxsdGhyb3VnaDsNCj4gQEAg
LTExNTksNiArMTE2MiwxMiBAQCBzdGF0aWMgdm9pZCB4ZWxwZHBfdGNfcGh5X2dldF9od19zdGF0
ZShzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMpDQo+ICAJCXRjLT5sb2NrX3dha2VyZWYgPSB0Y19j
b2xkX2Jsb2NrKHRjKTsNCj4gDQo+ICAJCXJlYWRfcGluX2NvbmZpZ3VyYXRpb24odGMpOw0KPiAr
CQkvKg0KPiArCQkgKiBTZXQgYSB2YWxpZCBsYW5lIGNvdW50IHZhbHVlIGZvciBhIERQLWFsdCBz
aW5rIHdoaWNoIGdvdA0KPiArCQkgKiBkaXNjb25uZWN0ZWQuIFRoZSBkcml2ZXIgY2FuIG9ubHkg
ZGlzYWJsZSB0aGUgb3V0cHV0IG9uIHRoaXMgUEhZLg0KPiArCQkgKi8NCj4gKwkJaWYgKHRjLT5t
YXhfbGFuZV9jb3VudCA9PSAwKQ0KPiArCQkJdGMtPm1heF9sYW5lX2NvdW50ID0gNDsNCj4gIAl9
DQo+IA0KPiAgCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwNCj4gLS0NCj4gMi40OS4xDQoNCg==
