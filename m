Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3556A54253
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 06:40:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2CDF10E8D6;
	Thu,  6 Mar 2025 05:39:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lDb8x7Zh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 917D610E84A;
 Thu,  6 Mar 2025 05:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741239599; x=1772775599;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zc63o9vkqGcH/mR6UPqEaLiZDrSRvBHq805yj2HeCIw=;
 b=lDb8x7ZhmGwBGad5zqTabirAfwl5vsggZf6JtQeuFboq4xvMAVy/1RNV
 JMC/X9ISY4nuhme4OPd7USNweGHF+eEa+SXIAjxAdidllk2Pj4SCa5SYA
 2A+1gMGIII/M2ZYP7d+MCDjBezpKbkreToi8oMXGBoogvz+oWn73cyd5J
 MdNlkCV9w7iWdgbA5kY7t5qKhs119MWfzMm7rD8wemiCgdj+lk2+E75sW
 tQ5uLNWtFkgQjKPS4buxp2ZXNEg7tp72b5BjmA7xCuVQE3ZgvdpEVHmyd
 MGxavFT2CQbUn8iDgMSLdIwaz/VC2WZFkDNsKk9ITctXuQnrOQQdSVsYj A==;
X-CSE-ConnectionGUID: I9WhPHfFTvqQnXh8gPQRzA==
X-CSE-MsgGUID: tipueThXSU+nTZXfj9gOhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="64681349"
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="64681349"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 21:39:57 -0800
X-CSE-ConnectionGUID: H3qR8CX8S9qajTqERap5JQ==
X-CSE-MsgGUID: J5v25WodQoi57UcFN4/UXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="124003330"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 21:39:56 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 5 Mar 2025 21:39:55 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Mar 2025 21:39:55 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 21:39:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xa8WUU8pjuXQnQnIAkCUyGeS921b+yRt2fqPSLNJ4AWBokbJRmkBsig7U6oPzHFb+8FKqBR39JmA6ruXjQwFZH5lkNDwMTK0QXhfWikU3N+R/kf52FRPR5aOY1Fvu1jmxCqPijC3uzWb4z59LbZqSe9WrJ82FdPJZPdCDJrjpcBDGCd3YR6/F9SzVZT+LGrR9j0jnU4Uxy8LZP6YfBJ5HB4EN0N1oleQajhwgXjPKSubTleEs+M4NaesFrNUmDzNZObyu6eI5jGw+4pWQ4+cqJlT2WSE6EpPqwkOrHWKWZd/x+N5qv3sdU0DlPsylbZFtMPDnituwADZNd8eI7G0GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JbsWdLQhti+ptwto1RyHF62bk+iOKqVUOIE3k2Kw/EY=;
 b=vK/qebrzaXbBNYb64tUe+Aa5cGgS/AXd4SPgjosFCuG5LEAGGsC1ayZDfckCPOzAyQLl65RWx0btg9f7n3E/Aagyx5TCCtHxfYU+KIBqzuabfBe2Zmw7Ci3TyrwtQZjlUqDYiTfPqVPjk6yzudeRx6W+37OoAlGSKv/Ssd2QxcOfMXjXW9DSCFlcdrRk8xvcFhL/g29x55rrX0fTjoYhYZ16tSjMxY3TpYiZX4euwruksfASFDE+mFBdM4A/4r+pDOfJUSONOAfBZp0Lng5XhlOsqHLUNdkZgYYjWTazetrLXb0XR9ZwrJNxKaCxeEvw98PsB77VZnz7KKGc8IEoQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by MW5PR11MB5809.namprd11.prod.outlook.com (2603:10b6:303:197::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.18; Thu, 6 Mar
 2025 05:39:06 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%6]) with mapi id 15.20.8511.015; Thu, 6 Mar 2025
 05:39:05 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
Subject: RE: [PATCH v2 2/2] drm/i915/plane: convert intel_atomic_plane.[ch] to
 struct intel_display
Thread-Topic: [PATCH v2 2/2] drm/i915/plane: convert intel_atomic_plane.[ch]
 to struct intel_display
Thread-Index: AQHbje0om4KDJ8h1GUStU9lO+OBcsrNll/Gw
Date: Thu, 6 Mar 2025 05:39:05 +0000
Message-ID: <IA1PR11MB6467254ED33F66A88530FC7AE3CA2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <cover.1741192597.git.jani.nikula@intel.com>
 <d7e28ad43f67d92e54fb7e14373872b5e561038c.1741192597.git.jani.nikula@intel.com>
In-Reply-To: <d7e28ad43f67d92e54fb7e14373872b5e561038c.1741192597.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|MW5PR11MB5809:EE_
x-ms-office365-filtering-correlation-id: 189928ab-295a-4e91-820f-08dd5c713588
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gIjiOw6mlCAnlHpnh+D75Lz9vsHx9blwR1gtr02pI1m60KXVYIHfXsezN9Ya?=
 =?us-ascii?Q?jdCwqq7FT6IF9aVPeEA614+tKeVB4GMR5xlrJxFv9Mvc+L4QgxeyYoeNDmrt?=
 =?us-ascii?Q?zC8/kIxbwqbS4fXoZudJLKaLlGA16Fe9cG6uRZPNJjPhV9AKV9JPeQTcveDK?=
 =?us-ascii?Q?Q1CvlPpGaMn+PPQDnzcy2AHn7n9EON6ojGIkvz5XPQFS+uTOGMmaOfeJj/d9?=
 =?us-ascii?Q?c9fZK9vizvzo1NDP8reUHID0DEZOFBcMwvqlDc22FCNxUjiOOqBBrsVuj/Vd?=
 =?us-ascii?Q?uEQdYP7liCIyfMN9D59guNq19JY9r5XtlDPM78T+vy6TcfFkQ0RFKyvKpFpP?=
 =?us-ascii?Q?r0hR39njWowAonFmHeSJIgVYiVvsz1m8yFTXHejDhWEONm5sKVAaHHS37yR6?=
 =?us-ascii?Q?pstF4cuzdAzEOBwW3XLENc9rufNIC29fL333ak81uBZRmDW0VJC+kZdX0965?=
 =?us-ascii?Q?HWlOgBYGc/G+ZmvK3IC6OdR5J+nX3qBBEz84fGXLGLBZ9jMKC8wvH1t/rAyj?=
 =?us-ascii?Q?ABAVIkIyM8nfoFgiJjv0EsMogG8FFmgAJBo96FmMbyx6zL0lnUXA8cic0E1g?=
 =?us-ascii?Q?jqroln0I4vGDhl+GnhWzcIQcsv9XsaLGZgeyeHVRIS3s1wYHUFD55Lxfqpce?=
 =?us-ascii?Q?WqfMnyLXAjriRC0LsVFD9cs97i3hHXpCZTE42RnSiIlDDkpiC26qphll/WDw?=
 =?us-ascii?Q?PpfOd5uHSMHOwxiMT/3gBKE4GUSLw4VhoGPFTqBuXsKqo0kYNM7gK5GSE8Bt?=
 =?us-ascii?Q?W1V9v0W7ENdV1HtcOTIZBOCcGlmOskPm8zYK48qv/C+lh2E6qyh+XplTkX4b?=
 =?us-ascii?Q?Ipq+SYU7i7+hx71+66dDQZkyafFBgb0Evxzz85/sVeKeg2p+RSoI1oJOc0js?=
 =?us-ascii?Q?RQz889PtOYRcdllRVmKRE9tPkTf6mh0OThoxJT5QXN6rn/Lvv3sXYQVGlAQr?=
 =?us-ascii?Q?2+GEE8phwgawkV6yHJCGk4KXEanZkcrcpCvbAO8lsmKi55iCgHazyaJl4IBK?=
 =?us-ascii?Q?D6cs/wqcu1SFm4W+uVDcPs6xLNeGVUVSF1FPbVB1ytiyMm3udhZR9JwjMduZ?=
 =?us-ascii?Q?OqRuv3O73SoWlGRmQUcmF1hPhjobZeRoUZRtGV907xjf1+ObCOCgzfShJYpE?=
 =?us-ascii?Q?5VNReee8mV/sb7jGIMPUm4QLcGnDwzvM8Y5WYSZ6qh/a5Sz2Bsa3omNPsnbU?=
 =?us-ascii?Q?VbfyWJdTa4LtXwm6k39T4hmnXTeyQU5qznki4SFdwKeXbOSxSou6qWnvzVPG?=
 =?us-ascii?Q?SE0eSbS8dsrSAjDihy1mCMZm9tRa01SDoJENofDctG2EHe65qKylLu0Jq7c6?=
 =?us-ascii?Q?jqWMyboKRCWsgPUYd1soEhfXDlMlZG1Lx44WewoYUAe7S687kBGMHlqNm7AH?=
 =?us-ascii?Q?WQkEqA9ZNVVUupCEipMJPt4VsDllp8y0nNX8mMEohBjdXMpxANwLGxm+U8hg?=
 =?us-ascii?Q?9/DDkcdCVoOwMIq7xbzkCE3BohPhBMC2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+onjHGhNFJfTOWMuNqI8ZMgDZq3WPfEC2HuKkJ6wGto20YKn/BxMjBQ/SS7d?=
 =?us-ascii?Q?xKTB8scrlH/fPUMqBjF9Q9qls8jGXsG83d/axTyFj8QNsYQHOwuYWgdNz90B?=
 =?us-ascii?Q?ts5IgLnhSPf8Kjbo9agHDu5HXjJEhnpQm7Exdxoqsktyx00Y/Up9VMxkhTKL?=
 =?us-ascii?Q?uJj3RNtV1IUtPLu6w6DRFoisXKYSngrEeM73CU2kmkWf+qQMGLAf7VaaqHpT?=
 =?us-ascii?Q?o1njee5LBahmAT1B+2nybAs/c3QlQWwFW1rd0SvQX6/j7xlDLJ6IkZb2A2dj?=
 =?us-ascii?Q?W6oYut1d9rUU7gZ1bqfO4QdCVy0kXwpcR+SBC9kxWzXB4u2VaMDeykAseGpk?=
 =?us-ascii?Q?vMcNxrf/d4CztscHhc1YXWz3lyh3iXjyjlnoWOjMNFEUSvHZ/z/cOIDhmwVs?=
 =?us-ascii?Q?aLng1QRlDyPUhv8PVyFLTRXRTCou9XDrDZAfX3AjNIE1AqnOv59eD42M8hTP?=
 =?us-ascii?Q?0gtE/IFlZgNn2PjnT91g3H/+VDtoCwdYrWEvNQ8BW9Apo42KwiCJWAaJmSEW?=
 =?us-ascii?Q?rCqTR17IJnDcHfWbp6IcS1vhWyky4XhTPrNj+TvmPKIxPJy5/1HpgP/8v2Fz?=
 =?us-ascii?Q?gVOF7tpjXUJTS9CxGIBLVgNQI8VdDGKYaLI8nxxM2dtA+CK7pix7Ql/gjeZq?=
 =?us-ascii?Q?rWYwu2ZOCHT4IUo1dzaqkz63BMOPigpoXFhyUfcyY8STZ6FnyMIgJQdaaglC?=
 =?us-ascii?Q?aasndrkGlaliNYdMGtP+JI+43EIttvrJY6x9nbiorFx6UI/946i8t7owRrP4?=
 =?us-ascii?Q?1BunXUc4S+dhjiuuBItu8+/May+Cr6bDqXmfyx174nc6FAKLRMntYi+bJDQU?=
 =?us-ascii?Q?AXVSbYLsf24bQUQ2ceE2hgGql4hq3/qwmVBnQNFjJ+fxN01ug6iFkZO4/Rgf?=
 =?us-ascii?Q?dajBYmq7i12FccYIN9aoWBh22dNsMO7p/S2/Q7uHPFZPZXaYBGtYh8RjLeP7?=
 =?us-ascii?Q?AjchF3S0Z5nHJ+161NEBczILihSUqsWmUR0fonjnf78SBtBhh8nBDr/sjdz/?=
 =?us-ascii?Q?YkLQDeAkGKS+QECAGtmTf0ueWqVbw4h+j+8JAh4RyyTGXG9eVCvzDJymdUzg?=
 =?us-ascii?Q?Fus0nnqW6W9TxudlnWkGS0AddCoWqRx4UrcU0MBNsMh6D22PJcHnD9uXp/w1?=
 =?us-ascii?Q?KPfuF4qrCp3WB3LR8uDzImSEOtXtkzlage6YSbBqw/9Lb5/qhQjQuZjbV3pQ?=
 =?us-ascii?Q?V4O5cZtnwj/pWa5XvfvuX8i0Nj0DwqxEc4qLQNzwCvexgcDQbbND3o3JcNuH?=
 =?us-ascii?Q?8FU7MuCiNFNek9Tg6poNxR8x18LbgdWPPHlgP0zEIXyYrIaQJsK5stJS+0O+?=
 =?us-ascii?Q?wTJ1mNZ7VZC74YuzxTCf8sGe7ysrVlz6dHCkypXMdZFWEnghb/fwf09Khsnn?=
 =?us-ascii?Q?LOourKnACTEMIL3rrG/7NNSvDqghP0bTCFHUpMOIeaQbHoL2AJRsUqZaRD2k?=
 =?us-ascii?Q?Aw/Tk1oSr5dK6HIzPai3/JwYavJP0XuQm+ZQ+Qm8czwpE/75LuNX5SHdVIt7?=
 =?us-ascii?Q?m6zXf4JexV4h8nmaZDgTg6FE4role3mL7BQgEzoQ33dw4J7bzPeiwalD6t3k?=
 =?us-ascii?Q?sAATWDS2XZ4BM2RWf1PXBld8eDsPyvUqe9vo+skH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 189928ab-295a-4e91-820f-08dd5c713588
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2025 05:39:05.5307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QcEVHbd3ypsuo/BRY4Y/jN6jcs1np6NcZvGOHkDEh5ai9RWyXhyV9vVqpjHeq5VVb8NF+ouWfwOUJeDwweMKjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5809
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
> Sent: Wednesday, March 5, 2025 10:08 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>;=
 Vivi,
> Rodrigo <rodrigo.vivi@intel.com>
> Subject: [PATCH v2 2/2] drm/i915/plane: convert intel_atomic_plane.[ch] t=
o
> struct intel_display
>=20
> Going forward, struct intel_display is the main display device data point=
er.
> Convert intel_atomic_plane.[ch] to struct intel_display.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 78 +++++++++----------
>  1 file changed, 38 insertions(+), 40 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index d899c37d80c6..7276179df878 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -43,7 +43,6 @@
>=20
>  #include "gem/i915_gem_object.h"
>  #include "i915_config.h"
> -#include "i915_drv.h"
>  #include "i915_scheduler_types.h"
>  #include "i915_vma.h"
>  #include "i9xx_plane_regs.h"
> @@ -169,10 +168,10 @@ intel_plane_destroy_state(struct drm_plane *plane,
>=20
>  bool intel_plane_needs_physical(struct intel_plane *plane)  {
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	struct intel_display *display =3D to_intel_display(plane);
>=20
>  	return plane->id =3D=3D PLANE_CURSOR &&
> -		DISPLAY_INFO(i915)->cursor_needs_physical;
> +		DISPLAY_INFO(display)->cursor_needs_physical;
>  }
>=20
>  bool intel_plane_can_async_flip(struct intel_plane *plane, u64 modifier)
> @@ -277,7 +276,7 @@ int intel_plane_calc_min_cdclk(struct
> intel_atomic_state *state,
>  			       struct intel_plane *plane,
>  			       bool *need_cdclk_calc)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> +	struct intel_display *display =3D to_intel_display(plane);
>  	const struct intel_plane_state *plane_state =3D
>  		intel_atomic_get_new_plane_state(state, plane);
>  	struct intel_crtc *crtc =3D to_intel_crtc(plane_state->hw.crtc);
> @@ -322,7 +321,7 @@ int intel_plane_calc_min_cdclk(struct
> intel_atomic_state *state,
>  	    cdclk_state->min_cdclk[crtc->pipe])
>  		return 0;
>=20
> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[PLANE:%d:%s] min cdclk (%d kHz) > [CRTC:%d:%s] min
> cdclk (%d kHz)\n",
>  		    plane->base.base.id, plane->base.name,
>  		    new_crtc_state->min_cdclk[plane->id],
> @@ -435,7 +434,7 @@ static bool intel_plane_do_async_flip(struct
> intel_plane *plane,
>  				      const struct intel_crtc_state
> *old_crtc_state,
>  				      const struct intel_crtc_state
> *new_crtc_state)  {
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	struct intel_display *display =3D to_intel_display(plane);
>=20
>  	if (!plane->async_flip)
>  		return false;
> @@ -456,7 +455,7 @@ static bool intel_plane_do_async_flip(struct
> intel_plane *plane,
>  	 * extend this so other scanout parameters (stride/etc) could
>  	 * be changed as well...
>  	 */
> -	return DISPLAY_VER(i915) < 9 || old_crtc_state->uapi.async_flip;
> +	return DISPLAY_VER(display) < 9 || old_crtc_state->uapi.async_flip;
>  }
>=20
>  static bool i9xx_must_disable_cxsr(const struct intel_crtc_state
> *new_crtc_state, @@ -560,16 +559,16 @@ static int
> intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
>  					   const struct intel_plane_state
> *old_plane_state,
>  					   struct intel_plane_state
> *new_plane_state)  {
> +	struct intel_display *display =3D to_intel_display(new_crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
>  	struct intel_plane *plane =3D to_intel_plane(new_plane_state-
> >uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	bool mode_changed =3D intel_crtc_needs_modeset(new_crtc_state);
>  	bool was_crtc_enabled =3D old_crtc_state->hw.active;
>  	bool is_crtc_enabled =3D new_crtc_state->hw.active;
>  	bool turn_off, turn_on, visible, was_visible;
>  	int ret;
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 9 && plane->id !=3D PLANE_CURSOR) {
> +	if (DISPLAY_VER(display) >=3D 9 && plane->id !=3D PLANE_CURSOR) {
>  		ret =3D skl_update_scaler_plane(new_crtc_state,
> new_plane_state);
>  		if (ret)
>  			return ret;
> @@ -578,7 +577,7 @@ static int intel_plane_atomic_calc_changes(const
> struct intel_crtc_state *old_cr
>  	was_visible =3D old_plane_state->uapi.visible;
>  	visible =3D new_plane_state->uapi.visible;
>=20
> -	if (!was_crtc_enabled && drm_WARN_ON(&dev_priv->drm,
> was_visible))
> +	if (!was_crtc_enabled && drm_WARN_ON(display->drm,
> was_visible))
>  		was_visible =3D false;
>=20
>  	/*
> @@ -602,7 +601,7 @@ static int intel_plane_atomic_calc_changes(const
> struct intel_crtc_state *old_cr
>  	turn_off =3D was_visible && (!visible || mode_changed);
>  	turn_on =3D visible && (!was_visible || mode_changed);
>=20
> -	drm_dbg_atomic(&dev_priv->drm,
> +	drm_dbg_atomic(display->drm,
>  		       "[CRTC:%d:%s] with [PLANE:%d:%s] visible %i -> %i, off %i,
> on %i, ms %i\n",
>  		       crtc->base.base.id, crtc->base.name,
>  		       plane->base.base.id, plane->base.name, @@ -612,11
> +611,11 @@ static int intel_plane_atomic_calc_changes(const struct
> intel_crtc_state *old_cr
>  	if (visible || was_visible)
>  		new_crtc_state->fb_bits |=3D plane->frontbuffer_bit;
>=20
> -	if (HAS_GMCH(dev_priv) &&
> +	if (HAS_GMCH(display) &&
>  	    i9xx_must_disable_cxsr(new_crtc_state, old_plane_state,
> new_plane_state))
>  		new_crtc_state->disable_cxsr =3D true;
>=20
> -	if ((IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv) ||
> IS_IVYBRIDGE(dev_priv)) &&
> +	if ((display->platform.ironlake || display->platform.sandybridge ||
> +display->platform.ivybridge) &&
>  	    ilk_must_disable_cxsr(new_crtc_state, old_plane_state,
> new_plane_state))
>  		new_crtc_state->disable_cxsr =3D true;
>=20
> @@ -709,10 +708,10 @@ int intel_plane_atomic_check_with_state(const
> struct intel_crtc_state *old_crtc_  struct intel_plane *
> intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)  {
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_display *display =3D to_intel_display(crtc);
>  	struct intel_plane *plane;
>=20
> -	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
> +	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
>  		if (plane->id =3D=3D plane_id)
>  			return plane;
>  	}
> @@ -961,9 +960,9 @@ void intel_crtc_planes_update_arm(struct intel_dsb
> *dsb,
>  				  struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	struct intel_display *display =3D to_intel_display(state);
>=20
> -	if (DISPLAY_VER(i915) >=3D 9)
> +	if (DISPLAY_VER(display) >=3D 9)
>  		skl_crtc_planes_update_arm(dsb, state, crtc);
>  	else
>  		i9xx_crtc_planes_update_arm(dsb, state, crtc); @@ -974,7
> +973,7 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state
> *plane_state,
>  				      int min_scale, int max_scale,
>  				      bool can_position)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(plane_state->uapi.plane-
> >dev);
> +	struct intel_display *display =3D to_intel_display(plane_state);
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	struct drm_rect *src =3D &plane_state->uapi.src; @@ -994,7 +993,7 @@
> int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_sta=
te,
>  	hscale =3D drm_rect_calc_hscale(src, dst, min_scale, max_scale);
>  	vscale =3D drm_rect_calc_vscale(src, dst, min_scale, max_scale);
>  	if (hscale < 0 || vscale < 0) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "[PLANE:%d:%s] invalid scaling
> "DRM_RECT_FP_FMT " -> " DRM_RECT_FMT "\n",
>  			    plane->base.base.id, plane->base.name,
>  			    DRM_RECT_FP_ARG(src), DRM_RECT_ARG(dst));
> @@ -1011,7 +1010,7 @@ int intel_atomic_plane_check_clipping(struct
> intel_plane_state *plane_state,
>=20
>  	if (!can_position && plane_state->uapi.visible &&
>  	    !drm_rect_equals(dst, clip)) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "[PLANE:%d:%s] plane (" DRM_RECT_FMT ") must
> cover entire CRTC (" DRM_RECT_FMT ")\n",
>  			    plane->base.base.id, plane->base.name,
>  			    DRM_RECT_ARG(dst), DRM_RECT_ARG(clip)); @@ -
> 1026,7 +1025,7 @@ int intel_atomic_plane_check_clipping(struct
> intel_plane_state *plane_state,
>=20
>  int intel_plane_check_src_coordinates(struct intel_plane_state *plane_st=
ate)
> {
> -	struct drm_i915_private *i915 =3D to_i915(plane_state->uapi.plane-
> >dev);
> +	struct intel_display *display =3D to_intel_display(plane_state);
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	struct drm_rect *src =3D &plane_state->uapi.src; @@ -1060,18 +1059,18
> @@ int intel_plane_check_src_coordinates(struct intel_plane_state
> *plane_state)
>  	if (fb->format->format =3D=3D DRM_FORMAT_RGB565 && rotated) {
>  		hsub =3D 2;
>  		vsub =3D 2;
> -	} else if (DISPLAY_VER(i915) >=3D 20 &&
> +	} else if (DISPLAY_VER(display) >=3D 20 &&
>  		   intel_format_info_is_yuv_semiplanar(fb->format, fb-
> >modifier)) {
>  		/*
>  		 * This allows NV12 and P0xx formats to have odd size and/or
> odd
> -		 * source coordinates on DISPLAY_VER(i915) >=3D 20
> +		 * source coordinates on DISPLAY_VER(display) >=3D 20
>  		 */
>  		hsub =3D 1;
>  		vsub =3D 1;
>=20
>  		/* Wa_16023981245 */
> -		if ((DISPLAY_VERx100(i915) =3D=3D 2000 ||
> -		     DISPLAY_VERx100(i915) =3D=3D 3000) &&
> +		if ((DISPLAY_VERx100(display) =3D=3D 2000 ||
> +		     DISPLAY_VERx100(display) =3D=3D 3000) &&
>  		     src_x % 2 !=3D 0)
>  			hsub =3D 2;
>  	} else {
> @@ -1083,7 +1082,7 @@ int intel_plane_check_src_coordinates(struct
> intel_plane_state *plane_state)
>  		hsub =3D vsub =3D max(hsub, vsub);
>=20
>  	if (src_x % hsub || src_w % hsub) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "[PLANE:%d:%s] src x/w (%u, %u) must be a
> multiple of %u (rotated: %s)\n",
>  			    plane->base.base.id, plane->base.name,
>  			    src_x, src_w, hsub, str_yes_no(rotated)); @@ -
> 1091,7 +1090,7 @@ int intel_plane_check_src_coordinates(struct
> intel_plane_state *plane_state)
>  	}
>=20
>  	if (src_y % vsub || src_h % vsub) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "[PLANE:%d:%s] src y/h (%u, %u) must be a
> multiple of %u (rotated: %s)\n",
>  			    plane->base.base.id, plane->base.name,
>  			    src_y, src_h, vsub, str_yes_no(rotated)); @@ -
> 1336,14 +1335,13 @@ static int icl_check_nv12_planes(struct
> intel_atomic_state *state,
>  				 struct intel_crtc *crtc)
>  {
>  	struct intel_display *display =3D to_intel_display(state);
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_plane_state *plane_state;
>  	struct intel_plane *plane;
>  	int i;
>=20
> -	if (DISPLAY_VER(dev_priv) < 11)
> +	if (DISPLAY_VER(display) < 11)
>  		return 0;
>=20
>  	/*
> @@ -1371,7 +1369,7 @@ static int icl_check_nv12_planes(struct
> intel_atomic_state *state,
>  		if ((crtc_state->nv12_planes & BIT(plane->id)) =3D=3D 0)
>  			continue;
>=20
> -		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, y_plane)
> {
> +		for_each_intel_plane_on_crtc(display->drm, crtc, y_plane) {
>  			if (!icl_is_nv12_y_plane(display, y_plane->id))
>  				continue;
>=20
> @@ -1386,7 +1384,7 @@ static int icl_check_nv12_planes(struct
> intel_atomic_state *state,
>  		}
>=20
>  		if (!y_plane_state) {
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(display->drm,
>  				    "[CRTC:%d:%s] need %d free Y planes for
> planar YUV\n",
>  				    crtc->base.base.id, crtc->base.name,
>  				    hweight8(crtc_state->nv12_planes));
> @@ -1403,10 +1401,10 @@ static int intel_crtc_add_planes_to_state(struct
> intel_atomic_state *state,
>  					  struct intel_crtc *crtc,
>  					  u8 plane_ids_mask)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct intel_plane *plane;
>=20
> -	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> +	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
>  		struct intel_plane_state *plane_state;
>=20
>  		if ((plane_ids_mask & BIT(plane->id)) =3D=3D 0) @@ -1433,12
> +1431,12 @@ int intel_atomic_add_affected_planes(struct intel_atomic_stat=
e
> *state,
>  					      new_crtc_state->enabled_planes);
> }
>=20
> -static bool active_planes_affects_min_cdclk(struct drm_i915_private
> *dev_priv)
> +static bool active_planes_affects_min_cdclk(struct intel_display
> +*display)
>  {
>  	/* See {hsw,vlv,ivb}_plane_ratio() */
> -	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
> -		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> -		IS_IVYBRIDGE(dev_priv);
> +	return display->platform.broadwell || display->platform.haswell ||
> +		display->platform.cherryview || display->platform.valleyview
> ||
> +		display->platform.ivybridge;
>  }
>=20
>  static u8 intel_joiner_affected_planes(struct intel_atomic_state *state,=
 @@ -
> 1517,7 +1515,7 @@ static int intel_add_affected_planes(struct
> intel_atomic_state *state)
>=20
>  int intel_atomic_check_planes(struct intel_atomic_state *state)  {
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
>  	struct intel_plane_state __maybe_unused *plane_state;
>  	struct intel_plane *plane;
> @@ -1531,7 +1529,7 @@ int intel_atomic_check_planes(struct
> intel_atomic_state *state)
>  	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
>  		ret =3D intel_plane_atomic_check(state, plane);
>  		if (ret) {
> -			drm_dbg_atomic(&dev_priv->drm,
> +			drm_dbg_atomic(display->drm,
>  				       "[PLANE:%d:%s] atomic driver check
> failed\n",
>  				       plane->base.base.id, plane->base.name);
>  			return ret;
> @@ -1551,7 +1549,7 @@ int intel_atomic_check_planes(struct
> intel_atomic_state *state)
>  		 * the planes' minimum cdclk calculation. Add such planes
>  		 * to the state before we compute the minimum cdclk.
>  		 */
> -		if (!active_planes_affects_min_cdclk(dev_priv))
> +		if (!active_planes_affects_min_cdclk(display))
>  			continue;
>=20
>  		old_active_planes =3D old_crtc_state->active_planes &
> ~BIT(PLANE_CURSOR);
> --
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> 2.39.5

