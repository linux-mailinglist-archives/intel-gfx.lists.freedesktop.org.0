Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HX4IMruHVGrcmwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 08:37:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD62747942
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 08:37:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="VnqhdFi/";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BB0B10E561;
	Mon, 13 Jul 2026 06:37:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A03110E55C;
 Mon, 13 Jul 2026 06:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783924663; x=1815460663;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m6sAeXHL1eIkQH57h7Vjh83PJ/1qGXGHRHxJB4MMMgk=;
 b=VnqhdFi/nNQFNq5Nom8Y+gfT4GvaBibTe3zgudI3vmL3kVenC89yRp1R
 emp+v8C6zwXQpIPBl9BP/gv98bgjFXXxIC0XP34zp2IcpYHWbhzGKhajA
 Gj/Ad2p13s9KyydeTVv+tnhyZI/qEG3G7zj7J0LLcDQ57ThCj51JehHAU
 HrfN9NCIIOIkSgMt9Q3Lk7Gk0t1vv8j+DvUmhh7o01Ou2S9cDr+Mq1At+
 HuSEJ6WpjnWm8WStYcSCJTJpWYf65KpIdmbSXTCcwIkcbV6s6VWda1o4A
 SgkimrfNo4uMZ4AJx/qa4kZEJoeMcD/zihdVgIIlX/o698O5JU/iuaqJ0 g==;
X-CSE-ConnectionGUID: kHeWSarnSJuKiojS9QzjAA==
X-CSE-MsgGUID: T4X9iy7/Tuug4tEwrTjJVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="107326438"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="107326438"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 23:37:42 -0700
X-CSE-ConnectionGUID: WtwwrF7KQ4CyQ0W65NqRhw==
X-CSE-MsgGUID: yKXK3aWESZK4yKRCBonuPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="260347169"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 23:37:42 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 12 Jul 2026 23:37:41 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Sun, 12 Jul 2026 23:37:41 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.48) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 12 Jul 2026 23:37:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KgN/pGXBy4vliWplpyglwc0KoczXUELuP4qA+dGztN38aJmUVfEWFQ4VQCavhMY3BSiSzuf0hjvLN9Jn2pbsLwKZLxwWOZxq0DummsNO8SR4o/+mDpavbmiiyMLVlyYJlT152u6fcPixKWtEUWhkAYEFJ/Ivwxe6rootJ4pJdv3w7uATKT4qGwu+wniHYiiYv53IO+gKtySJ8SfPCSToG4JVflN6MqlOn0O4YuXxrG1Bmy38TOa1te9MCLTGQEaVUp+vN8i0Iwsu73URbDNiuJfdxnq8kF3kw1onZTXeQrUa/4aoIU3Hsp4ZPvfzVYLP1YlIduZrlIkoRBl9lq5SLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Xu37cq1cJfdex11DfU0+DqMk4jT5XgjhqxfhaBhYRY=;
 b=yn6H+c4mQcyQP/s+sum2WRHy2hkvKvhe2TLmSpYNKTjlSlrxBcQiHCcjaADSHYXytSElVZK+Y8b9eMqEBLfC7gt1e4WzKvhhQw6tIlwThHTX61D3rY88gJZKNI3WLj35fKP8rWDnEWlakVmZu8RbjvkAD/7YvifVCiKkNh9GyrmP5vB24hIu1CKKqsnfWnfSPt0W+RAQNRH3WMlvx/+DwUYq3G+W1ltD3iRxO/RhcwPGHCYIz2Wcq9EHv7CTPBH1f8wLpNXq9WdRJLNfpCJ36tFN5etujY2w8rVUqEiviCRDZCNk9VWCmLU4HujknEMKR6gqp6y5n5lCGQ4l4SiMYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by SA1PR11MB6847.namprd11.prod.outlook.com
 (2603:10b6:806:29e::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 13 Jul
 2026 06:37:38 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 06:37:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 5/7] drm/i915/bw: extract update_sagv_status()
Thread-Topic: [PATCH v3 5/7] drm/i915/bw: extract update_sagv_status()
Thread-Index: AQHc/QZpwDCw+RaS30Gez9eO0QIi+bZrKdGA
Date: Mon, 13 Jul 2026 06:37:38 +0000
Message-ID: <DS4PPFE901A304F0EDDFC1BCF462390D1B6E3FA2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
 <20260615203355.218578-6-vinod.govindapillai@intel.com>
In-Reply-To: <20260615203355.218578-6-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|SA1PR11MB6847:EE_
x-ms-office365-filtering-correlation-id: 2673660c-8f2f-432d-5f09-08dee0a93b91
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|22082099003|18002099003|3023799007|56012099006|11063799006|4143699003|38070700021;
x-microsoft-antispam-message-info: jG/OjyYmy78D6Dss9D8zZgk8YluuaKbTuvOI3KtTQ38ol9Wm1aBDTeTVAERMLibBsfrgFNkGqJQNmOx5luVizadHwUvXUHw+XhL8ZbRDnwH1AkO9+TBImPlqa/wdIUmO5YZAmgjNEjDlpDSJ73di2xHgPFAZn2EnUDC75GlFARsExIsbjHX1lROZy+gprfHbhfRe5F34+cTgdY79Ma1k//+ifQUNiXirHHrM0TxK31Adr0FRybQ9HSVcuuCiDny4hy5BtKxf9AGsQV+Vr9WoTZQNDW7Jo/isZSIHS5V8jxJfVCXK8lHl+m660YnbBYPD/bKnUjHWGvN/4p2J6ofG7DIx32tr+VIYmm3qZH2qa4FIO61dqnnX/Kis8QbRdPHBHDlhTzKM4bOMmc5YJMW3ar+k4qKQXlIjUCWlBF1OxU3Ke3HSl7z0qGGfWOsgkkA5MEnEuJU2DfK7oPIBM5deXiLhjnquphjKsB1qA6qp6XGqzPY0AmjlmEwVZRiFMJMqzPB4hN7dQ/vNvg4whyoLwLUse/qxP4DIdLumLhNnk8aKxAXHqGVjTXBuxpxpGgTHJGFZ0Lv1qBfqfOKVnQN3S9h9MFC23fGoqNkyrYDtHcCoFOPZAcCuUSMRDImbdCsxTMPX28k2ETer1KXWG9megpKN0NZu5JmpvSyFeHTrYnorLKouh6SvfVEa9Co5AfxFwMbN9TN0fHOBTvHfgXFW8xnbHT8VUapvu0ktmHFn6Z4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(22082099003)(18002099003)(3023799007)(56012099006)(11063799006)(4143699003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?35GT4cMRbMtYDvsODfcZJr9t6rF7ynCizV4et31dNnldFL+ap2ytrWE+n5sd?=
 =?us-ascii?Q?OQvhUEOuYQcZryFqnxKzkF7Z5DGsl4tQrUubqSxKfgNgsBz6EImTpH+iBZbw?=
 =?us-ascii?Q?bJOHhfLtU2XiwKVGdVEx3vilWIXdAqsQb9UCLMor9f/NQC8Oyj8v3Adr0+J8?=
 =?us-ascii?Q?nDzDMS1QyLZeY5ZEt1OhV3vVVmGj5PRH6ghZ5S6x+wM+oeIG5z6ScoDG9vUJ?=
 =?us-ascii?Q?tCjwNM6qKaqhgXAZsCW/E3bFlt332Wiak+LbLlL3/JGyc9lCuk9EbnVvR/OH?=
 =?us-ascii?Q?Dv7qnJ1BkQRXO8F6IZS80AsepYS6U5Y/VlPYtOPpQmPI/ooBz0TBWY1HwnD/?=
 =?us-ascii?Q?YiztHp58idF3qexgi5SRLVACgdlPtXN0jeoaSA7K+qsYhrMmkiBiXS2qzU7z?=
 =?us-ascii?Q?jTkaHWwp6t6LAMs/Pl04ZtN0loHgEuZlZGX0TYtOjxZVMLXzFVGn+WMSNphj?=
 =?us-ascii?Q?+gBVyNV8VgQo9ogALZgZ9p73MhVWnWOQYlFEajb6QERiArjDJaC6kE7rfqCP?=
 =?us-ascii?Q?LzNQg/edLTPhuhlTomJj5MBHMkxXx68/UnCmhl8N3njHu4esouxdjQWqZVTm?=
 =?us-ascii?Q?TF0zjCVSgzWlSD52CyDu/pHhwEPTx54jVZ2FRporp/0fzK0he10sRF784/Jr?=
 =?us-ascii?Q?bTQ3y9JlKOBTU2eG1y8z3DqDQNjW6+t7D5lQnm7H4qYzbVxwJiXBEsg0OhkH?=
 =?us-ascii?Q?vtThPyHi05i+haog6E6XSfQ5//u/pHSjNcLvBFMSrlOUXCaSPTkSzFjmJXzr?=
 =?us-ascii?Q?q/QCm+cR1a5FM2miJKZjtm+3bpA21E7Q8OUfqOgI0GoM8uLDvCfRcVzHpmqV?=
 =?us-ascii?Q?/ZH6dOhKAHzYB6CoNrAqW/GV217wFqGqNdBKDKW6+4rc/N3oaiA76gLaN3wK?=
 =?us-ascii?Q?25Xwp7PengwINY7vuyXPYgoy17cu91+22JOzFluTuBc6QSZ5UXrzfXkzAKXN?=
 =?us-ascii?Q?KXQ6pIRKl/5lsW9bj9/u07i9JuBRa2VDqIwqaVaRBawZIefRzXVdtZmRwhJa?=
 =?us-ascii?Q?YwRQyyQMD2bc7Ow+3fuf9An1PeRxyZfsCRd8Gz5V76JR9i2sur0xfrPQY3An?=
 =?us-ascii?Q?GPuopEmXszWTb21wvc36j+6ckz143AxnMNty6/bSG5yLTVnPWkeMzD6jhphZ?=
 =?us-ascii?Q?MDF56DRA6ojhefa9BoxRGGZQo/BP4pu184ADuGPooBtinQEidh7a18pKaOeG?=
 =?us-ascii?Q?gbv88q7YRkvLXmD8mHeS7KmHraFYIJDxpC5d3lTldSaLUnUjQkhDDwPNAZRK?=
 =?us-ascii?Q?2zdyL0Tz/3AiKoUbp26MZuEgAdfFeD0UsvDHax+3/0GqWGoX6WIMIUdLw2gy?=
 =?us-ascii?Q?Jec98pn1ncQM5H47GKaK9nTld6dI1FxOmJwmEH/rD9RBWMQxCBucY9VJyCHM?=
 =?us-ascii?Q?u6UaqEZZvKMBadyMnFtEyVArT9E+cthmeVAWtSjv5zmOM/mcLidW/xonkEI5?=
 =?us-ascii?Q?NWL/YyBcF4D1ABv3BUZAcBa8ZsHTS9K0kf+rYbEGk6wQwNbxfA9l+uKsyOJd?=
 =?us-ascii?Q?QcAmUY3yrGIECGnG4Xoi7z08rpNbHNG5T18YRHneb06vT9oWenXb1K1G+E0k?=
 =?us-ascii?Q?UEMcTuQoOhqtM8FDhg2fWH6/9bnMxY3fGaHJ5YZ67lPYVhdrZhbrlae5AnhK?=
 =?us-ascii?Q?VhTrLGknA/0yADD+CglHuG7QTdGYaR48m/x0fwCRHbG5L4EdgeAByOMk/ghH?=
 =?us-ascii?Q?AVFPRRwD+VPTNiIR/xYOpWm1ZNzGb/68qiMYNoSnWOQNHIUF+mJEKoDd6PhQ?=
 =?us-ascii?Q?f8HTvvOlNw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: sRxcmre5ulCBRFYcJlOh6oVQ145Ey3Donn1gnXJdV2n0fJ6Kdg8nVV1CM//cnWrY0hRbx+MMDXpJ6BmMq/VbIj+Z7afb0Cke5RZnarnyAjQ2w5+BW0PdkN9W2LcRQqhf1YQ+nL70g5tQ6GnIOle22p9nuccLPoYZhgV9QEKr3sCVVV3tOxK/iA63oYj+4ZmUmVq1lIocRzwqrPF/b5zaRDLn+79No9lE4smYiGK1HOYjp47remt5Dqd69AMV1xiykPV1EFgetl5N3zRfJfO95p47iOVED+98xIYyy2Cj0JxdW4ScuEcBNjeXW3t4z64qG7bebJIpOmb7Db7rz0o6QQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2673660c-8f2f-432d-5f09-08dee0a93b91
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2026 06:37:38.6395 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e53p8BgBIagGk6Osig+RDE68LlfIXonr0elRKdt8RSm18+xDe4qwE5sDgiSQ6zZkgieybk8T9jPOGm44ldpkJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6847
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: 8CD62747942

> Subject: [PATCH v3 5/7] drm/i915/bw: extract update_sagv_status()
>=20
> Extract the code to update the sagv status based on the number of QGV poi=
nts

Nit: SAGV*=20
Acronyms in capital
Rest LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> into a separate function and use it.
>=20
> v2: rebase
>=20
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 38 ++++++++++++-------------
>  1 file changed, 18 insertions(+), 20 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> b/drivers/gpu/drm/i915/display/intel_bw.c
> index 6649220d81b4..0d89f64db848 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -521,6 +521,19 @@ static const struct intel_display_bw_params
> *get_display_bw_params(struct intel_
>  	return NULL;
>  }
>=20
> +static void update_sagv_status(struct intel_display *display, int
> +qgv_points) {
> +	/*
> +	 * In case if SAGV is disabled in BIOS, we always get 1
> +	 * SAGV point, but we can't send PCode commands to restrict it
> +	 * as it will fail and pointless anyway.
> +	 */
> +	if (qgv_points =3D=3D 1)
> +		display->sagv.status =3D I915_SAGV_NOT_CONTROLLED;
> +	else
> +		display->sagv.status =3D I915_SAGV_ENABLED; }
> +
>  static int icl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
>  			   const struct intel_soc_bw_params *soc_bw_params,
> @@ -579,15 +592,8 @@ static int icl_get_bw_info(struct intel_display *dis=
play,
>  				    i, j, bi->num_planes, bi->deratedbw[j]);
>  		}
>  	}
> -	/*
> -	 * In case if SAGV is disabled in BIOS, we always get 1
> -	 * SAGV point, but we can't send PCode commands to restrict it
> -	 * as it will fail and pointless anyway.
> -	 */
> -	if (qi.num_qgv_points =3D=3D 1)
> -		display->sagv.status =3D I915_SAGV_NOT_CONTROLLED;
> -	else
> -		display->sagv.status =3D I915_SAGV_ENABLED;
> +
> +	update_sagv_status(display, display->bw.num_qgv_points);
>=20
>  	return 0;
>  }
> @@ -699,15 +705,7 @@ static int tgl_get_bw_info(struct intel_display *dis=
play,
>  		drm_dbg_kms(display->drm, "PSF GV %d: bw=3D%u\n", i,
> display->bw.psf_bw[i]);
>  	}
>=20
> -	/*
> -	 * In case if SAGV is disabled in BIOS, we always get 1
> -	 * SAGV point, but we can't send PCode commands to restrict it
> -	 * as it will fail and pointless anyway.
> -	 */
> -	if (qi.num_qgv_points =3D=3D 1)
> -		display->sagv.status =3D I915_SAGV_NOT_CONTROLLED;
> -	else
> -		display->sagv.status =3D I915_SAGV_ENABLED;
> +	update_sagv_status(display, display->bw.num_qgv_points);
>=20
>  	return 0;
>  }
> @@ -729,7 +727,7 @@ static void dg2_get_bw_info(struct intel_display
> *display)
>  	for (i =3D 1; i < ARRAY_SIZE(display->bw.max); i++)
>  		display->bw.max[i] =3D display->bw.max[0];
>=20
> -	display->sagv.status =3D I915_SAGV_NOT_CONTROLLED;
> +	update_sagv_status(display, display->bw.num_qgv_points);
>  }
>=20
>  static int xe2_hpd_get_bw_info(struct intel_display *display, @@ -777,7
> +775,7 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>  	 * battery and plugged-in operation.
>  	 */
>  	drm_WARN_ON(display->drm, qi.num_qgv_points !=3D 2);
> -	display->sagv.status =3D I915_SAGV_ENABLED;
> +	update_sagv_status(display, display->bw.num_qgv_points);
>=20
>  	return 0;
>  }
> --
> 2.43.0

