Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qhKwKQgpT2qSbQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 06:52:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A702E72C99C
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 06:52:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OOXm+Izs;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70FDA10E02C;
	Thu,  9 Jul 2026 04:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D86AE10E008;
 Thu,  9 Jul 2026 04:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783572740; x=1815108740;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xt+w7RqLYwlnKV/CYKSR18tyh9EcjasAcOPBiX2XH50=;
 b=OOXm+Izs/Ew0FwsQVAmnYfac3Ok17paGwil/UjHuWMaRRKm2TOdTmwXX
 p0qMGvAOwe+dtL5XnQo0xTa4X2G+Ei3F4vGm9U3EWIkrHygbyEx0tGscj
 UivIZcGewcF8FzfdY88Tw2p5dMgfZg6hSc7OzK1YZ1tmqtDN5f59d1xQZ
 nV9BTvV7p5NUjVKeemZV+NDn+Kamr0/o2M4B9r0/ODLwk4JbYJ7wYF9oO
 ry/GfrJVHLM6heRnVpV9Xv/I9A+a6JhJ5bZj12lQzvEVaRCi3TIrm6VDU
 Co3rHiEnKWqC2CDf9xPZxgBxD35YBjnPccsoem7m6XAdojZEuS0HQQmIT A==;
X-CSE-ConnectionGUID: hTxpnkNNTBaXqO66t0TQMw==
X-CSE-MsgGUID: 8yJoirXGSYmYW/JnzYiOXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="86788132"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="86788132"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 21:52:19 -0700
X-CSE-ConnectionGUID: pgKw0BuBSnuUQl2aFVRzXg==
X-CSE-MsgGUID: Ko5u7a+1RJGiPusdNOCeNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="250059052"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 21:52:19 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 21:52:19 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 21:52:19 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.48)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 21:52:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gF7y2qsAyNRkT8Wlr28rVdwumQ2Rj7jN9JpfA7QAQqty1NvxnlAy6FwfK8oKSCT3Bsr+ddO6Ykb+qk3Z/GIWCRQU+A8/ami3i3EciL4s72o/ZzehlEFL/YqphZcPfZ5Srj1DeJ85RYMsZ5WGLXhxt9tnD5RLSupLnPBvoQy9OvR6aD+fslLk8TDzlRmkX6BaCbWQYXJ4zTWUdX4E+JwN3/oKof6couvkR2yzFY4+zJpKFIrZkYOdAxDlt3yZiAo5jt7qbMVwNvcceYujZX2Anp+cUTZqyJgjaVvzq6EcrBgkIS4OFrN4lrf3S58qPG90QklyzCABoQJQ0+hvX5iihw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GuzS7NmL7pfM7hvIQk3c1scEryDoiPEPSrq9DBIAKuo=;
 b=YK5jYPM9EOzsYdwLb1xr7YgY7Qe4x4wTZd02lnYtHpIrJGoIIxRDaLCOWf1zocxO+YpZizUM9rrok1ECJuGjGwUCKTzJ/8UHq6A9OfwKrOZnFAehlQMVrj5stWjrDlX7QjBhf5lqUk9KSuX+Ip2LSx2qjhzYBseTR1ouqFyT65LnjmvmESpHAt94JojER0ef0cCb7ahRr7x71Z3OFHCwWvN94ZZnmD296SbufZwXDJZLdxgYQeyYQ1FJ1jcdSrWdjtCX1y6VUTWzwfVBW4VpUH3B8Jci864Py9nj/x3M/2oRyxjCdgtBMjg3AtBDlZVJJndSESntBL+r4PqIq4RFaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH7PR11MB6425.namprd11.prod.outlook.com (2603:10b6:510:1f7::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 9 Jul 2026
 04:52:09 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31%7]) with mapi id 15.21.0181.008; Thu, 9 Jul 2026
 04:52:09 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vehmanen, Kai" <kai.vehmanen@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Lee, Shawn C"
 <shawn.c.lee@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH v3] drm/i915/audio: treat UHBR SST like MST for
 cpu_transcoder signalling
Thread-Topic: [PATCH v3] drm/i915/audio: treat UHBR SST like MST for
 cpu_transcoder signalling
Thread-Index: AQHdDs93L+ud6Np5LUikDjYipnZ6rbZkn2bw
Date: Thu, 9 Jul 2026 04:52:08 +0000
Message-ID: <IA1PR11MB6348E468C2416F0226FECDF1B2FE2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20260708113558.1863316-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20260708113558.1863316-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: kai.vehmanen@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH7PR11MB6425:EE_
x-ms-office365-filtering-correlation-id: c3206012-1d7f-444c-a5aa-08dedd75d4fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|18002099003|22082099003|38070700021|11063799006|3023799007|56012099006;
x-microsoft-antispam-message-info: zQ2llEGJHmuiA2ANhuaetFyZt1BfuSyaf5fnKldLKTtvIifwK4QmrRoVqvu4zZWXKkZMRQmAGdR1PVRdQFR33F0Wh5tQtz3Iotxh2k8Pr67Q0Oia73cXYL0pb17eg3JLTaeZIfzBpsTKtTrP5zFcnIy1RRrbhOaOKUyo5DWF9Vm89O51rZk7V/dAuQFrYsHlE4m+ItItZGgmQDFL6So6wpcfdq7sm0c2QSTRMw31bUShiw9fZHSyJBUozCesyOxg5hTF05tQElXWK16Z4aZuBfYVcr1/DXDvZbbvRqhRbPuyECJBp0bX+rS5mCfetzMsXiWyuEdGBBlZ172nVFVJGfHvblTTxGxQxahWYE9Wq+HUGkTi3Y0T9gI2WDV38E+emvBqTeWso/dW/pFyLj9dh0/yLntXoz5gOq5Wvd693UJcj1KVj0AV5QJQQjE6c8G24co6mUDINwZs5oc3FhdVI3X4VvjEs/blPw32exaHcl4JXTnxbWS++YiUtgbyrfyOcuKCm3qxDw8aWGroZ3YeQBti7yZmV2mW83eCkM5YsT8w9P13QuesmbniyeHywLAl9f8U0k3PSaZeZV8AyC0D0/PP8CsbRc5097KNDFmGASeP0JfM634KVfCVRhTJ0Ugypk7dHNztjbPcki/xyStbuJDojabd3nlHrHbHDSi4NhcIFMd/cq2/tVNHQmKoZn0Qrqnedu64CIUpNHZwNMdaCTQ2jpxhDUSx0aKyJsGmtYk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(18002099003)(22082099003)(38070700021)(11063799006)(3023799007)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sQwTFJtfwF/c92+zDyw/9nY3j+YECPyVDKh2mCK7EE5WoA7ckBjHfzWhoe0n?=
 =?us-ascii?Q?QDrXjRHgLT3QJiBRobeyeAO1t9ubeWWKZGrXPKtnYF4tbmwov16D0wXo4d4I?=
 =?us-ascii?Q?y9VQCh0ORZJeqbTVpovOne3nuMqfKFM4yxShRMqvX+z8yZnSGezfTgLWppTQ?=
 =?us-ascii?Q?ZgSOB/VfgRMk/cfj5TNyCWaO9CtsBrON+0glQukKFi7qVYe3qKCyKCqUqgWu?=
 =?us-ascii?Q?umTV5h4wgwsOsoHXeAgQ5rCzlTe8dwWHYeUSUtSdWTlMG592wDMoTHgHze4t?=
 =?us-ascii?Q?NtxHrf004qNWDFCgRdtxTherWjRkGEqpBKJNpsDb3Il0mC/xRnpBZg1ACc+/?=
 =?us-ascii?Q?2R6YB3yDbUjFS12NWRkuAhkfp+o7cCmEHhNco2Z3Z87Uf4lslwr6Tqt2dDOC?=
 =?us-ascii?Q?zowV70r5QZJex5oZNj9/IYuOT6OYnhlL3rJmCYao3HUTmcuhU5bqTN48MFP/?=
 =?us-ascii?Q?FzfmAq1sIcHNTPDqfff+ui9PTr+sWok1VcwmbYMVkOoqIlENT49QbB+MTHMa?=
 =?us-ascii?Q?UBxCGjkV+w8HVOZfgFbpFUVw3yBwPwaCWBeAzb1DIngr6Jo+4wl239BGCmSP?=
 =?us-ascii?Q?/cILvp/UbiS2fB0BuSy0qPlCUGYGx6n8QjZmtmGS7hP9dMAtbKLWMR/Mns4p?=
 =?us-ascii?Q?bvjH/W0EETBNZJKLQoaenAecjbDUGOfeb06sI7JcAUGHPQiZpfTeSuEz2SWM?=
 =?us-ascii?Q?g1XCBvLxq3+PlQcliBOvw6z+IXVU6CDi8Ky3zdAmjjHuAYsubxU/4S9LPkbf?=
 =?us-ascii?Q?b+csNmn05iQGXd1u3B/4R6K4YxqTrUHmW45XswYV9k7SWSwq3QXsdntCOM+U?=
 =?us-ascii?Q?s1mZWO/I1lbgYELVYt84uLMn3BSSWWYRr3UPnFAZbMUHMrZg2wu/Dlvdl3dg?=
 =?us-ascii?Q?QtCOWpySnfJj4AJXgyGdgzJWRX28dDsw8MRwr0SDwcjT/YsZ8l16T76ihfMA?=
 =?us-ascii?Q?6SeW01N+x51vhjoQZB3dJGsK+hAv8oh5gY+rQOJQYD35FmHEJpIh1ypEipZI?=
 =?us-ascii?Q?gH9l4UMs1/iFEWubDa5vpzkxPXeE3X69nmJsHk188cqJKhshQzy3wozjti9B?=
 =?us-ascii?Q?+IkxNam+26xMZhr6mYerH9sJ9Op6HYR49G8oUL3khH2sBIOx+G69f0Cyn76t?=
 =?us-ascii?Q?A2PcVKBJX1kkfk671BxGmdIn5HqgYy0m2lLnf15T91E0VOK8nm9zTn4qrmNO?=
 =?us-ascii?Q?HyRCKY8SCHAi48hiK9rn6jpQ0p1nHvKMMfwv6nS18n5b9XRK9EwMDkJY5hJ0?=
 =?us-ascii?Q?+i9qzFwrTpIBtPtFrzOWgjWkBpWGaVwNqkyh9fsKXyaK9Z+lfO+Qbrb+PR6c?=
 =?us-ascii?Q?lZ8VINPtDvAwqUupSt1jJ2Qg6NgYZMitmpO2gZEc/lO/hCntzw/u4nd1EcOt?=
 =?us-ascii?Q?tcChqs32ayRF643AHLd5Xgk+cHTSjbKkmPRDfDcc4u3EDA4fTw36qRrK2X7u?=
 =?us-ascii?Q?3h3VRlyuX8pt9K0G+uzoyyosPWzdEIXrHucvgB6sVNnhWgvuMMHXlgH3N7fW?=
 =?us-ascii?Q?M9DTAuneMwI+r7Dr5FB/+BHwWzm/kpneNUWgU5nwXRU05uvZe0NwGvc8+mXa?=
 =?us-ascii?Q?/r/X95fy0+Yj6u0xqIL9OyAd8bKThX2slL1QSo38vlUVkDzfnOhZRmp2CMst?=
 =?us-ascii?Q?hHCjih7hl/MuCH5JmBQjOmB+KtHIbY2LHLAQPQOXmiDZlX2K1HA4Ydd4SaG9?=
 =?us-ascii?Q?yCC/hNqpJD7BERYrtQ1lHqLonLOcxDh17WN2i5zfuh930XccZPuyigcla9N8?=
 =?us-ascii?Q?6KsDHY6jO3WgBr3cBorCfbkICH07o7Y=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: TF5adurr+AbDXUbidWE9dUo72XOdcBgORYOdoXgUSwphkDalQurE8Psn9JuTtKqCWp8B2g0UTXHgVt3MCAQm62ymM2vZyxDiZSqmtNMWzpiIDmAY7Tez+hdPbqls5jdg9lGAIHBcaf5KJiAPxM+y4E7B7yI3DTRizoPqlhNuIFrArmCi/0PikSbqeoFTS4xHX0t/xNbaE2Tbcxrw5uZTAcyocAVlEFtEySWuVnuSkaN9nTdT4EuFTyXX07bXFKT9YsKLpWGi7lS+DYjmfSZ5ylW/z+2SLDm9OfvVZcfSxb/ErwOlOhBdUaSlIEJQdGYiuwUPWoxT/CgHE/VsmyBYmg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3206012-1d7f-444c-a5aa-08dedd75d4fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2026 04:52:08.7026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p6SFXVQX6gVdXuuKZFMPOTHjeK51iUAT/GI+a+RoBQs0dcTF360pcPh99LGVoljOwOk/p5sOtx8+3iZM1F/bP2Em6n15a0q5OTdVe3nVRikAo7qkXrVjT5xOfkkb00oV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6425
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,IA1PR11MB6348.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A702E72C99C

Hello,

Also to change Authorship of @Vehmanen, Kai before merging.

Regards,
Mitul

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: 08 July 2026 17:06
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> Lee, Shawn C <shawn.c.lee@intel.com>; Vehmanen, Kai
> <kai.vehmanen@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH v3] drm/i915/audio: treat UHBR SST like MST for
> cpu_transcoder signalling
>=20
> Both DP MST and UHBR SST require the audio component to use a real
> cpu_transcoder (>=3D 0) value to identify the audio stream on a port.
> For DP MST this was already handled; for UHBR SST it was not, causing
> pin_eld_notify() to signal cpu_transcoder =3D -1 (the legacy SST sentinel=
) and
> find_audio_state() to skip the per-transcoder entry for the UHBR stream.
>=20
> After suspend/resume or replug, the ELD lookup fails and audio goes silen=
t. Fix
> by detecting UHBR SST alongside DP MST when deciding whether a real
> cpu_transcoder value must be used for audio state addressing, in both the
> pin_eld_notify() signalling and the
> find_audio_state() lookup paths.
>=20
> --v2:
> - Commit message and comment update. (Suraj)
> - Change function name has_mst_transcoder. (Suraj)
> - Avoid Live crtc access in find_audio_state. (Suraj)
>=20
> --v3:
> - Minor comment changes to avoid MST over 128b/132b confusion. (Suraj)
>=20
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 55 ++++++++++++++-----
>  .../gpu/drm/i915/display/intel_display_core.h |  1 +
>  2 files changed, 41 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 9729f1837d2c..fb0d7ed6fbd6 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -38,6 +38,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_display_wa.h"
> +#include "intel_dp.h"
>  #include "intel_lpe_audio.h"
>=20
>  /**
> @@ -696,6 +697,13 @@ static void ibx_audio_codec_enable(struct
> intel_encoder *encoder,
>  	mutex_unlock(&display->audio.mutex);
>  }
>=20
> +static
> +bool intel_audio_needs_cpu_transcoder_id(const struct intel_crtc_state
> +*crtc_state) {
> +	return intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
> +	       intel_dp_is_uhbr(crtc_state);
> +}
> +
>  bool intel_audio_compute_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state)
> @@ -762,6 +770,8 @@ void intel_audio_codec_enable(struct intel_encoder
> *encoder,
>  	audio_state =3D &display->audio.state[cpu_transcoder];
>=20
>  	audio_state->encoder =3D encoder;
> +	audio_state->needs_cpu_transcoder_id =3D
> +			intel_audio_needs_cpu_transcoder_id(crtc_state);
>  	BUILD_BUG_ON(sizeof(audio_state->eld) !=3D sizeof(crtc_state->eld));
>  	memcpy(audio_state->eld, crtc_state->eld, sizeof(audio_state->eld));
>=20
> @@ -769,8 +779,12 @@ void intel_audio_codec_enable(struct intel_encoder
> *encoder,
>=20
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) {
> -		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> MST cases */
> -		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> +		/*
> +		 * Audio drivers expect cpu_transcoder =3D -1 to indicate
> +		 * Non-MST/HBR cases. MST and UHBR SST are addressed by
> +		 * a real cpu_transcoder.
> +		 */
> +		if (!intel_audio_needs_cpu_transcoder_id(crtc_state))
>  			cpu_transcoder =3D -1;
>  		acomp->base.audio_ops->pin_eld_notify(acomp-
> >base.audio_ops->audio_ptr,
>  						      (int)port,
> (int)cpu_transcoder); @@ -819,14 +833,19 @@ void
> intel_audio_codec_disable(struct intel_encoder *encoder,
>  	audio_state =3D &display->audio.state[cpu_transcoder];
>=20
>  	audio_state->encoder =3D NULL;
> +	audio_state->needs_cpu_transcoder_id =3D false;
>  	memset(audio_state->eld, 0, sizeof(audio_state->eld));
>=20
>  	mutex_unlock(&display->audio.mutex);
>=20
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) {
> -		/* audio drivers expect cpu_transcoder =3D -1 to indicate Non-
> MST cases */
> -		if (!intel_crtc_has_type(old_crtc_state,
> INTEL_OUTPUT_DP_MST))
> +		/*
> +		 * Audio drivers expect cpu_transcoder =3D -1 to indicate
> +		 * Non-MST/HBR cases. MST and UHBR SST are addressed by
> +		 * a real cpu_transcoder.
> +		 */
> +		if (!intel_audio_needs_cpu_transcoder_id(old_crtc_state))
>  			cpu_transcoder =3D -1;
>  		acomp->base.audio_ops->pin_eld_notify(acomp-
> >base.audio_ops->audio_ptr,
>  						      (int)port,
> (int)cpu_transcoder); @@ -1118,18 +1137,24 @@ static int
> intel_audio_component_get_cdclk_freq(struct device *kdev)  }
>=20
>  /*
> - * get the intel audio state according to the parameter port and
> cpu_transcoder
> - * MST & (cpu_transcoder >=3D 0): return the
> audio.state[cpu_transcoder].encoder],
> - *   when port is matched
> - * MST & (cpu_transcoder < 0): this is invalid
> - * Non-MST & (cpu_transcoder >=3D 0): only cpu_transcoder =3D 0 (the fir=
st
> device entry)
> - *   will get the right intel_encoder with port matched
> - * Non-MST & (cpu_transcoder < 0): get the right intel_encoder with port
> matched
> + * Get the intel audio state for a given (port, cpu_transcoder).
> + *
> + * Streams are addressed either by a real cpu_transcoder (DP MST and
> + UHBR SST,
> + * i.e. entries whose stored needs_cpu_transcoder_id is true) or by
> + port alone
> + * (legacy SST). Both the signalling side (pin_eld_notify()) and the
> + lookup
> + * side use the same predicate, so the two are symmetric.
> + *
> + * cpu_transcoder >=3D 0 & needs_cpu_transcoder_id: return
> audio.state[cpu_transcoder]
> + *   when the port matches.
> + * cpu_transcoder <  0 & !needs_cpu_transcoder_id: return the first port=
-
> matching
> + *   entry.
> + * cpu_transcoder =3D  0 & !needs_cpu_transcoder_id: falls through to th=
e port-
> only
> + *   loop so the first device entry of a legacy SST port is still found.
>   */
>  static struct intel_audio_state *find_audio_state(struct intel_display *=
display,
>  						  int port, int cpu_transcoder)
>  {
> -	/* MST */
> +	/* MST, or UHBR SST. */
>  	if (cpu_transcoder >=3D 0) {
>  		struct intel_audio_state *audio_state;
>  		struct intel_encoder *encoder;
> @@ -1142,11 +1167,11 @@ static struct intel_audio_state
> *find_audio_state(struct intel_display *display,
>  		encoder =3D audio_state->encoder;
>=20
>  		if (encoder && encoder->port =3D=3D port &&
> -		    encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> +		    audio_state->needs_cpu_transcoder_id)
>  			return audio_state;
>  	}
>=20
> -	/* Non-MST */
> +	/* Legacy SST. */
>  	if (cpu_transcoder > 0)
>  		return NULL;
>=20
> @@ -1158,7 +1183,7 @@ static struct intel_audio_state
> *find_audio_state(struct intel_display *display,
>  		encoder =3D audio_state->encoder;
>=20
>  		if (encoder && encoder->port =3D=3D port &&
> -		    encoder->type !=3D INTEL_OUTPUT_DP_MST)
> +		    !audio_state->needs_cpu_transcoder_id)
>  			return audio_state;
>  	}
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 17f7d3abdb9c..a6129d0b523f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -97,6 +97,7 @@ struct intel_wm_funcs {  struct intel_audio_state {
>  	struct intel_encoder *encoder;
>  	u8 eld[MAX_ELD_BYTES];
> +	bool needs_cpu_transcoder_id;  /* MST, or SST on UHBR link */
>  };
>=20
>  struct intel_audio {
> --
> 2.48.1

