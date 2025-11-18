Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B808C68744
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 10:14:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11D3210E34F;
	Tue, 18 Nov 2025 09:14:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wk62pzGb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9ACC10E34F;
 Tue, 18 Nov 2025 09:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763457285; x=1794993285;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nvFeU+Vc6xWgqxw6jL50yqhHVguy7d55zeFoIRKFS5c=;
 b=Wk62pzGbroe2rDD0RBXvCrc3XPTVPT1VtfzsxvPTQ0DUH8as5v7dQszP
 WqfXoJccpfyK8xRCMrLDe/hvAFj+zJ6AuJTwyQbvl5N+/gyjhaAM+qOkD
 kcY9J9cwdEH4XfYxuG6ZP0tehQiDmQ5jIRh8q5Kb+ucdtNtwN+/SfThDs
 klQNECH3Hf0gzdJYO/yPO2b+sq9KPtc+7G3EKDGK+V0vvtwX5k8ri0I7S
 73EJPZAcdAtxPesOJYBVldt69lxl3eLRvpACrRSshcLKN5uJTqmIbqWb2
 StZsEFHDiG7sc69bZinMlUuJ4eYG9YLoFOTkJxuuocHMjXarHxXQUYNAr Q==;
X-CSE-ConnectionGUID: TTQ1QMn7TE+Vxr2ndLNOLQ==
X-CSE-MsgGUID: EzAcuCjmRz6d0UsrreMOJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="76149714"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="76149714"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 01:14:44 -0800
X-CSE-ConnectionGUID: pbQURXmDSb2PK9oG7Dm7Zw==
X-CSE-MsgGUID: LMZH9zEFTDSg2cfusqcx0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="221606634"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 01:14:44 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 01:14:44 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 18 Nov 2025 01:14:44 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.40) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 01:14:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ajBR9UrhxuH0RQjS01uzQ7GUhQNcqWre1dVWgnXyDB83tikR57bPNqTdaSlUAJCpz0C+1TODC8BLQoG5uaKpNNjRu6YcJVFzrM15RttT/MZNyX/AF8YgB0HACg3gKWlUjoYRhnpWMECZFPkA6ZcWwg17SNkWokFiEf3z9r3eDnLhiaOmIRaUAExF6g9VYJLt67TZ/Pa4pmslHhGYlJC1UEpXA7AaD/XU7FBTQvs+d2LA6UkFrlusma8AiGWJDSoFL1sppINW0sYjMms2ZR/fqTjlNo214keNwdaPIMLCuSduTFoJB0AziYhz0+UG2i0SX6mhHR89pzW4tqphdiHXIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nvFeU+Vc6xWgqxw6jL50yqhHVguy7d55zeFoIRKFS5c=;
 b=VJxIX7BHosaEjOCVmOraZDCxOjtYDfJAWb7wz9V0dIDyxg/rmzZdWFcds5BiZHu8GPf2bgbPXyCPNnPyNEeVenh/i/rNCC3dEHjw0Q8IyH8JUpRrTxKfonEZmbPTuixwo0mSSGaYQE0jVQOKo316SHJfh47LG4hWYtgZauHcOhv9nJrJgE0nYOQytKl1XeUeXbu9Z8uoFYVAoXpDzrMQkKa3KpGOtggfhm+fcllHRS7NEWjJjOIGw4T5NGRU7XP2YZ/RsT4053f85Ortbre36ZeSLWVsuS9V/iB3+lNYb1D9V1KMfTh635JXcSK2brZ3c7YOi+qNNpm0WhPikQtZQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH3PPFAC6BA7F25.namprd11.prod.outlook.com
 (2603:10b6:518:1::d42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Tue, 18 Nov
 2025 09:14:41 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9320.021; Tue, 18 Nov 2025
 09:14:41 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v2 18/32] drm/i915/cx0: Compute plls for MTL+ platform
Thread-Topic: [PATCH v2 18/32] drm/i915/cx0: Compute plls for MTL+ platform
Thread-Index: AQHcV7FGq+7bUL9A60+W73nxUtzcebT30UwAgABWp+A=
Date: Tue, 18 Nov 2025 09:14:41 +0000
Message-ID: <DS4PPF69154114F3D60A9406AE7CC5D6DD3EFD6A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-19-mika.kahola@intel.com>
 <DM3PPF208195D8DAA31D78D2F2BF45AE496E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DAA31D78D2F2BF45AE496E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH3PPFAC6BA7F25:EE_
x-ms-office365-filtering-correlation-id: 70679edf-e1f1-4fa8-cedd-08de2682e7fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?SXM4S1l6VGpXQWY0eDRmRTg3dzUxU2lkbEtsNkxGbEQ2YjcwNUZFZWxpaXJL?=
 =?utf-8?B?Y2dQSGltRHREUGl0VzBQSDZNSWNPdlllWDJ4dVNodWwvMXE0eDIrM2tZT3dH?=
 =?utf-8?B?MlFlbE0zWUlsYjZTUGdUK1dzMnBFbjRvODRYL1Z3dEJuOEFLMks1djdocU5U?=
 =?utf-8?B?N0k5T2c4czJya3VaWkJzemYrVFArWUsxeHM5UVExVGFkemlOdEozd2tHVUM4?=
 =?utf-8?B?TGgranVnaEpmV25VbDBmUndDRzkzL2hSSERCNWViOEJYYWh6d1hqcVpzUnBz?=
 =?utf-8?B?MjZZVld0Y1NrWEFtZWxqRGp2dzNlK1ZBVlJValF0Q1NVQ21QMm1lWlJKVEt6?=
 =?utf-8?B?UERIWjVlcXRkZ3lCQUcrYjB2NE9BaCt1ZENKTVdYS0dSSHJwT2hiUmozYjIy?=
 =?utf-8?B?UGxKV0poaEFNNS9HbFlDYktHRmdlYmk3eVk2K3JPTXNiMG40TlgxS1VMTllP?=
 =?utf-8?B?TnVlV3ZKZDkrbnVqY3k1ZC9OL3h6b09LbE8vSnlwTEwzYmxFRXNKSU1YUTRB?=
 =?utf-8?B?Y1NnRVVFQnZtL2I3M3B4cHU2RTkvZkszMHFWZFpjcmZPRFhuc0NpcWR5VFh1?=
 =?utf-8?B?emRxTjBNb0lTRUFHR1dQdzUrMkp2RjVnRTA4NzlSY0l6N0F4dmVoWk4xVDc2?=
 =?utf-8?B?QzY5VW9KVHBpRUl6eDY0ZjE1bUVHd0g4TERYZEdmU3hrTnpTQW0zOXBBVk1F?=
 =?utf-8?B?Q3o2R1ZYbmtiZUc4cy9BOXFVUDg0dWdvM0s2UUF1NTUwQXhjbzBHSGY4ejJI?=
 =?utf-8?B?dGt6NXlneksrdm4wS0s5c2JyOVdndVJsMUp0NmEzcXZtRzF1MmhETFpoOW96?=
 =?utf-8?B?UEM0SWhJTHB5eVhlMDNkeGhic2NEWVhSbU1DdWRpcXgzUE4vWXB1QnFTSGpM?=
 =?utf-8?B?ZzAxdDIyT2lxUWQ2R2htYlh0a05Fd0Y2WHRrOWc4MWJmd0hzSWJpVGhNejlk?=
 =?utf-8?B?ZnRjUUpyVURnVTkwSmFLTTZpMXYvbkVKaTJwU0NDUERwa0hFN0g2bldGTGtJ?=
 =?utf-8?B?akprV29ZR1pPNk04RmZRUkNLampvbDE3VGNFazFuYThXaGVCTzhRclJEVmZw?=
 =?utf-8?B?ODZRTXNDdldGa3lTSlpBYUhwWnJLNm9PbHlJSkYwVG5RVHZnbUlYYTdzUzNt?=
 =?utf-8?B?TUhLRFFKdk93TDU3cmdiNXpKY0RXN2dPZjNoWlZZTkxzMHpJVUxnYWRTbito?=
 =?utf-8?B?ekRqZ0dGVlFUQlVxbTNnNFFEdFNtcFpvMi9iWVhTcjdwUWQvZ1RMOHZDNStZ?=
 =?utf-8?B?cUYwdkVCekJZZWYrWURPSmZLRFlZejV2R3praGpyYVNzSVNlOWNWRERNWXMw?=
 =?utf-8?B?WU5wUGJFNVdWclZMTUhmZG9tcVIyOUFkNURtZ2lWMWNkdEppbEU4OG9xWS9o?=
 =?utf-8?B?Y1lQVSswazd2T1h4NVg3S0VkTlExaUdDU2NIenZjZWV2cFV5T25tLzYvSkpZ?=
 =?utf-8?B?WU5yem1PZnFadE51dm4vWGtEWU9OZ1VqM0NjOWJzaTFJcHFaSWJodUNoSTQy?=
 =?utf-8?B?MWx5ZFZUVVphUzZzUkY4NmhKaFFkVTRuRmNQNzB3WWd5Q1RRcE9NcS9sL2h5?=
 =?utf-8?B?alF5akdMQmp1RDN1SXoyWkZldDVMWmlrakxuLzVSSXo5SHppVEVBcCthYUVR?=
 =?utf-8?B?bzJBcm53TzZuYXRXS2tXQncxS3FQV0x5aUZoVUtjSlhjRElFTlRTTGtJSDhN?=
 =?utf-8?B?WFRqQXRMQmMyZGFUbldSTFBYcWtBNksxRm1MSURHTmh5Zi9NaFQxY2JtMkp1?=
 =?utf-8?B?SWF1UlZDWmdWaytiMHhoYzFHWGFld3dpZnJsL2FJdU0zZW1McDNJV3lxR0Mr?=
 =?utf-8?B?NGltc1FweGdoTGF4Zmhya0xBbzFhNUhQUHBSNEVvVUlJN0xrTnVlSU05RGY3?=
 =?utf-8?B?aWdzdWgwU3FMSmgvWUk3YmIzOVVjR24zWlM4aC9PYWx0RC96cmtDWGdVMHJo?=
 =?utf-8?B?ajR6c3pvZndDN2N2Zm1qMFV3T1JtbFhNcE9tQmpWdzFOc2toMGlLckhXeEh0?=
 =?utf-8?B?VTNtT29YNGdSZ05hbHhheWNrYzBXWW1uM05lNG5YeUkra3NDQjBPeHhUdURz?=
 =?utf-8?Q?Y3AW07?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUZiNTAwNU0vWnNHMkZlblRteGJqNnVVWkRSV3ZYZkJrcUZ1YVhRWkExMGE5?=
 =?utf-8?B?NGxHd3U4S3NUeXJlcXFTL0NoZ244VlVRdnJXZHIwVXhlMElPdExaQmQwMmNQ?=
 =?utf-8?B?MmtnN08yZTFKeFhxSks3MEhZVVlseGhpUy81VjVmQnVkTW5Rb0lrR1h1OVI1?=
 =?utf-8?B?dzMxbUhkY1BMRlM1WDJOdXlRWmg1RFdQa3VNTm9hVUFReHhFb3ZEYW4xSzcx?=
 =?utf-8?B?bFAvWmhnT3FiOElYN2NrRGtXWnhORCtCaVFNZnB1bFdKYjhSd3k3TjNLKzAz?=
 =?utf-8?B?V05OYnlZemljdVh0UmpTWVlvWVgxRUlVdlY3OEx4bGw0UHJudGhxUkJMdVFQ?=
 =?utf-8?B?QXJIaS85djdYNklMUlB0Rm1kYWc1R1F6b0hhYTliM3h5WjRwYTZyY09ISXh6?=
 =?utf-8?B?NmhzZDBEYmxUSkpmdnJXcDVhb3JaMHpmbXZUWktxL1ZsOGJRbU5PUGVZSU5W?=
 =?utf-8?B?ZmdkbUY1MHNyczRLd0JqV2NOeEMxcWdRZEM4cVA5NTF4NlZha0N4UzJWSEtC?=
 =?utf-8?B?WkhYeDdvcXNqQXJkSW9JdUxlenNwMlNVYVV1M3pjTndTRnRvY0owSE5teGUx?=
 =?utf-8?B?RmNUYXBoL1RVKzFDbmVMeENaV3h4WUt0QTRjdW5SQ3piem53OGFpeVJ0K1lm?=
 =?utf-8?B?UkZIRmdEQUpyb1MwSzlwb1c3SGdMaVRWa0pPL2g0L0JJenhOcFhtVmpwb3Zn?=
 =?utf-8?B?dTlsODhiUXo3VFFDMXArSkszSnZvTG05dGVDMmluUllGbXIyOE9DMGdzUTVT?=
 =?utf-8?B?akZJVDU3bmVCM2xLazVCYmlHWXRSSDZvVWZsRVpOU3p0blpZL2krRU5objVa?=
 =?utf-8?B?ZGhza1JHYlVWLzE2enRPaXAvcE42U0R1R0QxWjFEekxNb0h0MEl0Z2ZCd01V?=
 =?utf-8?B?MFFYVnpBR1h3ZUZmWG85R0VmdUdOY21tVW9wTFhBK3JHejlHMmlNR3Z6cjhO?=
 =?utf-8?B?UjlJVDVyMEYwamVHWStFdnZMVHdFT1lDTFVqMGRYR1VkK242a3B5TDhsSzZT?=
 =?utf-8?B?N1FvdWlPWFZ1a3lPaERtOFlJZDNuckFDY25yOTQvc0RVQlg3RHVJTm9LSEVD?=
 =?utf-8?B?QkNUWGpHM3hBTnFqdkdXT3Q3TEoxdkR2MUw4OXZ3UEoveTNoK3NiamFzSzJ2?=
 =?utf-8?B?THVwMVpqSWdwOGtJd04zaGd1UkVLcmRTci83elRyb3NwTDNnNnN0aXUvbDho?=
 =?utf-8?B?RVMwNVMzMmlJZVRUaHI5N1I3TVJNdFI5eUVwZ3loUG9EYmRFRGlPMjMrUlBp?=
 =?utf-8?B?YXNSZGpEMXRDdEhGcUIxejFQR1kxRnJ5L2IwMXNRVHdua0ZpVHU3T3dDa0dq?=
 =?utf-8?B?dkFZNGY1a1dDU0dvYkppcHAyTmo3MEZNR1RQUW42dm4rbnZwTVlRd0dmS2FE?=
 =?utf-8?B?V0RqTFdvek9oWWppMHlRYzB2R3FlcEZSZEUybUwydkl5TTJOSzhEdmdHaGdE?=
 =?utf-8?B?dUJPKzRWUHNoaTM4bHRTb3ZLRVBXNHRtMlZVQk1nbXRzTWdYZlU5cmV0QVhD?=
 =?utf-8?B?MzlMMkZOaGhtL0oyUmJMNkp5ZDlBcXZ6RzNjOCt3eld5RTNQKzUyVmR4eTVR?=
 =?utf-8?B?OUh5ZGJybElETiswME9zb2U5d3V5ZVVBSXFWTmZvVnRsS1hmcnpvSktxdEpv?=
 =?utf-8?B?VlFXRzQ5YVhMT1Z3RHJCbW45d09OSlpMQXVVakxTNjh2VGtMUE1YbVoxbEFI?=
 =?utf-8?B?UVIvM2FCaGxJM0NYZ21XeVpVTGw0RmdyZmowc1FlZjlpTU1jR3pJeXQvZHU0?=
 =?utf-8?B?NStTSklpeFhYcm50bHEvWC8vZ2ttWFJ2TXVQVHFSZ2NlRTZ3TW5KK0E1dWo3?=
 =?utf-8?B?SFh5Vml4aUxWZW55dXJWRDFYbWlTcjB4ckE3TGY4RVJKMFZyTmE1UDNPS1M4?=
 =?utf-8?B?cDlGVjVrRFJuQzMwSXhNVGlhaDZtUzVLS3cvOWhwUVExb0dQQTlCYmFsZnhE?=
 =?utf-8?B?WmdCZlNiVjZmZ3JSRGdRMTV1Y3BmaUEwV0pUT3BLNWZ2L204SDQwWE56dksw?=
 =?utf-8?B?VUkxMzROM09nbFJjKzhPZkFJZERtRGg5QXB1Qi9Wa2p1Z0p2NEhxeVRrYnR6?=
 =?utf-8?B?d21JTHJhcm5MZmpCODhMQjhIbHcvTUMrR213SlVTTkxqbWdhQXRhL1RJb1Iw?=
 =?utf-8?Q?7QgmJw+OTpU1RZpa9+NTLEd5e?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70679edf-e1f1-4fa8-cedd-08de2682e7fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 09:14:41.2837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cSYEsn2yOjd06OvhHlLNv8qRcTlSJfTGaQHnOZxpxo7YRIg6W14Nd9sMgswBO0ukF8ZWI5A+RGsQ1O9Byr5rDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFAC6BA7F25
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIDE4IE5vdmVtYmVyIDIwMjUg
Ni4wNA0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IERlYWssIEltcmUgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBb
UEFUQ0ggdjIgMTgvMzJdIGRybS9pOTE1L2N4MDogQ29tcHV0ZSBwbGxzIGZvciBNVEwrIHBsYXRm
b3JtDQo+IA0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2MiAxOC8zMl0gZHJtL2k5MTUvY3gwOiBDb21w
dXRlIHBsbHMgZm9yIE1UTCsgcGxhdGZvcm0NCj4gPg0KPiA+IFRvIGJyaW5nIE1UTCsgcGxhdGZv
cm0gYWxpZ25lZCBjYWxsIGFuZCBjYWxjdWxhdGUgUExMIHN0YXRlIGZyb20gZHBsbCBmcmFtZXdv
cmsuDQo+ID4NCj4gPiB2MjogUmVuYW1lIG10bF9jb21wdXRlX2MxMHBoeV9kcGxsKCkgdG8gbXRs
X2NvbXB1dGVfbm9uX3RjX3BoeV9kcGxsKCkuDQo+ID4gICAgIFRoZSBzdGF0ZSBpcyBjb21wdXRl
ZCBlaXRoZXIgZm9yIGEgQzEwIG9yIG9uIHRoZSBQVEwgcG9ydCBCIGVEUCBvbg0KPiA+ICAgICBU
eXBlQyBQSFkgY2FzZSBmb3IgYSBDMjAgUEhZIFBMTC4gSGVuY2UgcmVmZXIgdG8gdGhpcyBjYXNl
IGFzDQo+ID4gICAgICJub25fdGNfcGh5IiBpbnN0ZWFkIG9mICJjMTBwaHkiLg0KPiA+DQo+ID4g
ICAgIFJlbmFtZSBtdGxfY29tcHV0ZV9jMjBwaHlfZHBsbHMoKSB0byBtdGxfY29tcHV0ZV90Y19w
aHlfZHBsbHMoKSBmb3INCj4gPiAgICAgc3ltbWV0cnkgd2l0aCBtdGxfY29tcHV0ZV9ub25fdGNf
cGh5X2RwbGwoKS4NCj4gPiB2MzogUmV3b3JkIGNvbW1pdCBtZXNzYWdlIChTdXJhaikNCj4gPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gPiBT
aWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IFJl
dmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiAt
LS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwg
NjkNCj4gPiArKysrKysrKysrKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2OSBpbnNl
cnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcGxsX21nci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwbGxfbWdyLmMNCj4gPiBpbmRleCAyM2YyMmM0OTVlYzcuLjIwZjk0MDExMGZhYSAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxf
bWdyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxf
bWdyLmMNCj4gPiBAQCAtNDMxOSw5ICs0MzE5LDc4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHBs
bF9pbmZvIG10bF9wbGxzW10gPSB7DQo+ID4gIAl7fQ0KPiA+ICB9Ow0KPiA+DQo+ID4gKy8qDQo+
ID4gKyAqIENvbXB1dGUgdGhlIHN0YXRlIGZvciBlaXRoZXIgYSBDMTAgUEhZIFBMTCwgb3IgaW4g
dGhlIGNhc2Ugb2YgdGhlDQo+ID4gK1BUTCBwb3J0IEIsDQo+ID4gKyAqIGVEUCBvbiBUeXBlQyBQ
SFkgY2FzZSBmb3IgYSBDMjAgUEhZIFBMTC4NCj4gDQo+IEkgdGhpbmsgeW91IG1pc3NlZCB0byBj
aGFuZ2UgdGhpcyB0byBlRFAgb3ZlciBUeXBlQw0KDQpZZXMsIHByb2JhYmx5IG1pc3NlZCB0byBj
aGFuZ2UgdGhpcy4gSSB3aWxsIHVwZGF0ZSB0aGlzIGFzIHdlbGwuDQoNClRoYW5rcyBmb3Igc3Bv
dHRpbmchDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IFN1cmFqIEthbmRwYWwNCj4gDQo+ID4gKyAqLw0K
PiA+ICtzdGF0aWMgaW50IG10bF9jb21wdXRlX25vbl90Y19waHlfZHBsbChzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiArCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YywNCj4gPiArCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcikgew0K
PiA+ICsJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiA+ICsJCWludGVs
X2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+ICsJc3RydWN0IGlj
bF9wb3J0X2RwbGwgKnBvcnRfZHBsbCA9DQo+ID4gKwkJJmNydGNfc3RhdGUtPmljbF9wb3J0X2Rw
bGxzW0lDTF9QT1JUX0RQTExfREVGQVVMVF07DQo+ID4gKwlpbnQgcmV0Ow0KPiA+ICsNCj4gPiAr
CXJldCA9IGludGVsX2N4MHBsbF9jYWxjX3N0YXRlKGNydGNfc3RhdGUsIGVuY29kZXIsICZwb3J0
X2RwbGwtPmh3X3N0YXRlKTsNCj4gPiArCWlmIChyZXQpDQo+ID4gKwkJcmV0dXJuIHJldDsNCj4g
PiArDQo+ID4gKwkvKiB0aGlzIGlzIG1haW5seSBmb3IgdGhlIGZhc3RzZXQgY2hlY2sgKi8NCj4g
PiArCWljbF9zZXRfYWN0aXZlX3BvcnRfZHBsbChjcnRjX3N0YXRlLCBJQ0xfUE9SVF9EUExMX0RF
RkFVTFQpOw0KPiA+ICsNCj4gPiArCWNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPSBpbnRlbF9jeDBw
bGxfY2FsY19wb3J0X2Nsb2NrKGVuY29kZXIsDQo+ID4gKwkJCQkJCQkgICAgICAmcG9ydF9kcGxs
LQ0KPiA+ID5od19zdGF0ZS5jeDBwbGwpOw0KPiA+ICsNCj4gPiArCXJldHVybiAwOw0KPiA+ICt9
DQo+ID4gKw0KPiA+ICtzdGF0aWMgaW50IG10bF9jb21wdXRlX3RjX3BoeV9kcGxscyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiArCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywNCj4gPiArCQkJCSAgICBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcikgew0K
PiA+ICsJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiA+ICsJCWludGVs
X2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+ICsJY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlID0NCj4gPiArCQlpbnRlbF9hdG9t
aWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gPiArCXN0cnVjdCBpY2xfcG9y
dF9kcGxsICpwb3J0X2RwbGw7DQo+ID4gKwlpbnQgcmV0Ow0KPiA+ICsNCj4gPiArCS8qIFRPRE86
IEFkZCBzdGF0ZSBjYWxjdWxhdGlvbiBmb3IgVEJUIFBMTCAqLw0KPiA+ICsNCj4gPiArCXBvcnRf
ZHBsbCA9ICZjcnRjX3N0YXRlLT5pY2xfcG9ydF9kcGxsc1tJQ0xfUE9SVF9EUExMX01HX1BIWV07
DQo+ID4gKwlyZXQgPSBpbnRlbF9jeDBwbGxfY2FsY19zdGF0ZShjcnRjX3N0YXRlLCBlbmNvZGVy
LCAmcG9ydF9kcGxsLT5od19zdGF0ZSk7DQo+ID4gKwlpZiAocmV0KQ0KPiA+ICsJCXJldHVybiBy
ZXQ7DQo+ID4gKw0KPiA+ICsJLyogdGhpcyBpcyBtYWlubHkgZm9yIHRoZSBmYXN0c2V0IGNoZWNr
ICovDQo+ID4gKwlpZiAob2xkX2NydGNfc3RhdGUtPmludGVsX2RwbGwgJiYNCj4gPiArCSAgICBv
bGRfY3J0Y19zdGF0ZS0+aW50ZWxfZHBsbC0+aW5mby0+aWQgPT0gRFBMTF9JRF9JQ0xfVEJUUExM
KQ0KPiA+ICsJCWljbF9zZXRfYWN0aXZlX3BvcnRfZHBsbChjcnRjX3N0YXRlLCBJQ0xfUE9SVF9E
UExMX0RFRkFVTFQpOw0KPiA+ICsJZWxzZQ0KPiA+ICsJCWljbF9zZXRfYWN0aXZlX3BvcnRfZHBs
bChjcnRjX3N0YXRlLCBJQ0xfUE9SVF9EUExMX01HX1BIWSk7DQo+ID4gKw0KPiA+ICsJY3J0Y19z
dGF0ZS0+cG9ydF9jbG9jayA9IGludGVsX2N4MHBsbF9jYWxjX3BvcnRfY2xvY2soZW5jb2RlciwN
Cj4gPiArCQkJCQkJCSAgICAgICZwb3J0X2RwbGwtDQo+ID4gPmh3X3N0YXRlLmN4MHBsbCk7DQo+
ID4gKw0KPiA+ICsJcmV0dXJuIDA7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgbXRs
X2NvbXB1dGVfZHBsbHMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gKwkJ
CSAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ID4gKwkJCSAgICAgc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIpIHsNCj4gPiArCWlmIChpbnRlbF9lbmNvZGVyX2lzX3RjKGVuY29k
ZXIpKQ0KPiA+ICsJCXJldHVybiBtdGxfY29tcHV0ZV90Y19waHlfZHBsbHMoc3RhdGUsIGNydGMs
IGVuY29kZXIpOw0KPiA+ICsJZWxzZQ0KPiA+ICsJCXJldHVybiBtdGxfY29tcHV0ZV9ub25fdGNf
cGh5X2RwbGwoc3RhdGUsIGNydGMsIGVuY29kZXIpOyB9DQo+ID4gKw0KPiA+ICBfX21heWJlX3Vu
dXNlZA0KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RwbGxfbWdyIG10bF9wbGxfbWdy
ID0gew0KPiA+ICAJLmRwbGxfaW5mbyA9IG10bF9wbGxzLA0KPiA+ICsJLmNvbXB1dGVfZHBsbHMg
PSBtdGxfY29tcHV0ZV9kcGxscywNCj4gPiAgfTsNCj4gPg0KPiA+ICAvKioNCj4gPiAtLQ0KPiA+
IDIuMzQuMQ0KDQo=
