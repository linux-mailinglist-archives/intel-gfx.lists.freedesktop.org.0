Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 224ACB48837
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 11:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7FE310E4A8;
	Mon,  8 Sep 2025 09:23:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CL9+Rxgt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF0A510E4A8
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 09:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757323395; x=1788859395;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tbtaHxSo8zQnTbdSTGYJl0jFr3Cys5EVtEfmsvSYOcA=;
 b=CL9+Rxgt4bwppUySrOtjdJYOdFLJ3N24wSZrtXXzWEE87oeVsJ1jI3nk
 zFlfIP8oAJaDD7tRBMCZDWWuwUDXQygANDXt9PWr1xmmNjPetsJhYEn6j
 YDKYvDy+TUClLHGu63YRRp+RzlmzO+taGJgn9/e0kxyFiCW+Cb8cLRe+i
 WYvCmf866UMV/p/c7JXJVnoijdsf4ghajL5wHMsh2giZn1zydz6crmls1
 h5TLwMx7JCWtoQSX4mpZMdvN4WfGc/xWSjgJAZxIaCwsl/R4hG4imPoGx
 GXSzyKxx8NwD9lct8+h2XPDTScUIujsbnFoHRB/bxsLc9rw9JZEN3+CTw w==;
X-CSE-ConnectionGUID: ST1B7UkjQISOejb6Z5mDOA==
X-CSE-MsgGUID: wT/HNCiBQtCGI2A+8W5bMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59503234"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59503234"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:23:14 -0700
X-CSE-ConnectionGUID: upM8lc12Ra6O9sgELjn8bw==
X-CSE-MsgGUID: Q71C2taIQfakQcNZ/br6Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="173207571"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:23:14 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:23:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 02:23:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.64)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:23:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ORVz3n0VQW7uyh627pE+2gGKyq9zzNcuPHxcIOfNstQCA5Ju1VYxEPdnYa95q2vjN3gPoYUaNvSHxEIZn6ZUaZl2jAr/DFymkRmOmz3CsYePB3ytLipO+b7SkBkYwfxcpqVnqOjD3NbpNxv6YB6fwfkuffUN1q25tyHLbHjjECjwjoeFryUps937//dfj7NcYp5STq2A+pli0mBX1h5Kb1MLFe9/d9c0qJPAStcZlsn6VCFHP+/+QlHLSkpFsfxoTL7d4vuN/62Z2A68yOdvnSMEvtXCPVh/Mj3AAE4kLLGq9/ZC8xdkfAkWm+ErNOllRB9FfUPSXlxemVvnX11sag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E596QXS6iI9/H0qQ5xjwRlr5b+nDQwifra3wDs1w0SU=;
 b=jtDVyUzhj1I4IQe8mNeog2o8OdQv6N1oqIRe0r32YQnCTKd3FV9RvvywkDCaEOPa7rcfTVZhJ/kY7rkxSPjZf9bFK6VIC2N8t9LsY5iO5F+PFEI4WlGmeQZAC6wFkUnIJwtA+VpiH2zH0du0Gx80mDJjvXBUHDy9kWFtAx6WobtODMd+SCjTI9jSJV+j3DwcRhoukpvB+nIu6QY5KwvfdDquCss4oVFjrElOzfNy3zYNxDWx7U8dGCBPl65FinIhCy/82pi8PR0pv73MhEFRTo4V3w+H9mVxyznJaWDWAkXvqRr/SAmkyWneSwnA8Xv8ZMHaUBAxSuN/eJKFxjQZRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB6005.namprd11.prod.outlook.com (2603:10b6:510:1e0::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 09:23:09 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 09:23:08 +0000
Date: Mon, 8 Sep 2025 09:23:02 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH 1/6] drm/i915/gem: Avoid accessing uninitialized context in
 emit_rpcs_query()
Message-ID: <3c911724dc4fc37d6c301c68de5d16ae10180dea.1756995162.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1756995162.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1756995162.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: VI1PR0502CA0017.eurprd05.prod.outlook.com
 (2603:10a6:803:1::30) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB6005:EE_
X-MS-Office365-Filtering-Correlation-Id: 272e919f-3fc0-4e37-af37-08ddeeb95308
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SWdGSjBqb0FPc2g4UHJBeUpIVjhaYzNTMjJHVklYRHgyaGxNYmp4aEFCQUJG?=
 =?utf-8?B?SWpmYytmVFpMdzkyU1R6QUhSL1lURG5QU1R0S3QydmIrZXNOVFVvbkZTckVy?=
 =?utf-8?B?enVBdjlNTW9MazYxZ1J3aVBSYlNPbm5aa0d0K3FDYjRsR2VPY0J3akR5T3h5?=
 =?utf-8?B?Qk9YSnFrQ05hQklaa3FJcE9GZmFVL25aZVROZkNBTEJEdnlNRFo0dTEyc1JC?=
 =?utf-8?B?TEFkbk9nMitOK1ZreXRTSGcxY1RUTTNQeFlUazRoeW9EcWt5bFNnd0xXbGNs?=
 =?utf-8?B?eEJ3SHNQTHNWS3MveXRmNHBPci9VS2x3YkJtR3V1MURzc0xlQlI3NUFzUWQr?=
 =?utf-8?B?WEo3N1JrZ3NUZXJwS1RGMVhOaGh4eEF2VkZJcjROYktwRHczWU5acXlvV2xM?=
 =?utf-8?B?UkhJTTU0NUlJMHhQRGlrNDNocmxibmVlN1lkMjQwcUNOL1FXN0tyVEV5cHZL?=
 =?utf-8?B?dVcyaGZhNDkveHFDdDMvRWhPUHpsaU9qTDNOMlZHSS83YU4yK1VrUWQyTlhN?=
 =?utf-8?B?QXlYK2tkdHlRWG5ESXlTT0ZmaEFLWkg1OHRaNklvQ1lvRHY4Y3ppTEVSV3ZY?=
 =?utf-8?B?RDZhdTVoL2NGT2ppQkZhem5kUGl5d09oTGNrSmtzWmx0SktzRmg3RzFDdk44?=
 =?utf-8?B?OE5XNXFXZnR6WDlXQzFzSjRLQXU3RmlZOHNOWUMxU1dHRFdyWG9rbGhmTFJV?=
 =?utf-8?B?Z3QrRXNBdW96UWxOaXo2SGdxUkxPT0t6aXM5K3c2c3ZrREZXTERVcllrTGtH?=
 =?utf-8?B?MWJLUTRuL2hBV2QwcG9aUGFqdWhhNlBNV0VIZ2svbFFJN0prd053aWM3UitB?=
 =?utf-8?B?WVNqSGNYZkFKQzMzTFd6YU1yMXVBUHN0UTIzSXh5RzVuUW81czJ1QkpiYjJm?=
 =?utf-8?B?RnF1VThTbkRhRmdJNEVwVEdLZ3lGb3NBTDBieDJ5WW85RWNvWTQ4YnpYeVBN?=
 =?utf-8?B?d0djVnl5YzFmbmtFR3lFdmhySmZGV2I3RHQwTVdPVEtwWmUwRlpqcWc0K3lY?=
 =?utf-8?B?Wmt3eGthOEh5cGJKKy81cUlScEdvNDlSVEVWZkI2VVVSS3IydWttcVB5UjRq?=
 =?utf-8?B?ejhKZjlVQndSd1N3bTBCUzdlOUYrb0o2akZ6RUlrVTRMRVVOejhEY0ZHR0pa?=
 =?utf-8?B?S0tsTGNqYnVWMUdBMTBkblFXNzZQRk52SmdiNlRndksxakNqc3NtSnVpamNt?=
 =?utf-8?B?Z3NWZi9oZHZvT3BUUi81VDFGSmRIYUlWM1VqZmlYb0Z2SFlBMHZrSVd4aWxy?=
 =?utf-8?B?dUJBL3BXTUc0ZnNaWGJGOVp6UWhYWnZJZDhmb0Mvc2xpNnBudWVUUHc5RVRM?=
 =?utf-8?B?SHNYaUh2N2ZiYVBjZ2UxV3UyU1p4czhMYkl4OXdocEszYjBTVkxMT2V0ZkNk?=
 =?utf-8?B?V1QvZkNRTklQWWtUbitjdml6QUJOazdsK3pLOUU3ckV5UVRDUi85Qk41WDJV?=
 =?utf-8?B?d3oxcVRKcFZqc1JLL3VUS2REbFpuaWswRERwUlJuR2JiTWc1VXBjT1grS1pu?=
 =?utf-8?B?M3FzSmFCNmtVQ1R0UUdLcGNjY2M1MmxscGpSbVhjamZhKzRjTDNQMGtSb0xV?=
 =?utf-8?B?aFV0dHJUcUZlbVdqWUhLd1VIZnU0M2M1S3kzRkdTRWpKcUYrdlowTlpzdGF5?=
 =?utf-8?B?a0liRXBxSUtMaXNvck5DeEhBUGJrcXFRUnpDOVpKbitKUkZ4b2VLUU96d2ZB?=
 =?utf-8?B?MDIrNmVXUXk5ZVovaXp2WFo4akh4MHRGeTlDMlVJOU82YkZZMldXRGk2Uldx?=
 =?utf-8?B?RTEwa25JYnl2WE5oWEV3bjhwMllpVmZxb3F0T2JUdHIzNHhUdTQ4THltNTha?=
 =?utf-8?B?YVIyQWMvU2JjVXlmaXJrRTM3YTA5VXNEcFlLNnE0RTl0N1hwbUphUDh2Rmla?=
 =?utf-8?B?djJzQ2tQUnhTMXJVU1JOaFFCRkU2OUltdVRQZkhOUiszK05hNVhSWVpWcnJ3?=
 =?utf-8?Q?zBwKDy0c11M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?emdaSDFkZFNNZStPdkVzVC9iSnAxSkIvRGYxLy8rMWJTWFdmQmJWemlWaTJM?=
 =?utf-8?B?bnB5dlhvT29Fc29MRU56R1J0bnhsNUNGMVRxT0xrZGtGL2daVWR2UElybnhD?=
 =?utf-8?B?MHp5QzF6SHBPMisvdTNqaVl1aDczZXg5ZlFNZFdITDBUek42MFNOWWFPUlFo?=
 =?utf-8?B?Q2hTU0VVMWxxVlJrdEp2b2pTRDdkeGk0TFVoZU1CZWE4Zlp3STcxNnA1N0dO?=
 =?utf-8?B?dk8zNk1ES0xPWEFVbG1nRkMyZ2laWmRQaGNXTXowaUhpSUZJR2ltZWxpOHZk?=
 =?utf-8?B?dnVGUVp0TC9xck13aHFPQnVMTE1VWSt0MW8wMDFJT1paWVlWSEEwZ05mVjNW?=
 =?utf-8?B?dXJLamdITVlkc3c2bWxvOC9OaE9paVZOTFBuZWM5K2FaU1FtbWgxek55Sy8x?=
 =?utf-8?B?ZzEyeUNFdjR6R1FEYVdVVzVRb1Bya0FCU1NrWmRoZTFuaUtPTitMZ2ppY1Ny?=
 =?utf-8?B?N0lQSlhlUGNhd21pRjR0NFo0VGFwUmpkd0JPWW51NkNTVXJBVjF5SWVMV0Jz?=
 =?utf-8?B?N09rWVJYNnVwNWdmU3czZHhnUm5yL0t1UXcwbFJhUFA2a3RjYWN5VUZFTDR5?=
 =?utf-8?B?bUVsSVhhQlFra3BNQlZUUU9MZmU2YmhET0JzOHdPdnhWSFJRaU9yRGh6YWJo?=
 =?utf-8?B?Y3ZET1hpOStBSlFZdnNHaUVWYUVlcFpIZGtEM3AwQ010ZnRkeWVzdjI1SzhD?=
 =?utf-8?B?M0JRMEF0NWd2UEdYSllyR01aeFhUMlpRMDlsRG5SR3IrMDkyNWdrMGVQVDlW?=
 =?utf-8?B?UlNkaVBPWGhQaXpjKzczeUJJam1CK2pSM012ZThxQ2FxMGt0Wk90QmlsMTZ0?=
 =?utf-8?B?MG13N0p5Y2JtRDBhaWcwdFJDUVl5U2VYOUYvcUw3c285QTQ5bmFydHBoZ0di?=
 =?utf-8?B?cmFxMnJ3VjF0TmloWE9NTThXMWsrRVhzU0RsVHZWSGtwdTU4V3pFRjA5QTFL?=
 =?utf-8?B?U1VVVDE4Z3JRdkZFYko4Y1AyOFVTRkdLeW1sYVhOMExNaFZLT2hyVUN1THM2?=
 =?utf-8?B?bldvMm9KbitwTHVxaStWejY2MWltU0VmeTg5K1puN2FvS1JGNG1OeFRKRm5Q?=
 =?utf-8?B?VTRqVXpBYUJXdExQWFoxdDBjR2hnTGsyYXBCakJyekFJL2gzVTlNdUowQjhp?=
 =?utf-8?B?Y0NnbVpidXNwRkM4YktHaUxzM2pEK1YyQ1EvaFEvTlR4ZTZnREhZUWs4bVNl?=
 =?utf-8?B?aVBNcmtGb09kcDVCbGZ4TGMyRytNQWdEUmNUVllFaG1KRXg5SnZ6WjdRdFJR?=
 =?utf-8?B?bWNSM1N0cW9lYi90b0pqalZMNE5kVHYrdXRRVmJQSnhVdjFXUWRmTHlLMWRs?=
 =?utf-8?B?K051ZzVUODVON3BBOGZxR1lnT0xCUzNaNW9uM0V0QTk5YUN3YURSQkRIaFNW?=
 =?utf-8?B?eVJvelVxVkIrRGduSVZLOHJrWTFkZnhQTFE2TjhwK0hJWGJQUDhFZzJKMW9y?=
 =?utf-8?B?bG9GMUJCZWY2clFMVUxEbnIrclRadUp4Y1UrTjVocTBVMU9rbWZZNU5MUjRq?=
 =?utf-8?B?VjFWQ24wT2cwSDFmR0hpM1R5TVNsUUsrTFFGMUhQQVRFaE0wRkxERzR6QnRR?=
 =?utf-8?B?UmxTYnBYSjNRL1FsNGdGbUc3OUh1K01DdEhFbEo2MXdlUlZkc2JIU05xTlMz?=
 =?utf-8?B?NCtFcWlGVFo0VGpEZGJ0eXRCNnVxOHBiUHJjNW5mcVNxMXd4M1EreUIzc0V2?=
 =?utf-8?B?dm1lM0FPQVh0RkZpTVR2Sk1VZW02cnJ4OHBJTi9sQU5aVE5PL0lqNTZPUGR1?=
 =?utf-8?B?c3U2UmpzbDFHVUZRMkw1THFkQmNlaStKN2h2MG9WWW91RXdXSUJudFhrOGo1?=
 =?utf-8?B?R05VbnNGaEwzQlMzUElpTlVpeVN4RGVFdTNwT2ZxZzh1MytvWFExYXhOMTE0?=
 =?utf-8?B?ZllKb3NpM2lBOS8zTmxmdWNZOUt1YVB5bHd3Vk9qRzNiMXc4QVBnRUl1SmJD?=
 =?utf-8?B?N05RcWJmVTRBOHYxSkRiMG5JSGxnZjBSVS9yd21ZWXpYTTkzbnQwc3R5V002?=
 =?utf-8?B?OTZ2dnBRWGZxVGQ5Sk9NR0hPQ25COEszVzM1cUNGblNhR2taQk5MV1FoS203?=
 =?utf-8?B?bDdYbUxTWHYveE5DVlN2VDRIbDAxM283b1NoRE9GQjFlbkxldmlEOC9SYXNt?=
 =?utf-8?B?cE1sNkFTOUdLeWc0T3BJSldNK0FjYjJ3b1BHZGJ3NUNZZWkwNmk3dnNJQ0wx?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 272e919f-3fc0-4e37-af37-08ddeeb95308
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 09:23:08.8796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w3spyy39d821OishRuyu8+0QQFdFGKH6RMbHUnAlZDDJIiYz6FEvKfLg48x1D8lFWoGv3FNwwohJAAriVTMQhYo9ltjY+52z89tgQp8QNtA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6005
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

Following the error path in that function may lead to usage of
uninitialized struct i915_gem_ww_ctx object, so move call to
i915_gem_ww_ctx_init() a bit earlier.

Fixes: 15b6c9249870 ("drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v3.")
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.10+
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index eb0158e43417..1330c0b431a7 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -962,13 +962,14 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 	if (IS_ERR(rpcs))
 		return PTR_ERR(rpcs);
 
+	i915_gem_ww_ctx_init(&ww, false);
+
 	batch = i915_vma_instance(rpcs, ce->vm, NULL);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
 		goto err_put;
 	}
 
-	i915_gem_ww_ctx_init(&ww, false);
 retry:
 	err = i915_gem_object_lock(obj, &ww);
 	if (!err)
-- 
2.34.1
