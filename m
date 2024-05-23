Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB568CD13B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 13:31:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D52110E100;
	Thu, 23 May 2024 11:31:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S5vR7Nwz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0276F10E100
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 11:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716463889; x=1747999889;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xj9tGt4Pfp06XU7qOfJqjTq8ecT/zS6C1jeG17ylgUQ=;
 b=S5vR7NwzJZQ8CB+Bn2ErZF0KSiJ5a7YZsMQvHXbRVV6OTxfelWGvlDZO
 DcRW0CUAAJ/Ha5Ydj5yiKh0agm8D3OpUp2yFRXZzMIE2FH0JzLyDYGWkH
 5Ny6YA1Gwb+6G+GzTjCOEhAd/JfG9bY9+WGaB4VwjDi9uoGEmAjurKSXD
 5RAowenyseym+QEpHwJ2MNb86wcx0m0itfOYpcA7krC7UZZqUX09fMqET
 I7BF/RHAK8fsQW7Mfv6NC9e6QRBiVv5m4rnrthlEsHKLOIzH2doVSUWWk
 9LoAZ7AAE/G/zFRBBI4BCXGCM0AYVa+JkSXA6QElF44e9gRwcnh9R/0vN Q==;
X-CSE-ConnectionGUID: RAHkvbdRS/m1UzKjRIsspA==
X-CSE-MsgGUID: Zt51M0F9RXWGnaAN+Xbk4g==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="30306939"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="30306939"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 04:31:28 -0700
X-CSE-ConnectionGUID: jsFaE16nSQKLsxHW2EFwuw==
X-CSE-MsgGUID: 0b0lIyQdQUqf03WnJR5xQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33754138"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 04:31:28 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 04:31:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 04:31:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 04:31:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 04:31:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YuHR/MQmOmQSLmF+bi5ogjVn0HUHltaDexsX2Z6eCYN4OACxbUP6cqlz6lraNusp/TTFJ8SKJ2flOirrcpGmUxWYT/BCuzby8BwW/VAM+uilePtyOiiR5vpUfD0wNwwAARZMaR7PZWVlywmVj+Au7TuENzYnsIOwBrLeoVjBK3zSS1+mc7EkSTydjYqzBkY1BKmJWbghx409e8V1M5clZ5j9nmN0F5SieTCwFBYHYTexhhLuyPycvppRRQ1IOFFOidnISftZTw+qdCQI736bN7eKjxxAjE9Tf4KO9OnaFXAAkKgs4li23zsDE5qrtoI4lnXIjUjhg1UGHrCA2UKCZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hd0qKURzl3KVZBGMlDnNQC0EJX3+Y6wsJPjl2Auh/Ac=;
 b=OH+Kg1XoXfk2oDNgRrHmuPzzdEpEKaAAWS5DKNFBQxFu87jCfiT2lo+24hr2oBDpBxnMCXzIYz0KlEFyR8aikK4xm7mvlmqtKqKRnk8Oc6h5w4S4E0SKUCtj7OnAg0zSziHl9s5DlNLzdeVqI12/lhYSD3YWRXW6dhygBd7SP+a7nPSqUh1VasdMwrGw7f3OJHnBl7umaoy58LLLhyt7fGdf3gx4VDyZ36k4wU7YfMOVQhUeq1HwD0nG6NCmHZARgzprA3xnhfzLpkQX0HNXOdJ01bjc3I8QWtVjtJK//a+qg2i4L1X3rKF7FUKijSgXtrlZHWp3PF+5mF+bVoRKKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4878.namprd11.prod.outlook.com (2603:10b6:a03:2d8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.20; Thu, 23 May
 2024 11:31:25 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7611.016; Thu, 23 May 2024
 11:31:25 +0000
Message-ID: <0f20fa81-bfe6-4244-83da-8ace241596af@intel.com>
Date: Thu, 23 May 2024 17:01:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/7] drm/i915/display: Add support for pack and unpack
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <jani.nikula@intel.com>
References: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240509075833.1858363-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240509075833.1858363-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0004.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4878:EE_
X-MS-Office365-Filtering-Correlation-Id: 08ef3574-40b3-416b-edf8-08dc7b1be127
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SmF6N0wvNmxJWTFFRWk4YUNQQkd0dm9HQ1pmZG1JNkwxZTRjYWZQd2RUSEx0?=
 =?utf-8?B?TWVhUTNiNkNuUkRiK1FLbTBVRmhiNytjSS9jU1lveVNwNnRSNVpCZGh0VDh4?=
 =?utf-8?B?TWRxQWkzbjBvVW5RdVlkbGZ6TU9kTUhwcTd4TlpxM2VOOFFpVzlpUUZjYU1o?=
 =?utf-8?B?RkErRUwwSVZEMm5YWkd2MjlldjBSYno0OGQvME9scWZaWDVHdEJxbituRG9E?=
 =?utf-8?B?a1MrOVcwOUxYWEt6VGpya1dZdlRjM0hSNGJHclhGOTB3WWpNb0x6cVFFOWxG?=
 =?utf-8?B?ZVQ3dEFEYmlJd01uTll5QnkzSHovVVg5SDlkdXFQWU5zT3Y1UDFKSy9oVi91?=
 =?utf-8?B?V1I4aGpPMWV1dUJNUVZCc0VxdkwwVTRNYlR0Z002ZUNKdVpuRjVLTnBUbkFh?=
 =?utf-8?B?V1Y2dVp0emM4eGdjVUpZMGNCRXFkcWpxWGNLaFBDMm0wVm5iRHVvR3k1d0Jv?=
 =?utf-8?B?UklaUWtRZkUwTlFVOFVjK0IwOC9pVGF1L2dhUFVlZ1IxZ202K3ZuQTlTVzJo?=
 =?utf-8?B?cEJaL29Gcm9FSU9IODRZdHJDYkZ1b3NqOGd5Zi9VeW1obmZjNzRYdWIwYkJG?=
 =?utf-8?B?eTA2bTh3VjluQ2xYemVQeFdaOXFMR1dtYXBTeDd6bkJuMDZleHMyRW1kdkds?=
 =?utf-8?B?Vk84cFhrZ21IME4yeVh6d0l3VzJXcVQrbjQ1c3J5NXVCTHpweWRLNnVKTVEx?=
 =?utf-8?B?eS9iQnF0bjNGK2ZsbFlFbmdoR0ZRUWVVcjI5MHdVOHRWQm1VV1RCdTRHSVJj?=
 =?utf-8?B?OXAzTndLWHozbCtDTi9QL2RYUXYrVmJ3RDFHZjVWUEs5SnQzQXp3eE40Zlcv?=
 =?utf-8?B?ODJNNllRb1Z5Q2lrVFd4M2xSaEpqeUxIWlpTVm1XdWpGVzBGUjBFQ0tzVTJo?=
 =?utf-8?B?eHFvMmxVVWIwYzJZUHpuVXpKVDRWdzdKUGVHWEd6akpJK200cVpMMFN6aE9G?=
 =?utf-8?B?RFIvSDF4M2NHV3EwczkyRC9GcU1ESUdVTzFBbVdtMGRra1J5UEJDT0dZY1ZF?=
 =?utf-8?B?TTBxTlBEdUxNM2VDdWVPdHBxZVFnTlptcGNmYVEvZjV2RnVjenVxVEVDbWVK?=
 =?utf-8?B?aUJ1TzZyOXRYaXFIU2t2VER2NWViTzFZeDl2U1c2MkJIQU9HZE81QXVUU3lp?=
 =?utf-8?B?MExYQzhzODVVMHpHYXZRREQ4OWRBZ3VDVmRlenJZQUx3T3ZsZytwQ0NJN2dv?=
 =?utf-8?B?M2c5aktVYUl3KzFkU2EySm9Jd1Q3OFFTR0hOeDRuS1Y0b0oxR2RkNlNmWWFp?=
 =?utf-8?B?WFBuVUpTbzJDUTJuN3NIbnkyOTU5Qzd2TWN6NVBQdVZBVHdjdTFTTGZyZ0Zz?=
 =?utf-8?B?WktTaHhJY0RtdENxYmVJdkVhUTd3enlob3pRYzdXY0F2OHBmNlpNNldIRUsy?=
 =?utf-8?B?NWc4ZzVDTzNjbkc1ZUdSRDR5Q0x6cGlod2JKdjRsUytURFpZeUdFSGlNeTNT?=
 =?utf-8?B?SlptTnM1MnYrK1A5ZnQ2bzJWbnZDUUhocWxubC9uRUd2THFyVVJabjQwdjY3?=
 =?utf-8?B?dk9vT3hYa0FDRS9hTTlsemRsc1Z5SWE4QTIyUXAvY1B2cS9HRmJyeGJRZ0Rp?=
 =?utf-8?B?c2NydlU1Q0tXR2RSenVubVo5UjVnb214K0pzMXBCNk1zMjcyRjQxR0o0cWk5?=
 =?utf-8?B?N1RDSjAxenRnOW1mcVp0eEtHQ3g1WnF0cWozTE5xTkRrR1BjQkFJTXQvRXE0?=
 =?utf-8?B?VkFKWDdua2RmSThqSHp0QTZtSHAzT2RRUzZWMGFGK2VscFZlc1Z1M01RPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDdaNDJHTjlDTmluelFvWmErVVVNWWVsWnZMQnlZZjJsdFhMdnBCTVZHWm5D?=
 =?utf-8?B?SC9zVERFTnZvSkFBSS9OL2xGVzR5M1g1UExMLzNyUTNuWjRDeUtKdTZ0OEVw?=
 =?utf-8?B?ZFhpam5Ba1g1bmhPSTVnRmpyN1RhSUVwenFTQk1jNURMbjNhV2pscmNWZjYv?=
 =?utf-8?B?dUJMTUVmdTdPdjZLZUwrNEdqc0ZzMU9KODBxb3FYWm5zT1lQV2pPbWppR3Nn?=
 =?utf-8?B?TXBJRkV3RHBaMWRhUU4zSUtqSkdjeEtzd0JpSDNSYlBVVzg3Zm4rYnJTOUVX?=
 =?utf-8?B?WUJKQ0U3K2Q0V0VIRExRSVFEU2o1YWxJZGFjK0YxUHpNNmdiZTYzK1VRVjV3?=
 =?utf-8?B?b21tcUR1b08yYVlhY0cvQWR4NGUyVGVYK2RkMUFuZ3k3WFZSRDdFYkswRzNF?=
 =?utf-8?B?dCtWalVOTTBXZ0Zla3N5Njc0dWJLRnBrYTYvQU1OL0I3a2NLUjZQckhYYzNj?=
 =?utf-8?B?MGFIaUJQNEs1T0VxcmR4elAvS0VPY05oVWZuOXYzTzlvZ093eDdnbG02N2sx?=
 =?utf-8?B?aW1rN3Iza3RtZWxwU01YeUxSRmJEVHFpN1p2cVUvcTVYb3VyTElwRDhDb3B5?=
 =?utf-8?B?cXgrZkFFeFpHdVVyc0hZenRQUXhUZmlIR2ludEREc3N3NjhnZDg2OTNwREFi?=
 =?utf-8?B?NFI0Wk5PdXRXMjR5cHBVcWdlUlRhN0JtZ2N2czhCeW1IRFhvU0M5WFRqTldz?=
 =?utf-8?B?c3piRjhlNVFWZlVISXdmVFhNbEUxWllqZnllNkdyN2FsaXUrcFdXZ3ZhYUpL?=
 =?utf-8?B?SVc3bWwrcHdWTDg4TFhhOVFodGFMYkl3dUozMlRiU1BnUm9FT3RyN3ZreGNE?=
 =?utf-8?B?bVVPNTB0MXFkYlJqeUlqOHR2TjhYdGNqZVh4UmJVYVFzY2FiQWtCeGtKSVRu?=
 =?utf-8?B?RzZPaHJYWVJuVnh5VWE1UnRuZ1QvMlZyWWVySlYzQ2xoU1o5UnFGRThaZnkx?=
 =?utf-8?B?Z2F1RkNYclRlRFplVi80NGh6TERpWmdKVXZ5L0xnQ21wZndvSzJDSW4zendD?=
 =?utf-8?B?UlVkOHdaUzVoZE5uQXN0ZEU3L1o0VjlLejFBbVc2Wm5ZZzlkeVpRRXdaOUJR?=
 =?utf-8?B?cytrTHYxd0IwWng2OUdkbm1aVUlTbmtxeFR0UG80RW5CL3REWk9tSHhZL2pT?=
 =?utf-8?B?Vy9sOXFSVFRRSldBT09DVmpPQ25KbDR3S3B2cG54VEduM01yVHFlTWxGcmRJ?=
 =?utf-8?B?QnFPSVJnck5DVEdWR0p6NnFFQ0FtbnFaZmxZTTg0S0hCU1huS0luWlE0MEN5?=
 =?utf-8?B?QzV4NS9sdC9qbU40WVdub2pQNDk0WkJGaDRDU1JDMWdwYWxXbWVkaXAwQXhO?=
 =?utf-8?B?NTJ3VFVzdEtJcHBoQzBDZHdxUnJoVjRQN0VKL0VZLzlUL3dFcnkvQjE0dWt2?=
 =?utf-8?B?bzBpZlcxVVorSWNZVElONnlyTE1kUEZMRjRTVFBjK3BNa3JWVDNpUlM5WXFZ?=
 =?utf-8?B?aTI5ZDJGdTZlcXFhc1VTR3J2ZHJRV1Y2alo0ZWc4Ym1mT3l5NGtwVGtHOE9j?=
 =?utf-8?B?dmFJWGFaazVKMVR2YjRLUkVNMDQ4T0xScTYwYmhOS3BzS1VqM3REZURwSnVX?=
 =?utf-8?B?dkJtZm9uRDIrVy83elJLc0pqTWlSSmpTQVNpRnhKTlFXVDAwYWVWQWE3c014?=
 =?utf-8?B?OXNJc0lpSjB2MFBRcmF3S21kQmEydXdnRjJxck5rdkZuZXJJaG5nVXMzQTht?=
 =?utf-8?B?U0h5bmFid3lhcG1UOVNsYWpTNmc4NG0yQ2lwRjZRSFJYMjlTMDVkVG10THho?=
 =?utf-8?B?bW8xcG42SkxJc0k4R3EwMzd6QkRzckM2UTJBVHN2bjcrV0RBd3ZZd3ZNYmdi?=
 =?utf-8?B?dGwzM1dIaHNHNVAydHcra1FBZ3ZiSTQ0NE0vVE1kSDY1VDg2TU4xNy9kMVY4?=
 =?utf-8?B?NE1BS1FwbkhUcTNLbWRNcWtDOC9CUWg1NkJSaVBvNDFTYkk2ZWY4VGdnZ0N3?=
 =?utf-8?B?d0IyNlE5NTJHd2RVUThGdTB3czNrT0lITjJ6QTRYUEJ4R1Q1elRkRjFJYjYx?=
 =?utf-8?B?Z1BBMHVTOWlZNkhva0pJNXlMcDNscTc0dUswM2dJNk5hT3E2ZHFKOUtSM3FZ?=
 =?utf-8?B?RW9QMjZPaXdyNlkydlExQlFIR1Ava1VoZlRoNXJLTGpyajNPVG9tdXd1WVo5?=
 =?utf-8?B?anBYSFJRMHFBVXg3a3JpbEVOd2YrQ3AzNDU2Ym1TNko4VG5sN1JQSGY3QlVu?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08ef3574-40b3-416b-edf8-08dc7b1be127
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 11:31:25.2619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9VA1jqZGdzxe/BifSygcfBGIrAOKOMCyCDjb/jkl+owzP3l3zCVGFFhNVQmgoAngvZ2Q+6LtdGfNHNLUsUsIMR3zhP6OOMJWs47jkttpktM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4878
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


On 5/9/2024 1:28 PM, Mitul Golani wrote:
> Add support of pack and unpack for target_rr_divider.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 486361eb0070..523956193fbf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4228,7 +4228,7 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
>   	sdp->db[1] = as_sdp->vtotal & 0xFF;
>   	sdp->db[2] = (as_sdp->vtotal >> 8) & 0xFF;
>   	sdp->db[3] = as_sdp->target_rr & 0xFF;
> -	sdp->db[4] = (as_sdp->target_rr >> 8) & 0x3;
> +	sdp->db[4] = (as_sdp->target_rr >> 8) & 0x23;

I think this is incorrect, this should be:

sdp->db[4] = (as_sdp->target_rr >> 8) & 0x3;
if (as_sdp->target_rr_divider)
sdb->db[4] |= 0x20;

Regards,

Ankit

>   
>   	return length;
>   }
> @@ -4410,6 +4410,7 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
>   	as_sdp->mode = sdp->db[0] & DP_ADAPTIVE_SYNC_SDP_OPERATION_MODE;
>   	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
>   	as_sdp->target_rr = (u64)sdp->db[3] | ((u64)sdp->db[4] & 0x3);
> +	as_sdp->target_rr_divider = sdp->db[4] & 0x20;
>   
>   	return 0;
>   }
