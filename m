Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B17CBC6DBB3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 10:32:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E61410E5C7;
	Wed, 19 Nov 2025 09:32:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SC1d/Bm8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52DB210E5CC;
 Wed, 19 Nov 2025 09:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763544718; x=1795080718;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=segEF8fOeNrd2OsDnpom7QsG4OPYi0/iWx6mRgtTrgU=;
 b=SC1d/Bm8HYFo0KPNUURIwtiAbcgQPU6aUWtWYgoszKn/xhBZZpv0E5PG
 1DIZcqM8pqCvmec/ymuZE3EB1ShAAI3qzhElSKS9MlIIj3IDeW5LRID2S
 e5hcYzEeLaDFZlrMgArOclaeIk6u5NLM3SjJhxb1NOWGAWdfy21q70wG8
 D1aeiwfhYZoR73B6mywrZilk8Fe6tdLmOtAcl9LnJ4NxCS+tQKwoQ02ol
 6o094/6/0NQdDnWePXyyT3ch6FBwZ/5ImPqg6EPU34LNaOxZXolZyemsR
 zOWS8d5yvvcQ9UJlEaQ1+5HAiGYZHm5k+J9gEwPtQwHEujP4nywUJkdEO Q==;
X-CSE-ConnectionGUID: UOj2dO06S8aSF2dk56v45w==
X-CSE-MsgGUID: u5t4ldEBTxG3w2YZz+ZDig==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="53152428"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="53152428"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 01:31:58 -0800
X-CSE-ConnectionGUID: /eLVrRbYT2aIgdMaFJ7VEg==
X-CSE-MsgGUID: PRhxq2LCQD2gpYExqHOrZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="221639220"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 01:31:58 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 01:31:57 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 01:31:57 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.2) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 01:31:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dTus/5TMy/K7cJXsGjNWvoog2alBUpc0LLZoDpiCuvaxFr8WIKsEhdC7I6ki+B3C4D8n2NHgS0mpWHvmoDp68SnxP8gaCCKPObgw3UI+p618Ro3KlcsaP9eszVyK85Rvb6DgcwI/UqxTGTvxusBNAK6NEozQ95GaKvFBwVWDBuBPO9xginPajhxF8HGOCS44qTd8AsT34/BL3mFPwwI+EYnjHMCUxa3OxRDJHNq3uToan30AUIDPBSMVb08wY/TbE4KKn5FK+Dq756a7JUsCZRSS0Essrr8+yZUPp7rkAMr7JViO9i+7Heca8B8zF2vF63DUvAIB3NYpojHcrIUYjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=segEF8fOeNrd2OsDnpom7QsG4OPYi0/iWx6mRgtTrgU=;
 b=tCfmXACjLHwX+9CXFSbvXCbmJWEqkvYgNqSF/Mv/+vxHxqxB3KCkBKnoCsfi/AxBPaJYxR+Uy8o2ZI0F7hfU+k77c2u/+783SgTapRuDaGR9PfoUnbVDpRfPFwnunHrSQK2j+eIWb+ybPZXRX5bEwyuVY7Ts1hA4feSg55jJjnUWXnrTTV32fA4vdGgFIKkVle6dpC6Ysg7if8n8PLvW2xOwOnZzwDdaJgbjFyXdSbidNvwAqkiV7rxH54L8U5PQYMhc08+vVnIxHn9umx/ThEHhXa1l7W0zw8vHM3ftSq9kVpCl5fmla8v9zs++adWQ76DinPa2CDSGrpdJpP3IqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by IA0PR11MB8420.namprd11.prod.outlook.com (2603:10b6:208:482::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Wed, 19 Nov
 2025 09:31:50 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1%5]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 09:31:50 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Jason
 Gunthorpe" <jgg@nvidia.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>, "baolu.lu@linux.intel.com"
 <baolu.lu@linux.intel.com>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: RE: REGRESSION on linux-next (next-20251106)
Thread-Topic: REGRESSION on linux-next (next-20251106)
Thread-Index: AQHcUgxxcVhkxCy/KkSOgc4hzGsZELT3sYoAgADnF4CAAA/igIABAt6AgAAIQ0A=
Date: Wed, 19 Nov 2025 09:31:50 +0000
Message-ID: <BN9PR11MB52760A6BE22F89D29685690F8CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <20251118012944.GA60885@nvidia.com>
 <a79fe616-52c7-4fa5-906c-382b5ff2226c@intel.com>
 <20251118161341.GC90703@nvidia.com>
 <0c3cd494-e42a-4607-896c-4c341f90c270@intel.com>
In-Reply-To: <0c3cd494-e42a-4607-896c-4c341f90c270@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|IA0PR11MB8420:EE_
x-ms-office365-filtering-correlation-id: 73638f53-aedb-405f-39d5-08de274e7797
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?YkNGR291bTl5L0J3aVVkWDV0TTQ3R2R6NEFRNk9nckFjYVMzMDNwUkFHZHRO?=
 =?utf-8?B?Y0E3YlBuVERiKy9wZXN4eHNtWEEzZS9BWW5HS3o4SmNSaU5TUHVNZUpzY3Qv?=
 =?utf-8?B?azJCVTFscWdydDVERjJjMVlRZ2p0eTFidzgyeHZUQkJHREFNQmVmSWo2ODRh?=
 =?utf-8?B?cGlwM1hSL0M4TmNjQWpaK2pnOUdsc1ZZRFJQa05xL2xEUlFyM2h4RW53K0NF?=
 =?utf-8?B?OGtWajZ3K1MrTDRpNjBkUlg4ZUsranNhR1BzYnRRS2djWGdwZWgxdWJKZ2g5?=
 =?utf-8?B?b2lWQUNVS0tvR0ZaY09oL3VjUVdzRkhqUk5vUVcxUmU2VUFORDRrTmt5TjU0?=
 =?utf-8?B?VmtoMUQ1dExiVVNXTnFQVU8vT3VvSTNkcHMzbFE5b3JkUTRFQlhZM29UcWJ5?=
 =?utf-8?B?VUloMVNjNWdibFNEOEJ3VXd0WWF0ZmFIc3k4UkhGOHpOVU9xSlEvRWhXNVQ5?=
 =?utf-8?B?c1kyVElNMklvbnh0bTczcEtsRm42S21ITkkrRTk3Rk42cUtxdnF3TlZHSWg0?=
 =?utf-8?B?dlB0SU5DTDFRRjRTRG5KTVFRbnE1Sk02eWlHT2trRXdWenNuUk5hTlpzU25w?=
 =?utf-8?B?RHgrbEtoZzdhUkRKRlhCM3dwNldOckdQc3lqRjg3QzR2ZUVOUGlLaFczLzZQ?=
 =?utf-8?B?U3l6dmxVdlF4M0J2ZUVqN1lnS2NiK0dIUDNPaklOWkpYUXlScE9qL05hVjgr?=
 =?utf-8?B?THZIRjM0bXhrOGVHNGttVFMvS2hYRytIYWpsMGxUdVNoYkE4cDFGb0k5VW9E?=
 =?utf-8?B?bEdvQVBkanEvQWJMdTdxR1dGZFMwTS9CSGVnUklaTWFNOTV6b2p0Tm1VS0ND?=
 =?utf-8?B?aS9OaWdBWERLWW4zQmRBUmEwL1gwWWNtRGdJaTlRRVVaenpaWjhlNGI2c0J6?=
 =?utf-8?B?Y1lZeS9TaW4wV3c1Z2QyZExJZmZsNzRoQlhKYS9SL1V0MUJFYTAvMzA4Z0RO?=
 =?utf-8?B?SnplUktleCttV1NPSy8zS1N3Z2FWeGVXWVcvbUZYWm9wR0w2VTZJN3lFaXZu?=
 =?utf-8?B?ZHZnNE9BbXdGZW0xTGh2YXpsUUVuUjNJWDB1K1Fia3VVeEF4WnA5Uzh2ZjdO?=
 =?utf-8?B?OUVRT0syckxQZG9BdjBWYjV2a0lySGRPTTA1ckYrN09mR2taZnNacFNIcHdQ?=
 =?utf-8?B?TWxLU08yeWIxeUZ3M0tFbjJXTmFUVTZqL3dzQ1RMYkJBNzIvVU1OREM2OHdJ?=
 =?utf-8?B?ZHNRQkRLTG93WS8xUzR5YTFaV25WVHorSFp1eEhuVW1RU3k1NVpmMzlldHdh?=
 =?utf-8?B?WXQ3cEdWNWFsN0NpUG1mYTNveXNoT1JPT1kyWXllVjlFcGhkamV6U2IxZjln?=
 =?utf-8?B?c3UydFo0b0RZNXl5eFQrTW9HSFJuNGNwZ29WMFRxd29aYTlkY2o2SjVhUmdu?=
 =?utf-8?B?SHo0Q3dCTG9palBna1RlaDNRRUs0MStVcEFrUTc1YjR3WitUeFpqTGgwTVUy?=
 =?utf-8?B?eGNrRnR6anMyMmoxQ1AzRUxQYjJRM3BiUmZzbWxHZGswOEN6eVJHZm1BNGJy?=
 =?utf-8?B?WU42UFhJTFZEejM0OVpHS25xVG4rNmhpQmZTYTAxN0lxY1RYNFJIRjArVUk0?=
 =?utf-8?B?T0FTb2o5R2g4WDUrN256Z05tbTZEeG1PM294VkNNcmxZUDE4QjRKcVFNUEV4?=
 =?utf-8?B?aWlrc0JuaGJKMUlyeTNsUUNybVF5TXZ3dlZTRHJCRDRTNnhSdHQ0cEV3YWk3?=
 =?utf-8?B?bG9HOGFBK2IrVzJra3JhcmVyUGV0ZUVrTFZjTEcrWloxVTlUMFlRbmVKMTFp?=
 =?utf-8?B?TXh3ZXZ1ampmR0pmZVJQWnVwZFpWRHNUY3JRSkV5b3RZLzVHSHZFeWhHZlNF?=
 =?utf-8?B?RHgxdW1veGlGbi9VUkNJZURkT2Z0dTdrWGhQc1pCZGpZMFBLMndhZlJjOXVT?=
 =?utf-8?B?Wkx6Q3BlcFkzektMeEVEMUJaZ1ZESVRmSm1MS2JnWGhEbEgrMnVGQzg3WkFh?=
 =?utf-8?B?MmJvSzZla0ZZdnEwM1BtZC8vYkkyQ1VZNHQyYTl4dS9mdjFDY3pFdlJvc1Fk?=
 =?utf-8?B?OTFJRmpReFRYbGN2ZGRsRmFMeHF4dHFiVEV4OC85REh5VXBZRWZqYzlYTnND?=
 =?utf-8?Q?hhGvle?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K0RpYklsamlEZkpqdzBLUUovaU45aGJtc3dUQlljSlgxOVdYTXNjeUNNWkU0?=
 =?utf-8?B?NVV3N0VRT1lFMGhiaGN5dnZlTnhiZUx1L2h6eEhyZTIxMjhWQ1VIcFhlWm5q?=
 =?utf-8?B?YmlaL2FqQjdrWlJwR1c0V0dLNnQ0d0NUR0ptSktuVEVHck1KL3NMbHJlOWFq?=
 =?utf-8?B?UEljTDB6REhkeDRGRW9ab0s4d3g5bjFNeElqeDFVUVkvbTYxS0hmU2FYem5a?=
 =?utf-8?B?MkxzSC8yRStFdEdOVVgrQUQ4RHNZcHhRM2tWWWhJaHZqdHJmUFJ3eUhWVWV1?=
 =?utf-8?B?d0EwZmhBVHZXTi9TOUdwa1JpNDVnOWxPcUVWSnZ2SFNZL1RhdEwxV0Z3eks1?=
 =?utf-8?B?a3RmK0NBQVJrVDlHejgvMkJqT3Z2RkpiOE5yQjJ5NThzbVFCUjc5bGkxc0Fi?=
 =?utf-8?B?M1JJUE9UU2RNWXlDQnV3UFpTWkV1aXM5N0VkOXl1ZGt5eC82dENpaTRJUVJQ?=
 =?utf-8?B?RmcxWVNyMEZEQWR5cThhQm94THVDMnVXelFzVVNScVlzUHNpdlVqbzlZa0cw?=
 =?utf-8?B?a05tOERMNks4cy8xbzVKNzlnM1o3MWRXYnVtclE3amkvbmszY3VYTHNaZUZP?=
 =?utf-8?B?ZXFtYW1mV0wzK0N1VG9LU0dsUG5pdDBXY0dBVk9reXBDanp1WElFL0xwU2d2?=
 =?utf-8?B?YXN4YzVZY0lMSzZCWlEwU2txVXhQTUpVcXRWSVdpaSt6bzRKQ2kzYk93endj?=
 =?utf-8?B?WktJUElVWXpZVW9sMUNTNEp0LzNnb2ZYbnYwVUw1cWxWeENDaW9zZzRocTNI?=
 =?utf-8?B?L1A2UXVGUlcvNW5TSXZ5c2t6N3V0TE9PelBINUd4T3lXOEhCaWU3VVZBU1Nt?=
 =?utf-8?B?NFdHQ3JpZlJwdGlFRTNkckhaZGJzK2hvemlrbkhWMTNTdE1rbm5CRW5IREt6?=
 =?utf-8?B?RUsvR0dhVTltMlNIRkpMZG9TRm5KbjZWZUd0UTAxMXFNK3ZJTyt0UEg1SU1V?=
 =?utf-8?B?NXNlcSthVkpjcC9ld0cyamRwUXpqS1plWjZKcjhJa2lTdXd5ejYzU0lhRk1T?=
 =?utf-8?B?SjIwQy9tRFVDNWVrYUtwWnUzWlZpbFg1dTB0bGVSRTRpSEw0WUsrbGNOcFFS?=
 =?utf-8?B?MW45VUFLK05RMFYrZ09BS1NHQ0M2RDdjU1BmSEluaVczcEhWbVNabDJiemlY?=
 =?utf-8?B?dVVVeUhWZ0pDbHdaWmpFSGxYcmIyOVRqWXNXdHZsMElIRXUyZCtGeTlJZUdW?=
 =?utf-8?B?TWxkbldKZW9PQ1dEQllWam01aGg5bGhXL1A4alRrOFBFWkdtenBOcmxVL25p?=
 =?utf-8?B?bTU4emU1Qk43Y1N6WGxvcGhtdDdNSzYvNk1vWm9qSW56cGtWeS9RaE5GdWQr?=
 =?utf-8?B?aFA4eE1wWkgvcTVMamZIY2FTTWRaaVYvS1hzUXlPVzZkNlQwaXZtbWREbG1s?=
 =?utf-8?B?MTIyZUZmN0RVVHdDSXVQNG82VVdNNm8zTGthcFd6cVZlWi95MjF2MDJreC9m?=
 =?utf-8?B?eXRFNXdWaklpWm1LbjdGNEtMUDJ2ZjNwTkF4S1ZmOUVCUEFjWGZGOFkzRW1T?=
 =?utf-8?B?WXEzRnpvZjRNbTlXL1ptL0hVemVwbTVhKzR2NVBoZ3RFcTdCKzhzRVhiVUls?=
 =?utf-8?B?MGFFR2QvRXdCMk04SU1GWDR5VzNQVnVWOFlncnhIRmxsSDN2WUxIUEFEa0xZ?=
 =?utf-8?B?cFgzOXUrOEptVHQvbWx5TW5uSDJYN2c5ZTZOM0Q3S1lTUEQzT25pK2svVVlG?=
 =?utf-8?B?dkVrd3U1V0NjTlJ3QjBWM1F1aFFTem1EMTk0SnR1bURGQ09Hc2ZaMEhrRS9y?=
 =?utf-8?B?dEh6VGpYR3p0dVY2VXNyUWFTdUhJTVZiTUQzbDgydmorcGJjdG0zd09QYS9s?=
 =?utf-8?B?QW5vUFJmMnpJV0U0TDB3Rmc3UkpwMmhRaHRPM3RqN01DSFRvdnVKZmJqY1FW?=
 =?utf-8?B?SjV1QWJIbVZhcFBuaEdYbnpaZG04UjQ5R0NLdytYbTBaeG1zZGprNFhZRmFz?=
 =?utf-8?B?THNiTjZEV0x6RVFWWnpvNFR6SldMUm9OMStWekJOUkhtL2ZaY3hWWS9Nd21W?=
 =?utf-8?B?TVpuSHpacFpVY0JmckxXQzEvdVRNamNMTjZjQ05OVHBXWGNQYjBoZlhpczYv?=
 =?utf-8?B?ajJqOWhBTW1XWnRDNWlsOWtab1Y0Zmd5TkFkTnFOdWRubjk5R3F2OForK2hH?=
 =?utf-8?Q?6xqNbjHjJe+BtnA0b+ExvDMqG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73638f53-aedb-405f-39d5-08de274e7797
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2025 09:31:50.0259 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sz8gMIA5TlkJUrENufPYHSrqF04iobowFloYlyH+ySABr1VA5steU2jSItrXt3k2RJwVT1RW+PGQsE8PcKA59Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8420
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

PiBGcm9tOiBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFyIDxjaGFpdGFueWEua3VtYXIuYm9yYWhAaW50
ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVyIDE5LCAyMDI1IDM6NDAgUE0NCj4g
DQo+IE9uIDExLzE4LzIwMjUgOTo0MyBQTSwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiA+IENo
YWl0YW55YSwgY2FuIHlvdSBjb2xsZWN0IHRoZXNlIHR3byBsb2cgZmlsZXMgZnJvbSB0aGUgY29t
bWl0IHRoYXQNCj4gPiB3b3JrcyBwbGVhc2U/IExldHMgc2VlIGlmIGl0IHVzZXMgdGhlIHNhbWUg
SU9WQSBhbmQgc2FtZSA0NiBiaXQgbGltaXQ/DQo+IA0KPiBIZXJlIGFyZSB0aGUgbG9ncyB3aXRo
IEhFQUQgc2V0IHRvIHRoZSBwYXJlbnQgb2YgdGhlIGJhZCBjb21taXQuDQo+IA0KPiBBdGxlYXN0
IHNvbWV0aGluZyBsb29rcyBkaWZmZXJlbnQuDQo+IA0KPiBbICAyMzUuMDc5MjA4XSBpOTE1IDAw
MDA6MDA6MDIuMDogVXNpbmcgNDEtYml0IERNQSBhZGRyZXNzZXMNCj4gDQoNCnRoaXMgaXMgYW4g
aW50ZXJlc3RpbmcgcGFydC4gDQoNCnRoZSBjYWxsZXIgb2YgaW9tbXVfZG1hX2FsbG9jX2lvdmEo
KSB1c2VzIGRldi0+Y29oZXJlbnRfZG1hX21hc2sNCm9yIGRldi0+ZG1hX21hc2suIA0KDQppOTE1
X3NldF9kbWFfaW5mbygpIHNldHMgYm90aCB0byBhIHNhbWUgZml4ZWQgdmFsdWUgKGV4Y2VwdCBk
aWZmZXJlbmNlDQpvbiBzb21lIG9sZCBnZW4pLCB3aGljaCBpcyA0NjoNCg0KaTkxNSAwMDAwOjAw
OjAyLjA6IFtkcm06aTkxNV9kcml2ZXJfcHJvYmUgW2k5MTVdXSBkZXZpY2UgaW5mbzogZG1hX21h
c2tfc2l6ZTogNDYNCg0Kd2l0aGluIGlvbW11X2RtYV9hbGxvY19pb3ZhKCksIHRoZSBtYXNrIG1p
Z2h0IGJlIGFkanVzdGVkIGluIHR3byBwbGFjZXMuDQoNCm9uZSBpcyBkZXYtPmJ1c19kbWFfbGlt
aXQsIHdoaWNoIGlzIHplcm8gb24geDg2Lg0KDQp0aGUgb3RoZXIgaXMgYXBlcnR1cmVfZW5kOg0K
DQoJaWYgKGRvbWFpbi0+Z2VvbWV0cnkuZm9yY2VfYXBlcnR1cmUpDQoJCWRtYV9saW1pdCA9IG1p
bihkbWFfbGltaXQsICh1NjQpZG9tYWluLT5nZW9tZXRyeS5hcGVydHVyZV9lbmQpOw0KDQpzbyB0
aGUgbGlrZWx5IGRpZmZlcmVuY2UgYmVmb3JlL2FmdGVyIHRoZSBjb21taXQgaXMgb24gY2FsY3Vs
YXRpb24gb2YgdGhlDQphcGVydHVyZV9lbmQuDQoNCm9sZCB3YXk6DQoNCglpZiAoZmlyc3Rfc3Rh
Z2UpDQoJCWRvbWFpbi0+ZG9tYWluLmdlb21ldHJ5LmFwZXJ0dXJlX2VuZCA9IF9fRE9NQUlOX01B
WF9BRERSKGRvbWFpbi0+Z2F3IC0gMSk7DQoJZWxzZQ0KCQlkb21haW4tPmRvbWFpbi5nZW9tZXRy
eS5hcGVydHVyZV9lbmQgPSBfX0RPTUFJTl9NQVhfQUREUihkb21haW4tPmdhdyk7DQoNCmkuZS4g
Ym90aCBhcmUgaW5pdGlhbGl6ZWQgYXJvdW5kIGRvbWFpbi0+Z2F3Lg0KDQpidXQgdGhlIG5ldyB3
YXkgaGFzIGRpZmZlcmVuY2UgYmV0d2VlbiBmaXJzdC1zdGFnZSBhbmQgc2Vjb25kLXN0YWdlIGFz
DQpKYXNvbiBwb2ludGVkIG91dCBhbHJlYWR5Lg0KDQpCYW9sdSwgd2hhdCBpcyB0aGUgbnVtYmVy
IGluICJVc2luZyB4eHgtYml0IERNQSBhZGRyZXNzZXMiIHdoZW4NCnVzaW5nIHNlY29uZC1zdGFn
ZT8NCg0KbXkgIHVuZGVyc3RhbmRpbmcgb2YgdmFyaW91cyAnZ2F3JyBmaWVsZHMgYXJlIG9ubHkg
YWJvdXQgc2Vjb25kIHN0YWdlLCBidXQNCm1heWJlIHRoZXJlIGlzIHNvbWV0aGluZyB3ZSBvdmVy
bG9va2VkLi4uDQoNClRoYW5rcw0KS2V2aW4NCg==
