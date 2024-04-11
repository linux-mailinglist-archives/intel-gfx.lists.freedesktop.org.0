Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F248A0CB1
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 11:44:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2126910F5F9;
	Thu, 11 Apr 2024 09:44:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HGLqS5NL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C27310F5F9;
 Thu, 11 Apr 2024 09:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712828696; x=1744364696;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UujqbBJ7bknSFp44werXSvFf+zF7Tp2F1K69txvWaR8=;
 b=HGLqS5NLkrCkUNklpOfomosgv9J8FVtSGuujfGHZQK9Mb0c1NQ4EknyQ
 2dO9xcO0BUVwjAPtcy5C+ncVyZx2ITschT5uJSBLdkEpESqSW8VwkZfGJ
 eEYGr47m1xudv2K4WajItqDklak364ZzF9+DeaYkJP4hOUyZYnzrxmL8L
 tyUOezo2tK16hxpFt6Ry3i+yL8zUgKhes32l7YqGan+NHCNOmi9+wFgXJ
 pXaD3Om/JW1Jxjvb37fLlxcGDI5Kah8D4ic+z1ZTWdiaZZRu7TBpGcPKn
 nqh6sNbkfKATzEB/AEbORcZ9/ViHY1aE+XvhxLg+2+8gNtZj8dK+xwE0U A==;
X-CSE-ConnectionGUID: yL91yeAvREabENj/W6yUZQ==
X-CSE-MsgGUID: EuaChdl6TPeMKgh9+CO+sA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11190420"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="11190420"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 02:44:55 -0700
X-CSE-ConnectionGUID: 9JZ67sfAS4maoc82Pv/WYA==
X-CSE-MsgGUID: 8/tUTURFRyqtOgI6bP/AWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="20825763"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 02:44:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 02:44:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 02:44:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 02:44:54 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 02:44:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OD3zNKGHXZS1IbMDE1Bg2cXw4/jO15p7kyk0l4OwJzVzUnrj4z1kZQJ2/kY5Ap5hmvleZnvSdBRVeUYxsMnVjDNXIDva29FIC0Hvs2UJXjO0VS5YDLR2kmVZsSmjwjUTAdbdsFDLrCrClSjZSZ69Q3C9Sa1Wuptktmk3yF8+yMZdo0LI5HI5OBMyTZ/W36wPUu0YkBxgjc4jYNGoDW7ktJRh9g6K1XgIQ+HBWkX814AXsYN7eTIlPdgJVoSWesWOOzUgOUe+O1/WQDd9nj7TPh0PRp857QfZNXFhzURO1GJsuImumRvmKP5rS//V5kn1rKlX54SZ5Bzv6iJ6k/PuKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nqxK/DUu68c5AjIPlYPmNSKQG+DJS0O8DNqadz3djZ0=;
 b=g4b96ynExoKhoxMo+o7hEKNgIA2Lcf21YNF2Yo477quRVZpjmayxVuKoxxR/XaGJrMMJ174uZgHE4E0/UfpbcXaRUDSTzMSbgVACev7l7EbmSBzP1FfsSb39u7znQ2mbiHMVUw6H3xVT6Wqn1TrgXg1m8Lh7sDYf8geOlF1O+HhrkrR3YvCJTGG222rOZlkQqJZlMTjlyQDmCC6LINwjV+i08FEE8qX5B/5t6sVvzPXSTEo9AGnZz5sU0C/b3xoGndoq9r9vrLFzFqRmtrrB07ZyIvMpNcmVH/deiReAtf5yDmg6EtW6caeazeU0EiIO50TQr3gkxy9wR7x58RSlSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ2PR11MB7455.namprd11.prod.outlook.com (2603:10b6:a03:4cd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.18; Thu, 11 Apr
 2024 09:44:52 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7452.019; Thu, 11 Apr 2024
 09:44:51 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 2/4] drm/i915/display: don't allow DMC wakelock on
 older hardware
Thread-Topic: [PATCH v4 2/4] drm/i915/display: don't allow DMC wakelock on
 older hardware
Thread-Index: AQHahoUiOlTJyW++kUOPe6eF7NLiCrFi3KSA
Date: Thu, 11 Apr 2024 09:44:51 +0000
Message-ID: <DM4PR11MB6360CB63488CFF39E1978EF7F4052@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240404114147.236316-1-luciano.coelho@intel.com>
 <20240404114147.236316-3-luciano.coelho@intel.com>
In-Reply-To: <20240404114147.236316-3-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ2PR11MB7455:EE_
x-ms-office365-filtering-correlation-id: 955d5893-dabc-44eb-3ae3-08dc5a0c091a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5y7V6ioghOXRsoAzw5IFM9N8a1otAoIvhp1LxZqyWp/bsMQNGyJ5G31BIEmB6AMnFZU9jkLzPo7XFu2jIfCL2Zup60d8jmoGosHzR+4d4+K1OLXMnuZlG4Jas21d0f8clXk1gJGccHHLchIEiJxuyiz0r8sUCSlZ1ek4eRXsOJXXNwtQtayGfTABoLICighksQsZSyyS+arMqPi9GyCB4mkQDU2e5jBp5WF65jC4oS9RV5NNQSjs8XXrRmouAmYNgIbCpbKuv6Qi7TUyHTFppyPmlXpkPzK+vJz9qrEjJpaf4+bcCNN+khV3/FZWbo9dhhWhmQIRt94gBqkKXTsNfj1UywUfCFjpNj9uGdpVOKtNNh+okGCaSGMMWndY1uMgB3UpaDUQFVY+ldP20961uNreUlZy0xpC2p+g1zJtkA8TkoFl5L264eYIcxrifM3h2QGIqviqvG+cp7TpNrU2w/kH373rIX+t83I96sM5V/4MUq6GmMd4Pli6aukpC7pN5lHpV7jGCpMsjaRVcOTR9t3LI7OMeJeWnOy5IfrG1eecdQrZfL6w52jL/7HcJOYd1fEJ90d0l98RMhO1GJKpcQQ5cZyIqF+3KHnM1EgyGeVpdn6NxE3Y28ojGWMN0y/U5DSWfo1Wpyu8aMGk+IRVx68y9d9ROHmj0qjmgox2JJ7+TK7T/3VLudYMd8DpumkIFbTVpxEFEuJ+HAc9iJu0wuhwYGasdyN+jSH+BxRtsoA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nKLf5wJQt1ZO4Xgb5Vj0pvgcpGzEwX+ly0DaqradsMJYbbg7I51TUz6b/QMW?=
 =?us-ascii?Q?Xz86UNSo7Q7NCRUq5N56JsfgGrKgRdgLnulqxf9bbl2p1Sq6qV2+NGgajGMg?=
 =?us-ascii?Q?WuZ0XqhmMyl+0PZ2t0w2Djt2kheKLrijaw2MXEkdy32bzuFgzHMomjN+dSsz?=
 =?us-ascii?Q?lGJEPWE33yn7Iv//DAqvSkWufaUUhleJMrrSAL3HeAjhg+9+udUWCpdJqDZi?=
 =?us-ascii?Q?4QA2xZ4lKbv0OSHX+nz/Uh7/O6qvruVTlPsSFEmzfaiandZJEJa+TFIupcwJ?=
 =?us-ascii?Q?7DxyQPxCzaS4eZ6YrcFwM2ICks4SpCTW979ZLA54Sku9XynGXe4/CYGrWaSb?=
 =?us-ascii?Q?9v8OBP81vImqUVYr1yJPri4GQm9xL6cRlH0FSHIoMrJpIqxwZhd7pw4AUskl?=
 =?us-ascii?Q?XM/CfzfdiA5EslH2he4dbdD8zpivjTZKtpMvm6bBLbHMTEHyRcmol2SN0dwb?=
 =?us-ascii?Q?ioJE8SkVJlurYtbRzKTs9VgaedWaAFsRkFBXfahG7kPY3HHZusOAbCeQLEA/?=
 =?us-ascii?Q?77d1F/nl23+A3XKiWXutsTmhzUIKwArI64S6c9oJ80Y5gMJjSO9tDKeO+aJ2?=
 =?us-ascii?Q?Y8MujnI5q+311b2VvZVRxNp6iaeoUw9zTAilOM2qPjtCh7WtwphJwiW2LErV?=
 =?us-ascii?Q?VP08Tn/Pjj5mgfYBjwPpuv13OlRDdj2CNgEZzMheGiPh9I0Tn1Wwv2Yp1XWN?=
 =?us-ascii?Q?lDd8l76SrdwqT7gXQ4T00VSbQ5ixRvKCgXo+Pod6ppmbre1I8HJEFnbE3DGl?=
 =?us-ascii?Q?ofxUGqPSlDYTXDqaicOPNcbVoGFhP5ef9ZkG5Avf7eeLFwbRLS3q9Wd6Nrgd?=
 =?us-ascii?Q?e0t0ZDbZvrxjKt73RSnsX7k9ooPVru8WayPiy6dyzaKklqC7bPSzbHmmyy93?=
 =?us-ascii?Q?NxEmRsw17DrUo9qJ5zBRbj63QogSNdEj03ky+7UOy4KtoMPKfjR4O9cL1ght?=
 =?us-ascii?Q?kOU04iLTEdUuBSHHUPqJVJ1IHAuziJ+LXbPyRnA1PWtlP1QrSrvQlkN5+gnz?=
 =?us-ascii?Q?18baw8wHQ62B2EcgVC3Eb+rRBwXsB/sVln9yGe/nSzQC26mtCqZTToBYkJmb?=
 =?us-ascii?Q?wK+l9lAVjyE3rBsJAFU2TL1NgbfL4U12v5vlK9ocwOGYE6AekpMa29Ju+t7V?=
 =?us-ascii?Q?UcKSpgeUvtcWVc8yRo9mRq+a4y9lElNIl02c89RC1sYVOI5IDoFGBhLNyXmL?=
 =?us-ascii?Q?ft+5z7uthpTsYUvkCJD5bpryykU+3DH/umCPYv3PfQNDA8wOlZL0Ca/FgTuQ?=
 =?us-ascii?Q?WD8Do9cvdDF9tzuFJEUziiAYGroCL6UBKu41BnCHi2DNE+m4rwzz21/WIvC0?=
 =?us-ascii?Q?9QaZ8xII2avt7m91TLhAEUcnnXF9Uh91Kj2UyptNzvGKbLav8+YKz5gqyHXm?=
 =?us-ascii?Q?25L0CWwPN3F5rF531yIxwZTZr4EMmYteBHAxfPIa4PHEnfxBGTvZmq/dQqHj?=
 =?us-ascii?Q?jQbYaCl+Hjmn/RnQD+sBlOZHBf0t2+xDIsqZ2aarKn/KakRAtpZAwR4Fpkmj?=
 =?us-ascii?Q?zADi3icSEzmQ3rVlL6/N/kbQkZq9Lz+6TcQAdUJmlkSX1rRrWjZ5c163rUuI?=
 =?us-ascii?Q?U2KHIDAXcqN472VdLR0acU4T7wKzPQgbIM4pvcDn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 955d5893-dabc-44eb-3ae3-08dc5a0c091a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2024 09:44:51.8393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jd8yPKpHfHK/pPQL3fPY0WDmC3F74+zE1Adp6wIZyUuzRlU3TOkeZtS96D+mdeo7r8abQQ1+41s3hKddy5APPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7455
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
> From: Coelho, Luciano <luciano.coelho@intel.com>
> Sent: Thursday, April 4, 2024 5:12 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v4 2/4] drm/i915/display: don't allow DMC wakelock on old=
er
> hardware
>=20
> Only allow running DMC wakelock code if the display version is 20 or grea=
ter.  Also
> check if DMC is loaded before enabling.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  .../drm/i915/display/intel_display_driver.c   |  1 +
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 26 +++++++++++++++++++
>  2 files changed, 27 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
> b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 87dd07e0d138..e4015557af6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -198,6 +198,7 @@ void intel_display_driver_early_probe(struct
> drm_i915_private *i915)
>  	intel_dpll_init_clock_hook(i915);
>  	intel_init_display_hooks(i915);
>  	intel_fdi_init_hook(i915);
> +	intel_dmc_wl_init(i915);
>  }
>=20
>  /* part #1: call before irq install */
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 3d7cf47321c2..065652fc475c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -6,6 +6,7 @@
>  #include <linux/kernel.h>
>=20
>  #include "intel_de.h"
> +#include "intel_dmc.h"
>  #include "intel_dmc_regs.h"
>  #include "intel_dmc_wl.h"
>=20
> @@ -110,10 +111,23 @@ static bool intel_dmc_wl_check_range(u32 address)
>  	return wl_needed;
>  }
>=20
> +static bool __intel_dmc_wl_supported(struct drm_i915_private *i915) {
> +	if (DISPLAY_VER(i915) < 20 ||
> +	    !intel_dmc_has_payload(i915))
> +		return false;
> +
> +	return true;
> +}
> +
>  void intel_dmc_wl_init(struct drm_i915_private *i915)  {
>  	struct intel_dmc_wl *wl =3D &i915->display.wl;
>=20
> +	/* don't call __intel_dmc_wl_supported(), DMC is not loaded yet */
> +	if (DISPLAY_VER(i915) < 20)
> +		return;
> +
>  	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
>  	spin_lock_init(&wl->lock);
>  	refcount_set(&wl->refcount, 0);
> @@ -124,6 +138,9 @@ void intel_dmc_wl_enable(struct drm_i915_private
> *i915)
>  	struct intel_dmc_wl *wl =3D &i915->display.wl;
>  	unsigned long flags;
>=20
> +	if (!__intel_dmc_wl_supported(i915))
> +		return;
> +
>  	spin_lock_irqsave(&wl->lock, flags);
>=20
>  	if (wl->enabled)
> @@ -148,6 +165,9 @@ void intel_dmc_wl_disable(struct drm_i915_private
> *i915)
>  	struct intel_dmc_wl *wl =3D &i915->display.wl;
>  	unsigned long flags;
>=20
> +	if (!__intel_dmc_wl_supported(i915))
> +		return;
> +
>  	flush_delayed_work(&wl->work);
>=20
>  	spin_lock_irqsave(&wl->lock, flags);
> @@ -171,6 +191,9 @@ void intel_dmc_wl_get(struct drm_i915_private *i915,
> i915_reg_t reg)
>  	struct intel_dmc_wl *wl =3D &i915->display.wl;
>  	unsigned long flags;
>=20
> +	if (!__intel_dmc_wl_supported(i915))
> +		return;
> +
>  	if (!intel_dmc_wl_check_range(reg.reg))
>  		return;
>=20
> @@ -215,6 +238,9 @@ void intel_dmc_wl_put(struct drm_i915_private *i915,
> i915_reg_t reg)
>  	struct intel_dmc_wl *wl =3D &i915->display.wl;
>  	unsigned long flags;
>=20
> +	if (!__intel_dmc_wl_supported(i915))
> +		return;
> +
>  	if (!intel_dmc_wl_check_range(reg.reg))
>  		return;
>=20
> --
> 2.39.2

