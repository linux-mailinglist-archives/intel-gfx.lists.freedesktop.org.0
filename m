Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC04094D08F
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 14:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829F410E919;
	Fri,  9 Aug 2024 12:54:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ob9EQdqv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 619E410E919;
 Fri,  9 Aug 2024 12:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723208060; x=1754744060;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=kv6S5UBNZDp42jjhcLyWpi+36LfVtEcGY+6A3my39hA=;
 b=Ob9EQdqvYenq65eSdCU6d08LkvHnGzY+9+NNjSroVe9xK80APXLe5+tD
 ms/aG0wWEaezV+jqovW+btW6qJlpFEllKKLFX/0YPRc5DIX1Dodu4eAve
 cQ06JygaxDkr5nyuDzJdKwYGoIjVDbwzYMGG7gQnL+CBxEa7u+OPKUqZJ
 Y695dD6mWH4fAgAoBANmEGEkSy5iFtClSAIcZ8IKM7dwqQv48+5CQJ9xS
 DtpqjPCxZ8sCKJVe8y5S/OCky6fbdFP7uXCZYOipGEKpk2LP3HKtn/oXB
 ls6jQklxb5t9jRixrRzbf+VeO04YjSN+BMIpv6swjDP3z00c2COGLOGmk g==;
X-CSE-ConnectionGUID: xzwtjKU7TNadcTwkdPU8MQ==
X-CSE-MsgGUID: zjQXEQF4RAG3TphFHrkK4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="21522144"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="21522144"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 05:54:19 -0700
X-CSE-ConnectionGUID: zcrqFrFBS8y3nN9BKNnHDw==
X-CSE-MsgGUID: OI0+28rcRDGBE82fqpmlvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="62402708"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Aug 2024 05:54:19 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 9 Aug 2024 05:54:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 9 Aug 2024 05:54:18 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 9 Aug 2024 05:54:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fWgx2eIYpgb0j0aSHFzK7HkDzBTMdX/Rtfyph6KwaQM3jkuJ3WsqV/xhBv8yw1UZiQpLBTswwEGcugy4nPtIO/id21+HbznThph7S5ADyVIxg7QxTHUAj0bABNe8icCOcmTMpe2cohaCn2/YYJdNxboW8QDd3vTsoJNnylk/wXF3TbpdmtvMy6DJNNP2xjjyzV9KsJOqoIo/913w+6KGk3SNLdzsLUWBCjAGO1XkY/asg5jEVTw2G+Hrg9r1PPuO3dwLOpxBcXBItU07lLW/9xdCciifhAzxiwz+wJ30OZL5aJCemwylkKGjQgq+MG2pCs8/HSYrk3iLeUWcIxUNVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TxoLwYGnReAQ00rcN9K8kPhOW2CHBJ9kc9lmrXN2ZO4=;
 b=UW3AH9AWFOvQP9UP5/NGUJu0CeTun4fcwSGfMdw15a7ZJe7uBwiU6WwO/raaBkMdyTbdIkhW+mDRGBILBT0EuEgnAZzAULaBJDqJHm2Ku9vhlseLXaBQD26F5F9Bh+C3qWBPtzn1FL/dHLQ0qIIc7Di0flnbfW+3EbkXWetOrzxra9vuM/IzCREpuPUQuuZG+FpU9Te7QXRup+nFSf7DPbaX2O4sj1gBtnc+x46k6dlJCiV8TzJwFmIgK128ZMg2GbZZRBN3IApFwEPYTk851kuorxMPKw6Eo/PvC8KLFEwJrI+JagPebNe867yLn6uYIgq0lk6YOGNf09vmkUMifg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB8421.namprd11.prod.outlook.com (2603:10b6:a03:549::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Fri, 9 Aug
 2024 12:54:16 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Fri, 9 Aug 2024
 12:54:15 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2a6172500e94055f6bf1ab288d8736a53c72cda8.1723129920.git.jani.nikula@intel.com>
References: <cover.1723129920.git.jani.nikula@intel.com>
 <2a6172500e94055f6bf1ab288d8736a53c72cda8.1723129920.git.jani.nikula@intel.com>
Subject: Re: [PATCH v2 04/10] drm/i915: use pdev_to_i915() instead of
 pci_get_drvdata() directly
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <lucas.demarchi@intel.com>, <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Fri, 9 Aug 2024 09:54:11 -0300
Message-ID: <172320805155.4788.8362020347381114825@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0215.namprd04.prod.outlook.com
 (2603:10b6:303:87::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB8421:EE_
X-MS-Office365-Filtering-Correlation-Id: ea2a30b7-8ed4-4c58-10e7-08dcb8726013
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?emFCVHFVUWJKdktwcU5EbllRNEdFMmhObW5SWFYrNEZ1SjZpS2hyTlJRZGI2?=
 =?utf-8?B?d1Q3SVdidnd6ZmxjYTBkTUs5dEFpUW9kZHBiT1hpN3JxME9ZeDBldjRrY1pI?=
 =?utf-8?B?SXlhUzdvRUNjV1FMMVNUZHk4YnJOWnlCa3VFRllXYVZ2UCtHRkpkR3JERm9r?=
 =?utf-8?B?cEdlVGN0dlZjcXNRalk4MVpvSU1Gb3U1bE10YkRIc1hzck5DeGZyajJZeW5y?=
 =?utf-8?B?TDY1emYvMmgzSnJKeGxjdWN2SG1IRytYdXh1RjM1SGRnMUpBanF3SDJna0VJ?=
 =?utf-8?B?MXdKVmJ5bzlzbStDN25QOXpxdElqZlhnOUxKMFl6cGhRZWt6TTlROXAxOERz?=
 =?utf-8?B?b2FFaWJxbU5IMzZUb0lWWE5SeG50dGJRMXRTQi81OENBRmxacWJnZFVOVFVZ?=
 =?utf-8?B?UkFQWmIvbmVqMUMrc0dMSlhRSHQzU1UyUkR4K2FOR2xEY0t2WS8wdE9iNEov?=
 =?utf-8?B?RXBnbHJwaEpKNW95ZWJlaEt4K2h6QlNFaFFFVXBQWG1Pek5nU2VqdW1ROWZq?=
 =?utf-8?B?TXpxcVFuMU4xeUMveWVVVjY2ZE0wM3QxN25Od1F0MGJMeklvdlJKRjEwWThh?=
 =?utf-8?B?UldVeUlzaVMwRTRUamoySUpGVENJSXplWnJ5K1dzMXNEN3JBdS92UnZrSXp1?=
 =?utf-8?B?OXhwMzErRVZiU01aU2hMNlZQZTFCSjFlN2d1VzdSSUhTSlVIUmJLVU8wSk8r?=
 =?utf-8?B?ZVFwZ0w5UHNoQnFyOU5iM0dhT0tYSVJocXhNWFIvM1VoQXoxYmJaQTNaRlds?=
 =?utf-8?B?ZGswbk9iVzk4WlRUVU0wcEI0bGd1aHljL2kwUVpUd3lCYjVNdm93aUVnbHBp?=
 =?utf-8?B?eUFZODhYUVJ4WVZCNHdjM05vZ1g1M0NRSXdZcTIwRjdtejNiV3pqdTBxaTdE?=
 =?utf-8?B?bHpTMm8xUmtQakJibzhXeWJqblBJNGRReXJRLzlHNUN1OGp4VHYxTjc4VnlF?=
 =?utf-8?B?NWFYbXN2ZGVRcnIyYTdYSnVlalN0YVdUZEo3c2x6cFFOcEo2M1VEcGZqNUJn?=
 =?utf-8?B?T3N5WTFyYW9UNGZFck5jRXNRcSs0RGhSWTJrUmlkTTBBOVh3UjU2WG1PSW9s?=
 =?utf-8?B?SXBQeXFMTDZWWkJmRTRFSFE1VFZEdUZORzRwWnpwQWtpVWlYOVl3OG5aRG5o?=
 =?utf-8?B?czlTcmFEdzhDQmNTNXFzR1MwK1lBTkdFK280bUxpTkQ2WC9FeTd5d0s3ZHVG?=
 =?utf-8?B?OGJTWFY2QlF5bFh3bVRlcjQ2NTdQUTJwSk9EeU83bVpDRGxuTlo3cnJVWGVD?=
 =?utf-8?B?NTIya04zYXBrVm4zQ3ZtbS9mR0ttczZ1cU1KT2RjWE5yVldXNzI2aFUxZFJu?=
 =?utf-8?B?M3c0VElwTDFRbFIycDByYzBOaEpZbTZORHo5cC9EazBaRkozdm1sUG8wT01v?=
 =?utf-8?B?Skt6TEg4TG8wWjVqTnF1NGI3Q3A2SHdsRjVyUUVRQXZva0F3MExMcDIzbFdH?=
 =?utf-8?B?V01VbGpjU3NUb1dJZHk4ZC84RUJZd3NiQUJsTHNvWGNkdjNUN1FmVFcvZVF1?=
 =?utf-8?B?YnNRT2g5ajladG15VkcyUHEvbE9CTnBoelFmRU4wWXNTbFptTjhjZTI2bWd6?=
 =?utf-8?B?K016ZVF1N0MzdGdCQStBNVFTVllHNUoxbWF1RDNKdWt5aHVjOEVSYi9tWGVU?=
 =?utf-8?B?andEUVJGWThZSnY2NVRtTkV4eVBHRlltbjkvWC9nUFpwYTQ2emlWcTQ1Y0Iv?=
 =?utf-8?B?VW1BdzduNUptSmQxMTB5U1F4VjA5Q2V1ZUxWdFBUVGcwcU5TSDFjN1Z2OStH?=
 =?utf-8?B?dE93bzlraXE3ZzE0MGdBRXRxZU9yLzBhdk9MWlkyL1lobVl5eWZFR0pOL3Aw?=
 =?utf-8?B?NG14Q3YxNFMzNWpHRnVDZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFpSVVpCZnNXOWI2bEtFdnlmSlpNc1dpNk9MMDZDbEpaOElMUWZqTWpVekN4?=
 =?utf-8?B?US90dDg1aW41c3paMVY5STZtcGlhaUdrbHEvaUVTajh6NmRBRlhjRHE2L2dO?=
 =?utf-8?B?M05RKzJ1OUhwSDB2ZW9GeXc3Y0V0WjQ2bFRZV05MQmRmSDY3Y1NQa0xsWnNE?=
 =?utf-8?B?cmE2d1huOSt0MUVoY2JqTU9PeTdqMjZmRmU2SmVKYTJ4cHNSUTg2Q2t3TXNM?=
 =?utf-8?B?RUdrM3lyMEhmN2VRY1pSNHIwYTBlL25iZXA5NktYeVlsd2VLejRaZTlkQ3VF?=
 =?utf-8?B?NkR0N2ExY3VQTXRUU0FFK051UFBtVm93TkZLYnRlTmZLbndHdWNYcEJjK1dv?=
 =?utf-8?B?ZFRzWlAwTDRxMHhXdGVBSGxsNVJWT2hoT0NxSkJtS003UXlpTHF3d0FUby9U?=
 =?utf-8?B?L3UweXZiNE5tRVg4a3VsS2xnWjdDRGNwTGlsMmFhMkY5L2hwdHNwaVVUZlRG?=
 =?utf-8?B?VjB6QTJlNGwyQW9RUzhCTTNKMGJqeDhPQ2lRMHVIekNsamRkSmgwd2lzcDNH?=
 =?utf-8?B?K3ZUSjBFc1FOdGV2MU1FSk96Z3dQQjM3M0kxNDZIdThxMEsrSjg3T3crM1dw?=
 =?utf-8?B?cVpXTGRxanJzaVRlc0xzdlNCbUkxTzBiZlo3ZGVmRTRIYzlpTzZERXN3a1E4?=
 =?utf-8?B?ZE5DT2NwdTdvdDY2NmUwRmVFYi9vM3J5VVVld1lUcEdUVFY1dU45VmNIZ1Ny?=
 =?utf-8?B?V1BHeXdiL1hXUzR4bmlxTUlVMXJtd1poM280TFkwemMxRUZGM1d2a3hlbzU1?=
 =?utf-8?B?aU82TFJSb1NFd1lyeWFhaXVsMXB2b1RSVnpzQS9aZGRGM2dvSEI5VjBuY0Uy?=
 =?utf-8?B?cTZmdSszQ2JuZFBLNkp0bkJGMzFkc0tjdUdwS2t2VzdxeEJyRkZLbHhhUTB1?=
 =?utf-8?B?M2UxYmtsc3N3cE9IeDZ6SnVNL09qM2ZoSUFROWM5cXp3MW5aanFIdVVlRGV0?=
 =?utf-8?B?K1BUcldOeUtYWlN5UThHbXBTZ1pGbnROUUMyRll2cnN5cFE4bnA3OXFPMUtV?=
 =?utf-8?B?WEZZZFBNV0t4UmJxTVI1TkN6dHBkTkFkTFBHR0pUZEJFZFNmV1dWb0hoMURS?=
 =?utf-8?B?amF5dllhdFAxSndzemNFTm5tZEtDd3MyTjZjWWZITzhjbU1XNFZNVGp2Zy9h?=
 =?utf-8?B?ZTlvMVBVNFVZdDBsTjJKZGR3Y3E3Z244dzhCN1NJS1lOYlBXNE02YWhpYThX?=
 =?utf-8?B?aDNneGNGSXh1T2ttbzBwUytUODJRdlNOVEtQMEd0djd3cStJQjdqSVMzUFZW?=
 =?utf-8?B?UGlRckJ1azVLKzRtOGw5THBaKzFPQmxnaTM2Vndya2Z3ZUJ3N1VkSzFjWWxO?=
 =?utf-8?B?bmwyQXBxWkFEandmRjgvWWZtOHB0dnBHWUtvZmhEb1cwWWdDaGt2NU5MRWlR?=
 =?utf-8?B?VmtWbFB2REMzeXI3cDdjWHZsdlpQWVRJbmk0V0RicEFWY0FIZDVFam5SaGk4?=
 =?utf-8?B?UWxSWWU0RHkvRVZrMGRqR0NPaTZQc1FLcGJHMzc4eWk5ZUZMc21xR0NibVRy?=
 =?utf-8?B?aG44YlFkU2dyMldZd1oyZjZEcnl5bmwvNVFaNXZXY2dVYmtDeW1mOGl4dVdo?=
 =?utf-8?B?NVg4RktnN0NTSDNJdUVuSVNUSFE4a2o2aFJPYlpUMkJMVVpJNVJPS2pySThx?=
 =?utf-8?B?aXZOVjRrOW1uVW5kUEdyNitmK0tUbndxb3VjZHg0c1BUTlJ3Vm5WSE1EOTBy?=
 =?utf-8?B?dEt1UkNQY21icm5oV3RpTE9UNzhLYWQ1VS83eUw2NFQzREpkc3FVNURSaGtx?=
 =?utf-8?B?cVBqWEJaOE03alk2RktNK0N1Nmx2L2oyei9QbXhSb0EzWEZ3VGFSNkZ1MG9u?=
 =?utf-8?B?R0NwNzhFQjRJR2pSKzdna0RZOXVST1JMNDAwQjlOTGtScU1WcDNaczR0Zkls?=
 =?utf-8?B?dFY3c2IxZHFpOWtjYUR1WUlIL2Fpd1NXaWp3UWlXbDh3WnNyZVd4bGJoTFFh?=
 =?utf-8?B?Nnh1aE4wUUZXRHYrSEVrM2JVMnhqSjk3TXNINzJERlEwOStraHd3VStHcElr?=
 =?utf-8?B?dmFqOWdpRXh0MXNVQVZueVdxRDZGbjdnYm9rZHhpdndlczNGNjV4NE9rdVI2?=
 =?utf-8?B?OWZ3aU8rQTJMRmREcGgydDN4NWVNZEhLc0NoTzVwV0pRVUZGNlZBSWcwa0FQ?=
 =?utf-8?B?d0ZFOHI2cFgxa3dnTCtXWnoxTnZ6aytMbGVKc3FYSHpuaW1kOVYvMkJlTlp5?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea2a30b7-8ed4-4c58-10e7-08dcb8726013
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2024 12:54:15.8545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z+T+I/k8tAfhwqbdE3q5WyUxCXEzqOcszwpPodAviMK3WoE+KIBDMWAhJ3bNNZuCi9qUWrHbOQKzgxjvJ3S8Zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8421
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

Quoting Jani Nikula (2024-08-08 12:15:49-03:00)
>We have a helper for converting pci device to i915 device, use it.
>
>v2: Also convert i915_pci_probe() (Gustavo)
>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/i915_pci.c | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_p=
ci.c
>index ce4dfd65fafa..94c89ca2ef30 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -880,7 +880,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
> {
>         struct drm_i915_private *i915;
>=20
>-        i915 =3D pci_get_drvdata(pdev);
>+        i915 =3D pdev_to_i915(pdev);
>         if (!i915) /* driver load aborted, nothing to cleanup */
>                 return;
>=20
>@@ -1003,7 +1003,7 @@ static int i915_pci_probe(struct pci_dev *pdev, cons=
t struct pci_device_id *ent)
>         if (err)
>                 return err;
>=20
>-        if (i915_inject_probe_failure(pci_get_drvdata(pdev))) {
>+        if (i915_inject_probe_failure(pdev_to_i915(pdev))) {
>                 i915_pci_remove(pdev);
>                 return -ENODEV;
>         }
>@@ -1025,7 +1025,7 @@ static int i915_pci_probe(struct pci_dev *pdev, cons=
t struct pci_device_id *ent)
>=20
> static void i915_pci_shutdown(struct pci_dev *pdev)
> {
>-        struct drm_i915_private *i915 =3D pci_get_drvdata(pdev);
>+        struct drm_i915_private *i915 =3D pdev_to_i915(pdev);
>=20
>         i915_driver_shutdown(i915);
> }
>--=20
>2.39.2
>
