Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A732B2D836
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 11:31:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA2B10E372;
	Wed, 20 Aug 2025 09:31:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iXrkqcjG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90F6710E372;
 Wed, 20 Aug 2025 09:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755682271; x=1787218271;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y0WVm7V0pdSPI+Czb/UgZ/EXOQixYYt0i+7GSNELztk=;
 b=iXrkqcjGhDca6spVYeohr72F7LXvVCBMvXAtz7H4YDVn/D+Dp32Shh+3
 9Hj8/oNNKzAQWOfsS2IC0RGCMHHFJoTO6eq36hO8KesXR3Aox8hXx1dkA
 arwrtkXSynBzjK0I9KwmUn1jQ4v8pXjz8SZQulyI3ihHZMcmPOTPUISms
 jimJJdnfkjoGtQkIf0NaQMyteSRunIW6CqZceVNflsdEMnkcDHK7QW8lk
 KI/rldM5g4+aZwwvYTB0DNiYHL3K57fUnQuZ9uosAFmxuQSVMVnfmvblM
 4cHr60Dws4Z/KNPw2ueFNiFtB2g3vkanrnzMCArue7e4I7W1gCtKdsaWe w==;
X-CSE-ConnectionGUID: 590DMs7fSXaPrXu82Pk3Tg==
X-CSE-MsgGUID: +L0ySmKdSky6PakR5qK55A==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="69391373"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="69391373"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 02:31:11 -0700
X-CSE-ConnectionGUID: WKQG2UHQTt+/8wCTPM/YnQ==
X-CSE-MsgGUID: qG6foTOBSPa9e5sh4ylmoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="199086997"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 02:31:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 02:31:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 02:31:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.84) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 02:31:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t+i+YY3KeUKd1C/tRkBRd/E0AhNAOoAEO4NCzzPU+KcwZftzp/JTKb6enIOTkPnVlNIWj5mzcOdiPYuHluY0fpASKsD23QXx9xp+CpiVP6I2bajijDljUBxFgweGy/dgV0acSdVmY9kYGWjWYdozgEgiI8rYfRy3efVmY3Fv6H6fA3ZsP5XVDtVwVxyA6E4XI79iJUVsYCCMFsuwIW/y4V6FPaU7056EzHrEAhcpdslj4fspFqu1UHZlbgnoxKvn0wc1sKlKROKNa+HFB6u0OLqzeLRgkJrZQwjePBu4OCwqvaz9HGpVqkFzK/ShM7klMF101nVUhJBhQVZenYiDIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qdfybtE4TGgFkPcdQj7R2/wzKkuoQfdveF5hRCNQtjQ=;
 b=OtfcPfR8eBk7RWknucR7xZoTPhpAlarcpM0qkko3FisEozQOBIb/BzchrAtCPlClx/Vrpx9OVdL+TuqaSfzch+H2/91kJDjiNpNmcPUIouJ735AQ+PfICpigLXENGZs1P8tTLLZ2N4EqChIcmoG6eKgfDhfCqIImJ3Y6sQIlWPbLIK/fc9DNMqwqNVUfxyOlfrGtns+PGaiPs19XrULwc96VOi8dJTEiMLly6XnhBUwe3/Wr3qsC3wBd8blYhGXIPEDb7TTmnoIQCtvWcF+RpPHnVTw1rDZR6vFhBwZv35hk0Kuq1LX9fwT77/yOeBPWvcF0B8aWphRga42R2F8GIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CH3PR11MB8138.namprd11.prod.outlook.com (2603:10b6:610:158::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.13; Wed, 20 Aug
 2025 09:31:02 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9052.013; Wed, 20 Aug 2025
 09:31:02 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 12/12] drm/i915/vrr: Fix seamless_mn drrs for PTL
Thread-Topic: [PATCH 12/12] drm/i915/vrr: Fix seamless_mn drrs for PTL
Thread-Index: AQHcEax4pSTbMbJ3Fkys9tQ96JKKyrRrRtbQ
Date: Wed, 20 Aug 2025 09:31:02 +0000
Message-ID: <IA1PR11MB6348C9FCD491C46EDD1CC0FFB233A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250820080451.2634888-1-ankit.k.nautiyal@intel.com>
 <20250820080451.2634888-13-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250820080451.2634888-13-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CH3PR11MB8138:EE_
x-ms-office365-filtering-correlation-id: b9595fae-11cf-4c47-f418-08dddfcc47b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?EmS3aa7q/C5q3rEJsdf9znpVDQq3GhxIpRTd89yTgMNRS4ktQpiE5bwxc3jV?=
 =?us-ascii?Q?UkrK+EbtVH4cdSZmmomPJ/Lpz1d07T+Qr4a1L+pITTpP0ztcrfxgYsZOhlrC?=
 =?us-ascii?Q?QeAxGYM2AbokVbEfHngGSon+Ai0AI6A5+lyrTCrljnUaY53Kqa8ZVhrIF+tG?=
 =?us-ascii?Q?R+t2qkuNQByo1wCd78/ARTKanSsR/RxwPhZzD6iAbWmLW0wbvr0+QmyTbBFy?=
 =?us-ascii?Q?DY6Dy+wNAEcD8PR0kvBBrT0KLH8u0YIDRnHBlYcXofkk+zMMz2LkqtTg3akh?=
 =?us-ascii?Q?kmckfIvP5DCOX5eTmZOCfhF7s99x4oBkv7NZ7+BB0smKAL7jkJiQrMB9E+cG?=
 =?us-ascii?Q?i8W8fodiAYbsgM2FUonkyw+qqkOolzpFHGvnZPhkgyw+7dc+JIOPySb/K5+d?=
 =?us-ascii?Q?5inayWVcPRE0LpyToMunateOd/VGHa0a2mT0O1z1ZVOvHVckykebcwXj8MX9?=
 =?us-ascii?Q?AaZp4zurospMZSAdJgRlTblOKHmjFq/zKpCEC1MGDqzaNLND33RhJ603DaqH?=
 =?us-ascii?Q?CUP3KIJc4m0BGrG0Jcb7IpXtJKLb9eNt8rBGzPs4c9wIZ+FSti+EWZU94BvR?=
 =?us-ascii?Q?qlqBTdcVvTBvXABOE6Nc+KIZxp0t+7P6q1LKx+7SMGEOJqekrh9M0QHtV2UR?=
 =?us-ascii?Q?Dc5O9GmA5etdkeWoFsbBvFufmpVmomJec9hi9NEArs36f5rPNTWVvIWR0kQH?=
 =?us-ascii?Q?UDKP6RSFyhTvOpEZJR3UzZS4FrHlUeMlHg9UMEq3zXZSt879GHw5HhZGsstm?=
 =?us-ascii?Q?AfDxcxRl7m5vvWt6TOq6TOnN9aZavMeFeDTZvk+FJV0RbYGHAj82fZbT04Rf?=
 =?us-ascii?Q?h5VjVykXPwkuhWiyZbJPSmCGY+zNIx+Pm6CeJ00YzDPIZ2furnlaH96oEiwj?=
 =?us-ascii?Q?wX2EFMDgZREWUVYN35lWE+DP5ApjJW5oyMC6a3PbK5ffCSMXnqSXKx6guCUQ?=
 =?us-ascii?Q?/8dnQxvpq9j3IC6dpeTdLC7/lHaMyFfqnW7eMi4Y6FgW7IhdSnKp5bt06Ld5?=
 =?us-ascii?Q?tMNpBARssbNobuEgWHnbDgUVAGNIywbWwSzUXWR7DIsxh/sX4tdfUxHdpfqt?=
 =?us-ascii?Q?ucL/sbEu0RZAbHcdinS/g0PlVXEyxy26wGhzCCoaA8zjm55f74qfYjeM0j/H?=
 =?us-ascii?Q?9OGjL6eV3zwYuxKswOnse67Pg0xG7dsG34SZ8y/OLVuO1ZV3wyFW//XwLpw2?=
 =?us-ascii?Q?g9nK1GP+0lReBNc9mmzNUBonGS87GFHuakGbXFeU9U1ZEkt37kD5aR2+t8kP?=
 =?us-ascii?Q?1QYq+zBZTqSfscjqrO5e2YagdF/hyxXPXdr+HpAUPmfJUN6QQgt4h+caB9UB?=
 =?us-ascii?Q?cAqSOO/aDwaTwcHgMeM7KJpZppz3MJdb+MWFDkkKNzhZwPIYmRSzNhRgKdIE?=
 =?us-ascii?Q?i2mDqtZovvxCxtahVg5IgP246arxP4Aillx9bFQYXVaLYDFxfn40BtflpEju?=
 =?us-ascii?Q?Y+bOAkEoSiL9KgBsuUcUjRcJmA0ymqWFq4rFg2O+jbPRC1bQaDUf75uMhGW3?=
 =?us-ascii?Q?i3d2ETY6KXA+nLQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B1d732DRLryuur/kuCVwpD5MzsGeVSOei+t4mjgJWVhcbRZkgq1SnYxgJRtd?=
 =?us-ascii?Q?dmodrJ3f4zwSTkuJsa/HL2h+5FyBVFVAk4uHHlvDvyfVBR0PqN6xB5JzZiiQ?=
 =?us-ascii?Q?PjjSKWrE4+SibXANANwMV5oZmodFrr/k2/8E9KodpHysaC6kQQjP1Fdzmlp6?=
 =?us-ascii?Q?kdSz6HfjEi4Z3KpPk/pb8dqyveUvKKhjFcZzlaDNCEx2F4nPlZQZi27PzP0Z?=
 =?us-ascii?Q?91vRHMh74OMXYXcrv4vohdV/LFWNZmpavV3l58Ap/7guIVVLKwKCwGNEkt4c?=
 =?us-ascii?Q?ZoFLVgWtq8mLbslX5BEyOrI34yUtFGxJUIOEwVaVUAUZFU9PZxy7fM/9Q52W?=
 =?us-ascii?Q?8M6FjU6vlbkf9Jn6a4wX9KhUARyhhBFCkfqDIwVAm/r5Q7/lHmQ3hqSODrED?=
 =?us-ascii?Q?H+nugt1S63crdZWM5/SvFY+TMp/rnCf2Ot0p89fSPFQCMzx0KWYaIZeDaqtf?=
 =?us-ascii?Q?ZWu1D56Jf30ZixhXGFMhjvUJ3W9dPPB8QjS9kbZb/MlHwl9SMu33juAw8qyt?=
 =?us-ascii?Q?x08Zh97zmIu1lkebbzgujuDIEWskHmT+iXXNjvZSosOQkRCDpQF+4+ukFV8Y?=
 =?us-ascii?Q?pbDLpT0m6pPYAbJLIZmiitCjLhhtnD/y75DTOMsWYH3C1GkwtbxiRZxT44gt?=
 =?us-ascii?Q?Pt+H+zwJObWCwibU4MKlXmtrPV3vuBNLl+L82PNrxw0rxtGG/rc5rTiFwWkb?=
 =?us-ascii?Q?ohvWW/IPm6fABdFFCbZ30dzSNylJN1FaI0SNBKI5QQxwgY739yi/rPqqz19v?=
 =?us-ascii?Q?dyNeaqMl0fj4su8L8L9QNeeiLaxaoVyN89mI29GG/av0Yx0Xv2c0nv0tZV9W?=
 =?us-ascii?Q?ENRh6nVlt8Kiak1iWv13d+JUiBEbuK5mFeIBLOTWh8E+P/HnWeOoTuK1SNof?=
 =?us-ascii?Q?6Ysj/tWClaOBQR29s2zMwqxMch/QQS4nBK6RZeKd+wa+LfpVxG/TgEXyOxCw?=
 =?us-ascii?Q?+k/27nmrZUC5mM8saII44VxXgHCKJqzJEF9l5MSeILXrUoqaFjtTZEMSFRSn?=
 =?us-ascii?Q?B6SoHufHquMml4Qde9dAnLuXNNIBtpehsNi0WDLxyJw4tUkgm/R+kymw9NNq?=
 =?us-ascii?Q?soSxD7sRT5fPpEy0tblnwvtZRvqvmGyjx39xGfBw7Nl8bQFw2R8yVCIJidsQ?=
 =?us-ascii?Q?NABEL94lQjrQBd2t+j615hIB6YsW4jYfik3pVGJv0jI5C+8wURjaPVaegE9B?=
 =?us-ascii?Q?vuSqYue2il8j2f111EgXeCi/OfXMkASCz41IXdSHS1itJvyUMYHraRwKXUI3?=
 =?us-ascii?Q?AYLfM1IhkH/8zidEn5bcMv2TDtImJ7poDYL9Y7CWWNN7cJpwUb/HtCHTP6UC?=
 =?us-ascii?Q?zthNcTJtyRcNa/+A9Xq32K+DomLbqbFdCGgVy1J7mEP7nZIXkQUQG+d8voAB?=
 =?us-ascii?Q?A6eNzgJwpNWIIKTKq/bEgMG1mLXLW2KXOwIycr1JwiitCWoECk7uTRH42Srg?=
 =?us-ascii?Q?285h9I0B27PXH24aitcSMwStMpmfEJnqg2vC/e4VhtDWtQqRlpTElat0xwAE?=
 =?us-ascii?Q?pYd+dY8JOtFCGV+rlrTmzYuStUBMaz4RmcQCdz0Gq1nssv/fq3sSzykFvTd/?=
 =?us-ascii?Q?XmCzYh8G0wTSqkjguIb8BOMtGpsEZHfBqfNL8WIPK3DscBPP2uxLsWwV4SXp?=
 =?us-ascii?Q?aAgKSK2W2+c0WUUSie6n0yY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9595fae-11cf-4c47-f418-08dddfcc47b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2025 09:31:02.5752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CEhHkakG4ufySBWR0OUakmBpAW3gp4Bm/czCIEa/t8qmX0s0USQYdQy7iTuuLa135AJpF2wPNbkf+EHG55ptQW1yp8QjOpdY/HTa78j8vs39nwMUUSvhBV/CNHdidzQF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8138
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: 20 August 2025 13:35
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 12/12] drm/i915/vrr: Fix seamless_mn drrs for PTL
>=20
> With VRR timing generator always on, the fixed refresh rate is achieved b=
y
> setting vrr.flipline and vrr.vmax as the vtotal for the desired mode.
>=20
> This creates a problem for seamless_mn drrs feature, where user can
> seamlessly set a lower mode on the supporting panels. With VRR timing
> generator, the vrr.flipline and vrr.vmax are set to vtotal, but that corr=
esponds
> to the higher mode.
>=20
> To fix this, re-compute the vrr timings when seamless_mn drrs is in pictu=
re. At
> the same time make sure that the vrr.guardband is set as per the highest =
mode
> for such panels, so that switching between higher to lower mode, does not
> change the vrr.guardband.
>=20
> v2: Add a new member `use_highest_mode` to vrr struct to help set the vrr
> timings for highest mode for the seamless_mn drrs case.
> v3:
> -Modify existing function to compute fixed refresh rate timings instead o=
f
> adding a new function. (Mitul) -Tweak computation for scaling the vtotal =
and
> use DIV_ROUND_UP_ULL.
> -Improve documentation.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 90 ++++++++++++++++++-
>  4 files changed, 90 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0d945d1fedd6..0eb5bbd753b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1318,6 +1318,8 @@ struct intel_crtc_state {
>  		u8 pipeline_full;
>  		u16 flipline, vmin, vmax, guardband;
>  		u32 vsync_end, vsync_start;
> +		/* Indicates VRR timing is scaled to highest mode for seamless
> M/N */
> +		bool use_highest_mode;
>  	} vrr;
>=20
>  	/* Content Match Refresh Rate state */ diff --git
> a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4c3a4b7c0abe..17a58f439954 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1741,7 +1741,7 @@ static int intel_dp_max_bpp(struct intel_dp
> *intel_dp,
>  	return bpp;
>  }
>=20
> -static bool has_seamless_m_n(struct intel_connector *connector)
> +bool has_seamless_m_n(struct intel_connector *connector)
>  {
>  	struct intel_display *display =3D to_intel_display(connector);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index bfd1bd448672..932f5504399e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -216,5 +216,6 @@ int intel_dp_dsc_bpp_step_x16(const struct
> intel_connector *connector);  void intel_dp_dpcd_set_probe(struct intel_d=
p
> *intel_dp, bool force_on_external);  bool intel_dp_in_hdr_mode(const stru=
ct
> drm_connector_state *conn_state);  int intel_dp_compute_sdp_latency(struc=
t
> intel_crtc_state *crtc_state, bool assume_all_enabled);
> +bool has_seamless_m_n(struct intel_connector *connector);
>=20
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 170f7bcdb8a8..2cae20a99399 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -11,6 +11,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_panel.h"
>  #include "intel_vrr.h"
>  #include "intel_vrr_regs.h"
>  #include "skl_scaler.h"
> @@ -299,6 +300,16 @@ void intel_vrr_set_fixed_rr_timings(const struct
> intel_crtc_state *crtc_state)
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>=20
> +	if (crtc_state->vrr.use_highest_mode) {
> +		intel_de_write(display, TRANS_VRR_VMIN(display,
> cpu_transcoder),
> +			       crtc_state->vrr.vmin - 1);
> +		intel_de_write(display, TRANS_VRR_VMAX(display,
> cpu_transcoder),
> +			       crtc_state->vrr.vmax - 1);
> +		intel_de_write(display, TRANS_VRR_FLIPLINE(display,
> cpu_transcoder),
> +			       crtc_state->vrr.flipline - 1);
> +		return;
> +	}
> +
>  	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>  		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
>  	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> @@ -307,15 +318,69 @@ void intel_vrr_set_fixed_rr_timings(const struct
> intel_crtc_state *crtc_state)
>  		       intel_vrr_fixed_rr_flipline(crtc_state) - 1);  }
>=20
> +static bool needs_seamless_m_n_timings(struct intel_crtc_state *crtc_sta=
te,
> +				       struct intel_connector *connector) {
> +	if (!has_seamless_m_n(connector) || crtc_state->joiner_pipes)
> +		return false;
> +
> +	return true;
> +}
> +
> +static int intel_vrr_scale_vtotal_for_seamless_m_n(struct intel_crtc_sta=
te
> *crtc_state,
> +						   struct intel_connector
> *connector) {
> +	const struct drm_display_mode *highest_mode =3D
> intel_panel_highest_mode(connector);
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> +	int vtotal =3D adjusted_mode->crtc_vtotal;
> +
> +	/*
> +	 * For panels with seamless_m_n drrs, the user can seamlessly switch
> to
> +	 * a lower mode, which has a lower clock. This works with legacy
> timing
> +	 * generator, but not with the VRR timing generator.
> +	 *
> +	 * The VRR timing generator requires flipline and vmax to be equal for
> +	 * fixed refresh rate operation. The default fixed RR computation sets
> +	 * these to the current mode's vtotal. However, when switching to a
> +	 * lower clock mode, this would result in a higher refresh rate than
> +	 * desired.
> +	 *
> +	 * To simulate the lower refresh rate correctly, we scale the vtotal
> +	 * based on the ratio of the highest mode's clock to the current mode's
> +	 * clock.
> +	 *
> +	 * When switching to a higher clock mode, the current vtotal already
> +	 * results in the desired refresh rate, so no scaling is needed.
> +	 *
> +	 * So compute the scaled vtotal if required, and update vrr.vmin to
> +	 * the scaled value. Also, set vrr.use_highest_mode to indicate that
> +	 * VRR timings are based on the highest mode.
> +	 */
> +	if (highest_mode && adjusted_mode->crtc_clock < highest_mode-
> >clock) {
> +		vtotal =3D DIV_ROUND_UP_ULL(vtotal * highest_mode->clock,
> +					  adjusted_mode->crtc_clock);
> +		crtc_state->vrr.vmin =3D vtotal;
> +		crtc_state->vrr.use_highest_mode =3D true;
> +	}
> +
> +	return vtotal;
> +}
> +
>  static
> -void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_st=
ate)
> +void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_st=
ate,
> +					struct intel_connector *connector)
>  {
> +	int vtotal =3D crtc_state->hw.adjusted_mode.crtc_vtotal;
> +
> +	if (needs_seamless_m_n_timings(crtc_state, connector))
> +		vtotal =3D intel_vrr_scale_vtotal_for_seamless_m_n(crtc_state,
> +connector);
> +
>  	/*
>  	 * For fixed rr,  vmin =3D vmax =3D flipline.
>  	 * vmin is already set to crtc_vtotal set vmax and flipline the same.
>  	 */
> -	crtc_state->vrr.vmax =3D crtc_state->hw.adjusted_mode.crtc_vtotal;
> -	crtc_state->vrr.flipline =3D crtc_state->hw.adjusted_mode.crtc_vtotal;
> +	crtc_state->vrr.vmax =3D vtotal;
> +	crtc_state->vrr.flipline =3D vtotal;
>  }
>=20
>  static
> @@ -397,7 +462,7 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
>  	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>  		intel_vrr_compute_cmrr_timings(crtc_state);
>  	else
> -		intel_vrr_compute_fixed_rr_timings(crtc_state);
> +		intel_vrr_compute_fixed_rr_timings(crtc_state, connector);
>=20
>  	/*
>  	 * flipline determines the min vblank length the hardware will @@ -
> 478,6 +543,7 @@ int intel_vrr_compute_guardband(struct intel_crtc_state
> *crtc_state,  {
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> +	const struct drm_display_mode *highest_mode;
>  	int dsc_prefill_time =3D 0;
>  	int psr2_pr_latency =3D 0;
>  	int scaler_prefill_time;
> @@ -490,6 +556,22 @@ int intel_vrr_compute_guardband(struct
> intel_crtc_state *crtc_state,
>  	int guardband;
>  	int pm_delay;
>=20
> +	/*
> +	 * For seamless m_n the clock is changed while other modeline
> +	 * parameters are same. In that case the linetime_us will change,
> +	 * causing the guardband to change, and the seamless switch to
> +	 * lower mode would not take place.
> +	 * To avoid this, take the highest mode where panel supports
> +	 * seamless drrs and make guardband equal to the vblank length
> +	 * for the highest mode.
> +	 */
> +	highest_mode =3D intel_panel_highest_mode(connector);
> +	if (needs_seamless_m_n_timings(crtc_state, connector) &&
> highest_mode) {
> +		guardband =3D highest_mode->vtotal - highest_mode->vdisplay;
> +
> +		return guardband;
> +	}
> +

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  	linetime_us =3D DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
>  				   adjusted_mode->crtc_clock);
>=20
> --
> 2.45.2

