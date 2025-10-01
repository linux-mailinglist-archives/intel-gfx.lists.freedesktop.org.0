Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBADBAF40B
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 08:39:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA88010E333;
	Wed,  1 Oct 2025 06:39:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dh1Df7cE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB46910E333;
 Wed,  1 Oct 2025 06:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759300752; x=1790836752;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1AsUXBYK4TzaNibwVVhP/5lTzmUq+df0BUExG1BftZU=;
 b=Dh1Df7cEm8VR6P3yPk23UPSXW1h3UFQRZVFRo+jugc3YdaEIpFsS6NoD
 E/rOtn4Vnf+qB6rn9lUZnlZPcFBUWDLpjRDcuH8vqo7yZ0vFTzI0luXmK
 KTH+U9JN/XFP0JvelRYb5hDdwXpS+6KKNOQoiZDMhxUUfpm6+++SBiCtL
 T+rnQUBN/h/5BRPbLtGMC9MjHc+2gFv796JHzFUlr+SAmCJ0QPnOjf1vN
 eFxYfyjnGqoo6JLq7cHAesH+x1M2lYMMdSb6aDkkNxfR3xX3jgvg3ykfC
 aFx6hwAu+AVSpLd5hlBNZpRoDQgCRoTrWTX5YLO6jRXBvDHf4LlPW7kVm A==;
X-CSE-ConnectionGUID: JN3X9R6NRCWdsQCzN2A6NQ==
X-CSE-MsgGUID: HQ4C7+VlQBGoa9zbbVWvlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="87015178"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="87015178"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 23:39:11 -0700
X-CSE-ConnectionGUID: AP/N7maCTGiDndirZOaCgA==
X-CSE-MsgGUID: lQaJI45bREKsRxAu2KfS8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="202409535"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 23:39:11 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 30 Sep 2025 23:39:10 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 30 Sep 2025 23:39:10 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.11) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 30 Sep 2025 23:39:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hTQSFbXcPuISgfIyxJ13sUNccYK9aDgBUVqIKleKxPz4uP71H0rRT6DA7Z5mHqS11jcr17VkxnoliNaNsB2xYBDlCwuyIEaeaMgri579LK3nFgrEfE5N7iYlXyPQO8oR01lmWN8iNGAIOoac1bZRsxcVQm9va47RUauRATputaCLL60AAE4lPNvGS/Gi85MyiIoKlX+S1sid3SO38DH3544V9Sbjy53EFE0fP9GJkIx/jVSTDMj6QEv3kLnkit2MXraySD1h3tRLyElpdVU64eTlPaoufKZPqxhT6KV4W0BZk9kk8UAqS9PV3zPUWesLTBF2H7VBpJp06uhX766W7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IzytI7Q4vtjNrs9q7WJwncGvjN0/w96SsmY0vuJf3sI=;
 b=A/jsWhtlE9+vO88XEi2dKCd5a123vV5Ki6lwSoKyu6yHaLMFxv/8EkmJicJaEywO3JnQDwXdiTaQW5EhyCSqoW9pTZXN4JkbNBAiUAX6eGcdUjtZ3w+TLzdbbRlFdDXR867k6fTyg2B9GbQseSlrSaKlyp18bgnSKcHbZgeBdT9MNwMPHEb46GHaj6JwArpvTJBuCECSWXlE04rZwX0C5zqho7HuTMULmAgzrelaz+lj8sJNcAjcV6IK2aGR2kLaergqq3BfVvdf8Pz6fyOvm6p9t6egWU9zCgreTsX7xFkWsg/XYYBz2xJEluWVk1atKSkj8lRf1ikAa8kIlHvsJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS0PR11MB6326.namprd11.prod.outlook.com (2603:10b6:8:ce::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Wed, 1 Oct
 2025 06:39:08 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 06:39:08 +0000
Date: Wed, 1 Oct 2025 06:38:59 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH i-g-t 3/3] tests/gem_eio: Iterate over physical rings in
 stress subtests
Message-ID: <hqg2ejwerx5rhvh4hmzs7y533svcrzhsenmudex52v6kvtb4mp@gnidtedch2j5>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250930125430.2323555-5-janusz.krzysztofik@linux.intel.com>
 <20250930125430.2323555-8-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250930125430.2323555-8-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA1P291CA0016.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::27) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS0PR11MB6326:EE_
X-MS-Office365-Filtering-Correlation-Id: 371cb660-b6f3-4ed0-e4d3-08de00b5391a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bmhZNjBHSDBsYnhEK1NoaUNDdU5rK3pQNzdIL1hmUmE4ZVpraHpjcnV4dzVv?=
 =?utf-8?B?ZHhjZUhRcjFUeDBrOWFnS2RiR2VPSlI1ZkFTZnBvYkZYeC85ckZkdUxGSmFj?=
 =?utf-8?B?TThmeDcyenlNKzhWZnlvcWVjYzNQQVJ2M2h5TlBhZmw2ZmMyc2JKSVZUK1NC?=
 =?utf-8?B?Qi9ZL00wQStHeks4MjdUM3lvMk9PY0QydmVlcExILzNidXBuMDZLZzFuL3Yw?=
 =?utf-8?B?V0dSd0k2YmpZNUJRUGN6aFRZUEVGYk8zUysrYVBveWViYkpxM05FWXI0MG5K?=
 =?utf-8?B?eGJjKzFENlpOWmhxNHhScUVWWXN5by9QRTYzVFcwM3RSMkRPK2JPMDBrZVhT?=
 =?utf-8?B?NXFPVzFnU0ZxL0V3bDV5cThsbzVPcE41SDFkTkdJZXgydE9uVTVGamtzVW1s?=
 =?utf-8?B?bUhMUGVHdjBGZzFlTlI3VE9ucmRVMDN2T2RwVTg4WGpGZDAxL3MrZ1RaeWVk?=
 =?utf-8?B?THRlaXlpd01RS3ovR2lHcXpYMWZPeWh6enhCOFFkR2tjRUJXMkc4OFI5MWxK?=
 =?utf-8?B?MlVudU9sZlZQaGVtaHJDSTRjOUpqTE9XQ3lzd2cyWThhVlFrTTFYajhjL3JC?=
 =?utf-8?B?anBXaVNZVGdaRGY0UHhiMitZV3FaUUk3WXJGRFVNSnVXeHV4Y3lYVjl3L2Jh?=
 =?utf-8?B?Nm15azRQY1JvVVdVSVc3eVhlYXNYcDNtQnVybjFjTWVIcEZHRGZ5b05rd2JM?=
 =?utf-8?B?NlBnSjFHUVp0NWtmZXRreUdmdUZaQUUvemZCT0lMRUlvUFZIRXkxdDNCT1RY?=
 =?utf-8?B?SjRvemNabThRY0pIRUFMZFh0dWVOaDl2T1hQbW1RRkphekFyV2pXb3R4V2lm?=
 =?utf-8?B?WFNyZTJSeXFKTzU3M3cyZ3Bsa3FvVHh5aVh1OTBmVjViUlNTUFFabTlUT2U2?=
 =?utf-8?B?RW1mNzFLdE5jR21QOHMrbGVST2taYU16UzFBbzNnNHAzTTAramZwUEJUTWVt?=
 =?utf-8?B?UFFSeHZySFpZVyswci9wemNJc0V0U3o3M3JXMDZMQ0s4WmhYeE03REtTNE9I?=
 =?utf-8?B?RWpXQi85Yk1oS2NGSWEzRGp2QkE4RnRaVVREb2JQMDB2dVZaN1RlV00zMTUy?=
 =?utf-8?B?RmRZVUNzYVFvZGUvb2tCT2c1bms3aEQrSnFPeDF1S240NmlWbW92Nk1adUhz?=
 =?utf-8?B?QldDS0Y0UzdlM3dmcEhnd3hRSzFNQW5CWHdpMjNWVnQ2YWNuM0R3d1VRUHlh?=
 =?utf-8?B?bVVKbUFiSVZXZUY0b3NLd21EdlFPT2d0MjFDM01zVmZ4UEJkdjRWOWNsSWFQ?=
 =?utf-8?B?S1dXVE9mck9ydTk1VDhpVWRCUUNEaEViMWx0cjhOVUEzYVNQSFhmWktrZlh4?=
 =?utf-8?B?MHVKb0pldE81WEloa09kWTAwR3NRZUlGRW52TW9odVU3Rjc3WlVNVDNoWVN3?=
 =?utf-8?B?WVBpalBrR1VlbHdWc1dvbmxWOWRIR0M2YndmR1NuekJINVpVZnFWeGNqRjdk?=
 =?utf-8?B?MHZRejJkM0M1NDUxMDJBUlgzckJkd0dKcTByVEhtVElJbjFoVkNodTJQaFVK?=
 =?utf-8?B?S2ZpcE9ONGpoaHNiME5tbkhQOUpOcXMrV3I0MFJUNjA4dWJ1L3llV1N0enBD?=
 =?utf-8?B?V3UrUnUvVXRhdm9YeEZwNit6Sm5Db1ViMXc3WVp6T0xhM1hzYkkyT0dhNTIx?=
 =?utf-8?B?SnVsbk1kVEhPQklYY0Y2Q0xVZzJHbWc3SHZTUkR6M09McFkvdVVRQW0wdGRE?=
 =?utf-8?B?dkptK1ZuK0Z5TVQzRENOWnRYcWYvZHM1SXJLTW9tdWNyUmdWTmtTZCtqMHlB?=
 =?utf-8?B?NzljNzJOMWRUNVNFUjA4emE1cmYxV05BYVBNQS9vclMxV1czUVRWOU1BZmYx?=
 =?utf-8?B?eGs4SlRHaU9TUm9rNkQyMjhCZlRQRi94eGMvV01YbllxL252U1RUQ3dwSHhE?=
 =?utf-8?B?N2k0QkE1N0xBWVh2VUZFYUMyYlBiUXh4T2N4eEtsVDVwa2ZEeFVnMFJPUE5B?=
 =?utf-8?Q?nOKjvwa3xYeXamOGU4e70FozdA1uRv+Y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFZ6cWluWmJDVUtiRFhudGRtNTBwV3ZaNGRNbnN3ajhPbURqQm9DOTJvRTls?=
 =?utf-8?B?NENrejNsZFhHUnhjSnJ0SnlmektRV21Lc3lOQlN1RnJWai9pZXlkcUF5Q21o?=
 =?utf-8?B?OE5MMFE4amw3bGYzWWJ3ZXRTL3RBSFcwYzJzcGdQc3p2TDZQU3F2Tm9ENHBh?=
 =?utf-8?B?V2tEcXloYlN1a2Q5VUNYUmdyNzAzRDlCTys1ZWQ4STlCVUpIeXlRcnRXeVhC?=
 =?utf-8?B?elZuUkp3NHhDS3JzMnlyMWFVUVFsWlpMWDd1WFFFRWdaaW9iUWVlclBFRGJl?=
 =?utf-8?B?L29vVm9iYUova21VdG1kR0JrRlExZzl3aXNZMzVpU3hTRXRTZ2FEMmdLTjNy?=
 =?utf-8?B?ZTJTby9yVVZjbHJ4R0NPd1A1K3RMK0ZzSjRBRTdhYlpMdThPaU1HQjViQS84?=
 =?utf-8?B?RWx2Nk1QclRKL3dsTW9lTVFCZEZLQ3BwMHN4OFd1RkNLeThwN1F3ZncxajUx?=
 =?utf-8?B?V2k4RkxoTTN6NGhQbmdsYmEranlWUk4zSWFQTUM0UVE5MkFGS3NVU1RaeEpB?=
 =?utf-8?B?clcwVjdXMk9DN2JQczlLWThERGVJQmkwNEphR1ZYNmxDUXkwUVBNd2J5S0la?=
 =?utf-8?B?VTYvS0JXRUhaUnJhQkdOd0RmbUV3Wkd3ZU02V2RiZVV4cWJwNjg2NE1yejg0?=
 =?utf-8?B?bmM5THR1eDhYTnlLUEU4N0tsMGgyYVBiaGhhaExxcEpMblBuOFN2U1U3UlQ0?=
 =?utf-8?B?SkNnd3BpeTZoV2RrcjVHUFNaOTUwVDNSUUJiUDlzSVBBd2hHTDVWMkx2THp3?=
 =?utf-8?B?K2pQb1VSN01LclJJOXlHU3ZJZEUzRjB5YUVqeXh5ZDk3OVB1SkgrZzVDakFF?=
 =?utf-8?B?UFRDTmd1RWFIdTZEUm5rNEdpK2lrZ1N2Z3pmZk8xakRFZExYZHlOcmlMQkh4?=
 =?utf-8?B?Vkw5UlZQbzk5WC9LTEVwOU9ZVStBVEFMekRONGx1RENIQitVM0hvb3BtUm5i?=
 =?utf-8?B?THhhdUFQSTlxZis5eUpwVDlnUm0vcjcyckFDS1NUVXl6T01YcjJnWk1ZZnhY?=
 =?utf-8?B?ekdOMmhzdzR6cWhrYWRoVVVsTzBJdVJtM2lHbU5sVWhNamtSR3hNSWRxcjJO?=
 =?utf-8?B?RXI0QzNSTjNPZndXQ0xIdzlLTW5uRDNJdEJoSjFQTmtMaXlaSmFoQkJKYUpL?=
 =?utf-8?B?cGxuemdlQkY3RERxRG5rZXA3RDFqNkFqQmpvMFZVaXBxakZ4OWlpMzNzRGtv?=
 =?utf-8?B?QW5OTkN0MFl0Wm5nZERNc0wxaHVzRHFMRG5na0dlWWloa3QwSmxmZExVSmdn?=
 =?utf-8?B?TzVQcWJmbnUwZ2RUcTcxUmUwa0dNcXBiMXN3bXc0dDFSeWx1UCthZ2NXWkhh?=
 =?utf-8?B?SkNRS0dVeXlvbURQYlUzY1JKN1VGNnROa1BjOC9xZFhtS3FlRGRhaERkeTBO?=
 =?utf-8?B?YVdNdnJBZ1lPL0pxTzRkV3JCczEvUlRackVhR2ZNb09CYTYxcFo2eUZxa2hv?=
 =?utf-8?B?WUhGTDNCbXVJZXB2Mkg2aGoyOWZYenU2OW8vOTR5TWFFTnJTNXJaUjRvclM2?=
 =?utf-8?B?Z2lETTNsZzVxYUdZNUtWM1dUSzAyblZjSkJqMHRUSjF1YXZoYlZ4dllERUNp?=
 =?utf-8?B?REE1VXVhcTJDWlE3RHN4RFBaM0FuNGlnTWtFQWlUM0kyZVRIZWF0NnFIdnJU?=
 =?utf-8?B?RER1RlRqK1V0VlBweVBhaWxoVjI4VS9aNVM3UEUraitpajBDWkxZOXlYMHdH?=
 =?utf-8?B?M1ZjcDZIN0RhRTNuZ3Jsd2FpL2YzeldHTmFkcUZza0k2cTBpd3JyQVNUMU1E?=
 =?utf-8?B?dDlDTWhXWDNiRCthaEVQYnIxQ3oxYUc4eUowU0RNcjd2ZTFBSWpKblZyWG5Q?=
 =?utf-8?B?bzY2czRmaFV0OElzUkpQdzZwemIrSSsrUUZBeGlVa3Z5Q1lMdnBhd0lvR3do?=
 =?utf-8?B?eGsvVFlvekcvRVV0eGl6d1NMOHVBVGZzV05jajNCaWRlN21iKzM1VXBTZldB?=
 =?utf-8?B?K0l2TTYvMktqTEp4YytGWXFNcTM3bGpiR1NYYkFNcDhVVXFCYU5SK1IyYm11?=
 =?utf-8?B?WGFqc1pRR3lzdWIwMXhmTEYyZjgvTW5RWnNLdk1sN1VHelFrVkZVLzg2L1lB?=
 =?utf-8?B?SDdyRnk4WjJzN3ZmS1p2aCtBWFFCbUxsUENmRjM2L1dyWjBKZ0wzUGE1ajFh?=
 =?utf-8?B?MkJBVjRRamVFaHpzUHlDRHFkeERXQnJldEVOVWpoQ2hsVlNXL0lIQ01Qc0l5?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 371cb660-b6f3-4ed0-e4d3-08de00b5391a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 06:39:08.1616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QiNSUfZcG+hD1k8HzZWkFvSUfbl9d6+YZexcLSoVtFrUCs0LOfC0Qtz8RSpFE/Mf9SAfLKRmJKHG18MogSD5t4MDjKV9h0h/5yVj25X3ldo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6326
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

Hi Janusz,

> To avoid igt_runner timing out stress subtests, limit the number of
> exercised rings by iterating over physical rings and skipping other.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_eio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> index 5b0925a8c6..cbfed99b61 100644
> --- a/tests/intel/gem_eio.c
> +++ b/tests/intel/gem_eio.c
> @@ -997,7 +997,7 @@ static void test_reset_stress(int fd, unsigned int flags)
>  	const intel_ctx_t *ctx0 = context_create_safe(fd);
>  	uint64_t ahnd = get_reloc_ahnd(fd, ctx0->id);
>  
> -	for_each_ring(e, fd) {
> +	for_each_physical_ring(e, fd) {
>  		struct intel_execution_engine2 engine;
>  
>  		engine = gem_eb_flags_to_engine(eb_ring(e));
> -- 
> 2.51.0
> 

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
-- 
Best Regards,
Krzysztof
