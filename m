Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 285268D7C7A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 09:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB7410E2DE;
	Mon,  3 Jun 2024 07:30:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NNPP64mR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0C8C10E2DE
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 07:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717399837; x=1748935837;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rzo1U3v8dwdzKpVh3nTmVGjLJdeSoIuKd5DgdGfpYkY=;
 b=NNPP64mRicAtIysLsehoaC7655PG8cHq3LRQNzQbGIqBkqfHxCzmXu2b
 lcYbJcxZgw63mwGn8yysxku/MnRh/eZ4iJro97zV4D31w4R1/Hm+64r6D
 bFbzYPHFQnwXvc0sV6xvcyDtpGIP56l1GJkuqk9gqHrJ+st2vUY+x2tLZ
 Zn8ZRGH0x194YM7reK+ybw+q11XP7VnEn3JXuBaK8E5bpo81B0Lf7whH6
 9W5XsE0uocDStMo/g9tZGIwjOHyBrBwXJtBv3Up9UPkP43tM2t14SMtOH
 dfb8jJZxvlruOiq5nXuYKGz/K8fCIoI5BUTO01deavuUbyrMcjfR76+pS A==;
X-CSE-ConnectionGUID: 0IbvaQPOQcelv2icdeE39Q==
X-CSE-MsgGUID: 6R/aDaW4RVSHBIp9ylwuTA==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="14067323"
X-IronPort-AV: E=Sophos;i="6.08,210,1712646000"; d="scan'208";a="14067323"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 00:30:33 -0700
X-CSE-ConnectionGUID: eY2B4MIIQpSA0mUVwBtltA==
X-CSE-MsgGUID: wCwipRHMTBKGTPXF7ph7Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,210,1712646000"; d="scan'208";a="41237274"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jun 2024 00:30:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 00:30:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 3 Jun 2024 00:30:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 3 Jun 2024 00:30:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EpudKd605JdV2neaIRujqW+oSgEOBzJVNkxL6QT5AiNTz/jjNhqzqx2TNy4qv7c1IseqfNHvLe55PrcsugNaXjpRj1l5W+lG8sDdPphSuGZ23qL4RD8bJDWu+G8V+WDgvVrtqzZTsK+eO4L8KDG5xmUP0QTcvumVX689gRYVww/LuSkH/uSUEbIyaz1JWjznK6bpPPO1vsLTsgb3xGNcFzlcMoTyvtoCtAolIr26JFe5orQS74C+Vje4sJSHc4RHbZ4SL9Z99hGIhx3Sk+wO3jBSyOkd99bi+Ya1eS5xul3uJCA0bzy6THuC8bDXvPr1cY4rByfM/CShwhZ0BYedCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rzo1U3v8dwdzKpVh3nTmVGjLJdeSoIuKd5DgdGfpYkY=;
 b=GvDfr3j9zmsy/6VB8Z/YLc6XHjU56q/lp27gnQL9FrKlCHg7u0wJ6w44zWMMUmT6pokp0ErubkeJFZTPncCDyFoBoE6UQ/TBRXUMbtc0XoRAl6BakcHqh7+vtcTvP4R4zB4lv6zIqPMJGSTs3idqtUw/bWSyqiLG6lE7hkBICoyltAFNwDEV4RPdt00DLJXp+q2m7dDa/2I/nXduPwBaX18JD+1IhOgI0gGhOn0acML+IzVxSWM4Yc8YX3bbCxcLTbPtQXi4Q8yiK5sXe7rEeevBS0xWWsCqP+i92Bf2W6uIvhPGI2t5fLg65VOSh2cLGGmJWXYv41xwTWBuCKsdpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB8278.namprd11.prod.outlook.com (2603:10b6:806:25b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Mon, 3 Jun
 2024 07:30:28 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Mon, 3 Jun 2024
 07:30:28 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 0/6] Region Early Transport debugfs support
Thread-Topic: [PATCH 0/6] Region Early Transport debugfs support
Thread-Index: AQHasawM96SXG1NwykOJRnhlfj2INrG1q/tQ
Date: Mon, 3 Jun 2024 07:30:28 +0000
Message-ID: <PH7PR11MB598103D513DD731195BA120FF9FF2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240529093849.1016172-1-jouni.hogander@intel.com>
In-Reply-To: <20240529093849.1016172-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB8278:EE_
x-ms-office365-filtering-correlation-id: 168b6d07-ad1b-4344-020c-08dc839f0abe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?YzU0R0xSSnQ0Q1RRdnBQZHBSVkFjelZrMDdLaWN3OWpuQVZXbE80YTZiRXNm?=
 =?utf-8?B?UE1SU2FzRXhiSzBZSk1XOXhiT3ZKZFluQ3crYXoyOFpVU2JESGJYREhEZzcy?=
 =?utf-8?B?RG1zeUtuM0RHTm5lZ0NKeWtGaHRiSjlIY05yeDNFSmtUN3VEVzlDakpseHpS?=
 =?utf-8?B?b3BRUUtONkNzU2lHaFZKOGVmSTdZUEJBN2ZPb0d6UzgwOERhWFR3eTc2bllL?=
 =?utf-8?B?UGxYQmVaUjZsWXdlVmc2Z1FsMmxDSGRJcG9HY08wTkdGVVoveXBXZEc5ckJo?=
 =?utf-8?B?WklYRENWbGZtVXVHWi9IZURvZ242MDdlZkx4Ymh5MVlNZlF1dTUzbjAwUWNq?=
 =?utf-8?B?b25lTDJnSS9uRVczQlFaMkNOald3YUxuMWlVMWYzUUJNeE1TS1FTQWlJaXZF?=
 =?utf-8?B?SSt3NTJiKy9KTzE2bGk3Z29PU1E2T3FwZXFiREV6M2UyaCtobEZySFJqdVRn?=
 =?utf-8?B?MFlESjd1M2FVS084QzROM20yUWpqUnVRQU9laEg2UVBlc0VwYlFJWTZqclNq?=
 =?utf-8?B?YWZ6c2ZENHF4YlhyRzJwc0VQZW5qZUlLRDAzbUF1dDFRVEZSUGQwNkx5TFgy?=
 =?utf-8?B?RG1IYTdQa2QyaXZ4WlF3U2RiZkRkUjZmNm02QnlqRm85djRRZThTSW50Uzlo?=
 =?utf-8?B?YTFkaWFxLzRCb2RqQ3JJK0FoeXBGT3pxclRMNnlHQVlKNjJ6dEI4SDI2YVNy?=
 =?utf-8?B?elc5RFc2L3h1TVpjSTViRHdGYWYzMGNyR2p3YWsxUndZVTY2eCtiTjFOaHFv?=
 =?utf-8?B?OXI3OGVSUGVzK2NLVjR3M3FodzVIVU1VOTV5ZjdrRnZSNFRaR0hvK2pJTGhl?=
 =?utf-8?B?aktnNEUzQlU4RndFaTBpSVVPMUZpVHlhemw3T2VZUVhwYzFpTkJ5eUtzcDQ0?=
 =?utf-8?B?bU5palNYclZLRTJkOUJGYVlqTWFHejJSdHJWbExoTzN6Q2N0bXd1MnBMQ3Z0?=
 =?utf-8?B?bFoweDBOUnRxNmw2OVZUMUd3V1c5THpiLzZUajF1UHd2SElKOTNodDJsK3Bq?=
 =?utf-8?B?cTJhLzcxb1V1YVhGbVY4czNaR2dMZVJ1TjRyK3dWWkdncE1VTUVMWUlUVy9t?=
 =?utf-8?B?RXZRSDJGbERVQ3ZEMDJIY1oydDJWZ1h5d2tvSUEvOWx4MzZNOHk1TUFNWFpj?=
 =?utf-8?B?Q29uMFJ1SzZWOUpaelB6TVhXazRTckJjY1B6UGVIbVUrOVhza1V3U1h3amJT?=
 =?utf-8?B?bkZ6cU8xM05NUXZSUzN1amt4WnBPTFZBbUl6NkdVSWNsRi9NOTlSektPTHk5?=
 =?utf-8?B?WE45VStnZGg5Nno5akdhUGxzTDZqdmNaRzlsbTBoSUdYMlAyME9qVVVhbFY4?=
 =?utf-8?B?MnRnRDNQOHNRSzNudG96QUliY0c2WThqekNuV1RhVDAwS05Wb2dmRE1mNmF1?=
 =?utf-8?B?OWp6N0xyOVlPaXZpc2FkRjl5b3ZNdnZXbC81TjdIaEJVYXVaUXFoVEhwR0VW?=
 =?utf-8?B?REV1OTJMVk56YWdYQTh4V3lLRDZBWUFSejJ1N1k1WUplZ1R1STViMG1wYkda?=
 =?utf-8?B?dHRkS2tZanpUSDJ0T2FaV3AyMXRwY1kyNWxmbTZtWlR2ZGZJbHdIYXJpVnNR?=
 =?utf-8?B?MzFxU3Nna0hKd1l3YWFxQnE1eWh2Nm5uckM1bkJDc2V5dk1KcW5kZ2xuZXpx?=
 =?utf-8?B?cjN4TStnbVZlSWRsSDQ2ZE9jRnFhVC9zcmRnbjZWWWduNFN6Q0FIMVFHZVZz?=
 =?utf-8?B?cFpVdEZ4STRXTTN5bVFEUG5zUWZPR282SjM5dW9XaTJUYjdKb0duTElFWjZy?=
 =?utf-8?Q?+hhkE0SMBRqDpkWRe8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dzVQcXBVSjhIbUZ6dUNEQ2I4SXVFbEdJUzM4NnU5cE10VXoyRjVWbzNUWWd2?=
 =?utf-8?B?SFJadG5wVnozUnZ0WGZjbUNFeFQzemowbUwxeHEzS1RrWVU0VjNlSm9oYjU0?=
 =?utf-8?B?SHIvdmIyRXV2dGFCWUR2Mko0V2ppMVRyb09ZNCswK1RHOUIwOUZOejNPOW0y?=
 =?utf-8?B?dkUwdFNhTGpwYjg0VFRKOTh3R2FKN09DNzg5NFYwMk9pOE14UitWY2RCc1J1?=
 =?utf-8?B?eWxMNHpqeEpyN2RqdUhCTFpvc1EvMXFFQmVJMEdYdC9DQnVlNEJUOHVpQ2Zq?=
 =?utf-8?B?bXJYWkxkQjNJd082OFNyV3FkRjhPcDlNZ0c4aHdtL0lrWGxCQmIveU9FaURV?=
 =?utf-8?B?OFQ0Y1lobVJydW9PZ1FOYlZsTHFaUklteng5RmFUU211dFp6Q1MrOGZtUmlo?=
 =?utf-8?B?TGJCYVhzOXdzdlozWTlaeHprZzViTzRyL1g0Q1Y0S3ZxMnFRZ1Z6NGhXTUdx?=
 =?utf-8?B?ZG1ROUdEVkd2WFRqOHpLYVkvV1g0WDBlTlp5dFhueTVtZTJsKzdZU0VXTHdG?=
 =?utf-8?B?RXMzOFdHTkFnZ3IwLzcyQWltdStEaU8vYktzdWNzQ1RSZFVpOWVEMGtSNkFW?=
 =?utf-8?B?ZlZoS0oxeWRPOENVb3hqNDNrSlQ1OWFMdCtKdW1lQ2YzSXIydWJHTmU1OVd1?=
 =?utf-8?B?SXFiSkNKcXZCTGwrRWN5Y0tGd1I5MHh4Zk1ic1U2eElWZkpqbVNVWlZacVc0?=
 =?utf-8?B?d1Izc1pYOVczbTViN3lNbkJXQmhESDZvNTlzdTJMQVY3WHNUNUxPQ01wUFIw?=
 =?utf-8?B?U2trWHBBWlBYOEZ2Nmhuc2VLY0pHUUFlZ2ZVdWRLNFpMRGNubkVvR0NoK3Bn?=
 =?utf-8?B?QmsvWGZKTWl4QkR3ZHdmOXdMcjRlbUVDUStCMmlTZXlwaXkwcmp6ZzJJTzdo?=
 =?utf-8?B?TUh4aUhoNVJNT0dXYXNpeUtGS0FGTmoza1pmRDF4dytmcFRWbDBjOXpiUXgw?=
 =?utf-8?B?MVdGZEx6SndWS1BrV1lUU0N5RjdqcGVReWg1bmp4Mzg1VmVMZzZSNzJMWTFx?=
 =?utf-8?B?bGIyYWFxdm9QaWUxcWVuU1ZhVFRiZERUL2NYY1hSS3gxeTRtYUNRbXcxbWRp?=
 =?utf-8?B?MW1qbThzZ0tUVXZlb25JYWpxMEtXckRtYXJrRTJsV0xyVUplcUNxelFWbkZ5?=
 =?utf-8?B?Sm5sMkdWaWxUVFZWN3RpcVY2NFUrVDIrRjhlNGIwb1BmL01JeHhRcWNYRVN2?=
 =?utf-8?B?M0FoeGpJbUQxT1pQVGFFUURxa0NnZGNGMklHQW9veDV5SmNTREpJZC9EMWls?=
 =?utf-8?B?bGNuZFJMSEhpWGVKV05kWWxWNDczZzlDcWRVSUlqeDhrY0hwdEo3TUs1d3Y4?=
 =?utf-8?B?Q3dvVFI1S1JIdHVQaFZPd3NFZmRtVlhScGpUN3MvbVFHbHBqM1JBbHkwRWNh?=
 =?utf-8?B?WFVRSE1YMGd4VWN0R1dKcGtkVmtCQnprYVlMTm5uTFo3VUJXN3A3QkxFWThO?=
 =?utf-8?B?NHh1cE44TGhBYkZTbUJ5Z1NXNWpIcjdobVlwMmQ4R3J5aUl3bEkvbi9PWXZR?=
 =?utf-8?B?Q05TWFVQbFl6VkRCTGU3RlFsY01wUjlHekZNcUJqTm9WN0J4eVZySmVlQlN2?=
 =?utf-8?B?NTlMR2FBLzE1WVBZVUMxeTg4U0ZGS2srNWIrb3VyV04vR2JUT2JNc2lVMWVN?=
 =?utf-8?B?ajVGNEtZR2FndWd5ZFJZOFRWUG5DeHl1L2VFSUlmYzJHdUpsdi9PKy9SZlpK?=
 =?utf-8?B?NDdvWDQvY1hZZWczT2Fqdm8vV2ROeGtoUTZMazVGTy93cnc3K3V5RzRjOXdO?=
 =?utf-8?B?bDZQVEJIbnBNYzB2eWVCV3NaZzlUOW5TYlVLS09HdTZxVFVycjEzNjNJcE1u?=
 =?utf-8?B?MmVyVFFCbUlaeENXSE56QmhqVEpiWncvY0hoZEI0L0NoZURRZWp2bEJKZGlO?=
 =?utf-8?B?d1BVNi9iYTlYQkdpcnhLRm1oU2phR1VIa1RjRXZZWVBSVmo2MElQVlo2dyt1?=
 =?utf-8?B?TDNKK0V2SUEvV2hMNnZHcjdoMVZ2d1MvS0pIRFlNZ1pDOXdCVmZPRHMvVmZj?=
 =?utf-8?B?cGtpaHlPWmRoQWl5RVhUdklJN3BOY2pmcHFaZ0JvblJ6dHFlRnZ4ZnZRVG9T?=
 =?utf-8?B?L0lMUktqOGcraGVjQjBIbXlqSU5WTngrWGJIK1lhN1NBOWZLVk1vblNWb3hj?=
 =?utf-8?Q?P1RU30zXRllTUE7BZpWkfPkkJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 168b6d07-ad1b-4344-020c-08dc839f0abe
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2024 07:30:28.2757 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DvyaAhx7STed/zF4hlf57dF8vc8ZD43GB4OOIOY8hJFOV9GHRXz8MjnITap2i+x2r1xGnrkH0j6mfoZLjq2uLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8278
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTWF5IDI5LCAy
MDI0IDM6MDkgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAwLzZdIFJlZ2lvbiBFYXJseSBUcmFuc3Bv
cnQgZGVidWdmcyBzdXBwb3J0DQo+IA0KPiBUaGlzIGlzIGEgc3Vic2V0IG9mICJQYW5lbCBSZXBs
YXkgZURQIiBhbmQgIlBhbmVsIFJlcGxheSBGaXhlcyIgcGF0Y2ggc2V0cw0KPiAoaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMzM2ODQvIGFuZA0KPiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEzMzY0OC8pIFBhdGNoZXMgdG8gaW1wbGVt
ZW50DQo+IHNob3dpbmcgc2luayBSZWdpb24gRWFybHkgdHJhbnNwb3J0IHN1cHBvcnQgYW5kIGlm
IFJlZ2lvbiBFYXJseSBUcmFuc3BvcnQgaXMNCj4gZW5hYmxlZCBhcmUgaW5jbHVkZWQgaGVyZS4N
Cj4gDQo+IEFsc28gUmVnaW9uIEVhcmx5IFRyYW5zcG9ydCByZWxhdGVkIGZpeGVzIGZyb20gcGF0
Y2ggc2V0cyBhcmUgaW5jbHVkZWQuDQo+IA0KPiBKb3VuaSBIw7ZnYW5kZXIgKDYpOg0KPiAgIGRy
bS9pOTE1L3BzcjogQWRkIEVhcmx5IFRyYW5zcG9ydCBzdGF0dXMgYm9vbGVhbiBpbnRvIGludGVs
X3Bzcg0KPiAgIGRybS9pOTE1L3BzcjogR2V0IEVhcmx5IFRyYW5zcG9ydCBzdGF0dXMgaW4gaW50
ZWxfcHNyX3BpcGVfZ2V0X2NvbmZpZw0KPiAgIGRybS9pOTE1L3BzcjogVXNlIGVuYWJsZSBib29s
ZWFuIGZyb20gaW50ZWxfY3J0Y19zdGF0ZSBmb3IgRWFybHkNCj4gICAgIFRyYW5zcG9ydA0KPiAg
IGRybS9pOTE1L2Rpc3BsYXk6IFNlbGVjdGl2ZSBmZXRjaCBZIHBvc2l0aW9uIG9uIFJlZ2lvbiBF
YXJseSBUcmFuc3BvcnQNCj4gICBkcm0vaTkxNS9wc3I6IEFsbG93IHNldHRpbmcgSTkxNV9QU1Jf
REVCVUdfU1VfUkVHSU9OX0VUX0RJU0FCTEUgdmlhDQo+ICAgICBkZWJ1Z2ZzDQo+ICAgZHJtL2k5
MTUvcHNyOiBBZGQgRWFybHkgVHJhbnNwb3J0IGludG8gcHNyIGRlYnVnZnMgaW50ZXJmYWNlDQoN
CkxHVE0sIGZvciB0aGUgd2hvbGUgcGF0Y2hzZXQsDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5u
YSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgfCA1NiArKysrKysrKysrKysrKy0tLS0tDQo+ICAu
Li4vZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgICAgfCAgNiArLQ0KPiAg
MyBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkNCj4gDQo+
IC0tDQo+IDIuMzQuMQ0KDQo=
