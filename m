Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB90B3FCD7
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 12:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6012A10E65E;
	Tue,  2 Sep 2025 10:40:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B2GfLelA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1615610E658;
 Tue,  2 Sep 2025 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756809633; x=1788345633;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2YFwVWw5F1eNAg3dPsN+fEgmjy1DPMKmCfQobJrKFEM=;
 b=B2GfLelA9AsvAi8PLCzpy/hlGHaGb/GevlwDc0CGVgKa27RuoDlpzsvF
 sVOTSrxTn5cqSTSR+q+xIjA6x0eO1IxpNTnCcjx4fg9YUmuAEMmezyLwo
 3dl8HW1byUdNygvj9lnKbxCr8kFYrpVGRQgnInZTkAFhwyCxksk9nyPN3
 5Ahp4WItQP40ZOUW9cFwrhB9VerwtkrxVqwgINGsmS0R4dmq2dXForQwv
 C/KoMLCs9W9tXX2EXHXf8NDOTszmR4d17fQku/+rVXIZIAIRHkQMcNfpz
 Lv3wAAblrTUxnLM+Atx2JCvTD0wJwa7m8Z6Am7ncFwVWbjVjE3OtxdNQl g==;
X-CSE-ConnectionGUID: pvXTgZf2QwWDQ1YIKXm4aw==
X-CSE-MsgGUID: zkt+Ee3FTwCTnzHFBuOSuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="76676564"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="76676564"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 03:40:33 -0700
X-CSE-ConnectionGUID: XrMaTOAaSFqsJSmf884gjw==
X-CSE-MsgGUID: CSjMsZ1pRxaq6BiwbXAoMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="171606902"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 03:40:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 03:40:32 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 03:40:32 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.66) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 03:40:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NV7gJpnJWJ7S5ny16KxTYWJ42+kYHlJ3KB+8LWJqKokCCkzBsRZzwhE8um0f1WcH4Y7DhSa2D4KC+DIRTBs04bQKUl+RLTKOOUuTvZLS7T7X7+HZy5BCodDe26zuoVlvjxkfNA5ImPxQP0MExX0wdJN3C1UvTGOj4XuoF+M1xiIqFT0fiwlga7DD3aMAJjEmv76SpZNn7/VII3L7H3DCL07ZmSNbyYmg3tqZrT1OOy5LVQL6sWNsYj+Wh11WPub3/ohEhbhQCAyLfd7+9gSOO3U5ajrpGaEXk9cX7/Pak6aFjDIYnRwbxnbfX5yf+LHLWqFYeEdSa4w+zBKVSZ7wBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2YFwVWw5F1eNAg3dPsN+fEgmjy1DPMKmCfQobJrKFEM=;
 b=OJs5zipj3xE03JLCrfnyaIuFMUMko2lUemC2tpzU/RG9R7hBzvHCPo0ArsUqkstYHL5Vhf5sxOCJzCvVyujzENWUr/nvR7kfHskjck0d43NnwHS8I6mB+uaoTvnkE2dmMsZi/RQkqw/B7yqBoMBt6FdpKObn4ELtfpEKyJxv3gGH0zMi4PpU9OvFM6Jp/nn5gLHvY/23E6oNoAmgSReFH2ZSRl6unuIAMoT4ZR7Wpht57hlI0DF8FhUqnpc415F50+326mi/H/a+y/rN/F/OYIFB/ZKYXuSrUvt7KeKMluYgbQ1Lg03JS0byhMMrJa+G62LfqEBTkD57h8Ux/iZE3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by MN0PR11MB6160.namprd11.prod.outlook.com
 (2603:10b6:208:3c8::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 2 Sep
 2025 10:40:28 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%8]) with mapi id 15.20.9073.026; Tue, 2 Sep 2025
 10:40:28 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Fix possible overflow on tc power
 domain selection
Thread-Topic: [PATCH] drm/i915/display: Fix possible overflow on tc power
 domain selection
Thread-Index: AQHcGM6S/d4CzAfjJEmWDozlduWvtrR/i92AgAAuTmA=
Date: Tue, 2 Sep 2025 10:40:27 +0000
Message-ID: <DS4PPF69154114F25EAFD5010C27424B9ABEF06A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250829101226.4085757-1-mika.kahola@intel.com>
 <DM3PPF208195D8DFBD7C3EABA9B738D1E29E306A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DFBD7C3EABA9B738D1E29E306A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|MN0PR11MB6160:EE_
x-ms-office365-filtering-correlation-id: bd8c33d1-e2ad-49d7-ebac-08ddea0d21f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?ZlpyekZNTERUK2hFK0J3MERac1FqZWRicUFnTWt5WmJBMDBhWVNRbWtkWFRW?=
 =?utf-8?B?d2ZybmkxQ3poa0NGUlRCVkdLNy9wdWhIcDNwOTdVUUVtSG42L3VnMjJ3THZ4?=
 =?utf-8?B?YllBSG56R0JjK0liajNJMG5KbjlseDczdGZ2T09tVWtXd1plQUd4c2lJY2FJ?=
 =?utf-8?B?ZGNBc29RcXA0QWlYQzY3eDI0Q3JCelVtQ3JZdmZYVHI2VkY4REFvRHF0Vmkv?=
 =?utf-8?B?azBmR0tuYnl2dVhXd2YyWGdKdE5RWEhjRktMUTZDbERjelRMWlNpSjUrUzcy?=
 =?utf-8?B?REtOek16ZmY3NW1hTkFjUVpMYm5ualVKK3JYTXRmems2SnpKWlFzdnlGQUJP?=
 =?utf-8?B?NXlsdDBHSWdVTVhYWnd5Q2tqTWhUWWR2OEtGYlV2ZXZHRW9GQ0s5M2JmbjNX?=
 =?utf-8?B?dDRFU0pTZHBvb2dCMHZQTHkvMWlMYVZLWVpIbURkcVhlRjNranVXOEpLSzhh?=
 =?utf-8?B?VW5SOW44Z1BEekFXbzRPVlNZYnltZjNpWHhrRWZvSXlEejE0enp3T0I3Qk1T?=
 =?utf-8?B?SE5Wa3ptbjBYbjEwck4rTjR1TzIyRExWdGVMWkVsUHVyajUwRGtPek1iM0Jx?=
 =?utf-8?B?bHhqWVVpamlOYjhGSm5kN25rUXNONU1nL3JaNmpCeTB1Y1JEbFE2T2Njc3BF?=
 =?utf-8?B?ZjlLV09KZEEyWEd5dFFrQVdBRHBMd0xIUnRUUk5Na1Mzb3BuRERtVnZxclJj?=
 =?utf-8?B?N3F4QnNRZlNSOHRmQ0YxRVBZd1NrZVJzWkFkYnZsYjY0N2o5M2xBU0w1WHM2?=
 =?utf-8?B?REFnTkNaRVFvVmFRRUNxU0tHRzBEd3c1QVFKcGJwcUhLUXl5MmsvWUpBMHFG?=
 =?utf-8?B?eWJ4dGt1bWJLN0JLdkpBaFQyaW5vOTBIdUdEdFZLSTZXakJaTHJ4MGFZZXJj?=
 =?utf-8?B?dWQ5MVF0cFI4NUNCd0lhYVFnMzZ6Y2lLYUZHV1d5SndsakNYRm42WUladllS?=
 =?utf-8?B?enkybllXWTF3N0N0Q2V6RSs1QUs0NmdadWllUHh3N2tyeUJqTmQwVHk0NllQ?=
 =?utf-8?B?dGQ1ekxYK0Y2WWZIQXlBQXJrcFZGdzBhN0wvK0JYSStGTDhRUUNsdFNZZ1BW?=
 =?utf-8?B?QnRNNFhMZ1MzQjFFZlR2NnNqeU4xTWM5NW9Cc3poNEQ0VEpTMXFoUW5RdzdD?=
 =?utf-8?B?a3dMcTFJaHYzUjNnRnd6WFQ2MWpzclB3NkJHZUhvR2FBamd5elpxUUpDbTQy?=
 =?utf-8?B?MFdRenhKNFNDZ2krcVpFSExZTDdRb3hWRlZpa3FGanUyVGV3eE1lL1RaM2l2?=
 =?utf-8?B?K1FQWlV6WS8wS0lDMVBrS2tkbi9nR0tyNWxDUHJDWlVzSmdmWUNlS0pzK2NO?=
 =?utf-8?B?andSdnBETWtKSExJQVd1QU5WMzJNeUcyNUR3a3JxVFAyZnE2U25ZUnVKaVkz?=
 =?utf-8?B?VDNxZitJUXgzcktPUS9jK1I1a3doQVlJTGY5dFRQNVJqNnR1cUdxRE82Nmdz?=
 =?utf-8?B?YjFVaGJHNEp0Ukp4ZUt4aUVVRUVpbGhBSU5nVUUrL1RVNVVlVFJRU1U2a2Jx?=
 =?utf-8?B?c09MblE4bEkrYjFIc3MrdnREUTlqL1F2QnJwRHZTRzk3OHpzNDAyQUhweWF5?=
 =?utf-8?B?NEpEblZkanVMTnl1dUgycmxpMnFwdllacmFQc3JOaG56M3k1SXgvSVo5eWZZ?=
 =?utf-8?B?c0l1SUNTbG4yRFBtbUJUZlBlMDhYeUwva29UcXlLakVDNlBOQWVJMGZsOGlD?=
 =?utf-8?B?WnZ3TjU5SFNNMFBMK0s0dTgzMDI1UEZIbnFoN2NvVUt6NC9TeFpycmNTY0tz?=
 =?utf-8?B?MHBDRE0wMVU4ek9XRitCT3VkRWQ5d3ZjbkVKeTFMNlUxWXhYVXBUaUM0a0Nt?=
 =?utf-8?B?c3Myc09SK0ZkZW43WWtPQ04wcTRHWE9KZTRObTNoT2g2N0thZkFRa2dNUnNZ?=
 =?utf-8?B?dHBUTGhad1hWcVJpN3QyOTJvOGhaME9OS0pGM2tOaVV4clJWZ2xWVno4TXFa?=
 =?utf-8?B?UElyL1BGTDRHMWkwUW1sTHVUV0svSHBERjdvazNaeHEwbURBUVlpalc0S1pE?=
 =?utf-8?Q?Wwab+ce5wXQTJXUll8r7R34fAhvu8o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bE1Dd0tzTC9tVTNtOWczVUxuNlorWDJrbllPREdXc25HYVdNdE5jRC9LaTJ1?=
 =?utf-8?B?dHd4TlBTc05YeGJEbFVQYVVMbnN5TFkzUGlMQXV4UGY5Zy90T1lpcCs4QWs0?=
 =?utf-8?B?cXRHVG1qZTE2b1pOa1dBazRIRFdpTkt0UW5qMnIvSHJ2djJKWHBBQnlaNWg4?=
 =?utf-8?B?VnJ2Wk9wTFdYMmZBQjdVeTNFUXZxbjREaERoandBQWNLd2NaZHh3UCtnUDkr?=
 =?utf-8?B?dGJsZUlSSVpISTRhVmdpQzNWeWovNTVZNG9rMjMvOWZ6Q1NZQWdxN0xUa3Zl?=
 =?utf-8?B?enBteThzaEUwWm1MQ0RLODhhTGtVSnpsUVNaeTcrbHFwNjVnd04zNjk3Y29F?=
 =?utf-8?B?SjZJMWdNamphd0lndy9QSVI1NUtLV1FwNFl2WVpjVHhEMmFzOXdybllGekpB?=
 =?utf-8?B?U1N2UG92ZFlrR003dTNXbjhWcDVrTW5nQnZ2cW41QlF4ajdKNHd5aXZlZkRF?=
 =?utf-8?B?ZFBXTE9jTzhGSSs3Rndac1FESmVpZVVYdXUwQWkxMjQ3YUVlUi9XL1dPdkMz?=
 =?utf-8?B?MWxlNExGN1lOS2h3TnM5T2FRUVZyalYzeGtQM2YyaE9QYjFXQUVSVmErZWNE?=
 =?utf-8?B?S3hNNTY2aWNrY3ZicGltMGNSVVgxSzdUdUtBVUoycnVzWWZScnNqVmh3ZWtB?=
 =?utf-8?B?NWwzQUs4Tm1LVVhQUWRBZCtIcE5vL29sbjVROUx0VDE3eFNYQ2N3NERnU0hp?=
 =?utf-8?B?WlMzMkZkZ1ZmcmdtR3BkZ251a0pRWk1vNEJvOXdaU0t6NlpuTVVuZVRvTFNW?=
 =?utf-8?B?T3M4NHdPaW1mYUtGWW5aRk95R1Z2bFEzd3BLOGI1THdnTXlHK2U0RXJFTk1M?=
 =?utf-8?B?MkJpa1Z3VElWdEVMamxYZCtGK1RvaDN1eE1Bc2d3ZWJNS0Z3azdOb3BrVG9a?=
 =?utf-8?B?WFQ3TGVRN0xKVmtnS2oza2hhWUl0U0RDRlAwYm9YK2pPcTJuMTcwdEUvSSt3?=
 =?utf-8?B?STJkeDZXMXorWmt5eTdhcStHNnE1Y29vcFVMZFh4KytlMHBMNEJJOGNCU3Fy?=
 =?utf-8?B?ZndkaEpTNkhISCtZTXkwKzFIWlFmY3Y0TGh2L2lic2RReG1ZbXMyM3J5S29t?=
 =?utf-8?B?bUFMSFY1aFZrR0dLdGdRMFI5dmNISjFkMnkzdW9EVEdkNUlQaDlVSzVuU08x?=
 =?utf-8?B?dTFpdmdVd2kzMTA2SUZHQ2lpSEYwb1VLSHNQa0tva2VDS2pUM2pYa0dGZVk4?=
 =?utf-8?B?VFBXYVJNQU1yaHdvcUN5Uk5LZS9BbURpMUF3Z1VpclQvZExsR3RFTXJ4ckYw?=
 =?utf-8?B?dXVxYUF1aUtiOHBySGpuaDFTSU1nS3NIOFNJaHNBbWNnUlg2UnBJTjNLRU1L?=
 =?utf-8?B?a0JqcmNSTTkvci9zb1Y4c01WWmFWVmNTVFd3akhhd2cwZGpFaGtOSm42ZDY1?=
 =?utf-8?B?MmpOM3NSWkFYc3plRUt6bThJSkc0bUYydDVoeXpJdG56YUVkQzhJdlJ3YXMy?=
 =?utf-8?B?bzhWS0R0dzlDQjRPZmxqY1R2dDhLLytWNUVJUzQ2YjN5aEgyV3NmelVEYjFN?=
 =?utf-8?B?ckx3SndteTg0a2R3b2RXeldXZmFRZWJFaW14eFhEOEo5TUlHV3J2ZGcrRExq?=
 =?utf-8?B?R3VucGJtQUFvWVJMZ1Y5NUVBUUdmNGRJUHdweEVRVFhndnlHS3NVZ0hKSWtZ?=
 =?utf-8?B?MXNYQmUyeElpaXVWMUtFYmROMnpqbVRJZkdZbzFvTnRQM1djMVQ1MzRYYlBB?=
 =?utf-8?B?b1EybSs5dEUrak5sb0xnQUxiU3plTThza1I0MkRLS0U5Vm1CTnpCTlFEMUU0?=
 =?utf-8?B?ckpOSVloWWFZRm9KQTZBbFk0L1dUQVc1Q1dYUVQvS216OUQyYXVSNUlneVkx?=
 =?utf-8?B?d2VJYkNXNmJQSTlDR283bTMvN2dkblhobUY1bzVtL2Z1MDJUQ2F6ck4vbXEv?=
 =?utf-8?B?NHNvZXg0dG9ST2ZyL0tQdFR3aVlybktEQzZSWEJsQkFvclRSMlY1eFF2VDdE?=
 =?utf-8?B?Q0VXdWJjYlVISEw2SjVxUG4vSFVyOXNjc3JSem01UHlJMTc3VVVEUndGcStm?=
 =?utf-8?B?R205WVNoajgzRHNPbnp1U0RMSFJVUFI5WU83ajFKUkNzb2V4R1U4MG9xTm9N?=
 =?utf-8?B?ZHo3U3pna2F6Q2lwNXBZV0ZWbVhCdlI1TitRbHorakYxZjNuRjZKSkdoaTd3?=
 =?utf-8?Q?+T+548lHHHg0TCJu8/zjqUE+L?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd8c33d1-e2ad-49d7-ebac-08ddea0d21f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2025 10:40:28.1181 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kwwwmVW33z15Y3ZEGwkp+5O5NQd/0/SHlzCpGRe/sLwSgVqGiPLSmQGAwg10ArMT3nJMWtyDvT7MI5UCQjXRZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6160
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIDIgU2VwdGVtYmVyIDIwMjUg
MTAuNTQNCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gU3ViamVjdDog
UkU6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogRml4IHBvc3NpYmxlIG92ZXJmbG93IG9uIHRj
IHBvd2VyIGRvbWFpbiBzZWxlY3Rpb24NCj4gDQo+ID4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkx
NS9kaXNwbGF5OiBGaXggcG9zc2libGUgb3ZlcmZsb3cgb24gdGMgcG93ZXINCj4gPiBkb21haW4g
c2VsZWN0aW9uDQo+IA0KPiBNYXliZSBkcm0vaTkxNS90YyBzaW5jZSBpdCdzIGlzb2xhdGVkIHRv
IHRjIGZpbGUNCj4gDQo+ID4NCj4gPiBUaGVyZSBpcyBhIHBvc3NpYmlsaXR5IHRoYXQgaW50ZWxf
ZW5jb2Rlcl90b190YygpIGZ1bmN0aW9ucyByZXR1cm5zIG5lZ2F0aXZlIGkuZS4NCj4gDQo+IFR5
cG8gc2hvdWxkIGJlIGp1c3QgKmZ1bmN0aW9uDQoNClJpZ2h0LCBJIHdpbGwgZml4IHRoYXQuIFRo
YW5rcyBmb3IgdGhlIHJldmlldyENCg0KPiANCj4gT3RoZXIgd2lzZSBMR1RNLA0KPiBSZXZpZXdl
ZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IA0KPiA+IFRD
X1BPUlRfTk9ORSAoLTEpIHZhbHVlIHdoaWNoIG1heSBjYXVzZQ0KPiA+IHRjX3BvcnRfcG93ZXJf
ZG9tYWluKCkgZnVuY3Rpb24gdG8gb3ZlcmZsb3cuIFRvIGZpeCB0aGlzLCBsZXQncyBhZGQNCj4g
PiBhZGRpdGlvbmFsIGNoZWNrIHRoYXQgcmV0dXJucyBpbnZhbGlkIHBvd2VyIGRvbWFpbiBpLmUu
DQo+ID4gUE9XRVJfRE9NQUlOX0lOVkFMSUQgaW4gY2FzZSB0YyBwb3J0IGVxdWFscyBUQ19QT1JU
X05PTkUuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3RjLmMgfCAzICsrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+
ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiBp
bmRleCA1ODNmZWQ1YTM4NmQuLjIzNzQ1ZmM5OWQzNSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiBAQCAtMjQ5LDYgKzI0OSw5IEBAIHRjX3Bv
cnRfcG93ZXJfZG9tYWluKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YykgIHsNCj4gPiAgCWVudW0g
dGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxfZW5jb2Rlcl90b190YygmdGMtPmRpZ19wb3J0LT5iYXNl
KTsNCj4gPg0KPiA+ICsJaWYgKHRjX3BvcnQgPT0gVENfUE9SVF9OT05FKQ0KPiA+ICsJCXJldHVy
biBQT1dFUl9ET01BSU5fSU5WQUxJRDsNCj4gPiArDQo+ID4gIAlyZXR1cm4gUE9XRVJfRE9NQUlO
X1BPUlRfRERJX0xBTkVTX1RDMSArIHRjX3BvcnQgLSBUQ19QT1JUXzE7ICB9DQo+ID4NCj4gPiAt
LQ0KPiA+IDIuMzQuMQ0KDQo=
