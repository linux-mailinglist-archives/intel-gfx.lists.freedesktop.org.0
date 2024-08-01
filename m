Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 860BA945196
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 19:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C4A210E0A7;
	Thu,  1 Aug 2024 17:38:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CT7xB/RJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 632A710E05B;
 Thu,  1 Aug 2024 17:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722533932; x=1754069932;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=HrgxSwuhh20US1yQbnPqXUVzFhVtd75VRYCetBRlo/Y=;
 b=CT7xB/RJzMN6JCuhZYnw+zWQLq5N8B/YaAbB2lBOtQVU2M6c7rWUxGc/
 ipuKO2frGfMGgvkR0bTEr6QJQL0oXZlm1/HFBSGPdFpw7z62cuef9DmOD
 wFniIZjE6+ToUrCLlsLQUgTjaB/0OE0SDTlapt+Acfs+g2/f4NqMVdR+d
 G+56zekLGasBxBgqAp1IxMkJTAsbJy2QSI03YdzWD9ALaVtinuPLDMkvn
 t4+Ca8LlREgh2JAVpxpOxHkxuCDWh76oTiG39w7vxlOFW52JGdRwMo9FX
 8+BLJn1nO273x667Vik8G+fMnHm2l03TDcA3ptPHoIfYJ2wf9loItG96q Q==;
X-CSE-ConnectionGUID: 2Tl5xbr7TtixwXcltgsuGA==
X-CSE-MsgGUID: 4jJbg/+PTOugvR960EbaVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="20099851"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="20099851"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 10:38:52 -0700
X-CSE-ConnectionGUID: YMwkjs2ZSNq/mGuaotkUPA==
X-CSE-MsgGUID: TX/V7MrPSQCRoQmrRH8s3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="55721414"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 10:38:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 10:38:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 10:38:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 10:38:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GhdnWGj1LQpatuFtxzTODAuojN0CoSnSCpS+C1FNMzo4BNBfaMjPEsvp3PZoOUBYdgLmOx327t1qv9g/tFr9XRw9x4ev/1eIa65mvyN0frVi+LtLA3EuVwpE67cf3ewX96OXhjYqkHsVNiTYYZx8LGBVTE/9bl9Avla/gQGACHS6QwJPcfjzHpxXJ9xCnsI0Xk3/HPQek+HbqER0oGFHoee0Km+sJlTtBkG9Ite+uEBEm79oEOLJm1/P0T58q5jqk0qFC1OgQYw8x60kJqamIoWOCWyf461hASSr+KuEIkiSISt4Jus6pMMue9YYy51hrpJBO6UDENR8xqOSsEixpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o8dFMWdWEG7XKwEhWGNYnyRt150Y2GSfqSSn3QDJfMk=;
 b=qT8/Qx0vrTYx5fsRdFEsOYx4dujuZU+F4y7iT9KumnP1xoWi5gve02IBhSdV5RMFf3MOG8cHevVzdqvYdE3qoU2mv3F2lnfApd3+RNOraTmThsbF43iWYpNdRyU67Zpyn8HpWSZHxaY11++Br1Nk8LrSWxRnTAOBu9Zn6nY5ucs3gk6R8YaG3CD4JUygiWcbBukemWKiB1Mq+9nBU5gaXAuBGRUeY/do3KG4b5kW/QSuhVxhTyprppfM7pLDgNmiVZw6yQSWqC67KI2+2JZlB0eh4x1PBn1PcTIjJepzAhNEf09+Cho2Vigxed95qDDigqx6qegv+V1pzg8nD+WCOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV8PR11MB8748.namprd11.prod.outlook.com (2603:10b6:408:200::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Thu, 1 Aug
 2024 17:38:45 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Thu, 1 Aug 2024
 17:38:45 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <c479244bb25e915c6467f76e48a3260455454dd9.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <c479244bb25e915c6467f76e48a3260455454dd9.1722263308.git.jani.nikula@intel.com>
Subject: Re: [PATCH 05/10] drm/i915 & drm/xe: save struct drm_device to drvdata
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 1 Aug 2024 14:38:41 -0300
Message-ID: <172253392110.5121.3280125155104128634@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0357.namprd03.prod.outlook.com
 (2603:10b6:303:dc::32) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV8PR11MB8748:EE_
X-MS-Office365-Filtering-Correlation-Id: e9705fff-a981-4546-df89-08dcb250cb1d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a3k4ZGMvbHp1RDArNGF6VkZOc3BScndtOXJtcTBJSkE1U2RkeG4zdHZweGZy?=
 =?utf-8?B?RmJtMHl4OGFrS1h2b1c4QklRZlpsY0JOelFUb3J1NGdIdzdCdnFnYXU0RDg4?=
 =?utf-8?B?MGtGRzBScTBhS2ZLcm9ZUktkYjdhbGRDZmJwV0g3QW1TNkgrOU1pd1QvbHQv?=
 =?utf-8?B?MktwMGhuNEFJTHFpcWNnbjRDMUFGMjVlc3B3SEltMExRNUdYTHZ0RXU1eFJN?=
 =?utf-8?B?eFF1TFhraUw4M0kyQldIYVg5N0RuelZGVjhzL0NsbHdGek0rL2hxZk83MWw5?=
 =?utf-8?B?ZjJBM0E5aHFuTmVpQ1JSR1c5WE85TmJsWjg4VGMybVU1UEhGK2FOYTFhNFNI?=
 =?utf-8?B?dXZDRUhyZTNPRENucy9FMlJzZnJOZ3lOWUNWamt0ODU1K0ZLM2dYM2p5L3lC?=
 =?utf-8?B?aTlLYVNacEhHQTJlM3B6aEsyVCtxOTlRRmtoWlNZMkttYVZ4bXo2OHp3bThG?=
 =?utf-8?B?b1E3UWNhTVp1WklaL3oyYmZQVldsMjRKTldLYVA4d1M3NlJwQm5TRWhBTE9D?=
 =?utf-8?B?NUxQaGFrQzJ2UnNvZjdveVhZSkg5OUlpdGVseU1jWVVDSERENWErY240VE14?=
 =?utf-8?B?dzRiYXo2NkNZUkxxYU96aFRNMFFaQzJ1YWhoM3IvQ3I1WnBFQ2xCTDhudndx?=
 =?utf-8?B?SklsZnduZVlaREVIbUw3WGE2Rk9iTHVTT1Iyekh2RGRwMlE2YTFYUlVLbi9q?=
 =?utf-8?B?aUtYbnJLSEZGdzc4RGhxdzVBdDY5M29SeTBUbS9XczhiejRMMlZoWitZMTNN?=
 =?utf-8?B?YTVicjBvNWdIZTlWUjYvanRJSUtTZ0dnZWVOWE1wR2h0VzkraWNQNE5wSXJm?=
 =?utf-8?B?aUh4eGdFSU41OFN5OGxUN2NQbEU4VXFpNlRqdC9nVW44ZEpCSmNMTTVKWHBj?=
 =?utf-8?B?VUh2QkF2akExa3VlUUM5VEZoalBFUW5xUGp6dkVzdWEybURnSUNWYkljZk1o?=
 =?utf-8?B?L2lYYWg5WmtFdUZlNGxNT0wyNFZFQkh1Kys5UVp3aEwydHJZajlHS1FOU28r?=
 =?utf-8?B?S0xIMU14TEZ5a21qQkpMMzI0ZWsveE9CVFljc2Z5VXRhTVBGcVppQ29IT0hE?=
 =?utf-8?B?ek5hY0FpYWZXWGVKcFBraHk4WmRibjBlL3lOUitUc2syUTlvRFI4cUtYVjlL?=
 =?utf-8?B?aFdVVmRnOXhpcWp3Uitza1pWL25DMWlBUnM4cGkwcG5CcDZ5NDJRTTF4c1Mr?=
 =?utf-8?B?cXFpWUNEa3Y1VnZJTnM0dWZRYklSTFd4Nms4NEh6NTZOQTVFUnNNcFlTMEZC?=
 =?utf-8?B?NVdOWEdodXpHQ3VaYjdGdVUxdlNpckVoYnAzUkZDMG1ZQkJFYUUvSTlkNlpN?=
 =?utf-8?B?aXJweURNSFFGWEFSZFQyUGVOdzZxUFV0UzJOS0lxTGNuRy9tUFVVUFZDSlVl?=
 =?utf-8?B?WGRmZEVZWlNoR1h0aFRyMUkyck1rcXMxakZBMXhucml4Q0d0SENSNjQ2eXNG?=
 =?utf-8?B?OEdUNmpmUnJIcG4yUEExVGdEMmJ6c0VvSnJzd08rWW9zek4rcSs5TXhrK21B?=
 =?utf-8?B?QVUzamZDNkFKYlNHZ2FtT3N4eStRVDM0OHMzZkNTMkhaUkRxK1VZdWdlazEw?=
 =?utf-8?B?TkNHNHpETWQzMU0xb2U3UDdDSDJmL0pUSVhnT2VKZ0Y0eW9JV0xLVUFLUHNK?=
 =?utf-8?B?Z0xKdkh4cmU2VlN4VGN4ZGV6OWV5SUxFb3pJZzdFT1lhWnpJSUJZRURncWVR?=
 =?utf-8?B?UzZoUU1BT3NvcE13WmJ4Z2lKdDF5bHBldGZMYWsrZjU0VGcrWFo0OWNYejMy?=
 =?utf-8?B?dWNrdzRxK3BhUnFKOXpMZFByQTl0cXJnTUlKanRaMzMwaDEyNVpNSDZaZFRa?=
 =?utf-8?B?VkRoTjZlcGVuQndFd0N5dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkVFV0lyMHA1dTU1VzVUMnVYNWxWc2pEelRXSEN5cDU4NVZHODcwK01YQUJW?=
 =?utf-8?B?L241WHY1NENKU2k3eDVZclVlUXdTeDFKZERQejB2b2t6aHM5eDAzNkl3MG83?=
 =?utf-8?B?Q05uamdsaExqSDJsUGp4Y2x6c1p2RHNMbHlZNkZCS2F4aWF5bHpXc3NXZHpv?=
 =?utf-8?B?cXlMZ3N2MXordFRvV2RXV25wMmV5OEFyMnErN2pPb3Z5RkQzbEFmaTg3ZG9p?=
 =?utf-8?B?T0FHOGhqamZ6MHZ5SmtmUk55YmxvLy96Y3lJRFJ0Z3BsSkhjUFVuT1RPekI1?=
 =?utf-8?B?SFJPUllJZE1vZmNiR28yMkNqQm52QmphbEhoVXhiQy8veTlwWGYyYXhxQTF2?=
 =?utf-8?B?dFpLWGhlRTd6aHFMZWdiREk4bTlRMHd1cGJ1eUxXaDZsU3Vac1JyWjBGZlJD?=
 =?utf-8?B?UUVOQkxUVWlkbUxWSXlsaElCQytvRUs5ZTNlZkRTMDRUb0JEbDg3TFJkVFQy?=
 =?utf-8?B?c01xVEJoZUpLeFVLSEtGdFZxV25iY1RoUlM5azBCK3N2ZlNSNnNJakRtUlZV?=
 =?utf-8?B?WEJjcWFjTmJGejN4SHdjY2wySm0zTkt1Q0RRT2xDcGFoWGtMbzJHQzJYUkR2?=
 =?utf-8?B?clpZbXVBQnJQVmlPMU1MS1NQeGJiaHZrZDJ4bGhhU2tWWEpjNWs2bURFZUZJ?=
 =?utf-8?B?NURkc3lVcnhFSW9KN2xMMFFuYVVJVkVwSm5XM1FJWmgvd2ZuY0ZuODRLeWJL?=
 =?utf-8?B?OWxDdDRqbzVFUlhrTHN1bS9qSGVTRStlWC9KdUNSbkxLemxWb0NmZWtzcTFw?=
 =?utf-8?B?a0YvSjh2aS9MQVlndU1mSG5OeWladXptNUc5UUJxd05OT3Irdzhia3h6SGlR?=
 =?utf-8?B?RENnUC9CYVdBY2dxQkhMNEN2TmpmK3hwR2daSXBJTERIeDIrN05xa0JlUlVp?=
 =?utf-8?B?VEV0UzVCbUpJVlhBQlhhaWJJMk8wT216bm00VTdCR0hBTEdjSlJ5NmpXVUhG?=
 =?utf-8?B?b0RZYkFZU2cwZ295Mm9OMW9QN2Myc2RrRlkwUmpGZ2JZZzIwQmZvYzNZWldw?=
 =?utf-8?B?aGlseUR5SUNPbk8xelJwbm13UTl0REw0SlhFSkFlVElteHY2OThYeDhuZWdh?=
 =?utf-8?B?aktEZ1BhWGxkb3NqMGMrZUJpQys1QzRySkdsV1lraElMM0RXWVVKdEFCUnFN?=
 =?utf-8?B?dVhIdGw0cHgzT24rRTBsQ2J1b2lYd3VESjdNMDVhSXp5SWl2dDFDVFZzVW8v?=
 =?utf-8?B?UHV6bGdNNUZUQjRCc0dyTEhZaVhaeXF0RDg2Yk16MlY4d2NENW9KaGJQeCtS?=
 =?utf-8?B?S3pWbk8zU25hM2N3WS8vdDVqaElKRW9LSkVibk1pZGZhSUw3S1ZUVkVaUmla?=
 =?utf-8?B?TWFPcGlBNDJ1TUN1K0QxalFpb3lZVkhsdG4rZmh0OU81Y21tbXZFUXY1NFB3?=
 =?utf-8?B?djhWczR3aitYUEJHRjNadERXS0ZWeXc3bTNVVnFIKzR5eFFMTVBqSzIycnI2?=
 =?utf-8?B?WFRPdi9WNmxocUFOcGJMM0I1QktLYVlWcU9ibG1GbTNiWVQyRzY2YUdraE1B?=
 =?utf-8?B?Zm1rRCtVbklEOElRQ0pmRDJKcU5zT2ZITUo4TXd1aDJxRmpscDV0OG4xRkpT?=
 =?utf-8?B?QzNNeXBQNzdmejF3ZnVwTkhNT3VJNjRwYWEwVU4xKzErNGFpMkJ2UjAzaG1C?=
 =?utf-8?B?SnFKM3ZWTlNqWUNyRXRuM25KazI1OEE4U2R4TnZVbGdVek5vYXIrRW1UQzJK?=
 =?utf-8?B?THZaKzJVUld3UUZDVlFzZ2RZUVlJclZ1MThSWC9zVDZVTGR2V3ZHME5Va1cx?=
 =?utf-8?B?b3JnbW9pbEpBTFBTekdJajVMcHFXa1FRTC9ETm5LYWRZa3liMzN0WkFkY29Z?=
 =?utf-8?B?V2ErMVpuTVVlaURQdVFNL1pDaGdwbHF4T2pWK1RjWnZncnpBc0xtZ2wrQlBV?=
 =?utf-8?B?KzJPcXl0SzFSRW9DakVyUzl0L1l6WXFOdnFIVlJoWllmK2tpMi9kWVpvZk56?=
 =?utf-8?B?TFJKY0MxbW9RWmREdkZaMERKUHgzbjRLNnlOU3dNNnRsblM0RXlwc1VzTTZW?=
 =?utf-8?B?akJrNXVPTy9uS0ZGOHF5UUNqTFZXVk1nZHU1QVh6a1VFL2FJRjhvdmt3SFUz?=
 =?utf-8?B?amVtam1UVGNjRk5pb3BBNkRTTDVxeWE4SUFmNDVMTENMWnJRSmczMHFUckZV?=
 =?utf-8?B?bWVUNmp1NG1zeWxRdmd5QThLblJGQzZwUDBQelptZENXRmMvdlhVdHl1NG9R?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9705fff-a981-4546-df89-08dcb250cb1d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 17:38:45.7355 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W5hxZj6PVLHvjMmjl6GayrssxvRgB5IcZD0TWnQ7jEQy1AGUUFkvpqCncSAoLAcWQ7bHLuXPqZUehQV9nB0qcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8748
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

Quoting Jani Nikula (2024-07-29 11:30:06-03:00)
>In the future, the display code shall not have any idea about struct
>xe_device or struct drm_i915_private, but will need to get at the struct
>drm_device via drvdata. Store the struct drm_device pointer to drvdata
>instead of the driver specific pointer.
>
>Even though struct drm_device is embedded in both struct xe_device and
>struct drm_i915_private at offset 0, take care to check for NULL before
>using container_of() to allow for other offsets.

I think the second half of this paragraph could be rephrased. One might
think that the text is suggesting that checking for NULL has something
to do with allowing other offsets.

I would jump directly to mention using container_of() and would assume
that it is implied that NULL check is necessary before using it. :-)

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/i915_driver.c                | 2 +-
> drivers/gpu/drm/i915/i915_drv.h                   | 8 ++++++--
> drivers/gpu/drm/i915/selftests/mock_gem_device.c  | 2 +-
> drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 4 +++-
> drivers/gpu/drm/xe/xe_device.h                    | 8 ++++++--
> drivers/gpu/drm/xe/xe_pci.c                       | 2 +-
> 6 files changed, 18 insertions(+), 8 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i91=
5_driver.c
>index fb8e9c2fcea5..176c13c2e191 100644
>--- a/drivers/gpu/drm/i915/i915_driver.c
>+++ b/drivers/gpu/drm/i915/i915_driver.c
>@@ -723,7 +723,7 @@ i915_driver_create(struct pci_dev *pdev, const struct =
pci_device_id *ent)
>         if (IS_ERR(i915))
>                 return i915;
>=20
>-        pci_set_drvdata(pdev, i915);
>+        pci_set_drvdata(pdev, &i915->drm);
>=20
>         /* Device parameters start as a copy of module parameters. */
>         i915_params_copy(&i915->params, &i915_modparams);
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index d7723dd11c80..f6edaef73db5 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -365,12 +365,16 @@ static inline struct drm_i915_private *to_i915(const=
 struct drm_device *dev)
>=20
> static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
> {
>-        return dev_get_drvdata(kdev);
>+        struct drm_device *drm =3D dev_get_drvdata(kdev);
>+
>+        return drm ? to_i915(drm) : NULL;
> }
>=20
> static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
> {
>-        return pci_get_drvdata(pdev);
>+        struct drm_device *drm =3D pci_get_drvdata(pdev);
>+
>+        return drm ? to_i915(drm) : NULL;
> }
>=20
> static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
>diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gp=
u/drm/i915/selftests/mock_gem_device.c
>index 0bd29846873b..91794ca17a58 100644
>--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>@@ -172,7 +172,7 @@ struct drm_i915_private *mock_gem_device(void)
>                 return NULL;
>         }
>=20
>-        pci_set_drvdata(pdev, i915);
>+        pci_set_drvdata(pdev, &i915->drm);
>=20
>         /* Device parameters start as a copy of module parameters. */
>         i915_params_copy(&i915->params, &i915_modparams);
>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/g=
pu/drm/xe/compat-i915-headers/i915_drv.h
>index 2feedddf1e40..766fba88a3c8 100644
>--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>@@ -23,7 +23,9 @@ static inline struct drm_i915_private *to_i915(const str=
uct drm_device *dev)
>=20
> static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
> {
>-        return dev_get_drvdata(kdev);
>+        struct drm_device *drm =3D dev_get_drvdata(kdev);
>+
>+        return drm ? to_i915(drm) : NULL;
> }
>=20
> #define IS_PLATFORM(xe, x) ((xe)->info.platform =3D=3D x)
>diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device=
.h
>index 2c96f1b2aafd..022876eebfd5 100644
>--- a/drivers/gpu/drm/xe/xe_device.h
>+++ b/drivers/gpu/drm/xe/xe_device.h
>@@ -17,12 +17,16 @@ static inline struct xe_device *to_xe_device(const str=
uct drm_device *dev)
>=20
> static inline struct xe_device *kdev_to_xe_device(struct device *kdev)
> {
>-        return dev_get_drvdata(kdev);
>+        struct drm_device *drm =3D dev_get_drvdata(kdev);
>+
>+        return drm ? to_xe_device(drm) : NULL;
> }
>=20
> static inline struct xe_device *pdev_to_xe_device(struct pci_dev *pdev)
> {
>-        return pci_get_drvdata(pdev);
>+        struct drm_device *drm =3D pci_get_drvdata(pdev);
>+
>+        return drm ? to_xe_device(drm) : NULL;
> }
>=20
> static inline struct xe_device *xe_device_const_cast(const struct xe_devi=
ce *xe)
>diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
>index 7bb811b4a057..f861b8cf931a 100644
>--- a/drivers/gpu/drm/xe/xe_pci.c
>+++ b/drivers/gpu/drm/xe/xe_pci.c
>@@ -800,7 +800,7 @@ static int xe_pci_probe(struct pci_dev *pdev, const st=
ruct pci_device_id *ent)
>         if (IS_ERR(xe))
>                 return PTR_ERR(xe);
>=20
>-        pci_set_drvdata(pdev, xe);
>+        pci_set_drvdata(pdev, &xe->drm);
>=20
>         xe_pm_assert_unbounded_bridge(xe);
>         subplatform_desc =3D find_subplatform(xe, desc);
>--=20
>2.39.2
>
