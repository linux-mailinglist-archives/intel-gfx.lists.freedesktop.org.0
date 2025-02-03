Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3DCA25869
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 12:44:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EE2810E027;
	Mon,  3 Feb 2025 11:44:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F/N7cTOA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C149F10E008;
 Mon,  3 Feb 2025 11:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738583078; x=1770119078;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=YFNqt5qjkrEQkdqC3ajZTpX9jkXjNmqQfNHiU5c6Xxs=;
 b=F/N7cTOATUjLeRq0VXS+Do51JmlHAXeLrRKHaAvU3HLNx2QNqppXSfZa
 QGpvItZ0WFb1E6rva7jGA3B6nAl5UHc/QPEDFy6yhwZo8++FRIB3xbKIe
 eqREA3Ta/GrFQ5aJa4sPiu6AjAsRxMY/qftECyuqZJcJ4mkEoaWoL+oFG
 uQ+S7v+zpJZgcmj4aRZSrMaxN424HW1zAasDJ3o0oI1Qox82GrNAtbVLK
 NoBPVfvqwiCTzKa1U6rS6XH1S86/I8KjrdAEjmycGgOgYsnmvGdOHWS9U
 ymM4cMhM7v+Go6xAppAeSfJL+E+xuqqJY9PrlNd/z0YUq4yRUlt8K6vhO g==;
X-CSE-ConnectionGUID: M2jSQFXKSSuh/epvFBl0ZA==
X-CSE-MsgGUID: PpGCvl0bSl22UYJqYocqxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="64427459"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="64427459"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 03:44:37 -0800
X-CSE-ConnectionGUID: lk9JlpFTRe6xolNoRn3aZQ==
X-CSE-MsgGUID: w0bJADuIQ06vR6FfSUX5pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="115242919"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 03:44:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 03:44:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 03:44:36 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 03:44:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WrdgUi6H8EEzlZ5IVLZCUlhwdKA8g4v7hW3EowKT3PthqymxL5u8ybmqi2Wtbs59OFdLdGwQxzVWazaVw09bY8Aaht5a+HwUknvqS+pBWIiekyBHbpr1/bwywMzigz6G+OT0Jhg8khilHzROvLf47MFUqQoJ90+aqcb1G7Ya31VSjjQAzUOzSVlzXgbyB+QO7jyxbf3uCr1tVOVEhU2NOXeXfOjWDI0WNPnRhv/NN1J821YH+Ups0++1EPqpyfrhrcofFnIA6BcizLjSQh7mReM9p5JdNtgu7DOmA7SXTTkijQbczWs0BqtMVnOFkv5bt7lwlR1B69508bW7LBO2Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YFNqt5qjkrEQkdqC3ajZTpX9jkXjNmqQfNHiU5c6Xxs=;
 b=nb3fpAPPrNVjQcSZa9Ydb1p005SlK2rbH3QhBOyFQqyMoOSG0b+O1APkjVTDFE9AHOF8IAci2uJFSot/EG6G71S5T20IQ/bLO4wULkaqkbaEyfPP1O5vJh7DYug7GkPfMrg/5rphbhVhdEGK3fCIL0kL62PdZjbpeAtvNoSXnsv+McBdMj4QIw/sRhvJ+mKUvNL7B2+4YtHhf7jJf25nMwJ76ArCFNEJSx2PLPvMpF0ylbIFZpkqCrBODDk+zKRUrgjgzC8rwOVtIGsWjROlWH7FKSAJVUMcQO7MDP9VxSC9F1SrwyzXkQ63q+56xHrbRl5DsOHSi5Ygvs9Vc6jBew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6196.namprd11.prod.outlook.com (2603:10b6:208:3e8::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Mon, 3 Feb
 2025 11:44:34 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8398.021; Mon, 3 Feb 2025
 11:44:34 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <he7fbsp5ccqndn7iz344z2vz6qvdc4dsrxjsh27vc5nljrgsw6@dxgworjh7cnf>
References: <20250124191250.56833-1-gustavo.sousa@intel.com>
 <l4ga4qidhl6d3fwknxtq2f6j5lcjf3thgeklehn7o7sjnstqe6@lscjymo6oaqh>
 <173835458986.77773.13912562984988802225@intel.com>
 <he7fbsp5ccqndn7iz344z2vz6qvdc4dsrxjsh27vc5nljrgsw6@dxgworjh7cnf>
Subject: Re: [PATCH] drm/i915/dmc_wl: Do not check for DMC payload
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Date: Mon, 3 Feb 2025 08:44:31 -0300
Message-ID: <173858307116.77773.7863732675087498240@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0111.namprd04.prod.outlook.com
 (2603:10b6:303:83::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6196:EE_
X-MS-Office365-Filtering-Correlation-Id: a1ddf976-1aed-4b9e-ab0f-08dd4448215e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dmNENXB2ck1KSFNCQWFuT0lGVjBJbzBvZkhnWnprVUdaUlVtV1ptbm4rOVVU?=
 =?utf-8?B?MHQ4WU1waG1vcDBIa1hjQVBudFFMQyt1S2VJWk9TZXpNemgzUlZ3UTN2Mi91?=
 =?utf-8?B?YU1tQ25PdkZpd05RQmtLOVl4aDU0MFBKalRCRDg0YVNPZUFueUNaZXhJSnB1?=
 =?utf-8?B?VzdUa1BqaGNab1R5WG01QU5jNFljQUgwQ2xVZnZzNWcyb29WamxoUSt6THZM?=
 =?utf-8?B?dTg1cHBianROajdzNFZXSUhvUTVScTRXa2FQQnU0Nlk3akx1OGRyV0V2SytY?=
 =?utf-8?B?UStlVExsTVIwSXRPZDFyL1liZ0YzRGdUZlNOZW5vVllNdDZHQ3BLeUQxeEZF?=
 =?utf-8?B?RFNrc0VqZ3lkT0JDR1U4NDhCZVIvZjMyalNUWWxnRjB5Uk0wU2VQOG5SWWxN?=
 =?utf-8?B?TlFxdU1Pc2FoUFEwSHJlYXpwVkl2SFRvT2RyZU9kVlk1RkNwcjI3akdPYU4w?=
 =?utf-8?B?NHpCTmJrNzNYTXI2M1ViWFFvZ0FEQ3daQzdvUWFoYXMvTVMyK0RXMktsYU1p?=
 =?utf-8?B?aHlKNk4yNWdxcHBtaVA3blorSnhBd3JualpRRTdCT25Sc2NiNUJxci95ZEJW?=
 =?utf-8?B?RHl3c2xQSFFjUElnSXZWc2xwUE42eHlOM1hYbVVKS2R0RytCUGErUkI5ek5Z?=
 =?utf-8?B?VHJ1TFV5MXF1OFlHeWFpNnF1QTg2bEtKSFExNk9vSEsxaUFBdkJaSFVVdVVk?=
 =?utf-8?B?RGhKUDhWUFpqQ3pRYVljQ1RUVzVhWDRQWjR2ZjNGK2JiUjc2cnRyY2c1L21r?=
 =?utf-8?B?WlZ6c1dtTy9NOEx1aFpKc29IdGZrY1I1QTlwYmluem9sajVnL1h0bDFHbkNn?=
 =?utf-8?B?NkQvVUhjRHJsSTVtM2Q1TWhSRFVYNkR5eGpFS2xhU2YxVHhOTmZ6NytzSVIy?=
 =?utf-8?B?N25KLzlwNHl0UDZvSE9meHY3UUhQRFBsdng3RWVxRk1KdFk0YTF2bUtTbHU4?=
 =?utf-8?B?TVl3dHFmb085RG9YV3VhUkEvb1oyS1pVb2JjM0tMai9kTzlGUDloTE0ra01K?=
 =?utf-8?B?REhKWk9RUXJrbjN5Qlo2QmsvYzJ3MUdlRFV4Y25ueEdHS0QvRFZXdVZFcWxt?=
 =?utf-8?B?K3dydFJGVytUa3RxMFVjem0xSi83NkJMRnhqMFhpemxWSEVNMDgwQlVueU0x?=
 =?utf-8?B?MGk4NmhYazh0MEJ2M0M1ZWYrZjZmWDJacmdRZ1dER1BDMGlIaTliZUJGdmpC?=
 =?utf-8?B?UDdGVzZYRWNtNjl0cU1aVjVMcEJ0UEQyb1pkVytYRDJkbjdPaHh4RlhqODBP?=
 =?utf-8?B?OW9aYmhxTElwK09uK2xuS1dJN2w2QlEwZG9EcXF4K0NsS3VuQVhyNUxJaW9p?=
 =?utf-8?B?Tk9iOUYvblFjeUZsclV1R3dPQTdPbVR1MHZ6WC9KRW1PdVBzaXBwM1E5WUVJ?=
 =?utf-8?B?dzU5Y2tEQWhZbzJXMHM2TldFSkRTZ2czRWUrMW1vWkhIa1NLTGYxQVZYUG1W?=
 =?utf-8?B?OEdQb3lEazFZcVBzRlVOalgzYkFPbUI2UmszaDl3SU8yV1Y0TXhzVU1ZTUZh?=
 =?utf-8?B?VXlqcGJIWlJScElicUhoaDhvcGNQT0dmZVpvUmVQeEpBeXhRaUt5dXJmbHUw?=
 =?utf-8?B?S1JrMG1Sank3R1JVMmxCdW1PZDNsSXphUlRIYy9TWStTbDdHblNycmJXUzNG?=
 =?utf-8?B?b3lkenJKOStNR0E3UDIvY2c5TE9yMXU4ZTdmZk1ZQ3ZWVzhRZ1Npc2pHNklr?=
 =?utf-8?B?ZU1pbjR3Ukl5RU1VeSttcWs0ajVLUjdWVnlaVGExSWNpR1E4Yyt4YWQyTE80?=
 =?utf-8?B?U3FYVW1DT1l4enh4TzlON1haMzdCWTUrclpESmN1aUxRNUluUCtEdHpLZjhX?=
 =?utf-8?B?L1lyVEVzN3Z3ZXNkdWNuNVNHM1ZnYTNlS1l6aHlCdk5TQ3cwSlJsV3JjdGp3?=
 =?utf-8?B?cHJUbUEyNlI1Nll0QmV0QTQyOHkxaVVrNUdSNDhyeHlncitqOEVGc1FRdEZI?=
 =?utf-8?Q?/0y28xy1VO58I47+/eX/yQuHy91H1X6a?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TU4zalFyNC8yRk5Cb3g4dzlDdlhORkhza0lBeGpPZTQraUxEdFgvODlNZFRq?=
 =?utf-8?B?Z24zR3NhNVN0bFRpSVQ5WVViWUNSWE5yaS9CZ0VsZEVDNkhZMGF4SWJUZEo1?=
 =?utf-8?B?b1c0aEw0dElkZXNoaTNrcnJlQVREa1d0aWRMblhXK3IyemliRnplQndPd045?=
 =?utf-8?B?M2lrSVlNSlV0RFhCSnh2NDhPM0IyZDZYUS9PemovYTZBbFVYcmNUekZ3eXZR?=
 =?utf-8?B?NjNnQzkrRVhLQWRXd2JDWFFPUnpDNDdmTHU0Q0VjQ2Nwb2NjZnFiSlQxRGZo?=
 =?utf-8?B?TnV6ajZlYkZSV242ZlVoQlpRN1ljekVsZ3B1elRkYXFGQWQ3bWxDSXBBYllP?=
 =?utf-8?B?b3VkYzloejhLakRGa3d5ZVQ3TFgwbUFyQjNBM3hnS0hkQ3hFNkNkYnI2bnV3?=
 =?utf-8?B?Tnc1ZGwrcFFzc2xkbVZpVUxhZmlLR0VMOCtNSnkrdHZNdEV6ZmVEb3BYZnFp?=
 =?utf-8?B?SEwveEJtUERIQmlhZ1FFWWZvS3M4NTRKSlNGcks5UkwwMm94OXRyc0J6YitF?=
 =?utf-8?B?QkgwaTBzZlNPUEdOd2RDcFJmd3hvQ2dPVE13dnhMV2tCaW94eGswWlBCM29E?=
 =?utf-8?B?dTU2dmRDdkhaMVg2YlNZa3JFbVBWTWw1Ty9SWDYyblhPSk1OOG9sRUJVUUNF?=
 =?utf-8?B?OUVHVlZLemRiZCthR01nSTdCOHRCWnZjYUdTTFRSK09kYmhmbE9CVXE5Mnpk?=
 =?utf-8?B?bmJVTUZuNS9rSkpJdmI1TWx0dGpYMHdnTDRkUFF3eXhMTUwxTVNnclNrVWhL?=
 =?utf-8?B?VEpaVWM2K2hTcUkvQ0pFSGEzbE1XUkRqN2N0NDVUcHFaSUZLb3I3N1pEdERT?=
 =?utf-8?B?S2tsVEZycUtpQi95emxmMUxPYW9hVmpna0I4RVArSGFYNmJ2SWR3MHFYZHdC?=
 =?utf-8?B?c3E5a2x5Wk04aWQybEJzLzlvQTYyVW1jaWFpYnd6TGpNQTJhbkJRTjRNejNp?=
 =?utf-8?B?UlNYU2FYOFZ3Qjg3a3dGSkFBd1ZBaVpyd3BEMEM0NFpnRVZ6ZUluUzB2N1Q3?=
 =?utf-8?B?d29Fbzc1UklBSWtqcndCY3BUa3EzNkQxUmI1M1p4eGdlOXBoQlpzN3M4OXht?=
 =?utf-8?B?Q2d1SmY3Y0VvYndYN1NyMXQ0VGgwQzE0WmFDN0ZRdHMveHl0d2s3VVJZa0ZI?=
 =?utf-8?B?cjhDMWpxY001ZjZPMnBITC9ZNHZibC9IUzRUdHdqaGxIVTBEcFRDdnprMU43?=
 =?utf-8?B?Q1M0MVVEL3NzcGlBSmR0TGtCc2lOZkNHUUw2WFJqWHZReGt3dm5BQUszV256?=
 =?utf-8?B?MFJIM2o0T0lsVVlBOU1GSkQyTlJNK2FKZEVIVjExcDBySkJGRmtxUmRQcFdF?=
 =?utf-8?B?SGpkUk56MEJPb3lyMnFWbUkvT2FiOWZtQXpoc0tlV1R2UXVWQ1o3Q0V1WStI?=
 =?utf-8?B?QVNUbkNQNms3QkJrL1dXRDV0L0NRa1l6NnpUUm1ac1ZhMU8rZjNjbzdIN3BF?=
 =?utf-8?B?TjZwNS9JUDVESkc4QytOZnZpS2pqOWRRbTdTOS9ESkJwT2VkWWlVam10eWE1?=
 =?utf-8?B?OWwrS3FHZldKekV1eXhMWjhFQ2c3TEEvREs3bElNRjRvbXhjY1F0elR5VWNy?=
 =?utf-8?B?Q21LYUFtZjc4YUxBZEx6ZG1YQWhoczNqNFFSb2c2OFdjRjdoOTUyc1BEeGFQ?=
 =?utf-8?B?Q3BJMzVKQS9HQWVuYldSV0xaR2x1NlJ4dnFPbTQ4RlpucTNJQWJnU09KTVRC?=
 =?utf-8?B?L3BvZFczSWRzWFdYekVCbmQ1YndKVDJiQUllay80OW9DbVh2b0pjMHBDRURR?=
 =?utf-8?B?VU1ja3I1MTNENWpDcmdqWkdGbi9lMlQ0b211RHpZRkFLZ0NQTUs5Q2FuK0Zi?=
 =?utf-8?B?cW1iMWRFMTNWbUdNSi93aVRsSDllbXN1MVlObEJQeSs2Z2xaalJUT0k3QUZt?=
 =?utf-8?B?V3FDL1FBS1R4UGo3cTBKNUlpcGttUnRxdUlqUUFqTVVweENyTUFINHoxekY0?=
 =?utf-8?B?QmNaZnhFVUVvOWxTT2xwNVFHTWtmeUJsaXltNXFyY1lEb2FFTDV1Sllxcjk3?=
 =?utf-8?B?UElLNENPSE5vOHVWa1hsYS9qekhaUktyMS9yRDFTK3dSbS9jRktBQjlRSGZO?=
 =?utf-8?B?dGw4bkZwVTExdlAxb1pFZEpJbURIYk90MDVZMDk2TGMwNXlOdmx6ZWtjeHVH?=
 =?utf-8?B?WDFpbjdITVdxcExrTEV3V3RUdlBrNmJ1ZFloWG5jZGNkQ1gwS293a1pNSFRM?=
 =?utf-8?B?aFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1ddf976-1aed-4b9e-ab0f-08dd4448215e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 11:44:34.5877 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LEW0Sc0jbNVUgKZq0E7ZgRelSmPeXvnoFRVGk030oLZsPFzmw0+We4p/XzRXyXEkHOArUl0FhefjcVLPxj0XnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6196
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

Quoting Lucas De Marchi (2025-01-31 20:49:35-03:00)
>On Fri, Jan 31, 2025 at 05:16:29PM -0300, Gustavo Sousa wrote:
>>Quoting Krzysztof Karas (2025-01-30 11:18:28-03:00)
>>>Hi Gustavo,
>>>
>>>[...]
>>>> Let's remove that check, since it is unnecessary and causes the
>>>> inconsistency illustrated above.
>>>>
>>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>>> ---
>>>
>>>Would you add:
>>>Fixes: c01e78a96e12 ("drm/i915/dmc_wl: Sanitize enable_dmc_wl according =
to hardware support")?
>>
>>I believe the above commit should not be a "fixes" candidate, the check
>>for intel_dmc_has_payload() was already there when that commit was
>>applied.
>>
>>Also, do we need a "Fixes:" tag here? There only platform where the DMC
>>Wakelock mechanism is enabled by default is PTL, which is still under
>>force_probe protection.
>
>it's not user visible, so no. Sometimes we may want to backport fixes
>for platforms that may be used with previous kernel versions, but that
>is mainly when we are close to remove the force_probe.

Okay. Thanks!

Krzysztof, does the r-b stand without the "Fixes" tag?

--
Gustavo Sousa

>
>Lucas De Marchi
>
>>
>>--
>>Gustavo Sousa
>>
>>>
>>>after that LGTM:
>>>Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
>>>
>>>Krzysztof
