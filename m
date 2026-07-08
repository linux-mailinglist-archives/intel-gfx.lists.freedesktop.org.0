Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id M1dfLnejTmrRRAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:22:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D84729D83
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:22:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TV6Ohjvd;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC71A10F228;
	Wed,  8 Jul 2026 19:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9428010E658;
 Wed,  8 Jul 2026 19:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783538548; x=1815074548;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xcfOPaHJUJb0r9SkGImsuQOA2xht7NMH0kXp5AIxGF4=;
 b=TV6OhjvdRkf9Q+S8ZS1tk1wkG4A6lfCwSiH+g6WApqE0ntYEvKkkhsJ5
 Pak2MVoDxUoJF6ZElCC2B4hX7ZfYe5+Q7S8H9ei443GQOlMlTej0AIqJF
 aXfibdPpTdq9HQn6IyIeA5OBVjnopd8ban95hSVp0t98XsXltxV5kQGvb
 BZYkmNOGSI+g8Un2DmTooCK/s0x4bfkV/X61u7f3GF9L2LA8AQGkSDF9D
 cBMbYsLp/GHO40ctRi+eayimxk2u/vyJTmxJPwshxilwn05qPDoaTOjp4
 RBRQL3nnjagQMQeCXJF+fDbLHexYMJq0gMcAaEJlj1w452/LKCnxfV70y g==;
X-CSE-ConnectionGUID: u/rha+cwSDyA9Cf6esIH4Q==
X-CSE-MsgGUID: nHht1TMfTCOYKq0SiJ6rcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95730735"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="95730735"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:22:28 -0700
X-CSE-ConnectionGUID: 8BCoylNtQrOqODEShQ+uJw==
X-CSE-MsgGUID: xygPpCrGR/W6twAUBfg6MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="248014072"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:22:28 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:22:27 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 12:22:27 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.22)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:22:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uTnM92fYRPDweKelG34XI1xBby6XY6X0OpDfmofyPSNGtHikWTKyBE6VC0Z7zrHs5MV3mIOgqDaZPWx3ToQiad+IsZZJvDNJW3k5OwMgzjPgNgfYhAQ1C74typu9eosJkVzi+G/ZvJqbl7FZThlLrO2t/Nn3AOLtg18XBeBL+lnCn8obkjhMUABYoRtch87q2iBsErmiZGCOePb52C9C6yZ2D4MKAKzRlZGoDFk9orLyeRVHbCTBKkTpX7kat71VpPWKx8vsqNIbI+Kh4qJ1vRLKzdTf71V2QJkEZQYC4BJvnP3vl5c7eBSw++17FmNikaOEndoD2G/g1bd2dzeEFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rZaSSIeghqjgSoT5QIwec9St+L9H9dWn/26NXFzwhBw=;
 b=lrpMlhP36ezmg1qC0/2ljlwE1fd7kT0k5ksUYuS2FCwU8YTfOACI1xuVnESoRNnmzBLideAjqmwx+XoNw2oVMtCIvlAtEvq5c0zpCcoD/Net5Gnq4H5mIdpY1trYaNcmlt1dZy5UvWXOnCqVrqNJNRvRTz5/eYloK+9733xTov/dwmx4MC/sFhibu0CS0CS5+dkp1GbD8oad47i12YVnEtjgucSd+NCtLCHpeFMtNquIOfss0dZjfjxoaJ7jDjz3PhJo1axhKM0fRMIYjnC4aFVRK4Qpv0LTvJiWUYfdcH96l5Iizg/2cGAR9afOTxyeEm6rUJbGlisOPOmEhffuXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB8212.namprd11.prod.outlook.com (2603:10b6:610:164::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Wed, 8 Jul
 2026 19:22:24 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 19:22:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Samala, Pranay" <pranay.samala@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [v3 13/14] drm/i915/color: Program Plane Post CSC registers for
 SDR planes
Thread-Topic: [v3 13/14] drm/i915/color: Program Plane Post CSC registers for
 SDR planes
Thread-Index: AQHc/j0txjADaaRMQEOmd01zqs5XzbZkIakA
Date: Wed, 8 Jul 2026 19:22:23 +0000
Message-ID: <DM4PR11MB6360616556495339CBC1A78AF4FF2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
 <20260617090819.1735153-14-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260617090819.1735153-14-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB8212:EE_
x-ms-office365-filtering-correlation-id: c4696e68-9cfa-44b3-bd6b-08dedd263d33
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|38070700021|4143699003|22082099003|11063799006|18002099003|56012099006;
x-microsoft-antispam-message-info: 8gW/E7GgLaqm7aQKAzi00CBk22q8UPVbT8C+vny5hglgSaLEnqljAkgT9/SEd54QJNfip50XOQGz8/BNvsGHnugo9mKOjB0kLzECSilTJzl/tM2g6z+tubKRCZRRlg0PrF8trK9uKBv+O7Q9V5oEBuQXH0IbAv6mYClPQj835P4uZA1h4/ikNiDb5FfQgXfoQzJ2iGk3ML5zZIJDZheZpWITajcnGXYK/3RmlyWNar3EL9h12UbRqR74r2Ec3QYncDEbFRPnYnjwZcMGx8u6jpOT6PsqYui4b4x2aNOz5bSkgO06lXfYWKWi7IpAohQzGaw5tiIZfFy0joz0PIKVeWoEuC9SNFV3u9/NLewmPjh6/VBWgDK+3BaJL2DrtTguhYrGIvtR5Ska6p2xR02Rat+9DR8j76qEz5JNNP7enHZbDnUziHfaxip8IH8pb25TsYiFpVd7zkZI8TbBtxO0G6a8pbwrM2PCb7ujmdVTaY30GXILB0OONIZN7TMjeC4tN2sXMj6QSLVisWsENdAYekNRESfQq6bNXozYVq/EhMfHUUiD8che+ukmjBM9GavOSm3Jz5SV6uNiU0sL9A26IVmMB18xPHhToKr4vMHYoVUMZdKHF6TZF9WXuAekQIoQNfupb5zqRMNjDfNVL5AVWFKSxFvMyJu2HTnxJRcdEs45lBd4EvI9k2Qdtidv0qbk1SdcbFoLd41WM72es9A4kCfHsb74/xlBQfXxXRDqIlw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(38070700021)(4143699003)(22082099003)(11063799006)(18002099003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aKjyN7uqKwuN+Tc8yc+PSS8JIBBDgkiCf63sotxXZ3TRf40kclZ+DqvVHa44?=
 =?us-ascii?Q?bHGIVWA6szphvJU/5IYnCmTrxiSxL4HNGw3n2ouTUbMqqNnM7Tk18WfVC6mu?=
 =?us-ascii?Q?N2RqZ77xfqszCKWnWR0Z8a5WVTu/8m1jXcY7VjhSu1gcOSBlIqxuQNofg8nd?=
 =?us-ascii?Q?qeZlbNe3FuFl5KtUT9x9MfmOH8sDe25WtIVbEp49UDjBd1NKVqC651kgvi66?=
 =?us-ascii?Q?Kg+6fG/xaVfHohKDLa3qHQ5Y7IcslDmZl+LqUhtMJW9MPASZZEGv+FvpnMK5?=
 =?us-ascii?Q?B6NRoyei6VnSRmLUAao8poxq2vfjKI9PXmAs/jWDsjpubwRYmhrqlb//xi3G?=
 =?us-ascii?Q?cWDhUupgk+Y9yBuGqqPRHTmVbViAYW39t/la8dPMW9+wU5mFpEhaCV0ntG6/?=
 =?us-ascii?Q?1YUZmMJ7aoOnJ9TItiAkXv5A9bMcwYehlVfJwlc7Mdye95P75kuLXsMmWjpY?=
 =?us-ascii?Q?oIwfETq1H4jL+QQDlLB7GXPjbdhJB8OZW/1QkaQybioXjWpSb3zrsYaUvfVN?=
 =?us-ascii?Q?hD2IH2nm+n2TBOrzxk05+EafFRFlpgCTk+R1/70MQHCy7Scax23VI9zP9/9M?=
 =?us-ascii?Q?613C51SWvcm6R6h88d5Ds+k4pkXt/qWTprM0ZzC1IrOgo43Eo71VEY6KEPGY?=
 =?us-ascii?Q?2x4TAuKvivjYT8JUEXF70Jd42fSrwXPFiTXNG38hhXZssMRQCHjCks3r0Eh0?=
 =?us-ascii?Q?a4xQI7mO/3n2fnFpGYyAWvJJxQpb8Li0HLjzxPpM5wtL4+rUdStKGf9K+FQc?=
 =?us-ascii?Q?30Xj6Uzw1mehK93ZososQz+PrqOcxYZMZJeEKhjvzu6VL0OgPZSY6ZDbSrpx?=
 =?us-ascii?Q?0RiDEthUwyDH4lgo60oBEGQanPxQvSsYKiowG8+D+oYvQHsZEdpsNfDsj4e5?=
 =?us-ascii?Q?yYSJC747nQGA2vFBI9dvmugRsb9iMkivNwLbsVqVRXaHRhysfi8QuMlEtayg?=
 =?us-ascii?Q?bRFfV0btSv+X00hD87ljqEejNY30AqyqTOmQSWVhyzIPyg/DHZqQrikcXZ8p?=
 =?us-ascii?Q?LaLUN3nsC/+WCzrKJTmqbCd95PGQdHEtdQAShTrlu0o12pQj2iLC5cYO8brl?=
 =?us-ascii?Q?HkUksIdnspJi+MxnxwkeMpP6pMS8Gyw6ZBy1ozzJbnW9BIGMw4ns/PLt6/dX?=
 =?us-ascii?Q?w9yFGBYz8bavvoiD7N5NG4nrimXhPImHRuvVcIt2Zy9R3PGr2BT/p3FKYPa+?=
 =?us-ascii?Q?T7vKToe6bctTxSbIOuBAOmnpxmTkWrLqaI3qzbv0spdGLp90cYsFO+PoQAW0?=
 =?us-ascii?Q?A9zrCer0ut1zM7yFUQosLKwxVmXHgBB4AfdAZfunAt1dOEsIv1mgojHdcV29?=
 =?us-ascii?Q?bfv/o55D5C4g86sKSt29aP6o14bqbYriR3gKuV+AHzcmu259xZ4KPUILppwF?=
 =?us-ascii?Q?OkgJLqM4NzYWJmrNZCw1M2l66UgHN66ui6iIQC9wd31GMyg5BG+Eo33TljuI?=
 =?us-ascii?Q?+2qWpELgXWj0gEe+/7XRtsrn80sqb9SeMS8bZQVwCAaxAcxU7IjeY4JTnvxL?=
 =?us-ascii?Q?RmadALGR4x9qBhf6RTD/w+8VbKlf7GksSDUrv6IANNBP4t54r7W0cL88Ts7P?=
 =?us-ascii?Q?nIHddx0EiN44deDqMA39gpsFBQ7KlnmcgalxJH/4NnX4A94cPj0KKeTNhPFI?=
 =?us-ascii?Q?655z/5ZKfRJD2jvLW2fi+6/oxzpvZpO5wygaHZuoioJExTdQROK7/yUuRV1C?=
 =?us-ascii?Q?oizELx4IrGkdEfIJoHbXiE+JbnShUzqLu7O0cWpmIEROMJIi3nK9sqYcH+0a?=
 =?us-ascii?Q?Fopk6c0dQA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UroV8y7bJflUnjZTA6DyHsX2hFM7KJwavp0JdfHpG9zb/lH9ICxNW6x7fsb6cUfJM0vTwBg0X7JCAfhp6oAHkJI9UKTLMiNb+yGizi23tGuu5US3m9QiOwkCKZ6guEamMS0uyx6yXGTpqZ7NSaJvT6EjJB3ssiATjJk3tYw//0h9UctHjuRSKYuFjRbCGpKiEL6ptux6hsjYPOG9q7saJvKcu+6E4i7LTRbDhlOL0ul2H4XO04ZTjs2GBf5HygzBXCWQhPnoQ5J0l93vv2HLhIKxqwRFBhrywzks/UYtnlHqsq52hjNFFOQ+PAyK8XmYIEPey56gwjNqrauXGdnwQQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4696e68-9cfa-44b3-bd6b-08dedd263d33
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 19:22:23.8266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rhjiD7wVVePI7RpYr0v9ENBj1zlMxnr5W5mi5s+bj/kV5cpNG9xqyzgR0VHTmteEFSUuKh/g2FeR+1Khkc8hdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8212
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
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 24D84729D83



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Chai=
tanya
> Kumar Borah
> Sent: Wednesday, June 17, 2026 2:38 PM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: Samala, Pranay <pranay.samala@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [v3 13/14] drm/i915/color: Program Plane Post CSC registers for =
SDR
> planes
>=20
> From: Pranay Samala <pranay.samala@intel.com>
>=20
> Implement plane post-CSC LUT support for SDR planes.
>=20
> v2:
> - Restructure loop to match HDR function pattern

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Assisted-by: Claude:claude-opus-4.6
> Signed-off-by: Pranay Samala <pranay.samala@intel.com>
> Co-developed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 41 ++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index 360046979556..be2e1d8ce0e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -4082,6 +4082,45 @@ xelpd_load_hdr_post_csc_lut(struct intel_display
> *display,
>  	intel_de_write_dsb(display, dsb,
> PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);  }
>=20
> +static void
> +xelpd_load_sdr_post_csc_lut(struct intel_display *display,
> +			    struct intel_dsb *dsb,
> +			    enum pipe pipe,
> +			    enum plane_id plane,
> +			    const struct drm_color_lut32 *post_csc_lut) {
> +	int i, lut_size =3D 32;
> +	u32 lut_val;
> +
> +	/*
> +	 * First 3 planes are HDR, so reduce by 3 to get to the right
> +	 * SDR plane offset
> +	 */
> +	plane =3D plane - 3;
> +
> +	intel_de_write_dsb(display, dsb,
> PLANE_POST_CSC_GAMC_INDEX(pipe, plane, 0),
> +			   PLANE_PAL_PREC_AUTO_INCREMENT);
> +
> +	for (i =3D 0; i < lut_size + 3; i++) {
> +		if (post_csc_lut) {
> +			if (i < lut_size)
> +				lut_val =3D
> drm_color_lut32_extract(post_csc_lut[i].green, 16);
> +			/* else duplicate last lut_val */
> +		} else {
> +			if (i < lut_size)
> +				lut_val =3D (i * ((1 << 16) - 1)) / (lut_size - 1);
> +			else
> +				lut_val =3D 1 << 16;
> +		}
> +
> +		intel_de_write_dsb(display, dsb,
> +				   PLANE_POST_CSC_GAMC_DATA(pipe, plane,
> 0),
> +				   lut_val);
> +	}
> +
> +	intel_de_write_dsb(display, dsb,
> PLANE_POST_CSC_GAMC_INDEX(pipe,
> +plane, 0), 0); }
> +
>  static void
>  xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
>  				 const struct intel_plane_state *plane_state) @@
> -4095,6 +4134,8 @@ xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb=
,
>=20
>  	if (icl_is_hdr_plane(display, plane))
>  		xelpd_load_hdr_post_csc_lut(display, dsb, pipe, plane,
> post_csc_lut);
> +	else
> +		xelpd_load_sdr_post_csc_lut(display, dsb, pipe, plane,
> post_csc_lut);
>  }
>=20
>  static void
> --
> 2.25.1

