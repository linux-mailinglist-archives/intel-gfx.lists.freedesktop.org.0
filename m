Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ftBWLA0EK2op1QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:53:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 155E7674953
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:53:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fXUtl9hW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F5210F0B7;
	Thu, 11 Jun 2026 18:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 953BE10E665;
 Thu, 11 Jun 2026 18:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781203978; x=1812739978;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IhH1jDqysekXsOEVYAsug5ViZLWz1fWZ9EBNDbiwikI=;
 b=fXUtl9hWofHahRTJeVlrHFPNll1n4L4ZrbAJGhQ4Vqf01MRiy/guKcwB
 Q8fhyEpbY6xP4WjOpaKP971ZK9Fw9/Y5RPYU0OQBMAhIqfF2uSMtjqQWf
 v6PislRyxrp053aVfXFT5Ln5hZvGxWNNFU6VtRNBTtXDAe+Yw/ZlGHYKl
 /jVX15xxhoAf4uJ+do8gURFf6zWBLSsPuvJpOApXjxvu0QHiuqSqKvEKX
 hOvC8kgB36KVMdDH11RcA+lmPdVUmVIsydInL6m5r0vCOQiFOyhtX98Di
 1ZGuBJHIwZHa4qMfIjqXdWPqCQ5VlsuOo30UyDk6PjCl1fKFdGD7SmN00 Q==;
X-CSE-ConnectionGUID: MrMkb0gWS7S78w0oRWi3vQ==
X-CSE-MsgGUID: dcmC6hS/RpGE/eBrhaYKXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82034556"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="82034556"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:52:58 -0700
X-CSE-ConnectionGUID: 814mZ84VQ0OFyZsFB3IUig==
X-CSE-MsgGUID: euzQcvmjTcyo/wfavvjkyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="250513417"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:52:57 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:52:56 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 11:52:56 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:52:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EsYS3V7rMS8NvVe++yV1grc//hKBv7CgNJYHFP+oTh4xQf3yzdzThZgN7mICaNTo9fDHk24Gn5BHhp6azvA3sANzplBQG43l5cEaXtbVipO780IkxO03tE4u7fbpZVVoj/6sh/P1MfWGNE6uZESsvVjhFmy8WhWxaYFNPTi2Q7nau1QGm5fJJyrc+omEyj/2jiKXlHPdZIfuNc+OaI0bL10UmPA05ALYyx+UoM5kmeS/e/ADiCUi5v0x59KzC0VtbDaVPQ2vYZe635DDsPN6G2hFH3XmYbAIby7qtq89tXIJWKSL1TvAAaXG1DG34nEwGrgYRNmGDwYPZtLTrxIAcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+UhmoOkgG+FuKGeG6e/EKPp9lpohTV2Eklum5DWlqdY=;
 b=nUMHFqpLXA9Z8SkcVRkpUQe+TBorxGQvZGJpisqyRfSPPA18J2wHZP0i09m03KLdM01jH1JkAsaqVs1xHIg2QrE9KXezoJkmJaMyUGkjGpiRQ6hxb6HtizRv+GHTxemWmDwPdnby0HWfdHfKwafs+cUL1iSlMtlx96byX+5+VB8OuBWzFPF3BO2DgSJ1snlP5FA+BYWLFlBQ+LfTdd0hgywMFiLXHn5qTGQP0jcLfPC/nngDKb5QsEOSgqUVARNXBPcI4jnzwRkDSOrX2IkW132N/gdyukbVHjqSdfhLFZU02Fbr6hYILbaQ4hBSUbDmsrmdAEM02d+XQANe63516w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB7326.namprd11.prod.outlook.com (2603:10b6:8:106::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.13; Thu, 11 Jun 2026 18:52:51 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 18:52:51 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v5 07/14] drm/i915/psr: Add psr2 deep sleep helper API
Thread-Topic: [PATCH v5 07/14] drm/i915/psr: Add psr2 deep sleep helper API
Thread-Index: AQHc9MetuRrgj+rH/UajZJcWSseKkrY5vU5w
Date: Thu, 11 Jun 2026 18:52:51 +0000
Message-ID: <DM4PR11MB6360A0C055D6A51FCC77E4E9F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260605084421.3912865-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260605084421.3912865-8-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260605084421.3912865-8-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB7326:EE_
x-ms-office365-filtering-correlation-id: ac7c0fa9-ecec-4989-ad0d-08dec7eaa37d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|18002099003|38070700021|22082099003|4143699003|56012099006|11063799006;
x-microsoft-antispam-message-info: TtxC/WPuvs1ZOyd9CdkvtKWF47HJB1kkwXYsx7+D3aVexIBJjzAml2noFvu8SzV9akR1ZBzrjNMV4hjgUaYKuqTYcQyWXGsgmtR2pbWnedqmkkbg1MNQAn64zdpY2OKMPkhR9qk70Ax3XwYoWRCff2349KBmmLvdjRYh4Mf4mZN0lofdDKTkVm0q1shizEA6pieZg3+GkUY1Df1iy06VR6VEoT405DevAfdqdL6pA7BzAuhTAj4QsI4Iemnlc3IC2CJh9PIo+yXu7g+fxKINbXUO9ix/JWA9dDvFSXhQsuci/TFYQBKIwhXoYwlnhDyaT3/IGBZh59IMnX74Q0wQApTINoHSxaULfhCmJRL5aAj79Cw552aRY+6MhieNr7kV2pl2IuHMloZq6Yw9xnRg3DeQqfzrrnhr0YV8z8SuH+t7LToXxbzDTzMGubmXQPZBWKyv4FQA4XibvoMnthvqRJIg5iEks4MMugJ2RIsosEXfs+XpVGYKOYXWjRGx0md4DkXqN+A+BWVhOS3jUwDN8DuuMWAbSA+zIDMJUGR9xeq6O4Xie6vfnAH1ngSsyBWcBRm+lVeunJHbNJ8UBoqUvK+asRrK/5Q2pWIjixgd02Rr/2zzoDItiMqpYyB8vImNpzmiq+UzUbNAbVsEt1GGnqd4fUZF0JGJn7H4TlIF4Fu6uWg43PYXV3gK8SdnnpUngpTLHoNQ4ksXHtIM3N0vvrYHPgbChJdNCocj4sjRD4tDJlJ/2wDi+BGmCLmAToAM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(18002099003)(38070700021)(22082099003)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MYIPVzsXzwCnzoJuIskQEJ3dG3ZiRCbdJ5IHhq9hBWnVh8RLPI8YOrhc4vOZ?=
 =?us-ascii?Q?mJFcPUS0BO7I/fJ2kD1P3CfiMcGhpvKaXdbORCzDDQgucBcOHu5a4JHScMUV?=
 =?us-ascii?Q?EBv43sUKS70iGzc95SbuQFnGtF89SOTYI1z5wWBQ1VgAL2pvWeW1nYhAe269?=
 =?us-ascii?Q?dY9gYCCbR2qY5JdgIBThwTO1xaA6BiY83KPbvfz5YI2AkINgoklrUfZmdXZV?=
 =?us-ascii?Q?QxzKmLpxxVHg9HvT5neVpjfEFbKMCy83JT99qTsHxuwZntq5wNAHkN/0slk5?=
 =?us-ascii?Q?SbzA89p8JGNpY74jz569r1v0pZa3/VnlAA078FUQmpZWV5StJr/E7n+mP7XX?=
 =?us-ascii?Q?PJzTz9Q4QM5/Pjm6rKIzyQoV5NbU6NQ/xai1lBM/ZoaAVlfhfiK+xCk2lU7u?=
 =?us-ascii?Q?5i0a8/apdhKzdVWrbUjXiE11rlMO1M4cFTijHSrGiqieMEWFWSUv+f//MZB2?=
 =?us-ascii?Q?lBPVa5Usr4Z3vgMc6479l5ASMpkJsW/vcir+wg0g6n3keWv0lXReM7nI1Xsu?=
 =?us-ascii?Q?iu4fzIHHc85plqZ+KqQTCofID5Ob8EAyNdrUhdn514HpAC7J06hnGWg8Xi/g?=
 =?us-ascii?Q?76Xn+qcPMoTg2fUhghsoTG00ExvgJVjxkUEM5QWkH0n1ZY7oZ3g60O7Yrd2H?=
 =?us-ascii?Q?x3hEBd/U01Dx6mJLRf2XCNhe5kEJd6m706KgOkHs1En+QafXfqY8TzdGNj2u?=
 =?us-ascii?Q?9LXO54ypxXZW1erz/fYx6TgevAe4ONodXlV1KFbHon8P9imMTWyKS5Iwo3ws?=
 =?us-ascii?Q?t4v4Uju1IzLMA95i97SE3oggo7Mq5vY9j2hdKchJSlTsHFejbs2JTzb8bmR4?=
 =?us-ascii?Q?65mglTgTlBIsvfj0e5PYUZuRwxTBCd8T3erg0+UbAnRaGEZ1Cmbt2+FSoePQ?=
 =?us-ascii?Q?0hbjtGGwL0+rzaFKnx/OPHQ/FOcs09HYf7+UgNCZsn9QJ0JIFU3+m7HMeIqg?=
 =?us-ascii?Q?DWu9GzpCrrzMvMP8kmMabARrTfWJd/EzBDUklzQHEKPPcGJ0TFycA7Q/IP0Q?=
 =?us-ascii?Q?9EdiZd+xyaplSuHdjVDJfBC+rQyQHGMoQROMtXyaPu7/xptqMa39x9co2cn+?=
 =?us-ascii?Q?rmcouLcSMJV6x8wh9xvPtWZ28Iye8CnmYy362IuUskt06dNukb+2FXv/R4Rd?=
 =?us-ascii?Q?dn9ot2zAt7AZumSME06CRvDcqI7O1WLbsr/tMSAhe2i81oGz0OJm4z7KHWB1?=
 =?us-ascii?Q?hGRR3n5Z0+7/EMMgO2Q9k5nm1FcV1hOCIn+qWYSFn3TqjrJXp3fyHYkBdc+S?=
 =?us-ascii?Q?28Fdy+i9pjMHYLfDP/5Me7TiwA/AQLErWyj3uxdue0HnfKZ9sduo9YHRSBJ8?=
 =?us-ascii?Q?J78hXlAwZUCdaXi/l5v9Uk2xikOinekV+uZ6VrsV1idpHqtu7qV9gRkk2jrT?=
 =?us-ascii?Q?fy+4VuvwKse9U48qa9f/5obzHcnYTPJeDtVgWZiuqvjUHpxnHkVtDEQJK6B2?=
 =?us-ascii?Q?YiOR5/n+AN1hN7vI+AEwGmKXBkLzXrnFz4sy58gEJZoneIND6cmhG5K1acpJ?=
 =?us-ascii?Q?vgrMbsXzaJVJKcLvR2lg9yOPErHB+5wEB63KGPOXQnU5WXwn4epknyjZnFxG?=
 =?us-ascii?Q?0KtshdZiOq5DckPpCrE6CqLUrjqQ1aJ8ORVbtd9FsT9pUO5SRMyyanPoT9YA?=
 =?us-ascii?Q?Hux8zEx8RdhiUUZcQk/DgSFFTPUHZ4OucZ9NO78MoDCnbaSMRWyGkcd6r/dt?=
 =?us-ascii?Q?bYG4zxrfOli3NMg7myxJhgCWCRnoSxX0tQPVs4qdwRXPG2NcM7JwVMOB+K8E?=
 =?us-ascii?Q?7hIT1rTW3A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: EXJDHCajZSgAOO5mB2FAp/53Vadhq/Pbw0Wkt9dp/QY6xD8HA5wcmskJ4FBBRLrA2mfQmIdhjPxnYH4bfUi7zRkib/eCOGUp/nfEL6hHbyxPNadYcoxfkDLBc9lacRVT7ozoxRO2SASTVSOC+bNwh6v049ylqBvIZCsxM2fv7KoV92ywkT43oJFE00Jfqh5J87/ZCNpcQLX+9SGwynsRTrHs53MWQkrZbFm0kYN+b3c9g1Y5lB4Y+mEyNwggT0B4+jLyFXzeCajQsCPYpWMU2zS6hLuZiSma59MhqFns/e9jTRIfPkZ0iY3TPaMuZjIv3rwIX/jRrELxA7flB6W7Kg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac7c0fa9-ecec-4989-ad0d-08dec7eaa37d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 18:52:51.1773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uh0ni0MpkvNONmVyl5tIMtK2SL5ZfcxjCeWC4YO6Zx2KaTt5sklX60itDLaKl/+yAi6QD8MsZPg9fM2FUXuEoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7326
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 155E7674953



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Friday, June 5, 2026 2:14 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v5 07/14] drm/i915/psr: Add psr2 deep sleep helper API
>=20
> Add intel_psr2_in_deep_sleep() to check whether PSR2 is currently in
> DEEP_SLEEP state. Will be used in subsequent patches.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 21 +++++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_psr.h |  1 +
>  2 files changed, 22 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index b7344f2b865e..932aff386023 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2219,6 +2219,27 @@ static void intel_psr_exit(struct intel_dp *intel_=
dp)
>  	intel_dp->psr.active =3D false;
>  }
>=20
> +bool intel_psr2_in_deep_sleep(struct intel_dp *intel_dp) {
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +	enum transcoder cpu_transcoder;
> +	bool in_deep_sleep =3D false;
> +	u32 val;
> +
> +	mutex_lock(&intel_dp->psr.lock);
> +
> +	if (!intel_dp->psr.enabled || !intel_dp->psr.sel_update_enabled)
> +		goto out;
> +
> +	cpu_transcoder =3D intel_dp->psr.transcoder;
> +	val =3D intel_de_read(display, EDP_PSR2_STATUS(display,
> cpu_transcoder));
> +	in_deep_sleep =3D (val & EDP_PSR2_STATUS_STATE_MASK) =3D=3D
> +		EDP_PSR2_STATUS_STATE_DEEP_SLEEP;
> +out:
> +	mutex_unlock(&intel_dp->psr.lock);
> +	return in_deep_sleep;
> +}
> +
>  static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)  {
>  	struct intel_display *display =3D to_intel_display(intel_dp); diff --gi=
t
> a/drivers/gpu/drm/i915/display/intel_psr.h
> b/drivers/gpu/drm/i915/display/intel_psr.h
> index 29723e63888f..d545fdaa0de7 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -87,5 +87,6 @@ void intel_psr_compute_config_late(struct intel_dp
> *intel_dp,  int intel_psr_min_guardband(struct intel_crtc_state *crtc_sta=
te);  bool
> intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state);  boo=
l
> intel_psr_pr_async_video_timing_supported(struct intel_dp *intel_dp);
> +bool intel_psr2_in_deep_sleep(struct intel_dp *intel_dp);
>=20
>  #endif /* __INTEL_PSR_H__ */
> --
> 2.43.0

