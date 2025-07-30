Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 645E5B159C2
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 09:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F134F10E41C;
	Wed, 30 Jul 2025 07:40:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VykRMxER";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9215410E41B
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jul 2025 07:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753861240; x=1785397240;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=9lV/tZxqi0FPDp3ndrOVZ9eBr22C6pzXcdBCqDfxd3U=;
 b=VykRMxER61mbdLHP+wYwY0y7FpBbk4LxqMcV8RA+Q+MtnMB0Wx0btlCA
 r2XsS/hGWtvefUpAnZN5jB9kXbFL2RVpPlUvXJm/msdBN9O7wIoQEPZXA
 0JSeH3mXpgkWp24STAoix3BpeNzux9HAqRNs4ZEDAekjhFfznR+ac5yT6
 6tHFQefxef5H8hh08H/fZn3rEojo+r03PoKKUUMxl8bVUMgnkCx7XPrez
 C3g4RIaHxU6zfDMsr2sKcxOXvOIZyGikiiUtUigq+0ZtpQKA6G8QfNkaS
 huu0E26raDW5SyVymkDFT0OilX3Cjdx2SKbz2Ne8IkH67X9K9ltCyRpLv Q==;
X-CSE-ConnectionGUID: MISQvBlzSFqSkMl0nnroew==
X-CSE-MsgGUID: W79P7Ys9Q6iA8i0CIf/zrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="56038252"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="56038252"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 00:40:37 -0700
X-CSE-ConnectionGUID: wBoH9LRPTHKoD+YQvyoYOg==
X-CSE-MsgGUID: yKMDgaOmSVCDFKUYqe7yHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="167396367"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 00:40:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 00:40:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 30 Jul 2025 00:40:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.87)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 30 Jul 2025 00:40:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mdq46TElvyLBYH5tzzgbU7jxdcsl6+/CnwVKbMsdQ63n34BaYXjRdQjyW4Ib0EZmuVOCdxKPFZxLyO/V/Fp+MXGBwVlFRQtfUw0gJII//h0poEHM26UG/dd3QWGmqOCEO8SPmkgN94mH6rHh+SUFpyWCCW+Bll28vfzlWMZSc62hQokEZv9bPnSX2W+BwzGDule+Aq5umcAtOU6usv+osZEt9CQXAIrexCN/PbizsL5wlDc4h4GEGqGMuoWe3YdlNSuCNBMprp8EK/gTTMwYLVnWi+bFv6oM54LWAfDZomGa0Cv7JTKlf4IR8mcfQKYOXP+z8+ic+3Cmkvbs75yjTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l2lrvj5n0lv1Xu2aO4tl+OPEDaeVGjHFBdNnW61EjIc=;
 b=nyXYRVwER4y8nbbGLYMAPHC82GNym6QCA0hGaEPsCRWcKwtVCDrL2xttlO9EnOZd//5RBikW3lxq1wK1FuFdXQjD3Tpj7d4ogeumRTQDHY2xWa1Mw3WnlAtIs2DRuiAGxQpcZ3Ksgpscfh3IveOY6QL6042aeum+4kiP4R3GQ1wc7yXEB8kH1NUKZ0Pdpy+EqQKxj1CGxrSnQnQW7X/8SyuNZ/MSaeDp8fFcuCcLHzftSTBvFvq02tWx33tYsIAAQKgZ9Bd56W8DsbKICHy9LmrfyJfVwyH3qfOHWKauLW5V2dqAdFfCYPJIl+PXoioxdBGcUJXyJTJrdpCIT+0rvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB4797.namprd11.prod.outlook.com (2603:10b6:a03:2d4::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Wed, 30 Jul
 2025 07:40:32 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8964.025; Wed, 30 Jul 2025
 07:40:32 +0000
Date: Wed, 30 Jul 2025 07:40:18 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Chris Wilson <chris.p.wilson@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: [PATCH v2 2/2] drm/i915/selftests: Do not leak vm_area_struct on
 early return
Message-ID: <d8277e3af09c388fa5dfbf5c9bb3985ae0b191a2.1753859971.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1753859971.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1753859971.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: WA2P291CA0002.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::22) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB4797:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e10bc83-1c6a-4d3f-a546-08ddcf3c5d22
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NkEweHBzaFZRZDJPKzhLYnNPMjBLM0VvK2V1WE5QTTFPYjhwelUwZms1K3RL?=
 =?utf-8?B?YmFkbVZHTWNma2xFWFpGZXNHMVF0QUE3TXc1WVdmTnJqZDFwY00zY0tFL2M1?=
 =?utf-8?B?SzVhaW5ldW5qdUpibmRKY1hEaitsaml5NEladStLOU9QM0lVdW1GZkZRam5x?=
 =?utf-8?B?d0oxWVJZWEM2VEt3THNqWW9hV0pPc1ZjRFlVNGZ6ZVBXaGpkcnlJMk5YaS9s?=
 =?utf-8?B?a29tWis4a25lRjgxWlFlK2IveWF6MzNicTYrWXFXanpvUFdqNjhKYTNHaGk5?=
 =?utf-8?B?NVkvK1NuZU1BSFYxQk9WbTc0UU5RekRjSEVuVnZmWXdvaTNzVWlGSXMyMFZv?=
 =?utf-8?B?aXkveHM3YVNlZ1FEd1BkT21VcEdsQ2toclB3WFRJZmlUM2laSXVwNEJMcFNw?=
 =?utf-8?B?d1ppemQwZmFoUXduZW9UN0doTzlNM2YyaTdDZ0lJdUFxK1k0NnpPQTNqdFVT?=
 =?utf-8?B?SzA2VnJBZDloL1R6Y0NZWks5OVhWOU5XOVl4NEt2MGVnSDdpd21oWjYrQ1NM?=
 =?utf-8?B?UGs2WjBTNUZaZjR5K3NWNkNsMFR3Q3ZxTU5RU1M0R1lKdmo1R3BESHNZSHdS?=
 =?utf-8?B?MGhab293dmxoWTVTdG5LSGh0UmJtV0tzblJRalZSc2Z5SC8rNmNjNk5YVUhR?=
 =?utf-8?B?L2VHeUlsUWl6NTdadk5INk1PVU5lRmE1c1F2WWJVTUZiWjRMSTd0VDJtbHRJ?=
 =?utf-8?B?QW5Lc1Z2WWJROXlTalU2MGI2MzZucmVkdFRHN1FTZy9aaUdOTkxzWXFEeW1M?=
 =?utf-8?B?eUJ3REFpMmxWRng5SHU5OGN6OFEyTXdKMmMwZ1NmM1BoWFNVMlZqcmwzQmdr?=
 =?utf-8?B?RHhzODd0a1IxcHRWZ2hVQVRpREtBN1g2Wmx3ejhmeU5HYkJoYnhvN1Nja0I3?=
 =?utf-8?B?T05LRll4Zk50dzl6cTlJZE9CcHB1c2tSNEVSZFlURC9jaTByNnd1Y3ZoT1pQ?=
 =?utf-8?B?WG8zWDNOZk83dmIvc0xvbUVOaWZ3M2RLYXNHaWFQZkQ4SVFMUWJTOThtK0Y4?=
 =?utf-8?B?cnVJTk1qVlk2ZkJDT0t4RFpmclpkNmlVNE01ZTN0eVA5WmxmQWF2V0xkWXlR?=
 =?utf-8?B?SFFzTGRWa08wN3R1b2tlMVBYd2hKZ1h4cmN2cGVDTWpMRU9OVE4wWkN6UVlV?=
 =?utf-8?B?NExFOVN1THArUW1FaHprV01BWWJpQVkzQ3RwR2RUVFFIaDcvUTM1K2FWcTUr?=
 =?utf-8?B?MHlUR3ZSbldTZWFwMTQ5S2VSSkVFaGhhNWFPQ0tGYm1lVkdBbUhjcThrZld5?=
 =?utf-8?B?VklyWXg3VHU2c3FBOFZOME1oa1gzU2k0SUJJbVdFYlk3b2VVeEcxRjVyRXZW?=
 =?utf-8?B?NExYdmRhL1ZTcHpwczRJN2o5ZXFZdThkL1gwRDFES2VhYlQ2TzdQeEY1Y2k2?=
 =?utf-8?B?YW9rQlFUV2NZZUJacTVINXV3M2hUQmFUdllCWXN2R2J6a1lUOXZXWHQrT3hP?=
 =?utf-8?B?UTBKNFcvUjkrbVcwcFgxWW16Z0JEaElUS2lBd0JURlFKN3JwU0hEbG9pQmZO?=
 =?utf-8?B?M3g3bFN0WmVISnc0YzVWZUt1ZkoyQkwvcm9CaGYzazhvVzkyQXRxZy82T25h?=
 =?utf-8?B?UjE1UGVheTFBMVBLcXhPYmRjdWNueFZFOFhQaDZmSzFxQXZuanFGSnhLS3BD?=
 =?utf-8?B?WVQ0K1p1OUYzUjEya25mZnNna3pCWVd0cFM1dVo2ems2dnk2QWIzdllqR2Nw?=
 =?utf-8?B?WTZtdkFZc0xPZnhsWGRMTWJZbXAxSXZYOWZISUcxSGVjTnRUaGY1amppZzBa?=
 =?utf-8?B?ajg5UFRyU1ZpOFYrTmh2cHptU21Tc3Y4cU8xdExEQ2pvQ1VFUHJWKy9nK0xn?=
 =?utf-8?B?cktvNzZIQ0x6UUJBb2Q4VVpHdGIyNEVsa3FveWd2N2R4aXY3UlBpTHhzY2g1?=
 =?utf-8?B?bWlLSG5xeGtxQ2hwNnZGUkZsZHV0QzJiRnNYcW1oWTVCeXFwSmJkT1JQcGRJ?=
 =?utf-8?Q?g2Dm7hTWpEM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXoxNHZpck5pSnNRTnZ4dk14OXZyN1R2QU00UlJNSnprM0dYY1NleWlRQ3ZB?=
 =?utf-8?B?SGxaWURVNjVjM0FJaWdxNWdmbkZjcys4NkxwZ0xucHlnR2JXUmMwQThxaVV4?=
 =?utf-8?B?L045cFBlUFBPUGZCUlN6cW1UWkw5RmNiYkFRTWpkUXFKNXAwcHRuOWxjOHp1?=
 =?utf-8?B?Y0dTL0RwcEdydmoxc2RBOTJLK0kzWHJEUmJlYS9ydHowK1lTK0E0VlZoTEhL?=
 =?utf-8?B?R0dmMnBUcVU3VEdOSXpCM3REeDlVcmhSRzRqa2RTdjUzdkFZd2ZvOXB6eFRz?=
 =?utf-8?B?aDY5K05YRlJEcEJZYmRzSWlJNnVaVXJwaG1wWFBHeEZFNTA1amlJODEvVnNT?=
 =?utf-8?B?S1NEVmt3UWM1NHFwWllIYXVIeDZ5VGZJMHF6UHZ5MEJjZ2NqNmNsczMzcUdF?=
 =?utf-8?B?WC9HTGlHNUxSTDFVeHh3Q21pVExSWldrTnRyWWpPeFl1c09WWXBlM0Qwcm96?=
 =?utf-8?B?UEdEZ1I1NlNMRmF0aTRYVTVkVW4zeEtWcGVKNmgxbXgyN09tZE1MMGtQYkln?=
 =?utf-8?B?cnJaRGZKUWZiQzNwRlpVbVFnWFdpUHo2TUI0ZTFKTVc1eS9FMTJ2VWExelQ4?=
 =?utf-8?B?YWhMOGlQR2lTZUNYVkF6T2IzdjUrZ0lSY3ZrZDBHak5WMUZBdUxtMmR6YXBW?=
 =?utf-8?B?SFhZMEx1aWpvYUl1TW4wSkFITE9QZzhIc3k1aFl4TC9QdVhBeWZHQkFVcE5h?=
 =?utf-8?B?Y01DV2xuYyt6dHZYOVNXMTFaM2cwRDNoVlQybW41c0ZjRXhFYU0va25zZytM?=
 =?utf-8?B?U3F1K0dHQVN6T3RWcEJsSVptS2NWL2owUVJ1cXR3ejh2ZlVUdHZuUFlmWURq?=
 =?utf-8?B?UGVMdmhTUVNMeGxtRUV6dkR1ZE9ZSXBpMDF4RFhOOHZRWHkwL0l2eVBjbkk2?=
 =?utf-8?B?NGVpK09RdXJDeFM4SGZFblBXNzNqc3RqR1JUTlBHazRQeEwvMnRBaFI4SVpj?=
 =?utf-8?B?a0RQUGQ4blV5dWlpT2hFQVVxakRyeDVHdWxOdkF3UDZYbk0zQnZBbnhCRnZR?=
 =?utf-8?B?ZElOOVJPUXBWVFZ0dGNDc20wcHF5MFFzK2xKYUdDc2o0dzIvQW5MZFdIVWVQ?=
 =?utf-8?B?Z0ZvRDJ6WE8xN201blovaDg0eUgyb21KU21SMkw5RUZSMTdKSGhPU2xNeURa?=
 =?utf-8?B?NzFxSTRBUzR5dkkwWmR6VjlXUDVKUmJqWGZmV1NrWXhXaWo5b0k3NnlVSzJl?=
 =?utf-8?B?emVrWVh5bzE1V1RkZGQ4b0tvYkxham9OTmV3Y2Fqb3laSmx1QVpEcVR4NTE4?=
 =?utf-8?B?bEd5dzFxY0VENUdNL1pzYllZMDg4MFZBL2hXV3hTME11WGZoQ1J3enY3cDJY?=
 =?utf-8?B?NjNRL0hLcXJENmdMMVFjQUZhWEJxYURmNkRQMGQ5T0pTT1ZSS3B5ZDZDdUJJ?=
 =?utf-8?B?T3EvWTVYT1l5S0dHajMwaHhCY1RIcXJlaXR5OUtqRjlvWC91MC9kQWpGV0pz?=
 =?utf-8?B?MWF5dGZGdG5paVF6TmtaYzNoNnB2RTBZcnVEWEdoT0tHR0tkbFBSRGxZZm83?=
 =?utf-8?B?cXVaaWRPVXVyc1pSbk9yemZ3N0k2aytFVWkrME5QQWoxdXQwNTdrUjVHUS9t?=
 =?utf-8?B?MmZoUFN2SnQrRStxc0dja3RIZEVoNFJhdXp5cWg5L0F3VExTeGY2VW9FL1pm?=
 =?utf-8?B?eWdoS1loWjJvVlpwMXZJNzEzTVhUWWRGUXpnTVZlQmplVW83RzJLOTZwUmR4?=
 =?utf-8?B?dmVQaVJaVTJWN2hnV1ptMHpFYWxodHl5THM4bHU0cFNFU3dDcFVqcjkycm5Z?=
 =?utf-8?B?QlJhempNVXF3ZURzSm5oZHlrNUNhRHhTSXErQUo0UjEvSyt4U2F4aHAySGZv?=
 =?utf-8?B?MFZZN2xtRFVFYjBmb1c4YWNSbGpJVUR1c0FYZ1VyVDJvRWN0RHI1d2lDaGN1?=
 =?utf-8?B?aWJ6Vm1EZmF2ZWhySDkyQUNZNWNwYUhxd2ZUanpDOVA3dTR0UlozR1V2Mjls?=
 =?utf-8?B?cGNDK3ZDNGpYOS9IbUZvSE1heDA1WDAzaTBhOVAwN0FnZkU5TEd2WDJUYnIz?=
 =?utf-8?B?YXgrOHE0WlFFcnFoc2t1ZkprZWVJVjlnYzcxS3pvMUZPUFd1Qngrd0FyazJw?=
 =?utf-8?B?WGF0eEQzMXF6Qmp5UG1GNHNZSXZYOHVDa09iYlE3WDdpV0FuQVhxb1N6MkQ2?=
 =?utf-8?B?WGxiVUNGT2NxWUhqL1VMQ0JnMmVjWlZ1eUl1blpBeG5TNzhBb2k2OTlSRFRZ?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e10bc83-1c6a-4d3f-a546-08ddcf3c5d22
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2025 07:40:32.4964 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HPZdpg623IZiVBBleUJre2VCoGbhi7bdl1v2d29qS5aXAQ8u0gwed8i2rbDIEkW5GqlOFP5+q2bZr1cCKj4vcnwjEX2GOoH/QPq7/QlPuAU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4797
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

This structure may be leaked on early failure paths, so include
vm_munmap() call in them to avoid that.

Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
This code differs slightly from Chris's suggestion, which also
included a helper function:

│+static struct drm_i915_gem_object *area_to_obj(struct vm_area_struct *area)
│+{
│+       struct i915_mmap_offset *mmo = area->vm_private_data;
│+       return mmo->obj;
│+}

and additional check near area pointer:

|+if (!area || area_to_obj(area) != obj)

I found out that the "area_to_obj(area) != obj" part is never
true in our tests, so I had to abandon it, as it completely
breaks the execution. If we decide that is should be true and
this might be a separate bug, then I'd rather fix that issue in
a separate patch, so the leak is already addressed.

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 68 +++++++++----------
 1 file changed, 31 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index c94b71a963b2..78734c404a6d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1096,32 +1096,20 @@ static int ___igt_mmap_migrate(struct drm_i915_private *i915,
 			       unsigned long addr,
 			       bool unfaultable)
 {
-	struct vm_area_struct *area;
-	int err = 0, i;
+	int i;
 
 	pr_info("igt_mmap(%s, %d) @ %lx\n",
 		obj->mm.region->name, I915_MMAP_TYPE_FIXED, addr);
 
-	mmap_read_lock(current->mm);
-	area = vma_lookup(current->mm, addr);
-	mmap_read_unlock(current->mm);
-	if (!area) {
-		pr_err("%s: Did not create a vm_area_struct for the mmap\n",
-		       obj->mm.region->name);
-		err = -EINVAL;
-		goto out_unmap;
-	}
-
 	for (i = 0; i < obj->base.size / sizeof(u32); i++) {
 		u32 __user *ux = u64_to_user_ptr((u64)(addr + i * sizeof(*ux)));
 		u32 x;
 
 		if (get_user(x, ux)) {
-			err = -EFAULT;
 			if (!unfaultable) {
 				pr_err("%s: Unable to read from mmap, offset:%zd\n",
 				       obj->mm.region->name, i * sizeof(x));
-				goto out_unmap;
+				return -EFAULT;
 			}
 
 			continue;
@@ -1130,37 +1118,29 @@ static int ___igt_mmap_migrate(struct drm_i915_private *i915,
 		if (unfaultable) {
 			pr_err("%s: Faulted unmappable memory\n",
 			       obj->mm.region->name);
-			err = -EINVAL;
-			goto out_unmap;
+			return -EINVAL;
 		}
 
 		if (x != expand32(POISON_INUSE)) {
 			pr_err("%s: Read incorrect value from mmap, offset:%zd, found:%x, expected:%x\n",
 			       obj->mm.region->name,
 			       i * sizeof(x), x, expand32(POISON_INUSE));
-			err = -EINVAL;
-			goto out_unmap;
+			return -EINVAL;
 		}
 
 		x = expand32(POISON_FREE);
 		if (put_user(x, ux)) {
 			pr_err("%s: Unable to write to mmap, offset:%zd\n",
 			       obj->mm.region->name, i * sizeof(x));
-			err = -EFAULT;
-			goto out_unmap;
+			return -EFAULT;
 		}
 	}
 
-	if (unfaultable) {
-		if (err == -EFAULT)
-			err = 0;
-	} else {
-		obj->flags &= ~I915_BO_ALLOC_GPU_ONLY;
-		err = wc_check(obj);
-	}
-out_unmap:
-	vm_munmap(addr, obj->base.size);
-	return err;
+	if (unfaultable)
+		return 0;
+
+	obj->flags &= ~I915_BO_ALLOC_GPU_ONLY;
+	return wc_check(obj);
 }
 
 #define IGT_MMAP_MIGRATE_TOPDOWN     (1 << 0)
@@ -1176,6 +1156,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	struct drm_i915_private *i915 = placements[0]->i915;
 	struct drm_i915_gem_object *obj;
 	struct i915_request *rq = NULL;
+	struct vm_area_struct *area;
 	unsigned long addr;
 	LIST_HEAD(objects);
 	u64 offset;
@@ -1207,20 +1188,30 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 		goto out_put;
 	}
 
+	mmap_read_lock(current->mm);
+	area = vma_lookup(current->mm, addr);
+	mmap_read_unlock(current->mm);
+	if (!area) {
+		pr_err("%s: Did not create a vm_area_struct for the mmap\n",
+		       obj->mm.region->name);
+		err = -EINVAL;
+		goto out_addr;
+	}
+
 	if (flags & IGT_MMAP_MIGRATE_FILL) {
 		err = igt_fill_mappable(placements[0], &objects);
 		if (err)
-			goto out_put;
+			goto out_addr;
 	}
 
 	err = i915_gem_object_lock(obj, NULL);
 	if (err)
-		goto out_put;
+		goto out_addr;
 
 	err = i915_gem_object_pin_pages(obj);
 	if (err) {
 		i915_gem_object_unlock(obj);
-		goto out_put;
+		goto out_addr;
 	}
 
 	err = intel_context_migrate_clear(to_gt(i915)->migrate.context, NULL,
@@ -1237,7 +1228,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	}
 	i915_gem_object_unlock(obj);
 	if (err)
-		goto out_put;
+		goto out_addr;
 
 	if (flags & IGT_MMAP_MIGRATE_EVICTABLE)
 		igt_make_evictable(&objects);
@@ -1245,16 +1236,16 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	if (flags & IGT_MMAP_MIGRATE_FAIL_GPU) {
 		err = i915_gem_object_lock(obj, NULL);
 		if (err)
-			goto out_put;
+			goto out_addr;
 
 		/*
-		 * Ensure we only simulate the gpu failuire when faulting the
+		 * Ensure we only simulate the gpu failure when faulting the
 		 * pages.
 		 */
 		err = i915_gem_object_wait_moving_fence(obj, true);
 		i915_gem_object_unlock(obj);
 		if (err)
-			goto out_put;
+			goto out_addr;
 		i915_ttm_migrate_set_failure_modes(true, false);
 	}
 
@@ -1298,6 +1289,9 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 		}
 	}
 
+out_addr:
+	vm_munmap(addr, obj->base.size);
+
 out_put:
 	i915_gem_object_put(obj);
 	igt_close_objects(i915, &objects);
-- 
2.43.0

