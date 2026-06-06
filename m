Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id y6fBAAP5I2pJ0wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 06 Jun 2026 12:40:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F39364D1C3
	for <lists+intel-gfx@lfdr.de>; Sat, 06 Jun 2026 12:40:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=aUek6+r4;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9313C10E1C1;
	Sat,  6 Jun 2026 10:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C07D10E199;
 Sat,  6 Jun 2026 10:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780742399; x=1812278399;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wXW+KyxmqT7Zmq1iQt+dcMqEqfVUCY8rUqux6kAJwbk=;
 b=aUek6+r4y0PNeN1ukEGVz6imjDHiXKt4mCkI1tQhm6381d3X+EyYmoEe
 1kWglh9bVYGk0dolDNP1c9dP9M3dVorXh4iYsolevRqGmZsG6k9c2x/pA
 rxh6+oacRc9Tv6e04Eirv0D7mF3Ms/7Hk+yaFj2abygDSAuhklqVcs5ez
 B/ArKeToqJM3gg0MsTfucppWZ6lpxgfWNCzDXFcK0JDnp+xGdfkmy8C3m
 SEWxtntjh4POMRY4flNGA6s8ASkd1rcz1jsJESZTF6SbBwznbeP6a1gdl
 t/QWg2/EXfIQjMSFIYX4FEGixmBhMWRWUFWK9kEjhFjcvM9DBr2u3KnAt A==;
X-CSE-ConnectionGUID: GkCvlVVpRYSDYkIyKZe9bw==
X-CSE-MsgGUID: ddL0PCFOTyGDH7aFOW+LMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="81592759"
X-IronPort-AV: E=Sophos;i="6.24,190,1774335600"; d="scan'208";a="81592759"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2026 03:39:59 -0700
X-CSE-ConnectionGUID: sL+yGunITB6/vAVyKLcxag==
X-CSE-MsgGUID: OxpbeQC0RE+PeC7jFOLU9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,190,1774335600"; d="scan'208";a="245198372"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2026 03:39:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 6 Jun 2026 03:39:58 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sat, 6 Jun 2026 03:39:58 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.28) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 6 Jun 2026 03:39:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ms0Id6Q/lHLj1zi05xwRbSPlPCpR19icZDscMhcUSlPQcFnQVSyBIZsVWm0043sBHi6+5YZAGA4n62gJBYkZZn05lvaA+ZtfD/Y9EuHB/1ZoKEYDW067LS9Jx6GnjfZBbBETQmrDE+gt7Ncx2+nQ6EpmMEjMPuVjTRLvivOLaJuET1/pFDtTKTdHNQ8Sj8I75nP5cBmHl7tUJjAHlrDBRZCe6zV4q817W+ZQYNapk5pQ03yBjHijE+BPhArq3jPSMwg4kvkSBFjmtB/JTxz3bjrxlCd1SPIdUjXLS5ERlhYvGuj8s7clrhk0HG4Pbze2Zvw+OtpAMZq1516098xsWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Sbw5obzHkXTGuSoT04b0mxF57lensMNgM4dAyb8G+w=;
 b=vAzkY8JgiVsldHezPdVAkhZMvWIazHy6ox91FevlMoHLHGHQ4V4efRIu5pi7kNGuYxISqVikGBRKV13Skb9gvYfWOj8nfAHXx7J09nIfDq/nY3hBVJx+iBG9Wbr/RfAXBRqXqWg6N486ceV1outu5GdvQEjhe32XnGwzzHupmVJnizTHiM7aNduGYYuQgOA2O5gw+IbiKmROcdzZtwJtKjtHyev3NZ1bFQUwrfOdAYMUfH23jar6J7BNyRib3XxbP2MxZY02eB92jJQzlXmIePFrrlr4KYRdG2nmoQZbtp+7MaLipbZT3m61rxisrEqpj3SHft6ukIVU2F2Gw1SogQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 by PH8PR11MB7966.namprd11.prod.outlook.com (2603:10b6:510:25d::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.10; Sat, 6 Jun 2026
 10:39:50 +0000
Received: from MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811]) by MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811%6]) with mapi id 15.21.0092.010; Sat, 6 Jun 2026
 10:39:49 +0000
Message-ID: <cf797d6c-facc-41ce-aef3-291f7ab881ea@intel.com>
Date: Sat, 6 Jun 2026 12:39:45 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] drm/xe/i2c: Report i2c irq handler issue
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
CC: <saurabhg.gupta@intel.com>, <alex.zuo@intel.com>, <raag.jadav@intel.com>
References: <20260605210534.3843211-1-jonathan.cavitt@intel.com>
 <20260605210534.3843211-6-jonathan.cavitt@intel.com>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20260605210534.3843211-6-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR09CA0153.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::37) To MN0PR11MB6011.namprd11.prod.outlook.com
 (2603:10b6:208:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6011:EE_|PH8PR11MB7966:EE_
X-MS-Office365-Filtering-Correlation-Id: 683fad38-776c-4330-45db-08dec3b7ef5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|4143699003|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: iKhMK18w/R9KveEh8UHRj7hTH370fNtxluTIK9eoJH5/o85VKp5iE1wWyS5SiHFAcnprBjk4AAGWPqiJ8qSpYEr4xQmqm9Vi4V2xLN8Zw0sP4DypqgWN78Ypy8rGE4Bk+Pq1S6r1A2Ie1nkAtEmj+2xbfp4qRr6PrtSLTInnFmOs4Yiyn0WPjzFU/XkIQclnCNhaeM2WZlXXWkyDpBhzNQxC7J8u8//XinSpfVd9hnnBax/5W6UAN4sZbrqX0dWmP5xXKpY+61QmLYawU1p+zJWK9UVfB119nCJla1hrDWeUGsq0zPYpJiDrf44xU5CH2ldCz6iAtowj8ljs9qaxreZMTADTbHkqfMVei9W7grxHFgvcZmqebWvVDnDhajkY+jjk+AxjmX8Pp/g3JL8BOxqwicspbWqLd/Y1C3dLQsNi4kDadaWaawUfJ64oX3AMULj4lNw7s1MLbRU44iTdE2W7CEEc7D1KFy9mg5HwcA4SoPDmkSraJkgRs9I8uKblbM44Rjrcj6dJz/ssTuyh0cLp2wqwPDiZK4+On3lHKIFoLGiVAzvTe7hc6rvjleKUIjLDCbVBqxGcAH8+QIsbv637812BrGesi2L25HPxTlP8sSyVgc/m4Looa6fKycjAOUo7h0x2UDHcNAC7ui+5vqTmVMLUaZzuK3KEFBKfzdMcEBHi/hwJs2qaxx4OGNNR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6011.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(4143699003)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b1ZlcHkwd1RjY1c4dy9ZZjEvaGh1ajNDQWhXNUJ2NVdlcVBsdnJEcEJxaU51?=
 =?utf-8?B?YTkxcnFQb2ZnNFo5U3Z2VnlsR1ZKclU1SjF2MnVmMXlJMk9uSVdrSzhqR0xQ?=
 =?utf-8?B?emU2UjFYTjFmdXlId0I3SU5idmlCVzBTNmFOd2RISERPUVhlTGczZSs1dzQy?=
 =?utf-8?B?MDFoOEZzbEdrVnJPV24vZDJmK1pvdVl1azNQVjlVY3JzMjRJL1hUSHpSME15?=
 =?utf-8?B?NGFMbnhUUWk1d0hKa3kvSHEvUzgzQjVzM1h3Um1CRXEzT0FEc2JkUnEwUmlS?=
 =?utf-8?B?QnBCOUhFMDhScy9FTG45U096Q3AvZHVhNlVjYUxhdVpNS3k3Mjh5SXk4cDkv?=
 =?utf-8?B?ZWFXMEYyZTBkaGZRd1VsU2llREp3ZG1ua1FXQ0dSSW5ybUFxanJjVE9MdnBk?=
 =?utf-8?B?WHowZjFXVEFTcGQrZVlaM29tNEZXVll3MURNWUZwdjFhUHI4eTh6ZGxWcjVU?=
 =?utf-8?B?ZFV6eGhwVzhJbHE2aUZNZTQxdDF5VjdkWkpuMlJXUnEycm4wemJXQ2FGaEQ1?=
 =?utf-8?B?NHhkaWhVczJvZFhPUHFuZnpkUmxrVUo1elBhUGY3MnZjQW9ieUJVTXc5cHpr?=
 =?utf-8?B?SG9GZm9ldkNNU3RvYWI3TThadUpBLy8zekV0UWZ2b3NjNCsxeWhvQXBTSEFB?=
 =?utf-8?B?M1pCcmdHcVBKN2dPUytaaG16R2x3RmJqdXFvc1liWnhiZlBtOStmTzhIQTdk?=
 =?utf-8?B?QnkvcjZHSEttbGZLWWp0WHJrL3lmZ0twNm9Xb3dUSG1BWm1wS3dnY1Q0N2pN?=
 =?utf-8?B?Y2hjVGNuUmkyeFEvaTlFUEpIQ3dtR2NVK3pFR2MyeGs2N291VG4vUCtGa1c0?=
 =?utf-8?B?SzhUem5kV0E3QXNUSDNpQmdNT1NpVytPaU02MU8rYkRFM2EzSWxCZUVoZ2xm?=
 =?utf-8?B?eFdrZ0toZk1PQnBWOHhvZWRITkxnN2YxOTJSdVczQTI5SGZZdDlLVFREMEdp?=
 =?utf-8?B?dXhKbWRTUXAxbXlkOEZTVXNvYytDUGo2QkFyK0hhRGRLWldGSCtySElrUVhD?=
 =?utf-8?B?dDlYUXpDYWZDYWRqT3RmRVBOUnY5aHdGelhQaW11MUJzM09Xb2NuWjY1UGxy?=
 =?utf-8?B?OWxOd1lvRWYvS3krOWhQUXJ0VC84a2t0SzVQYUFzckhDM21rNEU4RkF4a1NR?=
 =?utf-8?B?WWNzNENmaFh0TEJXa0FXeDROcFpOdjhjcjlzUzY4dWZLMEd3UGtaWTRRcjBz?=
 =?utf-8?B?YkxwNHVnWVlxbDF6K3pGK0lySkhtb2RWMGxBcFQvSThJYWNFV2psYmt1aWpu?=
 =?utf-8?B?ZGs1NDFSQ3gzbktTWnZ4WGFhWVk4V0NPM3RBZjJEWWNYWnVpRyt0ZDZIZkhz?=
 =?utf-8?B?bk5SMWxtanZkRThRVHdtbjcyOFZNcWplWlN5dTZpNjlPdDd3RDVOaTd0Y2hB?=
 =?utf-8?B?Tm5ZRldlU2dHbStIS0doQTVzd05XeitsSzJzN21MMnJDS2t4Qi9ETnlFSXU0?=
 =?utf-8?B?MXkvKzQxZjl2YUtHS2dmcXFYSVBNdFhTR1JuYUhQRDNMeGpHYWVJb051amdQ?=
 =?utf-8?B?dWhtZDk4elVGYnBTblRqY1A0dElEWW5qSGVETC93by84U0I5NGM0Y3lORy9B?=
 =?utf-8?B?U0t3WXpPWFdVTlQwUzJSc3VMcDlHSUpITFJDc2huaUI2TWV6TFEzNGNVVmlD?=
 =?utf-8?B?cFBremtmS2ZHMTV2NURFZGdGNHZOOFprcjVlQmovRko4Q1JiaXdmNk9EZWJ6?=
 =?utf-8?B?K0V3S0dsaFhWOVRiVS9VcDBPRmw5MldZSGd5aGxPc2hwSlQ4K2pLRGMvRm1x?=
 =?utf-8?B?MlJncjc3bFcwMXhBcGFmaUNDK01WWkRiMFJMMVUzNGdRbHZZenl4RzJtSy93?=
 =?utf-8?B?cFNMdmY1eUttZjA2enV0bXpJSGxWS2dZRkRpOGNBKzFJOE90L1ZTN3YwaVVW?=
 =?utf-8?B?WC95S3pLRlVlR2gvaEhsejg3dWUxMjljek1XTnB5ZVQ0L1dMS3hlbVJGcWxq?=
 =?utf-8?B?SXJOeTZ2bGhiWWxxYnFNaTI3UnYwTVplY1BPTjRsUGFGcFNFQnpOcXFFcisw?=
 =?utf-8?B?d1FSNDRUUjVrT0lnSmpZamljT0ppSHptR281OUE2MmZVeGdPd3AyV1o4ZUw4?=
 =?utf-8?B?WFhuYlJ1WlRHaFJHUmRiTy9BdkhVdS85UTE3ZXhjMW0xZWZyNDFzTFVBWmhK?=
 =?utf-8?B?WWQvR21LUDJueVBqUHdzWmcraGhyb01BcnlaQ05TZm8va2xoakx6dDdpYVpa?=
 =?utf-8?B?cWRCM2pGY1BDaWlWSS9CTFJKMUlYQmYrL00vb1ZleUl3NTg4QXE2amRjeEFs?=
 =?utf-8?B?d0pqelVxa1c4aE9WaUNGT3huY05hUTJFVk9ZMDJ5aDRrSE1aVGlrZnMwSTla?=
 =?utf-8?B?OW1Nekhtamp5NFF0U2cyMjh3N08yQml4VmdsaXc0Sjk0c1J4Q2QzWVh2TTUz?=
 =?utf-8?Q?6ZhHqc1VWLVrLvng=3D?=
X-Exchange-RoutingPolicyChecked: ZUT9uaqIEXoPmvnFAfR+1JjoNohmob32Odwo+pJhW0KI7gGWcqybTBmjpz+KXeoNTwDJUgW4Cj0H3O6zZ1HEt2+MqcKm45pCumYHYGhqfJDlrlN/cTHiO0zbNluYLVjaezDywKeXnMPHrUrRU6ECCwYPmKY48MRGh94o92JZqSzmqn/CFVfLZ8JwEouaots05waI37WfEch1MjmjoyHxhBhssHYkhmHkrth7qpztOVQMByMOk/7TB6fOokf0m/On+/bo+iO9hVKP9jBo9WbArghAGjzpih+BUlMtZtV4OUispWQ/pC92F1lhzQ2OaQqi1Wxt1zN3Bwwd3MgpP4UYgQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 683fad38-776c-4330-45db-08dec3b7ef5f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2026 10:39:49.8351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MLjben7mTLnJdHzyb5Rh2ajQh7CjWgLjqZh3UWURZZj40A4gOYZ+W9vBazcApaM+rHmVKT6KNnENku1ryXXgko2AA3hggZIEsS+GwnkVd0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7966
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[michal.wajdeczko@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F39364D1C3



On 6/5/2026 11:05 PM, Jonathan Cavitt wrote:
> Error logging is expected but not included in xe_i2c_irq_handler() for
> generic_handle_irq_safe(), so add error logging there.
> 
> This issue was caught by static analysis.

hmm, what exactly was this tool complaining about?

almost no other callers of the generic_handle_irq_safe() are printing any errors
(which are more about programming mistakes than runtime failures)

I'm asking, as if we believe that such errors are legit then maybe we shouldn't

	"Deassert after I2C adapter clears the interrupt"

> 
> v2:
> - Reword error message (Wajdeczko)
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Raag Jadav <raag.jadav@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_i2c.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_i2c.c b/drivers/gpu/drm/xe/xe_i2c.c
> index 148e82e01ae8..84171021e6ea 100644
> --- a/drivers/gpu/drm/xe/xe_i2c.c
> +++ b/drivers/gpu/drm/xe/xe_i2c.c
> @@ -177,12 +177,15 @@ static bool xe_i2c_irq_present(struct xe_device *xe)
>  void xe_i2c_irq_handler(struct xe_device *xe, u32 master_ctl)
>  {
>  	struct xe_mmio *mmio = xe_root_tile_mmio(xe);
> +	int ret;
>  
>  	if (!(master_ctl & I2C_IRQ) || !xe_i2c_irq_present(xe))
>  		return;
>  
>  	/* Forward interrupt to I2C adapter */
> -	generic_handle_irq_safe(xe->i2c->adapter_irq);
> +	ret = generic_handle_irq_safe(xe->i2c->adapter_irq);
> +	if (ret)
> +		xe_err_ratelimited(xe, "I2C: irq handling failure (%pe)\n", ERR_PTR(ret));
>  
>  	/* Deassert after I2C adapter clears the interrupt */
>  	xe_mmio_rmw32(mmio, I2C_CONFIG_CMD, 0, PCI_COMMAND_INTX_DISABLE);

