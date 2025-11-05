Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B86C362C5
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:54:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4916F10E79F;
	Wed,  5 Nov 2025 14:54:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k+ItvIy3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7E0710E2D2;
 Wed,  5 Nov 2025 14:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762354450; x=1793890450;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Uxun/YpXAPhw1vLDtBxCgOZhTQfjptsuERvawyfRDNY=;
 b=k+ItvIy3TlckvLz3dgdzEPnkOrZYSJtnMouW8QtQHCQHVS9aldj/Tlpu
 dqFIqG+0LgmXF+1ChNswaWZlroJo18Ro2gFf2o2UNX3G+Ed8xDZbXBzF+
 nAhQLrF9hhPCvpXGTfxUbYAw6y55vOSTXyFlz7PZwHoTRexDVM5q8sMsz
 +0DvbpyBl3LV3J4nBf0HirLYL56CnKtq37s8COZcDY+0BK5oYvOswRtq0
 /JcO2qFk7lT6m75hpuGoLG3+9IqXvgh5aVxsUHDOZVa6xER5H7f3W5eUy
 auGNPhy3uQ6yVEdB05b/jvkiLUsYDKzzILjBCoyA8pnIKgaAb4w1/M/nm Q==;
X-CSE-ConnectionGUID: ta3SRALZSTyw8Fc7OxbzXQ==
X-CSE-MsgGUID: IAuOAEnBRcOv78AKffSpPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="75150819"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="75150819"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:54:10 -0800
X-CSE-ConnectionGUID: CXbRObI8RLGfWTNqHvt5Jw==
X-CSE-MsgGUID: nlzOokDKR1KVHR+vmY+JoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191833406"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:54:10 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 06:54:09 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 06:54:09 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.21) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 06:54:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yi0qYTmKalXEN3AcAijaFOCreE7oebjz8uUunPLCINNEj3kN28q6KUSz3loPd+6VWsJCwaCGnparWyy+0/3p3lk8x201FtBxqPLXZzb7dxu20bQJ/LKbKdG7GRcnyAbkaxI/B472ijOk80r8xPqDYWm9ofwzLJ92Q6x3ENbCpzd9xopyqYW4LXeM5vmt1wTGnU2Zrc1P7miLH8Ilhv6o7oOBdDeRJN+h7873qfb8hYEddbEQT0Rp1OHnszNtAbYJ/igOf5xoJRvEQSss1q++4GKtZzvf9lOEwTcEBn5l3BZr+PrjbhdI/xwVu9JCvzxebBT47BvLwz7xGbYrSs5hgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=17LF/BvxuRyIeGjmyGAA0n9fN67emo4+RPZ3KgnJwUQ=;
 b=B6vp1y61/kIqVwsfhdm9Faf3E+blwKzza4lyGYOFN03yrvWDgLPRPYpf1dITK8mWVBM4dHV6qWsKRKEb6jWWFC6xqruUxD52+lHxa2/O7My+e7k+pRIaob4KeCdbLjgwMJOoELGzRRD7H5JtpvxtepnVa67UKgET7zkYbnlIyPtD/TYwOSxoTNe+Yvm54BuVdxZc/RRXerDARGpVWUCJhHYTCnU0Zr19/m6jQG2xw9WYSIOQX4KkPFjBrTwKeddqqH+11JCPWmFed9hqGdrTdCalewFDJ3DTwemAUUZVRFZrDDpY6jMyupobbsJ20v9bw5v0Dbib3mq5X6mXkxKHhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS4PPF6EA6DD735.namprd11.prod.outlook.com (2603:10b6:f:fc02::2d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.8; Wed, 5 Nov
 2025 14:54:07 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9298.007; Wed, 5 Nov 2025
 14:54:07 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <176235377477.3117.1226743618202381202@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-16-00e87b510ae7@intel.com>
 <20251103215111.GW1207432@mdroper-desk1.amr.corp.intel.com>
 <176235377477.3117.1226743618202381202@intel.com>
Subject: Re: [PATCH v3 16/29] drm/i915/xe3p_lpd: Underrun debuggability and
 error codes/hints
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Wed, 5 Nov 2025 11:54:02 -0300
Message-ID: <176235444280.3117.1216267763764037447@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR05CA0191.namprd05.prod.outlook.com
 (2603:10b6:a03:330::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS4PPF6EA6DD735:EE_
X-MS-Office365-Filtering-Correlation-Id: c0cf8588-c94e-4130-2e50-08de1c7b2b68
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OHBqSEU3MTRHdE9BWFd3UWlhZmFBbGxiMWdnZUlRM3JNZU41UXhLOGZTVC9M?=
 =?utf-8?B?azJIdFBuQjMyZ2FIV1JkdWdOYW1UbW9DaFF1ckN2dWNNYlp6bURDc1JVbXZ6?=
 =?utf-8?B?a3J6b2xjWmFPZXBpMUlxNzYvRk1iTHNDZDZsL3liZlpjRUV4Q2R5WnRaODZs?=
 =?utf-8?B?YUMyRktvV0lpWTRqMFBxVG9JNmFid3p2Sy9lZ0UzVW9xbkdPR2hSQTFNZFRF?=
 =?utf-8?B?VmRJMkhvSU12R0x1NHpPRkhrOFFGdlpnK3I0aGZzRVZDSUxyVnpWRmNsSzdh?=
 =?utf-8?B?Rk93Kys1WW81YkdtTk9RdlhpN0xCakU1cGpJaVkvZDUwb250clZ5cnRodFV5?=
 =?utf-8?B?WHZBN1JKVkp2d2cwSzFFZ3JGMFgwTS9IRkhnMUpZN1hwL1IxM3R3eVAwd3hk?=
 =?utf-8?B?MS91d0hKdUxmazV4ZlFYMWRvWStEUjQ3VWY4c1Y0ODdieVo5aXFxV0pxcEww?=
 =?utf-8?B?d3NkaWp6NE9yQXYwSlVxK0F6MnRvalFBTGVqTVMwQ0MrVjZJbEJUZ0RpNFBX?=
 =?utf-8?B?WUErWitvVG1mbWNzT0VhMTYvTmtkeDBtMkhFSGJGUU9Od0NYZXR2eENCVEJZ?=
 =?utf-8?B?UWhtMEJrTmZYRmZsbTFqdXk4S3J1T2x1K0JsVU1mc3NRa1ZXNGZPWnJycWRu?=
 =?utf-8?B?cVIxVFh0VnE4bzZJRzRwaTF5YmdDRlBrZ2luVFpqNE5IQW05K0ZmOUVGV3p4?=
 =?utf-8?B?Qlp3Z2VFVXRSQ0ZRM0hVYkpJdDZkam4yaGJXVDQ2TWZTSkJyYVhjd3EvSEUx?=
 =?utf-8?B?MDhRUDRxajY1eEp4ZStESnNxeEJPdll5bFVhNTFxS2U0VUxpTE01bDF0azZ6?=
 =?utf-8?B?Y05MZ3FyR0NEaDFLWTJtR1hoVURWQ00vbjh0eU5iTWlyZ1YzUWtsVkVyN3lI?=
 =?utf-8?B?OTVqUWJnWWJLNkVoUUc4bFlUdFp2d2x6RlovQzhheWNxMGVKelgzdDRtY0My?=
 =?utf-8?B?STh4bnZ3OS9haFJSUXJvU25SeUx3QkdUN3BGeFpKRThRL3RJeXcxY2FLTlVl?=
 =?utf-8?B?RnBrcFpCYkNmVDJ0a2liLzBpcWNqc3RJandodmMrcU56WExtWXhDNldoSTMv?=
 =?utf-8?B?dlhNTHFLYWR3bnBkeHRhME5GSlFQcDhjbDRiR1VSKzNxQUtURkU0WFl6Y29p?=
 =?utf-8?B?dUdhaDArY2c5T3A3QkR2SnFTbWtrNWRSelQ4QTJqTVZhRkdWQnhsSGVZMDE0?=
 =?utf-8?B?WnFtOW5RNFdLLy9HRXl4Ym0xbnRYQ1dmM2FIRjE5NGo3b2g4bmxsZWFGU1B1?=
 =?utf-8?B?VTdnUnNXOTdzTzR6UVdXTjlSV3FBSHV0QnpwdjNOUGJwYWs1RHhjMWlBakxq?=
 =?utf-8?B?dWQ1Qmh3eEhPRXRYUGVYTEJDN0NTR1V3Q2RtaGplQXN3V3liNWc5WHBwK0Iy?=
 =?utf-8?B?VEo3eWJHTUp6aDZZWEtSRGRiUHhLU294RzNSbXVQam9ySVh0MC9CYnM3czJM?=
 =?utf-8?B?dXNleU1tUGprME5USGNBYjRWMHhPKzNKc1h3cGpxblNuTmxtUW5JdC9jK1kz?=
 =?utf-8?B?ZlI5TWs1SkxVdG5LZnJBdmVoZXlFdGxnOFZLcjczelZ2OEdQcFJjUVZpMXZl?=
 =?utf-8?B?VVJPbHlxeUtSaWNyajFKaUdLUVVSMHBzMzVCTE1zek90dlplSTgvcGxJNzQ3?=
 =?utf-8?B?WGoxc3lUZ0kzbTJYN3EwcllWWDBXL0V5eVV1YnFpYzZtR1htb21FZ2d3cFNJ?=
 =?utf-8?B?cTJNSUVOcTZwU2N5MEliYWFwMmt5ZjRlTkJxWC9hbWtZMi90RTloY0FqeVRo?=
 =?utf-8?B?NWpEVTlvcXFDV1AwdmZpRjdHRWpJYklLQm1GcFVtOUhRV2NPMHF2K3hCSFhT?=
 =?utf-8?B?WWNELzhoVEd6dWU0WDhMSkZuSXAwSE5BVzlna2FTQmRQYlhuS3JwUkJBM0lp?=
 =?utf-8?B?OVJiZkhKaWE2T2pzS1d6d2k1ZzFBditqMWx3RlpraC80UXBKazVEc2VkR05P?=
 =?utf-8?Q?xNYp9z8liWZ+laGUdMFbeDzf0SkpYoyi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTk1U1VTZ2RuNnJiNWdueEhKTGw1WHRoVU5sQzdmWXkvUDZ4c1BteFFWL3Fp?=
 =?utf-8?B?U20rS0p5UDFKZDFCcFVpTXgxc1FtaFFLczZmZEhieTEzYldUQS9PWnVydTBC?=
 =?utf-8?B?MUJiYXA5b3lDUy9vUWEraHhvTENjdC9zSko4SEpNTWpFMXIrQ2s5YnRsNjBs?=
 =?utf-8?B?WG1EV3krTVNLM3RZeW84N1oydlJ4WnpBTy9sRGtuWlR2WHMycldQUVBRNmhR?=
 =?utf-8?B?OU8vRFc2NXp0eTBZbmtxVWlwR3JRMlVrVUZ1aWc4Y2lORzBnME5kbkphSlZK?=
 =?utf-8?B?OFdVcVlyLzhkWU8yd2JBZUVsNytneWd2Mld6b3AwN0tpRUxwU2lHMGNsVnNT?=
 =?utf-8?B?VDhwTWgvamJWaGx3K2JXZkQ1WnlMbzB1eWs5YVViMVYvOUJlL01IQXdKMTRC?=
 =?utf-8?B?VHJHbVd1aDlWblFhdkk5ajFxYmJ2a0I5VDBZVWNrN1pyczRwNHpVbCtrNVVt?=
 =?utf-8?B?Tk9ianZUYlhVcDF0aGh3SDVEbTJRdnJWcldFYW45eU1xMkdWeUtldlFvY1ZX?=
 =?utf-8?B?S2Q4OGtsODNBaHQyOHlaR1ZxSVpNVmhPZnpCWSttdmcwcnU0dmUydkRqMFJk?=
 =?utf-8?B?TUk3V1haWkdGNnFXZ0tvc1pQZXp0NnhwVWpudWJBVlVZWjBXMVhKT0VRNlFh?=
 =?utf-8?B?YnZDQVFUSTNqdGNJT0hIdTY1b1JDam53Q2xGMGwyUEFrTmQ2dXhOZmhGcC8w?=
 =?utf-8?B?U1pJdjVtbXdia1JGREdnWlI1UzBMOHpQVGlxTUNIUkoyT2srbUhuV1pmbEVK?=
 =?utf-8?B?eGhDbWNnS3ZTaEZtWVU0TVZ3WEtnQjExVlIyekhBWm9YbTR0b09TdEpEdU4w?=
 =?utf-8?B?TEdsMkNFM1lmMXNpZEZWaVR5TTNpVVlOcUZMM3R0SDRIOVoybEtkZWwvcmJG?=
 =?utf-8?B?Z1R2ejR3ZlFPSVlRZFY4SGxKUkVvZWVma0RLczg1eTdvWGpWM3ppQ0J2Q1lI?=
 =?utf-8?B?aFVJVVN1MlNja1puSllkRG83d3o2K2hvVFJNZjZLSXRqUldUZGIzTFN0VWJS?=
 =?utf-8?B?RXI4T2tSdVNrQ2tIa1gyR0Z5Zjhvb3NxTHpLbFFiVHpVSmxzUDE4TjgzMVB2?=
 =?utf-8?B?SGlLa3FHNUwyZ2Yvb1RwcEYyT0UyTlZQNml3T1dVdXZibURIdzVzRjlkdDEz?=
 =?utf-8?B?cFpmamJTeTUxd2JEWE9oTnJlRHNkcG1uYXF5Vll6WE5FQ1hCeWVMcVk4Uk5h?=
 =?utf-8?B?OFM5M203dmoyN3lmbU9oV1lVYWNpOGRxaFNWYXFTeHR1NERZTDA5ZHluVlc5?=
 =?utf-8?B?UUs1VWtjaWo4WlhZSW41NzhhSkFZN2ozWFQ0RUE4YnZxZDhhRnZDWEdGUEg0?=
 =?utf-8?B?NVM5WW5Wajg0SENDWFVjZXFoblBubDd3R3I1U1c1SFhDSjlGYXRwM2ZQR3dO?=
 =?utf-8?B?UzJZY3poV3pxNFcwcjEvYXhENFdEelVLa00zUldaYWZIY3pWOS9WK1BGa29w?=
 =?utf-8?B?M0JQNWJaN21YaXRIRjgxK2hJcXNsZVVYdUJseVFNWXhNZldwWXFkSVA4N1lN?=
 =?utf-8?B?TithcHlSdllMUitEMUxBTXZ1bjVKNlFMOHh5R0kxQllVZzV4YzFmd1BiNW14?=
 =?utf-8?B?UXBSNWhqQ1dsdEpzTEUxcE5uOU5pQnRNYzB4SlNCNlNyVHQ0bmEwWFJNdllM?=
 =?utf-8?B?eGVrUHlvVnVka0NJR1pINWFzU3JBbUR1NmMyUlNxaStZVVA2SytRcHNNTUFh?=
 =?utf-8?B?THBWUnp4UmQ4bWhLNU9qNzVNc3habUo0M2dYcFp6cFFnYTdkYzEvRmZCb0tq?=
 =?utf-8?B?cEgwb3cxT2RxVjJxR1g3aUtnSmcyK3Y0aTBzWnV2NEhCMTRJUDhlQSszNUgx?=
 =?utf-8?B?ckhHZFU4OWd6S3FsQ0VoN3Z3YlM1ZkhPM0dUaW50YzBlakIzb283VTVmREpr?=
 =?utf-8?B?SXc3Vm1WeFhDMjFmQlJZUm1WeEhEZmNHT2JvNzRIbVVpb0c2ek1rd3kydEpi?=
 =?utf-8?B?Z0NoaEhzUmppK3pqeFVzalRraExRd28yYmtGUW1wMGVkZ1hSczhBUlJUNHVM?=
 =?utf-8?B?Y1A5Y3pJQWVNNkZXZ1ZmcXp4MDNhTUhla3lUcUlDVjFWdnJaSmtTTEMzTzNQ?=
 =?utf-8?B?a2xNZ3dPb29wZWI4ZTI1b1czTzRrdGl5RUtRSEtUWkF6YVBRWml0K3JVWG12?=
 =?utf-8?B?S3BYQjBkODRSUHcxYjl2aElzYll2MjA3a0xINjJFSDE5NXZhaWxMSmtLN1No?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0cf8588-c94e-4130-2e50-08de1c7b2b68
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 14:54:06.9467 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8mZlgKoBVCWYCmNJFmJ1cpYhJwBlgjbxCvbRj3A6jQT2VCs/W+UrI0hDyim/vwPO1qwTcb2UMfojQaVyaBnsxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF6EA6DD735
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

Quoting Gustavo Sousa (2025-11-05 11:42:54-03:00)
>Quoting Matt Roper (2025-11-03 18:51:11-03:00)
>>On Mon, Nov 03, 2025 at 02:18:07PM -0300, Gustavo Sousa wrote:
>>> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>>>=20
>>> Starting with Xe3p_LPD, we get two new registers and some bits in
>>> existing registers that expose hardware state information at the time o=
f
>>> underrun notification that can be relevant to debugging.
>>>=20
>>> Add the necessary logic in the driver to print the available debug
>>> information when an underrun happens.
>>>=20
>>> Note that the register FBC_DEBUG_STATUS also got a bit to indicate that
>>> the respective FBC was decompressing when the underrun happened, but we
>>> leave that one to be handled in an upcoming change.
>>>=20
>>> v2:
>>>   - Use seq_buf to generate planes string. (Jani)
>>>   - Move definition of FBC_DEBUG_STATUS to intel_fbc_regs.h. (Ville)
>>>   - Change logic for processing UNDERRUN_DBG1 to use loops and move it
>>>     to a separate function. (Gustavo)
>>>   - Always print underrun error message, even if there wouldn't be any
>>>     debug info associated to the underrun. (Gustavo)
>>> v3:
>>>   - Use REG_FIELD_GET() for fields of UNDERRUN_DBG1. (Matt)
>>>   - Move handling of FBC_DEBUG_STATUS to a separate patch that adds
>>>     extra logic to match FBCs by pipe. (Gustavo)
>>>=20
>>> Bspec: 69111, 69561, 74411, 74412
>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>>> Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_display_regs.h  | 20 ++++++
>>>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 72 ++++++++++++++=
++++++++
>>>  2 files changed, 92 insertions(+)
>>>=20
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/driver=
s/gpu/drm/i915/display/intel_display_regs.h
>>> index 9d71e26a4fa2..c9f8b90faa42 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>>> @@ -882,6 +882,25 @@
>>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK                REG_GENMA=
SK(2, 0) /* tgl+ */
>>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)        REG_FIELD_PR=
EP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>>> =20
>>> +#define _UNDERRUN_DBG1_A                                0x70064
>>> +#define _UNDERRUN_DBG1_B                                0x71064
>>> +#define UNDERRUN_DBG1(pipe)                                _MMIO_PIPE(=
pipe, \
>>> +                                                                   _UN=
DERRUN_DBG1_A, \
>>> +                                                                   _UN=
DERRUN_DBG1_B)
>>> +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK                REG_GENMAS=
K(29, 24)
>>> +#define   UNDERRUN_DDB_EMPTY_MASK                        REG_GENMASK(2=
1, 16)
>>> +#define   UNDERRUN_DBUF_NOT_FILLED_MASK                        REG_GEN=
MASK(13, 8)
>>> +#define   UNDERRUN_BELOW_WM0_MASK                        REG_GENMASK(5=
, 0)
>>> +
>>> +#define _UNDERRUN_DBG2_A                                0x70068
>>> +#define _UNDERRUN_DBG2_B                                0x71068
>>> +#define UNDERRUN_DBG2(pipe)                                _MMIO_PIPE(=
pipe, \
>>> +                                                                   _UN=
DERRUN_DBG2_A, \
>>> +                                                                   _UN=
DERRUN_DBG2_B)
>>> +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN                REG_BIT(3=
1)
>>> +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK                REG_GENMASK(30=
, 20)
>>> +#define   UNDERRUN_LINE_COUNT_MASK                        REG_GENMASK(=
19, 0)
>>> +
>>>  #define DPINVGTT                                _MMIO(VLV_DISPLAY_BASE=
 + 0x7002c) /* VLV/CHV only */
>>>  #define   DPINVGTT_EN_MASK_CHV                                REG_GENM=
ASK(27, 16)
>>>  #define   DPINVGTT_EN_MASK_VLV                                REG_GENM=
ASK(23, 16)
>>> @@ -1416,6 +1435,7 @@
>>> =20
>>>  #define GEN12_DCPR_STATUS_1                                _MMIO(0x464=
40)
>>>  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>>> +#define  XE3P_UNDERRUN_PKGC                                REG_BIT(21)
>>> =20
>>>  #define FUSE_STRAP                _MMIO(0x42014)
>>>  #define   ILK_INTERNAL_GRAPHICS_DISABLE        REG_BIT(31)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drive=
rs/gpu/drm/i915/display/intel_fifo_underrun.c
>>> index c2ce8461ac9e..1da90c99f93f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>> @@ -25,6 +25,8 @@
>>>   *
>>>   */
>>> =20
>>> +#include <linux/seq_buf.h>
>>> +
>>>  #include <drm/drm_print.h>
>>> =20
>>>  #include "i915_reg.h"
>>> @@ -352,6 +354,73 @@ bool intel_set_pch_fifo_underrun_reporting(struct =
intel_display *display,
>>>          return old;
>>>  }
>>> =20
>>> +#define UNDERRUN_DBG1_NUM_PLANES 6
>>> +
>>> +static void process_underrun_dbg1(struct intel_display *display,
>>> +                                  enum pipe pipe)
>>> +{
>>> +        u32 val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>>> +        struct {
>>> +                u32 plane_mask;
>>> +                const char *info;
>>> +        } masks[] =3D {
>>> +                { REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, va=
l), "DBUF block not valid" },
>>> +                { REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val), "DDB em=
pty" },
>>> +                { REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val), "=
DBUF not completely filled" },
>>> +                { REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val), "DBUF b=
elow WM0" },
>>> +        };
>>> +        DECLARE_SEQ_BUF(planes_desc, 32);
>>> +
>>> +        intel_de_write(display, UNDERRUN_DBG1(pipe), val);
>>> +
>>> +        for (int i =3D 0; i < ARRAY_SIZE(masks); i++) {
>>> +                if (!masks[i].plane_mask)
>>> +                        continue;
>>> +
>>> +                seq_buf_clear(&planes_desc);
>>> +
>>> +                for (int j =3D 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) {
>>> +                        if (!(masks[i].plane_mask & REG_BIT(j)))
>>> +                                continue;
>>> +
>>> +                        if (j =3D=3D 0)
>>> +                                seq_buf_puts(&planes_desc, "[C]");
>>> +                        else
>>> +                                seq_buf_printf(&planes_desc, "[%d]", j=
);
>>> +                }
>>> +
>>> +                drm_err(display->drm,
>>> +                        "Pipe %c FIFO underrun info: %s on planes: %s\=
n",
>>> +                        pipe_name(pipe), masks[i].info, seq_buf_str(&p=
lanes_desc));
>>> +
>>> +                drm_WARN_ON(display->drm, seq_buf_has_overflowed(&plan=
es_desc));
>>> +        }
>>> +}
>>> +
>>> +static void xe3p_lpd_log_underrun(struct intel_display *display,
>>> +                                  enum pipe pipe)
>>> +{
>>> +        u32 val;
>>> +
>>> +        process_underrun_dbg1(display, pipe);
>>> +
>>> +        val =3D intel_de_read(display, UNDERRUN_DBG2(pipe));
>>> +        if (val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN) {
>>> +                intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_=
FRAME_LINE_COUNTERS_FROZEN);
>>> +                drm_err(display->drm, "Pipe %c FIFO underrun info: Fra=
me count: %u, Line count: %u\n",
>>> +                        pipe_name(pipe),
>>> +                        REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, =
val),
>>> +                        REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val));
>>> +        }
>>> +
>>> +        val =3D intel_de_read(display, GEN12_DCPR_STATUS_1);
>>> +        if (val & XE3P_UNDERRUN_PKGC) {
>>> +                intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDE=
RRUN_PKGC);
>>> +                drm_err(display->drm, "Pipe %c FIFO underrun info: Pkg=
c blocking memory\n",
>>> +                        pipe_name(pipe));
>>
>>This is a global (not per-pipe) register here.  So if memory is
>>unavailable due to a package C-state, then presumably all of our active
>>pipes are going to be failing to fetch data (and hitting underruns)
>>because of this.  If we clear the sticky bit here, then the message may
>>only appear once.  I'd remove the "Pipe %c" prefix here so that we're
>>not blaming one specific pipe.
>
>Yeah, good point.
>
>Now, one thing that is bothering me is that we would be showing this
>message in between pipe i and pipe (i+k) underrun error messages.  But
>I'm not sure refactoring the current code so that we "isolate" this
>message is worth the trouble.
>
>What if we replace "Pipe %c" with "General", so that we are explicit
>that this is general and not specific to the pipe?

Hm.. By the way, I think this patch still needs some rework.  We are
only clearing the stick bits when underrung reporting is enabled.  This
means that there is the possibility that we get stale bits, from a
previous underrun that was not reported.

Let me rework this.

--
Gustavo Sousa

>
>--
>Gustavo Sousa
>
>>
>>
>>Matt
>>
>>> +        }
>>> +}
>>> +
>>>  /**
>>>   * intel_cpu_fifo_underrun_irq_handler - handle CPU fifo underrun inte=
rrupt
>>>   * @display: display device instance
>>> @@ -379,6 +448,9 @@ void intel_cpu_fifo_underrun_irq_handler(struct int=
el_display *display,
>>>                  trace_intel_cpu_fifo_underrun(display, pipe);
>>> =20
>>>                  drm_err(display->drm, "CPU pipe %c FIFO underrun\n", p=
ipe_name(pipe));
>>> +
>>> +                if (DISPLAY_VER(display) >=3D 35)
>>> +                        xe3p_lpd_log_underrun(display, pipe);
>>>          }
>>> =20
>>>          intel_fbc_handle_fifo_underrun_irq(display);
>>>=20
>>> --=20
>>> 2.51.0
>>>=20
>>
>>--=20
>>Matt Roper
>>Graphics Software Engineer
>>Linux GPU Platform Enablement
>>Intel Corporation
