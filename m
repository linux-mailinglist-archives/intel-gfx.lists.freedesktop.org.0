Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LVumNU5kS2qXQgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:16:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4210470DFFD
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:16:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Ri5+iyTY;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC1EE10E318;
	Mon,  6 Jul 2026 08:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D9F410E318;
 Mon,  6 Jul 2026 08:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783325771; x=1814861771;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=R72SYa0IZZWKuPZ7xdjSEdvGuyRJqwO8972Ut6WfACI=;
 b=Ri5+iyTYRU54LAb1veMWPfA/wX9W5aZRi0GYCUSeFEQaQkL59bfNqJ1m
 x5Q13h+nitsLxjwycT/TEZQOoegxthbI11EI9GiyaKggYVpax5/eAWwal
 3zC+aFFgkK6Y6qyIUOBRIbjnQG9N5StYfN0G547c5A6r4TxsPyr2vAuQD
 6cVTXn92hlTBUFnb4fo5yhbnl0kcs2yv/TNf+0PdiR1mIbzRgyAM4b5Sn
 oMMReftybqEIEWf16WDR84IfXIBi4/XfoBwpS/6EFSDiWEUTddbFgOpW3
 mKbisqTdWzP91vEMw40/09Z0ZJ9EG56xcBwZ4++A5RhxAa1ihSv2WF7A6 g==;
X-CSE-ConnectionGUID: MoRxESKxQdCx8dkzQWT8tw==
X-CSE-MsgGUID: ll0IGDEsQBCWlZYlxlKvdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="95330772"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="95330772"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:16:11 -0700
X-CSE-ConnectionGUID: ccO4Nhg9R0ykJtIvxzhbPw==
X-CSE-MsgGUID: NZ2O8BQoTCSIPYu2ALw1Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="276860544"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:16:11 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:16:10 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 01:16:10 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.18)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:16:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kigq5vDDO4/7+2VTzid7Gu+aEF5WTITAF/Bxixc5No5usU3o1+Xq7HWj+83G9uGl9t+ZRE8B3770qBrBxf8TS2gz+3f4mDGTWfE9hhG7aQc+8iLf1lx9k5wiY3dCJFx3ODc3g/A/1XniCUSvlVs7TxawDRn9PNJis8tPRAMbqjSiiEV4Yy8fDtrMTDTGc/gnXOgb6Fs/MW4oj77fqf2Vgglzop/1rsdq5VgCE9da5hvtqL+Hyxm+/q9h3ZgooiXOWOu3dMtDWwoOO567kmw+RjZeqQ+cZR9W0dW7ax+j77aVK81UTnnTVVFzgFpprqm6LH8L5JMvcijPN2TKBWy4zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J1RDAkgQgcOCnOExu9vWvVyDxHwlEBxUaJAz2Nz4UC4=;
 b=R3dRXQn88PGfsyGc4N4xl1YkXgEyw9sHEpes/OO5KECCyYqPPy/vyu3eFRkI4zngXpZKzv23X0YVsFbkKEuCqXUgI7SNxI2RMKYSawOPlbUSUNpDVqO4qccDbiJtRF+mTdambk8tOEYl+3p8WsHeh5eOcYE4FNYr4cl3rfziXqgOzdkdWegfCiLSVC6O7HLoLHnLAcM5bpzTdimChYOj20fEfOPFRY0Kj4zvL0qSI+i8AoTDn8q18HJtgyW1FOE/EfcNcbZDGf65hUwQi5yG+A40OAj00kjolPJzdOm05R9NVeAPsFCVKyPi3iQ4Aea88AcHIvtPR+DjtLetKSgZTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by PH0PR11MB7712.namprd11.prod.outlook.com
 (2603:10b6:510:290::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 08:16:08 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Mon, 6 Jul 2026
 08:16:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 10/34] drm/i915/dp_link_caps: Drop noupdate postfix
 from max link limit set helpers
Thread-Topic: [PATCH v2 10/34] drm/i915/dp_link_caps: Drop noupdate postfix
 from max link limit set helpers
Thread-Index: AQHdCW78mIbr29CrrEuoPzW7yOMkVLZgLGVQ
Date: Mon, 6 Jul 2026 08:16:07 +0000
Message-ID: <DS4PPFE901A304F00EAD860D47038AFA67FE3F12@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-11-imre.deak@intel.com>
In-Reply-To: <20260701153204.4124150-11-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|PH0PR11MB7712:EE_
x-ms-office365-filtering-correlation-id: cc039789-9758-4715-3111-08dedb36d4eb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|56012099006|4143699003|22082099003|11063799006|18002099003|38070700021;
x-microsoft-antispam-message-info: 9xKx9SwKyBcwnhhHIHtm/SWZD+EIGbOMmlY74zebz/7eyTfGOmWd0BFMk6bGiK9hMe2Y/T+RjASOrFshdoRVO2mXKWvX60Ps3RQPOPHLINSZoulEgcXOwmnh/jdZIx9bWdX9979d2fifGWQDj0/eSgwN3PmxG+ywmfYpOKMydZXx4F8oqOUsnvBSAlHDVwf9nhqFiVtrkjanoWjO6nrCASzZ9xFgtflq+hAxRVAZYOUmWWFetuNIlTGraKX00ULgC7/yo3onDp/n0v8QGxy930aqmlgmOSkAVfR4hn5HdEzvuNutOhfi3PX08GQ4JgA3h3BWPb2vSxmudgGXykOwx4G1yODJ2Cj6Z63MQq9CdOh6ArFemRinwvwnSzx4nxZrpkvgUqH6PFEXRLkJfw68GgBNhflApSxYj811az8Kv5wA2xvUtqn1cdrDmc6Cskv5bCEWH46hX6H9F4DvVn1sMP+kRp4a84Hc3WwfBL86UBAXOXGXIPHQlJJtCVL4HX7AJj+clPNwLMoXQUrp/s83wS8F5+ycBqX7aejqkACuflV7QV9aYq90HngwhtRi0p3HfVP6213LQeK8Fw2JtA9MG2pULnduviHefFMgPZ/aU8asMfjiwWQaKyzO8K/MWJyMaEs67EkaqPJ2HhDR8PllT57ImXt3sqCaXE+a3n3ASpkgPf+Tjfq+NCmRgZhmVqHNWqUxqvFkA/JmogzUY2Lrys4KXEYE7sAT4tAiUJW2YV0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(56012099006)(4143699003)(22082099003)(11063799006)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WBUCstPzbtIMVI4kFv11assmuF7yrurXeG/dDoH6hldSnMS7rtFlyfXDlCgm?=
 =?us-ascii?Q?gnUDFv5sfH0+fN3PA64T1oFS6Up3rGT7auN5Gx2+KMndc9llQWMHm2t7+mlT?=
 =?us-ascii?Q?spCeUaO7QbuxqTap2rm0RLbRbO/wNiICdZOzvct0UYwmSfS0+tDWNGXibxOZ?=
 =?us-ascii?Q?mEJxpNTvITss3w+hCda7j8JA63UalZMWf9hAk9LopDUU4Dfa3LI+eNUZiQuy?=
 =?us-ascii?Q?zGGIVR9KNeCUZYEJhIHibjVlAtMhsTgTlhJD4r0ogFTa6FOb/16sJfa3HALG?=
 =?us-ascii?Q?ocwAft4rs9jRHG4MlY9u6ZDYNDphMQMLmM48H+7rCI5IgbyzsrqrjI3bAhMg?=
 =?us-ascii?Q?DlMIROMUVGpUuEU6AsAbzTA/7oCeDSQdX0GD5sCrn0naL3/0sGUPOuplJnmm?=
 =?us-ascii?Q?M3Tez8wzS3UnKmQZWu4H+njhica8m6NyFVCEB1LhYbr8AUnZ5hEfg60CLHoU?=
 =?us-ascii?Q?OcGZoBf5v+Xow5nuMn2iacVqD8Q3f0sn1kGD0JjvMfTPazRIpsabZAcTlD8Z?=
 =?us-ascii?Q?oIYIDBB2tyorFIk8Z2qqY/JSFFf3h3OWXAo9a3YO4zPyoHVcBmF18hP/X555?=
 =?us-ascii?Q?Mt2T+sz6r0KkvicQGn9av0/LbHRCmRRnbscgVBBHbc6Va3REAe/T/PDmS3wO?=
 =?us-ascii?Q?BLO1QPaU9enARupTgCitduS4b3gfJubIKAxWj0UZxec4xX2lf0D65DHgwqk8?=
 =?us-ascii?Q?gAZZu+YsNhSIVR0NPjAtrdWO+j3YlVLsh/tgk1CqEJUykFhhYCRBDFKm3gDj?=
 =?us-ascii?Q?INm4ISSObxRY6Nh3ih9dL8KgAlT6eIjEjRIudfYLqUjxP28iPsOjjS9mN+qj?=
 =?us-ascii?Q?6mYGN44aG6kxKE3lsqXGInMjM/13wqHC0Ibc2ZL54I/p4clXmVxK/W+xMjh2?=
 =?us-ascii?Q?xFr8EZ8qd2wa38BRHX9eBWtitU5A0L1wBtZ1T/00zVHbxfaYS4WiTqpE3x8U?=
 =?us-ascii?Q?wZd7hq0s5poX6B6WpY5PFT/Otx/alP6uD7y/FVBPAnkFjagvG9VG9tk5J2AW?=
 =?us-ascii?Q?ApZX/ZvFCB7oKhzt39c3UYvquMBKL46kpRM2S85ozYzb76r3OtYHWGvOYLVZ?=
 =?us-ascii?Q?UxnIuSarLBcQezlWCxkBMgIp83nOQNCcTmyju4s1LYak+ADnEjdKmP2IlBx9?=
 =?us-ascii?Q?3d1wJugyNEouT1ErLKToPgAf48JqvSJWyT183La8sLyeYs2unv6Ont5LcqxQ?=
 =?us-ascii?Q?nXR9YWdlxCrl/TNjCMO0yp34XD1cOdUcPG3Moc+ckSs+brUjDdUPs0gMm8pe?=
 =?us-ascii?Q?ce51QgLeKL/EXo3Ui1brSCy+hImQ4pYSdQXAwYAGwQA3FYoXGPDRYb4KDCnn?=
 =?us-ascii?Q?WEi0AZGs4PK1xeQLtmUPI641QcR24gRnuNb+r8DCY4PSXOGSznUUaJULdQu2?=
 =?us-ascii?Q?Y0cVsQlQHzYy/Ua8UefMCEvtIq6KNDyDXObQb5QsvPssOuogB9WbOnjXxR4Z?=
 =?us-ascii?Q?eJtHWSsJktRNEhKScrJXJLyPmbU8E7uddKIAX8DOO8/n1m06tjvEj41N2po6?=
 =?us-ascii?Q?8q6/hvL//6klkTYgp7j8N0Q6jb0F0IFQa6kj860Rdbh75Vbhg1yxBq0bJPG5?=
 =?us-ascii?Q?B5WaipA5o2/sWDNmfnsSe83E6Kkec0aLo8KAaVmqO9rM+bvvlXQ+sPeVzBQQ?=
 =?us-ascii?Q?JmhogNGyMVYniHb745lASZG/RH/fgnSqd0Rc5Z1sLS5Eibb6BnlXd0CNlf7Q?=
 =?us-ascii?Q?xZDTcPXKaj12r80f+rPNhqqMLwgmWf6c1RtXkVi/98FdN5UGTy90GAk7Wcz8?=
 =?us-ascii?Q?wAKhSXH0RQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: j0radd0b/mRaVjXFOPeTRwoUNqy+2JiCQeuycRGoXMho7yxfN47dgB4En6wKm6pa+TRPnaNF1CQwfzjISpP7KZHP/atHRa6slqnnD3hUW5oMzQYGyIj673s/GYWD87DK5qcj3qkXP/Pq0Za21WEm/bmm7fNSsp8rIX+WvbxgK81pyE07tlTL9mzx6FjhASvP6oSqNjhuR12LGHSUeau/1zRFCz9TRKlaQMrL9/Fjxege/yu0N4jiEQV99v3oJ7vtyEsqJzloWhpoF4n18ShClLVMgbCbXD+KY3u5GcWHrAdn6YNXFX54ip09yVV+tI5AZ6adyTSdHG6Dp5KV452TSw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc039789-9758-4715-3111-08dedb36d4eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2026 08:16:07.9189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MpUzGB2QZAO2PEIpUJEh7VM1t0XcBMVFo5plf5nSDF57ui/oEcROUt7uTD2ReDRG9MTOWfQGJa5+ZvxeaBr9MA==
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4210470DFFD

> Subject: [PATCH v2 10/34] drm/i915/dp_link_caps: Drop noupdate postfix fr=
om
> max link limit set helpers
>=20
> There is no need to update any maximum link information when updating the
> max link limits, so drop the related noupdate postfix from the helpers se=
tting
> the max link limits.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index de520bd423d59..3ef678d47c71b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -545,26 +545,26 @@ bool intel_dp_link_caps_filter_add(struct
> intel_dp_link_caps *link_caps,
>  	return true;
>  }
>=20
> -static void set_max_link_limits_no_update(struct intel_dp_link_caps
> *link_caps,
> -					  const struct intel_dp_link_config
> *max_link_limits)
> +static void set_max_link_limits(struct intel_dp_link_caps *link_caps,
> +				const struct intel_dp_link_config
> *max_link_limits)
>  {
>  	link_caps->max_limits =3D *max_link_limits;  }
>=20
> -static void reset_max_link_limits_no_update(struct intel_dp_link_caps
> *link_caps)
> +static void reset_max_link_limits(struct intel_dp_link_caps *link_caps)
>  {
>  	struct intel_dp_link_config max_link_limits =3D {
>  		.rate =3D intel_dp_max_common_rate(link_caps),
>  		.lane_count =3D
> intel_dp_link_caps_max_common_lane_count(link_caps),
>  	};
>=20
> -	set_max_link_limits_no_update(link_caps, &max_link_limits);
> +	set_max_link_limits(link_caps, &max_link_limits);
>  }
>=20
>  static void reset_max_link_limits_reenable_all(struct intel_dp_link_caps
> *link_caps)  {
>  	link_caps->enabled_configs =3D INTEL_DP_LINK_CAPS_FILTER_ALL;
> -	reset_max_link_limits_no_update(link_caps);
> +	reset_max_link_limits(link_caps);
>  }
>=20
>  /**
> @@ -640,7 +640,7 @@ bool intel_dp_link_caps_set_max_limits(struct
> intel_dp_link_caps *link_caps,
>  	if (!max_link_limits_valid(link_caps, max_link_limits))
>  		return false;
>=20
> -	set_max_link_limits_no_update(link_caps, max_link_limits);
> +	set_max_link_limits(link_caps, max_link_limits);
>=20
>  	return true;
>  }
> @@ -654,7 +654,7 @@ bool intel_dp_link_caps_set_max_limits(struct
> intel_dp_link_caps *link_caps,
>   */
>  void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps
> *link_caps)  {
> -	reset_max_link_limits_no_update(link_caps);
> +	reset_max_link_limits(link_caps);
>  }
>=20
>  static int intel_dp_link_config_bw(struct intel_dp_link_caps *link_caps,=
 @@ -
> 860,7 +860,6 @@ int intel_dp_link_config_index(struct intel_dp_link_caps
> *link_caps,
>   */
>  void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps)  {
> -	/* TODO: Update the maximum link information. */
>  	reset_max_link_limits_reenable_all(link_caps);
>  }
>=20
> --
> 2.49.1

