Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 077C1ADE84A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 12:16:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9246E10E0DC;
	Wed, 18 Jun 2025 10:16:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PaPxaMdd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2404810E0DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 10:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750241797; x=1781777797;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=8g3Y2nVyGc6ROWBNHkIwYYRQOitqjtJd7ayQirlEpO8=;
 b=PaPxaMddc7tIhqs3sGEL1ywHlhEIr1VMJpkakswpWFJq96JHlW9MMON/
 2EpEpSX6mUgwqaDxBO8NheK1NjR5ME69tBm4kwNM1k9fIGgnmAdVGy5Cm
 jUD90YS6CPOXqv4cKYOR6bEJ2yx6RzG/WugjcFS6CFgZecOyHd4FAKJdp
 OjAvdAlYijysU3I2ExJ7EK7GaOBq3wPc06njh/0DuhPcpDKs8VByPAeCy
 9OVfPtkYz2bDQJDQ0SnDLny0Qpie0J+aAWQxQ4BPjCwnSIG0LENwU/6C/
 U93/lgHREi92GTUfnq74VzK26x2qJ57Ts3ZdR6UaRJEWHOlNgGUpWLE+s w==;
X-CSE-ConnectionGUID: vRp3XjPJQMSXbPTFQGbU7Q==
X-CSE-MsgGUID: o2chhRdST4mjLWxiet4/qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="56256065"
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="56256065"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 03:16:32 -0700
X-CSE-ConnectionGUID: eNVExbkSS3ynjbe/5vXdWA==
X-CSE-MsgGUID: zxAWvGU+QoGA1481xx1xuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="180452638"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 03:16:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 03:16:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 03:16:30 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.74)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 03:16:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a2hk+4L31NBXLf0ebrc6xlP5ji0HUvVzwCJ4k8wY7jMkQLDtX4Ug8LNz2FBZ3fUXKO3goLl37E5ZdJ8tMke02YPMre5Tbfj3/2BqYYK3hrdLYaMk6VaeJa2ceX9iI61ru0zWa1mA/JCyaNg6el8LGx4396USFur5O3Pz+VTDruVFRzicime/Pki9LM8+WCacICZ64d7+T95C4OC43fHHoEprWFoQxiVEUy6Ape8DDr8ORlaH5tsVW5fQVSJw0oCDS3Dn/G8+MIQzbr2UvLQveQCqpiQoQcgN6x8PqE5q1EyyjLDMcB4JuI9MSIt3yTLTzBSAVLH80OmQ1e5Xyv697g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t+8Zj3IgdGwgO46MPEbT8Nd8mA5o/ukfAbPowVEhCh4=;
 b=BHeatsV8a56ZTiNMUSXapNjfIQMpFPoS5UlBE9xuuFOze4uMmzoW1JLZ98ksX5p1E1/jv7xYIdQ4CagdZ3LLth7DWpMEHNY/JBTVOSFgHnUglJidCtQQ38AzbHJcNlBHrrjx8GwiLdklRecDbwR1ky8pINgZSD3qMSlo1OTkdhI2CRFluRt0w/QiLK2uT6QZUctatpCxRzesqN01Qe9U8pY+tyMF80hXUzFhh9HItijqPQEGuCXe1KiPA+dW3/lL7apob+kKmsWCp6ZSAV79UZhQC9j3pjoCorFcRSRWKQxgtU9hIVGcoK1UteWJ/cqEqwyHNsSMFrnNhSwR0eTB2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CY5PR11MB6113.namprd11.prod.outlook.com (2603:10b6:930:2e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Wed, 18 Jun
 2025 10:15:54 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%4]) with mapi id 15.20.8857.020; Wed, 18 Jun 2025
 10:15:54 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 18 Jun 2025 10:15:49 +0000
Message-ID: <DAPKX3Q0UWH8.35IG9NUP8K0ZJ@intel.com>
CC: <chris.p.wilson@intel.com>, <andi.shyti@linux.intel.com>,
 <krzysztof.niemiec@intel.com>, <krzysztof.karas@intel.com>
Subject: Re: [PATCH] drm/i915: Add sanity check for relocation entry pointer
 in execbuffer
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>, <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <lofb2i4actwlvfk6xbtihirrc34j3pb6xecvcl433a2xbm7zy6@akz3ko2bh2i5>
 <3e0562fd-ccfa-493b-b1af-601081a9d0b3@ursulin.net>
In-Reply-To: <3e0562fd-ccfa-493b-b1af-601081a9d0b3@ursulin.net>
X-ClientProxiedBy: DU7P251CA0014.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:551::17) To PH7PR11MB6908.namprd11.prod.outlook.com
 (2603:10b6:510:204::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CY5PR11MB6113:EE_
X-MS-Office365-Filtering-Correlation-Id: d98c2960-3f14-48b5-90c8-08ddae511bb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z1ppNEo3RU40Qmdvc0JyRThKRzRnRWtnMElQWm55a0trRFpTTDRGd3cxVHJD?=
 =?utf-8?B?Sk5GUUlZcm9oSkRjdkl3bHhqaDFmaXNPM0pwU2FmdGJZSi9KZ2YvTmk5cGpp?=
 =?utf-8?B?b284VW9QM3BpalZNY0tTbzhYR0RIWXBPd2tTYnN2RDlpT2RsYUdBU0dTbm1I?=
 =?utf-8?B?aktQYjFmcTIwUXRMZmVKMTcwdjdmdXM0dFg5VEl3WVdxWnJxWE4vR3o3OENq?=
 =?utf-8?B?YSt0ZmFOWk9BTlc3U01SNGROVWdiWUVVZG5nYS9MWTN3bEJZWVl3VDRySUND?=
 =?utf-8?B?bVJIUzZGZndSWklWVWtwclZ3Yis3WldFZHpscXBzbjlhWE85UGtlK2pITmdL?=
 =?utf-8?B?aG9qMzBpbkMwTmp1dElsT2Mzb0hSbVBwVmtLWFVWS3YwMUwzc0NsWWg4S2Fa?=
 =?utf-8?B?ajZDSlR6aWNURytSdHlPb3FxeklQaHVIK2xRT2pZaXZxbWRyS09xWDZ2bGE5?=
 =?utf-8?B?WXZIaGk3bU5jYk5YOTR5SlI1ODk5QklFaGtlWlRzYy9NOThYZC9vQXpkSU1N?=
 =?utf-8?B?QmoyK3liZFdWUnB3bVFJRHBiNm04VTFlOUd2WEJLY2M5a29GeU1rbGthemc3?=
 =?utf-8?B?Q2dlSFlMTnpydHp1Yit3YlBCYWF3VjMxUWNGZmFWeXAvVXBJK2ZSUDczYkEy?=
 =?utf-8?B?WllNVWg0bzV1Z2NFekFGaC9CWjFaMURLTGIveGJSTlZXRHlYaWh4SitPa2hz?=
 =?utf-8?B?SmdmUUZpVGh2MWl1R1Q0UG44UFhqWFlncCs3bUVnUEdSK1pYUVh6WXl4Q3g5?=
 =?utf-8?B?eE9lNUEwZFNqRkJrSExreEc2MzlOMjJBNlgyYld4N1pVdDZCSkNSNXhrREox?=
 =?utf-8?B?QUlPT1cwMGs4WVBCK2Q5azBUVGZ2UGg1ZzEzZ1dEZlVpSC9tcFREUjAvUUJI?=
 =?utf-8?B?aEJVZnJGQ2syaVZaSVREMi83TStaQlJsQzQ3aUYrcGlQNDNxUDVtZWo5c1Vs?=
 =?utf-8?B?bXlYaU0yb0xNblhjWWlLRFJtQ3ZyZFRxbWpiVi9GcVo3NDN2M2wxY3h4MzRP?=
 =?utf-8?B?V1RHSDE1eWFyTGxCUHUvelZ6UVFKaExnbWppZHpqZEVNaUVPZEVzNVp0a0hJ?=
 =?utf-8?B?MnQvaU4zdXc1MWVHQ3MzZTRLVlZGSjl5SWZxNENMcG4xVjQ0c3I4SDdoUXQv?=
 =?utf-8?B?YjVGS0xDZkt5MEFPRFhXS2psVnFzV205Y1E1cngycHE4bk9BRW1OazByTUQ5?=
 =?utf-8?B?Rm81ZVJmajY3bHpwODJsYXVNRXUyRzFlV2lRL3dWc3FjTVpuWU03dlBrTkg3?=
 =?utf-8?B?ckdqU0NqWERwWTB5eSt5Wk1iTkZYMXc2TCtQRk80Z3A2TUYrenl3cWVLWXM1?=
 =?utf-8?B?U2NKMkhBdW1mcWFsWEdvUUdvVXFPb2RYQXhpMXZWYVQ2VG1meXlPclQ1T3ps?=
 =?utf-8?B?WEV0NzN2anFmRlkwU09iM0YvbDdqV3NheTE3UHBQWnlHN2dyTDdJZlh5NkhT?=
 =?utf-8?B?RUZDdUxxaHFTeFRhWjNUYno4SU5zZ0d6c3lwcTlsOFdTRmFFQ1VkcXNPS1FO?=
 =?utf-8?B?Y1BSYUNtTnA0Vlp3b2JLM0gyOUNxZ21lSzMzM3NqT3RpUFA4dVdXU0xlZmNa?=
 =?utf-8?B?RUxNWG43KzRWUm1DcDZGM2dnY1pZV2pxRDU4R3d3V2E3ZHY3QURxTmpPMGdX?=
 =?utf-8?B?OFppbklySUdLY2dEcDdLMG4yMWdMaTYvckw0V1dMRlc0UmVJREdWKythV1FX?=
 =?utf-8?B?VWM1dG5KcTRjUElUaENsR0w0M1pJR1VGeEJBYjNncGluazdVY1FzeFczdFZo?=
 =?utf-8?B?Y3dMdXBrcnlldFNvSTNjNCtVS0ttd3hUQ1Z1RXI2T0xOUjhzM1hOb2c5UVpB?=
 =?utf-8?Q?b/0FQXM2OO5bUWr2Y0p05nejqCIuUlby4cx8c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmgvVnNVajVGRHIveTV5dkVDaEpJODF1bUdMODMrNHBSclVZQmpKajYwYUJh?=
 =?utf-8?B?ZlhkbmRtdGxKWVhmQzFISTlNU2E0cHBuVXk1VXhnQ2hOYVFHZ2NwTnpIYnVQ?=
 =?utf-8?B?akV1MkFscnJyM3k0RHBvMWVyM1ZWY3kyQ0l2K0dOTXUzWkhxcWpleU9XQUh5?=
 =?utf-8?B?M3JmZE1mZ09PU1FOV3Z4aDU0Rnh6ZHc5cXpWNENTbElId3VzUE43dG9FYkwv?=
 =?utf-8?B?TUJMblVTN3JFMUNZa3VGZ0NLczV4MUJFQlRzVmc2cHROclRlNkVVM0c2TXcy?=
 =?utf-8?B?cFlZc3FnMFljaWxCcDhadmtVSHp4c083QldUVmU3NktEU2txU09MZ0E5Qndl?=
 =?utf-8?B?SlFUd3lLZzlJZkc2NkxmL0RsUWIrZkRUNWZDd05vazRhbFc5azNhTFo5K3BW?=
 =?utf-8?B?aG84UWVaMnJVWnpYRklEWm5IME8xbnpzRWZWeXVFUk9DNXVpK3BDZ1BCWTZU?=
 =?utf-8?B?NWFvYjhHeXZ2eUZnTzF3Yzg3ZVkybnVWWER3K1NWcHpGMk5RZkJSUktFWUo3?=
 =?utf-8?B?YU9PdU54N1Awb1lwU2xKOFA2STQwV3paVXRtUnBkYURQSGUvQWJ1OEF4U2hN?=
 =?utf-8?B?Z1ZaOEFQN3J2aXlRMHZxY3haa1RCWUdUcFd0eGxVU1ljY1J2ekkydTBYRW5B?=
 =?utf-8?B?ZzFUMXBvaTdxUEtkYnU4bnkvVjU0YStiYi9EUzZ0NytESGYxc3U4TEhLSmlm?=
 =?utf-8?B?Si9YTHdXNU1xQnJiRlV3MnlnbTV2VWQ1eW9NSEtYbUtSMjh3ZDJhbFE1QjRW?=
 =?utf-8?B?R1kxQjNuL2RpTlN1b0UzYW1COFozR0lYcExNWk1XSk1IUm4wMkd5NXd5YXpW?=
 =?utf-8?B?NFF1b0pRQ2ZuL3Y1alVzWVorYXNFRi93Y0JQOVlCWnhwNmQ0UWVDNXgvOUpo?=
 =?utf-8?B?bHh5WUpISXo1UzJScXUzeEk2TFhHNmV4Q2tpanR2YWlKT2JkNmZaTWxXbHN4?=
 =?utf-8?B?YmZieDlEWTJxRWZWQkN1WElGRFhKWUxvTUVZM3NBQlFucE1USTJMRDYrYjJM?=
 =?utf-8?B?VnFzNlVFOEZXNGgrYUhrQVJoR1gvN2xJRi9wOFgxdEpObWtzZ3NMVnZHaDN3?=
 =?utf-8?B?MkR3Wmpjc0hYcEdXZnY1ak5kNWVBd1NPejZUYnd2bmllOTQvYWJQZUdQRndu?=
 =?utf-8?B?M09KWjQvSXJkdGh1bExFR0lBNHBHZTZiMHp5SkxDSkdJWEJOa29YWHlGYTVn?=
 =?utf-8?B?MjREUmJJOEl6b3ZaQXRsQUtURzBLVEFPS1ZxOFFtNEtDajZHSzhCUVhIbUhu?=
 =?utf-8?B?SjIzNHJ2Y2Z4TlVrUThDN1pGUHRXSFh4VmhxM0Y5NHdkZ1h1RzhFdEE2UURB?=
 =?utf-8?B?WU82aDNOem1WSkgvcWJVMTZwSjdvcnlHTmltTHQ4UWNmbWlsU1lnZ0J3V1B2?=
 =?utf-8?B?MGVyU3dZYllFNm5EbllsaHRpT0duV00zbm1JcVdIaGRxSURuYktGN2J2RGZ4?=
 =?utf-8?B?Z0tTZW1sNndPL0E1UjlWS1RmMmF5VjZ5YVhtTVJtWE5ReW43SFpoZWc3dWtB?=
 =?utf-8?B?bjRBcW1YOWdibjlnQ1c2VUZhcTJqMHNVZjFkZ2JoK1RMSlh6bmhCT256RUpj?=
 =?utf-8?B?NkRDN2hnWmE5WktJV1VVclVLNU9zWjZibTRRL1A5RVJWaGl3T09GL2J5R01Y?=
 =?utf-8?B?TTh1anlRb0lDamwwdXp5cXZtbWZyNGk2M1V3cVV3ZytnQ2Z0bXRuTmhQNDNO?=
 =?utf-8?B?em5ET1V1T0lZbTg2QnVTbnJFN25WOEtaaU1LcGU0eW1nb0NYK01taGlkYXJJ?=
 =?utf-8?B?U3UwMkZKQmNiQWh2elpHUnZidi9pUU4rTFFrV2krT093M2hkR1dPWFhLQkFy?=
 =?utf-8?B?a2hVUjdRTjNMNTlONzBNamMwNEMvQXFObU4rcDJxQXY1UzJ3SjJRNFI5K2pZ?=
 =?utf-8?B?QnJoSDcyVjY5RWpDU291L2xyQ3ZGcDdnTHR5dFJsUm5LY0xHOVUyQVdNQ0pZ?=
 =?utf-8?B?b0VZVHFTR1l0ekVVSUhMZjRhZGsra3g0TTljK3ZCTmZ6V2ljWjhpRlVkeDhI?=
 =?utf-8?B?eHpHR0UxMklkaFE4M05DQ1lSZG9WbDZESmxBLy9nSE5uQjdxMi9ZSTBOMlE4?=
 =?utf-8?B?aXRLeU1rYUlkSE1JbzdXUUYxdG5aR1RrTytrSTZ6K1hJOFFaTEZoMGZDSng1?=
 =?utf-8?B?bSthUE5pcUdheXdxYVhTbG5RTGNwT3MxbWpWa0NyOFdvN0srNmpqL0JYazJF?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d98c2960-3f14-48b5-90c8-08ddae511bb1
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6908.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 10:15:54.6349 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5D83vTWgNKvvBFUefVoPTkgHKvQljCLcV/i7EAUsSDS3aR2Fcs3X9ZKdTPzf8sgrtb/QVrHNlsCA/zLvZQNz7Aow6PluCzt+uhJA6FDH0i8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6113
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

Hi Tvrtko,

On Tue Jun 17, 2025 at 11:39 AM UTC, Tvrtko Ursulin wrote:
>
> On 16/06/2025 15:22, Sebastian Brzezinka wrote:
>> This patch adds a defensive check in `eb_relocate_entry()` to validate
>> the relocation entry pointer before dereferencing it. It ensures the
>> pointer is non-NULL and accessible from userspace using `access_ok()`.
>>=20
>> This prevents potential kernel crashes caused by invalid or non-canonica=
l
>> pointers passed from userspace.
>>=20
>> If the pointer is invalid, an error is logged and the
>> function returns -EFAULT.
>>=20
>> The failure was observed on a Tiger Lake system while running the IGT
>> test `igt@gem_exec_big@single`. An appropriate patch has also been
>> submitted to fix the issue on the IGT side.
>>=20
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
>>=20
>> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gp=
u/drm/i915/gem/i915_gem_execbuffer.c
>> index ca7e9216934a..8056dea0e656 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -1427,6 +1427,12 @@ eb_relocate_entry(struct i915_execbuffer *eb,
>>   	struct eb_vma *target;
>>   	int err;
>>  =20
>> +	/* Sanity check for non-canonical or NULL pointer */
>> +	if (!reloc || !access_ok(reloc, sizeof(*reloc))) {
>
> It doesn't look reloc is an user pointer - otherwise there wouldn't be=20
> simply dereferenced just below. So something looks dodgy here, you=20
> probably want to dig around a bit to figure out what is really going on.

Yes, you're right, it's indeed possible to pass both kernel and userspace
pointers. I overlooked that initially. I've corrected the issue on the
IGT side, so non-canonical pointers are no longer being sent.
Additionally, I attempted to improve the handling here, though=20
it still needs more work to be fully robust. Thanks for the review!

--=20
Best regards,
Sebastian

