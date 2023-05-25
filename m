Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CDF710E5C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 16:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D49F10E16F;
	Thu, 25 May 2023 14:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A613D10E16E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 May 2023 14:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685025098; x=1716561098;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=CFfXVLJfI/htTuBSiNS4WSZIqCocqyF5qGiZu57alCs=;
 b=iS8zy6Wxjh5aHSBg0C0yeq5w/x16y9NsxaArKQApAJ53XKcyyOJjSCF1
 +GuxgBU3F8SVJSTx+Z0w1RQ+QL37kY6KSobK1FX6hPAuoj3UaYQ/vO0LK
 AkHY/ZaIR4gScsSvxn4tEy3SKD6yKmpHadH1R4v8VaYoEjErjckq+3SLD
 qKD0HVbTOuwM3+ks+rM9rvd42n5ipbpCG/WA7x1ilspKqY5BXAyoc11hH
 Mf6id8BRJP19lkRC/wQeir3ElgnKGCtmj9cdSOQ8C7NmsblgFm92z0XpY
 AV1t5dCepHN94fMonrrahwymZwi4eekJ8pkQwvBupsrXeuqIY0aASXr4I g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="353923767"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; 
 d="scan'208,217";a="353923767"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 07:31:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="774690598"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; 
 d="scan'208,217";a="774690598"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 25 May 2023 07:31:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 25 May 2023 07:31:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 25 May 2023 07:31:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 25 May 2023 07:31:14 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 25 May 2023 07:31:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P9V4HEO57NIh7iN/uqs5HGn5b5G6YEr1P4FNz27pe1Pyp3ZlIWgCeDSAY5Lf8XIUo6xq8n1CYcWfU1/dHJAlq7qQcmnPlHFU0DyRtLXnw79sZeNjlBSaLurpBIpllBx7f7iIj1gFIK2CUC50M6jSqRiH1XWJ6+9oZJrsc2wZ7Lht3ZHLoDl8wn+FwUAo0g0tNwbzJhKhDFe3ml+9kvi/jo30Qt33YXEG4bZ870teFZ5sHJL/PvhbpHDwbLX2n/IoLlSBNtxlI6dckq7EB9yVp6jsaEKY8SdWKZzYlk8A2gOgwc2dynB7/d+me02UmfxKootg7NHhqwXU0fDyX40Gig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zHfcBvP48bF759wuwlzCuEsp+PgLPex2HOiOwS8ipP8=;
 b=frkkACQLTqPeX1lO47LxbCFm0r21FMaYc8WWZHg+c3Wu3RTAZaNao1IV1OM9tHADl+5ruZLU/2yMFXiRWOliSKEPVaorJaqXVCVs+x1iEy6OB9hIdC6Ghdz/1nDoDO2VpQ/nmXofZssmyAUToujRSXnUzxVnryaWEOyYaMvVk6mxOA2J+Zjxrh5FDsJaOwNlsU28DFU6drXzxEwxWfCWds2tqNnMwSbwNCPFUmtFi/D4dNXL1DZT2CuHZKODQo5/9VZv9JK5HnNwI90KNJTaih73+OX1KFhZkTzi6kx/rM6ujDuFwLSwoofixFprq6vPymUecZvue+8OiSln9I2Fxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by SN7PR11MB8112.namprd11.prod.outlook.com (2603:10b6:806:2ea::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.15; Thu, 25 May
 2023 14:31:05 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::79ad:e9c0:80ea:201e]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::79ad:e9c0:80ea:201e%7]) with mapi id 15.20.6433.015; Thu, 25 May 2023
 14:31:05 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v8 7/7] drm/i915/mtl: Add support for PM DEMAND
Thread-Index: AQHZjxIp1YWFI3is4UqLKT/IWoCqoa9rDH8J
Date: Thu, 25 May 2023 14:31:05 +0000
Message-ID: <CO1PR11MB49622FFEE558583ACB8CD5BFF6469@CO1PR11MB4962.namprd11.prod.outlook.com>
References: <20230524230342.411273-1-vinod.govindapillai@intel.com>
 <20230524230342.411273-8-vinod.govindapillai@intel.com>
 <168502360445.3319.5262709654872376821@gjsousa-mobl2>
In-Reply-To: <168502360445.3319.5262709654872376821@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|SN7PR11MB8112:EE_
x-ms-office365-filtering-correlation-id: 5e529189-459d-4b7c-51ca-08db5d2cac40
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A3cjb/sEi2gkfdruWsXC78EAi54zm/smiW69NUBfvn+QuJu8unlHk2mrFwrAWYqu01uv8BpktGSlThzoc7h3nCgrgfu0J3SqfFj8xabgoDdXwkQ77h8mA66QrRdAk+5372ZbFz3XVVOxzoq5YWXu/PpgFdcVSGO4HQlW1wi03w8h7c/H9IsRlsSgB5UvNxyCLu8NToQCkODGrAWViE+741SrVUuPeI4+1DYirgldd+JFBW10KCtYzMAGe3FyFDT5rWzJDLdfBY+/Elg99TXyqaIzMIqj4N9020h1BuN5Qgz/m5rjLLLInguoSXrYSTCjcy2QWvDFrVkhBUaoc33i5Jhaa1YmfjLTO+Q5WLpPFNro3xdXB7um64hELz+/UOAzF1Aas20qUM6QoelzCBUoN/5ioz/mJIbCI71ETL5rA/kr8GhvwOromdPGEeomIH2X+vPCMa+Nzq/fTbebvxL2a9F+hNYBelK50mOhDt/le7d47XuooA2EbpLfy8m8sXCXyHK5EOiHcacss7LXxFztrQK5Ns25c46iwAxibqgCeQJDPbv40EdhULGC9wwbmdBPEOzo68ZWJ+qQCy4TPrlXaYvajq7MNoCf5iq8NDVeoQ7YbpNhTTGJSI+tkb+WGmQE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(136003)(39860400002)(376002)(366004)(451199021)(83380400001)(4326008)(91956017)(76116006)(66476007)(66556008)(66946007)(64756008)(66446008)(7696005)(107886003)(110136005)(71200400001)(26005)(6506007)(54906003)(86362001)(186003)(53546011)(478600001)(9686003)(2906002)(8676002)(30864003)(8936002)(52536014)(5660300002)(33656002)(82960400001)(122000001)(55016003)(38070700005)(41300700001)(38100700002)(316002)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?+MkJcxIgK3PLokpk7/P6O4Lwzd96LwnCraX2ctnRcwwYZodcc7SCE5bOMO?=
 =?iso-8859-1?Q?tAjn/Fy0FbKtoflqtGagRF3ISPVE29DEYVS/A+zA0voLhXMDLEXxTncsv5?=
 =?iso-8859-1?Q?NOMlPad/egK7daRBhlHojt9l3JfyQZefAsPs8PuGJkIt3O47ojXWfxH3y+?=
 =?iso-8859-1?Q?iDtZTKolXff69QxJ5b2R8MUh6PJeyoCGb4chiQCBslwbAMtqGXporRjxWz?=
 =?iso-8859-1?Q?WB5a2dCly/5hQU7rk1Nfo0crXWBpc4ReLVLNKJdpNSq8v8EKatuCQPGVH1?=
 =?iso-8859-1?Q?v9Ur05SPaAaSvZHWw9Uz9Rem7Li6K+M16915AmjrVi6a14ZUjFYoR3ZN0p?=
 =?iso-8859-1?Q?LxkEgTAyeNtwKp4vxfBcHXdi0SsI2XKD/radADwUpKjvpkHjGFLCNFCmjq?=
 =?iso-8859-1?Q?iwIXCdjEBWxM9ZYU6u9Lqxq69tF5MLifmGUP2C2rZopmjmhesvsYwc6I65?=
 =?iso-8859-1?Q?S9+EshjEerffyB93aZgmSAc6io+ZGpDVHxLSI5Ghdx50V4dtZrkT65Vb64?=
 =?iso-8859-1?Q?BFFC51lXRRb+SyNzrKVOEUECq0aH1+pDVhKgn+0qFzArJs5chjyeHpCLRX?=
 =?iso-8859-1?Q?22a7Ym8HvNXnOiz8NLTdxi6qA/2m1KGa+E+NS36QALzv/2alDICSPvkCTB?=
 =?iso-8859-1?Q?a0l7z+0vm/urIujY0QyFA3uIpRtxIj/zv5jg+YyHoPm9fseTO+NrNicR0n?=
 =?iso-8859-1?Q?lq1mAWviQM2c7glZB0NkgV+aRqa58s4zniNgX6YfTZmFModCedxpQLO04R?=
 =?iso-8859-1?Q?GGt41sstxa/+t9iW/V6wrGGsS0q7ytjBsPH/RffArP8vkKycc/yCWtbkvK?=
 =?iso-8859-1?Q?gPWbPS6P6giMkgz7w/fBpVbBIunoIua7C3KGMuiAgtQhcym5WOGDxqqBpA?=
 =?iso-8859-1?Q?B1zIGMFyMeJhmd0dQCOAmXP0GOfy1JgA3cnyduUTJWsu8Y3YtLRjFsnB9o?=
 =?iso-8859-1?Q?H/DzGiNCIwTwXLAbVYi57FeoUeV2CZ3SnwN2F6FpueD7qiqxmQ4u3s9Uos?=
 =?iso-8859-1?Q?lusviufZQ5bObWSs/+q+7jHTTr7jwR1Bgavd3m4UnpjS64bgRl1bBjXa7y?=
 =?iso-8859-1?Q?JCm9RvEh1ZiWLtUQVERR3qSu8qW6FvKYWx1js2unu0DTmYtXuvfAya5xoU?=
 =?iso-8859-1?Q?HXqzQLov4DINl4MDpUdGpJ+M3D+5aunEt5bdHpsPepgW8uVgAolSjLbmwu?=
 =?iso-8859-1?Q?EoQxcPLmnXX1Puhd+mPxJeR9Kc24kKQiRRIeYK9orvw2Iu4cFy5VJq7rL/?=
 =?iso-8859-1?Q?xNfIUl3G1DaFEIeDfLFq6ka/1Zjna5F1p8eGiNXCuSNj4HBEWW7cVcMT/E?=
 =?iso-8859-1?Q?zCh2fcDMdz8RPi4olo+felS+VHvMejLO+SVbX87rCun6x2gD1AqU5gze3g?=
 =?iso-8859-1?Q?HjUrKr5/IqSvseUVljnCrG9PZniUj7FQkW887dWp7h3iiqPLbnK5dsC3Ng?=
 =?iso-8859-1?Q?ZlEsZqmSWVsof4tVkbMlSCYN3BYduFWDvPTSQe+8QKt0ERKsrlWQ0k8s/u?=
 =?iso-8859-1?Q?ahurK68KtAJ4AcHq+DIJ+4guS1NNHLcAZf2t6K+7xMraAQgYTnC1+y5XAq?=
 =?iso-8859-1?Q?MvTeILtJNobbtp5iX4+AZ13aLmONAvlnJmhpLZuhxuNqqA5RWCJMC2Lqld?=
 =?iso-8859-1?Q?ykXYZD+JqPehUy3+bPPT/5VwU2LEgZ1M1GF4DPfKM9lp/7Ujj5FcjkiDiW?=
 =?iso-8859-1?Q?0SdJ1XjcjJP5Syv9J/0=3D?=
Content-Type: multipart/alternative;
 boundary="_000_CO1PR11MB49622FFEE558583ACB8CD5BFF6469CO1PR11MB4962namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e529189-459d-4b7c-51ca-08db5d2cac40
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2023 14:31:05.2605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zRTi+HHOygIFYtOxkSoSLa715kbNk8tKl7MAfLdnfwoUo3JLPWY7sFWXKM1STJBATYixkToSUbUr/yCyNquK1Rif7tKzpy7fn90/ULa35A8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8112
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 7/7] drm/i915/mtl: Add support for PM
 DEMAND
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_000_CO1PR11MB49622FFEE558583ACB8CD5BFF6469CO1PR11MB4962namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi



________________________________
From: Sousa, Gustavo <gustavo.sousa@intel.com>
Sent: Thursday, 25 May 2023, 17:06
To: Govindapillai, Vinod <vinod.govindapillai@intel.com>; intel-gfx@lists.f=
reedesktop.org <intel-gfx@lists.freedesktop.org>
Cc: Syrjala, Ville <ville.syrjala@intel.com>; Lisovskiy, Stanislav <stanisl=
av.lisovskiy@intel.com>; Kahola, Mika <mika.kahola@intel.com>; Saarinen, Ja=
ni <jani.saarinen@intel.com>
Subject: Re: [PATCH v8 7/7] drm/i915/mtl: Add support for PM DEMAND

Hi, Vinod.

Thanks for the new version. I decided to take one final look at the
overall patch I have found some issues yet. Sorry I didn't catch them
before!

Please, see my comments inline.

Quoting Vinod Govindapillai (2023-05-24 20:03:42-03:00)
>From: Mika Kahola <mika.kahola@intel.com>
>
>MTL introduces a new way to instruct the PUnit with
>power and bandwidth requirements of DE. Add the functionality
>to program the registers and handle waits using interrupts.
>The current wait time for timeouts is programmed for 10 msecs to
>factor in the worst case scenarios. Changes made to use REG_BIT
>for a register that we touched(GEN8_DE_MISC_IER _MMIO).
>
>Wa_14016740474 is added which applies to Xe_LPD+ display
>
>v2: checkpatch warning fixes, simplify program pmdemand part
>
>v3: update to dbufs and pipes values to pmdemand register(stan)
>    Removed the macro usage in update_pmdemand_values()
>
>v4: move the pmdemand_pre_plane_update before cdclk update
>    pmdemand_needs_update included cdclk params comparisons
>    pmdemand_state NULL check (Gustavo)
>    pmdemand.o in sorted order in the makefile (Jani)
>    update pmdemand misc irq handler loop (Gustavo)
>    active phys bitmask and programming correction (Gustavo)
>
>v5: simplify pmdemand_state structure
>    simplify methods to find active phys and max port clock
>    Timeout in case of previou pmdemand task pending (Gustavo)
>
>v6: rebasing
>    updates to max_ddiclk calculations (Gustavo)
>    updates to active_phys count method (Gustavo)
>
>v7: use two separate loop to iterate throug old and new
>    crtc states to calculate the active phys (Gustavo)
>
>Bspec: 66451, 64636, 64602, 64603
>Cc: Matt Atwood <matthew.s.atwood@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>---
> drivers/gpu/drm/i915/Makefile                 |   1 +
> drivers/gpu/drm/i915/display/intel_display.c  |  14 +
> .../gpu/drm/i915/display/intel_display_core.h |   9 +
> .../drm/i915/display/intel_display_driver.c   |   7 +
> .../gpu/drm/i915/display/intel_display_irq.c  |  23 +-
> .../drm/i915/display/intel_display_power.c    |   8 +
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 560 ++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
> drivers/gpu/drm/i915/i915_reg.h               |  36 +-
> 9 files changed, 678 insertions(+), 4 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index dd9ca69f4998..358463d02a57 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -273,6 +273,7 @@ i915-y +=3D \
>         display/intel_pch_display.o \
>         display/intel_pch_refclk.o \
>         display/intel_plane_initial.o \
>+        display/intel_pmdemand.o \
>         display/intel_psr.o \
>         display/intel_quirks.o \
>         display/intel_sprite.o \
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index 0490c6412ab5..b3bb2c607650 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -99,6 +99,7 @@
> #include "intel_pcode.h"
> #include "intel_pipe_crc.h"
> #include "intel_plane_initial.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps.h"
> #include "intel_psr.h"
> #include "intel_sdvo.h"
>@@ -6343,6 +6344,10 @@ int intel_atomic_check(struct drm_device *dev,
>                         return ret;
>         }
>
>+        ret =3D intel_pmdemand_atomic_check(state);
>+        if (ret)
>+                goto fail;
>+
>         ret =3D intel_atomic_check_crtcs(state);
>         if (ret)
>                 goto fail;
>@@ -6988,6 +6993,14 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>         for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>                 crtc->config =3D new_crtc_state;
>
>+        /*
>+         * In XE_LPD+ Pmdemand combines many parameters such as voltage i=
ndex,
>+         * plls, cdclk frequency, QGV point selection parameter etc. Volt=
age
>+         * index, cdclk/ddiclk frequencies are supposed to be configured =
before
>+         * the cdclk config is set.
>+         */
>+        intel_pmdemand_pre_plane_update(state);
>+
>         if (state->modeset) {
>                 drm_atomic_helper_update_legacy_modeset_state(dev, &state=
->base);
>
>@@ -7107,6 +7120,7 @@ static void intel_atomic_commit_tail(struct intel_at=
omic_state *state)
>                 intel_verify_planes(state);
>
>         intel_sagv_post_plane_update(state);
>+        intel_pmdemand_post_plane_update(state);
>
>         drm_atomic_helper_commit_hw_done(&state->base);
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/g=
pu/drm/i915/display/intel_display_core.h
>index 9f66d734edf6..ae45b2c42eb1 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -345,6 +345,15 @@ struct intel_display {
>                 struct intel_global_obj obj;
>         } dbuf;
>
>+        struct {
>+                wait_queue_head_t waitqueue;
>+
>+                /* mutex to protect pmdemand programming sequence */
>+                struct mutex lock;
>+
>+                struct intel_global_obj obj;
>+        } pmdemand;
>+
>         struct {
>                 /*
>                  * dkl.phy_lock protects against concurrent access of the
>diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers=
/gpu/drm/i915/display/intel_display_driver.c
>index 60ce10fc7205..dc8de861339d 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>@@ -47,6 +47,7 @@
> #include "intel_opregion.h"
> #include "intel_overlay.h"
> #include "intel_plane_initial.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps.h"
> #include "intel_quirks.h"
> #include "intel_vga.h"
>@@ -211,6 +212,8 @@ int intel_display_driver_probe_noirq(struct drm_i915_p=
rivate *i915)
>         if (ret < 0)
>                 goto cleanup_vga;
>
>+        intel_pmdemand_init_early(i915);
>+
>         intel_power_domains_init_hw(i915, false);
>
>         if (!HAS_DISPLAY(i915))
>@@ -240,6 +243,10 @@ int intel_display_driver_probe_noirq(struct drm_i915_=
private *i915)
>         if (ret)
>                 goto cleanup_vga_client_pw_domain_dmc;
>
>+        ret =3D intel_pmdemand_init(i915);
>+        if (ret)
>+                goto cleanup_vga_client_pw_domain_dmc;
>+
>         init_llist_head(&i915->display.atomic_helper.free_list);
>         INIT_WORK(&i915->display.atomic_helper.free_work,
>                   intel_atomic_helper_free_state_worker);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index 3b2a287d2041..0b3739310f81 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -18,6 +18,7 @@
> #include "intel_fifo_underrun.h"
> #include "intel_gmbus.h"
> #include "intel_hotplug_irq.h"
>+#include "intel_pmdemand.h"
> #include "intel_psr.h"
> #include "intel_psr_regs.h"
>
>@@ -827,12 +828,27 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_p=
rivate *dev_priv)
>                 return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
> }
>
>+static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
>+{
>+        wake_up_all(&dev_priv->display.pmdemand.waitqueue);
>+}
>+
> static void
> gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
> {
>         bool found =3D false;
>
>-        if (iir & GEN8_DE_MISC_GSE) {
>+        if (DISPLAY_VER(dev_priv) >=3D 14) {
>+                if (iir & (XELPDP_PMDEMAND_RSP |
>+                           XELPDP_PMDEMAND_RSPTOUT_ERR)) {
>+                        if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR)
>+                                drm_dbg(&dev_priv->drm,
>+                                        "Error waiting for Punit PM Deman=
d Response\n");
>+
>+                        intel_pmdemand_irq_handler(dev_priv);
>+                        found =3D true;
>+                }
>+        } else if (iir & GEN8_DE_MISC_GSE) {
>                 intel_opregion_asle_intr(dev_priv);
>                 found =3D true;
>         }
>@@ -1576,7 +1592,10 @@ void gen8_de_irq_postinstall(struct drm_i915_privat=
e *dev_priv)
>         if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>                 de_port_masked |=3D BXT_DE_PORT_GMBUS;
>
>-        if (DISPLAY_VER(dev_priv) >=3D 11) {
>+        if (DISPLAY_VER(dev_priv) >=3D 14) {
>+                de_misc_masked |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |
>+                                  XELPDP_PMDEMAND_RSP;
>+        } else if (DISPLAY_VER(dev_priv) >=3D 11) {
>                 enum port port;
>
>                 if (intel_bios_is_dsi_present(dev_priv, &port))
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index 6ed2ece89c3f..59de308234a6 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -20,6 +20,7 @@
> #include "intel_mchbar_regs.h"
> #include "intel_pch_refclk.h"
> #include "intel_pcode.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps_regs.h"
> #include "intel_snps_phy.h"
> #include "skl_watermark.h"
>@@ -1085,6 +1086,10 @@ static void gen9_dbuf_enable(struct drm_i915_privat=
e *dev_priv)
>         dev_priv->display.dbuf.enabled_slices =3D
>                 intel_enabled_dbuf_slices_mask(dev_priv);
>
>+        if (DISPLAY_VER(dev_priv) >=3D 14)
>+                intel_program_dbuf_pmdemand(dev_priv, BIT(DBUF_S1) |
>+                                            dev_priv->display.dbuf.enable=
d_slices);
>+
>         /*
>          * Just power up at least 1 slice, we will
>          * figure out later which slices we have and what we need.
>@@ -1096,6 +1101,9 @@ static void gen9_dbuf_enable(struct drm_i915_private=
 *dev_priv)
> static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
> {
>         gen9_dbuf_slices_update(dev_priv, 0);
>+
>+        if (DISPLAY_VER(dev_priv) >=3D 14)
>+                intel_program_dbuf_pmdemand(dev_priv, 0);
> }
>
> static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>new file mode 100644
>index 000000000000..01ec4e648de9
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -0,0 +1,560 @@
>+// SPDX-License-Identifier: MIT
>+/*
>+ * Copyright =A9 2023 Intel Corporation
>+ */
>+
>+#include <linux/bitops.h>
>+
>+#include "i915_drv.h"
>+#include "i915_reg.h"
>+#include "intel_bw.h"
>+#include "intel_cdclk.h"
>+#include "intel_cx0_phy.h"
>+#include "intel_de.h"
>+#include "intel_display.h"
>+#include "intel_display_trace.h"
>+#include "intel_pmdemand.h"
>+#include "skl_watermark.h"
>+
>+struct pmdemand_params {
>+        u16 qclk_gv_bw;
>+        u8 voltage_index;
>+        u8 qclk_gv_index;
>+        u8 active_pipes;
>+        u8 dbufs;

Hmm... Looks like this is not being used anymore.

>+        /* Total number of non type C active phys from active_phys_mask *=
/
>+        u8 active_phys;
>+        u16 cdclk_freq_mhz;
>+        /* max from ddi_clocks[]*/
>+        u16 ddiclk_max;
>+        u8 scalers;
>+};
>+
>+struct intel_pmdemand_state {
>+        struct intel_global_state base;
>+
>+        /* Maintain a persistent list of port clocks across all crtcs */
>+        int ddi_clocks[I915_MAX_PIPES];
>+
>+        /* Maintain a persistent list of non type C phys mask */
>+        u16 active_phys_mask;
>+
>+        /* Parameters to be configured in the pmdemand registers */
>+        struct pmdemand_params params;
>+};
>+
>+#define to_intel_pmdemand_state(x) container_of((x), \
>+                                                struct intel_pmdemand_sta=
te, \
>+                                                base)
>+static struct intel_global_state *
>+intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
>+{
>+        struct intel_pmdemand_state *pmdmnd_state;
>+
>+        pmdmnd_state =3D kmemdup(obj->state, sizeof(*pmdmnd_state), GFP_K=
ERNEL);
>+        if (!pmdmnd_state)
>+                return NULL;
>+
>+        return &pmdmnd_state->base;
>+}
>+
>+static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
>+                                         struct intel_global_state *state=
)
>+{
>+        kfree(state);
>+}
>+
>+static const struct intel_global_state_funcs intel_pmdemand_funcs =3D {
>+        .atomic_duplicate_state =3D intel_pmdemand_duplicate_state,
>+        .atomic_destroy_state =3D intel_pmdemand_destroy_state,
>+};
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_global_obj_state(state,
>+                                                  &i915->display.pmdemand=
.obj);
>+
>+        if (IS_ERR(pmdemand_state))
>+                return ERR_CAST(pmdemand_state);
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_old_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_old_global_obj_state(state,
>+                                                      &i915->display.pmde=
mand.obj);
>+
>+        if (!pmdemand_state)
>+                return NULL;
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_new_global_obj_state(state,
>+                                                      &i915->display.pmde=
mand.obj);
>+
>+        if (!pmdemand_state)
>+                return NULL;
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+int intel_pmdemand_init(struct drm_i915_private *i915)
>+{
>+        struct intel_pmdemand_state *pmdemand_state;
>+
>+        pmdemand_state =3D kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
>+        if (!pmdemand_state)
>+                return -ENOMEM;
>+
>+        intel_atomic_global_obj_init(i915, &i915->display.pmdemand.obj,
>+                                     &pmdemand_state->base,
>+                                     &intel_pmdemand_funcs);
>+
>+        if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
>+                /* Wa_14016740474 */
>+                intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEO=
UT_DISABLE);
>+
>+        return 0;
>+}
>+
>+void intel_pmdemand_init_early(struct drm_i915_private *i915)
>+{
>+        mutex_init(&i915->display.pmdemand.lock);
>+        init_waitqueue_head(&i915->display.pmdemand.waitqueue);
>+}
>+
>+static void pmdemand_update_max_ddiclk(struct intel_atomic_state *state,
>+                                       struct intel_pmdemand_state *pmd_s=
tate)
>+{
>+        int max_ddiclk =3D 0;
>+        struct intel_crtc *crtc;
>+        int i;
>+        const struct intel_crtc_state *new_crtc_state;
>+
>+        for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>+                pmd_state->ddi_clocks[crtc->pipe] =3D new_crtc_state->por=
t_clock;
>+
>+        for (i =3D 0; i < ARRAY_SIZE(pmd_state->ddi_clocks); i++)
>+                max_ddiclk =3D max(pmd_state->ddi_clocks[i], max_ddiclk);
>+
>+        pmd_state->params.ddiclk_max =3D DIV_ROUND_UP(max_ddiclk, 1000);
>+}
>+
>+static struct intel_encoder *
>+pmdemand_get_crtc_old_encoder(const struct intel_atomic_state *state,
>+                              const struct intel_crtc_state *crtc_state)
>+{
>+        const struct drm_connector_state *connector_state;
>+        const struct drm_connector *connector;
>+        struct intel_encoder *encoder =3D NULL;
>+        struct intel_crtc *master_crtc;
>+        int i;
>+
>+        master_crtc =3D intel_master_crtc(crtc_state);
>+
>+        for_each_old_connector_in_state(&state->base, connector, connecto=
r_state, i) {
>+                if (connector_state->crtc !=3D &master_crtc->base)
>+                        continue;
>+
>+                encoder =3D to_intel_encoder(connector_state->best_encode=
r);
>+        }
>+
>+        return encoder;
>+}
>+
>+static void
>+pmdemand_update_active_non_tc_phys(struct drm_i915_private *i915,
>+                                   const struct intel_atomic_state *state=
,
>+                                   struct intel_pmdemand_state *pmd_state=
)
>+{
>+        struct intel_crtc *crtc;
>+        struct intel_encoder *encoder;
>+        int i;
>+        const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>+        enum phy phy;
>+

Since we are probably doing a re-spin of this patch, maybe it is worth
adding a short comment here explaining why we do the 2 loops? Just to
make sure we don't get future patches trying to simplify this into a
single loop.

>+        for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                            new_crtc_state, i) {
>+                if (!intel_crtc_needs_modeset(new_crtc_state))
>+                        continue;
>+
>+                if (!old_crtc_state->hw.active)
>+                        continue;
>+
>+                encoder =3D pmdemand_get_crtc_old_encoder(state, old_crtc=
_state);
>+                if (!encoder)
>+                        continue;
>+
>+                phy =3D intel_port_to_phy(i915, encoder->port);
>+
>+                pmd_state->active_phys_mask &=3D ~BIT(phy);
>+        }
>+
>+        for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                            new_crtc_state, i) {
>+                if (!intel_crtc_needs_modeset(new_crtc_state))
>+                        continue;
>+
>+                if (!new_crtc_state->hw.active)
>+                        continue;
>+
>+                encoder =3D intel_get_crtc_new_encoder(state, new_crtc_st=
ate);
>+                if (!encoder)
>+                        continue;
>+
>+                phy =3D intel_port_to_phy(i915, encoder->port);
>+
>+                if (intel_phy_is_tc(i915, phy))
>+                        continue;
>+
>+                pmd_state->active_phys_mask |=3D BIT(phy);
>+        }
>+
>+        pmd_state->params.active_phys =3D hweight16(pmd_state->active_phy=
s_mask);
>+}
>+
>+static bool pmdemand_needs_update(struct intel_atomic_state *state)
>+{
>+        bool states_checked =3D false;
>+        struct intel_crtc *crtc;
>+        int i;
>+        const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>+
>+        for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                            new_crtc_state, i) {
>+                const struct intel_bw_state *new_bw_state, *old_bw_state;
>+                const struct intel_cdclk_state *new_cdclk_state;
>+                const struct intel_cdclk_state *old_cdclk_state;
>+                const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_=
state;
>+
>+                if (old_crtc_state->port_clock !=3D new_crtc_state->port_=
clock)
>+                        return true;
>+
>+                /*
>+                 * For the below settings once through the loop is enough=
.
>+                 * Some pmdemand_atomic_check calls might trigger read lo=
ck not
>+                 * taken assert if these following checks are kept outsid=
e this
>+                 * loop.
>+                 */
>+                if (states_checked)
>+                        continue;
>+
>+                new_bw_state =3D intel_atomic_get_new_bw_state(state);
>+                old_bw_state =3D intel_atomic_get_old_bw_state(state);
>+                if (new_bw_state && new_bw_state->qgv_point_peakbw !=3D
>+                    old_bw_state->qgv_point_peakbw)
>+                        return true;
>+
>+                new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state)=
;
>+                old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state)=
;
>+                if (new_dbuf_state && new_dbuf_state->active_pipes !=3D
>+                    old_dbuf_state->active_pipes)
>+                        return true;
>+
>+                new_cdclk_state =3D intel_atomic_get_new_cdclk_state(stat=
e);
>+                old_cdclk_state =3D intel_atomic_get_old_cdclk_state(stat=
e);
>+                if (new_cdclk_state &&
>+                    (new_cdclk_state->logical.cdclk !=3D
>+                     old_cdclk_state->logical.cdclk ||
>+                     new_cdclk_state->logical.voltage_level !=3D
>+                     old_cdclk_state->logical.voltage_level))
>+                        return true;
>+
>+                states_checked =3D true;
>+        }
>+
>+        return false;

I'm afraid we are missing one thing in this function: we need to know
whether the number of active non-TC PHYs could change and return true if
so, otherwise we could end up skipping a required PM Demand transaction.

I would implement that using the same 2-loop strategy from
pmdemand_update_active_non_tc_phys() but having two bitmasks: one for
PHYs of CTRCs from old state being disabled (first loop) and another for
active CRTCs in the new state (second loop). If those masks match each
other, that means the number of active PHYs will not change, otherwise
there is a possibility that it will change.

Perhaps we should rename and change
pmdemand_update_active_non_tc_phys()'s implementation to fill those two
masks and then we could use them appropriately depending on where that
function is called. For example, if we rename and call it like

  intel_pmdmand_calc_non_tc_phy_masks(i915, state, inactive_phys_mask,
                                      active_phys_mask)
, we would:

  - Here in this function, return true if inactive_mask !=3D active_mask.

  - In intel_pmdemand_atomic_check(), update the mask in the following
    order:

    - new_pmdemand_state->active_phys_mask &=3D ~inactive_phys_mask;
    - new_pmdemand_state->active_phys_mask |=3D active_phys_mask;

Can only the phys change without impacting other parameters here?

>+}
>+
>+int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_bw_state *new_bw_state;
>+        const struct intel_cdclk_state *new_cdclk_state;
>+        const struct intel_dbuf_state *new_dbuf_state;
>+        struct intel_pmdemand_state *new_pmdemand_state;
>+        int ret;
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return 0;
>+
>+        if (!pmdemand_needs_update(state))
>+                return 0;
>+
>+        new_pmdemand_state =3D intel_atomic_get_pmdemand_state(state);
>+        if (IS_ERR(new_pmdemand_state))
>+                return PTR_ERR(new_pmdemand_state);
>+
>+        ret =3D intel_atomic_lock_global_state(&new_pmdemand_state->base)=
;
>+        if (ret)
>+                return ret;
>+
>+        new_bw_state =3D intel_atomic_get_bw_state(state);
>+        if (IS_ERR(new_bw_state))
>+                return PTR_ERR(new_bw_state);
>+
>+        /* firmware will calculate the qclck_gc_index, requirement is set=
 to 0 */
>+        new_pmdemand_state->params.qclk_gv_index =3D 0;
>+        new_pmdemand_state->params.qclk_gv_bw =3D
>+                min_t(u16, new_bw_state->qgv_point_peakbw, 0xffff);
>+
>+        new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
>+        if (IS_ERR(new_dbuf_state))
>+                return PTR_ERR(new_dbuf_state);
>+
>+        new_pmdemand_state->params.active_pipes =3D
>+                min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
>+
>+        new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>+        if (IS_ERR(new_cdclk_state))
>+                return PTR_ERR(new_cdclk_state);
>+
>+        new_pmdemand_state->params.voltage_index =3D
>+                new_cdclk_state->logical.voltage_level;
>+        new_pmdemand_state->params.cdclk_freq_mhz =3D
>+                DIV_ROUND_UP(new_cdclk_state->logical.cdclk, 1000);
>+
>+        pmdemand_update_max_ddiclk(state, new_pmdemand_state);
>+
>+        pmdemand_update_active_non_tc_phys(i915, state, new_pmdemand_stat=
e);
>+
>+        /*
>+         * Setting scalers to max as it can not be calculated during flip=
s and
>+         * fastsets without taking global states locks.
>+         */
>+        new_pmdemand_state->params.scalers =3D 7;
>+
>+        ret =3D intel_atomic_serialize_global_state(&new_pmdemand_state->=
base);
>+        if (ret)
>+                return ret;
>+
>+        return 0;
>+}
>+
>+static bool intel_pmdemand_check_prev_transaction(struct drm_i915_private=
 *i915)
>+{
>+        return !(intel_de_wait_for_clear(i915,
>+                                         XELPDP_INITIATE_PMDEMAND_REQUEST=
(1),
>+                                         XELPDP_PMDEMAND_REQ_ENABLE, 10) =
||
>+                 intel_de_wait_for_clear(i915,
>+                                         GEN12_DCPR_STATUS_1,
>+                                         XELPDP_PMDEMAND_INFLIGHT_STATUS,=
 10));
>+}
>+
>+static bool intel_pmdemand_req_complete(struct drm_i915_private *i915)
>+{
>+        return !(intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
 &
>+                 XELPDP_PMDEMAND_REQ_ENABLE);
>+}
>+
>+static int intel_pmdemand_wait(struct drm_i915_private *i915)
>+{
>+        DEFINE_WAIT(wait);

Hm... I think this is a leftover of a previous version of this function. We
should remove this line.

>+        int ret;
>+        const unsigned int timeout_ms =3D 10;
>+
>+        ret =3D wait_event_timeout(i915->display.pmdemand.waitqueue,
>+                                 intel_pmdemand_req_complete(i915),
>+                                 msecs_to_jiffies_timeout(timeout_ms));
>+        if (ret =3D=3D 0)
>+                drm_err(&i915->drm,
>+                        "timed out waiting for Punit PM Demand Response\n=
");
>+
>+        return ret;
>+}
>+
>+/* Required to be programmed during Display Init Sequences. */
>+void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
>+                                 u8 dbuf_slices)
>+{
>+        u32 dbufs =3D min_t(u32, hweight8(dbuf_slices), 3);
>+
>+        mutex_lock(&i915->display.pmdemand.lock);
>+        if (drm_WARN_ON(&i915->drm,
>+                        !intel_pmdemand_check_prev_transaction(i915)))
>+                goto unlock;
>+
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+                     XELPDP_PMDEMAND_DBUFS_MASK, XELPDP_PMDEMAND_DBUFS(db=
ufs));
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+                     XELPDP_PMDEMAND_REQ_ENABLE);
>+
>+        intel_pmdemand_wait(i915);
>+
>+unlock:
>+        mutex_unlock(&i915->display.pmdemand.lock);
>+}
>+
>+static void update_pmdemand_values(const struct intel_pmdemand_state *new=
,
>+                                   const struct intel_pmdemand_state *old=
,
>+                                   u32 *reg1, u32 *reg2)
>+{
>+        u32 plls, tmp;
>+
>+        /*
>+         * The pmdemand parameter updates happens in two steps. Pre plane=
 and
>+         * post plane updates. During the pre plane, as DE might still be
>+         * handling with some old operations, to avoid unwanted performan=
ce
>+         * issues, program the pmdemand parameters with higher of old and=
 new
>+         * values. And then after once settled, use the new parameter val=
ues
>+         * as part of the post plane update.
>+         */
>+
>+        /* Set 1*/
>+        *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_BW_MASK;
>+        tmp =3D old ? max(old->params.qclk_gv_bw, new->params.qclk_gv_bw)=
 :
>+                    new->params.qclk_gv_bw;
>+        *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_BW(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK;
>+        tmp =3D old ? max(old->params.voltage_index, new->params.voltage_=
index) :
>+                    new->params.voltage_index;
>+        *reg1 |=3D XELPDP_PMDEMAND_VOLTAGE_INDEX(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK;
>+        tmp =3D old ? max(old->params.qclk_gv_index, new->params.qclk_gv_=
index) :
>+                    new->params.qclk_gv_index;
>+        *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_INDEX(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_PIPES_MASK;
>+        tmp =3D old ? max(old->params.active_pipes, new->params.active_pi=
pes) :
>+                    new->params.active_pipes;
>+        *reg1 |=3D XELPDP_PMDEMAND_PIPES(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_PHYS_MASK;
>+        plls =3D old ? max(old->params.active_phys, new->params.active_ph=
ys) :
>+                     new->params.active_phys;
>+        plls =3D min_t(u32, plls, 7);
>+        *reg1 |=3D XELPDP_PMDEMAND_PHYS(plls);
>+
>+        /* Set 2*/
>+        *reg2 &=3D ~XELPDP_PMDEMAND_CDCLK_FREQ_MASK;
>+        tmp =3D old ? max(old->params.cdclk_freq_mhz,
>+                        new->params.cdclk_freq_mhz) :
>+                    new->params.cdclk_freq_mhz;
>+        *reg2 |=3D XELPDP_PMDEMAND_CDCLK_FREQ(tmp);
>+
>+        *reg2 &=3D ~XELPDP_PMDEMAND_DDICLK_FREQ_MASK;
>+        tmp =3D old ? max(old->params.ddiclk_max, new->params.ddiclk_max)=
 :
>+                    new->params.ddiclk_max;
>+        *reg2 |=3D XELPDP_PMDEMAND_DDICLK_FREQ(tmp);
>+
>+        *reg2 &=3D ~XELPDP_PMDEMAND_SCALERS_MASK;
>+        tmp =3D old ? max(old->params.scalers, new->params.scalers) :
>+                    new->params.scalers;
>+        *reg2 |=3D XELPDP_PMDEMAND_SCALERS(tmp);
>+
>+        /*
>+         * Active_PLLs starts with 1 because of CDCLK PLL.
>+         * TODO: Missing to account genlock filter when it gets used.
>+         */
>+        plls =3D min_t(u32, plls + 1, 7);
>+        *reg2 &=3D ~XELPDP_PMDEMAND_PLLS_MASK;
>+        *reg2 |=3D XELPDP_PMDEMAND_PLLS(plls);
>+}
>+
>+static void intel_program_pmdemand(struct drm_i915_private *i915,
>+                                   const struct intel_pmdemand_state *new=
,
>+                                   const struct intel_pmdemand_state *old=
)
>+{
>+        bool changed =3D false;
>+        u32 reg1, mod_reg1;
>+        u32 reg2, mod_reg2;
>+
>+        mutex_lock(&i915->display.pmdemand.lock);
>+        if (drm_WARN_ON(&i915->drm,
>+                        !intel_pmdemand_check_prev_transaction(i915)))
>+                goto unlock;
>+
>+        reg1 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0))=
;
>+        mod_reg1 =3D reg1;
>+
>+        reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>+        mod_reg2 =3D reg2;
>+
>+        update_pmdemand_values(new, old, &mod_reg1, &mod_reg2);
>+
>+        if (reg1 !=3D mod_reg1) {
>+                intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+                               mod_reg1);
>+                changed =3D true;
>+        }
>+
>+        if (reg2 !=3D mod_reg2) {
>+                intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
>+                               mod_reg2);
>+                changed =3D true;
>+        }
>+
>+        /* Initiate pm demand request only if register values are changed=
 */
>+        if (!changed)
>+                goto unlock;
>+
>+        drm_dbg_kms(&i915->drm,
>+                    "initate pmdemand request values: (0x%x 0x%x)\n",
>+                    mod_reg1, mod_reg2);
>+
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+                     XELPDP_PMDEMAND_REQ_ENABLE);
>+
>+        intel_pmdemand_wait(i915);
>+
>+unlock:
>+        mutex_unlock(&i915->display.pmdemand.lock);
>+}
>+
>+static bool
>+intel_pmdemand_state_changed(const struct intel_pmdemand_state *new,
>+                             const struct intel_pmdemand_state *old)
>+{
>+        return memcmp(&new->params, &old->params, sizeof(new->params)) !=
=3D 0;
>+}
>+
>+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_pmdemand_state *new_pmdmnd_state =3D
>+                intel_atomic_get_new_pmdemand_state(state);
>+        const struct intel_pmdemand_state *old_pmdmnd_state =3D
>+                intel_atomic_get_old_pmdemand_state(state);
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return;
>+
>+        if (!new_pmdmnd_state ||
>+            !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_st=
ate))
>+                return;
>+
>+        intel_program_pmdemand(i915, new_pmdmnd_state, old_pmdmnd_state);
>+}
>+
>+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_pmdemand_state *new_pmdmnd_state =3D
>+                intel_atomic_get_new_pmdemand_state(state);
>+        const struct intel_pmdemand_state *old_pmdmnd_state =3D
>+                intel_atomic_get_old_pmdemand_state(state);
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return;
>+
>+        if (!new_pmdmnd_state ||
>+            !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_st=
ate))
>+                return;
>+
>+        intel_program_pmdemand(i915, new_pmdmnd_state, NULL);
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>new file mode 100644
>index 000000000000..2883b5d97a44
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -0,0 +1,24 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright =A9 2023 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_PMDEMAND_H__
>+#define __INTEL_PMDEMAND_H__
>+
>+#include <linux/types.h>
>+
>+struct drm_i915_private;
>+struct intel_atomic_state;
>+struct intel_crtc_state;
>+struct intel_plane_state;
>+
>+void intel_pmdemand_init_early(struct drm_i915_private *i915);
>+int intel_pmdemand_init(struct drm_i915_private *i915);
>+void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
>+                                 u8 dbuf_slices);

Maybe rename this to intel_pmdemand_program_dbuf() to be consistent with
the rest of functions exported here?

Also, since we probably are doing a re-spin of this patch, do you think
we could also take the opportunity to make static functions in
intel_pmdemand.c follow the same naming scheme?

--
Gustavo Sousa

>+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
>+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
>+int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
>+
>+#endif /* __INTEL_PMDEMAND_H__ */
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 2a9ab8de8421..91fb12b65c92 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4450,8 +4450,10 @@
> #define GEN8_DE_MISC_IMR _MMIO(0x44464)
> #define GEN8_DE_MISC_IIR _MMIO(0x44468)
> #define GEN8_DE_MISC_IER _MMIO(0x4446c)
>-#define  GEN8_DE_MISC_GSE                (1 << 27)
>-#define  GEN8_DE_EDP_PSR                (1 << 19)
>+#define  XELPDP_PMDEMAND_RSPTOUT_ERR        REG_BIT(27)
>+#define  GEN8_DE_MISC_GSE                REG_BIT(27)
>+#define  GEN8_DE_EDP_PSR                REG_BIT(19)
>+#define  XELPDP_PMDEMAND_RSP                REG_BIT(3)
>
> #define GEN8_PCU_ISR _MMIO(0x444e0)
> #define GEN8_PCU_IMR _MMIO(0x444e4)
>@@ -4536,6 +4538,33 @@
> #define  XELPDP_DP_ALT_HPD_LONG_DETECT                REG_BIT(1)
> #define  XELPDP_DP_ALT_HPD_SHORT_DETECT                REG_BIT(0)
>
>+#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)                _MMIO(0x45=
230 + 4 * (dword))
>+#define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK                REG_GENMASK(31, 1=
6)
>+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)                        REG_FIELD_P=
REP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)
>+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK                REG_GENMASK(14=
, 12)
>+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)                REG_FIELD_PREP(X=
ELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)
>+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK                REG_GENMASK(11=
, 8)
>+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)                REG_FIELD_PREP(X=
ELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)
>+#define  XELPDP_PMDEMAND_PIPES_MASK                        REG_GENMASK(7,=
 6)
>+#define  XELPDP_PMDEMAND_PIPES(x)                        REG_FIELD_PREP(X=
ELPDP_PMDEMAND_PIPES_MASK, x)
>+#define  XELPDP_PMDEMAND_DBUFS_MASK                        REG_GENMASK(5,=
 4)
>+#define  XELPDP_PMDEMAND_DBUFS(x)                        REG_FIELD_PREP(X=
ELPDP_PMDEMAND_DBUFS_MASK, x)
>+#define  XELPDP_PMDEMAND_PHYS_MASK                        REG_GENMASK(2, =
0)
>+#define  XELPDP_PMDEMAND_PHYS(x)                        REG_FIELD_PREP(XE=
LPDP_PMDEMAND_PHYS_MASK, x)
>+
>+#define  XELPDP_PMDEMAND_REQ_ENABLE                        REG_BIT(31)
>+#define  XELPDP_PMDEMAND_CDCLK_FREQ_MASK                REG_GENMASK(30, 2=
0)
>+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)                        REG_FIELD_P=
REP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)
>+#define  XELPDP_PMDEMAND_DDICLK_FREQ_MASK                REG_GENMASK(18, =
8)
>+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)                        REG_FIELD_=
PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)
>+#define  XELPDP_PMDEMAND_SCALERS_MASK                        REG_GENMASK(=
6, 4)
>+#define  XELPDP_PMDEMAND_SCALERS(x)                        REG_FIELD_PREP=
(XELPDP_PMDEMAND_SCALERS_MASK, x)
>+#define  XELPDP_PMDEMAND_PLLS_MASK                        REG_GENMASK(2, =
0)
>+#define  XELPDP_PMDEMAND_PLLS(x)                        REG_FIELD_PREP(XE=
LPDP_PMDEMAND_PLLS_MASK, x)
>+
>+#define GEN12_DCPR_STATUS_1                                _MMIO(0x46440)
>+#define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>+
> #define ILK_DISPLAY_CHICKEN2        _MMIO(0x42004)
> /* Required on all Ironlake and Sandybridge according to the B-Spec. */
> #define   ILK_ELPIN_409_SELECT        REG_BIT(25)
>@@ -4695,6 +4724,9 @@
> #define   DCPR_SEND_RESP_IMM                        REG_BIT(25)
> #define   DCPR_CLEAR_MEMSTAT_DIS                REG_BIT(24)
>
>+#define XELPD_CHICKEN_DCPR_3                        _MMIO(0x46438)
>+#define   DMD_RSP_TIMEOUT_DISABLE                REG_BIT(19)
>+
> #define SKL_DFSM                        _MMIO(0x51000)
> #define   SKL_DFSM_DISPLAY_PM_DISABLE        (1 << 27)
> #define   SKL_DFSM_DISPLAY_HDCP_DISABLE        (1 << 25)
>--
>2.34.1
>


--_000_CO1PR11MB49622FFEE558583ACB8CD5BFF6469CO1PR11MB4962namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div dir=3D"auto">Hi</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><br>
</div>
<div id=3D"mail-editor-reference-message-container" dir=3D"auto"><br>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" style=3D"font-size: 11pt;"><strong>From:</strong>=
 Sousa, Gustavo &lt;gustavo.sousa@intel.com&gt;<br>
<strong>Sent:</strong> Thursday, 25 May 2023, 17:06<br>
<strong>To:</strong> Govindapillai, Vinod &lt;vinod.govindapillai@intel.com=
&gt;; intel-gfx@lists.freedesktop.org &lt;intel-gfx@lists.freedesktop.org&g=
t;<br>
<strong>Cc:</strong> Syrjala, Ville &lt;ville.syrjala@intel.com&gt;; Lisovs=
kiy, Stanislav &lt;stanislav.lisovskiy@intel.com&gt;; Kahola, Mika &lt;mika=
.kahola@intel.com&gt;; Saarinen, Jani &lt;jani.saarinen@intel.com&gt;<br>
<strong>Subject:</strong> Re: [PATCH v8 7/7] drm/i915/mtl: Add support for =
PM DEMAND<br>
</div>
<br>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText" dir=3D"auto">Hi, Vinod.<br>
<br>
Thanks for the new version. I decided to take one final look at the<br>
overall patch I have found some issues yet. Sorry I didn't catch them<br>
before!<br>
<br>
Please, see my comments inline.<br>
<br>
Quoting Vinod Govindapillai (2023-05-24 20:03:42-03:00)<br>
&gt;From: Mika Kahola &lt;mika.kahola@intel.com&gt;<br>
&gt;<br>
&gt;MTL introduces a new way to instruct the PUnit with<br>
&gt;power and bandwidth requirements of DE. Add the functionality<br>
&gt;to program the registers and handle waits using interrupts.<br>
&gt;The current wait time for timeouts is programmed for 10 msecs to<br>
&gt;factor in the worst case scenarios. Changes made to use REG_BIT<br>
&gt;for a register that we touched(GEN8_DE_MISC_IER _MMIO).<br>
&gt;<br>
&gt;Wa_14016740474 is added which applies to Xe_LPD+ display<br>
&gt;<br>
&gt;v2: checkpatch warning fixes, simplify program pmdemand part<br>
&gt;<br>
&gt;v3: update to dbufs and pipes values to pmdemand register(stan)<br>
&gt;&nbsp;&nbsp;&nbsp; Removed the macro usage in update_pmdemand_values()<=
br>
&gt;<br>
&gt;v4: move the pmdemand_pre_plane_update before cdclk update<br>
&gt;&nbsp;&nbsp;&nbsp; pmdemand_needs_update included cdclk params comparis=
ons<br>
&gt;&nbsp;&nbsp;&nbsp; pmdemand_state NULL check (Gustavo)<br>
&gt;&nbsp;&nbsp;&nbsp; pmdemand.o in sorted order in the makefile (Jani)<br=
>
&gt;&nbsp;&nbsp;&nbsp; update pmdemand misc irq handler loop (Gustavo)<br>
&gt;&nbsp;&nbsp;&nbsp; active phys bitmask and programming correction (Gust=
avo)<br>
&gt;<br>
&gt;v5: simplify pmdemand_state structure<br>
&gt;&nbsp;&nbsp;&nbsp; simplify methods to find active phys and max port cl=
ock<br>
&gt;&nbsp;&nbsp;&nbsp; Timeout in case of previou pmdemand task pending (Gu=
stavo)<br>
&gt;<br>
&gt;v6: rebasing<br>
&gt;&nbsp;&nbsp;&nbsp; updates to max_ddiclk calculations (Gustavo)<br>
&gt;&nbsp;&nbsp;&nbsp; updates to active_phys count method (Gustavo)<br>
&gt;<br>
&gt;v7: use two separate loop to iterate throug old and new<br>
&gt;&nbsp;&nbsp;&nbsp; crtc states to calculate the active phys (Gustavo)<b=
r>
&gt;<br>
&gt;Bspec: 66451, 64636, 64602, 64603<br>
&gt;Cc: Matt Atwood &lt;matthew.s.atwood@intel.com&gt;<br>
&gt;Cc: Matt Roper &lt;matthew.d.roper@intel.com&gt;<br>
&gt;Cc: Lucas De Marchi &lt;lucas.demarchi@intel.com&gt;<br>
&gt;Cc: Gustavo Sousa &lt;gustavo.sousa@intel.com&gt;<br>
&gt;Signed-off-by: Jos=E9 Roberto de Souza &lt;jose.souza@intel.com&gt;<br>
&gt;Signed-off-by: Radhakrishna Sripada &lt;radhakrishna.sripada@intel.com&=
gt;<br>
&gt;Signed-off-by: Gustavo Sousa &lt;gustavo.sousa@intel.com&gt;<br>
&gt;Signed-off-by: Mika Kahola &lt;mika.kahola@intel.com&gt;<br>
&gt;Signed-off-by: Vinod Govindapillai &lt;vinod.govindapillai@intel.com&gt=
;<br>
&gt;Reviewed-by: Stanislav Lisovskiy &lt;stanislav.lisovskiy@intel.com&gt;<=
br>
&gt;---<br>
&gt; drivers/gpu/drm/i915/Makefile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 1 +<b=
r>
&gt; drivers/gpu/drm/i915/display/intel_display.c&nbsp; |&nbsp; 14 +<br>
&gt; .../gpu/drm/i915/display/intel_display_core.h |&nbsp;&nbsp; 9 +<br>
&gt; .../drm/i915/display/intel_display_driver.c&nbsp;&nbsp; |&nbsp;&nbsp; =
7 +<br>
&gt; .../gpu/drm/i915/display/intel_display_irq.c&nbsp; |&nbsp; 23 +-<br>
&gt; .../drm/i915/display/intel_display_power.c&nbsp;&nbsp;&nbsp; |&nbsp;&n=
bsp; 8 +<br>
&gt; drivers/gpu/drm/i915/display/intel_pmdemand.c | 560 ++++++++++++++++++=
<br>
&gt; drivers/gpu/drm/i915/display/intel_pmdemand.h |&nbsp; 24 +<br>
&gt; drivers/gpu/drm/i915/i915_reg.h&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 36 +-<br>
&gt; 9 files changed, 678 insertions(+), 4 deletions(-)<br>
&gt; create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c<br>
&gt; create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h<br>
&gt;<br>
&gt;diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makef=
ile<br>
&gt;index dd9ca69f4998..358463d02a57 100644<br>
&gt;--- a/drivers/gpu/drm/i915/Makefile<br>
&gt;+++ b/drivers/gpu/drm/i915/Makefile<br>
&gt;@@ -273,6 +273,7 @@ i915-y +=3D \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; display/intel_pch_disp=
lay.o \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; display/intel_pch_refc=
lk.o \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; display/intel_plane_in=
itial.o \<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; display/intel_pmdemand.o \<=
br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; display/intel_psr.o \<=
br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; display/intel_quirks.o=
 \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; display/intel_sprite.o=
 \<br>
&gt;diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c<br>
&gt;index 0490c6412ab5..b3bb2c607650 100644<br>
&gt;--- a/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt;+++ b/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt;@@ -99,6 +99,7 @@<br>
&gt; #include &quot;intel_pcode.h&quot;<br>
&gt; #include &quot;intel_pipe_crc.h&quot;<br>
&gt; #include &quot;intel_plane_initial.h&quot;<br>
&gt;+#include &quot;intel_pmdemand.h&quot;<br>
&gt; #include &quot;intel_pps.h&quot;<br>
&gt; #include &quot;intel_psr.h&quot;<br>
&gt; #include &quot;intel_sdvo.h&quot;<br>
&gt;@@ -6343,6 +6344,10 @@ int intel_atomic_check(struct drm_device *dev,<b=
r>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; r=
eturn ret;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; <br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_pmdemand_atom=
ic_check(state);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; goto fail;<br>
&gt;+<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_atomic_c=
heck_crtcs(state);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; goto fail;<br>
&gt;@@ -6988,6 +6993,14 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_new_intel_crt=
c_in_state(state, crtc, new_crtc_state, i)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; crtc-&gt;config =3D new_crtc_state;<br>
&gt; <br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * In XE_LPD+ Pmdemand=
 combines many parameters such as voltage index,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * plls, cdclk frequen=
cy, QGV point selection parameter etc. Voltage<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * index, cdclk/ddiclk=
 frequencies are supposed to be configured before<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * the cdclk config is=
 set.<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_pmdemand_pre_plane_up=
date(state);<br>
&gt;+<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (state-&gt;modeset)=
 {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; drm_atomic_helper_update_legacy_modeset_state(dev=
, &amp;state-&gt;base);<br>
&gt; <br>
&gt;@@ -7107,6 +7120,7 @@ static void intel_atomic_commit_tail(struct intel=
_atomic_state *state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; intel_verify_planes(state);<br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_sagv_post_plane_=
update(state);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_pmdemand_post_plane_u=
pdate(state);<br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_atomic_helper_comm=
it_hw_done(&amp;state-&gt;base);<br>
&gt; <br>
&gt;diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/driver=
s/gpu/drm/i915/display/intel_display_core.h<br>
&gt;index 9f66d734edf6..ae45b2c42eb1 100644<br>
&gt;--- a/drivers/gpu/drm/i915/display/intel_display_core.h<br>
&gt;+++ b/drivers/gpu/drm/i915/display/intel_display_core.h<br>
&gt;@@ -345,6 +345,15 @@ struct intel_display {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_global_obj obj;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } dbuf;<br>
&gt; <br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct {<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; wait_queue_head_t waitqueue;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; /* mutex to protect pmdemand programming sequence */<b=
r>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; struct mutex lock;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; struct intel_global_obj obj;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } pmdemand;<br>
&gt;+<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * dkl.phy_lock protects against concurrent =
access of the<br>
&gt;diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driv=
ers/gpu/drm/i915/display/intel_display_driver.c<br>
&gt;index 60ce10fc7205..dc8de861339d 100644<br>
&gt;--- a/drivers/gpu/drm/i915/display/intel_display_driver.c<br>
&gt;+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c<br>
&gt;@@ -47,6 +47,7 @@<br>
&gt; #include &quot;intel_opregion.h&quot;<br>
&gt; #include &quot;intel_overlay.h&quot;<br>
&gt; #include &quot;intel_plane_initial.h&quot;<br>
&gt;+#include &quot;intel_pmdemand.h&quot;<br>
&gt; #include &quot;intel_pps.h&quot;<br>
&gt; #include &quot;intel_quirks.h&quot;<br>
&gt; #include &quot;intel_vga.h&quot;<br>
&gt;@@ -211,6 +212,8 @@ int intel_display_driver_probe_noirq(struct drm_i91=
5_private *i915)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; goto cleanup_vga;<br>
&gt; <br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_pmdemand_init_early(i=
915);<br>
&gt;+<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_power_domains_in=
it_hw(i915, false);<br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!HAS_DISPLAY(i915)=
)<br>
&gt;@@ -240,6 +243,10 @@ int intel_display_driver_probe_noirq(struct drm_i9=
15_private *i915)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; goto cleanup_vga_client_pw_domain_dmc;<br>
&gt; <br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_pmdemand_init=
(i915);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; goto cleanup_vga_client_pw_domain_dmc;<br>
&gt;+<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; init_llist_head(&amp;i=
915-&gt;display.atomic_helper.free_list);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INIT_WORK(&amp;i915-&g=
t;display.atomic_helper.free_work,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_atomic_helper_free_state_worker=
);<br>
&gt;diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers=
/gpu/drm/i915/display/intel_display_irq.c<br>
&gt;index 3b2a287d2041..0b3739310f81 100644<br>
&gt;--- a/drivers/gpu/drm/i915/display/intel_display_irq.c<br>
&gt;+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c<br>
&gt;@@ -18,6 +18,7 @@<br>
&gt; #include &quot;intel_fifo_underrun.h&quot;<br>
&gt; #include &quot;intel_gmbus.h&quot;<br>
&gt; #include &quot;intel_hotplug_irq.h&quot;<br>
&gt;+#include &quot;intel_pmdemand.h&quot;<br>
&gt; #include &quot;intel_psr.h&quot;<br>
&gt; #include &quot;intel_psr_regs.h&quot;<br>
&gt; <br>
&gt;@@ -827,12 +828,27 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i91=
5_private *dev_priv)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;<br>
&gt; }<br>
&gt; <br>
&gt;+static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_pr=
iv)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wake_up_all(&amp;dev_priv-&=
gt;display.pmdemand.waitqueue);<br>
&gt;+}<br>
&gt;+<br>
&gt; static void<br>
&gt; gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)<b=
r>
&gt; {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool found =3D false;<=
br>
&gt; <br>
&gt;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (iir &amp; GEN8_DE_MISC_=
GSE) {<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (DISPLAY_VER(dev_priv) &=
gt;=3D 14) {<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (iir &amp; (XELPDP_PMDEMAND_RSP |<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; XELPDP_PMDEMAND_RSPTOUT_ERR)) {<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ii=
r &amp; XELPDP_PMDEMAND_RSPTOUT_ERR)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_dbg(&amp;dev_priv-&gt;drm,<br=
>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; &quot;Error waiting for Punit PM Demand Response\n&quot;);<b=
r>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_=
pmdemand_irq_handler(dev_priv);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; found =
=3D true;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; }<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (iir &amp; GEN8_D=
E_MISC_GSE) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; intel_opregion_asle_intr(dev_priv);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; found =3D true;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;@@ -1576,7 +1592,10 @@ void gen8_de_irq_postinstall(struct drm_i915_pri=
vate *dev_priv)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_GEMINILAKE(dev_=
priv) || IS_BROXTON(dev_priv))<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; de_port_masked |=3D BXT_DE_PORT_GMBUS;<br>
&gt; <br>
&gt;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (DISPLAY_VER(dev_priv) &=
gt;=3D 11) {<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (DISPLAY_VER(dev_priv) &=
gt;=3D 14) {<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; de_misc_masked |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; XELPDP_PMDEMAND_RSP;<=
br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else if (DISPLAY_VER(dev_=
priv) &gt;=3D 11) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; enum port port;<br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; if (intel_bios_is_dsi_present(dev_priv, &amp;port=
))<br>
&gt;diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drive=
rs/gpu/drm/i915/display/intel_display_power.c<br>
&gt;index 6ed2ece89c3f..59de308234a6 100644<br>
&gt;--- a/drivers/gpu/drm/i915/display/intel_display_power.c<br>
&gt;+++ b/drivers/gpu/drm/i915/display/intel_display_power.c<br>
&gt;@@ -20,6 +20,7 @@<br>
&gt; #include &quot;intel_mchbar_regs.h&quot;<br>
&gt; #include &quot;intel_pch_refclk.h&quot;<br>
&gt; #include &quot;intel_pcode.h&quot;<br>
&gt;+#include &quot;intel_pmdemand.h&quot;<br>
&gt; #include &quot;intel_pps_regs.h&quot;<br>
&gt; #include &quot;intel_snps_phy.h&quot;<br>
&gt; #include &quot;skl_watermark.h&quot;<br>
&gt;@@ -1085,6 +1086,10 @@ static void gen9_dbuf_enable(struct drm_i915_pri=
vate *dev_priv)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev_priv-&gt;display.d=
buf.enabled_slices =3D<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; intel_enabled_dbuf_slices_mask(dev_priv);<br>
&gt; <br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (DISPLAY_VER(dev_priv) &=
gt;=3D 14)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; intel_program_dbuf_pmdemand(dev_priv, BIT(DBUF_S1) |<b=
r>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev_priv-&gt;display.dbuf.enabled_sl=
ices);<br>
&gt;+<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Just power up =
at least 1 slice, we will<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * figure out lat=
er which slices we have and what we need.<br>
&gt;@@ -1096,6 +1101,9 @@ static void gen9_dbuf_enable(struct drm_i915_priv=
ate *dev_priv)<br>
&gt; static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)<br>
&gt; {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gen9_dbuf_slices_updat=
e(dev_priv, 0);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (DISPLAY_VER(dev_priv) &=
gt;=3D 14)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; intel_program_dbuf_pmdemand(dev_priv, 0);<br>
&gt; }<br>
&gt; <br>
&gt; static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv=
)<br>
&gt;diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gp=
u/drm/i915/display/intel_pmdemand.c<br>
&gt;new file mode 100644<br>
&gt;index 000000000000..01ec4e648de9<br>
&gt;--- /dev/null<br>
&gt;+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c<br>
&gt;@@ -0,0 +1,560 @@<br>
&gt;+// SPDX-License-Identifier: MIT<br>
&gt;+/*<br>
&gt;+ * Copyright =A9 2023 Intel Corporation<br>
&gt;+ */<br>
&gt;+<br>
&gt;+#include &lt;linux/bitops.h&gt;<br>
&gt;+<br>
&gt;+#include &quot;i915_drv.h&quot;<br>
&gt;+#include &quot;i915_reg.h&quot;<br>
&gt;+#include &quot;intel_bw.h&quot;<br>
&gt;+#include &quot;intel_cdclk.h&quot;<br>
&gt;+#include &quot;intel_cx0_phy.h&quot;<br>
&gt;+#include &quot;intel_de.h&quot;<br>
&gt;+#include &quot;intel_display.h&quot;<br>
&gt;+#include &quot;intel_display_trace.h&quot;<br>
&gt;+#include &quot;intel_pmdemand.h&quot;<br>
&gt;+#include &quot;skl_watermark.h&quot;<br>
&gt;+<br>
&gt;+struct pmdemand_params {<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u16 qclk_gv_bw;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 voltage_index;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 qclk_gv_index;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 active_pipes;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 dbufs;<br>
<br>
Hmm... Looks like this is not being used anymore.<br>
<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Total number of non type=
 C active phys from active_phys_mask */<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 active_phys;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u16 cdclk_freq_mhz;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* max from ddi_clocks[]*/<=
br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u16 ddiclk_max;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 scalers;<br>
&gt;+};<br>
&gt;+<br>
&gt;+struct intel_pmdemand_state {<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_global_state b=
ase;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Maintain a persistent li=
st of port clocks across all crtcs */<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int ddi_clocks[I915_MAX_PIP=
ES];<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Maintain a persistent li=
st of non type C phys mask */<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u16 active_phys_mask;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Parameters to be configu=
red in the pmdemand registers */<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct pmdemand_params para=
ms;<br>
&gt;+};<br>
&gt;+<br>
&gt;+#define to_intel_pmdemand_state(x) container_of((x), \<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel=
_pmdemand_state, \<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; base)<br>
&gt;+static struct intel_global_state *<br>
&gt;+intel_pmdemand_duplicate_state(struct intel_global_obj *obj)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_pmdemand_state=
 *pmdmnd_state;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pmdmnd_state =3D kmemdup(ob=
j-&gt;state, sizeof(*pmdmnd_state), GFP_KERNEL);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!pmdmnd_state)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return NULL;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return &amp;pmdmnd_state-&g=
t;base;<br>
&gt;+}<br>
&gt;+<br>
&gt;+static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,=
<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; struct intel_global_state *state)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kfree(state);<br>
&gt;+}<br>
&gt;+<br>
&gt;+static const struct intel_global_state_funcs intel_pmdemand_funcs =3D =
{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .atomic_duplicate_state =3D=
 intel_pmdemand_duplicate_state,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .atomic_destroy_state =3D i=
ntel_pmdemand_destroy_state,<br>
&gt;+};<br>
&gt;+<br>
&gt;+static struct intel_pmdemand_state *<br>
&gt;+intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i9=
15 =3D to_i915(state-&gt;base.dev);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_global_state *=
pmdemand_state =3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; intel_atomic_get_global_obj_state(state,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&amp;i915-&gt;display.pmdemand.obj);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR(pmdemand_state))=
<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return ERR_CAST(pmdemand_state);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return to_intel_pmdemand_st=
ate(pmdemand_state);<br>
&gt;+}<br>
&gt;+<br>
&gt;+static struct intel_pmdemand_state *<br>
&gt;+intel_atomic_get_old_pmdemand_state(struct intel_atomic_state *state)<=
br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i9=
15 =3D to_i915(state-&gt;base.dev);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_global_state *=
pmdemand_state =3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; intel_atomic_get_old_global_obj_state(state,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; &amp;i915-&gt;display.pmdemand.obj);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!pmdemand_state)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return NULL;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return to_intel_pmdemand_st=
ate(pmdemand_state);<br>
&gt;+}<br>
&gt;+<br>
&gt;+static struct intel_pmdemand_state *<br>
&gt;+intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)<=
br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i9=
15 =3D to_i915(state-&gt;base.dev);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_global_state *=
pmdemand_state =3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; intel_atomic_get_new_global_obj_state(state,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; &amp;i915-&gt;display.pmdemand.obj);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!pmdemand_state)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return NULL;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return to_intel_pmdemand_st=
ate(pmdemand_state);<br>
&gt;+}<br>
&gt;+<br>
&gt;+int intel_pmdemand_init(struct drm_i915_private *i915)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_pmdemand_state=
 *pmdemand_state;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pmdemand_state =3D kzalloc(=
sizeof(*pmdemand_state), GFP_KERNEL);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!pmdemand_state)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return -ENOMEM;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_atomic_global_obj_ini=
t(i915, &amp;i915-&gt;display.pmdemand.obj,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &am=
p;pmdemand_state-&gt;base,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &am=
p;intel_pmdemand_funcs);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_MTL_DISPLAY_STEP(i91=
5, STEP_A0, STEP_C0))<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; /* Wa_14016740474 */<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TI=
MEOUT_DISABLE);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return 0;<br>
&gt;+}<br>
&gt;+<br>
&gt;+void intel_pmdemand_init_early(struct drm_i915_private *i915)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mutex_init(&amp;i915-&gt;di=
splay.pmdemand.lock);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; init_waitqueue_head(&amp;i9=
15-&gt;display.pmdemand.waitqueue);<br>
&gt;+}<br>
&gt;+<br>
&gt;+static void pmdemand_update_max_ddiclk(struct intel_atomic_state *stat=
e,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; struct intel_pmdemand_state *pmd_state)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int max_ddiclk =3D 0;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc *crtc;<br=
>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_crtc_sta=
te *new_crtc_state;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_new_intel_crtc_in_=
state(state, crtc, new_crtc_state, i)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; pmd_state-&gt;ddi_clocks[crtc-&gt;pipe] =3D new_crtc_s=
tate-&gt;port_clock;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (i =3D 0; i &lt; ARRAY_=
SIZE(pmd_state-&gt;ddi_clocks); i++)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; max_ddiclk =3D max(pmd_state-&gt;ddi_clocks[i], max_dd=
iclk);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pmd_state-&gt;params.ddiclk=
_max =3D DIV_ROUND_UP(max_ddiclk, 1000);<br>
&gt;+}<br>
&gt;+<br>
&gt;+static struct intel_encoder *<br>
&gt;+pmdemand_get_crtc_old_encoder(const struct intel_atomic_state *state,<=
br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_crtc_state *crtc_state)<br=
>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct drm_connector_=
state *connector_state;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct drm_connector =
*connector;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_encoder *encod=
er =3D NULL;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc *master_c=
rtc;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; master_crtc =3D intel_maste=
r_crtc(crtc_state);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_old_connector_in_s=
tate(&amp;state-&gt;base, connector, connector_state, i) {<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (connector_state-&gt;crtc !=3D &amp;master_crtc-&gt=
;base)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; contin=
ue;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; encoder =3D to_intel_encoder(connector_state-&gt;best_=
encoder);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return encoder;<br>
&gt;+}<br>
&gt;+<br>
&gt;+static void<br>
&gt;+pmdemand_update_active_non_tc_phys(struct drm_i915_private *i915,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct in=
tel_atomic_state *state,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_pm=
demand_state *pmd_state)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc *crtc;<br=
>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_encoder *encod=
er;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_crtc_sta=
te *new_crtc_state, *old_crtc_state;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum phy phy;<br>
&gt;+<br>
<br>
Since we are probably doing a re-spin of this patch, maybe it is worth<br>
adding a short comment here explaining why we do the 2 loops? Just to<br>
make sure we don't get future patches trying to simplify this into a<br>
single loop.<br>
<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_oldnew_intel_crtc_=
in_state(state, crtc, old_crtc_state,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_crtc_state, i) {<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (!intel_crtc_needs_modeset(new_crtc_state))<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; contin=
ue;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (!old_crtc_state-&gt;hw.active)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; contin=
ue;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; encoder =3D pmdemand_get_crtc_old_encoder(state, old_c=
rtc_state);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (!encoder)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; contin=
ue;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; phy =3D intel_port_to_phy(i915, encoder-&gt;port);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; pmd_state-&gt;active_phys_mask &amp;=3D ~BIT(phy);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_oldnew_intel_crtc_=
in_state(state, crtc, old_crtc_state,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_crtc_state, i) {<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (!intel_crtc_needs_modeset(new_crtc_state))<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; contin=
ue;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (!new_crtc_state-&gt;hw.active)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; contin=
ue;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; encoder =3D intel_get_crtc_new_encoder(state, new_crtc=
_state);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (!encoder)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; contin=
ue;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; phy =3D intel_port_to_phy(i915, encoder-&gt;port);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (intel_phy_is_tc(i915, phy))<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; contin=
ue;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; pmd_state-&gt;active_phys_mask |=3D BIT(phy);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pmd_state-&gt;params.active=
_phys =3D hweight16(pmd_state-&gt;active_phys_mask);<br>
&gt;+}<br>
&gt;+<br>
&gt;+static bool pmdemand_needs_update(struct intel_atomic_state *state)<br=
>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool states_checked =3D fal=
se;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc *crtc;<br=
>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_crtc_sta=
te *new_crtc_state, *old_crtc_state;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_oldnew_intel_crtc_=
in_state(state, crtc, old_crtc_state,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_crtc_state, i) {<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; const struct intel_bw_state *new_bw_state, *old_bw_sta=
te;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; const struct intel_cdclk_state *new_cdclk_state;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; const struct intel_cdclk_state *old_cdclk_state;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; const struct intel_dbuf_state *new_dbuf_state, *old_db=
uf_state;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (old_crtc_state-&gt;port_clock !=3D new_crtc_state-=
&gt;port_clock)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return=
 true;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; /*<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; * For the below settings once through the loop i=
s enough.<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; * Some pmdemand_atomic_check calls might trigger=
 read lock not<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; * taken assert if these following checks are kep=
t outside this<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; * loop.<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (states_checked)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; contin=
ue;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; new_bw_state =3D intel_atomic_get_new_bw_state(state);=
<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; old_bw_state =3D intel_atomic_get_old_bw_state(state);=
<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (new_bw_state &amp;&amp; new_bw_state-&gt;qgv_point=
_peakbw !=3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_bw_state-&gt;qgv_point_pea=
kbw)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return=
 true;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; new_dbuf_state =3D intel_atomic_get_new_dbuf_state(sta=
te);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; old_dbuf_state =3D intel_atomic_get_old_dbuf_state(sta=
te);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (new_dbuf_state &amp;&amp; new_dbuf_state-&gt;activ=
e_pipes !=3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_dbuf_state-&gt;active_pipe=
s)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return=
 true;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; new_cdclk_state =3D intel_atomic_get_new_cdclk_state(s=
tate);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; old_cdclk_state =3D intel_atomic_get_old_cdclk_state(s=
tate);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (new_cdclk_state &amp;&amp;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (new_cdclk_state-&gt;logical.c=
dclk !=3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_cdclk_state-&gt;logi=
cal.cdclk ||<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_cdclk_state-&gt;logi=
cal.voltage_level !=3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_cdclk_state-&gt;logi=
cal.voltage_level))<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return=
 true;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; states_checked =3D true;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return false;<br>
<br>
I'm afraid we are missing one thing in this function: we need to know<br>
whether the number of active non-TC PHYs could change and return true if<br=
>
so, otherwise we could end up skipping a required PM Demand transaction.<br=
>
<br>
I would implement that using the same 2-loop strategy from<br>
pmdemand_update_active_non_tc_phys() but having two bitmasks: one for<br>
PHYs of CTRCs from old state being disabled (first loop) and another for<br=
>
active CRTCs in the new state (second loop). If those masks match each<br>
other, that means the number of active PHYs will not change, otherwise<br>
there is a possibility that it will change.<br>
<br>
Perhaps we should rename and change<br>
pmdemand_update_active_non_tc_phys()'s implementation to fill those two<br>
masks and then we could use them appropriately depending on where that<br>
function is called. For example, if we rename and call it like<br>
<br>
&nbsp; intel_pmdmand_calc_non_tc_phy_masks(i915, state, inactive_phys_mask,=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ac=
tive_phys_mask)<br>
, we would:<br>
<br>
&nbsp; - Here in this function, return true if inactive_mask !=3D active_ma=
sk.<br>
<br>
&nbsp; - In intel_pmdemand_atomic_check(), update the mask in the following=
<br>
&nbsp;&nbsp;&nbsp; order:<br>
<br>
&nbsp;&nbsp;&nbsp; - new_pmdemand_state-&gt;active_phys_mask &amp;=3D ~inac=
tive_phys_mask;<br>
&nbsp;&nbsp;&nbsp; - new_pmdemand_state-&gt;active_phys_mask |=3D active_ph=
ys_mask;</div>
<div class=3D"PlainText" dir=3D"auto"><br>
</div>
<div class=3D"PlainText" dir=3D"auto">Can only the phys change without impa=
cting other parameters here?<br>
<br>
&gt;+}<br>
&gt;+<br>
&gt;+int intel_pmdemand_atomic_check(struct intel_atomic_state *state)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i9=
15 =3D to_i915(state-&gt;base.dev);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_bw_state=
 *new_bw_state;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_cdclk_st=
ate *new_cdclk_state;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_dbuf_sta=
te *new_dbuf_state;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_pmdemand_state=
 *new_pmdemand_state;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int ret;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (DISPLAY_VER(i915) &lt; =
14)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return 0;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!pmdemand_needs_update(=
state))<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return 0;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_pmdemand_state =3D inte=
l_atomic_get_pmdemand_state(state);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR(new_pmdemand_sta=
te))<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return PTR_ERR(new_pmdemand_state);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_atomic_lock_g=
lobal_state(&amp;new_pmdemand_state-&gt;base);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return ret;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_bw_state =3D intel_atom=
ic_get_bw_state(state);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR(new_bw_state))<b=
r>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return PTR_ERR(new_bw_state);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* firmware will calculate =
the qclck_gc_index, requirement is set to 0 */<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_pmdemand_state-&gt;para=
ms.qclk_gv_index =3D 0;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_pmdemand_state-&gt;para=
ms.qclk_gv_bw =3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; min_t(u16, new_bw_state-&gt;qgv_point_peakbw, 0xffff);=
<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_dbuf_state =3D intel_at=
omic_get_dbuf_state(state);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR(new_dbuf_state))=
<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return PTR_ERR(new_dbuf_state);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_pmdemand_state-&gt;para=
ms.active_pipes =3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; min_t(u8, hweight8(new_dbuf_state-&gt;active_pipes), 3=
);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_cdclk_state =3D intel_a=
tomic_get_cdclk_state(state);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR(new_cdclk_state)=
)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return PTR_ERR(new_cdclk_state);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_pmdemand_state-&gt;para=
ms.voltage_index =3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; new_cdclk_state-&gt;logical.voltage_level;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_pmdemand_state-&gt;para=
ms.cdclk_freq_mhz =3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; DIV_ROUND_UP(new_cdclk_state-&gt;logical.cdclk, 1000);=
<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pmdemand_update_max_ddiclk(=
state, new_pmdemand_state);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pmdemand_update_active_non_=
tc_phys(i915, state, new_pmdemand_state);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Setting scalers to =
max as it can not be calculated during flips and<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * fastsets without ta=
king global states locks.<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_pmdemand_state-&gt;para=
ms.scalers =3D 7;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_atomic_serial=
ize_global_state(&amp;new_pmdemand_state-&gt;base);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return ret;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return 0;<br>
&gt;+}<br>
&gt;+<br>
&gt;+static bool intel_pmdemand_check_prev_transaction(struct drm_i915_priv=
ate *i915)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return !(intel_de_wait_for_=
clear(i915,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; XELPDP_INITIATE_PMDEMAND_REQUEST(1),<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; XELPDP_PMDEMAND_REQ_ENABLE, 10) ||<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_wait_for_clear(i915,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; GEN12_DCPR_STATUS_1,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; XELPDP_PMDEMAND_INFLIGHT_STATUS, 10));<br>
&gt;+}<br>
&gt;+<br>
&gt;+static bool intel_pmdemand_req_complete(struct drm_i915_private *i915)=
<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return !(intel_de_read(i915=
, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) &amp;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; XELPDP_PMDEMAND_REQ_ENABLE);<br>
&gt;+}<br>
&gt;+<br>
&gt;+static int intel_pmdemand_wait(struct drm_i915_private *i915)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DEFINE_WAIT(wait);<br>
<br>
Hm... I think this is a leftover of a previous version of this function. We=
<br>
should remove this line.<br>
<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int ret;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const unsigned int timeout_=
ms =3D 10;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D wait_event_timeout(=
i915-&gt;display.pmdemand.waitqueue,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_pmdemand_req_complete=
(i915),<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; msecs_to_jiffies_timeout(ti=
meout_ms));<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret =3D=3D 0)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; drm_err(&amp;i915-&gt;drm,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;=
timed out waiting for Punit PM Demand Response\n&quot;);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return ret;<br>
&gt;+}<br>
&gt;+<br>
&gt;+/* Required to be programmed during Display Init Sequences. */<br>
&gt;+void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 dbuf_slices)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 dbufs =3D min_t(u32, hw=
eight8(dbuf_slices), 3);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mutex_lock(&amp;i915-&gt;di=
splay.pmdemand.lock);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (drm_WARN_ON(&amp;i915-&=
gt;drm,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; !intel=
_pmdemand_check_prev_transaction(i915)))<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; goto unlock;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_rmw(i915, XELPDP_I=
NITIATE_PMDEMAND_REQUEST(0),<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; XELPDP_PMDEMAND_DBUFS_MA=
SK, XELPDP_PMDEMAND_DBUFS(dbufs));<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_rmw(i915, XELPDP_I=
NITIATE_PMDEMAND_REQUEST(1), 0,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; XELPDP_PMDEMAND_REQ_ENAB=
LE);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_pmdemand_wait(i915);<=
br>
&gt;+<br>
&gt;+unlock:<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mutex_unlock(&amp;i915-&gt;=
display.pmdemand.lock);<br>
&gt;+}<br>
&gt;+<br>
&gt;+static void update_pmdemand_values(const struct intel_pmdemand_state *=
new,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct in=
tel_pmdemand_state *old,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 *reg1, u32 =
*reg2)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 plls, tmp;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * The pmdemand parame=
ter updates happens in two steps. Pre plane and<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * post plane updates.=
 During the pre plane, as DE might still be<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * handling with some =
old operations, to avoid unwanted performance<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * issues, program the=
 pmdemand parameters with higher of old and new<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * values. And then af=
ter once settled, use the new parameter values<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * as part of the post=
 plane update.<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Set 1*/<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg1 &amp;=3D ~XELPDP_PMDE=
MAND_QCLK_GV_BW_MASK;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tmp =3D old ? max(old-&gt;p=
arams.qclk_gv_bw, new-&gt;params.qclk_gv_bw) :<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new-&gt;params.qclk_gv_bw;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg1 |=3D XELPDP_PMDEMAND_=
QCLK_GV_BW(tmp);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg1 &amp;=3D ~XELPDP_PMDE=
MAND_VOLTAGE_INDEX_MASK;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tmp =3D old ? max(old-&gt;p=
arams.voltage_index, new-&gt;params.voltage_index) :<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new-&gt;params.voltage_index;<=
br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg1 |=3D XELPDP_PMDEMAND_=
VOLTAGE_INDEX(tmp);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg1 &amp;=3D ~XELPDP_PMDE=
MAND_QCLK_GV_INDEX_MASK;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tmp =3D old ? max(old-&gt;p=
arams.qclk_gv_index, new-&gt;params.qclk_gv_index) :<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new-&gt;params.qclk_gv_index;<=
br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg1 |=3D XELPDP_PMDEMAND_=
QCLK_GV_INDEX(tmp);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg1 &amp;=3D ~XELPDP_PMDE=
MAND_PIPES_MASK;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tmp =3D old ? max(old-&gt;p=
arams.active_pipes, new-&gt;params.active_pipes) :<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new-&gt;params.active_pipes;<b=
r>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg1 |=3D XELPDP_PMDEMAND_=
PIPES(tmp);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg1 &amp;=3D ~XELPDP_PMDE=
MAND_PHYS_MASK;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; plls =3D old ? max(old-&gt;=
params.active_phys, new-&gt;params.active_phys) :<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new-&gt;params.active_ph=
ys;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; plls =3D min_t(u32, plls, 7=
);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg1 |=3D XELPDP_PMDEMAND_=
PHYS(plls);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Set 2*/<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg2 &amp;=3D ~XELPDP_PMDE=
MAND_CDCLK_FREQ_MASK;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tmp =3D old ? max(old-&gt;p=
arams.cdclk_freq_mhz,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new-&g=
t;params.cdclk_freq_mhz) :<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new-&gt;params.cdclk_freq_mhz;=
<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg2 |=3D XELPDP_PMDEMAND_=
CDCLK_FREQ(tmp);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg2 &amp;=3D ~XELPDP_PMDE=
MAND_DDICLK_FREQ_MASK;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tmp =3D old ? max(old-&gt;p=
arams.ddiclk_max, new-&gt;params.ddiclk_max) :<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new-&gt;params.ddiclk_max;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg2 |=3D XELPDP_PMDEMAND_=
DDICLK_FREQ(tmp);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg2 &amp;=3D ~XELPDP_PMDE=
MAND_SCALERS_MASK;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tmp =3D old ? max(old-&gt;p=
arams.scalers, new-&gt;params.scalers) :<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new-&gt;params.scalers;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg2 |=3D XELPDP_PMDEMAND_=
SCALERS(tmp);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Active_PLLs starts =
with 1 because of CDCLK PLL.<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * TODO: Missing to ac=
count genlock filter when it gets used.<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; plls =3D min_t(u32, plls + =
1, 7);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg2 &amp;=3D ~XELPDP_PMDE=
MAND_PLLS_MASK;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *reg2 |=3D XELPDP_PMDEMAND_=
PLLS(plls);<br>
&gt;+}<br>
&gt;+<br>
&gt;+static void intel_program_pmdemand(struct drm_i915_private *i915,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct in=
tel_pmdemand_state *new,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct in=
tel_pmdemand_state *old)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool changed =3D false;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 reg1, mod_reg1;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 reg2, mod_reg2;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mutex_lock(&amp;i915-&gt;di=
splay.pmdemand.lock);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (drm_WARN_ON(&amp;i915-&=
gt;drm,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; !intel=
_pmdemand_check_prev_transaction(i915)))<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; goto unlock;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg1 =3D intel_de_read(i915=
, XELPDP_INITIATE_PMDEMAND_REQUEST(0));<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mod_reg1 =3D reg1;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg2 =3D intel_de_read(i915=
, XELPDP_INITIATE_PMDEMAND_REQUEST(1));<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mod_reg2 =3D reg2;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; update_pmdemand_values(new,=
 old, &amp;mod_reg1, &amp;mod_reg2);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (reg1 !=3D mod_reg1) {<b=
r>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(=
0),<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mod_reg1);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; changed =3D true;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (reg2 !=3D mod_reg2) {<b=
r>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(=
1),<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mod_reg2);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; changed =3D true;<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Initiate pm demand reque=
st only if register values are changed */<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!changed)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; goto unlock;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_dbg_kms(&amp;i915-&gt;d=
rm,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;initate pmdemand request=
 values: (0x%x 0x%x)\n&quot;,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mod_reg1, mod_reg2);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_rmw(i915, XELPDP_I=
NITIATE_PMDEMAND_REQUEST(1), 0,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; XELPDP_PMDEMAND_REQ_ENAB=
LE);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_pmdemand_wait(i915);<=
br>
&gt;+<br>
&gt;+unlock:<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mutex_unlock(&amp;i915-&gt;=
display.pmdemand.lock);<br>
&gt;+}<br>
&gt;+<br>
&gt;+static bool<br>
&gt;+intel_pmdemand_state_changed(const struct intel_pmdemand_state *new,<b=
r>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; const struct intel_pmdemand_state *old)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return memcmp(&amp;new-&gt;=
params, &amp;old-&gt;params, sizeof(new-&gt;params)) !=3D 0;<br>
&gt;+}<br>
&gt;+<br>
&gt;+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)=
<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i9=
15 =3D to_i915(state-&gt;base.dev);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_pmdemand=
_state *new_pmdmnd_state =3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; intel_atomic_get_new_pmdemand_state(state);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_pmdemand=
_state *old_pmdmnd_state =3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; intel_atomic_get_old_pmdemand_state(state);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (DISPLAY_VER(i915) &lt; =
14)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!new_pmdmnd_state ||<br=
>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; !in=
tel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_state))<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_program_pmdemand(i915=
, new_pmdmnd_state, old_pmdmnd_state);<br>
&gt;+}<br>
&gt;+<br>
&gt;+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state=
)<br>
&gt;+{<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i9=
15 =3D to_i915(state-&gt;base.dev);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_pmdemand=
_state *new_pmdmnd_state =3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; intel_atomic_get_new_pmdemand_state(state);<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_pmdemand=
_state *old_pmdmnd_state =3D<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; intel_atomic_get_old_pmdemand_state(state);<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (DISPLAY_VER(i915) &lt; =
14)<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!new_pmdmnd_state ||<br=
>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; !in=
tel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_state))<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return;<br>
&gt;+<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_program_pmdemand(i915=
, new_pmdmnd_state, NULL);<br>
&gt;+}<br>
&gt;diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gp=
u/drm/i915/display/intel_pmdemand.h<br>
&gt;new file mode 100644<br>
&gt;index 000000000000..2883b5d97a44<br>
&gt;--- /dev/null<br>
&gt;+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h<br>
&gt;@@ -0,0 +1,24 @@<br>
&gt;+/* SPDX-License-Identifier: MIT */<br>
&gt;+/*<br>
&gt;+ * Copyright =A9 2023 Intel Corporation<br>
&gt;+ */<br>
&gt;+<br>
&gt;+#ifndef __INTEL_PMDEMAND_H__<br>
&gt;+#define __INTEL_PMDEMAND_H__<br>
&gt;+<br>
&gt;+#include &lt;linux/types.h&gt;<br>
&gt;+<br>
&gt;+struct drm_i915_private;<br>
&gt;+struct intel_atomic_state;<br>
&gt;+struct intel_crtc_state;<br>
&gt;+struct intel_plane_state;<br>
&gt;+<br>
&gt;+void intel_pmdemand_init_early(struct drm_i915_private *i915);<br>
&gt;+int intel_pmdemand_init(struct drm_i915_private *i915);<br>
&gt;+void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,<br>
&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 dbuf_slices);<br>
<br>
Maybe rename this to intel_pmdemand_program_dbuf() to be consistent with<br=
>
the rest of functions exported here?<br>
<br>
Also, since we probably are doing a re-spin of this patch, do you think<br>
we could also take the opportunity to make static functions in<br>
intel_pmdemand.c follow the same naming scheme?<br>
<br>
--<br>
Gustavo Sousa<br>
<br>
&gt;+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)=
;<br>
&gt;+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state=
);<br>
&gt;+int intel_pmdemand_atomic_check(struct intel_atomic_state *state);<br>
&gt;+<br>
&gt;+#endif /* __INTEL_PMDEMAND_H__ */<br>
&gt;diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h<br>
&gt;index 2a9ab8de8421..91fb12b65c92 100644<br>
&gt;--- a/drivers/gpu/drm/i915/i915_reg.h<br>
&gt;+++ b/drivers/gpu/drm/i915/i915_reg.h<br>
&gt;@@ -4450,8 +4450,10 @@<br>
&gt; #define GEN8_DE_MISC_IMR _MMIO(0x44464)<br>
&gt; #define GEN8_DE_MISC_IIR _MMIO(0x44468)<br>
&gt; #define GEN8_DE_MISC_IER _MMIO(0x4446c)<br>
&gt;-#define&nbsp; GEN8_DE_MISC_GSE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (1 &lt;&lt; 27)<br>
&gt;-#define&nbsp; GEN8_DE_EDP_PSR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (1 &lt;&lt; 19)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_RSPTOUT_ERR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; REG_BIT(27)<br>
&gt;+#define&nbsp; GEN8_DE_MISC_GSE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_BIT(27)<br>
&gt;+#define&nbsp; GEN8_DE_EDP_PSR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_BIT(19)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_RSP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_BIT(3)<br>
&gt; <br>
&gt; #define GEN8_PCU_ISR _MMIO(0x444e0)<br>
&gt; #define GEN8_PCU_IMR _MMIO(0x444e4)<br>
&gt;@@ -4536,6 +4538,33 @@<br>
&gt; #define&nbsp; XELPDP_DP_ALT_HPD_LONG_DETECT&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_BIT(1)<=
br>
&gt; #define&nbsp; XELPDP_DP_ALT_HPD_SHORT_DETECT&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_BIT(0)=
<br>
&gt; <br>
&gt;+#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _MMIO(0=
x45230 + 4 * (dword))<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_QCLK_GV_BW_MASK&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_GENMA=
SK(31, 16)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_QCLK_GV_BW(x)&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV=
_BW_MASK, x)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_GE=
NMASK(14, 12)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_VOLTAGE_INDEX(x)&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_FIEL=
D_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_GE=
NMASK(11, 8)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_QCLK_GV_INDEX(x)&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_FIEL=
D_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_PIPES_MASK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_GENMASK(7, 6)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_PIPES(x)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, =
x)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_DBUFS_MASK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_GENMASK(5, 4)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_DBUFS(x)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, =
x)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_PHYS_MASK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_GENMASK(2, 0)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_PHYS(x)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_FIELD_PREP(XELPDP_PMDEMAND_PHYS_MASK, x)=
<br>
&gt;+<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_REQ_ENABLE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_BIT(31)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_CDCLK_FREQ_MASK&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_GENMA=
SK(30, 20)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_CDCLK_FREQ(x)&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_F=
REQ_MASK, x)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_DDICLK_FREQ_MASK&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_GENM=
ASK(18, 8)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_DDICLK_FREQ(x)&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK=
_FREQ_MASK, x)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_SCALERS_MASK&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_GENMASK(6, 4)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_SCALERS(x)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MA=
SK, x)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_PLLS_MASK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_GENMASK(2, 0)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_PLLS(x)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_FIELD_PREP(XELPDP_PMDEMAND_PLLS_MASK, x)=
<br>
&gt;+<br>
&gt;+#define GEN12_DCPR_STATUS_1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _MMIO(=
0x46440)<br>
&gt;+#define&nbsp; XELPDP_PMDEMAND_INFLIGHT_STATUS&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_BIT(2=
6)<br>
&gt;+<br>
&gt; #define ILK_DISPLAY_CHICKEN2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 _MMIO(0x42004)<br>
&gt; /* Required on all Ironlake and Sandybridge according to the B-Spec. *=
/<br>
&gt; #define&nbsp;&nbsp; ILK_ELPIN_409_SELECT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; REG_BIT(25)<br>
&gt;@@ -4695,6 +4724,9 @@<br>
&gt; #define&nbsp;&nbsp; DCPR_SEND_RESP_IMM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_BIT(25)<br>
&gt; #define&nbsp;&nbsp; DCPR_CLEAR_MEMSTAT_DIS&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_BIT(24)<=
br>
&gt; <br>
&gt;+#define XELPD_CHICKEN_DCPR_3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; _MMIO(0x46438)<br>
&gt;+#define&nbsp;&nbsp; DMD_RSP_TIMEOUT_DISABLE&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_BIT(19)=
<br>
&gt;+<br>
&gt; #define SKL_DFSM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; _MMIO(0x51000)<br>
&gt; #define&nbsp;&nbsp; SKL_DFSM_DISPLAY_PM_DISABLE&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; (1 &lt;&lt; 27)<br>
&gt; #define&nbsp;&nbsp; SKL_DFSM_DISPLAY_HDCP_DISABLE&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; (1 &lt;&lt; 25)<br>
&gt;-- <br>
&gt;2.34.1<br>
&gt;<br>
</div>
</span></font><br>
</div>
</body>
</html>

--_000_CO1PR11MB49622FFEE558583ACB8CD5BFF6469CO1PR11MB4962namp_--
