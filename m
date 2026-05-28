Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDzlFk/lF2otUggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 08:48:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CB25ED62F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 08:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90B9710ECB8;
	Thu, 28 May 2026 06:48:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a2rgPkVG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1293510ECB8;
 Thu, 28 May 2026 06:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779950924; x=1811486924;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bUoGZpDvGpb8vDB6EbwttKvCFv0n6DveTIy4c7QunJM=;
 b=a2rgPkVGcev8hRLYTnYJH1Dy7wBTOSqIIIl5yRxXYcr3HfY+GOgLZwOT
 uVw60ZdCpbZdOc11zgtwThPbjyzq6+gJApgx4rQ2+PFGKJhoTXqsNnbfB
 n1ikTlf5YO/PB9UjlpTKt6nAvVulggJYN8nMk/VoV7rfzUF/+LiqkOeTE
 PcCEREvRjBXrzInqPvntDIZeY9yObxMYoZvJkNy9pveaKcSFs1CuuaWyr
 NdVDyDivMr/Q4mT6cBeX78b8WDVwUWcoG0hQx9xWEj3uwCjaun008mqWv
 d52phtyEKh/N3xkl8X83QmLjM3tYa3Nifz2iuhJ+/3KgE8NQFoYsgZhc7 w==;
X-CSE-ConnectionGUID: NXdRPJxEQtSMztUQ6eNnUQ==
X-CSE-MsgGUID: 8PZIdiAcS6iIZnG5tQ1YMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="91096774"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="91096774"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 23:48:43 -0700
X-CSE-ConnectionGUID: BUjxlxugS+2zkeZD8JvipQ==
X-CSE-MsgGUID: mbU4Csj9Rt+TbYYgbfuhEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="247541760"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 23:48:43 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 23:48:42 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 23:48:42 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.17) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 23:48:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=njUyeucyeambW6vNQOWU+xMuCsi6gNbHO1TFJaE6wXWI6R3kcbbPqbXcdJQfbcSXsBsId++fUMeeOVge1ZgpQT+0KT4gdUnJjImAJ70yTQek0mbKZiRPGP0UevPmM0mm4puMBIu1SDCqDzfN00szYRjGtWFRv379S4F6M21J4EakbfZ8LQQEzAiy+ok6dieSrwLxUECZSKDroE/R88gV8Ffl1kzcPMyZHFoRlNbfCUJiO68YAlKKOYRWx9RQo0GWDl/87oiFxDnHrRvCMVcxCNomNtgB6LfzwYX7Xuee1V36oOSRry/0qajCdWg2+rdsMJC85dNgaZGu3fbf08fQ0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MG65fMHI+dzBYdZRgzNKSyx398zk5zsuPimy8ykh+v8=;
 b=woI+Rlr3TxxqPufQ5VTAjDdRuK9EPWHb9XV19oP29iE3x/xtG1s0en9/dgzEcPkq4mBMkkZq9oiZYKHnZaqP1IwgqB5LoS54Vrm+Yf0JUIlFmP0PGJthBlgP38TR75QNLU04w8nYMDYcOSE28RSQz5TriNhiN35CnlXYny+QIkdNCyOnVAd9hTdGsgkEBILsIUEEcG0z49dSrADRqiavaWxB38CsqZGGf5obCyWJ3ycBEnzCUMx7Ud0lZ5U1gHP58GX2VTbjA1IDF6bVitQc1JyRuJpQryP7Uug2JFXy3SO8Ib9FoyK2onLFbNmR/FEyor3ikO5AsY1UqRqnsgLypQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DM4PR11MB7205.namprd11.prod.outlook.com (2603:10b6:8:113::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Thu, 28 May
 2026 06:48:34 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 06:48:33 +0000
Date: Thu, 28 May 2026 06:48:23 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Zbigniew
 =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH i-g-t] tests/intel/gem_softpin: Show debug info also on
 success
Message-ID: <pvesk6xepl4b5tcd3ahwyq3pqsdeh2kgsuwylcybru23eup4ml@jzz7xz7grymb>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260527120430.3323133-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260527120430.3323133-2-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: DUZPR01CA0133.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bc::28) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DM4PR11MB7205:EE_
X-MS-Office365-Filtering-Correlation-Id: 25a52d63-2122-4ed7-02e5-08debc8522d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: lMr5kbbSsGZsTN0nOwzc9khwDWBqGyW0Z9bwqvnrhyJ9fNhBwJC5wxZsZmBWZQZvr6atOz7SYGfaqZ83EwWyxvVHRousCaolUEDc76Gg+68q7/sIZtBx5BE6O+8q5ZvCSqwdJsJNsPdbs3+aaLoZjA8/MQW+wGgo0U0kM/2eqjG3td98Pn2wCcEz5/AX9ofyAbZK7yTcfF1BBOnIzTt2cNCEwDvjAporBmPZGksS2GS7TlfPcsj7XfyNWcFOiAdrIStdUVAu7/euvcuHbxgcxa4if6mQA9LVuMFPmkK4xVlNjoy93KJnbxPFJT1qoam+DkVt3Ucy8c7ZKHRWEeNusbiE5xDJyAQOPmxg3E/OA3rQ49xXZIoB3/+64Qbv5TwVnpl4si76AOtaKczIdAbHC875Fs0KtI3qg9o1yJR0Bfn130IImCW4ku7ilx6FLf7CT9r2Pe3DsjJ84/JKHFvVPs7Oeu1OEM7jRWWw6FaqrKhWkQBwjjnIfc9IBDIyV4xZ/XK4xS73j6VCzgUQ4loRv0eyjwWWXyze48MKiwAYglEbzWK768jgES1/56Ad3CtyQEs2pw9xI2vAE1PpC6wiLCUY8dNulDww6hDJyf1fnttr7/8SahnVv+/KXx35DzSbSAPk8dKNHbIA0R3SQLJzKg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHAxSUlHaVhCS3FoTG1xc0toNVZQWnFpNXNoK3ZrMEcvc1BlSFVkL3NHUXVk?=
 =?utf-8?B?eWxJNmRObG5TbFRXZTFjdVFTdEtBYUZvTWZ5eW1vY1o0WWlBMjV1OGpzVjRS?=
 =?utf-8?B?MlNCbEsweUVCRVJONDArNjZNOVBPMHp4Qk1BSmdXQVZLSU0yMnFmSGtzRTBW?=
 =?utf-8?B?Skx4TTZJYjQxNWJJKzNRY25aTFZXYTlVWEJQbTZhS29JaVVEUkxqaFM4cDMw?=
 =?utf-8?B?amZ4V3FuTEZFZU02eC9Lc1BTcU9mQXZIK2w5WUdKbE9iRk9vWkZRMkY4ODNw?=
 =?utf-8?B?TS9qb0s4Viswenl2YSsraGVvUytmcjN4V3hFT2RMNFFRS1RtZWtKWWsyUVp3?=
 =?utf-8?B?bjVBOXI5WTlmN3NyVzNwZlN1NFhqT2hZd0ZoVGRTRVd4aHhiZTJPSjlVNFZ6?=
 =?utf-8?B?YTBRTGw3Znd6NDM0dzZzYWNYZ0JuTVpHVFFScUg2VTkzaFRMQnNYOGlsUHp2?=
 =?utf-8?B?N1pMWTBUblFjTEVkMzZFSnhLbDMyNHBmSkt0M3RvN2FrQ0d3NWc0T3BpdEQw?=
 =?utf-8?B?MWNHeDN6a0RMeHdrRlgzOXFpTCsyU3hFcVdQY3JNZmFabzJmY0YveHljdW1n?=
 =?utf-8?B?aXlwbHRVQ2ZmMUtMUjhpTXlvUG9ERVNaZjEwT3IvMGZTaXRYSWlmR090STc1?=
 =?utf-8?B?Z0YwcGhRVSszTmJhbXNBeVh4bHQwOXNuWXhnM2dnenRRUGFXZjg0V29rTkU2?=
 =?utf-8?B?S0ZvdnJTUmFoZnhIeW55Y015TXNKc3dDeGNsejFka21nUWJtY1JpOEsxWnVY?=
 =?utf-8?B?Tmp2R0FXbWpsSnZpVXJUWHQ2ZkNvV3krR1pyVXBHTFVtKzNjWTB4eXdGeXhp?=
 =?utf-8?B?YnpPQ0Q1UUU1UTE2QzJDbHhWR3kvRGE1NWI5RDRIS3RyN0xTS0lLd0dRWVA5?=
 =?utf-8?B?WUxxaWNkQ1Z0NmloY1prc2ZpSHBCVmNKdkFUQy9tazFkaXQ4Yi9NSHZuclFr?=
 =?utf-8?B?ZGlIUEdIRFhhUjgvSmtoSVJDMFcrYXFxMDhrS0tKTDhJSG5SUlNoRTNxUmxE?=
 =?utf-8?B?TWw5L01qa0VXNWRwZEVibVpKNVhCYzd6UkV2bjFVelk5YURzcWpBaEgxbHl2?=
 =?utf-8?B?T2o5enJOT0FFZVpTc0hsQ0wzYklJQlRLUzZuc01IRmdvaVJYdGtqSnc0aHR0?=
 =?utf-8?B?QlMwTXlnQVgyYXRZSmMrMXVtdlA1UklEOFRUWEpGSmpQVHRMQlFPVWpSNFR2?=
 =?utf-8?B?NmYya1gvZ1JXeE5HbFdoUEJyY1BNYmo0MFhJcDhrUmlqTlljbWNIc25kcjBI?=
 =?utf-8?B?SHV3NHMxYjNLMko0NFJ4SkxCeUNGL2JtNlB4UXB0ZkNicjdnYXZiQ1IxdzNo?=
 =?utf-8?B?ckxnYmJwUW0rOTgwOFZRTWw0blF5RzQvUk5PdjIycG5JeUpiQmRrWjRYc3Nz?=
 =?utf-8?B?c0xJaUJ6L08wRWJKR0NUdWRVZWsvbzJ2REtCbWVidTdFME12NTJncXBlaHVL?=
 =?utf-8?B?NXNROXRmcmN2bk1DTkEzY3pKYTk3YVJYQ2RSakFrdldWWVl5SDVFelliVUZs?=
 =?utf-8?B?OEk3NjRab0ZRTmpsZjNsQm5pOGROTzc1c1hYRERNOVczNmRydWM0VmUzYTYy?=
 =?utf-8?B?RXc5S3ZlSllUcStkaE1hTVZYdkdVa2h0eSt4OGJCb1NHMklIZHVuNjh6T3cw?=
 =?utf-8?B?bVQwRzkzYXF3R2dhSHdqTmt3bEVOajJQRlIrUU1NR3lDWmtTYXM2TDVpRUpL?=
 =?utf-8?B?QndBMHBqZlVGdFJNbzZhTHJKMEU5YVliRmR0L0YycWdDeFRlTDhNRWZJYmdU?=
 =?utf-8?B?VEwyWGhncVBHTUxQeURQS2cxWHdDOUxUQ29Wd3gzbVVKWURHTytDTms5VExq?=
 =?utf-8?B?N0ZqZnVuTG9SQVgwK0VhWnpyU1NPNEdoU1NHUktsS1d6RDNJN2pMdHZ5TjN5?=
 =?utf-8?B?cmptOWtGdzFUVDFHNkYvZzIzeXo0ZGNiTHVucHAvY1BCRHpJdk9SWHR5dlFm?=
 =?utf-8?B?M3FpUDdxS2lNbkRkbGpkeEV3TVFIR2lKV1ZYRFFZb3ZJbVZmM2ltMWZTaEkr?=
 =?utf-8?B?K2t0VllsSlV1WC9UakdFc0RDdVZzOUxFYkN4VEtyS1dwRGRGSCt5V0J4MHFo?=
 =?utf-8?B?aWJNWi83ZFY1REhtNGhjUHNqRitPTW4yZGoxaXZYbkFvSTcvTGl2U3BUejhG?=
 =?utf-8?B?ZUhtZ0RHRGh6VnB3WTJ5cVZEUUtNcnlvc2M2UXU0dlRNZU00RE1tc3A1ZjZ3?=
 =?utf-8?B?a1NUZStrS05SUDd2YzJ1MkxwRDZicjFuSVQzbGo5Q1ZhOG8xcEd0b2l0dU9P?=
 =?utf-8?B?RVA3T3dwRUNCcHY2YjdIZXBaNDk4ZzduZGY0VDFHZnZBaU5EVFNjb3JnQ0Nt?=
 =?utf-8?B?dW8zc1ppNDZPcGZxeFRxQ3l6R25kNWhmRFBhbkdXaDNtMnVma3B0MThYWGVw?=
 =?utf-8?Q?gXkLuN2SDj2SgcUo=3D?=
X-Exchange-RoutingPolicyChecked: S13zNRemlEuknSqu79Sge3LdIQ8dryX5ob6Ytd/E5mGQbcswnFKGNv2Lc9wmDbdGVcQdh9y1MEhY1G3z/xp+A/r67z3E+0W+0c4kV8X9kMzEnH035ICXJXF72fI14tl0J2KUltbs1F/jqSuWcmywEcf+SXz71KHPUTTio2vdSXTB2wQf0z1WdvHWpctCR58h8rj+VLVbSEmoGpPcE6Ha9qDYNAN3qs5hWrxSiBPFR0WfT//RbG/04vhmzX8L1K9Y9KUaA2nFe5KKIMt08Xd9NZalsMT9PbwbGHJjvDdCuPMU06i4cUxC5IfePUgk4AmXs2lJUGqIvYl4OqFRIq6zew==
X-MS-Exchange-CrossTenant-Network-Message-Id: 25a52d63-2122-4ed7-02e5-08debc8522d1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 06:48:33.8015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PVE4QE9k0a6ZW0ga32cKUyoKiw89Dv+HYMZgNE5WT9ySy9bHTlr7piaZoeY5ufW9jwJ+xVpNcnZ0PWW5otEcGgt44eRbFXapkiVoMH05S6I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7205
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B6CB25ED62F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Janusz,

On 2026-05-27 at 14:04:05 +0200, Janusz Krzysztofik wrote:
> The safe-aligment subtest is occasionally failing in CI with -ENOSPC.
> Debug messages shown on failure provide some information on used values
> of object size, alignment and offset, but that's still not enough to
> understand what's actually going on.  Since the failure is extremely
> sporadic, manual reproduction occurs impossible.  We need more
> information from CI runs.
> 
> As a first step, raise severity of the subtest specific debug messages
> to INFO so those few lines of additional information are also provided
> for comparison when the test succeeds.
> 
> Address "No space is necessary after a cast" checkpatch finding while
> being at it.
> 
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15527
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
Hopefully, this will be enough to get the information you need
to resolve this issue. After that, this change should be
reverted to avoid bloating the logs.

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
