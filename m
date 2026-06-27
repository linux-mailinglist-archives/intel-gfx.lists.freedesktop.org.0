Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XsnnH9VKP2ruRAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 06:00:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D05A26D110B
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 06:00:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VKZIpaOh;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6162210E447;
	Sat, 27 Jun 2026 04:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A086710E445;
 Sat, 27 Jun 2026 04:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782532818; x=1814068818;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bSWd08x4Zh8QFap9d1zFOdz9lA4uJHSk9anXrHJN9B0=;
 b=VKZIpaOhFifccyQIk+dEhaDvq+f9VrSIKUxLaN87UxYch/5/P/OxeoEK
 3SYoiTd4fge29uLjAvij4lD8TmnSWg4ilB7VB0h0A0c5Jn9mqa0hx+9T1
 CZqj5mSbWQBHqTvd66So17Dwe5XYuGR5Mbwj2jwel8hvQKKQku+E6P78N
 JYKgnd7tHtbGXqHgX9MCF7RhvrFuJAzXfsR1KaFCRhVLHtbkp5+H/TJxT
 0BIre0Bba3ZpBNEYo+hmV7qNNgVTXrIDCr8j3jT50HysszUkIvEwA71YB
 E4IRtuHcsx41H71JH3i3Tc1MB4orwfnZM6AuFBOzxIKxkt0k1P/kn7q/N g==;
X-CSE-ConnectionGUID: 8TPuTGzTQf2+S4TaV4+Puw==
X-CSE-MsgGUID: LjbT6fa5Q2K3o/8j+t80bA==
X-IronPort-AV: E=McAfee;i="6800,10657,11829"; a="83517402"
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="83517402"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 21:00:18 -0700
X-CSE-ConnectionGUID: J8RLj8ODTAeNUXUmhoc1sw==
X-CSE-MsgGUID: wFrcJpH2S2WhO8Dx+MifxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="251624126"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 21:00:17 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 26 Jun 2026 21:00:16 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 26 Jun 2026 21:00:16 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.58) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 26 Jun 2026 21:00:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BkVPXZC+DNBlZNDetsPvTRvo/dc1TQCCkAz3jxCv8etzLbFohoadqiJNSwugXajbP82CHw2dhwb8H/nkjeOJ4PPTqpfAXPKLhEfN8Qyauwkc56xxpbLsJqlDEFmwHv3StfPw8ByPo9tqBd2uX4PbrrDOgpMuijM1cICVhIUj1G/xJSq65i5in9zoAY0iuFSkNghizxjuGEw6Pl49Sa9NqsdLqL+YcrWVTsnMsmks/Ezub06Cd9QR2Ugv9vedpuFj6OuPryg4TuOU6FvSjHUV5TzkmedMq63tr7lFKII9871/g6uR9Nr0PhUjbY0Pls6m291OQkwz3dA0GLPNLl3c1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zdzRzCekf98lU9t7ZGDQBu6b57z9ZCigGOI1pXJ6o00=;
 b=lhNTVzQJgOk967P2KFG0AAKbCiZc6NUJawUL9K9gRdgh2bCrJDyrI2QZmlKhLGbpsqCru8Ph7cHiZZlMy14qNWSv+J0f0lRKh/MHpmMJBHz36eWi3+mlgLInG3MW+6ZIqiRLkT36REQjK2DO8WFgd4XTHfRuSjFKyO/9Lzl663j0WV0x84lqFv4iPjI+ar8GmrB+UwVx60p+wFuZcNtsfAXOO9yhyYqEJ0J08+8RCDOiYvn7GqgC1NCH3JNKB+eO2bBzhjlZUvHjDXZ53+LshZHq4BgGzBYZ4Wh5hRHzKYrJcAkotCflzAEAj7KrRi3jRc90O1QHIaZkzL/NNMqr7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by SJ0PR11MB6695.namprd11.prod.outlook.com
 (2603:10b6:a03:44e::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Sat, 27 Jun
 2026 04:00:04 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0159.014; Sat, 27 Jun 2026
 04:00:04 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Hodo, Martin" <martin.hodo@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
Subject: RE: [PATCH] drm/i915/hdcp: require monotonically increasing seq_num_v
Thread-Topic: [PATCH] drm/i915/hdcp: require monotonically increasing seq_num_v
Thread-Index: AQHdBI+UUtWxhBeODECMgpmve+WRkLZRyZLA
Date: Sat, 27 Jun 2026 04:00:04 +0000
Message-ID: <DS4PPFE901A304F2E6AD5691A968A6BA2ECE3EA2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260625104407.1025614-1-jani.nikula@intel.com>
In-Reply-To: <20260625104407.1025614-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|SJ0PR11MB6695:EE_
x-ms-office365-filtering-correlation-id: fe86776a-8ee6-4eef-bf8c-08ded40091a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|11063799006|18002099003|22082099003|56012099006|38070700021;
x-microsoft-antispam-message-info: t4oN3oK95yxuqVi2VELC3hj/a//Uc3M670Vju2qZt8jOHiSKDMl20gsh0zPm8ai9Q0J1fcvnOOl6mtxEwErpJa4MtE3Ht9YTmNWWhsUWlxJ902F5Vafv9RS4Ky/lROzDxLyQijAaQIuF0e41GAnHrYHYikWt0jMdawOJcV9wYPAPlHT9a1hrBPt1oJ3geLNOVZGj1svmZHuCLq9MhzvxXmUWEieqnWlJETuxFpHgjiidIv2TeIIXPrLraEX9Y490ywoOmQFziRYbVHpKo6HwbXBqiskepgX0/FhdOKK4IaVCcD6MpDh+LRVbob+9duzLXXxfdCvw9WMx06cWdQ12gMtPVBLM1nfZ9wyEPtaxJIY3iTnyQCj3dOyXvxFlqOfW/YBZeN5VrP66N+7qpjEP5Hh9MahZYtMaVWSBvPrLexKv2jGVaJ6d4C3nq66KFhzuIeqhNufYynsal0hyzOdXn01wTA1r5iZ/POU5/1qjedRBz1AU6v6UVoDe57PuUug4RBbrJP73jTtyCP/ScmYiY3WDfJq/lAwo/2mqVhwL+bI8d/eQpvg+hY2DQCuMYzQHU6lrzArjzPVfcz1QHy5LfTKK8wifQGYW5r1uvg0qBlGQ+uMwrxCj8QYwDVP2+1FukuE+v4quD9C+6UksreFMWjACvkaqxlFLueRH9GAl+m+Go6H34plFyxdsxItCyxpTDBGgAOkTrTSDj861Ehnv/T7GfvglqJ6137NDZmdaszk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(11063799006)(18002099003)(22082099003)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Wn5KfKVd2ytv7dSTQp/2WMkvhMYd3YvX65s8SlJAr0ZW3F98f393JRDnazd8?=
 =?us-ascii?Q?sNx9BvnpQAfo51rQ8BKtY+PlX4L8wqUCEwhyCP2kwWIFgc4xqat25ynMcbPh?=
 =?us-ascii?Q?qnWjz6NUOBS+SCIGji/jXHXt4b1YtKJrSinZ49sxz27INUEk6mDIyyBZLnee?=
 =?us-ascii?Q?9SgiOsKqGxXJpdVka3fSEHKbHx/vZp7n1pQYEx5LBhYGBP7IFikqgSj0bovF?=
 =?us-ascii?Q?Fp/JJt6lMQtrQF26QK4hjIpjZ/ox4Kh3sGWbF5+9EEqpfcx69G8uOj9oFtjl?=
 =?us-ascii?Q?HeAYHRZZF54xt4fzZtvN/Y5LlJTC2PALLxxCWsKO6V3DpsUmp3h47tGLzh1Z?=
 =?us-ascii?Q?NvPMqsI2QDC3FVZlJ69q5bHwJMllPYnMQiEaXasaRa3nJ3KGu4eQNaUIU8XW?=
 =?us-ascii?Q?C9DY/KE0/bRN4XmmNZ8/NWnT/I2DKn1S+PGDij6ndJF/D+45IhLMcTU4Gdyw?=
 =?us-ascii?Q?K6nZd7uRjaQJJoIEDTNyHzS+csPJyjINILgAznISNgg2+h/fw7qel+8zEmBD?=
 =?us-ascii?Q?5A6NYI41ZUkH81Ee6M9epjZTQqyNyTImSRkLsF/9sZYTIMo9D4KfQkKbOk6L?=
 =?us-ascii?Q?If+dENX2dvLh8W8VrGQmFZ9JjBatsGwsbV084iANJg4CUSOKTtzXaj2iOHWv?=
 =?us-ascii?Q?1aDL60AdjLV1qrIgzz2V2Oi8cwHkN44/v1P0jROY0/jW8NfYWULNMgST3j2x?=
 =?us-ascii?Q?cImLSCxt7BDIQ5LAM0YrcYTGhzzErk/jW/M2Uy8GRMfkhqUI3bLBdyjrc0Nr?=
 =?us-ascii?Q?8iBiVvJkvRgK8DuYujBmqQNRR81H1872I+Ni1Yyhla05qlQ8Yti3H/JhlBVU?=
 =?us-ascii?Q?Mim01nVE9M6CzjRsE5StHOn0io8leX7qxNWcUoctWx3wIOuXffP1iDGeVZwH?=
 =?us-ascii?Q?OLNDvbjRO6AyJ9QhW3t1sf+gkJhVKKz+BhD0pByCnQtzEfr1F+2qupdAWRxM?=
 =?us-ascii?Q?bqeNQ1GmWIXWPsepnGzHhrF77lMG6+sLjFilR1f2TDMo6Xgr1NYnqB2QB3Mf?=
 =?us-ascii?Q?imvTQWWRxW6HsxQhtm4zEXG2daUgb5JJPAVYq3XWaJ6sYshdeUPwl0orndcx?=
 =?us-ascii?Q?7RQLQqjP6126v/eAfOaUBZo0EHP/zBeug4Yf8WyiGmnBLIKh+VtSVMg3H1UW?=
 =?us-ascii?Q?uPGRmuaP+dSpxpvaSZUTmcca6NM0AuCSQQ2DM2Kb9eG/FJgJpqxerUmq+xGa?=
 =?us-ascii?Q?EW1Nq4anQFQ78qAbkmTJCldiM80RZM/IK/hAGlESPHECiukaF2I+sI+HQA9n?=
 =?us-ascii?Q?HwhI94scGE4hFQe+REb98sifoC83i8ZhuP06HPae64O+RU4imwOu3GU9mc7g?=
 =?us-ascii?Q?w5ai6/xU0PW35fa8gZ55fbFoE8sclvcpwIAsqgazqf3g+U3UM9/tsgbPUIos?=
 =?us-ascii?Q?c2gHS8OejBtq9x1iuP5syR8M9Jrqvx1TflE8Nt0zgzucWgJ/ZArjunrOrQAZ?=
 =?us-ascii?Q?2rI0zUfvlcK3rCMlUrrwoKLHiSA+S+o1t9wAzio76mDNeA59brmCc5hz37Pi?=
 =?us-ascii?Q?zHQd61Nc6T4kKgomXmi2Q+TAmTzQ85qb1ejSFF37NrFtUm4fD1CqR1zdyCO+?=
 =?us-ascii?Q?k1SSxZlOkbN6qQR7/8bshEtZhHS24bJEvx+MpWCpgTJ8s2NNAAGtTqHOLkE7?=
 =?us-ascii?Q?gQnaIn/vIwVMmyp9EBFqsL1oz3u28NYw/5IMdKV0wmz/dKiyl5J93rj+rYSf?=
 =?us-ascii?Q?ydeBHdTHiGp9vBdvpWgCdgFFB3PA7WtaQc4xlgKHTxarPs1SDthZhVG2x5n9?=
 =?us-ascii?Q?A3hYEHyA0w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rbMQenmE5KGnK+GfmyY0Sp40l4HV8Op5IwMUJciIsPpUpIMb6gN+qE9rNBNKfvfJqZ2kGDtOti1qQ5Wq4ZhAxXluBlxX2Pt877Y7CycKWiCIpMtPn++s2VVjdrDTOV/aLYOtF4YBYvvsG7xaJdjclFz8vhX+dIHdKsLsH9TWBX6Wtzkx+gRkAsh6mFkV5DNgT9pN15Tq7Z7mmmx6t7Bi1V4+lr84F08x81zFxWQWZO51KkxNIgonWPzLz8ekA/a5kB01iPDF0nUdOCMeFOtbDJEXQDXkfqp1bZMtJdh4oOx2Q+poBqCjoGIcLMrUnICyk2ppTwgu+bndEVd7ehq7ag==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe86776a-8ee6-4eef-bf8c-08ded40091a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2026 04:00:04.1620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aaaFqu+aQCGfL6erYCVRGZJO274EDEJcK66U/HbyFZ63P903O01whnzFgLlhWk02w8Jal2ssKQmuCTu/aP3mwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6695
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D05A26D110B

> Subject: [PATCH] drm/i915/hdcp: require monotonically increasing seq_num_=
v
>=20
> The HDCP 2.2 specification requires the seq_num_v to be monotonically
> increasing, and repeated seq_num_v needs to be treated as an integrity fa=
ilure.
> Make it so.
>=20
> For the first message, seq_num_v must be zero, and is already checked. We=
 can
> only check for less-than-or-equal for the subsequent messages, where
> hdcp2_encrypted is true.
>=20
> Discovered using AI-assisted static analysis confirmed by Intel Product S=
ecurity.
>=20
> Reported-by: Martin Hodo <martin.hodo@intel.com>
> Fixes: d849178e2c9e ("drm/i915: Implement HDCP2.2 repeater authentication=
")
> Cc: <stable@vger.kernel.org> # v5.2+
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index e88fec24af49..d097b478d010 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1798,9 +1798,10 @@ int hdcp2_authenticate_repeater_topology(struct
> intel_connector *connector)
>  		return -EINVAL;
>  	}
>=20
> -	if (seq_num_v < hdcp->seq_num_v) {
> -		/* Roll over of the seq_num_v from repeater. Reauthenticate.
> */
> -		drm_dbg_kms(display->drm, "Seq_num_v roll over.\n");
> +	if (hdcp->hdcp2_encrypted && seq_num_v <=3D hdcp->seq_num_v) {
> +		/* Reauthenticate on Seq_num_v repeat or rollover */
> +		drm_dbg_kms(display->drm, "Seq_num_v %s\n",
> +			    seq_num_v =3D=3D hdcp->seq_num_v ? "repeat" :
> "rollover");
>  		return -EINVAL;
>  	}
>=20
> --
> 2.47.3

