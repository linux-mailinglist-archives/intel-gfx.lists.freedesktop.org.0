Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l2iEHbOVL2qKCwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 08:03:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D65B4683A45
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 08:03:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="g/DOL3es";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A5CE10E1CF;
	Mon, 15 Jun 2026 06:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5522710E1CB;
 Mon, 15 Jun 2026 06:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781503402; x=1813039402;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ui2ibA7BzeKDAjvHrqxGAxQduXvIlrs7xqp08tuWpdY=;
 b=g/DOL3esou4Bv3ha1EukmaB+pG6wLHsLKQN+4WK/r/fDrmPvQXxa96qw
 8akjgOGcxF/nCqWaox8KQ1tkcL1kkV/9EiI2irJ/Uwwc2jN/3obnytQBd
 xqbffewXjuFZa14orG2srywHXpJ2/cqQB7QgLK5DZTPv5xat7E8V05rbC
 KYOJzmyJlceMZHTxqln9T9NHQjYUR7ONgzpuqpYx7XfZJLQObBDw1GL3n
 KCelHvOMqkhqo5LXBWB86VB6eVPGMHLNmE6ne21lBwTCN+jI7aeQGOAZ7
 wPZSnOGi/8v0XxnfvfkKma5fuxCeG/P4jbNca7bcTbv9Qmex+s1Hk+VF2 w==;
X-CSE-ConnectionGUID: MXH3WqjxThKmpBLTWO8xxw==
X-CSE-MsgGUID: LlAkDqlmQ6udXyjUG+1Qeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="69779711"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="69779711"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 23:03:21 -0700
X-CSE-ConnectionGUID: IWG0j7PpTrW1hN73e8GTtw==
X-CSE-MsgGUID: kLxiV3/VQg6tTfSvNkZbFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="247410784"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 23:03:21 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 23:03:20 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 23:03:20 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 23:03:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YxbG5y67oBhcOFbzXvHt7KXRSBqj6s4+saomXCenr79Vgi+K3m7zpYQZxS+iqb4acqhKnIS6BJba+vU9NrTQZyfKmcgVqE58+8IBvpm3eiUNKO42jncTgDlx7HNZ2qMaPWd3jEldNjoLnxd9qLtw64H73T0zMccBncoBgUMviVzGiMva8+Vu1QT2nr22aajr3oRj3hKQRtJcmR9T6PL7kdMFLV/gZdFZOvfHC5WrjIgcBeumWHl8jQ5Leknt+I+ywue/84JV/y2msWUzSweAOK3IeDRz5823F2AEqtmQFHl4AyrM9j4lzKSHAWCKm/mv0vT5d5Ad2Wea7HAV7aqNdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lnUlu2x4TpBK5uIdkfIILRhgSRH8/udt3KxmjS6mO3Y=;
 b=UbteiidjypKw89uAxo8YOsr8tOCxACjGW6X5onTdOC91YCB4VRyxbVs/tGs0/fcS0ymXO1XPS2dANRXUzih5bKwrODn5k/jRcUqGcRa4EY7+PmyxcAVEL07KECbNyXWKx41RNFIqkUZlZ2kxbhAmBFKGpGfvnp/lSM1BaGadDUdY773WWUEzQKho+hRriMWJm46K5enCgwEIay782zB+jg3zKWJPbQUawh2ST0RLstv0NgrhOV1fjzzAnOoiW8wBlIqZ9GVrmajmluYNjGhpWyfftDqA9SfJPu0spIRH8xdssBG3bHZrUdF09Fhwuz88HqKBaLH3yy0xFc2vC1Uong==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CY8PR11MB7107.namprd11.prod.outlook.com (2603:10b6:930:51::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.15; Mon, 15 Jun 2026 06:03:15 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0092.011; Mon, 15 Jun 2026
 06:03:15 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 18/20] drm/i915/cmtg: Add trigger to enable/disable cmtg
Thread-Topic: [PATCH v8 18/20] drm/i915/cmtg: Add trigger to enable/disable
 cmtg
Thread-Index: AQHc85dmcHCbP9S8w0K1BISPnqKG0bY5uLQAgAV3e/A=
Date: Mon, 15 Jun 2026 06:03:15 +0000
Message-ID: <DS0PR11MB8049186365AACF7A005C560DF9E62@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-19-animesh.manna@intel.com>
 <DM4PR11MB63603C98F1539BF62BBD8D24F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB63603C98F1539BF62BBD8D24F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CY8PR11MB7107:EE_
x-ms-office365-filtering-correlation-id: cb94ea51-a30e-48f9-5c44-08decaa3ca4b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|38070700021|18002099003|22082099003|6133799003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: okns1I6rrgCEzJ3ifVAqYoggsC54uxrTKR35Xflpzo67lUYS+EsB4NloLpYb0bNhXUWhUD1o1cpsumcOdS0c2GXE806OklCN7wjXNrl8Pva9dKu3Un1Ou7ZllTWpIPUe8EFJghkOTQfurqASuTB2nOvTi/ryuDd/nn+vTPybhrrbEXxnANyJDGLGSH3DGAGYbuM3cAawar3tmJ34l8ButBG/wEMJR5HxdH4yfbRuYNeQj56JKVwI+6xXaVo/nuH9SlxHgHVz+Tx+uJGWxFs8UXAUPJCOtKwCNC7/SNx1Tdj3Ke9eJ0i+vUVUwvwXVIEcQx+1a55RwKhXnANBK/phtx6watp3UbRLSx/2+W+5oZ6nbbI2Ogz9LxGW9z3nyeN6iXQ7ZeLak5BJBelVSHMxoGM3IG8BkyJ0QORORoydAeXNECKp48+xWG9aMzbmQ4DyQ3d0qOFkdl1a2ejcHixFi5lAwgZVGQ1mSrl54qguMAfY+rzoI0e7TqqEuSUdiW+ZT0ZlfjaPdrlqHXW9OqQk5sYGXBPqY0gwSf5gJwVNJtFjwFRZngRafucmtk7XVHpsURRCuRFWbMjl6r0gEBsAwuhYw0bkdzGK+FrPKg8ud7Mu0eC55Rd6aE1ykMcsy8Z3C/5AUcLZIh0V0XMrMQQiMobRKu5IIyM+s6zW2lSsaz15Ne5ACSejeWn1FKxpQTmnYISa8uIwplrSyh7zXwvglWkoTNWUOA/IdAUUKBo4PIAgEqgW0DX4fJqGx7VcnN3E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(38070700021)(18002099003)(22082099003)(6133799003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g8D91R+7SU7FIUsWF1duvUQUTxK0PkXLjbdypTN3TCYrueBxn/bSIMIL7+YT?=
 =?us-ascii?Q?WZDyhSzndx4tK8QkjjXKA/BM8F3WjgS/3Utp+P4GmRGjb1Tapvg9N82fj7kk?=
 =?us-ascii?Q?k26Zq4l1lJwHWGNYGDtso6lNj63Mk005oEevghX+8NVq5frHs1ByMgdHVNS2?=
 =?us-ascii?Q?tyfeDLPlHrzrNosh5w96bGzRd5BMm5jfwv3K0lSnP5lKeEYmNVyuC0J+8OJV?=
 =?us-ascii?Q?9qKfrZsoWzzSVXqGwXspHLm9QW2H6UqXELgBIFf1NxN3RNX8nAe8sDs3fv77?=
 =?us-ascii?Q?cBiTSSuEffj/v73DMVIeuB/I7/SImkxG/A4Vcn3ACbDIHCzzbKammlwid7Cb?=
 =?us-ascii?Q?4FWHRlcJSO0CoYJFNfKYv/km1TTwj4EL8RVUZZ9JxKTs9pokxlWM5YimRpTO?=
 =?us-ascii?Q?cZkPF02rBjY5qbVEwwmYoXJQ/ifKt3DjHykbbnE2Q3JoMHhUQKn+f208YKiw?=
 =?us-ascii?Q?p18qIfTVKGY12T3ovejXm8Hp+FJvarI7sLPbyJPyJ+Um344r9gPa7d8NpqT5?=
 =?us-ascii?Q?6zdNQe/VNreOi/pDGgps3mLB2MWWyE/77y++c0Ee+KvjIaBDE2SlzNe9YNfG?=
 =?us-ascii?Q?nnIazsOzz3hJEIYlsKDVHAYI0iXov3sOqKd7XIZF65rDRLhOIzw+YcvDVZxz?=
 =?us-ascii?Q?6ScaUW1+jXOnX182ASTOqkcDrjvKWThr4ATXWJGDKAVFkUaFs/B/IDklbvCE?=
 =?us-ascii?Q?Z27TavwSinBzzpjTXn/Qe0gBk9NKV/WgKik1L3p4MAoOQziptkvm7eD2dOlh?=
 =?us-ascii?Q?E0kACiKlgKR76n604ZmX4EfJmZAFhm0hqvgQmPL9j4zVfsJIOkNAuxamXHSK?=
 =?us-ascii?Q?I+uTkwBecAYoyD5OusfkfXnZwsMukKLzrBuN8evqZ2EU7X2h6khPdQkiUbsR?=
 =?us-ascii?Q?FUWvUjiBJGP0Dq0P53nSuv9g/X3DECxYwzAEUnr+2mRlh3Shjo/DUaoortxE?=
 =?us-ascii?Q?OMbdYNlCQ6zA7IsVMpl3J/9tmDvqdGf6x6hobAzZaAVrwlIb4HzQVxTAPAWw?=
 =?us-ascii?Q?BQjH51zrPlot/lQbWqKftuQdwNUC0Y5bZaKTz/hqpdvRMERgQ4oqU57z8rPJ?=
 =?us-ascii?Q?wGHSNVNjYrWAMSYS+jr+d4SmsYvay0vNsFhRISSt90qtHFPRR6YmpP0RDBFG?=
 =?us-ascii?Q?8TY2SSfZU6sOQWlxu0Yu4Bzvo7UXuH6WjI7Cn0SbmYVvLplovE5ixemvesux?=
 =?us-ascii?Q?jh7pzyCL0J6/BuaFHHFt7JzIElpoAUTgu8pJ4p0iH5GKWks0Hg0THLAEGTJs?=
 =?us-ascii?Q?ml1OSHnEybeB7+PJpFphNurcJBLh5jxBcovzAqBNvJc1ZxccNb0UHKl84HZ0?=
 =?us-ascii?Q?wJpnr/ebCQYsv79/0NQiNP0NZYGvxDkSp3326bSx1eejXnuXydDK1FIl0rle?=
 =?us-ascii?Q?OUirDewuu8MAqWoSTBQVXwh59b14KFbRaef1OqOaimo6T/DE83X6JZsN+9sL?=
 =?us-ascii?Q?c/naVD/m/Zjp9CqLPPFdwDqj2Aq6U5ujTlRjbDWJMkc/mIKZ2o5AUCQRyios?=
 =?us-ascii?Q?rGppARQr0JQ15MBm44LoRVGPTVklELbkV+CcOlnjP/xkRKECcLgGpqi+l+Ez?=
 =?us-ascii?Q?WFa9qcHbYDY2S9qEEH95zYaCtMgWgKuPj+C3u9shtw3hbBk8AoiMdiPd+AA7?=
 =?us-ascii?Q?0A7ePkurrPArBL/OjC3CC8ahh3NqeuOcoH5edpMgmosfFXXATy6pFesRmA23?=
 =?us-ascii?Q?Ee6JUVEN5YFDMB5XXkLo9i/ykXlgeoUtKBTDCNPo1OmYd0iKHg+m7TTdahOj?=
 =?us-ascii?Q?lHHbACxnrA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UICboXp6RkbhEaLD6eq+/kFGXhi4lw1WIOHoMaluCddJYvLm4INTxawUNpZoer9gWang2GQNeSaplKyFqWT7+k7bYekBF1cbFv4kUTekq/eQ7ZUhmP/ahuFLreR+QIHlbJflUR378xGkFQG7f3csVtWFYRu3VL/3sL+cSHr4kU2V6WlQFUCR6rB8GZ+SroHa2OFJPuevFIUAhTl3SlTE3rpjSN5JK+J9Ri+6i2MiT3PX7/nUI3l2CZ62aabiN75PXPeoDsQtdwUEk3PWwa31IMVxjQPvtJaEU26NOcbG8X0lsOAmVtXhzbaJHX9W2YEfEnkfJ14zwWKx+lbawUGO4w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb94ea51-a30e-48f9-5c44-08decaa3ca4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 06:03:15.5358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0005xQgvz3t0AL6eP55JD9EM5vFUqleQV8pLr4XyNY5u4srTr9jcAtI1JJHtBt9Qg92wQelJTbg8KNY1Y9VO6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7107
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D65B4683A45



> -----Original Message-----
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Thursday, June 11, 2026 11:57 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>
> Subject: RE: [PATCH v8 18/20] drm/i915/cmtg: Add trigger to enable/disabl=
e
> cmtg
>=20
>=20
>=20
> > -----Original Message-----
> > From: Manna, Animesh <animesh.manna@intel.com>
> > Sent: Thursday, June 4, 2026 1:24 AM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> > Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>;
> > ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>;
> > Manna, Animesh <animesh.manna@intel.com>
> > Subject: [PATCH v8 18/20] drm/i915/cmtg: Add trigger to enable/disable
> > cmtg
> >
> > Enable CMTG with fixed refresh rate mode and with dynamic dc state
> enabled.
> >
> > Disable CMTG with transcoder disable or if there is a transition to
> > vrr mode from fixed refresh rate mode.
> >
> > v2:
> > - Move the enabled flag update to avoid issue in the disable timeout
> > path. [Uma]
> >
> > v3:
> > - Introduce intel_cmtg_program() rather calling multiple cmtg
> > functions. [Dibin]
> > - Set clock select before cmtg disable as can lost during dc6 entry.
> > [Dibin]
> > - Disable cmtg interrupt in crtc-disable(). [Dibin]
>=20
>=20
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c    | 25 ++++++++++----------
> >  drivers/gpu/drm/i915/display/intel_cmtg.h    |  4 +---
> >  drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++++++
> >  3 files changed, 38 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index 1d63b612c44b..b7f4be33ce2e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -323,15 +323,12 @@ void intel_cmtg_set_m_n(const struct
> > intel_crtc_state
> > *crtc_state)
> >  	intel_de_write(display, PIPE_LINK_N1(display, cmtg_transcoder),
> m_n-
> > >link_n);  }
> >
> > -void intel_cmtg_enable_sync(const struct intel_crtc_state
> > *crtc_state)
> > +static void intel_cmtg_enable_sync(const struct intel_crtc_state
> > +*crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >  	u32 cmtg_ctl;
> >
> > -	if (!intel_cmtg_is_allowed(crtc_state))
> > -		return;
> > -
> >  	cmtg_ctl =3D CMTG_SYNC_TO_PORT | CMTG_ENABLE;
> >
> >  	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), 0,
> cmtg_ctl);
> > @@ -342,15 +339,12 @@ void intel_cmtg_enable_sync(const struct
> > intel_crtc_state *crtc_state)
> >  	}
> >  }
> >
> > -void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
> > +static void intel_cmtg_enable_ddi(const struct intel_crtc_state
> > +*crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >
> > -	if (!intel_cmtg_is_allowed(crtc_state))
> > -		return;
> > -
> >  	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder),
> > 0, CMTG_SECONDARY_MODE);
> >  	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), 0,
> > CMTG_HW_GB_ENABLE);
> >  	crtc->cmtg.enabled =3D true;
> > @@ -406,7 +400,7 @@ void intel_cmtg_disable_interrupt(const struct
> > intel_crtc_state *crtc_state)
> >  #define DC3CO_ENTRY_LATENCY	55
> >  #define DC3CO_EXIT_LATENCY	40
> >
> > -void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
> > +static void intel_cmtg_set_hwgb(const struct intel_crtc_state
> > +*crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder; @@
> -
> > 415,9 +409,6 @@ void intel_cmtg_set_hwgb(const struct intel_crtc_state
> > *crtc_state)
> >  	u32 line_time_us =3D 75;
> >  	u32 val;
> >
> > -	if (!intel_cmtg_is_allowed(crtc_state))
> > -		return;
> > -
> >  	if (crtc_state->linetime)
> >  		line_time_us =3D DIV_ROUND_UP(crtc_state->linetime, 8);
> >
> > @@ -433,3 +424,13 @@ void intel_cmtg_set_hwgb(const struct
> > intel_crtc_state
> > *crtc_state)
> >
> >  	intel_de_write(display, CMTG_HW_GB(cpu_transcoder), val);  }
> > +
> > +void intel_cmtg_program(const struct intel_crtc_state *crtc_state) {
> > +	if (!intel_cmtg_is_allowed(crtc_state))
> > +		return;
> > +
> > +	intel_cmtg_enable_sync(crtc_state);
> > +	intel_cmtg_set_hwgb(crtc_state);
> > +	intel_cmtg_enable_ddi(crtc_state);
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > index 2c801a74acf9..51fc3f5a89f4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > @@ -12,8 +12,6 @@ struct intel_display;  struct intel_crtc_state;
> >
> >  void intel_cmtg_disable(const struct intel_crtc_state *crtc_state);
> > -void intel_cmtg_enable_ddi(const struct intel_crtc_state
> > *crtc_state); -void intel_cmtg_enable_sync(const struct
> > intel_crtc_state *crtc_state);  void intel_cmtg_set_m_n(const struct
> > intel_crtc_state *crtc_state);  void intel_cmtg_set_vrr_timings(const
> > struct intel_crtc_state *crtc_state);  void
> > intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state); @@
> > -23,6 +21,6 @@ void intel_cmtg_sanitize(struct intel_display
> > *display);  bool intel_cmtg_is_allowed(const struct intel_crtc_state
> > *crtc_state);  void intel_cmtg_enable_interrupt(const struct
> > intel_crtc_state *crtc_state);  void
> > intel_cmtg_disable_interrupt(const struct intel_crtc_state
> > *crtc_state); -void intel_cmtg_set_hwgb(const struct intel_crtc_state
> > *crtc_state);
> > +void intel_cmtg_program(const struct intel_crtc_state *crtc_state);
> >
> >  #endif /* __INTEL_CMTG_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index e4763ac81c39..e751a4c37842 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1790,6 +1790,11 @@ static void hsw_crtc_disable(struct
> > intel_atomic_state *state,
> >  		intel_atomic_get_old_crtc_state(state, crtc);
> >  	struct intel_crtc *pipe_crtc;
> >
> > +	if (crtc->cmtg.enabled) {
>=20
> In this path we differ from enable where we check for cmtg_is_allowed as
> well.
> We can make both enable and disable consistent.

cmtg_is_allowed() is used inside cmtg functions in both enable and disable =
sequence.
Just to double check adding below enable sequence code.

	if (modeset && new_crtc_state->hw.active && !crtc->cmtg.enabled) {
		intel_cmtg_program(new_crtc_state);
		intel_cmtg_enable_interrupt(new_crtc_state);
	}
=20
Not sure if I am missing anything please let me know.

>=20
> > +		intel_cmtg_set_clk_select(old_crtc_state);
> > +		intel_cmtg_disable(old_crtc_state);
> > +		intel_cmtg_disable_interrupt(old_crtc_state);
> > +	}
> >  	/*
> >  	 * FIXME collapse everything to one hook.
> >  	 * Need care with mst->ddi interactions.
> > @@ -6878,6 +6883,12 @@ static void intel_update_crtc(struct
> > intel_atomic_state *state,
> >  	if (intel_crtc_needs_fastset(new_crtc_state) &&
> >  	    old_crtc_state->inherited)
> >  		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
> > +
> > +	if (crtc->cmtg.enabled && (intel_crtc_vrr_enabling(state, crtc))) {
> > +		intel_cmtg_set_clk_select(new_crtc_state);
> > +		intel_cmtg_disable(new_crtc_state);
> > +		intel_cmtg_disable_interrupt(new_crtc_state);
> > +	}
> >  }
> >
> >  static void intel_old_crtc_state_disables(struct intel_atomic_state
> > *state, @@ -
> > 7547,6 +7558,19 @@ static void intel_atomic_commit_tail(struct
> > intel_atomic_state *state)
> >  	/* FIXME probably need to sequence this properly */
> >  	intel_program_dpkgc_latency(state);
> >
> > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
> > +		bool modeset =3D intel_crtc_needs_modeset(new_crtc_state);
> > +
> > +		/*
> > +		 * TODO: CMTG needs to be restored on DC6 exit and DC3co
> > entry condition
> > +		 * need to be checked before calling CMTG functions.
> > +		 */
>=20
> Assuming this is going to be taken care as part of DC3Co enabling.

Yes.

Regards,
Animesh

>=20
> With above addressed, this is
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>=20
> > +		if (modeset && new_crtc_state->hw.active && !crtc-
> > >cmtg.enabled) {
> > +			intel_cmtg_program(new_crtc_state);
> > +			intel_cmtg_enable_interrupt(new_crtc_state);
> > +		}
> > +	}
> > +
> >  	intel_wait_for_vblank_workers(state);
> >
> >  	/* FIXME: We should call drm_atomic_helper_commit_hw_done()
> here
> > --
> > 2.29.0

