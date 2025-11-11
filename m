Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A977C49DBF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 01:24:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A227B10E34B;
	Tue, 11 Nov 2025 00:24:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M2Ur9dai";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F5410E385;
 Tue, 11 Nov 2025 00:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762820646; x=1794356646;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=/qTU78JNKrt43h89pCkVipZ0Ana3Npc1scyV0pp//ns=;
 b=M2Ur9daiYSNUh64Fm+liJ7p0S+c+bz2IGeIGPXg7DkExdf4qw+5dHjtJ
 nM3o7vpPJBWI8stsOVpGx63kr9jDJZ38cI1TH+WvSqh8IYFrEFji3ZX4P
 h+wXl44IgcLOxE0fbnuF1JM+H7BRPRYyQTSVlUfUvM92cETRpE+nSnvR4
 tSM8bVPRvZQR8/rP0pd81WIEr+d0AQHVmmOKKkbuXf/Ji5fbP+tYSL1Em
 88ZLpDsPB3LSMZmllqi8b2wwEnqnrhUdBaLdh8LWlINNSoasabpWNc5GA
 7B6Pyu7MpC4MoP/Im12XQffzAHw7LE8Cw4zQ9pl2P5l4n8PcDT1QH5bqt A==;
X-CSE-ConnectionGUID: 35svycgrRUK4JJ8KjO7ZxQ==
X-CSE-MsgGUID: IckQLDZCQN+8EAU7wVXNpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64084359"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="64084359"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 16:24:05 -0800
X-CSE-ConnectionGUID: 5E+MfHdqSeSuILBoUQZWpQ==
X-CSE-MsgGUID: hXqI1YP4S8OkXZkWZLCr6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="194000886"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 16:24:05 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 16:24:04 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 16:24:04 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 16:24:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u4SR43pHfvQL8Yi/nTYNobn5+xLKEtAlWx08Wc+3YDAF7P0Iu439B2RnRdmzJ37qPNP0pKZBiEU+pBUJyMoXzglVujW7lzsBnnM5nJPEWTEtWxE/qOKVWLOEsaDLIb6+uWPpPam93J0nLKcavUfMw07QsawBjunmeYcxAun7pyn3X54ZXIJEwRINkKncz9CPAXb7h4FJoOtfeXgEEL4cj8bgju4HweUqaMGroL3PMmoMUtLASAvHZiBs6knjenooRa/ab6/M2DkHTS49vTjlF92ngEqmqB/T3CMwpQ1xK9ekGs7EGFd2Klns/ma5DYEt1T2OX9EDWbIs1u2L9Ng3rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rIOC4Q20qvaKUXfNlBItGuKSFIjABgKzsYAAio+wzdg=;
 b=pwBarTJ1ToTFKxta5U45dCvBPRs2tiuFxKsrXzxG+aQq0iyrEHpCj9YZT/CFui6Ih26hOVeI1IjT66fE82nppEKyZymf7SYPE9fxSvh2PoHBhMuWmJq86GZi7nVNouCWMditibYvXKZjgEQFORoPGqcF1BfwzhGq0TiD6SIm1Jh78KisVHBrYwlJK537XIGuV7Z64FTLkPj2csgtxBtkneL+XPLd8D+lVXK353I6fkDRkyjK2iv8diTf9400XXk0NeBcQQU/FD2UeIIXAZe6m0isX6b6zBvrkPPJefjAAFTZn28/I7uzx6msmq0y1OXPh740S1ikMWUNpRk7M4ug3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 00:23:57 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 00:23:57 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <cd8a88c0e6f02aa1209abd3f1188e1bacf1ec1c1@intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-6-ab3367f65f15@intel.com>
 <cd8a88c0e6f02aa1209abd3f1188e1bacf1ec1c1@intel.com>
Subject: Re: [PATCH v4 06/11] drm/i915/xe3p_lpd: Handle underrun debug bits
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Ville =?utf-8?b?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Mon, 10 Nov 2025 21:23:52 -0300
Message-ID: <176282063211.2999.130715176728761102@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0020.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB6789:EE_
X-MS-Office365-Filtering-Correlation-Id: 260f05d4-ef8f-4041-8432-08de20b89a03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUdrQlliY1hycGN5L1FVK3c5SWlSUU1kS3E0eGZNRm0zSkg1Q2lMaG9DcXlr?=
 =?utf-8?B?bmlLVUlSYTVaS3JxWkh3WDkxL2N6a01YOG5udkVRY3NQRHptT2hSNE53UG1W?=
 =?utf-8?B?UFlDSm9DVHFhSzQzZk9oZGhMeVAvUnVNZUIyYzZZdzU3VGU2ck9UOXNhdTZz?=
 =?utf-8?B?NWhHRmtqLy9oaTR3eW5FeFpmckRtUCs3N1NiWVVtYjMxWjFtWmU1eTV2WlZJ?=
 =?utf-8?B?ajRrRWhCb1EzVjN4bFNQZzZPZkJKMzNaOWJsTUp0SE5oZ2NjR3d5TTBUN1Ja?=
 =?utf-8?B?VXFjZ2dLNFdPZjhzSzFuTUV1UEJkNkQwZ2tZN2tGNXlBNkdSeWxKSVFHMitZ?=
 =?utf-8?B?OHBVVGFLdy9uOXZyVzV4UlMrNW9DdE5LdW13dFVjazFLdGVKNm42YkE2dmh5?=
 =?utf-8?B?TnAyaW5LRDJVcjAvNkVBMDU0OWFpY2lRdU5VZ2tnZFpVdmRZZlVlYTIyVzVC?=
 =?utf-8?B?SzdzMU5zS2ZZU1RzNit2U2pqU3YwNzEzeWlCMEUrdENrc1Y0MmdCNTdhTkxW?=
 =?utf-8?B?VFJzSUpDVTZaWTBsT3RDNDE2OTRVQ3c1b0FybUR5eVhqNEVRYVUxNHFDS043?=
 =?utf-8?B?bktGc29tYWRrUjlRMXBDQ3N4akxjMGVUa0w2YXhGcDBMY1U3Y1pYUjk3RkJO?=
 =?utf-8?B?VkJwTXRJZHNGcTM1R2tnQk9Sb0lRTmZ2NVFLWXFKUGo2V2RhVFp0OWk0L2FY?=
 =?utf-8?B?VDV5UzBHSnRRblVsb25wUGUrUllIV1JEa3ppRVN0VEQ3SEdTbFhTQjdHbVk2?=
 =?utf-8?B?ZG5GQWQyRnRuV0pLSlVBUCtpcWVIRmdLSWdJeEx0U3ljV3Z5SnFzQnpTZktG?=
 =?utf-8?B?WkkxMExRQnQvcG5GeUd0dmVYOTQxT1o3N1BreFk3bmR5VEVaUGRvN1dOZ3NQ?=
 =?utf-8?B?azhablNyNUx2MkFuVlBRZnduUjdFTjlqZkRsTy96OGx3WTVNQkpTMFRqZTR2?=
 =?utf-8?B?Q0VrOVlvajE0ckQ5SXlRNjhjUWt3QVJLdlJ1ZDdVTms1bGVRUTFYUW9xZVVH?=
 =?utf-8?B?UW9oR3RkZzUvdktjOFFZMjdjMGxpVEExY3hlbFNDVnM2SksrTkh6TVV5Y0RY?=
 =?utf-8?B?MnZKc092Szdmb3lwM0lMcFEyQUliYzc5UUR0OHRCQ3RBZXZpRnNHMWJpM3Ux?=
 =?utf-8?B?dUZwZmVGazZENkdmb3QwSVF6Q0NGSGpwRk9OeDYvcExtUENxUVpHNnlIYUdW?=
 =?utf-8?B?TDl2Mm54NEJXWTQ2RFdIaXV0MEFMUVg0QWRNUktuakhGcUJCZFFORW9JVmVF?=
 =?utf-8?B?aVJVcE4ySlZFTWJUNVY1UkNlQjFsSkp6UlZ6aVR2Tk1FdHJnUS95K3JCZ09N?=
 =?utf-8?B?bHNCc0ZFQzFwVlhuWnlJczJ3WEpFb2dsMjBHZjFKWHNaK0hrMzV3RFphaUx1?=
 =?utf-8?B?OHBRZWwwWUF2NFJob3EvVUdsNEJMUEF2MnJzUW4vZm9IRWF5K1dHYW9RY3JK?=
 =?utf-8?B?ZnZ5NzVrOWpnOGNwbVZHZUxYK1RZK1Raa2pIZHF1RDlwRG10TUJpVUpweGp0?=
 =?utf-8?B?OUJwR3lVZ3IxN2h4Z1U2WWFpMWtGQUY4d0hzemgzSklrd043T1hBQjhrZHZh?=
 =?utf-8?B?K0cxYmxjeDFTZzc4eUhjeWFSbGt4Z2R4ZWRjdHNpZ0wrY0pzWkttWFhPTi9Q?=
 =?utf-8?B?SUZ6NlNVK0ZNMnFEOVVkcG5KUEVhcVFWRm5PeUxud05HU1FoZmRwdkRBbXdL?=
 =?utf-8?B?NHZ0aWJ3MjAvY21qc1NPQUZSM21wZ3hWTEQ4NFhnN3ZFMUtVcEo0THVuMHpQ?=
 =?utf-8?B?UitSekpkZlZhdjZFbDhxZ3dJWlYwa1pZQUN1QlNhZkZ5dTRWZUY3YTRXd1JF?=
 =?utf-8?B?T0IrNzNDeUt4SXh1R3h0MEpDdHhhQlBBVGtUbEF0SURidkhJSUZnMnVNblNp?=
 =?utf-8?B?Wm5nVHloa3grRWw1cFZJNmxBWVlOOE8vaERCcU1VbzV4NWh0U2plSTV4N3Nw?=
 =?utf-8?B?Sm9GMEhuQzNDd3huSFowWVk0MUpIYi9ZVHVSdW1NY2wvNW9YNGlvcEV2WTRP?=
 =?utf-8?B?T3NqUC8xWDN3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UkQ2NUdoWW1CdHdSb1plRVdOV2VTclpqUUlHUm5ZZW1FK2RQcldEbGxnQWw4?=
 =?utf-8?B?M1BtQ2pxWDBQazk2cUJ1MlU1eWRSQWJ0ZWVKWFVwQ3MrcGhhYUtoUThoTlpm?=
 =?utf-8?B?WmltMDVBcnVKa2lVWkhmYjdhQUp3SlU5QjduTlMrUDhHdlFsRzI1bGl1aWRB?=
 =?utf-8?B?eXQwOUFnUzdsNG5XMWQwaVVTemlmRnZDaUxtTUdQWFppM1RWN3FuMytiT3RZ?=
 =?utf-8?B?a1RQTFdSblJhdGNkci9FVTcvSUdlQWlkNDUxODh4d3ZGVHhVQ1htRTdJZDhV?=
 =?utf-8?B?YkRRZElMcmNKQ0hCM3BNNFhnRWJUS2UvMGl6VnpmY09iR0o1OHNWMi82aVNG?=
 =?utf-8?B?R2xBZXVRTnY2MDJOaVRQNDlQZVJNYkJ3WGpvSnREakpxRTdkcmZXOVpVMjQz?=
 =?utf-8?B?L3hXQjRMOFRRcnJKVW9INkU5NmNObllQakduV1NMano1bmJwamRodUk0RFlH?=
 =?utf-8?B?QmNVNHhkcUdNMUZtWitxc0lmRFZOeVZLYUpLanJCMDI3aWRPS3RzSmhXQkQw?=
 =?utf-8?B?cnA0bFZDb2w4N1gwN1BUeHk5a1ErNVFFNEM3SEUxSWgwdE1XbVBRR2RONFdu?=
 =?utf-8?B?NDIvZGdMdUNXUTRaT1RuczBqeVEzakxzNGkzbVE2bEVNTHdZcjRVZWZ6MGtt?=
 =?utf-8?B?L3piR21xR0NMd09WdWtwQWpDdFNZaHcrSHdweXZXYUhGZW5jMzdSYWxHK1FM?=
 =?utf-8?B?OTdjQXYxWUVzek95Q0h1N1E5eTM5c1BJSDRXZWgzbmVSYVdLRmgydEV3YjVt?=
 =?utf-8?B?VGpFWmxzem5YMUR2NWpxRFhueFRBbng1RW1WTENqbEE5N1hWMTNzRERubGgx?=
 =?utf-8?B?bk1Cd0dRNjBIQ0t3aDVHekhpMkk5NE90VVNHODVyNEtTV1FQYkx6eW9COHhy?=
 =?utf-8?B?cVBZeXVUNHkycXc4RFZPR3E5WGEyaXh4K0E2QTdkZThXL25FVWhqa2FUTzZR?=
 =?utf-8?B?ZU1yUFpKR1dlNUtkeEMwYUVQWGVCakd4eUlSTjlUVzRnYWtoU0JXb3ZkOW04?=
 =?utf-8?B?b2JWSE1YQzhoS3VzeDdzblZJaFdvUDJWOXljQ3d2Y3dsOWg4MlRBZ3ltTnFX?=
 =?utf-8?B?VFZoSUppWUEzOGZUbzg2RmIvK05SeWxHVm9PYnoxbTVlZTNDaTZMWWdCVmpk?=
 =?utf-8?B?Q3E3WktZd1BvaHdIb2daSGhVRXRKOS8vT2FBaCt0cmtQTmRzZ3J6SEhQd2N5?=
 =?utf-8?B?OE80NnZEa1hWbnVlejlTaWNreWJ3V3hRLzM4aFdGSkcwVTk1dy9JeU5SR1hu?=
 =?utf-8?B?OW0xZjRSRWEwV2dwQ1plUnZWcmMyWWFUdi9iVVZ3TE1nUzM4eXZ4d3AycnVm?=
 =?utf-8?B?ck1VQnM2QlRsdnZJNGtRbmNDQk5ZMUZJdXpTSERIM0dUZWpPSm5tUXovVmQr?=
 =?utf-8?B?YTZRWFBoUzA2Z1pKZWxWcDdTOCtMRUtXdG5mK0kxQlE3SEhDMXFDQkVmeE1v?=
 =?utf-8?B?SHh1VXRhaktMTzRIaXN1VnJiUFhjSkFzNit6WHVZeEJab0o2eXE2azY3SzVP?=
 =?utf-8?B?djVNUWhlRnpKa25INmVoVENkRWVybm9DcEhBU0NqWU5VS3FhWmlwSGlBZjBQ?=
 =?utf-8?B?ZTRaWm85L01UVVlEYktwbHFSUi8yS2dlRlI5d2ZQbU9LNDZwY1NGenBHbUtH?=
 =?utf-8?B?bUZKNTJLd2hOc2hZUFFRVElvV0p0WlZxdy9RTVpIemdJWExSVVo2UVlhYzZG?=
 =?utf-8?B?VjIxSnBSckUvdklYU0JyamFDb285Q3ozNHFYVVlVRFdtd20yRTdzRGNwQnNR?=
 =?utf-8?B?L3RjT0cvS3dYRTE1TlR4anRrWGJZbEdsVmt3dHkvYmJZZjFidFVORkFOeTN1?=
 =?utf-8?B?U2lST2FxOVZEV21QSlNTaE1mTFRwSXVUU1B2RzRhTm1BdktMd3pSMEhTb0JX?=
 =?utf-8?B?c3licDQ4cUQzbjVMdVF4MFYxSC9zbWd5T3B6a1JTbm1ZdmpoZ1gxcDhBRW9v?=
 =?utf-8?B?ekxrdlF0bjNMcXd4TXNJQ2RsUkdQc21pUkVpMDlaYmJidTJ1Q0gxNjFTaHVx?=
 =?utf-8?B?em5xRmpZUWxld1g5VG1rVmhSd2RjYzl6V2QrRVRqK1RMdUt3UHdPczJqbERa?=
 =?utf-8?B?OXUvVUZWWTNFaTFHUWU2czEySm1pQWlIa0NJQVRhWlJpWTNwWkVlOTFGaW5Q?=
 =?utf-8?B?ajdiL09neHduWXRFa2F5d3FreG82RHZNTmJBSXl1UTZVbXVDN3piT0lOYjYv?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 260f05d4-ef8f-4041-8432-08de20b89a03
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2025 00:23:56.7317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jgwod3nBh3hKwM9yPdFUthb8pr8u3lVqgjeiByL974Wp7N4xWSfFZncl6LhH586x0JpDtqacSRnA4wRFM4azYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6789
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

Quoting Jani Nikula (2025-11-10 08:45:48-03:00)
>On Fri, 07 Nov 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Xe3p_LPD added several bits containing information that can be relevant
>> to debugging FIFO underruns.  Add the logic necessary to handle them
>> when reporting underruns.
>>
>> This was adapted from the initial patch[1] from Sai Teja Pottumuttu.
>>
>> [1] https://lore.kernel.org/all/20251015-xe3p_lpd-basic-enabling-v1-12-d=
2d1e26520aa@intel.com/
>>
>> Bspec: 69111, 69561, 74411, 74412
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>> I tested this by adding a change on top of this series that updates
>> Xe3p_LPD's CDCLK table to use bad values and I got the following
>> messages:
>>
>>     [  +0.000237] xe 0000:00:02.0: [drm:intel_modeset_verify_crtc [xe]] =
[CRTC:88:pipe A]
>>     [  +0.000674] xe 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underru=
n
>>     [  +0.000015] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun in=
fo: DBUF block not valid on planes: [1]
>>     [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun in=
fo: DDB empty on planes: [1]
>>     [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun in=
fo: DBUF below WM0 on planes: [1]
>>     [  +0.000004] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun in=
fo: frame count: 1890, line count: 44
>> ---
>>  .../gpu/drm/i915/display/intel_display_device.h    |   1 +
>>  drivers/gpu/drm/i915/display/intel_display_regs.h  |  16 +++
>>  drivers/gpu/drm/i915/display/intel_fbc_regs.h      |   2 +
>>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 128 ++++++++++++++=
+++++++
>>  4 files changed, 147 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drive=
rs/gpu/drm/i915/display/intel_display_device.h
>> index b559ef43d547..91d8cfac5eff 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -197,6 +197,7 @@ struct intel_display_platforms {
>>  #define HAS_TRANSCODER(__display, trans)        ((DISPLAY_RUNTIME_INFO(=
__display)->cpu_transcoder_mask & \
>>                                                    BIT(trans)) !=3D 0)
>>  #define HAS_UNCOMPRESSED_JOINER(__display)        (DISPLAY_VER(__displa=
y) >=3D 13)
>> +#define HAS_UNDERRUN_DBG_INFO(__display)        (DISPLAY_VER(__display)=
 >=3D 35)
>>  #define HAS_ULTRAJOINER(__display)        (((__display)->platform.dgfx =
&& \
>>                                            DISPLAY_VER(__display) =3D=3D=
 14) && HAS_DSC(__display))
>>  #define HAS_VRR(__display)                (DISPLAY_VER(__display) >=3D =
11)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers=
/gpu/drm/i915/display/intel_display_regs.h
>> index 9d71e26a4fa2..89ea0156ee06 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> @@ -882,6 +882,21 @@
>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK                REG_GENMAS=
K(2, 0) /* tgl+ */
>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)        REG_FIELD_PRE=
P(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>> =20
>> +#define _UNDERRUN_DBG1_A                        0x70064
>> +#define _UNDERRUN_DBG1_B                        0x71064
>> +#define UNDERRUN_DBG1(pipe)                        _MMIO_PIPE(pipe, _UN=
DERRUN_DBG1_A, _UNDERRUN_DBG1_B)
>> +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK        REG_GENMASK(29, 24)
>> +#define   UNDERRUN_DDB_EMPTY_MASK                REG_GENMASK(21, 16)
>> +#define   UNDERRUN_DBUF_NOT_FILLED_MASK                REG_GENMASK(13, =
8)
>> +#define   UNDERRUN_BELOW_WM0_MASK                REG_GENMASK(5, 0)
>> +
>> +#define _UNDERRUN_DBG2_A                        0x70068
>> +#define _UNDERRUN_DBG2_B                        0x71068
>> +#define UNDERRUN_DBG2(pipe)                        _MMIO_PIPE(pipe, _UN=
DERRUN_DBG2_A, _UNDERRUN_DBG2_B)
>> +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN        REG_BIT(31)
>> +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK        REG_GENMASK(30, 20)
>> +#define   UNDERRUN_LINE_COUNT_MASK                REG_GENMASK(19, 0)
>> +
>>  #define DPINVGTT                                _MMIO(VLV_DISPLAY_BASE =
+ 0x7002c) /* VLV/CHV only */
>>  #define   DPINVGTT_EN_MASK_CHV                                REG_GENMA=
SK(27, 16)
>>  #define   DPINVGTT_EN_MASK_VLV                                REG_GENMA=
SK(23, 16)
>> @@ -1416,6 +1431,7 @@
>> =20
>>  #define GEN12_DCPR_STATUS_1                                _MMIO(0x4644=
0)
>>  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>> +#define  XE3P_UNDERRUN_PKGC                                REG_BIT(21)
>> =20
>>  #define FUSE_STRAP                _MMIO(0x42014)
>>  #define   ILK_INTERNAL_GRAPHICS_DISABLE        REG_BIT(31)
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu=
/drm/i915/display/intel_fbc_regs.h
>> index b1d0161a3196..77d8321c4fb3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> @@ -88,6 +88,8 @@
>>  #define DPFC_FENCE_YOFF                        _MMIO(0x3218)
>>  #define ILK_DPFC_FENCE_YOFF(fbc_id)        _MMIO_PIPE((fbc_id), 0x43218=
, 0x43258)
>>  #define DPFC_CHICKEN                        _MMIO(0x3224)
>> +#define FBC_DEBUG_STATUS(fbc_id)        _MMIO_PIPE((fbc_id), 0x43220, 0=
x43260)
>> +#define   FBC_UNDERRUN_DECMPR                        REG_BIT(27)
>>  #define ILK_DPFC_CHICKEN(fbc_id)        _MMIO_PIPE((fbc_id), 0x43224, 0=
x43264)
>>  #define   DPFC_HT_MODIFY                        REG_BIT(31) /* pre-ivb =
*/
>>  #define   DPFC_NUKE_ON_ANY_MODIFICATION                REG_BIT(23) /* b=
dw+ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/driver=
s/gpu/drm/i915/display/intel_fifo_underrun.c
>> index c2ce8461ac9e..8a05b5c5fccd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> @@ -25,6 +25,8 @@
>>   *
>>   */
>> =20
>> +#include <linux/seq_buf.h>
>> +
>>  #include <drm/drm_print.h>
>> =20
>>  #include "i915_reg.h"
>> @@ -34,6 +36,7 @@
>>  #include "intel_display_trace.h"
>>  #include "intel_display_types.h"
>>  #include "intel_fbc.h"
>> +#include "intel_fbc_regs.h"
>>  #include "intel_fifo_underrun.h"
>>  #include "intel_pch_display.h"
>> =20
>> @@ -57,6 +60,118 @@
>>   * The code also supports underrun detection on the PCH transcoder.
>>   */
>> =20
>> +#define UNDERRUN_DBG1_NUM_PLANES 6
>> +
>> +static void read_underrun_dbg1(struct intel_display *display, enum pipe=
 pipe, bool log)
>> +{
>> +        u32 val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>
>Nitpick, I really don't like the style of using "functional" (for want
>of a better word) initializers. Complicated is fine, like below for
>masks[], but doing something with the hardware or something that can
>fail, feels iffy.

Alright.  I'll update this to do as you suggested below.  One little
annoyance is that we will need to open code REG_FIELD_GET() (as done in
[1]), because the mask parameter needs to be a constant expression.

[1] https://lore.kernel.org/all/20251021-xe3p_lpd-basic-enabling-v2-11-10ea=
e6d655b8@intel.com/

>
>> +        struct {
>> +                u32 plane_mask;
>> +                const char *info;
>> +        } masks[] =3D {
>> +                { REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, val=
), "DBUF block not valid" },
>> +                { REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val), "DDB emp=
ty" },
>> +                { REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val), "D=
BUF not completely filled" },
>> +                { REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val), "DBUF be=
low WM0" },
>> +        };
>> +        DECLARE_SEQ_BUF(planes_desc, 32);
>> +
>
>IMO there's also a lot more clarity in having the assignment and the
>check back to back here:
>
>        val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>        if (!val)
>                return;
>
>Ditto below.

I'll update those as well.

That said, for curiosity:

Do you prefer to always use the pattern of declaring a variable for
register values and assigning the result of the reading as separate
statements?  Or is this a preference for specific cases, like this one?

I did

    git grep -W 'u32\s\+\w\+\s*=3D\s*intel_de_read' -- drivers/gpu/drm/i915=
/display/

and found cases where the pattern "u32 val =3D intel_de_read(...)" appears
to make the code a bit more concise IMO.

While here in read_underrun_dbg1() the other variables and initializers
do get in the way of readability/clarity, I see cases like:

    u32 val =3D intel_de_read(...);

    do_something_with(val);

to be still clear, and each saves up 1 line of editor real estate.

--
Gustavo Sousa

>
>BR,
>Jani.
>
>
>> +        if (!val)
>> +                return;
>> +
>> +        intel_de_write(display, UNDERRUN_DBG1(pipe), val);
>> +
>> +        if (!log)
>> +                return;
>> +
>> +        for (int i =3D 0; i < ARRAY_SIZE(masks); i++) {
>> +                if (!masks[i].plane_mask)
>> +                        continue;
>> +
>> +                seq_buf_clear(&planes_desc);
>> +
>> +                for (int j =3D 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) {
>> +                        if (!(masks[i].plane_mask & REG_BIT(j)))
>> +                                continue;
>> +
>> +                        if (j =3D=3D 0)
>> +                                seq_buf_puts(&planes_desc, "[C]");
>> +                        else
>> +                                seq_buf_printf(&planes_desc, "[%d]", j)=
;
>> +                }
>> +
>> +                drm_err(display->drm,
>> +                        "Pipe %c FIFO underrun info: %s on planes: %s\n=
",
>> +                        pipe_name(pipe), masks[i].info, seq_buf_str(&pl=
anes_desc));
>> +
>> +                drm_WARN_ON(display->drm, seq_buf_has_overflowed(&plane=
s_desc));
>> +        }
>> +}
>> +
>> +static void read_underrun_dbg2(struct intel_display *display, enum pipe=
 pipe, bool log)
>> +{
>> +        u32 val =3D intel_de_read(display, UNDERRUN_DBG2(pipe));
>> +
>> +        if (!(val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN))
>> +                return;
>> +
>> +        intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_FRAME_LIN=
E_COUNTERS_FROZEN);
>> +
>> +        if (log)
>> +                drm_err(display->drm,
>> +                        "Pipe %c FIFO underrun info: frame count: %u, l=
ine count: %u\n",
>> +                        pipe_name(pipe),
>> +                        REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, v=
al),
>> +                        REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val));
>> +}
>> +
>> +static void read_underrun_dbg_fbc(struct intel_display *display, enum p=
ipe pipe, bool log)
>> +{
>> +        enum intel_fbc_id fbc_id =3D intel_fbc_id_for_pipe(pipe);
>> +        u32 val =3D intel_de_read(display, FBC_DEBUG_STATUS(fbc_id));
>> +
>> +        if (!(val & FBC_UNDERRUN_DECMPR))
>> +                return;
>> +
>> +        intel_de_write(display, FBC_DEBUG_STATUS(fbc_id), FBC_UNDERRUN_=
DECMPR);
>> +
>> +        if (log)
>> +                drm_err(display->drm,
>> +                        "Pipe %c FIFO underrun info: FBC decompressing\=
n",
>> +                        pipe_name(pipe));
>> +}
>> +
>> +static void read_underrun_dbg_pkgc(struct intel_display *display, bool =
log)
>> +{
>> +        u32 val =3D intel_de_read(display, GEN12_DCPR_STATUS_1);
>> +
>> +        if (!(val & XE3P_UNDERRUN_PKGC))
>> +                return;
>> +
>> +        /*
>> +         * Note: If there are multiple pipes enabled, only one of them =
will see
>> +         * XE3P_UNDERRUN_PKGC set.
>> +         */
>> +        intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDERRUN_PKGC=
);
>> +
>> +        if (log)
>> +                drm_err(display->drm,
>> +                        "General FIFO underrun info: Package C-state bl=
ocking memory\n");
>> +}
>> +
>> +static void read_underrun_dbg_info(struct intel_display *display,
>> +                                   enum pipe pipe,
>> +                                   bool log)
>> +{
>> +        if (!HAS_UNDERRUN_DBG_INFO(display))
>> +                return;
>> +
>> +        read_underrun_dbg1(display, pipe, log);
>> +        read_underrun_dbg2(display, pipe, log);
>> +        read_underrun_dbg_fbc(display, pipe, log);
>> +        read_underrun_dbg_pkgc(display, log);
>> +}
>> +
>>  static bool ivb_can_enable_err_int(struct intel_display *display)
>>  {
>>          struct intel_crtc *crtc;
>> @@ -262,6 +377,17 @@ static bool __intel_set_cpu_fifo_underrun_reporting=
(struct intel_display *displa
>>          old =3D !crtc->cpu_fifo_underrun_disabled;
>>          crtc->cpu_fifo_underrun_disabled =3D !enable;
>> =20
>> +        /*
>> +         * The debug bits get latched at the time of the FIFO underrun =
ISR bit
>> +         * getting set.  That means that any existing debug bit that is=
 set when
>> +         * handling a FIFO underrun interrupt has the potential to belo=
ng to
>> +         * another underrun event (past or future).  To alleviate this =
problem,
>> +         * let's clear existing bits before enabling the interrupt, so =
that at
>> +         * least we don't get information that is too out-of-date.
>> +         */
>> +        if (enable && !old)
>> +                read_underrun_dbg_info(display, pipe, false);
>> +
>>          if (HAS_GMCH(display))
>>                  i9xx_set_fifo_underrun_reporting(display, pipe, enable,=
 old);
>>          else if (display->platform.ironlake || display->platform.sandyb=
ridge)
>> @@ -379,6 +505,8 @@ void intel_cpu_fifo_underrun_irq_handler(struct inte=
l_display *display,
>>                  trace_intel_cpu_fifo_underrun(display, pipe);
>> =20
>>                  drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pi=
pe_name(pipe));
>> +
>> +                read_underrun_dbg_info(display, pipe, true);
>>          }
>> =20
>>          intel_fbc_handle_fifo_underrun_irq(display);
>
>--=20
>Jani Nikula, Intel
