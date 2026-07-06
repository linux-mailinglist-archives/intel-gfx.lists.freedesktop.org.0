Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ig39K7NkS2q1QgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:17:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF3970E03B
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:17:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="lL3X3/9X";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 883DA10E805;
	Mon,  6 Jul 2026 08:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73BC810E34B;
 Mon,  6 Jul 2026 08:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783325870; x=1814861870;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IGZdVVhLPGKdIwBa3mMqb1D8ZSxJ+V8HPP031VSIqsg=;
 b=lL3X3/9XofS6ke/YtJsQFR6IFY91GrGYePt5frgPLx10tcnXbrcd0y1F
 QoyCW12N70z1wUWV18t5OvHFNkzBJgthJD0PzEQ72RY4hp7kjT8/ITcJW
 iDgKkbRSW0ug6PcrH/SLh8VKs+L5sIFq98+4jz3CpbBr3JiAsfll5j9YW
 85HqEEcphyIOkMbL0TTWpoNrLvyqYdCjhi9JsXIHhKzcH2MGBpEeED8XJ
 yRZZjGuv4usf4IdOijDCe0e7kTFv8heJAkzCWKjBUoP1aS0gZjdt6j/wb
 9VElUlzOuaSHbL9lOb2Ph+gkFyEt9xylBcxkgm8y2VLgKaoJKA6PgfI8J Q==;
X-CSE-ConnectionGUID: qJOzYIa8RMm1QMn5qIjwPA==
X-CSE-MsgGUID: rZFe9B9mQxGcjmMND9XA7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="95461624"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="95461624"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:17:49 -0700
X-CSE-ConnectionGUID: vuNcOYswTk2nEVp5S+NGJg==
X-CSE-MsgGUID: bNaG2+dQQLKaUUgM+VJH9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="254295848"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:17:51 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:17:50 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 01:17:50 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.46) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:17:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N0wwPxknpbEEeH5481TtBUfTa+AzveH0CrV2vuAx2CjKeVK8qXznDfa7PjADDZ/RGfv5AR2l6WBluAZ8uIUhyxadY3CX/bzXg3IHBeQ9MDbIgLj4FEPEvp3SlrDqXIUi2bp/9eMww7UAQjRu4mb3Icf0cg8RRFQvzETxi4AGILhJQ6TOCkOKyB4AWUgOiStG241yQTdyRnDAcHzueDrnH03sqBwp6XsS/MVvEkQx09p/lxNoY26ETQo80yYvq93w9p94YLiAwhM4bRd7PKkAQfCZpVFMjDXBvt5K1/Jf5q52QQPbSTqrYC8hmYWuPfJ+Q/E/0aV8i3VdLUp4O6P6iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5zuTcL4wmh07Z490VIfya++z/IRFJM0jGGVLe3ZV6aE=;
 b=R4fHkroq2KTSN2oQD2aMHwebgXEejrdnUXfjfxoI6u1vDGm1ve32SwgBVKebT1Mp1+Q0dzHrjs1lWQuvibIbTK+uoSMmqTyewkYF7Q73qAhTdYIl5EkDPJWy/Xt+QybzjgVnGgNuZGMhE1sDd5aKmSnUdJCvijOvsqm48+zu/6Xo9RmM+1y4P9zIIbCNXKik6EX6Rs+K97vA7iAsz/1tGM0YIkhrCi7ICLsazry6APCj9VpgXVzZR3Z5EzdhEZ2pcXmjsaNpxg0iuykv8a+oOWD8MM1ygbXPlBuU2QIAheV1ILaEgaNUvCcKF6XDlj6mf5d5myLuIfOTDsoSxoozrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by PH0PR11MB7712.namprd11.prod.outlook.com
 (2603:10b6:510:290::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 08:17:47 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Mon, 6 Jul 2026
 08:17:47 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 06/34] drm/i915/dp_link_caps: Validate max link limits
Thread-Topic: [PATCH v2 06/34] drm/i915/dp_link_caps: Validate max link limits
Thread-Index: AQHdCW729YGxaB3TI0eIgc39Sq54vLZgLOHA
Date: Mon, 6 Jul 2026 08:17:47 +0000
Message-ID: <DS4PPFE901A304F77E080655BCD882D95D4E3F12@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-7-imre.deak@intel.com>
In-Reply-To: <20260701153204.4124150-7-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|PH0PR11MB7712:EE_
x-ms-office365-filtering-correlation-id: e033fa1c-2feb-4383-e0fc-08dedb371071
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|56012099006|4143699003|3023799007|22082099003|11063799006|18002099003|6133799003|38070700021;
x-microsoft-antispam-message-info: QGUxRJxaPITPPoZ1Le/DlDzNkCqsiH1Za7MP0gL2inBjxz5dDQ8Ac1Ft82FjQN62fk95EMrMB4q+ZZhEcVy/T55vrCP8GJP+9zJ8JxFevZvIS+tLy5icrZ2bGyst+IlqT+vka9Df60A8C3J7ekYO0AvoxiWsyucOwSCXskkPzKI/iD9/MWEJgWm6B9PtHAk85H0r1y5dlGnYC+lF30M0MCfNupaII1qusbZyUD4fCqgYg4eFP7NJhk5n0U55Q/jmnweTxW7yzX2iSd3NaGxO2WZ+wAYUMgMwkWvNVtRHrhceGCzZe9HniHwmng7NprrOQkqG77cS4SW5L5qAmybolo9g5lX18PQvZG8ha3g9NZ1UegJL4KjwZ4GjEu6vR0/uEjYFJeh9roFbb6VsWgma+bu9yR9x5nnJClAYs6um6t00SionRpxaVagFuvolhoPF0u8W6tgxmf2HAryqH0Qrhwa81y5KGuB7s7mIsgLlxCmeLkNd5vWk2KEOivQnPIiMf118VPL5Jx+azcMPNwmXNexnfsmxWN0+HE8k5kAiG8XLbJZTgmNuBZ4oI8ib8nuPIfW81mFTR7OjzHcWnfjzdnEYuH5c/qYz5c0CO3BTnId1NgG4fmTcEXI4MsRKq+xDJAh3GbTkvvOsTQELsvLwO4ex61BjP4RKgv/QZNSPDsfaa9N5/xhhDbRHFKnvFqF6RPtIijS06whMKduCL/TLAcpDqwgc+MXWTgxOKfBWUtE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(56012099006)(4143699003)(3023799007)(22082099003)(11063799006)(18002099003)(6133799003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a/oFOP7af+Rr+vl3ICmdWDMS+Ndygw/GvEToj0ADF9i/7OpaYH1JtRjyhOV2?=
 =?us-ascii?Q?2Gp24L20cnmMH+gab6sawNh5cjo5sv+YS7EfIFE2DSbs1YzZfMy9wRaNIsG0?=
 =?us-ascii?Q?aEBhTXrCrSK30/gRF35rirux43XpqYxel968lGa9o5JffMNjFhHyna6XX4pd?=
 =?us-ascii?Q?ScaCKKArDFyFgpADPHdfR4bG4swWKbGH61p+oVKkFf9zhUBW/5PL5D/dvEEJ?=
 =?us-ascii?Q?zw0Uh/JQy2UQpU5CQmLhqSTsKPE1yvsI2QGGvygjP0oNknsApZZTbb5avjQV?=
 =?us-ascii?Q?e7w3wO9C3t4flJfOsGuJmguJ6JAUKDfQeNA9uG+GOdD3GaCq6KLBPIKRJ+rN?=
 =?us-ascii?Q?y8OvI9/d75XilSdXvcWPTNqx9MIll+vaKidlJKoa3Y01J6RuMFfbJxvvrrsK?=
 =?us-ascii?Q?jMY01NENVEQEYrugsLjEVvg3LRQHrvYM+5hZAxNgq2L/ls808UknwEerfk+R?=
 =?us-ascii?Q?fY9p1xyLbwW1AU+E/oqMmp52CtAlxCGi+mX5PzpP4mj8B2jgDPVX9MUc3YMz?=
 =?us-ascii?Q?LUgnB/CNCZZU6CUb+zo7zzaQ21zfwstZsLoliCxNnbdNDeZcUd6InFpch5Vu?=
 =?us-ascii?Q?AGAJjPxmledZsKQjG9b2S3OrWKgr38O/l1XJzazGiOdS7TOM/+mMsDkY47Lt?=
 =?us-ascii?Q?yYvMXY8d4iVqJigQwQwscMPvK5xSh1pVmht7ROmQOwOuaqG2j7OKU+uSwAWu?=
 =?us-ascii?Q?LyAaJDNQb1v+fB2cvRCQUKStBKAgKJSHhFGTa7aU9uejNF26g3EujeB8187L?=
 =?us-ascii?Q?S2UktcC8SFxx9TB4jy/tFCIKPDlJSBrp1oTG3OPhmTbEKfermKsX55TGrsNx?=
 =?us-ascii?Q?X0We4hM+xQ/6GE0f9ElHw4MW+Cm4yONp8DFoiJOUPAsTtXIhaay/ZfrCyMju?=
 =?us-ascii?Q?JyBjdByJ/BL74jw4qE0uPxElp7UA/SpkYwuIKXttIyw39IlE42GbmJ+ajPyQ?=
 =?us-ascii?Q?ROqqp+QMRtW2DHw6AHLHH8hPVQ7xxui1op5AoehDstjFJNJfL8J+Hwduw0jE?=
 =?us-ascii?Q?yBeGr/zz/4CpNgtC/KJwHVDIekLAvWEK0J09+d08Y/sPIZpJtA2o1aY9bKNS?=
 =?us-ascii?Q?GJxgqKiWEfolDMbsZigVZIm6r3WPyp5XS4TSr3fazSufiDAp2KA+beYFzWGU?=
 =?us-ascii?Q?Pai+u5J9exwVFxX+9KoSpfPNaT4f8zkxRAdZb8MyUr/zj/PrTCu83EMMmJSW?=
 =?us-ascii?Q?H4YUSy0BGKwog70zFCV7cdjAWGzLszuuaMyUyV50/XorPYIGj5uuS8LBgs6b?=
 =?us-ascii?Q?SAtdWinpoBaSZOPWm3a4iQ+ILiUOdAMY97u07eAsfxy4K/AsJew9/2ToYt3D?=
 =?us-ascii?Q?gv5YSA678ix3dBiUp35XPrU3BZptFZR+v5xLeFjW8Zq0nmnDfZKRQKGbraVO?=
 =?us-ascii?Q?ZeJD/ujPvFXr6CcUrfPTJ11fb/HFWzaB6k9eMeqn4JSfEHvA9gycPoJg/cVb?=
 =?us-ascii?Q?poDyrRkRp740Nv3QcY+OqugDO4muTb5FckUinNWbF5jtqreAfRSsCBlMPtSC?=
 =?us-ascii?Q?EUgeLD6w9Pknt9IdIT9wjnKGZVejMU+PuzM+yzBlCv+jm3EKuMSrvNnGt7qZ?=
 =?us-ascii?Q?asWEVqkJi/jU9H88SzW0iy/JAK663tHTeX3jboXxPHPbG9zXpQDCjtT/gXZH?=
 =?us-ascii?Q?ZDncwLAkLd1cREZdQiE08m3IvtDp3722ifj36yG7mkkIv6q5FBA/IrKHoEjD?=
 =?us-ascii?Q?LooOv0pgdZIlpiDtg23UYRVwOiVTcQwBGsaLb6yxfkjWubD7V+Mt33OE+3zD?=
 =?us-ascii?Q?rti5XuGn4w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: oVcKLz0OOGd6vF+5Aq2PPgaTYbK+taoeiwAYZqGGqhaB5Q0FaHOG2CE8f6QbTW4aJMzIhtEdNo1vrmzs7wuWh8WRGvAIlfzhxSpeIMUwY3txuu7of05IL/jjM13K6n1q+j+xgVk9yuPWi1TeuFwpJA44dPEhshOFf14ffqjSNPxcT3nf5LjcETeaHmcb8jJ57H1wXmy+F3aO4eGTyyvKVNtouOVxzZE/Cf5YFKX9RYZWskKKUVHrUawQ1IiwqFXnr8dKU82vAhRFsQVZoA3GTVAZJXgWfQgvcdcxFKdD6b4fw4y/EBXn6uWUuuH15b6bj8FOJOCWKTfxeXUNbDes6Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e033fa1c-2feb-4383-e0fc-08dedb371071
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2026 08:17:47.8513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fIYBYH3xa7Y5mkAEeIHf004Nhe0YU3KS1Bgh99ht3zv2REMpTw+k2M2sWTe3ke2p90rTbt6GI5VAltmQveR6gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7712
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS4PPFE901A304F.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0DF3970E03B

> Subject: [PATCH v2 06/34] drm/i915/dp_link_caps: Validate max link limits
>=20
> Add validation in intel_dp_link_caps_set_max_limits() to ensure that the =
new
> maximum rate and lane count leave at least one allowed configuration.
>=20
> The validation takes disabled configurations and active forced parameters=
 into
> account. Disabled configurations are not supported yet, so that part has =
no
> effect for now.
>=20
> At the moment this validation is also performed by the link training fall=
back
> code, but that will be removed later, leaving only the link caps module t=
o
> perform the validation added in this patch.
>=20
> v2: Rebase on changes using a filter object instead of a mask of
>     configuration indices.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 28 ++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index 36895dd9d6c81..5976e85bb2729 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -558,6 +558,26 @@ void intel_dp_link_caps_get_max_limits(struct
> intel_dp_link_caps *link_caps,
>  	*max_link_limits =3D link_caps->max_limits;  }
>=20
> +static bool max_link_limits_valid(struct intel_dp_link_caps *link_caps,
> +				  const struct intel_dp_link_config
> *max_link_limits) {
> +	struct intel_dp_link_caps_filter allowed_configs;
> +	struct intel_dp_link_config forced_params;
> +
> +	if (max_link_limits->lane_count > INTEL_DP_MAX_LANE_COUNT ||
> +	    !is_power_of_2(max_link_limits->lane_count))
> +		return false;
> +
> +	/* TODO: Validate max_link_limits->rate against the source supported
> +rates. */
> +
> +	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
> +	/* TODO: Get filter for enabled configs. */
> +	allowed_configs =3D calc_allowed_config_filter(link_caps,
> INTEL_DP_LINK_CAPS_FILTER_ALL,
> +						     max_link_limits,
> &forced_params);
> +
> +	return allowed_configs.config_mask !=3D 0; }
> +
>  /**
>   * intel_dp_link_caps_set_max_limits - set the current maximum link limi=
ts
>   * @link_caps: link capabilities state
> @@ -566,6 +586,10 @@ void intel_dp_link_caps_get_max_limits(struct
> intel_dp_link_caps *link_caps,
>   * Set the current maximum rate and lane count limits to @max_link_limit=
s,
>   * constraining the set of allowed configurations.
>   *
> + * The new limits must leave at least one configuration allowed: the
> + limits
> + * must not be below the currently active forced parameters or below
> + all the
> + * configurations that remain after disabled configurations are excluded=
.
> + *
>   * Unlike intel_dp_link_caps_get_max_limits(), the caller must serialize
>   * this call against concurrent queries and updates to @link_caps, in li=
ne
>   * with the rest of the API.
> @@ -578,9 +602,11 @@ void intel_dp_link_caps_get_max_limits(struct
> intel_dp_link_caps *link_caps,  bool intel_dp_link_caps_set_max_limits(st=
ruct
> intel_dp_link_caps *link_caps,
>  				       const struct intel_dp_link_config
> *max_link_limits)  {
> +	if (!max_link_limits_valid(link_caps, max_link_limits))
> +		return false;
> +
>  	set_max_link_limits_no_update(link_caps, max_link_limits);
>=20
> -	/* TODO: validate max_link_limits */
>  	return true;
>  }
>=20
> --
> 2.49.1

