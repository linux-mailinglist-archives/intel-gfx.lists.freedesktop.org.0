Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEGvI7Y/BGoqFgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 11:09:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F055F530478
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 11:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFA1D10ED8E;
	Wed, 13 May 2026 09:09:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aBEIaVs2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A670110ED8E;
 Wed, 13 May 2026 09:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778663346; x=1810199346;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ksp+ik7ALh+azfb4oX0x1UwIK2A+QP7uPUYpX7qiJ5k=;
 b=aBEIaVs2e3/uKqmGToNF9wtDuMaKPVeI2MDvprgd3o0P1k0OXAU50qn3
 NSuinEuqfHqTNhJToQwpTV5mB/j+2GXHc6zsZrjzFV+nl4a9Fat5NpE9t
 UsnW1SzQQFROrrB01PeZzxut1r/o78fN1+JRgEtRV+EJIxDMXMWFCD6Ff
 ofdCSbi6GaV4IFmwApTBp4+0JI6r4mXhpRnJWWS27ele3W4qLwtjPAuS6
 9JNEmHyAo3HROfpFLSfa2p05mM5Z9gjB97z4QYjO8eiugZRY9vCTkdlhW
 VnHkkWYvSBZgjkAgXC6OGa+geL0vizXeBMMKvmwSpGtfhgxWUBb2LeWOM Q==;
X-CSE-ConnectionGUID: KbFnPqeOTs+3NCoubZQKHA==
X-CSE-MsgGUID: XWZM2eJzQNOO7BCn72t3PQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="78613438"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="78613438"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 02:09:04 -0700
X-CSE-ConnectionGUID: jFOldo2ASqeKtOVBJpjrvA==
X-CSE-MsgGUID: jYqXGGizQ7aZoZbugsbnLg==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 02:09:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 02:09:04 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 02:09:04 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.10) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 02:09:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m6XhbNzatjfC8cvM3J2KAt9whqmZpLK7lEPuPZ1vmsJEWzVWr6qcLiCjfi9VsH2o63zhobMYJFZq3bNS+DuIzQhweU2EPiGs5HJS7DBvdFJya5gzdTxHNCMo8/PtS7FTOBaj6vj5PJyTBxJm8c2MoPj+ByFikJetOETLRWenDIexHcEtywm3smzwhmO4m7RWFRdEtdJNQ46v8pB2snwa1xyx99Y6oonuKM9cR8agAtBGhbjRckr5oOap/dxDNmAIdxRpCFbf01ZbkEI19y0KJ766ICpEtx8JiLSCpRlnPOO6mt6T6IF3xvY/07EmS66eevcux9uv4L2/sNC9j+waHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P6gJ7nbByYK3m3wjWqlx/8NdotezX9Q/YP8DlNZpEWM=;
 b=NN4LKBf8ohG5HsWqYAsbVl6eTYVepZwe/Dtfm0x0zu1x9QapxFGqTg0estDQliI6Ooy2kStTehL932lOJy8SbEz4khekTm0qzm4MBqu9vg4oZz+NUW+TwEziYLrp/nwolzVdJT+RJGmDgUJDGBR65mNxlqhhRGfeG0WxVJqYkGoqL1e8Cu1/m/kQlCe/v+l4aLvkp5hxWvJqB3comXkmjq2v9+X/FzJDExb0AVd78KYu8Q1Y2epWsJWw6tZLKN1w6nnuyembiyH7yW/EWDU9TkkMU8JmaxiXRdqdvbKJm93Bzjl6wuvU5NX3LeSQ7mdFtNJiXeNauOIjRNP4wdFzUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA4PR11MB9324.namprd11.prod.outlook.com
 (2603:10b6:208:569::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Wed, 13 May
 2026 09:08:54 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 09:08:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH] drm/i915/backlight: Sanitize BIOS-enabled PCH PWM in
 full-AUX VESA path
Thread-Topic: [PATCH] drm/i915/backlight: Sanitize BIOS-enabled PCH PWM in
 full-AUX VESA path
Thread-Index: AQHc4q+0VWHHXQ82Z062sSmumuPO3LYLoBmAgAAJsgA=
Date: Wed, 13 May 2026 09:08:54 +0000
Message-ID: <DM3PPF208195D8D4780D4941DF91E62C287E3062@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260513080819.849479-1-suraj.kandpal@intel.com>
 <b21c1fc24b8f87958183f360b3d2cd4d9986875b@intel.com>
In-Reply-To: <b21c1fc24b8f87958183f360b3d2cd4d9986875b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA4PR11MB9324:EE_
x-ms-office365-filtering-correlation-id: a2707bd5-8ce0-4152-6545-08deb0cf4205
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|38070700021|22082099003|11063799003;
x-microsoft-antispam-message-info: WZ02uFp/icBZ1t05yfeQMgYqmFvq26THUd85VuhKRyPIaNPttsxX0zM8lOkpTh4/hqBQdu4adAUYjtBeElpd+Urr+0+kyQ9RnevpddiCbBEzIPK6rWzJjkgBLL/fs9DtNUCasVIjWnwkbnYw9b7dcGEHAYqGO/MFEiUFdmAraLpwqsxLwsTuJHDo5xKKvi0+A+CbokeSoDCi9aWwRCo4ygkIfqcqMczADqcdNWzh2Xgrf90fmdwzuY5pzOSuz1M2Z8vnvkKRmP9xZxiLweoBJJc2k+sUO+zudfRQPqYxJl0XwVYnL5wZOLaA/bKWVpg3YVFLfDNJmunOrEIPiCiChl4nZ7/my4lolJ+rtXghkB3ZxiVgC9x55rrUO/vYT/6CkoBwetDip0qJKbQZ3JEeigNAf7rHKgJ6LsJ8NuLRxqhxBIdEDrZ4RLEyH1Q2WAMuEJSVql6lnZhydFMnQsqB35n8DoIgVmrAOgRQ6zRk/MZJqf4MovbueYGdbNCd25zPuXvBZj1Wn8ViEPbWWQ72CFklgUHXSSP5/krB6oQeqcFqwCTJpMH6SVExQTgJpNpheYXEGSapKSe2rPcm3qO1+PhUWzjbBRHXMXqmwRknnFxHUxqlSyhs1WrqRKuL88dy9cpcG71Mj94Kz2i83j45+w+ur6vottAwWxd/Ev8ICBBSb2FvSJRUzvsZFtxIqcDvmIWTQuAMt18Ry89t7pdEuCljHlVemyQpBdln+AdoBiPFP2P/A7K52xfRLFBTnfdp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(38070700021)(22082099003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SZDI/bMC/vfciiaN3IYs3mYGYi5D7EW7mhLMihpjm/FvKHjKEQjIPQsrByHc?=
 =?us-ascii?Q?kCoKgTb3MINsM6bsmyT3CY0KiM6epfHVqppGzM6rctH5D2kJawRYi+AYrRCl?=
 =?us-ascii?Q?KzRX1W8cBEoUcufvRqyxHYYNf8/QaGjk7M8ggT2V37xFACdWHp2tRcxaSWJD?=
 =?us-ascii?Q?qbV/evGm3dVHNxZPe/jQ9sUcMvlEL01QemMwuIJLgWLaCgT9pi721gTXh+2U?=
 =?us-ascii?Q?t+HqGOpOx25kFNWPB3wWXTAlQiSoilj5WamMpwsJkoRcuBngy/Wsb07GjvJA?=
 =?us-ascii?Q?DcMHaL4CbAYv8fDalARf5BiZk755d5PXDDNgnW0vOKUHHLDVjHL+zA9TerEX?=
 =?us-ascii?Q?qyX7EZAX6FJHpis01fyS7nr6Z7c/0zKWGEyJLLa50xA9Hrt+e0YHOY/oYPbn?=
 =?us-ascii?Q?R/miqo5XPg5feCIevBu/j9HmFw1RxjQGDhrvxUuf8roe9J8fkp9nmnuFff7c?=
 =?us-ascii?Q?LDqFXeyS8u7AclNd2BKAyXexdDB+vUn6COB09+TRnGXnpyaQsZDYXuPm8aGc?=
 =?us-ascii?Q?/iiaJIEdRtwOQUeopDtt/ZWnu/wkvTsYnAjvAajX28aHfN2UFRWKVnnw7ihk?=
 =?us-ascii?Q?IOeVlZR+Ukog3AP9ucLv+ZaxY2Qq84euz2qV+5a5oKYF0ruQThFIfYgdjLQt?=
 =?us-ascii?Q?6SqMmEUOgqUZrZ/5eXNWQVfN4kY3/YXxDZBGDUgOkp+6RbzUqdmF2gJcxeIT?=
 =?us-ascii?Q?sA3mMM4ran+G1DrjROdOIWZJiAy0+xAuFIVu9ftBuMdyLcandOLs+nxphLYx?=
 =?us-ascii?Q?6NaKWlwnxmR2289IjQWu4Mye764IBMb/CK5nd+zM8RCKQTr0YMyHNRQjzS/F?=
 =?us-ascii?Q?zkX2fj7J3VAZazq8c/hSe8KUZBczcHm4eZf36wigqKN+q/01VTNSIrZZO7Za?=
 =?us-ascii?Q?r+8YEqpkCW2MPTSCjzRvCshQKN9YtkrVyPUO79+T9ffBmxPcSr1BB9FZmMib?=
 =?us-ascii?Q?ip14soC4S+ppa0umR8dCMFIx39U+FlfdbMSl99MXUwxDvbv7p9Duf+WG26ST?=
 =?us-ascii?Q?xPL0KnyELSWxcI56tcmTW4AyGJj2G6ARxTsvMHvJndNJfZvk8Qqo4uTmsJj9?=
 =?us-ascii?Q?YxaRMOq2iWohVSfue7uUw1bydhgfwjPtZjUwWd30tWuBZPx2i4NCXvSFVM15?=
 =?us-ascii?Q?OTx0/uM33HaBrK9fuy38ke+AZXxQDu2YZqmfkug/d5t2bUFyv+m2+Qbj+C22?=
 =?us-ascii?Q?O8ItdZYlczanT85AXunhTzsvXAskaSk5H3ma40qXQlBqNE5cqzjFtQSqWX1m?=
 =?us-ascii?Q?mWui79Sz2pbCIb+3xsasK24l4y30StFTp/YmXlAlLH4V7c5uKj3GH558p2g1?=
 =?us-ascii?Q?Fsd/b2GEPdf6sOQ7gnw6z/MrEkCoBNLvRtiDGnFLfjEc89d6CkdqwcfRKl9P?=
 =?us-ascii?Q?Cx3CK2GquDDAg6caJC8fgWjmsb6Wyc08sufiQRx1yfH/IgGwzj0zKGDS2wem?=
 =?us-ascii?Q?1EAl9zvjubEQm4ETqjytbO/hfCsQCv7hfAi6kkYv3ByyhK4Qkuv5QHLIr8fd?=
 =?us-ascii?Q?nADCjXTS2Sltgmp6G1uEVp7ycn9O6x8uZGAcXFcfXXFxsgiH+HNuzh/KExqr?=
 =?us-ascii?Q?nq7+N5pTX0spKxoiVVAUkKWW37vVKonYmg4zjP3wxKyfPe+Yeu478qWT9Xxa?=
 =?us-ascii?Q?+DqSw9NYIuC/ORHsYQ85texrgsnV0xX71VYc7CtoHixS0jJvt/hPmQddIvfd?=
 =?us-ascii?Q?J3IgnTUQeRAQJoRdNpI26BI9PkfMqMocvgXeBNtsgGA9QqFMKGuSFhq46jIW?=
 =?us-ascii?Q?8qYvZPAG+A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Mex9sxgG6GR7uAhQnmRBoej+HWTi6Tph/sUCQuLCR5z90F51ijb3DhfcC/jOUHB/6Zf0omP2nXVKxJVbSAzkujH1dQjhEw6FVG7D4ZXuALVYWItxn9P3Ol57hFY43ozh+b+FQqFu4qQSMP4XKm2cpU+VD+S3vey+QqJwsAGFitrXOpyd6S/kVyoT5yysi96SzO2OFCPYSFdfOqi1CN3gfQGXiIRYU9ELkkdFkNMQIvA1PCv2tpmw+eb6OyE/rgs5zUh2U2ymGMwRydvHrA4Eo7v3kuRQZC0eyDCFWYMiA5AyfXWQySVyqbUH67GHB+W54YCByo7CljLtWz1Vps4JOg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2707bd5-8ce0-4152-6545-08deb0cf4205
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2026 09:08:54.5156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1U8tRZ8a1C65D6gdZJGEYBxwNMcVKVLU+ixEP4lGHqRgVR9IR+3Y/sPwzMD1ZOteEvZVVTDjuvSOobmjek1oUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9324
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
X-Rspamd-Queue-Id: F055F530478
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> <arun.r.murthy@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/backlight: Sanitize BIOS-enabled PCH PWM in
> full-AUX VESA path
>=20
> On Wed, 13 May 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > In full-AUX VESA mode (aux_enable && aux_set) the driver never touches
> > the native PCH PWM. If BIOS left PWM CTL register enabled, the PCH PWM
> > keeps system alive during s2idle and blocks S0ix.
> > Always run pwm_funcs->setup() so pwm_enabled reflects real HW state,
> > and on first enable in full-AUX mode call pwm_funcs->disable() once to
> > clear the stale bit. Runtime behaviour is otherwise unchanged.
> >
> > Fixes: 40d2f5820951 ("drm/i915/backlight: Remove try_vesa_interface")
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_aux_backlight.c | 32
> > +++++++++++++------
> >  1 file changed, 23 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index a8d56ebf06a2..c828c568fb8b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -496,6 +496,17 @@ intel_dp_aux_vesa_enable_backlight(const struct
> intel_crtc_state *crtc_state,
> >  	struct intel_panel *panel =3D &connector->panel;
> >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
> >
> > +	/*
> > +	 * In full AUX VESA mode the native PWM is never driven by us. If BIO=
S
> > +	 * left it enabled, the PCH PWM keeps the system alive and blocks
> > +	 * S0ix. Sanitize it once via pwm_funcs->disable.
> > +	 */
> > +	if (panel->backlight.edp.vesa.info.aux_enable &&
> > +	    panel->backlight.edp.vesa.info.aux_set &&
> > +	    panel->backlight.pwm_enabled)
> > +		panel->backlight.pwm_funcs->disable(conn_state,
> > +
> intel_backlight_invert_pwm_level(connector, 0));
> > +
> >  	if (!(panel->backlight.edp.vesa.info.aux_enable ||
> >  	      panel->backlight.edp.vesa.info.luminance_set)) {
> >  		u32 pwm_level;
> > @@ -558,15 +569,18 @@ static int intel_dp_aux_vesa_setup_backlight(stru=
ct
> intel_connector *connector,
> >  				    panel-
> >backlight.edp.vesa.info.luminance_set),
> >  		    backlight_unit_str(panel));
> >
> > -	if (!panel->backlight.edp.vesa.info.aux_set ||
> > -	    !panel->backlight.edp.vesa.info.aux_enable) {
> > -		ret =3D panel->backlight.pwm_funcs->setup(connector, pipe);
> > -		if (ret < 0) {
> > -			drm_err(display->drm,
> > -				"[CONNECTOR:%d:%s] Failed to setup PWM
> backlight controls for eDP backlight: %d\n",
> > -				connector->base.base.id, connector-
> >base.name, ret);
> > -			return ret;
> > -		}
> > +	/*
> > +	 * Always probe the native PWM HW state so panel-
> >backlight.pwm_enabled
> > +	 * reflects what BIOS left behind. Required for the full-AUX VESA pat=
h
> > +	 * to detect and sanitize a BIOS-enabled PCH PWM that would
> otherwise
> > +	 * block S0ix.
> > +	 */
> > +	ret =3D panel->backlight.pwm_funcs->setup(connector, pipe);
>=20
> This will log something like "Using native PWM for backlight control" in =
dmesg,
> which is going to be wildly confusing for AUX backlight.

Yes true I was wondering the same thing.
I was thinking is changing this message to Setting up PWM function for back=
light  makes more sense.
Or another option is to just
Have the aux_enable && aux_set check inside these PWM functions to skip thi=
s print al together.
We do need this setup to fill up all the pwm related fields inside backligh=
t.
Moreover this helps us call pwm_funcs->disable which take care of choosing =
the correct gen of backlight register to disable.
Which do you think makes more sense Jani.

Regards,
Suraj Kandpal

>=20
> BR,
> Jani.
>=20
> > +	if (ret < 0) {
> > +		drm_err(display->drm,
> > +			"[CONNECTOR:%d:%s] Failed to setup PWM backlight
> controls for eDP backlight: %d\n",
> > +			connector->base.base.id, connector->base.name, ret);
> > +		return ret;
> >  	}
> >
> >  	if (panel->backlight.edp.vesa.info.luminance_set) {
>=20
> --
> Jani Nikula, Intel
