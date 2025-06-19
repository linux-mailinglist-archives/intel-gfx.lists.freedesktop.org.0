Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F62ADFFC6
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 10:33:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1B2910E9D2;
	Thu, 19 Jun 2025 08:33:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lt3SAP3L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ECF010E9CF;
 Thu, 19 Jun 2025 08:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750322001; x=1781858001;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W/xWPtLmqJxt0cGajgxv0CMh5Dps4B82Re565X/rFkU=;
 b=lt3SAP3L+Ek93UcUPi5GdPFSvNkihz6eBQsBr+nD7FHLZhDkGg/Mxh9C
 PvSFduxFmdkzMNLn3W0vojrUKQHKUXjxu/v8TwZlF/ljGOXvSfS6neR+j
 +whWNFFGVBU0kZ3JqbHA5f7ISJfYH5X1N8Xyg+w00mXp+0dsXMZMZcxER
 B/ZEpy9SBD5hxwGV9O3s+XEpJkUQOndfOC1USpxwiyLTPSlls7QWVGjGY
 uFUvX7JbHGlMBkaD2iVmK9UQXPNSRw59/VdXoU++vsz3zIxgi+3L+1JRG
 VGUWp8li2dzmixSEvYc5aoyjf/AGyavf+YBzEuK+n53R57K9vi81s1kR6 Q==;
X-CSE-ConnectionGUID: LUQuhoK7Rdi0xC4sFr0b/g==
X-CSE-MsgGUID: 48mAFehDTXSq+O8ueepzNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52490170"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="52490170"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 01:33:20 -0700
X-CSE-ConnectionGUID: iDQM55JbT02mgofJfaGblQ==
X-CSE-MsgGUID: lfGhJvYoS6ObACWLV3sKMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="151220894"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 01:33:20 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 01:33:18 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 19 Jun 2025 01:33:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 01:33:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TRLyw0r/VSU2qgCuMJqVEVnTqT+GNRYtoAQqRHgHSZuIfFiNgDZQEbBZL/iltOeNnFW0Yvvo3N4xOXKIX6LJbPhZaQRjipHBdt1dQ++9+hXp+yB/XV7TBaETvaSY3UEcSKdogHtS+4ED3BhhS6AFoXhxZJRMNo44nV7aZnFmszKjdWnqa6vPjox00aybCAgh6j1k9PozuHEBWNTkfSmGyZ9jy4x/Dt3kF1MXlPXr4r3GHCg/VSYamTgYLmGul5GojuK+U67CC+l7X/L6DJYmLkIV1pttiCHxkUvOvxdRveLh06Usi4oBMf59vT6f6Hb9gzrNOkWvCgIj143511X4GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CvMhKPo6jU5ZAgn24fmLRQ+TmNm1WtOzEvCB1i6c68U=;
 b=YK/FhZ6ma+GHQRsSS9dyYfu9mbjeJbrgT3yGzsI6fxfEqgY4LuwPhdG36FvDBN517kz91WcBn3ChMslDbvzQHAyZl6y5jsJsPNER6VtNSFDrQXOC9WJJeCNWfH6WJaYBZPWcIMtJ39b/pVSvfGZUk2gxzUsNwYazCOyEA2ZsLYxuK+9iQzv0EBHI+sh0tw8Lin++lMuRdd9mPblA21E+Sf4YeSL7OpkgAEgPJQ5aXDOxeOzWkw7NKswOS9aNEGshx6U567djRelXezB06WlLzqanSGDG1ABf4DtVkr6KBHMWadedupUi7gNmLfk1Sm/VPyYJ+lzwDo7FUI2MQSGvIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH7PR11MB6859.namprd11.prod.outlook.com
 (2603:10b6:510:1ef::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.38; Thu, 19 Jun
 2025 08:33:15 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64%5]) with mapi id 15.20.8857.020; Thu, 19 Jun 2025
 08:33:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Use HDCP2_STREAM_STATUS to verify content
 type status
Thread-Topic: [PATCH] drm/i915/hdcp: Use HDCP2_STREAM_STATUS to verify content
 type status
Thread-Index: AQHb4M94JClz5yVtQ0e1Ygd6DL8O+rQKJhuAgAABUoA=
Date: Thu, 19 Jun 2025 08:33:15 +0000
Message-ID: <DM3PPF208195D8D4D219407D140DA6C0738E37DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250619040519.3375518-1-suraj.kandpal@intel.com>
 <IA1PR11MB6348EA283482C364646ACE1EB27DA@IA1PR11MB6348.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB6348EA283482C364646ACE1EB27DA@IA1PR11MB6348.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH7PR11MB6859:EE_
x-ms-office365-filtering-correlation-id: a63b669e-d3bd-42bc-aa58-08ddaf0bef73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?102vKdam8IVAHXNZwLuu5lM8TO0lChX8uhzHAnFVCDqjjPtNYH/6x8Lkg8yn?=
 =?us-ascii?Q?eCP6AJnORWQrkIEyDNJipBaVci7opBlKjJTgrYQkUOswsVD0BTUNozdaj8vn?=
 =?us-ascii?Q?SWEU6tubsMKFYiBobY5Lf2nCbCF71tFHJXDxslEev6Kl+2D9A0qOfUNY2rkn?=
 =?us-ascii?Q?4lu+p2NyRQrl02mJd8toV8US1e0F64i/9ZksRrSs29Q8lXqT92ue422oTnSl?=
 =?us-ascii?Q?BhdyseW7g6n2jUuSrs2mCtJSIzs6E26kBPO2TCHWsaDKVQUaMrFjGFwvsL6B?=
 =?us-ascii?Q?RKOUmlaiHJiTMFOkQ7gmJTSysqcA4VlcuU1N8BuyzOngNWan+uSBWwZdjIxX?=
 =?us-ascii?Q?dHpXbZQFujdh66XRmzz3NZd//m0HPAkRQEHxe5jD0OP9/KYap74UzNS/FDNn?=
 =?us-ascii?Q?k6/11RGjnAPOTdKcy83+GW3sarq1YiFkp/odHT4tCLCpcfCDKgd4j3YZRYFO?=
 =?us-ascii?Q?Bh+xfTK5JqYookikmH34Ae53KrSBLm4AWr0W7ZpK0U1BGcXkjwCBnBGrfn9Z?=
 =?us-ascii?Q?hJ58EjfXbuZqDrfT384Sq3Tc3bu4AV8slfNeBhkq5rvANxq7zw5htKcypziQ?=
 =?us-ascii?Q?8fFNWlU90N1qVXLiU1+ifi5CmzR60uzfN2YY64OmmJpAMVQqH64eFo6ElM/s?=
 =?us-ascii?Q?H6BRIstxeQ9fRWX2LOSpPyvCT5j0/+W5E3w5rPTTcSgDN7E7LcwiMM4RrXmb?=
 =?us-ascii?Q?q+48Q0xnhdYxCrRE9X4dWYJPNgZylzsrLwG69oe9483FS/FeeOCkEyczc9qa?=
 =?us-ascii?Q?qZpA6+q7He5Qe4yHUNzZaGzVtDLXfvfTNoxwmzsMzAXM03fANkMgja61NIbZ?=
 =?us-ascii?Q?aQZ2MWZIfbJuudg04H38eNqlMAXSne6HFZWjerkKOlzjrDkLulJ0DYjd/boJ?=
 =?us-ascii?Q?m8A/0AAnDyKxnMYzpErWEmX3dxe3eOAx/TLVpf87B4EeIC/5i+wR5qyBmuF7?=
 =?us-ascii?Q?jrdMj7in97oyrWZ1rfwXt1hntaMQdSwSmKahLJpK1UeltoA1U96ZW6Z4tbli?=
 =?us-ascii?Q?GnyASZCJ128vyMfpst+4rKMk44xz38pU9gfFVyhmFM2izYMxqItdeDx1YyYP?=
 =?us-ascii?Q?1R6ToOV/9mKtMql//xFT7TDwAUcBY4fuHKvLsa1soY6BoGJEj5eIG6Wt+GF3?=
 =?us-ascii?Q?rvKzbupiglWroYw74tp8bmHThTK2TJEOHJTbdoLGltOPjNLQHZZpGZ5M4zoN?=
 =?us-ascii?Q?lXi+4STX60PQnt3wAFouV5Hjhoz1RkL8A39TQ6rzWqVbyCCkV+BLCLaszy8n?=
 =?us-ascii?Q?VW1DvbVR6Kp6IT1MYsy/blDyT4EOS28qyY1KIaZVX6uPYW//G+ZuG39RBGA3?=
 =?us-ascii?Q?W63tcg79rnFTDD1Y+UT0r8qz30eUvIwp8e5/DrpFVZg69Lz365qQngOHYdsW?=
 =?us-ascii?Q?a9Q4s5iz33W0UPAtqvmu7SOc2mepzB8a+nVDloF1BIWefnraPOm4Dk5K0F8q?=
 =?us-ascii?Q?sT4pDtx0ki52RqQTjZNEhBt/U2bNUQ2MaQ2K2jngftk9ryQzPYhpbg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6cTslB13nGDridWn3ZgoUnxyt0w9W1ICax1nzZP/Q1lP/3KlXMQTFfRGGhBO?=
 =?us-ascii?Q?s14C5XEwydsBF1sYdTgYvkCJXv6NiwX/66jOl9C3sRpPoThgJlbl0vUjk81I?=
 =?us-ascii?Q?ioMSNJUumnRpopcCNGKSKMdz/m76d0WvnWUN9AJv2kNLXtBez59d/ldrhqMN?=
 =?us-ascii?Q?+9Y5EKWAjSpCDhLIthKzeqTNthDqH07qX18x6h7GeLESGChtrJPbJ9WksBzf?=
 =?us-ascii?Q?MPI1GwdWtQ8iB2vV5LXFJgz/K+Q6l95p6FzqgeoHwpVUQ7BIuOM99goHQkJH?=
 =?us-ascii?Q?6HoH9GQbfMwfOBRnfdSUojaqYbDzWM13TTN0Mq8VjpXMeBkb0ONyYne1uliA?=
 =?us-ascii?Q?g0gSllR6Bqa2Q+xFpfBDcDoJCkrFyQr2hgB/DLdWOuhr1LfNtz0SMypC7cZx?=
 =?us-ascii?Q?cQ5kKiX9ozIMm75flrCK8mGYFCAxCU2bGVylAcKSU+dVPK9UnDMGPkNKe3fH?=
 =?us-ascii?Q?Qg3Eeggbmggk15/ZQTYXFWKrbQdKLaH58N5YwuoOEr+0fxILVAGC7KXcFTmX?=
 =?us-ascii?Q?oiEu4iHpFD2O20B1dXzNHBdl9EfCoqhXraTvXICOXxGS9qtbf65pAQwuNKcW?=
 =?us-ascii?Q?R/LC/yBDZVQX7v/qmD3Zqdqs7lL8B7RniLWO5WAOL2Lo0NMJec9ejhMvwFg9?=
 =?us-ascii?Q?MMuOUO8m0kx3Iw6H5nzMhwCLXpTN35beBEvJHZ8RMjW45V9XCN80EEUIuXlo?=
 =?us-ascii?Q?4otbsRMd3QLnC+u8H6IvV3AC6GpK41zhq8yn4o/p8iGCKtOSFQPdV3b516ZL?=
 =?us-ascii?Q?VkEqNbxuLKrni4i3vnX2qopT6XgadVxMEbDc4dGL1fWwC5XM3h3+zMiEWyVU?=
 =?us-ascii?Q?5fmoEj/++t6iTUcUccLoFjEwrf7wkryebT/YfzOL3FpPiiRZazQ6zbtI0vJF?=
 =?us-ascii?Q?47SxpQxvM5/aCnD3BWnZ5ON4mMco4Ahsh7it7Fu8NL4RkxH5ofgZr9pyo7F4?=
 =?us-ascii?Q?N5nz8LtYiVtU35HQgfjkjAEyHuxlqpTuxa4y6L983zKTQ6s6ePpFS6AsdpVk?=
 =?us-ascii?Q?D65FyWu4d/r0Gu+nBpw0yVLCY1DPHcC6ZTESeC5CCCqTvhULv0ueV8/eeprj?=
 =?us-ascii?Q?JDZbZUdtm1axU0BnnhZQlyMovIiwxYOwMDedVXEyvg36mxAci/90GThTvNX3?=
 =?us-ascii?Q?kfELH1HqgBrrBO66TUtuBuZEX0mn87+HiCu9+VjUU2yikrrL6n+xn0aZHhLr?=
 =?us-ascii?Q?0FChHrfV4VeSCkNgu2ylu0nhUQXG63z2yXk/CQMhmD9MHLQ84Lz5knbqfHl5?=
 =?us-ascii?Q?5MYInStaB/OvNfytvEQU6Jv+RqesnlcIyghq8eNEuf0F3stlcmL+qBr8rMkz?=
 =?us-ascii?Q?tXINeV+a1aSuPkNZbt0syIgIkY4K0dbBQ4vMeM5wnZ4WcjLSx/2eOX/9s8+U?=
 =?us-ascii?Q?1fqSBeHvjripV8P/0DgxLyWge/OqVKh5nZdoiY1UEoyfkbPnEadfnQ2kbxq1?=
 =?us-ascii?Q?oWlklaepClPRyhEEDX+hhX8iecpolY28KTf1oKFkphQM4FTTP/PYh1lEngOx?=
 =?us-ascii?Q?vbh8BAXkA08sQYiWIe0wuj7wDOo+cc2RK9uqfy2X2FAqoUxv6Zmr+A2GJLdn?=
 =?us-ascii?Q?FIjVPu60ppQ7F+H98UAHxqSDH6L3x8MaEFz1R6aj?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a63b669e-d3bd-42bc-aa58-08ddaf0bef73
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2025 08:33:15.2925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O2LGKF/IubILtRpeaRtBC7Y+WUd4lTj/3V19P9R35KNdURSY+2tTV4zcspTabuwE9ny8VMFx79wl2hWcGcjBrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6859
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
> From: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Sent: Thursday, June 19, 2025 1:57 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: RE: [PATCH] drm/i915/hdcp: Use HDCP2_STREAM_STATUS to verify
> content type status
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: 19 June 2025 09:35
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> > <suraj.kandpal@intel.com>
> > Subject: [PATCH] drm/i915/hdcp: Use HDCP2_STREAM_STATUS to verify
> > content type status
> >
> > From PTL we need to move to using HDCP2_STREAM_STATUS to check if the
> > written content type info is the same as we expect since
> > HDCP2_AUTH_STREAM is inaccessible to us now.
>=20
> Any reference of bspec you want to add here or it is based on some
> experiment which need to be mentioned  ?

Not on bspec it will be mentioned later but this was found on debug with gs=
c and h/w team.
This is  fix patch for an blocker bug that why we need to get this merged a=
s soon as possible.

Regards,
Suraj Kandpal

>=20
> Regards,
> Mitul
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 13 ++++++++++---
> >  1 file changed, 10 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > index 7bd775fb65a0..131fc0cae13b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > @@ -806,9 +806,11 @@ intel_dp_mst_hdcp2_stream_encryption(struct
> > intel_connector *connector,
> >  	enum port port =3D dig_port->base.port;
> >  	int ret;
> >
> > -	drm_WARN_ON(display->drm, enable &&
> > -		    !!(intel_de_read(display, HDCP2_AUTH_STREAM(display,
> > cpu_transcoder, port))
> > -		    & AUTH_STREAM_TYPE) !=3D data->streams[0].stream_type);
> > +	if (DISPLAY_VER(display) < 30)
> > +		drm_WARN_ON(display->drm, enable &&
> > +			    !!(intel_de_read(display,
> > +			    HDCP2_AUTH_STREAM(display, cpu_transcoder,
> > port))
> > +			    & AUTH_STREAM_TYPE) !=3D data-
> > >streams[0].stream_type);
> >
> >  	ret =3D intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
> >  	if (ret)
> > @@ -824,6 +826,11 @@ intel_dp_mst_hdcp2_stream_encryption(struct
> > intel_connector *connector,
> >  		return -ETIMEDOUT;
> >  	}
> >
> > +	if (DISPLAY_VER(display) >=3D 30)
> > +		drm_WARN_ON(display->drm, enable &&
> > +			    !!(intel_de_read(display,
> > +			    HDCP2_STREAM_STATUS(display, cpu_transcoder,
> > port))
> > +			    & STREAM_TYPE_STATUS) !=3D data-
> > >streams[0].stream_type);
> >  	return 0;
> >  }
> >
> > --
> > 2.34.1

