Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 415D9D202EE
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9427710E625;
	Wed, 14 Jan 2026 16:23:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jwoNgC/P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 041B510E622;
 Wed, 14 Jan 2026 16:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407789; x=1799943789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=XX0s039MR/veNvpeVoFCPJVxbbET9tBqh0XXR+6PdaM=;
 b=jwoNgC/PVCYqiCsGyrxgWZgyI5CknaPFZkt9y4AHXpCb4/XxDe5DkV9C
 cOv3iwcwZSgrQkUzHQsYafbsRrfaew8NYe6mrKLziE5zaOvccnapm3F2p
 rWBRHyWsSiMlPNodlTPFdmlylZzEP0+iy+JRDPMVG/rTa11jZJR8fDbeJ
 eCESedGem4pk5ZD2T6Ckd9j+rRgdvtM4RnMMBXmS3n3cHOWRHVpWU654E
 gfd0qz7vW5OSilyDe1HHcbVkW8DU1WR+7hNM72UxtPGtBijx2zHfpnJ4B
 dkQ2dYXqx3n3GojRW1ZCBI/UPoVGEjVUD8tXDtyIFjWBW0p0lhjXwnSTg A==;
X-CSE-ConnectionGUID: 3xhv9YP1SK2bP4dP95ME8w==
X-CSE-MsgGUID: oHBJ3Fr4S8GwBO1fggPvRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="73551565"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="73551565"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:09 -0800
X-CSE-ConnectionGUID: RVJtVAjoRzmgq5WtqpaiXQ==
X-CSE-MsgGUID: FfeIrp7zQh+hMg/lPrhJag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204611139"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:08 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:08 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:23:08 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.49) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yzokq192FnBpK+4AUWuzhBNToO61L7u6O1OVaP3Of5riQpDtvNsfgTvN06/bM4LvqqNVzl6X3WsKv47C7/JQQlKqDY/BEJvTpnNrp0zdASRDKphKPoNrgN7zUXpPfK1226ewIOXb7Yw+OUq9EJg2B+RVQtgh8S0Sg4m0VgYf1MLgWMvovHEWt/N7Evmr7DoiOzhgE34zeQoX9JhP6pzZzUP1wpUGaNVin8vl+Xdiatyj8SfsI4I+EBid3lqOsrEeJTdy0UFw0oLvKouoKDBHwzJsA9ZChmqplBGDeReKJ6m0d5zaI43K2H/irb/tKeu7IM2U5joThmJZMZJs3tJztw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=izYj+qmvVtYpAb4qo194Ir4+jGftDl/pvRstuKTlAak=;
 b=y95d1keQ2nq/FJesg84dvkU7cSH8/B7cHVUN9bv4TxdR+XmSkUOxznp4J6/ZxTpsS8Q5d/4mRWJ0meW46ELr5mJZQ2bq4yCox44HTeEJOf3G+X+NEz1s+n/pTFOV4mB8eI9qW/NPJXNDHG7iIFokrDPBkHqfXHqFjCafd/moLIe4R/NReY7dHbzoldh8i1wcJ7hSDVLE2d/8yyJPSQV0ChJDGZcVNSHab9L1fq8rU8VD8NlOlb2RggBi4+CAnCOhQcSAI/JKHk1Axxzo5D0T6L9gkhRYQ1efzl5I//jA8zw27eLFVIMjsHYZ4ZKucg330aIvzDAF0iHUAvThpf220w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7676.namprd11.prod.outlook.com (2603:10b6:610:127::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 14 Jan
 2026 16:23:01 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:23:01 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 06/15] drm/i915/dsc: Switch to using
 intel_dsc_line_slice_count()
Date: Wed, 14 Jan 2026 18:22:23 +0200
Message-ID: <20260114162232.92731-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260114162232.92731-1-imre.deak@intel.com>
References: <20260114162232.92731-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0381.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7676:EE_
X-MS-Office365-Filtering-Correlation-Id: 97031dc4-eb27-45ae-92cd-08de53892fbe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dGUyV3MxNmw5Vzd6QW1HcXhqYlVXMUJrakRPQTdQUVNsSmxVYlZpMExvUjFw?=
 =?utf-8?B?L1RhYVMrUDNkMjR4R1g1UEhXaTNhbWE1QXBuVzRZTFlvcHpWWFZJd0pMWE4r?=
 =?utf-8?B?NHpqaGVibHF5Z2p0cUNNODIvSGpMSyt4emlDSUR6NzVRQ1JIeEx1aURpclVD?=
 =?utf-8?B?c3gwbnFGZEM1MFB3L1Y4cVJ2Tmc0YVJZTnpwQTJZcUQxWnVVZVV3c1M4R3gx?=
 =?utf-8?B?cWVzVDZDUGlBb2t2eVFBUFE0VW9sbXpxZzIrUWw3T3kyMnNNc0V4UXhrdDI1?=
 =?utf-8?B?ckVBbmRTMVcwbE0zUWJibDN3TWZSajY2V3Y4TnFCQU9zRElvcHZXMUhJZVR6?=
 =?utf-8?B?RlZoOWFDM2RER0NxOVg4Zmk1ZTlOa0FxdEdKZjZGVC9yWnlUU0d3UnJORk9m?=
 =?utf-8?B?dFdjNTVYMXhWeitWYTlTSWNXMDM1dFFzcFg4UGxxVS9senl3K2ttNlhpWEZi?=
 =?utf-8?B?R0JvTlhHMmIvK0hqeHRUdGcyajRjNXNIK2dPMElFYVRpQTFOYlVQclVQMERF?=
 =?utf-8?B?cDJDckE5QkphTm0xdWRwaGlqLzdnWXlWRldWTjM3bkZYaVZnNjZuSzdMZ0NR?=
 =?utf-8?B?QUpQZWlLQ1hOY3NMbm1CM3NwMnVLNWt2cTFIdjlHYXdKY3FBRTlwSitSRHVl?=
 =?utf-8?B?am14VWl3MlNNV3pNNjZNUVBtblkrc3dIelBqVklmc0hCYTlpa2hhYXZlRWNl?=
 =?utf-8?B?ckp2RzFqMm1oNmRkRkhtQm9wcmtIUU1xdVI3d3BlZEliMWFCdEdpanJVQXhq?=
 =?utf-8?B?MnpoZzdjZ3lzRUZjUmdsNUJVMEdxR08wY0s0REJNNEpRTXcvRVIvN3FNVXBR?=
 =?utf-8?B?a29iSS9zMElHMXNITzdZV0RTMWVUR3dMQ0FuVXNBaWpxU3hNNEY2WDB2NlBR?=
 =?utf-8?B?cTdmRVcxcU02M1l4OFBxUUhPY2NNMWsxWVlYT1VDZTIwbE9YUHVYSngwSTJ4?=
 =?utf-8?B?U1BUbjNKdTd6UTF5QW1kSkJtSFJrMHB5VnNQNTJadmpRZEYxRExHRHRiN1hQ?=
 =?utf-8?B?MnM0N0o4QXJadm1NTkowdWFCYWp1RlQ4ZE1SWm93akxhN0QzMysxdTgxRVJG?=
 =?utf-8?B?MzlVZmxPdU0rckZlM3IzU2FneHRrN1FKcHZPVXlRZHBMd2hlRk1KeEtJVWV6?=
 =?utf-8?B?OElnTFJ2cVlxeHhTWmhzWWJMWm8vcnp4aHpxMSs2b25QZHhQWisvUVZPd3Jo?=
 =?utf-8?B?SzNpajBEQ1FWb3ptVVQ2SGZTMHpUbWptU0NYY1ZwdE11QWZzZDVVSGNQSHlq?=
 =?utf-8?B?bnpJNFk1YUY4V0FqQ0ExdVkvR0pKbHNaWnNCTVdKV1BjNks0OVN4V29RZDRh?=
 =?utf-8?B?UVpMTVpmekZ5cGlJdWhTdkNMUS9VVi9pMG5GRkJweldNUXVZQXo5VzZLMEda?=
 =?utf-8?B?NDJvOEhobDZrYlFDTDhBUjV2YUwyS012SnN1Tk5rYlJrbVhVVE5YeW5OSmQz?=
 =?utf-8?B?TXJodVROVGlHdFFYYUVtaGZ6Y2o3OTF1bHVhdktUSUdyUlVsZEdabmZNVjll?=
 =?utf-8?B?bnl3SkJPTHF6Y2tZbnFOY2RJbm8wNFBqankybm40bTc4VFpDcnFTVlVRM29F?=
 =?utf-8?B?OUphOXpSVDQ2NUF1NGkwVi9xUlpLbER3WlU5cU9zS3diL0J0WXhzbjdkOUR3?=
 =?utf-8?B?Vk52d2JLTmZIbG9sYVozYU9QcXJYcUFpYUNyNjFiK1lzbnlmRnc4cmppN25R?=
 =?utf-8?B?Q2wxUFp4U2NsSjQ2UkdaWDcvbHFLbUI0YUNQLzVZRjFJbk11bTJHd3MyMERU?=
 =?utf-8?B?MytHb2FPazl3YTAzSzJ0cFZhdE8wZGNhVzhKUFdkekRKaHJ0c2NCU21VSklS?=
 =?utf-8?B?YXBlTlRaN2hkMXRFTUZCNmxHd3dzcVFYMFVyWkk0ZlFvdU9pZXcwZE1JVVY4?=
 =?utf-8?B?QnNXQndwaHBBM3RXU09LQnFHYXBjYkFMempCM1VBWkVUYXpFb1VrT1pDUzhZ?=
 =?utf-8?B?WTZid3ZRZ3RhRnQrem0zbXkvNmhWMDZjbEFKRFhGR3kvSjZxV0VuZmdzc3hD?=
 =?utf-8?B?Zm90Y2F3b3ZaYUQrc0ZwVTBsakI2d3pLdmsxK0srVU9yaHU0VEgvdmlUZ2Z5?=
 =?utf-8?B?b3NJNU43UFFMRG5ocmloS2h5T0RvWmsxcnRrVERyL2pSL1RzUW1UcUNZOFp2?=
 =?utf-8?Q?zQvI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjdOeHpwTGcraVJpVitRaE9KcktJa0ZXMUtlTXE4aHFpbElBL2RETk1yUmwv?=
 =?utf-8?B?VVBTQlhBd2hIaFl5VVFydHZVVTA0eGdadXNzeTIwS0NNWGI3ZVBTWmJYczlZ?=
 =?utf-8?B?b1NjK1VhblA4eVExZXJYWTM4NTRKS0c4d2pwcXI0QncrSUlFTHU2R20xaGtu?=
 =?utf-8?B?VFQ5NWhOVmF5U1VuTlJrZitQOUdBZEN1M085VU5jZUp0cmdCUWxvdWgvaHZG?=
 =?utf-8?B?VzhobVhWeEhoVm51L3huUUdEbEFnNWZ2L2dVejhRRHpwTlQ1NmYydGdxWWl0?=
 =?utf-8?B?YTUvQTROek9zay9ZQkx4VFhNa1BGVzdaYmt1djlmelVvWm9ZaStNdnpiZGRv?=
 =?utf-8?B?UnZWQTRZWUJYbzdkRm0xajk3dWlmQkNWVFROVHMwNTZUVVNiVHk5ZFZJVlFs?=
 =?utf-8?B?MHZGUFJUeHQ0R0JlUXpWOTByNGJMRldCa0RZWWxZYTZRelhGN2FBdjdlbjV6?=
 =?utf-8?B?eTdWMWg1K21Lc3ZUeSthTmxpbXNPMDE4YXM0Rm5JMFQvdFpETXNJNFRRZ2Vn?=
 =?utf-8?B?eHF2OWw4VHU5OVB6VXFPbUhwWkhYMXp0S1FNVUg0OGtSbzlWTE0xdmpUb2JO?=
 =?utf-8?B?RXEvVk9UOGlEc1FQdTNUbm5MMk1aZ2FLdUtHV0tUVCtmdlVVOU9iQWpLSFJT?=
 =?utf-8?B?VXcxUlpwRllmcThFZitESE1hZzdvV1FmdEllTFlYM1pQTnM1N0ZCQ0huN0F4?=
 =?utf-8?B?VkFCdWozL1JVQ21kRXY5ZWlwNzhQWmoyOHZNOVJwQmJuK1F1RDJWUlAzNmpP?=
 =?utf-8?B?NlhhcDNCWkxHMUFiTVhOTk9CZWh1Vkc5VnU3QXFzSFBxN1g2d0d1d0hPYTBk?=
 =?utf-8?B?c2hsTEcxL0QvTE1JVGtqSFhHTWc0K2RWaGlDVCtxMFBENjdiU1F2NkNsOHFn?=
 =?utf-8?B?dFFMOUtZZXdkS3Fwd3VUQi9OeWJpbmdFTWw0bm9jV3B2Q3FZK1lKbFhFZUky?=
 =?utf-8?B?blA4ci9oRnpDbGZIaEhhd0pSK2FtZFc3RnlsZzd4TTdBQWZuazd0SDlXbkJS?=
 =?utf-8?B?anY2anpQbXM4aGhHWmp3RmF3b0VhUjl1eUh0Q2tiR2VsOU4zcko5M2pXekUw?=
 =?utf-8?B?WlArb205QzlUakRVMlVSNFQ2UGNCMXdpZGZnUzl3OTlkY3c1bTYwT2h4SFVp?=
 =?utf-8?B?L0dmWXl5SFFzam4wRDBSRWdMQkp2UlFDWU5BZWl6bjNwVkJSLzVOQ2E3WnVq?=
 =?utf-8?B?ZmVNWnZzSkNuV2pWSmJWZ3ltOHQ3bTRQODIxZzI2ZkpDNHU1TXVKVE1odloz?=
 =?utf-8?B?U3lvU2JtSHlGWnhTbEZCVkVLTHlXa3N4S3RJbW5ZSVdJcTFmbGlzTm1sM3Zl?=
 =?utf-8?B?T3FpNmxmdmdhckJyRkdTMFpydis1dmhCNVBlTmk2a2FFUllUcktZNmVreHBJ?=
 =?utf-8?B?T2w0NVJuZWdzdHFLS0kzUFBSU3pSYkdHOVQrSmg2QTB4SXBPc0RaMEtyWHJY?=
 =?utf-8?B?RHRSNDluUTVicVQ5elJSMDBCY2NZTzhLNU5TMXhLcFFSMy84dDlWTUNWTkVZ?=
 =?utf-8?B?d1Y3ZzBoYm1jVFZzZ3ZjUE1jWnc0ZlRsa1B4RG1sRG95L0tpeENweDlTTEdC?=
 =?utf-8?B?T1RoSnNTTmcwVlZYc0RCOWZhNWd2dXZ1WU54djlkQUZKUDBqMnk4RnBSL2xu?=
 =?utf-8?B?T0JkL2VJZ1M3anhaV2ZBVTg2VVJzTEgyTGRnTWpSZkU1dFFEaVZ6VGVXM3Fy?=
 =?utf-8?B?V3FPYkltanFqeGd1cEhxOEFWdXNWMG9DOFpIL2NDNjVUZ0xNaTQzMU1BUVFZ?=
 =?utf-8?B?TWY0R20rVCtPSUdaUlBWTE1BbkpIeGVQTTFFSXpJV3c5alZSa2RZM1RRc1hW?=
 =?utf-8?B?RFBERmhGOUFNTHBnZERxTldWSWNLOXl2aitaMnFGTkoveUY3emljekZQRDg0?=
 =?utf-8?B?NVh4ZnlQd0U0MFJjcjhNMFNxTTZpbHZVM01qOXFldTZvODZzSGdHWnMycTFR?=
 =?utf-8?B?c25KaGlUT0NNZXFNSWZBUER6Sm9aZXBkM3dDNHBQZWtiMXFHNnQ0Ymt0ejQv?=
 =?utf-8?B?SGNVVVJTMmMvZW9VcWtMQ01lNTRtb0t0THBJUUp1dEtuR3JkR1BoR1QzVmJj?=
 =?utf-8?B?UEhwUFlXRGxBTVkwaTk4eVh2T0d5MFQ4MTc3WksxTXgyVkZiSVZtTzc1YXgv?=
 =?utf-8?B?QnNZZUtSL1VRU084UEtDeGR1QU9vQTBBQ0pONkFvcThEZkpxM1BzTFRvbmZX?=
 =?utf-8?B?UzNkTEFhNzhrT1VvY0FRNDk4cEYwSCs2L2QrWHR5a0NxaGErSmwvUzR5M3ox?=
 =?utf-8?B?MWM5WkhkQTJkekVsYXZHbGl3cjVxSG02Y1BlSU5VWjdpKzQwNWNwYVRvQmVD?=
 =?utf-8?B?ZFZJRk00bzQ5Y2FLbm9LUXFBc3N4YS85ZjhwQUpwb2xYamlwOGttYW5yNTFI?=
 =?utf-8?Q?y+ZgFau2zD2uqH+L7lVkXVkQzTxD/LcAf5ZwjHoD37Q+h?=
X-MS-Exchange-AntiSpam-MessageData-1: 9t+079jecba5gQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 97031dc4-eb27-45ae-92cd-08de53892fbe
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:23:01.1288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G31pcs756M9mqcVe+WqAbMJTy0sehcyLKOugz7AwjnNvpsLXoDdSdUzxr5Y0aJRqDbIWzxmXZvKvz15AlVov2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7676
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

By now all the places are updated to track the DSC slice configuration
in intel_crtc_state::dsc.slice_config, so calculate the slices-per-line
value using that config, instead of using
intel_crtc_state::dsc.slice_count caching the same value and remove
the cached slice_count.

v2: Rebase on latest drm-tip, converting another user of dsc.slice_count
    in intel_vdsc_min_cdclk().

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com> # v1
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c          |  6 ++----
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 -
 drivers/gpu/drm/i915/display/intel_dp.c            | 11 +++++------
 drivers/gpu/drm/i915/display/intel_vdsc.c          |  9 +++++----
 4 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 8fcfdb2e1c74e..a007fcf6e1a8e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3597,14 +3597,12 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 		crtc_state->dsc.slice_config.slices_per_stream = 1;
 	}
 
-	crtc_state->dsc.slice_count = intel_dsc_line_slice_count(&crtc_state->dsc.slice_config);
-
 	if (crtc_state->hw.adjusted_mode.crtc_hdisplay %
-	    crtc_state->dsc.slice_count != 0)
+	    intel_dsc_line_slice_count(&crtc_state->dsc.slice_config) != 0)
 		drm_dbg_kms(display->drm,
 			    "VBT: DSC hdisplay %d not divisible by slice count %d\n",
 			    crtc_state->hw.adjusted_mode.crtc_hdisplay,
-			    crtc_state->dsc.slice_count);
+			    intel_dsc_line_slice_count(&crtc_state->dsc.slice_config));
 
 	/*
 	 * The VBT rc_buffer_block_size and rc_buffer_size definitions
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4f73a41f02984..07b626d227485 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1340,7 +1340,6 @@ struct intel_crtc_state {
 		} slice_config;
 		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
 		u16 compressed_bpp_x16;
-		u8 slice_count;
 		struct drm_dsc_config config;
 	} dsc;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3b62d16403f27..3a12156cd6e56 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2032,12 +2032,14 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 			} else {
 				unsigned long bw_overhead_flags =
 					pipe_config->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
+				int line_slice_count =
+					intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
 
 				if (!is_bw_sufficient_for_dsc_config(intel_dp,
 								     link_rate, lane_count,
 								     adjusted_mode->crtc_clock,
 								     adjusted_mode->hdisplay,
-								     pipe_config->dsc.slice_count,
+								     line_slice_count,
 								     dsc_bpp_x16,
 								     bw_overhead_flags))
 					continue;
@@ -2428,11 +2430,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		pipe_config->dsc.slice_config.pipes_per_line /
 		pipe_config->dsc.slice_config.streams_per_pipe;
 
-	pipe_config->dsc.slice_count =
-		intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
-
 	drm_WARN_ON(display->drm,
-		    pipe_config->dsc.slice_count != slices_per_line);
+		    intel_dsc_line_slice_count(&pipe_config->dsc.slice_config) != slices_per_line);
 
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
@@ -2450,7 +2449,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		    "Compressed Bpp = " FXP_Q4_FMT " Slice Count = %d\n",
 		    pipe_config->pipe_bpp,
 		    FXP_Q4_ARGS(pipe_config->dsc.compressed_bpp_x16),
-		    pipe_config->dsc.slice_count);
+		    intel_dsc_line_slice_count(&pipe_config->dsc.slice_config));
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 4a3d505338cb9..d213947103b51 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -283,8 +283,9 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	int ret;
 
 	vdsc_cfg->pic_width = pipe_config->hw.adjusted_mode.crtc_hdisplay;
-	vdsc_cfg->slice_width = DIV_ROUND_UP(vdsc_cfg->pic_width,
-					     pipe_config->dsc.slice_count);
+	vdsc_cfg->slice_width =
+		DIV_ROUND_UP(vdsc_cfg->pic_width,
+			     intel_dsc_line_slice_count(&pipe_config->dsc.slice_config));
 
 	err = intel_dsc_slice_dimensions_valid(pipe_config, vdsc_cfg);
 
@@ -1042,7 +1043,7 @@ static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
 	drm_printf_indent(p, indent,
 			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, num_streams: %d\n",
 			  FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
-			  crtc_state->dsc.slice_count,
+			  intel_dsc_line_slice_count(&crtc_state->dsc.slice_config),
 			  crtc_state->dsc.slice_config.streams_per_pipe);
 }
 
@@ -1078,7 +1079,7 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
 	int htotal = crtc_state->hw.adjusted_mode.crtc_htotal;
-	int dsc_slices = crtc_state->dsc.slice_count;
+	int dsc_slices = intel_dsc_line_slice_count(&crtc_state->dsc.slice_config);
 	int pixel_rate;
 	int min_cdclk;
 
-- 
2.49.1

