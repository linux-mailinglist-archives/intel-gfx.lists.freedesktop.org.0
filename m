Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7317F773311
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 00:48:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C5410E042;
	Mon,  7 Aug 2023 22:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EBA710E042
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Aug 2023 22:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691448524; x=1722984524;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+CLxoouhAs/b/v4+pnl4/33RWXGsaI0HCIBG61O8pxU=;
 b=Wms6JzHd9qPIZY9BwGZZwH8mB8iTP5ez0+7SSJ7vSvfJ3L4/ebSPkA0E
 BW6+Lcd1moefoACn9jzrYgyj+8vjUGBwcKQtx+AO4oIGISSr0i1TScP4y
 ormQx+cyi/2VwtJ0vKCRIQTVC5tFFFjacUiBhd2l+TKahcwEvO8LQxNh5
 MrUg4ezYhHEMDfaQO5XVPaX6KoWZzmruMTEKwCBntvSIC7H4Bzjn/5AYi
 PSMFFE8ZpA8dJ26dSwv15uG0bgaO9R1FU2QCAnRgPbIWC3Sc/TM2c2qN6
 6A692lE97roc4F1eOMkDbJ0H/npkwW01bGzICa7rGrtP1ZFIsyQY7P7iT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="434513671"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="434513671"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 15:48:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="821127219"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="821127219"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Aug 2023 15:48:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 15:48:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 7 Aug 2023 15:48:43 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 7 Aug 2023 15:48:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jcStif2Tw7rt5PF0Wr49/yMahwBZO/szTk4279i/SxQpcZ2K8clJRT/b3/Esi7rMP/og/T8h+qEpL3ya/07e5Lr55H0Igge2O9SYR21nTbiTqLSOM/cbTXMGTpbbBsHqbKPN10shiipkALzkm0n2diGiicZx8ipIT1N6hYBpsFGRG9ZMoRxg4IGuwth+A2fhwxZ7lXTRY49AcinsP02Zm5xyPvhCs/jDcajNSo8Xhnli5B5UEgg6hc7fwBcWuUAJEFy0vBd/NKe6B2ATGQDCHSKRwu6Wt7gyBmihKiozedGdHQ+Mbtzhx5SV2Y+Z8Q9T1sqFWhmwvzD9PBGqMO1Nxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d0ZZVBIDE9Ugj/MsZjh3SdFOEND4Z8QKVQQwbzaU5T8=;
 b=IJ0FwTiBz+ZcuWnA9/WFrbNohLqjAq1vcD+RL9+Ai2ywgzK+CBwUtQwX/HGgOg75ZtyNArlaK0tZ9fHIrRb2Z3vaGCo9yebyBYo2fUcdHemsFVh+JlN1WORkNUPF5oLKnCuL+tv6LuSIxb66wi97Zlmjg/g1G+bzwReUWq1mh0Kyp0ppli3qNqWd0Z4nXpBRoFQzY2PHKzO7FUAELuYV83GQNw7UYMTH2b8osJN71pwpkqeQOB9LkNAFDQvdj+06A82L1dVI2NbNT96ZcFJ6iwk2XCQEXhAR1Epxu68h9cyPNN6baBoojPKSHVJbex/+/gyM0T9v6StzAX87uJNP6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 PH0PR11MB7635.namprd11.prod.outlook.com (2603:10b6:510:28e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 22:48:40 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::8934:bc24:bf8a:2316]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::8934:bc24:bf8a:2316%3]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 22:48:40 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v1 00/14] Replace acronym with full platform
 name in defines
Thread-Index: AQHZxH+rcUT3nnqxzUq1PtIvI7M2W6/feUlg
Date: Mon, 7 Aug 2023 22:48:40 +0000
Message-ID: <DM4PR11MB5971A47CE9E315D2FEF56D28870CA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230801135344.3797924-1-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|PH0PR11MB7635:EE_
x-ms-office365-filtering-correlation-id: 3f51f442-bb75-4616-9ac4-08db979871b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uGUoNVt3st0afZQV5RDjLclhwuM0qCp332DcSWm5fYNsBJtx6sOvd9qyei999YZJirsT/w6QuEke4CNL+1JIL2KxoQeA8KR1neN8Q1yTeWvl5JJamylqvlwtRe2gzNSMTRw2WpclCi0anIyzIEdf7UsPF5Hzx2e1/uGHy7uo2I0F819CDqV50IyKd1G33KhdUxRbmxBAtzXPbZ30ys5upZ3xUqEPUlBRUqvqwC16x7MkJfgS0bFHa5ahmSaMpnkmYryaYhhL0tlp60g9K7BE2kc24j9xopral33mG16nn541vokyk4q5AEloE50DQNmN/8u6IQLz/gOdcm8WoKJw0rmFGGvy41y/GWaiaLEQUAHl0pRBYkRKss5gT2jTSYBokhg/x+kzJkIlKsNhCsU6AQ7uL0jXIHekfJz8Nz6n6VfBZraCF5arsoh6lWTBxfECtV/iV9fGUQYlMDkyi5HCb3/6nDiORlTH14lE5+tY8D5wvtrhfB1za3L+uKUlb0uSWEEKkcQsYK/9kBdSVPcDSyEULyu0/Me3vkZs4hjStSi2SbIqpkkADMnZwoabAwn2yxLHV36aWqT1UE1ijZ8xOCNuWmEkReTJdzxPsD3pso8iiqOV5+ChliAdO07iS8ITtWhYB5wKcnIFkAgPW93Tbgi1owHJCzkndFEMZ3jvwUE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(376002)(136003)(396003)(346002)(1800799003)(186006)(90011799006)(451199021)(66556008)(64756008)(76116006)(66946007)(66476007)(4326008)(2906002)(478600001)(66446008)(52536014)(8936002)(8676002)(5660300002)(41300700001)(55016003)(316002)(110136005)(86362001)(38070700005)(33656002)(122000001)(71200400001)(82960400001)(7696005)(38100700002)(966005)(9686003)(53546011)(6506007)(26005)(83380400001)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?49EgBnqGGxYxZFlvF1iiLMtsZVihZFxpIT6pC+zsaA6AFRkPFY3/mhGAHMja?=
 =?us-ascii?Q?OmyR6FFY6I7uXLG410TD+uhKRpBy3j00VVa+Jlq6z/ToecXMBT4IbgPau7/q?=
 =?us-ascii?Q?WM5fUeR/izFMAeXU+WRQkjZYR2aBGzXc5aFduI1GSDjiPu5SoqZE6JIx3q0U?=
 =?us-ascii?Q?Yx9fik1IAsdaOuIL3h7alprEpyg17oWs8zwNosc6SttR5QThvDxi0uR4UkB3?=
 =?us-ascii?Q?Kir3+GvqB+6IEXNt3W8z7XakuKe/T8fBGe2guGrtYuilNA9YbTQJ5M5UVLhg?=
 =?us-ascii?Q?T1WisC2iyECC1YoVYX/mwbyUFSwH5Q3b4u2WJbpUmh5WYKZN5EcVEclVMaTd?=
 =?us-ascii?Q?3h90RTDx0k+1tAf1KOt3ZQxEQPYcdY7KSuQJg+ZX64pS7RS8Wv5hr8MUJita?=
 =?us-ascii?Q?fXqPWTAYmztTRwJEiO2fPmgqrDa70iwz0X9SK91Phg2CYI1lmwhXM3Ma0yWQ?=
 =?us-ascii?Q?+C64VsucnIAhadwLPX2JxVXbVgW8EaMvpPYsko6AXenx1ryV8inYtkLnLQWk?=
 =?us-ascii?Q?I7KaH74JjkbrM2wl/TUToBayerfoWeEUm+PgG4T4EliWPJFBG1Chef66i+Ja?=
 =?us-ascii?Q?8CvHAQPWPh/ECyI5j5rc81kYsky7/uEddaTvSFo8/qq6dgYYgOU49b/84Jz1?=
 =?us-ascii?Q?hT8rVGc+rQhjbM3GmaJO8iiSjHIhHyLM263Hd03fky5Iq7RTVIE9b8NqMBqh?=
 =?us-ascii?Q?0Us9cxLiSb1a32zlX58X16ApnqedXmw9PkXSQfxSkn3LwcSW4TvhElYJuZHG?=
 =?us-ascii?Q?GlE6o/KZl/jhgt8CwHuGVpB0fvtdyN+kTBaYnK2D+YDXbnlU8QoXONxQisrO?=
 =?us-ascii?Q?8bEMJNO3gcY8i/qiVtLOBcJrjVF/KBtF6KSbnezuGx36gHXzTIbJxQ8cvTbR?=
 =?us-ascii?Q?Abc/pkAwT8xM//LGbuKfZOUOhEqerAnbBKI+Uof0vYVfHNRR3+0y1o/n+Whr?=
 =?us-ascii?Q?6iWADhIYspYi0qk+jpbT6LOzW+fPHgkNqxI5el2L/rjog7GqHtIslFpwciV3?=
 =?us-ascii?Q?+IEJCjC7OlQRUPNHPwmUQk5BCgO4cfqknxRUhqKnZzGmciiIJ60PG2epS0PI?=
 =?us-ascii?Q?kZnJvEW7GJxaH1+7TzHEzO/W+wi4wqJ99Im6vqU4weUlwHdQ/+mG/9mQwUun?=
 =?us-ascii?Q?XVGwW807JzNVFAGW/A55sNeUt+MYLO5/inQD9RJoAGroA4YSyxoNCxXF+Ipu?=
 =?us-ascii?Q?4tLdZnkV4Ll5NIh2+d3gGR8nIQC8orjs6PSCymD/SHGqd++a89eztmXvpNHf?=
 =?us-ascii?Q?BCnQqgV2azqNS6po/ubH97kjJrOpvYd4EMzpT2AuFnGTymlqpw7lVHEpZ4GJ?=
 =?us-ascii?Q?4I1ZWzd7SPzCXfWj7engsox4YfC5XLP96jjzxoBPPHS16eT1MZUUeA8+xH03?=
 =?us-ascii?Q?tG7eK11RF/pxBYq95Jh7aKesFqm3xkwYnhFwXU694W6mjIANE3HtNk21nx7y?=
 =?us-ascii?Q?84OfsMDt2DMF+/zRjOMGCytdsAWDpxmmA9lQzQfvDQc42JvD4o9wZOF4S7ep?=
 =?us-ascii?Q?xfU+8XdxkCfiGVNgZwukyqtrkh44qkj/4qcWONCeLAUczTHW/m22qEF8b3e8?=
 =?us-ascii?Q?5dSAvErWc01iFG5ovlRg/lW7AlwYRPo6h2yXVFCO+DCIWC+4Q8QZQCKiDvvW?=
 =?us-ascii?Q?RQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f51f442-bb75-4616-9ac4-08db979871b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2023 22:48:40.1725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E1OrGcYIByaOrqw4U+0Uf7QDy12DM9QKYmZsE1EmQtq4gLqW2UQaHmbrcZBkafNjeauUrVzXjYlRXGM6oFIgbWdiP8he1ZX0g7KwMeFkuTw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7635
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 00/14] Replace acronym with full platform
 name in defines
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you for the patches and the reviews. Thank you Rodrigo for the backme=
rge to apply the patches.

Pushed!

--Radhakrishna(RK) Sripada

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Dnyaneshwar Bhadane
> Sent: Tuesday, August 1, 2023 6:54 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v1 00/14] Replace acronym with full platform =
name
> in defines
>=20
> Replacing the acronym used in platform/sub platform defines.
> This series covers Haswell, Broadwell, Skylake, Kabylake, Coffeelake,
> Cometlake, Rocketlake, Jasperlake, Elkhartlake, Tigerlake, Alderlake,
> platoform define.This way there is a consistent pattern
> to how platforms are referred.splitting to per paltform for easier
> cherrypicks, if needed.
>=20
> For the review comment and Reviewed by please refer the link below,
> 1 https://patchwork.freedesktop.org/series/121387
> 2 https://patchwork.freedesktop.org/series/119380
>=20
> v2:
>  - Reordered patches by incrementing platform generations.(Anusha)
>  - Changeed the commit subject with lowercase platform names.
> v3:
>  - The IS_PLATFORM_(DISPLAY/MEDIA/GRAPHICS)_STEPS replace with Unrolled
>  format. i.e. IS_PLATFORM_FULL_NAME () && IS_DISPLAY_STEPS()
>=20
> v4:
>  - Removed the MTL platform from the renaming series (Mat Ropper)
>  - Removed the unused display steps macro.
>=20
> v5:
>  - Resolved valid checkpatch warning
>=20
>=20
> Anusha Srivatsa (1):
>   drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines
>=20
> Dnyaneshwar Bhadane (13):
>   drm/i915/hsw: s/HSW/HASWELL for platform/subplatform defines
>   drm/i915/bdw: s/BDW/BROADWELL for platform/subplatform defines
>   drm/i915/skl: s/SKL/SKYLAKE for platform/subplatform defines
>   drm/i915/kbl: s/KBL/KABYLAKE for platform/subplatform defines
>   drm/i915/cfl: s/CFL/COFFEELAKE for platform/subplatform defines
>   drm/i915/cml: s/CML/COMETLAKE for platform/subplatform defines
>   drm/i915/rkl: s/RKL/ROCKETLAKE for platform/subplatform defines
>   drm/i915/jsl: s/JSL/JASPERLAKE for platform/subplatform defines
>   drm/i915/tgl: s/TGL/TIGERLAKE for platform/subplatform defines
>   drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
>   drm/i915/rplp: s/ADLP_RPLP/RAPTORLAKE_P for RPLP defines
>   drm/i915/rplu: s/ADLP_RPLU/RAPTORLAKE_U in RPLU defines
>   drm/i915/adls: s/ADLS_RPLS/RAPTORLAKE_S in platform and subplatform
>     defines
>=20
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  5 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 14 +--
>  .../gpu/drm/i915/display/intel_combo_phy.c    |  7 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  7 +-
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 10 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  7 +-
>  .../drm/i915/display/intel_display_device.c   |  2 +-
>  .../drm/i915/display/intel_display_device.h   |  2 +-
>  .../drm/i915/display/intel_display_power.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 33 ++++---
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  3 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 10 +-
>  .../drm/i915/display/skl_universal_plane.c    |  6 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c            |  2 +-
>  drivers/gpu/drm/i915/gt/intel_sseu.c          |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 13 +--
>  .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  2 +-
>  drivers/gpu/drm/i915/i915_driver.c            |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               | 94 +++++++------------
>  drivers/gpu/drm/i915/intel_clock_gating.c     |  4 +-
>  drivers/gpu/drm/i915/intel_step.c             | 10 +-
>  drivers/gpu/drm/i915/soc/intel_pch.c          | 18 ++--
>  28 files changed, 127 insertions(+), 142 deletions(-)
>=20
> --
> 2.34.1

