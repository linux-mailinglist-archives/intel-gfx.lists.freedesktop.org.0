Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F+DWDmChTmpTRAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:13:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A5E729D0B
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:13:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ix9aGWe5;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B601010E664;
	Wed,  8 Jul 2026 19:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48AF910E653;
 Wed,  8 Jul 2026 19:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783538011; x=1815074011;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7wVtxvBvaG6iWQey9sT3bXmspZc5VfhF8T+vMLu1wcA=;
 b=ix9aGWe5wn1s7vkl+GH+doLRTy3ReOZoUo9cSFSOu4awTHD0mLr/c4YN
 N9PXNZBNUABeRjNBC63PEM8eFsK4Ji09Zvnr4Ou1H5CZEz+GOvfcEpYJZ
 sfEeCxo3I6W0R6wDMzYzSZaBdDEo3WTANJd0BSlxbd67HM/jhJmvSZcms
 30S42VIPTBYgafFgcq6hM5nsvp8ths4FUudpWGnQWQvaE2xzd7cRM0y+J
 aWmPtk+FBFbj/VxBhDTXfSyuV4S1mDJvenyYn/PhS+CqcPlDid+xsE/Pg
 siOlVHnS/+S6kFGdPSbazeARYhfIu/1kQ1xQg2V+e6MzhvKnP25AmfHMd g==;
X-CSE-ConnectionGUID: Hwu7MP+gTdSiszLATQRQEQ==
X-CSE-MsgGUID: QxXG/hGlSUmw0o93PcUQqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="86758192"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="86758192"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:13:31 -0700
X-CSE-ConnectionGUID: +EPkxsdFSd2JEZ7WCtB13w==
X-CSE-MsgGUID: boTn15IjSfG1lFF1bJC21w==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:13:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:13:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 12:13:30 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.38) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:13:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NbFOf6HhofV8VTqMnnHSFL+qfUj3C9/yAczMI4yZ8Llc9ninVTSVBnoMgKHPIY9UByRj5DI9yJ3jfcKAWkv2T7oSCno73zQ+vWm6SltQuoP9PZfkEtRyIf77OmfM5x3LjZUU0fgFABv2lN6M+q5gcHz9YxhLkm9wSXU6qmuZp+AgrLCYFs+59rPrMtiWM7n9KY77TIT+BNVKxKBRqMj01bMZJ57tg9XNncNTqbkTJqgSQPPD3WaTEB/upN3c5XwRFpiJSQLTmpwvbiB3yxLmJaDv5d8TzuaHYv7czgUVDXxsyet4a9UI+oDSdRk4wEwdLf2Y8frjITyOe4JrRF89ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yt9TNW9JbWPQPy1dwSEQjWR9Gm2w4W/j3zVnxuYTNVg=;
 b=hHLZxYO+TPl1vjUpeqBFqTW2D8eIgWDukO7A/QKNtCLL0t80QWFmYCJffIYddl3rh6xGkC8IhAJfXuweyZ7ashjnqbGDlR/Zk+0Sn+58ehIQGkXHR3+OBULox+NOYRQ6fOiTSQORs7EEYk706n5gsy2PlyAqY7xcPNB/KHouUKKNYAFc4Ve9eVcrEm0SgipM1e0HeAQ9IAWITjRK4OpQ0wJNUXCfIFOHF8HDd4o0k7T/MXoN4oXo8YN/7SyrkpU5RdtUCZEDeEL54TGqmGLC+l4O0uD7InxefSd05xVfDA2r6ckxwne5FFSJzu4AtjldTMp9SBLKNAFFs+3Ezt3kIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BN9PR11MB5242.namprd11.prod.outlook.com (2603:10b6:408:133::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.14; Wed, 8 Jul
 2026 19:13:27 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 19:13:27 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [v3 09/14] drm/i915/color: Add support for 1D LUT in SDR planes
Thread-Topic: [v3 09/14] drm/i915/color: Add support for 1D LUT in SDR planes
Thread-Index: AQHc/j0t6clW1nB0eUu90zw0ye0nnbZkHyhg
Date: Wed, 8 Jul 2026 19:13:26 +0000
Message-ID: <DM4PR11MB636071A8075E1B57CC01FFE5F4FF2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
 <20260617090819.1735153-10-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260617090819.1735153-10-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BN9PR11MB5242:EE_
x-ms-office365-filtering-correlation-id: c1101167-df01-4326-e435-08dedd24fd13
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|56012099006|11063799006|18002099003|4143699003|22082099003|38070700021;
x-microsoft-antispam-message-info: l5zU2KwWLk3+O/AfUnGxnOymUzklokLkglnTmu9DimSkVZ9LzkXNb0K3RYT2YpTg8BC4pfTIXhAa4TwvP0C4JVa8UdfjJhm/Z2YAakiR6V/fjJduEBQTeT1fMi3TtCspzQBAN2mmeKDDjbqUM26/M32qLmsHa/UkdFjBRzwf0PL0kiou8DlnOX8oMBZr4eaUC+OjQZ3r8pIqs0GN+jWzcJw8vlV8+JHSHctwKC4MCdRbctxhso3m8RAmY40hks6EqB2fayLqZLQqeefFSCZ6ciKmcusA08B5hRdIVv6GLRAaX2VqFuEVZEfaYsuExOzhPfrqx+b7ktNZUA+BX7pOx8a1BT8PvrflZ+fvOjxrTNDAGEjifImBskPum+cu1Y2ckDIN85oNjDdvSJFckAtxlGuVIdysYSg+IXGCBeBsRlT5WPAojR18cvRIYgltlXzUBL9Yu7EAyOzoxjTMle7G3HZkxievvTrlBSSXPfa1ZHyxnyS1vHnzTYoZsUQO5CL2tX5es2ZzKXMkWdEVqwIh7nlct/zKbfPQPSVdt2q/kvvSfBIvmVx3HGG1/nTO2JqAEjSGYM56hB7Fopo9nkkp3SbHHvUpAihWqsk0cSp0j/mKsG7NtL7mD7XxTlvikoRQ2jZqpw9kA5SAgTe4Xi3NY6uyvSMzfPQL2J448kcc+dwXcRJnMouiOtcccqisoq7EKngWLSnKYio2Ct95PpnporiPo/cIA0CfW4APBAPdcZw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(56012099006)(11063799006)(18002099003)(4143699003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EeHjyrK7bDJvs0ekz7WOWaYSmON4+He5pVle3lt8/yMmovQOzNFgu0goOVBp?=
 =?us-ascii?Q?k5lK0eaxMg4RpGg0KIXgrxRd9z/h60JipfMOf0WO4N/qWcGOm4u27SIW1wNp?=
 =?us-ascii?Q?ApmTkLxemhDAzMIkJH/e98pcaQ4wVjdTlRe06ibMscucA3pyOS03pEqQVQRl?=
 =?us-ascii?Q?cqIKC7EkJvoPnQJsYLSgmGImu1rd8Ea8KcvzirCXhB+gRgaed65zd12w7Egq?=
 =?us-ascii?Q?OygLDxMYSdRlUuUhltLlHAc418d/j+LbP6Jpm4pvPGSmPkPnZ1Dwt65h/HHl?=
 =?us-ascii?Q?uWPu2Px7Uu/T70fVFuQUDr2+DpehnPV7MNhfAit0WPlyWwbUzh8DjlkOUn+/?=
 =?us-ascii?Q?ER4M4FSSOHmhRdZACllIqKcbGbnMNAKMvAN+FWnejMLHfgCSv/JDQ164ay9p?=
 =?us-ascii?Q?0T8lNXeJ3KawLHhhABzDs36vEJBik+DJObSyYrdmTYTzyoK9kQL1YVbTBSzQ?=
 =?us-ascii?Q?MKKjss6bqsqzI5jPN6L+aqzHrZnYQhqQBKSFvn4y9WAbdxfDenVfOT/5eBqO?=
 =?us-ascii?Q?GCmKJfj7omecSd3KHILSkE/BN2/mRwkubsc7hn31+nW0IFiuz39h6d7uFnoc?=
 =?us-ascii?Q?+6HZWxIuTu1dza+j7W76cdlKO+D5zjmzgEwPzHFci085gwAEZr3DK8tvp6rY?=
 =?us-ascii?Q?uHwAJqu1/Jr7E3lLJsW8RL7pXi8w/3QzxHxeVsPFJLBZ5wmezQy0abwdYOdf?=
 =?us-ascii?Q?vN0b1OcjP76e8MgtmfMA5DQYtwznGQriA+czLffQT5AbIIioBBNRyGTR25M3?=
 =?us-ascii?Q?G/E6gu1TzTyl986OJUDzxYnMGRZMWUf8pPHhjrjFjSG0LIBFrhNUaGrufEA5?=
 =?us-ascii?Q?/n5v2CsXzmzJr4e6nT0wYZwnw87V1iw5BTb9jQeNboFl1k2iiwzbgqUfu4tJ?=
 =?us-ascii?Q?/svx7fxh3/hmhXUKgX1s0EF6Od+UKCI1Dqq5ghHf2X3vm8jJYSyk/KmzVpk/?=
 =?us-ascii?Q?+UbC13Pf59xReazuwKBCHczkLY/lbQhiKgM5oiTeKSEkIpHN0nXURnslNnaw?=
 =?us-ascii?Q?4YoyW3WatrsmatrrnIGkEr7jy7Zar8z5bvplorht158Wk6IGbk07PM1f8x3w?=
 =?us-ascii?Q?Jkfg/yjGmsuplTy51/7icUwF2OJ4oRlu5prc+fWWzvvnV8pV6BnWXFSxuDgg?=
 =?us-ascii?Q?ncAZJIruSJmV+L3BaHwSFxRiZ3TFFNQD5H1AqAHzKQZKsxxEBUCQdKG9l+ug?=
 =?us-ascii?Q?ZY7uDmtVpSVqBbz1nC6c5tQRArncdE5vYS5/aTB/sridoXI/rMpigxtfjofN?=
 =?us-ascii?Q?Ph6grm7ne4gIT0FsDJyx+GMu/pPdYspFF/d4WcIjHcCZVhCJnq2LSAMUICAd?=
 =?us-ascii?Q?8oO03VNf6BX0aXuiD6bJcDZbhJVqfyyQGuSqdLJjRbGtQ4IDeIHxHczyvGHr?=
 =?us-ascii?Q?c6BRGbBUaEjzo8u5GDm4249An595pjwOj4GimWA6AumIQ2yvN+plnLGQaE4l?=
 =?us-ascii?Q?S5Ym6DYwGFzQ1xcG3EpfHvaiGKo8qd6zdRwtUt46YrK+wQHzEBNEj7zHLYru?=
 =?us-ascii?Q?ChRAMXQ133sp79rGQfy2/c0Ujbt8MvSYBwl3TQ1R9FKK/2GWwr+36RKJYGzd?=
 =?us-ascii?Q?Aj/bvdBmtZDxCzLl7DZAtYDWWbrCUH5YC05RR0CiQEyrWiHo6CsbaDnGPB2N?=
 =?us-ascii?Q?gmeKz3w7ixcR1S+q9HoRrmdj/nn8nZMFemV+2K9A1iHSwYSF0zSPzJIg69Pf?=
 =?us-ascii?Q?5GULJgv5PdwqbEieMGMmEJZ6YN1W/ffmsOErcStAkL8a5MkS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: eZUaXEndAito6tRgc2q/HvRpe6w4H0mbyxVckFpj5yTuYk0lIz2OaUMcimmnz7lmUAmYbfEg6glmgbpF6ugXioEOO387f21GhYAS80Jw+wITV1Pc4kygatG1kJ9ByOQh4zMS3Glh9dgBU2fYQL1PXsrbjXpZ4vctX9/X/xbjic4DRbelWqbcs8UtJUixXHHSt6v8Hx2Xf7RXI+wM6ivXz+1rFJztLqbJLFRBnFn1qNElgYV1rpaUgpQIfQhMQVHD1s1wi4S2h0+eTiufXawcmfiJjAEsljFSV7S51uGLWZURg189ngnkq6XTQn+WvlxDJOoG2y5FLS1CQfVZpFaHLQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1101167-df01-4326-e435-08dedd24fd13
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 19:13:26.7111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nixAm4/1pUKqNagGWw5kT5h0vAZq+YYrvfaYayEeHVR38yEAKyk7jJqLrqWA5lmHNCWsrt4FIl9BbrUX20E3SQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5242
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 86A5E729D0B



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Chai=
tanya
> Kumar Borah
> Sent: Wednesday, June 17, 2026 2:38 PM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: [v3 09/14] drm/i915/color: Add support for 1D LUT in SDR planes
>=20
> Extend the SDR plane color pipeline to include pre- and post-CSC 1D LUT b=
locks.
>=20
> SDR planes use a smaller LUT size than HDR planes and therefore initializ=
e the
> 1D LUT colorops with the appropriate hardware capacity.

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color_pipeline.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> index 7457fa51cb97..136b9378ca48 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> +++ b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> @@ -15,6 +15,7 @@
>  #define MAX_COLOROP 4
>  #define PLANE_DEGAMMA_SIZE 128
>  #define PLANE_GAMMA_SIZE 32
> +#define PLANE_DEGAMMA_SIZE_SDR 32
>=20
>  static const struct drm_colorop_funcs intel_colorop_funcs =3D {
>  	.destroy =3D intel_colorop_destroy,
> @@ -45,7 +46,9 @@ static const enum intel_color_block hdr_plane_pipeline[=
] =3D {
>=20
>  static const enum intel_color_block sdr_plane_pipeline[] =3D {
>  	INTEL_PLANE_CB_YUV_RANGE_CORRECT,
> +	INTEL_PLANE_CB_PRE_CSC_LUT,
>  	INTEL_PLANE_CB_CSC_FF,
> +	INTEL_PLANE_CB_POST_CSC_LUT,
>  };
>=20
>  static const u64 intel_plane_supported_csc_ff =3D @@ -68,8 +71,10 @@ str=
uct
> intel_colorop *intel_color_pipeline_plane_add_colorop(struct drm_plane *p
>  							     enum intel_color_block
> id)
>  {
>  	struct drm_device *dev =3D plane->dev;
> +	struct intel_display *display =3D to_intel_display(dev);
>  	struct intel_colorop *colorop;
>  	int ret;
> +	bool is_hdr =3D icl_is_hdr_plane(display, to_intel_plane(plane)->id);
>=20
>  	colorop =3D intel_colorop_create(id);
>=20
> @@ -81,7 +86,9 @@ struct intel_colorop
> *intel_color_pipeline_plane_add_colorop(struct drm_plane *p
>  		ret =3D drm_plane_colorop_curve_1d_lut_init(dev,
>  							  &colorop->base, plane,
>  							  &intel_colorop_funcs,
> -
> PLANE_DEGAMMA_SIZE,
> +							  is_hdr ?
> +
> PLANE_DEGAMMA_SIZE :
> +
> PLANE_DEGAMMA_SIZE_SDR,
>=20
> DRM_COLOROP_LUT1D_INTERPOLATION_LINEAR,
>=20
> DRM_COLOROP_FLAG_ALLOW_BYPASS);
>  		break;
> --
> 2.25.1

