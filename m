Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jtGbMOEORWqO6AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:58:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 508C26EDB38
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:58:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=JBTMarel.com header.s=selector1 header.b=FGbHcA+7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=jbtmarel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D817210EFC8;
	Wed,  1 Jul 2026 12:58:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from AM0PR83CU005.outbound.protection.outlook.com
 (mail-westeuropeazon11020081.outbound.protection.outlook.com [52.101.69.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC71B10EE41;
 Wed, 24 Jun 2026 09:32:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TaDa80iNtG3+xMeGWXJM5UcPcaJNxjzAlIagx2ddEtJVjD7D/y/dwnPA7Di4JRQYJCzu8PskgFhkH//aPc2QGuzKdWVHQI5mEEb0uu0X5wZYQIpZzmYXwKnjzsALspm7PkEI5UHgRMMRh1GhqxW5rA1ImBTUCSQduwBsw5gLucSvJKpNHuf0/iJU6/fMOegX/TsR8kM/OvFKIBflECbId8X4ssWxns+vmCAAMDYf6Tu6vjDvGjb0SsxUxfaetcHlGxHsUGvInPeFsw8FASi5scfy4zsKySWj9S/S+YdqNxDEpWBv4GIcXADMB3roJm4KkhypQzxbxXWmdBIvzeI/eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FnYIDE3wfQgB+QTG49iK52h8+mG9V4w7xmefZEWuyX4=;
 b=yelvgsX/4+XyfYPOqXMVgxsdlOpiiZQk5wFlSY7afWBHcUWf5wud2oci2S0vpdOCnoe5E4brs4KEVOrEiwe4ftFMUZShmx7X5HsrTG6n38eHBnde0Dkhj2YmRG2rZNwNDLZCYkZnxE1Y66IdReT+Glko6kSX5CqsyTCeul/3OGG2m9SozcTkVkOiHmxt7k0p6NgHwUrrr4xs8MSheim+Nf8oFr3ITtf8Nuu+tGMTzUw5uibgT3Y5K92ETnaw2+4fYBBqlcahXIGy0vfzbG3gIzx0exoj3veR87JMad1k1sYAj7N9Q9Bz94K3rZ9o4Al6IPdrnD6O/VH4NhXk0knF0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=jbtmarel.com; dmarc=pass action=none header.from=jbtmarel.com;
 dkim=pass header.d=jbtmarel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=JBTMarel.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FnYIDE3wfQgB+QTG49iK52h8+mG9V4w7xmefZEWuyX4=;
 b=FGbHcA+7FRp3Un48HszNDo5mKTh2y7H1paULA8m4ZkmtJSxkVd8vk4uNtn4NQyzpC42Pbpkic6ID26HATSOgd2IIMmraNhnUQWNGWLjciYcpe6pL5b4juoVhIwbWYk+ZRIz7lV2LVwrhSp0GAmp/kBf28wDEodxe3opl1E4t9MvMqCeCeKRcjMBE6E1d/GG5rSfGHwln+tPs2K544Y/BAr2DZ6u9ep/jgtBem2Glw6qUY4GiGDW43LBCG+bdNCUOmd45xqpVsyoDUGrdbUcYi/5XLEo1cUC1l25UrbpitnkcCJePZBNA5cZdxrWwhpB/u+zc0LVB7bMCzsCu03HdzQ==
Received: from AM9PR06MB7860.eurprd06.prod.outlook.com (2603:10a6:20b:3ad::20)
 by DBAPR06MB7016.eurprd06.prod.outlook.com (2603:10a6:10:1ab::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.15; Wed, 24 Jun
 2026 09:32:36 +0000
Received: from AM9PR06MB7860.eurprd06.prod.outlook.com
 ([fe80::f23e:6dfb:b90b:52aa]) by AM9PR06MB7860.eurprd06.prod.outlook.com
 ([fe80::f23e:6dfb:b90b:52aa%4]) with mapi id 15.21.0159.012; Wed, 24 Jun 2026
 09:32:36 +0000
From: =?iso-8859-1?Q?Gabr=EDel_Arth=FAr_P=E9tursson?=
 <gabriel.petursson@jbtmarel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>
Subject: RE: [PATCH] drm/i915: Calculate CDCLK on modeset after sanitizing
 pre-os programming
Thread-Topic: [PATCH] drm/i915: Calculate CDCLK on modeset after sanitizing
 pre-os programming
Thread-Index: AQHdAlVs310XGPyz+0y2jAexjuKZGrZMM2aAgAE7ZwI=
Date: Wed, 24 Jun 2026 09:32:36 +0000
Message-ID: <AM9PR06MB7860C510609E052AF39CAA8281ED2@AM9PR06MB7860.eurprd06.prod.outlook.com>
References: <AM9PR06MB78601E2636164181A4689CC281EF2@AM9PR06MB7860.eurprd06.prod.outlook.com>
 <ajqXK-fZnty-YGCK@intel.com>
In-Reply-To: <ajqXK-fZnty-YGCK@intel.com>
Accept-Language: es-ES, en-GB, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR06MB7860:EE_|DBAPR06MB7016:EE_
x-ms-office365-filtering-correlation-id: 9685bb44-9876-4188-b384-08ded1d386d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|366016|10070799003|1800799024|376014|6133799003|11063799006|56012099006|4143699003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: +XALdiId6PqiOhrMdBA7frbfTSvBje5yZF0Ia3EqXTkxlewPjxKWChPNyBJ9c7mEsJsg7CaEteZ0wgogofStaNF9Iw06l5mbuu8iDfL20y3SO31YjFrc1xYt0NUnd1T83dtvu+ri79wa70qMrTCTbr1dDuZYAi8Gq4luNRRyLCm4meCipulXzaBGP5sJgHWpFM0d+x+YLMC3pAjRonMeA8TqM/L7Rr+RBZGMioSepa3pMNPc8ygc6FWy1WqR8cz9Q67eNIEl9ilNqsd37H3ON14Z1YX7KNov+OL3UsaD5trVhcH1nXxKvMM9qEDgmWMm1nqGlMhQ16NJT1jFqS6uespAZbxPfnATqdT0CrxB9v8HKVKC8mcjIfOjDiuobSAj9CsNeN+gKGigUFRyNEL44gZ8tWaGeXtgIyQ+OK/rj9DD3hkGiYvaWyuAWgZBQDpLV2mzWN9BBrteON8YU5Z9qh+pKabZF7vA1UX/CkZESoBFxbU14l3Hofjp2OPGwvOlu+y/YWykE0AkZj0+s75uAGUsePpzNQTPghOjV/wz9yDfL0x1ARr2GjY7gp9hhpHt9PfOj5wtn5ynhxZ/q+bPKkRWk5X1zRhyIJ8NbzAVsxdcuXENv7t+gAEb8sMNvbj5TeyP+MApzY0N+SShlR5lTlIDsn/DCJfBNOdvtenA+pXE+WjmL5tpwvjihOmqYDxIswH+CLwrE+VTthKfMJnKVreD4m8kZI1mYuzN6cJGHlc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR06MB7860.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(10070799003)(1800799024)(376014)(6133799003)(11063799006)(56012099006)(4143699003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?IS07k42XmNn+RBjt1xny14VNuOrq6qqZq0p9i3Gh8CJiPGAwxYgWtqTJba?=
 =?iso-8859-1?Q?65QCMXABbXMCEwWm4a3OxqnnhZMPgAgpOkv8zVUBv/JRiIb7AvTgOtkv7d?=
 =?iso-8859-1?Q?ur+Hq3p4b8jnfSDHR+VPi2HLdjrMb1a+TV1g7TNDhisUpwCNaSw2i0LEMr?=
 =?iso-8859-1?Q?tl/x253TKHIHox2TcfP1AwMwd9gs0QtPTYy2MhyyBuAoxxxklEaKRmThMS?=
 =?iso-8859-1?Q?LwsNOzTrAP1Iu+K6OJ/H0y/z9d+L+I7PggtoGhXQoKFufUmBNPNJyA064r?=
 =?iso-8859-1?Q?qEzGRYshTVD7x55YTsuc5xyxcBomg/KYvCC1BOBkEhCzgqyuY5b8ZNrUQW?=
 =?iso-8859-1?Q?4LtVEsxag5CHsW7QJbw7WQgiggv42MGIEQatTTAXss63F49khaETnYmAgT?=
 =?iso-8859-1?Q?NFxt94dm0i/n89EQ+Rnwf30pHhqVJe5IR6gIJkBsvpNSKZP8TKxR15dnyi?=
 =?iso-8859-1?Q?y4Z5xn70+JD9NjChp155xRlrbfobXZfkZQFGSoIKu9VflvURlZtlmxSwQW?=
 =?iso-8859-1?Q?rWEGh0s9E3aVCmZ4oqgvxbtTesLaVGbbdGXuh5maPr2mXSUtJFbVpir6pw?=
 =?iso-8859-1?Q?WzH1xuTKETDrnE+zh8LCIFqTr9IYQojy44x+M3SgaXHvDi+j8NbM9cQCEV?=
 =?iso-8859-1?Q?idGPAhHdGKRHge7QbIyOY9w2BgybrYRnKdbxso63XacUICCqpJ3w//UBvz?=
 =?iso-8859-1?Q?tyy5j05u7enXUFEoAYsoOoPP23H8LO1SgqX3LZxeMVHPStGlF7IEgEjdHa?=
 =?iso-8859-1?Q?rbG4tbQt4x4FzePGj8lLUtVEEVvAZDsLxxKeo+ceqmR75gXWyKY14iOffF?=
 =?iso-8859-1?Q?k4j4epezrTguVJUJll1p9cDAcS6mK7atloTm5M+r3IqRc3+nxHkKrILuik?=
 =?iso-8859-1?Q?Yo6JSy0U+hIxF66pWgJ8JvfeuhrbIHdT7e34JhC0KsX6fAjzj2ZmYqTZf+?=
 =?iso-8859-1?Q?r/0XXTUEXshooSL6gU0AMW0U49lwwpEk6lUwiyoM/aPXbybbWghHPE59+1?=
 =?iso-8859-1?Q?AaJ9ginrMiJL9xH2kXSYNewO4MdXM7VEOrTR1kUrzIxS7EK6TDp3CWkVQv?=
 =?iso-8859-1?Q?v/8aY3baoTfDyIq8j+YsOI/55aLffHSXTbst5Oivqo3B65Ea+dRLHPyoiK?=
 =?iso-8859-1?Q?Asao8X7fMPks3KtSSoJyUWTtiybMRALK+X/a153ZL0JboxcibMUF4vU+yT?=
 =?iso-8859-1?Q?gxxnyPPwRPOrg022UwRIxUPu/q+cPtRut3BoTp2QCD6i+IM6GUVrMEw3r9?=
 =?iso-8859-1?Q?CdI1cZl0Qtw5qpLVqDvXuY1dusAHpLpI6wFoLeZTSuIsnFfzmHHnY2CB/l?=
 =?iso-8859-1?Q?kUlr7crvdz5IG0yqhfGpgRaruSDEiGzEZT7wJzs5lNwmefpu9XIP+ac0CO?=
 =?iso-8859-1?Q?07M8RmeI3HhNsS1z3VLeqahzycQDHclcCdhqXj5LjvTngoSWASO8MTW/Ec?=
 =?iso-8859-1?Q?wxawnVTRPPZ8pqnpwHDeMrRXk5XfAQ8QZRRLAp2MPnVb4+eF9eyAdRkvwI?=
 =?iso-8859-1?Q?gg8Bu9VfFLPnWIvULjWfICjR+4IzhDNzNHtaX8RbfYqo/K0GVsT1hFPN3S?=
 =?iso-8859-1?Q?y/cVIMMSKzpxm8fCLOjbOQ0qQ1krInCg3VofRmsgtpb4z7A+N+12Jh6SQr?=
 =?iso-8859-1?Q?5oblq3OP88+O1ZPmCii2UKnd2S66FAza5LOQKGMTFWn/k4XKWzniQ4BIIa?=
 =?iso-8859-1?Q?Bl2pjPjzihCE6CCq6uZcVGdVIiqg3y1bynuxd321M7bUAeucKx1KuRjSHP?=
 =?iso-8859-1?Q?0du+2B92M6uR0Fa+en7u7dfhkfGpsmFSelReKj1ayZS5NnZJsvUXOLRTiY?=
 =?iso-8859-1?Q?coKWuLExV3rm4CKRSFKH5SSs4oMGaa18igptTxTxVoOjsp7RJSZJvBJ+O8?=
 =?iso-8859-1?Q?z/?=
x-ms-exchange-antispam-messagedata-1: qjU3yEXg9lVuSWtXV3gltaCwmYMTiSlQLQY=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: JBTMarel.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR06MB7860.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9685bb44-9876-4188-b384-08ded1d386d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 09:32:36.3036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f672e0e-1e37-47ad-ba73-9c5ada6895a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: frywoihZfDUsr3x7uyu04conNmSfI2oxg7YvUy4jOu4deumVGWydt2TpaH0VTwDmwLtnOUihrW3lNkceXLjrZLN9+Nt+3439NRF+BotJiGs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR06MB7016
X-Mailman-Approved-At: Wed, 01 Jul 2026 12:57:46 +0000
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
X-Spamd-Result: default: False [-0.43 / 15.00];
	DATE_IN_PAST(1.00)[171];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MIXED_CHARSET(0.88)[subject];
	DMARC_POLICY_ALLOW(-0.50)[jbtmarel.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[JBTMarel.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gabriel.petursson@jbtmarel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[JBTMarel.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,AM9PR06MB7860.eurprd06.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,jbtmarel.com:from_mime,jbtmarel.com:email,JBTMarel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 508C26EDB38

> This smells like the same thing I already fixed with
> commit 3f9de66f8acb ("drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL
> without a full PLL re-enable")

Just tested the latest drm-intel-next branch and it does indeed resolve the
blank screen issue we had encountered.

        [    8.092012] i915 0000:00:02.0: [drm:intel_cdclk_init_hw [i915]] =
Current CDCLK 624000 kHz, VCO 1248000 kHz, ref 19200 kHz, bypass 19200 kHz,=
 voltage level 25
        [    8.092579] i915 0000:00:02.0: [drm:intel_cdclk_init_hw [i915]] =
Sanitizing CDCLK decimal divider (CDCLK_CTL 0x3104e2, expected 0x3104de)

I therefore rescind my attempt at a fix. Thanks for the quick response. Muc=
h
appreciated.

With regards,
Gabr=EDel

________________________________________
De: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Enviado: martes, 23 de junio de 2026 14:24
Para: Gabr=EDel Arth=FAr P=E9tursson
Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; dri-de=
vel@lists.freedesktop.org; jani.nikula@linux.intel.com; rodrigo.vivi@intel.=
com; joonas.lahtinen@linux.intel.com; tursulin@ursulin.net
Asunto: Re: [PATCH] drm/i915: Calculate CDCLK on modeset after sanitizing p=
re-os programming

On Mon, Jun 22, 2026 at 02:52:29PM +0000, Gabr=EDel Arth=FAr P=E9tursson wr=
ote:
> After sanitizing cdclk programming by pre-os, the cdclk frequency is set
> to the lowest supported setting. After which, modesetting needs to
> recalculate the appropriate frequency.
>
> When upgrading the kernel, we encountered an issue where we were left
> with a blank screen at boot on a number of monitors and the following
> message in dmesg:
>
>       i915 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun
>
> Which bisected to these two commits, depending on the exact monitor used
> during the bisect:
>
>       ba91b9eecb47 ("drm/i915/cdclk: Decouple cdclk from state->modeset")
>       74c31271a1d9 ("drm/i915: Avoid triggering unwanted cdclk changes du=
e to dbuf bandwidth changes")
>
> Although both commits look correct, before they hid the need to explicitl=
y
> trigger CDCLK recalculation after sanitization.

This smells like the same thing I already fixed with
commit 3f9de66f8acb ("drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL
without a full PLL re-enable")

Sadly it looks like I forgot to cc:stable it :/

Jani, can you pick that up for -fixes and slap a cc:stable on it?

>
> Signed-off-by: Gabr=EDel Arth=FAr P=E9tursson <gabriel.petursson@jbtmarel=
.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++++++++--
>  drivers/gpu/drm/i915/display/intel_cdclk.h |  1 +
>  2 files changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index a47736613f6e..5eba50fde396 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1267,6 +1267,8 @@ static void skl_sanitize_cdclk(struct intel_display=
 *display)
>       display->cdclk.hw.cdclk =3D 0;
>       /* force full PLL disable + enable */
>       display->cdclk.hw.vco =3D ~0;
> +     /* modesetting may require another cdclk programming */
> +     display->cdclk.hw.sanitized =3D true;
>  }
>
>  static void skl_cdclk_init_hw(struct intel_display *display)
> @@ -2365,9 +2367,10 @@ static void bxt_sanitize_cdclk(struct intel_displa=
y *display)
>
>       /* force cdclk programming */
>       display->cdclk.hw.cdclk =3D 0;
> -
>       /* force full PLL disable + enable */
>       display->cdclk.hw.vco =3D ~0;
> +     /* modesetting may require another cdclk programming */
> +     display->cdclk.hw.sanitized =3D true;
>  }
>
>  static void bxt_cdclk_init_hw(struct intel_display *display)
> @@ -3598,9 +3601,10 @@ static int intel_modeset_calc_cdclk(struct intel_a=
tomic_state *state)
>
>  int intel_cdclk_atomic_check(struct intel_atomic_state *state)
>  {
> +     struct intel_display *display =3D to_intel_display(state);
>       const struct intel_cdclk_state *old_cdclk_state;
>       struct intel_cdclk_state *new_cdclk_state;
> -     bool need_cdclk_calc =3D false;
> +     bool need_cdclk_calc =3D display->cdclk.hw.sanitized;
>       int ret;
>
>       ret =3D intel_cdclk_modeset_checks(state, &need_cdclk_calc);
> @@ -3631,6 +3635,8 @@ int intel_cdclk_atomic_check(struct intel_atomic_st=
ate *state)
>               ret =3D intel_modeset_calc_cdclk(state);
>               if (ret)
>                       return ret;
> +
> +             display->cdclk.hw.sanitized =3D false;
>       }
>
>       return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm=
/i915/display/intel_cdclk.h
> index 1ff7d078b42c..bae2b7ea2da9 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -18,6 +18,7 @@ struct intel_display;
>  struct intel_cdclk_config {
>       unsigned int cdclk, vco, ref, bypass;
>       u8 voltage_level;
> +     bool sanitized;
>       /* This field is only valid for Xe2LPD and above. */
>       bool joined_mbus;
>  };
> --
> 2.54.0
>

--
Ville Syrj=E4l=E4
Intel
