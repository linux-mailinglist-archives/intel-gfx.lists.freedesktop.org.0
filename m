Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD26BE1BFC
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 08:34:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8109610E95F;
	Thu, 16 Oct 2025 06:34:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UhN34UjJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E33F510E959;
 Thu, 16 Oct 2025 06:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760596459; x=1792132459;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Fq1gC9tKmt8NO2izGRwyP00pnHaGLSCk3GrgTpJDPxQ=;
 b=UhN34UjJ5VT7x+/WYdamPdLbkkoPzE47G4qvORYolUeyl8YFwvuMykpl
 cP7QAGq5EfpmOtd4RJA4tMPEkIC6esJmEYLDQDvKfCRkmqD+mSMysUZ1a
 XW3lWyssYr1kWAE40dsQ1wUuCTBox3miv+zOTJofvtoRYGOv5D18q4M8o
 OVVbGFVG/4KZdWTvgR47hXeWWJYmPTM6ilL3imaltgLCzlt/PnSjU4hLg
 1KZU8P9Qt0A/YcTezBR9Nj7syQ0+6uZODeY5DhuTYiAL0/pXZd7akGtMI
 YZa3uuJP0l4i4XcZandRuIY11m4OJxW8OeyR6b6RBoiJv9COUBGte45oe g==;
X-CSE-ConnectionGUID: aNzZoJxqSXqQUhOjR49bgw==
X-CSE-MsgGUID: ztqW4/e0QpuY4NWp/n1Uhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62821613"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="62821613"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:34:19 -0700
X-CSE-ConnectionGUID: 3gbq8TO/Ssm8nDN8uZONxQ==
X-CSE-MsgGUID: tmcqKhMNRXOnnrGz/M7sEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="186381158"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:34:19 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 23:34:18 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 23:34:18 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.21) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 23:34:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aUMcgVNJqLGYlU5taSqRt9mAyFNCQxvHeLmDxJf3fK4JyTYdjKKDTNpF5HJ6PtYK0zr97S92Rzs1g11LCp5f0KHy8rhR7ZhieJKvbSJqE14WpAf9lh2yM4yFJIsKOGPz4itDJekuP2IixNBY5ed8/B3uAG692KO7lF7ItAomR8rrxGjbepDjUKxvxLu/pdkv/IAlbRIEU90YDYAZKFgqxoqidI2FIZZjL4hP0ZOvHNjX5RQFbU6Ok643nY8cP4joeuii/9/kNnvewEkOvV1j2RHDbQYpP8cKH73VP9C6l17fdJBTaVgyvJuNnSFtI0F8To5KWa+5wUiSFJvnhcvDqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PkumrjXaY4UWfrvmCfnYfefnqgXXW77wczawXGwSG4s=;
 b=glvZjpHt4taK0pqtuxC04RAQsR28VZxVuu75f5j6i9ivzSfSt5eORg29X3dONYxaqeZ+RWsIT1Tq6FYzV1PVRPCc/q27yuuh6WKL9Wpi1Wumm48GKXLdUbbSlaUSsfK/3hLG/uN5H/xAq7EtJ6A1Fzvs95k2gd8irew2V3efDAcvoytdrQMPkzu7tN+P5dngHtkVv6Z6fFu9zjZGYi0Zw1yC7kwUEjwKScey33KFn+ESSS1d6k933Kzt67QSjniqNGVQoLKYX54rRkV17ojEmvZMm2JQtOalo0oswo9xqQr7zfRyVmWGf7glBT4imnWJTBDkcg6HQ0RzhQ+K9uWPAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5064.namprd11.prod.outlook.com (2603:10b6:510:3b::15)
 by SA1PR11MB6734.namprd11.prod.outlook.com (2603:10b6:806:25d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.12; Thu, 16 Oct
 2025 06:34:11 +0000
Received: from PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e]) by PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e%6]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 06:34:11 +0000
Date: Thu, 16 Oct 2025 06:34:00 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH i-g-t v3 5/6] tests/gem_eio: Reduce debug info on stderr
 from stress subtests
Message-ID: <ustv4ul26z52tro5vufao2nynmdlgp2u3pderlv7qngdbzuga5@bjj34hqpzqfx>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
 <20251015124419.66460-13-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251015124419.66460-13-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA0P291CA0007.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::11) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5064:EE_|SA1PR11MB6734:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a55318c-00c8-4ca2-967b-08de0c7e043e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RkoxNkNrWWE4S0hFUE10cFkzd3Q1TnNWeVkwOGF2VnhoSHcvY3RXMEZUZjJK?=
 =?utf-8?B?cWhYdFdFSWNlNFVXcG9BTk5rWmw1MEV5dkxsYWpQck5RcXpSTnowUzY1U3ZE?=
 =?utf-8?B?dzFmVjZKbUxQME1JY0IzS0x1YXRSYkQ4bFRMakc2VTgwUDlJYVFqcUsxWHYz?=
 =?utf-8?B?Y21yK3JRVFpaK2lyckNuNm0rbGpHREhac25aV3hVMjN5Z1lBUHh4SDZnbnVl?=
 =?utf-8?B?dVZ2V1RDM0I4aXFVN040TUU0eWNLcnVXc2N2YXlzMWNhMnY3RzNMc3VrLzFN?=
 =?utf-8?B?aW50S0dPUmxyTHgxeTcwWWkrTis5NTA3dG9zdnNpK2NESG5YdVU0a2c1amo3?=
 =?utf-8?B?d3RjLzAxckIvUjVKWjFtRmhxdjdYZnY1dmR0bEpwbkgyeGkyTGs1QU0xd0ND?=
 =?utf-8?B?TTU1VHZlZHpWQTFVdndtQldNY0NKUGpvRjFzQXVCKzJPZFYrTkx2OC80M0JV?=
 =?utf-8?B?dWpxS3dNdnVmNnNGSnFTS1BpZ0xwTE0yZGxDWmNzZTJuVGNxWUNlWW0walZk?=
 =?utf-8?B?WHJGUWlDQWsrTmVDVnhjNTlKL0RjN3h2SWYrd1loR1ZVM1IyRytQTWp0SzQz?=
 =?utf-8?B?L0NGSlg1VWl4STdFcmw5TE9MNkJlVVJMTE5aRGlJcktRa2ZkMDE2a0xueWIx?=
 =?utf-8?B?UjRtUXk2bnE3YlJIL2x5UEhkeG8raW9UQzVNS3BsOVA5alR4anh6RHNxNzZi?=
 =?utf-8?B?cHJxNmZyS2tibGVpSWtSdzI3UnJSSzhFMkdlN2xJa0htSnZhbHBTYmpRankr?=
 =?utf-8?B?WmRwZHlqRFkwY2JnUGJpQmhTYjNESVpxMzBrK1QzK2RkSGZULzFmZ0gzR2VN?=
 =?utf-8?B?dVVFeWQ2MGR3NHg0SGpMTkUyd1ZIbHFydjIzUlpkeFVQTGRSNDhCU1BDc29v?=
 =?utf-8?B?U2ZhOXJRa2V1dXVEeXViTGtEK1BxUTExNS8zWDVSU01XMVdUa3pDYzBaaEpL?=
 =?utf-8?B?akRJRVYzOElGWGFrRjQyRU1FL09NVGtnWkNUclRrMG1TQWI1WWpsVG9CbmRl?=
 =?utf-8?B?dm02d2xQRHlzUGtGYUl6YmhFaVQrK0JiZUpUdUZQbnJOWjFLUE01SXlQQm9n?=
 =?utf-8?B?bktEUGV5MngrcEttOUtIRVlmano5Z1VKR052YWRJQ29KT0dpSTJoN3lsdXAz?=
 =?utf-8?B?Q2F1c1MzVk5PdzlUYVJ4aFVxY3RhaHFqdU1rc0k3NzNnMkFQL2lYZW1lbFJ3?=
 =?utf-8?B?dU5jaXNyMC9mV0lyb3dhVnJVVCt3TkFCU01Nams0WE10MzQvK0M3NFRGbkpJ?=
 =?utf-8?B?clZ5ZTVzTjJJdnRiRDRnYlJ0MCswMVZ2dEVOV0FEU1Vid1ErSTBCNmRiSFBx?=
 =?utf-8?B?V0VoS2FlSS9SS25yV2czWDJwY2grbUhldTZRemgrSGFPMlo0QXkxNkJpYng0?=
 =?utf-8?B?RnZjYkNMdHMwS1Qrd3FLN1V1LzFYcWdmN3pYZVl6WVZ5U2lmdERtYVlkdUJX?=
 =?utf-8?B?TzJvT1Vvd1VEcEowcW9oQnVjOW5LZGtPTnVpWjUwQ0ZwbEhhOVBTOEJoQ1JQ?=
 =?utf-8?B?V0Myb3Q2Mk03S2ZVKzUxUTQ1R2hvYXM2eHNYclN3NjdxUVZNWmpocEtMY3lT?=
 =?utf-8?B?bUxRNEt2RTdFSi9GZUVvL2RlMm1weEVRT2Y2dWxMUUh0ejZJSXNhb0dHbE5C?=
 =?utf-8?B?ZTVlWTc1YXhEa3BHTVVxb3RWcHpUelFrTWpnYW1hOWhlTnkvMm0ycitaOVlH?=
 =?utf-8?B?OUo2K2VFZ293TlExK1h0emFyRFd0UWtDQy84SXZwVnpjMnNvSHBLajNXS0hm?=
 =?utf-8?B?N1FZbkJuWmNXOXVsV0hPc0NzVlE5ZHZ6OHBRRHRycGpZcU9pNDI5K1EzSVE4?=
 =?utf-8?B?YU9kWFIyZ1UzVnlTZkl2WHowUEJmOUxZM3pmb3dUa3dBZDhPS0J4Nm5LaHlr?=
 =?utf-8?B?eFkvMDF3dUUyU0VKNFNKUFFGN3BCR1B3QkFJdGcxaldiWThKeXRBSzdzSFBt?=
 =?utf-8?Q?okju/owvU+1zxwiMPFmf2+x7YGfI5BGb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5064.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azMzZ01kN2p6eFdDb213Z2wyNFdCcnJhYkZwUVkySXpLWXcrV1JxcEQ1bXpo?=
 =?utf-8?B?N2o5RmV4YUxRM1c5M3lSa0g4K3RvcW15NjdydDhFNmpWVHc0L1pPNVY4NGV0?=
 =?utf-8?B?L3Y5Z2htZDlaajVQTkIrN0grVnlrS3NUREZ4Y2xpVXY0b1BCY2VsWHIyVkdu?=
 =?utf-8?B?MkpLMCtwQ3lBWWQrNUZSc05OQTJJNkpDM0FoU0dXbkpLei9ET0VqYk5BbXYx?=
 =?utf-8?B?R2o3M3hLek4rYTAvNkhhL0pEbDRGTUd4ak53S1RLZHRPOGFqTlJkWmkvTHBH?=
 =?utf-8?B?ZURRSklyNi9vREdTT01BbGdhTXFza3BmRm5jVmdHMnFVWHNBbnhGYmVCT2E5?=
 =?utf-8?B?MGhVdE9za1V0REZvNXVUSno2ZWRtdEh6VXREeGVvN3NwaGVBaEhJTU1FWXYy?=
 =?utf-8?B?b1UzRmR3Um4vNnNMVFdrNkRFQ3NGZmhkamNNOE9iZXNHbFVveGtadDNlTXEr?=
 =?utf-8?B?ZWF0V2EzcFpPRWpSY3ozS3ZVengwVnNPY2JGN3NEOXM3WVd5RjQ4K3QvWXUx?=
 =?utf-8?B?UCtpNERhVlhDYzYrRHU4ZEVRaWg4azIrRXBpQVFIYldNVU9wSXNTdjlWcHJF?=
 =?utf-8?B?anlJZ3RpckVFdGpJU1V4M3U2dFVUZU5KdExvYm05UVJmSjFsN3grL1RUalVn?=
 =?utf-8?B?NXZYZzJHK1RpQlJyL3NvdmhLMkw0c2d2SjQrbmVEM0VNUnRxRk9tTGRKck1D?=
 =?utf-8?B?YjFrZzNyYVFiMGJkNDFHczVIczZ2QnhOUThRR2dIb1VpYTVkOWtQcDZsaFdX?=
 =?utf-8?B?Q29LRldMSEdvV01yNDN1NWxoSU8rUGJQMnB6RXJPdjZWVUprSjR4dVd6OVlt?=
 =?utf-8?B?T2RsYU1mcUNKREVuekNaeGRoQzIrVWVYeTNxd3FhVmpGTDZ2bC9XdkUwSnll?=
 =?utf-8?B?SWJVK1FuaDJxbnpmUjRBaEIrOU1WSkE4U0Z5UURmck9zUk4wUmxsVlhmeXl2?=
 =?utf-8?B?UTBZL3pYcGtvRzY2OThwM3c1VTZscndxQ0VXekpXZk1JWjhKMXdmMkNLVlA2?=
 =?utf-8?B?azlsT21yTmFkYXc4MGpMWmZFdDBFN29Xd3l0aVEzeXppY3lkRzloWmRGdFZB?=
 =?utf-8?B?N25uVXIwRlVTeXlocTJweFNEN3RIdk9paU1ETEU0QXhvbURTbzJJV21rcHc2?=
 =?utf-8?B?eFhzcDJLUDdXYXVsMStHMTF3SS9lSjVKcXYzMXpySkRWaFMvdUhKZERMNUh2?=
 =?utf-8?B?eEkrSWxOd1ZnaUN2TUY4dGxlVU5RRnhDNUR3cmlFaWJuemU5aWxtSVJKRm0y?=
 =?utf-8?B?cCtyRmtSVGw0aExkVis3SGlLSlEwSDNoc21ra21TdS81ZUlzRlV2N2tXZDF5?=
 =?utf-8?B?clNEYXIrRG0xZzVsc2M4M2hHcVgwVStqODI4dndhM3l1SW9GUVJvekpuOFdw?=
 =?utf-8?B?STlBV3V6ZjhUaGVySVQwOWxKRjlXeFNEYnkxYWpUYmpWYVF1MENLZVdxV25H?=
 =?utf-8?B?cUhEck4ydVlIUzRVMFEwbXUxbUxiOEk0cStDZ1NDVnorWjJuT1E5YktnK0RC?=
 =?utf-8?B?d1FCNWdvZWJXTkZwYy9HTGppbHk3d2I4bWhCSUVlcHk2aVZLZ2dlYVZOQ1Bn?=
 =?utf-8?B?S1ZOQlcrZ1RhOHhaMHhNbGp6aWdid3VLYkZVQlpCTm4yM1NxeG1McWhqckFx?=
 =?utf-8?B?eUlva3N2bUt4LzJ3bGYvRk5aY29FMnNmcnVUUUNneVFoWjF2OXhOdmM5RCtS?=
 =?utf-8?B?QlZlaVF5NE53aGovT2dsaUpxN1dlOTlYNkltSEtUeTFwU2p4TDRscm9EZEVr?=
 =?utf-8?B?bDl2S1ZyMzR4SW5tMkpBR1BMU0dkL2FIMWk0Y1B6WVJDMkxrWnpuUml5MHhU?=
 =?utf-8?B?a2pkOVlybzM0Vk1TOHVDOHNRVTA5dG03amtwcWkvVHkvcE1FZXNWSDBWMy8w?=
 =?utf-8?B?ZzZPQmEwaUpCelBzeHRwS3JCZ3U0NEVXM1QrQWd6cWdheUtocXZtdjJrRXdE?=
 =?utf-8?B?TEphQlpQMXQzZUducVlNUVRsWFpvcnYzbURiNkxlUVVPSUwxNyt4Q1l1WFNk?=
 =?utf-8?B?S2Z1WTQ0RHBYeUo3RVdic3NJdUNDTnV3L1pQZmhTY0dIVWhCaGVqZE0vaHl0?=
 =?utf-8?B?UllYN0d2N0hOU2dtbjNBK1M5Y0thbTZjNXh6RCtnTi9jWFVWK1NiKzdGdnZG?=
 =?utf-8?B?S0Fkd2VBUGNjb0tydVNTelFydURVY0lCVzQrOGo1UjMzRzZtMS9sNi82N3lO?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a55318c-00c8-4ca2-967b-08de0c7e043e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 06:34:11.2426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H7ILh4CQrl41rHORdjDEswslf9XVYzSnmltfMu1TgV0ppNlJXYW97SPJu6J3JZ/TvXEUausPAXjReBUPUDSLLbW4H7R8Ni0eW+uw9kolaMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6734
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

Hi Janusz,

> Each call to trigger_reset() results in GPU state dumped to stderr.
> Stress subtests that call trigger_reset() many times from a loop may
> contribute to exhaustion of per test disk space limit watched by
> igt_runner, causing incompletes reported by CI instead of actual subtest
> results, and unnecessary reduction of CI coverage as a further
> consequence.  Stop dumping GPU state from those subtests.
> 
> v3: Reword commit message, there will be one more patch with similar
>     objective but a different, additional solution,
>   - reword commit description a bit for its better strictness.
> 
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_eio.c | 33 +++++++++++++++++----------------
>  1 file changed, 17 insertions(+), 16 deletions(-)

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
-- 
Best Regards,
Krzysztof
