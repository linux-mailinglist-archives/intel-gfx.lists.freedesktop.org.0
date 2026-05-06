Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aETDF+ja+mnYTQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 08:08:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2BC4D6761
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 08:08:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB6910E05E;
	Wed,  6 May 2026 06:08:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HVQ4IF+D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8679E10E05E
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2026 06:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778047715; x=1809583715;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1Vyw6Lc5SXuCdTuCq9DBbwmve6bSlcBjR/hyLTD0M08=;
 b=HVQ4IF+DAEAiRW7lQj5pGV3RLQBABO+6eOlGiuvHbekrlQB4bvKhGwk8
 U7sB8LVlexw1UZN6QKHokmASZaoqX7AkmagYQzZTgJxq3gKm7Wlu6l2vN
 rQMZgFIcEpg5wAt810ClFy7mLr6Ja+kNDbusDYRHmD3Vzqq2e/xxayH8L
 krq/vjIp/q7N5DHjFFSFlw0spE75W7A5g1kn5OmxZxDFkiSH0ro3qnsUg
 2YWymq5OupPwe1Bp7/bluo2bpegiuoExGwIe3WJvv5C0lXl5qc3EuU7fr
 en7ZbGQV+Fd96cR5BwTtjsfTuK62ikWH6lgfGlHyG+pYtl18BfEYDDDmO w==;
X-CSE-ConnectionGUID: E8obESxMRd2GgVX06R//6w==
X-CSE-MsgGUID: zNKcdQF1T9218hO2XXKaRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="101609982"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="101609982"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 23:08:34 -0700
X-CSE-ConnectionGUID: 7KUC6He9Ss2oDSou0yLHJQ==
X-CSE-MsgGUID: BbYmOBXwSnOa5U6953470A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="241012427"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 23:08:34 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 23:08:34 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 5 May 2026 23:08:34 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.7) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 23:08:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iU+buOdXffizHeBudNlUgEz0QZNgRTCzDrk3sVVY0ZHLFIsYqKHaN3zNU5QhWqZvR4JPED568AvLZ7QJVuTHsGRTUfQGBRQcELmY+ut1kH5Gq3ovXos86yRV9JNlmd9phF/ILb2hPuJ7BYzRsha7mc0i2LOX5OvG61OYHxAQi+T1VDOO9mCxv9d3+U4Yd/FvRYlJRuIyqDOG+tp5TzdQ2R67eYu1/FsZAa5X2TOC0ZpNDe8t51c2We3BfuBXNo19eypWsvCB3KSM9jw2PpENrvIi6nKj7WJPejit795mP8epjsi/6LOzy34JsyQZTTBrYBvZwunkR39iA91a2lltTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t7mdtVac9VRCrQ2rOXy7tTNoCD+ElAd/nrzTGkfJ9Ig=;
 b=gIvLCkfAtxK0/wmiw7w3eibcqLKbrR8aU8RXTreCFXNw+PzUjrRX8oJRpXnyRG3szz10E6BEfmpXJKadmopFAUswVEp9H7Nb74LzWeCD6zR8ehhPHPgVW9JBpgx1svopIB7ezt09Z/7tcVHt/LeSSYBokw9EWB04YPG5Q+CrXRvQuk9ok308wAikcMCJXQ9sRoEWKX6QWQg/gRVjoPNWuHmPp0Xm99BUH3N35DUprMmFviqHtMmUoLKojzUmcMFYQpUno6YI8EmA02V5rMtfVDPTXAl1LHbTLolON8nncEnIguPtNp7JnAtiaP1L8+zMeRM0VYoU1YNUzu7BzTVqAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH8PR11MB9974.namprd11.prod.outlook.com
 (2603:10b6:510:3cf::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Wed, 6 May
 2026 06:08:30 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 06:08:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/irq: drop unnecessary forward declarations and
 includes
Thread-Topic: [PATCH] drm/i915/irq: drop unnecessary forward declarations and
 includes
Thread-Index: AQHc3GsRzVVnpFQZpUaMEbuAnrcn1LYAhImw
Date: Wed, 6 May 2026 06:08:29 +0000
Message-ID: <DM3PPF208195D8D38536DBE1A08934C15FBE33F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260505084150.3346378-1-jani.nikula@intel.com>
In-Reply-To: <20260505084150.3346378-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH8PR11MB9974:EE_
x-ms-office365-filtering-correlation-id: 3ebfd0eb-64c7-4054-5b65-08deab35e4f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: /cSZoHtQP5H+hjWTZb35Bpg4p2P1k1mduTKIN6lWyt+bG/G2+Y9EgeeVkehJeNUeCLXO+3mk1MH+I0V7sB2NkhvIYXBMEIfpPksXfVn38/GSv+zD60hk2axqEx4kShzlD1CKlJwOj0cGtxzC03SHwwCcb8THOQ398AkTtuBWMbbhINQ16gkvTAtN4KC1Z7Wkw4E9fbQIF4KNxgR+x8mWD4WQy1F2zhB0dYRRWDs84s3MZNor4jZXnjozAl14m0xe0NJ6lG2pT13w1OVKGDYc0cfs7xjBl1ZBqBUNSzXCVTBTetMVmz7lnm+Ipt6lZW6taZS0/7305GuzatamHvxt5xtGpiNwaVQEU4mDcbua9L8TGfHTDVsoa7d6/nlwIqh2gD2Uu00HlO+yP6Eaibfyw3FPJlb3WXJTqaYwE7iGBLiKEt7ZfeNzPAOjz/Asyln9LAai1M7xdYqDPMfod/jCHWB2Y5OrTDbcGhYpFFq1SDANHY67Er969RXOIC5544HrJUUF74girVdUiL8e7FSOXKu7AQG5JRLuuHhLz8rQbxsqTQ4qjMxQ2pCybgoFqRfoiCVsIf9EQZzRic8CGZL1tECtNlrL5mEpxQsslXeifpVq6D5khQ3Y2OrU2gusqGSInGvdq0uXM+7U+mv7yXlBntI7o/B5139BV3mkdotLVxOdlZkXdfQnfjp4Ha/dW2kqaj9m0Yzbp5DyvMbCmLZuHZdvJaUraKTwQ+2MR1kXlUL9TNgp4wGCeGVLHu6Bk71x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nPyeDGNpTzb8ONh/fW67HhhbPi7i1uGgF7hI02de32+HlM+Mnq52RuBZHiXx?=
 =?us-ascii?Q?xpO2TpyTQN+BhsJVTuUAbRsyQAZoKzRJgI6j9tK+PMXDs7OtdAU4SlTzxMvU?=
 =?us-ascii?Q?w42zTFHG2gPRHCAWRVDjZNNJMvIW+x92WxNJRZph7awCgY3cW7R0PeQeb8UG?=
 =?us-ascii?Q?FVRx1VYK3EfmxPM4I1VIeDix0dI5ZP2nSESpYHzb5iZWDKyByU2DY+pz1Y6x?=
 =?us-ascii?Q?YS4K6zDBX6cheZCYa7gr4RJmugrNTiCvsG/7H1greL0O5Ddz8ZiSmHrcaXTH?=
 =?us-ascii?Q?j/gU2TFQdae1fdfTrNdJj7sa5rBsD21MqEdHZkeNJmC+v3wxi8yBOyqIIYPW?=
 =?us-ascii?Q?oMjFnLR8QRbiUbu5zX9y+9GXRLpTbR6Lv6YrFU8IzOl7SKsfKHx5SZAJtMgs?=
 =?us-ascii?Q?Cgpen6+Y64g0ny/fG+ymJ8/SZn9flv/SmU379HZD6ElJHA5Artk4wIohVvrf?=
 =?us-ascii?Q?4wfxskIbxAu3qwmYT7th8pQecaRjeElDe2fDClXV7tCLyjNVyqdyDmAsYpBo?=
 =?us-ascii?Q?2fmmEZaQf/jHl4rE3/1nJoiTfpjNGAN8WyF8BwjssM4qudpqjsY/2tkfcnOy?=
 =?us-ascii?Q?9tJoPDiTmOOKsSLTfcCsbcJQpQzgNq0FKHt3SXAozx/3KE5tLwTx5+kS6bDD?=
 =?us-ascii?Q?yhoX57ltIiyRiw/a24JIOAk21eXs431lTtziTLgX00mBodeXLcIQ/6gFZb4n?=
 =?us-ascii?Q?8RuooNR10aXobWKlmRGKLEt6VtW7CtZ8dC9gUflNMP3POuKmmi1zwYHBPb+o?=
 =?us-ascii?Q?eEY7YTtZFFTASTHaHJ3P2oMIGjnsVi97cO0mVB/aH9U4oN2IaaBke3woojXJ?=
 =?us-ascii?Q?OZkX3jLWkHQlBNDwnEf4TFj21fgJGGBNqFF5E+DX2Xd4T7WGMc5gUyO8Ivei?=
 =?us-ascii?Q?rBoxJ+empXHDiII4EbolTFYvM632s0GFdo+Mv87WpsdImJqzZY8N8A9C7GbW?=
 =?us-ascii?Q?Al1snKCpx2fAuTY/2rBJ1tDxprhEpQnFNYkTwsLmTkwN+vbSNXFilulsLSnk?=
 =?us-ascii?Q?ahGTPOq9rFxWGFM5W71JIc6pZmHV3vPn69P9HQpkN3Pwvhspw+bT3VrIxK+e?=
 =?us-ascii?Q?kE2dnfNVjj3xNSO0Smp53jfxufOaX7UwtuCGUVX9mVLrdCF5ZHoE4Sz+wfX9?=
 =?us-ascii?Q?5PrnrmFEBoPL7fG4Dr+OnzhI9fzUUdRBLQv79k+NSCrony0f7USJFHL/jm+E?=
 =?us-ascii?Q?xQgvIQ36M6gdmk9blvIXWpj3ED4C8K5EK1KMN95H4a32pNyWasKVsUeLLU86?=
 =?us-ascii?Q?ccfGTZLDJ0oxQIc7oaHpq3vHKJiSFZZeKNqrIctLzM7nIAHmNqge6ODcUYle?=
 =?us-ascii?Q?zh2O+R7TOceOSCgIKr01rNU0oRRoh2YaSYQgimy+AfKlpxo18gKM+dOA4fS+?=
 =?us-ascii?Q?3aORZTLz1VGELbOOLEEiyejvzmFepIJJB4bBnHD2fQTBqGXnPXYZhLkq3jBW?=
 =?us-ascii?Q?plEgs9BdUwd/JinxkcMI6W8nnR3eJIz/Zc7mwJ5MqF6CxF0HOKHKAKjiE6cI?=
 =?us-ascii?Q?oh7JEd2FtKcDgRkz+MceY3IqCKLJut3dU8XCrIRa+Z6OUlpcMJsGTzr872el?=
 =?us-ascii?Q?+Gnudo6YDrV11r2T6QhiU/MWYJqvSqumLB9IU0CQLqGzS5tw8Dxoo/RQ3rv2?=
 =?us-ascii?Q?IfT4qAW869V2DhBdw3FztkAjBx+g7Uxh+nGvp64rPqrekdOs99JNpLTNTBqJ?=
 =?us-ascii?Q?crjdTekaSt5in+Am537CKxWqK5WEzN24XL9O7MCT7FAyBzyDfCagz3W/tt28?=
 =?us-ascii?Q?5qg9N2M+IA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: iVR64UbCZ+4Ps4Nqb6cDnIxAXzaACsum6ogWJCcn/tsaxF9eNDkdETuI51+Ck7a3PMei+punVBUYQQraJqLnMEGlRhRhX52zEl106dtklFN2jJWA1M2yWTgSPksGHF82D5ZCvlIJ7eel0qUl+gY/p62/qCPacm6GG2uOiF9/gg7jVMdbqCyZdmEDeO763QIuqETh4vlPTkOqKQ8xRtTv1TUngxgmjhIFrsfrH5pSNiG9Fax4DcH/53ga2oCJ/Uo4aqDTj+dJR6rkhJ2E+ziveLZ9LxzbVuCd2Fs34osFsH9JkH6W1FT4mwTcfgQz5pPuHG0JrpSUvaqdQKVe+bO06A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ebfd0eb-64c7-4054-5b65-08deab35e4f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2026 06:08:29.5365 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fVCqAVdRgVwr87qu0TpqaxgXiOeSIYZvvkPSp1dczqTbubPSHubUzoe1ELbW9JM4cDJSMv5PJjyMFsbfAOl9pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB9974
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
X-Rspamd-Queue-Id: BD2BC4D6761
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

> Subject: [PATCH] drm/i915/irq: drop unnecessary forward declarations and
> includes
>=20
> The i915_irq.h header has a bunch of leftover forward declarations and
> includes. Remove them.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.h | 7 -------
>  1 file changed, 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_=
irq.h
> index 5c87d6d41c74..108a187618de 100644
> --- a/drivers/gpu/drm/i915/i915_irq.h
> +++ b/drivers/gpu/drm/i915/i915_irq.h
> @@ -6,18 +6,11 @@
>  #ifndef __I915_IRQ_H__
>  #define __I915_IRQ_H__
>=20
> -#include <linux/ktime.h>
>  #include <linux/types.h>
>=20
>  #include "i915_reg_defs.h"
>=20
> -enum pipe;
> -struct drm_crtc;
> -struct drm_device;
> -struct drm_display_mode;
>  struct drm_i915_private;
> -struct intel_crtc;
> -struct intel_encoder;
>  struct intel_uncore;
>=20
>  void intel_irq_init(struct drm_i915_private *dev_priv);
> --
> 2.47.3

