Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89909DEAC1
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 17:17:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CADAB10E05C;
	Fri, 29 Nov 2024 16:07:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HdS+Txk8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4348610E05C;
 Fri, 29 Nov 2024 16:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732896464; x=1764432464;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=xcz/yJsfsS/ATpyNIBTO/WwGU7hvrQctWWjL38hW6tg=;
 b=HdS+Txk89eY7rHfFCQHhjuZ2dz3EmTnbu/ilOHOr+HT0ymRvK4XDe3u0
 MUY9PQ7Wy070GTwK+/Ev156GYY0JGpr4vVWthukokHuv3OmWrpX40b8c4
 iAl8u2Rl2oL1DtuFhdSkr4KPAI+YlSXhWOBRI9tu7ReXMv/lpkT8zxPv9
 3/B0UjRH/f2Wx8xH5BqySqOjsMjR6XwzasXe0ps4YwhelgcxgVoe6MF04
 qVLS5UW0YDyx8Fm14rnEXo7yKV123XfDLFZpLS/sdWt5dtiBY+MAfJEKU
 IjjgcYJBJjGBYWC5pkA+hMbQWOuRV60+MBUN52xBBNiLa9wEwOh3/n0JZ A==;
X-CSE-ConnectionGUID: l75sMs6TQgCtMGcB+Wf6LA==
X-CSE-MsgGUID: xIB7PERbQzSf7qqSml7xhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="36918833"
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="36918833"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 08:07:44 -0800
X-CSE-ConnectionGUID: xpDPAMK2RaWu/pGlKqYjZA==
X-CSE-MsgGUID: iLzYt01nSEueXA8eRPWSLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="92335528"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2024 08:07:45 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 29 Nov 2024 08:07:43 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 29 Nov 2024 08:07:43 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 29 Nov 2024 08:07:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KfKTiDxUSr5IfeKlrw7w9zwUxpJ7rcINhhl83o543MoehRl+fmqA/Pr2u1aPXyJGM92BTE9KGYTdF5ZnWorvleQMb6rXKISMuB40zjY866Rgy4qUumObPUsyjBj5dMQGdHuUz84KRChjfqySiWDW1yp6u5huEYOEgDZv9zvlHH43BWuU/rVlURb6KznLJ7wpUVQEvs1VJL/wrUR35tA6RcdE4JYl/DRdpiUzA9qqXyqKm8zSXrndjkD+dlV5hgNytxdWSctfBTJwmiFQg1zckbTwDuPR74d9l9y2BOnwHaZcU+kFdpsYiCPUF3Fwymp8RHIy+eayxus/jDxSDfRASw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7iWK4LUARO2PN1NnDROJmgEvyGdmwKtwiQviiQCUNGc=;
 b=M20RlrQPLFC1wONk2yEFShNmjBldFMBhbcv8MiCryQcP+uZOFk6sDeozm6ZhNDE+vmEq4tH4o4SiJe8QnNeozp/mp0wfRZoVLYcugr3OUW6kg9lKE0lsvE5zD3YBtkZ/BLK6eV9sDJD8e6hQaqE6sahOSEUeF0QwUoRqRkY7jc3E8fNYGqA1OkxennkfkXpiBOiMkfTSrJj7s8G4bP2P+ucW9eznbhy9TN3Y9QTMpeTQ1Un6scc0VN+E5nxvtWBW44KtuNyFrdQexCaabvc2fG8/M4ZjFAS/6eazcx8oajxjJI6EevaF6t8f4OqgnJFAvZ6sYI4Ow68y9o5d5OmSCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA2PR11MB5099.namprd11.prod.outlook.com (2603:10b6:806:f9::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.14; Fri, 29 Nov
 2024 16:07:38 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8207.014; Fri, 29 Nov 2024
 16:07:38 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241129151754.22015-3-gustavo.sousa@intel.com>
References: <20241129151754.22015-1-gustavo.sousa@intel.com>
 <20241129151754.22015-3-gustavo.sousa@intel.com>
Subject: Re: [PATCH 2/3] drm/xe/display: Extract
 xe_display_pm_runtime_suspend_late()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 29 Nov 2024 13:07:32 -0300
Message-ID: <173289645221.1637.13618914452641694713@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0025.namprd03.prod.outlook.com
 (2603:10b6:303:8f::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA2PR11MB5099:EE_
X-MS-Office365-Filtering-Correlation-Id: 796aa454-b716-403c-f83a-08dd108ff1f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TmMwK0szcndxOGVQTE8za3g3aS9xblQ2MG1JTWNXODd5aUFXZ0RlU3Q1MDgr?=
 =?utf-8?B?alRBaEFpVXBEenYxNFNXbnU0UGpJQ2RJWENJYVVsYU9jclVTbXMyWUNWTkdV?=
 =?utf-8?B?T0VFa1JMby9Id1MzZFVPN2RhUHFvRXl2eWpmcVdKdUMyTzV4cTFZV21aS1ov?=
 =?utf-8?B?MkhUTEo2eThUeHhoSDVYZjRnNVFkVzUveExSL3dNbTJHdWFjSkMxbHFadExM?=
 =?utf-8?B?M3BySjAyNGx3dGs4Wmthc09qazZmUnlvQUMxUkdJSDNsL3hna3ZHZ1pBb0l0?=
 =?utf-8?B?NTg3WjlEQ1gyNHhqbkhCWHEvL1hUZVpsdnp2VnpaVlhCdUx6Z0RJY1ZSRVA4?=
 =?utf-8?B?cUl1TUNmT0R4NmhiY0EyaXhhWGNORzVXOVpLWnN0Ykg5dVdHL2N3VldmZTZ5?=
 =?utf-8?B?Y2VoaGFsNFlLaGdvYXlIMHdlYnhZem45OER0b1dsRzFRMDBFZmJxYWF3ME1N?=
 =?utf-8?B?TWlkbjViOUN0MVJHeUh5aHRyQjFxRHZHdkRQMlcvQ2hYUDU5YjBtVG5GNHJF?=
 =?utf-8?B?NGQvdFZtZUF2bnIxUStRd1dTOGZPREJwbWM5RTVvRkJYV2JXTnljM29UMVE2?=
 =?utf-8?B?UjNZYzd2dWtSS2J1Tjhkaml4Q2JON2tJSldPU0x6bXlLSXB5SWxzMFJyWjBo?=
 =?utf-8?B?Y082WXVtODhzNFdkL1lkVWtXWGxaTVdieTl3dXZnamxUQVN3Y0ZMcHJaSDhr?=
 =?utf-8?B?QU5iZytZSzlrOGdRUGNQSjZHS3Y1dUFheGN5Z2QxYVd2YWszcm5TTFhRN0J6?=
 =?utf-8?B?TVFQbzRZM2MvcVAwdnljQSs5NWZlMElUeVNhS2tnbEhGckUxU200L2g0NUxm?=
 =?utf-8?B?ekJXZkFsNE5ud0RXUFpqMzRzcCtRelRJSnAyQjFLQmw0cSt5VGkvSFllZFpC?=
 =?utf-8?B?K0hNVlh0Q1FmR2ZRZWVldG5RVWhNU2hzVy84QSt3WkJicUFPK3RDSUtlckN4?=
 =?utf-8?B?ZFVpNW1XMkZxNWkzM0doUHQ5dWV4YVk5YkZPWVY4QjRoLy9nTVdncWtJdEhK?=
 =?utf-8?B?alBzbUNyVUtycTdrd3o1WUxRWGlCRythK2c1RVJxVmpQSTQwMUgrVEJRQTdy?=
 =?utf-8?B?UFFJc2tUY3RHNGF5N3crVzFSS0x6SDloaHBoVEZ0eDNJZHVLOXZQd0diQStK?=
 =?utf-8?B?bm9KWnpSMXNUTXBjb2FyRmREVldQUVNEUGx5bEpmN3IyUmltOUxtT1Q3Undp?=
 =?utf-8?B?NWcyUUdZeWFiT2NackdQTUVQSVloQk9Ra0t0R1F3ckxmR2Iwek5kSktrbW1z?=
 =?utf-8?B?V0dJb3dzTjl4SUdnRmh4dGxjRXhaSFZ2dmpLQVByMnd1eGFtaUhaQ3dieUZ6?=
 =?utf-8?B?cThiTjk1ZlVRMHZoa1RVeSswZWU1OEVUZFJ1NU40MkUxWk5yWklFcFVpTHl4?=
 =?utf-8?B?MGw0MEdacHQ2dVZFVEhaWitSQVU3UDVkd2xDT3FIMzVQODNvUlFLNE1qZWpJ?=
 =?utf-8?B?NFVyc0ZDUmJRNTZicVVSRUNCOXd3bHNZL1AvS1MxdlgrTkFVbjF2NzB5WTZR?=
 =?utf-8?B?MzF1TDA4OU9DS1BvR0p5RHQ3ZXBVT1hnRzFsRllHQjZQRG5YVHNmZlRXOHdH?=
 =?utf-8?B?NUVhWHg2QitNRlplUkowL3RmNEsrdW11TjRwUHl1dENtWEE3cG5DUkRHV21J?=
 =?utf-8?B?bEFhZzRVMjY0VjJoUkNzcW9DQmNUSlY1czgwb2cvQnBVTUNpRGF2RXcyTENS?=
 =?utf-8?B?UjgwZWRaWiszSVkxczAxbHM1V0dLSTNVcUkwM0lrN2FXWEN0OWhqTlhMd2xZ?=
 =?utf-8?B?WlArcElOTkNOK0hiYnY2NFFkcWhLTEl6VWRGd0EzOEdsVkd0ZkYzanhKY0JO?=
 =?utf-8?B?cmRNQzhCK2NaTXBXUVdWQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTE4T3lrZ2cwWDYxMWtQeEJRL1FMaVRFbDhUc1FjbGxoNFlTQVl0dWpncFJG?=
 =?utf-8?B?a25EV1Z2MVpsKysvRU5mQmVMYlhPRXJ2dThOUXc4R3ZmdS9scDRrQ2pQQUhm?=
 =?utf-8?B?ZjdvWlQydFcwRDJSSy9VMjhNWFY3NjhyMkczZERvQUZzWkFtUnhDdkpXcFRE?=
 =?utf-8?B?N2dKaTdxU2w0d3EvRnp4cFdtRlVLQTZiMEc0c29LS0dEWVJiMGFnejBzZ0dj?=
 =?utf-8?B?Q3V6UG9GS0M5U0pYcmZLVnFUclhERnJSMGFLeWZyOHFRdGYxNDUzV0loWDFw?=
 =?utf-8?B?VFlDcE5MY0ZteEYyWi9UNzhpK2JUOUFOUFo0R2VYdFFpYlltMmRhQzNtZDJm?=
 =?utf-8?B?MXRkQkdLalBtanBYanRJZ2F2VFAyeXRqS1ZwTHlOV2lnTU4yRFMvWmF3cStS?=
 =?utf-8?B?UThFUjNyeDN4bzd0UllnbHc1dUJwYnpaaFpJenY4QnNaT2dVeVVOY3lGV09K?=
 =?utf-8?B?OWl5ZGtRZVhqUXppc2pHRnlUa294WVIrSit0UEtXVDhqVUQydDhKQkFES292?=
 =?utf-8?B?c3Y4RG1veHpzSG5wMG15QnVWV2JTK1hKOTlmYit2NHJFTDE4ZEF4cWJCUmg1?=
 =?utf-8?B?bUFjWTR6VUR4TVI1UnlIdkJIVERzR1k5WjZSTUpLdi9ib250STJHd1dhd1d3?=
 =?utf-8?B?UDViKzlsZzNPSmdaRUEyVzMrTU11bEdRMlNNNTNLY2oxZlVWVkhQSFRDcXRM?=
 =?utf-8?B?MkFGYmFTZlJFV3JnckZJS3E5RkFLN2drNVdsTFlzbWZ5R2N2Y0s4MnIwQi9B?=
 =?utf-8?B?VkxmUk5McDNtOC9VakU1Q01JZTBWdkRVb1JFMldFUFkxNjM4RUdwWGZpZERs?=
 =?utf-8?B?OEw0YWFuUzd6Rit2SHhKK1VVUk5HQzhQS2tpY0VMYzFvUG5abHFLNVpVYlpt?=
 =?utf-8?B?emZhaTZwRHdDa1pVYkp1TWJxc3U3VGxjRmt2US9POWhpTEMzemhXb0VUVm1Z?=
 =?utf-8?B?QUtkK2ZIVGtIcEV0V0h0dlB4L1BqVXQ5OUF3QnRaS2NidXliQit0cUtBZUtu?=
 =?utf-8?B?WlVraDhJYllpTGRLYXplV1Vscm1pQzBGRUdsYndIT1Y1M2V6TTNlUCtENmJu?=
 =?utf-8?B?TzZvVS9NcE5GOTV4MVEwYWNvSmlWK0I2aGNhSE5qTklMMG53Rnlxa0ZiV2hq?=
 =?utf-8?B?TWtOQlJXVkliU3FiUVFJc3ZZWDl0ZzFuTHoxOGQxNFBVN3BKMnJSQWgxRXZS?=
 =?utf-8?B?NmR4emlwNCtLWnJZaTdWRXZlWUN0cXpZUUpFNnpSUlJUdEtVbFdpUkhSS1BD?=
 =?utf-8?B?ckhENXFlaVZKWmh4dzNRemQ4bzk0SHZPOGdQcTE0RStMWVNNLzdEam9SaW8y?=
 =?utf-8?B?NUxxbUpabXdVUG0rOGdNK1BoSlU1WlhCUk9GOE1vNTZ4RXMrRndnQjhRU01B?=
 =?utf-8?B?aWRBV3c0aHorTFJZQndaQW5MVFl3Y2ZYOHI0aU43RUhhK3k0ZlpOM2hrM2Uv?=
 =?utf-8?B?RlVobDd6NGJ1SGNvRFkwSUFZMTluMmZHK3E5WG8xNjRwT0g0cnp1S3Z3ZXZi?=
 =?utf-8?B?cTQyR2hxNkU3OGdLOEQ0NkJxQWs2d1JWYjJyQnMyMytwRVowVjhqSkk0WXBn?=
 =?utf-8?B?ZkhyV3duQUxmVWJNZEtQS200NUU5ZGs3SlRQSEhwaU9TTWhpZTY0Y2FqOGU5?=
 =?utf-8?B?OWRDYThsaHlHaW1uTCt4czQ3T01zWFZyWE1sTmdOZkJlamdEVEVJR3AxUjll?=
 =?utf-8?B?blFxWHZ6dzlSMk95NEkvcmRpSG45ZEs2VGUwaVJrSnR1TzhwbDRVZDU1RmFX?=
 =?utf-8?B?T09uaWtlVzlzS2l5T2JMK0YxRXY3blNRTzEzVkg4S0RYS2FyanZtVEZ1YUo5?=
 =?utf-8?B?NVdQUWFnQk9KUlpFZTFMb1lRN2QvcGMzUE1YQW1QVG9udkFlK043WmR4Qlln?=
 =?utf-8?B?c0s4a2xsUGk5M0NXR2JDNm14TXNqOEJPeUNyaTdUL0txY1luRnJ3WGltbVUx?=
 =?utf-8?B?ZFB0c1V1SSs3Qzg1TzRrUVFOSHpYQzIzeEE4YTVUSDEvdExOZWEvdThzdjFi?=
 =?utf-8?B?S2VjeVU0M1U1d3lXQ3luRkpXR3h2MElvek45OG15RDZZdTZpMjQwdVNkQkJ1?=
 =?utf-8?B?c1AzTXYyeHArdld2NDE3bVBSMTJkemdYQU0zTGcvNVM0M0p4UFZiRHdmQU04?=
 =?utf-8?B?UnhWRkFLYVlBY3pLM1hKQjd2MG9xRlNFTGw2UzlpQk1BdmFoZlJLNzdSeWcv?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 796aa454-b716-403c-f83a-08dd108ff1f1
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 16:07:38.4522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XcO0fblJYb8VV6FOqeK9xN2GSNguxj1212kesBon67NS/3M2o3hkVGgeB7do2sDRPLKX2TI1fxj/w0m+60m9Ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5099
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

Quoting Gustavo Sousa (2024-11-29 12:17:45-03:00)
>The current behavior for the runtime suspend case is that
>xe_display_pm_suspend_late() is only called when D3cold is allowed.
>Let's incorportate that behavior into a function specific to runtime PM
>and call it xe_display_pm_runtime_suspend_late().
>
>With that, we keep stuff a bit more self-contained and allow having a
>place for adding more "late display runtime suspend"-related logic that
>isn't dependent on the "D3cold allowed" state.
>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
> drivers/gpu/drm/xe/display/xe_display.c | 9 +++++++++
> drivers/gpu/drm/xe/display/xe_display.h | 1 +
> drivers/gpu/drm/xe/xe_pm.c              | 4 ++--
> 3 files changed, 12 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/=
display/xe_display.c
>index 69c828f38cb6..2e189abf8d6f 100644
>--- a/drivers/gpu/drm/xe/display/xe_display.c
>+++ b/drivers/gpu/drm/xe/display/xe_display.c
>@@ -407,6 +407,15 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
>         intel_display_power_suspend_late(xe, s2idle);
> }
>=20
>+void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
>+{
>+        if (!xe->info.probe_display)
>+                return;
>+
>+        if (xe->d3cold.allowed)
>+                xe_display_pm_runtime_suspend_late(xe);

Whoops... There is a typo here. It should have been
xe_display_pm_suspend_late(). I'll send a new version.

--
Gustavo Sousa

>+}
>+
> void xe_display_pm_shutdown_late(struct xe_device *xe)
> {
>         if (!xe->info.probe_display)
>diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/=
display/xe_display.h
>index 17afa537aee5..954c5a268ef4 100644
>--- a/drivers/gpu/drm/xe/display/xe_display.h
>+++ b/drivers/gpu/drm/xe/display/xe_display.h
>@@ -41,6 +41,7 @@ void xe_display_pm_shutdown_late(struct xe_device *xe);
> void xe_display_pm_resume_early(struct xe_device *xe);
> void xe_display_pm_resume(struct xe_device *xe);
> void xe_display_pm_runtime_suspend(struct xe_device *xe);
>+void xe_display_pm_runtime_suspend_late(struct xe_device *xe);
> void xe_display_pm_runtime_resume(struct xe_device *xe);
>=20
> #else
>diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
>index 80699dbeb2e9..a6761cb769b2 100644
>--- a/drivers/gpu/drm/xe/xe_pm.c
>+++ b/drivers/gpu/drm/xe/xe_pm.c
>@@ -414,8 +414,8 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
>=20
>         xe_irq_suspend(xe);
>=20
>-        if (xe->d3cold.allowed)
>-                xe_display_pm_suspend_late(xe);
>+        xe_display_pm_runtime_suspend_late(xe);
>+
> out:
>         if (err)
>                 xe_display_pm_runtime_resume(xe);
>--=20
>2.47.0
>
