Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA068B9A97D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 17:24:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4250710E75F;
	Wed, 24 Sep 2025 15:24:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D35yoWR1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AD210E75E;
 Wed, 24 Sep 2025 15:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758727454; x=1790263454;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=DDHRKwr2RXAUdhGNk4fNN6GE3lssrnkJ1ZVFJZQgwls=;
 b=D35yoWR1GsXXWCJbG+7m+vOsLCKCZWor9zX3EZBMZGZkheKcZQvS6cUB
 3EqN21n0fvbRZ4kaqzh+XEUusvztk1F+aIGVWpx4pVGAJJ+EWzbAqNFyM
 NXcNPLvKlyzfWRdbg9/+zl+BCP2c7GMYb4IfgYSPgnIL/ods3NZzHpnho
 rrZk5DW+A+fcrexZXnZTdM3y1DP1Mdob1AxXZpJAr0Wy4/H/YMAuj6bFo
 E72ycu8mCAex2NgR+lXyLaP+NkFDjWYwOFlBnRtAGGoCILgnRKbKnqMZW
 bli3a1zVeF9NUgGWUcNlh6E3nFJ+2qyuxuqIJyLDXQkUuL3aJEG36x+Vt Q==;
X-CSE-ConnectionGUID: NTLzpy7xSkuMePmLoWEFcw==
X-CSE-MsgGUID: MmynJBRhTW+djuPxjiEQwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="71706762"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71706762"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 08:24:14 -0700
X-CSE-ConnectionGUID: /PPQbG0ORKGX9R5kTPcflg==
X-CSE-MsgGUID: wPW2wSluSa6MCbsmiggBIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176653349"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 08:24:14 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 08:24:13 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 08:24:13 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 08:24:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fAf5sSdBiKTGzem/8rjK9GnMD+YutXlpnhkTB1Q7gOttIqPeLc1326TdU71ASDyXVTm5VYh/nhrT7yoJ8aCqdYoT/aborOb/6mS00wKCTSHSRIUfk5iuFQWWGXu/646l3C5DDUirUklo2uQcLeWtFeAdA9zN70JBESz8+44ARVHW8u6qNc614F7q1wD/X0Ul0Q4Vlo4ashHqWir4vh90DGMBKxojhmlOKSwSpLlPCz92aND+WTtje8xsXzwYYeWk56v79qeF3L0IHu5jc41hjTNFFFMyyqGNDHDckv5/9sYJGNdQfTbIRbAIOoBrIUSSUxikm6uif22WtsAlJZu91w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jfRQ/ZKYy//7BPQlGRWepUG5kTn9fctsPdZ8SuH/2PI=;
 b=G8hN39NyufYLp5eUpmW6kBM8JwvW9pFyzlOCbYG3yiG6jZGAW1AAo3cg8G20+oZ3eMGDm83lWt7GTpeP5VKgE1boyhh+fYAcrAn/QIUVbrOB7GEImedydMwwtOfRXySXUMulNjR4Lee+cOBjXrj48UOFfNqpArt/W/AL4dtGAZEbe3/Y6qIZhJTvgh2pQx3GoNDROKtBK8QHaEClEU4VVOcWfjCQ51eBO/hZj8YtEQH2WDFiM1N6qSx/aE3kbJXmIy/b+GDgS1tdH2ElZQdqW0x5uzehG6OgO5GB1n8Kq3MjA7QsX+rJPHBjOkus9CB+7qXXQIPK1PoEXAnM17C+hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BN9PR11MB5306.namprd11.prod.outlook.com (2603:10b6:408:137::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.20; Wed, 24 Sep
 2025 15:24:00 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 15:24:00 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 3/6] drm/i915/dp: Calculate DSC slice count based on
 per-slice peak throughput
Date: Wed, 24 Sep 2025 18:23:29 +0300
Message-ID: <20250924152332.359768-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250924152332.359768-1-imre.deak@intel.com>
References: <20250924152332.359768-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P302CA0030.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::16) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BN9PR11MB5306:EE_
X-MS-Office365-Filtering-Correlation-Id: b4a083c0-479d-4c53-1d4e-08ddfb7e6343
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|10070799003|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QUJobWNvWXpuVm03TW9WN0YreDkwdUVWK0Ywa2tzbjZSaDhWSWFpR0RST0hD?=
 =?utf-8?B?UWRiQ2hDcFBNeDVPaVRiSGR4REs1dGY2aStBQWo5aHgwb2JIakNFMFkyMC9Z?=
 =?utf-8?B?UitZbGcwY0hIbEM0aExDYXlaSzFmQlRmMXFDRUp0eUtWN3RSS0lMYlhvRnRu?=
 =?utf-8?B?L3VGNHh0WHRKQzBqdlZTdk5uMEJ0OWxuV3JxaEZQS3F1Z2FpR3htcTVCeWF5?=
 =?utf-8?B?Wmp4MjdweDU0dm9vWlkzTWdPWi9rd3B6QVhlREg0cEhWTHpVT0U3QjNsWnVx?=
 =?utf-8?B?ckxBc2RxMTJDNHhMeDkwUGdSb3BSQmhRZXJSSlU0MW9BR283VUhJZlBKN1FU?=
 =?utf-8?B?N25YclVyUlB1QkNueExtV2I0c0plTWJiSWM1WThaNW5qWmlTL2c2Z3QzUXBa?=
 =?utf-8?B?d2VYREcvYkdXKytodjcwdkZkWHFxNHpNWnFrem9hcjlTZk9sZ2R5QWI0dWdM?=
 =?utf-8?B?WmhCeUg0OE0vSkpPZWxnZnZEa2x2anZOcTR2M3hQelV0ZFlsUE1NSFNzbU9k?=
 =?utf-8?B?RWprK2pOWTdvQ045WldOekpWSEpLUGNxNExBcS9OR0JVYVk2OXg2YjZVa1M0?=
 =?utf-8?B?QU5tQ1lCUDlRR0tULzdMY3EzdW5nb3pkNy8zdWZhOS91OFZKelAzMSsrMWtw?=
 =?utf-8?B?dUNoUHdUTzVTY1d5MnNWMTNPVHBNREpWaGdkcUpCRTR3NmZvUnFtRUliVHFs?=
 =?utf-8?B?MlRabGVkQjN5b2RQajFZUE5MMVc0NlUxNXlIWElUQ1hZUlYxdFhOUWlUUTJN?=
 =?utf-8?B?OFphMmgvT3JHSXptamliVk5DN3dSZjRRc3Z0RlQvbHl6ZWQ4M1NUV0JBcXFY?=
 =?utf-8?B?VElxVys5UWxnYnBrdWRlMS9sak51alJhNFh2VlFMeFcwZGJEQlEwNHRpenZN?=
 =?utf-8?B?aVlpYXl4MHBQMjVHZGtYcWgwdGt5emc5d0d4U3VPbGJXR29TSDRSRzBsYkdr?=
 =?utf-8?B?UkNlK3o1TkVBd2puTUFOODh6eVJMSGkrVlpseTBpcUNWSUVjN1pyTm1EZndQ?=
 =?utf-8?B?RmUyOFBZaGE1U283N2ZzKzRDd0kzbUNXUURXTVVxaXlQSlU4MHNRemhCUzQr?=
 =?utf-8?B?UldPVWJjcmVDdXJzTEs3SjJmaWpvWkViczJLTmUveHQvdjJUNGNSYmkyZVJZ?=
 =?utf-8?B?Z1Noc2Q5Q0VhMkVIMWNmYlFXZjF6VDBvYUcveUkrU2ViRXFTa3V5bWx2ZXNK?=
 =?utf-8?B?WTExcGxtdXQwMm11TzVkYmwzV3BWWFhaUkc0Ui9ITG1SWjltNUdyaStZYjBR?=
 =?utf-8?B?eXJVR04zOS9VV2VXTWNKTzNMV05IZkxjZHBaM1R4QnVKdDlXQTJCNEVxL0o4?=
 =?utf-8?B?MEZEMDNFT2duMXVUNEsyK3Zia1JvSkozT2g2c0lncVIrWW4xT0ZSeUlkQ3BO?=
 =?utf-8?B?MmNsaDlmV2FLeHJTOUhqc2Z1a25iZlJRanNXbzl0WWdqUkFzTEtBakh0d2Jp?=
 =?utf-8?B?UzZTQ2k5QkNQWjdkaTVSV3FUNUJrZUFScXFSQVdNM0tmS0VhZWYwWWFpcG9r?=
 =?utf-8?B?eTdhNXVRcEN0ckc5OUQrWGhoVTd0dnpsdlZ3NmpSaEdqQWtWYk84U1VHOC9p?=
 =?utf-8?B?aER2Z0Q4UTJmVU4zVEtFa3VkL0U0RGpKUGkvT1Z4aFJDeFg3SGg4YlVGMzQ1?=
 =?utf-8?B?Y2RCaGRkV2Y0UnovdUp4d01MZTk0L2ZsLzFRL1FuSXgzaFdRUEpNTUpxUkto?=
 =?utf-8?B?YjArZmhac0xXUWZTWUQ4dmY3OWpGU1VZd2xsOVhhbmxUQXJrM29RQS9WNFlL?=
 =?utf-8?B?SmRwK1VSVXRWbXQ2SWV1UHZKM05RRGhrcXdwNWFVZHYyU2NWTmxST2VRTElM?=
 =?utf-8?B?TkJXR1BFWk9BREtBSDJvTFZVVnZYMEI5bzZsR05XOW1yRkdJZUFIT0d6R1N3?=
 =?utf-8?B?ZFdPNFpHTnFjTTBTbXVIOFhVdERTS0ZrRkNHc280V01DNmVUSjhiL3VHMUdI?=
 =?utf-8?Q?v1ZSG/aXhQc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WTA2VnBRY0VMK3c5Y0MrUHlXSS9EUmRBNkRzbFRqeEc5UUlRcXlyb2ZvcHNG?=
 =?utf-8?B?ZFRmS1NjUHRIT3JHS2ZjMUJGVTdjWG5qWW85ZkVKd2VKODA2NEV6M0pMQm9x?=
 =?utf-8?B?RWZXWElWU2NGNVZpeE1BSEtZemNhaUJvNzZnb0kyVlpYN25GSWF6TDRrcm0z?=
 =?utf-8?B?VEZEb0RnQnRyaGNzaVJkMVJNUUZnRjJhNnZrWWRtQjJoaE1qdmdlYWllNFA5?=
 =?utf-8?B?RDk2MnVjMUZsYTR3czFQRHB6d1kyRWhxS0RCUWd5OHZFUmp3RjF3K3M5c3Rx?=
 =?utf-8?B?RjY0QTJ4aUsrbXRTNGJMamN4bWFCV2xOcHFBcVdhSHVGSUtOYmw5ZGx2UFlI?=
 =?utf-8?B?UjF0Z1YxVkJPUFdGSzMyM1lJTnA5cEttc2d3NklQclBHYXA3UVRJZmtNWjZE?=
 =?utf-8?B?Uk5lb2VKb2VXYzVTdGhadFRqQWRXRjYyZXdqYjlkZUxNcG1UWDVIbktDOUlJ?=
 =?utf-8?B?TFdyYi9PTnBDYnUvbUhaVlNtVm5TeDAvWFBaS0dyeVJRWFUxaGZ1RDY3ajRY?=
 =?utf-8?B?MTFPTnZiN3pwRW5CSnNYRDZqYTVTT2lSd0RrSlpIM2JzMHN0c2FZMlZMVGtZ?=
 =?utf-8?B?eXMvZDZuZmxnL1FtZVpiQjBzUVRlYWhxRm0wejBwZzRHckc5RkxOQlJaU0RC?=
 =?utf-8?B?dDZDWXJmUkFPaU9YVDVucFBtcHM0eThzU2I4SWRBOXhncGNVVjk4NXN3SGdK?=
 =?utf-8?B?ZlpDcVUrZ1BIdjZ6M0hsZkFsWmdLWm5mK0VEMlN2cXlWWktzSWZZWWg1VDcr?=
 =?utf-8?B?K2txWWc3VDVqRHB0d24vRVU0ejlUVmRxL215WFR1N1pyMUxKUTJBNDlhT3lN?=
 =?utf-8?B?aGg4RDROU2d2SWxiaDlkS3YrZ2J0THhPdG1kNEZGKzBRRER0alFUcWNDVGJl?=
 =?utf-8?B?OHVuRVZEenA2N0lkbkoxODlORDV0OHlBQUg3eXhmYzhtVEtjVHRURDBDQTRM?=
 =?utf-8?B?TUlFS0x0eGZpOTlGUit6Q0wvMkRSbVJzQnRBUDdDR0pqNnExWFI0cjVLek4r?=
 =?utf-8?B?a2VuK0M4Mk9pa2FuUmZWdThnU3hqYjc4RUpQWG9LTlhIcFpxR0pTNEFGNGd4?=
 =?utf-8?B?NW8zWUhSa25QNm1Oem1aSXI5SXJGL3Bibmx5UFNxUEg1WG9nU3BsKzFtRlpw?=
 =?utf-8?B?cVBwbmFFNXdaUEhpSmI2RXF4Tm9nUXhJYi9VZEZYYlAyR1FxajlMNmlLclFy?=
 =?utf-8?B?aDBqQjBFUUxuVW5NQ2pxUGhnc256bEZ5QXpwY1JUTjZnZXAzTkNmTTBiZlcx?=
 =?utf-8?B?VVF4bGExZWNWL2psK00yVnhQVDdYeVVxc3U5QkplQzZZbGdLYStCVUpuUHlQ?=
 =?utf-8?B?VjRZRlJESlQ1MUowTHlxdTRBeWNROFpsbjRiK0VQaUNDTk1XaVBQYVN6ZitI?=
 =?utf-8?B?OEFmNy9ZSXVuekNuMWpMdGpSNGdiNUgzU1N4enN1dWNacTY1RU9FQUI1NTgr?=
 =?utf-8?B?Mm14Wmp4bm9WeU14UkdWK0hHTzVYUm9vb2p3UEovNFIrUGFqNmNxNVdscXJo?=
 =?utf-8?B?c2tJVlVZRzErdjVTWmpwN0ZFcHhWZzFZUkxwYTEvNEllTkQrTDhCTTRYOFF5?=
 =?utf-8?B?VWdLSnhQTzJTbTVUNEFJbFlWUHB5YmxNbUNycHVMQW8zSktBMG1PVGdKbWFK?=
 =?utf-8?B?eHMramJPRjRWS0g0R0pQOG00dUd0K3M1TG5ic1J1VlFzTGhHaEl0UGQyOGp3?=
 =?utf-8?B?aWgvVEZvQWlHK1RYOHgwVzM0R0RuZERTRkFIV1Z6TW5PUWdmTnR3V3JyWXpO?=
 =?utf-8?B?dFAwbmZIWWd6cjVITEgrNTVrNC9ia01Wa2N1YTNBVWZDUlI5SjhYLzJMN3FK?=
 =?utf-8?B?Yy85OFRXeGUzN0pEZ29NekM4bmRWcTYzcFF2QjNCZ2wwYm5HajRsT0xJaXV5?=
 =?utf-8?B?SDNXNmFINzliMDYxdVJxcHJqeDBqRG1oNzdhTUpneUlzdnl6VVFpSzg3OG9m?=
 =?utf-8?B?aFBoY1BYOEtPSXBPclYzK091U3JOYUplWEFFMmVkVlNhYWpYL2JKWnpCK1JV?=
 =?utf-8?B?MVRtRnV1ajZPRlg0UFBlZURkNDQ4TkFFdENONlliN0JNS0xaQjhsL0c5dEJh?=
 =?utf-8?B?S3lFb3R0ekg3SXduWFJ3TDFZUXYyM1drN0ZXRVkvdVJFcjQ2eHFjRmxrTjBS?=
 =?utf-8?B?alNuUjVQaG43aElOd29SazFiMEFTcW5HWXRvYzRQZEM0OGwrdS9SQ2sveXhM?=
 =?utf-8?Q?Rp36hi/EWlr4w+aHYIjsOL1CY4IY1jVXp81CbT5SnckQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4a083c0-479d-4c53-1d4e-08ddfb7e6343
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 15:24:00.8465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d3FP14AEKfU8m67Fh9lnwm1qgFf1MZW25vkXN+4DzFe1Bi4iOrPOC3MKhv1WvQCvK4Ci26MTcmD3HYWYsswvhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5306
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

Use the branch device's actual per-slice peak throughput to calculate
the minimum number of required DSC slices, falling back to the
hard-coded throughput values (as suggested by the DP Standard) if the
device's reported throughput value is 0.

For now use the minimum of the two throughput values, which is ok,
potentially resulting in a higher than required minimum slice count.
This doesn't change the current way of using the same minimum throughput
value regardless of the RGB/YUV output format used.

v2: Use drm helpers to query the throughput caps. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 28 +++++++++++++++----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2eab591a8ef56..f81bc39c26a72 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -96,11 +96,6 @@
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
 
-/* DP DSC throughput values used for slice count calculations KPixels/s */
-#define DP_DSC_PEAK_PIXEL_RATE			2720000
-#define DP_DSC_MAX_ENC_THROUGHPUT_0		340000
-#define DP_DSC_MAX_ENC_THROUGHPUT_1		400000
-
 /* Max DSC line buffer depth supported by HW. */
 #define INTEL_DP_DSC_MAX_LINE_BUF_DEPTH		13
 
@@ -1018,13 +1013,24 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 	struct intel_display *display = to_intel_display(connector);
 	u8 min_slice_count, i;
 	int max_slice_width;
+	int tp_rgb_yuv444;
+	int tp_yuv422_420;
 
-	if (mode_clock <= DP_DSC_PEAK_PIXEL_RATE)
-		min_slice_count = DIV_ROUND_UP(mode_clock,
-					       DP_DSC_MAX_ENC_THROUGHPUT_0);
-	else
-		min_slice_count = DIV_ROUND_UP(mode_clock,
-					       DP_DSC_MAX_ENC_THROUGHPUT_1);
+	tp_rgb_yuv444 = drm_dp_dsc_branch_max_slice_throughput(connector->dp.dsc_dpcd,
+							       mode_clock, true);
+	tp_yuv422_420 = drm_dp_dsc_branch_max_slice_throughput(connector->dp.dsc_dpcd,
+							       mode_clock, false);
+
+	/*
+	 * TODO: Use the throughput value specific to the actual RGB/YUV
+	 * format of the output.
+	 * For now use the smaller of these, which is ok, potentially
+	 * resulting in a higher than required minimum slice count.
+	 * The RGB/YUV444 throughput value should be always either equal
+	 * or smaller than the YUV422/420 value, but let's not depend on
+	 * this assumption.
+	 */
+	min_slice_count = DIV_ROUND_UP(mode_clock, min(tp_rgb_yuv444, tp_yuv422_420));
 
 	/*
 	 * Due to some DSC engine BW limitations, we need to enable second
-- 
2.49.1

