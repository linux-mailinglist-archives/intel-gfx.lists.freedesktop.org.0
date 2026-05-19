Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHTNKw7MC2rLNwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 04:33:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D1D576729
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 04:33:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF3B10EA0D;
	Tue, 19 May 2026 02:33:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RsOhvNcq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2763010E372;
 Tue, 19 May 2026 02:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779158026; x=1810694026;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PsbI5ezj4/FJyHpLCmTqDm3lwtHTZxojCB31YslsLNI=;
 b=RsOhvNcq3McBTnbk6RhRDlYXx6Fz8pEzKt6p8ClbH1k3w9BeSmGZkLQP
 9GjDfXRO2JRfOZzcd9I0yHfmFnc2+hZU34hEf4fMg4vf9MmJdPjMMkI7l
 lQzQXQv0Z60bwtJHBT5BNpuTc0DoPHBgdHtgb3YrsiTJoxduzEtgse6yY
 O5ABCAbofI97t4hT28C0oczME22hfwwRSd7D8ZSittpW2L1OGZPKLtjSj
 nPH4bXGm/v3WvQtrUejQMVosATi9pVJHOcE0jKHKdx136NI8/0f+SflSm
 F91dcGCk6EDQ5/+cfYCAtefy/PNpreGONU6zPjmd9QPRtC/vaYVGCRAkR w==;
X-CSE-ConnectionGUID: YdZ5kh4FQLikOlLoa1aXrA==
X-CSE-MsgGUID: /4FSWeF1TcmfFU1wiX50ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="82591523"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="82591523"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 19:33:44 -0700
X-CSE-ConnectionGUID: ODwMuZMBRPyErEwiqamX6g==
X-CSE-MsgGUID: NaGGOWbkTgW0LoOTDoYLAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="244615192"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 19:33:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 19:33:43 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 19:33:43 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.38) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 19:33:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Po+9rYNb8UMXTAPX5BuCe8p3bLCbu6wfjOa1LzNbO+uT5fHmZT0O1f9ax0SDsBIsFYUsYddQwK2b0eaOpiS2kxSKQCU4m0pKuS/dsgOo83yIYKzdTmMVi6ywyjatRmQUDNG0sC3qErY2nhwcRhhnPheV2fK3i2Qu37dcvRyF023TGsdODrTAEd9h5yw7o/Rg1gSX7NhHrJabW1e6fbrz0a71MXlMkoD/kCDggws2dtJVjHEAQ+6bBuOUmYnEoAXwfhE8E//8/Cl8wpysvxYOO9LLFiV0VgvuO6ZCdP6QlOH0Ucrvpk2f/48yk+JVvKqITGL/ptZM5MJHQSGZCFcvVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P4izmHufB2BAl3x7/3WEkVy9f7Cn+/eWnJKl6nXJF1w=;
 b=fZk95jDSPBRXVSfrjDA2oWO5jebFqK5lgFJn8g78cer10Yst24+nJo2tJuksF0JzS6cOMJESAQnrLfDRSAQwlE7c27mLJrMFi51htgKQ7J6XUQOQPXEyztEmHIbIw2ZRYM+7imgzjAr2TM4/qsi+zcm1y+R+7YQO0MyU7YHMBHJ0I70RohXpR7c8q98qCs+6S69jDiPAtnz4/3XXlS76xYQV9mq6aX8LlBgFOccmnh/6jyEwCRZR8/iLmC9vYolU9Fy3+N9gGMfdVzynf0ERg5GAKjCyDLmvV0v2Y173MVd3pBFzMavHU1zVJOhIRIQtgCw8G86mHM+/py6fYn2r6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by LV8PR11MB8721.namprd11.prod.outlook.com
 (2603:10b6:408:203::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Tue, 19 May
 2026 02:33:39 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 02:33:39 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on display ver >=
 30
Thread-Topic: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on display ver
 >= 30
Thread-Index: AQHc5IV2DO2zjmw9uUed2K4rpjjccbYT2TeAgADML7A=
Date: Tue, 19 May 2026 02:33:38 +0000
Message-ID: <DM3PPF208195D8DF69F342CA48E192DC494E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260515155340.1000997-1-suraj.kandpal@intel.com>
 <20260515161056.1007030-1-suraj.kandpal@intel.com>
 <agsflxLSJ-nmCu7I@intel.com>
In-Reply-To: <agsflxLSJ-nmCu7I@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|LV8PR11MB8721:EE_
x-ms-office365-filtering-correlation-id: 0654aac8-24a4-46d6-6775-08deb54f08e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|11063799003|4143699003|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: 0ciXI7cFqbd4D91IPUd9gLyA48/J59nv0Fi/BNgVjAKZinMSHS0B0e4t+qGHlTNAvTO8thOnZ9gMzeSJZ1b4giDLKntP1/kEzZPBlOw0u1zmGqltWnOn4aAbEFPs/MH5Il4IUNGmgHmNZ5LHGt7HEqxGqpOFNcV+xzC0F4BWiVxJlWcX8SjDI7BA6fRWw/K/9HJBdv9WrxZWSjBu8MeSUA8eu0pLe08CanWL1dVc09c1FBkt64EtR1kVx2T5xnkXdZH0fUua96ZtKrmH05cg7v0W2maWjLH+2rNk2WgRVzMlSzx2z5inWbBQT4D2mxTw2FT8oFUSktc4gFtTWF4TRsZoELIHpAvdSLAUTkL3divTBnUIPi6pd74HIWBQF9qHMpCzKFCzq2QFphRp4OOzTkAuRlMFC/hKVHPGS4tgfc+tlArCDm3V2pLPiBnfYW9aMfRS3N+R1asDKglSEvcxEGT4EK1l9D0mfmoxAUB0kyg5QipLqvDdWe4TqODNcNJl77r/bXuuIyNE/RsG7Qvt1n6RWefK4DaRvCKcPZfZ4Z9BQPM0oF0W9LE1QiFOUFYEUC7MkoVikvTp6yDEA4VKXr8wcEqmB0LeHbXJsXQVcJtJc2Gjxnm6Wm1QS4ou0uYa98zw+G++6XHcx2R8yCR5kUgrHFTlhPXp3qy/DGWFanlsacxcQvDf8VcT2vVRO58SLyIyN35huhaCcKKxlUdSZy8Jgu6pUqNXKLgeY8XzmLVsUkv/03tbPoPAGoP2qjkQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(11063799003)(4143699003)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?WtJHhqUNl0v7RcaUabL/Ah0yfBbswUO5c1WBsbF/PPfdzSrcV7SsTc20/Q?=
 =?iso-8859-1?Q?SnofU8CU1thbphpplZ+Z7WYbl8ql0+IfC3lPlUJhcy2JP4EyZ0Stui2hX0?=
 =?iso-8859-1?Q?S4DVQdM+6kFjYdHSgeODhNRupzxs/H4bvImv7YSJ3xhB9Vg9aLZF0V80xP?=
 =?iso-8859-1?Q?aEpF2f3n8WLsNe0TLnUXLXigmCCwA+Fv2EdhG3F0EP0lNbqwXzqXIZJCH+?=
 =?iso-8859-1?Q?THwawxasnw1hCOoIX3lP9BJeJfbmCOcVZwmHfyLnCbtR94uVkBdPFNkYX3?=
 =?iso-8859-1?Q?TI4WrWbptn/Vw02Av77mG6eVlLmQwGOh5tRBUhlh73CF+E7cKsbYxrk/8e?=
 =?iso-8859-1?Q?VmvS45qkoRzuK2+KfhuE1hjkvzx4EvUbxETfC9HY/0V5ToKFMSk+4N+GPp?=
 =?iso-8859-1?Q?k7nWCSf2d3HFEXfamH56myEvSKV8gEHTEBPFe0whffHZ5JyJdgUm1si/vn?=
 =?iso-8859-1?Q?+7A9Ior1PD+U10bG/t8q5hp+u9PiZqD6NS9+UEhfw+Ff4lE7q73l5UFkyh?=
 =?iso-8859-1?Q?e/lWDFCrajINLckYmC3UBEL79x+GatOXgaooxnVQnEADhIbD4slO3rikuY?=
 =?iso-8859-1?Q?6TeDULWdiPblzqR/rSJWBHXv2lTGSEiW7KxfbM/s66zBZ+/3IVNidx8xoX?=
 =?iso-8859-1?Q?a5tZzDZEsmX8HC5fBkjnlnZ5nKVna2Jyse9plfw6BgFJSRhPAA8x19b9G8?=
 =?iso-8859-1?Q?AJadyNOauWTOwnOzm5JuSU6K5gjgRuoeGM6keXZy22/k+aq5czWURI5x0u?=
 =?iso-8859-1?Q?QWk/f9yy46iORdhWNs2NdxCR386NQHwPyLfcszd4nMNPjjkwfB9Chp3oxv?=
 =?iso-8859-1?Q?TEAYPBku+0PgF4a7RF3QM8CA+Lp2F0msgltirLdVzVNCr2Lmy6jDhaoKu3?=
 =?iso-8859-1?Q?0Boo6d4H9+l08vMiLH0+6sD6RO2I0s3ncBCi3i9SEsSWdh0Y7uzN9Gj86T?=
 =?iso-8859-1?Q?6qqMdL5B2TA7V2nGDjbvIAYpYXNderY/QMJtXkHD70/26CK0lTrwt/ZhPi?=
 =?iso-8859-1?Q?Qp7VH9AgOF5Hza+2K+5xXB2rj+0tzBdpUL0RdaDGeVah3imDfkM+bAbvaW?=
 =?iso-8859-1?Q?YL9AckjL6nVldxZOQFVm7a+9WcaNVEgTdhZqoMarpc7raF55vm+iNPGv2P?=
 =?iso-8859-1?Q?H6CZyVT8pqqrkOMsKx0FOxn27wo0QAV/vGXCCQqnUHN0W1bsKkoY07pUMw?=
 =?iso-8859-1?Q?WZZ1T3cN6DBuYjtQ5JLPabeJvWYgORzHOW4D5y0Kol3mrN6ijfNXF99w6x?=
 =?iso-8859-1?Q?LZFkJjhyNl4OpEUPq3LWRwiBXHqnw2qUwleN8MYw6up9VVR+q+JFawkD7b?=
 =?iso-8859-1?Q?xTylIACnuosow8xexknyx/MdnT2OFFVKJzQUVEA7HdQbuYyjy2yPv1ijHi?=
 =?iso-8859-1?Q?7D8XRrIuExLEEQx8562JO6HwLs/PyHkTAMwAzLERSeVffiNv2wOKQ414tQ?=
 =?iso-8859-1?Q?K2JA8UALjNGm/g4UE6kHFD04fRSyyqSVDoU8Pn2k1P1uyJawV6Bkrm9MSw?=
 =?iso-8859-1?Q?qmxUH42L6VAqWvqDqi+wmoUbymJKCpe6ejDU9AEKQV1zUNdm19jhoZ4Y5i?=
 =?iso-8859-1?Q?qyXcgb6BuxQlBgXRjVgHQSJrJliPQgJZ+52m1ohIBRASnT+bQ/PX3MSspW?=
 =?iso-8859-1?Q?EslN4f0qS8BfcQyXgnhP0qVTcZKWq3EvTpVjp0ddN1w/HGgWkQrMKdL/CD?=
 =?iso-8859-1?Q?hTzjbxC6fIEXHWoMsyBQTnG7gJ0byRgC3BJruUud/aHvJngYRjLOxJqhXr?=
 =?iso-8859-1?Q?yh0wbq996M14VhrD6y8Ndx2L7vip/7NRAM/nSClU0w9EyLlx0IWL0dLFSI?=
 =?iso-8859-1?Q?0AXMHeHV6w=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XgO4P+I/txp45gjKZiuhpH0eCVIzYWekH41JNtGvj4605Yb/LQVgOwFheHORCxdqI6WP1+vvsOP/SmxikAqGDt2fF8Lef0OlF6NZPaTjAji1p59hE/jTzUc+oS5nC0lRuE3eKwAhPGlm+l4jDr9fNNONapXuV6p+XmjgydFE2Jx89mverzoHB2Nf3mUynNE78SFYgoOKxqX9l11Sbcc4L7UhqAZkSbtfLufHVcrFtJOHK9o7N8H3oz5omgv6T7xNVyIpom0s1Fx3hLChLIcv420KhHr60LDfrqle/iiVt7Px4ptZ647HLpfaFUvI5ozqT1ub6C3SfQj3FLqC1//X3Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0654aac8-24a4-46d6-6775-08deb54f08e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 02:33:38.8996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R1cawFGKfx/EogW5tjjn3D5wPMNhfNdph79nQra4FvWJwP5hP2G2oc6Hf8tH2cqQ41oIa0z+ZM3Wi5xPUN0j1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8721
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 13D1D576729
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on
> display ver >=3D 30
>=20
> On Fri, May 15, 2026 at 09:40:56PM +0530, Suraj Kandpal wrote:
> > Starting with display version 30, the per-pipe frame timestamp is read
> > from the PIPEDMC register block (PIPEDMC_FRMTMSTMP) instead of the
> > legacy PIPE_FRMTMSTMP MMIO. Extend PIPE_FRMTMSTMP() to take the
> > display and select the appropriate register based on DISPLAY_VER(),
> > and update all callers intel_vblank accordingly.
> >
> > Bspec: 79482
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> > v1 -> v2:
> > - Define registers in correct location (Jani)
> > - Use the intel_display_wa() helper to select the correct register
> > (Gustavo)
> > - Fix early vblank timeout issue when DMC is not loaded
> >
> >  .../gpu/drm/i915/display/intel_display_wa.c    |  2 ++
> >  .../gpu/drm/i915/display/intel_display_wa.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_dmc_regs.h  |  6 ++++++
> >  drivers/gpu/drm/i915/display/intel_vblank.c    | 18 ++++++++++++++----
> >  4 files changed, 23 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > index 7d3d63a59882..44c2a503c911 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > @@ -110,6 +110,8 @@ bool __intel_display_wa(struct intel_display
> *display, enum intel_display_wa wa,
> >  		return DISPLAY_VERx100(display) =3D=3D 3000 ||
> >  			DISPLAY_VERx100(display) =3D=3D 2000 ||
> >  			DISPLAY_VERx100(display) =3D=3D 1401;
> > +	case INTEL_DISPLAY_WA_14022946399:
> > +		return DISPLAY_VER(display) >=3D 30;
>=20
> According to bspec PIPEDMC_FRMTMSTMP shouldn't even exist on PTL.
> Did you actually check that the register works?

Yes you are correct seems like this does not exist on PTL, weird that the X=
e.CI does not throw any error In relation to this.

>=20
> And I believe the hw register corruption issue being addressed by w/a
> 14022946399 (also applies to LNL) should anyway be fixed on the platforms
> that have PIPEDMC_FRMTMSTMP so this w/a stuff here makes no sense.

Hmm the confusing thing here is this same WA has two ways to go about it. F=
rom NVL onwards we need to ready the PIPEDMC_FRMTMSPTMP
But before that it was that we read the FRMTMSTMP register once per frame.
So for display ver >=3D 35 we maybe should still switch to PIPEDMC_FRMTMSTM=
P

Regards,
Suraj Kandpal=20

>=20
> >  	case INTEL_DISPLAY_WA_14025769978:
> >  		return DISPLAY_VER(display) =3D=3D 35;
> >  	case INTEL_DISPLAY_WA_15013987218:
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > index 15fec843f15e..884463a894c8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > @@ -42,6 +42,7 @@ enum intel_display_wa {
> >  	INTEL_DISPLAY_WA_14014143976,
> >  	INTEL_DISPLAY_WA_14016740474,
> >  	INTEL_DISPLAY_WA_14020863754,
> > +	INTEL_DISPLAY_WA_14022946399,
> >  	INTEL_DISPLAY_WA_14025769978,
> >  	INTEL_DISPLAY_WA_15013987218,
> >  	INTEL_DISPLAY_WA_15018326506,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > index 38e342b45af0..985642a79a52 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > @@ -644,4 +644,10 @@ enum pipedmc_event_id {
> >  #define _PIPEDMC_DCB_BALANCE_RESET_B		0x986a8
> >  #define PIPEDMC_DCB_BALANCE_RESET(pipe)
> 	_MMIO_PIPE(pipe, _PIPEDMC_DCB_BALANCE_RESET_A,\
> >
> _PIPEDMC_DCB_BALANCE_RESET_B)
> > +
> > +#define _PIPEDMC_FRMTMSTMP_A			0x5f0ac
> > +#define _PIPEDMC_FRMTMSTMP_B			0x5f4ac
> > +#define PIPEDMC_FRMTMSTMP(pipe)			\
> > +	_MMIO_PIPE(pipe, _PIPEDMC_FRMTMSTMP_A,
> _PIPEDMC_FRMTMSTMP_B)
> > +
> >  #endif /* __INTEL_DMC_REGS_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c
> > b/drivers/gpu/drm/i915/display/intel_vblank.c
> > index 28d81199792e..145c342f445f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> > @@ -15,6 +15,8 @@
> >  #include "intel_display_regs.h"
> >  #include "intel_display_types.h"
> >  #include "intel_display_utils.h"
> > +#include "intel_display_wa.h"
> > +#include "intel_dmc_regs.h"
> >  #include "intel_vblank.h"
> >  #include "intel_vrr.h"
> >
> > @@ -156,8 +158,12 @@ static u32
> intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
> >  		 * pipe frame time stamp. The time stamp value
> >  		 * is sampled at every start of vertical blank.
> >  		 */
> > -		scan_prev_time =3D intel_de_read_fw(display,
> > -						  PIPE_FRMTMSTMP(crtc-
> >pipe));
> > +		if (intel_display_wa(display,
> INTEL_DISPLAY_WA_14022946399))
> > +			scan_prev_time =3D intel_de_read_fw(display,
> > +
> PIPEDMC_FRMTMSTMP(crtc->pipe));
> > +		else
> > +			scan_prev_time =3D intel_de_read_fw(display,
> > +
> PIPE_FRMTMSTMP(crtc->pipe));
> >
> >  		/*
> >  		 * The TIMESTAMP_CTR register has the current @@ -165,8
> +171,12 @@
> > static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc
> *crtc)
> >  		 */
> >  		scan_curr_time =3D intel_de_read_fw(display,
> IVB_TIMESTAMP_CTR);
> >
> > -		scan_post_time =3D intel_de_read_fw(display,
> > -						  PIPE_FRMTMSTMP(crtc-
> >pipe));
> > +		if (intel_display_wa(display,
> INTEL_DISPLAY_WA_14022946399))
> > +			scan_post_time =3D intel_de_read_fw(display,
> > +
> PIPEDMC_FRMTMSTMP(crtc->pipe));
> > +		else
> > +			scan_post_time =3D intel_de_read_fw(display,
> > +
> PIPE_FRMTMSTMP(crtc->pipe));
> >  	} while (scan_post_time !=3D scan_prev_time);
> >
> >  	return div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
