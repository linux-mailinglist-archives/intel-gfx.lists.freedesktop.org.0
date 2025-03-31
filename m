Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F89A76017
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Mar 2025 09:31:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 476C410E37D;
	Mon, 31 Mar 2025 07:31:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="inOpXPc4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 895F210E2AD;
 Mon, 31 Mar 2025 07:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743406281; x=1774942281;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CPj3sgNlvZ9DRnRN67IDjn5+l2RfVUMl5WZw4fosaTE=;
 b=inOpXPc4BclaEX6hdpTMk49YJCdP/Ea6Dxg3oh30EW08Nq7nMVR8yn6h
 FviM4tnRx6U0o/PGiXMVURhEF8xHKtMleQ4UxNoRoaYg3QPe1nXWEiEmQ
 vNzzp+uQoZISkG10tFEGEER0+K7SCzQypIUsCZZ2BCGLiNq0yh4OQHET1
 qKN3o10hjEKEcl8nfQjkYA5xhYM+cVgydEJcJ5ftjtOkaxMCw4VyUYq7E
 b68lb/gDQ6lFCwJu7qqEoRcTGXjcUELuhjBGdhclL9cCwHI3XqvUVKrfx
 id2ShOPN4iYTb7Vm4hIJMV2aZtF6mE/tvjUemuZnH72wteRhdgm1IrdfP w==;
X-CSE-ConnectionGUID: Zr5VehmbRlWzroH6rGDZeg==
X-CSE-MsgGUID: DBz+HUYxSaa35OEAhBW9Hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11389"; a="44687621"
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="44687621"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 00:31:20 -0700
X-CSE-ConnectionGUID: qTJ+uD84ScqsgdHMm/CSAg==
X-CSE-MsgGUID: IY1s4DiITDi75Yn+QP9YJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="131109867"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Mar 2025 00:31:19 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 31 Mar 2025 00:31:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 31 Mar 2025 00:31:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 31 Mar 2025 00:31:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hIvy+hLBXufwE3OGgJlKTYNCldpOIgwqrcv+Hl+iLkX3y3vHWQRBLvE9pxgOHwGnA5tyFJwIwDdUBk82OY/J5y0pceVBqe8JdWA1CuxXLgoM7jEOtUOtLk/H5zfVP8ANx01eyXYINTkeBgr05dskG1z+JAVy3aNRCgVFX+Jlh8HQIvi/hoTKA9gL3sm96qb1ughGooNnzO0+wiGJiYK6X0hpcoHKuvQIkUIgcCmO0SeO9ubVd5u3TIPzs8caeMd96t1pzRlN9tDhFOi44+NHfj3HE4a9AvQbBfA3dQJKtfOakZhhotAqkG0ZnZMiz98rLuduIFTH+g2qmgS4qybP1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CPj3sgNlvZ9DRnRN67IDjn5+l2RfVUMl5WZw4fosaTE=;
 b=Z7/mR60VfcYcyIVuKwYHhg4PJ3shgdB3UhkS9hX4x4n8d44JNy6xboLHM79p7eUafDObEHz5oHd7wTPliZ4TTEVJUj+i9da5ypANsxqTgxGTeAucKfbpxzB2owJhuYAUUDwD/czhFgEp0hEhaA8mAx+e/zdHyij1YOet7pb3xThs7h0oYF6ePnVdtaLXB8ee2ZEM6HmEmaAbsEPDAxxvlze59jK2THV/M3piVQ7DUrx8YRf76g3LFyFCaKFhMKVs0acEcGfFwx+Z35A26slk8VGdJbS3dtSJKOuORIxmTZR8ajMPK80FRWjl0TDqZzFgtaaSTVmWYwnVTJtRJYuBOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 DM4PR11MB5232.namprd11.prod.outlook.com (2603:10b6:5:38b::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.52; Mon, 31 Mar 2025 07:31:11 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%4]) with mapi id 15.20.8534.043; Mon, 31 Mar 2025
 07:31:11 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v1] drm/i915/display: implement wa_14022269668
Thread-Topic: [PATCH v1] drm/i915/display: implement wa_14022269668
Thread-Index: AQHboZ5wKyZxT5Ehv0KzQw6esaCvOrOM2kXg
Date: Mon, 31 Mar 2025 07:31:11 +0000
Message-ID: <DM8PR11MB5655C1FE6E66D4918A604CF4E0AD2@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20250330180554.729353-1-vinod.govindapillai@intel.com>
In-Reply-To: <20250330180554.729353-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|DM4PR11MB5232:EE_
x-ms-office365-filtering-correlation-id: 510e205f-5a1b-40fc-3263-08dd702602bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cXhqM01idTh3bVlFR2NpNGtrNldQa2M4UUZxREpPWUkxcVRRSkpEcUZwMmNJ?=
 =?utf-8?B?WTRZcmFQMGVqS3BMZW9hYm9nYUNWb20rYnRnTG5RK0piNWhwSCthWGxyN0xE?=
 =?utf-8?B?bkY1blg4TlY2L211N0dXcDdQb0wzejgzbXhIcmIrQktqajZKdVpQSk1KZmJ1?=
 =?utf-8?B?V0JDbkN6a3o0YW4raUt2enpHNWdPdGZEL0ZHY01GaExtV3JTNlFjOGhTOGdL?=
 =?utf-8?B?NDhxcVFkMDVXRTVHVDFKeEpJQ2pBcTBHdGRiWVdOazJLMVF5cjk1OFIyNXky?=
 =?utf-8?B?VmgzcldrTFVCN095ZVY0UFZwODZVNlptNkVvSzYzUUxWVzVWUUFZalhBdUhV?=
 =?utf-8?B?M2lTd05MZXdUcVBSeCsyMFQrN2x0dW1jSytWQXhvZERWQ2pJcGVNVXhweGFy?=
 =?utf-8?B?YmV3ejEzblVXa21GRVprNUFqSDRYK1EzUXAvbEpLb2N3NVdWc3BXNmNsR0dt?=
 =?utf-8?B?YXJDUFNUbjloRXhHeXBOUjVja210cHRlRkNvdmk1UUg5OTlHSEQ4SUMwdk92?=
 =?utf-8?B?VVhRbC9Ld2c4dWNGK0Ewd2ZkRkN2QXVEUFNLQzVGS3NwamNuWGFxek9KS0NU?=
 =?utf-8?B?NjlEUy9hRXZTTlV4UXU4NmhnSTZGbkIxcnlRUWh4SnJ6RU5oWDZsdUgveHRY?=
 =?utf-8?B?K2FvT3hSbFVBQXRQRjB5WnRsd2pucnVmK3RHODZFbm84T2JhUGw5UUlVRTY2?=
 =?utf-8?B?OU5IM3BkYXJNeUhkVjkyY2VnM20vYkl6ZkZOQVEzbXJmL2dTVElKRk1tYTI3?=
 =?utf-8?B?MGY0d0Y3QlZBKzU1SzBsbXlNNzJEdERaZ0U1UkVpTjYwcDJXajJqenZLeXJT?=
 =?utf-8?B?c0lJWW4vQ01FQndpMlkxUHFONG5Ec243b0QwWmFjTXpTaDhJSDdmNDF0bFov?=
 =?utf-8?B?Tm8rSnlQVlZobS94bHVoUXZTWlY3S05zWFNlSFJzOTRYZE53ODBaQU5BMVhL?=
 =?utf-8?B?K3pYdENFWHZRelBWcy90L2pFYWJtT2REcndtbldrNWFndlp2VHdyblcxa2Ni?=
 =?utf-8?B?TDFIb252Rm9DNlU5SU9iZE9JUVBXMXV4RVNkSGhGcEVaQ0hJNzB5ZDhyVmRC?=
 =?utf-8?B?SWJsMWRSTWtvWTlHaGJ5enNURElGY2RGd244MytGQUs0WkQyNUdrTU81d0h6?=
 =?utf-8?B?eTZ3MW41cmY5M2E3bmlGdHJwaFZ2M0R1eFlENEtCUjEva08xZ1c2ZGFaNEJl?=
 =?utf-8?B?NkhISW5rVis5NHRKUGI2QmVKZzl0aXE4SVR1L2x2RFRiQjA4aHRvWEtBSDVN?=
 =?utf-8?B?Umo3ZkhqNEFoMkxweCtkL0hKOTVSMGo0Rm9WTmZMT1FiYWN1bkFvZ21ISDNX?=
 =?utf-8?B?ZlplNTd1V3RRbzFEL2czc0ZlbElyY2h3QjRoQ0ExVnptSGFMRGw4RTFRTytC?=
 =?utf-8?B?ZnEvMGZiRDFaREZDa2NKdkpwWE9WMlR4R3loLzdjZWVSWWVKL2Fsb2JUUk8x?=
 =?utf-8?B?NDR0eXBnWEk4S0tCM1F2bjJJbytOODZUMTBRV2V2TVBod09BdlJTdjV4emJm?=
 =?utf-8?B?cXIxd2xhaVJLL2dZWTRXMkd0YlhvNjU0Z25YMmFZaWZpTGQ2dWJMNUxTMXYy?=
 =?utf-8?B?aERiQTF6L2tDdUZ1eVV2c21DdHNJYkhjU1pVN3VOTFNkTjVPb0FzSlFwd25q?=
 =?utf-8?B?bmNtNlJ5TkNHS0xmU0RCT0czcjlueUVHdjZJc294OGEwUW55cnlacmdsSUxJ?=
 =?utf-8?B?RGhNTHFkbkNrTXJOTlRzOE1ob0ZtS3YvbE1rSXFtUVJTWmd1a0JKbVZ2SHR2?=
 =?utf-8?B?U0UzNDJ1SGlWRS9TeXI0d3pFLytvVmNqVXRHUitnZi90TzlCSTk5UkdPSXA2?=
 =?utf-8?B?SmFncTgvcjl0L1FRNXc5THNHZ0kreWVhU2dtNTJmaDlKNUg5MTE2MWFCdU1q?=
 =?utf-8?B?VUphUWdjemo0ZHJ4S1ZFcUEzOE5ob1BHOUorbmgwK2FEQ0h0U2xSNWc0bkFT?=
 =?utf-8?Q?YTfr9bTKL8Q6k2MY+KG1kUshI1H1mJ1W?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UENyMlEremR5bkxEVWRqRlJtSzVhQnd3RS9PZVFBVW14MnQwbHlIdTdTdjBN?=
 =?utf-8?B?Mk9KK0dkbUwxNmwyN0NDZ2w0OHVoaHBUSVVCd3N4eEd6NTBWUDJlUjlmWTJm?=
 =?utf-8?B?a29xeHJtY3JHRDlqOWphT1V5aTYxV01GNkhsMEhLTGlyWkFvZ1JOSEZaWHFs?=
 =?utf-8?B?R1FWVUY5VGRITEhLS0hGM2dMdUk5RkkxclUrMDluME9xYVdFSzJndHQ0NE1u?=
 =?utf-8?B?Z1NzVTU3L1Y4QUVIbm1nZ1lVSjVPR0p2SjEvOG5OVzFkc0FiaFUvbGJJUlBn?=
 =?utf-8?B?V3NHS3lLZDVyQUdKeEdJN0xmcVNNWGcyMjBJUGw0NlNEdklZR1R6ZDg2VXdz?=
 =?utf-8?B?c2wvdEFKZ1lFcmp6TXJoUXNBVEVFZlFNUkpzb3UvUjJSREg1L0ZZdEgyMnZx?=
 =?utf-8?B?VnFxSnU4UytYVEdiZEUyRFpYbzNhcVJ2c3IxcElZWFR0ZkN0ZDl3Qm5wZVhL?=
 =?utf-8?B?N0RWYUU3WnVmSHlwSVVZM3R2aFlnZzEwUXRLNTQ4eW1RaThGbmd3TnZRa001?=
 =?utf-8?B?WDdmK3IxSittN3NwNEs5ZXFxTlltRW9FQkVleDJzMGgxa0tZVEhOZExJTU1J?=
 =?utf-8?B?UDNHajlucEkxbUc4bGg0ZzhldkVwRjZFTFJKNTc5RHZHU3NxeHdWNnFJNy9J?=
 =?utf-8?B?NkJvSjUrdjI2ZHNhS2p6ejhCaXpoNFFncmtjVktRUEtRVTI0TzNBUFlTZ1RY?=
 =?utf-8?B?S3I2QXNSTDdiLzVQN0V3N09jNWk5NWJMdENUWkNjRW9Yb0JhcmJFNGJkcEFD?=
 =?utf-8?B?SGRNUXduQTJpMUl0T25FQm5mUXZ5N0RXWUtSNVBGNTg1ZWpZRVY5eTV1bzZ4?=
 =?utf-8?B?MUFEQjJGaUFoTXhUdVk1L3hXOGRhcGxGTWNEVmFqcDhaM2VJSnIrZ3NnOG9y?=
 =?utf-8?B?LzkzRi9XY1NnanlRN2F6bzB3clAxTTMxMnhuSW1VbG8yVXlEd3puZ1FKeHA4?=
 =?utf-8?B?d1NrYVA2L1paQWpBazJjZWo2d0NxZ21KelNyTkozL3dHYlNlcTFyS0s5bzlK?=
 =?utf-8?B?alRwSHF3QlRpbHlJVGRPRmhBVlFHYmh4NFZ4TlFwM3MvV0NaSS9nNm1oS2Rw?=
 =?utf-8?B?VDR5WU9KMGxNaGswZDUyOGt1d21LUXdBSDFMZUhxaHdld3VuVVRJUkNITnFy?=
 =?utf-8?B?Y3J1WmdOanR4Y0ZHcTRmWFYvWEtBSVU2NW1RSkdNS1JoUHkyd3h3L3hVVHFO?=
 =?utf-8?B?bkh6SGU5SUxtNU9iRTZVck5BVkYvQUV4NjdKV0FiRU12Yml5NUZoMlNhVXdI?=
 =?utf-8?B?NjJ0eDlnVURVTmtSWEIvVmJGOHQyMDhwcklJdGxiVytoTW54eCt2OXNRdGRK?=
 =?utf-8?B?Yno2dEo4MzNyZDYwYXB4emdOd0EyWVhoR0c2eDgxczhJUVRMLzBDa1kxMHQ4?=
 =?utf-8?B?UWNFVzZ4VldXenZLck1ncGxpVE1pSCs5RHpqekc2b2RKNDNmMkt6Nmw5dnpX?=
 =?utf-8?B?dnZndGlMakZNS2I1M25GcTk1ZzU4U3AwMFZPTC8zRmtIeGdFR3pkdHZwM2dp?=
 =?utf-8?B?Nk5US0hSVHFFYSs0VDBSUFZrRkdQekVseXI4VmFqeHl3N1N4cW1SRGNreGJH?=
 =?utf-8?B?OGhabFljMzM1ejVaY1JFbnFvU3dUY0RkQ3FQK2FMTmxQbTVYTU5wQUNYZ01j?=
 =?utf-8?B?eElQSkJvU0Ryb0U5bGxzdXJXQUJoL1djQXpydWxDYzJ0WTY1c1RpNW9LdGNt?=
 =?utf-8?B?YzlTNWpCc3NETWVSblppTXJ3OXdaN3FQQnZ5ZWR5SDU2NHFESndveElnSk9u?=
 =?utf-8?B?UzhWY3B5ZXRkaWlDUWNnWDFxQStwbHEwbjFTOFBXTlhMcDBML1RiYWJrZGhq?=
 =?utf-8?B?aFZaa3VXaWdsdmgyM0ZncUd6cWF2bWVJbkNPcm5SZWdIQmdQV3FWMmppdEVL?=
 =?utf-8?B?d21lMUhrOXhRbE5mSlVBOUFuWG9NMkl3TWFlSU4yRlpBRkZGWGIyWDlROHZY?=
 =?utf-8?B?TTU4YlhIL3N5bGUzdkg0TlFiVXY0eWs4Z3JnRXVuTDZUYkFiU2tsNE1TVU43?=
 =?utf-8?B?dVVvSGRBSnVJZUdEY1o0VU0wNit5Ukc3M1VUZTVIMGQvdnE0T01yK3g2dlFh?=
 =?utf-8?B?cTZEdTJ3cTQ1Q0M1NXRZTjA2eUJpeHdueUlXZmpUTzY5VCtxVmgyTTJRc3Bs?=
 =?utf-8?Q?p1D/4kL9QGuGvhzZ5T17Muu4O?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 510e205f-5a1b-40fc-3263-08dd702602bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2025 07:31:11.3233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X2WzZ9wCCCHzarqyUAKfeEpH5LKOzT/Bb2gANZYprV5GEdLnB8DXy6k8+hTgZMaPEnjTJuZGaQxl8N6gkdc70Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5232
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

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEdvdmluZGFwaWxs
YWksIFZpbm9kIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gU2VudDogU3VuZGF5
LCAzMCBNYXJjaCAyMDI1IDIxLjA2DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEdvdmluZGFwaWxsYWks
IFZpbm9kIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT47IFNoYW5rYXIsIFVtYQ0KPiA8
dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgU2FhcmluZW4sIEphbmkgPGphbmkuc2FhcmluZW5AaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjFdIGRybS9pOTE1L2Rpc3BsYXk6IGltcGxlbWVu
dCB3YV8xNDAyMjI2OTY2OA0KPiANClR5cG8gb24gV29ya2Fyb3VuZC4uLg0KDQo+IFdvcmFyb3Vu
ZCByZWNvbW1lbmQgcHJvZ3JhbW1pbmcgdGhlIGZiY19zdHJpZGUgZm9yIGJtZyBhbHdheXMuDQo+
IERpc3BsYXkgZHJpdmVyIGhhbmRsZXMgdGhlIG5lZWQgdG8gcHJvZ3JhbSB0aGUgZmJjIHN0cmlk
ZSB1c2luZyB0aGUgb3ZlcnJpZGUNCj4gc3RyaWRlLiBTbyBlbnN1cmUgdGhhdCB3ZSBhbHdheXMg
Z2V0IHRoZSBvdmVycmlkZSBzdHJpZGUgaW4gY2FzZSBvZiBibWcNCj4gDQo+IEJzcGVjOiA3NDIx
Mg0KPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGls
bGFpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5jIHwgNSArKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jDQo+IGluZGV4IGU4OWNlZTMyM2Q4Yi4uOTcwZjhjOTZjYzg1IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gQEAgLTI1Miw5ICsyNTIsMTIg
QEAgc3RhdGljIHUxNiBpbnRlbF9mYmNfb3ZlcnJpZGVfY2ZiX3N0cmlkZShjb25zdCBzdHJ1Y3QN
Cj4gaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3MNCj4gIAkgKiBHZW45IGh3IG1pc2NhbGN1bGF0
ZXMgY2ZiIHN0cmlkZSBmb3IgbGluZWFyIGFzDQo+ICAJICogUExBTkVfU1RSSURFKjUxMiBpbnN0
ZWFkIG9mIFBMQU5FX1NUUklERSo2NCwgc28NCj4gIAkgKiB3ZSBhbHdheXMgbmVlZCB0byB1c2Ug
dGhlIG92ZXJyaWRlIHRoZXJlLg0KPiArCSAqDQo+ICsJICogd2FfMTQwMjIyNjk2NjggRm9yIGJt
ZywgYWx3YXlzIHByb2dyYW0gdGhlIEZCQ19TVFJJREUgYmVmb3JlDQo+IGZiYw0KPiArZW5hYmxl
DQo+ICAJICovDQo+ICAJaWYgKHN0cmlkZSAhPSBzdHJpZGVfYWxpZ25lZCB8fA0KPiAtCSAgICAo
RElTUExBWV9WRVIoZGlzcGxheSkgPT0gOSAmJiBmYi0+bW9kaWZpZXIgPT0NCj4gRFJNX0ZPUk1B
VF9NT0RfTElORUFSKSkNCj4gKwkgICAgKERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDkgJiYgZmIt
Pm1vZGlmaWVyID09DQo+IERSTV9GT1JNQVRfTU9EX0xJTkVBUikgfHwNCj4gKwkgICAgZGlzcGxh
eS0+cGxhdGZvcm0uYmF0dGxlbWFnZSkNCj4gIAkJcmV0dXJuIHN0cmlkZV9hbGlnbmVkICogNCAv
IDY0Ow0KPiANCj4gIAlyZXR1cm4gMDsNCj4gLS0NCj4gMi40My4wDQoNCg==
