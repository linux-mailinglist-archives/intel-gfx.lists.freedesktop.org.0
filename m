Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CC4B48862
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 11:27:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C205610E4B1;
	Mon,  8 Sep 2025 09:27:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HfgnHKSv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC2710E4AF
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 09:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757323671; x=1788859671;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=S7GFa9xOwGsiWreBz9nYBne46878VgmJq2mzse0PitM=;
 b=HfgnHKSvIX8Nl4wyYM3uR0tGbhgnXr5Y0BU7OOkMuE+jkU6h7TgoS02o
 58eNiTPbaCjCfRA+vOveBq23BDl9T4VfK3N584qfXB3p8YT1G5DbD1nf7
 ZGD3ZhKssmXY2Hg7mIRSxYg1EgBN6JJW6VUV6jGGDWtxdZBLVsQA74god
 IIorA3eKMGfwo5nQuS0ZULRJ+sG12VXBKA0Ccy5NsGgsCsTzmD6iClloC
 DARYKNN/TPccrPYh/pIncbAVcWZ7jPngk3Ipjyufe1SQ/iFa1WVkcamrR
 wlNxsDdX3pWe6gXKZdPf9VxRfh2SkfDt2OE2CJRWPFJS44+xiYvJT3O8C A==;
X-CSE-ConnectionGUID: rVCEev6yTJaaLRta35M45g==
X-CSE-MsgGUID: O+ZE6VRETC62ur8OVvlQYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="70193547"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="70193547"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:27:50 -0700
X-CSE-ConnectionGUID: V1TlVx3cTtypKuAlHMboHA==
X-CSE-MsgGUID: lcxygkO5S12dws+6C19DGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="173535635"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:27:50 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:27:49 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 02:27:49 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.81)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:27:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JtQpJSNCtr82gTzUsFdmt/cjTaTrNqu56o9GXWTLqaGpIP9gZMBP6Bcio0pTs2TiVkN7tz9TRHvNd8gf3iWCv8nXZeOprBsgyG5Y0KtNmQEe7AiC392xFAHqanQM1iGJ2mvbAO6opg+CSP6Z43hRCHAl+0KGeQaPdMr6o1KkbwMjur2hZmq9fQvXW+NfgINRwUP6YH0dfiRF3acRsB8/NUUSGavYbQHTzHol1pQkH1sQVswyFcSsvbwHVkqsgGjvSG6dzHyL27Y3fwXreVE4bA+6A6UGztlZhtdoF3ygw4Dfs2kFoHIgCfj18yGdkk04nsDuJgkI7zjCWrYZM/WfMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hdk50kpgClI1+HL1nmm92Cq+Y/s2QfeSlJe3h/uBxj4=;
 b=N9huvU6W+n96kTaUcBOY90BIV9IIfbL6Vmqxf5YHv9Nbfn6vQcoxWkKN/t2bKn96nhamNThyRasejswdnzGVGzj64wmzgoYWgmHUwaz8jt1ZLD7rB+AZdMxCJhVcXUiT1WY4iSzP7NUapcak6YztlQh5ZM73KRrISvgG0Kx4VOpkQwMo7n1DSVVBbEI9acsnV0zXl3wef2o9fiD/uLWmPFpZu4URY+jeoxICQyOuvwM2Pfx63OjLO1lYdX9wKblKyIV0wzDz6IsY4FaD0+aZ6GXyr8CjxM9Xurb7EHMcZAV41ZcS1TUtAqz7QJHwwswPyjeQy5m+fkUaAS0j5UeuFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH8PR11MB7990.namprd11.prod.outlook.com (2603:10b6:510:259::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 09:27:47 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 09:27:47 +0000
Date: Mon, 8 Sep 2025 09:27:40 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Thomas Zimmermann <tzimmermann@suse.de>, Noralf =?utf-8?Q?Tr=C3=B8nnes?=
 <noralf@tronnes.org>, Simona Vetter <simona.vetter@ffwll.ch>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH 6/6] drm: Avoid undefined behavior on u16 multiplication
Message-ID: <9a7a56a1a958f7aa0389bb5732f4b716bf2be0f6.1756995162.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1756995162.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1756995162.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: WA2P291CA0044.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::20) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH8PR11MB7990:EE_
X-MS-Office365-Filtering-Correlation-Id: 99daf8c7-3123-494e-2775-08ddeeb9f90c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MncwVUdzMEhMQUZZZmNGZWp1bm0zVVp0eS9EVHpqajNYZGlQNnBkQXhuNkts?=
 =?utf-8?B?ai92MU91RXpJTFpkMFEzdUxRRFJwcVdqbGFGRnVrZ1hqU3dmdkJYcXBQeVFI?=
 =?utf-8?B?ME5abkl1Z0NRYXE4VjVXK09QZERIanArMXNxc3hZNDd3cFNRc1ZJVzFFeVVI?=
 =?utf-8?B?TW96MUFIbGIzNkxIVmtLM2pRdXdoZk04VU1SZklYeFoxeVd2WUxhS2RjeWRC?=
 =?utf-8?B?Wlc1SXEvK3prQjdWNUJ2eUl2VEZiYm8yKzNyR3M1d21NUzRmQXJWOXErOGla?=
 =?utf-8?B?L2NKTk53UE40S0R6ZUlWb2JhQzNBQnk5bzZDQm9YTDlNR1VKMnI5NFlvd3I4?=
 =?utf-8?B?dEU3alFicTdycE0vQ3hFcm5VQWxtbk9ub3NkbzlpdnA2ODRPa0RIN3ZaaFlK?=
 =?utf-8?B?TlJuQzdETmMzMWxtY1oxYm9pNThBcjZWOUVFVUZtNGVRRkJyclptWGdQNmt0?=
 =?utf-8?B?U3ZJeisvREhlWHRzb2kwaTBXc0F6aE1oY2JEaGVISElsYWM4em90MkpkWUlI?=
 =?utf-8?B?K3ZOVnlRYkxpbjI1MG9RYk14NFpsaDFUK0F2QklRVzRmWTU1RngrWEEwZ1FI?=
 =?utf-8?B?SjAvMFRjYjA2b2NKbmYrUk1PYW1vQ3lEUTRKNldiWVBhSGQxNGRnSXlIMVdP?=
 =?utf-8?B?K3A1M2hEem5ZMVhWM08rU21GTjBNQ3ovMXNVb2hZcG1PUk1yU1I2R1RadUw0?=
 =?utf-8?B?NWxtYW1BbFpBZlFVcVlOSWNhU2ZkZ2o3YThiZ2NTMTNJTHloVWFLV29LWDUz?=
 =?utf-8?B?RFc3NU9ldFFsdDZLcUNRQlZKTmtJSTJtbm9xQWU4cjBBOVFmbFhCZHA0ZG1W?=
 =?utf-8?B?dWNwQ25xeVhlQ3lYSTFseCtGVXl1Rkc2WkloL1BZZ0EvZjhyNzZUREdiUmxu?=
 =?utf-8?B?RmowYU5zMFBVWWdVUGllM0w0NEVsdDlPc3F3dFJMMTIwZWZYU0pmMGlsQlZq?=
 =?utf-8?B?cVlGUUE2ajZXTU1ubWxQSTNLTFNhQjBLK0JHNzkxMWlvblorTXhOODFXOGlo?=
 =?utf-8?B?ZWNDVU1OTmc5anRmTHJnUEVEN3IrbWZTUW84bEZrcVhTUFRLbG9wVGIwcklS?=
 =?utf-8?B?K0xLb2MreFVqdVdVMlJkMUlaVkp0bjZRR3d5S3cxOExsY0l4MGN0ZHpTWFNV?=
 =?utf-8?B?T0pOQjZZMi9WZ2dRN1MxVWtaNlJBamxlaG1vc3podnd6THNtVW44ZitqNEVh?=
 =?utf-8?B?aEd4aWNIWmZZdlcxWWlUNDF4U3Njc0lJSkQ3R3RpUFdQU3k1SnoybkhqRUl1?=
 =?utf-8?B?dS9oWFN4SnFxL21FcnhEcExlQnRTNjY2NTNzcDhYb3BRWUVaVFQxeDhKSmt3?=
 =?utf-8?B?b3hlaDVHd280K1h6bklOUHU1MjNibEVhVEJVUGQrN0NKWk1HWVBkcW9hSitv?=
 =?utf-8?B?eWFJV1JDaUtVUjlNRmZiTTFPcHhxbU1KQlNpRXdjVGdrM2g4UWJxOVhqRTRP?=
 =?utf-8?B?dVhTZk5TMVZNUzBHdldkYUJwWXpBSDlIVnJMZVZEQVlqU2lqWVJicDhmRms5?=
 =?utf-8?B?MVAvYXR4MXpaaXVjK3dnTHZtYXloR2FMQ2hSdVRtYzN3UmJvdDNYL00yUkRu?=
 =?utf-8?B?U2pWWkR2QmQrTnpVeGZBMVpnREZmTk5sUkNhY0FqejZrc0w0NEcyT0FwUVll?=
 =?utf-8?B?a0F4cDQveDR5ZkFHV3E1aDNxOWNYeDFvdTVwY1pWU0ltWEpGMmtLMmVBZnZi?=
 =?utf-8?B?ZEZLSzFObUJkZjM0WGNzNU5WN00wczlkRXdKVTdrNGd1L2xGc3ZuMFQrcS9G?=
 =?utf-8?B?S0ZVWE5VUDdLSUtNZENydHFHMWpqV3pyMXNLbGthNVhBSmsxL2poY0RHSnlw?=
 =?utf-8?B?c0lQMm1RRmpNRkZaTkg2RlF6aVFPTi9FTi9TU0VHTEtYQnppUEdOandTdTNu?=
 =?utf-8?B?OGQyTmhMZysyK2NBdTNxM05qcGFCY0ZXQUQzUW5JcTk0RVVKY2c1WlhLTVdq?=
 =?utf-8?Q?mCVCmpHLzCg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUlVekJRQ3htRDZJb0p0Q3piWHBLUytOZEYreTRib1AwclNOVEJXZk1UanFS?=
 =?utf-8?B?cE5EeFVPVlpOQlUrMG1QM3Y5UWVIdm9QeWdlRmR1UW1VNkRNZEJBWjRYMWV5?=
 =?utf-8?B?YllDbmpudUIzL1FJYlBnUUNJSUFBT2t2bnhoVFNJWDRpd2ZiMmduSjdiOXBG?=
 =?utf-8?B?QWFZK1BqZis4Yng2ZlpjaHlXUStZTUtTME4yK3NWdnNrd3k2SDFNUS9YMy9S?=
 =?utf-8?B?KzRCemgxT2dmVzVIU1h1a2ZLQ1prcWNRN1N6VWV5cWlSaFQ0aHpjRC9ydzFF?=
 =?utf-8?B?YkFvVVBhWkxhZW5QR2k1b1RFUmZOWldQVk0rRFoxUWRCZW1UQnM2UHlldUt6?=
 =?utf-8?B?YlVQV3RuQTlEa1ljcXd4b1V3VnQ1QmU5MzN6VzhLT25EOElCYzhRVVZSbUtL?=
 =?utf-8?B?MGpJYlVOUVpGNGlJMjQzUEYzRnhoRjNVWXdBQzkybk9DRTR3Rmh2bGd3ZDgy?=
 =?utf-8?B?emVIbUdEQjVSbjZrWnFaMGN6UUZUa1ZlZ2FPZEkxbE1xaUg1VFVMeHc0a2N1?=
 =?utf-8?B?dy9oYTVFZWJpVzJDb29seTRmbVYzRVZoRkN5UWdnajNQUEk3M2tBdjVBeXg0?=
 =?utf-8?B?NGs3Yys5NnlxQzUvVHB2d1psNDBsQjhCZUF5U0I0bGJMNDcwcmp5c3V5Mmdh?=
 =?utf-8?B?WXRnaDZQVlcwaFMxS3h1dVlkVytHVVRXZW9SalNFbFkvTDMwd3JwZld3NFZC?=
 =?utf-8?B?WmNQZlBjWFdibmM4OVYxaHdVQk1taE9lZ2M5S0l2S0UwTDk2ZEx4dG5aemZF?=
 =?utf-8?B?ck5CK3VnZjVYSlhBMmFrWTMwR0RZUW9MdFBIbjcrdWMyT1hyd3k4RnFsdU96?=
 =?utf-8?B?TVdUVnV2RVI4R2E3czhRb3paOW1YdlVOSjVXbjlybjQ1bkZVc0pKQUpheURI?=
 =?utf-8?B?SjdJcDgydjAwN2ltRC9mY2szQUJWNjJrcDJ5UGhhMDRUK0I0SmJIZUZCV2Vy?=
 =?utf-8?B?R0phWTYrM1gyaTdlMlQxZU54M1g0YUZVOTB4ZWZIM2xtT251aEpVa09NaEk1?=
 =?utf-8?B?ckRIRXpHTVNXUHlDMnh3ZnNKYWxNQk00ZkwzRHZ0aExxdDg4S1BNV1UxczMr?=
 =?utf-8?B?Sk54UVlYVWpZeGtRZnJocXVKZVlOcnlUOWxVczhaRWJoeXRKOXlFZWZnVmha?=
 =?utf-8?B?cHhYTEFvbjUzd1RkZG1RSlUyem9HSW5UdnQ3RTFkb1l1VTBQQzh1Mm1uNW9R?=
 =?utf-8?B?RHRKdlVNVlpIS0oxdFhmL2hJSkkyNGN2bE04TVNKeU9XMlRLY1VCYlBwbDhZ?=
 =?utf-8?B?MmhwRzNmREpEUVh1SE5XeU5oNkhyUXZsTDdBQkhkL0hrZ2k4Vkt6WE1Mc2NT?=
 =?utf-8?B?VHNVUHVyQ3pzMVArOERtRktEc1NySEpOcVI5SHV0Z24wRGpJemI4QU9zYm1P?=
 =?utf-8?B?MTB4cnh3MGNLdktGR0NTR0xaWm95M1JFTkFEeWU0Y0FqN2RBVXR3bUIwa3Uv?=
 =?utf-8?B?TjFFbWxPVzg2ZDZ3RnhRcERQSS9sV2hZRWNJMG9iQVNTVW1PaEI2dHBIZ1JW?=
 =?utf-8?B?T2dLRytIc0NReE4xZm9SVHI2MHlEKzlScjZkcVFuWVlSUnBpNmh2dm5oUE1F?=
 =?utf-8?B?R2Nib0l2WWRiU0JFMkZtaWdTZlZJS29RdjdYUDZpVEcxQ2pjeFg0eW9EY1cy?=
 =?utf-8?B?M0FzMDYzUVZ6SjlzejFXeDQrd2kwOU1ROFpNSDRRb1NFQmVyeDludy9ObGNC?=
 =?utf-8?B?STFYRTNsTDJ1MEl1d1JoVTc4enVUclVQMmYxeFZiZkhBb3JLRFV4Y0psYUpT?=
 =?utf-8?B?NjZYSDZ6U1BZdDVmV3RSNzEvUUt0STZSM1ZSSnRuUzhhTDRQQWRYWCtVUmMx?=
 =?utf-8?B?aFB6SjU0U1NpdTM4bm5hVDY2TFRMMlZ5bnFIalJLTVpPU2lnRk1ORUJ2Q2U2?=
 =?utf-8?B?VUd3M0VJSW1zKzdWQU9xWXJVOCtnUGNJUk9ZNUl4Uk1BMGJVZlNMdXFnMklj?=
 =?utf-8?B?M1NWQXdUT0VEN0EzaXZpM1M1NC9lcmNkcjVQTTdmczN3djB2RVJjbDF3UFl6?=
 =?utf-8?B?aWpnWUZ0WEowTXRQWmpIOTE2SWg5a3NNTktIQWRybW1QNEhhYWFFRll4RHh5?=
 =?utf-8?B?bmNOMTJyWlNyYzdncjRJNXRwVzc2SWpDemdnK0hnbnFZdUJ6cFVzR2ZoU1pk?=
 =?utf-8?B?TTg1bjFRTTJ2Wi95bzVXeXdrZTlvaGdxNDRIWHU3ZkkzcWc5MW13NmtIV2Zn?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 99daf8c7-3123-494e-2775-08ddeeb9f90c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 09:27:47.2579 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XRHaCiKuiXbHc28FV+fXP7UAC7oaZUdj/pHgv2XyKcVwziULsis5FgYfLFxtH5up6XkRA5/JaXjxpHEvhIvN7YL/B7xXK+BfLAQ/fMf/XCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7990
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

Fields hdiplay and vdisplay are defined as u16. Their
multiplication causes implicit promotion to signed 32-bit value,
which may overflow and cause undefined behavior.

The same goes for vpos, which is multiplied by signed integer.

Prevent possible undefined behavior by explicitly casting one of
the operands to (unsigned int) type.

Fixes: 3ed4351a83ca ("drm: Extract drm_vblank.[hc]")
Fixes: cc4312127108 ("drm/tinydrm/mipi-dbi: Add mipi_dbi_init_with_formats()")
Fixes: 80f7c3f77697 ("drm/vram: Add helpers to validate a display mode's memory requirements")
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Noralf Trønnes <noralf@tronnes.org>
Cc: Simona Vetter <simona.vetter@ffwll.ch>
Cc: <stable@vger.kernel.org> # v4.13+
Cc: <stable@vger.kernel.org> # v5.4+
Cc: <stable@vger.kernel.org> # v5.7+
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_gem_vram_helper.c | 2 +-
 drivers/gpu/drm/drm_mipi_dbi.c        | 2 +-
 drivers/gpu/drm/drm_vblank.c          | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_vram_helper.c b/drivers/gpu/drm/drm_gem_vram_helper.c
index b04cde4a60e7..4b144e9603b8 100644
--- a/drivers/gpu/drm/drm_gem_vram_helper.c
+++ b/drivers/gpu/drm/drm_gem_vram_helper.c
@@ -967,7 +967,7 @@ drm_vram_helper_mode_valid_internal(struct drm_device *dev,
 
 	max_fbpages = (vmm->vram_size / 2) >> PAGE_SHIFT;
 
-	fbsize = mode->hdisplay * mode->vdisplay * max_bpp;
+	fbsize = (unsigned int)mode->hdisplay * mode->vdisplay * max_bpp;
 	fbpages = DIV_ROUND_UP(fbsize, PAGE_SIZE);
 
 	if (fbpages > max_fbpages)
diff --git a/drivers/gpu/drm/drm_mipi_dbi.c b/drivers/gpu/drm/drm_mipi_dbi.c
index e33c78fc8fbd..536741dd7690 100644
--- a/drivers/gpu/drm/drm_mipi_dbi.c
+++ b/drivers/gpu/drm/drm_mipi_dbi.c
@@ -691,7 +691,7 @@ int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev,
 		      const struct drm_simple_display_pipe_funcs *funcs,
 		      const struct drm_display_mode *mode, unsigned int rotation)
 {
-	size_t bufsize = mode->vdisplay * mode->hdisplay * sizeof(u16);
+	size_t bufsize = (unsigned int)mode->vdisplay * mode->hdisplay * sizeof(u16);
 
 	dbidev->drm.mode_config.preferred_depth = 16;
 
diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 46f59883183d..8a3a82962494 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -779,7 +779,7 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
 	 * since start of scanout at first display scanline. delta_ns
 	 * can be negative if start of scanout hasn't happened yet.
 	 */
-	delta_ns = div_s64(1000000LL * (vpos * mode->crtc_htotal + hpos),
+	delta_ns = div_s64(1000000LL * ((unsigned int)vpos * mode->crtc_htotal + hpos),
 			   mode->crtc_clock);
 
 	/* Subtract time delta from raw timestamp to get final
-- 
2.34.1
