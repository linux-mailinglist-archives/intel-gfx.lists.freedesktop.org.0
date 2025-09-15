Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B624AB57FD1
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 17:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044EE10E4E5;
	Mon, 15 Sep 2025 15:03:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WbsET82B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AF2910E4E4;
 Mon, 15 Sep 2025 15:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757948605; x=1789484605;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7ctHQUr48yJHwcS/zuowqeSLFjPYjRBO8ogxNLbOW3w=;
 b=WbsET82BH0YKHGXh1lopIGQ3mGvlnZN/QevAmx64Iv3IDlVMranGZ5Ak
 VMiNmS8s5xPsiW2B6NowHx17luIHH0WN2uUUPv8C2IfCtLFZlfVqx6Old
 6UJFFpTUrKS4VRrRggIG+ENHJBWNoprgVO9ZKLjs0v9n/w15IQhy5SfKC
 Gezs/9sVv6hsknywM2bPq9e0pxVb+D2Doat+aqrjFW9c78/IOs0FZf+Oj
 GFciaWNY9mAQ0It9mzunzIIZas3AXAxF1bvhOrR9Pbwa5ehu/mwIvlgOZ
 khFIFsLeuE9YXi8xoe6aJiETQuybMTBUR4KAiz5SISAXDDfteRN5ZbskP A==;
X-CSE-ConnectionGUID: tfs4RZxPQUy/1Z17kWS+Ag==
X-CSE-MsgGUID: ibw7ElrKQFmFcoc7FBemMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="71302942"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="71302942"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 08:03:24 -0700
X-CSE-ConnectionGUID: dEnETY3LQ1+mEXhEV9v7RQ==
X-CSE-MsgGUID: e2FH5FzvTkujahIWq0dejQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="179032514"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 08:03:18 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 08:03:17 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 08:03:17 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 08:03:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ALgy+TF1bpYEaQw14Qy4TnDfz9Sb8xcHvQHmMSlgUfcCnhwfPZLEtx8WCRHIkWmJSy57GrpKXf0fRL/sXx1T8dmEpld4ecrJans3uRvAsPR/RHd4/eyh72ZgLQWapSw6qBS7X62VA5wxh3Xp+ob0nvo3dC+JLoPYxUTz3kgHjTnWq/9x9BpvBmwZtZ3jhWgqv+idZOX3kdOS9pF/Bf47eotlfytGYQAvvt+cFDw2e6jpmeuon77tFKCPBfAR8Xn40i9BSu/yvkrM8dL0pSQGKltoM63fSrUvOn+na5mLJPa8gu7HMk16MwJa12/8GxJ/IhkSudJq+XK8EG8RJV6PYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ctHQUr48yJHwcS/zuowqeSLFjPYjRBO8ogxNLbOW3w=;
 b=BChdF271sC1cRR+Dz1TI6VdBuAToHWAs9xaGf1kJ8cYW0r7mlAIR736Fjmd3RNaExcf9UJawQuqb/1l6/5rKQr+cA/iAwkWAouMhklPauy5wkGqpq8pOYT4zvkM70z/7Q0yRpwcLEwHJgJKJCsTSxDjVfocSG3GlONETMO/LiHeMRmrUxWDOs2+kCwLgO47z3OWlAxwKQ0QgcHqGTxUwoshH8ehdAzEUqpZC2natpcgHuPSQ+zq9ZD+rFN2PyauRUiO+61pr14uRxE8QcPKp13YMoh+7e8dclfssqiDkHd+DjofuvgyEjV3heKka3/n7/NDrLMMmRRuhAwX/RC5Z5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DS0PR11MB7507.namprd11.prod.outlook.com
 (2603:10b6:8:150::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Mon, 15 Sep
 2025 15:03:12 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%8]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 15:03:12 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/alpm: Remove error handling from
 get_lfps_cycle_min_max_time
Thread-Topic: [PATCH] drm/i915/alpm: Remove error handling from
 get_lfps_cycle_min_max_time
Thread-Index: AQHcI7A84HXU5Sg5d0Gc9K2g5OX0hbSUXDvQ
Date: Mon, 15 Sep 2025 15:03:12 +0000
Message-ID: <DS4PPF69154114FBE889E16B6C68A0A6A5EEF15A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250912064035.335329-1-jouni.hogander@intel.com>
In-Reply-To: <20250912064035.335329-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DS0PR11MB7507:EE_
x-ms-office365-filtering-correlation-id: 8c7add7e-521b-4a80-3d93-08ddf468fd6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?bThUdTNvcUVhTUFxMVQ5Rmtic0FJeVBhSFRncXNOcktkYk5iektoNTZNa1hy?=
 =?utf-8?B?YnVrSHRjQXl3Z3k3VVRwcHo0Z3dGQzQ2eXc1SnZ4akZuVHFMY3ZZSzVjUXIx?=
 =?utf-8?B?aGZnc0ExSzFPWmI3Q1g1SzdXRGFuYm1DTlNJdXdFaTdvRTJ1SThxN2NYbitx?=
 =?utf-8?B?SEtPNjZqckpHTHp6RGpaU0tzQ0tzdXFkUVhKRG1pblFuTHIxdWIwQUwvQXR1?=
 =?utf-8?B?YndFbGRac01ad3hBc1dpMHhYS3ByZy9WUGJ5cUdsMXVuSFZHYnl6OGcwWWw2?=
 =?utf-8?B?c1Qxem9OME1jSWQyK3Y2V1ZTWDY4bXVkdEhQUnNUOEpUVUp0WlptVFFpR2tO?=
 =?utf-8?B?RjMvSXlwWHB5WUE5M3JaZ2hscVZPSkVOdW05VTJTOHdZOWtjWUlsTDdrNVZv?=
 =?utf-8?B?cXZNRG43Ty8zTVFqV2IwTUNPVlVuQlZCa2xYNC9pV1pycDJnN3BDdzZiMEpP?=
 =?utf-8?B?NU5VRmdjMHFBR3ptcnMzZng2RmliTWFkcjVTdkt5OHpGK1RVTjQrUkVPT1BX?=
 =?utf-8?B?cnZCL3U0REUzUEdrbDBpZGRDa1ZVSWtwY1VMbVF4REcza0Qwb0N1a0Z0bFlo?=
 =?utf-8?B?QWdXejZ4cHJDMThhMTRRSVM2N05RSUJSbkoxeUExQ2FHQzY4WDBJazB4TXJk?=
 =?utf-8?B?cEM2SlFOOFlYQU04NEZwOU1GM3VFbjdqTUxtWnppbkg4dVo1NGRScTFrRUIw?=
 =?utf-8?B?RUk2MmhDSmpXR0F2eUVabzJHMzVMdS9yclJ4S3I0UExLZmRQam9ESnNvbEk1?=
 =?utf-8?B?NmRHVzl3RXBOWE41RVY5MHFTeFRIQ0dOMFQ3b25CT1k3dmk1eFl3VGRUNUsv?=
 =?utf-8?B?c2pMNTY5S2F1NzdPQ1lGTDc5b1orMFVwVVV0NzBiNHlKM1dqMzRHSWZOK0dT?=
 =?utf-8?B?U1FOUVREZ3RUWkk5eUViYWhiRHVLbkhIL0kvaGp2MEVzcTVUSkJkSytRNFNI?=
 =?utf-8?B?M3V2a0NHUHZQd2JoZGNiSkQycTdZZ3lyY0lZRWZXQ1VjT2J1amJSL0N1R2tX?=
 =?utf-8?B?VFU1Y216d1k1QVpCa2lGN3Z5SnRxRmVieFlOQ1lkK3Qzb05CenpkTGFmUHFF?=
 =?utf-8?B?REY3eXRvTDdhRVRwL05Ib3QvcDkvUC9JSVRMRG9iU2ExL1FTOEVKN2FVdTdk?=
 =?utf-8?B?RmRzb3BJUlFkb3lqWGRCU2pQUHFWUmJQMVE2emEwWWZCOEFNTnI3cUZKUGQ1?=
 =?utf-8?B?MitpM3RSZjE1R1o1eWRWMTNjenRSWFJSNWxEZEFabk11b1NEV002cm1HRlZG?=
 =?utf-8?B?ejdiZHhDMFN4NmxGb1dGakw4TmxpLzJkbFNzY1Q2UVJJVWU1MFkwUzI4Y1NQ?=
 =?utf-8?B?M09adkRuTzViQzFvUzJ5dmFZYW1aVDd6Z1BCUWJBVmpHZnl3WGdUK3h5MXQ3?=
 =?utf-8?B?QTIvajYrSGFrSFFlb25ZRlBhRVBMd1FTeTh6NWFNZE50b29kbmhOV3Y5eURj?=
 =?utf-8?B?Vnd5dUNEQWwzSUJvZDBrU0JzZTN6YjRqME1wakd1VVY4c3ROVm9zVVZPNEcv?=
 =?utf-8?B?K1pwUDUvYUZNYlBNMzE0ZEVWMXh1QXErUHZUS0JkaW10ODE1OXJ5USsxOWtx?=
 =?utf-8?B?SHhpTkNscEQvQ1V2ZUV5d1czaTZXcHd4amVoMjRYSHh3eVRBNGU5cS9NRTVp?=
 =?utf-8?B?VDdlMkg3dlJTUzRER2NJazZEb2QvaDZQQkhQa1dhYVIzQXJUMnI1a2k2Ylpl?=
 =?utf-8?B?cUlNdWVuQzVXRGFQaUlDTEFFSGlVZWtMbUVsZVZXd3pCelV5bFlCTzFYc2pz?=
 =?utf-8?B?cEMwK3RsdzhScnBqdnJaNDdsZ2RFbDkvZTI5aDhreEl1TVFDWG1PZ3NBS0Zk?=
 =?utf-8?B?elFoZzNWUHFSWC9TT2MvZW1lOXI4YURnaFY1VFRlOTk1aitKRDNCNEhFL0xN?=
 =?utf-8?B?Q0c1L1lyY2M4cER2T0dFRGdFQk9CVHVDSmJjRW44ZHJDUjdkeWxnTFJmdFRu?=
 =?utf-8?B?dUcvcXVFNjVuR3VZOU1oZHhoamZTdi8rc2hVWW1sbzJYdDVybU13b0RXWmF6?=
 =?utf-8?Q?a+4aJYKQ9HpzHBXBEumgs3OXESKYi4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NjNTVUlRcFArVjZOcG9vY3FNNEZRM3dlSDNLZGZLTkdYeXFwdks5eTNUKzNT?=
 =?utf-8?B?Slp6aDZ4Q29xaC9kaTdwTUMyQkxHYWRIQTZFRkN2ZjRCbXhjZjRmU3lNbEMx?=
 =?utf-8?B?M2VIM0lSOCtDOFdFRkdBUzFVVXpPS1hSNXh2WUp0MVJJVFNRdzA1TEd5a21R?=
 =?utf-8?B?SUZsaTlZZnJmOXkvZFM1Y2ZqUzQ5TkoxMXdtSVJSdy82elA4K1NPQWRRYmw1?=
 =?utf-8?B?S0owbTBxSm8vWEhJRDlQTlV0NlhqTDA4SEpoVFZwdjVxb2NJeXdGNVorN0Y3?=
 =?utf-8?B?ZkYwSE8wOW5UciswTG1IdGtGNHVtZzhvN0ZvWVVmSUJ2WjU4dHpEK21KTXh1?=
 =?utf-8?B?UVZpblpVMVQ5UkNoczRrQk9Xbzk3NDBOdUFLWmN4eFFFOFp2RVlHdU1QMmtO?=
 =?utf-8?B?dVlQbjM1djV4blQ2NHlxOVFLeEcrdXNxV215T1BUTW44OEFPcS9LTVhtWHlU?=
 =?utf-8?B?RGk5NVlnNlBHcm1EMnFNR1BMb25obGFhQWwvdi9YT3p4R3pCc0FWeEZNeDVO?=
 =?utf-8?B?Zk5aT1Z0YlVoM3U3K2F2NFNpdFR0eTVRL3dPSGw1MFJHZmtTKzFDYitvY2w3?=
 =?utf-8?B?Q2tZQmFQbFZCVDVKVU8ybE1DZVFKREllVkFpVm04VXFsb0lRbllsVEtqNXZW?=
 =?utf-8?B?VlBlRlRVNkxsdnR6UWNCcncrWncwZ3g4cGltdHVuWVFQeTZSUEFrenJzQU04?=
 =?utf-8?B?T05QUWpsQm9DcWdKQkhLQlNYRTdXcS94Vjk5U2VjZi9JNVFlWStHeHc3N0RO?=
 =?utf-8?B?ckVwZEIvN2RZTGFBaXl2NkcrcndHWHBZdXo5QndreG80U0tuRENySWxMQUNr?=
 =?utf-8?B?WHZYcTl0NDBITXRGYkd2ZVVNT2dja0FxZ2w4RkQ5eTNqWEZVVEhSd2o1cU41?=
 =?utf-8?B?d1ZYSUJRdlFBRTNXNUtYQ3BlMm85d1Vrb3NzSjdSblczSUxIWi9FMkhKdTdE?=
 =?utf-8?B?TXJaU2FoSFlVNjRmeGh2aml3ZHFpQkxlR1JFTmVuNkU4bXg1THE4L2YvZ1Rh?=
 =?utf-8?B?RnB4dk9xd2kxWnpOL0IxQlZFNEViai9vVG9kY2ZBYXBNbnovR2M4QWJKSE5M?=
 =?utf-8?B?cEFZQ3NhS255NnR2cjk0eXRiRERZZlptNjN5bFFabDhvVDdnQTRJUXdTMjRu?=
 =?utf-8?B?YUZMSkZlV1NrWVhVd0tBaE1udkFOWDI3SlhpZmQvbEhBNnRGaDQwQldaa2J3?=
 =?utf-8?B?V3dLdDJTMmJucWVnbnRML3lNU0h4ZDQzV2FOLzF4ckZMNERaTWVkdUlCSlZr?=
 =?utf-8?B?TDUvZXdIajdJY3hiVzFIOGJCTFR6cGRaK1pSS0tsTEludngzRVc2ZHJEUjNH?=
 =?utf-8?B?VTVubCsvZVB3RDJiVldlUTdnWW04cUk0QktKb2dFaEhvNS92T1lvbEdZK1Jk?=
 =?utf-8?B?V1JXV2pLVitMdVVra2VkSlVSMk9tOVppblUvdlVFMC9JeGttKzFFaitPdUxS?=
 =?utf-8?B?Sk1xL3dDZ1JkSVQ5OEtRdXpkWXZqcG1BQ21xN2kxaEdNYkxPSmV0VkJic0pk?=
 =?utf-8?B?T3N6WU1nVU5yS2lrd0VtR2xrck50NTlhUTk1VDFCbSt0UElFdkhRS0NaVGRB?=
 =?utf-8?B?Mmw3Qm8ydXVZVjY0ckJKcVQyWHNEK3Q5dmVaU1doT1pxS1JReWVWSHRXNlBG?=
 =?utf-8?B?WWZaMjhYbTh6WkNuMmJ5dHJaSm1Sb2JOdmtqTi9BdDk3SzJvZGVzSGU0QnNt?=
 =?utf-8?B?Y0tRMmFmUzFkd0tZVVQ1UjdwRStSV3lkUXQ5WVVDREJTVFd3WWVEMnIxZy9z?=
 =?utf-8?B?a1JFcUgrZVArM0xHZDFtRTg0bXpjcXRWNFJ2N2JxS0xLdko1aUN1bDlRdkts?=
 =?utf-8?B?UEJYOHlDRFR4eHZvMEwwN01nMTJDTjg4WE5UZ3dCQmNYZytBRlJqNU9VOUtV?=
 =?utf-8?B?ek9TVENNbU94SURaWUpsc0ZwSGJJY0pBYjhXVEhNcTlQZWRRYXlwL0czZFIw?=
 =?utf-8?B?MFI5eEJHWmFWSFI4TE51ekpwckxYeXBDUEVnUS9ucE1oUm1UWEVWejN0UHJF?=
 =?utf-8?B?N3BYMEJUenp3VVVEcGN1U3RCVUNVWWZBMmJEK0pHSjA2U25GRFRmRFNBQVMw?=
 =?utf-8?B?ZW9nL0FrWXQwbEdNSkVQQXdLSzBDTlhneWZOODZJRVl1MlBkTmdHS2ZNYlZy?=
 =?utf-8?Q?ad6TkrAdoKSgI/C4rJuUU1mOJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c7add7e-521b-4a80-3d93-08ddf468fd6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2025 15:03:12.1536 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uO3+Qr+jVXaD6Mbnk7Sh9BNP9Vkq6YMF74G3s9AJZGGcE+Te0oNjpzGgcJ63bduoCYDG1X+vaGRbp+YVS3j46w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7507
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaSBIw7ZnYW5k
ZXINCj4gU2VudDogRnJpZGF5LCAxMiBTZXB0ZW1iZXIgMjAyNSA5LjQxDQo+IFRvOiBpbnRlbC14
ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBbUEFUQ0hdIGRybS9pOTE1L2FscG06IFJlbW92ZSBlcnJvciBoYW5kbGluZyBmcm9tIGdl
dF9sZnBzX2N5Y2xlX21pbl9tYXhfdGltZQ0KPiANCj4gR2V0dGVyIGZvciBMRlBTIGN5Y2xlIG1p
bi9tYXggdGltZXMgaXMgdW5uZWNlc3NhcmlseSBjaGVja2luZyBmYXVsdHkgcG9ydCBjbG9jayB2
YWx1ZS4gVGhpcyBkb2Vzbid0IG1ha2Ugc2Vuc2UgYXMgZXJyb25lb3VzIHBvcnQNCj4gY2xvY2sg
dmFsdWUgd291bGQgaGF2ZSBiZWVuIG5vdGljZWQgYWxyZWFkeSBhdCB0aGlzIHBvaW50LiBSZW1v
dmUgdGhpcyBjaGVjayBhbmQgdXNlIDE0MC84MDAgbnMgYWx3YXlzIHdoZW4gcG9ydCBjbG9jayA+
DQo+IDU0MDAwMC4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5jIHwgMjkgKysrKysrKy0tLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCA4IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gaW5kZXggZWQ3YTdlZDQ4NmI1Li43NDkx
MTljYzBiMjggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxw
bS5jDQo+IEBAIC01OCw0MyArNTgsMzIgQEAgc3RhdGljIGludCBnZXRfc2lsZW5jZV9wZXJpb2Rf
c3ltYm9scyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAkJ
MTAwMCAvIDEwMDA7DQo+ICB9DQo+IA0KPiAtc3RhdGljIGludCBnZXRfbGZwc19jeWNsZV9taW5f
bWF4X3RpbWUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IC0J
CQkJICAgICAgIGludCAqbWluLCBpbnQgKm1heCkNCj4gK3N0YXRpYyB2b2lkIGdldF9sZnBzX2N5
Y2xlX21pbl9tYXhfdGltZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwNCj4gKwkJCQkJaW50ICptaW4sIGludCAqbWF4KQ0KPiAgew0KPiAgCWlmIChjcnRjX3N0YXRl
LT5wb3J0X2Nsb2NrIDwgNTQwMDAwKSB7DQo+ICAJCSptaW4gPSA2NSAqIExGUFNfQ1lDTEVfQ09V
TlQ7DQo+ICAJCSptYXggPSA3NSAqIExGUFNfQ1lDTEVfQ09VTlQ7DQo+IC0JfSBlbHNlIGlmIChj
cnRjX3N0YXRlLT5wb3J0X2Nsb2NrIDw9IDgxMDAwMCkgew0KPiArCX0gZWxzZSB7DQo+ICAJCSpt
aW4gPSAxNDA7DQo+ICAJCSptYXggPSA4MDA7DQo+IC0JfSBlbHNlIHsNCj4gLQkJKm1pbiA9ICpt
YXggPSAtMTsNCj4gLQkJcmV0dXJuIC0xOw0KPiAgCX0NCj4gLQ0KPiAtCXJldHVybiAwOw0KPiAg
fQ0KPiANCj4gIHN0YXRpYyBpbnQgZ2V0X2xmcHNfY3ljbGVfdGltZShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsNCj4gLQlpbnQgdGxmcHNfY3ljbGVfbWluLCB0
bGZwc19jeWNsZV9tYXgsIHJldDsNCj4gKwlpbnQgdGxmcHNfY3ljbGVfbWluLCB0bGZwc19jeWNs
ZV9tYXg7DQo+IA0KPiAtCXJldCA9IGdldF9sZnBzX2N5Y2xlX21pbl9tYXhfdGltZShjcnRjX3N0
YXRlLCAmdGxmcHNfY3ljbGVfbWluLA0KPiAtCQkJCQkgICZ0bGZwc19jeWNsZV9tYXgpOw0KPiAt
CWlmIChyZXQpDQo+IC0JCXJldHVybiByZXQ7DQo+ICsJZ2V0X2xmcHNfY3ljbGVfbWluX21heF90
aW1lKGNydGNfc3RhdGUsICZ0bGZwc19jeWNsZV9taW4sDQo+ICsJCQkJICAgICZ0bGZwc19jeWNs
ZV9tYXgpOw0KPiANCj4gIAlyZXR1cm4gdGxmcHNfY3ljbGVfbWluICsgICh0bGZwc19jeWNsZV9t
YXggLSB0bGZwc19jeWNsZV9taW4pIC8gMjsgIH0NCj4gDQo+ICBzdGF0aWMgaW50IGdldF9sZnBz
X2hhbGZfY3ljbGVfY2xvY2tzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKSAgew0KPiAtCWludCBsZnBzX2N5Y2xlX3RpbWUgPSBnZXRfbGZwc19jeWNsZV90aW1lKGNy
dGNfc3RhdGUpOw0KPiAtDQo+IC0JaWYgKGxmcHNfY3ljbGVfdGltZSA8IDApDQo+IC0JCXJldHVy
biAtMTsNCj4gLQ0KPiAtCXJldHVybiBsZnBzX2N5Y2xlX3RpbWUgKiBjcnRjX3N0YXRlLT5wb3J0
X2Nsb2NrIC8gMTAwMCAvIDEwMDAgLyAoMiAqIExGUFNfQ1lDTEVfQ09VTlQpOw0KPiArCXJldHVy
biBnZXRfbGZwc19jeWNsZV90aW1lKGNydGNfc3RhdGUpICogY3J0Y19zdGF0ZS0+cG9ydF9jbG9j
ayAvIDEwMDAgLw0KPiArCQkxMDAwIC8gKDIgKiBMRlBTX0NZQ0xFX0NPVU5UKTsNCj4gIH0NCj4g
DQo+ICAvKg0KPiBAQCAtMTQ2LDggKzEzNSw2IEBAIF9sbmxfY29tcHV0ZV9hdXhfbGVzc19hbHBt
X3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCXNpbGVuY2VfcGVyaW9kID0g
Z2V0X3NpbGVuY2VfcGVyaW9kX3N5bWJvbHMoY3J0Y19zdGF0ZSk7DQo+IA0KPiAgCWxmcHNfaGFs
Zl9jeWNsZSA9IGdldF9sZnBzX2hhbGZfY3ljbGVfY2xvY2tzKGNydGNfc3RhdGUpOw0KPiAtCWlm
IChsZnBzX2hhbGZfY3ljbGUgPCAwKQ0KPiAtCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiAgCWlmIChh
dXhfbGVzc193YWtlX2xpbmVzID4gQUxQTV9DVExfQVVYX0xFU1NfV0FLRV9USU1FX01BU0sgfHwN
Cj4gIAkgICAgc2lsZW5jZV9wZXJpb2QgPiBQT1JUX0FMUE1fQ1RMX1NJTEVOQ0VfUEVSSU9EX01B
U0sgfHwNCj4gLS0NCj4gMi40My4wDQoNCg==
