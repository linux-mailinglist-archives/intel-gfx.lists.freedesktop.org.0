Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 534EAA68C28
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 12:54:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 515A610E30C;
	Wed, 19 Mar 2025 11:54:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SAsUx9Xz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6D4310E30C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Mar 2025 11:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742385242; x=1773921242;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=+G5gg45F4ZkkHUJ+Ki76LlGHdL7NhoL6tbmL+M6XhTo=;
 b=SAsUx9XzDVv5QMedbaGpMTu/HTPQpWxvWrMr5x3opl1nyATeaaQWutLo
 4+b/fDsF9Y8Vy1MbmdOEkXfsONVK2zImNXkPoEqVLvSHjzPOMrIbsjLwR
 LqnHxjnChBdv3xzWmt+GeMVmTyiLDc4TIW3p5YTISUOf7wMBr49Ns9z4e
 grDzO6PHMxfo+FhZTE7XJHhH3A8mgr6U9ozPcK3w+5u6DLyVXBGZDn865
 bheJZO19nfBbpC11F6s2YlJt3K1gdHbwnnUlgG8+sjUZbsAHiybTGmZjN
 Pdv/m2sjlq3mKHgi7HDLOZq3ecdqRG5FNlQHOsPDXVAfZ4NoqgZEP0Fpn w==;
X-CSE-ConnectionGUID: 8kumYEeGRTWalDtqwOJwYQ==
X-CSE-MsgGUID: HluATEnESj67zsVgudp6YA==
X-IronPort-AV: E=McAfee;i="6700,10204,11377"; a="43739635"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="43739635"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 04:54:01 -0700
X-CSE-ConnectionGUID: Aa3eI0EkQTqj9PJRKtPr5w==
X-CSE-MsgGUID: MsgtoM1lQaWUTQVmGY2VlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="122318482"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2025 04:54:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 19 Mar 2025 04:54:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Mar 2025 04:54:01 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Mar 2025 04:54:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oqICgjvh7ePjnA+fpPEfQeNN47nivVkELOBxGooaIN6Vy+LbVuZycGA1iegyAH7n/vvEyDsBJPUvO+sIcfIskDUFJ6UcMrWBa1QmdMkWp85CoTQA8A042kN2mszslVzYKU0Oh77miSHxxS2a0PFbY24JXR4pcWYoqzFOldB9mqoELzuuNR7u2v4+TelkUa2kYSXUa2eBEeoATQw7qFD/eLDF9iQnp5NkIbJYQSaAf1tFAgcjA9zIpFw9vOaGl4DJtwgbDzKNtaZW4CBdOBg1F3dNHYMAJV/rFKFvhd9m42dMERnmzYUYUVatLqwREcGWd/ATNkAnPxm+JIIbcEdKiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LwYp2HK2jL42oVe7mJVcdtxPmxtzRgRcmcpsK69/F68=;
 b=j6lcTDdNsb+BqbTe42UoJdJGqKdodrJqSKg71Dd6aLXb5kASRFNHIxSdbBWsDQpATDl+MfUsD+sakRzVehQm2ge0fnO3f2nvHAlaiUJ7itIOtQVSuo414dDNx7Z+BE/nveqIcbBCplH59xmIauloyE/l1w/Ddb3EZE617I88cVZFjakpIxlTRJ+Hw+5c65iCbq37zh2GpIe9+3MfFLKKLQ0tjvEnRmyioBbSOlBjCKF9psiKAyeM2Typr8GxYmjWJFK2tx64VuzuWds3cf4jf3r0FA0UOdijX83/7onWamk4OMyPauWrLyBU8sHa2O9Hc4VC+UKWal49Am5W37Wqtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by PH7PR11MB7607.namprd11.prod.outlook.com (2603:10b6:510:279::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Wed, 19 Mar
 2025 11:53:32 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%4]) with mapi id 15.20.8534.034; Wed, 19 Mar 2025
 11:53:32 +0000
Date: Wed, 19 Mar 2025 11:53:26 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <chris.p.wilson@intel.com>, <andi.shyti@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: [PATCH] i915/gt: Move context wa to appropriate *_ctx_workarounds_init
Message-ID: <a3oztkscewrfopetalmu65jaouxhxdmiu2fqi4pdbysxyg22kb@iqgeqy7zohvr>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: ZR0P278CA0094.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:23::9) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|PH7PR11MB7607:EE_
X-MS-Office365-Filtering-Correlation-Id: 9971cfee-68bf-4a08-679a-08dd66dcabda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUplMEdPeC9BNHZadklOaUxIRFlSNjJLNUtVaWZKVEhJc3gzY2oxUURIZjZF?=
 =?utf-8?B?R2RtS3l0bkJQb0ZXWmtCY0hMdm52enhPYTRPVFRPbU1iYUZkQmRzT042bklG?=
 =?utf-8?B?WDlNMUpXRkVDSG1QRnVKY3FwNURjS1dkenpwS0ZxdXdFVDRYUG85OXBzWmhw?=
 =?utf-8?B?Ykd0NUpoMkl2aHc5Q3dodG9xUmtiTklnckFETVhpSDNSL1hNeTRic1BaZUVn?=
 =?utf-8?B?SXl5cHBDdmc4Zlk5b29FMmprSmFHVlIyYkhMTllrNHE4eDBOQlhsZWgxZUdp?=
 =?utf-8?B?VDBkbjdHcmZoVmc0YkJFalN5TCtKWHhUZ3RZK05YSlpRbVBCeWVvbW05S0Yw?=
 =?utf-8?B?QkZaUFp6ekc5RzcxNEExcUlTQVJiM0M0VkMxQzk2ZGJWL1FLc3FtdWpPejlB?=
 =?utf-8?B?aVBIa3VGMHVtUTYrK0hnZ21OUnEyWlVxV05GakRIZG9CRFEyZ1NzUlUyRVVT?=
 =?utf-8?B?OHZZa1BlQkUvenRVY0FuNFh4WEkyVmJ4YWZEVzlodXdTdWFPNTFFRDNlNmJC?=
 =?utf-8?B?MzNaYldZYUR6eXF5d09oSGtZNzdwQlg1VCt6TW54MC96cGZxODBxZC9oaXU0?=
 =?utf-8?B?RHlIVUtUMlkzb1huNXhlNjhhVFIwQVJteG44OWptbmNVNWxwMHlOWFF4a3Bn?=
 =?utf-8?B?UFAwL1JDUTJ5cjB0blpDclpxWitQbVBSYzlLelRMNitJU1dJWEx6TjRwWXd0?=
 =?utf-8?B?dzdKbGlzbUlHS2YwMXZVdk1JNFFZZE1Na1JpZUI0VXJkU3JXUjFtMnlKeTNy?=
 =?utf-8?B?Z1VjQkR4ZmFoNk5OanpVUFF2eitrY1hyUW5sSnlsQTFVUWZYU21oWnM0alY0?=
 =?utf-8?B?NGZJTTY3YlUzSy8rNCtPd2lXc0RRMnNpcDdMRWVwRVBUM0U1cUU2aHZFRTNR?=
 =?utf-8?B?NG91TTEyQStYUXlKalRuZVVoWDBaQ3V6NnFHdUIzaTQ4RFRBdlhXcjRyT2Zu?=
 =?utf-8?B?QjF3dHFVTFY0YjdlZ0RqZmU4RldaSnJUREVoY1h1NCszaHhLbDNvV0p5ZzVn?=
 =?utf-8?B?cElJL2tWNGF1UWhJazdrY0l0bHNiTEhjSm5FTHF4Tk5Rb0FYOXZkb1Z5eXNr?=
 =?utf-8?B?djRWTnRQUzJ5UGJsZENaZlp1dHhtNGZKUzk2ZEJ0RFU5dmNEQXA4cC9MdkFV?=
 =?utf-8?B?MEtNZFdGbG1lU0ZqbnRDM3IwczMxeUc0ajVud1BRTVdMTnc4U3RtNFNtaXJl?=
 =?utf-8?B?Y1QzWDhSWWgvQkVLTmNpSXBpQkVhR0NFbWptRUtTOFMzMVlTM2NhTWVBR0NU?=
 =?utf-8?B?ZGk4eWt1T3BDa0NWZmlnVXNtTjR2dXVTYUl4SWNqVCt3TGl4YVhNdW5ZRmd4?=
 =?utf-8?B?WCtHTW41b21PL2gzWU0rQ2hoWlN2eVJWMHJWUlIxRjZZdDVMVndUY2Z1d1Rw?=
 =?utf-8?B?bmN4cmxYT3JaUGVWeitEd3lDQUF1NnlBNGFnbFdFKzJQbGgzVFhIbXg1YlF2?=
 =?utf-8?B?NmpiV1dtNWtxRkhPd3U3UkZzc21lODdNUWphWU95MHNOYmtzOXdna1lOUlRS?=
 =?utf-8?B?RmQ1WXBTNUxyampJM3dEay9ZZEJhUDBYVzdMT1RnSjZ1UXVkMGh2bGF5aEFX?=
 =?utf-8?B?cDBoR3NVRkVYS0x0bnNFL3pFaUFEd25MR3B3eU9JdEhTMUUxNW9MU1E4ZlFG?=
 =?utf-8?B?S2tFTU1YTXNPTytmVk5kTDdzMjNKd3pkVmZFcFBheXUvNUNneTNOZEJDdnAy?=
 =?utf-8?B?MG1vaDh0eXpiSHI1MjJGdnpsU3NyeHZIeGk2S1cwS1FieVBEUmhSTEI1Z1BJ?=
 =?utf-8?B?emVCWDJZa3VlTDd4Z1dtc1VTTWNSc0JTMHYrUHNoUS9TUGRvaWlOcEg4aEFu?=
 =?utf-8?B?RWQ1SVRpeWxFRmpydWtjU0ZzOG5OeTRDRHA2blVVWjQxMHR6WUZ6NDBFVHpx?=
 =?utf-8?Q?QJ2FivnaIqk5J?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWJ1RUV6MmVBck95SnJTaXBjajdUZFJodWxUWkpuSzFGRGNDdnAzaTFMWExr?=
 =?utf-8?B?V1I2cnV1L1FyQkxIazVVRDNwWUpQSUFkSGpjdVdUYlI2R2xzdS9UeENyMW9B?=
 =?utf-8?B?M0t4bURHa0pGT3hLT2Zya3NTMVRSYytBb3EwdC9EZ1Z1dVVJaStXWkpNaUdp?=
 =?utf-8?B?QTFmcC8rVjZGb3F4Y3BMeEpXYkZFc3JMRUFvZXg1cnoyS2RSNEFUT0JXd1hV?=
 =?utf-8?B?STUrckh6NmppVkM2NVFyNVV3c1ZoMm1mRU16Y1FaNVlsTTBWVzNNNWlNUm1o?=
 =?utf-8?B?YmNWVTZuMTFLMkx1SXpWS2t5b2VtdHpZZVkzMGlNOHhHNjlGTEs5cE1YYklH?=
 =?utf-8?B?MytJQ2NENFh2YWVsVjVIUnBaUHVBQ2xUdTcvV2xUbTVFUmE5WDVOa0l3L0Fu?=
 =?utf-8?B?LzRrN1JOV1EzaVRiUjZTWDU0ejRYNThNVXlMYmRoaDloazk2T0RXamJqZWFR?=
 =?utf-8?B?dTYvUWZ5a3BYZVZSTlZBNnU1eGhxVnFuZnBwUkpUZ1c0cDYyVXhvdm1hK3Mw?=
 =?utf-8?B?RDYzd0dPRW5PMDNSYnRJcE94eUdqMjZvNUllbjM3aGU1UjBNVGhoRWpqSUdX?=
 =?utf-8?B?T3puSDBQcXVQVThvY0h2S3FQQlg1L3pXVmRIdzFzUFV5K0NlUVJkZ0hReTR1?=
 =?utf-8?B?bjBvdWZCckFhVVhUMHpLRHNUS1IxeGtQOC84LzBSclJSTDNlV0R0dUduZlR1?=
 =?utf-8?B?akdrZGVUM0xIWWl1bkt2V05VTGpybDBvV25WRWthTFBDM3JRUW5Va2RWZ2dL?=
 =?utf-8?B?dEVtcmc5Y0p5QW9sWmNGVEFZVHBlVllGOFRFZkVTZkRmd1BhY2Roa1FsdlR6?=
 =?utf-8?B?WmllZDFMUWJMdUpIWGpSbDF4VmR3MWlodVhRa1N4WTlQRFJrMVZFRlVjMEZQ?=
 =?utf-8?B?OEdIRmdyNTAzMEFwU0hvZWVRN3dTbzhmNkNlQUJYZ2tmTDRrdjl6Y1lITC9m?=
 =?utf-8?B?NWdlRjdiaTFQZFJLRW5rTkJVN1JBUEJWc2tpVlVIcFc2OGNBRGV2dUtBNGZZ?=
 =?utf-8?B?dnBqQnNod3hBblRwVzlpVjV0MmdjMW80VHphQTExeWpYUVY2dHRVZWVsQWZG?=
 =?utf-8?B?Z2pBd1Q4TG5hb05XeWZ0SXZDZXNPZU5tbjEwMnkvR05zNE1CeWI3bGFGQUhp?=
 =?utf-8?B?NTk3anVGMWZaWVBuUGhGYTQ2MTNFTzVaWWRsdDA4d0RnbEtPd0tmSDl3U3Fm?=
 =?utf-8?B?WWlzcytNSWFlTmRwZ09yUnVwZlhxNjBkTEc3K3UybUNhRDNPa211RzFhRm1n?=
 =?utf-8?B?TU5Fa0ZRMXpYdTh2bkZ0Ukd5THBDUldpKy9iOVFVOXAveldWeXFyNlBUMXpx?=
 =?utf-8?B?UjR2bjE3THR1NE1zdFVBMk1DNlk3YnE4d1c1Mmh4RENrZlEzN2FNYmt1ZWdW?=
 =?utf-8?B?YW1wbmxuT1ZuSmdZS2J3Z2hZTGlNd3lMbDFSZFF2bzlNTGl2NGs4UlYzUmFJ?=
 =?utf-8?B?RkUyVm5UZ3FmY0RMT3U0cmtYa01CQVQyaUNaeDloUTg1T09OL3F6VS9aTG1S?=
 =?utf-8?B?c1ZTWEVCR1p0SEhOdy9SRFJhUm1WQUN2cmRMMGMxa21mblVQNDBFb3BnVnJa?=
 =?utf-8?B?eitPS2kwblh6amh1MDdJY2tNdTR2OGVsNDEzMFhSZk1XU3lwVFFhbXdrdytW?=
 =?utf-8?B?c2JnemR2WGJqRVEzNG51UzRWcU52RGthUzA4NGk4V3R1aXFzV01LeDBEc2RT?=
 =?utf-8?B?U2dlQ2NUSm9VMXVsdE5PNUhqaC80NTNhb05ocTdkN1Z3bTRQb21XVmJDZHJX?=
 =?utf-8?B?anc0WUUwa0lJSDhaWlBDaUc3U3NSZGVLSTJRb1ltWWNyajF6MzlFejV3VlZx?=
 =?utf-8?B?TllwQ0Y1WHJxOHVHS1dEZ0lWWXRqVmpvbUtza3ZLbmUrcmxGWSsvbnlQTDZ3?=
 =?utf-8?B?R0d4RmlsTndjcHZyUkdLelFvNUJaUTZWb3JILy9ndE02OHpqOFpLQXFtMjZa?=
 =?utf-8?B?aHRZSFdhY1kvOFpldlBBYm5uQ2VodnBkU2Q2cnphK0t2bWdYNUVub2huWTJU?=
 =?utf-8?B?RHlpa29lSWZuNmhHVlFaMjYxL2gvRkZUWVI2L05nMjNBUy9QS3VLQnZzMGli?=
 =?utf-8?B?WFg1VUZyUXYyK0hrSFV0aFpSbjdHdG9ZRU1DUUpYQTIzd0tDdXVwZGQrMEYx?=
 =?utf-8?B?Ti9LeVRNK3VuSGIrS0ZDd1RqR2FYUndaNEhLRkVDczJPWGNyemd1YXg3emx4?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9971cfee-68bf-4a08-679a-08dd66dcabda
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2025 11:53:31.9918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EGpiAtj7FbHC1oBtS7Qcw+HVklOO3grdg1jDZo+Cf/hC7NNwOrhhIjiWfL6+XiJ6JUBVWvRCuoWWWh2E6maO7rmHKs1kwjz0ybCie5X0Cpw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7607
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

According to bspecs, CACHE_MODE_0 and  CACHE_MODE_1 are saved and
restored as part of Context. Let's move it to `ctx_workaround_init` instead
of `rcs_engine_wa_init`, this way workarounds are applied and saved into
the default context.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 68 ++++++++++-----------
 1 file changed, 34 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 116683ebe074..e7969a4a7af6 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -337,12 +337,37 @@ static void gen6_ctx_workarounds_init(struct intel_engine_cs *engine,
 				      struct i915_wa_list *wal)
 {
 	wa_masked_en(wal, INSTPM, INSTPM_FORCE_ORDERING);
+
+	/* WaDisable_RenderCache_OperationalFlush:snb */
+	wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
+
+	/*
+	 * From the Sandybridge PRM, volume 1 part 3, page 24:
+	 * "If this bit is set, STCunit will have LRA as replacement
+	 *  policy. [...] This bit must be reset. LRA replacement
+	 *  policy is not supported."
+	 */
+	wa_masked_dis(wal,
+		      CACHE_MODE_0,
+		      CM0_STC_EVICT_DISABLE_LRA_SNB);
 }
 
 static void gen7_ctx_workarounds_init(struct intel_engine_cs *engine,
 				      struct i915_wa_list *wal)
 {
 	wa_masked_en(wal, INSTPM, INSTPM_FORCE_ORDERING);
+
+	/* WaDisable_RenderCache_OperationalFlush:ivb,vlv,hsw */
+	wa_masked_dis(wal, CACHE_MODE_0_GEN7, RC_OP_FLUSH_ENABLE);
+
+	/*
+	 * BSpec says this must be set, even though
+	 * WaDisable4x2SubspanOptimization:ivb,hsw
+	 * WaDisable4x2SubspanOptimization isn't listed for VLV.
+	 */
+	wa_masked_en(wal,
+		     CACHE_MODE_1,
+		     PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
 }
 
 static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -669,6 +694,15 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_1406306137:icl,ehl */
 	wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, GEN11_DIS_PICK_2ND_EU);
+
+	if (IS_JASPERLAKE(engine->i915) || IS_ELKHARTLAKE(engine->i915)) {
+		/*
+		 * "Disable Repacking for Compression (masked R/W access)
+		 *  before rendering compressed surfaces for display."
+		 */
+		wa_masked_en(wal, CACHE_MODE_0_GEN7,
+			     DISABLE_REPACKING_FOR_COMPRESSION);
+	}
 }
 
 /*
@@ -2306,15 +2340,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
 	}
 
-	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
-		/*
-		 * "Disable Repacking for Compression (masked R/W access)
-		 *  before rendering compressed surfaces for display."
-		 */
-		wa_masked_en(wal, CACHE_MODE_0_GEN7,
-			     DISABLE_REPACKING_FOR_COMPRESSION);
-	}
-
 	if (GRAPHICS_VER(i915) == 11) {
 		/* This is not an Wa. Enable for better image quality */
 		wa_masked_en(wal,
@@ -2565,18 +2590,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     RING_MODE_GEN7(RENDER_RING_BASE),
 			     GFX_TLB_INVALIDATE_EXPLICIT | GFX_REPLAY_MODE);
 
-		/* WaDisable_RenderCache_OperationalFlush:ivb,vlv,hsw */
-		wa_masked_dis(wal, CACHE_MODE_0_GEN7, RC_OP_FLUSH_ENABLE);
-
-		/*
-		 * BSpec says this must be set, even though
-		 * WaDisable4x2SubspanOptimization:ivb,hsw
-		 * WaDisable4x2SubspanOptimization isn't listed for VLV.
-		 */
-		wa_masked_en(wal,
-			     CACHE_MODE_1,
-			     PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
-
 		/*
 		 * BSpec recommends 8x4 when MSAA is used,
 		 * however in practice 16x4 seems fastest.
@@ -2642,19 +2655,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 				    GEN6_GT_MODE,
 				    GEN6_WIZ_HASHING_MASK,
 				    GEN6_WIZ_HASHING_16x4);
-
-		/* WaDisable_RenderCache_OperationalFlush:snb */
-		wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
-
-		/*
-		 * From the Sandybridge PRM, volume 1 part 3, page 24:
-		 * "If this bit is set, STCunit will have LRA as replacement
-		 *  policy. [...] This bit must be reset. LRA replacement
-		 *  policy is not supported."
-		 */
-		wa_masked_dis(wal,
-			      CACHE_MODE_0,
-			      CM0_STC_EVICT_DISABLE_LRA_SNB);
 	}
 
 	if (IS_GRAPHICS_VER(i915, 4, 6))
-- 
2.34.1

