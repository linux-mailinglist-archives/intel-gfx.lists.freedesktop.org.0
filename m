Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kyngNLnwH2rEsgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 11:15:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB616360CB
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 11:15:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hq6uHHCu;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8A6410E3FE;
	Wed,  3 Jun 2026 09:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D96710E3FE
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2026 09:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780478135; x=1812014135;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vOttmf76JQi4Ew2RIgpEiZ6NwgVQqCZ0l+NTAO2Ri6k=;
 b=hq6uHHCuFeuS4fdIjRV/sheGNMiM/PTQMt+s2CCyOKt8XaBFDbGMWSvX
 hGJ6VOKs0VrwoGeC3W13nVTqKq5hplaUZ45G//vqShkslgwB43dXEUZWf
 54lwxEjheg7DmZ6Np80hXEQ8sgzxuPpYW3cdH3bMEjqLgTT4NlEyr4+UL
 FP83ldQWHIGUCBI/lFEwMDxNEczCHRWs0nOiAbJdWvZeiw/zrmQ/xfFgx
 oSU+hFfzxI4MuLXWfSerGjEu1gtoxEdvQTWFG/vbUA/jVH6m4K12SoVsP
 pHTOraKSuZTSejOcqJ7uYRzcEYcFr/pU7T9VQni4DI7jf207Y5iF1BBVG Q==;
X-CSE-ConnectionGUID: 2jSr0clNT1OoVQDqcNM8yQ==
X-CSE-MsgGUID: dMuqCxXbQKmonYvHv83+vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="80313377"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="80313377"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 02:15:34 -0700
X-CSE-ConnectionGUID: MEvSsrP3T+qDkVBsQhZKBA==
X-CSE-MsgGUID: AXU4ze+0TQSiSwLkmHd3CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="282280354"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 02:15:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 02:15:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 02:15:33 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.33) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 02:15:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MiCH8f7O5hkub0S2TbvDnrP4OmV2uvmatqwEasgX//b2LCkm5MhViQhrERUC4bYxWgkLEy2MCAvlJ6nR5rjka1W3Vfyiyq26v3AuqNpAg/q7u0cfXrRk+u5KCf2GY4ozgx+CVbl3mX16q6wBaJ0oZBynb4zEcroCCKdecqKcwE906t2kzoV/XotWYLekhdwOXovNHdj9m/zHlLSibxVSaCgYt89qococ9GI7J5t6Z4bXs07TAMA19nk8ORB2/UYOR4m2wne3TMDHK2vVUYRtNJ3InBIxMniz/XGvmRVJOP7Od4sNvFJwlmxENyx8pnezhbOioYq5UCjdulg13p2xxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YhUB5utNx/1zZYKs/kYM+ezOtd9YdCrAwpjqL9AearU=;
 b=sPjaazOBoVvbFDLR+YYdNPX73zBIiJLdFIZWvrXh4n0hu50M4hT3mggdCbcnZoNkwUA/T29CN2xmQP/vCZQIMzr8ue/yE5Xqf1dzydTl00nfPlZkuFk64t4BoTJ+7S9KniPkhrrS4Vo+b9xXM9EHqbCLLyh+PjK0Y+PaVDD+mqlCKreaC22LfdNk8WLHRGOepOr2J8zOMsQrnMM2pzsSY2qlTDG0an+5mzKHb/kUVcoIVQrE8yZbDxPzsYXBHPYeBDFKX3aZRhJWUaS8CP8RzC2gg10VlH7ZI8YmplzJQqi7RZlbggjVTBJw2m1rYg/JJtXTa+zJC44YePsbMTTa5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by SN7PR11MB7017.namprd11.prod.outlook.com (2603:10b6:806:2ac::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 09:15:31 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 09:15:31 +0000
Date: Wed, 3 Jun 2026 09:15:21 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>
Subject: Re: [RFC] drm/i915: Do not cancel live requests
Message-ID: <ekfbqkzm3ti2m7h6yh6ugrflecue6kchebikw2q56yebmvssnt@ufr33ojqy6qn>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260602121431.3321203-1-krzysztof.karas@intel.com>
 <6eyjop6ptsosd4z6lfyvdra264wz7cj2ymlvuywbvcec4z4lyt@oqulkydzq72w>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <6eyjop6ptsosd4z6lfyvdra264wz7cj2ymlvuywbvcec4z4lyt@oqulkydzq72w>
X-ClientProxiedBy: TL2P290CA0013.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::7)
 To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|SN7PR11MB7017:EE_
X-MS-Office365-Filtering-Correlation-Id: d6d500e4-1b06-4239-ed88-08dec150a8eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099006|5023799004|4143699003|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: q6/f6X/Y/cJyuJPWr04QHR4MTRiyvO0CGjiG3eS5/G93+JpU60Bv7VyzAbJTNl4pBH6hX8Xs5nJ9RiTbX76S2UyvYpPocDwa9yN9io65CKSdMaxurLh7YfdnitBJmVA71QzffkZfTg9IyPSd3nvw3B1Wo2hGvyQ2izM/BFe7ihYwjE4zj9uF+lcgPTK6R4mT3EuUm8cjKXGRtpojPCs2TCwOypyCzY70chm8PuMXph734ylA5z4vXnUhZVuFAFI2OQAPjtWjJpyjx49OT8YNp4zW66cUlxt7YHLsrnl3bJmYakRYgDclrGS4jG+Uys5qkaBv86AdVgWLLQbv9cof08hYUfnheuFBNbXOAoQDs+NLlEqCLjKSiIDH7hHIx4vFK+WNuaPyYF7XWyHtz8HVpGLC4RPKk0s9sex2sWdkkmqxY38/72Jx9GPoHzW0x6u19p6HipMCpPKvF8dHdxuSXeAjwKsWfVbaowIMaCGsUNMYx78qUThTJiQVtMAihLe6M/RaUrSuF55ljEGATLLtgbmGt9mXRMPahNO+SQp35zPcR7738JzUqYM/uV8l3H7hEZ42qi9xlwYD3zf22n3g2YTlFWpAB80foMokSt739nV4SNg8squziUHFMeIfPUu/2PvQA2PVhZGAAEMXaVAbf4aoTBnTWpwEKwO3ZPTCoVjAfY1Hxse5pjgHA3ItwLT5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099006)(5023799004)(4143699003)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MCtrNUVLM1czZkJBekdSRnpHNWtIekZ3MlV4aStBNkxKL3ErWHRybnE4MkRx?=
 =?utf-8?B?STZqTk44Zmg5bzhWNzZqcFFRVkVQdzFSR1lrR0laN2Z4cG9TdExWZVFVMTdq?=
 =?utf-8?B?b2pCSnlKSGZoV2IzMmZWUUlyc0dnR0tITm9vTVdIYlQxUGZ6WU9IdUcwODJK?=
 =?utf-8?B?VWxkWll6K01XNk41Z2RxZ1dPZkRseFhSSmxaZ1pTdlhIK1FFNEZSUkN1WnVi?=
 =?utf-8?B?TnRLaURMQjM3RWpiMGxldEJPU0VVMlFhWTVhM2t3UDY5OU1KWmhRRFcwZHJZ?=
 =?utf-8?B?aGgyWVV0Z0YxV2RtZmJwdmJlZkZWaEZBZHhFSFRFRktOWXhVWEp4TXAyRGgx?=
 =?utf-8?B?QnhnUDJKUlFmUkhxbDZzNmZxc3VxbDZwUUJjYis5MFEyTzBWOGd4ME5wZU0r?=
 =?utf-8?B?bmhyb3JEZXdkaStRbEZjZVdkN24xTUlRZHRKK2NxZjNWV3JlSThKUHR0WU8v?=
 =?utf-8?B?TFVaZWVCeHAyNnpZWTZFZ05QNzhWY1ZrV3JPWVEzU1RrMkxaU2lnTnZ4eGNK?=
 =?utf-8?B?WCtGUzNCc0wrVVY2aU94ajVHY056b0txbWUrRVFBZFVlYi9RUXBTRGtSeE4z?=
 =?utf-8?B?L2JxTWxZYXpYdzRCSG1hUzd1WlNqbml3THVXeVRVSG5mR1RhaDNYYTBqSUlh?=
 =?utf-8?B?aWZuZlFCN1ZmWW5KVmZMQ21BSVkxRG5ydGI5aEV2T3R1amhGcGM4L2JDQWFx?=
 =?utf-8?B?Z1pvaW5TT1NyRGpSOHAzRUt3MFRhVjBVRkJTV085OURGVjVqei9HTjh5MXFG?=
 =?utf-8?B?UU9wUGFZZGRNQTFEelUwSUUxQWVqakUrbzMra01PODlFeGhBanAyZ2ZVSWhj?=
 =?utf-8?B?Wlh3cUhaSS9CcDU1aTkrQWVua296SFU5YzFaZnMzQUhCRi94a0hmY292ZnZm?=
 =?utf-8?B?MFV5QkFyL2FhN09UdU5CSGNWVmdRYlcwa3lmSGV4WHc1YTdDM3RrT1BKYVBU?=
 =?utf-8?B?THJialFXL1dtdXNjc2tGZU00U2dVclc5ZVVnaDJGeUxtSHJQSlNkSXc5ZHpF?=
 =?utf-8?B?VjIzWnhMcjNkanJDRi9HTkhxZXhQbWI5emVMTE1oUkttNkZadVovK2xrWUY0?=
 =?utf-8?B?Ly9GMEJBbTdlMEtZMldKQ3lzUjJPSi9GbFRoZUNRQUpobzlHNzNSWXFESHk5?=
 =?utf-8?B?cXBxclZvTnlleGpKVEhBT1l6bHRCRDdabnN5WThuRE9pMEIxeGo4bXpkdTlo?=
 =?utf-8?B?eFY3ZjB6MkppK2xPR1JlZUp1eCs0K1NGUHhEbi9KUXFkOXZDWTlSWkQ1aEwy?=
 =?utf-8?B?Z1loMjRNVXJ5cmhoYUhHMTA5OTBBUFBGRkdqMU9uek9WSTlPVTlkZHFkOWpY?=
 =?utf-8?B?b3lyNlAxL3MyL1ViUHNVMzVSUTl5ajhrNGxVd0NVVXNpWWZyK01zdUMzZ1da?=
 =?utf-8?B?ZXJMUDlWbEx5dldHakdiRnlibzVGeml1V0Y2YmRFZDVxaHJIc001OWVkL3Rs?=
 =?utf-8?B?SWdhdlZ3TVh0Q2ljeVdBOVUwamJvdVpIcFowRDFjcDh5TWJpcW9OdXZ6RHhn?=
 =?utf-8?B?ZUI1TzlNWEo4ZndnK0V2RjMzWXlqUjlNcmFQRjdwWTJpWHlBWVJuck1tZnB1?=
 =?utf-8?B?M0lFVWVyaTlIaXBBWU9NMjN6cmY2N1I5VmFyekY1ZEUrUWdaaEQ1ZEtOcVQ3?=
 =?utf-8?B?V2RHT3V6a2FTc21JcHNsT2c5dUJFeE9NVzJZdFBRZXpVRUV5M3Z2QmNac3Za?=
 =?utf-8?B?ZE1hdXVYc2dkSHNUTFpSa2gwV3dxSzQrUUx1ZitFUldBVXloVUhXdCtpMTBa?=
 =?utf-8?B?RnNtTW84M21LMkVxYU5iZnlBeHJYVFUvZnQ0R0VJQ05ub1NuWlA3UGFvK3Z4?=
 =?utf-8?B?QXZsRFlZNzZuNXFDelZNR2VTTUdUeElCcDdzeExENk8wK0p3d1lQYVB0WHpP?=
 =?utf-8?B?WE44bXlTcm9yRTBkV2twbVZMNHczK0wyWmNvN251RmRPeHRic2N5V0FSa3V4?=
 =?utf-8?B?bGtJYzdqN1ZadmY4cHpqWi9wcGJTRENYUU9vaFdCNmV6TFJ0VC8xSm9SVW95?=
 =?utf-8?B?Q0tpbzJwRUx2U3NVUjEzcGlLdDdkRG44WVRDN0RKSndkSVY2cFFEb01WZjFL?=
 =?utf-8?B?VU1nUE1pbHFaa0NGTFBLeExLSWZRSUwzZGlsY1Z5SnVJR0FnOU9XMWY5d0VR?=
 =?utf-8?B?dHQ5SWFYWWxQZzYyd3RaTThxNFgwdldYZzIyOFM3NEJCTzJ5U1puNzVtRGMz?=
 =?utf-8?B?M0M4ZHVVazhPOUxPZEtNMXlEdU1lRjMvMUhibXdWTGdTY3VIc05LS0t6WHht?=
 =?utf-8?B?U0l2bks0YjNqT2R2MldXSWx3cW53RW53T0VoSVlvKzJrc1NueHIrOU1OSFNP?=
 =?utf-8?B?T3o0cEphdVFtaTkyOXREWVVGVDJVM2xlZUpHTXZRWDE0VUR4WlZ2RDF4T2Q3?=
 =?utf-8?Q?AQigxKba5vaLv3+I=3D?=
X-Exchange-RoutingPolicyChecked: E7tWFh08CLgIZ60XJvSm4YHg7SrqIiH0XwvZdB8Teltnkf/dlcTYQ88SsEHBQtvzPcQSX3TTZXbh7rOxjSeKJPLrOehFuvtmHfTmIiX6aBpKjn5sIXiXiVn3Q+uFHeLdF7vnLZjCuWZ+5NJ5h6RO83JL2ap0Q4IOEunvHAOTuw+2ihrcTfvoOz4yS1yUaxHHxuvNT2nXrYCCkI41qQd6uaznCA03Iu5KrlpIR+AFMY3zI1sSd0ak829Vbi1B9hQ+RdTuchtGdCcjdMIFqk2gPAB5M6AcF8IGQ2erht3jtYeJWea1ey2aU2d7cdyUAmEW/f3XYMGX7E+UfOQiVXAUcQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: d6d500e4-1b06-4239-ed88-08dec150a8eb
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 09:15:30.9825 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T63J0y9S590G/5etUeV9mvw76ZqJ9BT1SuKCQdjGN4ylV1f+zkWwXtyzNwiZQGCTcv7ajPkpuCEbQl99q5pOTXjHctoG2VoUEZyuUBu/O8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7017
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.niemiec@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3CB616360CB

Hi Krzysztof,

[...]

> Can a request that's not already on the GPU be passed into _unsubmit()
> again? Otherwise setting running_since to 0 is not needed, because it's
> gonna get overwritten in _submit() anyway.
Nice catch.

> 
> >  	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags))
> >  		i915_request_cancel_breadcrumb(request);
> >  
> > diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> > index b09135301f39..48b619ca6bf4 100644
> > --- a/drivers/gpu/drm/i915/i915_request.h
> > +++ b/drivers/gpu/drm/i915/i915_request.h
> > @@ -325,6 +325,9 @@ struct i915_request {
> >  	struct i915_request_watchdog {
> >  		struct llist_node link;
> >  		struct hrtimer timer;
> > +		ktime_t running_since;
> > +		ktime_t preempted_at;
> > +		ktime_t total_run_time;
> >  	} watchdog;
> >  
> 
> The preempted_at variable is currently not needed, as it's only ever
> written to and never read from in this patch.
> 
> The running_since = 0 trick in _unsubmit() used to filter out the
> requests that have been passed to it but haven't actually advanced seems
> a bit hacky at first glance, assuming it's needed. It does make sense
> if you know that running_since > 0 if the request is active and = 0
> otherwise after reading the code a bit, but it's not readily apparent
> to me.
> 
> Something like the following would be clearer to me, however please do
> judge yourself and check with others whether it is actually more readable.
> 
> You could keep track of the most recent time of being given GPU time
> (running_since) and the most recent preemption (preempted_at). If
> running_since > preempted_at, that means the request has actually
> advanced, since it has been _submit()ed after the most recent _unsubmit().
> Conversely, if preempted_at > running_since, then _unsubmit() has been
> called after the most recent _submit(), so the request couldn't have been
> active.
> 
> So something along these lines:
> 
> in _submit() (I'm omitting the struct stuff for brevity)
> 
> 	running_since = ktime_get();
> 
> in _unsubmit()
> 
> 	/* "if the most recent submit was after the most recent preemption" */
> 	if (running_since > preempted_at) { /* possibly >= instead? */
> 		preempted_at = ktime_get();
> 
> 		total_run_time = ktime_add(total_run_time,
> 					   ktime_sub(preempted_at, running_since));
> 					   /* the block of time between
> 					    * activation and preemption
> 					    */
> 	}
> 
> This along with renaming the variables to something like (running_at,
> preempted_at) / (running_since, preempted_since) for symmetry.
Huh, I quite like this approach. More stuff appears implicit,
but after giving it more thought, I think it looks cleaner and
equally readable.

I'll experiment with this and see if the results acquired
empirically are the same.

However, this is a major change to the logic of handling
preemption, so I'll wait for some more voices from the
community before making this a fully fledged patch.

Thanks for looking at this!

-- 
Best Regards,
Krzysztof
