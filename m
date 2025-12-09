Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DFFCB0119
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 14:34:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDBEC10E59B;
	Tue,  9 Dec 2025 13:34:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k8SeGFmU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797C810E59B;
 Tue,  9 Dec 2025 13:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765287279; x=1796823279;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Jb8kSbB6ds6/yqg3FYz8FKoy+HTANSBSDZ6BHrS8/fo=;
 b=k8SeGFmURqikPpMNxps6hrlUZtNHFFKTWfki5CezE5aN3nFSPVZn4iFT
 uDpDNeOnZruLBAgjxmbGssTOp4uqePhX5aK8YvHzgvG85qF/U8MX3YkV2
 KFTmm7xGlFMQDcw67RuV000VoNa19m6/zLobMYMNebvwZTCd+CYfxB2V9
 K6b0ObXlf81IkK0dt7/rIiy6ALyhUD/OHFrQ0OWp9qofQW3VBPO4jwKZY
 iOwdkgL3Ys6RFqVc0jI9p9bpZ1TVUOOwRfaiBZNw1IBA66xD0/fHOwE1t
 I5Y7FSgVaIIwU5d8zDmCn+WbBrvkoHF0U9NkUjjFPr28tP4jfFUe9neDF Q==;
X-CSE-ConnectionGUID: 1FdTX5ZDQzevuV4pz0TYkw==
X-CSE-MsgGUID: F/XxbV9tSlKXiq5JBFYzRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="69833323"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="69833323"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 05:34:39 -0800
X-CSE-ConnectionGUID: mGuuv0aIQ0mG06kgUhwnKQ==
X-CSE-MsgGUID: FsU1tGcURFSMsyrAenSPCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196230058"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 05:34:38 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 05:34:38 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 05:34:38 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.71) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 05:34:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=klN4jvRzrFZ+xaoU2PGvrvjHpmGikuuHGx3zC0EWJgBBNFWJQZhuWAJ9IKpxMxIuV0iJSY/GwwQHrxilN4OY1gQ3jgyQ0Y7AYrizK2N9P7SxLYY1tz6ts3KCWudlfP/kDNmHeqKa0bUpUtceZR2TIxYBJoPBHyyYt4u8FurRBWU8Lfjqa+oeaGo7Z3g7wOScP1hLacAPuRr+9nLD7miTp0F5qZ12Ohwp+/H4oDn9SMlFAIXG18FHyg/9maVNXe4OVc5NjDQi0f7IFwMOXa1UTbaKEMmlZwa+AifY/2HBDTxZvIR9am4Hj42R5oRcIsV15AC3H/fJzB4VUke5LlQ92A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jb8kSbB6ds6/yqg3FYz8FKoy+HTANSBSDZ6BHrS8/fo=;
 b=MI3neyo9yMeV2bFMaR9Oq+4qLbNRFaV4BSmtwAco20lg2J0Nh6v3/fv0Xir9R70o2RQiJBFXRA+Me0mjSd1TZqokdRFTukD+pkWIBX33cuuvQuOgdgU2pDACMR1EMHHoatG6+sPc5w3AN7LNemD2ca7C3xaEZ7YYwApW4+yvFSwsEPjLaVVZpedT/vbfklwgQdGBbhzD4uJlNi9XwouF2L3YZPRY0ojWGBbr6CqbnbqTNBiJcreRLr09havq3seTuIPhG7b661ifCiAvYhyS1trR0UIp/cvsCjG+NY0dSvJtZnLk8ORd66yyzJuJpaai+He9RKMck57zqmocrp4T9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH7PR11MB6859.namprd11.prod.outlook.com (2603:10b6:510:1ef::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 13:34:36 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 13:34:36 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/4] drm/xe/stolen: unify interface with i915
Thread-Topic: [PATCH v2 2/4] drm/xe/stolen: unify interface with i915
Thread-Index: AQHcZdJHbsIQzTBKJ06vWbRabjEzZrUZVXcA
Date: Tue, 9 Dec 2025 13:34:36 +0000
Message-ID: <decb2d150020bb8514374477ab598eb950dc117d.camel@intel.com>
References: <cover.1764930576.git.jani.nikula@intel.com>
 <e1ae0c5d3cc6f59d6e4f4ce810a6e9b3870109f8.1764930576.git.jani.nikula@intel.com>
In-Reply-To: <e1ae0c5d3cc6f59d6e4f4ce810a6e9b3870109f8.1764930576.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH7PR11MB6859:EE_
x-ms-office365-filtering-correlation-id: fc7fca6a-7183-4402-dcea-08de3727b203
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?SGI5UkdZekdGYlBtdUpLUklzOG9NVDQ0VlRYbGZtRkNNRi83L3dFZFdJcElx?=
 =?utf-8?B?SjhtYksvcUtES2pxUi9wSlpRSXQwYzBBeFh5cGNOM05uc0laNEE4azcydUlR?=
 =?utf-8?B?dkxoYVh5SkdaMkVBSmNsMUI2NW9XL1NCM2JmQ3EzV1ozTHRwN0oxaW1MMUsz?=
 =?utf-8?B?VUw5ZUtoSzdhcXBxaVFXZEVUdUNFdjc0OWpNQWl0eVhaYXdVS2c2QU1Uc1A3?=
 =?utf-8?B?MDJMWTV4QmphYkxKeW5DYlhOSzJoSXU1NHBkNkdEeFVBakZOYVk3dTZEZkh2?=
 =?utf-8?B?VGRSOHpudVQ0c2Nkd1VEajJJbWN1cWVqVjJ5a2Ura2wwVU55c2E5SU5lNHdK?=
 =?utf-8?B?TjR5R0w5WTB3ZFp0MTkwWGpTZTIxZEZJdUZ2WURpMEFJVGVqMS9DZHlqeVZN?=
 =?utf-8?B?S2ZlOWJaeUdOeEVLS0EyWG96UiticXZ2YUhrayszMlVIK01pV1JqZWMvaitT?=
 =?utf-8?B?VWVqSU1yOFJENThpZW9JOFNNcmk1RlRTSTJnTllNL2M1d09NNFhFR3JpSTZN?=
 =?utf-8?B?L21uNnpicVJ1bE1yRHU0ZVRyZWg4MDFkVzFSVjVTQjBQUy84L09VVWs0VEVC?=
 =?utf-8?B?ZXVxb1Y5VVpIeHBTMGJpZTB4alh4MkNkSTZJZUx6eW9qaGhFU2QyeXVDMk56?=
 =?utf-8?B?SE5GaDRkY2lmcmY5b1htZjNTbEpPemJYbkIyUi81UUlQQ1JRV1pJRnpNdlZZ?=
 =?utf-8?B?QitJYUFkQk85Qk52Mm5MZzFyZmMzcjcxQ2NHM0gxV2NIU29kNUtjcTdSdTJE?=
 =?utf-8?B?WmgxdEdGSUp2cG42WGVIL1dBNHptTzM3NUpzQXB3T1VMVTBUT0dXNUM1VWZR?=
 =?utf-8?B?LzkrR0twKzBHV0hKVCtYdjdpR1h4b2VicjB1L2MwaW5UNm5IR2hhTVZrUkt0?=
 =?utf-8?B?eU1Za29pbG12QXFHNUkrUEttMnZReXdneWFXZFI3a3RLZDFPQlpzcTdXUzJn?=
 =?utf-8?B?aVlvZnc3Q0UrL1ZRWncrRlBuN0VOMnZlMlRVVWxDWGkrRXU1MWhVa0dSNXp0?=
 =?utf-8?B?OFl6aG5WLy9RM1o3TXgwRVBwTHB1L0Vjd01MWXFrUWFXWmc4MzJtMW50UnVk?=
 =?utf-8?B?cDVsNUp4UmxYUC9KVHFoQVFzdUh2Zy9Fd3V2TUNXeXpmOEs5Q2hPVlVDK0pU?=
 =?utf-8?B?R3JpSHM2UllMUE9rMkQ1N2R6ZXRNbjZYUmtvQnpkb1JzMUJqUURPOXpjQmNz?=
 =?utf-8?B?WHF5Q1NSV0w2L0dkcDBaRlk0NzkzYVU4anlLeStLd0lRLzhKTVZrTTlCc2sx?=
 =?utf-8?B?NHBFVkVYOXg2ZVJhbFc0M2RIcnk4RkNZV1habEN1RytrdGYxVi9GUnVJQjJh?=
 =?utf-8?B?SytLNkl0dWdHQ1kxYmZheHFQMHBFV0NHdFRWRXN0bWhpaFR1ak9tcTNNWktE?=
 =?utf-8?B?RVdLM2Ezdk5PTC9SbmpheUhMTWUwaVpFLzlkWkNmeS9RTVhuYkJRSGYvOUxI?=
 =?utf-8?B?VlhMQUh6Y1RvVVJIcXR6RWQzdEZKWjl5K3dSS1BKc3FXMmNwTWdFaGtNbFUw?=
 =?utf-8?B?SUp4aWJiSDNpaXV4dVQ1NE0yVVJ4VGZscGpqRnVneSsrYmxqWWFBSmdLelI4?=
 =?utf-8?B?YTJVc2JraU9EeDZiN1h0UzE1YUtHZWNkTUZjNEFuZUpicnlZaFRwVzM1Nkpr?=
 =?utf-8?B?UHA2RUFTMWVGM3JvUU9ySHBHNHVvcEdRQTlLM3V3SERWTklXcTMwL0c4OUxE?=
 =?utf-8?B?SjJzZFBHRjQwQmxKVzRFc1R6a0YwZVdkTG5KeGdQY0pIakVPQStkVGhKWkto?=
 =?utf-8?B?Wk5EVWdCdlRRRTEyTmMxcUphTEo1azhpbS9kN0FjdmFJNmd3MGNMdmRyU3By?=
 =?utf-8?B?cUxSWmZIVTFwQU8xQi93YzNFN2dSbmlPSVpLbk51SmhaMFU0Y0tFWjRUMWMx?=
 =?utf-8?B?Q1NORjJ4SnVIZ0Y4cy9ZRU0rWWVZTE5vK1lWcWRMRlc5SnhIUlpZQzdVZU82?=
 =?utf-8?B?VkI1bWZveVM3MWt4Y0hsODRDdEJRZnVTUEc1UzQwc25uL21LcHJWeWNjd013?=
 =?utf-8?B?Qm0wM3hkbTB3S0p5bkM2Q2Z4WVlKeFJBU2VCUTNjVVNaUXFhVWpFZzBvUjEv?=
 =?utf-8?Q?upC6y6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnNSeTY2eTA0Wi8rd2hsU2pSc2pIZ1ZLNEhHTG9oeWk2ck82VXJpYTZmd005?=
 =?utf-8?B?SXNOMCtERTJZQmZsWTF4VWZPNVc4MjhaMHBsUVovTTBNbWxwazBwZ2hmL09k?=
 =?utf-8?B?UUZ1K09EQ2FOTUNxM3pRbkd2MGxCTVlvYjdoNFFScklJVFJ1eldEM2g3N0Fl?=
 =?utf-8?B?L0hCZW4yQWpVRnpMdEpIQ245UXE4N25SbVdzalJORzc2Ris4aUYzeGRhUlVH?=
 =?utf-8?B?SkJXTi82cnA5UFJYbWh6bFd2K1UwSGhkRERDdHZ2eG9CMkM5UzJxaEtwbEFp?=
 =?utf-8?B?M3BqQWJPVE5pc1gwMWxOaG0yUEE4Mm93V004NlFCRzlTbDIva01RN1ZrTG0y?=
 =?utf-8?B?MWFTVkNHbmpmN1BPcTZ0TzNqdFNtSXhOWlExUmlYM1JnZFVUblBhazViNmR6?=
 =?utf-8?B?bU95YzNjQkVnQXpiM1VyZ05XOFdRR2tMMDd1NTVxdzdqNitVYXRLM0VrMm5p?=
 =?utf-8?B?UXBySzUrbkM0TGZoOVBScWowTGlXdCthVnhMM3E1enZ4bm1LbVlYZzVscFJY?=
 =?utf-8?B?MFdpOTZvSUhoa29oY09zQnZMUDcwZHJSMnZLK2FnSHhkS2M4NDBtblpRZm9m?=
 =?utf-8?B?VHdYM1pLOUJjQTNDak9JdHhMTnFLM0k2KzJhbHlMc1BOZEdwNDNmTitFdisy?=
 =?utf-8?B?a2dXMU02aDVoL3hhYkdzY1QrZW8wRXN5OFhFZVJ3K054OExCRDZ4cTd3d2NP?=
 =?utf-8?B?NG03NkhQK1pqVlNDSEJqcEVVUjliQXJrS28zVWNYYmpCN3JaelliSUNWeWZ2?=
 =?utf-8?B?bTkwODFnN0ZzYytNb0FkWGJjUmtsQnN5MitxVUNreWp6VDdRNzI5NFNqOXZM?=
 =?utf-8?B?WDBJa2hlUm9UWnZPcmErYkZ3TVBNOXpDN055ZUdjVVhZdWpXZDBpalJBZkFW?=
 =?utf-8?B?MUZuaGZGNDVnNEF4c01UdktSZHpScFR1SCs3QUhqYStiRkxXZ2psY1lNNHpr?=
 =?utf-8?B?SCtCY3lYR3Zib0FDYU45OHBjUHpzd2N5aGM1VFkxNkliM0tlVFhLZHJwV0kw?=
 =?utf-8?B?eFpPT1VrSWRwS2t0Nmx6T1BDaGpWQ0FpNWR3cEh4bklkTDhSaWZRd290bU5z?=
 =?utf-8?B?YmVMZnBXQnIxVWlWODFDbnhmeGJlNDFkMTFDZjk1M0ZBQjY4N09PUVRVWTZJ?=
 =?utf-8?B?MzRjbzVsSVFFVElIUWFlVGRVRmJrbXVZSEtNMzdyK3UvT1ZzN2J2cGNZYkZB?=
 =?utf-8?B?VFdaQ0hjamd4NjRFVVNEMTZ3UW5qUXlTL2RmQzJkRkRoRlgxSkNja1RlU0Nw?=
 =?utf-8?B?TkJTaWF5RVFzQVVuWkZodEdUQ3VpVVorVWZJeDJsYXZJQTltQVhWTUtLQlBy?=
 =?utf-8?B?ZFgxczdMZEFnK0RJc1IvcE9hbERCTzhHK2hiUjZpTDQ4MUFYUURwTVE2SzJY?=
 =?utf-8?B?ZmxjVW1Bc2lYWko3ZjJvRWJOSUhZZnR5Umw0N2xCc09QS1l5bXNuU052QzRC?=
 =?utf-8?B?U0hjWm1qemtWK2dyL2dhZkJqcmRtTllHSi92VWp4T2luRUZMOVdvc1NCdnlu?=
 =?utf-8?B?WHBUcHMzWUxiSjdLRGVYL2VMVTA1Y2FpN21ydzd6SWU2VFNFYmFZNHhBYkN0?=
 =?utf-8?B?MjRFVmNnK3FOeGdZTkxrNU5reWFJUExoa0RYelNGSjFqaXVnc2JLZCsvWWFr?=
 =?utf-8?B?RlAyQ2ZiQnR5RDFTdnhNZjEzY0xVbmdyWkJCVTkweDJQZnNJa3cyWG45bEVO?=
 =?utf-8?B?T29oSk41ckF5ZWVnUFh1c1ErSWZwbVUxQWp5Y01ZMk1lOGRxZWlKZDQwOUNu?=
 =?utf-8?B?dEwwNTdOelhZMFRYMkpMYWx3UkdtK3JNQXFBc1laTXhPNVVHYlRYYjBsUnlt?=
 =?utf-8?B?a1lTcE1JK1FqMjV4YzlVSFFQNGtnSkgyUU5BVHQ4WWhqVjM0S3RKdWNUSWJx?=
 =?utf-8?B?QkVmWFBHVmM4NVFjYmlVM21SR2c4Qk9tT282elpRcGdIR2VXR3drNy9VSTNV?=
 =?utf-8?B?Z1YvVTFzOU15TmJvdW0vSC9nY0d0MEtDSG55Sk1ja2ZyOVpmT0djdHk1ZE1B?=
 =?utf-8?B?OUNRQ0JoZmxyQXZvWGxLcTBmeUNVZDdIeDFxRGhGQmtoR3lpOWNJYlY0eTB2?=
 =?utf-8?B?NzhRdCtRZit5ei9wUjBVN1JOcVBwSjA3MjdhR05kTTk4bDg2SVBEN3k0ZlU3?=
 =?utf-8?B?RVZpZWkvK2JaWitYVGx3VGJhenkwWlZSWnlrQmdWbnErNDFWWkdtcTBkcFJV?=
 =?utf-8?B?ZGxlTU9jU1RvcXZYTE5GVE5ISW9NVDlPOU9nazhBSHFta29BOE92REJ3QkZG?=
 =?utf-8?Q?fqg83YDanAPlH9+Bcilic8MgDCc5hiESNY6aWr2baE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8FDE611F956AE44BAA5550B0F35D168B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc7fca6a-7183-4402-dcea-08de3727b203
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 13:34:36.2389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qeLSLI3YOzlFH+M/ISgI+bjvKDDHGtr0MNu01b7wi+Oy6mXa+mfJi+9QC1LsabSFDJwcxKW2+axPRfb+tv5rrzfwh87h9q7iwowCO+y29FU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6859
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

T24gRnJpLCAyMDI1LTEyLTA1IGF0IDEyOjMwICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
SGF2ZSBpOTE1X2dlbV9zdG9sZW5fbm9kZV9vZmZzZXQoKSByZXR1cm4gdTY0LCBhbmQgcGFzcyBj
b25zdCBwb2ludGVyDQo+IHRvDQo+IHRoZW0uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0v
eGUvY29tcGF0LWk5MTUtaGVhZGVycy9nZW0vaTkxNV9nZW1fc3RvbGVuLmggfCA0ICsrLQ0KPiAt
DQo+IMKgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfc3RvbGVuLmPCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDQgKystDQo+IC0NCj4gwqAyIGZpbGVz
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCg0KUmV2aWV3ZWQtYnk6
IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL2NvbXBhdC1pOTE1LQ0KPiBoZWFk
ZXJzL2dlbS9pOTE1X2dlbV9zdG9sZW4uaCBiL2RyaXZlcnMvZ3B1L2RybS94ZS9jb21wYXQtaTkx
NS0NCj4gaGVhZGVycy9nZW0vaTkxNV9nZW1fc3RvbGVuLmgNCj4gaW5kZXggNDhlMzI1NmJhMzdl
Li4zNjgwNDVhNDcwZDEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9jb21wYXQt
aTkxNS1oZWFkZXJzL2dlbS9pOTE1X2dlbV9zdG9sZW4uaA0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0veGUvY29tcGF0LWk5MTUtaGVhZGVycy9nZW0vaTkxNV9nZW1fc3RvbGVuLmgNCj4gQEAgLTIz
LDEzICsyMywxMyBAQCBib29sIGk5MTVfZ2VtX3N0b2xlbl9pbml0aWFsaXplZChzdHJ1Y3QNCj4g
ZHJtX2RldmljZSAqZHJtKTsNCj4gwqANCj4gwqBib29sIGk5MTVfZ2VtX3N0b2xlbl9ub2RlX2Fs
bG9jYXRlZChjb25zdCBzdHJ1Y3QgaW50ZWxfc3RvbGVuX25vZGUNCj4gKm5vZGUpOw0KPiDCoA0K
PiAtdTMyIGk5MTVfZ2VtX3N0b2xlbl9ub2RlX29mZnNldChzdHJ1Y3QgaW50ZWxfc3RvbGVuX25v
ZGUgKm5vZGUpOw0KPiArdTY0IGk5MTVfZ2VtX3N0b2xlbl9ub2RlX29mZnNldChjb25zdCBzdHJ1
Y3QgaW50ZWxfc3RvbGVuX25vZGUNCj4gKm5vZGUpOw0KPiDCoA0KPiDCoHU2NCBpOTE1X2dlbV9z
dG9sZW5fYXJlYV9hZGRyZXNzKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0pOw0KPiDCoA0KPiDCoHU2
NCBpOTE1X2dlbV9zdG9sZW5fYXJlYV9zaXplKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0pOw0KPiDC
oA0KPiAtdTY0IGk5MTVfZ2VtX3N0b2xlbl9ub2RlX2FkZHJlc3Moc3RydWN0IGludGVsX3N0b2xl
bl9ub2RlICpub2RlKTsNCj4gK3U2NCBpOTE1X2dlbV9zdG9sZW5fbm9kZV9hZGRyZXNzKGNvbnN0
IHN0cnVjdCBpbnRlbF9zdG9sZW5fbm9kZQ0KPiAqbm9kZSk7DQo+IMKgDQo+IMKgdTY0IGk5MTVf
Z2VtX3N0b2xlbl9ub2RlX3NpemUoY29uc3Qgc3RydWN0IGludGVsX3N0b2xlbl9ub2RlICpub2Rl
KTsNCj4gwqANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX3N0
b2xlbi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfc3RvbGVuLmMNCj4gaW5k
ZXggOWYwNGJhMzZlOTMwLi4zODc1MDY1ODYyODggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS94ZS9kaXNwbGF5L3hlX3N0b2xlbi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS9k
aXNwbGF5L3hlX3N0b2xlbi5jDQo+IEBAIC02Nyw3ICs2Nyw3IEBAIGJvb2wgaTkxNV9nZW1fc3Rv
bGVuX25vZGVfYWxsb2NhdGVkKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9zdG9sZW5fbm9kZSAqbm9k
ZSkNCj4gwqAJcmV0dXJuIG5vZGUtPmJvOw0KPiDCoH0NCj4gwqANCj4gLXUzMiBpOTE1X2dlbV9z
dG9sZW5fbm9kZV9vZmZzZXQoc3RydWN0IGludGVsX3N0b2xlbl9ub2RlICpub2RlKQ0KPiArdTY0
IGk5MTVfZ2VtX3N0b2xlbl9ub2RlX29mZnNldChjb25zdCBzdHJ1Y3QgaW50ZWxfc3RvbGVuX25v
ZGUNCj4gKm5vZGUpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgeGVfcmVzX2N1cnNvciByZXM7DQo+IMKg
DQo+IEBAIC05MSw3ICs5MSw3IEBAIHU2NCBpOTE1X2dlbV9zdG9sZW5fYXJlYV9zaXplKHN0cnVj
dCBkcm1fZGV2aWNlDQo+ICpkcm0pDQo+IMKgCXJldHVybiAwOw0KPiDCoH0NCj4gwqANCj4gLXU2
NCBpOTE1X2dlbV9zdG9sZW5fbm9kZV9hZGRyZXNzKHN0cnVjdCBpbnRlbF9zdG9sZW5fbm9kZSAq
bm9kZSkNCj4gK3U2NCBpOTE1X2dlbV9zdG9sZW5fbm9kZV9hZGRyZXNzKGNvbnN0IHN0cnVjdCBp
bnRlbF9zdG9sZW5fbm9kZQ0KPiAqbm9kZSkNCj4gwqB7DQo+IMKgCXN0cnVjdCB4ZV9kZXZpY2Ug
KnhlID0gbm9kZS0+eGU7DQo+IMKgDQoNCg==
