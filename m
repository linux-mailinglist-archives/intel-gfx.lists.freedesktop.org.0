Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNjGFfZX3WkFcQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 22:54:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B37B83F34B7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 22:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E0F310E1F5;
	Mon, 13 Apr 2026 20:54:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VieABMNe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36EF510E12C;
 Mon, 13 Apr 2026 20:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776113650; x=1807649650;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DVzicKqF+8UHQPUC76sdNFtLedlXta4dA7kAO29UZos=;
 b=VieABMNeK6x0f7tcQk//33EGXKv1oWEYaULP0KXyVDho8nh7dz5pX5zN
 hkO5jAY1Nnc6ZfAq3k20DiEy0sMOwtueYHnUc5LUki3+JL9WICqTxM5G5
 PNXmd9oCN+R8GJjedvGNNRZlsrQuYmLKp0qMB9qLXpXT+bMUEnxtFYnhT
 xa/FVqw9h3S39YfuWfwLySQ9ffEZLZuk5kkvXuV0rZ82cJWy0ghLwtgkB
 BICNQNAjmDcsYRpkSNxZ9IF21si6kkCdlVyB/Lv/FzELg8HWUVhMiuZwg
 6DClZ8Gh13dKOLW/hE4NWqzARMA3n6DZhZoG3iiTjv3OOQMu68yynAERF w==;
X-CSE-ConnectionGUID: 0YGWT9+yQOG7xo0swzgy+w==
X-CSE-MsgGUID: RO6nS9uVQXuv0cfpzbcw2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="87761462"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="87761462"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 13:54:09 -0700
X-CSE-ConnectionGUID: vWoX9pt9QBCG1UWCOQ5TwA==
X-CSE-MsgGUID: wl7beW7tTqiyEwkdD5JdVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="260315049"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 13:54:09 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 13:54:08 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 13:54:08 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.23) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 13:54:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qxlnl3DuVkBitmKOlxO9526j12tNxnebV5Q2dG2eekV1XDeVi14Q6ejdZ35Lrl5AZX1zPN7B3ifkN2zo9rqIpzROdbdqtMH8G6cNMdZSk7vo7bGmkPD+7v8FPZ+uT3eWQxnA6CAHxUMXiLtsXSR6/z5O0ala3TIqe4IZiRl4WMpzvxyFX1OX9xSrcgJ+SrVqbxdEI9WCHPqs0TEStt1OxQeQWq5jw3g5DdpnJ7i0pCzG2BMzHtvXAu42ZdZQkM8NV894U9Be68FgVLn9ReGWcBEP/FKKRcxGxWdgj0QaNfkPRwlG9PRwNFhVJsJujIL3BZXzuKJFbKP+LvWOLjch+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZoivDwqRUrda1RVF35OEQktTByn0gnsbbAnoZj+mZPc=;
 b=eiuIX4Ad2oQNZMnww6/v/7JhIRoQWuPmK7HduDaBK3QqpG+PgO70srYW8FB63rgKBzWVWIqwCIdULBBZgewFm3MIsl31OyN47fDpyQeeQiicxfUEGA1VlVEhZcKP0htwiEqYtrNuwdnxPZBqadoeS1Xb9Mu4hW6QPKMCjGJUkXWSAwRUDhLKZiQ4XDrKcSx5Xv4hEyuMsKKVQOmzWUI3Kq0U5+/idGU7r4crMN1X5FurjlRCvKFl8gD9RGvOYDHvXjSKWsCmMXxTM5oyB4DVk3XYaAWjTpmSl9Ssb4IV6QfeEQnpmjK9mhbanunD4TAB/0RRycWgJaEaX+nskGZ2Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO1PR11MB4948.namprd11.prod.outlook.com (2603:10b6:303:9b::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.17; Mon, 13 Apr 2026 20:54:06 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 20:54:06 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 03/19] drm/i915/display: Use FIELD_PREP() for DC state
 enable bits
Thread-Topic: [PATCH 03/19] drm/i915/display: Use FIELD_PREP() for DC state
 enable bits
Thread-Index: AQHcvUQpLibqIbV9REaVjUHQ1lRhmbXdlKTw
Date: Mon, 13 Apr 2026 20:54:06 +0000
Message-ID: <DM4PR11MB63603888505F653C27A8D0A8F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-4-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-4-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO1PR11MB4948:EE_
x-ms-office365-filtering-correlation-id: 8cd85ed8-44fa-4559-2ea7-08de999ecd90
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: qINPPsw4KK62aG9NrzsIMGw2SfhGXKGURwnMfgqh8xiEtZtHohll/QMV5RMxRUQx2c6dTiifuLEng45myFoYrO4Xfs6GbqUUKE7mPlg4gBQbX1DLAnHWAv4Pwa2Lg/MxtaGM2v7EWRL4aThDTBPRNWm6UjNuAs/WaYvi3Pl0EdJ+rwjjelI0MFW8lu5PqWQgrY7Vx4w8FYYLvwZbgL9PRhyykaxo1F9LJ/OV7172HJtKjd2pLrXLeZWbKlgdJNHFtWwtnXjzGoPGAnkBZtBlP3GeYFt6H5KoRGcbQveXJMc+K8kgFv0ZA8KzT/Lcu47mSDcIPE1Klj6PT9x3oN06TkrbdAiaSQDNpV2aHyREGkBTG4rbltZzQLQ5+Tz352Y8b2mL/fOMj6XI4bxLO7oZBhqV9P1iwibkHr04si0NQuiXj7DRu5/npwgJyvyMCCLO60tgF5WtYSgTBzZvtlte6Y2jx1hi8ykWUh81l3bj0V5yib3cAubj4KLRSpSF835DjWwOPb2KQ1zoRqg01jJdDf18k4F2dAPVWHrNbgYeEekUW1vvqdKnLdgFW9LkCgaDUx1ntGjljheZYLpIY4rRCw3HkK4PN0TA9HC9piWBVNNlhoNMfoLhqUqTjA0UGL2Q+g4E9/ozN6DTjv7iHbnPXewLMz6Ue9uct47pmJeKT5/7Oyy5MJsn2q7/Anl9sInxPpwROTnMsLmABWM7cOwlm76XRHSW4/Z4ACca3gyg+bQoQ9KSPq7IgAtVQOQEHCEHWt65tqCLhHyWEUUp7bqzkMYswEZgKDp27He/RO1ZHFE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2Nk5GyrIj1cXqoS/L7bCkSYuNnNF02TjEMeM3fKWnWOXj3UsBDzzAqLTb0ni?=
 =?us-ascii?Q?XXJv2qFGhFAM9g+H1nLUKcgv+Yt7IetfdQD83+bSKnUQCNmTsquY5USgDhsC?=
 =?us-ascii?Q?TbTqrGYd+dTRhLhmALyfL9MzQmRV07Ji60Ol96y+6XaeSGpPZknsOq9q8ic2?=
 =?us-ascii?Q?COf6dXIpV1rqY8/2NxeAYk4c7gN1sTgz5dURpgDUbeuUndClvIumqhbvkum1?=
 =?us-ascii?Q?8BTzYtWbB2VGQ/BVczL1Hlvn8iuHEQCSFCbwgflRLvOMKJbCO+JLZT4nuYXZ?=
 =?us-ascii?Q?wRXBmlXswftqJiiXsfLbJ/F/3+V77UFdpLaV1H3CCpqDJvTkNM4So8FeBUuF?=
 =?us-ascii?Q?qePJNj4QYU4z0xqTTFYeyntv/yLHQJ96XEarNL7WvZzHAmA4of8jBELhoe34?=
 =?us-ascii?Q?SfzHBIYj8EdelttmyxcGq5kwnp0ruRVgo7DyHuXmUX89GIqESHm86YlocgLO?=
 =?us-ascii?Q?WaGyG4k0RUN5GB9hny9H1FMRCu62Xep9Lm+drrrvfNWTYNiGNmFhbCpH1QjT?=
 =?us-ascii?Q?B4d6PhcIhLAZ3WksKK4rWchKMNWhGS0mB/a110doCF5SgESWCBGmRm772RdZ?=
 =?us-ascii?Q?xClt7EZ6LJRT2mJBDlxXpAkNBDgbzt8NprGN/PzDjOgXAV4eJJSyRc/lfvlt?=
 =?us-ascii?Q?nDZD31cm2tovm9Flr9Sq0fbVQDswixiFmUDN+ctd2MUIANQ5Ao8OZ7nbv0x1?=
 =?us-ascii?Q?alnv1k0mLe18mWmr3Z8/Ph26ypPk7zoYXryFzX3f1ZQZTwoURFHyzXjjqrJR?=
 =?us-ascii?Q?aAuQvDTbiZfhC2kEFbtOILwk41yvjSaNl00fZJoHg9iwESI5lrthzso2lYmI?=
 =?us-ascii?Q?iUUFn8XtD4Y/uJinwPlLMcfzYeuzmXosEigQDJEV7sxh1qfc5bqqnozpN7is?=
 =?us-ascii?Q?6YPfFY16CH9XlNFtoazA3NF6lhRgGZMrzS937peUBgOH5BkmLws1JK3WcztX?=
 =?us-ascii?Q?JHSQNcfhLZiyjzJezf7updIHdux7f3KS1ZfTdEHOtTeHsRXJddThsyI42038?=
 =?us-ascii?Q?HK4xw35JBHcl1M8GpShmZw3p5RPIfT8PE8Zg10toz/J1+sj++hocj9YeEKMJ?=
 =?us-ascii?Q?tIXNcQ61eSceUoXdjMRtwMOSrqJi0kwZq4Ua70JSJn3xjL2Du1qFNGJnbWmT?=
 =?us-ascii?Q?yxvvCYv1tCTRfKkXRmCUUeMF2vLbwJUMuN2puF+K6tzw6dbybm1w0EQHsuU0?=
 =?us-ascii?Q?UYbWENmeC6BtgOuFFT7bZpXbcopyTWDp+CZ436dAN/yxFAkxrL+sLUjRnPvL?=
 =?us-ascii?Q?oIADDJbQbWfiXJxG9KFAeYpZdmzUk4EdFxtyYVCFGV3T38smKyr5OCc+Ziz0?=
 =?us-ascii?Q?IrFp6c6aDhfemFwEdyjgMh40aM6munj8cea9Myjn4xqgUzq0ncekXK9D6Ziz?=
 =?us-ascii?Q?AVXmEzSCYFMu2HoCcLu0ueZ5oaZE6AoZFPB7QXZ8v+GvDYdtpEHrN7/Lqiq5?=
 =?us-ascii?Q?hohpA2MkRO63iOH9F4jmO7BxAH3G3fsUq2i+Y54xllrv0dRK1lAoTZMSTwv7?=
 =?us-ascii?Q?X076wDu9ave6GyrGDRIBmyl8TnVqFRrY2uAoAukWID4n/p12oZtkev0l7Iiy?=
 =?us-ascii?Q?sMK/5qclwBWSQ5Qxjeck1yG8+WJbyrGb7bsM3mBF+Aykpmv10A6e+Axn1e5m?=
 =?us-ascii?Q?tRCUcsgja6bUiHtDo7cuGD+PQTPyX2EaBaSx/xmI0gxGnmKH3eWlEzjaJw9q?=
 =?us-ascii?Q?1q8O33A10bXQTeIENZp9oKBT5aAKy+Q0WHZ4WLZC7hJZMGkZ6dZQ/cz3IDpr?=
 =?us-ascii?Q?tQeUo8EUNw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pz1oe9i/SwdzZ7/b9YbG5DbxtvewaFNlEX5Kd/bv/ZeYb6RJemiFTGnTF6o9QAszTOm3tV8PzRIeuzEtOkCKL7X76bu7Zwu4p+OxN98eHBzJGm4K9Po4zhn4v1RS1hgL5B5iK/WqCUk+jmJtSy5oIf66Xfiir3KfCMDzLHoRhAeaEQ7vgT4XEOx95zKPORUYnolKdDOujTCEmCtwNaOHurQoFIJq0h89v3+6/0skQNKhbKE6P5juvTf+HEF/7zc10mq/e5zfHGMaQLpP/TPf4rgmdHt/yT6b+a/8LgwivEjEte/Ud5y32cgBBj8Ru5REqfmKCTR1I3iTMc62wVZmMQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cd85ed8-44fa-4559-2ea7-08de999ecd90
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 20:54:06.5473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LQJkWCsbXZg6+2yQVLcA9IZOLf8nX+VLG0DIx2eYjmEU6Z7zSIx9AgY4aeJobuAQ3jiv0+dp0/eH4s0KgL5eWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4948
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B37B83F34B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Thursday, March 26, 2026 10:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH 03/19] drm/i915/display: Use FIELD_PREP() for DC state en=
able
> bits
>=20
> Replace open-coded shifts with REG_GENMASK() and REG_FIELD_PREP() for
> the DC state enable field.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index d0196d4ad234..2bace331437c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3047,11 +3047,12 @@ enum skl_power_gate {
>  #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
>  #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
>  #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
> -#define  DC_STATE_EN_UPTO_DC5		(1 << 0)
>  #define  DC_STATE_EN_DC9		(1 << 3)
> -#define  DC_STATE_EN_UPTO_DC6		(2 << 0)
> -#define  DC_STATE_EN_UPTO_DC3CO		(3 << 0)
> -#define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
> +#define  DC_STATE_EN_UPTO_DC5_DC6_MASK   REG_GENMASK(1, 0)
> +#define  DC_STATE_EN_DISABLE
> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 0)
> +#define  DC_STATE_EN_UPTO_DC5
> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 1)
> +#define  DC_STATE_EN_UPTO_DC6
> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 2)
> +#define  DC_STATE_EN_UPTO_DC3CO
> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 3)
>=20
>  #define  DC_STATE_DEBUG                  _MMIO(0x45520)
>  #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
> --
> 2.43.0

