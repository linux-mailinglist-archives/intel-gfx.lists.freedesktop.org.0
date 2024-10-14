Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D3399C63F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 11:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0979510E404;
	Mon, 14 Oct 2024 09:44:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GAq2pw2l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6753A10E404;
 Mon, 14 Oct 2024 09:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728899099; x=1760435099;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=id4r/npRh8jSxK0gpq3CEihdIsnaE3O+rDRsGZi/Sd0=;
 b=GAq2pw2l3trtQDG3gKAOw9TEZZLNQCXpBoMl9lsRIPejgnAWaeBeA0zW
 oDoNJ47GjJoD9E21E8+aBLdrHYvvSFEo5+Ecte59AlrqatBR3cYh3nBwc
 bfmewrACrW0N5mrhyjk2WmGruNdQuWG2jmGemqr3HUCztb89JinewR/R0
 U7SQiWbQrxgxDjatFhMsCbRWFKjBy6KQhuwxo+svsbHGOTnLKdzW/mzxf
 wUG5PDT/B2pCR02dvSRztww72LZgUnVziVcGPivTDlozpfEhsQC4xj4e6
 SNHHeUpZk1QeLjJ3BturipYVXDwz8o1PRWufCASpXQRM6F6yimBPrILH8 g==;
X-CSE-ConnectionGUID: ej4d2rtvTaShOVmEwGLh/g==
X-CSE-MsgGUID: rKPyBJHjQv2Nic5mw2TFqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31935081"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31935081"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 02:44:58 -0700
X-CSE-ConnectionGUID: VxGe/NI7QGi9t+AGa5V1mw==
X-CSE-MsgGUID: yFA5ND7+QIGLdzq4Vn5B2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="77150179"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Oct 2024 02:44:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 02:44:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 14 Oct 2024 02:44:57 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 14 Oct 2024 02:44:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UihsQ3r2zqNSgLSHwAwP0tMW8/QJ4KJWwZd6XKMOim+/AkNqssY344qw1imZDq05wJam1oo8o89fELVYlQjkxYKt1fcaksFEs0rMv1QjledA8Um9QUjGexdlc4CXANnclmVLzaD9meI0VcIusEh6gjE/O2q3r/BDDIc0pgLhJoiVb5LQjRBprFbtZexXs+pAl8dvIjr2nvUUiJ/9GI48gx82an2FOCY1QNa68SiiaiaHZJU3PtYUGE0kT+v2+dvLJgy0B00pyBGKrG+zy/iOvKcRMCnZjF0nIPhyCpvUTAYB3NP10gJQogPbCwkNmo+ZJv6IbR2lxDKZvBSbFhVPdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=id4r/npRh8jSxK0gpq3CEihdIsnaE3O+rDRsGZi/Sd0=;
 b=EBZjGm1FmPL4YM3tOD5HCwET+vIJtcdWWaGkprBJBtcRv+niPt51YwgayQkmc8dZS88z0H0DJrdTg2BegjWL18tbu3m5HR6pHvxNYDbpBLEb8+SXogkFB3HxkpAE9pIZUExU/PtoX8IbFEm+BvyEzwaPYi3SNoBSbKT9QG25BnYZ0EMg/E+9sINfsxu9UbfKDru3qYisnerlAV+sYZjogwMXoeQ6caPGjYCnla8hGnqUQBzr8T8+u1uy8vYyib0WTW/JKWlhWMemkJZu2g1mwW6emYj3NePfh4hr6EF0/nvfmwMuVG8FDhCTqJdrp2efDFdhzaRexouJwnbxnIM/WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by SJ0PR11MB8272.namprd11.prod.outlook.com (2603:10b6:a03:47d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Mon, 14 Oct
 2024 09:44:54 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762%4]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 09:44:54 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Piecielska, Katarzyna" <katarzyna.piecielska@intel.com>
Subject: RE: [PATCH i-g-t] xe: Add test to check pci memory barrier capability
Thread-Topic: [PATCH i-g-t] xe: Add test to check pci memory barrier capability
Thread-Index: AQHbGjECOJWxtmbwRkyv3pP0YvixrrJ+rW6AgAdX0hA=
Date: Mon, 14 Oct 2024 09:44:54 +0000
Message-ID: <SJ1PR11MB6204FCF8FED3386E5A68EB6981442@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20241009095608.663743-1-tejas.upadhyay@intel.com>
 <20241009173017.z4n4zgqexal5vr3j@kamilkon-desk.igk.intel.com>
In-Reply-To: <20241009173017.z4n4zgqexal5vr3j@kamilkon-desk.igk.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|SJ0PR11MB8272:EE_
x-ms-office365-filtering-correlation-id: 99d0e1c8-e5d6-4971-d342-08dcec34db80
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?blZpeHM2eGFKRWtYTi90ZkhVV1hXSGNUUU1NZmFUaW9lWkNNaXJ4a2xoQXRs?=
 =?utf-8?B?Ly9KdHFFZ3lxYWpmU2pVMk0rc3VJa3I5bGgvWHlXZXhXZ2lwdU9FTERFOGJ1?=
 =?utf-8?B?UnJrdVN3TktmSDV4R21KNUxrLzJabXo0NHkvcnlZSEVocTlmbm14dXBZbXBV?=
 =?utf-8?B?ejhqMEh6dURoTkU4WXZ6THNjTmFLRmwvb2twdkJueXFZY3ZtT2JxVFVzWDF3?=
 =?utf-8?B?M1kyYkUxY3pKOUVLd3VkSXpFYU5xbEFUTHpyRUp3TDFFbEl3SFVieUlua1E1?=
 =?utf-8?B?WlhRbVcrZTZIa1AzUHdnWmduS0h5VWFSek1WUVNxZjM1RU9ZTzBZQlEreWpy?=
 =?utf-8?B?Q3h2TnZRNnFyblhvQlBQdFZtUU5DdE5FUm9mcklIaXhqSVBzdGlHaUp5QTQz?=
 =?utf-8?B?ODhMOEJwMUhBY3JOQUFRNzJ3LzBvWlhna1hIL3RVTWVHWElJWU93cTJHRk8z?=
 =?utf-8?B?Rjc2Tk82VGFyNFJrTzR3MktUTlR6MkFnVFErUDlvSVQ4QzUvTDBSTWJHNmlO?=
 =?utf-8?B?NnZrdy9qLzBONDFlVHJzdWJUQldGRjlJSmFETktUSVJoVzlLdmF4TWExd3lx?=
 =?utf-8?B?Z3VYSU5mTExQcXY5eWl5bGJFM0ZyMm42UWhVWURobnZxdFIzeFVEQ0VUN3hY?=
 =?utf-8?B?RDhQRnNJZmdWd3VHQnN2WU5YY0x4K29pcXpDM1NBUU03a2FVYXBLeXJIa3hS?=
 =?utf-8?B?WU9jK2syTUlkRTBURjUyMmRvb01aSlF3MDdPL3o5elNIQ3Z1ckZXNE1Gc2ZC?=
 =?utf-8?B?RFZOUlZxYzB2b01yc3JEYURpM0Y2YlhYNE5VSHpGVXg1TFNTS3RiU2J3NVBz?=
 =?utf-8?B?NVg5MUMrYm5neHRmV3NhRFo0UFAwOGFtVXQrZGZDNE5qQU4xcW1RZlJSeXBL?=
 =?utf-8?B?eDhybUZNTGcrSEFjaEpxQ2Z0aHhQQUg0YTZlNzNTS2dsOTFCclBYc2VsSkdy?=
 =?utf-8?B?eWg3alpXaVJiWDZXcjFkZ2JGTnVyUlJxd0dYblBhZTNvQjBaR0xWZE9Ndy8r?=
 =?utf-8?B?Y0R2bWFoZ010c05JT0wrVmExMzhMUG5RUUFhZHJaMGdSNGVSRnFyNnFlM2dk?=
 =?utf-8?B?cC9adHQxcjJEc3ppRkRrY0txemI1RUg4ZDhodjdkMlJZemRmL2JQbzdjNUVj?=
 =?utf-8?B?OUJyQnVpK2gwWmpKNTU0MXZwYk94NDJ0K0poNkc5VlJNU1poMGtGaUM4bStO?=
 =?utf-8?B?UzFRVUozSitkdjBaQkM4UGdweE0rbkV4aDNFZTNYT0tLUW9iN2JzZmJSZnBk?=
 =?utf-8?B?bGY0Tm5jcWs0RUYvNis3cGl5cXo4R0tsMnVvWlBHb0IyRzAzZUZUZVJHb3d2?=
 =?utf-8?B?WmlGaFd3SnVveEY0Q3dyZFRSYlBpL004OE54a1Baemt3MGYxUWtKWEIrTDdC?=
 =?utf-8?B?WXhnQjNnRGdiUEhSdTRZYnZIYXM1RmsyYUZHb1ZxY3VPTnl2dzlTNWU0eG8v?=
 =?utf-8?B?UUpMRzcrRFY4SEx0QW9jdjh6MnZrQ0dpZ0NyNkw2b0JZMmYwcm9vNlkvejlt?=
 =?utf-8?B?ZkNRTEVscFZxeEdEdlJUWUF2Q3NRM1cxZzF5NjMwZDk5em1IUTdTOGtWRkVN?=
 =?utf-8?B?OXlDZjZodUdObWpHUVY2dURZYTd4T3UyR2Z4QUFDS05VZTU4QXBNeVQ2dWhP?=
 =?utf-8?B?RTNCbENBRCtMMW9mVXVrMDYvVC8xSTJreVdCcUhFbmtSYkxyV3A4VWxoQXla?=
 =?utf-8?B?OTlYMk9Wcnlwd1V5b3BUYjFNdWlrWUdTdlNLbkp2Y01MS0xJajVxVUFZcW9T?=
 =?utf-8?B?VDhWcW9aRzVvMTBLOXJGVkdaQk9UeFhsNm9ldzE3K0VlQzRqeXZVa0orRkYw?=
 =?utf-8?B?UWVRMDBXVktMUFZSTTEvUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGlGMDZTbG0rVDgrZzhmUGtPZDloVFlHWUtyYmJFcEJnTlRwb2ZLMEJ5VStD?=
 =?utf-8?B?eFM2UjZndmpvQkNIUlg2SlhLVng4SmFzY1I2SEtoYWRLeVFPQ0ZFSmsyNmd2?=
 =?utf-8?B?dFVIakNkaFZ0b3JWdFNtQTRCVnVOa1RuY0p5Vy9JK1h6bkgwdWJwQXVyS3N0?=
 =?utf-8?B?bk93NEQ5V1drQWV1N1c2Q1JubWZnS1BTSVF0ZHFhSzRCMFF4ZUVNK0NLMEJT?=
 =?utf-8?B?RlNuK3hBSWgxVUpxVFBjU1prUGZOc3ZJOGNlNE5uRXUwZG9UcWdpSTVDQVNV?=
 =?utf-8?B?M0w2NTZ6ZTFDRnE2aXgrdE1GZC9xU3p6cld0SmZDZHdVMTJGSnZqZTh3bkRq?=
 =?utf-8?B?aW96cmt5Q29OcnlGZk9ZYjUrSDF0blJrZk1jRUl3eWtGWjIwc3FyTjZ1R3hT?=
 =?utf-8?B?TWJxTUovWU1wUFN0a2g1alE0OHJCdURTYWF3VmpSeGt4eXJzb1BYN0xXR1lU?=
 =?utf-8?B?dU04QmkwVURtVnV3SHZRR1gxTGJpVGtWRDBoOVUxVHI4d0Mvd1Z5N0hjNGti?=
 =?utf-8?B?ZzBQZitSUWNmQmErQmJVejlNQ2UzV2ZOc3creHNWT0hRbDRENkhmV1k5MW9x?=
 =?utf-8?B?dHNqQmN0RWIxR2N1aDVJbHRCZDQ0MWVSM1FwNHU0b2RFeGVnMGJ2R2tUcXZr?=
 =?utf-8?B?VnZacTF4NWtZR2lmVlRTWDBHYkRRU0x5UzErREhWQXhNTDJoUGpiR2gzSHVp?=
 =?utf-8?B?bFdSRWdiTml0MFB2enJweTRxOWU3TlN3RlFBc1lUekZONEJDRUUrUFRZRXJP?=
 =?utf-8?B?WDIvOFE2VjRnUS9VU3lVbTB1a2ZTTUxxbzgyUnB4VkQvNG10aWtMU3JJaHFn?=
 =?utf-8?B?S0l3aTJONEFWSHEwNHRIOVdCQzBtN2xKWjJpVGRqR2NJbkxhblU2a3huWXZ1?=
 =?utf-8?B?RWhKT0pqV2VTUXdvSXN0K0pTV2o0bW91M3ppZUM1MnJIRzhidThIQy8rU0c0?=
 =?utf-8?B?UlJPVGVuN0RUQ20rN3BPdVd4SURoeGVEVERlUTI2ckpLN21iZzc5b1c1azJk?=
 =?utf-8?B?ZWtrbHlGQWdmaGNoOHZka2pBZmZ5L0xOeU5MSlFMUFlxN1JscVpBWW1LMXJh?=
 =?utf-8?B?NGdWbTRBdjB1RWplZUN6U2RNRzdjamYxK0k0eUpwT0FzeXVyYVJVU0NpL2hp?=
 =?utf-8?B?MnZ0NHBWWFNDVDVyQmNnd3o1bDA5UW4zNDhsYS81UE1NMzIyMWR6RE82cG9R?=
 =?utf-8?B?b2RYSHBHais5TnlGVXpETUxTOTE5MU1ZUWsvcVVIRUNFRG4vVEZaYmRXbXNh?=
 =?utf-8?B?V09DMWhyYjMzVExjeVRGK0ttZkxqNTQ0N3J5SWF2T0srTmFkL0tIc2k3WUow?=
 =?utf-8?B?RWlqK0U1T2MreUlCQ3VXTWFHYUFpMXZ3SkJHSlV3UGowMDhwQm5qVHdYdVN4?=
 =?utf-8?B?dGVQVktPYjZ0Q3JKTEhOVXNpN2FBWFpxMGllbXljQlBZNXFNenRqaUMyenVt?=
 =?utf-8?B?RVVuWDg1dm5sUzJUY0NpY3h5YWJHdk9HbTU0dVBwYWZTWHVOVUxZeHZmVDBU?=
 =?utf-8?B?L2ZmRWJzZ1IwcFNDVkRicUp0VzRWL1pEcGdZc3NZRmdsbzU4aDNFQU5QVzg1?=
 =?utf-8?B?NFQxQ0xXUWRWZXVQZXY2M0NYZllQYjJxbjdZZXBpK2JITTNUdWIySXdzREo4?=
 =?utf-8?B?YkIvRldKYnA4YjJDWEVIeFFhRnNoZ29IbTQ5ZVE5RUJYQ3lMRlNhVjlBbG5q?=
 =?utf-8?B?MFRlVWJlcGltMkg0WHprNzlQNG9wdkZ0YmZlaDRGeXYvdVo5ZWxHbTlZYnNF?=
 =?utf-8?B?NlozNDJXQjZlakUydTlCdCtoaHpjUWQvcEdnYVRjTHF5VWpoSjZaVmtCZVM3?=
 =?utf-8?B?cVNuNWk1RkwreC9GdTVPc0l6WFBHeVhvTkJtSjFzUXN6S3A2dUdjeWowU1F5?=
 =?utf-8?B?eUtuL3V2WU9YSFNvdmNYWlN0MHMxRkpBZ0Z6YXd0T3BQbW5oTlNDUWludEc3?=
 =?utf-8?B?NVlYRm15UzkzdWFWZ1habUlIR1RUWDZ0L2ZIRi8zRVNBS0hLRlpVa21lSHd1?=
 =?utf-8?B?YmxIeGVxdWFxQ1VJSEdZZS95K0t0bHJhVkFXNUpoZmdiSCsrR1M4U3BHbEox?=
 =?utf-8?B?b0wyVVp3UzcvY3lCYm16WUdCOGprZzNCM3VwMWRabTI0djBqLzQyNFFMaEFX?=
 =?utf-8?Q?XG1Z9vyYgtIhnoR6gMNpZvWDv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99d0e1c8-e5d6-4971-d342-08dcec34db80
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2024 09:44:54.4371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VEtK3U/e86mJIdRF0qQgviF2hBXAKU1/Qa7z0ofpbnqlZbvKchRq8stGKOov+DL7b754XcQ5sDvXtHxyYT/t7izn+olDjFthdXvke/l6hG4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8272
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2FtaWwgS29uaWVjem55
IDxrYW1pbC5rb25pZWN6bnlAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE9j
dG9iZXIgOSwgMjAyNCAxMTowMCBQTQ0KPiBUbzogaWd0LWRldkBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gQ2M6IFVwYWRoeWF5LCBUZWphcyA8dGVqYXMudXBhZGh5YXlAaW50ZWwuY29tPjsgaW50
ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFBpZWNpZWxza2EsIEthdGFyenluYQ0K
PiA8a2F0YXJ6eW5hLnBpZWNpZWxza2FAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENI
IGktZy10XSB4ZTogQWRkIHRlc3QgdG8gY2hlY2sgcGNpIG1lbW9yeSBiYXJyaWVyIGNhcGFiaWxp
dHkNCj4gDQo+IEhpIFRlamFzLA0KPiBPbiAyMDI0LTEwLTA5IGF0IDE1OjI2OjA4ICswNTMwLCBU
ZWphcyBVcGFkaHlheSB3cm90ZToNCj4gDQo+IG9uZSBtb3JlIG5pdCwgaW1obyBhIHBhdGNoIHdp
dGggbmV3IHRlc3Qgc2hvdWxkIGhhdmUgaW4gc3ViamVjdA0KPiANCj4gdGVzdHMvaW50ZWw6IEFk
ZCB4ZV9wY2lfbWVtYmFycmllciB0ZXN0DQoNCk9rLiANCg0KPiANCj4gQWxzbyBzZWUgbml0IGFi
b3V0IGEgdGVzdCBuYW1lLg0KPiANCj4gPiBXZSB3YW50IHRvIG1ha2Ugc3VyZSB0aGF0IGRpcmVj
dCBtbWFwIG1hcHBpbmcgb2YgcGh5c2ljYWwgcGFnZSBhdA0KPiA+IGRvb3JiZWxsIHNwYWNlIGFu
ZCB3aG9sZSBwYWdlIGlzIGFjY2Vzc2libGUgaW4gb3JkZXIgdG8gdXNlIHBjaSBtZW1vcnkNCj4g
PiBiYXJyaWVyIGVmZmVjdCBlZmZlY3RpdmVseS4NCj4gPg0KPiA+IFRoaXMgaXMgYmFzaWMgcGNp
IG1lbW9yeSBiYXJyaWVyIHRlc3QgdG8gc2hvd2Nhc2UgeGUgZHJpdmVyIHN1cHBvcnQNCj4gPiBm
b3IgZmVhdHVyZS4gSW4gZm9sbG93IHVwIHBhdGNoZXMgd2Ugd2lsbCBoYXZlIG1vcmUgb2YgY29y
bmVyIGFuZA0KPiA+IG5lZ2F0aXZlIHRlc3RzIGFkZGVkIGxhdGVyLg0KPiA+DQo+ID4gU2lnbmVk
LW9mZi1ieTogVGVqYXMgVXBhZGh5YXkgPHRlamFzLnVwYWRoeWF5QGludGVsLmNvbT4NCj4gPiAt
LS0NCj4gPiAgaW5jbHVkZS9kcm0tdWFwaS94ZV9kcm0uaCAgICAgICB8ICAzICsrDQo+ID4gIHRl
c3RzL2ludGVsL3hlX3BjaV9tZW1iYXJyaWVyLmMgfCA3Nw0KPiArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysNCj4gPiAgdGVzdHMvbWVzb24uYnVpbGQgICAgICAgICAgICAgICB8ICAx
ICsNCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA4MSBpbnNlcnRpb25zKCspDQo+ID4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCB0ZXN0cy9pbnRlbC94ZV9wY2lfbWVtYmFycmllci5jDQo+ID4NCj4gPiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9kcm0tdWFwaS94ZV9kcm0uaCBiL2luY2x1ZGUvZHJtLXVhcGkveGVf
ZHJtLmgNCj4gPiBpbmRleCBmMGE0NTBkYjkuLjg2NmRjODA2MCAxMDA2NDQNCj4gPiAtLS0gYS9p
bmNsdWRlL2RybS11YXBpL3hlX2RybS5oDQo+ID4gKysrIGIvaW5jbHVkZS9kcm0tdWFwaS94ZV9k
cm0uaA0KPiA+IEBAIC04MjMsNiArODIzLDkgQEAgc3RydWN0IGRybV94ZV9nZW1fbW1hcF9vZmZz
ZXQgew0KPiA+ICAJLyoqIEBvZmZzZXQ6IFRoZSBmYWtlIG9mZnNldCB0byB1c2UgZm9yIHN1YnNl
cXVlbnQgbW1hcCBjYWxsICovDQo+ID4gIAlfX3U2NCBvZmZzZXQ7DQo+ID4NCj4gPiArCS8qIFNw
ZWNpZmljIE1NQVAgb2Zmc2V0IGZvciBQQ0kgbWVtb3J5IGJhcnJpZXIgKi8gI2RlZmluZQ0KPiA+
ICtEUk1fWEVfUENJX0JBUlJJRVJfTU1BUF9PRkZTRVQgKDB4NTAgPDwgUEFHRV9TSElGVCkNCj4g
PiArDQo+ID4gIAkvKiogQHJlc2VydmVkOiBSZXNlcnZlZCAqLw0KPiA+ICAJX191NjQgcmVzZXJ2
ZWRbMl07DQo+ID4gIH07DQo+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL2ludGVsL3hlX3BjaV9tZW1i
YXJyaWVyLmMNCj4gPiBiL3Rlc3RzL2ludGVsL3hlX3BjaV9tZW1iYXJyaWVyLmMgbmV3IGZpbGUg
bW9kZSAxMDA2NDQgaW5kZXgNCj4gPiAwMDAwMDAwMDAuLmEyOGEwMWQ0Yg0KPiA+IC0tLSAvZGV2
L251bGwNCj4gPiArKysgYi90ZXN0cy9pbnRlbC94ZV9wY2lfbWVtYmFycmllci5jDQo+ID4gQEAg
LTAsMCArMSw3NyBAQA0KPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUDQo+ID4g
Ky8qDQo+ID4gKyAqIENvcHlyaWdodChjKSAyMDI0IEludGVsIENvcnBvcmF0aW9uLiBBbGwgcmln
aHRzIHJlc2VydmVkLg0KPiA+ICsgKi8NCj4gPiArDQo+ID4gKyNpbmNsdWRlICJ4ZV9kcm0uaCIN
Cj4gPiArI2luY2x1ZGUgImlndC5oIg0KPiA+ICsNCj4gPiArLyoqDQo+ID4gKyAqIFRFU1Q6IFRl
c3QgaWYgdGhlIGRyaXZlciBpcyBjYXBhYmxlIG9mIHB1dHRpbmcgcGNpIG1lbW9yeSBiYXJyaWVy
DQo+ID4gK3VzaW5nIG1tYXANCj4gPiArICogQ2F0ZWdvcnk6IENvcmUNCj4gPiArICogTWVnYSBm
ZWF0dXJlOiBHZW5lcmFsIENvcmUgZmVhdHVyZXMNCj4gPiArICogU3ViLWNhdGVnb3J5OiBNZW1v
cnkgbWFuYWdlbWVudCB0ZXN0cw0KPiA+ICsgKiBGdW5jdGlvbmFsaXR5OiBtbWFwIHdpdGggcHJl
LWRlZmluZWQgb2Zmc2V0DQo+IC0tLS0tLV5eXl5eXl5eXl5eXl4NCj4gTm90IHN1cmUgYWJvdXQg
dGhpcywgK2NjIEthdGFyenluYQ0KPiBDYzogS2F0YXJ6eW5hIFBpZWNpZWxza2EgPGthdGFyenlu
YS5waWVjaWVsc2thQGludGVsLmNvbT4NCj4gDQo+ID4gKyAqLw0KPiA+ICsNCj4gPiArSUdUX1RF
U1RfREVTQ1JJUFRJT04oIkJhc2ljIE1NQVAgdGVzdHMgcGNpIG1lbW9yeSBiYXJyaWVyIGVmZmVj
dCB3aXRoDQo+ID4gK3NwZWNpYWwgb2Zmc2V0Iik7ICNkZWZpbmUgUEFHRV9TSElGVCAxMiAjZGVm
aW5lIFBBR0VfU0laRSA0MDk2DQo+ID4gKw0KPiA+ICsvKioNCj4gPiArICogU1VCVEVTVDogcGNp
LW1lbWJhcnJpZXItYmFzaWMNCj4gDQo+IFdoeSBub3QganVzdCBiYXNpYz8NCg0KRmluZSB0byBt
ZSB0byBjaGFuZ2UgdG8gYmFzaWMuDQoNCj4gDQo+ID4gKyAqIERlc2NyaXB0aW9uOiBjcmVhdGUg
cGNpIG1lbW9yeSBiYXJyaWVyIHdpdGggd3JpdGUgb24gZGVmaW5lZCBtbWFwDQo+IG9mZnNldC4N
Cj4gPiArICogVGVzdCBjYXRlZ29yeTogZnVuY3Rpb25hbGl0eSB0ZXN0DQo+ID4gKyAqDQo+ID4g
KyAqLw0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgcGNpX21lbWJhcnJpZXIoaW50IHhlKQ0KPiA+
ICt7DQo+ID4gKwl1aW50NjRfdCBmbGFncyA9IE1BUF9TSEFSRUQ7DQo+ID4gKwl1aW50NjRfdCBv
ZmZzZXQgPSBEUk1fWEVfUENJX0JBUlJJRVJfTU1BUF9PRkZTRVQ7DQo+ID4gKwl1bnNpZ25lZCBp
bnQgcHJvdCA9IFBST1RfV1JJVEU7DQo+ID4gKwl1aW50MzJfdCAqcHRyOw0KPiA+ICsJdWludDY0
X3Qgc2l6ZSA9IFBBR0VfU0laRTsNCj4gPiArCXN0cnVjdCB0aW1lc3BlYyB0djsNCj4gPiArDQo+
ID4gKwlwdHIgPSBtbWFwKE5VTEwsIHNpemUsIHByb3QsIGZsYWdzLCB4ZSwgb2Zmc2V0KTsNCj4g
PiArCWlndF9hc3NlcnQocHRyICE9IE1BUF9GQUlMRUQpOw0KPiA+ICsNCj4gPiArCS8qIENoZWNr
IHdob2xlIHBhZ2UgZm9yIGFueSBlcnJvcnMsIGFsc28gY2hlY2sgYXMNCj4gPiArCSAqIHdlIHNo
b3VsZCBub3QgcmVhZCB3cml0dGVuIHZhbHVlcyBiYWNrDQo+ID4gKwkgKi8NCj4gPiArCWZvciAo
aW50IGkgPSAwOyBpIDwgc2l6ZSAvIHNpemVvZigqcHRyKTsgaSsrKSB7DQo+ID4gKwkJLyogSXQg
aXMgZXhwZWN0ZWQgdW5jb25maWd1cmVkIGRvb3JiZWxsIHNwYWNlDQo+ID4gKwkJICogd2lsbCBy
ZXR1cm4gcmVhZCB2YWx1ZSAweGRlYWRiZWVmDQo+ID4gKwkJICovDQo+ID4gKwkJaWd0X2Fzc2Vy
dF9lcV91MzIoUkVBRF9PTkNFKHB0cltpXSksIDB4ZGVhZGJlZWYpOw0KPiA+ICsNCj4gPiArCQlp
Z3RfZ2V0dGltZSgmdHYpOw0KPiA+ICsJCXB0cltpXSA9IGk7DQo+ID4gKwkJaWYgKFJFQURfT05D
RShwdHJbaV0pID09IGkpIHsNCj4gPiArCQkJd2hpbGUgKFJFQURfT05DRShwdHJbaV0pID09IGkp
DQo+ID4gKwkJCQk7DQo+IA0KPiBXaGF0IGlmIHRoaXMgd2hpbGUgbmV2ZXIgYnJlYWs/DQo+IGlt
aG8gdXNlIGlndF91bnRpbF90aW1lb3V0IGFyb3VuZCAnZm9yJyBsb29wLg0KDQpUaGlzIGlzIHdy
aXRlIG9uIG1taW8gdmlhIG1hcHBlZCBzcGFjZS4gSXQgaXMgZXhwZWN0ZWQgdGhhdCB2YWx1ZSB3
aWxsIGJlIGhvbGQgZm9yIHdoaWxlIGJlZm9yZSBpdCBnZXRzIGludmFsaWRhdGVkIG9yIGZsdXNo
ZWQuIFRoZXJlIHdpbGwgbm90IGJlIGV2ZXIgY2FzZSB0aGF0IHZhbHVlIHdpbGwgYmUgaG9sZCBm
b3JldmVyLiBTbyB0aGlzIGxvb2tzIG9rIHdpdGhvdXQgdGltZW91dC4NCg0KPiANCj4gPiArCQkJ
aWd0X2luZm8oImZkOiVkIHZhbHVlIHJldGFpbmVkIGZvciAlIlBSSWQ2NCJucw0KPiBwb3M6JWRc
biIsDQo+ID4gKwkJCQkgeGUsIGlndF9uc2VjX2VsYXBzZWQoJnR2KSwgaSk7DQo+IA0KPiBpZ3Rf
ZGVidWcgaXMgcHJlZmVycmVkIHVubGVzcyB0aGlzIHByaW50IHNob3VsZCBuZXZlciBoYXBwZW4s
IGJ1dCBldmVuIHRoZW4NCj4gcGxlYXNlIGxpbWl0IG51bWJlciBvZiBwcmludHMuDQoNCkFzIG1l
bnRpb25lZCByYXJlbHkgd2Ugd2lsbCBzZWUgdmFsdWUgZ2V0dGluZyBob2xkIGZvciB3aGlsZSwg
d2hlcmUgdGhpcyBwcmludCBtaWdodCBjb21lLiBTbyBmYXIgbmV2ZXIgc2VlbiB0aGlzIGRlYnVn
Lg0KDQo+IA0KPiA+ICsJCX0NCj4gPiArCQlpZ3RfYXNzZXJ0X25lcShSRUFEX09OQ0UocHRyW2ld
KSwgaSk7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJbXVubWFwKHB0ciwgc2l6ZSk7DQo+ID4gK30N
Cj4gPiArDQo+ID4gK2lndF9tYWluDQo+ID4gK3sNCj4gPiArCWludCB4ZTsNCj4gPiArDQo+ID4g
KwlpZ3RfZml4dHVyZSB7DQo+ID4gKwkJeGUgPSBkcm1fb3Blbl9kcml2ZXIoRFJJVkVSX1hFKTsN
Cj4gPiArCX0NCj4gPiArDQo+ID4gKwlpZ3Rfc3VidGVzdF9mKCJwY2ktbWVtYmFycmllci1iYXNp
YyIpDQo+ID4gKwkJcGNpX21lbWJhcnJpZXIoeGUpOw0KPiA+ICsNCj4gPiArCWlndF9maXh0dXJl
IHsNCj4gPiArCQljbG9zZSh4ZSk7DQo+IA0KPiBkcm1fY2xvc2VfZHJpdmVyKCkNCg0KWWVzIHRo
YW5rcyBmb3IgY2F0Y2hpbmcgdGhpcywgSSB3aWxsIGNvcnJlY3QgaXQuDQoNClRlamFzDQo+IA0K
PiBSZWdhcmRzLA0KPiBLYW1pbA0KPiANCj4gDQo+ID4gKwl9DQo+ID4gK30NCj4gPiBkaWZmIC0t
Z2l0IGEvdGVzdHMvbWVzb24uYnVpbGQgYi90ZXN0cy9tZXNvbi5idWlsZCBpbmRleA0KPiA+IGU1
ZDg4NTJmMy4uMzEwZWYwZTBkIDEwMDY0NA0KPiA+IC0tLSBhL3Rlc3RzL21lc29uLmJ1aWxkDQo+
ID4gKysrIGIvdGVzdHMvbWVzb24uYnVpbGQNCj4gPiBAQCAtMzA0LDYgKzMwNCw3IEBAIGludGVs
X3hlX3Byb2dzID0gWw0KPiA+ICAJJ3hlX25vZXhlY19waW5nX3BvbmcnLA0KPiA+ICAJJ3hlX29h
JywNCj4gPiAgCSd4ZV9wYXQnLA0KPiA+ICsgICAgICAgICd4ZV9wY2lfbWVtYmFycmllcicsDQo+
ID4gIAkneGVfcGVlcjJwZWVyJywNCj4gPiAgCSd4ZV9wbScsDQo+ID4gIAkneGVfcG1fcmVzaWRl
bmN5JywNCj4gPiAtLQ0KPiA+IDIuMzQuMQ0KPiA+DQo=
