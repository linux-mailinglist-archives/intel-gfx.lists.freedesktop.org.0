Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kAaEAR+NVGrnnAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 09:00:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 532D2747C1F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 09:00:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=NpstFBdx;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE52E10E56E;
	Mon, 13 Jul 2026 07:00:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D11710E56E;
 Mon, 13 Jul 2026 07:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783926043; x=1815462043;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mELT3U+iFplRK6sQAz8RBERPAjvRv9dFnKvGZSBjHQY=;
 b=NpstFBdxPDiltr7WH6+oq+Dotqbsp08UzUPEX7jU/XlxBR7OS+BGHp/z
 uVIE8B9wZERAcmXDgWpbS1K543LOlODXlFJck50xd0/GvZynoLHnoKTC8
 CCaaGNODET5VPrVs6a0BO4r+o0/LrCAS7R+i9rdrmLIPR05b4AnmDBHBL
 csC/hHStyjpATXI7lmHY/2osR5E1u/mT971cg9iWcHFSH3CuN6Fgujmed
 3q0EQ5HnPeGWzOUY4C1QAbENNKUVW1D2WeSs5fgCTzamuaqRhLYq3ZbuL
 SHNC9Mq4hQDKH1PqA9wv//dRQVAxv67ZSmyAUmO7+kykgyH9+5PHwzku3 g==;
X-CSE-ConnectionGUID: /EhWuMRBSeeL1PFhf7em0g==
X-CSE-MsgGUID: 82V49yXCQPa4F4e4GQ0LgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95128105"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95128105"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 00:00:26 -0700
X-CSE-ConnectionGUID: pCpj/QfdTA2YoDo6wGFaNg==
X-CSE-MsgGUID: dq74EWKcRWu7uiYG3EFG7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="249101471"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 00:00:26 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 00:00:25 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 00:00:25 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.57) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 00:00:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VkkO6l5H3AWX1VR19TaP64isnCadSH1564CaXChdf4HrDxQrC5DhBL8xVZ3c+1nW9gB1OIytl8SrQtdA6VSHa7dRjH0Gc+jsRZh1f2Mkg/xDffYExRsY6oRBLQWZacjChVqCKWA/GOU2Irb29Zoz/7PRE0akAj662wBsRShW/xJetWy52I00EO32FQKiDP8lNRzGVnIs4a26NkTwjz0q7XSRCw2FMXc4WWFM+LYZpUJwJTLCz/bstuaNNhArAyKdtAdOtgfgHptY3WYjjnJO+FU1uXHhDDrodMKgj7ioH40H/H74DSa8fOsHg1xTPYXVYFM6eQdo1T1PuiWWP6fx7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oD+v5r/wmKWyqtFGOMwHiGxaj3ZLSo8bJq7mTC47t7w=;
 b=AgBunis19A0wo7uht2+l8HZksMm6e8FilTuR5tat/+jCI+jo9ON703VJmlLZ7dUss2R7oahAwBqH7i71k/BbjrTYa3hkC9Z+w3CBoxh+JN1R24CzkpQPvQkoepJ81bzZTKgCZPXTp/Dvmp54CcrHo0isfoCVVPFFrJ7NUI8WSa1dhGDZQ+nb0zhfDA1BehebhpFH/2pZH1ZYStYS0JMKZp9rtHIAw6jtRUYCHHB9jnvzL7WQ+5fDRKuZ7AEpoW4s9Fm12uSb/2VhfGr0v8ouzkHd/voJMRsE6300OG0ePh55qtsjsZnJrF/8+jT39ffRrK+7NKbZxVgOoFIZcD0fpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by SAWPR11MB9711.namprd11.prod.outlook.com
 (2603:10b6:806:4cb::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 13 Jul
 2026 07:00:24 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 07:00:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 6/7] drm/i915/bw: avoid replicating the
 update_sagv_status() calls
Thread-Topic: [PATCH v3 6/7] drm/i915/bw: avoid replicating the
 update_sagv_status() calls
Thread-Index: AQHc/QZkuGccirsH7kun7lJeXMF8ObZrMCmg
Date: Mon, 13 Jul 2026 07:00:23 +0000
Message-ID: <DS4PPFE901A304F3AC377EF6B43FC102A64E3FA2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
 <20260615203355.218578-7-vinod.govindapillai@intel.com>
In-Reply-To: <20260615203355.218578-7-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|SAWPR11MB9711:EE_
x-ms-office365-filtering-correlation-id: 4f237e04-525e-40a4-44d2-08dee0ac695f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|6133799003|38070700021|18002099003|11063799006|4143699003|56012099006|22082099003;
x-microsoft-antispam-message-info: nLSSUJymwwAAzyGtXMgLlBh5sA5s4IFp7eSpdzIHhDpGDtSyDO+zGbRqUOrF/FxJvsTC3M2NldFlnmSGR1RxxCA6j7GeK57tk9f6Dy0sdirTbrrCFhTL0v+Noy/Lk+uRqOAvToaPyIvkBUU87mfmSDyjDZayPTG1I/migGOHTmkPbEIzgo/XXvpO8h+rnPl2VEjhtQ/dPfswGXQ3xmwyqtlbubve5QaR8lJtcnetNrEUBNPR4hL2b5t6xy1m5Cb0xpFgO3T+sMJtt+NVDJhLMsGY4Vxm/FaYSTmj/lsJ1SVGFn7bV0+8rKXa2tBLp9aERSSYOUZcZKeTTNa391lBtc8k8/ZI0Xl2XIZPKNkI+uKKymtGm4UHokSRZBwFhbGnhxaUprrJv2kRzeEgqZUnZR5O9RPagIjaQDRd2ZWDr0yBaYecV5dqJWy1V/a6KhXRDH+Lp6j+2UX9/qy10skSsg3AVB8e+z+xcFSyVPW9cNJozBruUdIoOz2PkXKdnRG1fGCZajQzc1WAc74esABN2y7L/uqUI31gXlbdpBo2l23Og3PaClUFtcZOA+hcnpUybMp9IFu3BsMUYQkjBqK8XMZPgh8SXPH9hSf/cQjVkfVxb8E3Tkpu1kUdC+QSTjX8dm3UxSsmAWjpY2RcM4hOmE78zW2wS97cea/O1TTQptTCzN0KRDfavKkt3DMerur3+T/tYgqMMMRbV2PIGvuKznoOSXHGwwAskqS/KrQZcxY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(6133799003)(38070700021)(18002099003)(11063799006)(4143699003)(56012099006)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KKLzEU2Z03qFML/9gjNqeOYXsWT9DiAV1omLbcgkx0FwqFIiootpJ2EriuBn?=
 =?us-ascii?Q?QsTrRN7wlgon6PHmRRKuPm2lcKhVEYVFdYbAcoo4pPXDtocmVIiSXQKy4FCG?=
 =?us-ascii?Q?r7jd3hWkfJu90UtxnTZnBJ5z4FsSqkw3LMq9xsWU/7DKcM8FM/mUlRf/OmRB?=
 =?us-ascii?Q?TlxTTZZIOgHI8AO6zAU1QfUVdPdRLuljGa1LxPudFhjmMTAvCV+mh8DkEwXd?=
 =?us-ascii?Q?pFfT/NmYcgDuCAkGgTUQvltaFE79MBbREK7Cq0h6TcyJrkHKVH2EyefEXbBk?=
 =?us-ascii?Q?D/lRyAIlVFng/wZLQaasH1Qu83xppIFjlWJSm0sBKludfkwPCQbY9UGhigYy?=
 =?us-ascii?Q?pM4gs7hEg6zGinsBd8T1zgudBZgwO8BhyyjYmPgdMPissWBulJLDIfekzuMx?=
 =?us-ascii?Q?diSMiMS53mAPSUhN6pXIo5yVUyheSwnPqYf1QJwgIK7HjpreChV7yiBBIx1f?=
 =?us-ascii?Q?ZVqq2N0ki3x/eUTwzWTdYwW0KyXbjc2Ie/aE9RrmyPBerVL3PD/kbRfyVYZd?=
 =?us-ascii?Q?k1YhZVr3qjyuoPl9l4hK9QKgVTNwu0k2EJzMn9IrqkheRCEV9+rjQfkdlof0?=
 =?us-ascii?Q?Wxj76Pvr6oXPwlJgyBdVmI0jEMkr4deUaV9aP8Vy2lpJiYVa6V4j4wMMzaym?=
 =?us-ascii?Q?fG4ZyUOK8eSQzmjqROIPY3I8WvqEwBFO7/cOoElO1z2KFCVh1DgU7yu7PUUB?=
 =?us-ascii?Q?ZbKp4amiRRF0dk3ZTlczacKYYctXFzKumKiz12LlKcdXhP2LVF6p2PM9ETqb?=
 =?us-ascii?Q?dTs1HSo4mtnknmJ72fpZUyx98B4JMp5scbk2vf0IWyTv+aKnELefeNJNc5dv?=
 =?us-ascii?Q?sI/HH5wMocFJfq5IaEqD+SNPcnM1IUP8a3F6ZT5QgVH9FH8+Geme9i/WTCVU?=
 =?us-ascii?Q?kYk1+AMqYgCxL2Rqau9fr7BKT9GU7d7ouOeI1wNCKjfqJUWg65VyUqtufosX?=
 =?us-ascii?Q?XunjKIwMLo+wVSQoOfR/rN+WQk9Rp9c45imp4toOPa3D8OUHDocjTHrvjh7Q?=
 =?us-ascii?Q?hsi6QqFeUeExf9RagqWu2ueTBUUUR0wyPlPAhRxNJx6XuOua5oFXsk0QnVMQ?=
 =?us-ascii?Q?4hgq5QSprwqfQ8aeQLLrDWFuhoAWI2gxEzrs8QDrzJLW7Ujc9wigLDSyR87Z?=
 =?us-ascii?Q?gF76GOLrYkKfYZEGPL7PZrfZZS5rws3ZL0FzV87KIlet6V4dvVOeiy5yMd8P?=
 =?us-ascii?Q?cClpHtW6WNLVtUOK2rnwcAUqKnjf4TSeJ9jxXS0USMbhEHfFVpVSNDqtXHGU?=
 =?us-ascii?Q?YRRZ6KG9Uno/1rme9NblYRe9kwETDznEri856rrnFtjn/L0dw49h7TrNqnVO?=
 =?us-ascii?Q?DRlYoiRnTAB2CPZpPEiBM5KZ9eMKYHOPs+UsJqlibDiRbbQ70UDBE+rIW46W?=
 =?us-ascii?Q?LTdYcnDIN0Nn3BVkeQMTFhRgYG2yly8wcmpricXJHa6l/r2AAoosXePqRcyO?=
 =?us-ascii?Q?YMTi03eW5G9yG8G9CPvTc7i2rIlew3m9wIezhDaGh1lFBfN5OQR/ZpzgSaPk?=
 =?us-ascii?Q?Mhm0YfYjnyarzJ4jIINQnZ3BT5STp+kMfltW9ka6N4Sc403wJbeYRabBBb8U?=
 =?us-ascii?Q?m91uk0koTEk1O9KVzyI1LA9FPnqa/CBhhthqkiZjn2albqxKZJAzhDVyPmSF?=
 =?us-ascii?Q?WKZcnBFtuzFqZ77i4cfUoZB16ZoMW/Ilj5ZEqDeP+S7uuWWZkCeC4Kh2jQ/m?=
 =?us-ascii?Q?hVTgvGNqjjKREUAo0O7FW8NOAPEX8BhU+FEabJYPEiHeDr4jlQgJlCvUMmUd?=
 =?us-ascii?Q?Nz7fDMHHTQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YzO22rI9bPi9QUboYq6/oXG20L/oZKG8LX4ECSPRy5dQP+LRPOLUMFY3s6Cs5EtvHbigLN0SxiueGe33eURzSD8DHDgA3GZKKmBxxdcxoXg/RFyl0uc+d+F1EzZ0KIgrdBNRzU0zWVaaJAtYCPFWUiR9Z1kbvGIbDfCFpXg61qkXHl9e6WeBQyzLjy0ish6o32vQ+1lFD+cy+LTK4fjo/svkBMEx3NaNFfqpRg2W8GJIKMuAxuPrLi+dgBCxte4p01tL/Kinut7uXMn/aDyJZk1L4QSFbHbsAzvcVKax2zsm7VTFCYJP3ggb394Q4X/XsTaLUnvMIl3a6ZoSre5v3Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f237e04-525e-40a4-44d2-08dee0ac695f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2026 07:00:23.9652 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QknZh8JYUCFXfKfBjy1xS+4tOn+kogjCtK7hR3zXYpYQ8xmjff7MTeAi8SVFewJKDeTZP7RtmMUvLZCcm4tQXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9711
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:dkim];
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
X-Rspamd-Queue-Id: 532D2747C1F

> Subject: [PATCH v3 6/7] drm/i915/bw: avoid replicating the
> update_sagv_status() calls
>=20
> Now that sgav status update is consolidated, need to update the sagv stat=
us

Typo *SAGV
Also acronyms in capital

> based on the number of QGV points only once after bw info initialization =
is
> done.
>=20

With above fixed LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> b/drivers/gpu/drm/i915/display/intel_bw.c
> index 0d89f64db848..db2ee9de5eec 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -593,8 +593,6 @@ static int icl_get_bw_info(struct intel_display *disp=
lay,
>  		}
>  	}
>=20
> -	update_sagv_status(display, display->bw.num_qgv_points);
> -
>  	return 0;
>  }
>=20
> @@ -705,8 +703,6 @@ static int tgl_get_bw_info(struct intel_display *disp=
lay,
>  		drm_dbg_kms(display->drm, "PSF GV %d: bw=3D%u\n", i,
> display->bw.psf_bw[i]);
>  	}
>=20
> -	update_sagv_status(display, display->bw.num_qgv_points);
> -
>  	return 0;
>  }
>=20
> @@ -726,8 +722,6 @@ static void dg2_get_bw_info(struct intel_display
> *display)
>  	/* Bandwidth does not depend on # of planes; set all groups the same
> */
>  	for (i =3D 1; i < ARRAY_SIZE(display->bw.max); i++)
>  		display->bw.max[i] =3D display->bw.max[0];
> -
> -	update_sagv_status(display, display->bw.num_qgv_points);
>  }
>=20
>  static int xe2_hpd_get_bw_info(struct intel_display *display, @@ -775,7
> +769,6 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>  	 * battery and plugged-in operation.
>  	 */
>  	drm_WARN_ON(display->drm, qi.num_qgv_points !=3D 2);
> -	update_sagv_status(display, display->bw.num_qgv_points);
>=20
>  	return 0;
>  }
> @@ -876,6 +869,8 @@ void intel_bw_init_hw(struct intel_display *display)
>  	} else if (DISPLAY_VER(display) =3D=3D 11) {
>  		icl_get_bw_info(display, dram_info, soc_bw_params,
> display_bw_params);
>  	}
> +
> +	update_sagv_status(display, display->bw.num_qgv_points);
>  }
>=20
>  static unsigned int intel_bw_num_active_planes(struct intel_display *dis=
play,
> --
> 2.43.0

