Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9B59F57E0
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 21:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8B8A10E203;
	Tue, 17 Dec 2024 20:37:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UGFQkhKg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B85510E203
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2024 20:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734467853; x=1766003853;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bf5V5ay+OIblWkj4g8AuhXgsbyDtUIrY48m70FHawiU=;
 b=UGFQkhKgyCTdLQc9S76LLl+JEITvWhBf0iKRFcWZ7xq6iY/Md+1wEmjY
 AEN0pVmcDhXV6yqpQSRNcY69EPKaxSMiNYB9yhLwo9035Vdt5/wGfv9de
 BL7MRQuPHos9qwk/ZGnmrmCcm6e4AQ+phG3fipWMZ+JVV4qgclEf2iUvZ
 UhYv+Voh1tYcN+0TQLbwcm0/gISgPOfjmq/uoXL7sUGOnLSrSAHibpenf
 arFK+UDdd715T5Ak5PBNpAqYf1g94IDyNAm5cZTQoV+S9ipPycPzzDotF
 JRq3xBVUEjwr17WsEIJ0aYj5mfa5LKWAKZEe+ep7QK+nW2NyPaiJLeFtj A==;
X-CSE-ConnectionGUID: y35sTSB7SIy8nT01NMFUeQ==
X-CSE-MsgGUID: uhmycclZTlaJ0hhX9646Tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11289"; a="38691231"
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="38691231"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 12:37:32 -0800
X-CSE-ConnectionGUID: dPQ9iyNtQcuGI5M14+amGA==
X-CSE-MsgGUID: KjKpPyR8T7ecWajFdfnXIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="97425739"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Dec 2024 12:37:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 17 Dec 2024 12:37:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 17 Dec 2024 12:37:31 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 17 Dec 2024 12:37:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mEhYOmV1DA7QdZWFMyZSWyPHa0X/kFOx6HOxP6ydXbcKzVC0LnMhRNrEGbmFjWRObkKi5QTlL4UfUuISIs983B8MpOPoh5NDYeLg4VdMuLfjl88qOvJy8zRz5oudrZbhao/8SZDF1odKb4RtQP7fTN5CrwKcD5F5gpLMEHMKSTXJzHwJ0wPCDX1lbqaI/CjnFbhds7D4X/NnW1Gphd9+PLK0iwMjZskMY9p7R7SK9Zw9ay9AaZZVwJf4B79SlRkCsQEbCpx1arJPkrBLaQDfBALnsmxfxoR9uPS6mD2zcGRmEZMXzP5WFKDBChCNd/eaVyRYLUo2ADHjFWd697uzbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PlocF3binhPX9IV909kDzjaUA4Cn3em2Yi/bcdm1qe8=;
 b=dnakkULHpD+kf/H5FfvUp7WElfaAeTSk5tdM3YzWR9dijRA1Bpr7d4Ihpq++qWmy5zROUarStS/snsp4gCaUXBsRmRHcKQk9ns1ybS1F3NadDsMFKUsVBh0rRgySgLdFW52DLoasK4XcGltwTG/XFk7s683VNxpK0KzE1/9IL4YnfwQLyDnzx4bTopV5TlxEsiTFwtHoTgcw2Oz2UxKwTAIFA7tSkQuv/dSTS6R+9BuUTkY2InBfmA/Z69dGrxF72GcWyneVzuetszlacSJuKO49m/qppG5ziYLFKvluxdrh30d6HdRabl2JwpxhbhsBW1xJhLvx+F8MEmLRBfzg/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by CY8PR11MB6987.namprd11.prod.outlook.com (2603:10b6:930:55::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Tue, 17 Dec
 2024 20:37:24 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8251.015; Tue, 17 Dec 2024
 20:37:23 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "Taylor, Clinton A" <clinton.a.taylor@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Kalvala, Haridhar"
 <haridhar.kalvala@intel.com>, "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
Subject: RE: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
 service
Thread-Topic: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
 service
Thread-Index: AQHbUKmdnybKqNEK6UGH2HUqvnHgJLLq4uRA
Date: Tue, 17 Dec 2024 20:37:23 +0000
Message-ID: <IA1PR11MB62660FE4E97DE8DA25233221E2042@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20241217172955.3027271-1-ravi.kumar.vodapalli@intel.com>
In-Reply-To: <20241217172955.3027271-1-ravi.kumar.vodapalli@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|CY8PR11MB6987:EE_
x-ms-office365-filtering-correlation-id: aae5b382-786a-4e31-18de-08dd1eda9cc1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AsT7Q5PJzxvI1Ci/Kp4qYTVoyjHXUc1cD6tfF1PYq5/d6DmCcYUkUfUvuXOy?=
 =?us-ascii?Q?cXGQyIo0HiPWdkwDDPnxoCXGaKlIlvUVWGcVdRfzEgoFzYpexP0xdgihQcbZ?=
 =?us-ascii?Q?6NKrGhOt5XgAkSRMIM3kbtIeX+j2ZVpZMkqhk9Fwe51CG5iiPeMGOwq5Qb6n?=
 =?us-ascii?Q?s4qKWsrE+7pTtCJj6U+iJ14wL7wpWDJrSHSgnSxCC3o0HAiDWRSPi2ArlVrV?=
 =?us-ascii?Q?L8TmOhu0JWfKGWekLcUAjhBGYpN4jtMrntBiGxUD3W2e5pVSOKkdBbCDKkE4?=
 =?us-ascii?Q?wA0Yg94GPMaAHCxpZPaAplp1ftCsq/x51bx/kFa8fQphu66bkJPjrd9J0umZ?=
 =?us-ascii?Q?+Qqy/Z93H2EiqM/69ndsp8rXZkZpspzuMkNL0CB8H4KCyAZZuKboEz1qWPB0?=
 =?us-ascii?Q?WOxN+siFrb/7E2xb1Co31gbudcHursTUMKvKq+H3ahIbSf+HoMuyukNGffKU?=
 =?us-ascii?Q?PhC0C3aqVbankMjzk4TK8A62Dl1viRx3KQO+vEjysYEU3B+wjXweIZ8f2h87?=
 =?us-ascii?Q?OiBDRki7gJMflDnQUnZSI0vUaJxvCpwz8yJ1IEz1uZtodmg7p9jQ0Qw81DTz?=
 =?us-ascii?Q?EO6X+BARPDLcDKqWSnf8w7UahR2OHFldG8Z01NpwsFS3uZmjiFXXeNx8RjIJ?=
 =?us-ascii?Q?9O7R4pwlZHexttsZtNNQBBV4jpP1GCst5lC2J5DZXwS03uk0R5b7T5CVtrgs?=
 =?us-ascii?Q?IUuYVdOyteLsalubruPNfcnysro9qHzsDMEp9HT5SpMl+RwKBMkEe/YUhJMX?=
 =?us-ascii?Q?1yamtqkjTaEm4s/bq33oXPbhHQ++ZFKDuBXQTrBKQ0mQoPguP/5nLiVDO0Qp?=
 =?us-ascii?Q?AnRD3Y98KTM3pg/JvFZHshLmx/uBlDv2Gn8xTe33QkHtABea0RL7MYoDw62o?=
 =?us-ascii?Q?/PDxzO3Dd9WoATPxjUGW29JA7+0Xi1NTDcQHpCwF11dCb5UjxAAHdHVtyb6A?=
 =?us-ascii?Q?41unWAtusvkOyM3p3OioR92XBuGUstPXbTaVOo5/uHLhL+gGFMfr5R8ZPb5o?=
 =?us-ascii?Q?odqfCZHlytuAgnUGjX6KPpyVRw6yMYPhG2mEfjIOFwDhdXBj0Ek4ANrbEvrF?=
 =?us-ascii?Q?Kq3Kwii8rTVlFvIOSyhe9m4hS/tB9SIwclwUXbOC6AaSf+cP5mC5bQWWpEN7?=
 =?us-ascii?Q?vrU5flaYtNwpA5lb4VpxfoxERdI3MDPyeQeZv/GTQ3TZBNKy77cioj4RG7Dy?=
 =?us-ascii?Q?y/b9Bn9B94r2QmT27eGcvCuuf63R0GZ1/28LNopIF3HY/W4P/RD2ar5ndD8v?=
 =?us-ascii?Q?idBLIKV1apiOmic8wV2jbIeLuxYVR2qVC0CdE4CJbcy8jlML1uF7QWFEmR37?=
 =?us-ascii?Q?jSu60EVf3VviypVZ5fa+K+hJojHoBPu666QwaShjHIO7I71ry8nKjwFuzOXE?=
 =?us-ascii?Q?6aHEdSlHBuf0i2PDpJAhaGoLsBlvZftSCi0yWAOcRp4sBIt9sgcNgSB1V63e?=
 =?us-ascii?Q?2PL4eAYI5JQwZRQrdaUN6IUI4mJhHJB4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7ncprh6llGgUJEjB5umL1IGaqFrsztNfbcCRcFzXEtEdAu1FItfQiocM3ppz?=
 =?us-ascii?Q?MFgu6rDsSY0RB4SC3EWpXzkvIyFCGfFuIWBsRMOg1/Yyd8mjJnTLEZjWEeOd?=
 =?us-ascii?Q?DoVLKKeFs6oQ3aA9tv+4Fs1zHBkaDQef0Hnp2vMeWZYBL02PgddqNJV2F7Wc?=
 =?us-ascii?Q?bI2eKoo7D62eT5g0U2wosFJOOSsl/dUlVc1oOCzxIzMIigBkvjfzWt2KdWup?=
 =?us-ascii?Q?HEPDcfj4JMFkC8S8r6Jd0ERIJUqYSN/PmwRJvEUMrUzdNX8+MvoCSZtVaNTI?=
 =?us-ascii?Q?MwlCOtKAaQLvAQE/BXw2Tth1GTRKgbEoWpMBUaFB/i39AvLWyYGIlAxJJWxk?=
 =?us-ascii?Q?hpG0RGl5QtvviJD0XockxeBSti58kEJfySbqCUT3j7une87UeLQkrt3338F5?=
 =?us-ascii?Q?xS8Mkrx/FahZGK3ITJWdni/BeeCxbhRdwIdL9yvhifj/ZivynQDCMELs++P9?=
 =?us-ascii?Q?1kJzXAcTiOyBH9xf3r5uD+eLZJyAXMpR5OOnbKlrijwzAQPTxp7/GsRt1q/j?=
 =?us-ascii?Q?9b80m0R4daruTpM9OAHlTjUzWT0JdECvDs4pOhNF1TbgPQaqcN4mt85VjhNw?=
 =?us-ascii?Q?CQiL0CQNItiB/L/4e1yKpjyL4iDV6TR5xIATtPkt4taiXN/6kAK53Fe/jtdv?=
 =?us-ascii?Q?hCGl7ryw14uM7U2jjsXFuGQOl58Pw2Q2yFqkbAQYo4/Jh0X9cA3v4NEHuVZq?=
 =?us-ascii?Q?RXIaRtZ6wrLRGPNehwQDr/bLUI/x9j9skL0x48e7zKS+pIC5LuLlMvF6JWWh?=
 =?us-ascii?Q?pqsg9XKirnGDZipwHEkmX4E9vvfiN+9EL0J2cA6aQ/cOXyxLcUKspt8ZDllV?=
 =?us-ascii?Q?TRHag37fxwMiE3qCTyKEex7PLqL+GzebMBzVF6u9DPV/D2J4+PRLIQBP4uGe?=
 =?us-ascii?Q?JKdybO1VlrWbZMFyROVTGcAIdkwdISd3YO2eRsIOYiiveXtRC2kxd6JS4O+j?=
 =?us-ascii?Q?DB360pKb6PD8F4RLni6d2UQwniDvWT09ljjY2ss3xUqPn051AwW31yecD/3P?=
 =?us-ascii?Q?Hy/KrvDgYdP4RFJug2TsuGrSZy+Q9Hgr8I79Iu0CrxOrP6O1jLzPHhOk0GJ4?=
 =?us-ascii?Q?JWJNdoU3IWUGN1Rb05eEG+vTeuhGkkBrM8nw1Wqxh6vNSYYKADf7uiT/vpm1?=
 =?us-ascii?Q?uqmjssI5KQqHEMGApisFV4zI2rRYkGNjOT8aJ0VCmy2BaMEMJPq9tmAMz4Pq?=
 =?us-ascii?Q?By4jqK8FdjoB2ptmxgEuyB/j8QrctVIqpOsJU8ujtTJYZUZ7YUrxMKXquhr0?=
 =?us-ascii?Q?gTFiTWFTKz/dp0BAGdLRfBqY45YkqVnb/n4hcpiAcnhXfapkNKJosAnw3PL7?=
 =?us-ascii?Q?x4o1IpiKN0O4TT1NTvN0WcW3mrClUCWjNFDye7a6Eh6NMVjj/2+JBo3wB+eV?=
 =?us-ascii?Q?nYG4sx2VPkP/VGfgP/xvOiZNIrqTOyuJIXj6s+tx0zp0iSva5Bs83/FMnIny?=
 =?us-ascii?Q?91SCi/GwSGBM02oyANW0Aq3oCFQgl3Tyq/W+W86ZR5cw44bE9jDSg0aPmIJW?=
 =?us-ascii?Q?rqvUYD/qJCXU+rUX+3TDUj5w2ME9icUxCKQdoTwEMMnVmGeAl0+mKCfVCBru?=
 =?us-ascii?Q?0IoPI3Sht7T26wiga/lku+begf5eXaWhuvMv38YjKR+DWJ9pnipZxcDKqqz7?=
 =?us-ascii?Q?fA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aae5b382-786a-4e31-18de-08dd1eda9cc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2024 20:37:23.7597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2AqN/jNVyfPBWzW9RaD0P0YKDynAjZLZjPFtXooiNLkfpcUK4BTMFwv0g+oNAr5ld6ooQcrsLs3QWdN53QxXYq+eNXK5+nDrsGZM5rjrY4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6987
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



> -----Original Message-----
> From: Vodapalli, Ravi Kumar <ravi.kumar.vodapalli@intel.com>
> Sent: Tuesday, December 17, 2024 11:00 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vivekanandan, Balasubramani
> <balasubramani.vivekanandan@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>; Sousa, Gustavo <gustavo.sousa@intel.com>;
> Taylor, Clinton A <clinton.a.taylor@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>; Kalvala, Haridhar
> <haridhar.kalvala@intel.com>; Chauhan, Shekhar
> <shekhar.chauhan@intel.com>
> Subject: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
> service
>=20
> While display initialization along with MBUS credits programming DBUF_CTL
> register is also programmed, as a part of it the tracker state service fi=
eld is
> also set to 0x8 value when default value is other than 0x8 which are for
> platforms past display version 13.
> For remaining platforms the default value is already 0x8 so don't program
> them.
>=20
> Bspec: 49213
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 34465d56def0..cbcc4bddc01f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1126,7 +1126,7 @@ static void gen12_dbuf_slices_config(struct
> intel_display *display)  {
>  	enum dbuf_slice slice;
>=20
> -	if (display->platform.alderlake_p)
> +	if (DISPLAY_VER(display) >=3D 13)
Hi Ravi,=20
This new condition is not needed here since there's already a similar check=
 in the caller function icl_display_core_init().
Please update the condition at the caller function and remove this code fro=
m here.

Dnyaneshwar,
>  		return;
>=20
>  	for_each_dbuf_slice(display, slice)
> --
> 2.25.1

