Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B241B4FBDD
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 14:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B1B710E013;
	Tue,  9 Sep 2025 12:55:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IV21PhVL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 460D810E013
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 12:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757422503; x=1788958503;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=FzNM4goDHqdb5ajHt08+yCkf1LY2tIB56HPCKmXgJMI=;
 b=IV21PhVL/m+sNNzsVAjy1p9YZRY7uJMZ0AetAeS4SwhpZW5E0/RkEhHp
 0zhX/ivOY4PrkGL58U+VTPe+49Izecm1wT3bBi5vTQ243cI/r7FuL2ULd
 9T2x8CPHyyKDJtR9cuez22LxCQHzFkHmL2in8bXEHNOxqRwxA0B2HX4DR
 jrRWWUlHE9lLlz5JuGrPfIV5nu2203raYczSdaklwe0ejSwiCT+7W9GFe
 EDYNazNSKFAVikqEEsBEd02LqkUxH8L/5eDbN9n7aUsqSGZwLT+b/ed0A
 HMvG/2oR7/bhtEdjYctiNxPlg+hyhhcUbZb2SQXr5fI5BOnjupZQ2SBxG Q==;
X-CSE-ConnectionGUID: PUTnzQILQsSBg4VDofGDpw==
X-CSE-MsgGUID: /GQFlsmARy60LYGgyZEm2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="59810738"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="59810738"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 05:55:03 -0700
X-CSE-ConnectionGUID: tXONebbZSaGzOWlyxiS/Ag==
X-CSE-MsgGUID: xxCb6v7dTX+vu5amdUcrLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="172659763"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 05:55:03 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 05:55:01 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 05:55:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.73)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 05:55:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hxl2uGDVuUrFAH8zVlmzCKJBGY7vXDrmwd9kHZUR3JGndttvflYa9h/D6S3T8bkyfLpE+x3FhkDUeb9aWneX11mu5QitNuibzLN+RXlPqpIBDS48ZUp6YWOMgycvLFc2X6WL6+Ec7zAVRq98wibzlpD6SBT0it6cmZK90d33ki/OgShVcT7CiT19XJe2izZq3iinEC8XsdhVPlWEHYnRCPuqb+dRM4EeUDAnhd081IAISsOY62n0brvh31mTCCXhjIuLhXNLEwXsh50sFLgf0D1M9kZ/giyHJMcVu5IXoM17mN6hm1U+cvzAMrz2JIJPHVG5DriEvI8KXH9TMryjsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TQSqh5elf9NaYt6ZfhxGT1ndGRECsnDEtivpBTdIh3I=;
 b=KnrXbwZaWeZqOOlNAgxmOMHBQZigRjuqPtYER/bhF4baXQoHHARPwSewmNoK05GGC4dawc7qlCML2lwJLB+hWVdsTJIgAKEdF+vaJFKQxdm3SADwGsotJUCuvcdCQuNXFQ+DgaOmZWRj8rqI0cUUcF0xt0eWPOjVgEqE2FEgwJvFpWzKWnODUssZQt57KPZyYpG/RDWM1i+8FlX3eLZleQZsfbo6uBbzyy2DNYNWq+lB6z6mQ/s4hEA6z+9NRYNztWlbfZAuw8SUvJycG/3GVFr5IFBs4ZDyOWE6mYuzlPPkC3zCxILLyqIIv4CyKI9N3GEHMJ0LI7Bki4M87pwFYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DM4PR11MB6333.namprd11.prod.outlook.com (2603:10b6:8:b4::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.22; Tue, 9 Sep 2025 12:54:58 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 12:54:58 +0000
Date: Tue, 9 Sep 2025 12:54:48 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v2 0/5] drm: Miscellaneous fixes in drm code
Message-ID: <cover.1757416325.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: TL2P290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::14) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DM4PR11MB6333:EE_
X-MS-Office365-Filtering-Correlation-Id: 02104720-0bc2-4157-5709-08ddefa01520
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NTVaVWczWHRCS0xuc09waS9zOXczcjRod3NiWWs1OEhZaWlkRmVZVEV4S0E0?=
 =?utf-8?B?c240OWtuZzFpK2NlMDhVcHA4V1l5bHlzLzM3QXF2a3BoRWVGblgwOFMreDVt?=
 =?utf-8?B?M284TWdha0ZvWjNOaldtcUwvdk9pek9rOGUyY2l3b2xNbzdkSmkxNTRtWHY3?=
 =?utf-8?B?NHJpK014cmdMbTIyWmcvOFAxSWpkc0pKVXpxQ1RKNDdjN0VhRzNEM2Z6dGJy?=
 =?utf-8?B?Mms2QTFqeDNpdDBiaUNjK0RUSkpSdjhLZDByZDhhSG83WnU0Tm9ER1dMbWh6?=
 =?utf-8?B?c3J5SlZacVpTcVJabUNDQzVzQjREeXdyTzlsNE5SMDgwNFVpNVpvbmRRMStV?=
 =?utf-8?B?Z0RWd2xuVHNLcXVTN3hHeXRCeXAyVmp4UnNEd1JPRHp1Q1ptUEZHZFBSVW5i?=
 =?utf-8?B?YnhJMXVYSWJPcnNHQ0lxZmNrMG9yd25Kb29EdEFtbnoyVE81V0N2Qm5QVFU0?=
 =?utf-8?B?RnBsMjc3S0dKUWpxQ0dNL1JvYXBTcVB3dmFNYzVyQlRid1Y0QTQ3OUZobzNp?=
 =?utf-8?B?ejdGbFFiQ2pnTUwzekpKQW9tOFE0WmtxS2RkMDJHTGlDR2Jnc1dYZnorREd2?=
 =?utf-8?B?NExEN2hRV0M3eUh2ZnFtKzUxdDZHeHZvblNiN1RONlJPcSttQ2gwSVJYZTRs?=
 =?utf-8?B?eDJ1ZDZWVUtwUUVGdU05cE1GcVEwaUcvWnNhVGw4RU5RZUZ4RUdiQVByeXRJ?=
 =?utf-8?B?TVl1SEJDQTVjVnFSUk4yR1FZSTRaWXpLL0NlWThEclhXd0FtQngrdThFcEx1?=
 =?utf-8?B?SHROTFVjV2VNVjl5WFdjOG8wNXlwOEI3NmJQbEc0RHE3akk4NmJURkgzb1Y5?=
 =?utf-8?B?YWx6Vml6MUVxenNtWHBwU0x1L3ZxN0R4cWtXL1NQUXN5bWRnM3JJQ0pydy9B?=
 =?utf-8?B?ME1Rd1J4MDZCVnorODNZR2dPSVQ4eHhEVitJd2F4OXU1OU1BeTVHaGtEdFVq?=
 =?utf-8?B?Rkw4aEtsa1l3K0Z4Q3NTTGZZVC9uYzdvQzczY0dVUUVVRHk1Ly9IaUZVSE1Y?=
 =?utf-8?B?cnYrYk9WekpDaFJzQTg4MlEwR3BUbTBLYXd2enMrc1Zha2hOVHp0ZzFzczRM?=
 =?utf-8?B?L3FPT09RRWsyS0NZWVNTM284M09yUDI3RFdYUzhnRUtEdkY5bHEwV29UOEdD?=
 =?utf-8?B?NXl5UGV6VG44cm9VaHpEQkdEcEpSdlRFUCtRNDZGNThaMmUyTVlWSHhNMVh6?=
 =?utf-8?B?TmJ2bXVrZFI4SCt0amZCRXZpMWI0cHZPbTRhS3RyOVVhanJQSExBTTJrRjBD?=
 =?utf-8?B?TDA3Z3FkM3FpZFlzVXVMN0VTcURBUVhtQ1VXSmRReTUvRE1PaC9YMFc1YVhZ?=
 =?utf-8?B?NEoxTlhDMmZVY1hJcitzaVI4U09DaWlWRzVjUk9qTy9ta21HamVxc0F4UVBX?=
 =?utf-8?B?bDd5b2hWR0ZkcSt0VHN4SmcyVjV6djFOa01uQ1BnWGFSb2ZLQncrWGwyQ3Na?=
 =?utf-8?B?MHRyME85UlFPQ0xBU1g4SzMvMUhSa044a3VmeEo3cjByV0QxTllRQjYzMVhH?=
 =?utf-8?B?V1YvMGErTkRKVmhqbFZtQlBiRWhMSm9VQ2dJbTNUNllSbkxFdUVYNkhndDFR?=
 =?utf-8?B?djdTMDI3MjF0UElocHBxOFBScnY4RDN5SDdWVFludmNHdzVUM3NGYXIxdGMy?=
 =?utf-8?B?Ym1kbmV2aWZpQWg0aVN1eWxSZ29zOFkzWFM3T3FKNlgycms3eXFwQmhsMmpl?=
 =?utf-8?B?cEN1NW5yTWo0MDF2cnp1TkE3MWZHNENWRURnUjUzcU5sZmZuNUhuU1NJQTRJ?=
 =?utf-8?B?MWVzZS9IMWVJQUdvVTdvN1pVamxwVXNsakkya2UyaDdFV3pwdi9uNThYL3Z0?=
 =?utf-8?B?ZWdvU2lBNzl5dysreWtabERnOTR5d0wyQ0NCN1hweWZjdWlSZFFCR1BjeGNi?=
 =?utf-8?B?RWJIdUlVZ1pZY3YxTXQvNmY2empYSVFnSHFyVlNFQkltYlVpMWkzZGUwVmtG?=
 =?utf-8?Q?IF3N+ACPmQA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGRJNmdvMnVZWFVDOWJDeDhBbFFaYU4rbFV1UEQyZkRNQVY5T3F2UjVGMmpm?=
 =?utf-8?B?QlV4SDQyVE9JRGtrN0F4eVRHMjhURSsyT2daRGFpSXJKOENJNUhKdmRUV1BS?=
 =?utf-8?B?VzZ3QU8ycGVVMlFvV0thVE1CczcyZzI4bjVkanRpbGhrZ3NNY3JWNXZuYlpP?=
 =?utf-8?B?TWFWYkRPclltWGxSRXhVNnJUUXJRdjFuSUxMRVZLaDJ6TlNMM3Jmc0lPdHJu?=
 =?utf-8?B?MHcxMkNIamR3alVnb0FtWTRzMlZ4WjB3NmtwSFZaM1c0V0xIblhmd0Q3c29l?=
 =?utf-8?B?ZkFVeW9OeEU0bTFTRGYxdHVKM1VVTTlzZWVjMlpwbnpoeTA4ODlLanNpOE9H?=
 =?utf-8?B?RzFVdjNsNnZLekJoNkpTd0dQbktLRzVyWkhmbTNvNW5tTSsyOElrZFhKTGNS?=
 =?utf-8?B?eUZTVWdEOXVNRkxDbG9ydm4zeGdFVi9BRWpvZFJsNHpZNC9zVFBqZXB5SkRk?=
 =?utf-8?B?SDF6SVU1OUFsSkhxMDZtVUlBcUZNeFFMZDRwODVqbEV5cG9vTEdtdzlnVUIr?=
 =?utf-8?B?c2ZyZ2lXUlY5THdrMjU0Z1BCQURJeDJjWGs4QmxkdUlxSnBISFBKbkp5R015?=
 =?utf-8?B?M3JyVjNlbW5Xa21IQnkxcG44VVl4SU1mRHJqSmNZQnFaN3dqOEhvdGl1WlRo?=
 =?utf-8?B?cW5LR3lkVitYUHhzZ1l0bEtPSWdZaDRiQ3VIaFZ1S0JIRFpnejlZU2RWeW01?=
 =?utf-8?B?cmFKcEJnb2JmSkV4STFIMHc0OWhpRmFWcDdnSEVOc1VSa2VqQ0I4OExWUWtH?=
 =?utf-8?B?T1lqMnIwZlJhOFQ0bitDZVJCVEF4MURxa2J1SDFuWFFjSThTcUYrbUJDa1dX?=
 =?utf-8?B?SnkycHh1VU04NzdlWXA1OFJ0SmJBYWtkYndaeEpNYUplSzdkMXA0Wlh2Qmh3?=
 =?utf-8?B?M1VGamFNUy9HYVFUK0VzdmorS1dwbXRieEpTdzFpY0I3dS9NY0VCdk54Z3pV?=
 =?utf-8?B?c2tMVDl1bUNsekZ0YzJlNngrMmE1RkxwbGVrRUh0R25sbTFEaXNXeU95cSty?=
 =?utf-8?B?bmErMTI2VlMvb2UvNWJrSkQ0am9sK1FDbGFSbnNDTXIzWVlVcGlNUjFuRG96?=
 =?utf-8?B?L2FmRlpLYzZQeCs0RFFZT3M2ejNndjljZDkwKzRtc0oza29RSjBxMTROTU1t?=
 =?utf-8?B?V0dxeW1YWUwwN1ZrVmlHckw5KzR2SytuOXd5YVpaLzdVcmFxTkprZWdmQ0ow?=
 =?utf-8?B?Q2I1alFMeVNZS1JnTnVIS0QzcWtKeWRqZG1GcTllenhmT1IzbFkzbHRITkwz?=
 =?utf-8?B?WUdiRUtvdGtsaDVCYUFHOERJeXhmZytLaEFDUUhYVWJ1STZxbVVFc2xQWTg1?=
 =?utf-8?B?aGJZRFByVGhzUDBjTlhzenpBU0ZnTUJPS3lKcVRnSTFqUEg5NlE5TUhxRVlp?=
 =?utf-8?B?eDFnd01VVCs1bFZFenFTNzgySm9JOHk0UkNObUcrcGxxZTk4aTBDMTBQcUJ4?=
 =?utf-8?B?c0l6MVBxVXdXYnNXcW9laGswa0FDT3ZFalVzMmlnVHpHQVNBSUZYWVVxVzJm?=
 =?utf-8?B?R1BQbjF1V0ZBTlVQdWRTVHNLcjZHQnhVMzBYRzMwK3VLRVpCbkZEb1JLNFA5?=
 =?utf-8?B?MTg3YUtEcittWE9VcnVUQnNDTmhPaDFQbFRpWkVObU4yTHhlcDgrU2RmdENJ?=
 =?utf-8?B?WUFqemptQWRCMVZZRlNGYzZBSy9NLzlWSmY0SmJ3Y1hGbGpkUGlmdFVydmZn?=
 =?utf-8?B?c1p0WkhjeTRyUEJnWEVlNGlSWTNxMDNXNDR2UThybXA4NFVjb1R3L3JyREd5?=
 =?utf-8?B?NnhxeHEyTjhHRmZtY0hEc1k1TWtpN0tNb3hHY3Zhd1d3MDlRc0U0M3lIWTBj?=
 =?utf-8?B?TDRhSnZjVzVBeHpJS0t1dnBQQ3poSm1OT28wZUxMalVDb2JMenNEVzcrWmJ0?=
 =?utf-8?B?YkhqYXdSbkhmbjVqM0R2TitxdEh1KzE2RjJ2eXhWRVhrNkorVUZWeFphc1RN?=
 =?utf-8?B?eUVGcjlBdnBGT3NRQjJNKzlTaWVqWVlCbmZuV2kzcHRYcWlLTXYzNUNzaWpW?=
 =?utf-8?B?T3JvbEllcEhKTzN5SVZUUmlKUDl1MSsxN1ZuaHYrWlh2TlVsRGNLcFp4Rjhm?=
 =?utf-8?B?c1hWSHgybURLQm1LbkFBYUhxSVc1RHB6b0FrY0xmQTdPUFV5SzM4NVFqS2tq?=
 =?utf-8?B?WGJrL2N0QWNXMk5wUDRqTGF3dHdZaXY1aTRBQi8zNTFwV3U3VXdHOTZuK2NI?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02104720-0bc2-4157-5709-08ddefa01520
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 12:54:58.6508 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lhTJUGtXKIe5oc1CywJ1AaqDg/3Ma46/5M58IykAfI1Bff0KjqG5Rb1ykx2LQD1FmKGRC1jRdBgwyG5bbx2RIg2IOiqT32vBBeMKXLQ8h2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6333
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

v2 (Jani Nikula):
 * Remove i915 patches from drm series.
 * Split the last patch into 3 separate changes.

Krzysztof Karas (5):
  drm: Avoid suspicious operations in drm_fb_dma_get_gem_addr()
  drm: Do not attempt to round_up() zeros in drm_suballoc_try_alloc()
  drm: Avoid undefined behavior on u16 multiplication in 
    drm_vram_helper_mode_valid_internal()
  drm: Avoid undefined behavior on u16 multiplication  in
    mipi_dbi_dev_init()
  drm: Avoid undefined behavior on u16 multiplication in 
    drm_crtc_vblank_helper_get_vblank_timestamp_internal()

 drivers/gpu/drm/drm_fb_dma_helper.c   | 7 +++++--
 drivers/gpu/drm/drm_gem_vram_helper.c | 2 +-
 drivers/gpu/drm/drm_mipi_dbi.c        | 2 +-
 drivers/gpu/drm/drm_suballoc.c        | 6 ++++--
 drivers/gpu/drm/drm_vblank.c          | 2 +-
 5 files changed, 12 insertions(+), 7 deletions(-)

-- 
2.34.1


-- 
Best Regards,
Krzysztof
