Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D766B062D5
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 17:25:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEE3310E0C0;
	Tue, 15 Jul 2025 15:25:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M2j4Nert";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 922D610E0C0;
 Tue, 15 Jul 2025 15:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752593148; x=1784129148;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=RamAy/XHFNIj2IeO6vITItm8cuWPr8MkeRx2a9yVivA=;
 b=M2j4NertS6oyGStsBv3j7raChRRPjGSPZKrn5W//7Yqik4hnruUlj249
 +nn2rch8NeAv71WsooWiYbPMRx0Sxn6s85YuEFeioF5krIlN18IomydJp
 wf0aVAq044pxBmzpn74/15qAFYfYtHBeAr2Xas4c6dL2Qu2A+GZ7SVSGK
 rmXNFl/NYiCo171yHdDI6Cdqi54tWSh1wLDC3GfiwM37uZfqL3Qc6ZHdU
 JqOTpSHal9hIUpqvo0zR5yNqNHG8EwtkNX9Syycs5WY3pWClDpBkMGFAU
 xjLOf4XzU4wo5vRX5M5jS19R8N15B4Acg66G+8kKay08942a7BSfxI9Ay g==;
X-CSE-ConnectionGUID: ec9GEiLfRu+0RJ5KR4RBBQ==
X-CSE-MsgGUID: 4uMgYfbfQp2wamG8c+rb7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="72270518"
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="72270518"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 08:25:47 -0700
X-CSE-ConnectionGUID: URsqHPnFQYKX7wxizIfziA==
X-CSE-MsgGUID: MziUDNk0Qga7yzjVfvdsDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="162892042"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 08:25:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 08:25:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 15 Jul 2025 08:25:44 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.52) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 08:25:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L6NSPsRvRZqqfpuH1U6XumhhRv4BEkgRlmmEjCsHk/Gj7xxEytIssn0gI+fLkQY6acer043iY92xA6KWe1IV/4OnZYZzHozE2GlHqtueZ0UHjLUzsbOxIh366q6hDJ0mzNfOWxbbWRFsRmpznLq3WVR/CpXwF3zip0MCjLyf+bWskeFOKRKWi3a2xRHdF+XOlfAhml8PX2imbPIoWLciPD2rMTUYwVv9IzcIa2xR97F4d6dTKpi2wItGP1uPmiQ9n+cNdkVH0HrKk+jPht19wBeLs9otk9YCnuUDEX8Bsr6gODe7OI5yTT8bWeHvzhUq5jWTi3ZKvQeXbBjHbK90fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OaacEJpLBR5KYYEfw8a2zDClYzojDdcv6jzjG4rI7ng=;
 b=EfAew9YSi9OANdDieRzkRpz3G3cFgre4DduTnXrHCoTmqQKd1VpyYEU8HmaqzEfvi1FbVaSgKkUiu/MKMClEAJQgcgSOGZTLK2YirF4ZhWds8HY8XCiZTMRxBS1uNfkZQSuAXlw5RPUDJyijG3R41hO3f0mxPa0h71Dyq9sD60PY/XcvF8AxE8BK2VmMUeww+OYkaEsMZ1cXJEm9lmnts8G065NgLq50RJA2XaIuEJExWOOHnMBrWzQLdMnUKIF9D+XAl8IXNluCmmFJIwzT5bspMG4GZA+Zeu+/uG6qyZVVsSz/663PAVkpW/3kN8Vw3ChYBtyNIEAA6jEldWSlrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6252.namprd11.prod.outlook.com (2603:10b6:a03:457::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.33; Tue, 15 Jul
 2025 15:25:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8922.028; Tue, 15 Jul 2025
 15:25:41 +0000
Date: Tue, 15 Jul 2025 18:25:35 +0300
From: Imre Deak <imre.deak@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/xe/display: Avoid dig_port work during suspend
Message-ID: <aHZy7-KnWhHiVzhu@ideak-desk>
References: <20250715055219.410193-1-dibin.moolakadan.subrahmanian@intel.com>
 <aHYh8Yg78OYk2oQr@ideak-desk>
 <630b39c2-2e0a-4d10-82ac-81b5023d6315@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <630b39c2-2e0a-4d10-82ac-81b5023d6315@intel.com>
X-ClientProxiedBy: DU2PR04CA0323.eurprd04.prod.outlook.com
 (2603:10a6:10:2b5::28) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ1PR11MB6252:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ad10ee9-dd86-4bd3-4b7e-08ddc3b3db78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WXlwMHEvMWljSE1EcmVsbFEzNDBYSXArWXV3ajc1YVpoQWd1VHorYnk5VktR?=
 =?utf-8?B?NTlpNnZPZ2xSR2FtL1QxQUNIUVNSRWpXZzNNK0NxUlNyTXFUVEFQTVFtamZN?=
 =?utf-8?B?eWhVdkdOOVFaK1RKTGRLY2NnZk5XYmRwL0VrU0FGaWZoUG84QnE5RnFCaUxU?=
 =?utf-8?B?VXoxVnNIMVZaMkFkR055RzByZ1EyazdTNWdBWDk4VC9jK25mS2Y5OW1Qb0l4?=
 =?utf-8?B?cTJjQVl6Q0l1UVdKYy9uVTltbEpRR1NWSFp4RXh5aXZVYTAvaUdNa1RodGJR?=
 =?utf-8?B?RXh3Y3pzeHB5ekxnMTJzMitaMlcxZllHT2MxUVlwU3BBNkJ3NTlmMDJUeVh1?=
 =?utf-8?B?S2VpZXoyUVFsblJzdHZTWHh1U1dldEdSZ0w0TXZoUGZONVF1YWVzUyswWk1T?=
 =?utf-8?B?bEI3Q3ZrQ1U2ZnlWbVBscmxHWU5td0F6SGNVQXNjSW44TUxCc29FVlVzbHVG?=
 =?utf-8?B?cmcvd0FFT1N3TmxxdnhldG5CS0x4TjE2bTk0VzVhWDZoTkZPbjNyRkxsLytW?=
 =?utf-8?B?UDRCMGFMT29pS2YyK0VDaEJraFZmMnZtV3RWQVFRYmdCQlUrbUx1V0hmVzRy?=
 =?utf-8?B?a1lmR1R4b0s4eFdnTTlmOHpyaTZCOSt6WVVQZGRQOGhySmRFWE5IWXJTM28z?=
 =?utf-8?B?UUE0Z0p3dFZjTFB3bDI1QVVmb1NNR3RCVGtGM211UmluaCt0QVpmeUR0NU5p?=
 =?utf-8?B?MmhteWpUMzdpV0FDekN2SXphVTR3QjBQK3ZIYXF0SVJseVJEbWNFTUl1SThh?=
 =?utf-8?B?YkF0dXZmUWo3SVVTdk5hVzNLYlFyb3lwM3lCSlgrNU4wUE52MmNsZXphYmEz?=
 =?utf-8?B?R2U1QVZiN3gwWFoxaXNTM1VUMnVaekdlMkQrUGhjNzhnNmN3Y3JNTU4yQ0Nm?=
 =?utf-8?B?ZS8rTHFKOHhaMWQ4RFNJTnhHeVJQQUFqaGJreFFaeWl1VXl5WVcrelF6aWxR?=
 =?utf-8?B?TzJFdS9hVld2dThST2IyS0tkcU4wWGU0Ym5DbEdZRVNxSkYyZ1ZZdDlod00v?=
 =?utf-8?B?N2ZsbHF0TEVydVUzZXlBVTBDUWpYRGtLN3p2T2M1Wi9rU0Rwam9FNzh5NTJp?=
 =?utf-8?B?U1BsRVNFK1JPOVJWT1V1NmhYbW1STjFPT0JYQnJCcEw2cG54U3RzcXNoOGF1?=
 =?utf-8?B?dy9oTjdoR2x0WjV0S0N6cWp3YnFrSC8zdGhTQWdENXppUGpKTVBBM2ZMN0lB?=
 =?utf-8?B?bjAxZC9iM25FVHdMRENtb2cwdnFXelo2OXFPZGtWd0hpc2dYZk1xaVJaLzYy?=
 =?utf-8?B?UVl4NU1PajlGVC9lQ1k0SFJlcUZIcWpCTnpYMUdhbkhNRldkUkNpb2s0UEpi?=
 =?utf-8?B?ZTVpM3pBL25ZMjdjMVdnYy9Zczc2UDYrMmo5NDZqZVc4M0N6cFk0ZGtGbW9v?=
 =?utf-8?B?T3ZmYWloN1l5TjFTczBZZ2Z0c0gzbytEKzZTakxjRzZsNkZXUE85ZE1uSjAr?=
 =?utf-8?B?ZG9wTUZESnJzaEQzRFg1N3FOa2o0UGFZVHR1eWtJT1RoRzNxMFJrRTh6ckJx?=
 =?utf-8?B?dW9iQzZjcUZTSzlTbGxFdndJV0RJRjZDMlZtNXJlTkJsYjhVTm9ITy9CelNw?=
 =?utf-8?B?aXgzQklyUi8wMDJiN3hlSUlJc3dHM09UMXk4SHBPOEo0VFJueVo2M1Q2R21I?=
 =?utf-8?B?bUx0aVQxaHdFOW1qendtcnlFcHJscEozRFdPL1ZvV2F6TDJBc2xuRGxlMURO?=
 =?utf-8?B?enpsWjZoamM0UHhHN2ZJZTU5NWQ3QzkyRTdmMVlMMVptWStHTzZrZ2lrRUN3?=
 =?utf-8?B?M3VEYTZ0RmRXcHpZaGtqd2thOWthekpDYjBwOEdlY2lGdGZwMVF6M09WbndQ?=
 =?utf-8?B?UmlsTVhaYkpwSU9FMkl6RTQvVHZxWjA0WDFGaHROcnNGUDBaUWYzMCtBcDBa?=
 =?utf-8?B?MUtxL0owUlJ2TDVjTGgrT2pKMy9rc25JbGQ3R0dmRzVsN0ttSjVlQXdYaC90?=
 =?utf-8?Q?1UszScOe2p4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2lOUHh6eEtZd1V0N0VtdGZjUkw0czJNdTBJODkySGw5ZVVBNkc5ck5BTEZY?=
 =?utf-8?B?djVadkRGeU44T1FpMDczREphbXZ4YllNdFl1a2lRZTgrUVBYNkhtMGtqK21l?=
 =?utf-8?B?UVMrM3dYQnFIY0NkbDUyTk1LaWl4VHVWU3FXaTVZcldoblRjVGp5dnNIZmRK?=
 =?utf-8?B?YnN5MWoxUmVwVmhIZlE2TmZLaGt6MVZKQUlFMHdWOStCYm5ibVNSM2EwRUNI?=
 =?utf-8?B?Nm8xVlRjOHV0ekVhbHBMMkd6TCtQWlFDZkc3a2tqTmlBODZ2V3JVZVpPcW02?=
 =?utf-8?B?eGxFQ3RvMGFKaFRLTUV4K3N1Y2ptaDlxWlNsc0xsOFYrcllyeEc4U0JyK1lC?=
 =?utf-8?B?d1lZZlVpL01KQnNXQnNJV2ZQZEM3aEpPamEvSkh2L0EvTVRnaXR4YWtObFg1?=
 =?utf-8?B?eWNnUmxvUHhoUEg5KzEzdWc2NWZ1OUNMQ0ZXNnUzWld3a2oxMU5JSUE1UUpP?=
 =?utf-8?B?VTJGLzhBNUtsZFdJaDlNaVRmcVkxR0Q4NEJoZGl3VFUvakdBV1VpZzlwY3hK?=
 =?utf-8?B?bTZHZURKMzZXbGJoakYwY043cXY5cWdkYTRCR1V2NXlaVWNod1hPeVA1RGRY?=
 =?utf-8?B?REp2R2RHUGlENDE1aTZ6NFZkM0x0K25wLy9sRFRDb1MxZzZPdlZaRytVWTBn?=
 =?utf-8?B?QUFLUmRwRk9YUnJGNXhyRzUrbGF5anVJM05yMy9uRXgzVHBzRW9uZTlKa3NN?=
 =?utf-8?B?MXZ3cWF1KytJdFBZNlJxdm93empaVzV0TzBubWJ6SGxPN1BmNUVuZnJ5UzM5?=
 =?utf-8?B?T2xVdnVwc1ZFN0NrZDdabTN5bmVPMGw2VkpjbzVabW9STCs2UndIR2dMUTRD?=
 =?utf-8?B?eGFTbGlGcUFHWWdBWDZsYXdUUnltVHFROEpyY09Mbnk2b08rRWh0ZkZQNTVX?=
 =?utf-8?B?cjUvTW4zbUN2dnBFa1U4Z0h0Tnp0KzJlUEREWmJwVXJsUnBMbGxDMDJaMlNr?=
 =?utf-8?B?TGptc3ZGSitlRDA3b3dUcjg0ZVRSVkdBOEhSZk1HbHJsRzB0RVZnOS9YQUI2?=
 =?utf-8?B?Um1rYXJtSjN5YWRRTFUyUS9COVZ6OGJqeFZ0ckRDVDJpVEV4akh3a3BUbTNX?=
 =?utf-8?B?TXl3czNOeWhmS0hFa0t4bCtsT0huYU9tTXNzOGxreWRQQzJHdlhobXdBeEcw?=
 =?utf-8?B?VEpkaG9BOG1iN2dhNHVKZDU5Q0tMZVV5U1ZvTHp2c09hbTNHZE5UVkdXNHJF?=
 =?utf-8?B?c1N1ZzhlZ3hBbWlTd0RrR2YzMVdIU250L2FpYUFYblJTY0EzMElUT0JWSHda?=
 =?utf-8?B?eEJPeDhDNEpKZDZmNzUxUmIydEltTGpvOGVaU2dUaDV5SysvNmpHTDJpWHQx?=
 =?utf-8?B?ME5weWpINktvRGdMT2lscU9UbXBFRHJ4N04rOXJ2VVkzdkN1ODVTT2pVYjkr?=
 =?utf-8?B?Y1dwRlZqajdQSnJmVlphSEZKQzZnUVhmNG9wMlNvMnU5b3ZDclRIOG4vU252?=
 =?utf-8?B?NjkyeE40TTVjYTVaTTE4eW01WWdaT2NFc3U2RVp0bXpUaTZIVllWaXlXS01q?=
 =?utf-8?B?SzZ6TDVvb05zSDNKdVE2WE5lZTVMQ3diL283d0lvcDFvWUdoTHo0d1pOeXBi?=
 =?utf-8?B?V2lYZ1hvenV3L3dqM3FsbCthSjdaVG10TlM4WC8vSlR3TjlZZGpJcnVOTXVo?=
 =?utf-8?B?aytad3JjN3Rkcko3akxDQzg3Ujg5eFQyVmZCWGpaWFFmSlpTNzk2T3JPcFFz?=
 =?utf-8?B?cjcvL0lZV2VMZ1dKSEJoYjBSOHh4MHBEWTVBdWpvV3l1WWdBMzgwSUtDVGQv?=
 =?utf-8?B?YXdqaUhmWG8yQWU1N084bU0wbk1BQW92UEppUDMyWEtUOVNaVTBUUnRkU0R5?=
 =?utf-8?B?OURxRG00L0ZHWkpVNWxMeHM2ekY4djJwdGdWOS95aFBpanlCRVVxTEpEdUlv?=
 =?utf-8?B?Skx0bStYd1cvSUt1eHNPc1hqeFJDcGhmSjE2M3Q3SnpQSzJYODFScFBDQlND?=
 =?utf-8?B?U0JNd25lUXRPYldOQVV4aTU5azdFc3dDNnR4U016Mk5oR3d0T2lhcXZNT0tM?=
 =?utf-8?B?amR3Nmc4QVpUR0FkM1FVYXNLV2owYlhJSGFWaUVqK3lmK0thZUg2Y2pzMkJp?=
 =?utf-8?B?WGdoT0pQZVhON241L0hPbHAvSEdGdHBRbTFPcmlacFdBVFllbFo1d21PbXhK?=
 =?utf-8?B?VTFYOGNFVGd1RWJTakVvY1VWVjZRUXdQN3c5bXo4dCsyU2pya0k4b0o5Vmxz?=
 =?utf-8?Q?QPE6hAHnqnxdxuszVLqFgRLpteKM6De7u5WRKqrr/dFT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ad10ee9-dd86-4bd3-4b7e-08ddc3b3db78
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2025 15:25:41.4131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: obwkwOxJpO0X4rNrKUmkSt2cog0p7r9RW2jKxDkZyDdLQB5IBQEqQd09xuG+QVtU3amkGQib9hctXpbv2rbbOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6252
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 15, 2025 at 06:38:15PM +0530, Dibin Moolakadan Subrahmanian wrote:
> 
> On 15-07-2025 15:10, Imre Deak wrote:
> > On Tue, Jul 15, 2025 at 11:22:19AM +0530, Dibin Moolakadan Subrahmanian wrote:
> > >   It has been observed that during `xe_display_pm_suspend()` execution,
> > >   an HPD interrupt can still be triggered, resulting in `dig_port_work`
> > >   being scheduled. The issue arises when this work executes after
> > >   `xe_display_pm_suspend_late()`, by which time the display is fully
> > >   suspended.
> > > 
> > >   This can lead to errors such as "DC state mismatch", as the dig_port
> > >   work accesses display resources that are no longer available or
> > >   powered.
> > > 
> > >   To address this, introduce a new `ignore_dig_port` flag in the
> > >   hotplug in structure. This flag is checked in the interrupt handler to
> > >   prevent queuing of `dig_port_work` while the system is mid-suspend.
> > >   This behavior is consistent with the existing approach of suppressing
> > >   hotplug_work during suspend.
> > > 
> > > Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> > > ---
> > >   .../gpu/drm/i915/display/intel_display_core.h |  3 +++
> > >   drivers/gpu/drm/i915/display/intel_hotplug.c  | 22 ++++++++++++++++++-
> > >   drivers/gpu/drm/i915/display/intel_hotplug.h  |  2 ++
> > >   drivers/gpu/drm/xe/display/xe_display.c       |  4 ++++
> > >   4 files changed, 30 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > index 8c226406c5cd..376682c53798 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > @@ -209,6 +209,9 @@ struct intel_hotplug {
> > >   	 * cue to ignore the long HPDs and can be set / unset using debugfs.
> > >   	 */
> > >   	bool ignore_long_hpd;
> > > +
> > > +	/* Flag to ignore dig_port work , used in suspend*/
> > > +	bool ignore_dig_port;
> > >   };
> > >   struct intel_vbt_data {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > index 265aa97fcc75..b2891b7c3205 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > @@ -223,6 +223,26 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
> > >   	return queue_work(display->wq.unordered, work);
> > >   }
> > > +void intel_hpd_ignore_dig_port_work(struct intel_display *display, bool value)
> > > +{
> > > +	if (!HAS_DISPLAY(display))
> > > +		return;
> > > +
> > > +	spin_lock_irq(&display->irq.lock);
> > > +	display->hotplug.ignore_dig_port = value;
> > > +	spin_unlock_irq(&display->irq.lock);
> > > +}
> > > +
> > > +bool intel_hpd_can_queue_dig_port(struct intel_display *display)
> > > +{
> > > +	if (!HAS_DISPLAY(display))
> > > +		return FALSE;
> > > +
> > > +	lockdep_assert_held(&display->irq.lock);
> > > +
> > > +	return !display->hotplug.ignore_dig_port;
> > > +}
> > > +
> > >   static void
> > >   intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
> > >   {
> > > @@ -691,7 +711,7 @@ void intel_hpd_irq_handler(struct intel_display *display,
> > >   	 * queue for otherwise the flush_work in the pageflip code will
> > >   	 * deadlock.
> > >   	 */
> > > -	if (queue_dig)
> > > +	if (queue_dig && intel_hpd_can_queue_dig_port(display))
> > >   		queue_work(display->hotplug.dp_wq, &display->hotplug.dig_port_work);
> > >   	if (queue_hp)
> > >   		queue_delayed_detection_work(display,
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
> > > index edc41c9d3d65..9dc40ec7074c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
> > > @@ -34,5 +34,7 @@ void intel_hpd_debugfs_register(struct intel_display *display);
> > >   void intel_hpd_enable_detection_work(struct intel_display *display);
> > >   void intel_hpd_disable_detection_work(struct intel_display *display);
> > >   bool intel_hpd_schedule_detection(struct intel_display *display);
> > > +void intel_hpd_ignore_dig_port_work(struct intel_display *display, bool value);
> > > +bool intel_hpd_can_queue_dig_port(struct intel_display *display);
> > >   #endif /* __INTEL_HOTPLUG_H__ */
> > > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > > index e2e0771cf274..2db71bd07c9f 100644
> > > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > > @@ -342,6 +342,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
> > >   	intel_hpd_cancel_work(display);
> > > +	intel_hpd_ignore_dig_port_work(display, 1);
> > > +
> > The actual problem is that HPD IRQs are disabled too late in xe, this
> > should happen already before intel_hpd_cancel_work() is called.
> 
> You're right — the HPD IRQs appear to be disabled only later via xe_irq_suspend(xe),
> which is not early enough to prevent unwanted behavior during suspend.
> 
> But unlike the HPD IRQ enable path, which uses function pointers from
> struct intel_hotplug_funcs, there doesn't appear to be a hook to disable IRQs early.
> 
> The proposed approach mirrors how we're already handling hotplug_work,
> which is gated by the detection_work_enabled flag. This flag is cleared during suspend
> by intel_display_driver_disable_user_access().

The work should not run after intel_hpd_cancel_work() returns. To ensure
that it's the IRQs scheduling the work which should be disabled, before
intel_hpd_cancel_work() is called. For now, calling intel_hpd_block() on
all the encoders would be enough for that. intel_hpd_cancel_work() will
see then blocked IRQs, so the WARN about that should be removed from it.

> Regards,
> Dibin
> 
> > >   	if (has_display(xe)) {
> > >   		intel_display_driver_suspend_access(display);
> > >   		intel_encoder_suspend_all(display);
> > > @@ -469,6 +471,8 @@ void xe_display_pm_resume(struct xe_device *xe)
> > >   	if (has_display(xe))
> > >   		intel_display_driver_resume_access(display);
> > > +	intel_hpd_ignore_dig_port_work(display, 0);
> > > +
> > >   	intel_hpd_init(display);
> > >   	if (has_display(xe)) {
> > > -- 
> > > 2.43.0
> > > 
