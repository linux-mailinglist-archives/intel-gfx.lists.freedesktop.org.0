Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id fMpsCHk1sml1JgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:39:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BE426CD7E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:39:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2784C10E947;
	Thu, 12 Mar 2026 03:39:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Km1wrPid";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ACE410E947;
 Thu, 12 Mar 2026 03:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773286773; x=1804822773;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i8PiKBhKWIyG9DfcWDKTFgtIxieh4SifGFLLjnppV9k=;
 b=Km1wrPidmmhhQ+IDFPbO6vpNTOb4P3/XH7sQcAFwmr2JVmilXKbNQkti
 1cwVmMXsLLsoqby8C7fdCfzxRaqhxYnwOq5zYPZtTJBwg3uj5ButInZjg
 JoyFKu2PbOW0UVju+l6vTY5raQGSpYRLxKrYXe8QA4pVl/V5PbiZhjtI9
 BCmM4Jw5zZynjk/ONvM9Oj9i+5hfdTPMp0xpo3BBGKeIr4edXDEAZQZrX
 /LJvBWujwD6r454KXkjm8e9QMzkS6vu8FQ97sL6EOrpWy3pyXwJyAZlpV
 gq6UQUK16Pnb/3qvGmXQwVhq5K8q9XDvn/jVZhOJcXg6wq2OdzKSghypt Q==;
X-CSE-ConnectionGUID: jPv+kKIHTkCUeRlq3iBjtw==
X-CSE-MsgGUID: k77Y3Y/1RNmLYCldlYVlBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="78221665"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="78221665"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:39:33 -0700
X-CSE-ConnectionGUID: BE8gU5pjSs2du6ncqfSPDw==
X-CSE-MsgGUID: PVRGfPRoRtKtdMZN9B6d0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="258585210"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:39:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:39:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 20:39:32 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.2) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:39:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aRUiAWTP1jBFjDbYDQuBNs8MBk8ex2CzWVbUWZ6E63Jc9y0uhG6Qu/Pg4H+0kkOYhqpt2ZY7RJoRjPwhy2fntaiDeJWL2vkKOwNQxpGCz2BG8GwH4qyykbk+qiuapqclxXx9A5in5PxjWoLQgSNDDeRPPP8a9Suqk5nFBbnlleDDcYt5EvEqt11ecpt++NQQZdGpHhl2BDw1S45+uoQydMW9v7IJ/bVuTmQesuSU8dKQdcGAe2LcKVWaU/eaKh0M2EV3dpUG4heu9QraTotnMIPwjJSkUEI48qqMTxj/wAkEiX2ytX3Cy+H+dnfBlDw5RNBmpHSBczXGidmOk0Knxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CUfw3ZZsR9gyvO6uRijs3LBotaN/q3Dyyn+N3e+i3fQ=;
 b=a5ghJPTvSW1hgH6OS1i7vU9hrtfQpo/OE+LAh+D0rRb+YuQB3gSoknFdFiscQ1B//M/YffpOntZIHodlmhJnTboFYofJIwV6LX44tRoULkeGk7ZfKMQYyw/zshxPHxR0HyF3JTdvYbEcqfaDA/rUTS8iDAwz4Irj0Z+HLGpO67ME7XezP7AOjOUZBT4LdiUItRg8gNInGeK5mH0pjnSdFnHfaF4n8vrAqiKqOrgBHV7OuSNkf2KQKwJ2PKRvUb5/GtaaA37vu2MV1eBkEKvI51TDxlJBST5j3Ob4XiIdDxo2Tud6HXlh9ys3vEgpp1CMpCQWeagaOj6h9KHd1YzDDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ2PR11MB8515.namprd11.prod.outlook.com
 (2603:10b6:a03:568::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Thu, 12 Mar
 2026 03:39:29 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 03:39:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 1/5] drm/i915: move i915 specific bo implementation to i915
Thread-Topic: [PATCH 1/5] drm/i915: move i915 specific bo implementation to
 i915
Thread-Index: AQHcsWIEHxfb3/FhK0ulvz8xjIXuHLWqP8dQ
Date: Thu, 12 Mar 2026 03:39:29 +0000
Message-ID: <DM3PPF208195D8D84985796CAFF462B933DE344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <cover.1773238670.git.jani.nikula@intel.com>
 <e159166d623899996a51a577365ca7ab9b1a0974.1773238670.git.jani.nikula@intel.com>
In-Reply-To: <e159166d623899996a51a577365ca7ab9b1a0974.1773238670.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ2PR11MB8515:EE_
x-ms-office365-filtering-correlation-id: 3620569a-ef5b-4c6b-0767-08de7fe8f7ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: 702NqYYly0sWsTJVu/9jOF89IZlMhXuS7LjS6bU492jbMLuk1e5jF4YZZNYuRiRC6TSMKzkLWZst/MMY5jKC0BGljrdVhPPfsp/v5psxVr04i5NWZ+JDwIL0bGjDOuvRvEjz1SPdj3GKcqGv6SpYqrDpcTXZEdW5OOsM9dR6ZFFSKrMVWQMW3MTnIIxqkosIgwM2BDfeT7mQhiokf0pUBc39EyRjgR7mIDTTHrS8iumRnIFf9HqyjD/UfT/DyM/LzXE1Dk5f6oApmqJP7nl8O5S6CfMV/qyGdIoxw8gaqm4gRYp0y64NgiHO7EVAGVNyUitS075TKRG7rwxgTIwJO+Bc2It+v3MXAQi832rir4zl7ldonEqbA+zu/ggsUFtluO9jLewsgRc0wOEDzGq+/uJWESegnREgpmZhnSoLlklGOF5JPz8axMPIxiOR06yqfse6TopVNnSh6FHiYk1HKhu+lGgk/haxklGYx0yjeHfMKh9m8iMbyPu8gTyfmnOTFl2LrqvGaP3Qxt9sRU6p+OjLSzMYTaxLnMtx67ak/yiPIjQQg//EAdkWyGFxC9E7jDvyZIFQUG319GcxMn9kRRamJ19OsVjmI+9a4lI6mWDNLFfei+OkotItO0QV1a9UHdQRDTjl1O5qtPP6f2PORr/59CaGn1cThNo5NGZarpSByan6XhcqRBgFghT+zIwRfD8W2HfzgDdDB1ABJe70ot7Us2ge72WkaxozCjkFdZOVCFiRam7VRlbkZ0chNY1yysuoX/Uxl26YsFdXRBvXwHNjp0gVEzY99LZ1DBJMUiI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qAcrPPFxBTtvVHI9J967aoWfceySRLAWypN73EoQ0UbvdMMvxCzqyx5BuZ+m?=
 =?us-ascii?Q?2+pXUG3hTTT2fx5IaYqPZVUeZRYJ+p775xJ1we4tFCZcjBp46iK9qrNTL5Y4?=
 =?us-ascii?Q?btfM23p346IqZifzS9mkL4ZzrktBtkGc1nAcmenwBKBZ1bVRDG9SqRZXilu8?=
 =?us-ascii?Q?JVkRrNbSH8ySpC247ZrsUxUTGImcyz7ubq5z4q/f9uaqXVWXuLklxlLNsCW3?=
 =?us-ascii?Q?v6PQH1pXK+g/dCB5nKw4ieFVZKk8+OGhYm00ehQszuMHvFD/glRvdoQtfnLT?=
 =?us-ascii?Q?pXxPHdNuUHOz/gXouqpDDk+juwOe7cGHdqSUAilD6Lmu+uIZ/FuETh0G2UMQ?=
 =?us-ascii?Q?uwuDX1EH7ybCjSEc852JO+Vni6lW5RaSETJ2Gwe8OFxMO5LVLDT9hnlPuKAA?=
 =?us-ascii?Q?mCKnxnGWytPmQmvQ4RAzRJ5Dl5eiNQwGln+I5McPuvMl+qZj6UD/376/pfC0?=
 =?us-ascii?Q?MnVHQb5R3DYYMYO7VfnrD6cJy9qCsxh/qLuwPhzrqhNWPL+xM5VMi0oIT7up?=
 =?us-ascii?Q?ZDHYZZi9/DvGbysicYDaW2ZiZ6YKeDXgTyYXgZ/vG/zVY4kkeBA2F8T1tW/i?=
 =?us-ascii?Q?1WW2B+aV78Ui0oDyapJQIhVNBSC1b+wENpFpuG1GJnUmLT+JVKC/JXKjiW2Q?=
 =?us-ascii?Q?VQ19OPr1kkz26Sqs/vqtv/dKu2lq2LRCidREJt4QZBAZoTnkBQkN0WgHuFgY?=
 =?us-ascii?Q?EYLe5bwiOOuILLaGth0b9LrR9YaOpJsZJRTW+n3QYOH0D/Pn/1K4+EFcUVnL?=
 =?us-ascii?Q?NpTMWIlKPC88nAJ+kHp4QslgW8+kvpIPCMhrjRDvALfBNUgOM0ufljy896Xz?=
 =?us-ascii?Q?5y/tVimvbqExTRCQqT+UEsyWA1Z96bBfVrcDGeKzGNkN6oJPBrZhggIsKQxr?=
 =?us-ascii?Q?zYvod5n9vngWVAAIgmE/ceYdFOEKLiHthpdzi3VHU5fMGOIo2V7Uu8VHgLTg?=
 =?us-ascii?Q?bCoX5f4jssN8aFVWMFr+boS7uBMgSdZHVfyf4irzNb61NEwwt4hstb935jVn?=
 =?us-ascii?Q?U+FVoI7Nn/y+KQWfzEBuKzbkpWYnuAxKH6B8ULg1+/sXv7S/kLspR2e6S0Ef?=
 =?us-ascii?Q?l5hKZH26br6OkA/HP6dOzDtUK9NGdYWPikoJ76e/WeOmIvCh9TQleYSX7KC4?=
 =?us-ascii?Q?GcqjKtfs8w0llvzjl0WW1LhOnlgjkPtDrR472ICLo0gEBVVLqhvhBbbOiRXY?=
 =?us-ascii?Q?MMgRk3jdPIGuxp4jUjUdfEs/gyl4z3WS6J/CTkkHbOF01TFWte3n0xdp+VA8?=
 =?us-ascii?Q?SgyojQzvGTkvsrUJe6RSY2Ien3Xq762y53g5b6QWZWiCspwfer+0Elv/VwVG?=
 =?us-ascii?Q?fyCb+CsyeaqqkDkFmDflmtlyTfFZKK9XUy5aaMPGcmp+JZ6bndCCYvD0gj97?=
 =?us-ascii?Q?/lAi3QqfQlGEwo/xZaYh+8ZtDGO026s7x9NINsGqrU0PQBIhuI0nevNN2XMc?=
 =?us-ascii?Q?5Nm2QnY/b4kvtsBUAz6an9UhSyICVdar2z6yVbzRXgucDgMzHswFi6YoVQE8?=
 =?us-ascii?Q?vZ1GDSGKkITIlcxOgOcQ3GwzyikBafsWbj4qpubhY0VkTrwC+7+Vcc+mcVIT?=
 =?us-ascii?Q?29DvF01VzKmGctEmzpJTpdgOi/0i1VSMQ8OZkE2MJO27hMlDLPrz43ySxbhN?=
 =?us-ascii?Q?01HZB7SAyn73eu2V1Sr+faHRabfC9AC8LVh0Ok1pz/EYH60eCIyg94SzUAW4?=
 =?us-ascii?Q?w4EJK8RPrzPTSUItLiXtp4KdFFDLdluFNxJbzn9DsW7+zPCuiRasg7W4zp+O?=
 =?us-ascii?Q?dGdBdsUBZw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: TFZY8/foqwsZ/oyUoj4g7GWNLwiG8uCla2ffVQzNM7a9ZGbjKPYyiKy/5UsMTyqBeRdGbQfTdQjmcrQoAcoerP70LO0SW304TnKvFJ1AaqhlYGfGLvJSx/UcsG1qCCjxGTUA3/uNiFDyQ9kN76BRu5KJN6dTd+LvWelrwe4BZWrpgGWWSI4gSu9OsuD06LIIrz0DlzNxpAu0qVo5Ypa2mG6w0P6taNly6p6qX/JwYXJS4rHbIezeGwdO68lcGbaWdH+A+bFK2Cz5h1fZVm66Z5tdjUbkmJzr+QJx6hyQ89BNxq7VUOHhlqjrI8T4d6zch74yFVmz9/6IWrC5FXV9ng==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3620569a-ef5b-4c6b-0767-08de7fe8f7ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 03:39:29.7088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lIWmOFNxSiRUcJxgkJGIVpDJFAaOmXfYKnqOeoBzyNldrFNJWIRD5rvIiEPWvuVl6jSzQ752Lq9jR1WxD2YJ2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8515
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
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 38BE426CD7E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH 1/5] drm/i915: move i915 specific bo implementation to i9=
15
>=20
> The bo interface implementation is different for both i915 and xe. Move t=
he
> i915 specific implementation from display to i915 core.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by : Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                          | 2 +-
>  drivers/gpu/drm/i915/{display/intel_bo.c =3D> i915_bo.c} | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)  rename
> drivers/gpu/drm/i915/{display/intel_bo.c =3D> i915_bo.c} (97%)
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index 7e9d9b666511..52a82608b8b1 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -76,6 +76,7 @@ i915-$(CONFIG_PERF_EVENTS) +=3D \
>=20
>  # core display adaptation
>  i915-y +=3D \
> +	i915_bo.o \
>  	i915_display_pc8.o \
>  	i915_dpt.o \
>  	i915_dsb_buffer.o \
> @@ -239,7 +240,6 @@ i915-y +=3D \
>  	display/intel_atomic.o \
>  	display/intel_audio.o \
>  	display/intel_bios.o \
> -	display/intel_bo.o \
>  	display/intel_bw.o \
>  	display/intel_casf.o \
>  	display/intel_cdclk.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_bo.c
> b/drivers/gpu/drm/i915/i915_bo.c similarity index 97% rename from
> drivers/gpu/drm/i915/display/intel_bo.c
> rename to drivers/gpu/drm/i915/i915_bo.c index
> 2b6eaec351d8..21a4533ba341 100644
> --- a/drivers/gpu/drm/i915/display/intel_bo.c
> +++ b/drivers/gpu/drm/i915/i915_bo.c
> @@ -3,12 +3,13 @@
>=20
>  #include <drm/drm_panic.h>
>=20
> +#include "display/intel_bo.h"
> +
>  #include "gem/i915_gem_mman.h"
>  #include "gem/i915_gem_object.h"
>  #include "gem/i915_gem_object_frontbuffer.h"
>  #include "pxp/intel_pxp.h"
>  #include "i915_debugfs.h"
> -#include "intel_bo.h"
>=20
>  bool intel_bo_is_tiled(struct drm_gem_object *obj)  {
> --
> 2.47.3

