Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB44A5D537
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 06:01:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D702210E08B;
	Wed, 12 Mar 2025 05:01:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PrYFpTMZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C69AF10E08B;
 Wed, 12 Mar 2025 05:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741755708; x=1773291708;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6IOFoxr/jk8AJsLcN9bYfw+eeB2Wa5xM52M9ek3Q+g8=;
 b=PrYFpTMZKboyDpAVWrmFb/09HVV8moUx9JgesI5Es0gcnYo9kLyaUQgh
 Rhp9YC2l1LEzUtOwjy5rAxBgqlVZZn9B3a50nR68QR6SOZqtmQezb6dfV
 DKxnqABx0SsL/jaVOS5pS6hlG7vlKOSyFEAFdRuIGZwFPtzVFRm0BXMgd
 o3D3Cbwflw/dQZ7Vh9McQD0MPStrCVFa1Lf5/9ClEpP1XJn1LTI9Eu/wj
 NXYz+5lkDa6uTGSMULd8nsZRTI78x2MYb21aKA9sTYfkdVjn+0g9X5drh
 3kqaeDwHXFSxMMxTrtk54Ai99NugT9fR7DkJTBmoMQfZ4bQdM6I1shO1u g==;
X-CSE-ConnectionGUID: K+n2d66MSamEriZA3YGsDw==
X-CSE-MsgGUID: qUTXl4XKQkqRKv/1BcYFrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="46731764"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="46731764"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:01:46 -0700
X-CSE-ConnectionGUID: WoMhnC+WTSaGBbo3hpbVJw==
X-CSE-MsgGUID: tCP7KY7MSGiRDx5XRmC2gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="143722852"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 22:01:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 22:01:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 22:01:46 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 22:01:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TGQ6aOzcIyJWI6eIgCndQxVrueRavq8KkDrhIJ6cjO2FJjuiX+Bo+/U3WaRAfbYZx/Mj3paURk0u1vplJNdotHYgpyXhQ9aXYZ5wdOyInbfImdYbTxDTV0HSwqPa01cpGxj1XplwS4gO/a0BdA9ZxXkmlxPsJ2XhJHu5hwzyvPXo3Zy9y9lviZ3rap2EvQ+XKtv1SnMPYWF0nG+YS/0uCegliswom/z9ZeeJ0IJeUm8jv3Bc2xiofdPx2md5NyOWd8NgVwWi7dX5PaaqTJEy1byepOhLzzCebl8za7gFJiOekoeTOytdALR8SUY56MmnGe054qdH1seP6iaWrYwW1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fxcPIivw2MK0JIQ9xJoPBvc66GVB/6Z3FzaCgavevTs=;
 b=C+4iHyTXDRCk/5ou2m9PsefMcDLlnVv3/kmaKUYStBq3onE/lOIcFhgCdccTVGTGzZcLVU/OvFdsSRK9ToC3KNBeuTYTZVR9Ep+woeZdThaM8S97zxSOs4ixCoM9SjlmU9FOQeld+fyVWfQdz85hgTJuFsRkw4q9MkJRi3YRiMUoEIdYZLBZ+rugsMBOpPy/EQhsoKitzOseUcrhejMNrC1USlmcwU/rtongV+wHK3+jEMRAkeyWCA1TSjd/RBkmk9oVG4PS4dC9mbQpxDn3jI36io3cXg9iORf37/ZP/da+2DCCj4vQRE/OHPa4xngUx3j3Bwm92crvQlaV6lWhTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB6431.namprd11.prod.outlook.com (2603:10b6:8:b8::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8511.27; Wed, 12 Mar 2025 05:01:09 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 05:01:09 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 1/9] drm/i915/color: prefer display->platform.<platform>
 checks
Thread-Topic: [PATCH 1/9] drm/i915/color: prefer display->platform.<platform>
 checks
Thread-Index: AQHbkq+r48oGEZwCB0WOPV7ZgvFpbLNu8dtA
Date: Wed, 12 Mar 2025 05:01:09 +0000
Message-ID: <DM4PR11MB6360A8E7EF6F4E9A9D6BC788F4D02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
 <1236d79c0770c7c7da9be47be0531743df239fc0.1741715981.git.jani.nikula@intel.com>
In-Reply-To: <1236d79c0770c7c7da9be47be0531743df239fc0.1741715981.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB6431:EE_
x-ms-office365-filtering-correlation-id: 53599053-e8b9-426f-8e74-08dd6122e769
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?GmWIjRzb1PqMOrRISlsltCSWaP9354MF+wLueu3YYAPG7mQm0qytFXIA9nBb?=
 =?us-ascii?Q?YkGydotEdz126UjMS9aG4HFfMgJE3G7GPH9fxaXWwoZx29TxlpnwTHhx+JuX?=
 =?us-ascii?Q?1+yDqwPmyjKR1rKfeGLCGxc3i1L8jNKZnS1tHXbE4dOSq5WmyVuiEYL6J9yZ?=
 =?us-ascii?Q?Itvyq99hrsueSQFxBrMFBJ9NEPn4GjYLIzdiPMQSbX7Iv8/opG1upGtkxq9E?=
 =?us-ascii?Q?jI3eof9U0A/QuQSD7e46WeWbPszuR8rE4HEYA6p3WgARs9C+TgWN7vvuV8Y4?=
 =?us-ascii?Q?BytdMGJ4TXncQ06GwmHryV76c9fW9/+DbI3rxgQ7HucfXn9Od/Wxxchdc8pf?=
 =?us-ascii?Q?KnfQfMkDXwdLEx3r3O82pjz7q3R6pk4MRwwI5YUrbK7+h5DL0FBJJj83ceVo?=
 =?us-ascii?Q?reyGCcuNpJlW3rqbM1B01uaTUklxRxDy39FP5S0ELmNlatKvSL7FXOYjG8Dr?=
 =?us-ascii?Q?wdHDvePG/iLZp9W3MNJIBtwDWoBotz0xNtNtqtuOx8IPQSNzKqfOoW4meemV?=
 =?us-ascii?Q?0TgDbiChlQ81xu3BLLUCbyEc6F34XDs0+H92mUryKoirsk0wRl3jqFfIN4mI?=
 =?us-ascii?Q?YT1ye3yeyC/T68YGOQnqUOiVH0uRBFEr9BuOjq2WD141J36Wy/EuR2kvctur?=
 =?us-ascii?Q?q0lIeN1W2xdxGldu8uCpO8O2o8/k2ylruUnH7cLvSsBSL7/v79LyQzpFqcaM?=
 =?us-ascii?Q?JEjc0zBaeMIowaFa6JbuRxBflti0Bxe4sliJ0szCsywuQZJMuf/rHqIHvCve?=
 =?us-ascii?Q?w+aH9At+PyS8FHniFo3yqkH5/IzxmnSNTNzYe3qR/GjQ5V6MpZaQehukf6+N?=
 =?us-ascii?Q?8H3FnDRArwp3MJ+txh7c4nUZebfEryFvUPBpQJ+q32EbTr8yU31FUhkl+lXa?=
 =?us-ascii?Q?ma8WzSIRPEG0XIsf2WUH3XZbWiApOK9tdVvUcoCaDM2rrJVdcENpXC8TMgXr?=
 =?us-ascii?Q?YRTNsfP9DazwG8ZML9PW4SZd41kSerQLLvAoqyL7tvWo+V0Sg+TOihuJK4OX?=
 =?us-ascii?Q?OUo8b3n2Xab6QCnZ8obgreM/dZI0Wc656Uue0R+XMtxg6SSjsYBIUCTwxZ2Q?=
 =?us-ascii?Q?B4RCCbLzvDMPQKFZrHkVHgeA8rzLKElnaTIH43K3AtBulferajFkMJCyxXyr?=
 =?us-ascii?Q?4tSNgiKMY9MvIk+e54AJGwX1Dk3wr9bE1KdRiTL5GKTYHoH5H80SKUNhnPpJ?=
 =?us-ascii?Q?2Ko5v07yo2CX0kj+ck4XIwozGq+M+udVbJ6w4b2FTr6RiiZ2VsVdxuctjwha?=
 =?us-ascii?Q?dhvW48aDe69U7FPZgk2CQtxf1M61l2QqTubxfLkNpRg9nmGJA6ZjhBmSgGjE?=
 =?us-ascii?Q?VkBV0jI2ZAjELcwbamjVhSyXYdU76tRSssR0ePI215W0UZR0tFsDj/WjrT8I?=
 =?us-ascii?Q?eObsaVjkK8LPA1kNfKamJJIqcGwOxbk6tT9PJrVx3kJzs5uYRvBxzT+2K8vg?=
 =?us-ascii?Q?qvJNG0zLUG0GCJQigLUJq4OD7KS9vu+p?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?haFUNHgBYcLmCeZlhhwtKdzmQ0LGJ7dZWV/IUp/5WGhJsT5warohXbj+mZXQ?=
 =?us-ascii?Q?sMBc4dWTpROyVp+hs3vI+SEulxzpFD3jmGD9S0wvIh+6HbQfrQwrHS44Yaiw?=
 =?us-ascii?Q?0E4NgJgeivcvjT4QjL53VWdUkhSaMUPnHaCX7NgTDls6483VbxXmo6SP4SaF?=
 =?us-ascii?Q?ygj6b+7ZVHt4art0CtxYUKJdcoOW7PzZAenmj3XhPXu63MeXW5jAnmvJStol?=
 =?us-ascii?Q?XN7EhT9r+phDa8JzDEvkgC5guQ57lbjx5OupU8O3Bn3vQw/ggf0zt0pEWXAX?=
 =?us-ascii?Q?mc6syupiDRm09tm8iPJQ2PunB8OGdcSxE6WgRVxkjpHsY/ZK/i/u6eLym+Xu?=
 =?us-ascii?Q?OlLVXm6fbE8B0kbiVoMS8sCt3iSRUeGiciKZ5Iiq7dfEmqoEDbMUsVsQoLc9?=
 =?us-ascii?Q?Lb19OJ9oCFnfCkgGBmx3nNOx46Yex6ijRdOJ0ijv9p5U7pznvihTC3fSKB/F?=
 =?us-ascii?Q?bIThgNkOGK7SgApE5wS+UyVzkxQlAC72Ex3+Z4xC8rUo4q4iFnMmQ+GGTLJD?=
 =?us-ascii?Q?RP1QhZwCnsDNQ/hxJ1TxKCY3N+LxTI+uiKdnagNcdvzoZt8vdabkH015yQRl?=
 =?us-ascii?Q?2H2+Sd0lm7J1HrcinEZhhiFK4aotWn2wBGYH9c60CWawA+SgRUYgMZUwl5gc?=
 =?us-ascii?Q?59b72W8XmQiKfbz80qZsgEzTE+WnP1TvMBo97Pl9lYua6X2HuCKk40vas6Ue?=
 =?us-ascii?Q?dHRiF6FGrL7vbxqWeDQ3tNqKb+v4nn96cq2V0jFGkuouArN1T6kLw4zu7LEU?=
 =?us-ascii?Q?K0mRV/AZCgMEakLWWbTWxZAyks6SEZIZvsEbtkJpfEEDRQd3AOfcVbufiSzI?=
 =?us-ascii?Q?36anxABi9hKWA89Nm8O4ET4mYpgsJ+jkKNqtozR8obgwCiUgMJ28vQ7zubAR?=
 =?us-ascii?Q?WtbHbTQR4Z7ZzZwO74veMgzcVGLb3kakqVSTO2X8wUGbHEsSsSj6eWWvGdgr?=
 =?us-ascii?Q?7XLREdJDYhqOMNAikpyvrxsE1J7m3jy0lnG315YNAWvd38HoDdAE1WNsmJnJ?=
 =?us-ascii?Q?VTUBLa1EcdDfKQTn8C6wKwRjY921G2e30s1L3j+L6BqRWruZwfvYuMEEfkXC?=
 =?us-ascii?Q?posqQ7IQL3EHbiWrV+ylq5CwXgfhkjbPQMOEb1Pon/WBhgoCDTRiUN+Ec1GB?=
 =?us-ascii?Q?/bOiEz1Ya1i84sbEIznSIAkddSdv6RyQCDW+q0yNakOMGxOjyBOSW9YVDSWJ?=
 =?us-ascii?Q?7Uys11W2obj1qYv1/rLpjyZVWavrrqZpbUrnFGmGQ3syp3QEvk1UhVGPqKYv?=
 =?us-ascii?Q?2kV8r+vUgUC36HcbWrCAzR02yPr87CYzPN4zZ/rBDbFHo8bVtEph/LUCkyUn?=
 =?us-ascii?Q?7r/QL2V+6NkZE6qT1IraDqZOOA5ZA3o1+cXT228Cm3o4d2jU7ujcXehXERmV?=
 =?us-ascii?Q?pvFC0OBHkVptI4KJpmYuDkgIWlLfD8lbAwNk7Uc3sdY9NJMJam2K4ZDJ4qHV?=
 =?us-ascii?Q?OG0iHBAOgW1kxutOjI2+MNu5+9PgGzTaTQS3sIU7nV/bhODw3vw3h1CBmzP2?=
 =?us-ascii?Q?VMJXFaOxHOq/pjV1t/UYiLfXVi7E+Yv+M9SiXUJD1P7Hrn9n82PqrMhVAaoB?=
 =?us-ascii?Q?m9dc0VO0yxK9sBlUMegGqIB/Uu1aqH2OPUDqU6NB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53599053-e8b9-426f-8e74-08dd6122e769
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 05:01:09.5492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PwQ9zTynfc2/xqxpYz7PrafXRxpD9e5183ChipeD1zrGdqLXeFuMWuV0fVJcL9B2HQBZFj0OEvOo9jrnJxw/uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6431
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
> Sent: Tuesday, March 11, 2025 11:31 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 1/9] drm/i915/color: prefer display->platform.<platform> =
checks
>=20
> This let's us drop the dependency on i915_drv.h.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index cfe14162231d..bbf6df7ebb95 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -22,7 +22,7 @@
>   *
>   */
>=20
> -#include "i915_drv.h"
> +#include "i915_utils.h"
>  #include "i9xx_plane_regs.h"
>  #include "intel_color.h"
>  #include "intel_color_regs.h"
> @@ -405,14 +405,13 @@ static void icl_read_csc(struct intel_crtc_state
> *crtc_state)  static bool ilk_limited_range(const struct intel_crtc_state
> *crtc_state)  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
>  	/* icl+ have dedicated output CSC */
>  	if (DISPLAY_VER(display) >=3D 11)
>  		return false;
>=20
>  	/* pre-hsw have TRANSCONF_COLOR_RANGE_SELECT */
> -	if (DISPLAY_VER(display) < 7 || IS_IVYBRIDGE(i915))
> +	if (DISPLAY_VER(display) < 7 || display->platform.ivybridge)
>  		return false;
>=20
>  	return crtc_state->limited_color_range; @@ -516,7 +515,6 @@ static
> void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,  stat=
ic void
> ilk_assign_csc(struct intel_crtc_state *crtc_state)  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	bool limited_color_range =3D ilk_csc_limited_range(crtc_state);
>=20
>  	if (crtc_state->hw.ctm) {
> @@ -538,7 +536,7 @@ static void ilk_assign_csc(struct intel_crtc_state
> *crtc_state)
>  		 * LUT is needed but CSC is not we need to load an
>  		 * identity matrix.
>  		 */
> -		drm_WARN_ON(display->drm, !IS_GEMINILAKE(i915));
> +		drm_WARN_ON(display->drm, !display->platform.geminilake);
>=20
>  		ilk_csc_copy(display, &crtc_state->csc,
> &ilk_csc_matrix_identity);
>  	} else {
> @@ -3983,12 +3981,10 @@ int intel_color_init(struct intel_display *displa=
y)
>=20
>  void intel_color_init_hooks(struct intel_display *display)  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
>  	if (HAS_GMCH(display)) {
> -		if (IS_CHERRYVIEW(i915))
> +		if (display->platform.cherryview)
>  			display->funcs.color =3D &chv_color_funcs;
> -		else if (IS_VALLEYVIEW(i915))
> +		else if (display->platform.valleyview)
>  			display->funcs.color =3D &vlv_color_funcs;
>  		else if (DISPLAY_VER(display) >=3D 4)
>  			display->funcs.color =3D &i965_color_funcs; @@ -4005,7
> +4001,7 @@ void intel_color_init_hooks(struct intel_display *display)
>  			display->funcs.color =3D &skl_color_funcs;
>  		else if (DISPLAY_VER(display) =3D=3D 8)
>  			display->funcs.color =3D &bdw_color_funcs;
> -		else if (IS_HASWELL(i915))
> +		else if (display->platform.haswell)
>  			display->funcs.color =3D &hsw_color_funcs;
>  		else if (DISPLAY_VER(display) =3D=3D 7)
>  			display->funcs.color =3D &ivb_color_funcs;
> --
> 2.39.5

