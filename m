Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBEODsUSc2lksAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 07:18:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8595E70CFC
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 07:18:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0158F10E9B9;
	Fri, 23 Jan 2026 06:18:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L+tql5T2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95E3210E10A;
 Fri, 23 Jan 2026 06:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769149121; x=1800685121;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+tf4wKDEi9YVtDZql7ljjFNoYnmXLGai6BT7EJc/dX8=;
 b=L+tql5T2vjt3bTwdmYx1JaLAIjXA1mHl1MyfR/B5vR9tjNaJrK6mjjig
 BjnGSbon4nrRWSXylhXAul2Td7Xkt1nvg0MuhJLDdlMovvgB8Vx8OySXm
 kbE7dh+MXKPToglpNbQiwTz8uoLg8l1OatkhcLRCkU1FEfXi5woUnRjbs
 gqD07gh7Oha3u0sgEfmHrdxkzzoB3qNg/sp1FnlJnNszCoCvQ5a+h0X9M
 uEqbRk5f9y8OBAypockKlSrd4c3/UmzAGfRUD+aajqxgVTi/cSYLZVBEi
 GwveWxM1sWJ2vaWwdHEUGHtrYMxa/520mLerXLnCPNqZjDSw4ij2karvG g==;
X-CSE-ConnectionGUID: j5795kUWQauZQQm/BGU3Gw==
X-CSE-MsgGUID: 7WKSj6dkSASMUKGjA4RC8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="70122316"
X-IronPort-AV: E=Sophos;i="6.21,247,1763452800"; d="scan'208";a="70122316"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 22:18:41 -0800
X-CSE-ConnectionGUID: rarrIh38RJqP1Q1RczM9Rg==
X-CSE-MsgGUID: B2+MoKUCTXKb9wF3Ars+Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,247,1763452800"; d="scan'208";a="206987162"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 22:18:41 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 22:18:39 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 22:18:39 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.50) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 22:18:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WvPFsQo3DmAHiknoCqSu4MBXdQdXb6sk5+JbAZxOIBP7S5+u7vU0jvE9yI6boI/mOKCLMDiRSCM5gyGLYDpUljWwAXxiZ+/dLb3/j7HPwMx10bnkT+OdovuHEdyTgD8v4GeNF9Lyn798heCVF37tG5l3w7q+XG45lpAcHUaTgd6HKTIScORukbrC8ZS5Rbxr7t7LnC70KaGR0+TqMagL70nt0r21aRdjyno4lsYUjtdcc1x3rpEBGnVoPc3wn7hVsON1+lWDvYoRKMfnkVuMtf+EZBHPZ7xvohoB08Tl4bqKmqbz3EaeDU7/u5zjWA7/lBcITnCI7EvphSeFnp+48w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TGkC5Y9+yKeomj7ZX46G3XZMK868H66ANKRkol1LGl4=;
 b=gUfOIK7vp/5RMq2H35QhRKcy9xvyDn6p9ABDVTLGgSWFpcuIUqLXplYBTWV4q/7HxfMgtgCPO0kGUwVZeOrW+A+m9Lm8OfBk8WO+082fhAog2GnVGQNWynF9hdIG+4+j9DV8NcAVfbdHkbMAy8ehpSJGcn47z2I/w2JKPIjR1vsjWgjptETq8G3UnvqQ+xuf5T5IHSebcEGUE4jy8Oyz3y6DMfdvRsZ4448KO3yEy0UNFKxjFsJh75dAOCIlA7mHvuSrvRse/k9iAFrXypVO4/nniYoHYZoe3aGv5XgfWNoeqTP3sIIcZxc6gZHjpEpXvdR3B6OCLe5SAGaOo8hcXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7467.namprd11.prod.outlook.com (2603:10b6:806:34f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 06:18:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 06:18:37 +0000
Message-ID: <fbbcdb2b-9e0f-49f0-bb81-fe8eea9f5422@intel.com>
Date: Fri, 23 Jan 2026 11:48:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 7/8] drm/i915/psr: Do PSR exit on frontbuffer flush on
 LunarLake and onwards
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
 <20251223105120.21505-8-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251223105120.21505-8-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0115.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::33) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7467:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ae9e2bb-8360-4d16-7181-08de5a473ebe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V0Izb1JSaHJNNUFvUjJQdnhtNjNQUjh4dStrZ245RTl2MENmM0NRNWhKeWVo?=
 =?utf-8?B?ZHlwUXNlZituQTVUTXZneXNoUS9QMVBCa25mYTRIT1g0VndQa2NxUGZ2K1d5?=
 =?utf-8?B?MVpJRmtHSDJWNXkxNkZoeXBrZjFwcEs3SXhvWDdhaDFpYzZWYmZXLzBYejlt?=
 =?utf-8?B?UE8vQWJ0b1JJUnMrL0dydmtqWXhqajN6anBRZUJSc0dnbGRxSGljdmhTa25o?=
 =?utf-8?B?ZkdndlJuNm1nNE9sYjRWNWt0MG43ZWJwV0x0R0tJeFQ2OEFkakFGeW8vbHll?=
 =?utf-8?B?MTg5VElnNnpYY3JyTUhTNmF2a0tvT1hKTFJCN2lLbHozZU5OR1ArcXQrRmZ5?=
 =?utf-8?B?VXN2dEJJeVN5SlBsY3NUTXZzRDl6Kzl0V0xzRXBpOUM1bUU4dmxGQVZnNi9Q?=
 =?utf-8?B?T1g0cERmVkJRTjlrbDNSem54SU9DaXppbjk0QS9PRGttT1hoUWhMQS9oL1NY?=
 =?utf-8?B?amd1Z3JiQVhkbmJEQzRNam9JK1BQU1JHdllwd3RNQ2syQy9yMGF5a1dSR1FW?=
 =?utf-8?B?MnRHOTFmV1FzdUtWRlJla3E1ZjFtTXZHZXBSckJ5ZXFRdkErVWQzbldvMEM0?=
 =?utf-8?B?dnY3YitMMEZ3TEtlZmxLc1ZGMDVWUkVSaFN0d1BpL25LUXpTdDRHZEFNOVp5?=
 =?utf-8?B?djFMWUdrRzFqVmRaTmVrZkRsMjBkMXVOVTFqZWNOVDlOVW1LdG9penltazQ2?=
 =?utf-8?B?MmgzZWlsQjdPd00wUHpGaDJjRGtoMXd2TlE3WTNlQithYUg5amEwdHFUL2ls?=
 =?utf-8?B?QUxDWEROYUh1OUVrbzM3VE5RbGt5dkhERHAvWGhGZ2dlUk9veHAyQU1GLy8x?=
 =?utf-8?B?Y1ZpT2x6c2QybDkzQzNXeUtSSkYvMWVTSHVKb1Z0UzJ0RnBZOVZHUkZvWEh1?=
 =?utf-8?B?TXEyWUJGNW83dG4yUEVueDExZHFsN0JMUVZpaUcyOW95emZjYUd3dit1cE4y?=
 =?utf-8?B?YUs4Q1ZYU3JHbmkzejE5YkxjWGpXRkFoTE52Vmc4YnZ4Nm9NbGRnME5GT29z?=
 =?utf-8?B?emtubWFSTXp5ZWlGRkduQlM1amVDRUZSVmlMekJXc0l1QXQ3WHlRdEZnNUxR?=
 =?utf-8?B?ZzFSdjJPTi91cW5FL1dMUFNraHk5WndPZmpBWVFrTzdhZXVDc1dVSENwcHcz?=
 =?utf-8?B?am9pL1BlZ2dUdU92V3RwWVMwSmlscFRrTDdIbDdkWmRIZHZRdjNrbTdFWm1K?=
 =?utf-8?B?V1pCSmJ5MmJqUUo3RTg2S2RGYTA3V1QrbTR3K2diQXlZR2NZK05aREplR0hp?=
 =?utf-8?B?MEVadTNxL1Zicy9za0pwczg3ZjFBZjN1VU5HWWtoK3VEYThYRU9neXh4Qi9L?=
 =?utf-8?B?b2Q1NXlxSHJCZzBtNDIxdEVSK3djK0t4TzI1TFFvdHlIckc5WFpianBkVGdO?=
 =?utf-8?B?YTFGamN5dHpMZWF2bWFhRWJ4aFI5cXdXSy9PWmZrZmh2emFmSXlHSGpNTGhF?=
 =?utf-8?B?d3h2UUY2ZDN5TGdub3VmUks2aGNnb3FNa1lpUzUzVVBmSjJHcmwzQnhDay9Z?=
 =?utf-8?B?YWxLOW5McXNWaHFiTnhMa0w3cGJzcjUyanNHN25KZEt6Rk96YWE3L3lzTjl6?=
 =?utf-8?B?S0VkZndMT3IyNHpqd2lIK2hhV2NqZHJ6Vi9va3hhL0s1dzI1VStqcmpHQVRN?=
 =?utf-8?B?QmFNUTgzbkFBNngwT0lMTFZIbXNEa0hFOXU2M2pFTS9qVk1LK2Rhb3dIYTN1?=
 =?utf-8?B?WHUyTHY1NmYyYWplRHNRTTdNSUNrUkhiWWMwRzVIYUtsaGFEWWpncGVoRmlO?=
 =?utf-8?B?ZVFTYjVJY1ZBRlptYUdKYVlzM3RydmF0MnFQSUJwd1k5cmVmeitheGJNdXlt?=
 =?utf-8?B?NzRqS29KdXhRTUJ2M3dMUVpZayttRDhWTytGS1cwLzVIaXRFU0NUOW5Lak5G?=
 =?utf-8?B?bit1SXBvYTBmU1RwZzZ4UnkxVFo5TEJNRUtXOW1YbUVMcElPNFlkRk9HL0pL?=
 =?utf-8?B?N2U1VkI1TGFuVGhpMWg2MDBvcXhIV3VLYzhQOFBST1NiWno3T09Id0xpSXVa?=
 =?utf-8?B?dlNUellTbkdUOTA4Nzc0Wmw2ZWhEWHkxRzRwOUJtajJQS0U4Z3VTVGpPaXJS?=
 =?utf-8?B?NzRmZ0pRd1ZWb2I4VU1yY0FsVG0zOFRyWWdYdWJ6TlMzaVdlMVdTUEVDYU94?=
 =?utf-8?Q?7h4o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SElsc3pCYWY4OVpYR0U3ZVl2TXdmZk9MMmxsb2t2THJkcTE4dFp0aVplVU5a?=
 =?utf-8?B?RFgyY1hZc2tUZ3NkUEZMWlZ1bldjZExSTkFLUkJpZ1FaM0pxWVByRDhUTUZ6?=
 =?utf-8?B?eFBaTVVrK1g1cnRoN0gvdGtSNVFXWkovOW43aTEvSTNKa25XNGdZZlRRNlJQ?=
 =?utf-8?B?ZFlMZ2JMVlRCQXVmWEhBdjlEVFpLamtQN05hM1k0SUtjby8wN3laRUFMWThE?=
 =?utf-8?B?blhocTIyUElSRmFlSFcyMmI5V2ppZVAwNUQ3ZFhUR2JQRTBWU0Z5SGcwVkRl?=
 =?utf-8?B?cEg1Z2paM25CQnI3alQ2Q1pIQWN5aEExVGtuU0FoV0swN0E2K0FIeWdSRjR2?=
 =?utf-8?B?a2c3WFd2Z3FmYWVDNy93c0ZjSEU4VkRZcVhWWHNJbVE0c2lJV1VoVWxLeWNx?=
 =?utf-8?B?OXNRaTdIQnJGcS90RmRrcTFHNTFzbDdWV3pEY2tQSlQ4K0pUdHB1NDQrQ1h5?=
 =?utf-8?B?dktINnQxNzF5MldGWGVXUVlEWW11VE5aRDZGSC8yd2JtZWIzWDVTZkRUcHh4?=
 =?utf-8?B?Y0ViZXZTVFRIbHJMK010d2ZNUEdJWmdSOVBmbHdoU2hOWEdqMXBzL3FkaXNq?=
 =?utf-8?B?U3g3UlVwMEwxR2N0LzhDSzg5eC9XRHArK01IUTNpUjhwTnV0SGp4Z2FMWEFK?=
 =?utf-8?B?SElDd3dLV0dubFc1OGc3ek9JL3FwTU5CdFJjWjd3YzNlODFRQXVvTXdTdFp1?=
 =?utf-8?B?ZG5hQWpzaUtTMmFpckFyaktUS2FReXdXNWU4cWY4S1VSS1hOTkJmODBCVC9n?=
 =?utf-8?B?WFI0UUVvanR1SW9iTXp2N21sSnB5eElSRndycm5WUFUrSWlKZ0t4SllYd04y?=
 =?utf-8?B?WHAvSmptVzVZS2RLS1pMYXBXdTJwUDJjSkQ1eW9QNDV4NklXV1pLbHB2SkJu?=
 =?utf-8?B?bElUNDFZeEZ5a1NXZ2JOTzNDRDFKNmJ5dCs2Z3pJVlJ6TmFaNTg0ejlUZXd2?=
 =?utf-8?B?dlo0Y2IwYUpTV3VyTXFvTjY2SDU5eWRwdnBNc1hES3NHU2k3K3VhTkJvanpT?=
 =?utf-8?B?U1M2MEpkVFFab1d3OEVlNG1xUDV4Y2E5N2laNFZUUVdmVkdyYlJRZnZvZmZo?=
 =?utf-8?B?c05vNkxJNnQzQlpuV2xmWTRrWnRubnZUUGMzUGY0b2ZESlFDRWxPNCtGSGxW?=
 =?utf-8?B?c1IxdnRPZFR3eVVJWkhhc0RHMk9ZNEZRVVBKalZNYkMrRWJKMWpjNlFQeCsx?=
 =?utf-8?B?TmsrQStzWG5JQm1PQzF4T1VPQklCRWJDYm9Ba29jZ0E1S2JPRU5GWEU4STVy?=
 =?utf-8?B?UnJWWnBsdHUwM0NxSGROa2g4WHcvcmE1NkFOWjdvOXRNK2xGRmR4ZDNIUkhK?=
 =?utf-8?B?Y0lNWGJBTVA4UzFlbEgwc1VPYjg0TDdWYWMrY3pHYlNYVGFlV3FFcGRXMEFE?=
 =?utf-8?B?S0V5THpOZVNhdXBMc0lvd216aHBabVZ6RDMxUTZuUjU4YTFUeW1SaE1OaDhZ?=
 =?utf-8?B?alVFZmk1VUJOYTBPT0c0TTJtcFMvanM3UWVhcTNPNHdXRHRqSWFlMEo1UDlR?=
 =?utf-8?B?ZU9zVEtqa0srZG9kK1F1UTdlZkc2SUg1UHpDSnpneXYxeTJXdXZOSzdRV2RV?=
 =?utf-8?B?QjcvcnZXL3l2WFJUNlk3aDh2TGM3a3lYdk9DRXBNSlovczhEbndzUnhkVzQr?=
 =?utf-8?B?d0Q1QkdMUG9uWHFIaTV0bHlYbm1kK294SEhHZEF3T1NMYTFWSHN2ZEhwY2lP?=
 =?utf-8?B?QnBXeHgraTYrVUZzSlN6eWRKUEFyREVwaG5CMkxFWFhpM2FvSHpBRjlwZEsv?=
 =?utf-8?B?OVRvSFBtWlBHcFZNOFQzLzVDTEJnMno3b2ZhNDkvRngzVHdzcXhPNGM3R3ly?=
 =?utf-8?B?MDBuTkVhcjJFT2xIZklEM0ZaZzZtT0M5T2RxUW9oMXVvaktNUjM5Nm5xTC9p?=
 =?utf-8?B?OSswYUI0a3BheTNhTmtPMlQ3NTh1ZDZCQ3A5QkdyNUhuOTVKc3pNWkxRelVn?=
 =?utf-8?B?SnFxZmM0L1plb1RBK0N3VUJJbEFBL2dPZmpoMXliWEdDWHQ0Qkg3cTl3R3VX?=
 =?utf-8?B?bGorZDd6RURPamczM3Y0QnFyWExGQU1mSnV3ZWticmFFK2JvMUZmRmZHKzUv?=
 =?utf-8?B?eTBocDFZVDBRT0wvK0dFVU96Zk0xRHZpa2p0dDRRb3AxQXlRdVNhQ1NXaUJq?=
 =?utf-8?B?c3FaLzFnTmdBNXlNbTFMNHFwdkhyaFhTUTFZNmd0OFN1dHZ2WWpoL3B0R3B1?=
 =?utf-8?B?OGZFT3FZYlRNYUxiYzVDdjFCcVR6UEFHWWJpcDVSSjBPTTk1Vzg5aENTUHd1?=
 =?utf-8?B?TDh5THN0ZEhabERIZmtCa1NyRFdCa2kvWUxkbWJWYmhqeXFqRjNMRFBmeEQy?=
 =?utf-8?B?QWZzZTllWGhUdEtSR1ROTzF5YXdsUDh3ZnZId3J6WVplVGRjZkp4QXQxeG11?=
 =?utf-8?Q?e+uR1RhsfGDNkBYE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ae9e2bb-8360-4d16-7181-08de5a473ebe
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 06:18:37.9122 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: otWtsgNF+jpzpvAoRsCai5/mbtm/CK+KAKiyU5ZeD0ajWS6Fb176pEU0rGVIknoFOQMD+bsdM/KF/kWIPAen4+ePDZATkRAj+VyVVRvxSBA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7467
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.993];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 8595E70CFC
X-Rspamd-Action: no action


On 12/23/2025 4:21 PM, Jouni Högander wrote:
> We need to use intel_psr_exit in frontbuffer flush on LunarLake and
> onwardsif we want to move using trans push mechanism to trigger Frame

typo:

s/onwardsif/onwards if/

Patch LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> Change event.
>
> Keep PSR1 and PSR2 HW tracking as it is for older platforms as this was
> seen causing problems there.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 18 ++++++++++--------
>   1 file changed, 10 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4336ba188aa7..ee70d0ceeb5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -3559,7 +3559,14 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
>   {
>   	struct intel_display *display = to_intel_display(intel_dp);
>   
> -	if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_enabled) {
> +	if (DISPLAY_VER(display) >= 20) {
> +		/*
> +		 * We can use PSR exit on LunarLake onwards. Also
> +		 * using trans push mechanism to trigger Frame Change
> +		 * event requires using PSR exit.
> +		 */
> +		intel_psr_exit(intel_dp);
> +	} else if (intel_dp->psr.psr2_sel_fetch_enabled) {
>   		/* Selective fetch prior LNL */
>   		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
>   			/* can we turn CFF off? */
> @@ -3579,16 +3586,11 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
>   		intel_psr_configure_full_frame_update(intel_dp);
>   
>   		intel_psr_force_update(intel_dp);
> -	} else if (!intel_dp->psr.psr2_sel_fetch_enabled) {
> +	} else {
>   		/*
> -		 * PSR1 on all platforms
> -		 * PSR2 HW tracking
> -		 * Panel Replay Full frame update
> +		 * On older platforms using PSR exit was seen causing problems
>   		 */
>   		intel_psr_force_update(intel_dp);
> -	} else {
> -		/* Selective update LNL onwards */
> -		intel_psr_exit(intel_dp);
>   	}
>   
>   	if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
