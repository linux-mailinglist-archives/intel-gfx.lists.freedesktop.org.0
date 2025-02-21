Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09624A3ED50
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 08:23:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06D6710EA2E;
	Fri, 21 Feb 2025 07:23:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bs+wSrCO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E33710E14F;
 Fri, 21 Feb 2025 07:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740122630; x=1771658630;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=CCpgX0fc5OAvDys6sJT8e/EqVbX7v0OxojXIXVEekDU=;
 b=bs+wSrCO43zlnW5YGWGD9h0DJy79zpIzdTp8qgjhVDthlV3oARvt/Cqv
 0m9FAKqLBar/fymrqw1cZVjxxfJaN/SJkwpUUxHGZY/XafMWDBiMCdh3S
 nfkNkcvvzvsixBPMTEPOb3bhq2M+VyHT34gnMFBoeosyDpArI3utTiC3U
 pdQCcEr1hSDLtfslUBsE6a6TFAdIEemTb+lIWF3t4dblNiyJOyQiiFYvr
 d36X0n3dpF6Mu1pSR1KVfqv0XZeEGigLcXfZWUFeue+4ukmsIwjTQDHvp
 85P02AiOnXM12XTdqQHB8j8DQgFIF3K4Aqz/3mMKpxE+uC626UTnJ/2eR g==;
X-CSE-ConnectionGUID: e21eztgoR4+bHDhGsONgVw==
X-CSE-MsgGUID: aBdfH3w3TjyDsBfgJeMXUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="40851177"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="40851177"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 23:23:50 -0800
X-CSE-ConnectionGUID: JEIa/BygQ2i5LjpyMxh6TQ==
X-CSE-MsgGUID: eJEqLucrSvOb2lEzyUvvCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="119916063"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2025 23:23:48 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Feb 2025 23:23:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Feb 2025 23:23:42 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 23:23:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cPGu1xalFXSLjvpAPkVmKygEaY4SKcO9hH0vcJp0rz2Ydo6nM6mDboI/TKzs6Wj3Qd89h6OO1Mb1NlfFX4P7mT7x3PIvGown3NX7lPZHZWtKDnKr7tTTRvQ5XCJeIkkHWVto4Dbbwd/YaI1sJVStmmaQc4gJf4Dr/JSEmKncwe3gE/iLL5jEOtdqNSQOQwqN1dHQMrpn4Nu0+dO77NHnRlioEX8bzi+Fous+pV7Cf2m7mvE3DtiEt81ZjSdkqkPaXeLcOld9rt0o+x+ANj3ZsW/M4QMRw3ZktTBYdRlEU3wNjNf7tsqva+39LAWJPt55iOhes8MOM5kiM5/lLGkB4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1vGNyPta/PbsTXfx8Chm3A1NTdctpQw25JxLyqtFYWQ=;
 b=DiMWv0p2O9c41am/l64MqG05GlZC1+gtUj6ztJIp9p8s10ciYm58ko/4FcGEANRLjy7ZwcRKOgIoyEwevXv9A4m3SgPj1BHdXXMXJFA89F6thXSjl0moTl9mbTsWAx3on9vdUCMl7+aT3LQs6Pm4i7Kg6nEsaPl5Dw7Of5PUGumyyQC2UBUTQ1xj0YUCif2YRACP8ZScNFThSd8rrcH6x3+QiLUA2nzd1gTWu1DTz+oeFGEOB95gl1i7LRyv0qF5+o7rhyLyRvthYuHlGftNKw2CMO6RMaeaEWVTf61COyn1w5ZPXUdV5fr8BePZbhFYBd5TSJc3lOFi2SFSJYkEBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by SA2PR11MB4907.namprd11.prod.outlook.com (2603:10b6:806:111::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.14; Fri, 21 Feb
 2025 07:23:24 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::a97:3283:cf7:d746]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::a97:3283:cf7:d746%4]) with mapi id 15.20.8466.015; Fri, 21 Feb 2025
 07:23:24 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Subject: RE: [PATCH v2] drm/i915/dsc: Change rc parameters calculation for DSC
 1.1
Thread-Topic: [PATCH v2] drm/i915/dsc: Change rc parameters calculation for
 DSC 1.1
Thread-Index: AQHbhAPi+AaxbRoNH0OzbD/CCr4wOrNRHWWAgAA3UmA=
Date: Fri, 21 Feb 2025 07:23:24 +0000
Message-ID: <SJ0PR11MB58942BE06812C8FD1E9B7DB5F1C72@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20250220032603.434570-1-william.tseng@intel.com>
 <20250221015637.507741-1-william.tseng@intel.com>
 <SN7PR11MB6750624A2D50BF81D2E32D82E3C72@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750624A2D50BF81D2E32D82E3C72@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|SA2PR11MB4907:EE_
x-ms-office365-filtering-correlation-id: f1dedc6c-02c2-433b-9cf4-08dd5248a0aa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?EiAdYSGVLQXovLu31mMPuyRU+wL3K2BozhhET4HcjDeJEuIhxhTHnkfy/W3E?=
 =?us-ascii?Q?AzDiPjHiZWVV4JD0uj5L39u9bUuuA5SN2DUOMadWEqk9JqL7W2Gdb5OWRBNk?=
 =?us-ascii?Q?uLMW6Q2UB7tONWMKywLW9gYl0z4BpFgHfpkU5CTw1PkY0ibwPvChJcVGgYOc?=
 =?us-ascii?Q?Eo1B8c8CJOV6Oj6NpHqNfEGK6C/6q4KJkiaP2/zcvH2J+KspcfY49yWZmNGb?=
 =?us-ascii?Q?hpEMPjTtfgvYAQkD3b3AL1Uovh0mtRWR2a77tZbjBkbSsvnhqvq0J2GeONU6?=
 =?us-ascii?Q?fto2tVhc5DDdcQ6fPth2nsPsnfULS7zWSKztAgSdz5jN/MYm2xKqiIJsxJ3I?=
 =?us-ascii?Q?BKo+GmayWlrKhu124d9aWwoAmyudpyI00/KwOU++ILIZXweEqFUh5IZQzGje?=
 =?us-ascii?Q?LS1URQCz5m4B4dxhWTEf9uC8YhJ9ctkSsKqUF2Jlzc7+akUeAi77q+ri/g+v?=
 =?us-ascii?Q?7LAxgyN7qNoBKztn7KwkhV5rs5ioMxm8f245RZqZhJCKTisKOhOAZuQEUpBt?=
 =?us-ascii?Q?0/JKe3lgkBGOlJoy4tPVX8eim+ZjJStR7Go9ZkzgKg+IjvQUUiLTN2UjE4q7?=
 =?us-ascii?Q?TnQEO2hV60k7mqfEIAbSwXCOZDOEWce2LHRgzuoPRcIpj1LmcJ+mGIzLdV7X?=
 =?us-ascii?Q?7HlVUP08M0xhZpMFPH0B1K9OiblOGWSoo9p3qeKM5wQ4CYNmGbwtoZ8+lYXh?=
 =?us-ascii?Q?yGaZl4g2n/LCm+RR7zdsAaj8TwswxQmVkEBI/FkTxRbEwjwHw9aOi3+enVRi?=
 =?us-ascii?Q?GQD7uzU1+pIccwGWqY79du9rXWlOIjgWlzGmWvmkvptvfdDl6K8powbLATPS?=
 =?us-ascii?Q?Uh9+ZBk6SYKBSpoEGQFi9CGb/3hI7qgPkuoqGpdNAKkrOIw9vep8knSbLiax?=
 =?us-ascii?Q?FYCB3mePtyPddlYIviregskMG244+tK7uQielTH0yjVHU+jw1Zej2QICmpL1?=
 =?us-ascii?Q?uEfEZjcKpGYKBCNc1QBynFqXOkVrA7RV9Hoa5jbs3C9ii+PviMMuYjjuQZqP?=
 =?us-ascii?Q?r9gTgi+Q8qj/wI3BcK+TK+Tx5rfVJ2ee6nUH0S9857CMpfzHeKqZeqD84TXX?=
 =?us-ascii?Q?UIQ/qkokkqwwn4UFSiFx0bptdMdp86OuF/aSwXOiPfhBg0i5N2TB9CIjXA0i?=
 =?us-ascii?Q?LMfZ8KAyTX5OLLUt/HH+i7NUJTiwuaJ1i/W9EvplMsaJwklehsjLgRo4JFdx?=
 =?us-ascii?Q?TmL+GRcM4Zt8Asv/bgi6kZ77AOehzu+doLFT7jEYkxz8GZYoN/QLNZRjGQWd?=
 =?us-ascii?Q?8Zxd+k+wF5d+26Np/WMxTRqxhlsFSa9Xwx1Zo/1miWHL7XcEh9+NnZkjVN9K?=
 =?us-ascii?Q?/fB/Qkm0BCTkSo9/6blu2tAqEaU4Tyh1GXorhRBynkN+rmaitnoN5CZyy2kh?=
 =?us-ascii?Q?2q0BdiQqM8bK4h0oSy7N7n4VSqYA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZRg6Kd2s7uZSrxb2GNNvgMH8Vgd2K0P7ZigkCLcFOySQySwQuJkxZnq5ZHlu?=
 =?us-ascii?Q?B4VOTEqZ00SYQ/uW7v3M1OPSmH8F2p0CmcKdZwJeSVO+18OKSRgO+RBp87uA?=
 =?us-ascii?Q?oteknRcvQqJHE4NDpc5eyU1pI2FAMFK+uIqcqJ8Ij1BNV3oLYoFgWK2YBc4z?=
 =?us-ascii?Q?+M3fma8g5OEXxjXZFNV7FH2xN0NGGks7VJTV8JyEizTPedbBgDp9meAtvFWf?=
 =?us-ascii?Q?NYl85NxD0kwDUFXRN83sQzTzSUlOjkXZkHQXbEz/zAgjr1MIQgrWAjq657sl?=
 =?us-ascii?Q?hvOo4yGAvdJDLXA6BdddJJRBbF8cLOqvsvfDOmDaM1OfbUWMCiVeQ+o+ZSQI?=
 =?us-ascii?Q?qB2L4pe7tQuVOMJqHkJhJz8GRtHJO3c2tK0Gm81NRV2psAd9FQ9LoyargWtP?=
 =?us-ascii?Q?hz9ps7hwrpJc6KSvTgjDadaG7FrcUXsuKfG/13GTYKQCp8StPZ1+6MTayw62?=
 =?us-ascii?Q?Yo8jNimsotB6jHyXzgqs9r0QZvU8YVOX57W77peAiPLwsj5xzUPdntEPm/dn?=
 =?us-ascii?Q?dsahavhz+EtWpPQl0IFRVhpjDYqI2e7Eaz1yKjoO8m5hEMaiDr5U/q2LKwqD?=
 =?us-ascii?Q?i2aysaI8+mllWjG0w/c7DWhgojC9Zp865+RMZ+QD5jPSyi6uzVhccpOM1yxT?=
 =?us-ascii?Q?YXXBs28tV2fY/yiQKBPx3oy1xEEVR786X+GlY1zFLzrCYa44iQ2hbeyQMKdd?=
 =?us-ascii?Q?Cpdbq48qX7Y3c4WU397jhgKlOmOrdW9UoCqMUalEjofoPq3YNjuwar9g7C3D?=
 =?us-ascii?Q?hYuTHvyW55SpcNS0fOLIy57ub5OsrlGOA9zUA4X6peIycm2Upi+whA/KV2go?=
 =?us-ascii?Q?znluGFfqaG7AeeJ78A0k/S+zYuNUKTB39RTeCvfmjPyCv82bfNJcnUMJxVBn?=
 =?us-ascii?Q?cHkF1//L/g/uifmSPpo29XYUapm4o7jSyd2O8M2DIwnSx8ZJZYTaPCLBGDAe?=
 =?us-ascii?Q?NGxFzbe2SgMfZgc07g+TR+UbpVnOJyN/9II+43bbfKwdPOD6V65DpqrgB4n0?=
 =?us-ascii?Q?k7P3NCR8Q3Hc1jxoU/FQmyBa0WA+FCH2bKKw2zqj6ouKsQfNeP2lW4gTYj96?=
 =?us-ascii?Q?FnqxcJ3mFGIoz6GleuzXKCIj8e0AmocXbtC+VRBNuufJRApcRb6zVaM+rJ87?=
 =?us-ascii?Q?Oicddw6gZe+VQG25blxfv3qJtKNVwuQN3MDnXlsGYYugdBwJzSEvwkviZH6/?=
 =?us-ascii?Q?chE8ib1SuJUrDxtYtBSNm9yLf2jNEwoo9rMO7MK/tzdzxGxWeyeCkNQh5JT1?=
 =?us-ascii?Q?dXCCMSgDBpGphzIq59/9BAKKBgaPeq1OwYqi2X4xdxY9lj5+6eIO6LcpMlMW?=
 =?us-ascii?Q?NXS49doAoT2tNDPWNWIGJnacwrILhJvDvRFpCCjtocWHcqT6e/kxtVFb54sU?=
 =?us-ascii?Q?d27xFym/GgIQS75lQiiri7cOa30JnbaxiXon9e4te0MNkSWLG4FEDw4yLSjj?=
 =?us-ascii?Q?jphtnMyCJfrvb12Vf2zV6i+WZSWbTFwQDlbGfLd1SPMoECzRK+1AsP5gs2S7?=
 =?us-ascii?Q?KrqrfaYUpLyLusfPn7CXSNaw70RWCrxlUFGrmQOA5ICobAlqD3uyNkA3/L8f?=
 =?us-ascii?Q?AmF4xM57t63wMRwirsEPm6DeGapxHR6/lMkrUW8c?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1dedc6c-02c2-433b-9cf4-08dd5248a0aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2025 07:23:24.2597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RTz+SkIzAgMIDLHoHY+pCU8tbSj2NpZ9aSIXUrEfl/43jf9MF0kQQPGxsZ4jIYXiICKKYX2/UWbxoHdNG1zo+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4907
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
Reply-To: "20250221015637.507741-1-william.tseng@intel.com"
 <20250221015637.507741-1-william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Friday, February 21, 2025 11:43 AM
> To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>
> Subject: RE: [PATCH v2] drm/i915/dsc: Change rc parameters calculation fo=
r
> DSC 1.1
>=20
>=20
>=20
> > -----Original Message-----
> > From: Tseng, William <william.tseng@intel.com>
> > Sent: Friday, February 21, 2025 7:27 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Tseng, William <william.tseng@intel.com>; Kandpal, Suraj
> > <suraj.kandpal@intel.com>; Heikkila, Juha-pekka <juha-
> > pekka.heikkila@intel.com>
> > Subject: [PATCH v2] drm/i915/dsc: Change rc parameters calculation for
> > DSC 1.1
>=20
> I think you missed one of my previous comments in which I asked you to se=
nd
> it to the intel-xe mailing list So that the CI can test more thoroughly.
> Also this patch is causing a regression on DG2 + DSC 1.1 config my guess =
is it
> would cause a issue on any Machine 13 and above with DSC 1.1 when input
> bpp is 24 and compressed bpp is 18
>=20

Sorry for missing the comment about the mailing list intel-xe.
I will send the revised patch to it next time.

As to the regression concern, I think it won't happen if DSC 1.1
does not support the case of input bpp is 24 and compressed bpp is 18.
What do you think of it?

> >
> > When calculating dsc parameters, the rc parameters calculated by
> > calculate_rc_params() is incorrect in the case of DSC 1.1 and
> > DISPLAY_VER(dev_priv) >=3D 13. It turns out to be some noise-like lines
> > are displayed on a MIPI DSI panel supporting DSC 1.1.
> >
> > The function calculate_rc_params() is implemented by following the
> > Table E-2 in DSC 1.2a and creates incorrect rc parameters for DSC 1.1.
> > As a result, add the additional condition (vdsc_cfg->dsc_version_minor
> > >=3D 2) to get the right function to calculate rc parameters for DSC 1.=
1.
> >
> > v1: initial version.
> > v2: modify the commit comment and change the condition
> >     regarding DSC version checking.
> >
> > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
> > Signed-off-by: William Tseng <william.tseng@intel.com>
>=20
> Needs a closes-by tag
>=20

Will add closes-by as the line. Is it correct?
closes-by : https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719

Regards
William

> Regards,
> Suraj Kandpal
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index b355c479eda3..b0a7a2179844 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -320,7 +320,7 @@ int intel_dsc_compute_params(struct
> > intel_crtc_state
> > *pipe_config)
> >  	 * upto uncompressed bpp-1, hence add calculations for all the rc
> >  	 * parameters
> >  	 */
> > -	if (DISPLAY_VER(dev_priv) >=3D 13) {
> > +	if (DISPLAY_VER(dev_priv) >=3D 13 && vdsc_cfg->dsc_version_minor >=3D
> > 2) {
> >  		calculate_rc_params(vdsc_cfg);
> >  	} else {
> >  		if ((compressed_bpp =3D=3D 8 ||
> > --
> > 2.34.1

