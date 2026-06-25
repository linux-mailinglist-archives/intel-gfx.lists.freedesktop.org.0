Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FWVoJCAxPWoAywgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 15:46:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E707C6C63C8
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 15:46:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JLmP+Jyn;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 073D710E1FD;
	Thu, 25 Jun 2026 13:46:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38FFA10E1FD;
 Thu, 25 Jun 2026 13:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782395166; x=1813931166;
 h=content-transfer-encoding:date:message-id:subject:from:
 to:cc:references:in-reply-to:mime-version;
 bh=/+lIQHjcBVkVpf6ZiHgTx88SjZQe6Mh07HtI4kWEMs0=;
 b=JLmP+Jyn76Mf6IDGI6nfiJPU4EhmdxE4px0x8X67fGGVIHG5+zcPWTsv
 IYhyDVBMaKaxXydGTvIulZvk03gbEnq1FnV1qwJ/J60+WMzI1X5WXE4eN
 RTnLqoo9FkXP0n3BNcvbgA1ZCtzSPHM7RkzoOx8RBIfQTXs47uVSZbEkP
 mxDBGWL/tMJ+0aJWWp+T6z0doKywjpYrZXjWpAmiG0klDi+V7zQJEQy8E
 agHFbT4fRforGgcy5CWVo3vvgTswt6gHdqpPz7iz9sUTqVDaN4iJtFHqG
 FwlZ6XFDBZOl4itXvQSTgchBBLuURSFW4aGIDLfRIo20ok8vsbVDZqypA Q==;
X-CSE-ConnectionGUID: F5eN4ddhSp+HzwSavCjoUw==
X-CSE-MsgGUID: 6YvoyqeMRvKAsb5VP89lkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="83174574"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="83174574"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 06:46:05 -0700
X-CSE-ConnectionGUID: GeBQoopgQR6p6mCAbwZYvQ==
X-CSE-MsgGUID: FQTFKjtuQAiHwLjhVVTl8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="246763430"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 06:46:05 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 06:46:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 06:46:04 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.11) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 06:46:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pWBUfGP6latrVyKDpLktIwG+Cj3SSOCquksTxukI/4Si9/s2DneLv1KMhMcceHEiYTygIRsq0SkWzVXYqHiuxLKiSLSJ28hYsRPGux0q58odvbxna6VX3aTXdzP+EP6pbmPnrrhmPghcBU9/rTTjc5MTG8pERHdNWAgouNyxYqRE/QPqhkArlgMeuVNcHqIiE6qGdX1BllCbvGORD5H3+y4r+yaXgmVaylsXjJVVQgrTZsRrqS26al3MMNClzUKbrODT5RINeVJ0XkIz+EwMBYQWsJw6qg7Cx6bG8WXLHuchwcRWm25Vv3I1cXxsReTqsAIUTP2jooD6EYlNLQYD2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/+lIQHjcBVkVpf6ZiHgTx88SjZQe6Mh07HtI4kWEMs0=;
 b=qfBE+RaqAH+F6qxK1/ggs/C9md+EpTFNXhl37XXg8MTHA7eU9glF+c/7tbhTNte4BdG9TmS88Iv16odEcWho4GAlEPoabaMcIA1BqpiJqr7VY4BeLEtmclkibyG3cDnb/NhEHPRL0bjL4VhG1u1sp5v+9uchy9GaUckPk5s/NKlgI8LooEfYhqXQ1t5YjH/3sfDR3sbGDtoU2NI4HmVA8GefMpkhK0Gq62KKuw+fmOFxNCzINz3XS1Jksu4TMXelkwtaXt2uwOmWLA08hezaazcJ5OBo9W6URxJOiIEuNE6DF2vXI2WT9XRYCoKOHkSpHFqyEc5wyXFAA8mMR3g4Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4SPRMB0067.namprd11.prod.outlook.com (2603:10b6:303:221::22)
 by IA0PR11MB7840.namprd11.prod.outlook.com (2603:10b6:208:403::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Thu, 25 Jun
 2026 13:46:01 +0000
Received: from MW4SPRMB0067.namprd11.prod.outlook.com
 ([fe80::3605:4f97:fbe7:2c4a]) by MW4SPRMB0067.namprd11.prod.outlook.com
 ([fe80::3605:4f97:fbe7:2c4a%3]) with mapi id 15.21.0113.020; Thu, 25 Jun 2026
 13:46:01 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 25 Jun 2026 15:46:31 +0200
Message-ID: <DJI6D31NQPT3.13ZQUHLF0KGSP@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Return bool values from a boolean helper
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, dri-devel
 <dri-devel@lists.freedesktop.org>, intel-gfx
 <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@kernel.org>
X-Mailer: aerc 0.21.0
References: <20260625114442.2912230-1-andi.shyti@linux.intel.com>
In-Reply-To: <20260625114442.2912230-1-andi.shyti@linux.intel.com>
X-ClientProxiedBy: DUZPR01CA0186.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b3::15) To MW4SPRMB0067.namprd11.prod.outlook.com
 (2603:10b6:303:221::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4SPRMB0067:EE_|IA0PR11MB7840:EE_
X-MS-Office365-Filtering-Correlation-Id: 23b2753c-9115-42df-dc3c-08ded2c017fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: zMEHGoQIZlK5ccHcDhaOo9K4RbmkeVdYfNYwWDsePEohed8Ql38pObqgDTozNpe34VObxrHkNXirxjrgIpE000t+bLA44qCv7QMxWLS4vZDDn97Mt4q1YlkAJf/G/apOwNG9ikmHOTUWmf/pPzXvnofyFL6xU2Gbr0yAKtDrFkmoiQQ0QMDS4sUbduUEQDBV6A13lcHlloA2MwXCGMo04PWx9uzx7bHlqTJhI2R8yWbBPRnqgilSus8Aq+CfdZ3gZvg9UlW40tvBW6POzujpAb7p5eLISlUhEEyS3pZub4R7cvjm8QNfXj1pm2gZvZ0T2AJOUorwBTYztx8LQsgyCntxGfBbM5s0RziT/ElIlw4m/8aKOJLWh7oH1It3aLAATUgwZbHwGtjd9BefZ1O6vrYh4o43z+l+IIkBLXwYKYFUjiKenYwCU2mq8sJcLWsKUyWbebY3y7fCjB6tne1h9dUyza4Y8snTNyMgFNZIw0jGvfFxKeq/n0Qj4C6V7zgS4+xF1txmk/RU+dKQZ/izS9mtOLDRRXjOhrJR1X/gSE1FcXtgx+OptW1WXGgJoQQA7ra/CPzl3fA9FhxCjq023X9xm6hoPPkyVQyJORaO6Ap6pCosVQaTz89DNvZZtiaTxtV/reXu1+eC09l/KPXk1f8jN1bn5CJJBneKUTnzXeY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4SPRMB0067.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(22082099003)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEhKSlVWaGxvMjV2WG5LZFdnZmYycU9FRDlESnhwNGhuK2ZDbC92RDNoa0l2?=
 =?utf-8?B?aUJVT1BMeFhXYmpSWk9KNDNUMmVrUitSdGFyRUVvclk4YWJVY3p2V0x3NklS?=
 =?utf-8?B?dFJhVFVqNXlYS2h1TjkxNnJjWlVSclNKSzZIbzY4VmtUR1FxUGdRSUt3WVFz?=
 =?utf-8?B?a2RVM2ZGK3A3VmI3YkVUdWJrdEVtRUNHMUVsUXpveVRMbklHTWExUXBVY21M?=
 =?utf-8?B?VWRCS3ZhSlJCUksrdVdlNGJXUW5YRmlNWGdtd3lxYjhBVGlBMVZpNE9LM2tF?=
 =?utf-8?B?aWFHcFN4WlAxMFRpMXNuTExaQ1BBQkVjVGJTcXh4eS9YeXYxVUNmWXFmcHk4?=
 =?utf-8?B?NVh5ZmZzeU92NmdUR3ZJY0tBZXNtdUUyd3ZMNGRyWXZBWjRLcUdtc3lRK2ls?=
 =?utf-8?B?Yy9iaFZOTUNMeW1ENVNuOUgyVWxsL2NDZVEvMmxSenFFbHhCSEtrS1hNNTc1?=
 =?utf-8?B?aVk0OEdXemZCMFA1ZVowVkVlbW41N0pPNVo3QjlDWkdqU1YzUGZXRm9XWHBO?=
 =?utf-8?B?enQrTjhYK3pUbUhCVUdBaEQxZWYzaWFrVWcxR3h4T1VFUUZCT1QxSUZqQXhx?=
 =?utf-8?B?OW9TYURCYlFhVEZKUlU5NXRrbFpWUGtBWHVSWS92eVFDay9JajJNMlVCZHBF?=
 =?utf-8?B?Z0F4QkZnbldRZ1pRc05Yc1V3eE93eDhzT2Vzb2RQSTNmWDBlVnNjZE9YTFhZ?=
 =?utf-8?B?NUoySmdrKzIrR2JlSXc3YkJwZ2FodUxEWWlrRFZ2a2d1MHA5K1VHQ1VPcDRR?=
 =?utf-8?B?VnVRSmpKaXpXMUF2cjg1L3F0M0o3WHZJR0N6WWZkU0dEQ3pZWmFWcmEyZ1Fl?=
 =?utf-8?B?M2ZRcjNOS0IrRXgralRHOFJUQ0hmWVVLWEkyTDBDNE11dVJQQ1FtVk1ncEFR?=
 =?utf-8?B?eXpRVFhrckxWUzFUTkVMaW5LUWRGaXJDZFRvM0d3OWdRaEtpVEt2dU50dDBr?=
 =?utf-8?B?RDVrL0dZRVpVa1YwakpDRTQ5V0UxN2UwMVpnMTBVQUJUekJBMk80NzNGZzJq?=
 =?utf-8?B?eCtvOE1iSGRMSEFKWFp3S2xJWjUwSWlBV0xPZE5DWFR3UXBJVFQ2Rjh0bEhM?=
 =?utf-8?B?WEJIdjZ2ZGdsRDdqZHgyS2ZMb1o2UlZURDNKWXpmTVNGVEU1L3dSRFhCTmRn?=
 =?utf-8?B?QUt5TFI3MEtlR0RabVU3dSsyT2pxMXh5K2pqNHA0RmpyL0RtcGdDN0lTVjJB?=
 =?utf-8?B?d29OeENPYWRGeXhld3ljMzNQSHRhR3ZWQUVsVHdlUFBiRDJqcllUckZKVkx6?=
 =?utf-8?B?RmpmVkkrekwzdjhHQTFvZ1JVaEZjazAvSnpNWkZ4ZTMvSVhGS2JOYkZmTzJ2?=
 =?utf-8?B?WlUyQ2pTcUhyR0hLa09HN3VXRityeWZ4RmNRYzYxa0I1dVNXQ2o4WXAybUlK?=
 =?utf-8?B?WENvWXZxM3Y2dVc1c2pTZmg0a2VzUVE5OG1wRWpLa1NWL00yNS9wU0VxZ3pX?=
 =?utf-8?B?ZE5XbXAyVmFlVTZlY01IQ3U5czFJT0xnK0lFYXlCcHlVbmNVQVpCS0pNZHoy?=
 =?utf-8?B?a2l3ZXBoSzRpSXcvd3ROZFNsYkNBVDFJRlVIUGJoNyt4Rm4zT0E4TS9SYm95?=
 =?utf-8?B?T1FndEdLVnZLTXh4ejJQeitVYTVEYjFsNEh6MmhoMkFybXJyZ3J2TlpYT0Vj?=
 =?utf-8?B?WGo1a1R3THFTeUUyS0JnUE5CaElGa2Z2dEMyZDVub0Y1NjZTWjc4NVhMV3Zp?=
 =?utf-8?B?N2NmQjAybnJoM2k1OWxrdmRocndaWDdocklFS3NWb2FjbkxkQml0RGNVSG41?=
 =?utf-8?B?VW9RUUM0Q05tNXM4QjNqYmZ1SXdTMW1TUkticUtzUkVhcVhVbjU4RkhPYWxK?=
 =?utf-8?B?dURrV1RMVzNmRTRPQ3oyZFY2OWc0WnpzZ3ZmNkUwOU1oYSsrK1JmdERzZXpu?=
 =?utf-8?B?TndzenphQTVIREJyMzYwMHJ3YkVYdDloK3dMUUN3VkNzSVdtQTdUVlpoQ1gz?=
 =?utf-8?B?SGc1VnhNYVdvVkNXTllxUzNrWVFtS3I1UFR3UGFOdXVSS2lvdXpWS3FUd0VB?=
 =?utf-8?B?R1ZEbEZwc3NwdGV1b0lzZ1ZWMmx1a09xTmw1VjBZcmVydnlqVVpwK0ZGWGVQ?=
 =?utf-8?B?bFdCVjVXeGxhNkgydmtRN2pIYnhaSlJpWG9wQUwvY0NCZEt4VGpET2kvMWtN?=
 =?utf-8?B?WDJCR3RDWStwL1diRHBxYlM1Mk1kSjh1ZnAwRGVxcStOS013UXVBZ2xRSlJr?=
 =?utf-8?B?QmR6S3djem9xY3lCMnBmalNGMWRJMXg4endneVY5N3QrZ3pCck1BNm4yd08r?=
 =?utf-8?B?VzZxSGRNa2JlVnRTY1h2Y2pjOHB5UjY3cmhpYTNMOC8xOVJEeU82K3V3Mk9M?=
 =?utf-8?B?OE9qUFV2eFR1RGpzL2lNdkxuVlhBclZha1NWbkRvMzhDSXdVcGVWNVdFNDBp?=
 =?utf-8?Q?gFFyLEN/jnrKYse8=3D?=
X-Exchange-RoutingPolicyChecked: tM+4YBLFfW/+b2e/HCCgDjmgNe6PBLw1GdEeJfhxnEYoTFqJ6VUI0qS0vhtuhMozK5+c3J9DDE71fpIWqhP+FGhoWHScHrrJt75veIHMuzoa7B67j5R5PmzY/GW+kWGeAnChgskyT2u5XiomGB7UIeMCET04uuoHi8wKP58eWWMIEsFHNocsSOu9cE1oQ/yTcrcnmO2ZYHjN+kF8BeHa0xpFoKL3O4JNFn0ReChjj1SjR3NOTJ3yeBIEfk1csDKt6bIFVMy1lDy0XhSf/3pjXNSxh3OvGIU0O4/Dm/cOut9DgRmn24yRmnGOXY4xTZFEhvukFPQb6nwxM9ZH3XlUoA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 23b2753c-9115-42df-dc3c-08ded2c017fb
X-MS-Exchange-CrossTenant-AuthSource: MW4SPRMB0067.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2026 13:46:01.1895 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2njwS6IyPSYc8uEmr4N5CnQ1Pkmzz1KP+8qGk3PS9DKl4cCdJJK6KSEE6/SZip/mis+MfEuokXHPvHm8O9YN87Qj5iuDw6QthZGuqv/zZ2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7840
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E707C6C63C8

Hi Andi,

On Thu Jun 25, 2026 at 1:44 PM CEST, Andi Shyti wrote:
> intel_has_gpu_reset() returns logically correct values by
> returning a function pointer when GPU reset is supported and
> NULL otherwise. However, as a boolean helper, it is more
> appropriate to return explicit true or false values.
>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
Looks good.
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>


--=20
Best regards,
Sebastian

