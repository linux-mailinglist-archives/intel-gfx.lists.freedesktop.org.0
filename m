Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHoLCHpa3WnYcwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:04:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A993F358F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:04:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94D4410E121;
	Mon, 13 Apr 2026 21:04:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gGZtUavC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC17910E121;
 Mon, 13 Apr 2026 21:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776114295; x=1807650295;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RBYSGsXUSJuMUgGNC3RV5NqzPJlyiJf24Kusy9/HLMY=;
 b=gGZtUavCQpQj2BKun9jBSCBN2PNBBn5O3Vhst1bhElbigklH8QkLUhaN
 mU1rpqUEBQX1Nsca1N8GANGTkVtU0qaXDW9m8qFtNykr7ezfqIRBi7gLF
 Ryf9sZWe/0bvzgZlUFXq2vug8/6eWsPopH/N8avqbeINsVFVdlKfO+7VA
 GnJA85RnQ17hw9eb2SJz1ctDciywuYPNSU0LWzOm0Z1gYHl53isukaWHu
 skwxNvJ1C7Mktf6UL2G8jnQ+rgQItQXhRn34uYwL7JdY5/8yt72CVrk7h
 kIm2BWhUTuTnHesyZ2Q4xXGeS18tu7jEMrnPMCvcuIOe6NEbctgUe01n0 w==;
X-CSE-ConnectionGUID: Dv55cNMrQdSUaBzWDB7HpQ==
X-CSE-MsgGUID: xG3UfvBiSICSk0l5V6/3zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="76942354"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="76942354"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:04:54 -0700
X-CSE-ConnectionGUID: XNSTOd31RO2N/O0Le6XPQg==
X-CSE-MsgGUID: gbSt7kz1SJqAeE1I1AGTAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="229829511"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:04:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:04:53 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 14:04:53 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.19) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:04:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C72v+Vlk1e61WhPHv1RndAq5f2ZmXGgNuqjBzgLg4PVLoJx41wKlDsqE9bRYXFSoD8arP3uzeMu5Cp7s54d+aF0tN5bZbJjxsGkjEcnK59Y1ayDJpowcUPdRz7RDuw73ZSrZZHBh+lbMD2YLm0liZlLJDwjaUb5oYOypUbSgtmDQQZKkEULjhSpWzUVvwYE0kUKOLdrWi2KGg7G70fVz6QQVPNm4l/TDEls6dg+k25rNW9JRqxAvr1/s1+3zVGHBh3zLVv5pZm7E+iMM9LqDwrG/WJHrIET6woVE7ss0+dzQmvCvna9eihVJGxKGUucN/IKvwj5l2zTr6B0OaWY1KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WZv5vnx67L8Wim8ldofVvWcxlChU2eWwPJzaBeOoAHc=;
 b=JblAUQoEOYAUMtWv2mVAvHGO2+fITLb8Be8f/bh66C6DAP1gSwe/NR97Iv0axAWY69t05NzTxbvEQXTrqUC64YevRXtoOVdEwtHxtyPVDNbiS+Lz4EpV/gyGxvDqkR6+dN4S03FG9zMLM6Pgxw7MqN8UPfTRoWdqcRBqt8h1dIcQAC7g42Gp5V6WsPUpkLSDA4Z+OUTqRY7oiIwpBpCs+GbNxf81QGtE4nUxnUbVW5AhWM2s6OLhwsj5nzT7PF+bS13Gigqxq993HPFVkVTfHRpkGpqjLBWRXlX18hsb59Q9/vdCdVCh+qZ6GAwVpSroH/pZ9xjVgY0iykRI76mbTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB7113.namprd11.prod.outlook.com (2603:10b6:806:298::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.46; Mon, 13 Apr
 2026 21:04:48 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 21:04:48 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 05/19] drm/i915/display: Validate target DC state against
 allowed_dc_mask
Thread-Topic: [PATCH 05/19] drm/i915/display: Validate target DC state against
 allowed_dc_mask
Thread-Index: AQHcvUQq+7RfwhfCa0KQZqH5HsTe/7Xdl3GQ
Date: Mon, 13 Apr 2026 21:04:48 +0000
Message-ID: <DM4PR11MB636058F137B34D089ED08808F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-6-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-6-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB7113:EE_
x-ms-office365-filtering-correlation-id: f0252108-4e62-43d7-d443-08de99a04c61
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: eDC1V6oqvEl1Fpr5q2el8SAP0ZGQ4Pwmdr1W3HEpwcf4ZiRZudCtBKCPIvcOALFHZUXmibF6dR/QCrCDwG4LbeGn5t5qF8IStqy/r1KUwcJ9/t4xOiVWjRHNmME9H5vFLiG/vLRJONWI5YXGAAll4tl2ETi6X2LdEfU8oAa5q+mTLJGc15MZfyiJ9uqQmJa8DBtgWOfNTd5f5W6fMcXfQnO/r3irUvuuM8L6NPEijJ0lIZvUhZoF0yNAMPP4Q/9IY2KrwIcwmKzUZrubjumH5kVRXf1GKUkNPvlZYEy5Fe/ilaKlRcPl0FPX6QzinGt9A021Xwp+DnEmke45hwSnjuxGbYJcafbbRrOAPkt9RP09S/ZpsBqh2Lsa4+CheUrR8Nu898Z655zDQR9TM/FMRA4BCJGQggogxzSxA563zQASg+NmTVE2WprirHlgcG0p+kJt3eY5NlFGduuy0VVrMJiw/+1pzv7ZTq/TLkoZL2fnau1fVWN5hgVCgrSZDGyaSrrFRUtD6aNiRkrWOFqvIH6TbFG12IGwy6e62WwEONCXwx8CVIL/hTc3IA9iGa52imG3xt4EV20jkaMwr30e1o9TIfwGBoKCYH4bTKWG3FCrWIrEmSkc+m9KXBVBFnWw7M6EMThWYHMXSFHxE9MygICBwc9AvTOBJS36BopgOkMqlfOls9/RBlB9zpndnNAD9ECHXD8QmyiyXFSC/WUhYsfdfSi/VbyAChN0/gvgfYFkz/2hCG7Wv7A8hEE8B5FWhll1IzI2TOksia/TjVZcHdbttklLcRCoDInnHX72p34=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UlkbmaXG3TBFCjCFaQG7boqXvHhLXIG8PTSwJj7/ApGDaFUUmvDfpp/yeb5z?=
 =?us-ascii?Q?ildyyuYpmr49IgfUs2azY2ZM4IvtvEUi8ARhglBcr4jSVua+6+4+iQY4VDsg?=
 =?us-ascii?Q?BvVUPJcXquxgWI5ZJp28sneC9IVfH78QShBcfItUe+Yy8Edvlyx6sMPH0Sdl?=
 =?us-ascii?Q?qyvTVd6dtNAR7u9YSNTtmCLg+L7ajlZIoe6PlgpLjWzYiXKYfOeVxoBBka4A?=
 =?us-ascii?Q?U1aizxJOlotPg52SHvCXJ1ALkZ9R8HQ3NGHgeJJp4tMdyOTN/XBGSNY/tbjb?=
 =?us-ascii?Q?QYZTW6GGeOeGaW6JBNd4OnIJQorw98Q3hC2g0WvUlWtc6uBcPwX3jYX1QGBa?=
 =?us-ascii?Q?0sutmMIcRtjcwp0RiqHnvnRkbzOaIZz0VQm9gY/hxakya+J1Y0airiz5Y5oB?=
 =?us-ascii?Q?ZANu0IEfkinkz5W113lne12b84uLG8WdW9j8AXM5ratVX8keIh9cwvkO/8Tw?=
 =?us-ascii?Q?qk1Y9EuOIVyRRxNbX3Xq8oGvQa4t1YrbMf/gnKpMKjguphltlBAurp30kNbN?=
 =?us-ascii?Q?SE3EfXKQUBc71BSJ77oBxWDcPyisXlwYICVSqzAKnyFb6G9A0jAd2UtjKGS7?=
 =?us-ascii?Q?434h+HJyFgKy4loUS4XIZ9NXai8M6CtCEyJPGChsXrUZyKicz2H0HvefTl6+?=
 =?us-ascii?Q?QU8pJWXvU+Atz2kk4VmThlMm8PvgPfxO6usZszFiwWiV9RnkiWhSPbRddqOm?=
 =?us-ascii?Q?bzIlvo4KA4Z0NNiEHeLKdjuEsy5qY0SxYqbEMJXa+jbMvf1kveBWKzTlp3hp?=
 =?us-ascii?Q?T5J9tQKvrD4z/UNTc3vksrWEbfS9+FDxOpi13lYdVd43k6mJlvane4oCUZM9?=
 =?us-ascii?Q?lgJsKlQYElXbNdAaOvDTQh/QC9Bwi6rw5/3zHyLM+jXIyV0c4GLSfLpwvBzx?=
 =?us-ascii?Q?n+Z8ADWXlFIjJkr7vd+3nRWSm4eRxhf+6/3JZwfAQOke8M5ChSzDBvJQ50US?=
 =?us-ascii?Q?Q0pbXuf02PzNKVpPtQi0XUbMLcbR/gJkMNbpYkEQ6hM5dF5b9pBGihdza4OH?=
 =?us-ascii?Q?jFyUiXseg1e4bunGm4bq4DdB/r8H3IUsiSCiC7J/119ywT7YcFc5OZOnNJeP?=
 =?us-ascii?Q?fXq0XHej29TY4KlydWpcZx5FCZy7o03cPm9Sgb/vuFy0iRnTvbW9928pO3TZ?=
 =?us-ascii?Q?ryQyMp37LC2GA0O5iAm4B5zBMjyxwV7juA5HHTY69QHM8a77bhz/EdsTGl78?=
 =?us-ascii?Q?oOryVPV3deCKwzLgayFjYQDvrnollSs2B4rzjL46LaVszd86MrKKAenZRQ0H?=
 =?us-ascii?Q?GNPLOe+RQvjUpSsLLTg7rOu4neQaOezREIkKm0qDjBgG61BzUCJodprJ4MlP?=
 =?us-ascii?Q?mQxjG1Qa0uInncJRBWrsFQaVsd7jVFCDfwQjWJmUTMDXuqa1zkL5mT4TZuTN?=
 =?us-ascii?Q?+RKc5IT+4Vs4ciPT2AqdKxiXcMmEyLrPMb1U1PQNiWBB0Bq3mOJRYuKtl5gP?=
 =?us-ascii?Q?yoaUyP6V7ZbHaGUWea7bkq6+2Wsv5vgzkF6IrDlkPRxQlsM4AQQHyOqIGGVI?=
 =?us-ascii?Q?LBbO9Hd+R0lT31YRvqQdBjvIzX9Qpm4ThMSzdHbdA9e2T0ix8x12/V0jqtAM?=
 =?us-ascii?Q?7bOx/CfvhWNxoh2b26jHi5BWxhz0uUAuuy8cbC8wwn+9s8/27o/a9DPvPo3n?=
 =?us-ascii?Q?eFZxAYu4lbZntiakvF5iE7pcZfLYbrOalD+Op1wshLyQdRQd2MY8EyiLk7ur?=
 =?us-ascii?Q?5gq1GyLjLy0yL37Ui4m3cjTRbJvmuikZVSlVzlPI6NPc3avkWF+MFyePQuB0?=
 =?us-ascii?Q?sVwFI6m2SA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: d59hfeH3cPPIN3cgCnY5C38n0+3sNwp+1GHRkf0qrMPAUNp4vDCQv/J6QED7JhLZspf1sB8X2BaY9kM8U06efFvOC4+3rpKZ7/L0+t1XPOWv2qsyl+78RCZ0v7AMOdHSgZKwzbxL4DuzuXokNQQH08qT4Ws/AGg1sazJ2Em1HSajsm9CL6yEvWmPbTLLHDy8uT+a6y7SBwCFXLBuqGTUgmE1iGMR1cflnnAC84kYI6hN2Y8TqARRKBdr5RDLrvzErl8ST0uRiPeROaxzyNvCgfhI37yeRUEc5bXcNGLTHX5bLB/vJqBGXdzMqEmjsUkY/CVj+U95YUiGgm3ER6QFAQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0252108-4e62-43d7-d443-08de99a04c61
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 21:04:48.8310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fAc04OZ9quz32+qlej8RbArwutGsnJBeVekZD9ltXjL+J5KU1rIS5urKz/aeZVI2nXn8DJ7Zx73CO0e4DwCxyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7113
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 77A993F358F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Thursday, March 26, 2026 10:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH 05/19] drm/i915/display: Validate target DC state against
> allowed_dc_mask
>=20
> Validate the requested target DC state against allowed_dc_mask to avoid
> programming unsupported DC states.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 0afae5c2f62b..12967db27c8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -302,6 +302,13 @@ void intel_display_power_set_target_dc_state(struct
> intel_display *display,
>  	struct i915_power_domains *power_domains =3D &display->power.domains;
>=20
>  	mutex_lock(&power_domains->lock);
> +
> +	if ((state & power_domains->allowed_dc_mask) !=3D state) {
> +		drm_dbg_kms(display->drm,
> +			    "Rejecting DC state 0x%x (allowed mask 0x%x)\n",
> +			     state, power_domains->allowed_dc_mask);
> +		goto unlock;
> +	}
>  	power_well =3D lookup_power_well(display, SKL_DISP_DC_OFF);
>=20
>  	if (drm_WARN_ON(display->drm, !power_well))
> --
> 2.43.0

