Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6269AF7388
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 14:16:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C720C10E81F;
	Thu,  3 Jul 2025 12:16:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ln+7Fd4D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6692310E81C;
 Thu,  3 Jul 2025 12:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751544997; x=1783080997;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=m3z6OdPGKDEF3YebPdqyfnfIMMapkbeFV8+h5vM6Iz4=;
 b=ln+7Fd4DrTokPzG/sbn1lqxVScx9sCPo8dxsOiYCXFgL6U8DpKhsaeGc
 xmXww5SEO8I2dBySLZtJhHUKoCWv+XcQHRRLiuQANDL2qA1N+UnnH2sdS
 IaF3ewnfrL6w0VEds5C7guIK1sNvpgXzz0h0uW9zxkeSK9wHNy3quGd6D
 CaEumW0291WMgXzsOdvECl8woXG7PWtqUJiTAeUg2hYmoD9A9PHbF0I2F
 GA2puS1taThHPpQPrfN0Lg4RBAna2P8gUf6P/SogU3yvsUPdXR3ZZfywI
 GBTFST+HUdRIRfPauRaH2PRrkPPSXWoRDmgp2nRAB1T/8tGyrtPXgKz9e g==;
X-CSE-ConnectionGUID: i2NJv9t3THGsw/eeksMojw==
X-CSE-MsgGUID: JEkhDEuARy2CPacCILbFjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="53095168"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="53095168"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 05:16:37 -0700
X-CSE-ConnectionGUID: 9bqxeI1aStm4ZuTFIU9wLQ==
X-CSE-MsgGUID: K2zAmc3eTV+JFdtJbPHcgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="158399455"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 05:16:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 05:16:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 05:16:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.67) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 05:16:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UjbXRLcZ36uW1X+wln1B8VPMnmFsjyTgxWZqpYjFf+E05KxXRmk527ucQaLTORmJUjCMlaMD+EdVW4a/e4+81lHNB+KimW4NH3IseEoSQnoHumiS1RDrLvq4wGNgL0+LOomxVplL+JdQwnmgIznulXulrr1zNP7KEWXQiv/UbZwVKeM25RPBYlUm1Xmz+zZ04Sdaxq7g1v6gb8y3c4g7fihlhzvdvo3NYJIV/NyQvahgcLiOTf1JSO5E2dDk/1Zz3O2bYLi+RTpwfMiEjGc3dLODw0voX8tvPNTzSGZ4Aer4LINsJlLUEqAsTpZG56NYD4G2r3n0aftfDB4FrMmNog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ucBNOgQW8cUQ9vMfZyb8FM+M0OSWmoCBemgHSy/vd7I=;
 b=JUvkUzqn3Zcov9QkQFORpNsxO6Wdn34AmX/326Yt35bLCi7n9lpbvBNWpkwXlTt2CrLsxwmBQ51MkqlU0Ot7yzKayxl2zOoKO6Liwb0xtUUEw2alaS4+K7oNPTJRAcPscdHk54PKh0S6sun1qFpPZdSbTgySbEqv7iPcXx9+F+ktrecWFs/GLhhhGy2H/QXG3xGlvbZozZvq25/rbtCIRPCt9b+rK/Io75Snj3oYsz1Lrg/HQQPlAh/xvEGr2aFlhsy/A6U2DAopnfsdA8wNHdLoBs+W53FKH68kOW7+0WNyrs+0pWwRvZrxFAYLwyARJWYpkCcyv0ThrMqFSwx8/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7945.namprd11.prod.outlook.com (2603:10b6:930:7b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Thu, 3 Jul
 2025 12:16:32 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Thu, 3 Jul 2025
 12:16:32 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <a1e8b331-eddd-4386-8647-f6364f7744b3@intel.com>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-3-ankit.k.nautiyal@intel.com>
 <175146190758.3748.7583185864302070157@intel.com>
 <a1e8b331-eddd-4386-8647-f6364f7744b3@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/gmbus: Add Wa_16025573575 for PTL for
 bit-bashing
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 3 Jul 2025 09:16:28 -0300
Message-ID: <175154498806.3748.7979864637600744446@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0324.namprd04.prod.outlook.com
 (2603:10b6:303:82::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7945:EE_
X-MS-Office365-Filtering-Correlation-Id: a2bec9d1-cbd9-4e39-931f-08ddba2b721b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MDRMQ0hlMktVN1FzQWlXcUZhN0xRb0xNbDJpUGo3TENNczcrQm90dlMyNFM0?=
 =?utf-8?B?cTA2dVF4UWMxQUlOckdpNndnL2xwY3Jsd3gvUXBQbGZuTmw3aFp5WWF4N0xh?=
 =?utf-8?B?MEtBc0RsbFo2bGhCN2xqSHpmc0ZESVdYVXl1ZG9SclRLT3NkejdHOStGZUp5?=
 =?utf-8?B?a1RUZVZRNm1YaTRvaHZZMlB5czg5RGtWT0V6MHFxYzVIYzlGb3dZM0VwRXVJ?=
 =?utf-8?B?RjJ1a1pRTXRUMEU3Qms1a1dWSDhBbDlKbndTclVNbFFrenNuRktrUUFDRFA0?=
 =?utf-8?B?TC9lWGxsa2VsanBOdysvR1JLKzVHUkVqT3lZa3hPSVdVK0VpSjMyVmtZRGJH?=
 =?utf-8?B?VTFzeUZMcXJVUDBYTVg2TXBxekhRSWZablRoSW9rZ1JiUUxXbFBJbCtnUGpJ?=
 =?utf-8?B?am0vSHVwMGYxaE9tb0xtQ3B6NjZ6aUhtY1RnWk55U0oyUlI4QWNyaVB5RGQ3?=
 =?utf-8?B?RUFsbi9nbmtQcnJnNHdtdUVEZUlaMG15R1BycHFLZlVqYmNZYUJMc2VTQ1lp?=
 =?utf-8?B?RmRPWHdTVmxpclJyVU5NK3k1b2lHMmtnb3hjaDJJem5QKy8xeDFSSDVtVUl0?=
 =?utf-8?B?eXZFanhXQkp5ZC9FKzBudm9VbHlPODlCRmFuTHR0TU1DTkpkaEc2ZlQ2Y2JO?=
 =?utf-8?B?dWdkOWNOZUVBWW5BMGI1V3ZDeHlCK0tiNGVNU3AyUzdETTZIL1kydFEvMVgr?=
 =?utf-8?B?Z1RsYm53aUt4MmRRRnFaQXdRbUtlMkhmMk50RGZERTVyeWY3QkJGenoxZ3Z3?=
 =?utf-8?B?VzJiSTZncXlsMHdHc2xKMUc5ZjBjNGluaWxBc1NOMDdsOVFmekVGTXBsbTdY?=
 =?utf-8?B?UUgyTk8yMEUwcmVyVHQramJ0dHAyam1oS01SREUyMElMQ2ZjMUdRalJiaVNi?=
 =?utf-8?B?akJrOURNZGMzUGlWWDFyQUM2a2VUQ3NTb21lZHFXZHNEWktEMFMzUVdEQjlN?=
 =?utf-8?B?UmFKcVJrNzdQalRxNW9POU1mUm8yT3hmWm5NV0Rrc3dMZTFTL0QxdkFlSjB1?=
 =?utf-8?B?d3hTbDhBbytxOUowVXBRdHhvWi9xQStXMUtkcit1SDZLNmdtclNtcDdXUlhs?=
 =?utf-8?B?d3dmc256MzE3eXJnanFERHFOVkxrVlRadzEyUVhnNHlqV0U0V3VoeGVxT2JQ?=
 =?utf-8?B?bFY3Z1M5Mk56dVlHZVA4MnVKRVhGdEYyWjBwUzREYitYbGlYcVF6T0sxMERI?=
 =?utf-8?B?VG5iR205YUVEZ2ZYbnJXMkNKWEFFL3c0a2FGdmFla25nNEttZS83MlRzSU1D?=
 =?utf-8?B?UmlHVkRyTyticnRmMWNBMXJQM3pHM201S1E1RU13Tysybk5tczBXM2c0cXkw?=
 =?utf-8?B?dTlYS01SQmtiOGRsbnZzclN5Ni9XT3BESFNnNkhpWW5qKzZmZWltTHptMUtr?=
 =?utf-8?B?R2dnY1FqS1p1SlExSERKVE43a0tWMTJVYy9wU2hnKy9icVk1MjBDSzNNVGl4?=
 =?utf-8?B?bXc4eDlCOWl3S2xMWWJVbk5IR1hyc1Y1Z3N1dTZCUVA4N0wvM3NUeThtaVBn?=
 =?utf-8?B?NEROVlJ1dU1BODV5NzJ1dEswcVFFSHJxRlVjeWN5alFiSlowV0ZXTDZ2OXpj?=
 =?utf-8?B?K3pLMDd5Vk5FT0NiRFFyTlhyUVF6K3RwYVJxa2l1dWtLVmVLQlpwcUFWUjBP?=
 =?utf-8?B?djM0STc2M3l6NkpzRFh5ZVkvckhrZ3FlcW5WQTdBVTB3UDE4dVY0bDRpU2cz?=
 =?utf-8?B?aDNaM3JsVTNWcEYyUzVpUk13Ry9PU0ViL2hMSjdOdXd6ME9TMnhHY2R2dVg0?=
 =?utf-8?B?d21kTnRFWmJ1M2t6WHowWkZZY01rSmQvTURLblNxVkJFTWNtcS91eXc1RWF4?=
 =?utf-8?B?QXh4cU5GQTV2UFpkRGxmZ2FpTk1aZmV6SXNpejYweEhuSjk1Ry9ZNWpLRG9a?=
 =?utf-8?B?aVIzaTNSdG9YWVJPZnRRN1d1L1B3bndXcmVMZFR3ZDVVR0E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzBRUDNQakR2Ukt4SjJkbjkwOStHd2V3UGZXZmtKRUtzeS81ekNFanNYNVBW?=
 =?utf-8?B?ZVVCUU5Eekl4UGpuRDJXZFBHcE9xRElVdHcxQ2krcEdmenZUbXEwWUsxSmx2?=
 =?utf-8?B?VzBpWnRrNGd2ZEc1UFk3SFcvTnFNZ2hYODhBRFhFejErMWh0OC9sbCtNeUY3?=
 =?utf-8?B?S0l0Vm5RVDd0Z21XZkcxd3lrN0lUYWJjek5UVHhkaFJOZGtIYlZXQitKTGlF?=
 =?utf-8?B?dTJxQmNGY09oSVZ1cGhwWDJXcXQ0S1FiakU2TVZwZm9KSjdVZjM1V0I1MG5B?=
 =?utf-8?B?cDNnMUNPREt4OFh3VW8zWWtSeCtlRWRqVllncTVJVG02ejRRZUNGcjdYQ2xv?=
 =?utf-8?B?UzBxZ3NaZmJhbWwrRXFnRzhZVnhmMElVMlhIamdqWDVmRlc3Z25kSWhMQnVE?=
 =?utf-8?B?QWFCTVN5dDBEQnJ1S3BLeURXUW5aZTBEZ3N6dDlkeXlzYWgwRDA0eTg4cmlr?=
 =?utf-8?B?S0U3MTM2ZzNlZU1YTFM2S0FnSkJhYjJkSmEvNHdlSEFvcllIaUhUeXZYSjUy?=
 =?utf-8?B?UWJCcGh0L0JCL3c4aUhCWHFRMFdtSHUyZ0dFOU80ZGJXcFhkRzJjS0RvaytX?=
 =?utf-8?B?NWJiU3U1T2NoenpYa0x6QkdPcjh2TDhieGtLa3lyUlYwZ0tKVGtURW1iTXl5?=
 =?utf-8?B?SkJ6cGpBS1lmN3k5KzBRb20vcXNhVlcwV2xkREdPaVVvdkpUT1RzUkp3Tmty?=
 =?utf-8?B?M3pkOEtwOVFvcFV6Z29vOHMyalRXc2p3UXBTK1paNytpMHgxdisrbGlGTGZz?=
 =?utf-8?B?REJwTUlmeXN5cWNEcEErQ21HTDRwWGZWRmYrd2hTVHJUUUpRU2JTeHhFUTM0?=
 =?utf-8?B?emk1aXBubXc1UTdqN3NURUdPbk5qT20xVEVrUE1iZ3R1ZzBEdUkyVk45aG9h?=
 =?utf-8?B?Tks3VkdpOThuVldrWXVIVFNLQy9RcXJVQ3pTbVdhMjhCMFV2Q0JKOU9BQVBl?=
 =?utf-8?B?OHJvUnJQR3NKTXc0OXhJdTZTWDFrbHREbE1QR2ZKOXppZDJvT3E2bTQ4YmZ3?=
 =?utf-8?B?YWhpWS9FRlRWZ3JMVTFHb3p3bm1UVC9vaXFuM0kzaVQ4QUlyK3pwY3VmYnFj?=
 =?utf-8?B?aUNZa2JYSzQrUVBYbUswMjIzcm05WXkvZUg2a1EzMjJZTUpYYzg1SlhmNHJZ?=
 =?utf-8?B?TDdXdnhmbHF2M2k5bTVQcEM3ek4zMkVvQmFpUjd3dHpURHc0WVo2L3VxM0ZF?=
 =?utf-8?B?VWJxQXdKRXdwMVVlbEYvWHZiZE5ER1JBSms3cnRENGhpQ1ZVUFladWVQNTdm?=
 =?utf-8?B?MDR1b1FWRGs4cTVKajZjTHJEelVsVTR1V2x6cWc4emh5Wk9VQ3RSU1lzREZT?=
 =?utf-8?B?TlhkL1YzZ2lmWm5iNXE4ai9iZWhqaWluMWZqZVFPZkpGK0ZKWmRhcjVRMjNk?=
 =?utf-8?B?ekE4aXdNaHpWdnFZbG16NHhWc3NYVExlWWVubEVLWE00MnpranZCZjZhckgv?=
 =?utf-8?B?S0xScWFQa3RqQnZHdGNBWHlSQUV4djA3VlBkWlFhc1ZnaTU1MTN2eDVndFhk?=
 =?utf-8?B?c1hkcmhWQi91clRGUjRiS2hMSjQ1OUtUZDQ4WlRxOHB0RExFdXRjY3pRMUw0?=
 =?utf-8?B?WnpqSHA0ZWR1dnkvZ0VBMDlUc2hvbDBSMWVQRXlvZjdIQ1ZtZk1YNVFLemNl?=
 =?utf-8?B?L091bzBxNUZGTmZpZnlna2V4a0dyNW1HT0tCVXFTVXpVMmZHVk8vWGZvcVJa?=
 =?utf-8?B?RzJ5NFp5RWxENHNXbktDOXF1Vi9QeGdZalZMdFBPVUU5MXVaSVhOTFZRczBV?=
 =?utf-8?B?cjEweEJVeVIvWE82dktkbnBSNkdlMVJwOFhjU0Q4Z0QrTVlmMGtVZWlva3ZE?=
 =?utf-8?B?ZFQxYUpMdlFaaS9FTWVDN2laRmVtK3JPL2xtM3lKL3MxbGhBSWFzbzltUHcx?=
 =?utf-8?B?V2Z1aHBMc0pnN0dyZW5vN3dXb0RsUDI0NC9ybnR0WmJSSWxjb3E3TU1DcTB3?=
 =?utf-8?B?SlFVZVVvT1hvOGZCQ2MwTWhaNjRxaGFVTzJaRm1oT0xKNXJ2MXBmczJQMlgv?=
 =?utf-8?B?bUZrM1VlQjhYdG5IY1NBclYxbnl1QW5DL0Y2VkdxWFIxbERtUmRNL2Y1QXN1?=
 =?utf-8?B?Qmw1cVYzdVF2VW13UjZlZmZsaVdZek9WUlFiNVhrbHVnWGxTc0dRb253VkVj?=
 =?utf-8?B?V2VHZUhRQ0czTFlobkxTRGNyclVoTFBxT3VVc2cwOWUxcXhYNnBsWTZubHFD?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2bec9d1-cbd9-4e39-931f-08ddba2b721b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 12:16:32.0122 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Q+yATnlxLN2g9E81GaHnDK1nxD0wMsKgUoZDiZkv7teIx4kbxiiNhFiBwiRnnWtHWMaUsgAXsduVh0KxPpOqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7945
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

Quoting Nautiyal, Ankit K (2025-07-03 03:05:54-03:00)
>
>On 7/2/2025 6:41 PM, Gustavo Sousa wrote:
>> Quoting Ankit Nautiyal (2025-07-02 05:46:19-03:00)
>>> As per Wa_16025573575 for PTL, set the GPIO masks bit before starting
>>> bit-bashing and maintain value through the bit-bashing sequence.
>>> After bit-bashing sequence is done, clear the GPIO masks bits.
>>>
>>> v2:
>>> -Use new helper for display workarounds. (Jani)
>>> -Use a separate if-block for the workaround. (Gustavo)
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>> .../gpu/drm/i915/display/intel_display_wa.c   |  7 ++++
>>> .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
>>> drivers/gpu/drm/i915/display/intel_gmbus.c    | 34 +++++++++++++++++--
>>> 3 files changed, 40 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/=
gpu/drm/i915/display/intel_display_wa.c
>>> index f5e8d58d9a68..12d1df5981f7 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>> @@ -42,11 +42,18 @@ void intel_display_wa_apply(struct intel_display *d=
isplay)
>>>                  gen11_display_wa_apply(display);
>>> }
>>>
>>> +static bool intel_display_needs_wa_16025573575(struct intel_display *d=
isplay)
>>> +{
>>> +        return DISPLAY_VER(display) =3D=3D 30;
>> We should also check for 30.02.
>
>I was thinking to add a separate patch for this, but yeah can include in=20
>this patch as well.
>
>
>>
>>> +}
>>> +
>>> bool __intel_display_wa(struct intel_display *display, enum intel_displ=
ay_wa wa)
>>> {
>>>          switch (wa) {
>>>          case INTEL_DISPLAY_WA_16023588340:
>>>                  return intel_display_needs_wa_16023588340(display);
>>> +        case INTEL_DISPLAY_WA_16025573575:
>>> +                return intel_display_needs_wa_16025573575(display);
>> While it makes sense to have function
>> intel_display_needs_wa_16023588340() (at least for now), I wonder if the
>> same could be said about intel_display_needs_wa_16025573575()...
>>
>> Maybe it would be simpler to just inline the conditions with a single
>> line here instead of adding 5 extra lines to the file.
>
>
>IMHO, it's better to keep __intel_display_wa() simple and uniform. In=20
>the future,
>
>some workarounds might involve complex conditions (such as checks for=20
>steppings,
>applicability to multiple platforms or variants)
>which could make the switch-case harder to read if inlined.
>
>Having dedicated functions like intel_display_needs_wa_xxxx() helps=20
>encapsulate that logic cleanly.
>
>Mixing inlined conditions with function calls would reduce consistency=20
>and readability.

Fair enough.

If you prefer to have a separate patch for WCL, then:

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
>
>Thanks & Regards,
>
>Ankit
>
>
>>
>> --
>> Gustavo Sousa
>>
>>>          default:
>>>                  drm_WARN(display->drm, 1, "Missing Wa number: %d\n", w=
a);
>>>                  break;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/=
gpu/drm/i915/display/intel_display_wa.h
>>> index 146ee70d66f7..d3d241992e55 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>> @@ -23,6 +23,7 @@ bool intel_display_needs_wa_16023588340(struct intel_=
display *display);
>>>
>>> enum intel_display_wa {
>>>          INTEL_DISPLAY_WA_16023588340,
>>> +        INTEL_DISPLAY_WA_16025573575,
>>> };
>>>
>>> bool __intel_display_wa(struct intel_display *display, enum intel_displ=
ay_wa wa);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/d=
rm/i915/display/intel_gmbus.c
>>> index 0d73f32fe7f1..95cab11c9cde 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>>> @@ -39,6 +39,7 @@
>>> #include "intel_de.h"
>>> #include "intel_display_regs.h"
>>> #include "intel_display_types.h"
>>> +#include "intel_display_wa.h"
>>> #include "intel_gmbus.h"
>>> #include "intel_gmbus_regs.h"
>>>
>>> @@ -241,11 +242,18 @@ static u32 get_reserved(struct intel_gmbus *bus)
>>> {
>>>          struct intel_display *display =3D bus->display;
>>>          u32 reserved =3D 0;
>>> +        u32 preserve_bits =3D 0;
>>>
>>>          /* On most chips, these bits must be preserved in software. */
>>>          if (!display->platform.i830 && !display->platform.i845g)
>>> -                reserved =3D intel_de_read_notrace(display, bus->gpio_=
reg) &
>>> -                        (GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_=
DISABLE);
>>> +                preserve_bits |=3D GPIO_DATA_PULLUP_DISABLE | GPIO_CLO=
CK_PULLUP_DISABLE;
>>> +
>>> +        /* PTL: Wa_16025573575: the masks bits need to be preserved th=
rough out */
>>> +        if (intel_display_wa(display, 16025573575))
>>> +                preserve_bits |=3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VA=
L_MASK |
>>> +                                 GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MA=
SK;
>>> +
>>> +        reserved =3D intel_de_read_notrace(display, bus->gpio_reg) & p=
reserve_bits;
>>>
>>>          return reserved;
>>> }
>>> @@ -308,6 +316,22 @@ static void set_data(void *data, int state_high)
>>>          intel_de_posting_read(display, bus->gpio_reg);
>>> }
>>>
>>> +static void
>>> +ptl_handle_mask_bits(struct intel_gmbus *bus, bool set)
>>> +{
>>> +        struct intel_display *display =3D bus->display;
>>> +        u32 reg_val =3D intel_de_read_notrace(display, bus->gpio_reg);
>>> +        u32 mask_bits =3D GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
>>> +                        GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>>> +        if (set)
>>> +                reg_val |=3D mask_bits;
>>> +        else
>>> +                reg_val &=3D ~mask_bits;
>>> +
>>> +        intel_de_write_notrace(display, bus->gpio_reg, reg_val);
>>> +        intel_de_posting_read(display, bus->gpio_reg);
>>> +}
>>> +
>>> static int
>>> intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>>> {
>>> @@ -319,6 +343,9 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>>>          if (display->platform.pineview)
>>>                  pnv_gmbus_clock_gating(display, false);
>>>
>>> +        if (intel_display_wa(display, 16025573575))
>>> +                ptl_handle_mask_bits(bus, true);
>>> +
>>>          set_data(bus, 1);
>>>          set_clock(bus, 1);
>>>          udelay(I2C_RISEFALL_TIME);
>>> @@ -336,6 +363,9 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
>>>
>>>          if (display->platform.pineview)
>>>                  pnv_gmbus_clock_gating(display, true);
>>> +
>>> +        if (intel_display_wa(display, 16025573575))
>>> +                ptl_handle_mask_bits(bus, false);
>>> }
>>>
>>> static void
>>> --=20
>>> 2.45.2
>>>
