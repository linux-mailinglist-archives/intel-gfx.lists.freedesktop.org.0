Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F42976646
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 12:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DA1910EB40;
	Thu, 12 Sep 2024 10:04:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Inn9BIR+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DF8E10EB3F;
 Thu, 12 Sep 2024 10:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726135453; x=1757671453;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ChboNURkBa4HuzYvyiJx2vif1cNIs0Wj7batMkc9a1o=;
 b=Inn9BIR+wBj+Aa84iax6ATA+BsxU9qoTFRcKSONw94tau/elXNj7Loa8
 rAWzQQozTj7ArZPXSeWXJSmT8Fp5lI32KXHFVSALIRMvvdMBAs3bgj+MY
 wwQuu1Uu6stsA+/pi0T4RB/YQnxS8Hchs2/sfezg+MB3qOn+LAYEgcirv
 l/27bqgsUuk+NM2WLPQHY+oIMngd1nodP91dryAV//F2d7ws1Cp/q25eU
 yulFmbRS8joYsUrtQDjRV6ebv9TX78Y/CIdsCsDqCLf4XKJJ/BPgThQRw
 AmS9fpjCinRZSHiCw/igLiD+bLgqNTKA7HWFH7MhCUkxcmawxJwmP4bQC w==;
X-CSE-ConnectionGUID: tg0tvX9vTJW1sPu2p0ce1g==
X-CSE-MsgGUID: ghO4VPSqReSMqN3pKb16xQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="36327336"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="36327336"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 03:04:13 -0700
X-CSE-ConnectionGUID: PCc9lkMPQgOR5om6TbXcZw==
X-CSE-MsgGUID: r9p6qDqGQESFDdlKhv5phA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="68439558"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 03:04:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 03:04:12 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 03:04:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 03:04:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 03:04:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BWjbq3N+MW+2JXiL9Hz1Ygff3y6xeuWDIyCYfwTJUireH4l+Brdcnv9N06fZqrDZ4tQ8yzjMr2gruNsQvP6qKdBAVUUI2xR9Qp8fIwl2dsZU4j3VMdB0rD+KGSst/LzwzeuxdvhoRHWYVwtdVC4tAPIig2ZreAR9ZINahTge6mVLOxN7dcvhC6XshhgEnjPDsV8ZQP8yecnk8VSFODxA1tPDMJJv640h3cbYRsiwxNDqSSREG99Bppy350z5kvgatbS2bcguv/HK288rJhg3Ljkmvx64P7K+6IB3PINlBlWGUF2QWSV2wsL2IkDd0xqRDHtFZ0qnTjpi3OB84QDBaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ChboNURkBa4HuzYvyiJx2vif1cNIs0Wj7batMkc9a1o=;
 b=foBClkznTzkiavwO43rzpaq4ZP1TpnOMhA+8MgHrDdNn8GY1dK5I0JPhvbnLx7wpPLFrGvYXFCDCUxgNeLdkjnM4pYCYNmdfgc9RIrlrG2PyBZqlDftbNKgOf5adQ3AJ/Qh2a10MnuYrmJY5Bz36GEUQGPF+8g78ZfVaGaQVz7nBTUob/AC/P96lgyxu1kWqTDYmtGgYmv/mMzR3gpo0dXLsVRfKUPxL9vSMlzUanoqX8fpvPqP52IYRvYWSjlhIqpO+3tO8CHSFrU+16MThsXfNptBl5xNHYVU5GQvk/DdHUeNTtuuE8nTHSgEDWSvQwmqsz7lGgUkZuyQ7L1wo3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ0PR11MB4832.namprd11.prod.outlook.com (2603:10b6:a03:2dd::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.18; Thu, 12 Sep
 2024 10:04:04 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.017; Thu, 12 Sep 2024
 10:04:03 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/dp: use fsleep instead of usleep_rage for LT
Thread-Topic: [PATCH 1/3] drm/i915/dp: use fsleep instead of usleep_rage for LT
Thread-Index: AQHbBNLT0fMUBeB+10uNBH2tiRmNLLJT2yqAgAAPgVA=
Date: Thu, 12 Sep 2024 10:04:02 +0000
Message-ID: <IA0PR11MB7307879EFEDFC2C82CAD39BFBA642@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-2-arun.r.murthy@intel.com> <87ikv1i6tc.fsf@intel.com>
In-Reply-To: <87ikv1i6tc.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ0PR11MB4832:EE_
x-ms-office365-filtering-correlation-id: e332fe6c-6ead-4462-68c6-08dcd3123ace
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?kZ4+vMLMHKJlSgYiw2DklESgKnce7jbT64uiC4EqPHmjscCxuwYrbYRwD69c?=
 =?us-ascii?Q?pPXTQB2RCfeq21gEAZnzs+REFUmOjQE6k2dFLdTylAj4vmSQa4N7WA6vwzJc?=
 =?us-ascii?Q?SMRn1fu+nJtC9b4/tj8D3LZNMIpJEJsyWuPGf4NS8ZNaKnG4ZAP8ohMaIBQv?=
 =?us-ascii?Q?Ch5ZCmB4BzODAbAaehgJSYXLKHJLQwXVpyB45c/zf9/DngeDm8L7EnT0x137?=
 =?us-ascii?Q?Gqz3vZTMzlqD2oZj296YhRtRW6bXYj+HoaV05a7b/lO6YFH2fI1OzYDibIeH?=
 =?us-ascii?Q?gMm8vZnh47ly/Yd1StXKxGcS3PT/Xa/ZCGp47kDzcSDcb7sxj4nhERgVYQT5?=
 =?us-ascii?Q?2ZjuRXrtokYrg5vV1IuGBwCQ7OZrpGbsYV2WlAzPr0VnLbaCUZmX6GwtODJO?=
 =?us-ascii?Q?0dSNsG2LOZoAPYYAU01oybQthNP4YZkWul1NxQXg2mnfcJCv6VP4e4nu2lv8?=
 =?us-ascii?Q?LIsKwA5q+3rXTg2BbKw2ijY3bD7UwrL+DsKP/dzLo0ft7nxaX4uSziIAx0O0?=
 =?us-ascii?Q?LqBClUmgiLqb/jTwB0qdraMlzv3GpUnl0svul6buK+RMaV5wwDAYJyQu6dEJ?=
 =?us-ascii?Q?tOTJjSlyt0lACXKhg4YS8aQFyx2/xozHspLIW5B5wKVuYihg2R2LHM15F/68?=
 =?us-ascii?Q?XZgsFEUpzMo2uB5VKqJBT3LWyhQxJ63J2rPsCtNKwMNZE7LsGPYvsW9Iht2X?=
 =?us-ascii?Q?t07LpekffoFEa5Y+iHfvhnw4GvmuSHcBx386OodW50vPAnfIt42gLm2O4KLX?=
 =?us-ascii?Q?W+IFeuoqLNetp257qRWMCecdZEn6KMcG4CiuRr9dXX19/UmJxB9rMAGhcD46?=
 =?us-ascii?Q?DeTM/5QfzeDDJ0IqGKkaWrVK2o+PbBdQB4ZCrXriYo5UqfXxrWyZI7SugY/A?=
 =?us-ascii?Q?NZMYXGhkEJ98OD8qtDffDehMCmr0W0owCwPsCo89322MkM2lKB+MC0m4yuKO?=
 =?us-ascii?Q?zYU8KdtkJIAYV4S0IE46T/mLmor8sk71A2Ys64Em/9mLDQ40Yq1XFdqaP5Ov?=
 =?us-ascii?Q?/qbepaakJ35Dz4fRYSGrDt+JjdQ76UcxskiBd02/IL6+ABnHpBwJGiXfWWX4?=
 =?us-ascii?Q?Slr92ovEqDcg76CPuG06BrdkeSiLr6IR0iCkHr2nsm/NZ7cDhdYll8ZIyoak?=
 =?us-ascii?Q?HHrger7DgT7evkcMIcxow2DUiSZdhb+VHUPFiN2pg1BnTDgfvp1en6Wg/4Vb?=
 =?us-ascii?Q?PLrpLH7lof95YxBW5qI2tdIvImE0oCFNJYj5xs2rM9s5oCS5w9qdR9S+RSSC?=
 =?us-ascii?Q?Tkz5jpMNibxP+kLLWF5MazB98r1qG8VpOm74BoSFSf/DkrhH8iSaqepDX/vQ?=
 =?us-ascii?Q?w0DaxLaOX6qtkmLjb/SFcdqtks1n2niBtqltPBWTzT3F/doiVAAt2XfxBBDx?=
 =?us-ascii?Q?PiP3HqkdeFiGh0ePLqgtXLonoTRYf5mocy4naYYnH7ITpA0l6A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Lc/sRkgR+sv0jbqTcWUhzXTnNS4mD2zv5vkcaO4dIeujedV0cKBFij1vUNbn?=
 =?us-ascii?Q?v4tPmgSKN3QZ04foyEcaO+UFHwnGWd4ySqPTD7HO4WeciSg8eaGth78KBbBB?=
 =?us-ascii?Q?K30JzkJRCET4hQYOx9YLyXOeL5CFcutmKjaap4upbcOT9EU5kEd05sRn9WQH?=
 =?us-ascii?Q?2lRF6vhFTgcRPLmnFAyXgpBDu3aiGHtj+Am/rfCTIFDTeFrYFdPfmoBkcfVM?=
 =?us-ascii?Q?6E7+HXf9dTXnmN6Qciptgmg9vVp93ZNFogksaVbeFcrU3topIPfxIVHFbn9/?=
 =?us-ascii?Q?jsmJUuUPq0N1+pGZ6JeeftzaZ+zWM4MXzTwAtqcVOXdSfiPD/xuusiQxTG2D?=
 =?us-ascii?Q?WoTySPD9gGTybQT1WsAWcIUt0Bn40tHuJU2c43CvxLIufKBRgHXqOxh8UCCV?=
 =?us-ascii?Q?ZWvvs4aFZbzxlKtPwOp1qILczj214Brnr/ykKl8WTHIA8QR0XI8zyTF/8G0F?=
 =?us-ascii?Q?dt0vI3qRhFoXZPTDCMhKEFcVfa7avtwKK8rC783hIx0YanigY4RJEPyJ7fxX?=
 =?us-ascii?Q?OjPZ+ZDH0X4ULvnGeMEaVgMeO1aZ5M6I4LGMtg9J8xnYV9yUTDaSYQX+w2Lv?=
 =?us-ascii?Q?E9FyCcqBuliFKMx8nkMUooRDL8B5vZBBTxiduaecCRfTDxhfkewDYLbjaUZB?=
 =?us-ascii?Q?yBTx6MHmXDJmpdEqb8K82NefxzEbp9r/Yzfbtgb5bXHjZHR9GbkkJGZku7UB?=
 =?us-ascii?Q?L/4vhDcKCcKwkmHxeIdwOUA4tpIwo6mhUWg7sPkENGLwEdXwG1lKXizYAXS6?=
 =?us-ascii?Q?1SpwZ9AuA5jI2wo4XNOZSu1BSjjww/HGMFOtCsL02JR42cPCnltn+PR998YD?=
 =?us-ascii?Q?ATZW56IPnGb3UlrUhPDq0EHHdBrIlBPbaudN549Nu2cDckcAEz547uIGvu5U?=
 =?us-ascii?Q?9UkXj0w52yhqkxBgh8YXdFMELpy10RWFkcheNRymLUyTj9RtjPimDZvTjeiu?=
 =?us-ascii?Q?Lvn8Nwa9EqVM0mxdCNxT4b3AtB6LbMNLjwhDxyI2F9CnSaEPOCqtknjdBYel?=
 =?us-ascii?Q?mXd+/oYP3bjmStF8Ni+VmXUUkfvUIBrfCCtYsowUaDVUqZpUjjdgNHkU4Rd+?=
 =?us-ascii?Q?g0QEOSM7d82mVrWAD8981st9rwVpWiHklKm7yimFpUekH9ApIKKqbhajtl4B?=
 =?us-ascii?Q?lQBeN6DmVA2vMp6Dty6H1GQmdljalJYbrTKBN4/cQ+1cEUr2AqYr++jqOlXS?=
 =?us-ascii?Q?xjxM0DjOIAes7zbm/MwFxILZ7JoJFfp3iaolRvRDGcxEm1QVtrOjsXVONhXU?=
 =?us-ascii?Q?3WLC/YECR13AGih+RWtKLytA8ZAIdS0WZW5Qinpqu3glcqL0PXJmwDWzFpdm?=
 =?us-ascii?Q?2c7c/9TDzm1TM+TQOXxRw9ZdARtON7epNTf/HYGbpLWS9q0MZIbzlruW3sej?=
 =?us-ascii?Q?u94imAdMNKXq3cJ+zdhUwjcWQ+BgbltoXsZfzoY4LE8tOEry9ac9JcmZSu7x?=
 =?us-ascii?Q?YlDzybPk5wOParwnNVPsQoXa2hR7+zjXZcMz/INkl4dDmYVxZWbS3VO8qX5l?=
 =?us-ascii?Q?m94V6D73nJ7Cg1H5TWu/lylvzm97AC5i/keIli1+TCkAd0BSHkUlLGoxiBRk?=
 =?us-ascii?Q?Ew6bBi3BcTaGntdNXBmLaw9h2SYwfy/DeGVt90px?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e332fe6c-6ead-4462-68c6-08dcd3123ace
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 10:04:02.9023 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mg44M05aIuvaEERBY78723c4HMgN+wXxC0OzSwIG+5HyWZW9SkpClh4RJO2OPL0U+vnxuP4sCbFToilknorgIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4832
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, September 12, 2024 2:32 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Srikanth V, NagaVenkata
> <nagavenkata.srikanth.v@intel.com>
> Subject: Re: [PATCH 1/3] drm/i915/dp: use fsleep instead of usleep_rage f=
or LT
>=20
> On Thu, 12 Sep 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > Aux RD Interval value depends on the value read from the dpcd register
> > which is updated from the sink device use flseep thereby we adhere to
> > the Documentation/timers/timers-howto.rst
>=20
> Please explain why instead of just referencing a file.

Sleeping for < 10us use udelay, for 10us to 20ms use usleep_range and for >=
 10ms use msleep.
fsleep() will call the particular api based on the above condition.

Thanks and Regards,
Arun R Murthy
--------------------
