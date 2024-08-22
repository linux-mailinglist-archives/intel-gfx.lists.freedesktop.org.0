Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 191E095AD57
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 08:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2FB10E737;
	Thu, 22 Aug 2024 06:21:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dS/FjJks";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3937310E737;
 Thu, 22 Aug 2024 06:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724307668; x=1755843668;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rBVvi9aRhdkQstIz8H3OQ/YLDUy3ZG7PkipaOElYLoA=;
 b=dS/FjJksocuCFg5UMDaIUrvAv5L0R+VaGee46R+0j3aHIni058irnI+c
 FkAp0ULXAHVtSgJKF1LfmRlT+nfMj9ye5qwEPVt/gU/OnAOZBmscVqPVN
 I3UwSbjEuIFHCsPbAhOj1+pPC3H2pmaR/1+P3lXpmWQMtK6vA9WNbj946
 36NyKUSTmGGGn0Fpd75phfwe31pvb+wNwrR5JBHgGjyi1l6GVXLH/qa4M
 oFhA21jKv7fl3TIyN9E3OXwB/3/oqMuscb0eIsHrham/yWU0L0eW4oouy
 N3FuQV3Ql/zzha7oJbiW39BLC7N8tC22HKupQc4iSibkr3pD4crSq8+gh A==;
X-CSE-ConnectionGUID: U5EMgvvZS0+2Ft8m1N/LbA==
X-CSE-MsgGUID: Ka3mtcgWQjW95++FEC3INA==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="22582729"
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="22582729"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 23:21:01 -0700
X-CSE-ConnectionGUID: YDVwNIcDTfyJIZ0dHylRPQ==
X-CSE-MsgGUID: 40jqlYS0QciwCgK92s9+1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="60995744"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 23:21:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 23:21:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 23:21:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 23:21:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oZ8jdzKX7phc3DFhuC0U2Q8wnGSeCxbqFNLUyAP1NDuS7EdMmwhfych+oOlvDtQ7SJte36G+ZYEOAQjBTg24i9RUlHmJAZw6SXJHASnf3VMgkd3xIQFVvE3VMOC/aG6MXSxnsEJwtDyhGoDG82JkU8RNRZfwZU56pLjaB3yBDwsQZiozbhi263/zPcpgoe/KgOpqQubuvWEWYR412jIigpQeY1wwHe7ij29U3FySLhN+Pp68kdM04i+v+N3rhiCkkhmw83YwvQLwhmi0+O/eIBiDPxY4sAJfkcRLz04c5W2RdAvWZBN6jheJnHPcmbjlYcL+vfToXdnETZprwANl3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GQM1a/uZojYxpaIu5R0fT9Xf9CTbVNPdGuhfaX2G7yo=;
 b=aHPwVderrWeb2TGX+2QR7S7JKkup2dTN6b+NggY8TwJl3wyh7ozNYOX9dnNJ3SaczqbRkfIvWR51jTDnjyuBqWMDgZZy7dmhn3wnFF5n50Xw3oJqrUB9HE4FNAPgSoTMLa5EESWpNAsL97vAnh4EoKw5suAbac3FYj4rT6zxIlbT/bnqBRHmBHuSsvzyBIIYX4gUs+0cOg/7G1H5EvLkEOrLdq9KkytEijx9JqKnrIPnDdzRM4o7kc7+p1c+qYEREN7K7B7wnNbb2rsbxsR0J5/cHdLne7bqv8Yk1nzeChNT/qghF/J+yuDCNejHaYqzMguDeIqEutHULlYnuvBsGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA3PR11MB8003.namprd11.prod.outlook.com (2603:10b6:806:2f7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.25; Thu, 22 Aug
 2024 06:20:58 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%7]) with mapi id 15.20.7897.014; Thu, 22 Aug 2024
 06:20:58 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915: Preserve value of fec_enable calculated before
 DSC compute config
Thread-Topic: [PATCH] drm/i915: Preserve value of fec_enable calculated before
 DSC compute config
Thread-Index: AQHa7JHO1UFdJobQlEGSojbUS6g43bIjg2wAgAAScxCAAt2XgIAMZqTg
Date: Thu, 22 Aug 2024 06:20:58 +0000
Message-ID: <SJ1PR11MB6129B2C52A6247879585FA97B98F2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240812082446.3459081-1-chaitanya.kumar.borah@intel.com>
 <87v8060xfb.fsf@intel.com>
 <SJ1PR11MB6129241F0F93400ACB2592FAB9852@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <877ccjze58.fsf@intel.com>
In-Reply-To: <877ccjze58.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA3PR11MB8003:EE_
x-ms-office365-filtering-correlation-id: e8ee1df0-a093-45cb-27d5-08dcc2729680
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?4kc4U0jaRSB4wYaXdEdAIT9/+Py+h7z+/48vl3ddFHuVcJj9kzzsRzI8frfh?=
 =?us-ascii?Q?if2syrsH1v0wFxjVQxenUNiTbdfD84vYC2sdHKZWR2dT3X2SFSFfG9VKS7Mz?=
 =?us-ascii?Q?37r1z0CVBw6Pa2YSTiawea4wmFcjTNIgN/dt3FV8Qudr7+RY9E6/GURRSQly?=
 =?us-ascii?Q?eOqAJFxBTbKcegZBHEn/sbC3/lAa6HzPDkUQ3n7xX8YVptJD2JCh8nfh75pg?=
 =?us-ascii?Q?rmS3mFsqHskj5mfo/6iWuHDKct6Pt6JDlV07yaOOBYZIsdoSYa+WQcx4/YNd?=
 =?us-ascii?Q?CeDqytAGryDXfAZA3k9TlzknbnNkNTdICkeoJ0WGMxp1FFQtHpKY0NwUNO42?=
 =?us-ascii?Q?VUzdgF/jTSGehTasFLrtq78MlFuRMjjX93wNNL0ZrTJ+978RFkDJwlnxkW2k?=
 =?us-ascii?Q?1/MF1pp0NtZGRJ/N4KA6BCWt+aqlM0NsLqTw+rfdD1nkPqgp331Gcp3NrNnt?=
 =?us-ascii?Q?5pXFks3iAS0qT/ENiyeJu3GEkHXN9+FM2vSAt1A+70j84JHAdbRn8nRwW1jy?=
 =?us-ascii?Q?Sz+lylWDyP/eNR9zyD8cf9ZDxgHIVS45hOD53knRLEKedQFzx2QGWQ5jIUfV?=
 =?us-ascii?Q?ve8VQJBxEKllXYnR5394dNTTZKycPHOXtlwKE2SFxhCoSuEoGf3WGfMg7PAR?=
 =?us-ascii?Q?umvCfRm611oCB/GHdszUTvE8ELNIBOlBYDex9FK/vMYfcJLe84GbrFCJ+FDj?=
 =?us-ascii?Q?P/t8gUKC1unX6WzRgv7L1QYT48fY0jlHEkGqirQYHp+l5KMH8lIvrQWnmXew?=
 =?us-ascii?Q?BDrf806ZlsBWgxqwdaBn29U1vgr9ZZZoKz3Ibgb0qHrLE6IzSXI0RmMYv2r5?=
 =?us-ascii?Q?aZzmPKvKZX01SWjQiKHpfkVI+p3a7IUvKCvEmDSRVtPqHTtbEVByOCg1mgAS?=
 =?us-ascii?Q?kN0p4ohuVy5Rj2X+YjhA7o5Wz8xI27t4a9ZXKSo1OT1RoA2218J7tE7slDzR?=
 =?us-ascii?Q?262qJZf9dJaSWWDC3CFTfrzsB234vXkE5A8XYKgvJb0Gbppr89D7yi22xgqn?=
 =?us-ascii?Q?4Ew5shAAUed+5uMmY57bLl8htj6iJ4t5/PeqMOtAr/kD9TR+Wjw8p99XR4QE?=
 =?us-ascii?Q?tVpNgqVeYHvjorkIvaZeWy3b1Tt9KAhKaZKr18umsuLuUs8IUzIsjVrtv/i2?=
 =?us-ascii?Q?KOsaBcdOzY08ZEjqAmVOjIaRFqoazfJ1osPnwYYdVBRI/iaY9JF+4U0RQ596?=
 =?us-ascii?Q?3xBr23p927aPlomUuZeEeGG3i/5V+gaPihA4ueWT3KsQtPOuUkSCZjLEigzL?=
 =?us-ascii?Q?NvwH99G5yuUYMXlOrcjKtCnYxgLeSQQPcaxckOYftmcR8DMProuxKdKaeuxt?=
 =?us-ascii?Q?ZCK0X7NIFU/2y50ldic2LTvAlQKPnVh+LlOS9kDpJXgJn+GBRKS0BLbdvCjV?=
 =?us-ascii?Q?OacgZvU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8jejS6UiYqvm6tJZWNNngE89n/JCf7JM3dU96mP3i6qvcVQi34Q2bC0pirWB?=
 =?us-ascii?Q?mUuOtd5jghH80I2uolhnoDkS2xANku7YKSfV8BgRGU6Gn2KmibNz5rKBpeJJ?=
 =?us-ascii?Q?5KWHXSJwUbaoVwfpKkWvMHcWAwLkGRumadfIEPgz3MjXWLA13Ng2UKoAVsh7?=
 =?us-ascii?Q?sCPG1jKN9P6CN49TczGGK15JsaEAMVoqImGdFRHUC4lZGTPasoUa+gCchnaA?=
 =?us-ascii?Q?ao/aqhBsVHaIj6m/FTNmY6Gc+DzIi1BpFAX7sGiz6cEnmsS5BzV7OHnT47fh?=
 =?us-ascii?Q?LSjavBPfpuccJqyvIbmAEzs0VUaN6qB+owVJBxCopLO082Q52jWCILoZv4Jb?=
 =?us-ascii?Q?nMtPrY/3Gv+bjy1px0oJxW8tKHoracQ/gG8DP0K+3/01ZlSfZME2AlTnq+oe?=
 =?us-ascii?Q?KfF9JTfDrwvtFANmncKHZYAL3TUjoYRHTidwJixrqE2zCc5GeXSfwi3nGIZC?=
 =?us-ascii?Q?hsUGrx51UewBH7KZHTBUJKABciwohn5pcCDB6ZTqQh2nhfMfuR+FWCU27JiG?=
 =?us-ascii?Q?8dlw48Q0zmE4Q1TPPyh2BEebcbuNy/lkIfXpKy8kf+lQNUWMGpr3txRUUCVA?=
 =?us-ascii?Q?GpR1ooT/HJ2E0wl7C++xVxFmQ0VuTApHjZXiAcCtc8iMrZSglGrcaJ51sqph?=
 =?us-ascii?Q?dPAAd/pv8mJZdP5erOB+/aLcfMs8xldbpcNA3bmIF7IuqzbbDAl78RJ0j2Az?=
 =?us-ascii?Q?1zvHul+1Yt0P0puaAFgCJjRlGIOX3OU+F0IpHtvaCSpU3R+KOui/5KEyngoF?=
 =?us-ascii?Q?oDCc/Zy9QVAZq1zwCppfFXjkJGrwzDhXE6yCRYO0ApOtWL3KbMQ6uww/RUzc?=
 =?us-ascii?Q?JEwqoxr5yfwnzGXjksujmV4stWlt6eWvnttvTP/XKieHnosqcLeoMUeSoMjX?=
 =?us-ascii?Q?0e3ZFzycDIGip8IUOsj2HrnZ1KDjtF6WC9yob+Mt7PWcXpTb5NEo5Anq8ehH?=
 =?us-ascii?Q?/LHSZO9ZvKStoWD+UvLohM5ubw74KSdAoV5gT63Px5/inYDQXaXq0HtQFUuI?=
 =?us-ascii?Q?8bpyxdNv2e7mdkLGmaZK+TEbVJdAn5MdPm70VEGfijNgBvL7o0pAfqVIFLN2?=
 =?us-ascii?Q?k0mnIYjTuDwkjG3GrqflLLFRW4v7o+7QdRJShurV51svnBU78JypuIZVhttm?=
 =?us-ascii?Q?OoMopr7aICIyIjLEF/QPOxS+UtpcO9cX6jt/hEPjGwniWEvnU+XD7rq5OUpf?=
 =?us-ascii?Q?nmbKLButm+g/JRlPVn/+Md0osL5/yJP5wp/mfsTrOczeRPuu6VJhRvFqIYnl?=
 =?us-ascii?Q?uHQjzz+s6MEW9+vywoHCBo0rvX1qnXH4piw/DgUhd1q0FMbFetGI7+d8ibZA?=
 =?us-ascii?Q?BlxF/29rhshhdbFoMppDl9LJdLo0DaIvqiuEhYzVPiGMc8oe9NpHSaCCPYEE?=
 =?us-ascii?Q?8WoHQJE6DXnPn/Bvp+qErgVzKPjN+UYgEhe0ol6rA14kIWNZ/4pxRGG18fWo?=
 =?us-ascii?Q?SdmLYhbZPFW3mDWt+5sSASxsxhmZuz0nBjVpV/gCilgNNeCnrgrh5AdaI7Kn?=
 =?us-ascii?Q?KHqlqCgm05sDp60C4sktQ3goj8PBHodj37KEs96Im9vIMCMN8IOdS/pnGDPQ?=
 =?us-ascii?Q?iSnb+IV++eTOnTpvVviVpPJphyThms9ekuvmfxkKOCVGBaIPQd63pzsw0F3V?=
 =?us-ascii?Q?TA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8ee1df0-a093-45cb-27d5-08dcc2729680
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2024 06:20:58.6424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /t8XfL+CH8jv6PigQRFVQofj17evxbd0Hp8+5mkelG7IHay6v+5UBHIu1Ip1m4QJmuTdNCfRjvTP43fAszjatv9wD8cqPltNmtv6KeYIPCo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8003
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
> Sent: Wednesday, August 14, 2024 2:15 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>
> Subject: RE: [PATCH] drm/i915: Preserve value of fec_enable calculated be=
fore
> DSC compute config
>=20
> On Mon, 12 Aug 2024, "Borah, Chaitanya Kumar"
> <chaitanya.kumar.borah@intel.com> wrote:
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: Monday, August 12, 2024 5:24 PM
> >> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> >> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> >> Cc: Deak, Imre <imre.deak@intel.com>; Borah, Chaitanya Kumar
> >> <chaitanya.kumar.borah@intel.com>
> >> Subject: Re: [PATCH] drm/i915: Preserve value of fec_enable
> >> calculated before DSC compute config
> >>
> >> On Mon, 12 Aug 2024, Chaitanya Kumar Borah
> >> <chaitanya.kumar.borah@intel.com> wrote:
> >> > Before DSC compute config, fec_enable value is set in other
> >> > functions (e.g. intel_dp_mst_find_vcpi_slots_for_bpp). We are
> >> > ignoring the value by OR'ing its value in DSC compute config. One
> >> > unintended effect of this is setting fec_enable in UHBR use-cases
> >> > which is not needed for Intel hardware. Therefore, change operator t=
o
> AND.
> >> >
> >> > While at it, add a comment explaining why we don't enable FEC in eDP
> v1.5.
> >> >
> >> > Signed-off-by: Chaitanya Kumar Borah
> >> > <chaitanya.kumar.borah@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
> >> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > index 49a37b996530..3fbf9f33c3e4 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > @@ -2298,7 +2298,12 @@ int intel_dp_dsc_compute_config(struct
> >> intel_dp *intel_dp,
> >> >  		&pipe_config->hw.adjusted_mode;
> >> >  	int ret;
> >> >
> >> > -	pipe_config->fec_enable =3D pipe_config->fec_enable ||
> >> > +	/*
> >> > +	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optiona=
l.
> >> > +	 * Since, FEC is a bandwidth overhead, continue to not enable it f=
or
> >> > +	 * eDP. Until, there is a good reason to do so.
> >> > +	 */
> >> > +	pipe_config->fec_enable =3D pipe_config->fec_enable &&
> >> >  		(!intel_dp_is_edp(intel_dp) &&
> >> >  		 intel_dp_supports_fec(intel_dp, connector, pipe_config));
> >>
> >> With this change, FEC will only be enabled for non-UHBR MST DP and
> >> nothing else. This is the place where SST DP DSC gets FEC enabled.
> >
> > Thank you Jani for pointing it out.
> >
> > Something like this should work?
> >
> > 	pipe_config->fec_enable =3D pipe_config->fec_enable ||
> >   		(!intel_dp_is_edp(intel_dp) &&
> >   		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
> > !intel_dp_is_uhbr(pipe_config));
>=20
> Technically yes, although I dislike the fact that we now have fec_enable =
and its
> rules split to multiple locations.
>=20

I agree. if I understand correctly this should be covered by the larger sep=
aration of DP-MST and MTP planned for UHBR.
Until that time, hopefully [1] is acceptable.

[1] https://patchwork.freedesktop.org/series/137611/

Regards

Chaitanya

> BR,
> Jani.
>=20
>=20
> >
> > Regards
> >
> > Chaitanya
> >
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
