Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JqUDhD0sGlcpAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 05:48:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7080725C091
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 05:48:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2420C10E30F;
	Wed, 11 Mar 2026 04:48:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CSRWFO82";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81F9A10E30B;
 Wed, 11 Mar 2026 04:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773204491; x=1804740491;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IbQnHC/xQCvQFtZqUgRYKa5iNJVAb+zpcf9sgpXwq80=;
 b=CSRWFO82JVQX3HoFaVi3111V0BQELJOIZgwNTpGLtieLah3XGMnlt+RD
 6BabfJaEJdJVM43ZP3s4EgpD3GVvVkJXYTqEMl9Fuofxh8KYRuaw7W5Gu
 jxM1F9+HYjYX5iahNjx47XvE4duHwoCIqUBjy5gLeVLAxDRyefaI2wxqh
 lxxO9vSpWjm/G1ALt0Lub8wf1KupJ0x9Y9QrsrbH7yqz2NMIinm1fzfxz
 eKB1Upj2UqwdvBCNdkSrAOeKMZskmZ4FuhrCLobZ6cZM/OLgNqmXMvxb1
 xrzInUlmxY+EjdpSQ+qQaYXdn9xuaOtUN4XE8v5MuPZbY0aIMggWv6piF w==;
X-CSE-ConnectionGUID: PhIEixGvRGm+tfwVqdD5pQ==
X-CSE-MsgGUID: REp0KEYeR5CGQ4lHh/Ww9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="84970556"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="84970556"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 21:48:11 -0700
X-CSE-ConnectionGUID: tnCp9rZ4SByBLXkZoMRzpA==
X-CSE-MsgGUID: u7tPpkCvSMiMRPA3/rj9mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="225304274"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 21:48:11 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 21:48:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 21:48:10 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.10) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 21:48:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SmcC3jX8IVqco3tMHcH+7XSW2V/6p7wpGKb450X5r+psXqpwa0T0X274t8dDadJcBHuDNqOdVWpSOGulLLM/QaLcATcR6w8gGA1duZQmPCtQkdcmp/XLl6WScr8pCBVdfBXBWUb3//el8w/XtaA357ZiJXIMhNEVK3DbhmfXrhqEJwQ9z2lQGlgm72MSJrYrst0LiRwr7HWBuPkbuKrdtJ0mJQro/TP/IbQwh+CGS4uTHuElbFEM9CYMl8U6k6jKBKUv8ZAs5qNvIKAdPzSt3c5LZtEPcA5S28HmGXzqU7V7LF51LBVGIh4k8XCfdzepFkwN2mSe/jvDZ608IYObVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uq4r+vdjkm+JuxThh+jxoU+afA6NKbtLdX45ODK/qvQ=;
 b=a6278VRusVDUlP2WiDAfJNr9G7DNvOA7W/gOmAL4h288lnSm80eFcq7jJhHtq9e78gSV509UCOJ4CbL4/BqAuE01IhhIc8bBEYaqGv3+HMk7Jm57vyDmfj+8xD2mdOqdZBfX9PSnGU0NRmmD3rK+2Kc4ZL/CSZzKsNm3bGPuEqFtZ3TwQrvy6pAvwtVblhSzg2/mG+AAyvkgPzAURQ3SqSWoE3VgJ6oSi50FT3YNMji8FKnemqBdquEA49KCnm9ohFYjv5tXUKTvBY3vHqhN6UXKd9ZbPy9XkFZBnmTfHVDGVhjbUPNeeESv7xCKKXlSPZmhWT05lCLLXpYKAJ8jjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB6719.namprd11.prod.outlook.com
 (2603:10b6:a03:478::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 04:48:06 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Wed, 11 Mar 2026
 04:48:06 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 17/24] drm/i915/lt_phy: Add .enable_clock hook on DDI
Thread-Topic: [PATCH v2 17/24] drm/i915/lt_phy: Add .enable_clock hook on DDI
Thread-Index: AQHcq9u3uJpNR7Pah0KouIdKvxwfvrWozJdw
Date: Wed, 11 Mar 2026 04:48:06 +0000
Message-ID: <DM3PPF208195D8D3BA3821EEDEBE6453165E347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-18-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-18-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB6719:EE_
x-ms-office365-filtering-correlation-id: 6d5ba05c-2a0d-402e-d212-08de7f2962ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: TEBCfa+aC1liwRyWGIyBj1rRmPRVLuWQy9O97HxQ9kJUEgfiJJo2B5nYe/SP0viuF3einl+P/RxyoY9dOyt9foJbZUyj6SIkydQtdWTu/bKusuI41iVdIWTneryx9c2lltbG8uMwW3I3SuF86C2WZOThVQZyRPhmPOnw+7pphQgxXx0Pm+uZ/8YDBKNniHFi+bAOP6cHoSkLFbEcS3M7VmyqN7l4VIaUIHXQKsy1zVozThqwcuY5C47O+gTyTlJaUWRijiOK3Jv2ccSNiTmsrJVRXdAGBXUCq/jP3GW2GX5GRqbSinXFsiFs3Za2Vw5H7tIgANbxO250DB4OZxBXBh8++eQzEGLwybqYxc0NDDQAEqwrP0K0mDAhPZXrczvkAqM6saI4sXdGKCQQs8QcrvoewRGZWkDKhtQoxGyetEVmJV+yVBleEa5IMXdXaWuuR704HpfFWKJdKCFfvhokNLqXISspDYLqSDmUVPyyQkio6IPb3lH7Puf9INIX9sDVzUQ7qcXO0s54D7LX85f4QX7k1xArb6L0G8Q6e4uXm4usJ+PCdkKmUa53qMAhM2igotuoUnsj0lrDRENhCJwQHAgrnVIKWjG7PGvXTDtY4teBxhL2xCNOTZMIjdAamQE3JmywvTIzUwZveLIcgrW6XGfguX6uMOH4jYt+tj21JOTHHASap3nAYWXq3Qwlim6neCawbwKR+UIoJZEzYRk6hmRZDUxZ3uFE6Wih53cvgJMGbggripX6tWpCM+3hHxu5QjQclwum36mbFDAsb7qV+p7jUrUyGOwO00GPaDZhpUQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F45sRh+StJkiC3IZGCmuI3Y8JwJW17F1kE3E2S5UN/9kBze1LlgAOpXVPD3a?=
 =?us-ascii?Q?jh5kPmLp1tPnRXV0SVe2SUv9uel+juEWI0C6Yfk0dlvH0OI2s9d5KWr6j47r?=
 =?us-ascii?Q?kdcCJFfEmnHw6jnxou3ze9yy4M7aQJprNMdgrBayNZVKVl7s6Kx7eMKDki2J?=
 =?us-ascii?Q?/PcsE/L8Mgyk7MqmbdVpxR1fkB7HaC9AmeJ6NDj4oKCrGge+6eZqXgXDdNGn?=
 =?us-ascii?Q?EAc0O8NsUDOcEYcuOvrdWfeEY10gHi5tLj7d0HlPFpSkcogDBYFxzjjfAOQc?=
 =?us-ascii?Q?ZBaSYvXgUznFy5F52xUYbBNCrKyUAElMH0U+SXIL1qckl2rX7Xp81KU9wpV5?=
 =?us-ascii?Q?PyJyJ8MXk60lYPXrWcDSvq/oBhaXpCuDVATWDCr8awO+q45XTiJ4or/whsum?=
 =?us-ascii?Q?tHSsEvQe4Q3mvxHHUS5sMxc61RqXYEQ1XvpLRbhNJKB+OWtuuLeFERKk11sY?=
 =?us-ascii?Q?vlyVsobLimgEyljH3X7vGGjO/vsiBaJrstanD9AmHnceet9KR/qABR+cWncm?=
 =?us-ascii?Q?Ky7OZVx0M+IADGn433F3o/7aiUbjZjhvepMnNa0w5JP/z6imA8VL3eJf/olD?=
 =?us-ascii?Q?Oi9LILo1KmqkJDCgT8f3kEopwHG5PM2nttARi8NkglEnSzhTNCZxSA3Yrv+6?=
 =?us-ascii?Q?yLWwII4RxpXVu8PqMJ8tX2dqE99gkk9w1ivt9fUQZvGbb++lmL/Z68etO6Gd?=
 =?us-ascii?Q?zxf5xuLznAZqnD0eSoPK4IjbVL80+h7rSzNFz5e86RZm0ABB0mMshcAcBhZH?=
 =?us-ascii?Q?uQx+eTdIG+POnEOYMcCSFy1J/pCFsJQsrp9TKJIsX3A0fjKgVujF/UydnP3l?=
 =?us-ascii?Q?ANT4E8dn3CxOTIiF6hmr4HvCF86LEdaNqujdPtzOPUIpvw6L2CrwC/uYew3V?=
 =?us-ascii?Q?kCkLNjjI8X2J/o1cFN5DUCABi9yA9nwA34sAs2zw9SuPrao8t4cmPtvgonr/?=
 =?us-ascii?Q?hI7B9rb0jbO5HgTUUYWQVP8GdbaV/YXiaABkrknMLZjiNAdeRgvGWqyzwYJS?=
 =?us-ascii?Q?f70k0eit5aomtVbiukc5m5VxC6kv9uCNdfoq8Wv+ym8wPuHNRLSk5qSio6d1?=
 =?us-ascii?Q?dYPz0igXDBnEDxAYZAgPnoSYnroONVz60dUNutyk8R6NqDVPVrRL9o94tybU?=
 =?us-ascii?Q?13IPzUY36WoTtvMstR/+8XkLjoJO+ZpeHiLIZZW3rzcx7rNVeNQNOiOW0Xds?=
 =?us-ascii?Q?nuzJkZQ7Ba03bhFDUVNYEvVffchHnw+kSxUNlz4b/uIFil5eMCbUrSbT17he?=
 =?us-ascii?Q?z8jZIeS6Y7LauqDc06u1YSqaiOOy0JtWQ6yOR7skrUxzE0Tthuf3LBVKK81x?=
 =?us-ascii?Q?44wD9bIcJZ9wINHz2JlmR8yFezh3Ur/L3P/F0vHtaAUw/m/bV0D59Awo0dLg?=
 =?us-ascii?Q?1J19/DqpNPSV7A2vWUJWMhiFxhFHrCeh1kTRCNEisDmdbZpPiLt/sPepMPq1?=
 =?us-ascii?Q?GATqzDuRdZt6L931zsen9UrcQTerAkKp4++yMPz32iOZ1IJieH4MhjaGmZ+s?=
 =?us-ascii?Q?wmSzLJzU2pE8fdDe3VzPaMZ5245erGiI6psLk8DlZv+W27GN+r8g+fJaqBWa?=
 =?us-ascii?Q?0hfXgSypjFRA3mEg5fBzjNyRcyajH1S2NYmQsNM5gZBBK+9sNziktr1RCaxd?=
 =?us-ascii?Q?Bn9bSdSRPNdRqiTxejJMTYxEz4g4Biri4ZUwMhZ6P8wK/UlGf8UJNqNctMUM?=
 =?us-ascii?Q?gSFvUFJRtbMwCnsxvmgZJxS0o1J195edmFxemkXmm0BU8YgjrB8Jsk7B+18D?=
 =?us-ascii?Q?DtmMp83J5Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: r1gf4VhoIkEBnuQpHy4avSDpm6yh2/+bHfIE9baPZTtbH+UBaE3iWoPmlgdqMGQN74BpLQUk5iBBh+EM7y3bOZEGzrBDgjvlCtJ9WIxC7SzLgQzPuaZITIIisde1yAQSwX4hdxYKe5KmsqQSj4G3/AWgOmTdnG85AatXNUPgEk9f68L2G6JUcJ6FAkbXWSF88B7KdqJmx7tQuUbcLPNF/7om1z9fqi13cf4IJrFkIIzw6sM+Kru+7btETLkMibHCxTCj9XxmMw7u12K37KbAnJY1yIDGvzfOdtGvCp9RE1WsPtCRY0Rc5eRqdXdAxKS0vcyWXdwQ4U/mT5yoaSpkHg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d5ba05c-2a0d-402e-d212-08de7f2962ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 04:48:06.3870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UhSC4y9SO1B/EU83LyHHgQD+pGzBQseo7RgqW1uaqZ5q/WDhjqwEwCRGPqi1jCv+vtyUEBZYhOFn4Vyf/QeHOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6719
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
X-Rspamd-Queue-Id: 7080725C091
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v2 17/24] drm/i915/lt_phy: Add .enable_clock hook on DDI
>=20
> Enable PLL clock on DDI by moving part of the PLL enabling sequence into =
a
> DDI clock enabling function.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 ++++++++
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 33 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_lt_phy.h   | 10 ++++--
>  4 files changed, 43 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 76ba308f32ad..51403d09c477 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5298,7 +5298,7 @@ void intel_ddi_init(struct intel_display *display,
>  	encoder->pipe_mask =3D ~0;
>=20
>  	if (HAS_LT_PHY(display)) {
> -		encoder->enable_clock =3D intel_xe3plpd_pll_enable;
> +		encoder->enable_clock =3D intel_xe3plpd_pll_enable_clock;
>  		encoder->disable_clock =3D intel_xe3plpd_pll_disable;
>  		encoder->port_pll_type =3D intel_mtl_port_pll_type;
>  		encoder->get_config =3D xe3plpd_ddi_get_config; diff --git
> a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 412582e29ca6..54c7a255b3a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4595,7 +4595,20 @@ static int xe3plpd_pll_get_freq(struct intel_displ=
ay
> *display,
>  	return intel_lt_phy_calc_port_clock(display, &dpll_hw_state->ltpll);  }
>=20
> +static void xe3plpd_pll_enable(struct intel_display *display,
> +			       struct intel_dpll *pll,
> +			       const struct intel_dpll_hw_state *dpll_hw_state) {
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return;
> +
> +	intel_xe3plpd_pll_enable(encoder, pll, dpll_hw_state); }
> +
>  static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D {
> +	.enable =3D xe3plpd_pll_enable,
>  	.get_hw_state =3D xe3plpd_pll_get_hw_state,
>  	.get_freq =3D xe3plpd_pll_get_freq,
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index c3686ac6adc9..6bc32d1734a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1883,9 +1883,11 @@ intel_lt_phy_enable_disable_tx(struct
> intel_encoder *encoder,  }
>=20
>  void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> -			     const struct intel_crtc_state *crtc_state)
> +			     struct intel_dpll *pll,
> +			     const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> +	int port_clock =3D intel_lt_phy_calc_port_clock(display,
> +&dpll_hw_state->ltpll);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	bool lane_reversal =3D dig_port->lane_reversal;
>  	u8 owned_lane_mask =3D
> intel_lt_phy_get_owned_lane_mask(encoder);
> @@ -1901,11 +1903,11 @@ void intel_lt_phy_pll_enable(struct
> intel_encoder *encoder,
>  	wakeref =3D intel_lt_phy_transaction_begin(encoder);
>=20
>  	/* 1. Enable MacCLK at default 162 MHz frequency. */
> -	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
> +	intel_lt_phy_lane_reset(encoder, dpll_hw_state->ltpll.lane_count);
>=20
>  	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes,
> gating, and SSC. */
> -	intel_lt_phy_program_port_clock_ctl(encoder, &crtc_state-
> >dpll_hw_state.ltpll,
> -					    crtc_state->port_clock,
> lane_reversal);
> +	intel_lt_phy_program_port_clock_ctl(encoder, &dpll_hw_state->ltpll,
> +					    port_clock, lane_reversal);
>=20
>  	/* 3. Change owned PHY lanes power to Ready state. */
>  	intel_lt_phy_powerdown_change_sequence(encoder,
> owned_lane_mask, @@ -1915,12 +1917,12 @@ void
> intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>  	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config
> check enabled PLL type,
>  	 * encoded rate and encoded mode.
>  	 */
> -	if (intel_lt_phy_config_changed(encoder, &crtc_state-
> >dpll_hw_state.ltpll)) {
> +	if (intel_lt_phy_config_changed(encoder, &dpll_hw_state->ltpll)) {
>  		/*
>  		 * 5. Program the PHY internal PLL registers over PHY
> message bus for the desired
>  		 * frequency and protocol type
>  		 */
> -		intel_lt_phy_program_pll(encoder, &crtc_state-
> >dpll_hw_state.ltpll);
> +		intel_lt_phy_program_pll(encoder, &dpll_hw_state->ltpll);
>=20
>  		/* 6. Use the P2P transaction flow */
>  		/*
> @@ -1952,8 +1954,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder
> *encoder,
>  		 * Change. We handle this step in bxt_set_cdclk().
>  		 */
>  		/* 10. Program DDI_CLK_VALFREQ to match intended DDI
> clock frequency. */
> -		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> -			       crtc_state->port_clock);
> +		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> port_clock);
>=20
>  		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] =3D
> 1. */
>  		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display,
> port), @@ -2000,7 +2001,7 @@ void intel_lt_phy_pll_enable(struct
> intel_encoder *encoder,
>  			     lane_phy_pulse_status,
>  			     lane_phy_pulse_status);
>  	} else {
> -		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> crtc_state->port_clock);
> +		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> port_clock);
>  	}
>=20
>  	/*
> @@ -2011,7 +2012,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder
> *encoder,
>  	intel_lt_phy_powerdown_change_sequence(encoder,
> owned_lane_mask,
>  					       XELPDP_P0_STATE_ACTIVE);
>=20
> -	intel_lt_phy_enable_disable_tx(encoder, &crtc_state-
> >dpll_hw_state.ltpll);
> +	intel_lt_phy_enable_disable_tx(encoder, &dpll_hw_state->ltpll);
>  	intel_lt_phy_transaction_end(encoder, wakeref);  }
>=20
> @@ -2282,14 +2283,22 @@ void intel_lt_phy_pll_state_verify(struct
> intel_atomic_state *state,  }
>=20
>  void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
> -			      const struct intel_crtc_state *crtc_state)
> +			      struct intel_dpll *pll,
> +			      const struct intel_dpll_hw_state *dpll_hw_state) {
> +	intel_lt_phy_pll_enable(encoder, pll, dpll_hw_state); }
> +
> +void intel_xe3plpd_pll_enable_clock(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state-
> >port_clock);
>  	else
> -		intel_lt_phy_pll_enable(encoder, crtc_state);
> +		/* TODO: remove when PLL mgr is in place. */
> +		intel_xe3plpd_pll_enable(encoder, NULL, &crtc_state-
> >dpll_hw_state);
>  }
>=20
>  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder) diff --git
> a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 0053bb5489e5..9188ce980119 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -11,13 +11,16 @@
>  struct drm_printer;
>  struct intel_atomic_state;
>  struct intel_display;
> +struct intel_dpll;
> +struct intel_dpll_hw_state;
>  struct intel_encoder;
>  struct intel_crtc_state;
>  struct intel_crtc;
>  struct intel_lt_phy_pll_state;
>=20
>  void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> -			     const struct intel_crtc_state *crtc_state);
> +			     struct intel_dpll *pll,
> +			     const struct intel_dpll_hw_state *dpll_hw_state);
>  void intel_lt_phy_pll_disable(struct intel_encoder *encoder);  int
> intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state, @@ -40,8
> +43,11 @@ int  intel_lt_phy_calculate_hdmi_state(struct
> intel_lt_phy_pll_state *lt_state,
>  				  u32 frequency_khz);
>  void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
> -			      const struct intel_crtc_state *crtc_state);
> +			      struct intel_dpll *pll,
> +			      const struct intel_dpll_hw_state *dpll_hw_state);
>  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);  void
> intel_lt_phy_verify_plls(struct intel_display *display);
> +void intel_xe3plpd_pll_enable_clock(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *crtc_state);
>=20
>  #endif /* __INTEL_LT_PHY_H__ */
> --
> 2.43.0

