Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 997C7A4DDD5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 13:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB0210E5A0;
	Tue,  4 Mar 2025 12:25:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fgq/tAcL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E39010E5A0;
 Tue,  4 Mar 2025 12:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741091124; x=1772627124;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JVSw8IFEfmkygN39zj0rL210+rImAomnyTHZ86SCH6E=;
 b=fgq/tAcLVbtdqL0ghZbuh/9ORnw4gXNdp8ZYKXPbx0GhHNHqMr9LBy2w
 iFjvnTCxhak/GjOGxC05QVrpnrZu+7qJ+T1mgCQ/Jeel9LlKiN2Gce1BP
 auB96PBZPCPQyAb4ApgkeDiv/yDwi2qygYduYxAaNw4J2Tevz9yGVtyN6
 nc1cz8+XI/fnTAGVorZHl9UJrYztPTMJLTXTN5CPW7iuKUbFEBSlgVYWi
 eQahcSifmkBPxHY/rf/TaKRyPYf2F6pq0tUY/mMrQuHXb0rbnAevh/QiZ
 /i0mR4UZt3EBmG+Nl3uYecjpqoxfQAYDwM1yTtk3l4BQp2gRN0aWe7MSz A==;
X-CSE-ConnectionGUID: 3EBaDzrzT46f8OAWs0NI/w==
X-CSE-MsgGUID: GY/RTaXoSA2SetxpDzMZCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41253155"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="41253155"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 04:25:24 -0800
X-CSE-ConnectionGUID: PlgEplHETgGqUTljp07FCQ==
X-CSE-MsgGUID: 5BWRR4cCQ8m+gVL1Bc/cEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118359108"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 04:25:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 04:25:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Mar 2025 04:25:23 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 04:25:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GPJFP2snYtIqrAkEOHe99GLPP0dcbr5ON3VrRlbRg1MWZOAUYgG1UzzkSAsdhZShSeIssVMlbjKiXBE/+RDV+ZwfHtJuzlI7/myAy1Z3SoIqX/MTWFrEdRZmV8m22ZhSDgDqdnkbi1vpeyI9e5hDg2+mnPWQeTjfSiJ59x5/mRjFP1ogBVoYtZy0598jkADFi57ngXM+T0B6VFJIbmEG1M85CUgVKPmiCcgVmL4XjxleGCZKyLMZTnFKC0c/4KxYy6Mby6axZQ7mhKls/vu3HANanY8zLRo+ujUcLre1F7aXZuOWdFaJW7fFESOKd4rL/BNC/ntdw21hfimgyzv4Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w6JtfnB8uzGYIilNbsdsMZy3ZRFQMO7NKKBxuJpkuWI=;
 b=eZFu+m6Fz8EeyYkHWzrLxQBB9IHekTzjJGCbfUi/DLxB0I87xh23H2jB5Kwk/nyhFKsVUteUTXbTkH07IG7Bsh0Vj3/AehWrHBP8TJ22LiSdt5gmW/dG2qEd8q1xbOlGXZ9LuGG7O8jPyUSniJGGAXmBXjavjRPc13jMmrPRliAEGxlzwRsWlpX3IH265lsR1qlBfjYjMq+QfOkxu5iTlhMcSTxFbOQ27SfP+DrelAbjhvL9bjVJYoFZF3bjCEoR0HhhDIxt9zBejndREMCr+qkFCodAe2vdfvVNNJBYtTNwYwFPUgbXrePVhLFYqNolzcWqY8Tm7qaqcJx6C++tMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH7PR11MB6699.namprd11.prod.outlook.com (2603:10b6:510:1ad::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.16; Tue, 4 Mar
 2025 12:25:07 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%6]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 12:25:07 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 4/5] drm/i915/display: remove dupe
 intel_update_watermarks() declaration
Thread-Topic: [PATCH 4/5] drm/i915/display: remove dupe
 intel_update_watermarks() declaration
Thread-Index: AQHbjPAucgzzEy6XxkegHj5ubdSHl7Ni5vgA
Date: Tue, 4 Mar 2025 12:25:07 +0000
Message-ID: <IA1PR11MB64672CCB5F58C91498AE4004E3C82@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <cover.1741084010.git.jani.nikula@intel.com>
 <67eeebff3ec9459f7854fbc56cfd7f2aa8c1fdc6.1741084010.git.jani.nikula@intel.com>
In-Reply-To: <67eeebff3ec9459f7854fbc56cfd7f2aa8c1fdc6.1741084010.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH7PR11MB6699:EE_
x-ms-office365-filtering-correlation-id: b77cf8be-0ca5-4ed6-8c98-08dd5b179965
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?frYuIu3u/EBCoKQfibJ1EC7VuoM6d9kAr1yi7Meizw/kldt9/3ZO/sTPGtQt?=
 =?us-ascii?Q?eTNw1wo61DBe9PWzfCLWS3d/DT3ePCNaVkhH2Kq0F7M5vtZiDoSbucy5Qoer?=
 =?us-ascii?Q?1hJY1Ky7YnpnUk9tvrF2a7TAWjtnrugxHyDeAs7Mb339vEkck4o5vo5ka9xK?=
 =?us-ascii?Q?7imqbkcZSyqBbWCUoayiDGElGBJFjYl1Zxi9/EkEMgQFbk43Bqwiosn0Kb6q?=
 =?us-ascii?Q?y+92SvuMqkPEIBZoGNaf4Xwlsg3XqCTKf0HenlXsJ8PtW18M0ttNDG3a2yQe?=
 =?us-ascii?Q?hYkltYoJ+ecETf+fjRYCwmPIXem54i0V6nRoencbopNw6ro6OYdjFxXRvdkJ?=
 =?us-ascii?Q?s2XgcvjEIoMchRp9/WpZZrXJfxrDfFEEWwFQJUVVIT/5Dr6iGNc/Zx+1cKcX?=
 =?us-ascii?Q?fPVIRGT6NCc8VKBsvzCEKv5NLvhideCKDgcXJcW+oVtUDnbQOVqYrfrvQu0V?=
 =?us-ascii?Q?NCjey0a6oGakLoT9WLa0I/EARqGWonHTbizxU5EWXoY7EM+ZkJP6tanOdcS2?=
 =?us-ascii?Q?w7AYm9P7iGYajgV+XEU+eDDgUnhab7+p3sTAj6K63P9LtdCDcnFLAeAk7v8k?=
 =?us-ascii?Q?zkMIr+FPGHjCQF4dhyqqdazEfUZEFy6N3470DJPSqOnx+9pO7yd7DX7dVQhf?=
 =?us-ascii?Q?4hFlzNFhoBPI/iNsi3tMVk5/9Sp95XP4QeSec00McKfzZAAHBt7vheOY2wyy?=
 =?us-ascii?Q?XmnK+HuC7pRt2j82Gc7euLhSmOISjvjEvzq9VAmzuo1yggg+lljBg//cvliH?=
 =?us-ascii?Q?Simvim0DGmNbmXDIT8jeSYjbmEwBn4/x3RwZE31XDnlHmks6TcflqmgPjLor?=
 =?us-ascii?Q?WKHpks+P+XUIDsoUGQB661rdZS6G2QpRAsJWhRn0QTAL4jkbiuiegASeUX36?=
 =?us-ascii?Q?WDbgZy4cUVqYfUncnjNrKVbH2uWobUlAdGQB3SyAi5fp3i+nlVV+5SnWuVpV?=
 =?us-ascii?Q?oT6qcdcsOS5Fn1Jzn9GnA0xzJyZKB3NAyHDZxPnobwPiKAU1GRqCTy67KhMk?=
 =?us-ascii?Q?eQb8h74U7XC2RsF8KxL3wyKBZxV4I+p88Ol4slxk8SUV3CjfEtSk7msEab2d?=
 =?us-ascii?Q?22RlLl+4H0xsD2+O/g3qqVI0tZpZhuVwti6Z2SloweONCbvOn+n14lv4buso?=
 =?us-ascii?Q?9R6cYLZv2vRwz/3OvwsCJEmpWCkLvorDEe0vakdKLYkxRyvRjRdoz26R+i58?=
 =?us-ascii?Q?ycSd9uYPfHa2zwgX03YTHwma+ZB5Q9yBVq+OiqM2ybtHT8doJxgX+by8lnyd?=
 =?us-ascii?Q?ETsolO/tk51yBgiYxGC9rjAPdgk8zxH6mnFfY+fY3KSLfl2vgqjFhEz/UuHL?=
 =?us-ascii?Q?bGtjJ17m90IddlYuMg51W7jQMbun6SD8Hhnx2tMNJadn0VjJrn2Sfy0iBDxx?=
 =?us-ascii?Q?tKN9ltNDGgTsSIVRBZ2hnlEia+XqJtQUXoHeF4rOMyuIcWTJmZmhuQH8H6IS?=
 =?us-ascii?Q?9O9pQXrpBy4x7uXtQ90+ftjxsRnKkZN2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yWPirxTTMPAonuVbtB+zYcDhVXcwMPy7Phpcffdtz3fEbS/fl/Ysew0gtFAw?=
 =?us-ascii?Q?8iM2y5O039CqQpxT9NRmMlH8mrWDbPX9ipKwSEK9xp3ur5mM0zFzLvH4/1dx?=
 =?us-ascii?Q?0sZeput+uiDd6VMb3QUU9eRYkXg2HJ3n9Xl8Fmn5xhy1R8SZdo3ZvzHx2Qdu?=
 =?us-ascii?Q?YyFBvs3Ob4+Uyr5yOosniNVpt6K/a+IRZf/U41l5jKSDRbcR8U2dxfsFkNab?=
 =?us-ascii?Q?JiE5Pv0iLks87O6V7CMfc8dSv1E2iUvbe+/xeH6rQxyYxSONqwXVZrqtxxB2?=
 =?us-ascii?Q?hACrJLIvTlbBMrGfq+XQl49Y6nKVApdv/26D4j81QCQpkyr6LLimqN5hhTBR?=
 =?us-ascii?Q?i2XqcPhd7UNlATY73raZDjZf1fGegzoOagQrifjg+X1Xu6E9TQxUTP4ApuBM?=
 =?us-ascii?Q?Mnij438UWVV82op+x7Qli3TumGuY9QKkoNnTaQNrsE8ce/W6N4IWBBVIUINq?=
 =?us-ascii?Q?SLLrswcngz7hvR4xtKamxZ43lO6SwyjHJpAfdep11xWyxhTHriXG2KWng5a9?=
 =?us-ascii?Q?Hw+SDBqFwFV4TyUnm3RJrpNI1ig4LGzzptnBtBa6b9ra7ax2rtbY5hKXY5Jx?=
 =?us-ascii?Q?G4pjk1g5FaCwK04uDvPe/ICQa3x1Tod4opTYF1M5VsmAfFmPuZ5n8INbIluv?=
 =?us-ascii?Q?K6qD8NtsPUTRjr2d5SqacL+ntlP7BqBRwLWUDERN9+Po0nhcg7RjzU3kU1fJ?=
 =?us-ascii?Q?DBcwwN+vXf5wIK4BvkAiAx1i1XWZyf5te/tQtK8V5pff4fAz+9yYvheKC+mN?=
 =?us-ascii?Q?X0p4KxncYSNfGrekzhMuSIqtyhXAKbFOrumnicnEEr+vVNSkRTDQDHs2ZT8V?=
 =?us-ascii?Q?Y2cJxxM5W/dx6Fb3tcr1gBuyNEAMlsC6eJTCIMcAH/8kgSPj8mu2aRGMXHqx?=
 =?us-ascii?Q?zOxtB2QzW2fvkhKaDbdyZTUZLZgMo6o68qbWmJY4xR0BS6CMocRuS35tp3op?=
 =?us-ascii?Q?OR6TWEgBJGDxc6L7Zqmcb5eEF6cjTGit2IrEfTAEOMYqKfXfnffDS2qVbAmv?=
 =?us-ascii?Q?Ko/v/YkDonaW4CweVYuppJ+TTp9RcxAQ7YVlIDu2lC9+Tc32uQ8TFwXdUGVU?=
 =?us-ascii?Q?8oAJvnl2R82W3JBRsqYGXWwnhp8+nD2p2crd8lS2XVD/pWYm0A6avLgnsgvC?=
 =?us-ascii?Q?fAhz6zQPzgeitlUDlwt5Bw38u+KQBNGuxLSrgQUgTa9zIGymhPGl9t5GxOpW?=
 =?us-ascii?Q?c5QIR9FNYTs1IyVSrW1KOcQy4jiVX0cfk+matVqkFK3K7b1F4fNfR9UQ19PQ?=
 =?us-ascii?Q?x6at9W3glBvnkNdK3PyyZdlqTJrRgOQMsxMp1qL00OXzfagPrhFjoBxR9I92?=
 =?us-ascii?Q?R990kyp+h5AvZ7NHHbMkbn01534GGu7UIXx5QrmWlJJKe/OFUukQAfpHHJwW?=
 =?us-ascii?Q?7PYCEBSaAUa3m0/plPseB5RI7VceNYcmFEeSVBEUPTMhj4HW/QnI6UCORvHY?=
 =?us-ascii?Q?gyjVEcR8s8dI0miMH0kXy5/+7VwB/mZAsX8+O7Cd/w2mGiUbfPJb+xnAEutu?=
 =?us-ascii?Q?ibvk2KmmjU4eMOUmE9bi3ic2Z5pEg4zeIP5l5WGQnlOp8J/TYZMIC/pb42Me?=
 =?us-ascii?Q?ids/4rrSbBENX8rgS/wp5pSUaBlDiofXwN1AX8W4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b77cf8be-0ca5-4ed6-8c98-08dd5b179965
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 12:25:07.1883 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K6g4vhL1P97o8xVXOFHQgAcg+ND+A5cyq9YgPlV+8b/LJo5SsXNIKsJSuyEpmiyAE6+znz+Y5N2UbLVorhbm/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6699
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
> Sent: Tuesday, March 4, 2025 3:58 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 4/5] drm/i915/display: remove dupe
> intel_update_watermarks() declaration
>=20
> intel_wm.h already has intel_update_watermarks() declaration. Remove the
> dupe.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.h | 2 --
>  1 file changed, 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 65245ef04347..3b54a62c290a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -521,8 +521,6 @@ void intel_set_plane_visible(struct intel_crtc_state
> *crtc_state,
>  			     bool visible);
>  void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
>=20
> -void intel_update_watermarks(struct drm_i915_private *i915);
> -
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
>  bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
>  			      struct intel_crtc *crtc);
>=20
> --
> 2.39.5

