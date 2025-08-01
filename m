Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 782D3B17F9D
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 11:49:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC04C10E3D1;
	Fri,  1 Aug 2025 09:49:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RL1XIMNh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF16B10E2E4
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Aug 2025 09:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754041749; x=1785577749;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zap7wOnVS1qENJvErLNqODjXf+zVi0cyOUiTdYQfqX0=;
 b=RL1XIMNhgUrz69WzZNKdT4M5dm7W7IHMLQRQbNLduNOPHQaSZ6M4TYM7
 Dh3NzRxtFthWyRU/DvPOgdVxYLF4GYwu0eBlnQ1iLHeW99GKkoL09UBAY
 oP7TXXFklw9kVV/y8RbZTr4Umrx1lB+WP9vx6W3PFNI2MTQi2H5JrZHED
 6xAi5ErnKapMXeHnECT/QMjKdN1b3hDq57xKwyihkEj7thx7Dlfqhn7W5
 F0kRzLLyThvgkd4J+YMAtVwmfCyCbEMqgJLt8uEav5PbDs4nhYjDEuwGe
 zLEeQ8Zr4EUl/GI6x/90XK7HqlfDuVbAUBOK52r86fz5K+2Yu+UHTNfQQ A==;
X-CSE-ConnectionGUID: NtDv2CUMTmuwhpdbLKtUUQ==
X-CSE-MsgGUID: zJLtv9DJQKSqe29jzD0wLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="67082483"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="67082483"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 02:49:09 -0700
X-CSE-ConnectionGUID: 2Stb3Z+oRBekGwYkvX1tvQ==
X-CSE-MsgGUID: n4mXD1IaTa+LxlSfLYQ01w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="162808091"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 02:49:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 02:49:08 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 02:49:08 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.80) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 02:49:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VFmkLNFd2+jqWARIqOmlgJsxxo93qAy+Kwz6lmyHUT19BcmLm3rshsP+Q9kUaDqJCdJw019LCfwiuPG1MLdwvUaUHlIvNQiERxOIwpRl2VhgyqL6lqAmCBGjXgh00SkHd7NE1TuK+JKAyZR3f6j1wuPGYYLhx+4uIeATwEdd2iv/PKyZrwzEDWtN0LXFNsBpo8kwb7iHKhYrR5nw5u1WdduAOeUUVKG205awx4++k35W61ztI77MZVwLF9t+iWV7/t55bQiaZ2nPTh/CLhAR94JLSIUKw8rnLksI6X8CZZwRcZ8Vv0QP9nnwSRInzYrJB8zMgaRojH/W7vRN59JYsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BcNFH8lxMM5f9IlMzf7aBqPV/bS8BCowi7Fmm2TBJQA=;
 b=fbAvTI0u+MunLq3v9WfXANLXIAr8Xqamnd9Ufvj72HVzRi+gDFhTzHTj4wc1Nx/xFRTp/tK8LcQigL5AtifyQADnXf0dsjPNmAvUy+v3xTa/Ftlqtbb4E/MVE23Ynh0pd2Wyy/y/JOLc2SEDOkGD1GxvBd/ajTk0mTN4w0X/SYaluluA5mr2r/DG0FDduWPL/dDw8RXljSVP63Zmb+8J+VURNg6M8Ue+FOQ1Elc3qFCSmvz+HR/NkHZHIUUisKxsmPgbpY8g++gsj7c0Jof9FPZlrgFuyoXUSpeh+c8tmutgkK7dLzDvEPIDtEte8qv2vG5JsHyx8YCG7tiw/MVBiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by MW5PR11MB5859.namprd11.prod.outlook.com (2603:10b6:303:19e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Fri, 1 Aug
 2025 09:49:06 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8989.010; Fri, 1 Aug 2025
 09:49:06 +0000
Date: Fri, 1 Aug 2025 09:49:01 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <krzysztof.karas@intel.com>,
 <andi.shyti@linux.intel.com>, <ville.syrjala@linux.intel.com>,
 <sebastian.brzezinka@intel.com>
CC: <krzysztof.karas@intel.com>, <andi.shyti@linux.intel.com>,
 <ville.syrjala@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: [PATCH 2/3] drm/i915/gt: Relocate Gen7 context-specific workarounds
Message-ID: <0c2cbd5cbcda14938954cad2382d8e030646c50e.1754041191.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <cover.1754041191.git.sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1754041191.git.sebastian.brzezinka@intel.com>
X-ClientProxiedBy: DU2PR04CA0308.eurprd04.prod.outlook.com
 (2603:10a6:10:2b5::13) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|MW5PR11MB5859:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ab966bf-e3dd-45f1-6be5-08ddd0e0a7ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RDRablpyNGZIYzJEd0VvRXhHa1FlWnhVdTJIUEZERncvSHFFbzlyWW9PQXdN?=
 =?utf-8?B?d0JBMUJ2UFZzVE9lcFNzd1dXZlZOVUt1cCtndjVvNVAyOVJuMzBrK3k0RmxK?=
 =?utf-8?B?QkNZMVNzUCtVYjNEOXZpM1lreHYwalViRW1DTUl1cEJIdDFhN2JRWlZlb2FR?=
 =?utf-8?B?US9sVHgvQVdTallyeThNVmNTeUw2RHQ0MXhjQmRtRTA3cXJCcDZCRDFxTFkr?=
 =?utf-8?B?SGloZ3RnMDFIeE9WV0NrQ005Y0M0bkNUcnNqWS84OWp6NXhjdjQ3MTZDRDdn?=
 =?utf-8?B?Mm5PQUNTbGlYM0NyTklwMW5kTlFYdDVybmlmK3VXeVRPYTBhUlZHNEdFMStK?=
 =?utf-8?B?b1hlM3FjbTAxNEJXVjhTZmk5UjJaUlh3dGxmU0EycnhRWTJCMWxtU3VXdEZV?=
 =?utf-8?B?eGlSaG1kTE50aFZWL084eW4yYlIzVklabGMzam5XNDhMNFJMQ21zTjlhQjdx?=
 =?utf-8?B?RUlkWGcrZG5FRjJlVWhzc0hsbXltVXhVclc0T3VoN3NoOUdqY0VCajlnK243?=
 =?utf-8?B?dHMzWklhY0xRS1FUK3Q4KzVCVllBeWJ2YUVFbk9KbmQ0eis5WFI5ZEdDY2Ns?=
 =?utf-8?B?V01HS1JCQlZuaGFXcktTbk5nUnZrSnpWYkJ4bkNwZkRjWDdHSkQxZHlxYnMr?=
 =?utf-8?B?YkVFWVBrYkczOGMrNUVXM2YySWNKK05LV3c0OVgvNTRaZnBzSVRPamU0WkVv?=
 =?utf-8?B?SmpxdjNBVG05dGJlR3p5dUJSZkNPcG8zVFFKVnFjVWxvbVoyVWVVaXB6ZTNE?=
 =?utf-8?B?SHNNaVFBUXZYRXF6blE3VWMwTzBMKzlMV2p0OXN0M1g0OTBHazR4bVFUQWVl?=
 =?utf-8?B?S2lqM3BlcWZnM2liU1FURVE0MEhhcTlxSHo3eGROT0NheDFqbDM0QWxvTG00?=
 =?utf-8?B?ejBsWkx0NkdidytTOW9yOVRWTzdpb1JoUjJ4SVRCZkQvbWhnLzFGcEZuK0Rt?=
 =?utf-8?B?cEFWaE12d3M2amFoazFZNlJBL1l5NS9oUFA3M3RHc3FaYjdjVjgweThsT1Jw?=
 =?utf-8?B?YTMrSjRYQmdjR3BnbjVWUFV2c3d5cjhNaHlNenFiTlRXV1c2bHVWUmo1QlMw?=
 =?utf-8?B?VUt5R2w3T05CQzVDK2crc05CMVM1TmRiM1dhdWdRejJFbSt0Y3FQMFFsYW51?=
 =?utf-8?B?SHdpb3kvSWFjbDJiTkV3VldQemZSenc4MFBna2Fzd1JmVmFnK0FyK2F5RTl0?=
 =?utf-8?B?S3dCcTZtUjhDZ3lMVU5ZR1dKRjVQWnVsWW9PQW9Sc0sySUJNSkxpaWtWYmx0?=
 =?utf-8?B?T0NyZTB2bEdxNzFTMVhyT3FXcVdnOXFLT01Wby9yUjcrWU9FcDBycG9OZWZj?=
 =?utf-8?B?MkFxM0pjRVMwRFkvOTFzVy8yQjRyejhMUmxrdDZ0eGpUUjVqK0VYbHd0aWJt?=
 =?utf-8?B?U3c1aVQyRjRwcDFMUWJPWXpTNzVzQ0ZaRFNRcGR3UDVucFh5dDZEcFNYRlRt?=
 =?utf-8?B?STNJOFRWYjlsVjZlNkdtcUJiU2g4bitCT0JlRUJFYndGYjY2RGdDQnl4dmY4?=
 =?utf-8?B?WVl0K0JFaDJGS0hGRzBjTFl4V0VMNDh3R1RFT20vemhLckZjUWV3NTdqd21D?=
 =?utf-8?B?Zmp5L0xNS3FpR0dOOXdWb0xvWXdnV2lSVXFwWHlhSFZWSk42d0tySTdnNTdK?=
 =?utf-8?B?QTJ5V1hwcmhHNVc0N1BxeVp6NFhqRnZheVBqbWJZZ1oxTmFUMUgrVkFNYmRx?=
 =?utf-8?B?QUxwbGlDOVJqdCtXVWpGME5vV1EvYzdiMU1veVBYcVp3NFVIc0x2TG1LUzJM?=
 =?utf-8?B?VGFXTGtXRWVLSEErZU5Kdk5YVjVvMDloK29JRUJOdW1ZYllQclUrY2FtMGVM?=
 =?utf-8?B?Qk0vNjRoVkJQbWdjVjVtZXBTQVZseW93c2pOaVQ5akpJL2RrUlNFWHpSRFlC?=
 =?utf-8?B?cXg1M09wVk9JWmwzYW5DaGhSRW9HQXlGb0s5N3VtVUo4T0t4MlVMWVkvZnB3?=
 =?utf-8?Q?JB3e1V5EzXk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkRocTFEQUV5QVlHc2gvSFZZRGVJRitIdTdmNEtBajQ2bzBXUDhmOGdOVnRY?=
 =?utf-8?B?ODRhTXU1NDhWcXNVckV2Q2l1MDZkKy8zQWRkZzA0VUpzT2N0MDZWa3BHQzdT?=
 =?utf-8?B?ekJqTW9kdjhPQzF2aTZHT05ZWGNIKzBrTG5YdUhtTFZmT2Zqd2F6S21VT1Jq?=
 =?utf-8?B?YnFQMm9XZ0diQUhndE15bDlyYWFGQlB5NisyVEUxVG1OQnZIbkc1QUdZRlB3?=
 =?utf-8?B?aXRVVXJyT1VyOWIwbmRKcHVJUjhBc1NCUlI0ZkdjYzlKdXRwekRzbmVCK2ZT?=
 =?utf-8?B?amM1TWxrMFhEYVljU3B6cUxYT3ppQ2lTbkxuV1paN1k3N09MQ2gwaFpvaVZN?=
 =?utf-8?B?QXRsVUZYU1dta0YzTmtRLzFOWnF5am1xVk9IV3puc293ZGpJOTg1alYrcXhZ?=
 =?utf-8?B?b1h3eGhIWWppMXFPc1ZiM240bjE0NjFRVTYwT1R5R2R0UUlZOFdPdXB1Qlpv?=
 =?utf-8?B?ZlBKQVpMeERnb0s5N1FMTm9TdHlkM2FlbWN1ZjQ1SnlPaDdOZUtqZGYwbVhX?=
 =?utf-8?B?TkQvTUVHaEk4Nm82c3AxRDZqdUJSMXFCVVpDcUNDRVkxbUh5aUxuV1htZGpQ?=
 =?utf-8?B?VmtIZlZPOW1EZnQwVmhXQzVpZW00aUx5amE0WDhrYlJEUU5BdHc4R2U5SHFn?=
 =?utf-8?B?TVdJYXpWYW51b2tNa1p6Mk4xRW1yQ0RwU1h3RTI2SmUvcHlsc2EwcC9WNXE1?=
 =?utf-8?B?MG90NGtrTkNkNDRGNXkzMDk4OHpUN1BIekc2ajhIWVBuMGxmWGlSY01RVU5E?=
 =?utf-8?B?Tzg2d1lZSEJuVVlCbkFGeityTkJmTnZrRzRYK3hxWnM0UmE2S2FoTUdVZEtk?=
 =?utf-8?B?Qjk3Wmc0UU0xNHEwZU9YZmJTWkxyMHhZalJYazM2Uk5kUzR3OTVVNjJteWZN?=
 =?utf-8?B?OFZIdGRxa3Y0M3FWd3piamkyaXdGNnN0amdUV2pNNzY0OEw4aVpnTXpvRTMy?=
 =?utf-8?B?YndldzRlZThqdEErbU93MWVwUHVTWlZTREdISUoxYnpWOUJSa1k3VWpISTN4?=
 =?utf-8?B?ZCtJL3AwMFFVQ1dKS2RzOS93ZW5PN2dXeEhDMXFjalhMamh1S0xULzBtYXA5?=
 =?utf-8?B?TlJKSkJCSHUvRkRHMFBXRjBMTjBXcnpzM0hacGRYQXlEK0xKQmJ0Z3Zhb3Fq?=
 =?utf-8?B?UG5nb1R5dmpXZ2xXenFCR016aDcxL2ZKVG10ZFNBS0ZzcDZvajE2ajRtMGxw?=
 =?utf-8?B?bU54OS93M0Mvd01rcUpFcklWQjVpVS84Yy9HbklsaWhmWHpDdldJNFN4WUdK?=
 =?utf-8?B?RVdXS2E3UE5JNVhsakpXd29kSFVrcXdJN281aExkQTVjYlU4TjdPc09DejRV?=
 =?utf-8?B?cGl6T1ZtYmZkT1BJa3dJS2QvVHN0amxYVnBEOWtvVVZvKzhFc0RXWS94L0Vt?=
 =?utf-8?B?Yk9ja2pKVWdrWUZtZkhTRVg1V0tnaHl6b2M1U1JaL2N2WFJ0Zk5oRDU0UlZ1?=
 =?utf-8?B?K3QyWFlWMnk4YlFnM3JuVGkyeGZqNEVuL1oxK0lFUk10T0NMN2p6WVZDQnZN?=
 =?utf-8?B?WWVEKzlaRUhHK2ZCMjJkRzZ1WFExckY2T09mTE5FcU0zaU9ScXNmbkduQUpw?=
 =?utf-8?B?amFoRWg0cmxxc0hVSWJubDNGbGxMQ1NpNERVZnF3QXpLNDRrSDNtd2ZCaUk0?=
 =?utf-8?B?Ym84U0svMk4xMWtwcitOSE9yQkRicmdNODk5YkhXSVNWMDlxenBsbmprVFBJ?=
 =?utf-8?B?eEU5KzZZQjN4aVBTeDBxblFYdTFHTzFtN0g1SlM5RUgwQllpUHdVNU8xNFhy?=
 =?utf-8?B?dCsrTEFpd0paU0g2MXRYZVA1NFI3QW1QckFFZmp3OE1VS1hhNjdJbUhYYUlB?=
 =?utf-8?B?ZHVGdVltc0hycm9INzhyc3pFck11M0RtZnRMUWw5dzlBa09CWWh5cVI5U1A2?=
 =?utf-8?B?enFaWSt6ajAvc1BVRmdhckdrWHRRZEluS3lZeUlwME4yRk94SHFoWGZycGJu?=
 =?utf-8?B?NjY1VmdiaENCQTdqekZrNnFNK1NHeUJGbkdaSTBpWm9DS0xDekxpVmdQMDc3?=
 =?utf-8?B?QlowdkhIcjFiUWExRTBaOW9xL0NSNmowcUJwRC9adnVhcS9hVEFpanhTMkp1?=
 =?utf-8?B?UUZHci9Wcmw3V0g2SFJZWU9RUDdQTEFsYkFnWGNjWjVQeUZCdGVzcU9SWUlU?=
 =?utf-8?B?c25wK3pBR0tMbGZsZ0pVTUJLbU5PYW5XdC9BN1M5bk05UHYrZ2hmaE13c25R?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ab966bf-e3dd-45f1-6be5-08ddd0e0a7ca
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 09:49:06.4310 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VzZyufa7bl11F7V6Iavaia1GEJBdVyqRmq5+yXRstbjyzfgaak2EZdEVves15PCQYRiAnk7I6V+BscbLE6PZr3ImpjvCZZ62WkDtxXOQmok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5859
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

The workarounds for disabling Render Cache Operational Flush and
PIXEL_SUBSPAN_COLLECT_OPT_DISABLE were previously applied in
rcs_engine_wa_init(). These are specific to Gen7 platforms
so move them to gen7_ctx_workarounds_init() for better alignment with
platform-specific initialization.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 23 ++++++++++-----------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 79298618cda6..c4f364a29724 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -343,6 +343,17 @@ static void gen7_ctx_workarounds_init(struct intel_engine_cs *engine,
 				      struct i915_wa_list *wal)
 {
 	wa_masked_en(wal, INSTPM, INSTPM_FORCE_ORDERING);
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
@@ -2567,18 +2578,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
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
-- 
2.34.1

