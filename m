Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g7fUIgarRGrhygoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 07:52:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E5B6E9F78
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 07:52:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=DTXycibv;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9679010E2FA;
	Wed,  1 Jul 2026 05:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D61CC10E2FA;
 Wed,  1 Jul 2026 05:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782885123; x=1814421123;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JYH8Jwb8dufpizojp1YwDvFQ/SOLeG7xNZMfQSLxnNQ=;
 b=DTXycibv4JvT86WEf+TgyOzl7YYkOQl8MrdzpAgwGl3tXKupbpq+jKK9
 3HAZQHr0qzTRejzaYAbvdaljpguKtC6Jsy7VUWh4UOekVay3YFGCnK9Xi
 msmIj1drPH/Oje/4l9DoVQOa7uTkeoFDxLeX4mZFYp3ahwIUfMkzcBAK5
 sMhNqVvYciRphLjWDs38+DfqMWLaRYCTfigqOe+1AMUaBzrWHfoKckNSt
 FJHkCg0Uj2DdwSvzIYHnSMyL4RC4YMv0PEe9w7Use6SdIHofcP/euD1e1
 oC4iaOeGhcLeIVDttuJCr70ASDfnhGP+y/rmH8Xk4cvFNIh59TGxDSdVI Q==;
X-CSE-ConnectionGUID: //zKnej8Sreau+OAyoFjuA==
X-CSE-MsgGUID: Gyj9bRWSR9ulK3zs0M7t9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="94759624"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="94759624"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 22:52:03 -0700
X-CSE-ConnectionGUID: /4AiDVbARoeFJ+4EZQ3myg==
X-CSE-MsgGUID: 7SgyMBEUT+ODEumASUIqYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="252041627"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 22:52:02 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 22:52:01 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 30 Jun 2026 22:52:01 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.20) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 22:52:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eS5+vZaXCMeFScPg4Zem8n0aU/EIA3oiZvRbe0Gd8azIat2f+I1yJG3ljqwOAb2+PKM7BXPiGIGoV75pmuFj37abMKPTanqFKo6Zm2QzGbz4sSB076GfXUtasTuWj+EipvXJ+cFQodSxxeR3y5uWDF42wNUTxdo61ETFMJXDiAqmZMYxIbRFrrBg+xz+H1wvI0ofgJO0S50xxBDoDy2BQYgKlYX/29xxk6zg3dKOh3G8WUP29V39H8leQTcFxlFit/9EtxpaerrrDRAKQDgjEdGKWYp3MlcIn0qSMKM92iFtSNSsprHlgsSMQHlVOcylacD1FSTGVd7pxRyv3zlU9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JYH8Jwb8dufpizojp1YwDvFQ/SOLeG7xNZMfQSLxnNQ=;
 b=mW/3XNeKKcfmRzRzrrxbLSCXKRZhxkC0m0f5wrEVET+ALvkPM7rxkT1Xd8+7ELnkL68PJ+4cPxuszY8RS8ltTmiZ9v0Ol6YWvZweD7MG/80IfWfHUnKbB5qsgGsXLMqUblUVjijsnFPOgZ3e8zL1985EwkzfwBTtqLeUTNv2D7Eo15fCMCG0EWbdBZ4GbDFEEL6eSl2tu+Rx/uUY2TqmI/Y+zj3FAJ0Hg4exJanu2W9uQ7gin7rZQoK6eKuy/rI77NcxdnBPqT3Mjt8J1GBJMIMK7aUS0TZou6mXf62JuZitsQkb1JrAgl1xpfnARcN3oZnmCOBtfPfdrhtHuAdeBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by DSSPR11MB9618.namprd11.prod.outlook.com
 (2603:10b6:8:375::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Wed, 1 Jul
 2026 05:51:53 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 05:51:47 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v9 1/8] drm/i915/bios: search for VBT #57 by default
Thread-Topic: [PATCH v9 1/8] drm/i915/bios: search for VBT #57 by default
Thread-Index: AQHdBcWOwLJGMa4lIkq+PCGqeyPb8bZYLyaw
Date: Wed, 1 Jul 2026 05:51:47 +0000
Message-ID: <DS4PPFE901A304FBCE5809A2F9779AE065CE3F62@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260626234246.2446451-1-michal.grzelak@intel.com>
 <20260626234246.2446451-2-michal.grzelak@intel.com>
In-Reply-To: <20260626234246.2446451-2-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|DSSPR11MB9618:EE_
x-ms-office365-filtering-correlation-id: bad39fb9-9505-4c45-9b64-08ded734d6a0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|38070700021|11063799006|4143699003|22082099003|18002099003|3023799007|56012099006;
x-microsoft-antispam-message-info: sEygkAAPb6ECzXqoYVzzDsh60dWGFC7YJbeB3C5uzT6oaK3Sgg6AECj69AFaXymiZcDtVVOLltja1VBfszHS9IMR9WknKGrJhTrXVHqstMKeleRq1U9rUUlFFlYRwXTao1JX1MraYpY7NaMFoDrpBq6urUNADz5A+0TX+ideeIiZfWDgvstXUKKllSh/xM5OkmJxiAemSAmivtNzS8f0MQZIVU4ldjuKhoBKgGrph8hasqk0qDO0/0pxCbAOygNbyiAGH7FCvlgrhIbpvMn5WxgSBXf3KPwnU1sV+vBGjL53ADJQicKrbU3ZMxdZ94E03cTSSUXF3AMzMnYrLi1AbxsR5pZcSPkQoCVkVLpdGMKQ+/6JwJlQwHLkEJLI4H3ctlq4vOnWbd91flokdbCLTsMA36hIcx9pIQM/ASEZxmbJxRxjUcg7pjIefvHiActa19wUAmxUxj3ffYDtYwsengJoAZjtAwqoD5UPmJywEh48zmwOSg3HVgsvbh0dBS+5N+JgEvPpG6CtRSducIDKkHdI/gicTT92Ji8GXBp1lzgCnzXsdMHF87Dz3RVvOy5PiAMZTQlk7S1qSkF0R1M3yPyJvi1S4T6teKrX/MUkumivcfY+r6bJioZrkbJ5iU1REXd28ZtIjX/sIzpxYfNC6yq7bbqckSXwtQ3J3zys6jcxx9PxCSuneAkQWj6o4cpXpmCVFZR9W3QrJEUHOFgqUmlJEz27Faj24HAW1Uyx7kE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(38070700021)(11063799006)(4143699003)(22082099003)(18002099003)(3023799007)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OGVmQnFmaGpQa2dyeG5tUUYreTAyMnR4TmVWdFpNVWFLd3Q0ODZtVlFUbDFx?=
 =?utf-8?B?d2U4NzlESFB0WDFmSGoxMkpUK1k3YzdlK3c2V29RSU55bXpuQmNSQTJES2l1?=
 =?utf-8?B?UGdLYnQwVmVWYmt4ZUpuUG5BWHVUcWpaMFFtZ0xhUVp5QXBrbWtJMTZ6RlZy?=
 =?utf-8?B?T2NiVzNnSjhIelNKd3FuS0tXL0c2bjRZOXg2dXl3S1EvbldpTWtJd2M5UUJl?=
 =?utf-8?B?Z0hlb01QRUVpREZ0b3pBNU1ZMlM2VE5YVEE2dWd6MlB2Y0cyQzNmUnYxWVh0?=
 =?utf-8?B?Z1FkMm5wSHhpZDZMci9hZTJrMm9xOGdyV0JiNzdRT1ZVTDZkKzRQM2wvQVpE?=
 =?utf-8?B?eGJCNzZDT2FjcDZXSHVKNHc5UDlkbGduQlI5YnRodFc2SExtZWdCemRncjhI?=
 =?utf-8?B?N1B2YXpjM0lTVnlYV3BwR3JuRFdIQkdRQkViV0ZoYVF5ZWhRMDN0bkcxY2pu?=
 =?utf-8?B?WFpKcTdiNC84cDBFckFML1RCQXZGN1U0L2kzRERsQUsrZnJIaHJiR042WCtH?=
 =?utf-8?B?N0JWMDVqWDNvRTlrZ3dKM0xBRm9uYXJGbEh2STVNYm5yb0lJaUJtbjlPbjIx?=
 =?utf-8?B?TnlSdEhtamFqN204bERLM0F2S3RMNXZrTzFHcXdlTThGZzBPOFpZKzRUc2FC?=
 =?utf-8?B?M1JEM2FkN0JUV1ErMEpQSGtZV295ejlKYmJYYkR5L2FtdWYxMlJ3WXE3R2w4?=
 =?utf-8?B?aDRrY3lDdHNhaEp1OVg1NzQxYjZpREZMMThqdk15dFEzNGdmaG9DZkljdjZl?=
 =?utf-8?B?ZzRHZ3Q4UkJMb25KbVdWcVRUNGtmeE16U0tFcG9pNUdzUFZRMTBhV2ZnZ1Yy?=
 =?utf-8?B?YU5aNmNNOExWLzJBVnYzOEVwVnlqTTBDMktRSkRsUUsvemZIdUk2d3daTGJR?=
 =?utf-8?B?cjlobGtxODJKbG8zcCt5OTFLVTc4Vlh6RzJuc1FvOUg4bTYvK0F4TWxUbkcv?=
 =?utf-8?B?SWJDR0paTmFIMm5FS1Erb1U4aHJ5cVdZSC92UHExTWdUZjZaUDAwNm10WGti?=
 =?utf-8?B?S3NKR0F3eXpDUVg5WFlmT21LSEw0aFdLVUVzQ2NPOEg2VFo1c1I2eVBzM1Iw?=
 =?utf-8?B?VVJVVUhnUnVabnc3eXZSWlY2VGhpQmQveFZFMElrR3FsV29IcFNReDZENU5U?=
 =?utf-8?B?bU80THVLOVNsajB2RUJJc3RnSjJwbTJJM1BNNi9QdVA2Nmt3cHFHNmk2bXNw?=
 =?utf-8?B?MTFoc2VlSE1MUWN4ckVwMFFqUkVZYlV2VG13UGhqcFd0bHArTm5CbDhlZlJO?=
 =?utf-8?B?NEFxOVRuL1I1ZUNwTk9NaXRXRzBlUll4bDJ4Y3B0aEtjenpvQlZvc1VOSFhE?=
 =?utf-8?B?aytpclV5TzN0eEVZa1Zyd0JzVEVvUHlCcStvU1FaOEN4MUJDRFBFR1ZhQVp5?=
 =?utf-8?B?ZHc0KytkYU13NlF3aXpZZVBiMjE0MkNycDd3dmtNWnZONTV6TGlyT05WS0M4?=
 =?utf-8?B?WXIvcmQ2RVZrVlBWL3R6Qk1DRzg0TU80K2hZOEFZcHhtUkRzeGNxVlIzMnUw?=
 =?utf-8?B?a0ZkMnF6YllDUm14eUk2MlRDMFIyMUJucjhSYUowUUUvb0Nzc1NRUFQ2eG5U?=
 =?utf-8?B?NW5kT3hBekd6VlRaNDJqc3hGSzEwbFJ5T0xDb1NFZ0lFVFpNa1krRUpaODFn?=
 =?utf-8?B?UjhwenlBOS9yQTdDZEo2SjdwSWZrMTR3VjVNbVVpOFFQcGtPNlI3a0x0QWx0?=
 =?utf-8?B?ZVh5bzFXbmdHTm95aW9oQzlKWW5FKzh0ejFmMVhuT0RnQncyd0VVWFl1RTBx?=
 =?utf-8?B?OFNIbDFBSXVsY2xPdTBFRlZIeTFXWkhZQlY5REtjcU1aM2JPMHhINnByc0Zi?=
 =?utf-8?B?cmFaTkc4VGZXVXc2eDZ1M3E4Y2psWXo4UlBuMWswZStKZExMT0xuY3d5eHZB?=
 =?utf-8?B?cGdHb09oOFFwOWhNMmJ5dXZxSXAxcndVTEpjdUkyQ2ZzZGZBMkNKTlBWNjhM?=
 =?utf-8?B?MDZLdW1IcWlha01IME5RYW1jSnllQ2VXcUFDcCtwMlQwOFUwalpTUnp5cmNh?=
 =?utf-8?B?ZW5pbUo5R2lITmFZMENmWnArazYxd3hyM0hQM0o2UlV1K2ZUZ0xmU1lKK1hO?=
 =?utf-8?B?UVhybXBSMGtjZXpHRjlJam43T2RVdnZXa0o5Qnp6Z3RGdWpGaGJ4dktPSzhY?=
 =?utf-8?B?RGRVQ0RHZm45YkwzT1E2VzhkOWNRMFkwU256YzlzQWdHTDlVOE9TS3F3cHNS?=
 =?utf-8?B?dXJDdi9OSXVST2VSb2xXSTBqVVQxSEZMKzd2N25Cb25qR0tLL2pOQWpsT0h4?=
 =?utf-8?B?eHJPYjE4cWNUZ2pJQmh5aFg4NURQYkpSQjBDZzZQdDRqUzBQRGdZV2JSZzRm?=
 =?utf-8?B?dEdvMFRaRTZsdFUxY2F0WTl5ZjVhWThQWjd2UTd1RXUxTUs4Z0pndz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GgioJiXCmKTDZnkCYIb9GdDKORrIH5MXa5ugL0R4bx4WlGViv/Ko2C/ckPeuv61iB6rMpvFQNCeHZwlN+6jYKDPc/hggc7p/fTH85M3aq7DAyhCU19xj+eMHL+j6GsKs6LeVEjNYnENuDu0LylKnvaa+RHs0F4bj1uYXPjQSXTkhF6JFER1t4mQAznKfcEeEt2KXs6ISe7ACYfvwh5PMducYk2kzSAKR6TuxF5axrPMUkv6Q4ykrt2YWaLryS0QjfwGJOUPbMuubsOEeyczgk1VjZjT7PGkGCYfdnHQKd6lWcOcKp+yVP/5o3cuct2g6juEAgjpIudFyQEPEABm2Ew==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bad39fb9-9505-4c45-9b64-08ded734d6a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2026 05:51:47.1881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uRl84wKqXZhtFw32wr5VKTsogMOzKykVBfCyQgRsmjU/wq1WEvO2/o2ff2yXCb5AuyJootWcnAkPtwIJPU4vtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSSPR11MB9618
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5E5B6E9F78

PiBTdWJqZWN0OiBbUEFUQ0ggdjkgMS84XSBkcm0vaTkxNS9iaW9zOiBzZWFyY2ggZm9yIFZCVCAj
NTcgYnkgZGVmYXVsdA0KPiANCj4gU3RhcnQgc2VhcmNoaW5nIGZvciBWc3dpbmcgLyBQcmVlbXBo
YXNpcyBPdmVycmlkZSBCbG9jayBkdXJpbmcgVkJUIHBhcnNpbmcgYXQNCj4gaW5pdF9iZGJfYmxv
Y2tzKCkuDQo+IA0KPiBDaGVjayBmb3IgZmFpbHVyZSBzaW5jZSBwcmUtSUNMIEdPUHMgZG8gbm90
IGNvbnRhaW4gdGhlIGJsb2NrLiBDaGVjayBhbHNvIGlmIFZCVA0KPiB2ZXJzaW9uIGlzIGFwcHJv
cHJpYXRlbHkgdXAtdG8tZGF0ZS4NCj4gDQo+IHY2LT52Nw0KPiAtIHBhcnNlIFZCVCM1NyBiZWZv
cmUgYmxvY2tzIGRlcGVuZGVudCBvbiBjaGlsZCBkZXZpY2UgbGlzdCAoSmFuaSkNCj4gLSByZW1v
dmUgZGVidWcgbWVzc2FnZSAoU3VyYWopDQo+IA0KPiB2My0+djQNCj4gLSBhZGQgQnNwZWMgKFN1
cmFqKQ0KPiANCj4gQnNwZWM6IDMyMDYzDQo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgR3J6ZWxh
ayA8bWljaGFsLmdyemVsYWtAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogU3VyYWogS2FuZHBh
bCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+ICMgdjMNCg0KU28geW91IGRvbuKAmXQgbmVlZCB0
byBhZGQgdGhlIHRoZXNlIHZlcnNpb25zIHVubGVzcyB5b3UgaGF2ZSBzaWduaWZpY2FudGx5IGNo
YW5nZWQgdGhlIHBhdGNoIGZyb20gd2hlbiB5b3UgaGFkIGdvdCB0aGUgUkIsDQosbXkgUmIncyBz
dGlsbCBzdGFuZC4NCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgMTggKysrKysrKysrKysrKysr
KysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggMTVlYmFkYzcyYjg4
NC4uNzcyOGUxZmZjOTA0NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMNCj4gQEAgLTIwMCw2ICsyMDAsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHsN
Cj4gIAkgIC5taW5fc2l6ZSA9IHNpemVvZihzdHJ1Y3QgYmRiX21pcGlfc2VxdWVuY2UpIH0sDQo+
ICAJeyAuc2VjdGlvbl9pZCA9IEJEQl9DT01QUkVTU0lPTl9QQVJBTUVURVJTLA0KPiAgCSAgLm1p
bl9zaXplID0gc2l6ZW9mKHN0cnVjdCBiZGJfY29tcHJlc3Npb25fcGFyYW1ldGVycyksIH0sDQo+
ICsJeyAuc2VjdGlvbl9pZCA9IEJEQl9WU1dJTkdfUFJFRU1QSCwNCj4gKwkgIC5taW5fc2l6ZSA9
IHNpemVvZihzdHJ1Y3QgYmRiX3Zzd2luZ19wcmVlbXBoKSwgfSwNCj4gIAl7IC5zZWN0aW9uX2lk
ID0gQkRCX0dFTkVSSUNfRFRELA0KPiAgCSAgLm1pbl9zaXplID0gc2l6ZW9mKHN0cnVjdCBiZGJf
Z2VuZXJpY19kdGQpLCB9LCAgfTsgQEAgLTIxODMsNiArMjE4NSwyMQ0KPiBAQCBwYXJzZV9jb21w
cmVzc2lvbl9wYXJhbWV0ZXJzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiAgCX0N
Cj4gIH0NCj4gDQo+ICtzdGF0aWMgdm9pZA0KPiArcGFyc2VfdnN3aW5nX3ByZWVtcGhfb3ZlcnJp
ZGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpIHsNCj4gKwljb25zdCBzdHJ1Y3QgYmRi
X3Zzd2luZ19wcmVlbXBoICpibG9jazsNCj4gKw0KPiArCWlmIChkaXNwbGF5LT52YnQudmVyc2lv
biA8IDIxOCkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJYmxvY2sgPSBiZGJfZmluZF9zZWN0aW9u
KGRpc3BsYXksIEJEQl9WU1dJTkdfUFJFRU1QSCk7DQo+ICsNCj4gKwkvKiBwcmUtSUNMIEdPUHMg
ZG9uJ3QgaGF2ZSBWQlQgIzU3ICovDQo+ICsJaWYgKCFibG9jaykNCj4gKwkJcmV0dXJuOw0KPiAr
fQ0KPiArDQo+ICBzdGF0aWMgdTggdHJhbnNsYXRlX2lib29zdChzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSwgdTggdmFsKSAgew0KPiAgCXN0YXRpYyBjb25zdCB1OCBtYXBwaW5nW10gPSB7
IDEsIDMsIDcgfTsgLyogU2VlIFZCVCBzcGVjICovIEBAIC0zMjcxLDYNCj4gKzMyODgsNyBAQCB2
b2lkIGludGVsX2Jpb3NfaW5pdChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gIAlw
YXJzZV9nZW5lcmFsX2ZlYXR1cmVzKGRpc3BsYXkpOw0KPiAgCXBhcnNlX2dlbmVyYWxfZGVmaW5p
dGlvbnMoZGlzcGxheSk7DQo+ICAJcGFyc2VfZHJpdmVyX2ZlYXR1cmVzKGRpc3BsYXkpOw0KPiAr
CXBhcnNlX3Zzd2luZ19wcmVlbXBoX292ZXJyaWRlKGRpc3BsYXkpOw0KPiANCj4gIAkvKiBEZXBl
bmRzIG9uIGNoaWxkIGRldmljZSBsaXN0ICovDQo+ICAJcGFyc2VfY29tcHJlc3Npb25fcGFyYW1l
dGVycyhkaXNwbGF5KTsNCj4gLS0NCj4gMi40NS4yDQoNCg==
