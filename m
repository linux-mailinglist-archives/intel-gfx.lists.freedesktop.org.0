Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOkgAKwlFGrfKAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 12:34:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2615C9461
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 12:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9572710E0E1;
	Mon, 25 May 2026 10:34:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TlzPjN+t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E6C10E00F;
 Mon, 25 May 2026 10:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779705255; x=1811241255;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DJZURM1Vf9/XwPBo+XqcLG3cfBbytFgYxnG1TqvXTgk=;
 b=TlzPjN+tmGWTTtPysMYjPXj3J6O7prPhhZSWtYQ0UhJQG0/c5YGO8uN/
 tz349tW6oELKorwRagjQffmSrUwCD7kXBKvQnwuZjvRuwLCHrEzTRTG7w
 M7cjMM8T/pTLZH8iISvp0rwDONWk08OH6Iepy+Ij88X1ZQQgRwqzenB2w
 ezXTZVpIURrwmAAtG1EPyir/UHtBUOSyryW64QysU81BfmR7idJ2fT90f
 qL+fw0dI05HdcYOjwiLnw2JKBZFe65OLWv2iMA1wctzPTnur0QCbkH3Yq
 9gLXxMkYZ43zMeSVFh7mFv8kstDgQlDVGwpjEDnqy+6CUWXdbX0sF0Xqv g==;
X-CSE-ConnectionGUID: OkeahAYoTuu8RjMNY2pe9g==
X-CSE-MsgGUID: bUHKXAF5Q66O3Sx0bgTFCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="84411647"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="84411647"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 03:34:15 -0700
X-CSE-ConnectionGUID: +/e+VxbSQoGAikDhyTxZMw==
X-CSE-MsgGUID: V/QQBSj3SmS8MgjSV5w28g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="265141291"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 03:34:14 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 03:34:13 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 03:34:13 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.16) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 03:34:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GHEpi+J7bEiPzB8v22f/9hTA5QCh30U3SeyE1aZBBSVAlWOHZVCuVkUU3mSTu5z+rfrMERZsFimMD4VB0gwLdxbKt0bH9USrackagcfoE0zVnIAmPXFCgHSkw3E+1Q1pk3Q0wcoRUkzq0JbFAG9BuJpjlOiqbx7wKHd+rwEn4KtnLH02I0HRBimX34dxbAa7GJfUetqq2zarSHwxywffd3i9Sd7SnZv6n9KrgZomxGxreakhehY9I5hpjnBekJPcRYbPbB4J4ph5X0MS95IDG3s2LrcWrkGaJzO02pKo7RvOZDZUR3nOanTrN6ikMEucjZS9xrHOg0Wu7A+n620WRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DJZURM1Vf9/XwPBo+XqcLG3cfBbytFgYxnG1TqvXTgk=;
 b=YFkxipB6BZc45EigU+0VL4JMjtRBcUU18FQwYxBXlAZ4mOT42T/6+EdrVhz6XaALtfThsehWlEeNm6DrC26dw/yCQZKJUeYLnttxCg3w9BeG9DorPsqu5ZvV6ZKBM/mdx/YWEZTLCIXewenOM95vsTspAdnjbdWLpDwtW2PC1nlS2L+zafoJQ9d9MW6rJctLKATwNPGWBo4jsJavbwnU+M0q/2iTxY/GWp08IFICyIERdh1bsXYiT8p5wCYYcdsBau5wUl86KR+9tjY8CBmBILpYtzy+wD9MMU92kgEJeCxGt3lNd31JgwAMOjCh3fxTY7IbOoRmRSGFNFPSsvNJbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SJ0PR11MB4798.namprd11.prod.outlook.com (2603:10b6:a03:2d5::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Mon, 25 May
 2026 10:34:05 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%3]) with mapi id 15.21.0048.019; Mon, 25 May 2026
 10:34:05 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Handle odd position for planar formats
 in selective fetch
Thread-Topic: [PATCH] drm/i915/display: Handle odd position for planar formats
 in selective fetch
Thread-Index: AQHc4eWF05R437upu0Od15DAkCNcHLYKCoUggBSUYwCAAAEvQA==
Date: Mon, 25 May 2026 10:34:04 +0000
Message-ID: <PH7PR11MB82524DF05537A18D59885F5B890A2@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260512080022.2527094-1-jouni.hogander@intel.com>
 <PH7PR11MB825213472B9A5E7628BA7DE089392@PH7PR11MB8252.namprd11.prod.outlook.com>
 <105d4e877ab745bc9c3b43905605698be970c2f2.camel@intel.com>
In-Reply-To: <105d4e877ab745bc9c3b43905605698be970c2f2.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|SJ0PR11MB4798:EE_
x-ms-office365-filtering-correlation-id: 749d36d7-c636-4877-22c6-08deba492516
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|6133799003|4143699003|11063799006|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: kyQN+l0BqpItQVBbptwsW+2DXaH/Te+ID3ngOIuquzNSMlVfaCUDtmfz6C5elU1b/NlXdVEBChCnzSJ4Gju6b7acYDurEoXL4OjK26vt+klJdASHHr5w7dcOPTDHkIaSwS8KgS8Smk1LayGWWe9smyAVV6U98DfVr95o6xODFuCsQqMRPAU+4RItkSho12AvL1moQDJw7RyRv0BeYvd4QBMDBhBLeugX4NKNi2YZWLtZ1t/Q1LdYzk4f1YUyL/K+tOeQpJPUSmnra8C2J0m55APQzwGc4rK+nbHbQY6N4cnl3HGJ7NBNQSozjhpW2ELYKOgPsN2PZT0lbJl9L2eTLnoDN/NuuVfEboDSll1VgRhji8BlM8MtwSJAu1D5ZBFAlS15epzZKFBBtJ61Z3/AlNXXXhi4luVInqLMUXrk17oJUuO/C+hR8zzQwY1067MKzzKrK+4rsnwuddIpx2IH9uRPZLD4olYpy1PJ5NNUR5wRNss4PixQ4nvJ8D+WUbDPgv4L/K14ocl9OWzr7y2GDfXY4BmqocFsunSU4c8n6p5pSlNc2hJIrbzk9KMBTlHAKcURGT2ylTiW8Qe7xhWzb9ZM1CriXwRdySeTnJy37KolXS7pz/6/qiIVpKBCFwzgqwxyX1d80fBCy3PRip71uyG2iakQDkkP+IsRouKNq8UfXLcjRYyG7jRWxL6+kfWvO2N5P660H6ka3uKsZ5pflFRUKiaM5uxyUWlV7vJEp9cmtBl07nqFG0BzTbUPs7BS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(6133799003)(4143699003)(11063799006)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YTFKbUlPM09xMTBWa1dueHBKM2pFQ2RCTmFDcHp3SjduNUtIZUlFN0VBSzZL?=
 =?utf-8?B?c3A3eDFRYmNFem14M2Z2dTdjbzJNYi9YdlB6bmxzOEZqdzliemFROHhmQjRX?=
 =?utf-8?B?ZUlmOVcwZU42QW5lQ0NPeUZHa3JqUFN4ZlB1U05TSEhUc3gxRzE0K0FQY1Rq?=
 =?utf-8?B?Z0NiNWV5L0hmakhsUnlVclQwZzBPdkRqNDJSamRIN1lubW9DVmdFckFQS1Z3?=
 =?utf-8?B?dGJTc0NWSlRXWW1Jdk1PZ2NZaW1TV2pNamNVbUR2NkhtL2FKSHRWSHordmFZ?=
 =?utf-8?B?Q0dhVlNJTDVWOXRNU01veWZkMzdLcTlWblpzNFo5akFpZEtoZ2JDY3JNQWdP?=
 =?utf-8?B?VEpQNUtWYmxRcWh1ZXRuWWVUTEM0M2FMbXZXekF2dEFzSmV2a2Q4WExPYWtw?=
 =?utf-8?B?OFgzUnpEODMvV1F2VG1xTVFJbmszN1BSbWMzOVU4UDZNTUxHSW9PcFJhelhF?=
 =?utf-8?B?NEp4Qkl2SFhYbFJudTQwTzdmbUpudWp6aW5yUk1vZkpud0FMdjM4V2cvcnlZ?=
 =?utf-8?B?Y29hZEdUT0Z5VUNydjNwYzU5eW50eUdERHpPekdlZWlHUlNXVjIzbW02ZGsv?=
 =?utf-8?B?cW9jL3VLMEovNW1CSXFaaGJoa2FuMVhEcTZhVEEvL3RMV3Z6WWdLUkhnVERy?=
 =?utf-8?B?c2pmcTVHTkJZbm9GRE5nbis4ZldJRmtDQ0dRamFsVW9WS1B1ZERZZEJmQUN1?=
 =?utf-8?B?Qk9iaEZRTWdMZXltZEVoNU8wQzgwREZudlFwTzBVaXV3aGt1QW16dWVpU0VB?=
 =?utf-8?B?d3k2bVdla3ppeCt3a09BaVRkbmlSU1AvSDhUR1RlOUpnbVNvOENZRVFhMGpO?=
 =?utf-8?B?cFZPTkhPUTF2NjZxS0xWWDZyUDdGQ01WblY2YldaZTdFMTlkNTljRnlaeTlt?=
 =?utf-8?B?QTdiVUJrOVlwOXdxVVpEQjJHaXdkY3Y3M3lrZ0NkSGhYN0d3T0VqTUZEQjZi?=
 =?utf-8?B?NGpaYTY5dzUwZDFwOUtFdUdNZnBySEY4SzJscHV1Y2xxZ3ZSY0JnMXg5M0tz?=
 =?utf-8?B?K09HSnkxZUJKaFBTbTUwQytnVDFlR1YvRlpEL0gvS2NpdlltVGE5aTJGR1lQ?=
 =?utf-8?B?a2JDOS9KeVZrUXp4dXRkNDFsRnZKc1p3VG9tRlpQMFlvSVVzbDNqdVRHaDBs?=
 =?utf-8?B?WWZUald2SFpma2F4dnk2V3V3bSt2dnZZd2hiQ0JRUHFJVFMySW5SWWFvU2ZW?=
 =?utf-8?B?RWxKZmtJWGpOdi9PYkxuWjROcEZCUU14czVGaGtodWpuTDVoNkNoZWlzaVRy?=
 =?utf-8?B?dUZ1cmlYYzYwR25EbFgyNU5FbzZzTkRJTEF3bTF2NjgwWmlVUE4zYUZvbmVI?=
 =?utf-8?B?YjFjWnlDcUhwcXhKZXhIenhNUmVUcnJSNWtjNzB1amRpUXZrSXk0V1dWZmoz?=
 =?utf-8?B?ZStPZUJWaTNrY0w3NFdpcCt0M0swcDlaWk1vSkxTVHU2bE5lNExENXgraGNX?=
 =?utf-8?B?T3NKcnRSaVVmZTZyT21aKzVqamtLMHFSTTRjNkRWWUR2ZC9GcDk4VWlySXZV?=
 =?utf-8?B?R3VPWElDeDFqV3I5RS9vUE8zR1F6c2lSeTQ5dFhVZlIrZlVDazVoNkhycWsz?=
 =?utf-8?B?SG0vUTRmVFgrK3kyR3UwdnhjS0k2d1JBLzFyalpSY2FKYVFjdU0yNUJrWXA5?=
 =?utf-8?B?NmdqdmN1b3R2c3ppb3N5dStReWtFc0djYmsvY2wzUzBJek1vRWtlV3BXVHo0?=
 =?utf-8?B?UG4yTWYwWXZZYmVkSS9UMm1VdWczdGU5Zm9ITHFSYVE0eGpYdzRUV3lMTmJW?=
 =?utf-8?B?NDdBdDlOUGdRd3hZTzZzM3IzM2NZM0FtanpYbC9zVS9qQk00eEd6QUVrYVNS?=
 =?utf-8?B?SHZOWnpXSStPWFZsN0IvdHM2WHM1SlFYTFVrM3ZnVWZvRWNXVzB4WEltQ1JB?=
 =?utf-8?B?WlRsMEw2S1BLNllPaDc5ck5GUmhHaXMxUXNwUFlDTEloaVhralhsM0JKWnd4?=
 =?utf-8?B?Vlhhd3Excjhtbi9ZUzY0ZE9la2dQMHpoVmVHM3Y5Mm02YUxBNnJwZVJVVFAx?=
 =?utf-8?B?L04xaC8vTlFQUjlVQW5IWFRzYWFwc3FGT3BBL2xIL3JUcnJQUUtyNWI3SUk5?=
 =?utf-8?B?bGFLMTYwUGxRcU1Yb0oxZHA3OWVmbG9BdmpVR3hDQkFsUTNJMm9kY203TjFz?=
 =?utf-8?B?Mk03SVEwdXgzNU5WS1p4aTVTRzdia3dtSmlwVmc5cjRIN2VFYm5hWVVCZ3kx?=
 =?utf-8?B?UmNITlBtRk9EWnJpMEVJTEp4QTlUYTltbnp5dXRQUEJrdHlDcThSZG5BaTN5?=
 =?utf-8?B?SGdDemxSdDdvWW16QTVibzdrenVlV3NVWVFvNm1ZVGVFZ1JkY05uV3JmNllr?=
 =?utf-8?B?ci9Sanc1VVQ4bjdKQSs1aTRBWnFyV0o4RUplUkJvZXZMYUI5MnRFdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KRQAgEuzUyrNF6WGLw30gGg8PNllUSNOe3a1Fz9pwvJjmt+qg76e41Yhbk0gOXckvp/CL3LdbRVprmLnesSDcV+ucCd8hvRwvA9hbM66fiM3i3Nwb7Xa0ZScBMJtv03QtfOhWK4P77IMCbnNn7aTRxjoCNg5QJ8/sSP3bpDiz4+noQmvGiFu7ySTn7PHr1ToS09SB6YiDzhxIAlQ8+khBE7NKyFYKS3TJNq9MP46tgyeG6DUTprYMYG+lLqVYu004UyVp74FTKUHXBL8se90snZweVU570W/vwhngBeXlKLV6pEGbxbKOI3/uPYUjbPQZiBBaVOeKKiGHBLuDq5W5Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 749d36d7-c636-4877-22c6-08deba492516
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2026 10:34:05.0337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FPIAQShJeABq1Q285ED083nnlmZzHeeJd0K79GARczqu95MW1RmiDjA+E5K/kOE1ElQaFU0yQpsfhL612UNgVfoNr2XAadiDwLPCBGqWcQY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4798
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5A2615C9461
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IDI1IE1heSAyMDI2IDE1OjU5DQo+
IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFNyaW5pdmFzLCBWaWR5YSA8dmlk
eWEuc3Jpbml2YXNAaW50ZWwuY29tPjsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBIYW5kbGUgb2RkIHBv
c2l0aW9uIGZvciBwbGFuYXINCj4gZm9ybWF0cyBpbiBzZWxlY3RpdmUgZmV0Y2gNCj4gDQo+IE9u
IFR1ZSwgMjAyNi0wNS0xMiBhdCAwODoxNCArMDAwMCwgU3Jpbml2YXMsIFZpZHlhIHdyb3RlOg0K
PiA+IFRoYW5rIHlvdSBzbyBtdWNoIEpvdW5pLiBOb3Qgc3VyZSBpZiBJIGFtIGNvbnNpZGVyZWQg
YXV0aG9yaXplZCB0bw0KPiA+IHByb3ZpZGUgUkIuDQo+ID4gQnV0IGlmIGNhbiBjb3VudCwNCj4g
PiBSZXZpZXdlZC1ieTogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4N
Cj4gDQo+IFRoYW5rIHlvdSBWaWR5YSBmb3IgeW91ciBzdXBwb3J0IGluIGdldHRpbmcgdGhpcyBm
aXhlZC4gTm93IHB1c2hlZCB0byBkcm0tDQo+IGludGVsLW5leHQuDQoNClRoYW5rIHlvdSB2ZXJ5
IG11Y2ggSG91bmkuDQoNClJlZ2FyZHMNClZpZHlhDQo+IA0KPiBCUiwNCj4gSm91bmkgSMO2Z2Fu
ZGVyDQo+IA0KPiA+DQo+ID4gUmVnYXJkcw0KPiA+IFZpZHlhDQo+ID4NCj4gPiA+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCj4gPiA+IFNlbnQ6IDEyIE1heSAyMDI2IDEzOjMwDQo+ID4gPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+ID4gPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+OyBTcmluaXZhcywgVmlkeWENCj4gPiA+IDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+
DQo+ID4gPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IEhhbmRsZSBvZGQgcG9z
aXRpb24gZm9yIHBsYW5hcg0KPiA+ID4gZm9ybWF0cyBpbiBzZWxlY3RpdmUgZmV0Y2gNCj4gPiA+
DQo+ID4gPiBTaW5jZSBMdW5hcmxha2UgdGhlcmUgaXMgbm8gcmVzdHJpY3Rpb24gcGxhbmFyIHBs
YW5lcyBoYXMgdG8gYmUgZXZlbg0KPiA+ID4gcG9zaXRpb25zLg0KPiA+ID4gRHVlIHRvIHRoaXMg
d2UgbWF5IGVuZCB1cCBoYXZpbmcgb2RkIG9mZnNldCBmb3IgVVYtcGxhbmUgaW4NCj4gPiA+IHNl
bGVjdGl2ZSBmZXRjaCBjb25maWd1cmF0aW9uLiBBZGQgaGFuZGxpbmcgZm9yIHRoaXMgY2FzZSBp
bnRvDQo+ID4gPiBzZWxlY3RpdmUgZmV0Y2ggY29uZmlndXJhdGlvbi4NCj4gPiA+DQo+ID4gPiBC
c3BlYzogNjg5MjcNCj4gPiA+IFN1Z2dlc3RlZC1ieTogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNy
aW5pdmFzQGludGVsLmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIHwgMiArLQ0KPiA+ID4gwqAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+DQo+ID4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2Fs
X3BsYW5lLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVy
c2FsX3BsYW5lLmMNCj4gPiA+IGluZGV4IGVmNDMxZGQzMmU3NC4uYWQ0YmZmZjY5MDNkIDEwMDY0
NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2Fs
X3BsYW5lLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jDQo+ID4gPiBAQCAtMTUzMiw3ICsxNTMyLDcgQEAgc3RhdGljIHZvaWQN
Cj4gPiA+IGljbF9wbGFuZV91cGRhdGVfc2VsX2ZldGNoX25vYXJtKHN0cnVjdCBpbnRlbF9kc2Ig
KmRzYiwNCj4gPiA+IMKgCWlmICghY29sb3JfcGxhbmUpDQo+ID4gPiDCoAkJeSA9IHBsYW5lX3N0
YXRlLT52aWV3LmNvbG9yX3BsYW5lW2NvbG9yX3BsYW5lXS55ICsNCj4gPiA+IGNsaXAtPnkxOw0K
PiA+ID4gwqAJZWxzZQ0KPiA+ID4gLQkJeSA9IHBsYW5lX3N0YXRlLT52aWV3LmNvbG9yX3BsYW5l
W2NvbG9yX3BsYW5lXS55ICsNCj4gPiA+IGNsaXAtPnkxIC8NCj4gPiA+IDI7DQo+ID4gPiArCQl5
ID0gcGxhbmVfc3RhdGUtPnZpZXcuY29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLnkgKw0KPiA+ID4g
K0RJVl9ST1VORF9VUChjbGlwLT55MSwgMik7DQo+ID4gPg0KPiA+ID4gwqAJdmFsID0geSA8PCAx
NiB8IHg7DQo+ID4gPg0KPiA+ID4gLS0NCj4gPiA+IDIuNDMuMA0KPiA+DQoNCg==
