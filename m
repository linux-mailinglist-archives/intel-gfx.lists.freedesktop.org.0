Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h64pBz3cHmrSWQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 15:35:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1253262E8BA
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 15:35:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="BWQtjn/Z";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5EC010F100;
	Tue,  2 Jun 2026 13:35:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 884A810F0FF;
 Tue,  2 Jun 2026 13:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780407348; x=1811943348;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2rPpcH9L5WAUFLiqn6jiRI0J+U5h2Gx/wMiI/UnTKCk=;
 b=BWQtjn/Zhsbx/UYr27k9Q3CPU2VMwFZKxsWrQEC8JbW+CgWE2PENYHRw
 vUW4bfFq7lQgS7oU+u/Do5juM4obj1/iqRCyWdfbeNMsgojGB0UhbsnVI
 Jgzc8+c2zKCF6AlI3JQx5HhrstZ+yShXcz04XXE7P8gADnfT40Fp4/0DP
 H5SRGSnVYdFPjBEnmzfmAPu0BwgXwL2m9OWtgfkD/8eR9ia4yxk9smujT
 m19+4xLhCBJpGHEugr3mB/BUpmhlCI9KKScsRpGs1oy1n831+By2HW+fV
 MEk+N9RmZOa6K7jKQnIVrSx5rJawUaKhKAM8ZbKl+vWMVAfXrmlFYon/z Q==;
X-CSE-ConnectionGUID: pS/xgS8oRUSgxhvqpSmfyQ==
X-CSE-MsgGUID: TyXdY94iRSqET4YdkSiWXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="106637963"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="106637963"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 06:35:47 -0700
X-CSE-ConnectionGUID: V8nOPhJjR4eXRYgXbe33Rg==
X-CSE-MsgGUID: WQ9ZMo3eRG6577IbrLR41g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="282016469"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 06:35:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 06:35:46 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 06:35:46 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.27) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 06:35:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OwgocGPRFUIJ8njYSf0s43VDec1VV2vSmV8zX3xT2RUKxaLGVVK9jrTNxXf0ORIIsQnLQxMgOgXYyp/uSfPCiMvvRcUZv5eIdMsIecjX10DM3Wx5p0fC1JbCB9XYU/e6V8Q+3g5OntzkG4SU4IUUtYYKopVOODHw0zc/0aVybHENPgsojq4qYWezOTVBlr8QC8lPKVoDCovzenuWYp0HWO1Na/kLY39/nYfKbrYt++p1geaulx4PKLQcloG/gUm/TjAdsuYzAg4MQ7qh/VZ6Tfh2747JcFW/KB3Swve/DYGQsatk6veil5A6lcJAqCs7bwVNgDgECLAHIYdjldn+Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JIDWoTTWRzAW+3JhsGm+K+jXF9qnMzEkh22HMUHaOb0=;
 b=pHcbOvBJhs5jVmH9VkWBdv3N5nurPmu2AYkTuGozPTb1NF7Ag0UYmb8WSAlmI2HFoU77AGQL/E4/lSeBSW6BsvHKzwbpTXKg1htfJ85LIweW65PPz/OVsVrqLFATV/Y9mdelEhhQixKVK74Dm0xX5Elq1GWVQerVlr5loYFk/N1290z5VIKLASYUCq+Sa0uSH7ndVS+KDXyiNz1MLvuq2vKzuCmf1l/gXr6en+djoUEK3hg1ka5yFYoxD1k+3xAYHKXB+yS9lXmmaiKvANngbqi2u+hng70lX+m3vbQPgbJ4c2tPpUHfeha8NI89nupDBKAxirGABoa/P6TV7NEOyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DM3PR11MB8736.namprd11.prod.outlook.com (2603:10b6:0:47::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.7; Tue, 2 Jun 2026 13:35:42 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%2]) with mapi id 15.21.0092.006; Tue, 2 Jun 2026
 13:35:42 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Stephen
 Fuhry" <fuhrysteve@gmail.com>
Subject: RE: [PATCH] drm/i915/display: Refcount for fec enable/disable
Thread-Topic: [PATCH] drm/i915/display: Refcount for fec enable/disable
Thread-Index: AQHc8dNRMfnknTQoWUWsmXcLBW7hPbYrFoQAgAAuq+A=
Date: Tue, 2 Jun 2026 13:35:42 +0000
Message-ID: <IA0PR11MB7307C39641297A08DB4C6A1ABA122@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260601142943.1481728-1-arun.r.murthy@intel.com>
 <ah60jJkzbbw25R-L@ideak-desk.lan>
In-Reply-To: <ah60jJkzbbw25R-L@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DM3PR11MB8736:EE_
x-ms-office365-filtering-correlation-id: 2b33bf7e-54f0-4549-23b3-08dec0abd793
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|18002099003|22082099003|38070700021|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: ifv/6lB1z5j0B7dH3fI/D4F0sIkod6kO7aK3dYAGLcSj3mC/GV+mV9n+nXVlJezcRdTHIt2yQv0YcGZvq325oMRKPlPypDflDcxavpk2vywiEkeivKCyM2L2hQFu/KbgA6c/TdAms8YU9vLDU4MAJJUN1VbRoNiYgm6QhjCqsvwRVgabkc6JRK5gVGoakEP6WGwDH4wgmarljctg9PO2rp+uEIJD0vzYJzep2FjZ0ucChdFENR3H1A7mLbArPIhe6Nz2uMriUTUsvrOhS0MPf6Uezx6/JqJrwAnR/l11zr6XpOcLGw/27GIy3oTTh6fJ5IM9Hs5zjjO1ctTppwQ8z0Sj+wQf0rHwqvo6+tUxPvR9y/RIgydOXh8pyCvVfye5NZip3rHj05yTFO+k2de9uCdul1OFgqo9GShkORJbfh1TYuwK5qtnI2lOMYxPWEGrnay0nJJXvuAR1IHhj8vocK0HqjvUylH4/+wOMPyEFygP+Qr3/Ul8KBVxTZlnQeSIXJKd3mxLOC8Vmq/FDd4ond8Um5f0pHZ1ph1L0Abhwox/Isr7bCM1QxOghCM7LCUsdT4ZCciPZXTbV5OJF9nsCa17givLx9eoW5LffBxwLYVpLKVEScCDrsqDZwCYnKC3mVQD5j+/txjqqGCDppmk1T45vDYUVmIjugIxw57Vu379alMm91z7bMWoOJvvSKpTfovQ3zaTPKmlGDfMO8fS4Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(18002099003)(22082099003)(38070700021)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ljpOzLXCpmmTj6bJHQ3Wh8cLfk+pLR47rzXeaMu0dKK9NfgSRoL21TKVWvZ/?=
 =?us-ascii?Q?R8BqcwlLCWAYW8Gv/1toZvwW4F8cS6cC0U5BVB6SblzcbOEexm8bsNZ1Zb99?=
 =?us-ascii?Q?lpz2d6eJomDi9IkZ4JJQOT0uMU0w9omxlAqUmXC6dz37E5QzddLhHqZaCRU1?=
 =?us-ascii?Q?ERvuX9xMpvQjl8App12g9+sY9I2RGk9fmkqRG1C60LSG+RXkR61lQniIYeYM?=
 =?us-ascii?Q?SYg1v5oOmJYiYI/d5Zxy46/ae3oMAJN5JVlt6JNxZgn6ZazBMcDNkUXQCNl4?=
 =?us-ascii?Q?mQQ0TTiJ/gVrSuC64381MsuIQ5Kj62/gUOYt6ISsTM3vusXQbcowCJXhD4qm?=
 =?us-ascii?Q?gB9MG4enIKhlMcDOvIpmXj+7VIAicr4ogDbB/+8RBv28q2snRztO4arE9UH1?=
 =?us-ascii?Q?d9XpmgURZvbzwfpajX8utn8pLHVPJ5dct1kH/ALCa1JhsvgRuWT+8evF7RzY?=
 =?us-ascii?Q?CjrgfW5/VP18ij9337Q45s0tfexwT8CMUx6W2wkOjfWVzeNz94Xmhkd6bV66?=
 =?us-ascii?Q?zZNa1yvlhYBJsFmJ8FEbwSpFTnQFxRAP8loBvt0zICNblQGaL65LIRbnHigz?=
 =?us-ascii?Q?IDSRy/ofRhdjIwQMjilHlnoBUZkzRKvVNvZnhsig0O7rAhA5EVNbNBAJt/qX?=
 =?us-ascii?Q?j5a2zJ+1mpppxf/4VNDaalEmuhmAhLt7mfcyyhLRKU62HEmuEWjhLEwr7kex?=
 =?us-ascii?Q?ZXHSu5jqfupQGPXCk9BfozIUTHZzQKIwwncUNkamzwp/5KzMCjcSxKG9TiQG?=
 =?us-ascii?Q?u+DzKOtQyfKCHShkCSN5pf87KIbBcOl/Hh9vangN7mAqWJyhQiOY/qZ0/SQx?=
 =?us-ascii?Q?QM2ixgw5rCcVp3vPQz68l3ci1uFdsTx5+dIFhk/uz+X3uN18jTdigVekKfsi?=
 =?us-ascii?Q?82aQO+QAi/4geqqsEwIbdiQLN7p2ezzBgyGkuu1Fe0VoPz//N8ca0KJuGb1+?=
 =?us-ascii?Q?f24/9Z7vPTcAyVCrigCyJ93b14kQ2sJ607m0WR7UemAb0eZZSWcJ8nfKA9yH?=
 =?us-ascii?Q?tvPMbP28Y73g4PYU9UOhsaMzz7XiLKvAyqF68tcZkbsrI6Dhsb2AnyTlMWsn?=
 =?us-ascii?Q?5IX138w1cWBP+/MlBd2B1zl8UQcQNzqci3mYnDUXP34aAJ00CoTUW7kLGwMV?=
 =?us-ascii?Q?oDhSAVjXWONZUccNTkWuLcnne/lLrESwy9IqK1uVvOgO5Faj4OefDKjUb8on?=
 =?us-ascii?Q?xO2s3ZT8J54KQSMmO+xLaEqd7PeQUzI4jBticKTFzRSluHUigDQd5Pe7JkpM?=
 =?us-ascii?Q?8oIrRF0Hb/B+CeIi/lA8ZnNvpQNpquUiR9ACxfKHJNwbfYzqRTbJHX3FxlOW?=
 =?us-ascii?Q?6qx7H5Bhy5MIT512SmXex0nMOW5llTBfAix36HMHNsD64f44tE86vy8lOZ7x?=
 =?us-ascii?Q?Uz7KeeLj7sht3fDlaILM5eVf7XAkPU6VlrnWJCTEXeFdDlsppMe/VZ/b4sGl?=
 =?us-ascii?Q?t7amB+keOIIErqlIFViwzWbhdecuDGREvOgKY6bR681lzqArTL6cg6W2k+vs?=
 =?us-ascii?Q?DKugBf3DIF0fKanTjEPWrjcOt04nVxfICEj7GZ2aT+Loge472K9PIzWawYuV?=
 =?us-ascii?Q?WOxeEESry9YgE11tTlGwViRyTH4rk5uY0S950tsoNymmK0yuaye95hlwFhGT?=
 =?us-ascii?Q?I6DUjuUFg1ZGKQPoFGwzB3rby4lU0f6H1u79EfyHv+qQkf7TgDwGwIgWOiYo?=
 =?us-ascii?Q?ZSFG/c9rvknprfRvXhppzYLN/Acpd3BzBJSGqxD1VTKHZ8vP1TLRAbNcutfS?=
 =?us-ascii?Q?DGSxlkfDNe2l7gIDVnohu2q9NyXDVVkPzhfkOOxtSQNrJZBk5vFa5bb8oJqP?=
x-ms-exchange-antispam-messagedata-1: OnhUdbfljD75yQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: s405RZh9OsdMAijAOQKtcTnc2p31Kr6obg28pYdDrMA60suH007szBGScjGSwdH5JhwKhD2CmmI8Z8Q7mRDXap+TQGfPs4oNunFWdMGHcBMQ8R1osUTW5Wfk1DKk0inM3Y1MrbYhNrwCQ2P0svotW01NbSgkW3vY0dLFjAZdXWeuK/p7n7eoubT1CUJ5HGJ9MS7mikL4q8zXC4BPLhCmjLeIX+R9ViCvyt6zZIC1AzrXfC2DZv6oBCA+jjS9UuCSDvps0GjSizs02jXek4X1p6Fa4SVwP/U221STaSnuznI1gpxYfnJsTg00eX83Q/SV9o0yUBliejLqG8BiOvF4JA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b33bf7e-54f0-4549-23b3-08dec0abd793
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 13:35:42.1454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1lbiEau9XwGI1Jq6ca1qJf2B1fJWbCdzB9U2+4HbBZbewDue5zdZAvdFYScVF2LD9JylriTq1bHnP/Q0igNQNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8736
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:from_mime,intel.com:email,gitlab.freedesktop.org:url];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1253262E8BA


> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, June 2, 2026 4:17 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Step=
hen
> Fuhry <fuhrysteve@gmail.com>
> Subject: Re: [PATCH] drm/i915/display: Refcount for fec enable/disable
>=20
> On Mon, Jun 01, 2026 at 07:59:43PM +0530, Arun R Murthy wrote:
> > The FEC_ENABLE bit is per port basis and is enabled/disabled on ddi
> > pre_enable and post_disable. This fec is shared across the mst streams
> > and can be enabled per stream basis as well.
> > So have a refcount to track the usage of FEC and then enable/disable
> > accordingly.
> >
> > Closes:
> > https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16073
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > Tested-by: Stephen Fuhry <fuhrysteve@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c      | 66 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_ddi.h      |  1 +
> >  .../drm/i915/display/intel_display_types.h    | 12 ++++
> >  .../drm/i915/display/intel_modeset_setup.c    |  6 ++
> >  4 files changed, 85 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 86520848892e..e12a3d6d6a67 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -2096,6 +2096,47 @@ void intel_ddi_disable_clock(struct intel_encode=
r
> *encoder)
> >  		encoder->disable_clock(encoder);
> >  }
> >
> > +/**
> > + * intel_ddi_seed_fec_refcounts - Seed per-port FEC refcounts from
> > +active CRTCs
> > + * @display: display device
> > + *
> > + * intel_digital_port::fec_active_streams is the per-port refcount
> > +that gates
> > + * programming of the shared DP_TP_CTL_FEC_ENABLE bit. After initial
> > +HW state
> > + * readout (driver load, resume, GPU reset takeover), the persistent
> > + * crtc_state->fec_enable values reflect what HW currently has; we
> > +need to
> > + * align the refcount with that so the first paired disable doesn't
> > +underflow
> > + * and the next enable doesn't incorrectly skip programming the HW bit=
.
> > + *
> > + * Must be called once after intel_modeset_readout_hw_state(), before
> > +any new
> > + * modeset commit can run.
> > + */
> > +void intel_ddi_seed_fec_refcounts(struct intel_display *display) {
> > +	struct intel_crtc *crtc;
> > +
> > +	for_each_intel_crtc(display->drm, crtc) {
> > +		const struct intel_crtc_state *crtc_state =3D
> > +			to_intel_crtc_state(crtc->base.state);
> > +		struct intel_encoder *encoder;
> > +
> > +		if (!crtc_state->hw.active || !crtc_state->fec_enable)
> > +			continue;
> > +
> > +		for_each_intel_encoder(display->drm, encoder) {
> > +			struct intel_digital_port *dig_port;
> > +
> > +			if (encoder->base.crtc !=3D &crtc->base)
> > +				continue;
> > +			if (!intel_encoder_is_dig_port(encoder))
> > +				continue;
> > +
> > +			dig_port =3D enc_to_dig_port(encoder);
> > +			dig_port->fec_active_streams++;
> > +			break;
> > +		}
> > +	}
> > +}
> > +
> >  void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder
> > *encoder)  {
> >  	struct intel_display *display =3D to_intel_display(encoder); @@
> > -2413,12 +2454,22 @@ static void intel_ddi_enable_fec(struct intel_enco=
der
> *encoder,
> >  				 const struct intel_crtc_state *crtc_state)  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> >  	int i;
> >  	int ret;
> >
> >  	if (!crtc_state->fec_enable)
> >  		return;
> >
> > +	/*
> > +	 * FEC is link-wide: DP_TP_CTL_FEC_ENABLE is per-port while
> > +	 * crtc_state->fec_enable is per-stream. For DP MST, several streams
> > +	 * on this port share the bit. Only program HW on the first stream
> > +	 * needing FEC; subsequent streams just bump the refcount.
> > +	 */
> > +	if (dig_port->fec_active_streams++ > 0)
> > +		return;
>=20
> This doesn't make sense to me. FEC is enabled for the MST link and if it'=
s
> enabled then fec_enabled is set in the crtc_state for all the streams in =
the MST
> topology. intel_ddi_enable_fec() will be called only for the first MST st=
ream
> being enabled and intel_ddi_disable_fec() will be called only for the las=
t MST
> stream being disabled. So I don't see why the above refcounting would be
> needed.
>=20
The  logs mentioned in the above listed gitlab issue shows mismatch in fec =
enable/disable in the MST scenario. Hence added this refcount logic to over=
come the mismatch.

Thanks and Regards,
Arun R Murthy
--------------------
> > +
> >  	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> >  		     0, DP_TP_CTL_FEC_ENABLE);
> >
> > @@ -2454,10 +2505,25 @@ static void intel_ddi_disable_fec(struct
> intel_encoder *encoder,
> >  				  const struct intel_crtc_state *crtc_state)  {
> >  	struct intel_display *display =3D to_intel_display(encoder);
> > +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> >
> >  	if (!crtc_state->fec_enable)
> >  		return;
> >
> > +	/*
> > +	 * FEC is a link-wide property and DP_TP_CTL_FEC_ENABLE is a per-port
> > +	 * register, but crtc_state->fec_enable is per-stream. For DP MST,
> > +	 * multiple streams on the same port share this bit. Refcount the
> > +	 * active FEC users on the port and only clear the HW bit when the
> > +	 * last user goes away, otherwise tearing down one MST stream would
> > +	 * disable FEC for sibling streams still using it.
> > +	 */
> > +	if (drm_WARN_ON(display->drm, dig_port->fec_active_streams <=3D 0))
> > +		return;
> > +
> > +	if (--dig_port->fec_active_streams > 0)
> > +		return;
> > +
> >  	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> >  		     DP_TP_CTL_FEC_ENABLE, 0);
> >  	intel_de_posting_read(display, dp_tp_ctl_reg(encoder, crtc_state));
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h
> > b/drivers/gpu/drm/i915/display/intel_ddi.h
> > index 580ecb09b8b6..3678c28a0dc9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > @@ -78,6 +78,7 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder
> *intel_encoder,
> >  			       enum transcoder cpu_transcoder,
> >  			       bool enable, u32 hdcp_mask);  void
> > intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
> > +void intel_ddi_seed_fec_refcounts(struct intel_display *display);
> >  int intel_ddi_level(struct intel_encoder *encoder,
> >  		    const struct intel_crtc_state *crtc_state,
> >  		    int lane);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index f44be5c689ae..84bd0d993197 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1987,6 +1987,18 @@ struct intel_digital_port {
> >  	struct ref_tracker *ddi_io_wakeref;
> >  	struct ref_tracker *aux_wakeref;
> >
> > +	/*
> > +	 * Number of active streams on this port currently using FEC.
> > +	 *
> > +	 * DP_TP_CTL_FEC_ENABLE is a per-port (link-wide) HW bit, but
> > +	 * crtc_state->fec_enable is per-stream. For DP MST several streams
> > +	 * share the same port and therefore the same FEC enable bit. Track
> > +	 * how many active streams want FEC so that the HW bit is only
> > +	 * programmed on the first enable and only cleared on the last
> > +	 * disable. Modified under the modeset locks.
> > +	 */
> > +	int fec_active_streams;
> > +
> >  	struct intel_tc_port *tc;
> >
> >  	struct {
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index e88082c8caac..14f038b8ef81 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -950,6 +950,12 @@ void intel_modeset_setup_hw_state(struct
> > intel_display *display,
> >
> >  	intel_modeset_readout_hw_state(display);
> >
> > +	/*
> > +	 * Seed per-port FEC refcounts from the just-populated active
> > +	 * crtc_states before anything can issue an enable/disable.
> > +	 */
> > +	intel_ddi_seed_fec_refcounts(display);
> > +
> >  	/* HW state is read out, now we need to sanitize this mess. */
> >  	get_encoder_power_domains(display);
> >
> > --
> > 2.25.1
> >
