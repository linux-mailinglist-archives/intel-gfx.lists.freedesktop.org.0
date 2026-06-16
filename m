Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SguOBK/bMGoXYAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 07:14:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0949C68C0D3
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 07:14:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="LP2H/D8R";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5AA10E579;
	Tue, 16 Jun 2026 05:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC08D10E579;
 Tue, 16 Jun 2026 05:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781586845; x=1813122845;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pFCY2Rohx4SYgfw3kogwGIIL34zLeU2gcVvMIdlWtwo=;
 b=LP2H/D8Rl8ifk/m20J6VCU4K9uFVMu7EEsQOuXZBR90ElXYEg2MaSEm1
 4EcTlgYoI182JeSAoJdXc/WBviQZTbfO4RtsokY79huKiKjFnjK+BWDYK
 MifrCYgQ1ll/tiSXkn3hXkd+iRrdcL/sucoAxzqBRkOwRpEikfeCiUPOt
 f7ASWNfYpeFMtUD3mLwl4YVo+zrXcbUukkGAAedzFpVLWTe3GerkQasyF
 kk+/0pht5mechJ38TfM3rrefb3Gu4zriocMHRrAe1MBuhs4DWjtVL2KUJ
 IstLSCqhvjnMgUb7kctnO2ny4hCmNhaq7ihNqS3pnrRfJlkRj7T1CJ8D/ A==;
X-CSE-ConnectionGUID: P41sY0UITke0QEOZXQKB5g==
X-CSE-MsgGUID: PXJSH7GATXKBPCGaqnnoFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93457655"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93457655"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 22:14:05 -0700
X-CSE-ConnectionGUID: 13WLl/COQ1OUo7Ason3Fjg==
X-CSE-MsgGUID: CINQoKMsSsOd0J2j6Je02g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="251585035"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 22:14:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 22:14:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 22:14:04 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.59) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 22:14:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ma34oofl/K0HvIvUxxC6xvWQrIx+CbiRPXT2RZS4L5nIhnd2d0CgdfG7OtdiKCDSPDULzg4Gk1bqE/y2ZSWhO28nfTBEsCJk7KR0NUF7KJqbEayiYL3E2deJchHCWcyuQogJ6m+VLnkqhHSKGrXXoPRxuIYSQxIO+dkgTCSJfhXSCxSnUKaUMdQWaDjMQ29JnR4Zbg7NM6UEYsaeVVKQiwMvhfQ4XzDi6G79P4xrlpefJM1XJ3jKtRiiRKdCir9pLwaFrE/ZDyKKXR7xo8WJJ5uY0xL4aeJvZS7rOuRc4ciHKxaYpT8uFnrvV3QUJr2eItAenV1e8qt2JK44XRxHdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BuF2yPMZMSsgpKVZau3dql+ouZ1m57MBYftnpL675u8=;
 b=Y+8jS4YD8b0GUhEs9KZG8y0CpKpuKfrLOFKIG8GD+YqWFCya6PCIQR7o94hAs7cMtOEbfMurq7TEXwJp5RbAV1NhPVamBYge7HZ0r/498X79ppiduTLzMW0iLjXGBkoSXRUapgLGhk7P09KgVRjenj8a7nplcj5R38AnidFZcgrVqDXpPCt57ZJU3exbzexV8+Z+E2OJH5qa2pNVMtjhmK2A8vKsff55abhJ0xqSE7LqxknSlKBr1KIEz0yAmLa9pt0TVmE5ymVZIObEXPjqhSUPaDDIiJtrHc6YiXDK0BC1Qqx5BuKzFU9FvN1WTCKiU32pxxgBvy19cH5ePB6odw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 DS7PR11MB7929.namprd11.prod.outlook.com (2603:10b6:8:e5::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Tue, 16 Jun 2026 05:13:57 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0092.011; Tue, 16 Jun 2026
 05:13:56 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/alpm: Move the check for PSR and Fixed RR in
 compute_config_late
Thread-Topic: [PATCH] drm/i915/alpm: Move the check for PSR and Fixed RR in
 compute_config_late
Thread-Index: AQHc+iDUb5jTGcA+iE+5SifUu/bcrbZApqLw
Date: Tue, 16 Jun 2026 05:13:56 +0000
Message-ID: <DS0PR11MB8049EF25E2D6CE5F09F07455F9E52@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260612034827.1528743-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260612034827.1528743-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|DS7PR11MB7929:EE_
x-ms-office365-filtering-correlation-id: 95bc118b-63ab-43c0-4ea8-08decb661124
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|23010399003|1800799024|366016|376014|38070700021|22082099003|18002099003|56012099006|3023799007|11063799006;
x-microsoft-antispam-message-info: gkqHLByqArBsR5L7a+LnQpdtnHpYB+Wc8F3iiE4qcn3nyrLjaMm1S++QoDp+QcIPyrlqtodMTo6317/+dFQ84ItHYah6m21admOiylgnxTAnRwiIobvwQw5JrJlOmkLkzBk3GKdbraUT6RRcf1mGSGSNJO/BsG0MU5R2CK7cxxyQYH0dh8dTAkZGrzPk9JN4sR/NNU6d3TyqCE0W6vfHKK1jIIEH1mdeMlm/LdB8OcRTFTS6mtodTHPgjKs+RaJ61WwpR2BW2nxen20I/o2TjhNJ2gdrNgxPXscE+Xn3TPEA2his1+yJXjUnmxNiK2KNRESDWrvADAchwS3ZTtWQcA4MRmlFHN2Zngz/rryRhEH9ClIssv3lHwnBK7T2WBNHEfKsxyeQ1paMUB+bH7TH4icuuQG0tUaUqzK3P1UxQv+1gxW84GMWeZ9sw2jcYintqgqCMc31hjjtuPGWG6ld7qr6nnOGJtOlA04TbAateBIy2mVTSxLYFanAgrwdeeW/XM2vny3Ry15J+jpEpFliQ1om5yL2qiy32ZWO+mOKSCKCOdT9XEcC05CpnHieqqRB4qz+Fq5r7YAxW0eyVa+hHt4gsyL2anLBYHsHnAzro9E7mOu1X5uMtRZTOdKWiRqL1zRaVIvySQgbZWvp9NCn/3g4SxgwGTihmk/y6EYZHyizuRO5NLf/wU5nELclmmgO3p5/RsipRHl8v/oJFLG33fRDB9bxOdBlK0q8NLX1hVE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(23010399003)(1800799024)(366016)(376014)(38070700021)(22082099003)(18002099003)(56012099006)(3023799007)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UA57F6Ir0tg3pXR4RmC4fuDq21LrnfHw5eVwRNQDYCpcvi8/6EDw3bs73G7E?=
 =?us-ascii?Q?enUK1s5y9orCc8nhjrTH9VYI/TupoexiHOkCzeuASITvIMN5L139uDckHT6A?=
 =?us-ascii?Q?As70Q32nb2p9Ng0ZXanW79f9lbPll3EzqB3PNGHzMnsyMJS3TawjcK00KCN3?=
 =?us-ascii?Q?CGcHx8zfYR3aZPyXKSCdg8+5uZERgZv3IIp26jDhGsA89WgjmsguxQCWHv9X?=
 =?us-ascii?Q?E2+gbPmBUdltdvvkYnZ+79tYeWes8HR34X1zRbB0bLO9m1ihFqfrx4dE9dVt?=
 =?us-ascii?Q?eDsrqlTrWrovNg/XKD0oeIj0g40QOveCP/MvudTPJH7XxW0Mq7+P8RFll/Bh?=
 =?us-ascii?Q?1+Q8mdgVHoc4B6pGkaYhELMkHc9uMH3rqRzD8urLz4fB8Ejqx2Pyk1OwqvML?=
 =?us-ascii?Q?Az8mQr56gVrrj4fsCusJ7kcuixWzSH+2Idsha1odPD06775UK1LfJrVnO4M8?=
 =?us-ascii?Q?7SnlmiSOiF3J7ENR4u5MuSR5OkCarq2+LXFZcY7hUC7SO8Ik0X8fiG4E1EtC?=
 =?us-ascii?Q?77krbV8d38I5JeoiOtSMNrYQ2ys0ThI3km2HEsSw7oVn3S5TBrDmVdDjURFI?=
 =?us-ascii?Q?c+A8Rl0gi2Ra/5VKi2TrbwcXQrEl6nBCneDDm+K1wHSiIVdCssEdMF37so+t?=
 =?us-ascii?Q?tPM1HZnJTWAkzconq0VQyN3scPQ8WZ0qBktHwNYUEezfO9pPSt5YkVYZeOCq?=
 =?us-ascii?Q?+WDTD5B8ZLFPVVdno5aN8ykXApD56J3KsqUZ+zECPzu79eE0u8w2PxrM2Xy+?=
 =?us-ascii?Q?2RA6Tf2s9t+GFZ0lnHVlCeuW74380Sh7Nh2LS36zO5uVEXO87CQMr8b6shdk?=
 =?us-ascii?Q?bMPCuGIOeAxPt/m6Qg+2hCzJK2M4R7xWemlDd//0rgzBT28JZ4WZ+B8udGVQ?=
 =?us-ascii?Q?yUtbFaXMNzBDIqOhdKZLBwjj2cjBR+WUBLRQJlNDRZbru1kRKyRfL+WetIbH?=
 =?us-ascii?Q?1qvui37U26Vovlu7AiAnjobrtAny1R9H45ELLToF+6BkRCbUO8lADBtF/PYV?=
 =?us-ascii?Q?KnTA3/FS9AxoN3XpWWFMEW2Dl4UXKnBhgM1MpQExBEqgnQFKPvq7jIvFpCPi?=
 =?us-ascii?Q?BSN7pv2tpi73uqgs6K5t+oQTLA+poqBf0aJV/OIh24Ov5gyTCyJ/0r5b/xTg?=
 =?us-ascii?Q?BBEV6RV5ttyc/Y8RNRHrC5DvjIMusZLOaUFUu6WY6JWkozrJFk/CuAsKITuu?=
 =?us-ascii?Q?QK1UsGPzjNkT7J9s0MVzFKukRrXuLQLrrh4S7OhIF6TMSB10uOwvUnyZc6y3?=
 =?us-ascii?Q?/PSWPlDiiFrsoHqfPgFleOg2zHU+vYwuxojCgCcjj5W42+MlRNjTE9ua1lv3?=
 =?us-ascii?Q?6xELyUD4S+lpMRJxn405vzbwN4QKaMYM3Wi1AoCvwHXFL6nOFMl2EpNc2U0d?=
 =?us-ascii?Q?4vnwyy3X7ZLLwS48TFNe3n86lput0jMBHh0AQT3qn3Obu2s45HwqAAsevK7Z?=
 =?us-ascii?Q?jj9N3xfro4Y+5iSw6lwnicn95+acG1EOz8Eum9UGrSM18bX/al8xM+pc7eET?=
 =?us-ascii?Q?bM29c99DEgRneS5fYyZsis/1W4NLlgP/MMvkuneGSP+TVdcBQBIuI+eGhVfp?=
 =?us-ascii?Q?5Rm69MZmo9o96aJEil9U3BWsbZUVOxFbYArbARAaO+sAYEancAKXN871hwkO?=
 =?us-ascii?Q?0PrVpVxcnwrVVSprTLpRCHiIeCecCk7V3YDcbW/tb+2WhXf6jhpJ4EbdDrQV?=
 =?us-ascii?Q?0+2awTWxIFZ2iGWEGvSNavlr+ChVj1oFuirz/3DHPPVN+FmelBZoSc4Jg1Ma?=
 =?us-ascii?Q?sl+57/UJNx1HvVzdDpSUpljVj4NNZfU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UPFIAnHOkpj0EkgySSf7xNOOdCjE4wQ8ISMdflXF+HmyGp7JpgQiMdZrz2DXBECgvXZ36KY1Q+cmH8LjDaXP539J7jEud66HNpyfUYYhBXw3stXiCrrfN/rmlmluzgO/4oxJz6ZGSy/HJBCR3gZ+6KZc1erlxPD93nr5hv5fk2MFtY7vz/MCbOwqwRUA7ZT0tkbsKJUkyBOa1YHq1ndb6W0ujC/8zWWhuZMvAuhbzs/aJH07JgOi1tsLtyNFNxYHWcapSfa5+ygi3GVPVdvxwsZ7AIK9Qtw5LHKbI/Eg9gbri3ISAsd4b3mJhPWozLT6LZ3xpqYvSo2Ee3etBeN4lw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95bc118b-63ab-43c0-4ea8-08decb661124
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 05:13:56.7680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u+kxLiydw0/7nvKs9TVgbcdUKwp4srh3Oh+it/0Osi441X/sHpLr/YqkbsCTZmpUmrE0WJChGe62hKflfabjRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7929
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0949C68C0D3



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Friday, June 12, 2026 9:18 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>
> Subject: [PATCH] drm/i915/alpm: Move the check for PSR and Fixed RR in
> compute_config_late
>=20
> With optimized guardband, we need to take into account LOBF requirements
> via intel_alpm_lobf_min_guardband().
>=20
> Currently, we set has_lobf based not only on whether it is supported, but
> also on whether PSR/fixed RR are ON. Since these features can switch ON a=
nd
> OFF seamlessly, this may cause LOBF to change, resulting in a change in
> guardband requirements, and eventually to a full modeset.
>=20
> To avoid this, always account for LOBF if it is supported, in the
> encoder->compute_config() stage. For this, allow has_lobf to be set
> irrespective of PSR/Fixed RR. Later, in the encoder->compute_config_late(=
)
> stage, use the PSR/Fixed RR checks to set has_lobf to the final value.
>=20
> Move the PSR/Fixed RR checks from intel_alpm_lobf_compute_config() to
> intel_alpm_lobf_compute_config_late(), where we already account for other
> LOBF constraints.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> b/drivers/gpu/drm/i915/display/intel_alpm.c
> index c6963ea420cc..b7cab744d0ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -291,6 +291,12 @@ void intel_alpm_lobf_compute_config_late(struct
> intel_dp *intel_dp,
>  	if (!crtc_state->has_lobf)
>  		return;
>=20
> +	if (crtc_state->has_psr)
> +		return;

If has_psr is true we need to reset has_lobf otherwise both flags will be t=
rue.

> +
> +	if (!intel_vrr_is_fixed_rr(crtc_state))
> +		return;

Same for fixed_rr.

> +
>  	if (!intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
>  		crtc_state->has_lobf =3D false;
>  		return;
> @@ -343,11 +349,7 @@ void intel_alpm_lobf_compute_config(struct
> intel_dp *intel_dp,
>  	if (!intel_dp->as_sdp_supported)
>  		return;
>=20
> -	if (crtc_state->has_psr)
> -		return;
> -
> -	if (!intel_vrr_always_use_vrr_tg(display) ||
> -	    !intel_vrr_is_fixed_rr(crtc_state))
> +	if (!intel_vrr_always_use_vrr_tg(display))
>  		return;
>=20
>  	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
> --
> 2.45.2

