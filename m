Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6DD993716
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 21:18:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2069E10E411;
	Mon,  7 Oct 2024 19:18:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wsd2WOc8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9EE410E40F;
 Mon,  7 Oct 2024 19:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728328691; x=1759864691;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NSdn+zj/RRtnV7fvBtYlcoeLM8Z36Iztll2lDl7y9+s=;
 b=Wsd2WOc8gndudWF38hnCbjIRjvw/jOym9MM39DpzAthr4QJuEqNHHYiw
 QExUTOLCrHreFOJV6p/cAsCWW4E8t9fDFfXhk8FPq4Gxk/QCuVbQjpekb
 bf6LKLqzXWuw36yk6M7wl0jD97E2IhegKtRIzFqbYnYG7Z9jo09rl3+v+
 YzJGRMaLezTMqQ5EZ7qb0x0GrNnIympMf981CB11BDpRdaYKKrcwkHkRq
 ZKL60/o60h7ZjtEMu8wj1KFSN9fOsNHvbcczqQ7rCJw/uuSy0/bbxoVTg
 9GYUn6SFpeFGgHZDPeuKG76zexXJ+6L+32knsemEkQj9RE0INTAl0XNOp g==;
X-CSE-ConnectionGUID: uJPRDSEERXGjKEndqEaiJg==
X-CSE-MsgGUID: f6BleT25QnaPlOeJT14iBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27373661"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="27373661"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 12:18:11 -0700
X-CSE-ConnectionGUID: fBw0UBl9SvmJLNKVMh70Ng==
X-CSE-MsgGUID: uzoJ2xnLR2aKPxL0VrzWGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="79994680"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 12:18:11 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:18:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 12:18:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 12:18:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gp2peq2B82tXas7uaFohiAGdYfSE6f6atFnWMacnWeROz2GNr9nXNALyfJbiH+y7mrl7vUXMvJpN8rZor5YWyde9AT13XCuwnjXHzrHDBDSvyMSgDIKpCIeWyLTUfoJsvHcDoKlOMzU1CcNheyQN8yjcI8qCH5i6RsH2KJQoqAq1aWSjzI8R8bVguRKwBA3Mavbm4C7R6i340xxuI8/kwszDdhJ3hVELwQNEQCtwjH5NOBRxBgteZzJ/TjBDLLI6PC4WDWSG+8g+pUXsY01U2SLWledi9vxJS3Yusegmyx6K7UqFjihcpS/Jml1bXiWahWQRuiMZHEIlS/VWDkBrRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v9BnTUuGZrENFDQvSKFIssqmg7sy81pJ3wFH9MT7pj0=;
 b=Gy7L1ebjTk8wRlVSpuiO3vWapdutIXzpN0qVZwiOzMaISsiAai3W/jrNbuMCQrF+0tsVkKywLuflrZn9nTK5nnVCjfTDOiWV2js54YC8cleU/efzc/gUW1qxmPDy09FedgwNqXOF0cr2LwyS093mrfpJ8g/AwWA8ZWI4jh3jgrTsDfR88/sb9FOxKhAyqq4TY5gSIWaeWwBhE+MpY1/R83NDLjBSXv4508cmzybbheIKlF1Yx4r9UyLWWyOIv5Kbjopk6bKzq3nMPs+uxWfhs/t4sq7Vnp+OZcknKtFLazTpcLD4mGC2v5MDddIZ7qIVQoMR5PA+DuZpF1oqahT49w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by SJ0PR11MB4925.namprd11.prod.outlook.com (2603:10b6:a03:2df::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 19:18:08 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 19:18:07 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 04/31] drm/i915/display: Move shutdown sequences under
 display driver
Thread-Topic: [PATCH 04/31] drm/i915/display: Move shutdown sequences under
 display driver
Thread-Index: AQHbDsJbcbqXMAicSECLAoUyCDFeurJ7vYdA
Date: Mon, 7 Oct 2024 19:18:07 +0000
Message-ID: <BL1PR11MB54457E040EAC4F3E202D4D09E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-5-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-5-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|SJ0PR11MB4925:EE_
x-ms-office365-filtering-correlation-id: c93df5be-405d-44d5-2dd6-08dce704c6ad
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?dq8iYRMzmKf7nrBHUR9DCD1y3BmvlkCQmw6qImYmxsJRK3AtbyDNlK1gilRv?=
 =?us-ascii?Q?w4Q/EfDSLmkd5IThnoX3y7x2KXQoo1J8A7n7HKUSrNUIs/PB+ydRaI3UBbYM?=
 =?us-ascii?Q?4JGmZO46PyjnOjlRScJkFyBdL3T2I/e3L1vBrCTy56eyc2RFqs5vgcu5riHR?=
 =?us-ascii?Q?RQ6tOU5l4uWjiYD8oBYiPDNKa6nUjWWbB3FsZX41wuVvqxXwvvd2UndacQ+y?=
 =?us-ascii?Q?eIPHfC4KUH1raXBi4HhuFBggJ3xNhMzYrznNiYrzki6A6QOnb0ctFellolDO?=
 =?us-ascii?Q?2N0eg58s+eyNuMzw8ZrOslyABxynhEydK2fsMXr1bgHKjPjN76kI4itVGDJf?=
 =?us-ascii?Q?WyfkUNB51POtqP+WdI6uAhIPNmYwCcEBAXl9166tO5KMAc3uRT4E5UmeUB6w?=
 =?us-ascii?Q?/XV2A9dG3pEENkmSdohGheXUBqS04GxvCnS+SctKLe46jzLn1/utvvNUYc6E?=
 =?us-ascii?Q?1LzxB4iVO1IiXNXZKe/yIbziWwzo3qzVjRxJE2FYrXgBKPj93hziTLDakMXc?=
 =?us-ascii?Q?koq3zXbrxa+gDWBVi7X2+vupuVFCkfe/c/vW9Qhw6hxyDQnKL7kDSDkpppw1?=
 =?us-ascii?Q?dRBfitNFrigHkhc279PRFCHbc1f0o77L+t0igbSefj64+eJMnrSz3h01rjL1?=
 =?us-ascii?Q?8lFZx0H14u2CSKl7oDj9EpHpxK3nOg90EUrzauzFTf7//8DwoQqo6CTtq18k?=
 =?us-ascii?Q?vqeB8g25mdxNJ2ZTt2q4qp64iwS8xhKa5/CiF+kmzo85DfuTM1XbNi9NTjEx?=
 =?us-ascii?Q?RMoHpuHYjoDvjcfM4NrwIFWFsqWp4P4Ck4ZVPBt8m8XEQ2bL4E3AU6QLmWiy?=
 =?us-ascii?Q?GeO9sm8B62O9rWWFgqv6altulbm8OkgHmK4BDLD2tecQsDDKcxGiT+UNQ5/A?=
 =?us-ascii?Q?ALfA13fxVdrD0Jh/qWjEc/+oDYNXL32keWQLCnZKyPtRjQrudkk7FY4dDE11?=
 =?us-ascii?Q?dqaE/I6GF/nGZkotSVlWQdgwVcvmjROST950I8UXwQagmK65ZoxaMABJvQs0?=
 =?us-ascii?Q?HzsCT5UIXuOAqQrV0yVRsloP3tQTq7uuLgBl+P6JRdDEft9VwcbES5QkA87O?=
 =?us-ascii?Q?mKU4fBe8ZDEVyj4HAxxnSwTJruXaYbgK7/U/jUvEvQX5oIZPSr4oFQceIkBH?=
 =?us-ascii?Q?yTJe+pRh1A8KKlznh7xpsphzlpHa2/v/yhShnOeowciH0HzasA8E3LOUkLiU?=
 =?us-ascii?Q?cvBzid/rNv85KWAUAICARDYgsMfbNmMVZrnRCklbymgVn0iNdXoaVl0fkcAj?=
 =?us-ascii?Q?aIVa+SgT2NECFPgDEIxfr1gSKDCpkFEGVma32OHlMZIsLGE98BKpQzIIfDpy?=
 =?us-ascii?Q?EB65RqgO7uPiM/g6YnrvlguEZv3ssmmHO8NqGV/j0gPYpQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fiw0wf1teE9fIctJBdsetAIw3la/pilZQTk/HFVPqv9GTTm44Dne8tQPoTW5?=
 =?us-ascii?Q?vAw44+SdA93GU6IzB0+xGmgMEOyYXqS0LV3OJPIwEhKuaivDWlFqKW/73Aqx?=
 =?us-ascii?Q?EjVASJfoNpMwzl2DgnGD+wtSVO35VL/8JvcfbLirMXkJ7IqCpXSa+Ngm14ta?=
 =?us-ascii?Q?vfX7J2AQT/+uqAMhUQoXCsfrELEDZVd6RbosQHkdGAA7c0SDY5R2i+Esy2ne?=
 =?us-ascii?Q?bhipgMZ/lqb5Dz/2RVy4iZ3CU9pATG31+V9NxA1GE0KLXwCdGdm1zZry3OK3?=
 =?us-ascii?Q?+joGWCKpt2xjzpMCvzUlfufOrLvRbuTxAA9bs67lGZ6AE2g/T+gkVXo82UWn?=
 =?us-ascii?Q?S+LuJSZRXqnNS9p2jJoFBlfyUAMwg4BjWhH9cNgE+ijuKRxhK6dGZNBWFgq3?=
 =?us-ascii?Q?19UVtogHeRlLkyAaOK876FbfbkmIkLa2rnZe+KBvqcZxtTEHLadxUOSjYrXG?=
 =?us-ascii?Q?dLGlBCgpO9uEe87IVJpHNqI9TsGSOFhg2bMYP0jPqr2hmuE4koH1njoJv1EX?=
 =?us-ascii?Q?CxfrMT8aOfoa163Oau3AIkx1GMYF8FP/PROZgsz1jv2BwAKDVw+4znDSX5Wa?=
 =?us-ascii?Q?PDMAyNvKmRrgF7xlt6ycot944xhqng253777Iu+iAt9rxxQRKxnZvJ5ULAYh?=
 =?us-ascii?Q?lkWlMXOl8EHkKmB5h/G/McYsMu/mb9ICLwXn8ChTtNC2F/hOpvf5wJFV4jwp?=
 =?us-ascii?Q?y1hoxZ3FDFLR9vproqff3ezRC2/qKc0mum22+inLG7fhzakQnv/+mua9tj00?=
 =?us-ascii?Q?sl6HGTLETh0nXfX5kHFgUjI6hbV1LDTI9HLVrfax0QTEE64VGZhEbqUvK0z/?=
 =?us-ascii?Q?2ufmLceeBSubpCAyKeRKqGwvE8O5rf4fwVYi6LT8ngDdEQ/J85AalZ0+k+CI?=
 =?us-ascii?Q?cFD1ZFATKETCspP3V4DSLe7kKlbc6FZGE0sC7mX5lszRcoP4GP2PKNkWLqQz?=
 =?us-ascii?Q?oOFmbqHcGAGrLqk+Amf0y9yiVgIx3wjptuG/y2WbPSz1hkcsA2Ft9FlMjT5O?=
 =?us-ascii?Q?MT2ByKOimDPCOclVLAtRcydKIW6raw5khleFvxppA0SIamW5BA1eYZ4o3a3U?=
 =?us-ascii?Q?c28ulKbgMSJBXMtkPSIiwnMKJCX7BWwfxh8Fm4YLC6AsMlBmkUVY7mRynW7K?=
 =?us-ascii?Q?1Ct5slbZcKbdFs1HE7Yq8SGIKEZXEWkyPcKaSSU4rPpRCfllKXBPJ0bvPFOi?=
 =?us-ascii?Q?hBfFrgUiuFnqpTBsSwy42aWDBB7ec4bAVzsod1Nwsvxga3voBP8u450aT0NW?=
 =?us-ascii?Q?mpFgiESqS1Mry8G/Awx5TqIskutRyFBuReDZ4fwBPGAEopvTJ0GWJpwzPm+4?=
 =?us-ascii?Q?LrtSdpLYEAD6t8Y/1g54l56ekluj/KS+s+dne42ngafW9EAnOJDJ7urZnUZ/?=
 =?us-ascii?Q?dbolbzUWM7og9LyuLPPOS28Bsg8hDItcxb0Lq6bgyo/2pbn7Hep5lBstyU0D?=
 =?us-ascii?Q?EyOSZr3nRRpq8KVNsooZpa8CTreCs8OpmUySYWhhsk5Qa7goj6VETpGiTHav?=
 =?us-ascii?Q?y5dQsfJgcL9xa7CKouiNykB62wUMoe+Vz7so6CexVv04lkTR85ZrNNCGQocb?=
 =?us-ascii?Q?swXxw8Yr2TKz22iVsQHfrBEbdn1WzAJ042zzpX7YEDDd8xnkg8nQ9R3HvpP5?=
 =?us-ascii?Q?cg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c93df5be-405d-44d5-2dd6-08dce704c6ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 19:18:07.8809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +NTa1D0TZrDnuC8qw9g7/28KDCgBeYxhkqqPf/CNlq8Tr62UB/kNOpw3RpVl2b093Ulf6MWT1t074THF7PSpOZ8n9hmjMUXQTlZQs9AZiP8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4925
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Tuesday, September 24, 2024 1:35 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 04/31] drm/i915/display: Move shutdown sequences under disp=
lay driver
>=20
> Move display related shutdown sequences from i915_driver to
> intel_display_driver.
>=20
> No functional change. Just taking the right ownership and
> start some reconciliation of them between i915 and Xe.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  .../drm/i915/display/intel_display_driver.c   | 40 +++++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |  3 ++
>  drivers/gpu/drm/i915/i915_driver.c            | 29 ++------------
>  3 files changed, 47 insertions(+), 25 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index c106fb2dd20b..e40b1105168e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -39,6 +39,7 @@
>  #include "intel_dp_tunnel.h"
>  #include "intel_dpll.h"
>  #include "intel_dpll_mgr.h"
> +#include "intel_encoder.h"
>  #include "intel_fb.h"
>  #include "intel_fbc.h"
>  #include "intel_fbdev.h"
> @@ -755,3 +756,42 @@ void intel_display_driver_resume(struct drm_i915_pri=
vate *i915)
>  	if (state)
>  		drm_atomic_state_put(state);
>  }
> +
> +void intel_display_driver_shutdown(struct drm_i915_private *i915)
> +{
> +	intel_power_domains_disable(i915);
> +
> +	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
> +	if (HAS_DISPLAY(i915)) {
> +		drm_kms_helper_poll_disable(&i915->drm);
> +		intel_display_driver_disable_user_access(i915);
> +
> +		drm_atomic_helper_shutdown(&i915->drm);
> +	}
> +
> +	intel_dp_mst_suspend(i915);
> +}
> +
> +void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915)
> +{
> +	intel_hpd_cancel_work(i915);
> +
> +	if (HAS_DISPLAY(i915))
> +		intel_display_driver_suspend_access(i915);
> +
> +	intel_encoder_suspend_all(&i915->display);
> +	intel_encoder_shutdown_all(&i915->display);
> +
> +	intel_dmc_suspend(&i915->display);
> +}
> +
> +void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915)
> +{
> +	/*
> +	 * The only requirement is to reboot with display DC states disabled,
> +	 * for now leaving all display power wells in the INIT power domain
> +	 * enabled.
> +	 */
> +
> +	intel_power_domains_driver_remove(i915);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index 42cc4af6d3fd..1ee37fb58d38 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -26,6 +26,9 @@ void intel_display_driver_remove_nogem(struct drm_i915_=
private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);
>  int intel_display_driver_suspend(struct drm_i915_private *i915);
>  void intel_display_driver_resume(struct drm_i915_private *i915);
> +void intel_display_driver_shutdown(struct drm_i915_private *i915);
> +void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
> +void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915);
> =20
>  /* interface for intel_display_reset.c */
>  int __intel_display_driver_resume(struct drm_i915_private *i915,
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index ae5906885359..38c845ad86e5 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -939,43 +939,22 @@ void i915_driver_shutdown(struct drm_i915_private *=
i915)
>  {
>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>  	intel_runtime_pm_disable(&i915->runtime_pm);
> -	intel_power_domains_disable(i915);
> =20
> -	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
> -	if (HAS_DISPLAY(i915)) {
> -		drm_kms_helper_poll_disable(&i915->drm);
> -		intel_display_driver_disable_user_access(i915);
> -
> -		drm_atomic_helper_shutdown(&i915->drm);
> -	}
> -
> -	intel_dp_mst_suspend(i915);
> +	intel_display_driver_shutdown(i915);
> =20
>  	intel_irq_suspend(i915);
> -	intel_hpd_cancel_work(i915);
> -
> -	if (HAS_DISPLAY(i915))
> -		intel_display_driver_suspend_access(i915);
> =20
> -	intel_encoder_suspend_all(&i915->display);
> -	intel_encoder_shutdown_all(&i915->display);
> -
> -	intel_dmc_suspend(&i915->display);
> +	intel_display_driver_shutdown_noirq(i915);
> =20
>  	i915_gem_suspend(i915);
> =20
> -	/*
> -	 * The only requirement is to reboot with display DC states disabled,
> -	 * for now leaving all display power wells in the INIT power domain
> -	 * enabled.
> -	 *
> -	 * TODO:
> +	/* TODO:

I think it's supposed to be:

"""
	/*
	 * TODO:
"""
But otherwise:
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

>  	 * - unify the pci_driver::shutdown sequence here with the
>  	 *   pci_driver.driver.pm.poweroff,poweroff_late sequence.
>  	 * - unify the driver remove and system/runtime suspend sequences with
>  	 *   the above unified shutdown/poweroff sequence.
>  	 */
> -	intel_power_domains_driver_remove(i915);
> +
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> =20
>  	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> --=20
> 2.46.0
>=20
>=20
