Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC52CB8800
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 10:39:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9ACD10E59C;
	Fri, 12 Dec 2025 09:39:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tw2hIf3Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 483BF10E55F;
 Fri, 12 Dec 2025 09:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765532395; x=1797068395;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Cad97QZtu090fn2pM0C6BA8369iEWxG01MxbFRc9H5s=;
 b=Tw2hIf3Z74FA4Wo12ObOpB9OTo2kyqF1bHFI8NpuWV21GYRygK6iQ/5U
 vGR4TcC1XYsMzC4AES4/m6DhjgaF+4p5pmb4s6k4Er3MAtJ5/ofCqkPUp
 IuXEAiAvC+0dHOC9cemZeuFOY85JQNwKIkK5nZuWfDyYO/Ir0Rr3OCljc
 HEiCTgFz142Wt4CWXkOq70wFC0+gyFpYABOcWKfDCxapq3F3mfCjugdPr
 aq9exkUaRFAF7h8gAXe8fijrjqvKmL6KKhwZ6p7pkgc2j4NBlKqr14rB9
 hWN2ok4AC8f4MtWGY/LL1gB0AC3Dxq/EU9QzgAszbcBejdPvp16Rraamf g==;
X-CSE-ConnectionGUID: GKYghAmFTqqlMHpGtQF3kg==
X-CSE-MsgGUID: ekBueRUET3KMbqjxtQlrzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="71365304"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="71365304"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 01:39:55 -0800
X-CSE-ConnectionGUID: iMdZJFtQQYarmvW0PtK4dA==
X-CSE-MsgGUID: s9gFN9HVTF6iSifidfphDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="196949644"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 01:39:55 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 01:39:54 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 01:39:54 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 01:39:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SsF+CJItjIXS/Va2N0YktPEHal7A1+UIRs6niU1u/v3zjBYvALiD9nA6PFAupjSX7IdwEXpacG/GlU5WWg8aPGb6vTybAeE/a1oyDJMKcvCZb8l0c8MxVsQgO4RJY3PH+TF6OF5uWJt9kyJM08bnRfXtHVUYLveLclIJunX82JhG2HIpxRCKfjWCcGwwWdPE7W4Nk1/UWGToXGgWfPtSj2f48YLbOE/TgbfiADunibUp9mjtZ4ZdZDniblA7tZ2z2kQk/eZ4GGj5Uo1EDkA8qy+RTJnmjyHCG8+nzoaMcIW8+mR974ZjsrdUTXqH4S13UFLf3lmmfu0g7CdTkyRzAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cad97QZtu090fn2pM0C6BA8369iEWxG01MxbFRc9H5s=;
 b=Sn71/y6CWCU+pvNf8XU4iBcIVJOtzKfQDgWFjAV2wztVTT/Vol18XnXID7AzVRsjaKpJCOCb3ca3SQHZnKcJJ/sUnqmx+SWftZ3EV11xNEM+D4/J7fXVdV44H7yVX/cvtjnr+kBC98otmdEVAYJtJdgqfewW4vaP9M2y86+FvDJAe5NnJZcWBlPa/dYEl7GkJQeib01ZmE8Rr7Lpl1JITQeL+/r6H/pJUmkHEat1Dd9kc4NpjKm4gvDZHla3IDjIMp+6Yq8QUJgbKq7K43ckbND+yVZ9i/zxkt46TrAzBU08G1h4cqeib6XJPAg4cktMAlMo9qzpex6QKfmbG/t48A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CYYPR11MB8331.namprd11.prod.outlook.com (2603:10b6:930:bd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 09:39:52 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 09:39:51 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 25/50] drm/i915/dp: Factor out
 compute_min_compressed_bpp_x16()
Thread-Topic: [PATCH 25/50] drm/i915/dp: Factor out
 compute_min_compressed_bpp_x16()
Thread-Index: AQHcX8vSXz2yJwwHe0C8eDsDhiezU7Ud1uyA
Date: Fri, 12 Dec 2025 09:39:51 +0000
Message-ID: <276db28877253cbdb285cfed24d81dc00d5dd0bd.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-26-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-26-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CYYPR11MB8331:EE_
x-ms-office365-filtering-correlation-id: a63fbc74-fc2d-4bb7-dc00-08de3962663c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?UHYvcDZoMWRvT1VidEZqOU5YODZnR3VZZjBYM1BmR0lGbE5pWUFVa0l1RUN0?=
 =?utf-8?B?MUhiUGoxL0RyVnE2R3V4QUxkWVA3bDdyQmNsbDN1M3duY0ZnTStVdUcvSk5v?=
 =?utf-8?B?L1d1MU1DWlliR3hoajErSzFUWFprY3BUdThvNWQ5cHU0RURuSmtZNlJNZW9S?=
 =?utf-8?B?TFZYY1M4VHBMNkZXTnpiTi9HMUxXZHJINEFVaFArYm51Rk5YMVpZN01Rd2tL?=
 =?utf-8?B?NjI1TlNNSmlEZjM2bFNNbk56OFkxOWhBcC9aQXdYdXZ4N1plK1Nub3JRSkQ2?=
 =?utf-8?B?UkNubzNkREdpSW1CTW1XWis4WnlURm50NUNqQ0dJQWs2SkNyRWNPV2NBMCt3?=
 =?utf-8?B?VWVHNTJCcWhwdG9VZ1pMdDl6WWtTV3AxMmVxVHNIc0FXVUN5anJjWjI4bXRr?=
 =?utf-8?B?NVcyY1RsTVVIM0VUUFg1bzNra0sxK0JSOE9scDlsbEtHMXNlU1daWmJYbmFm?=
 =?utf-8?B?ZnRUNmV1b1RKTXFVL3lxVnZmWWVTRDlIQ2hXYy92ZUpwd25RRVlUejRHdGR2?=
 =?utf-8?B?MlBPaWZlb29NTjN4TnNTbFhOaXczUlJ2NFFNeHY0MkU1QnZLMlFoNWxRNjRI?=
 =?utf-8?B?UVY2THFKS2JycHNNWStFMnBzdSs2bHM0S3lDZytaN1dyRkdYek12Z0docUlj?=
 =?utf-8?B?UFRWcmtSbUpKQytLMWJURHZnbkNjcmxpdEpxTnB6TFhkam4ybm9zaHgvelBp?=
 =?utf-8?B?NTVjUG15ZTJWZnBsbHBwMFo5R2xia0N0L1lkcmFCNVdVTWVKRGc1dWxSQlZk?=
 =?utf-8?B?RW56Y1lZWTlzTWxRZVJjRTFmblhWNDR5N29MMjZyUWRzQmJmU1dOd256N0Q3?=
 =?utf-8?B?bUMrUUwvUHoyazlhRkFPYkFTL0t1VDl3aTNuaFRDczNSY3Fpd0FhL0t2Z2lR?=
 =?utf-8?B?THk1Ykc5bkxQL2VnV0xhWjhGYjZoaFZsdVlwcUFCZWlieDEzUVpFNG00SHVo?=
 =?utf-8?B?eWM1bkNIVXdVSy9RL2VVRW9ZbzUzZGFVeDZkTkkyK2NOVnJHdGduZXRmUHZT?=
 =?utf-8?B?VzhtcjBHeEdmaHZ3Y0NuRVJsVWFjZE5Vc01uZEZiV0dWSm5ET2laODljeEVn?=
 =?utf-8?B?M0gva0pPR2RaNHU2NFlkdFl5dWx2aWxBL0IwTm5yL3lhRTEzMEY5QWVqbUh4?=
 =?utf-8?B?eGtYSkROQkJmWUFGZ3VGSUVZUk8zYnU2OG15ZnRzamJzMzRiZzlLRzRIN2tt?=
 =?utf-8?B?c3FwUzY3ajdqTkJ5ZWR6Q3RZeVYvR2xvbGJ1NFJSZFJ1NFhjUXNxcnJtaC9O?=
 =?utf-8?B?UXh3L1VTVkM3MjN1V3lKVTI3TjFweGRORE1MMWE5QlIrK2t5SjJUQXU3S2pH?=
 =?utf-8?B?a0FMNitMVjlzM3I1c2dURTJsVnV0b290MGZxbW9MYU0wYS9TbFFZK1dqbTU4?=
 =?utf-8?B?WEo0TXBYY09XWldZcDB6L05PM2MvZURnRW1CSldtSnBEVmk1SnNPK3ozVE92?=
 =?utf-8?B?TVFrMklrSHR0dzZXdjRUVVlFYzQyWHd3bElabkRyNS9Za2U1Q2hzaW1CR3JH?=
 =?utf-8?B?RlNrRkRUUmpJT0dkbnNtakw0dVgzRTFtbCsvTkhraW9RY3JiSTBrWUd2MXg4?=
 =?utf-8?B?T0J3c1B2c2pKS3pNSUtGZmIrUDJIMmhsZWZsTFYvL1JJTTRrYWlXVXdsM0or?=
 =?utf-8?B?a0lNT2tLQUl6Z3RTNUhzbzZWc2VUdE1xWk9FNVh0alhNNlJGZi80WTdtS0c3?=
 =?utf-8?B?VTFCNGlOK05GZThrR3c4bkhIb09nQnhZVmRNdFlXSVQrQ2k4MjFKVXhiU2Jy?=
 =?utf-8?B?eXNtVHJvOXZFYWFxdG4xQ04wWThFL01LbzBDQ1lsMlNic2VyZjRrQ3QwNnh6?=
 =?utf-8?B?NTZxakViZUcyUEs3VjRHUkg2bjkrS0RidlI1djhqbmNpVzJWd2FwelVTakwz?=
 =?utf-8?B?d2NNU1FpUGRhTTV2ZlVMSjZjVnFDRXhMc0tlRDFKS0xaYklBT00vR3FPelFG?=
 =?utf-8?B?b0h0OUVxb3JkZzdaUHNxV3psR25KV3BUVVVIZ3hzSFRWU3F1djRyd3ZJTFo2?=
 =?utf-8?B?anowUGxzaGpQM3p1eG40WGpWamlMbGZHMlJtekpCeGdIYTUwOE5IV3N1c21M?=
 =?utf-8?Q?tdK0y0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bFhMTnBRVmJiMElrcU1tMXZOQ1FJK0VHT0x3SWhuSDBqT0ZFYlNUaExiZi9w?=
 =?utf-8?B?bm5Uc2dqVVJNWGxEcm54SmpmVkhZRE82RUJJY09VSjRLQzMvZmZ5TjdtL0hC?=
 =?utf-8?B?clZaVlFiS3d3Q1N1T0RjWXRYVCtyeWswVkJ1eU5xK3hyN0l2R3pvSWx5T2dh?=
 =?utf-8?B?eWtocEpGemdDQWtaNUlFNkJYdFBmR2F1d1JLSmd3bUhoUlhuWWM4NGE4ZU9G?=
 =?utf-8?B?bG9uWU44SmhqQVdVQzFFM2E2TTBCUlJraDFRWUtHdDUrS1cwd1habUxSWml5?=
 =?utf-8?B?T2g4Z1NxWlVINnp2YnhMeDBSS2Z4bWROem9hVk9XQk9BWXBZSk9FNGhqdmNL?=
 =?utf-8?B?NFpDeEFzVStxYWJlSmRnK0twTDliU1BpZHhYVWZHRjRZM0R1WG5BSXVyZDRp?=
 =?utf-8?B?ZU9tRFNkVnR1SzRrNjNZZ0N0ZnFrb1lMM1JCMVVWcmxoZE9FR29VVGU3MUNy?=
 =?utf-8?B?L09KN0dNeHdZQzdmeFF0dVhsZ0pQZEFQaHZWZ29CRkhIRi9wSTIrZTlPeTZF?=
 =?utf-8?B?ZUgxSXhUbzNJN2cwbjdjRElWbzEvTkdUUXNEWWRrUFp3cmh5dlEwd2YyOGVZ?=
 =?utf-8?B?djZHR3NMQzk4YTBFMEozaGFsTzRCSGk3NWQ3ckxqaGQvQUFyQW5hREc3cHlz?=
 =?utf-8?B?LzhMUVBqNkpjQ2ZlU2d2SkIxdWtRWlhUVU1rSVZ1b0V1VnJKbzExSkZQMWdW?=
 =?utf-8?B?UjNHaENyN3dmSlVML0M0NXcwMzBEU2RYVUlzM21ZTVptaHlRd2NKWEZMaFdi?=
 =?utf-8?B?VU9mdUU5a1g4ZHZ1UG9qSzNBV0ZRaHRSYk80L29SL0RVUlhTZ0J4Umo3S3Ix?=
 =?utf-8?B?bVN2ZFJjNzR4Q3pXMGp6YVhDVDFOYzhIaVpDUUxvcm44RU9SQ3QwN2JWd1F5?=
 =?utf-8?B?WHpzdytCQm84ZTZDenpIZEwvYmhpeTFKbmUxWFBLWVJERjBqY1puVkkxanB6?=
 =?utf-8?B?dUNkL0t3eStQTyt2V3BkUy9kRVR6Z1Q3R0NHV21sTllSbUNOZGU3RjU1NUZQ?=
 =?utf-8?B?UWFyMlZHTFlsVURDdnpOdS8yUXNHeXhsNTB6RlBjTWVFZWs1VG81c1pwcjJK?=
 =?utf-8?B?Y2dRUzdQQ3p2NGh2S0tiQkRGZFhVb1puK25LMUFjWWFqUDZlV2d5WW1jN25O?=
 =?utf-8?B?Y2sxSWRWTjdjOE1pNGFhdTNQbnJQdGhmSHNFam0xV05CZG1UWWs3TzgzYWFo?=
 =?utf-8?B?UW9iL09MQXplZFFXRVloTVFaMkVUNi9VdlpScVdaNE5YaWk4bTFtNnQvaGVm?=
 =?utf-8?B?VHVkZXBPbHlLUnhmakhXeDZnQWNRYlA1UUlPZFlZNkR1Uk1aSnVXdjd1TEs2?=
 =?utf-8?B?cUZGbldMMjNPcGNRUXNvdjRCaXdqS0swWUY0aEptbE1KWDl4amRsTUNBdWpJ?=
 =?utf-8?B?a3c4OW43UXhKQnFiNzRJK294c2tVa1R2aDJKK1N2Y01iT1dOMzFTZjEwVVdo?=
 =?utf-8?B?Q3FXT0xDQ3ZaSnNIWFo0OTF1cEYxZHp2K0ZpL0YxMHc4RzNZNmJRa2prekJ4?=
 =?utf-8?B?WVVmKzJqUmxjV1h6ZmxDTUh4U3ZjYktTZk0zWXR0VWhxL0ZtQVJHd3IwZkhL?=
 =?utf-8?B?a2dMUEFEeEg3KzRySzhsM2lQejlxM2lnTEY5NFhYOVFFZi8zVm1lcFBqcjM5?=
 =?utf-8?B?RWVWNlBEazM4eXRGTlpyTVZ6MlVyaUR6WnMvRDZjUk40NkxHMGZxUU5MUWZO?=
 =?utf-8?B?bG1ZRE9jTlVpWG9yTndiM1lYRWR3MytXUkJidnVycXBxYmV3SHN6ZWN3MlZq?=
 =?utf-8?B?VmV1eUtWdTFZQW90aWhpVEI5M2ZGZkMzVmdVZjJ4RWpYSm52UnRCdU1UTkg4?=
 =?utf-8?B?SjZBN2NCYmtTd2UxWW9DVjNqc1FlVUJyY0RhdlRmY2ZNT2ZJTjlyRGo3ZDVm?=
 =?utf-8?B?bFhUSnU5R0JGQjYzWlUrT283U0VBQU01K3gvMGVuTVVtZUw3Nm9ZZEx3d3BN?=
 =?utf-8?B?Uzg3VmJXelhDTUJ0dUdpRk12WmIvSDB1NVhKZlhHR3RTSXFNN2ZOOE9wa3JQ?=
 =?utf-8?B?T1NFMldIdCtOdlB1NnZDQWgyNkJGQlZUZ3huak9wbzlHWDByMUFCOFJLbFB5?=
 =?utf-8?B?NUJrLys2TGV6bks0WHhReFVlUVZHOE8wYUFKWlNHTzFub0VJSUhmOWpMeGpX?=
 =?utf-8?B?UXpLTGYwbFRRWmx4dThxWE16N1h1SkIwclJkZ3JQYnBobVdWeDZvYUlPQ0Zw?=
 =?utf-8?Q?ktmrylmQJgzcY5X3+OgAfyQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0E0C2DF70ED0B743A85BE14CE181E65A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a63fbc74-fc2d-4bb7-dc00-08de3962663c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 09:39:51.7494 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6j8uRZG3j2pNGbsLPwAOz/PimSEbzOcwGFoYxq/WZ1l6unDqcaom6vrc22T+roNLFCAZZXGLLyvvgv9FCdBRqzSKWTG6tBu+yPctDTZZx24=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8331
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZh
Y3RvciBvdXQgY29tcHV0ZV9taW5fY29tcHJlc3NlZF9icHBfeDE2KCkgYWxzbyB1c2VkIGR1cmlu
ZyBtb2RlDQo+IHZhbGlkYXRpb24gaW4gYSBmb2xsb3ctdXAgY2hhbmdlLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyNiArKysrKysrKysrKysrKysr
Ky0tLS0tLQ0KPiAtLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCA4IGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Yw0KPiBpbmRleCAxOTNkOWMyMDc5MzQ3Li4yYTVmNWYxYjRiMTI4IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC0yNjQ1LDYgKzI2NDUsMjMgQEAg
ZHNjX3Rocm91Z2hwdXRfcXVpcmtfbWF4X2JwcF94MTYoY29uc3Qgc3RydWN0DQo+IGludGVsX2Nv
bm5lY3RvciAqY29ubmVjdG9yLA0KPiDCoAlyZXR1cm4gZnhwX3E0X2Zyb21faW50KDEyKTsNCj4g
wqB9DQo+IMKgDQo+ICtzdGF0aWMgaW50IGNvbXB1dGVfbWluX2NvbXByZXNzZWRfYnBwX3gxNihz
dHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ICpjb25uZWN0b3IsDQo+ICsJCQkJCcKgIGVudW0gaW50
ZWxfb3V0cHV0X2Zvcm1hdA0KPiBvdXRwdXRfZm9ybWF0KQ0KPiArew0KDQpDb3VsZCBiZSAiY29u
c3Qgc3RydWN0IGludGVsX2Nvbm5lY3RvciIuIGFsaWduX21pbl9jb21wcmVzc2VkX2JwcF94MTYo
KQ0KYWxzbyB0YWtlcyBjb25zdCBpbnRlbF9jb25uZWN0b3INCg0Kd2l0aCB0aGF0LA0KDQpSZXZp
ZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5j
b20+DQoNCj4gKwlpbnQgZHNjX3NyY19taW5fYnBwLCBkc2Nfc2lua19taW5fYnBwLCBkc2NfbWlu
X2JwcDsNCj4gKwlpbnQgbWluX2JwcF94MTY7DQo+ICsNCj4gKwlkc2Nfc3JjX21pbl9icHAgPSBp
bnRlbF9kcF9kc2NfbWluX3NyY19jb21wcmVzc2VkX2JwcCgpOw0KPiArCWRzY19zaW5rX21pbl9i
cHAgPQ0KPiBpbnRlbF9kcF9kc2Nfc2lua19taW5fY29tcHJlc3NlZF9icHAob3V0cHV0X2Zvcm1h
dCk7DQo+ICsJZHNjX21pbl9icHAgPSBtYXgoZHNjX3NyY19taW5fYnBwLCBkc2Nfc2lua19taW5f
YnBwKTsNCj4gKw0KPiArCW1pbl9icHBfeDE2ID0gZnhwX3E0X2Zyb21faW50KGRzY19taW5fYnBw
KTsNCj4gKw0KPiArCW1pbl9icHBfeDE2ID0gYWxpZ25fbWluX2NvbXByZXNzZWRfYnBwX3gxNihj
b25uZWN0b3IsDQo+IG1pbl9icHBfeDE2KTsNCj4gKw0KPiArCXJldHVybiBtaW5fYnBwX3gxNjsN
Cj4gK30NCj4gKw0KPiDCoC8qDQo+IMKgICogQ2FsY3VsYXRlIHRoZSBvdXRwdXQgbGluayBtaW4s
IG1heCBicHAgdmFsdWVzIGluIGxpbWl0cyBiYXNlZCBvbg0KPiB0aGUgcGlwZSBicHANCj4gwqAg
KiByYW5nZSwgY3J0Y19zdGF0ZSBhbmQgZHNjIG1vZGUuIFJldHVybiB0cnVlIG9uIHN1Y2Nlc3Mu
DQo+IEBAIC0yNjc0LDE4ICsyNjkxLDExIEBADQo+IGludGVsX2RwX2NvbXB1dGVfY29uZmlnX2xp
bmtfYnBwX2xpbWl0cyhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ICpjb25uZWN0b3IsDQo+IMKg
DQo+IMKgCQlsaW1pdHMtPmxpbmsubWluX2JwcF94MTYgPSBmeHBfcTRfZnJvbV9pbnQobGltaXRz
LQ0KPiA+cGlwZS5taW5fYnBwKTsNCj4gwqAJfSBlbHNlIHsNCj4gLQkJaW50IGRzY19zcmNfbWlu
X2JwcCwgZHNjX3NpbmtfbWluX2JwcCwgZHNjX21pbl9icHA7DQo+IMKgCQlpbnQgZHNjX3NyY19t
YXhfYnBwLCBkc2Nfc2lua19tYXhfYnBwLCBkc2NfbWF4X2JwcDsNCj4gwqAJCWludCB0aHJvdWdo
cHV0X21heF9icHBfeDE2Ow0KPiDCoAkJaW50IGpvaW5lcl9tYXhfYnBwOw0KPiAtDQo+IC0JCWRz
Y19zcmNfbWluX2JwcCA9DQo+IGludGVsX2RwX2RzY19taW5fc3JjX2NvbXByZXNzZWRfYnBwKCk7
DQo+IC0JCWRzY19zaW5rX21pbl9icHAgPQ0KPiBpbnRlbF9kcF9kc2Nfc2lua19taW5fY29tcHJl
c3NlZF9icHAoY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCk7DQo+IC0JCWRzY19taW5fYnBwID0g
bWF4KGRzY19zcmNfbWluX2JwcCwNCj4gZHNjX3NpbmtfbWluX2JwcCk7DQo+IC0JCWxpbWl0cy0+
bGluay5taW5fYnBwX3gxNiA9DQo+IGZ4cF9xNF9mcm9tX2ludChkc2NfbWluX2JwcCk7DQo+IC0N
Cj4gwqAJCWxpbWl0cy0+bGluay5taW5fYnBwX3gxNiA9DQo+IC0JCQlhbGlnbl9taW5fY29tcHJl
c3NlZF9icHBfeDE2KGNvbm5lY3RvciwNCj4gbGltaXRzLT5saW5rLm1pbl9icHBfeDE2KTsNCj4g
KwkJCWNvbXB1dGVfbWluX2NvbXByZXNzZWRfYnBwX3gxNihjb25uZWN0b3IsDQo+IGNydGNfc3Rh
dGUtPm91dHB1dF9mb3JtYXQpOw0KPiDCoA0KPiDCoAkJZHNjX3NyY19tYXhfYnBwID0NCj4gZHNj
X3NyY19tYXhfY29tcHJlc3NlZF9icHAoaW50ZWxfZHApOw0KPiDCoAkJam9pbmVyX21heF9icHAg
PQ0KDQo=
