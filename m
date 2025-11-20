Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3612C7402D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 13:42:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E06A10E747;
	Thu, 20 Nov 2025 12:42:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j5qhwBzT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E72E10E173;
 Thu, 20 Nov 2025 12:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763642525; x=1795178525;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PVhb9P1dqg8V8f4EgefxcH4DfTKwB6VSGpp82ygRWRo=;
 b=j5qhwBzTG2eCEmoggoX/B4Qt8mde1FsFoxNlwaNqIR7T0sBJfsaW5wfB
 cUoB18eBUlzx3qOrdm99A+jLz//aAHISt8N3AaEhPQDhj8RQhWgnIBUB2
 xcuD70joVReE7LrUk6iPDzI3fm+U6CWdyYZWwWjRB/g/EokfeSHoKeHFN
 VlvYy1ZfzBiRbg998TxgoWXYLOJkP0Fnp+L5WVgX9ZfJJ6k8O6RL8MF5Q
 Pq8+1+ewdjMzJBsjpD5BYOFg1rA/ftuOuXsS+yZnulM7HyLALnQ0a8vZg
 J4f6aOjs57aPKP8pEwGWSWmxrQ5Rb2Nyt5F8dCQzn/jdB23YU2vsFRn+L g==;
X-CSE-ConnectionGUID: tljccWgVTlOiLbJusHnqNQ==
X-CSE-MsgGUID: /v5jHSAZTZSe40yfM2+2mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="69565722"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="69565722"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 04:42:05 -0800
X-CSE-ConnectionGUID: r7ZaUUc/QY2YEX1zE6KWIA==
X-CSE-MsgGUID: pFrKgl/2Q2uujipKjczbTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="191035131"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 04:42:04 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 04:42:04 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 04:42:04 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.70) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 04:42:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o/yJigIRNFB84UiF9H+9R4lhqwzFpwfGl2Yx4GP44LEQ91TWcIpZu98f6Z43POTjUhLeh/taoUysu1HuaoSn9iWXipRU98r9aBDuvyOYRKrCBKMxW/4JoaAiFvIrntNqFq8mdtq9yvrIHP/stVHhfMxLq2GNSgQCir0euXnN9sK7a08XzCNOPha4FGeem3heVDyspTfzhTahAjhwsjW6Gbxc1oJlxTGboNVjmNb9hHBf8PZyeLoeR8g/VnsZUk6L3TB5z255/lspL4/CaEY69MF/XcO12y+eWDjr7BS01rYx38PjQTdLagBqisRKBUvRqG4r1N2bqhR30sYiuXSXdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PVhb9P1dqg8V8f4EgefxcH4DfTKwB6VSGpp82ygRWRo=;
 b=bw+YDYPh81FgqS+sG34WLjT550Wjob144PwBMbaMB+t/sLgxyzPgSJexhWbqdAUX1kjbw1XTYqbDrc+K4QiCuoYsbVtExHpc/siqkx6qMO+r9BLAtnVw1Y0AVJFHdtIqjPPinDCbdEjPF4Qv4TT4tV6zFVDNL4AbTvcvu3jHLendV8zxK+9bDfYW4BJBEgzT80Gh6mxUhzIZZoBALVFpS9Y2YXlm5WTpcLdqoPrZwYPUr6uzBmCO9fkges9n84uFeKHFewDCtuRuaF6o1CXZVLjNMpdKkUctq+ckgfPrD4kEOto9TVonMutVQUoG2JdmWqMEObxwuwwacX+dos8P9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DM4PR11MB8180.namprd11.prod.outlook.com
 (2603:10b6:8:18d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 12:41:59 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9343.009; Thu, 20 Nov 2025
 12:41:59 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 00/32] drm/i915/cx0: Add MTL+ platforms to support dpll
 framework
Thread-Topic: [PATCH v2 00/32] drm/i915/cx0: Add MTL+ platforms to support
 dpll framework
Thread-Index: AQHcV7EzkMzmXPXB+k+2yMaDOJRwI7T56ERwgABoXQCAATVggA==
Date: Thu, 20 Nov 2025 12:41:59 +0000
Message-ID: <DS4PPF69154114FB5891D685A7BD88C97DCEFD4A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <DS4PPF69154114FCB4F55C2DC43CBE3C59DEFD7A@DS4PPF69154114F.namprd11.prod.outlook.com>
 <20251119181204.GY3905809@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20251119181204.GY3905809@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DM4PR11MB8180:EE_
x-ms-office365-filtering-correlation-id: 31472e17-da4b-4423-b90c-08de2832328d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?SjdqekRRWVdja1FSOUYzTUVtZWI5T3ZveFhUN25jWC9NQ293c0lHVWRMVVJS?=
 =?utf-8?B?ck5aQlByL0tYMjV6c2hEN1Z4RjVTSllmUWZqZFdKWG9NY0xqTDNaT0dvZ3lh?=
 =?utf-8?B?aFdIVzc0TWcyc1p3V3VNUnRGRFZ5a0FnVTEzL0JBMndvOFpQekdidlgrQUlY?=
 =?utf-8?B?aFc2NHZIbkxTbzR5UGV4SGxERmpnaVd0U2hGMUgxdmU5alF4VVZ5Z3cxaWE5?=
 =?utf-8?B?SFpwWmo5aDluMzRCcVErbFVNYzZYNVMzSWxoeExiT3ZMM3NoTEFMdWhNYXJv?=
 =?utf-8?B?bFFITTFObGE4SFdGbUFsS05OaEdDeUhSaGhObW83c1ZtOThFQ2tOTi9NSXlM?=
 =?utf-8?B?NHErZGd0aEQ0K2ZsMmozQVp5SWdFb1RiZ0psQ3ZhK2NiSFgwaE5EWThCNnVw?=
 =?utf-8?B?SkVZTU94NWRWMm50NlcwM0huMFNqRVN6RW9jUVhGMmZiRlk1ZXkzbWxQRjNI?=
 =?utf-8?B?OU5nVzNMVG11bmtvSGN6Q3k2R0E2QVFBalJWK3NrMWNlU213T2c5OW50VVZm?=
 =?utf-8?B?ZUNiaFMxNjh4YWdVbVJadURjRDc4bE91bTg2aWdUWFUrYmh2bUZGTG8yc2dJ?=
 =?utf-8?B?azVIdnAwbzF3aUcyc1duSitNWUFvbzd6bUhaYVkzU0xDQTlpdGtZZHJQQWFO?=
 =?utf-8?B?d3BsUURvMkdKa3dVTW9aZUhkQ2Zqam11dzhCTHV1MTdMUDNRSWlLTXBtL2Rn?=
 =?utf-8?B?SWhFVktYenYwbzdFWlZZT2UxVEZLbGZPcEsxaEdpMGxHcGx4c1RXQTVWWDg4?=
 =?utf-8?B?M1NUUy9oS2FLQnFaSE1GYm9ja1lQNXlML3I1V08zdUI3NlpqdEhXNEJTanNW?=
 =?utf-8?B?bWxXZ0FtV3hDeFgrZ25vbHdXNUpzcWZ1SFRqL3ZNWExJZmJpM3NMVFFzT2hU?=
 =?utf-8?B?WmhXb1FNV0tCb2RJWUd6TzhFcVVCS1Jzd0IrbUlFZU00Zm5PREFNbUl5dGxF?=
 =?utf-8?B?eVhVeWNIcnlYdzYrSHVSRlhwR3pQOUxrQ2R0Y0tUOEFGSmhzL0xaaUtsQmYw?=
 =?utf-8?B?YXFzdWhKeUpCLzJVRW9mdDlzRGhLOVNJZzUxN0NZUzNpZnVKUVlHS1F3d1Za?=
 =?utf-8?B?RXlhM2lucktwTGhZWlNlay9iN1hrWkxxR2trWE9lOU5KQXdtTHZYSWZCeDlO?=
 =?utf-8?B?eHdCZHBrNDJ6UHJTcTg4T0Iwc1FsQ0Z2Qis1eUFlaE9aeWJvdTJRZUNsallD?=
 =?utf-8?B?WDhXVktrc3Izell1VlFqbzg3SGE4aFdMSWZjNDluZVpHOFRGMWYrenh1Y1Zr?=
 =?utf-8?B?SGJFdC94dlZ2ckFKNEhpa1lBUXpIZ3lJMklVYVBqZndDcmE4dkZDb0FtTWFJ?=
 =?utf-8?B?UjZvY1BkbDdWQytUSmw1TVpsa0o1TkFxQXVjdndFWFVJelg1MnB2R3dodld0?=
 =?utf-8?B?S0pBTFNmbmpQVUVlcmNFMDVOaWM1SkVLRGVVV3huZHpKWVlaTGFUNmpaVTlD?=
 =?utf-8?B?RTNlOTFEMkRucnZMbm9zRVEvQkk2dU1UZnlFSE8yNmt5OXdqWEtPenRiTDJH?=
 =?utf-8?B?cGgxQ1FDaStWWVZCVTZqbm8xck5ka0Qvd3pvYllVYVZXZDRvSkJFQitGSXl1?=
 =?utf-8?B?SzRwUWsyVDIxYk5lamYyQ3FucUVZVmszdVl0N3pLNFRIOXEzOUlySkRLdG9x?=
 =?utf-8?B?a0N5N1RnZWVGTE4zR0lhRmk1cHI4Um1lVi9qOHQrTHNid3RYRG9DMnBER1pl?=
 =?utf-8?B?Nysxc24rZy9GWGlOZExGeU9vSVNtREdKNXJPTXhRVGZYRTc4ZzBWUGlHc2Rh?=
 =?utf-8?B?ZjZNejV4S1pMTFVuYjR3VTZtV2Rvb3psUlJLQ3BHRHMxNTNENW5wTzBSU2g0?=
 =?utf-8?B?TG9vaGMvbXJBVXo5cmpxQ2NrUjJVbzdTK0ZEZS8xQndFWVAwNWNNb01FTmVM?=
 =?utf-8?B?L2g5dUxCZVZVcnc0bEhOR2F2TWxRWFlaTWxQK1k4ejBab0loNzBIR1dDV0k4?=
 =?utf-8?B?bnUwZFhURy9Hb0RWanpTZHVMSUhuQTk4ekNRdWxXa3dGa1oraXBGWExickNa?=
 =?utf-8?B?bFEyaXE2OG13PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WW5UbkNYR3hZMnZCd2dhUkxFV2huUW5iMlFheGZHYU5XbTdLaGpFOTRTVlRL?=
 =?utf-8?B?RHU5WnM1MUJ6RTNCSnZRWWdGUGhaNFRRT25wMURvaVg0blhFejZCVnFFb1dk?=
 =?utf-8?B?N2F3RVFCSWxrQkdmanlFU3k2TzdRSEw5Q3lIUWtzY0R4Rm5HaG9zL0xGdFRR?=
 =?utf-8?B?Nk1vbkx5blJ2bllOKzNOZG1vREhUN09nYWpVR2pvWFhoNmMxY2oxU0QweVlo?=
 =?utf-8?B?N21FdlZDZWVuV2hCVVpxeU9VakZxZXFIL1k5Y3llNHFNOWZEWDJHbDBYeXdC?=
 =?utf-8?B?SlB3eDF6OG9ycitvbUlzY1lMNlI0VTAxOVlNOUNEdlhTNGJGNHZHWXVDeDFr?=
 =?utf-8?B?RHhJL0ErK2ZjYUkzcXFzYzBFb2tCZlYvVmpLVHc3VFcyS1RnSCtmeFlVZWtZ?=
 =?utf-8?B?Z2pqT0laOWd3WUhUZ2xIVDljeDdKTXk2U1ZJbk1XM2Q2QnFmN0ZmUWxOa0pR?=
 =?utf-8?B?YUtnSWkwRGltRzVOSDMwbkZGOG1jZmtvdThLMXJEeDQyajlsanV6VVdHWVRo?=
 =?utf-8?B?RUFqbko1Q2krQ2FobVNoOU93Q1pHb1BSR2xyWlc3ZUhrcXdxam82SlZNTzcz?=
 =?utf-8?B?dWpYbk9ZUGVUQUFKQ2hLL3YwK1phTkhSVmFEaDI4UTFWc2dpbVhMUFRkSXJS?=
 =?utf-8?B?VkVJaVY2Y1V0eEhLcFc4eGFrSmdoeHdRa2xKQ1FkNFZoQjBqZmIwcnc3b0ZF?=
 =?utf-8?B?SG1mSUJsbVpUWVhZd0N5V1BFVTJlVzVqQXV5QUNjbnYvVEJsa0xKK051RVUx?=
 =?utf-8?B?dVF6NWJwclEwa3d2UmM5aTludENGSVBqSElsb2hUQXNaOFQwa2ZIZEU1VTlL?=
 =?utf-8?B?Q3dFelZBektEZlF4bUFUc1d6eXUzczJaZkFMZkhzNUFicHQxaWYyUkN6Y1VQ?=
 =?utf-8?B?TkRHZU5vdmlqa3BMU3NGT3FaZmJoRkx3anE0YzIyYVRyNll0WDJ2dExTcTc1?=
 =?utf-8?B?MXYvQ0FFVXZlb0xJWFc5TzBxamFHd2Jtd3g1NHJJRVB5ZmJJTzVlc3Z2WW1Z?=
 =?utf-8?B?SEl2UTZyMXhPZDdiR2dkTWVrUHJncGl2UlFReGwrNitNbnhSSzRpdFdwYTcr?=
 =?utf-8?B?a3pISXdVVmhqcDBxTjM0R2phWDE0Ym4xdytiV3haUDZrbm02S2xzZGp1VmVt?=
 =?utf-8?B?KzZMYVdvU3d4ckF5WExLaTlEczhjNHFCUkZDczF4REw2MnFIMVpLaGVCNmR0?=
 =?utf-8?B?STduQ056cU1oSDlvK2tKTE1iWldLN2RMYzQwZzlCeEJvQVhMTEgxS2xQN3l6?=
 =?utf-8?B?UEVWVzdnRm5hUERKSjRQUE8yUXhUKy9meFFKSUJHZXZLM2I0MSt0MStWR1Np?=
 =?utf-8?B?eUhXRHQ0WXFYVmNoRU5LRG5LdDlhWFpDMUZiSFVLazlNNnJZVXJZaWY3L0Z1?=
 =?utf-8?B?RDNwTHI3SHV5NGFYUGoyb3M1aUtSSjJsMTJBS3h0Si92aUt1c3I4UzJKZTFL?=
 =?utf-8?B?anFVUXFqUWlOWTRlNmgzYkt2bk80UVE2ajJ6dUluZkFvWVNDa3hyNUx1NlpT?=
 =?utf-8?B?bzNpRW9hemNNMHRMZFpqTGRtZXp2KzhMdEZnNnRmS1Q1b3VpL2x5ZFFlNjlP?=
 =?utf-8?B?c3VNejhCQlZsNDY1empBaHJNRStiR2VpZ0Z1OTB6VndicEthbG5NSjN2NC84?=
 =?utf-8?B?THNKRE42Z2tOVGZCTEJYZTJpUlNQNnYzQlBWUW90dWRPRFlrZzl3SlIrN1dO?=
 =?utf-8?B?N3FTdFYzWHFaOFJMVmx5M2M1UjNIY01CWjUwN1BUelJHd3VOQ0FlY0lKSG9H?=
 =?utf-8?B?TW1lb0JGLzROd0s2eWROOG5ROExFaXJGSEpBRW5ZVTZnWlpjY2VIcVhmczNJ?=
 =?utf-8?B?Y3ZHcHlxSlBOekF4L2o2dm55NUlybnlhVWpJM1NyREczc1BkazF6aGZ4OVFN?=
 =?utf-8?B?blhzTDlsVmhNRndXU3NJQ0xlVUFRZ2t6OTJ1UWliRlFuQUVnaFRpTVVFdmxQ?=
 =?utf-8?B?eXpxNG0vUCtmdUpYeVdyWHJyR2xwRWZvZ0cyM2pIOURQR2NyT0UvczYwS0g1?=
 =?utf-8?B?ZFhzR3lRWlVjWGF0QzRQa3RuaTB6d0NWK0xvWTZ2ajkvOUZLamgyc2dKd3R1?=
 =?utf-8?B?bTV0S3FCNkZSbzNJWXJ2bDJZR3FDUzNGU0FKZWhoNkxLRzNiSkk1T3lrZDIz?=
 =?utf-8?Q?PuwMpzqG2Aes0r8pGOp0dqDTu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31472e17-da4b-4423-b90c-08de2832328d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2025 12:41:59.3407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F5L7Q1adDVgWj2EMe47gx7OyBJoMzCx9LExMiuSLiSmEwTPOJ+CPv7zETUlJttLzz8Icmn+qu9P4mrLINogZgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8180
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSb3BlciwgTWF0dGhldyBEIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIDE5IE5vdmVtYmVy
IDIwMjUgMjAuMTINCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0K
PiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMDAvMzJdIGRybS9pOTE1L2N4
MDogQWRkIE1UTCsgcGxhdGZvcm1zIHRvIHN1cHBvcnQgZHBsbCBmcmFtZXdvcmsNCj4gDQo+IE9u
IFdlZCwgTm92IDE5LCAyMDI1IGF0IDExOjU5OjQ5QU0gKzAwMDAsIEthaG9sYSwgTWlrYSB3cm90
ZToNCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBLYWhvbGEs
IE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiA+IFNlbnQ6IE1vbmRheSwgMTcgTm92
ZW1iZXIgMjAyNSAxMi40Ng0KPiA+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IEthaG9sYSwgTWlr
YSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gU3ViamVjdDogW1BBVENIIHYyIDAwLzMy
XSBkcm0vaTkxNS9jeDA6IEFkZCBNVEwrIHBsYXRmb3JtcyB0bw0KPiA+ID4gc3VwcG9ydCBkcGxs
IGZyYW1ld29yaw0KPiA+ID4NCj4gPiA+IFRoaXMgaXMgdjIgb2YgWzFdLCB3aXRoIHRoZSBmb2xs
b3dpbmcgY2hhbmdlcw0KPiA+ID4NCj4gPiA+IC0gY29tbWl0IG1lc3NhZ2UgdXBkYXRlcw0KPiA+
ID4gLSBVc2Ugb2YgQlVJTERfQlVHT04oKSB3aGVyZXZlciBwb3NzaWJsZSBpbnN0ZWFkIG9mIFdB
Uk5fT04oKQ0KPiA+ID4NCj4gPiA+IFsxXQ0KPiA+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
aW50ZWwtZ2Z4LzIwMjUxMDMxMTAzNTQ5LjE3MzIwOC0xLW1pa2Eua2Fob2wNCj4gPiA+IGFAaW50
ZWwuY29tLw0KPiA+DQo+ID4gVGhpcyBwbGwgcmVmYWN0b3Jpbmcgc2VyaWVzIGlzIG5vdyBtZXJn
ZWQuIFRoYW5rIHlvdSwgU3VyYWosIGZvciB0YWtpbmcgdGltZSBhbmQgZWZmb3J0IHRvIHJldmll
dyB0aGlzIGJpZyBzZXJpZXMuDQo+IA0KPiBJdCBsb29rcyBsaWtlIFhlLkNJLkZ1bGwgcmVwb3J0
ZWQgc29tZSBCTUcgZHJpdmVyIGxvYWQgd2FybmluZ3MgdGhhdCBtYXkgaGF2ZSBiZWVuIG92ZXJs
b29rZWQ6DQo+IA0KPiAgIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8xNzYzMzg2MTg0MDku
MjAzOC4xNDA4ODk5MTIzODgxNTEyMTQ5M0BhM2IwMTg5OTBmZTkvDQo+IA0KPiBOb3cgdGhhdCB0
aGlzIGhhcyBiZWVuIG1lcmdlZCwgdGhvc2Ugc2FtZSBkcml2ZXIgbG9hZCBpc3N1ZXMgYXJlIHN0
YXJ0aW5nIHRvIHNob3cgdXAgb24gcHJlbWVyZ2UgQ0kgZm9yIG90aGVyIHNlcmllcy4gIENhbg0K
PiB5b3UgdGFrZSBhIGxvb2s/DQoNCldlIG5vdGljZWQgdGhhdCBhcyB3ZWxsLiBJdCB3YXMgbXkg
YmFkIGFzIGV2ZW4gdGhlIENJIGxvb2tlZCBncmVlbiwgSSBkaWRuJ3QgY2hlY2sgdGhhdCBhY3R1
YWwgcmVzdWx0cyBhbnkgZnVydGhlci4gQW55d2F5LCAgSW1yZSBoYXMgYWxyZWFkeSBhIGZpeCBm
b3IgdGhpcw0KDQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE1Nzgy
NC8NCg0KLU1pa2EtDQoNCj4gDQo+IA0KPiBNYXR0DQo+IA0KPiA+DQo+ID4gLU1pa2EtDQo+ID4N
Cj4gPiA+DQo+ID4gPiBJbXJlIERlYWsgKDE1KToNCj4gPiA+ICAgZHJtL2k5MTUvY3gwOiBGYWN0
b3Igb3V0IEMxMCBtc2didXMgYWNjZXNzIHN0YXJ0L2VuZCBoZWxwZXJzDQo+ID4gPiAgIGRybS9p
OTE1L2N4MDogU2FuaXRpemUgc2V0dGluZyB0aGUgQ3gwIFBMTCB1c2VfYzEwIGZsYWcNCj4gPiA+
ICAgZHJtL2k5MTUvY3gwOiBTYW5pdGl6ZSBjYWxjdWxhdGluZyBDMjAgUExMIHN0YXRlIGZyb20g
dGFibGVzDQo+ID4gPiAgIGRybS9pOTE1L2N4MDogVHJhY2sgdGhlIEMyMCBQSFkgVkRSIHN0YXRl
IGluIHRoZSBQTEwgc3RhdGUNCj4gPiA+ICAgZHJtL2k5MTUvY3gwOiBNb3ZlIGRlZmluaXRpb24g
b2YgQ3gwIFBIWSBmdW5jdGlvbnMgZWFybGllcg0KPiA+ID4gICBkcm0vaTkxNS9jeDA6IEFkZCBt
YWNybyB0byBnZXQgRERJIHBvcnQgd2lkdGggZnJvbSBhIHJlZ2lzdGVyIHZhbHVlDQo+ID4gPiAg
IGRybS9pOTE1L2N4MDogVHJhY2sgdGhlIEN4MCBQSFkgZW5hYmxlZCBsYW5lIGNvdW50IGluIHRo
ZSBQTEwgc3RhdGUNCj4gPiA+ICAgZHJtL2k5MTUvY3gwOiBTYW5pdGl6ZSBDMTAgUEhZIFBMTCBT
U0MgcmVnaXN0ZXIgc2V0dXANCj4gPiA+ICAgZHJtL2k5MTUvY3gwOiBSZWFkIG91dCB0aGUgQ3gw
IFBIWSBTU0MgZW5hYmxlZCBzdGF0ZQ0KPiA+ID4gICBkcm0vaTkxNS9jeDA6IERldGVybWluZSBD
eDAgUExMIERQIG1vZGUgZnJvbSBQTEwgc3RhdGUNCj4gPiA+ICAgZHJtL2k5MTUvY3gwOiBEZXRl
cm1pbmUgQ3gwIFBMTCBwb3J0IGNsb2NrIGZyb20gUExMIHN0YXRlDQo+ID4gPiAgIGRybS9pOTE1
L2N4MDogWmVybyBDeDAgUExMIHN0YXRlIGJlZm9yZSBjb21wdXRlIGFuZCBIVyByZWFkb3V0DQo+
ID4gPiAgIGRybS9pOTE1L2N4MDogUHJpbnQgYWRkaXRpb25hbCBDeDAgUExMIEhXIHN0YXRlDQo+
ID4gPiAgIGRybS9pOTE1L2N4MDogUExMIHZlcmlmeSBkZWJ1ZyBzdGF0ZSBwcmludA0KPiA+ID4g
ICBkcm0vaTkxNS9jeDA6IEFkZCBNVEwrIFRodW5kZXJib2x0IFBMTCBob29rcw0KPiA+ID4NCj4g
PiA+IE1pa2EgS2Fob2xhICgxNyk6DQo+ID4gPiAgIGRybS9pOTE1L2N4MDogUmVuYW1lIFRCVCBm
dW5jdGlvbnMgdG8gYmUgSUNMIHNwZWNpZmljDQo+ID4gPiAgIGRybS9pOTE1L2N4MDogUmVtb3Zl
IHN0YXRlIHZlcmlmaWNhdGlvbg0KPiA+ID4gICBkcm0vaTkxNS9jeDA6IEFkZCBQTEwgaW5mb3Jt
YXRpb24gZm9yIE1UTCsNCj4gPiA+ICAgZHJtL2k5MTUvY3gwOiBVcGRhdGUgQzEwL0MyMCBzdGF0
ZSBjYWxjdWxhdGlvbg0KPiA+ID4gICBkcm0vaTkxNS9jeDA6IENvbXB1dGUgcGxscyBmb3IgTVRM
KyBwbGF0Zm9ybQ0KPiA+ID4gICBkcm0vaTkxNS9jeDA6IEFkZCBNVEwrIC5nZXRfZHBsbHMgaG9v
aw0KPiA+ID4gICBkcm0vaTkxNS9jeDA6IEFkZCBNVEwrIC5wdXRfZHBsbHMgaG9vaw0KPiA+ID4g
ICBkcm0vaTkxNS9jeDA6IEFkZCBNVEwrIC51cGRhdGVfYWN0aXZlX2RwbGwgaG9vaw0KPiA+ID4g
ICBkcm0vaTkxNS9jeDA6IEFkZCBNVEwrIC51cGRhdGVfZHBsbF9yZWZfY2xrcyBob29rDQo+ID4g
PiAgIGRybS9pOTE1L2N4MDogQWRkIE1UTCsgLmR1bXBfaHdfc3RhdGUgaG9vaw0KPiA+ID4gICBk
cm0vaTkxNS9jeDA6IEFkZCAuY29tcGFyZV9od19zdGF0ZSBob29rDQo+ID4gPiAgIGRybS9pOTE1
L2N4MDogQWRkIE1UTCsgLmdldF9od19zdGF0ZSBob29rDQo+ID4gPiAgIGRybS9pOTE1L2N4MDog
QWRkIE1UTCsgLmdldF9mcmVxIGhvb2sNCj4gPiA+ICAgZHJtL2k5MTUvY3gwOiBBZGQgTVRMKyAu
Y3J0Y19nZXRfZHBsbCBob29rDQo+ID4gPiAgIGRybS9pOTE1L2N4MDogQWRkIE1UTCsgLmVuYWJs
ZV9jbG9jay8uZGlzYWJsZSBjbG9jayBob29rcyBvbiBEREkNCj4gPiA+ICAgZHJtL2k5MTUvY3gw
OiBHZXQgZW5jb2RlciBjb25maWd1cmF0aW9uIGZvciBDMTAgYW5kIEMyMCBQSFkgUExMcw0KPiA+
ID4gICBkcm0vaTkxNS9jeDA6IEVuYWJsZSBkcGxsIGZyYW1ld29yayBmb3IgTVRMKw0KPiA+ID4N
Cj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyAgfCA4
NzANCj4gPiA+ICsrKysrKysrKystLS0tLS0tLSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jeDBfcGh5LmggIHwNCj4gPiA+IDI5ICstDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgIDg3ICstDQo+ID4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDMwIC0NCj4gPiA+ICAuLi4v
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmggfCAgIDcgKy0NCj4gPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGwuYyAgICAgfCAgMjQgKy0N
Cj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCAz
MTUgKysrKysrLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBs
bF9tZ3IuaCB8ICAgNyArDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9sdF9waHkuYyAgIHwgICA0ICstDQo+ID4gPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
bW9kZXNldF92ZXJpZnkuYyAgIHwgICAxIC0NCj4gPiA+ICAxMCBmaWxlcyBjaGFuZ2VkLCA4OTMg
aW5zZXJ0aW9ucygrKSwgNDgxIGRlbGV0aW9ucygtKQ0KPiA+ID4NCj4gPiA+IC0tDQo+ID4gPiAy
LjM0LjENCj4gPg0KPiANCj4gLS0NCj4gTWF0dCBSb3Blcg0KPiBHcmFwaGljcyBTb2Z0d2FyZSBF
bmdpbmVlcg0KPiBMaW51eCBHUFUgUGxhdGZvcm0gRW5hYmxlbWVudA0KPiBJbnRlbCBDb3Jwb3Jh
dGlvbg0K
