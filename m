Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E805CCB92F4
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:48:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB6910E907;
	Fri, 12 Dec 2025 15:48:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mgb+8zYp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3A0910E903;
 Fri, 12 Dec 2025 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765554513; x=1797090513;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=4z4eeWLHMseEIv14O7Zk89B60wWjNnO+MjEV88dgHvI=;
 b=Mgb+8zYpmathwfmAXmim1OWQR8qaJ7sI5eCuUublHpEG3yuWa4Nlq4k2
 ny3bXJAfc2nUxL3oTnNN+cWQfy/xuXGA0WzcigqMvZSJyjgcwddkxcT6+
 laItua4dy9WqxXUKhmmcyqJQKA+55zE6CIm7N29HM0pbVlvMFeBclhDop
 /GUBJPhtSND3PZRR1IsdrLwaYEhBYKZYMR7L+Xzk1zcmX4OC3dco8IgR4
 SSwA7XGEaQuuHd1akCFTiA5pW/Hv8DPrx4ObJbklwpim3WAPuAVn4jt4B
 Zhg7Xa0K9a3xLmWmA9JA3SSxUWPRDokeRcFAU02izN2BG7nkYOY5I+JoL g==;
X-CSE-ConnectionGUID: 3okTjZoFQgGT3ES3XibBXQ==
X-CSE-MsgGUID: 5WJ7goDPRWyAueiPJ0a7xA==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="78195093"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="78195093"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:48:33 -0800
X-CSE-ConnectionGUID: SXjR4/7OQCaih0I4bjmvKg==
X-CSE-MsgGUID: 4mDWyoGOT7qe6tUNlxnJKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="202040411"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:48:33 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:48:32 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 07:48:32 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.0) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:48:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AwNUTPYrv6N7poDahPgv/3hUILhCe1n18farrYQN5jL6jMqf+0ks5eEbsntlgP7qpgt4K0dy+ldR1UJbvz0uFyMZCC7q20X+qq+mfGpWoRlnmsSKipn/vck7t0RDwPODXVFsk/awGuXiG942LpUl9+azGnhjmMUXfENIW303Zs7XjYujGyTMnFIMK80MKhrlDLJ0y4RX/TEs14n5hpUS+XkpFujwYdPVealBeSktjaRSZS50LqXb/AeuoztVcnDQ/fzTniarAnDVg8B1eAjQPlF67CPug4cPmyebgZL6L/wwxH3SFXMP3Zb36mh26oQNcRj902pZ2jAAkB9a8syKUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4z4eeWLHMseEIv14O7Zk89B60wWjNnO+MjEV88dgHvI=;
 b=cSLWnyn5IWZ2M96C8te3je3C21yPWfyXr+DR51IozlD7/sTj1z0QYqnLQh61T84SbSXAcVB/Pulml5MfTMNYqCrHKPo6cP6itfKMMFr1svZJ5bhhjz3mV/sYB9fTHZfhZ4PFuD1s9HLU9sh4GTQ2U8f6hOdk+LRMX2RV4NVsgkrrz06rYO76BSMzDYaT/1xMTNyLdcmBRsYg6MRGBxwWfvNhqZbT/1qBDu8GnLN/Pdc3i2iJ1kzfArs5eti+FJBT7boyoNuQ39nD+Xlx4AGsffrQV1NdTSuPye2Lqiw3QmpAZpWCQ+FYaHQl/Lz8te9XWQqJvwm8R7Lwac4ZrqxVAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by LV8PR11MB8746.namprd11.prod.outlook.com (2603:10b6:408:202::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.8; Fri, 12 Dec
 2025 15:48:29 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 15:48:29 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 16/50] drm/i915/dp: Fail state computation for invalid
 min/max link BPP values
Thread-Topic: [PATCH 16/50] drm/i915/dp: Fail state computation for invalid
 min/max link BPP values
Thread-Index: AQHcX8vRrd7gEfVmyk2h98wrBTqDIbUePewA
Date: Fri, 12 Dec 2025 15:48:29 +0000
Message-ID: <803b1e1949bfb2804bc92a55b0bf24c5c48a69e1.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-17-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-17-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|LV8PR11MB8746:EE_
x-ms-office365-filtering-correlation-id: 72f73f46-5ce6-460c-ab97-08de3995e58d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?c0NGS1FUNWZWVmlVeDdGU1ZncTF4UFAybUpvQlp6N3Byb3pIVjcyMTBUNlBm?=
 =?utf-8?B?WldvaEYyUTU3ZWkvUWNiYWRVRVg5M003TXJJZSt0ZW9xSm4ySVVrUDlCYkx0?=
 =?utf-8?B?RmZ5VUlvbGtBS0R4bFlKU2R6cFJIR2czS1J2RlNEbStFeko1M2lJaEp1T0h0?=
 =?utf-8?B?Mk9yUGEyaHE3dXZTZ3FieGhLZTh1RTRzdUV6VkNBUU80YkZtMzVmWWZSTC9h?=
 =?utf-8?B?bHZpc3VwYlFWRDB2TzdVZzgwd1JjRU5iUy9ucjVCRVJMeW5COFhJazRGcnFZ?=
 =?utf-8?B?SFZVdDl2Q21zVmlKekFXNTArSVpRYVR5bVZZc21LRkNSWW9CcjA3cVQ1WW51?=
 =?utf-8?B?RUw3dlNCYnZLNUplVVVkYVhlRUE2Q29TSkwwQ2JLSURvSEhtRUwvMlc5cjRD?=
 =?utf-8?B?NmNKYTNVN01LZFpKaUtWMEFyM2FGbnFKSytKcXY3NmxTZHUzOUhYdFYxblYz?=
 =?utf-8?B?ckxTOEVVV2I2dVRQNDJ0bFRGU3E2ZUROeHRqTlRmN3ovTTgyVkpJODJGdHAz?=
 =?utf-8?B?NDlvdW5yR292N1Vyc1ZMd2Y4b2RqMnBxT1QvNkVHdzdNNEtyQlkrKzJyZFdy?=
 =?utf-8?B?Z2ZjWmNRekU3OCtLOUZBalc1RVhrZUxlbjdaNFBaVW00bEpwUCtMYjhuUG41?=
 =?utf-8?B?OXRlVHdsa0R4cUpid0NoWWUzMEhGZGhSd2l0dEIyUjU2QmtDSmpzVlhnZHIv?=
 =?utf-8?B?N25TWTdPbGh5WGxUbE5kUFEyVDhvZUFDYSsydVJoVHIydlNvbS9GM0dYOFUy?=
 =?utf-8?B?dGlKaUhRVmN6UGNEdEIyYlBJMFVYTFhmaER0QmcrRU1XMjFPVGdnV0Vnd2RC?=
 =?utf-8?B?c05ZWmt0YjExaXNlQ3U4anNuNXlQTmxpUUFRai9xNHZ5VWdINmxocmV0TG1G?=
 =?utf-8?B?TFFWckcyV01GMDVXU1c1NEZpT25DUkg4ejNhaWJjc21sZ016d0ZMai8vbDN2?=
 =?utf-8?B?dU8xeDlBZW1EU1JyVk5LM1NIaHV0ZnlmVVpISTBZZ2FyR25jelhRWE1MR2xh?=
 =?utf-8?B?ZzBqS2t0Qmp4ZTBQSEFzVklNTzY2aTVpR25nS3ZvYXJPcE91UkhmTDlMNmRT?=
 =?utf-8?B?YzUwajRjQ3IweVRGVWIzelJ1QWs5aDlyMmsvSkw3eU9jbHBMeXl6WUp1VWc3?=
 =?utf-8?B?Wit1bW8wZGdqT0xPdHhVZ053R2F5djRTeDlrVzdpV0wxODdWQWhacHFpMzZj?=
 =?utf-8?B?UGJHck54QlVUOXpoS2d3YTVxNDIyWDBWTElnVVI5R2E1NWFoSGRtbDNTdVhO?=
 =?utf-8?B?aUN5bWsvdXhnNWhwUEliM0JHMlNhWlFoamdZRGg5bVFlaTlpL2M2eWVQUTRK?=
 =?utf-8?B?aFdieGs4QnYwZGVEaWFPN1krM3FqTVNVaEtPQXpXTjltNklrYk5wUHFaTXJm?=
 =?utf-8?B?amNOejYrZFdRTlkzZWNiNTdROXV4TXU0Q0JRQllkTXRuNDdUWmtBbldmall2?=
 =?utf-8?B?Y3ZPcXFjVUVpdUdQT0lMVXFoL1ZwRGx1NG1ZUnBkSm1EbThuT2IrUlNYNXJR?=
 =?utf-8?B?eUNUWHJMVjlDT0hiNWVjQU9EcnM5UFM5QnNyRCtNZ3UvenQvcVhFSUlNNTl4?=
 =?utf-8?B?azFoZk9uTms5NExmOFpVUlorbGUwcmRuRzl6T2FSNThaTG0xRUNmVWdZVHVO?=
 =?utf-8?B?UDVsRnBGdkNvbUowdlVqVW5FeEN0b3dWaFlJWDNQcEIxZlRRZEF2d0hYbVRx?=
 =?utf-8?B?LzhwaHNnckxsZCtORG5TOVEvN0VJb2crOWVRYml2cFdYeU9PRloyMjRUSmRK?=
 =?utf-8?B?MDR6S3d2QSt1T09tbHEvd1A5M3Q1emZFYm5uUFJJbFloWGNvNGtmNDE5S1Av?=
 =?utf-8?B?cTM5NnhFb1ZUdmx1a0pmbjFSa1lTTzh2YUJaUTY2L3RxUWFEV0FhNndEekx4?=
 =?utf-8?B?NFUrNWZwSkp3b1l6KzJseTBBMXdyOUdZQWN0Vm9Ddk9hbFQxeXJTbmV2cVJT?=
 =?utf-8?B?MXBBbWpSazBKaVZrUEsyRmtwT0laVmNZY1dSR0ViODY5UnFQb09HY3k3YjlR?=
 =?utf-8?B?QThtdGYzeEZJaGduRHZTbHlsWHp5NCtzeU9vV0VJdXR4Q0hTOXVTeldaUGF4?=
 =?utf-8?Q?9Qh5k0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dE5iTWZnY2pZb2x2cGhGSzd1NGdIa2ZHcTB4aDhsSjZPa0NiY3VjOUZpbEY2?=
 =?utf-8?B?OHlsMWV2enlKaUl3SDExamE1YXhwYWhTMHUwdnpjU2IyWlNtZVFTSWFtMjNj?=
 =?utf-8?B?ZElzWUgvY3haY0VyYlVMM3R2RDJYL3gzYWNEQTEzWGtnMW9VNDdmQ3JRV2Vv?=
 =?utf-8?B?NVRGb0w3Sk9uZW5SMUdtWGQ5NXJLOFduanZ5TU1CNDd2VTdrL1N6K1pwUERs?=
 =?utf-8?B?bU9QeFBRcGVwR0tUemwwWDJyRTE2MHFoWG9Mc1I0Q2ZSc2J2UW5XVkxkb0ty?=
 =?utf-8?B?N2h6a2xtQTkvSFhjamkwaHpmTHJpNWJPYm5zQ0dzMk1wUEpQQ3dUdmN6YStC?=
 =?utf-8?B?TFowWXRaci9Rb2g3NlIzdDdKcjBrekM4aWthdy80T3o3MS9pUjE5eG4wZ0hp?=
 =?utf-8?B?K1NFYVhmNFMwMWNMRUpKWm9DSFczTWJPWUZobFM0bUpzLzdFYkhNUE9vc1R3?=
 =?utf-8?B?YXA4a3lsZzJMZ2ZTUm1qMWl2WWRiS09NL2ZIWFFGNmh5TmJUc2hoVGp3aHpT?=
 =?utf-8?B?U3R0OHZ0T3RFSkU4cXdrK2I2L2pnN3VhRE43TStHYlJ3VDUwTUpBYTE4Q1dh?=
 =?utf-8?B?aWNnOTlBSjdUZC9XQ3lQWUVGTGtxZHhRaGJaRE1kbFdzV1pWRXpYNnMvNGFx?=
 =?utf-8?B?UFQzY1YvaS9XNVpraTRQNUFZc1NHRElWa1dGQ25JSWU3LzRzdHdiNGo2YjlV?=
 =?utf-8?B?TXZ5UytTNHIxbkIxUnFFR3Y1d1JxM0ZJdi95Y3JBdldYVERDOGc4WDFWazZk?=
 =?utf-8?B?OWsxelFoSUkrR0dwTnZXR0pSTW9XcVc1MXUyNlpMaHk1TFZ1MXdpWVBUbmxz?=
 =?utf-8?B?c0xXc0I5NFprdVI3dW9IM1NpRll0TU5pVmQvbTUwYXp2WUFwNC80Z2hNWDUx?=
 =?utf-8?B?WG1HWjZNRDZaYjBWUDRaM3E4S2VRNDU2ejVRYVVzMkRmRjM3MTc4L0VRdDQy?=
 =?utf-8?B?RHl2NWZtR1IxY25icThhS2JMRzIyU2Y1KzM2QjRNRVg3MzZSSTVEaFI3V0gz?=
 =?utf-8?B?OGtKWmR5OWJQWkdDT2xMZS82SThDblZESnNFVjZ0MWZKRTNrYnlma2R2WnRy?=
 =?utf-8?B?R1ZCbzhuTG5FVGw3b0ZPYnRMbFdjbVhrVTR5VE1PSlBqaW5VSzlEN09DYnFP?=
 =?utf-8?B?OWJ2UXArczhBc3VDQlNHTmt5a1JMYXdKN295bWR1YzBCR0lZYXkvb1R3UGxy?=
 =?utf-8?B?NTZqQlY4c2duTExISnRyck5YUDNFaEVCZnFwbUF2WjF0SzVMaVhBM2t1TENj?=
 =?utf-8?B?UERDbjFFcnRFOE5CaTBYWTBNSHRsSmMzQnJYTEVUM3Z2L2U3ZVVJYTZWK01v?=
 =?utf-8?B?Vmo1RndoREZQZDgwaTBEZThnQUY1OE13eXpaT2hkZVdaVGtVT0VUclg5WEJ5?=
 =?utf-8?B?S2JCdWxBSHpGSEIyMmdxZ0U4VkdLVHR3UGVTT1huOTdhS0YyNWs3SXhSVHdG?=
 =?utf-8?B?YWNHbFN1bHFiSTZ3cjlXWWdvaklvcjlvazNTTXBPMCt0bGhJRUJPS0xuTXJV?=
 =?utf-8?B?bjRIaE9WazBpdnFiU0d4ZEt0cUFCd0tXc0NCdGpKNVdJckZxK3NCdjhYdHFL?=
 =?utf-8?B?eWNwTU5ZU01QVVJiZFlMVk1zVWpoUmVDUTZYdHQyZUFJUXdiWDVkV1dDaU8r?=
 =?utf-8?B?ZjhCMjdIMDErOFIxME1ER3BJaEY1RE1EblZPeldWbWd6RUNibEhGUnpCTVhC?=
 =?utf-8?B?c0t4Wit3NTFzMld4TkQvcXBVMkY0Z0xvYWl5b1JLQnJNU0JIYjdvSktsSlpq?=
 =?utf-8?B?YUFCeG4wM0F2eXFzVHhpNXFnRlhGS2JKa29iTmtTV0dnRERiSHZZaXpZUUlC?=
 =?utf-8?B?K3A3OEt5NFVBQU9ldE9haFhjSDlLRi8reHJsNGliZkdVQXFUdmRtVmEzMDgv?=
 =?utf-8?B?UGg3SGt6dUwzUDhreUZ5SnZHVHpzbm5RQzhSQzdaeUF2VGNOdXJ1dEFOYlo3?=
 =?utf-8?B?ekw4MlVoV0lRQUpSZEQwKzQ2Ty9zTFc4dmNTa091QWRBd1owT2dwbFVJeUZ5?=
 =?utf-8?B?N1BzYTRNc05lY3hFUlNWVFV1NDBOdUxZSU93Z2ltNGlCNzFLWXhZeGU4dnox?=
 =?utf-8?B?bzRsZEtXN1ZDdGRFSlRWVlIvUlYxQnA5Sm5uZFpubU9oUEFsZ0trdmpjSWd2?=
 =?utf-8?B?M1M0ZUNHZmNUM1pvVFRVQjBMOUljcm1GTDUxaXJ3SVhmNTRYODIrYjFNam9Q?=
 =?utf-8?Q?pdRWai0PYIZ6e456/Qc+8x4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <621B4DDFE999CA4EACB1BB41AEB92C1D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72f73f46-5ce6-460c-ab97-08de3995e58d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 15:48:29.7295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZywvrboBEm6/J7GBiiH+EKa/CudqfuNbQ9yKegZwqF92zccdeawLITgRdM1omwl9DWoM2P3wdH8T5JKEPfbB23jfa+bOrF644K+ZmzA+pL4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8746
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE1h
a2Ugc3VyZSB0aGF0IHN0YXRlIGNvbXB1dGF0aW9uIGZhaWxzIGlmIHRoZSBtaW5pbXVtL21heGlt
dW0gbGluaw0KPiBCUFANCj4gdmFsdWVzIGdvdCBpbnZhbGlkIGFzIGEgcmVzdWx0IG9mIGxpbWl0
aW5nIGJvdGggb2YgdGhlc2UgdmFsdWVzDQo+IHNlcGFyYXRlbHkgdG8gdGhlIGNvcnJlc3BvbmRp
bmcgc291cmNlL3NpbmsgY2FwYWJpbGl0eSBsaW1pdHMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDcgKysrKysrLQ0KPiDCoDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQoNClJldmlld2VkLWJ5OiBWaW5v
ZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDMxMTE3NTg1Nzhk
NmMuLjU0NWQ4NzJhMzA0MDMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gQEAgLTI2NTQsNyArMjY1NCw3IEBAIGludGVsX2RwX2NvbXB1dGVfY29uZmln
X2xpbmtfYnBwX2xpbWl0cyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAlsaW1p
dHMtPmxpbmsubWF4X2JwcF94MTYgPSBtYXhfbGlua19icHBfeDE2Ow0KPiDCoA0KPiDCoAlkcm1f
ZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+IC0JCcKgwqDCoCAiW0VOQ09ERVI6JWQ6JXNdW0NSVEM6
JWQ6JXNdIERQIGxpbmsgbGltaXRzOg0KPiBwaXhlbCBjbG9jayAlZCBrSHogRFNDICVzIG1heCBs
YW5lcyAlZCBtYXggcmF0ZSAlZCBtYXggcGlwZV9icHAgJWQNCj4gbWF4IGxpbmtfYnBwICIgRlhQ
X1E0X0ZNVCAiXG4iLA0KPiArCQnCoMKgwqAgIltFTkNPREVSOiVkOiVzXVtDUlRDOiVkOiVzXSBE
UCBsaW5rIGxpbWl0czoNCj4gcGl4ZWwgY2xvY2sgJWQga0h6IERTQyAlcyBtYXggbGFuZXMgJWQg
bWF4IHJhdGUgJWQgbWF4IHBpcGVfYnBwICVkDQo+IG1pbiBsaW5rX2JwcCAiIEZYUF9RNF9GTVQg
IiBtYXggbGlua19icHAgIiBGWFBfUTRfRk1UICJcbiIsDQo+IMKgCQnCoMKgwqAgZW5jb2Rlci0+
YmFzZS5iYXNlLmlkLCBlbmNvZGVyLT5iYXNlLm5hbWUsDQo+IMKgCQnCoMKgwqAgY3J0Yy0+YmFz
ZS5iYXNlLmlkLCBjcnRjLT5iYXNlLm5hbWUsDQo+IMKgCQnCoMKgwqAgYWRqdXN0ZWRfbW9kZS0+
Y3J0Y19jbG9jaywNCj4gQEAgLTI2NjIsOCArMjY2MiwxMyBAQCBpbnRlbF9kcF9jb21wdXRlX2Nv
bmZpZ19saW5rX2JwcF9saW1pdHMoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJ
CcKgwqDCoCBsaW1pdHMtPm1heF9sYW5lX2NvdW50LA0KPiDCoAkJwqDCoMKgIGxpbWl0cy0+bWF4
X3JhdGUsDQo+IMKgCQnCoMKgwqAgbGltaXRzLT5waXBlLm1heF9icHAsDQo+ICsJCcKgwqDCoCBG
WFBfUTRfQVJHUyhsaW1pdHMtPmxpbmsubWluX2JwcF94MTYpLA0KPiDCoAkJwqDCoMKgIEZYUF9R
NF9BUkdTKGxpbWl0cy0+bGluay5tYXhfYnBwX3gxNikpOw0KPiDCoA0KPiArCWlmIChsaW1pdHMt
PmxpbmsubWluX2JwcF94MTYgPD0gMCB8fA0KPiArCcKgwqDCoCBsaW1pdHMtPmxpbmsubWluX2Jw
cF94MTYgPiBsaW1pdHMtPmxpbmsubWF4X2JwcF94MTYpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4g
Kw0KPiDCoAlyZXR1cm4gdHJ1ZTsNCj4gwqB9DQo+IMKgDQoNCg==
