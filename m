Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DA564C369
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 06:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 774B410E21A;
	Wed, 14 Dec 2022 05:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A1A610E21A
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 05:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670994702; x=1702530702;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hHtLNE2iBEZhyWmf/0N1WP7YU1cXASA+rP2mBe6sZV4=;
 b=OQebuikhHLN9l5QWhMqasHU0ZVoeNaxffv4cLNeADxjJqNmbGxg3WCKC
 Nx2ldJIp+RTEL0+/MQl7CmkihbRm0I7wYr1G+drelS2mF6JyZ/CYMQcNy
 9GfsE+vjSBLGBdHB2uk/DCNKFNGXqtkBCUfm5DDFy8M42sgi/LH876FuV
 HV9Mdv4D1Srdch+zqKnihcWjHGadlMQRN77lcEu9ffQkcel2GSWErox6m
 cxWs7Lc/5N6myPFsweC1rWMCN4vobmeHH9X4xuaRcu7/9Em3JL7LizSqm
 0VRO544+qDz0rKcw7trlHMR5h5LYwd2dKxqRarC8jfbJ35n+dg0utOCG7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="380518704"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="380518704"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 21:11:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="642381766"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="642381766"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 13 Dec 2022 21:11:41 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 21:11:40 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 21:11:40 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 21:11:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=doOt3pOZX4wbdKP3uS/2qsKiDsPJSmMp7J/Bu5gnq9pH2E8jnC4tn3Vnfg0sDLz8+gfqDFzn+YdHMgBUabYqvmjgahhGlBCHKWKnlQSfKSYIGzab4iadFensHzcldJs5AyNIYSLLf9+f7H4bb9woVL9g9y6ehDrVDS+3+DLBozlyAXpnrPB8p1HE5VROyt8CThEXp4aWuO2guYHfQEXwrI0+/u5JZd9YDjt7RYiw6paVYjbmK8ILlqbSn8Nn3K3A9QY2VW52b9nhXRXRuNes5nTH87L/fK3fR+L4jyK9gcH8h+w21ddbhnLqbpEoKdC6yFfccmD8gnopSngTZmEl8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FbqHnbCSnzK8nMDCYvlE0SPWls5S9ec16osIfSweWJg=;
 b=ncOzHIHpVRjX3G4lAXVS8qznq3zCVTiuaYJQ0NjUs6HoVQQHc6mTn389c/+dXPZq8PvFbnRSURCM9apbHqYnAZQdIqBuNtuulPFC2IY4mWzxldz6QvvoGakLPQMK3+orkGQxG41hdk+70H20Dqz4inOFPF22G6tW2urZHXrbxpiJRWOxIf9YE2ZN8JP2oIpfM4J5iCl7RvWEJ/iSgECCDw70XBlxB26/0WLtd2EwwO1H30NriLxCQk+hTfhk9enLJlXcvdYW+8sHW5KzaMHJWOOULtsCNct/x0XDrEvOjM8GDXhONwgAXBLFn97smYdz5MnYVarCa8XGLmbyhTOGMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3170.namprd11.prod.outlook.com (2603:10b6:208:64::10)
 by SA1PR11MB5922.namprd11.prod.outlook.com (2603:10b6:806:239::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 05:11:33 +0000
Received: from BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530]) by BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530%6]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 05:11:33 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: drop redundant display/
 from #includes
Thread-Index: AQHZC9P8OdZUTkA2UEeqxDhWGXaxFa5s3TfQ
Date: Wed, 14 Dec 2022 05:11:33 +0000
Message-ID: <BL0PR11MB3170468B0734AB9E37A1011BBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
References: <20221209134121.921070-1-jani.nikula@intel.com>
In-Reply-To: <20221209134121.921070-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3170:EE_|SA1PR11MB5922:EE_
x-ms-office365-filtering-correlation-id: 89c8dd95-a92e-4ce6-b40f-08dadd91aafb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DA6ZqrTbdwsRraYOPNzThuQjC7TfVdqTrGUVpV/5Oc5ld1CKblYYcTB3vslVUgflZe89MYidIKRKxJV1dpLdPWDcieZkUdj5ncW1gRdOS+VB5FtKv8jJT48WQGmBg7z+ONcIa+9rcrMW72z2ugLsS71AWKc5MOVuMl+D5nfEO0Cc9gLOn5kURrvvv5wLw6nkPdWHt7sZMawPmZTKuSuNBIb3e1fTDiyKg4c7t4lpPlZSloDFvFneZAZfbWmWZBRFDgKKBQnXMsLM37S8C7Q5I2KJipfKmVDHg+sI+GInLeMIY5b+8NRPuZThAXDWMbmBmwh+iNMxOYT9yVnXIXl0ItIb4bARKijj1gUMkHYsw4gxel/Q2tf5MTJJ8pRNeUxRwqZj+ybCKnM2EgFDKUroMKbvXXRaR1p7lo85uVwXgLOWksMVCY/Qtv2qsi1f7eAeDubnX2I8JcJBlqNsdizX2qsXEY6PEprAoDUXrvDYQcwsLBvGrHezc7KVcJY2A35kYVISikn78vDJbYp+fw5vI48vG9W1rPb+SAhq0iEBwdaw6NJvXF/gak+4w6KCbEr/hAUihiWKuClr/kGGb8tln6Tg+itS4AALOQSPDpBD3vU/FcHfnn3LHblhs1IjzTCmA0yd43aZ9RsjAagXidfmVZKpNKyd9psjNrUpJ7fvnlY0Mg2toMhvXO27mf7uPOVt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3170.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(136003)(346002)(366004)(39860400002)(451199015)(110136005)(316002)(2906002)(8936002)(64756008)(53546011)(5660300002)(52536014)(38070700005)(83380400001)(71200400001)(9686003)(6506007)(66476007)(86362001)(186003)(66446008)(41300700001)(26005)(8676002)(76116006)(33656002)(55016003)(4326008)(66556008)(66946007)(38100700002)(107886003)(7696005)(478600001)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VAo1mQGVRUbGN/Um5pldueWNzH4pTPlhxgTN3FFVVqSSjCRQpYpXu1m+pVpx?=
 =?us-ascii?Q?njMsAiL+IGbed78udNEoh6KJeY/XYpn8bZ3pLejAPwEbH64uoKIm1DCiy2GV?=
 =?us-ascii?Q?nlhhXyyUHTSxJgMumWtLp1KU2jQVk0ropAXgPwogJ54ruWABv8ofrKIDykcm?=
 =?us-ascii?Q?qUSMD/XxBVqQobCRjiTIsK5vvQdPjxB+4lkCLMyh8O6M4QYnUOmqkcZjuk/f?=
 =?us-ascii?Q?2A1TDJOCWaIetPLXtRU7ag5zf0Z1p3Y/w9vFzEd4Z68SWy1jAKVVvs69tlFd?=
 =?us-ascii?Q?K3czrVi6Do0MY2tkHiIEwZrRTAs4IbyyAFyJrpwkQRWq8pbLRX9kLRQfODLC?=
 =?us-ascii?Q?f87+MU4fZma/RAvIwbVyOxoB6ASUfv5did7PtrIpu/1rQVpT2MrqCNLYlvJh?=
 =?us-ascii?Q?aZUvOi67JBRW0xI+n2k6Crs3CTFUdY3o8G0457Fw+HICtG3EP+wbsyjO3+sl?=
 =?us-ascii?Q?CfjqE4oX/BZ6XBJ32x5C9N0G4mMVRgXmDbZwxFbOMHTWz9HKn8sWI/+0aPMM?=
 =?us-ascii?Q?uUg3AR/HWf4IaabhgcDZS8A15oWRWa2meH15ZmEzrUd9umMdULetLoijfAc8?=
 =?us-ascii?Q?CtemQOU8tFwNK3SbARhe/1Ex46aRoTgYfc1URbsfSwvXEv0Hh9iWn4L3PuOx?=
 =?us-ascii?Q?xhJtsFMxE2gYG51AgEy8zJy6oETTwZf6a8tmFuwKcVjkfoUD9GK454SpzXLL?=
 =?us-ascii?Q?pXK3EjdpswSaRAPD9u1Ozd4jEeTKomfPI6lHfxM4GQK0DTs+6bwIaCC1HbtD?=
 =?us-ascii?Q?2N7tTygJoYZqjzFyxfoPEL0PZPaNTs2IseSRaORtQL05BSpi5MzhFqdbrUJO?=
 =?us-ascii?Q?ERoeZfBGOMSyIrmr2JrXDit4lrFhLgXnaVji5cPbr9aKbkJaJabphh4RUnLI?=
 =?us-ascii?Q?agd9lJz6qN4fFtszVWzZP+oCQvH8szfomX+D1oPjsE+QZdOdm9qJ+irvqWiK?=
 =?us-ascii?Q?4hzB+jSrg3FwKn9DEfFqiNkgI7IJK01cCbDlps3Dy1ik9AaA+29NOJ8A/zRJ?=
 =?us-ascii?Q?WrUjeRbHoHwAW/IzZZWZA8AFX0RG8/WZi9Q0jYIkO6jNFAKOIsbbedenBzEb?=
 =?us-ascii?Q?P9pL91x4kwwSOxAqG6Ho3uwLMZBoIz4sK4ZE0+nU9oRRRuiedfmosbzVWVXS?=
 =?us-ascii?Q?0yPKYdRB+5ClWvqGuz7AM592qsIqKFcAvu/bB7e9XC/hCmAKA8oz6ZFPYEK5?=
 =?us-ascii?Q?nRvniNYsfWRc8pbHXDDB0yqC1mraLBYT4lOr8oVM6R3/pQEJbUqA5qf9S24E?=
 =?us-ascii?Q?X0gXcVUnXWjy2DJxi7rU/wdu1XjviwNeIzJSAU4xSGg3BDj+WZ8KH87j3eXQ?=
 =?us-ascii?Q?j5UbCvH902G5Lp8ltUPRV7oUgEmVPIm8Qc6eRv1QEEdJ1kzYttXDi5aG7yZ9?=
 =?us-ascii?Q?/nIybUmddK0U3vZpv3au41JMxYW8vub+PSxjObODdJuZXL4S5ZPbWYce0NJA?=
 =?us-ascii?Q?0Z8qtlTxchJ5Hf0MuOKwiUkCnX0um1Nm0Bv47yJzmC5BZ1JXLw7ACudQcxxF?=
 =?us-ascii?Q?q4XiM45u2tk/cNbZSDXjT3FDClhjlR6qNxWdFf36p1jVLdiCY89BbYw4R1Wx?=
 =?us-ascii?Q?ksCNnpryN0d8AvJ0qrxR0XYt1pHqtHfgqmu4mtfi?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3170.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89c8dd95-a92e-4ce6-b40f-08dadd91aafb
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 05:11:33.4809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g8Ucbx6R8QjZZlHeIdcrmmm1QbwvLwRP1/dqXyDMAQlhiAV5ac/P+8Ib5efTRNTyFE/maGQASF/5ycMHvNvWow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5922
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: drop redundant display/
 from #includes
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Friday, December 9, 2022 7:11 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH] drm/i915/display: drop redundant display/ fr=
om
> #includes
>=20
> Drop the redundant sub-directory from #includes under display/. Group and
> sort the results.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>  drivers/gpu/drm/i915/display/intel_bios.c    |  9 ++--
>  drivers/gpu/drm/i915/display/intel_display.c | 51 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_psr.c     |  3 +-
>  3 files changed, 30 insertions(+), 33 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> b/drivers/gpu/drm/i915/display/intel_bios.c
> index 572a4e3769f3..f7be6b25a975 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -25,16 +25,15 @@
>   *
>   */
>=20
> -#include <drm/drm_edid.h>
>  #include <drm/display/drm_dp_helper.h>
>  #include <drm/display/drm_dsc_helper.h>
> -
> -#include "display/intel_display.h"
> -#include "display/intel_display_types.h"
> -#include "display/intel_gmbus.h"
> +#include <drm/drm_edid.h>
>=20
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "intel_display.h"
> +#include "intel_display_types.h"
> +#include "intel_gmbus.h"
>=20
>  #define _INTEL_BIOS_PRIVATE
>  #include "intel_vbt_defs.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 6cdfdae2c712..a875fdef1476 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -24,15 +24,15 @@
>   *	Eric Anholt <eric@anholt.net>
>   */
>=20
> -#include <acpi/video.h>
> +#include <linux/dma-resv.h>
>  #include <linux/i2c.h>
>  #include <linux/input.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
> -#include <linux/dma-resv.h>
>  #include <linux/slab.h>
>  #include <linux/string_helpers.h>
>  #include <linux/vga_switcheroo.h>
> +#include <acpi/video.h>
>=20
>  #include <drm/display/drm_dp_helper.h>
>  #include <drm/drm_atomic.h>
> @@ -45,28 +45,6 @@
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_rect.h>
>=20
> -#include "display/intel_audio.h"
> -#include "display/intel_crt.h"
> -#include "display/intel_ddi.h"
> -#include "display/intel_display_debugfs.h"
> -#include "display/intel_display_power.h"
> -#include "display/intel_dp.h"
> -#include "display/intel_dp_mst.h"
> -#include "display/intel_dpll.h"
> -#include "display/intel_dpll_mgr.h"
> -#include "display/intel_drrs.h"
> -#include "display/intel_dsi.h"
> -#include "display/intel_dvo.h"
> -#include "display/intel_fb.h"
> -#include "display/intel_gmbus.h"
> -#include "display/intel_hdmi.h"
> -#include "display/intel_lvds.h"
> -#include "display/intel_sdvo.h"
> -#include "display/intel_snps_phy.h"
> -#include "display/intel_tv.h"
> -#include "display/intel_vdsc.h"
> -#include "display/intel_vrr.h"
> -
>  #include "gem/i915_gem_lmem.h"
>  #include "gem/i915_gem_object.h"
>=20
> @@ -76,32 +54,49 @@
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "i915_utils.h"
> +#include "i9xx_plane.h"
>  #include "icl_dsi.h"
>  #include "intel_acpi.h"
>  #include "intel_atomic.h"
>  #include "intel_atomic_plane.h"
> +#include "intel_audio.h"
>  #include "intel_bw.h"
>  #include "intel_cdclk.h"
>  #include "intel_color.h"
> +#include "intel_crt.h"
>  #include "intel_crtc.h"
>  #include "intel_crtc_state_dump.h"
> +#include "intel_ddi.h"
>  #include "intel_de.h"
> +#include "intel_display_debugfs.h"
> +#include "intel_display_power.h"
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
> +#include "intel_dp.h"
>  #include "intel_dp_link_training.h"
> +#include "intel_dp_mst.h"
>  #include "intel_dpio_phy.h"
> +#include "intel_dpll.h"
> +#include "intel_dpll_mgr.h"
>  #include "intel_dpt.h"
> +#include "intel_drrs.h"
>  #include "intel_dsb.h"
> +#include "intel_dsi.h"
> +#include "intel_dvo.h"
> +#include "intel_fb.h"
>  #include "intel_fbc.h"
>  #include "intel_fbdev.h"
>  #include "intel_fdi.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_frontbuffer.h"
> +#include "intel_gmbus.h"
>  #include "intel_hdcp.h"
> +#include "intel_hdmi.h"
>  #include "intel_hotplug.h"
>  #include "intel_hti.h"
> -#include "intel_modeset_verify.h"
> +#include "intel_lvds.h"
>  #include "intel_modeset_setup.h"
> +#include "intel_modeset_verify.h"
>  #include "intel_overlay.h"
>  #include "intel_panel.h"
>  #include "intel_pch_display.h"
> @@ -113,10 +108,14 @@
>  #include "intel_pps.h"
>  #include "intel_psr.h"
>  #include "intel_quirks.h"
> +#include "intel_sdvo.h"
> +#include "intel_snps_phy.h"
>  #include "intel_sprite.h"
>  #include "intel_tc.h"
> +#include "intel_tv.h"
> +#include "intel_vdsc.h"
>  #include "intel_vga.h"
> -#include "i9xx_plane.h"
> +#include "intel_vrr.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  #include "skl_watermark.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5b678916e6db..b0fd090ad75a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -24,14 +24,13 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_damage_helper.h>
>=20
> -#include "display/intel_dp.h"
> -
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "intel_atomic.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_dp.h"
>  #include "intel_dp_aux.h"
>  #include "intel_hdmi.h"
>  #include "intel_psr.h"
> --
> 2.34.1

