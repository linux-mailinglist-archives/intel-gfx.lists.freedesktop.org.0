Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLKcJF5Je2kdDQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 12:49:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCB8AFCDB
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 12:49:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2BBF10E848;
	Thu, 29 Jan 2026 11:49:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SMEqP2O4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA70E10E847;
 Thu, 29 Jan 2026 11:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769687388; x=1801223388;
 h=content-transfer-encoding:date:message-id:to:cc:subject:
 from:references:in-reply-to:mime-version;
 bh=jQMvL5PLuC5I/KMeWdoOLgu+ED1iESMn/7i2uCPawX8=;
 b=SMEqP2O4PWP+fFX2CcSTpO8z4bOx4fFWl+IL/pwzWHjZ7p9Egf8Fx5oX
 dOyQdwIfAtZbPb9dLo5ZQc6b4+xjhTXcBzTSQ7mNBHEB9PHKvBh1dWHr1
 OjaryrTmUslPbpHCSx0VUDO0Yye2sqVYmCdEooHj0w0ivBy5h/SLJWgf9
 f6EI94c16fiEqdFK5yLT4FGXK6HiJOXsc5oxrO7DAr4Ykm/KCWrSGqZsW
 BsqREDtA1ycAf5mcWRcxG2vu9UTwto2Kck1WzgwM+/+dFBeDq9eaErtIo
 qNYSof5EbaUDPyrSMQh/CsBzpwelyrivIglKokCwlr9bJ7taQPWKU4F/T A==;
X-CSE-ConnectionGUID: qvLEwbI5RTuQeYKdQEXUbg==
X-CSE-MsgGUID: p2xoIwIWStSz+e+KE5bllQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="71011314"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="71011314"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 03:49:47 -0800
X-CSE-ConnectionGUID: mDmfMGP0Qtq0lozE0nbKDA==
X-CSE-MsgGUID: kgNchZ0rSlWowEvdLhEjiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="239291073"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 03:49:47 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 03:49:46 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 03:49:46 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.33) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 03:49:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FKz1Y7qBRiFDInb6ugtf7A+HEwHei5r27qaESnjhJZhmAkn5nAHeTP5V4qQuVpJXGDU4rl6M8btH5WGUWyW3o+47DnmUTLtYHDLxyBS/WpgqiciqXRMcW7l+l8BD0Gsbi8FAueVfnpoOPtWjsuMP0nDjphFLhuNPqsq/2mV6lLo6Ewq6Ifm9J/jAFVjKRfbXgzTXajr1Y0TzRVVwIpqV0S7pMu009cqqF8tIx8XgDU8qfKI1ojah+pf3DO18MUyH5aH3CH8vye91Xe/z65yYh2NLGj1wEDz1nDj91V6bOG9QKKKMZ7b3ZxQ5ypoB/fuaRIPBttylOI7gQZ97W+LrlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=etaKZS260LZEnyXV60nP8ZBVFMIAAkqubOB5wkpYdvg=;
 b=p7vQLdF00QS5PNYvptu1XKC26WrT0/AK9w2bw+MQmc2w1qxoZqX6dkT4V0HFy1x6O+f5nq8l9a7uDwht9iyGsH/7YbFGonPoTR7EEp33R+VjGkom/QIFAi0kRtPddHcpBT+C+Tv9EbhXj8ECytmrX62uOVXmtCepGwTiMp8XWmyv3S3fHPJFowytcsm6N0uwuM+f/ZJh3Yjn43V/+3X+khW4KOxn+RB6GZqeeDZWgsHf8RQnpoH7vUcqtwHmDav4vY2XYII+c+yqhZMcMNDNTn7LJR+fi+5lUue9gdXayw6yXLglVYKouuBhy46ZZgOUYyYwFzJYEPUk57VOU/NpuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SJ0PR11MB5037.namprd11.prod.outlook.com (2603:10b6:a03:2ac::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.14; Thu, 29 Jan
 2026 11:49:44 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%3]) with mapi id 15.20.9564.008; Thu, 29 Jan 2026
 11:49:44 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 29 Jan 2026 12:49:39 +0100
Message-ID: <DG11TIYPUWHH.1SQKHOBSDKJEF@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Kamil Konieczny" <kamil.konieczny@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v3 6/6] lib/igt_device_scan: Print GPU upstream
 port parent/child relations
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
X-Mailer: aerc 0.21.0
References: <20260128161041.225652-8-janusz.krzysztofik@linux.intel.com>
 <20260128161041.225652-14-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20260128161041.225652-14-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA2P291CA0012.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::27) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SJ0PR11MB5037:EE_
X-MS-Office365-Filtering-Correlation-Id: 777656db-b01b-451a-fe2e-08de5f2c7e8d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VFhXV1hoZitpSWNOQzR6QkRodDBucVlza0l4NzNLVVkvTkFCMnFOcnNTNzhm?=
 =?utf-8?B?amhVWkhHME9qZUZhVEVBYXNMazZETkdBd3YweXIxOTM1WkFlOGQycUhJMlZD?=
 =?utf-8?B?VHA3ZjdBa1N3OUhZVWUyaXJxRWlieTNBeGgyK0pDRHRBT1piZTFrQXZYUTR6?=
 =?utf-8?B?dUJGQkVxaEUwVFlMTk40ZWFtNWI2VEpWdDNnNHBDWmZZQ2FBVEd2V05xK2Ro?=
 =?utf-8?B?SXJseUhrQjdKbGNITXNycm9xRVJ3RmY2RXFxTUVjMUQxQmdkaUFkRDYvenlW?=
 =?utf-8?B?NUJXb0JNQXVZS3I2Nmx2WjAvL1EzTFlPR1lhbEphcVVtZ3F6K0pvY1k5cS9l?=
 =?utf-8?B?SnVXaXRkeFdJVTJQb2xiK1EwRkRjN25oa1draUExTW9tc2M3b2VtaUNOaWJv?=
 =?utf-8?B?d0c5Y1dWakhMYk5CQXo3ZlloU1hFYTREb2k4RXR6ZzB4YWNSWlRlUnJtcWNY?=
 =?utf-8?B?anRtaVBDZ0FudE1HNEJoakFyU3dvZVNERCt4Yk9mYzFLanhYL3dGV0tWSGFZ?=
 =?utf-8?B?Nk5jc1dWSFloMWdMSnNNYjZjSHIwR040SHBNd3pWbktJbWgrVFZ6R1lxRDZn?=
 =?utf-8?B?RDFrNXY0MHJ6NVNuVjZDUzdFdXpyb0Z3dkUwdXM5UVVEZW5kT3U4NVNIazhp?=
 =?utf-8?B?cEhsQXk0eEhsQTllWVBmZHZqOFFTdU5jR3BVWlRpaEU3d2Fsd1FYT2JoS1ov?=
 =?utf-8?B?Mzh5dUdsODN5SElic3lYVjBrSUVtKzlsM3Rsb2VtRHRiWjBzSGhCOXRXeHpr?=
 =?utf-8?B?TW5IcmdOY1hZZGg3SXduN2NjWUVnQWNZdk5qTUYvY2g2MVVSSTdtd3Z3TTkx?=
 =?utf-8?B?ZzJZYllYS3RNdldad0tseEV5VHV3MSttSjJ4cFhpR3ZidFQrV2tCZ2FteVdQ?=
 =?utf-8?B?Z2ppTDJFcnVwTXZoYUVXekIyV3hUWEJiN2VZQ0NQNU9hOXZycisvMDUyZ0Rr?=
 =?utf-8?B?RDdRMmVxYlM4aXNKWkJGSWQwWW9qR3haRGVxdHlsNTRhQ1R0MXZZU2hGdElF?=
 =?utf-8?B?Mys5Z2d4SUZQK0EwNGg4VTlrYUpSUDh0SEh2NjVONThEcktFSml4c1Q4SjFz?=
 =?utf-8?B?ODE1ZkhUQzRkNGVGTSt5cE01ZzUwdk8wNDNnNG5UMGlJK0Y3MUR3WUwvK0FZ?=
 =?utf-8?B?R0ZTN0E2UCtBVjlnS3VSUWpqVkJ2VGlkNVhOY0YwQXl1TzJwQURwOWZJa2RJ?=
 =?utf-8?B?N0JEQUg0WDlhM3ZNK0FMSmVXR2ZpTmZwRnVha3VzZVlubVpMZXJ4eVFVUjh0?=
 =?utf-8?B?dnYwSy9TelgyMlNtenVET1VkNjQ2bExDd1pTYWhNc01aOTRYNG11MW1rcFFy?=
 =?utf-8?B?SStwTXNsRGVYSnRuOXFpSmR1NTM3NE1EdUpIZURPRmtXTmFtbWFQUWpSNTFz?=
 =?utf-8?B?c3BVekhrVHpRMW90bkFBVXRLYnlPRXB5N2QyYisxc1o3MEtkd0VDbzBEVnB2?=
 =?utf-8?B?bFlkWHoyQnppd0hmMml0UUNHM3VLU05tRGozdWR3KzFNcThodjFkT2xXSUtz?=
 =?utf-8?B?MzJjN0p1WWgrYlEzckpoRVVTSFFGL0Z0Qlp0TzlrV1I2WGhZQVJPWUNiNGJJ?=
 =?utf-8?B?Zk52bDQySllYOWxDd01kNTNEbVgwQlJWRDNjb050K1VNeWE0VVZwazJKcHBt?=
 =?utf-8?B?aXU5eHd2SnBERGtwV2h3VDI3YmlrWEJyU1lmOUdBY1hDVENrc3VScitYNkhl?=
 =?utf-8?B?QW5FREwvZzdjTGh1N3FaSTIvc29JYXBYSWw1NlFFb25tZ21OdmErWjZwbkhY?=
 =?utf-8?B?QzVENG1jekF1emRleE1CNHlVM29xTXFJUllWSVExQ0xVdkFuOFMyeDVGcXY4?=
 =?utf-8?B?NzlZN1hKc0JyL09CbzlTRHdqbzVmZzUrNkFIMmEyZ2UzRmF2aFBBcFI3OGlT?=
 =?utf-8?B?R21hKzA5L3FOOU1pSWxQMzBibEJ3Q1VIR3lucmJRQ1NZcE9wa1ZKcWdPeWRl?=
 =?utf-8?B?d1FFS0wvNkRIUW5HWUFSR2JKUEVJcStXUzNRM2tOM0c5QVBwcDlVUUZUWFVy?=
 =?utf-8?B?UEpybXNtd1RyODZ4S0lCZmpBSHl5eXUza2NkM3NCKzBwc1lUZ3Jiekx2dGtX?=
 =?utf-8?B?VGZZRUMrR2VERUUyRXVkaWVQN3VPUlFFcmxaSTh1TzZBMXpEUGYxY2srM3BY?=
 =?utf-8?Q?by3g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTlaNE9uNE5ITk5xa1NncDZGQStSeWo0RXhjVGh3OUhnU2Y0V1BGN3BwMjFT?=
 =?utf-8?B?L0ZaZUgxbURuNm1xeUJmUURtdE10czR4Zjh4M3F4cWJ4L1lqWkhsMTRFb1U3?=
 =?utf-8?B?dUhoNlRzUU03dlVhM2JWejZHYm1iZU1Wc2RYUGVKdjNvZUd3blBXQStVZS9n?=
 =?utf-8?B?QmJtOGVwQ3l2NmRSaEExdFlwc2FmRDVrNFpIMUhPMjk3cHUzVTNDKzJPaGJa?=
 =?utf-8?B?emcwcGtpYmc5ckI0VkxVUkFpc3JpT284MzRicXh6K1cvV2JrQTdMZk1WQVpW?=
 =?utf-8?B?K25Ia1lndjVjYWxkbGdCVzk4aGExVGUvRUxBYkszeW9uVE0ybHF3UWljd0pG?=
 =?utf-8?B?bTVXTXpvOWVkengvT2pEZi9DU0FIeHpzQzRCK1BsK3NydnI2a2xHamRUZjM1?=
 =?utf-8?B?clBjL3JGNnhERFl6RVM4djkzRlFqbEpDR3Mwbmp3aEQwaXNUN1BJcG0xMFFk?=
 =?utf-8?B?UFpQOHNjeExvQnpEbXdsMThodnRlb1hCSjZGcnFwdEd6U0RLbHp3aCtFOU51?=
 =?utf-8?B?RFIzUFpHMUpyVFh3K1NYWUhSOGtlY0t3VFdJOTZXdUxZM0YwUUJ5MlBzSzlV?=
 =?utf-8?B?YlJvNlh5eG1IdlU1MkJKVUFrZmxpb1R1S015OGxtY3ZiRkxENW5oejJEZUtm?=
 =?utf-8?B?Mk5xSGpJYzc0WjNBcHRKVVp4ckN5TlNZczBkNXpYaEcwSVdpc2R0Z3J1MnN6?=
 =?utf-8?B?VUkyZHhsMGtsalc4WW9nd0xWcmhUTVQvQ1BQQjhXbHVvSEc0VUkzSDlzdTJ2?=
 =?utf-8?B?d05HQSswYnhTTWcwaG9LR3FEaG0xb1NmT2xpY3VTcXhYYTkxcEx5eDBHekhq?=
 =?utf-8?B?QmlITkZFMW5DY2VSVWp5TUdWQlExbVBaQ3VBV0dTK0hPK1UyNGE4MEdRaE0r?=
 =?utf-8?B?U1V5bU9qeHRFQ2xaY1JBR3N4OTBiTHU0TldhMUlSblloZ1hYa2FKa0hXNzBk?=
 =?utf-8?B?OWNYNVN2Q0tGLytiTVR5TXJ5TlVkdHNHY1dySEVUVGQ0Zi8wMElpczA3RUZX?=
 =?utf-8?B?TjNPQmEyRy80cVllQWxxNjZZejloV2RVYmQrQlAycE5wYmhVTHZSbHN5ZUJl?=
 =?utf-8?B?VVdlblh3K0h5aU9Bcitqbk1QWmVrdDJEVzZqVUNnUnpMekJhYldsUHBBZ09k?=
 =?utf-8?B?SXNTTE5odjFhU0pnTmdtVHFLS0g3QjFXcjZqMmpGSWJEcU5mTG1ZN2ZabEo3?=
 =?utf-8?B?bFZTSW5tS29aYVN0cXBaUTJNOS9lWDNoQkU3b0VvMzQxbFIwSVd2Vnd6S2lO?=
 =?utf-8?B?MUtmUjE5dUpsYWdrRUZ4N2tFSHQ4SzBmMFJjejlGdUorblpBTTh0NUF5Ynlo?=
 =?utf-8?B?UWEvTlRZRStiRDB3SUZKdjRmNEkveDZ3a0RpM0ZTcFpDVDBZVXdJcjc2YVQv?=
 =?utf-8?B?ejJYemV0ZmNseFhpVk1EQ3NUOWZMOFhMSHpoNkNrV2c2R0pRajhhSUZ5R0hh?=
 =?utf-8?B?Yjg1c0FOY3FuTzR4UmxaRjY1Yms3SFpCSk45YmFOcXZtVHRRRXo0c055WVIy?=
 =?utf-8?B?R3E2cStESkQrYWowY0xVQy96cUMycGtZQ3AyYVFHWnBYV280blF1S1U2WjFP?=
 =?utf-8?B?Z0R2WDVPT21RU2lYdjdJVkRTcVYxa2owQ3NScENuOU5kNHB4YkxxcXczUm1m?=
 =?utf-8?B?dWEvMkJuc1hBQmh2M0NWUDVRQ2ttQlcxOGRIbUx4UkFtb0tkbjBFamxlTnFG?=
 =?utf-8?B?eFZubHpTcXhkYU9Pakp5N2tTSUpLMDFGQ3kzMDEvd2N1Z1RHTkpYem9iVHRs?=
 =?utf-8?B?V2RRUDZUSVVEM0tRSDdIam5mdVVtU3pSbVUzRnpBcGg2WkU2RjMzV1U0b2Mx?=
 =?utf-8?B?US9VTUY0dDlBRm55N0pETHgvckhybVJZYndieko0RDh0Y0dqaUV6bkxla2k2?=
 =?utf-8?B?ZnpVQVJ4WU5wdC81MHBKY1IzalFHM01NMllIM0lzSW56cFB6OVBheGtmQkdr?=
 =?utf-8?B?Q0tEaTZxZUVPYnNBVWZ1UlpKcUowc1E0VVpVbHFha09oRkVqbEdzd0N3MUUv?=
 =?utf-8?B?R0NqKytnQm1md2dzc0xRbkxPcE1LNnZRK2RnREVPTVdHYzVxZE9aODhwYkU4?=
 =?utf-8?B?bzhRclFWMlcyOUpPcHVzTWs1ZzIrc1E5blkwMkhzRDg3WGNNRU8zbjlxS0FC?=
 =?utf-8?B?Snk5SW5uS2l3bFZkaTJjQkxJaEtobmdya2VIellmY01CTDlNN200em9oMlBm?=
 =?utf-8?B?eVpWY1BoZWVZTEI4aDNYbno1NDJhNmI1VHRuc1JCZ0xiUUpoSVRlY2M0WGFu?=
 =?utf-8?B?THJRNFprUi94WFVNWnFqR2QvclZpeFZOQi9rZlRxRnRjWnFLV0d3Z3lPRW1Q?=
 =?utf-8?B?WW00Tkh1MUloME9ic1VJYTFOM25QeFpteExvMzN0T3dQTldseUNheUFpVDUz?=
 =?utf-8?Q?Ahcx052+KIB8u+/I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 777656db-b01b-451a-fe2e-08de5f2c7e8d
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 11:49:44.0821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oR8tX6ICho/ipd6T57YNFi2HDBW6lj1mUbCosebO/hnUdlIekJkbirgvOzRqeXCIg9iyXGLjOwSOMCZa8w+N/YWrKE6aCtbxytoNseQJYiw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5037
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2CCB8AFCDB
X-Rspamd-Action: no action

Hi Janusz,

On Wed Jan 28, 2026 at 5:09 PM CET, Janusz Krzysztofik wrote:
> In a short listing, lsgpu prints a sysfs path of a PCI GPU parent as a
> local attribute of a DRM device.  However, if that's a discrete GPU and
> its associated PCIe upstream bridge port has been identified, no
> information on that bridge is listed among the GPU attributes.  Follow th=
e
> pattern used with DRM devices and also show a PCI slot of the bridge port
> as a local attribute of the discrete GPU device.
>
> Moreover, in both short and detailed listings, local attributes intended
> for providing device names of GPU associated DRM devices and the GPU
> codename are also printed as attributes of related PCIe upstream bridge
> port, however, the DRM device names are shown as (null), and the codename
> attribute provides raw vendor:device codes of the bridge itself.  Replace
> those with PCI slot and codename of the GPU device.
>
> v2: Allocate memory to local attributes of a bridge for safety (Sebastian=
),
>   - merge with a formerly separate patch "lib/igt_device_scan: Don't prin=
t
>     bridge not applicable attributes" (Sebastian),
>   - no need for DEVTYPE_BRIDGE, just skip attributes if NULL.
>
> Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_device_scan.c | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
>
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index f4d2eb6568..96bf0e359d 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -249,6 +249,8 @@ struct igt_device {
>  	char *codename; /* For grouping by codename */
>  	enum dev_type dev_type; /* For grouping by integrated/discrete */
> =20
> +	char *pci_gpu; /* Filled for upstream bridge ports */
> +
>  	struct igt_list_head link;
>  };
> =20
> @@ -1063,6 +1065,9 @@ static void update_or_add_parent(struct udev *udev,
> =20
>  	/* override DEVTYPE_INTEGRATED so link attributes won't be omitted */
>  	bridge_idev->dev_type =3D DEVTYPE_ALL;
> +	bridge_idev->pci_gpu =3D strdup(parent_idev->pci_slot_name);
> +	bridge_idev->codename =3D strdup(parent_idev->codename);
Releasing memory here is safer, but we must ensure
igt_device_new_from_udev hasn't already filled the codename otherwise,
the original pointer will be lost.

I=E2=80=99m thinking about how to refactor these functions to make them
cleaner. They=E2=80=99re a bit cluttered right now since the 'find' and
'update' logic are merged together. This might be outside the scope
of your current patches, but the memory management is becoming quite
confusing. Unfortunately, there isn't an easy way to move this logic
into igt_device_new_from_udev right now.

> +	parent_idev->parent =3D bridge_idev;
>  }
> =20
>  static struct igt_device *duplicate_device(struct igt_device *dev) {
> @@ -1234,6 +1239,7 @@ static void igt_device_free(struct igt_device *dev)
>  	free(dev->device);
>  	free(dev->driver);
>  	free(dev->pci_slot_name);
> +	free(dev->pci_gpu);
It could be unalocated memory.

--=20
Best regards,
Sebastian

