Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C4BA33A6E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 09:58:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52BE310EA2D;
	Thu, 13 Feb 2025 08:58:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U9TPoFd+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37B5910EA2D;
 Thu, 13 Feb 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739437134; x=1770973134;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1AH8Bmt4W+NTmAt6e68Fq0Q9IWDS8b102doaah6btMs=;
 b=U9TPoFd+mNAm2vR3FUgG2cAOTyKCSjActQyi/4Ld0Ab2wmjRJZ5xGiF0
 lWRDuB7HoWRtJkc1tbrqiysiAZIbXtAcFE59FuoEMnDu21dK1C5wa5kTX
 t8e8xW5d1qyDYVl8a+zDyZrtM30hzb2vo9Az7fUyas7sFPX7HRQl7tfIl
 yCKA9UiPqxIFm97Qfzax1Bk4oSlcBqYetvYOTU92RKSoCSIaRDTuVm6qf
 tOv1sI3a2Rbfk0CFP9/pQp7WSI4ZHBw3UHyTvguXWEYU/n9a+P0yZdf6d
 hGBWUtErBe3LIaGEEvJYqO9AeCtb67aL3pDxCdMH8EDQIzU9VXxK8D9HI w==;
X-CSE-ConnectionGUID: Gus0ygc+QzC5Jg1zKoyXxQ==
X-CSE-MsgGUID: ZD6YPlqgSQe4ROgw25Qsdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40244633"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40244633"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 00:58:53 -0800
X-CSE-ConnectionGUID: JHDDz0KoTB6+3sZGmlDp2Q==
X-CSE-MsgGUID: NyMriuq1T4eY/jccuU/XSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="112943529"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 00:58:52 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 00:58:51 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 00:58:51 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 00:58:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lLqfitx6PgmHhP/4hhEsqZ3sjXAOSLhGi3ArMLpZ8iPI9MXYlmhLEI6qZ7nfl7puW/Ai7eleQvrzon5SJ/cpI0PfWQjwtpePcYXmeknLji9XUVZFoIHmrF6xwaTphFbKOehjGi9GTuxSNJSzTe9cQu9s3Z4QO99zy0T5SG0FsJJzVif+mykQ7kfHf1ysMjy2TUBwuB2VA6cdFRjbZyD0BXnrA/nOCKHhMHUYT8JJAH+0a7VIHllqBIDujdJPh5wsTzAwRjZG5VJUKxaAv0YEZ5yJzaIZQ7UewHKOhGVOIpS5xG2z+AGJcuwaZrGObtVM2j4DqPbtwtEko8/ozXWdiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s/jH2fv/lK7V2PmJ80DUjsyK09MPkNKen0BEkfnldWk=;
 b=H1hgWJ8H12pzCvJj3aFOnKsErM9bufSscFYLjmTeB1I9Vou9fcMmAScyOVWvNSg6+6Cdmp6ipd0hWUJuXOA1SMn7IiFXzbHpV0mDbTV90y1H9suZV0eAuCSqPr1/K3UTyqvAcf/ScvcCt9YL/f6z22lgW6I0cHZVKEzuxdhHOEngwEq+xsD5mVIJsZfVba6aVItqy7Q215pTkj8tji8Mw/Hd69UNM7KkXBapTuoTmrvHPJhvLRTYpneH5Ma4W+EIlBztRK3MdRjys2KIYPY/Jp04Zbtoce1zctYyhJwAVfUZEERCZCUgrcOk275lTELAcVgX+TkYO4XTNC+3dnH0vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB8035.namprd11.prod.outlook.com (2603:10b6:510:245::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Thu, 13 Feb
 2025 08:58:48 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 08:58:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 04/14] drm/i915/display: convert assert_transcoder*() to
 struct intel_display
Thread-Topic: [PATCH 04/14] drm/i915/display: convert assert_transcoder*() to
 struct intel_display
Thread-Index: AQHbfWxopd0SKq/pj0Cd19WG4ytmfbNE8ARg
Date: Thu, 13 Feb 2025 08:58:48 +0000
Message-ID: <SN7PR11MB6750697896A8F646284CF8FAE3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
 <430c2f3c899bc98beeb6ba8608f841c9271d0971.1739378095.git.jani.nikula@intel.com>
In-Reply-To: <430c2f3c899bc98beeb6ba8608f841c9271d0971.1739378095.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB8035:EE_
x-ms-office365-filtering-correlation-id: a966c10b-e359-40ad-2fcd-08dd4c0ca14f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?m/CI4rEupIzwX9dIryprtVGm2etSBnWX1Hl7ec+jFMAlQS7nYCULJ6gtU0XB?=
 =?us-ascii?Q?H318lf3WkxO9YvUiOhdyhq+E+NEZjKK5Nv5xNTGLFNHk0y1ROfI3c2w1w2zC?=
 =?us-ascii?Q?VFiE1keRW/Hbp0o+G+gw3F4DHrP9K/qa0salRGxVVkZOQtwk/zZkhNFQDN4j?=
 =?us-ascii?Q?iFRC5ipSTFMoP3wnD5t0DlbJ3ieH9I5aHG690WGI7pdznkvynSFO9xaVOtKf?=
 =?us-ascii?Q?iLBV7lFHIQpK3j0MALRmlcLueXIy/wV6egIBQdZ0xlyC3KCVo+VTvFUJAixr?=
 =?us-ascii?Q?cFKvfvtXCFFTMbgcDsEhujb00Ik8t7IU4NEMV7Hflgsl4gXYY7BcOP5/7OZz?=
 =?us-ascii?Q?8ShBjTccIpfIe3TytWuy9aWv1WQE4rtx4pCnJcci4XH5OedqYRxUlBBTngz1?=
 =?us-ascii?Q?x7ZBMg+yPcL6aqc6sEt9HGx6yPoQCoyWuS9rXHiUzIVlTWmi5uB2uoiKxXkg?=
 =?us-ascii?Q?DsxcvDrnQa/4uaQeBDroMGgm+3l+5gzkwnK/cXdpUmY32rcPFDLtmSF1O531?=
 =?us-ascii?Q?oNBsnSNpzM2sjh5qovhRvAooCrUaQ+L3g2y2wqLVUYsW3krms/fglBP5QcIt?=
 =?us-ascii?Q?PhIkYjXi3jgLXGEr3ARrTkt30NgmJwf3yOqNX7Nk28zbz/fNXGTjniJDe1SW?=
 =?us-ascii?Q?P3Azc9PRuel4ONiZhCfwpZillgn+4z/CoV/s7XGD8Ibz11F/cyWfc02fFcOs?=
 =?us-ascii?Q?h/HFWI6ERM5oV3XKj8MmwUapqKreVk9kJkcQcROOcY+DxGCgAMbdRHJbdRmA?=
 =?us-ascii?Q?TruFuOLVX4gTj3id0zmVs3g/N28bUM6KbXCby/hn+Je0exhORNUtWgT8iCj+?=
 =?us-ascii?Q?cVTxB0WVPRd3aK5ScRpcotelpRO/bRjwdZLjhc3BFnTjVhZlQobufp+ZMx41?=
 =?us-ascii?Q?/cpHdGvTDgKrJiAlXHw9GPq8qEikjsPN3KDr7pflrOx6c1fS8sWFfh2lqnRF?=
 =?us-ascii?Q?N9OIABsGbH+2RTL1cYW0N9p5nRoMnPO2qvECJ4OI1xasVebupJ7GijEpHKDp?=
 =?us-ascii?Q?3zR0kgPZyz1H7lR/dCQA2oJ3G91kuTea+8ADeSBJPwDjlqeQNFSoPWJxQ0xe?=
 =?us-ascii?Q?tgsgIoquBMkF22S4IQmVZT0uAUEOJNhGyHL+9Nbnvp1o40K9/2eE0xkJ37iv?=
 =?us-ascii?Q?iBbiJtd+ByOS+i7XCGe/0XebqX/8D2A65HMujXnqN0JhsoL2IluMwPSIMGym?=
 =?us-ascii?Q?0qGmsNpPzg/JFnS3fDL6cE8wMKRIrn0+KUsD9Vk2F42AdcSTD2xxyOUbXTwT?=
 =?us-ascii?Q?DPtuu8uK3AXfrzNpjjYIpPGMuLT9BU4SPHMCdpXf7eKWEQtTxTu//nF0I5WJ?=
 =?us-ascii?Q?lEUJuDALh/iwXMCnCpE7wdbmEXA3aZyfEcBF2S8aYPLKRuZ9UH9ocWG3N2RO?=
 =?us-ascii?Q?kFvdZUE4rFoi5Z8ekUXVBnQDxNpF9sOE79U7q0rpCRzm9vM68tycxKuhIQGe?=
 =?us-ascii?Q?Xp5TYnQIrPuKlKkFCD34SpN8n9BWVlEY?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pwmF6JDPGcgwLRP+nxmTrkviXXOH+0RLZF2ke9QPgWVX4qdwJrIZqvwgSRx/?=
 =?us-ascii?Q?CQ2V6nUNNalTgRC1+LY4A4QIB/riD8bilTqEqayBZ/1dQLDsDnGl9YqmUC6+?=
 =?us-ascii?Q?BO31kqnjkuECwgv5+Pk806oDsvl1dxABrHhTzzja1MQCzioE7ofLjQ8+MZhN?=
 =?us-ascii?Q?XN1oGio4tF+5eqHrIq+wcZMK+fumpgw6/ir+xZI4fRckfhmlisEXXuqBpLGE?=
 =?us-ascii?Q?R2wdIn9jgIdLe5G2YeowZVXbrLZ+aUMwubmuw3K3FFZ8qtY38HkQLTLg3VFi?=
 =?us-ascii?Q?lxSAa2Oxf3qRbBBPXqZer/JyP5MalODUCfVPPPIpQypPF3x2WJ+4w0cneAlO?=
 =?us-ascii?Q?skbaUfVKaZgNFD2sor3YOW3kIRfeMDc4Ftcl016YopKlE7WoENugoqsdQ2EL?=
 =?us-ascii?Q?ODLQYbfcR7apeRBYywhw9REggb45uOvYVHxZ50WA4S+wNsmIsuguEyIt410K?=
 =?us-ascii?Q?x1iOUCNkZ+K01GZPIjE/mDNj5081Hl+kFOvBEHgclP7NXgBP/Z61+thNpbeA?=
 =?us-ascii?Q?ijHw0+Ts2uyXT7vvFlqfl4RwqLmnTvU2zmqwopCHAC5MAj9mqD7stgFO/8ll?=
 =?us-ascii?Q?IlaakDSx0eVWhr1vgbRTGECasG+v+3zH2nrS7eQiT1NbkoKFjhDVmHDQ4oYI?=
 =?us-ascii?Q?Jo6vYr4PM98MOFkLnS1VI11oAM8x+eiQlQn6848OC0VJC1J1kiLWBjy4lbuu?=
 =?us-ascii?Q?0pSLeuqe6WOL/4h1Ki0gZM088u6OTiPoHJCdA1T5wPI61Z1OGHyD9HuavvvP?=
 =?us-ascii?Q?5LhMBa5HVVJqj+UgHgumxYKBge5By23QxIIUO9q6p90aJFOLyNHkjpuLVvcE?=
 =?us-ascii?Q?e9fnA1b1jsgE7F+Ul9nCQTt9+JeUu6lBRDdwo3+yUKn+p2sPuXpxVtRsVldn?=
 =?us-ascii?Q?kYjynhQm30OIjhPvlcFYV/VAycTKUqIBmShKSjT2dysrDzzKUFtkdaYg6Vow?=
 =?us-ascii?Q?ipvPL+oLIJxU0+uI02o1tksjLUzeA1ZZTb+zLpsnZASS/w7rDSy+qGiPt+Yc?=
 =?us-ascii?Q?vo6W8XBarAFWGEgxRihE+guBLUVLsuD6PfLR0ydMtDvDYFuS4KEJjvX9Gd5L?=
 =?us-ascii?Q?lvB+uRUYZ+sh0aA+DLq8IlU5FXm9i5Xc5lpY+AoQNahNIzYVdfC4LXWey9kJ?=
 =?us-ascii?Q?zXztp3dM+npt71JnrNxcn/O7LE79k2+puBGHpE9XDaCFy+3rt2jJQ+KEuKFO?=
 =?us-ascii?Q?bVqTEAxv2ddkOkFKp95QDBqtvHfiPj9ELWfjMnyZYD06VDfxzd5vCxo9QMa5?=
 =?us-ascii?Q?TTXtr7njUSTDPjMPZlSTXUPSaMXMX1NiE02/y0jqenIaRnsTF++P4Fc/xqCF?=
 =?us-ascii?Q?UfBBFN7XS/k1ruZEgEWyFQxCeKQ0TmOqMxA6w5IAed3OoEV/ELWSM9xEBwMQ?=
 =?us-ascii?Q?giw9VDoRejfuxAU5xLYDshO63IBhfY5yTaN0cY3hVfG2VOMBq1Wm8PsHVi/x?=
 =?us-ascii?Q?64wk6EF4N4pvi9TjymktJhmlK021P+svmDFH2afmiXlvZhIEpuH98vRSjVlW?=
 =?us-ascii?Q?l5DKikT/azLMUmlhg1xymicSPitxBGtFEb3O7EORSjmKEMcyOAZE3f3FLRAM?=
 =?us-ascii?Q?i5gJJ3YjIrSshh1sSLbWEPCzoy9wMLaHyNVk8RA0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a966c10b-e359-40ad-2fcd-08dd4c0ca14f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 08:58:48.5938 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: prfZqMCC9xEe6bTiyBSMBOjwJczFvLMkLPi9Fz/+vCL9yhlKqzv6KXA3XXEuQb9/jb4TcZpnQX3h3Zzc5aIQdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8035
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Wednesday, February 12, 2025 10:07 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 04/14] drm/i915/display: convert assert_transcoder*() to
> struct intel_display
>=20
> Going forward, struct intel_display is the main display device data point=
er.
> Convert the assert_transcoder*() helpers to struct intel_display, allowin=
g
> further conversions elsewhere.
>=20
> Do a few small opportunistic conversions right away.
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c        |  7 ++--
>  drivers/gpu/drm/i915/display/intel_display.c | 34 +++++++++-----------
> drivers/gpu/drm/i915/display/intel_display.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c    | 30 +++++++++--------
>  drivers/gpu/drm/i915/display/intel_fdi.c     |  3 +-
>  drivers/gpu/drm/i915/display/intel_tv.c      |  3 +-
>  6 files changed, 38 insertions(+), 41 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> b/drivers/gpu/drm/i915/display/g4x_dp.c
> index cfc796607a78..f50ab9a3f3e9 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -197,9 +197,8 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
> {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>=20
> -	assert_transcoder_disabled(dev_priv, pipe_config->cpu_transcoder);
> +	assert_transcoder_disabled(display, pipe_config->cpu_transcoder);
>  	assert_dp_port_disabled(intel_dp);
>  	assert_edp_pll_disabled(display);
>=20
> @@ -237,10 +236,8 @@ static void ilk_edp_pll_off(struct intel_dp *intel_d=
p,
>  			    const struct intel_crtc_state *old_crtc_state)  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>=20
> -	assert_transcoder_disabled(dev_priv, old_crtc_state-
> >cpu_transcoder);
> +	assert_transcoder_disabled(display, old_crtc_state-
> >cpu_transcoder);
>  	assert_dp_port_disabled(intel_dp);
>  	assert_edp_pll_enabled(display);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index b8c57a5d26a0..a95564b499ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -419,23 +419,22 @@ intel_wait_for_pipe_off(const struct
> intel_crtc_state *old_crtc_state)
>  	}
>  }
>=20
> -void assert_transcoder(struct drm_i915_private *dev_priv,
> +void assert_transcoder(struct intel_display *display,
>  		       enum transcoder cpu_transcoder, bool state)  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	bool cur_state;
>  	enum intel_display_power_domain power_domain;
>  	intel_wakeref_t wakeref;
>=20
>  	/* we keep both pipes enabled on 830 */
> -	if (IS_I830(dev_priv))
> +	if (display->platform.i830)
>  		state =3D true;
>=20
>  	power_domain =3D POWER_DOMAIN_TRANSCODER(cpu_transcoder);
>  	wakeref =3D intel_display_power_get_if_enabled(display,
> power_domain);
>  	if (wakeref) {
> -		u32 val =3D intel_de_read(dev_priv,
> -					TRANSCONF(dev_priv,
> cpu_transcoder));
> +		u32 val =3D intel_de_read(display,
> +					TRANSCONF(display,
> cpu_transcoder));
>  		cur_state =3D !!(val & TRANSCONF_ENABLE);
>=20
>  		intel_display_power_put(display, power_domain, wakeref);
> @@ -1968,8 +1967,8 @@ static void hsw_crtc_disable(struct
> intel_atomic_state *state,
>=20
>  static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state) =
 {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>=20
>  	if (!crtc_state->gmch_pfit.control)
>  		return;
> @@ -1978,18 +1977,18 @@ static void i9xx_pfit_enable(const struct
> intel_crtc_state *crtc_state)
>  	 * The panel fitter should only be adjusted whilst the pipe is
> disabled,
>  	 * according to register description and PRM.
>  	 */
> -	drm_WARN_ON(&dev_priv->drm,
> -		    intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) &
> PFIT_ENABLE);
> -	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
> +	drm_WARN_ON(display->drm,
> +		    intel_de_read(display, PFIT_CONTROL(display)) &
> PFIT_ENABLE);
> +	assert_transcoder_disabled(display, crtc_state->cpu_transcoder);
>=20
> -	intel_de_write(dev_priv, PFIT_PGM_RATIOS(dev_priv),
> +	intel_de_write(display, PFIT_PGM_RATIOS(display),
>  		       crtc_state->gmch_pfit.pgm_ratios);
> -	intel_de_write(dev_priv, PFIT_CONTROL(dev_priv),
> +	intel_de_write(display, PFIT_CONTROL(display),
>  		       crtc_state->gmch_pfit.control);
>=20
>  	/* Border color in case we don't scale up to the full screen. Black by
>  	 * default, change to something else for debugging. */
> -	intel_de_write(dev_priv, BCLRPAT(dev_priv, crtc->pipe), 0);
> +	intel_de_write(display, BCLRPAT(display, crtc->pipe), 0);
>  }
>=20
>  /* Prefer intel_encoder_is_combo() */
> @@ -2300,17 +2299,16 @@ static void i9xx_crtc_enable(struct
> intel_atomic_state *state,
>=20
>  static void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_st=
ate)  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_display *display =3D to_intel_display(old_crtc_state);
>=20
>  	if (!old_crtc_state->gmch_pfit.control)
>  		return;
>=20
> -	assert_transcoder_disabled(dev_priv, old_crtc_state-
> >cpu_transcoder);
> +	assert_transcoder_disabled(display, old_crtc_state-
> >cpu_transcoder);
>=20
> -	drm_dbg_kms(&dev_priv->drm, "disabling pfit, current: 0x%08x\n",
> -		    intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)));
> -	intel_de_write(dev_priv, PFIT_CONTROL(dev_priv), 0);
> +	drm_dbg_kms(display->drm, "disabling pfit, current: 0x%08x\n",
> +		    intel_de_read(display, PFIT_CONTROL(display)));
> +	intel_de_write(display, PFIT_CONTROL(display), 0);
>  }
>=20
>  static void i9xx_crtc_disable(struct intel_atomic_state *state, diff --g=
it
> a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index e594492bade7..503e2ea1d029 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -574,7 +574,7 @@ int intel_atomic_commit(struct drm_device *dev,
> struct drm_atomic_state *_state,  void intel_hpd_poll_fini(struct
> drm_i915_private *i915);
>=20
>  /* modesetting asserts */
> -void assert_transcoder(struct drm_i915_private *dev_priv,
> +void assert_transcoder(struct intel_display *display,
>  		       enum transcoder cpu_transcoder, bool state);  #define
> assert_transcoder_enabled(d, t) assert_transcoder(d, t, true)  #define
> assert_transcoder_disabled(d, t) assert_transcoder(d, t, false) diff --gi=
t
> a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index cc19cd51ab4d..08a30e5aafce 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1843,7 +1843,7 @@ void i9xx_enable_pll(const struct intel_crtc_state
> *crtc_state)
>  	enum pipe pipe =3D crtc->pipe;
>  	int i;
>=20
> -	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
> +	assert_transcoder_disabled(display, crtc_state->cpu_transcoder);
>=20
>  	/* PLL is protected by panel, make sure we can write it */
>  	if (i9xx_has_pps(dev_priv))
> @@ -2024,7 +2024,7 @@ void vlv_enable_pll(const struct intel_crtc_state
> *crtc_state)
>  	const struct i9xx_dpll_hw_state *hw_state =3D &crtc_state-
> >dpll_hw_state.i9xx;
>  	enum pipe pipe =3D crtc->pipe;
>=20
> -	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
> +	assert_transcoder_disabled(display, crtc_state->cpu_transcoder);
>=20
>  	/* PLL is protected by panel, make sure we can write it */
>  	assert_pps_unlocked(display, pipe);
> @@ -2171,7 +2171,7 @@ void chv_enable_pll(const struct intel_crtc_state
> *crtc_state)
>  	const struct i9xx_dpll_hw_state *hw_state =3D &crtc_state-
> >dpll_hw_state.i9xx;
>  	enum pipe pipe =3D crtc->pipe;
>=20
> -	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
> +	assert_transcoder_disabled(display, crtc_state->cpu_transcoder);
>=20
>  	/* PLL is protected by panel, make sure we can write it */
>  	assert_pps_unlocked(display, pipe);
> @@ -2253,36 +2253,38 @@ int vlv_force_pll_on(struct drm_i915_private
> *dev_priv, enum pipe pipe,
>=20
>  void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe) =
 {
> +	struct intel_display *display =3D &dev_priv->display;
>  	u32 val;
>=20
>  	/* Make sure the pipe isn't still relying on us */
> -	assert_transcoder_disabled(dev_priv, (enum transcoder)pipe);
> +	assert_transcoder_disabled(display, (enum transcoder)pipe);
>=20
>  	val =3D DPLL_INTEGRATED_REF_CLK_VLV |
>  		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
>  	if (pipe !=3D PIPE_A)
>  		val |=3D DPLL_INTEGRATED_CRI_CLK_VLV;
>=20
> -	intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
> -	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
> +	intel_de_write(display, DPLL(display, pipe), val);
> +	intel_de_posting_read(display, DPLL(display, pipe));
>  }
>=20
>  void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe) =
 {
> +	struct intel_display *display =3D &dev_priv->display;
>  	enum dpio_channel ch =3D vlv_pipe_to_channel(pipe);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(pipe);
>  	u32 val;
>=20
>  	/* Make sure the pipe isn't still relying on us */
> -	assert_transcoder_disabled(dev_priv, (enum transcoder)pipe);
> +	assert_transcoder_disabled(display, (enum transcoder)pipe);
>=20
>  	val =3D DPLL_SSC_REF_CLK_CHV |
>  		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
>  	if (pipe !=3D PIPE_A)
>  		val |=3D DPLL_INTEGRATED_CRI_CLK_VLV;
>=20
> -	intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
> -	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
> +	intel_de_write(display, DPLL(display, pipe), val);
> +	intel_de_posting_read(display, DPLL(display, pipe));
>=20
>  	vlv_dpio_get(dev_priv);
>=20
> @@ -2296,19 +2298,19 @@ void chv_disable_pll(struct drm_i915_private
> *dev_priv, enum pipe pipe)
>=20
>  void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>=20
>  	/* Don't disable pipe or pipe PLLs if needed */
> -	if (IS_I830(dev_priv))
> +	if (display->platform.i830)
>  		return;
>=20
>  	/* Make sure the pipe isn't still relying on us */
> -	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
> +	assert_transcoder_disabled(display, crtc_state->cpu_transcoder);
>=20
> -	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
> DPLL_VGA_MODE_DIS);
> -	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
> +	intel_de_write(display, DPLL(display, pipe), DPLL_VGA_MODE_DIS);
> +	intel_de_posting_read(display, DPLL(display, pipe));
>  }
>=20
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c
> b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 9ebe80bfaab6..024d0c7e0a88 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -511,6 +511,7 @@ void intel_fdi_normal_train(struct intel_crtc *crtc)
> static void ilk_fdi_link_train(struct intel_crtc *crtc,
>  			       const struct intel_crtc_state *crtc_state)  {
> +	struct intel_display *display =3D to_intel_display(crtc);
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	enum pipe pipe =3D crtc->pipe;
> @@ -525,7 +526,7 @@ static void ilk_fdi_link_train(struct intel_crtc *crt=
c,
>  		       intel_de_read(dev_priv, PIPE_DATA_M1(dev_priv, pipe))
> & TU_SIZE_MASK);
>=20
>  	/* FDI needs bits from pipe first */
> -	assert_transcoder_enabled(dev_priv, crtc_state->cpu_transcoder);
> +	assert_transcoder_enabled(display, crtc_state->cpu_transcoder);
>=20
>  	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
>  	   for train result */
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c
> b/drivers/gpu/drm/i915/display/intel_tv.c
> index 1c50732a099d..7838c92f8ded 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -1436,7 +1436,6 @@ static void intel_tv_pre_enable(struct
> intel_atomic_state *state,
>  				const struct drm_connector_state
> *conn_state)  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	struct intel_tv *intel_tv =3D enc_to_tv(encoder);
>  	const struct intel_tv_connector_state *tv_conn_state =3D @@ -1543,7
> +1542,7 @@ static void intel_tv_pre_enable(struct intel_atomic_state *sta=
te,
>  		intel_de_write(display, TV_CLR_LEVEL,
>  			       ((video_levels->black << TV_BLACK_LEVEL_SHIFT)
> | (video_levels->blank << TV_BLANK_LEVEL_SHIFT)));
>=20
> -	assert_transcoder_disabled(dev_priv, pipe_config->cpu_transcoder);
> +	assert_transcoder_disabled(display, pipe_config->cpu_transcoder);
>=20
>  	/* Filter ctl must be set before TV_WIN_SIZE */
>  	tv_filter_ctl =3D TV_AUTO_SCALE;
> --
> 2.39.5

