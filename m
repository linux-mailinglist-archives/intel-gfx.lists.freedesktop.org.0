Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vqvVFckxQ2p1UQoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 05:02:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD1C6DFF32
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 05:02:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HgD5l22R;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E43A10E151;
	Tue, 30 Jun 2026 03:02:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 511B310E150;
 Tue, 30 Jun 2026 03:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782788549; x=1814324549;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r/1u+HwkHJqjLJc+EB5/Tg4Jqa5Z3i2eordNrVcAOM4=;
 b=HgD5l22RqYQBVLXat9WM//HWKpFur+Nx97gGdt4J/G/KrrdKLvFhfR0F
 ILdusc98KmMnaDpwdflqBCW+xlYmY3yOLQ3BwQj759pubVj+p2eM5tMQX
 RKbBZAPr/+K8kwoxzSV4ASEtgqV5wQBr+x5099W8uSRHjlVvyM8d32pbx
 NozcvATr9rV+1S56TB1ar48QT3YMGOP4rBvKvIRjeQC/2Sc+bmNHZDgwT
 Q1JbWZwAOQ1IBKs/5PEigKD2Hy7jy/hK5dvIH8G39cDY70ffpbbRzlCmE
 RW18KYkkP23iZPrdS8midFzb45gekR3E1nlji3motfYeP1PP361f4/DOR g==;
X-CSE-ConnectionGUID: 1C0bl39ETDOpklP5FbHsKg==
X-CSE-MsgGUID: ir6t87z3QWOfFxbpvdSriA==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="82485456"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="82485456"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 20:02:29 -0700
X-CSE-ConnectionGUID: cYJF4NhQTzu001jcoSxp2A==
X-CSE-MsgGUID: 3qaUOeRfQxusWfXr8Ugptg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="255730267"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 20:02:28 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 20:02:28 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 29 Jun 2026 20:02:28 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 20:02:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VeO/+d7zejxYRXJ8GjU68aU+odrTnxkLk43PMOvk3wmTjSiJv/5hyQgYt1RIkXc+BArHh4ue8D17dQpBL+cqAMGf2tSm5E/SHVWbgoNfcQt9VWbXiQ4WcM8wu19pvm7wCQyqZyOcFAgCcO8eui0KisD/gwrwO0YWSOEFEMKLUeSXFByes2xGk0/BdhtIlNaXvfWjcqcWCn7Flah7ALtj2wTfJeF8HvbXE7eHKm7Ke0I3r52F62mdQFt1uBs3ILK/UTwVGAAbf1NAUWUPRvNyfGsMGqOBTm/SY7LrZLMukWLE51OOHMn2d9IZM4Z3Me9OCrMz5CndLfwdlYnkGQ/zow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+kBFZdyq/qytBQdgUnIYxI47AIc2wMmMmeRX9oro3Ow=;
 b=GuhdBKP1jGt3gRCYHRO2w8xPvtjj3csfFTGSfIHHL3ozaau/AAOFtL00j70/r/Xep7i3IzBJsxkzdoBUoGO52NQXD8nHs4kVGJmBurSE67WAQqoOSdnKOfZj8/It51GoRqCARnEpA2mXkMSoJCZYQtjExW5AK7GGsvG40JoQ0Tg26YigQtArCqJmNF3AoeDfNyJ/vKFm/QLopN5VierD8d5fUeTVbkLzzOAnBZLc5UazIOZfxP/kcP2Z6twqADBxY0S2GzX647f/yJ6gDnEk2rHeW1Hx1pNhAPfFhxDRuMFFXhiBBLQOzkj6q+9QwJbs0orPqAJdSDKSVNHWBCox7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by SA1PR11MB5924.namprd11.prod.outlook.com
 (2603:10b6:806:23b::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 03:02:24 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 03:02:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v2 1/2] drm/i915/display: Guard CMTG disable with
 intel_cmtg_is_allowed()
Thread-Topic: [PATCH v2 1/2] drm/i915/display: Guard CMTG disable with
 intel_cmtg_is_allowed()
Thread-Index: AQHdB/YC1GWLbSRE+UmhzTkOLv6eNbZWaZzg
Date: Tue, 30 Jun 2026 03:02:24 +0000
Message-ID: <DS4PPFE901A304FC81E0D96FE17B4301ABFE3F72@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260629180236.1353704-1-animesh.manna@intel.com>
 <20260629180236.1353704-2-animesh.manna@intel.com>
In-Reply-To: <20260629180236.1353704-2-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|SA1PR11MB5924:EE_
x-ms-office365-filtering-correlation-id: a3aab46d-db59-4a52-14d1-08ded6540297
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|38070700021|6133799003|4143699003|11063799006|5023799004|56012099006|22082099003|18002099003;
x-microsoft-antispam-message-info: /pUuaHlEffim8gcAi2HCeMl4Iy1HEq+ONIVFLPBwNkvLNe7o0gX8dxIqJNT+iNvdmnV40g8L1puaFmit3XKFEFZ3aJYxrgpKXv8eac8mxiMdWnD1dHx2Nf27SV4GR6oBo1WVFJCzUdJ2+K++kp8xS8gYgh3PuO0Duiskv2bLufzniQQDcJXUrxyPiSa2aVQ9PTFV3rqKGupFVAF6oyGPbl5j2fuCxotPpe/urm4aVXrfb9HMa6kpksn5JAhUaf9X+WJs3uBu/Kmp1ZjAtbAeB0J1Ab+jFo9YYP++BZ/2O5DbA7WlLPvbGJYxhTDIJ9P54BHqLBuGdEJpzpNH3KLvv4ddfSNGPqGdzO3wL7LO8onl0Hc8grZH4Hn66JkWy0RSfovfh3L50HQBSXqZj07f5m+VKhxrFiR0oPDXf94/ilS6qcd93gP5p1nTWjRgcvrduqoGSRDSMiNS2bagBYphht2RqkyduHSype/h2PF8au7M9EJFlUS3KSBHuR36WPYUfwxmXGzQx4kGr3uU8zVmPk9DIcCqZXm2lvecsR83q/ASKSV+K2Urb+VyqKd/+4POEzG3YsfY3z8jYHhNH8W5CYs9eJsFPdzwlE37XbvkjGMKPez/UjQXqje841sLCXsKNQk29xVvbWA4NkvsCxtpRYSovvVGPtF/R9xYWH41+kbY7kB9C2wHWJkxmU+Tp1Cb9YG5rQ/qBFXk45tcaff6ZvZz7LkcQdROwv8Z3GMZcQs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(38070700021)(6133799003)(4143699003)(11063799006)(5023799004)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mL4CPrvVVrhv9yXEFmDvLva74yxynxaQc9CjQ2z3Z0JI8aGNQY9a4IgWI0bR?=
 =?us-ascii?Q?ZSI3ZdxQPjKa2JL+lX3QHIV5T8W/i8dxfQeIrfwbvdsZQwan95y/Nfy8VMll?=
 =?us-ascii?Q?ytEwpuLKZseQN4Y56WUz+eBgew/WXEjvzbXJP18TQt4NVYCGj0m67OuQ+H55?=
 =?us-ascii?Q?z63qBcvdRjuNNAmMGQMqquIfXGyD4wPQIfb5oGpEPTWTR4BjT7Hj13NJT55u?=
 =?us-ascii?Q?S8ZLahBn3i4+qyQmbFY8TM0J2dtlyE0KLj8J05S0DFkWxnrZ2e3SyVfuYInw?=
 =?us-ascii?Q?eDpbgjxOtAnOnCb+atMZO8iFoXRjzOuLe+MUf1uguOj++jbXAX5X0KZG5q43?=
 =?us-ascii?Q?NbkbTRZbuZgUNPXWrC75yCur/a+B8uZtXZHg3fYguRpuidWSt7rWITYTwixq?=
 =?us-ascii?Q?6PdEm05pWWtwFizwP8O9QVyKIgacPqoonY5jaaFyXwfg98VWJkiMnigYTQaa?=
 =?us-ascii?Q?WUn0qEeEkAMKKgaPh2UM23kCl+d01gZ259ZWbWT2EKOayg7PxH/BLCZ8bi54?=
 =?us-ascii?Q?0x+zWfFCbGwNSdfF4/ATXjyXuXzEQWjD205KAeB344a/EEIcrDWBKl3pu7LR?=
 =?us-ascii?Q?wy96eI9TlmE2N0RWUnJ12VDKJOSjX5NMEsWEVK4q+ym51WmlwuYwXYrqKzLB?=
 =?us-ascii?Q?WXFkFhuD23kNKLjlN95W6ZH6WYlOPr83vhcvqgnfboK4CECffSIWLKBI6SEn?=
 =?us-ascii?Q?Nk3MjCOWL+Tuq1uq4qDEHnUvOIXQ3QvLQAW22/dS3r1y70JM6CIo2pwR8bCT?=
 =?us-ascii?Q?BTYabOSiwguLS1/F6M41pLPvqb4406JO2IUp5wMEmOycurm9JEkFlGApZm/u?=
 =?us-ascii?Q?JwHHmEg7OAZg1qFBwB9KytlIBX50KQYOsyujwra0pcnvtARYCgF+ZGUD0Gui?=
 =?us-ascii?Q?SLufvS7NWHqugVpsHS95T9WN96vQnGLwDr2ExJ8LP1CHbbVjzj/jsBbsY53z?=
 =?us-ascii?Q?71UkTn1PhRi4rBGrinszAAdt/L6jy94LvZO87rlRIKPI+L0/M+HvpcsgULRJ?=
 =?us-ascii?Q?QrgpEMSyg6VmBBhDJnwgS0RV/QvO/mYQqJW5Str7wRLpOy9WPsgoRch0rI0n?=
 =?us-ascii?Q?wM6zxBfgJPt9hgIaXZnlEBYrSfKuscUlbvf/C/Wn8onzNR42no32OutdV7tm?=
 =?us-ascii?Q?70mg6vkv3rEehVqdvyCcFQICueIiYyGld82WmYwISjXcauvK4mDXbceezfq+?=
 =?us-ascii?Q?aykQi7kPqKJKz8gG9ugPt/LFcH7AcZgWZqlrUkJsQm2/3GXAcjaxSYTa/Vqf?=
 =?us-ascii?Q?9tfKKLwCJIgEzXVkc8ZtroA5luHHNVLC/EI0jDeG1MDCt1RgMNkpts5MVIBB?=
 =?us-ascii?Q?eDGrTFy+7y7O7bR4QC87XRuEJ0ml7KU6EJKtRY5IgrbP1vGzlN3FivZo1zZ4?=
 =?us-ascii?Q?+GipXPPSI7ySOZIM6K/1j8w8NmiBSB2B+PrCZh1wNbrWji3e2UWWZ+eUvnHJ?=
 =?us-ascii?Q?oprf3pOAo0y26miZ/D1MSQT5a34ydewubQi79v1jP+WZKYgYeK2ZP4hoBxwf?=
 =?us-ascii?Q?WSSs08ZVwjJ8Xr9EMiGzNTKWkiPshnkgPApbpWwNNmVyCDN8xcHOWkHRbc8Q?=
 =?us-ascii?Q?EkDmPEZ6jD8QG7fjamux/q40dwSzK6zFTw7DzhFi1wEcSBnyqwDaLTV3vd3C?=
 =?us-ascii?Q?/MIpb/TtZyvcK6heTkQil7zPIwNUb540Eg9YMuQwDfnd/ET18qA/HOs0vb65?=
 =?us-ascii?Q?ojd4gxCQdJObeVH5v/Y6iAV5aFL2twORaXJ2xnGFQjs5uuz13UqrR2k6HfTr?=
 =?us-ascii?Q?5VtzMzx06w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: c1nEiJXrM+Ey/paE/JHd4sRVwXQDhtafVZ2pdaDfL2TZfdy4nNwsvkwbF8TrvlArIljr1+SGjaEZ0nyc5ndOd7PMcZMEKgAUWRKjzlSMw8Ix/TOVweDKY7CCh9eLcZzxg82b64/AfIQZ1UI3hV1mDjxL1vqFnjzQY5+5wD7MBRRfvvStcaT67A8XmeOwhDL5QsY1RRmTm/EpyNJIYMD/O5Y/tybC6tiXHj0UnzCtseZUBfnBZoyKhsZVyQVbd3nA3HmRhVjlA9kA87vAPikLz9qFQ+wUd9yoXlQdyqi03C1rLSnxXfsyjXXuuqAhYQmOcvWyb51AXUVAZMB6x1F8VQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3aab46d-db59-4a52-14d1-08ded6540297
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2026 03:02:24.2168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ch2TopzyDYr7HB/Hpe/E6NT5RQOxVsVDybCi8XsygCBQwKpwr3MSHbqAJf3bDHxPiWwlDw31ejAeO50jv9AFUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5924
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:from_mime];
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
X-Rspamd-Queue-Id: AFD1C6DFF32

> Subject: [PATCH v2 1/2] drm/i915/display: Guard CMTG disable with
> intel_cmtg_is_allowed()
>=20
> intel_cmtg_disable() maps crtc_state->cpu_transcoder to a CMTG transcoder
> via to_cmtg_transcoder(), which only returns a valid transcoder for
> TRANSCODER_A/B. The disable call sites in hsw_crtc_disable() and the
> fastset/VRR path only check the sticky crtc->cmtg.enabled flag, so during=
 a big-
> joiner reconfiguration that moves the eDP across pipes
> intel_cmtg_disable() can be reached with a crtc_state whose cpu_transcode=
r
> does not map to a CMTG transcoder. That results in a negative register-ar=
ray
> index (trans_offsets[-1]) and a UBSAN array-index-out-of-bounds splat:
>=20
>   UBSAN: array-index-out-of-bounds in .../display/intel_cmtg.c:187:24
>   intel_cmtg_disable+0x395/0x3d0 [xe]
>   intel_old_crtc_state_disables+0xfb/0x1f0 [xe]
>   intel_atomic_commit_tail+0xca6/0x2040 [xe]
>=20
> Gate both call sites with intel_cmtg_is_allowed() so that
> intel_cmtg_disable() is only invoked for configurations that actually map=
 to a
> CMTG transcoder.
>=20
> v2:
> - Guard the intel_cmtg_disable() call sites with intel_cmtg_is_allowed()
>   instead of a silent return (Suraj).
>=20
> Fixes: 3bb44e8d421a ("drm/i915/cmtg: Modify existing hook to disable CMTG=
")
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 805066b02aaa..b39f404f9717 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1790,7 +1790,7 @@ static void hsw_crtc_disable(struct
> intel_atomic_state *state,
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_crtc *pipe_crtc;
>=20
> -	if (crtc->cmtg.enabled) {
> +	if (crtc->cmtg.enabled && intel_cmtg_is_allowed(old_crtc_state)) {
>  		intel_cmtg_set_clk_select(old_crtc_state);
>  		intel_cmtg_disable(old_crtc_state);
>  	}
> @@ -6886,7 +6886,8 @@ static void intel_update_crtc(struct
> intel_atomic_state *state,
>  	    old_crtc_state->inherited)
>  		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
>=20
> -	if (crtc->cmtg.enabled && (intel_crtc_vrr_enabling(state, crtc))) {
> +	if (crtc->cmtg.enabled && intel_crtc_vrr_enabling(state, crtc) &&
> +	    intel_cmtg_is_allowed(new_crtc_state)) {
>  		intel_cmtg_set_clk_select(new_crtc_state);
>  		intel_cmtg_disable(new_crtc_state);
>  	}
> --
> 2.29.0

