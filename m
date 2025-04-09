Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EED3AA82104
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 11:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 298DF10E0A7;
	Wed,  9 Apr 2025 09:28:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="llFwiff2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94C8610E0A7
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Apr 2025 09:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744190925; x=1775726925;
 h=from:to:subject:date:message-id:references:in-reply-to:
 reply-to:content-transfer-encoding:mime-version;
 bh=ZZBNVl14VdYe/z1ieJ0DM3fD74kCdDavt5jiqidQRnU=;
 b=llFwiff2wY/HR8TS5jmbR++vIW613RmKPpdEotZ/4pqo0GaYZ7pAOrl4
 fdkTCsYg5UA+S+2wjsegU+ntFGpeej8h0rlbWPHqxY6LcBgBVcXbRW7W2
 CKhk0MXXM6uL9eA0QbfaJMy6OXux3ACdXRsjGIGmWuRz3NgG2Mk4YwJxI
 gjvJuPC4ACHIm+Qu1NxoRzydZAlZBcJb5mSdDujUtVGGDv6UsYmXlHq8X
 DJvB7xrfAjPAuw28bhD8pHR99Lv+jFgHLlq8jaBs+xnoZ5yBmQO7H94xp
 mKB5zL9dgz406/ohEX/9zudf1mjD7wU4n4CsW3VZPRZx0QC8UwHmkYX26 w==;
X-CSE-ConnectionGUID: hVYpmfyURxyHJOX3hNf9IQ==
X-CSE-MsgGUID: urYj9A13Qjq99ZmoPWbMGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49314825"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="49314825"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 02:28:44 -0700
X-CSE-ConnectionGUID: /76afPxBRamh0HSCQvcVEw==
X-CSE-MsgGUID: aLSjOwFIRhy/zWcX7Y49Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133664481"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 02:28:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 02:28:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 02:28:43 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 02:28:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zB8+ZvpnihveAr1hzKxUUmF3pT23t69NMV6yF2211LJiKCZfIv52eNdRW1btyzAB3t1/7O/adqAQQuV3poP7H9YqUtsRfX/4l9XgJXkX8Bl3iF7RbnuEpAOwyImVZLOO4+HylbrIU3ZmIxPakgbx/jTFmtb/q0ZkxOHJ8M+1U9O3jCTGnV2e3rgLj1wIMrbWIe+MCYKawuH7eOzEKpSPH6pWI5qLIOYLI5sqD5aL926BpvtyaKdK6thzW8k/94DegMz5OxTWPDQzSSWpmJEhAic6+mpdcCRCogVpHzrgG4hVuF2JSbYCPIMCfV6R3XSFAu3m8UZ+N8gz+GMq69J6Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B1OBCM8uYZm8gouBnCGW2PfnThLIeUmb1ZvlbeHGWeU=;
 b=kSF+sBXtTSvTBxPXsFapfabEuod0/aHgmlu9xGQo8GEObDDMLJ7ACktieeLkwaKaydn/TQPero07QmXFWErR5Tc/upMjQ+SgfIyUDvGxE62z7kRk0vn2975YUHDczFbxWuJOrTie84AHCOUCFwyL8GLc+9X1aFulsTStkNpzvoZ2nhSM9AQNpLH4UWTif0/uLN7zS85nunItqMP67mnMNDmnSIfHGoFN1yyeteEBboK1m4KQfX/uceh67a5g6X4m+3iGJImsu8RGfK4ehGIZGmN+rjFuSPa680QgiQMcycPQPeM+4JKpFNwTdbzqiS+dEWoEt+PpxB3xQYHR6HzNTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by SA2PR11MB4907.namprd11.prod.outlook.com (2603:10b6:806:111::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Wed, 9 Apr
 2025 09:28:00 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::a97:3283:cf7:d746]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::a97:3283:cf7:d746%3]) with mapi id 15.20.8606.033; Wed, 9 Apr 2025
 09:28:00 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 0/2] drm/i915/dsi: couple of fixing
Thread-Topic: [PATCH 0/2] drm/i915/dsi: couple of fixing
Thread-Index: AQHbpJL5BG7Tw3L5Gkq1hkNRjCq+ALOZfnmQgAGBuYCAABiW4A==
Date: Wed, 9 Apr 2025 09:28:00 +0000
Message-ID: <SJ0PR11MB589486DC119A58935649E135F1B42@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <cover.1743682608.git.jani.nikula@intel.com>
 <SJ0PR11MB58940EE32DA88AFBB2D8EE49F1B52@SJ0PR11MB5894.namprd11.prod.outlook.com>
 <8734ehydkk.fsf@intel.com>
In-Reply-To: <8734ehydkk.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|SA2PR11MB4907:EE_
x-ms-office365-filtering-correlation-id: 0dcba77a-3935-4dda-1f11-08dd7748d234
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VcO9boxPvLAqcjWWGkZCIDyrts6FcDbLZ7y841+NU3Kz/naR36/flgPm7Mih?=
 =?us-ascii?Q?xoInc6G8ntlV4qdmIZ/6A0Ojb6H93BKy+i5/z/6L4MrePOIgjZzBnI1Sya1X?=
 =?us-ascii?Q?BsRWKXPiBfCqi+nsVUl9xYRExI8EjJWoe+p6wnoE0g1nd4/eie/uvzq3JE67?=
 =?us-ascii?Q?rDseOJKcruoWGsCcWifbaE3fVt+vfgwojsSg8pm6Ttu/I1Bj0ClnVzzQHDgR?=
 =?us-ascii?Q?KFGSBFbG+/08asVr7bWbI2KhI15mbjPvxDtsG3EJmo5X8wZFRTx8YJWZSkur?=
 =?us-ascii?Q?MdkKu+J4//hgTmAEZm69oiC4+YQt3X9yvUGtZrQhcK7WCPt8gFSKviIkuLZO?=
 =?us-ascii?Q?wR8oDzryete/bbswZS2Rpc8dvQZz0Xje2f+4aTzoDaXUg1r1IIUdLURLnWyi?=
 =?us-ascii?Q?I+jF2TyN8M3KfAU1RS9tVWqaAMIRGa3Pbw/GSlDAdStRYFAAUtuUlxmaIkD0?=
 =?us-ascii?Q?vnlaSrtevSjmYhMIVaC1DsRNY+Mc7Vst7+Vk10aAILRRxxjJgfhPqJ4Gau3E?=
 =?us-ascii?Q?8qKLe3lb0uzFQbfwCrGUnPYAMvj+ctdzqq0JJBTObKxITrEepiq26Nve0hdV?=
 =?us-ascii?Q?2vY7ipfKLKOdLBo3GVRd7naI87qsJbB4b5JgYZbdNAiZi1Pzq74YMgH06QkS?=
 =?us-ascii?Q?Z7vuMnb9w59o9KLZN2e/Y4uCUhZL2Qh9QDKUCc6QGPZ+3LX8SxlksL1Qnbsj?=
 =?us-ascii?Q?8zmU6jagqv64h6YOIDZRaDelYvtn31DzoY2sxV+C9g+5Hkmunui1GK6PHQ6+?=
 =?us-ascii?Q?+y198O05x7Ohtv4OAWyf78WIXgwycjhbVcJUTG9agtJqryAtMehiXqRStEcA?=
 =?us-ascii?Q?tDf2NMJtnPnsjOw95yIWCdkQVVDWNF+kZ6H5ecl4n7ElP+aEfwuCFde9p8Dg?=
 =?us-ascii?Q?Q3FFRcq9w6Ve8L1IZJgeYysUUPnuvEGWoZqh5oKGRur1C3HMdE59nT2a9eb+?=
 =?us-ascii?Q?cLi+nVCocgItrBCHXy+iARClaoPJJiehChWUJX2dPLIIGr04XnDiA+Q3QVSC?=
 =?us-ascii?Q?ZgDkItO6jQuPShbOGiH/HRJT/TCyn7au1M0l+jAV69vS9CpS02NA5i0vtj8i?=
 =?us-ascii?Q?YjD43V+NRwI7JLjk3iuPOBrAXQ8HdWa1wxn3o39rkUwk7kUy7IcFIQI+dcg5?=
 =?us-ascii?Q?MjZHrjxcSEXiO6J/Ejo3b955W8jMIBTxRC1czg/Hps4YkIFTTMxCbPau3n/U?=
 =?us-ascii?Q?kek2XLicqTYkDLcrrzB32FitRziVMBBGVNFD4K8ZqPVe86V7JKRtC3nIurj5?=
 =?us-ascii?Q?Gmhee/sOiKqbDbWeG6CEiJn83LZLjq/t33xxc8EbJ/hi4Aax6y86cblWnsCT?=
 =?us-ascii?Q?6BaKSFCqhjQ6PhXVbkthqlM2AtOcrfKyzer+Ph3ZwY+OWcT70wyMMGaX1SkU?=
 =?us-ascii?Q?x4NEaSV3/dXjNsmoTCtp6nHaNLJVqWL6/Xt0zqaCVvFmrB2w0gu2HWgmx1RD?=
 =?us-ascii?Q?RJKsAgn3LcAkqjQm5EjDOcE2D+fRG0qDRWs/5HYFH3jG4Kp9LktaN65sW4Uk?=
 =?us-ascii?Q?lq5Q2AwxLtxtE44=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Sy8rs89n+No1cGzfEDhjAYe75cc6Rm+JtDcj0Ffnoj6Eb0wQ/A/nF5NuVHrx?=
 =?us-ascii?Q?FEHMYaqLXHWpoH6TJF/3ZRIxnfriGkH6BtVKhHjvt9adSl9+8ld3z+auQHzl?=
 =?us-ascii?Q?Mlzg264M8g3Nq4a8+vRW838otIOR20hyIMCEj9yonzyipD/phxIaAQ/HD74H?=
 =?us-ascii?Q?AnurISGw0FCEqH4VqfRt1h2ZopGR55qK4Uw40TANyDvJhPXBAPVg1vlEGhvd?=
 =?us-ascii?Q?tG/zIUzQA9Mkxq3+XmipCP124W8YC7BcbBpS5m00ZOQphi8Xz5ORSWifRc6h?=
 =?us-ascii?Q?eHMcJD0c+Cnsg3h5III+uX4SN1s2DERWOLrqgrEV997NQMpFPaiRmdiIx4Hx?=
 =?us-ascii?Q?RUfmI1gX2+xLsnsywZfEJ0bP/R6iwmWlKi+ic09zPxEjqRTNbYtvsZp3e/Ip?=
 =?us-ascii?Q?eNXB249PjWDgE+F261AhHdp85UrTbNzAIlGz7Rg9/aX3/m3bhViU/Y5h+ZPr?=
 =?us-ascii?Q?+KI/IZChkQe6SLsB37syeNnaApXW6Nan+jliUUe1MNnCohcuxnb2gt1uQRBK?=
 =?us-ascii?Q?vqmevyG9wAmcmJn4vIxZyJKsNNNX8sKsO5bft8FL9xFQ+iz5ok8QKBy919Ut?=
 =?us-ascii?Q?/94OuzN7s1/jN1EI2OxopMJ8D+4YO1v3jBXsU+a9x1fDLwdwD0OM1cBALlvg?=
 =?us-ascii?Q?jejNFad3g0f6hnNGvLT99qpoc/bgJ3K9R6KC9JZ6OXKVvxsiY91DmAOQxbJ/?=
 =?us-ascii?Q?zbvJQ/KZHBw3005sGgu/dFLEgZDdSrD77Xkl9MJORagAemLCgbJzEDLWF+dC?=
 =?us-ascii?Q?4kXtu9SyJNZDyF2s0qpMZgxHNrZUqMeBcpWHE6zsj/K/Kyl0RmHv7EVRSn+o?=
 =?us-ascii?Q?xak8E+b7BiNoa+P5BX5l8JvxpzCK7vnBMr6tw1sBgKk44t3+sVBCZukXQAd3?=
 =?us-ascii?Q?V+XS/Q4TGJNVhDBKwPF2kQfl0aEYjvpWi/3jelXXi2IP4EXnmXD4dsDDaaR5?=
 =?us-ascii?Q?ubl/TyQqc6OjY0q4TdsO75E5XM4roMLizlLUvfBXYsKtZcjVSRd2DWdnKorg?=
 =?us-ascii?Q?xFCJfDYeqC2hzD4xwp8uNGus+6eV8dZCNIj6xH7mkcf2OfUDp0DvOvfWQfoZ?=
 =?us-ascii?Q?FJCc/nfJqngtu0XqqRgmzqX0cXlexRzF0EI4DZTUvqt0vGEKhBxA/U15YDrj?=
 =?us-ascii?Q?lGxKnBX5dO8HHSMOlOoOcnaOgZzzJWvelUS3a6jCp6uDN6pla5nVMIgCo1By?=
 =?us-ascii?Q?0TN6/NjptLySgjAIFDlGaZU2YlTRqzMYKojzfTqPONijWrFtmqCidaOncmd2?=
 =?us-ascii?Q?PnzpGRHLJrq7gZNsCXyjapVh2koom0XADtJaD2A0yaasAq6WAzGM65fAFbQ3?=
 =?us-ascii?Q?fUpvpastt4/nXD+C5CTT02SAg/RoHaLZ2RhxqcLHHMhJYWVwbZfjQ+WuIP1e?=
 =?us-ascii?Q?pTFgMqyDR7sXCBorLQgolft0fjw35PEpqv6fOfOQrMzZi0cckzlWupQPbLcD?=
 =?us-ascii?Q?lGx5+lwJU3+TRopxSGsBXnT7m4To2QKatyWxhO2P44ebAoR7PdJOxO9txsHd?=
 =?us-ascii?Q?zvFe3tkqbmermK/XpdYgh0AvJozPqSkZ9TTglpB80FRO1q5ofEYnjThi18q9?=
 =?us-ascii?Q?nADPrZn99LBa0r9jQPU/DLQvl3UG/3xBrESZfY00?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dcba77a-3935-4dda-1f11-08dd7748d234
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2025 09:28:00.4258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mDO6op8xAuWLb+eEy44ploebToVup+RH/pMxqOjv+tFnZzitc2ALjZYEIGqiD227tSnPGwhICtcYxkCfP2ueog==
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
Reply-To: "cover.1743682608.git.jani.nikula@intel.com"
 <cover.1743682608.git.jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, April 9, 2025 3:55 PM
> To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop=
.org
> Subject: RE: [PATCH 0/2] drm/i915/dsi: couple of fixing
>=20
> On Tue, 08 Apr 2025, "Tseng, William" <william.tseng@intel.com> wrote:
> > Hi Jani
> >
> > Both patches look good to me after reviewing and testing the two
> > patches with the hardware. The MIPI DSI panel is working with the
> > patches. In the test, both clock and data timing have no change before
> > and after patch.
> >
> > Please let me know if you have any questions.
>=20
> If you think we should merge these, please provide your Reviewed-by and
> Tested-by, and I will. :)
>=20
Yes, we should merge these patches for sure.  Here are the tags.

Reviewed-by: William Tseng <william.tseng@intel.com>
Tested-by: William Tseng <william.tseng@intel.com>

Thank you for contacting me.


Regards
William



> BR,
> Jani.
>=20
>=20
>=20
>=20
>=20
> >
> >
> > Regards
> > William
> >
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Thursday, April 3, 2025 8:22 PM
> >> To: intel-gfx@lists.freedesktop.org
> >> Cc: Nikula, Jani <jani.nikula@intel.com>; Tseng, William
> >> <william.tseng@intel.com>
> >> Subject: [PATCH 0/2] drm/i915/dsi: couple of fixing
> >>
> >> When I was reviewing [1] these oddities caught my eye.
> >>
> >> BR,
> >> Jani.
> >>
> >> [1] https://lore.kernel.org/r/20250311100626.533888-1-
> >> william.tseng@intel.com
> >>
> >> Cc: William Tseng <william.tseng@intel.com>
> >>
> >> Jani Nikula (2):
> >>   drm/i915/dsi: separate clock and data lane prepare timing
> >>   drm/i915/dsi: unify naming and simplify checks for dphy params
> >>
> >>  drivers/gpu/drm/i915/display/icl_dsi.c | 90
> >> ++++++++------------------
> >>  1 file changed, 26 insertions(+), 64 deletions(-)
> >>
> >> --
> >> 2.39.5
> >
>=20
> --
> Jani Nikula, Intel
