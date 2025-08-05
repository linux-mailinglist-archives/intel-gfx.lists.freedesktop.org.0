Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A384BB1B296
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 13:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE3510E25F;
	Tue,  5 Aug 2025 11:27:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bA7JckTC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8148B10E25F
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 11:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754393226; x=1785929226;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1rgAcObrFl5vJYqyENA9usXW7zTWVeyLE4dAj7JtfDg=;
 b=bA7JckTCflUwXukLqim3IOwvyoZ4ihaeKo/FijBB0e9RCnK+kgxJAgH6
 9X1elDRHNXqPdcquk+UsqvYvSdqYNyekjrragpPaRijJhAsu7xRHYD08v
 GGQYvH20qxwqWIjHUj7XssjMBqNJyO3V5ZsqHs5Y+EyMnu/2xoDnEwXaV
 WB6RuiIPpSEPUrdf+8ZInhVltiN1jhGVeR/BSKGvlwmk7GV6lezIGb0kO
 QzKsBq6dZ8+6TwxhlrzYtU6J2YXtTVbJAESVsX1YBWf2q0t+VaxlGOLrU
 IhMMGIRrdb8AeQdBwD91sDdcr3uyqvQkbk+XYB1PnVd2n3XZ4ZtWyjuMa g==;
X-CSE-ConnectionGUID: a3hDs9idTcyU2LDgIoSZDQ==
X-CSE-MsgGUID: m3ItgYT6TjaWfnApOeKDtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56397628"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="56397628"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:27:05 -0700
X-CSE-ConnectionGUID: ALF4bToRQ96hLXOFvxUzsQ==
X-CSE-MsgGUID: bDjYXs/tQ8Oh0KlsjsmDIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="168728798"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:27:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 04:27:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 04:27:03 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.88)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 04:27:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LY63mwcoyFH7/hMsMxcVc13S8LIvaFeAaWqESS0DE26nFOKxvL5y6UO3xVcZ4SqObBxzSFhNX4lR/AE8e4nV4NtyFw+tQXndU5f2SP9fjYhUft1YgGAT03P9N/oc2/lay7DN1O1KhhXi49jsdKB7Xo9kDT/9yT4KDY6D2a01x5Dx+krl6UrWatlvzFcstjgrQD27T+HLqzmCQmDM7XbKhPGsnKd4yzXsvLSrW6Q1KHjnNSs/X9xQVLiidz37DdYVIu3j6k5f4dhqiSltdq0Ch85I95zJAiZaB1BqvT/7PPBMSsvubG2QRDEYEzo7hD1lKvign9u9hu16pnMhXFt0Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mtXoBlqhBQWDrg38uEeT8SRMUlrPAgmrMoDvcPWrBDc=;
 b=aSFLuAl7hGXDNpTu9I2+x7VTyrCYX+21K7VYKYYT/PuO6Mhd9LGQa7dQBxP6w+whGnSJnlsqPzZqGqagecSTizSJQCeLLfbbnw76q0sk7mOtqwi5BN7uw1uBNuQdYEOdHF4aZR3kUgYIbr09aS5K0a4rpZlpjh5EZqugfJ92LaoGocpmWYLlDRRFXDAkalXoX8x2LXXLzzFi0L7oTNa9Moey4Qx7jBAdfc7DSkWDwbY6jDvzH6ct7ae8WyMutU4aMcG5uexw7v9NyUZxw3XFmEMox/MFCyfTYcRZLuhgp7MY1q1XZpDBBy5egd/9ZqteR6vxcZyn1lX4X0lL8p3fmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 MW6PR11MB8366.namprd11.prod.outlook.com (2603:10b6:303:24c::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8989.11; Tue, 5 Aug 2025 11:26:57 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%4]) with mapi id 15.20.8989.017; Tue, 5 Aug 2025
 11:26:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: RE: [PATCH] drm/i915/display: WA_14011503117
Thread-Topic: [PATCH] drm/i915/display: WA_14011503117
Thread-Index: AQHcAuTPFh3B/4ChdE6GwpvHtJDnrbRT8avA
Date: Tue, 5 Aug 2025 11:26:57 +0000
Message-ID: <DS0PR11MB8049FF7E4BB5F54FF51842FAF922A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20250801125835.2337614-1-nemesa.garg@intel.com>
In-Reply-To: <20250801125835.2337614-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|MW6PR11MB8366:EE_
x-ms-office365-filtering-correlation-id: f4da2359-d62b-49b6-f2bc-08ddd412fd07
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?e4SnNG4kjczjJKFuc1RfglYKeAM+mp141qc/0m7bCtZRXwUJTvbYsGvlS0Z8?=
 =?us-ascii?Q?ItFINMfEZfIjWxjtPscKsQ0W+QtZ809SFc3dg5XBSUSK835+25kv/gBXQRKU?=
 =?us-ascii?Q?n78F6y+U0BT8RqbtHOCDiicf1z8KWNEuoAlgJxT7ezw5xEUF7WmioeCG+CUH?=
 =?us-ascii?Q?Qi5207apRffZioyOo4yzwF3nlgOUHBgxuxQKr99rW8AacOEMESj/lJcQPn/7?=
 =?us-ascii?Q?N3vA2rH9md2mGwmDSLhd2MJ3DDjKDHefwlrOdQDfO+XCcf1lf6/qJ6Bmpc8B?=
 =?us-ascii?Q?obKFzNIPDIf+8R8eJQJCykRnfnN0uUqawp4b6qFdu6gijLoIoNQCIdk+sUdd?=
 =?us-ascii?Q?+HYtSlP+KGiMFmz24+bYTGIX1aRdNanQg38Zix6ZLDwG5fWf6gxl/qtWKHWg?=
 =?us-ascii?Q?OobuTD9zIg8WBEiT3BAbtPidrvmXMUGJYLAWKX90vpQhaL2YDkZRSHbRNRTS?=
 =?us-ascii?Q?hSIgwn646ERkaqNEMd+vt1UFMuPIhYOlBHH/Zrs9szoesYFA+GhU3bnFkAGn?=
 =?us-ascii?Q?vF82E7Qda4pHXoxbotbdv1XMVAEYRes89Z7+vLolbk+JKmMOt6LAvG6/p2zV?=
 =?us-ascii?Q?9Bd19gtXXiBNi4wkqnKF7KsIes5cAyiS+mA+saiMGCPXrHaAi+YqBwzevAdW?=
 =?us-ascii?Q?hxZ5/ZywDuziTaUFkEL1Au3axoyiKV0iZfWmPyQfcMdHYm1XNb9efY5tyH63?=
 =?us-ascii?Q?POumxYS8qmcSD7VySJF4/og9GAtYXlRXBJ+3CaZi04qdgBthwYYE/+3vmBUX?=
 =?us-ascii?Q?/Sh4uoznVyEAu4LIuVmgmrNRB0VwA5FQH1iNloCRefYOpkUb7fBhKCl/KG8u?=
 =?us-ascii?Q?RvKgpRede0NNxGMLsgFN8vqPrR+dnSWsfM/P5CtEv3YPIpCOehkJQjVl8jfv?=
 =?us-ascii?Q?I3ZL/rfKO0K45hdlvZpTVGGs9zSWpmLrnos2XG+g3eCQc0AeK6fx+302VTUD?=
 =?us-ascii?Q?B0DYuzamT4RZEAzGlTFulCUsOK2XmSsoELXlAUwbrpmTxvVBm7N541FuT1Hk?=
 =?us-ascii?Q?jfH33zBsgrY+r/zisxo7XrbnO8owWrNPQ73Clk4NC8nazVtQcujk5TtxOUPB?=
 =?us-ascii?Q?OzdNXL99If1Hv8MRSAwUgBbXsSfvnI+Lt7q1dL5tJqdG0S3XY6sClaBRajk1?=
 =?us-ascii?Q?KUSulW1A0ee60DVC+1giA8GZI4WvDADB30cGE8mCDw3OUgYFitEAwkWxREuf?=
 =?us-ascii?Q?Q8bQNFJpNd4Zvj9s+wQ/D+EJLtGpVD0owX6sVP8HfCP1LK9IyHQ3iUYI5PEy?=
 =?us-ascii?Q?u/b0SRdQu1//T5qVpEd3cKSXY5OYIQqgS1Kc9bkZ5wAYuDb+RqyiIlJDaOL5?=
 =?us-ascii?Q?+dBkHuBt0IaX+zrdwcoMOpVkZsi9N5fuEn6qoumHtkSj1J9Cxtn6QJ9oLg9n?=
 =?us-ascii?Q?U9HuV+GuBwLbRCDUCadi8DK2kbbzcfFb1rAWGdaf1WfBXY/Kfof0FcXOxvvT?=
 =?us-ascii?Q?jx3CzoD55wmzouNN2I/HDjMVTDTp1/gq7h1cjJVsigHkHqnpitSycQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MM6YUwUAe8Wrz/nrTKa2R2JuFIHeajBJCTIz/3px/u3JcqVAnzsfnhzsBvqB?=
 =?us-ascii?Q?5JziJzZSVv44XIYSLzf0JuAfQwg8V5hjQ/et3WWoJ7gfm3r/0gvmUwUseacT?=
 =?us-ascii?Q?xpAgtmEHxmcl50MMsprvMl2fnxhz+FokDVBy/JzDvmCsoIFFfKNF8qaC04x2?=
 =?us-ascii?Q?Eq3ubkdOfXFVtBVnfL2acuwzGo5p59zoD3efUsdUpDjZRQPIymA/p8jWKWHG?=
 =?us-ascii?Q?tMxVG3eDtC+HIJ4Tij6Jj8UqArT9lYOUPjUxzzxkU34kHhTlHae+KyqT8c0o?=
 =?us-ascii?Q?uGBQyLlHHQi7WGiqoUgJFp/z0H+bOzaqlTSaB9H49HvM4MivdynWR1UOWmGB?=
 =?us-ascii?Q?2DCLKPzS3rUOnMCWJSjDbN5qxdezVKWtSv06gKpuYTCENney8OEZibFAoHwB?=
 =?us-ascii?Q?JJxrKT9JHjr7uLt4T5iXwzRnIlE4xZRwCicPmLAHkdZA9XixSVR6LMNlOifm?=
 =?us-ascii?Q?PPriNOfIn7ahh2vlsZzwWeQcmJeBJ7XS74vZqQN/R7NUWEc8Z6OVV47l4CSU?=
 =?us-ascii?Q?sWGIo58qU7DUyrvO/WFbDIMKw5PDn85ZrfUFA4W3s1fk306ZvPZ+VNI8k+m2?=
 =?us-ascii?Q?D/xpRiIDBQTPqC+ivLMQWL9w01iv9bVqrlFvrXBGW5C6mi86AhfnaeMDVVdZ?=
 =?us-ascii?Q?T7eeMII74pMIW/K7zTCLcFr0zTXq6kbwEPu/iduhpncXTrNxBqqlxE/GlCAQ?=
 =?us-ascii?Q?WtUTVAe74+J7Q8l7kvaFjK18gVrgD4SSze0cDY+4xxNuwSA5cdzMMFZG2RJ6?=
 =?us-ascii?Q?Nt6DjlSlDtVVgX/bFfdYWl2CicbVt/QZGfDgZfwtdSdg92K2QxF+Aao95JjO?=
 =?us-ascii?Q?EOgRqfSLxaEfdzNcxsL7v5AoXpG6G4k6Qj7Jk3zRSQesWPVCAX17+FipX8Eu?=
 =?us-ascii?Q?djv/0Zcpx0a35Lse8JMI/udhaVVwFPNgVbSC0ZWvwfkElMifqpZID1RbYRIP?=
 =?us-ascii?Q?6kY0h/20TDuBF9tgAYtudZMLOzIk9g0tj095cZ9s5EE+oimah1UHK+ohk+Wc?=
 =?us-ascii?Q?fYPfjpOps2tU9xXEz3KgieFk5evEkiKShxjmydtxWP4zYNYgZqZCh38Oybwv?=
 =?us-ascii?Q?hgyxcUJW9EYcVsbtSOaR2TIkq1IRytq67xjmGdwP8vK2CO3E8NDhmSAYfgLk?=
 =?us-ascii?Q?pglenFZKdTC+pjXjSA3wVUWIqsTYHeZmSwAU+ErKCFvInBq+16vFXcs7jGpt?=
 =?us-ascii?Q?3xOiRcM7Vh6BhHnVbMPIwJ06p/Gax9/O9aBzZoBM3A8ZFKqya0L7RKpt5gFR?=
 =?us-ascii?Q?cPMZmiN1zpVP4osBwdsJzLZ0ZKovV37zNXLVj8bj6/TKWqNlzkAPol//i40Q?=
 =?us-ascii?Q?bGXlHLepaFRwL64Mc+0dO7dqasEkdDKAWQKTiqwxMD3t9Zf4Mi65Sdlobzld?=
 =?us-ascii?Q?D2ORsid9NAHEIrSbkNlVd1zJUsXSbv2/357tMFxX7GEEsyxX2QDOI2aNenu/?=
 =?us-ascii?Q?qmO6X/fYFRihuFtYADV8EVeju/FhTj243I6mqCBDFyKnJVW0zbcwErUzpc/I?=
 =?us-ascii?Q?iEahvCRIZxGXzu3Y4r/T54rCGDoohjxCMTrtOEKZMHKo0rUGnFDZvku4N9wT?=
 =?us-ascii?Q?S6QIOwr/aGitjfzgsOrcMTTu4CXRrhY+BpOu4DZR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4da2359-d62b-49b6-f2bc-08ddd412fd07
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2025 11:26:57.5983 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qhJsKX7P9VXhzmNbBG12mZaVa+WVTMEGh/zBdp2siM+rZbbUGhNLCwn98GQ9ZaH8UdrGN9BhY0hck5RZG7p+fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8366
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Nemesa Garg
> Sent: Friday, August 1, 2025 6:29 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: [PATCH] drm/i915/display: WA_14011503117
>=20
> Mask the ERR_FATAL_MASK before scaler initialization.
> After enabling the scaler and waiting for one frame, unmask the previousl=
y
> masked bits, PS_ECC and ERR_FATAL_MASK Unmasking of ERR_FATAL_MASK
> bit is use for validation purpose. There is no functional impact.
>=20
> v2: Remove intel_display_need_wa[Jani]
>     Optimize the ecc_unmask call[Animesh]
> v3: Add intel_display_wa[Jani]
>=20
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  6 ++++
>  .../gpu/drm/i915/display/intel_display_wa.c   |  8 +++++
>  .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
>  drivers/gpu/drm/i915/display/skl_scaler.c     | 29 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_scaler.h     |  3 ++
>  5 files changed, 47 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 7035c1fc9033..c1a3a95c65f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -76,6 +76,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
> +#include "intel_display_wa.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
> @@ -1081,6 +1082,11 @@ static void intel_post_plane_update(struct
> intel_atomic_state *state,
>  	if (audio_enabling(old_crtc_state, new_crtc_state))
>  		intel_encoders_audio_enable(state, crtc);
>=20
> +	if (intel_display_wa(display, 14011503117)) {
> +		if (old_crtc_state->pch_pfit.enabled !=3D new_crtc_state-
> >pch_pfit.enabled)
> +			adl_scaler_ecc_unmask(new_crtc_state);
> +	}
> +
>  	intel_alpm_post_plane_update(state, crtc);
>=20
>  	intel_psr_post_plane_update(state, crtc); diff --git
> a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 399c08902413..31cd2c9cd488 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -52,6 +52,12 @@ static bool
> intel_display_needs_wa_16025573575(struct intel_display *display)
>  	return DISPLAY_VERx100(display) =3D=3D 3000 ||
> DISPLAY_VERx100(display) =3D=3D 3002;  }
>=20
> +/*
> + * Wa_14011503117:
> + * Fixes: Before enabling the scaler DE fatal error is masked
> + * Workaround: Unmask the DE fatal error register after enabling the
> +scaler
> + * and after waiting of at least 1 frame.
> + */
>  bool __intel_display_wa(struct intel_display *display, enum
> intel_display_wa wa, const char *name)  {
>  	switch (wa) {
> @@ -59,6 +65,8 @@ bool __intel_display_wa(struct intel_display *display,
> enum intel_display_wa wa,
>  		return intel_display_needs_wa_16023588340(display);
>  	case INTEL_DISPLAY_WA_16025573575:
>  		return intel_display_needs_wa_16025573575(display);
> +	case INTEL_DISPLAY_WA_14011503117:
> +		return DISPLAY_VER(display) =3D=3D 13;
>  	default:
>  		drm_WARN(display->drm, 1, "Missing Wa number: %s\n",
> name);
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index aedea4cfa3ce..abc1df83f066 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -24,6 +24,7 @@ bool intel_display_needs_wa_16023588340(struct
> intel_display *display);  enum intel_display_wa {
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
> +	INTEL_DISPLAY_WA_14011503117,
>  };
>=20
>  bool __intel_display_wa(struct intel_display *display, enum
> intel_display_wa wa, const char *name); diff --git
> a/drivers/gpu/drm/i915/display/skl_scaler.c
> b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 4cc55f4e1f9f..1374fa94ff5c 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -10,6 +10,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
> +#include "intel_display_wa.h"
>  #include "intel_fb.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
> @@ -762,6 +763,9 @@ void skl_pfit_enable(const struct intel_crtc_state
> *crtc_state)
>  			crtc_state->scaler_state.scaler_id < 0))
>  		return;
>=20
> +	if (intel_display_wa(display, 14011503117))
> +		adl_scaler_ecc_mask(crtc_state);
> +
>  	drm_rect_init(&src, 0, 0,
>  		      drm_rect_width(&crtc_state->pipe_src) << 16,
>  		      drm_rect_height(&crtc_state->pipe_src) << 16); @@ -
> 938,3 +942,28 @@ void skl_scaler_get_config(struct intel_crtc_state
> *crtc_state)
>  	else
>  		scaler_state->scaler_users &=3D ~(1 << SKL_CRTC_INDEX);  }
> +
> +void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +
> +	if (!crtc_state->pch_pfit.enabled)
> +		return;
> +
> +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0); }
> +
> +void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	const struct intel_crtc_scaler_state *scaler_state =3D
> +		&crtc_state->scaler_state;
> +	int id;
> +
> +	if (!scaler_state && scaler_state->scaler_id =3D=3D -1)
> +		return;
> +
> +	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
> +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0); }
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
> b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 692716dd7616..f6fd70af93f1 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -44,4 +44,7 @@ skl_scaler_mode_valid(struct intel_display *display,
>  		      enum intel_output_format output_format,
>  		      int num_joined_pipes);
>=20
> +void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
> +
> +void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state);
>  #endif
> --
> 2.25.1

