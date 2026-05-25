Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uExQHpuzFGoHPgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:39:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9085CEA24
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:39:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6839910E40E;
	Mon, 25 May 2026 20:39:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IveGFbWU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F3DA10E40B;
 Mon, 25 May 2026 20:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779741590; x=1811277590;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qlUr0stDTpEaqLDG3DQIQPA08RNfFr1eTRZyTSRVS4c=;
 b=IveGFbWUuvKliglcBMeWkgGLOqrSX09od2vNpr4W73gIcubBhWQWaWSc
 F0d+uhaF/DLPH2Bf/Z59XQPBBTGaIDq0K0ABa8ybcBaPIFy4JZJKCio9D
 KLn5jzE1oT8AkxvReVPyMcPFTpsFToYymSFg9HLlysN/rLikB3BTfbQ+j
 w61JXG33rtpUGas+sdleGbRtLJwz8EknQFvKZU0sIHFORIskCjdwC+xua
 yWCEbZ2c3DKpcMS609TLAflHom6WAXyVyHd060iF2x1EngOWLyxUN+R3y
 M4mLvTtqEvQEytzrrtR6yvWB/I40dr1su1l5kNByTmFNfu7vwLlQPqx0n w==;
X-CSE-ConnectionGUID: PCyRC9B8RjCDACFvWHmE7Q==
X-CSE-MsgGUID: x+m8dm5sQ4Gyk4pibI60Hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="80465824"
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="80465824"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:39:50 -0700
X-CSE-ConnectionGUID: 5jenSfnhSIKHiT62/ne/Mg==
X-CSE-MsgGUID: MByIxwVdQGSaAt5rBnovDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="279813866"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:39:50 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:39:49 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 13:39:49 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.49) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:39:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZeQ30UREuafb41fB5MrqgvrVvIWCJOI7tPIWDupQUgaEEq9isqsjYjmBkEPasT1N14XD3eAoOMOr+rDSuaSq9h5AhPc5DmYahhytntXRzABX1oNViUacXfBmdJmajiLdX0kVPys/E3PdkmYr3qapr4ue6/e1sVAgTpeE59KUxuSvGVJGe+RkmFqKKeZGNK5TM2otQbctav/Rf3t/0NS0plJvCo1usvxrwnok9eGJis4uNP+FXcYM70Q7QEoEqNDF3iC/+Pj5O7qL3/smZns56YApchg3ETOkv/dSDWi1hv6EIxu/SDzhZdxCBsoZgzIG4Pp2QqCtbaJte9qEkuu44w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qlUr0stDTpEaqLDG3DQIQPA08RNfFr1eTRZyTSRVS4c=;
 b=I1Eq2slEqAoYub1ILUkJUmYG9j9RB3EgYN/zVntCSS81QP/zgCHWO2etd5cTqOOAJYzIl1wdSl6DqYlLF2DhbLRhD1/xhaS2gb6huRXvaQzt6fxgnqnBvBil2DukCjSu5v5k8aA/njzXe40z6VRrqrle+qMOUSCYTBSHlhoYzu8vHbIj8kkPmstgBj5kyqzNW2219ce/II64kbPez2VG4nGye+qoDgcT4YODdw96nqxKdQJlhpRRn37FPgYqaTlyYYQ80qTY5dvmmqwRaKyd7lmIiVP+QP71o0FLzN0wXq5gcS1Aq8UB8cMec4ioJli23d4pwiM/xgSOqZbENpLIig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB8319.namprd11.prod.outlook.com (2603:10b6:806:38c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Mon, 25 May
 2026 20:39:45 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0048.019; Mon, 25 May 2026
 20:39:45 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 07/10] drm/i915/bw: Fix/unify peakbw calculations
Thread-Topic: [PATCH 07/10] drm/i915/bw: Fix/unify peakbw calculations
Thread-Index: AQHc6iY6E9a76e0odUyKwd/TyPP4BLYfOPAA
Date: Mon, 25 May 2026 20:39:45 +0000
Message-ID: <baa695ec620b09b1700931b3922e5d300bd6f816.camel@intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
 <20260522200346.17377-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20260522200346.17377-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB8319:EE_
x-ms-office365-filtering-correlation-id: 14c8d4a6-7d4b-48ce-0855-08deba9dc198
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|18002099003|56012099003|22082099003|38070700021|11063799006|4143699003;
x-microsoft-antispam-message-info: 0XPwi2I8IsGm5NfIMjx/IvzxM0XRI7IiVuc6UAIhNAad+zriIL/jI61cqAzLmaXZOON8dwNLlJhNnl3hr2xp1Yu5M5R0QII0H3qymzVof66OqnwWCTJIv7VUfxgw/ZkXJ4f+gX9bQS+emWoo2ro5N5Snjyv4cG6+X3jRNpNIjJjHM+NGGVDrZuZkQfm4rnuVUjz5T4PYM8uFicTY9wUk7JlMMJ8OR/6vnG7C0KQLzaejHQIoEH/DXHoZ+mu8QTx9hv1DvjdT6PiaECzpAMVYyJ0fyK76EMwfS7WV3hl+RUbFF1PwzwJE5NZdnlFLnaDBnbxFoNdQBmxYkrVNwWLHDCYhEl+S/aGUL2ubYI6jUzH6H7d9wEJIl90tRbn5l2ox0Iu2YUxkcTD0ew4KVoIOluguKatdsngTJH9LPqbYI2QWNWfiAOxLppsZd4x4lr4FtwykNCAaS6TVtgfGj1p76wKjYt6o0kiDi8Qc22gjcZVdWafLOajh9rZMy2ZHRPUkFX/LcHhNTwashmlhrLfXCUS5BeFsyAqLAfUq8RFH6KSHB6BzLO4nrKoDzD0ArNjou2S6QaOY7JNwn45jnUCccMB2VwoXu9u7SY3x8yWPWCsCHjacm73xWUSoU9vwYxm80wi4k+x0m8AKh7Rmu9VOx9rnRdqB32XOyOmJX3QzeSWUH+DLJ44wZBbTdac8tAGLTroptwR0cHZ4no/Rx/7RlwEEVWnYAOFk/tHOHL30dCzIHDBK+Z2brrpQcutuEb5+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(18002099003)(56012099003)(22082099003)(38070700021)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?elBzMVlGUHdCQXZYa2JEYUlOZngxYjdiR0x3ckV0WkgwNWtCdzN4VTR6WGxl?=
 =?utf-8?B?ZHBGNm9rT3M4c1pSMEVSbEZpeFpmaVQwa1dNcXNFRXoxSWowRGphTFRGVnBK?=
 =?utf-8?B?UTJEQy9jZ0FkUmphTlJ4MXN0Q1JPWXVHZW85anZJOC9seGFtTnlFdENIVXA1?=
 =?utf-8?B?T3N1Qk5sWlpjTTRXMTEzaEY3Z2daSjE2Yk9jaDBTKzZRWUI0ZmF2WDBaTjN3?=
 =?utf-8?B?ZWpYZW9TTXhqVm9yMSs1MjcyY2VXNnl2NFRKTjBPQXJzV0VaeDNQc240TGtn?=
 =?utf-8?B?dVNGT0hhcW9ScFk4Zi95d1JUakFhRUJDdm9qdndQdERra0dONkhCSGRhYzhN?=
 =?utf-8?B?Um1CNGdYd1p3OHRreUVNQmtsVUh5SVR5Z1Y5UjFwbi9VL1Z5d2FuUm5ZRkxR?=
 =?utf-8?B?RkFLRmFWUCtXZGdwaDJzOWtXVVlRL2ZTU0xaS0YwZ2JWNDJUcGNZVXhHZlh5?=
 =?utf-8?B?MTJDOUp1T2R4c3h6RG1RN1MyWU5jaE9EaldUSzJPVEhpZEQyR2JITUExalA0?=
 =?utf-8?B?NUFxbUVFaVgyYWNzM1BUUlAwdmlvRUFzNmhrbkJTSkc4NmxaMVVKN05lZ0lq?=
 =?utf-8?B?K0l0cmVjcDZnbG9weVdjc1RtV3kva2ZXNW04OXNaTXhEanhrMEtsQTcyWjN5?=
 =?utf-8?B?cGhRc1dkN2lQQ1VBRXVQUlVvRkdOZStnd2NwSVFYMW5TcDQ3MWY3Qy9VZVVj?=
 =?utf-8?B?eFdUelhUdmlIZHMwODdzcSszWnRRZkZ0MU1kZjJnNkZOUnBZSFJLMUtKNVpF?=
 =?utf-8?B?Mld5b1pzQldqcWx6UWE0eWlDMHZCeUNEQm5sa2xUWVpRYThBNmJHeFNaUzl2?=
 =?utf-8?B?SytVT0FGYlk1anc2blNoUzl4VHM3b1crY0hSNlNVbzVwdmhHSnlVQ2pRQm14?=
 =?utf-8?B?VUdIQ0lmdld3a1JBTDJUNGh3bGxTN1duWnEwelM1NVlpNGpoU1dBTnJLOGNy?=
 =?utf-8?B?RnJ5YkNNNVZ5YXNnZGNxaU5tMXJsYVJaMWtEYlZBREtuM3R6Q3RLZHdCZmds?=
 =?utf-8?B?SDZYWU5VRDR4Y3dVOW1xWU1mN0pQRFhvamJkN3FQSDR1Ti9YclVCMGJDOTFJ?=
 =?utf-8?B?d3dvYzdvYnJ0cU8rMzdqbnh5YVRsUWtKR0J4S1JocC8vWmVucVh5TVlPSlRW?=
 =?utf-8?B?bEZLL0pCeTdidEk1bWw5cU9qZStJbDNUbGVBZkE5YUlKQ0ZuR3JuVVozWG90?=
 =?utf-8?B?MHFPTS80Q2tBRkNEUGg4OTNncXBpMWxnS1NNeC95cC9aaEdMeXo0VDJ3eU5k?=
 =?utf-8?B?SllvcERoc3k1SzVZbWF5NEZ0c3pmYXlJdG9IOG9VWGRuVFpiQTVJU0RGblM1?=
 =?utf-8?B?R2pSbG9jdzkwZ0tjenF4NjJnZlR4SC9GWG80Z0pSZUF3N2tnUHU0UStkSG4w?=
 =?utf-8?B?amdGK21ISXYwTkprSVByN3htSlBSWjl5VVZGb0REZnM4aTR3bWZSd1JuM0w0?=
 =?utf-8?B?aENlZk1SM2ExMzR2Z04zR0hjUWZxOG42eS9WTUVwSXIxV1BVQkJ5cmkvRUhj?=
 =?utf-8?B?a2ZETFRBYkcxMm5Vb0loQU1zMi9EVUdxclNPL3dLV3MvWlpXS051TWZoK2Zs?=
 =?utf-8?B?OWl3QXMzWlVJUzN3WnZ5R3BHbHFEM2pHNVFRUXhTM3pGSU9ad2VZU3JNbFVK?=
 =?utf-8?B?MWJOc2RpR25KZXloZTNpdWI4bkpWdlRVMTkrKzZmd01KSUtNY1JYQmhyMnhy?=
 =?utf-8?B?WDNQVXdiVFExS285NFkyeC94VmFQQUUvQnZaODNrVDFIN1FBMmV6UjRVekht?=
 =?utf-8?B?aG4wVzNlN1VnbjhvNUkwVHNVMTVHUlJkR0ZHbVg5U0FoT3VHVlFZaWMwTjBD?=
 =?utf-8?B?VXpVRHhqTFEwaTgxdlZhTkNGdXZmQmc3Vk93QmNGcEx4a0xkVlVscDd4VGZH?=
 =?utf-8?B?cDhNY2lCcWdodUlFR1NzTDFidnRzY2FHM3pyNEI2ZERLbFdUb092UG5XQzkv?=
 =?utf-8?B?OXZwai8vTC9mRGs5UGFGWXhWUXk2bmhKSUZMRHI4T1kySWRMcUliSjJ4VE5q?=
 =?utf-8?B?MnJVSWpVUWE0RkNOaWpPYzN0VlJyS0lscS9OUGhKWFA5NzRDYVJOZHp3MGFM?=
 =?utf-8?B?UHlkNnROY1JmK0tuWjlwNTJlckhndXlDUUtOVDcra3NDaUtaUFhmUktoMnZF?=
 =?utf-8?B?NUNoQW9QeXkvdnNaNmY5MTRIN2FiNmJsN2RqbXNpWm5XMGFaWWEvNHpsRmJM?=
 =?utf-8?B?NEF2T1BQUmMySUliSkhuc1o3TWV1cFV6WUlhS0EyeVNyaDNQZjJ5SEhXOXdw?=
 =?utf-8?B?bmM1MTNYR3Z5b1J6NG1WYUhnb2ZXUXpIZVlVbWltUWNWMmpDOTU2RzYxUysw?=
 =?utf-8?B?MFVGYythcmhuZXcxeWJ5bjVmaEk1S0ZkZG9oTVpaQWZMYUNDZmNzdWxURVIw?=
 =?utf-8?Q?8VL5TBBK+G8N5qFr16rQaR4jqo//MwUWURS0dLGxSWLVk?=
x-ms-exchange-antispam-messagedata-1: YlkWgJbHjj481Iq+38lwPH0QarjUWLgJnS0=
Content-Type: text/plain; charset="utf-8"
Content-ID: <16B1E22DAFDE7944987FAFDBB9836F83@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UZ/DVpxuRurTGWcWBzW+E9hhRZb/bpG6/m7C7ShmRTRnLWliee6+2jrCLjCo/A3kbCqRL3E59UTI/q696+4SQADtry9h3b/ozFwb4u7lwTnYkzb2laUxwi5rPcfFHFODB9387nxXw1s99KFIbUQHOpOVxHBe7Bt8iovK6yNIAAwOay0L3f2IipZVn/Fv/s8QNPXdw30PlAYNihX/vyQ8bxPX3hOa0mwTw4QKi4TegMZnP2el6dpz9v8AwdPHJbILMWyLvGJE4/uzS156ckxahqq71l4SjnseuRyeolhAw/Bs2SKBErzAR4vKRstAlK5OniOj4paLDj/Elj+j/Lvr2w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14c8d4a6-7d4b-48ce-0855-08deba9dc198
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2026 20:39:45.3305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hSxDHhwqdVUswAthqIMabGYkKuTnnkteAByItxDkzdasX4BVou5yV3H2cbwtkg2lWC29kL7dpkWQ/PGiDb2Q3Y5J8dPYMnfdROOUYBNXqew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8319
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8B9085CEA24
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTIyIGF0IDIzOjAzICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2UgaGF2ZSBzZXZlcmFsIGNvcGllcyBvZiB0aGUgc2FtZSBtZW1vcnkgcGVhayBiYW5k
d2lkdGgNCj4gY2FsY3VsYXRpb25zLA0KPiBhbmQgdGhlIHJvdW5kaW5nIGRpcmVjdGlvbnMgYXJl
IGFsbCBvdmVyIHRoZSBwbGFjZSBpbiBzb21lIG9mIHRoZW0uDQo+IFVuaWZ5IGl0IGFsbCBpbnRv
IG9uZSBzbWFsbCBmdW5jdGlvbiAod2l0aCByb3VuZGluZyBtYXRjaGluZyB3aGF0DQo+IEJzcGVj
DQo+IHNheXMpLg0KPiANCj4gTm90ZSB0aGF0ICdjaGFubmVsX3dpZHRoJyBpcyBhbHdheXMgYSBt
dWx0aXBsZSBvZiA4IGFueXdheSwgc28gZm9yDQo+ICdjaGFubm5lbF93aWR0aCAvIDgnIHRoZSBy
b3VuZGluZyBkaXJlY3Rpb24gZG9lc24ndCBhY3R1YWxseSBtYXR0ZXIuDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCAyMCAr
KysrKysrKysrLS0tLS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCsp
LCAxMCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2J3LmMNCj4gaW5kZXggZjJjN2U3MDYxZmZhLi41YmIzYWE3MGQ1NzAgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gQEAgLTU3OCw2ICs1NzgsMTEg
QEAgc3RhdGljIGludCBpY2xfZ2V0X2J3X2luZm8oc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRp
c3BsYXksDQo+IMKgCXJldHVybiAwOw0KPiDCoH0NCj4gwqANCj4gK3N0YXRpYyBpbnQgdGdsX3Bl
YWtidyhpbnQgbnVtX2NoYW5uZWxzLCBpbnQgY2hhbm5lbF93aWR0aCwgaW50IGRjbGspDQo+ICt7
DQo+ICsJcmV0dXJuIG51bV9jaGFubmVscyAqIChjaGFubmVsX3dpZHRoIC8gOCkgKiBkY2xrOw0K
PiArfQ0KPiArDQo+IMKgc3RhdGljIGludCB0Z2xfZ2V0X2J3X2luZm8oc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXksDQo+IMKgCQkJwqDCoCBjb25zdCBzdHJ1Y3QgZHJhbV9pbmZvICpkcmFt
X2luZm8sDQo+IMKgCQkJwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfc29jX2J3X3BhcmFtcw0KPiAq
c29jX2J3X3BhcmFtcywNCj4gQEAgLTU4Nyw3ICs1OTIsNiBAQCBzdGF0aWMgaW50IHRnbF9nZXRf
YndfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwNCj4gwqAJYm9vbCBpc195
X3RpbGUgPSB0cnVlOyAvKiBhc3N1bWUgeSB0aWxlIG1heSBiZSB1c2VkICovDQo+IMKgCWludCBu
dW1fY2hhbm5lbHMgPSBtYXhfdCh1OCwgMSwgZHJhbV9pbmZvLT5udW1fY2hhbm5lbHMpOw0KPiDC
oAlpbnQgaXBxZGVwdGgsIGlwcWRlcHRocGNoID0gMTY7DQo+IC0JaW50IGRjbGtfbWF4Ow0KPiDC
oAlpbnQgbWF4ZGVidywgcGVha2J3Ow0KPiDCoAlpbnQgY2xwZXJjaGdyb3VwOw0KPiDCoAlpbnQg
bnVtX2dyb3VwcyA9IEFSUkFZX1NJWkUoZGlzcGxheS0+YncubWF4KTsNCj4gQEAgLTYxNCw5ICs2
MTgsNyBAQCBzdGF0aWMgaW50IHRnbF9nZXRfYndfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0K
PiAqZGlzcGxheSwNCj4gwqAJaWYgKHFpLm1heF9udW1jaGFubmVscyAhPSAwKQ0KPiDCoAkJbnVt
X2NoYW5uZWxzID0gbWluX3QodTgsIG51bV9jaGFubmVscywNCj4gcWkubWF4X251bWNoYW5uZWxz
KTsNCj4gwqANCj4gLQlkY2xrX21heCA9IGljbF9zYWd2X21heF9kY2xrKCZxaSk7DQo+IC0NCj4g
LQlwZWFrYncgPSBudW1fY2hhbm5lbHMgKiBESVZfUk9VTkRfVVAocWkuY2hhbm5lbF93aWR0aCwg
OCkgKg0KPiBkY2xrX21heDsNCj4gKwlwZWFrYncgPSB0Z2xfcGVha2J3KG51bV9jaGFubmVscywg
cWkuY2hhbm5lbF93aWR0aCwNCj4gaWNsX3NhZ3ZfbWF4X2RjbGsoJnFpKSk7DQo+IMKgCW1heGRl
YncgPSBtaW4oc29jX2J3X3BhcmFtcy0+ZGVwcm9nYndsaW1pdCAqIDEwMDAsIHBlYWtidyAqDQo+
IERFUFJPR0JXUENMSU1JVCAvIDEwMCk7DQo+IMKgDQo+IMKgCWlwcWRlcHRoID0gbWluKGlwcWRl
cHRocGNoLCBkaXNwbGF5X2J3X3BhcmFtcy0+ZGlzcGxheXJ0aWRzDQo+IC8gbnVtX2NoYW5uZWxz
KTsNCj4gQEAgLTY2Miw5ICs2NjQsNyBAQCBzdGF0aWMgaW50IHRnbF9nZXRfYndfaW5mbyhzdHJ1
Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwNCj4gwqANCj4gwqAJCQliaS0+ZGVyYXRlZGJ3
W2pdID0gbWluKG1heGRlYncsDQo+IMKgCQkJCQnCoMKgwqDCoMKgwqAgYncgKiAoMTAwIC0NCj4g
c29jX2J3X3BhcmFtcy0+ZGVyYXRpbmcpIC8gMTAwKTsNCj4gLQkJCWJpLT5wZWFrYndbal0gPSBE
SVZfUk9VTkRfQ0xPU0VTVChzcC0+ZGNsayAqDQo+IC0JCQkJCQkJwqANCj4gbnVtX2NoYW5uZWxz
ICoNCj4gLQkJCQkJCQnCoA0KPiBxaS5jaGFubmVsX3dpZHRoLCA4KTsNCj4gKwkJCWJpLT5wZWFr
Yndbal0gPSB0Z2xfcGVha2J3KG51bV9jaGFubmVscywNCj4gcWkuY2hhbm5lbF93aWR0aCwgc3At
PmRjbGspOw0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5k
YXBpbGxhaUBpbnRlbC5jb20+DQoNCkZvciBwbWRlbWFuZCBjYXNlcyBhcyB3ZSBhcmUgcGFzc2lu
ZyB0aGUgcGVha2J3IHRvIHRoZSBwY29kZSwgSSB3YXNuJ3QNCnN1cmUgaG93IHBjb2RlIGlzIGdv
aW5nIHRvIGNvbXBhcmUgdGhlIHBlYWtidyB3ZSBwYXNzLiBEbyB0aGV5IG1hdGNoDQpleGFjdCB2
YWx1ZT8gSG9wZSBwY29kZSBkbyB0aGUgc2FtZSBtYXRoIQ0KDQpCUg0KVmlub2QNCg0KPiDCoA0K
PiDCoAkJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gwqAJCQkJwqDCoMKgICJCVyVkIC8g
UUdWICVkOiBudW1fcGxhbmVzPSVkDQo+IGRlcmF0ZWRidz0ldSBwZWFrYnc6ICV1XG4iLA0KPiBA
QCAtNzM3LDEyICs3MzcsMTIgQEAgc3RhdGljIGludCB4ZTJfaHBkX2dldF9id19pbmZvKHN0cnVj
dA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiDCoAkJcmV0dXJuIHJldDsNCj4gwqAJfQ0K
PiDCoA0KPiAtCXBlYWtidyA9IG51bV9jaGFubmVscyAqIHFpLmNoYW5uZWxfd2lkdGggLyA4ICoN
Cj4gaWNsX3NhZ3ZfbWF4X2RjbGsoJnFpKTsNCj4gKwlwZWFrYncgPSB0Z2xfcGVha2J3KG51bV9j
aGFubmVscywgcWkuY2hhbm5lbF93aWR0aCwNCj4gaWNsX3NhZ3ZfbWF4X2RjbGsoJnFpKSk7DQo+
IMKgCW1heGRlYncgPSBtaW4oc29jX2J3X3BhcmFtcy0+ZGVwcm9nYndsaW1pdCAqIDEwMDAsIHBl
YWtidyAqDQo+IERFUFJPR0JXUENMSU1JVCAvIDEwMCk7DQo+IMKgDQo+IMKgCWZvciAoaSA9IDA7
IGkgPCBxaS5udW1fcG9pbnRzOyBpKyspIHsNCj4gLQkJY29uc3Qgc3RydWN0IGludGVsX3Fndl9w
b2ludCAqcG9pbnQgPSAmcWkucG9pbnRzW2ldOw0KPiAtCQlpbnQgYncgPSBudW1fY2hhbm5lbHMg
KiAocWkuY2hhbm5lbF93aWR0aCAvIDgpICoNCj4gcG9pbnQtPmRjbGs7DQo+ICsJCWNvbnN0IHN0
cnVjdCBpbnRlbF9xZ3ZfcG9pbnQgKnNwID0gJnFpLnBvaW50c1tpXTsNCj4gKwkJaW50IGJ3ID0g
dGdsX3BlYWtidyhudW1fY2hhbm5lbHMsIHFpLmNoYW5uZWxfd2lkdGgsDQo+IHNwLT5kY2xrKTsN
Cj4gwqANCj4gwqAJCWRpc3BsYXktPmJ3Lm1heFswXS5kZXJhdGVkYndbaV0gPQ0KPiDCoAkJCW1p
bihtYXhkZWJ3LCAoMTAwIC0gc29jX2J3X3BhcmFtcy0+ZGVyYXRpbmcpDQo+ICogYncgLyAxMDAp
Ow0KDQo=
