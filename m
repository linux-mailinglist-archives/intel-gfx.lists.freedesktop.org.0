Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7740ADAE86
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 13:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7989110E30E;
	Mon, 16 Jun 2025 11:31:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A9n9yAPd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5F6B10E30E
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jun 2025 11:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750073511; x=1781609511;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rbHiVuJ4mp/MOfn2TjQFmwJfeGBMbrR/I0wZ4z+xymU=;
 b=A9n9yAPdvVYU3jyFH/fwRV2pErfLf6sUDF9TA4HWKHZ/QGPI9tAkZMzL
 ZGkUa490C257R8i2TVPTZhi7TIZEdVgqRDrkXCHmAbl3QE4BmY3AvYJyy
 YSeITnXukb9xZkRJPrMg5cmeDT2pdPSpt+rOZXr6prA0oPK7jj34s5v51
 fx1aNzo2BfSFRFN0VRboc25HLzllLKzIZf6YJD6nkOLr+KzSgJDI5kHTk
 uFPv+iraK2cDPzVeoBd+e4Wilh4wHPb6E6tHNqx+h8lQYd7cf/uWh6LIr
 A7jvNbJ2vPA7WjL2lM9b8VM/pvbYFkGkpMx1KZzxdxrvjaSmN0uPO3fmU w==;
X-CSE-ConnectionGUID: lR3gIpCIRXuQ+36r5jVs9Q==
X-CSE-MsgGUID: yvtnRMkERXWXeQ0PoJsyLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="63246101"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="63246101"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 04:31:50 -0700
X-CSE-ConnectionGUID: 9cvbPhVEQwGJ+cKVvI7bTw==
X-CSE-MsgGUID: x8IiCRIwTnSvOXLdzO9QZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="185710161"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 04:31:50 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 04:31:49 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 04:31:49 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.82) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 04:31:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PVf4DYPQIaivBPDoMEQ9lx9ceHJDOXRuUT1OuyfiN1uH/9xLicDVtwMbKeNF66VFim0k+/wDTfecmYtSlm23vgPVGxRr2s+Fm6nTrv+0wZQtGatqDUHY+qY4ssKYt8embHXfIX2MnSmaVEGUJv+UMwld1vaLoN6NMj1txvPHP4z2yA2921coX3hY2BSI6sapZAwxwdGs7FVpmvr5DyIU5OSL7fU4ji5K8H6d3stBDiUGxcPu2CH9vxXqMutHam5EdwlwpXXK/ht6rJ12bQ1Jley9ers3rCZff42nvtZDE2aQUoZM2L3Vyap328wYeKtjlnTu1MGslxRcRrPoV8Wgng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gl3qRO8dwLY/evYnqrZSq2kKQ7is9eaO0kgHnGheaac=;
 b=ZZ+IMUUFYjh8Pt8mgei+mPEijkB0dZA0h6WlDyVLmEpxEbezGR8WMsJi+EKYe7btOJLZ0gbtyiVVhItVv5bjnT0UyTZR7XeEzXNQFOf6tKDkmSGsgkb/R1lnRl2X3nfl94meL0GN/TtGDCcYNbcM2t2PQjhgHiyw2C8NHdgtabSgCzR33+aOOm/nUr8937fIUsp7/fhJpFWMwHLtUD51P4+IPOb0lf3CqicMW8QvPu+QoaxRX0w8gDeqtSgtA8lPtRK3U4G+dFLTEBhIpht1qePShwyURFehqyqVXQIhpck0gy2Ju2IvV3Q3QmlSFoFe5LfXpBbY9A5a27eGvKlNJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by SA1PR11MB6808.namprd11.prod.outlook.com (2603:10b6:806:24f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Mon, 16 Jun
 2025 11:31:28 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%6]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 11:31:27 +0000
Date: Mon, 16 Jun 2025 13:31:18 +0200
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Matthew Auld <matthew.auld@intel.com>, 
 Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <ndkdixaono4lft3vpaejmm6d6gp3zkhvx3tsphgtps5vzivngq@frmkzja4tu6x>
References: <ihbtaij3hk3rl63yl6vgbccwizv4igb2erm63vqzsqlp4e66m3@jo4r6iji3yqr>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <ihbtaij3hk3rl63yl6vgbccwizv4igb2erm63vqzsqlp4e66m3@jo4r6iji3yqr>
X-ClientProxiedBy: DB8P191CA0004.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:130::14) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|SA1PR11MB6808:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d5c5d0b-805c-4c65-a78e-08ddacc95560
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MGpVMlBLQkYvanhiN3NwNCtNRnRTZy9hL0hVbWRSUXRDNnhXZHBTeXpYdzhR?=
 =?utf-8?B?Z0Q4SUVBWUxMNFNmdnA0VUY4c1FpajVJTkFUY3NyMlZFSzZ1bTdGOUNRRzVT?=
 =?utf-8?B?QVV0eWNheFdFbis0aEM0SjRsWWh5NW9ZVjBmY3RiRU8relRQdjBsRmowNWhw?=
 =?utf-8?B?L0tta2JFT2pvRHJpYmh1cFhBRGdLTjFVQWVmemEvVndxRC95RWNDaWlXWVoy?=
 =?utf-8?B?VlFzUzUxL2I0RVIyREE1VFJQWHlWRjFlZlE0Y0NJdDdEVnk0b1lXNzV5TWlI?=
 =?utf-8?B?aUNvelRBcTkvUlF3WUdFT2oyZnpyQ2dFYy9OTU5RMmF6SzNvVnlxQ0dOYnd4?=
 =?utf-8?B?VnhCT092YVFvS1VKU1IxWm1IQ2Q3V2JpY21IQjFPTktQeFprNElIa1llaWQ5?=
 =?utf-8?B?cXdQSlFUSkFxVHp2dTJ1TnhiZGttV1Qzd0YvWWhFaWRadGozRUlmMVZoYi9s?=
 =?utf-8?B?Y2JDR21vVXdNWTE3UUl2c1k4eTc5V3V2VzF5Lzh1OXNwY3VJRndYcEl0V20v?=
 =?utf-8?B?SU54RXc5UWNGVEVHYWRVM2ZvS3AzTkQwMDNJekx6SURMSUJPRWxXckQ2ODJs?=
 =?utf-8?B?NzVUWjJuZkl5dFZHei9sQ3lidWcwRDdmY09YLzhMNlNDaHdyME9xRU9tdVJw?=
 =?utf-8?B?U0NaS25mRUtUQUwybzRBblhkOE1xN3VHSFNPTjNsd2V1NzNxK0Z1T2U4bkN4?=
 =?utf-8?B?U1NpUEZJTjZjNWtkQUhqVVQ3VktSdFlnTkYzNXd6Rng3Mm5YZDc2c1RNNUtk?=
 =?utf-8?B?MTRtVXlKcFNETzVYSE5WLzdlMHBSbTZGNXlSTGpRWWI1bUl4NURPdUliNndM?=
 =?utf-8?B?MUw4YmJkclVaNkUrbWJrRmF3b2E0dXM0NEZCTzJhYWFud3hrc0ZRa25xQ21K?=
 =?utf-8?B?amVRSzNyeUh5c1k5SXpwZ3BScS9peHB6R2RaakQ1VjhSUXpINUJ5WXRtKyt4?=
 =?utf-8?B?QWJQYVJWY2huUkE4bks2clFtZjN1a0tFWFhFQnZ3eVRYTEtxb3pvc2E5R1pn?=
 =?utf-8?B?NHZkWmtGaXYyV3oreVM5Q0V5ZGpDd0xweXJBd1lFUTBIeTg3QkFINFZ4Wk5j?=
 =?utf-8?B?aE5vT05LQ2hCcDV3cW9aaHc3aVpmOUdEUmVCMHVsVXVQbmlKMnp2Nzhrb25O?=
 =?utf-8?B?WjBNbDFRSjZKemFidTl4dnFxdGtnbUgxUnhQWHJVQWNwM3c5TitxRlhpWEtC?=
 =?utf-8?B?Zk44Z0Y4dElOZ0dZUFlGTEpoNnk5czRPb0hLRXFneGMyYzVDWXdURDhDbGxq?=
 =?utf-8?B?bnlYKzB6Q0FYckFyN1Y0eEZ1aGMxTG4yZ2h1d2xsM2g2dm1KaEFGVUN3WUha?=
 =?utf-8?B?R1plQ0lCUUkrUXNnU3AwR2xLODZmeU1TL20vU1Y4SC9QNVBzendCQUh0eGVl?=
 =?utf-8?B?SmtoeVhVbUtUWTNNTGhNSG9Wa0Joc3VoZGMzZUxZcUJkc1ZkZUx4MlpleU9X?=
 =?utf-8?B?Uk5WRUkyL1I4SE9rZUhBVS9jQjNJOUdmSU45RFBuNzd1SE95NnlPTVJMZXZx?=
 =?utf-8?B?TUNEU3FTVElKeDdISHYrNUM4ckxsYmw3Z3duRjh1OEVwSUQwaXJscTdOaWhp?=
 =?utf-8?B?a1JkbS9PU1ZuZGtESlJHT0RCbU1mWXBSSGdrdCtWQnJ3c29wNXA4d3k5MUNP?=
 =?utf-8?B?dFFuelc0dGtoS1U5b09IYitkTUpjUXZVWkl4YnhZVHNabUZuVS9kVXZPVjlp?=
 =?utf-8?B?ZFp1NEVBY3ZjdGJ5RHBQYVlRRGZlV05nb1pHYzArMVhDNUl3YURVbVNyQ0VE?=
 =?utf-8?B?N1B5NTgxUSsxVHVCNGl1RHorUlFkdUgxa1dWVmk0RU1uam80bEVLTERZTWtJ?=
 =?utf-8?Q?W/C5C1kRflm59pjHXAn39LBbbqumJHKijtP0c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXlsTWdkWHU1Zit1anJGcDhkQUo1dTB0RVIxNHBFaWdtTURlYXF2cjVxeSsx?=
 =?utf-8?B?b2JjWHZkaEJqRVZ3SG9LTk5XRy92MW1EUGdndmpzZFo2UWl5OWVzMU9XWC9R?=
 =?utf-8?B?bWxMMFkvMGI3TktxUnJaZHVSRWYrRTJ2S1RPTGNJWm5FRCtCOWR4ZUYxVjFW?=
 =?utf-8?B?L2Y4VWpDN2pVZkRReDVuV3BQNWNtYlorSlpnQ0pWenRHbXRQSTF5S0t6bnJI?=
 =?utf-8?B?SlIyZUNNMkkydFpKSEd3RW82bUt6Q2VoM1ltVVVJV2RxK2ExNmNETmlmS3RG?=
 =?utf-8?B?ZjZHWnVEK21aOEdmZVlwbDAvWm8yMGRnZnRzYjFsOVU4Q2JIVERMbk04Y1R6?=
 =?utf-8?B?dVdPdi9BQTZqWW5DUXIwZnc5WEhDdnNIeDFPb1VxRjFYdDU4cXovRDVPYytm?=
 =?utf-8?B?MERXOFdJVWp1dnZYVkdZNm5od2ZzNzZHcEFZcnRabGZqbXdTcWZNR082dU9Q?=
 =?utf-8?B?dE1LQ3N2UWZGdHJ3V2MzNmpqTENHU2E3aTdlZnU1SVBac2Z0Y3Zmc2xETmpB?=
 =?utf-8?B?UFBGbTAvV0ZHZGxsM2FneVlyYzJKZDRHSXRCYkY5M1l4S0pJTDYzSGxSWDd4?=
 =?utf-8?B?Q21vaFp5TVZMTnQ1aW5seW5BMDBYT1E4T1V6c0dwczJkMkorV0IyZW5ERktD?=
 =?utf-8?B?N3JYaXVpWDZoTGY3NXBKZUNFTU5FWURSUEdKODY3T1Y1bmR3K3BQTUhuMjhY?=
 =?utf-8?B?RFkwVXNDQ042djdKU2k5ZkVheTZ4RytoVW45NVNlcjJxR2lBbHZrQnZVOC94?=
 =?utf-8?B?Q1Y2ajkvVXpwSHVrSlBhQkE0b1Q3UG1yUXFRakVWdnlmSTY3cDN0R3BPdDhh?=
 =?utf-8?B?UTUvMFNpeU82WkhJZThua0RjT2lMSE50WGVGdUh4WUZsdFdNUDE3RktidUJK?=
 =?utf-8?B?cVg1Tk9PM1dJRHBaWGpjVk9LekhrNkRMd3ZMTTQzVHdmQVVLL25CYVhYSlpV?=
 =?utf-8?B?cVFoTldyK2hRQUo5R2lxTThqUk9SQWkxNFpoS1V4VlJwTkprdWxYUUE4eTFh?=
 =?utf-8?B?WEdnQUt1Q3IwNXNBL3RlRzBIQXRSS1c1cThJMTgvNDZyQURXSzJnRWNCYnY1?=
 =?utf-8?B?NVdiUHVlVUtCL0JXbXg2enUvaE80cEc4WnQ4RkFRVkFySWVVaTlPWnBGTkRp?=
 =?utf-8?B?NjY0RWFLSjBMcUc5cGF3bmFUNFc3V0YzYnY3Y04xK2g4TDRyelMyRHdVdjJJ?=
 =?utf-8?B?UmVaekNwcnpPTDNWRmFEVjc4NGlYNHBBenZqdXZRaWtqZFZpRFo4UnZkUjVX?=
 =?utf-8?B?OUpZYk1ackwrUlFuZzkwR1RCczVZbkNOTkhuckFVQzlXeW1aTFArVTBnNEl4?=
 =?utf-8?B?TGNJNkozQk0xUlpxb1EvVW5aTDl0Z2FQYUNEeFZQRFRHTjF6cmZCbExBUnRP?=
 =?utf-8?B?RHNGN3pNRjFHMkR5OVNFT3dRVEdrZWUrY0E1TldYUk8vbDhlRW94dVBFMUkr?=
 =?utf-8?B?a3Z5M2E2WnVod2NvMWFPczlCY2d5NFo1UnZ0ajgyWWo2UkJTa2U5dVV4OHRM?=
 =?utf-8?B?UFhnYklza3Jnd3ZVMk81eHNCMXZYVFJUV2RGTXRKK2pEZUUyYitCUUhYeFdL?=
 =?utf-8?B?UGxUbExOdWpnU1oxSi9YR0d2YXJqalRqNFd6ZTB5VUhKQ2V4VWNBVWdJV1U3?=
 =?utf-8?B?KzU3dHRhYjVQekQ5ZGdPSUNITVdOSlF3ZzhHRS85c2gvUXh2ZjJXVTMzYmt3?=
 =?utf-8?B?Z0UwcUl6VG1xdktJZjRxUmQzUkZXaUF6VlZMWmVXb2thSlJqM0ZNYS9pSUhX?=
 =?utf-8?B?UzQ1VHdhUTV0VUJvaitwUUNyY1hMTFgraXEvR1FUVzY3aGtSSHdLZ0t3RVFJ?=
 =?utf-8?B?T0tlbzZuN0xreE16WjhXR0xMV28vdEcrMWVPYUdNRUx5Wk9UdktjTzBJVVc4?=
 =?utf-8?B?eTdMN3VjZk9zZ2s1ZEg4dTM1Q2VkbGdtcnoybUtDNmJiUUVFV3RUVE0rSGxi?=
 =?utf-8?B?U05rNnZrTjM0T0VhbGp1RGxJaGJDLzVWUU5hR1kxSm9iZUptR0xiYzhTN0gy?=
 =?utf-8?B?bUM5bHRsbFpaa1hhVnZ3cjV2SWU0L1hhRVlFcU9TTFlDV3p4U3Y2ZEttZXJW?=
 =?utf-8?B?TmozVWp4WnNzSFFPMTV5aVFzTTdLU0RpQndCUGxjNUtQb0RzeTJOUVBHKzBy?=
 =?utf-8?B?ZU5NZTFVU2VoNGhMMmJXRWFVV0lLazRuMy9kTU11MnJ2V253ZlhLUVNrUDRU?=
 =?utf-8?B?REE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d5c5d0b-805c-4c65-a78e-08ddacc95560
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 11:31:27.8594 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uEDTy62EQ6JSGRxC9HgcaSh+ybIIhKPMTT6e2JoC+XqyA2D3ATod7itdc1mdKVpVWIWeGgs2NFdFyeBzwAjE9oaz9/VjMPLmvNOtd65TkxE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6808
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

Hi Krzysztof,

On 2025-06-11 at 13:33:19 GMT, Krzysztof Karas wrote:
> igt_mmap_migrate() tests migration with various parameters.
> In one of the cases, where FILL and UNFAULTABLE flags are set,
> during first stages of this test a mock file is opened in
> igt_mmap_offset(), which results in allocating some data in the
> GPU memory. Then, also in igt_mmap_offset(), the file is closed
> (fput) and the cleanup of that data is scheduled. Right after
> that, the test calls igt_fill_mappable() to fill all available
> GPU memory. At this point, three scenarios are possible
> (N = max size of GPU memory for this test in MiB):
>  1) the data cleanup does not fire until the whole test is over,
> so the memory is fully occupied by 1 MiB with that data and
> N - 1 MiB added by igt_fill_mappable(),
>  2) the data cleanup fires before igt_fill_mappable() completes,
> so the whole memory is populated with N MiB by
> igt_fill_mappable(),
>  3) the data cleanup is performed right after fill is done,
> so only N - 1 MiB are in the GPU memory, preventing the test
> from properly faulting - we'd expect no space left, but an
> object was able to fit in the remaining 1 MiB.
> 
> Amend the problem by keeping the mock file open throughout the
> duration of this test and calling fput() from the test itself.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> On DG2 platforms the memory for data allocated as a result of
> opening a mock file remains occupied until the test is done
> (scenario 1), but on ATSM cards the data is freed earlier
> (scenarios 2 and 3), which leads to sporadic failures.
> 
> During testing I observed that the max memory was equal
> to either 4096 or 2048 and igt_fill_mappable() tries to allocate
> as many 1k objects as possible before halving allocation size.
> 
>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 11 ++++-
>  drivers/gpu/drm/i915/selftests/igt_mmap.c     | 47 +++++++++++++------
>  drivers/gpu/drm/i915/selftests/igt_mmap.h     |  8 ++++
>  3 files changed, 50 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 9c3f17e51885..216d1d5ec2f5 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1176,6 +1176,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>  	struct drm_i915_private *i915 = placements[0]->i915;
>  	struct drm_i915_gem_object *obj;
>  	struct i915_request *rq = NULL;
> +	struct file *mock_file;
>  	unsigned long addr;
>  	LIST_HEAD(objects);
>  	u64 offset;
> @@ -1194,14 +1195,19 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>  	if (err)
>  		goto out_put;
>  
> +	/* Pretend to open("/dev/dri/card0") */
> +	mock_file = mock_drm_getfile(i915->drm.primary, O_RDWR);
> +	if (IS_ERR(mock_file))
> +		return PTR_ERR(mock_file);
> +
>  	/*
>  	 * This will eventually create a GEM context, due to opening dummy drm
>  	 * file, which needs a tiny amount of mappable device memory for the top
>  	 * level paging structures(and perhaps scratch), so make sure we
>  	 * allocate early, to avoid tears.
>  	 */
> -	addr = igt_mmap_offset(i915, offset, obj->base.size,
> -			       PROT_WRITE, MAP_SHARED);
> +	addr = igt_mmap_offset_with_file(i915, offset, obj->base.size,
> +					 PROT_WRITE, MAP_SHARED, mock_file);
>  	if (IS_ERR_VALUE(addr)) {
>  		err = addr;
>  		goto out_put;
> @@ -1299,6 +1305,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>  	}
>  
>  out_put:
> +	fput(mock_file);
>  	i915_gem_object_put(obj);
>  	igt_close_objects(i915, &objects);
>  	return err;
> diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
> index e920a461bd36..ebe2c1933f03 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
> @@ -9,17 +9,22 @@
>  #include "i915_drv.h"
>  #include "igt_mmap.h"
>  
> -unsigned long igt_mmap_offset(struct drm_i915_private *i915,
> -			      u64 offset,
> -			      unsigned long size,
> -			      unsigned long prot,
> -			      unsigned long flags)
> +unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
> +					u64 offset,
> +					unsigned long size,
> +					unsigned long prot,
> +					unsigned long flags,
> +					struct file *file)
>  {
>  	struct drm_vma_offset_node *node;
> -	struct file *file;
>  	unsigned long addr;
>  	int err;
>  
> +	if (!file) {
> +		pr_info("file cannot be NULL\n");
> +		return -EINVAL;
> +	}
> +
>  	/* no need to refcount, we own this object */
>  	drm_vma_offset_lock_lookup(i915->drm.vma_offset_manager);
>  	node = drm_vma_offset_exact_lookup_locked(i915->drm.vma_offset_manager,
> @@ -31,22 +36,36 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
>  		return -ENOENT;
>  	}
>  
> -	/* Pretend to open("/dev/dri/card0") */
> -	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
> -	if (IS_ERR(file))
> -		return PTR_ERR(file);
> -
>  	err = drm_vma_node_allow(node, file->private_data);
>  	if (err) {
> -		addr = err;
> -		goto out_file;
> +		fput(file);
> +		return err;
>  	}

This introduces a double fput if drm_vma_node_allow() fails.

>  
>  	addr = vm_mmap(file, 0, drm_vma_node_size(node) << PAGE_SHIFT,
>  		       prot, flags, drm_vma_node_offset_addr(node));
>  
>  	drm_vma_node_revoke(node, file->private_data);
> -out_file:
> +
> +	return addr;
> +}
> +
> +unsigned long igt_mmap_offset(struct drm_i915_private *i915,
> +			      u64 offset,
> +			      unsigned long size,
> +			      unsigned long prot,
> +			      unsigned long flags)
> +{
> +	struct file *file;
> +	unsigned long addr;
> +
> +	/* Pretend to open("/dev/dri/card0") */
> +	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
> +	if (IS_ERR(file))
> +		return PTR_ERR(file);
> +
> +	addr = igt_mmap_offset_with_file(i915, offset, size, prot, flags, file);
>  	fput(file);
> +

(the second fput being here)

Thanks
Krzysztof
