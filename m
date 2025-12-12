Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8036ACB988C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 19:17:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F6810E925;
	Fri, 12 Dec 2025 18:17:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ESbk5j6x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A890610E0C7;
 Fri, 12 Dec 2025 18:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765563464; x=1797099464;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Xpf0rtkjiDc54rGz+yejQNAc3UN6V/PVV1RFwqATuyc=;
 b=ESbk5j6xHLEm11gVUGrs8VUup06AEQ2auhxsGSGhwbSJCg8kRx0w0HGJ
 NcYVOf6WPLaABlaH0h7z5EO79dPmDsdRN2HnTiZtOYbbFEx5mpRLn7PQy
 R+EsTTgmK/7DvwlLAAfR5xmaI4qXovvOxpVjz3ogsByyuXLVXEZDTbXyC
 RZEG39aY+/EhYZGQv4D68O3SmLFNd4X6DiVkhlyd9h9eJnDdn8e072fkP
 nlQQEaI6NfLupnuMeSa9RenZnxSe/f5ksQ+YqnFzxYlF2J8H9tZtIXQuM
 H47rhBB+H+ET3w/psMcr3Y5KplXIjWYKlOdrjdFmbd4h41ynURAvVdsuK Q==;
X-CSE-ConnectionGUID: hpLQhtUaTCuGonn7JZw+rw==
X-CSE-MsgGUID: xggJxuuySz+iSU2k9ykKkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="78688454"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="78688454"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 10:17:44 -0800
X-CSE-ConnectionGUID: Dvj+8K7tSDe8XU+MLpdQbg==
X-CSE-MsgGUID: g6zpIF+mSD+mLmkZ1wQxNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="227815246"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 10:17:44 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 10:17:43 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 10:17:43 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.9) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 10:17:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wZC7PP7L4kpIBl4dCZm3UWgDhLxDDaaDQG/EQtzwloX+5GumfR1U2Iql0AAzwhR4vCskOchZYa4Yj3NfiokVTU6SdYReWork6S7OXdVlklNaQzdhxFb3NbrqUbqlMEfANP8HimYIxI4OYchKaXwxJ9XVUWwfjwYZ6CnvcY0bAdjLXikTkEg50863aBIUloI42UomPd50LN43Rvlt0RmZqbFogskJ+3n0sGSpvurqmenTIn/IAVG82Yi/8vBUJaJIPZkMjTFS+BxzYndVGlB9yjKEIVblXjchViFv2z7lAbMSLlLQbO9B5G8oNGuBDs9tE1ZMHvcBCam6YNp0O9+qFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aF8768Wq5F7DEQa2atJeea85LTBiqemDhQI3lNcEluc=;
 b=SHVi31JpfbnHHPtdzC+hVtpB+VOFYk4NoxbnQ1y1O/Y3e4oXvzFVqdCuevhnjlcag8LHHd5Bk0E+PJQKZn8rtZMqaBV1kQzMF8C509aUyoD8EFL790O89+jj1D5256UsDiIyYfx6vqJcJRSEzl70KbPF26JcQ7dAfT27CUL853ohu9f8fWr7/O+ChrUsBRdpRAkQHE/CLds8+n1z+OEhTuwDdHsJgV9QV6JU3lHOlWSr8XViAor0Frus28bApCoMGCzI7JX+Nf+xTe5SN9i9mFbVtHLKiUZKoz619KGgef7RZdJkSIA9ILra2/gfGIbVT8zUvuX6dT1RyHkEqqOWmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 18:17:39 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd%2]) with mapi id 15.20.9412.011; Fri, 12 Dec 2025
 18:17:39 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 50/50] drm/i915/dp: Use intel_dp_dsc_get_slice_config()
Date: Fri, 12 Dec 2025 20:17:02 +0200
Message-ID: <20251212181702.1906312-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-51-imre.deak@intel.com>
References: <20251127175023.1522538-51-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0505.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:272::15) To PH0PR11MB4840.namprd11.prod.outlook.com
 (2603:10b6:510:43::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|CO1PR11MB5059:EE_
X-MS-Office365-Filtering-Correlation-Id: 17d5e366-b449-420c-37ca-08de39aabb1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eUdpaEJoNXRBWlZua25Ra3dobEpDNW1QVFdlM0pwRk95ek5hR0NRVXlROTho?=
 =?utf-8?B?SWpvN29yNlJCUndKZmNKVWladloxTFlQSmVLdDUxam9pUVBaVGppODAxaW9P?=
 =?utf-8?B?blgzVzF4QnJieFJwMjcyeDg4N1FGWXJ4amZzd2NLdFgwcWE0L2p4YUpsdVJy?=
 =?utf-8?B?MGlSdldybnprOG5mWU5JdW5Bd3YzMEo3a01TZXNRL3VXOUdVMWVGVUljaURE?=
 =?utf-8?B?MGFLQnVvNnpNa2lwazl0cENoZlpaVE5FTmFucjlOa095d091UVJTTkZjc1RL?=
 =?utf-8?B?N0pkOFNNSFloWVFtT2VqU1ZrV0dnZEhkU1JnYjlvZWUrN2ozb3doMTRlb0pF?=
 =?utf-8?B?Z01WVDFVbFYxZUFkSTJvS0tDT01KT28xeXJlbEQ4azduMjNQVy8xZnVXRVYr?=
 =?utf-8?B?VmliZUV1cTV1YnN5TCtFck44a1QwSEZ3czhld1h6QlVTaGJBTldaOVdPQlJr?=
 =?utf-8?B?RXg4QmgrYWVDaXpTTG14eGE2Z3Y4ZGx3Zi9TZ0VTWVR5ZlRLRHNSbnhFazZk?=
 =?utf-8?B?SnBYWEkycmRCcllmWHQ4ODFJTTNGTnNRMUlxQWRTQ0VyUnNuUm9LcUIyZ3NX?=
 =?utf-8?B?Mzhpa1JobmpaQ256SDY0VW01OU5VQm5CWUtpR1ZPY1NLSW02bGhYUkxPUk9S?=
 =?utf-8?B?d053SUJFSy9xajZPNzAraURhZ2FqQVhBRG9QdC9rQXgrS0ZVUHJWTW5jL1ha?=
 =?utf-8?B?c1crcEhGbXdMWXpyQTczL2cxRlcwY1FGRm9ueklPZ0x6aTNRSS9SeWlLRi9V?=
 =?utf-8?B?SStlRk1HTFdDWnRPOGhwMlI3RVczSzZvK0RHckN5ZWFqc2hXR1pvTWVIbVdN?=
 =?utf-8?B?bUtmdUF0WmdpNW5pQTZsMkZxQmZyWWdlQnZFcWttVDQ0M1M0Y0ZGQzJSY1kz?=
 =?utf-8?B?YlNoWk8yWDJRRStCSUtGMUpjemZ3TVAyUmxWUUFaOUxmRnI5cmJHMjZIS0lU?=
 =?utf-8?B?M1NCZm1oY3lZUkV1Y0ErTnhUc0RjSThBZkJzRUtXQlgrRW0xWnlQbjEwczVD?=
 =?utf-8?B?QlVPK1pWZWNzUVFXMDFzbG04TXcyUkk2WEFQWk1uZE5BQXJTVEhkazJPQ2pY?=
 =?utf-8?B?YVAvaWcvWGRvbnZobW9XcGx1UjJkNzNkVjU5Ni9GRllBV2FjU2VPeGRYRzlW?=
 =?utf-8?B?VVJTOVlHeitlcVNhaDJjU0FHQWFtQTVLTUhGVHpEYXJuL0lUSld4Sm9qMHlJ?=
 =?utf-8?B?WFR0TGN2cm5qUmhqUXRtTjlSUWZiS3J4QVIwaDA1R1FYUnlsSHZwb1lLekgr?=
 =?utf-8?B?WE9BcEtEbnBiZm4zNVJMbmJvRXpMT01rMGQ3SnllMDFHT0N0dWkxK2dxQ2lT?=
 =?utf-8?B?TW1ZZHQxQkFVc0o0ZStpQk1GbThtMmhua09STE8rM28yL3JocDVBbFhMYkpM?=
 =?utf-8?B?ejBFenRPTU43ekdVSUZQQ2JTbDExQUtVQ2pmRlJqWnBSZTArVEJLcE50NHFU?=
 =?utf-8?B?Q3R5M2xIQU44TlBzSTBRUlJ0Wlh1MHdFWFlYbnc1TVBsNjV4UjZ4UUcyU3hQ?=
 =?utf-8?B?dFBFQTQrc3MwaVpkNU00eVEwTlo3SEFvcktUTU1TOUVsNjBxaGtad1I0WlZp?=
 =?utf-8?B?UzdmMVp4eUYzcHJuc1E2cmNtV1FCenUxSmdaVTVsZFBUV3ltaVJwQXRCKytu?=
 =?utf-8?B?aFhNVVo5bUpaTWZsMjAydVFzdVdsTGdOUFFKMXZZalcrYjRvQVpSQkwyNGlU?=
 =?utf-8?B?c0FpWFhqWXptMk1zNUR5NFkrWGtRaVZuS1RSMFZObE90ZHZTMWNTbWNlVnE0?=
 =?utf-8?B?WTJGQiszSVJvb1BqNDVKaVdhQWFIcXB1cVpFeU1PMnZrb0hiSGx6VS9tamNM?=
 =?utf-8?B?WjFHRnBUNWdLSHNYTHBVK2IreHJJaXQra1NFcXZ0a1NkSXEweFJ4KzRSTGpP?=
 =?utf-8?B?Rm1QMVMyOUZQdk1UTHNwaDR4VFdrWGdFTXlTcFRGN0ZZYWhKZjh1ZTl4ekV6?=
 =?utf-8?Q?DCeeQAIX1aeLeiD5ur7YNCLenA+GJv8r?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFN3QWo3aFE0VEZWUnlydmRmV1ZsbnZ1OEpqRTRrS2QwSjVYU0tBMzl5S3hT?=
 =?utf-8?B?bVAvN0hOUktyVHd2TnZaV0FzUE5yYURQQm4wUW1Qdmh5eFFRYWpXclg5RjFr?=
 =?utf-8?B?d0VzNWFvMThmRGpUU1RtTTcxenMzZGxwUmNQcHo2NFFZakdnNll5cXRPRi8r?=
 =?utf-8?B?OE5LOUIwaUY1ay9YQjU3dnpXcVdWQWc4cVhRNzZINkg5bk1ZdDF6RjhUR0R4?=
 =?utf-8?B?Z2F1dE90UkQzUlIzSmFPMmRNUGp5VFJyT1J3UmpSamZtblFEbk1nV0V0T2VN?=
 =?utf-8?B?YnNGaERTZ045Y1VMMDRvSHdiSW5qOUJGelRkVlNmT0R4Z0lTQUhyWXNJZWgx?=
 =?utf-8?B?bzdEU1FZR3NRbTBCamozQk9CNzFKRWNBODluOEdnb1JXTS9ZeXBHdXVWS2VU?=
 =?utf-8?B?Y2RKSDRLZGp4M3V2cUQ5cHVGeGtXK3l3OU0xQUVPNGJNamlNeFQ1Q0FzUS9X?=
 =?utf-8?B?Q282VW9QOFF2VHZiaHNCanAwRFN6K2d5Tm9XRE96b3oxMzllVEtXUzVFSnpi?=
 =?utf-8?B?TnVrbWpHQjdXeFU5UzBSUDNhZld3VDdQL0VmK0ErL3dLaVJVQ3lyV0I1TmVy?=
 =?utf-8?B?UkZIY2RTUkYrbHlTK0d1QVlwSGQxWVIwT0FVZnRpV1ZBU212K25lQWFuZ0xy?=
 =?utf-8?B?R01YWGhrbTVYUHNKcDNUUHJDOVJRQ09wNDg2MHFVaHJIZGlUNVZ3LzluQ0N6?=
 =?utf-8?B?V3Q4L1dRMFJnS0YrTnFLaHlSdmhQVXk5b1ZpT0wwbTNxd3FhelEyeENGRkFL?=
 =?utf-8?B?M241cEd1aXR6Mk5YZzJuRFl4V3lEQWRLd1hMUjRORGt1TWZMc1BTY29xdHRT?=
 =?utf-8?B?K3FwVjJxL2JPR21vb0JYWThQS1NKZWxUWFBCbm5kZm8xZFhYVVQ4cFlFR2RT?=
 =?utf-8?B?b2ljSjJVcFQwMCtiUFFrdDlHSmhnaW40VGcwUnJBNUwrSEFVQzdEa3JBY3c2?=
 =?utf-8?B?WXpqMVJZYXNvR0hsZ2lSUUhQL29FMi93ZnB6NFpWQVdMRGcwWkhIS3VBV1Rk?=
 =?utf-8?B?TjdDaGJRaHYyT1FIeURLdVlEbm9QUkdqQ0NYL0dtS1hZSElJcnlldThxMmd2?=
 =?utf-8?B?NDdGemEyVWV6ZGVHTDZjN1ozRm1Oc1FtbUJGcEwwSENKOE9EVTd0U0xCR0FC?=
 =?utf-8?B?MHZjeFF5VU1aZDc3OE1QTGpPNnk5QUVpdzAzWnA3dERhZGltZ093ZUNXblNQ?=
 =?utf-8?B?TElVdHJxVUZNODdtMVIwaVQ1MGdIbXZKYUZNOVlBUDg5K2l5aTE5ZVE1eGdP?=
 =?utf-8?B?RWNWWnFYbnlEZWQ4SVVnYVhXa1MxemNialNBZUwzNjYrb0M2eVJKQkRxMC9t?=
 =?utf-8?B?NldjK21RMmUyRHRWOGJhVUdMdjdnSk5jSHRMSjRZd0x2SkxucUt2NXRDMHJs?=
 =?utf-8?B?MytGOWZVcGJ0L1pWc2VNcTlwaUJyRjdIMHFCbFl6ZHNTU1lWYnAxV1FNQys4?=
 =?utf-8?B?YTFEbGd5UTNPZjJJM0pvOGJXY2pyK0REaHh1SHJhMHYyMG1SN3puSnpVSzA0?=
 =?utf-8?B?WjFKQlJBZnZLcTgzV3dTanlkdG9XZU9TN2FWMFBWeXdXNzdsVmJKSGYvSVNo?=
 =?utf-8?B?RTA5Q0hQSjFLWmRDWU1EeWRxMjdiejR3bjVvVzRIMUNLYTNsM1ZTMDJvTFFJ?=
 =?utf-8?B?T0VsOWxKSlYrQzZWRENvK2RxRlB4aWhENHpuWjJPc2hkN01uck9xeWdMQWFJ?=
 =?utf-8?B?T1JQY3VwNVZyWWsxR3UrV1I0dEFQRjRFSytBOFVYSy9ieVBNTDhMcVZ4b3Bw?=
 =?utf-8?B?UmNXVlJ6aS9XbmNWc0E2WVpENzBYdklHYzk5SE4rU3NmODFBMnYxS1pPOWpB?=
 =?utf-8?B?V2x2UUl1cFI1bVJ0NVdudEhnc2FlaWdsejgycllZbUdtTVNyOExRRkNpdGJh?=
 =?utf-8?B?R2tPVW5QOC8zRHgyZ2hpRWZtZmhyMGx1c044NkhqTWVKY09hVEorbTd4TGJT?=
 =?utf-8?B?SGNmSUVjZXpxMGhoVkRGMWpYK3doRitwNHdGSkRia2RkVXJybW1vWitibVB2?=
 =?utf-8?B?REo1WDkzZTRGbTg0TWR5ZFlsU1JuemF4NlMxWkNqNjdZNGo0bTROQ1ZTVExw?=
 =?utf-8?B?NW1Ma3NVcnFldVR1NzdscnpqU29zcytzNk5SYTBZVnpFc0NIVXV3OGZkTVZ5?=
 =?utf-8?B?QTh0VlNldTlDQWVWV2JoOHBzdWtzZjIvbVQvRGhvQ3JnWFVGMExIMUppdHdr?=
 =?utf-8?Q?/BrCU/LIGmfNfTEc8k0hZNpKPonNCm8WRPzs8MZkBsGd?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17d5e366-b449-420c-37ca-08de39aabb1e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4840.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 18:17:38.2473 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KJ/h3T5eYXv/d0ZfPB/Z8YbiJ45E+vPCKZLNFTlxDy/zF8ABF55fvB6azAwrp+dgn2szxROaKo+RQBueybOY9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
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

Simplify things by computing the detailed slice configuration using
intel_dp_dsc_get_slice_config(), instead of open-coding the same.

While at it add a TODO comment to intel_dp_dsc_compute_config() to
explore if it's worth increasing the number of VDSC stream engines used,
in order to reduce the minimum CDCLK required.

v2: Add a TODO comment to intel_dp_dsc_compute_config() to explore if
    it's worth increasing the number of slices in order to use a lower
    CDCLK. (Jouni)

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 41 ++++++-------------------
 1 file changed, 9 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1808020877d19..61b996616f9e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1040,6 +1040,12 @@ intel_dp_dsc_get_slice_config(const struct intel_connector *connector,
 	 * ICL:  2x2
 	 * BMG:  2x2, or for ultrajoined 4 pipes: 3x1
 	 * TGL+: 2x4 (TODO: Add support for this)
+	 *
+	 * TODO: Explore if it's worth increasing the number of slices (from 1
+	 * to 2 or 3), so that multiple VDSC engines can be used, thus
+	 * reducing the minimum CDCLK requirement, which in turn is determined
+	 * by the 1 pixel per clock VDSC engine throughput in
+	 * intel_vdsc_min_cdclk().
 	 */
 	for (slices_per_pipe = 1; slices_per_pipe <= 4; slices_per_pipe++) {
 		struct intel_dsc_slice_config config;
@@ -2387,7 +2393,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		&pipe_config->hw.adjusted_mode;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	bool is_mst = intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST);
-	int slices_per_line;
 	int ret;
 
 	/*
@@ -2413,39 +2418,11 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		}
 	}
 
-	/* Calculate Slice count */
-	slices_per_line = intel_dp_dsc_get_slice_count(connector,
-						       adjusted_mode->crtc_clock,
-						       adjusted_mode->crtc_hdisplay,
-						       num_joined_pipes);
-	if (!slices_per_line)
+	if (!intel_dp_dsc_get_slice_config(connector, adjusted_mode->crtc_clock,
+					   adjusted_mode->crtc_hdisplay, num_joined_pipes,
+					   &pipe_config->dsc.slice_config))
 		return -EINVAL;
 
-	/*
-	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
-	 * is greater than the maximum Cdclock and if slice count is even
-	 * then we need to use 2 VDSC instances.
-	 * In case of Ultrajoiner along with 12 slices we need to use 3
-	 * VDSC instances.
-	 */
-	pipe_config->dsc.slice_config.pipes_per_line = num_joined_pipes;
-
-	if (pipe_config->joiner_pipes && num_joined_pipes == 4 &&
-	    slices_per_line == 12)
-		pipe_config->dsc.slice_config.streams_per_pipe = 3;
-	else if (pipe_config->joiner_pipes || slices_per_line > 1)
-		pipe_config->dsc.slice_config.streams_per_pipe = 2;
-	else
-		pipe_config->dsc.slice_config.streams_per_pipe = 1;
-
-	pipe_config->dsc.slice_config.slices_per_stream =
-		slices_per_line /
-		pipe_config->dsc.slice_config.pipes_per_line /
-		pipe_config->dsc.slice_config.streams_per_pipe;
-
-	drm_WARN_ON(display->drm,
-		    intel_dsc_line_slice_count(&pipe_config->dsc.slice_config) != slices_per_line);
-
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
 		drm_dbg_kms(display->drm,
-- 
2.49.1

