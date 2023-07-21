Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B51A075D051
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 19:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCB0210E6C8;
	Fri, 21 Jul 2023 17:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA98010E6C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 17:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689959133; x=1721495133;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gn7R76zYjbPDazlz/NqADfCI8pMZMhhj/0gPy0C6tr0=;
 b=oFEzWIhfFxlh17niCnnm7YVRd/nmjF98yrgFRQQ5VAWI1YtibfvxMK3C
 84DYpCXSb616HZ9PB7n508ITwE5SFDdHDcjx0P/06z78uUA7ctAgvZHWL
 ThaCdXlgQloiyMoCFUk76xCkux1Tqhx+tdTNrpu2jxXAUk7qjEjC5ZF/H
 0hsWvyBAAdBVZPMqHsLiLRLjwYbbHiF0m8buj/IrPEjo10e3pPua4ngVD
 SsGShRqmQgJ3h0Jk6V4zZ/pGhobRftFelgaWr+RSVOJstZwqYiHNqBEtF
 feOjuBSd2Th06h0dgNJpSnW6Zwc4DbQ3gvt+aa+4LKV4QXWKheBpgw8hw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="370676247"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="370676247"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 10:05:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="868294448"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2023 10:05:10 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 10:05:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 10:05:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 10:05:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oSRaGykvR3uum55xutFWcq0mok2ufLZ5UG5gVTUSA3b1XSkLoh1Rtm+eZ2WaW7NdGKQ5QhhWi/FZZsePYX4tDTvCsPB+1a1dV6tM6Jszy+XWsBIfs3JWwukH7nnzJYWywte+9y3dXoJ1RQ61zmz1z/oTgJS0NOOk/KquP7Boum8pIKdpxhQ3/A7yvMcIwfizuXz+TAlolwp/k+jSk6If1InERD747H95+QtBR4r00p89cd1FfpLoGSuxIIKIP6U3F63B/WAG9FH8eQTFEo/sCA/nh4QJzzKNLMn0E6FdUjpObJsJTz3aUoUyiJp8cG5voC2oPnAIOOy6Q0yKoxh4ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yKH/AIIKuo2AWbpu8y/nnWkN2Do+ys8yt0wb8fGelr0=;
 b=DaILveckYneJhTugnMZC0a+MyU2kS7+mQdlwnvpY00VEOXCGlqi/+AUJuD9WH8hXac7YjKebH6ytVsrvrUg9edouCGPUEiwblvXHKXHTvcQTmUpldjPG/okidFUp3mrGLzbBKcospW4ZgjfJFNqI642VdBrYccKfFdFw8WvKE6FO9IH0Qt+EUsdgXReHqTD+k60Bghli/ihJKD2jvI+DQ/jNz6drmO+Mc6xko3ixMQAsSQVVzB50qCOtRpdfPTLuLp5ISXOBM/n21+DpUpdDQf/KC3IEuBIoPii05kt06zHj5jQW6kAxot+vnJB+ssYuEZrVCKKi2sbA2BDEgVB3fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2567.namprd11.prod.outlook.com (2603:10b6:a02:c5::32)
 by SN7PR11MB8264.namprd11.prod.outlook.com (2603:10b6:806:26c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Fri, 21 Jul
 2023 17:05:06 +0000
Received: from BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::ca92:81a9:39f7:933b]) by BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::ca92:81a9:39f7:933b%4]) with mapi id 15.20.6609.026; Fri, 21 Jul 2023
 17:05:06 +0000
From: "Yang, Fei" <fei.yang@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH dii-client 1/2] drm/i915: Make i915_coherent_map_type
 GT-centric
Thread-Index: AQHZu92Ak9kVJ8OD2k+3HUEfxxMtl6/Ebxsg
Date: Fri, 21 Jul 2023 17:05:06 +0000
Message-ID: <BYAPR11MB2567FF6F502E9C23AB4355359A3FA@BYAPR11MB2567.namprd11.prod.outlook.com>
References: <20230721140559.830660-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230721140559.830660-1-jonathan.cavitt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2567:EE_|SN7PR11MB8264:EE_
x-ms-office365-filtering-correlation-id: 593d16af-da9b-4d06-4f39-08db8a0ca1dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: balWnin1t1HMVbl5PdwGFhHKwjiUJyEE5pPIXHdp0TKMpvBJIxR2i+IOMmMM6MkKevdxqRBAOVahO7ARCzOo+s+4S4jLK2ZZCD/hGXkzlC+vuhSnkytJI49NsClqZsWKRb2l/c5BN/hWxWHBT+D5or0kPSXFndDo4XzxNyN8kL6NM0ulLLzFWNUOyGrBkXtmIo1E+RMAd9oXGvGTqEoMwPlxqjji1cQE41UWbTda1OWaLpCymXxuj1bqdzH9iQ4bhMPvPe3wb5xIfDrEcn/A29dOADr2MGk8UAlg1Y1OzDuEKuWkIzYW4JBvVRYKUaHxdG27YeAMyEwCTPlRxTAV5xvMF5r55IWomwl6tFchkYDgWTkBNuVqVV5xV8RusqlTdQ9Fqq031yqxWPhMkdaYJGSdlVdiRsONfiztfdZQpLnQCo2gR2k9zGSfMq7nLOvzz6RnVOEJ6MqQEy5NyMGwuivYOGU9Nbvtstb5hJ7DJtW1TqG6BTA1R3A7s6TLb+nDI3hXjP0nytDiC1ruc45XS2Yg/nyFRiFemrwTrlF24X2XxuaZ5GTSKopSy9vEayjAU5ohS9sYMRtacb6T6BQxl7qpoce2siLCpHD1TdwXK1048wrNq5jvZ/D3XA/p9mC3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2567.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(136003)(366004)(39860400002)(396003)(451199021)(4326008)(7696005)(71200400001)(54906003)(478600001)(110136005)(316002)(83380400001)(38070700005)(33656002)(86362001)(55016003)(30864003)(76116006)(6506007)(26005)(122000001)(186003)(9686003)(38100700002)(64756008)(66476007)(82960400001)(8676002)(41300700001)(66446008)(8936002)(5660300002)(2906002)(66556008)(52536014)(66946007)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?66PczKDHzMxLN3/HzS9i5txds4TMVZQTJ9KVTSmuSU6gXsifUsMEl6jlm9Aw?=
 =?us-ascii?Q?OkQ+J9KAeFwTJ+ZBMdxV85bJXAAhEQoPZc2g6DHRAQTv4d9OtVSmHKEzbzH0?=
 =?us-ascii?Q?+qqKG/1WB/jM6f89JV2SmMM2EoZ4E201JPdfg+7yHmEDJEESE9gWjyyM5wW1?=
 =?us-ascii?Q?pPm03luDj0XtH6bxUs4dvzo7f6ljjKkSe8M7Xk4Ia89FkBFXcXY/nkCTRoy8?=
 =?us-ascii?Q?cuqsdjuxSfNrViqD0t06BI4S1OsUrf13X7IdxtHwD176XMa7R7Pn/iUN96BA?=
 =?us-ascii?Q?tGQAUq6a8GCJfvramgiIBvjjJ90YYcvl+IWS1dVY8clr1bz4Cm5DVVPdY0ow?=
 =?us-ascii?Q?ZPox3hw+SRfiofPtIeIVYDUvSI3aCftjm/r/grPp2tfnZDxKQrJXqpb+ZDrN?=
 =?us-ascii?Q?IkQaysl7km5Ty4eLNaFZvE+VAvcO5EKw8Ll/XErSDbeE4GneNto3A+aTpAT4?=
 =?us-ascii?Q?rrkjp/Z4Y0MgyOySFJ2T6JPX3Eo3dzRmdfsK52xH7a4LBEzpmVka1LW6SHnO?=
 =?us-ascii?Q?pNhgR0CM4gyEUEx9VIWnoPCydaSRwgm50tu0IXfwps4YtM2BCdZ3/XLCnB9E?=
 =?us-ascii?Q?sETpfbv6ZSvH+Zoz8ztrSzpefrHeH26F3whoAucIAPSkUavac8M15e6I9jp1?=
 =?us-ascii?Q?qHDo5CVUF+Gar6s17gWgN5QS1yTG0jfRTOtdapLhWkNldUzZ/4p2VlMmvdK/?=
 =?us-ascii?Q?CkTsVx+QK5B9IqXci+pK1x0KCUZuoYaGy9Bu2kq6gayKE8yqRMtvVe3yrxfv?=
 =?us-ascii?Q?o4RijE7t8+FnRLzHJOyGVMnMOafKlzY7XUFHo/+rDfaIm548dgGOoXTXrliu?=
 =?us-ascii?Q?ue2yzgBpeOl+musV08HOtUwrZ54LV+WGbLc0y8W1N5YiGX8+5sOU7AuQ7Q4U?=
 =?us-ascii?Q?Sx6rk605RGhTJgWDe707f6P80SJVnNR4Qwxc2gE7dcZ/3e5/laqBBK9tJjhd?=
 =?us-ascii?Q?FocIwaSCllDlKeuoJlSbRmucGMaBLAXA+A5YBdFNVQav1QvDEqZ9qv2cW7+3?=
 =?us-ascii?Q?rdDrLTnCOK419/pE6eRMKuMkT2DQvVWzohDg7nQ2w5TYfdAA25HNaVtmjBIV?=
 =?us-ascii?Q?9ZuIHkSusO/vv3qob8nql4Nlv3S9KOYsfNkhdExro3/Hxo0dOf4GD2BfN3YF?=
 =?us-ascii?Q?DPldnTttv+WJufgdkdPQDd0lM6w3NXtVJutC4SuUFTx7w+pNiN3B3nZ9vH8i?=
 =?us-ascii?Q?DudMTdXiJa528WkCChpP3VWytMrj2uGXSSnEX+X9lMSg6kKB2peFVA3XTdW8?=
 =?us-ascii?Q?7XC/zRXh9NkD1WzhitAGDS8wSrvZVgBc8ckqRIB3xwL2K+WWTYY8Em3FD/j5?=
 =?us-ascii?Q?b2rbKXHOpsYtOdZFnEqkMnxrtJSJWosxIIbmF0IC3bCcprbHerTgkGCwVG2l?=
 =?us-ascii?Q?NuIKKwgMUU4mLcgsxXUlFuYlJ0JpeKRpGCnGqUkVXC3JwyjgRTcO0JNfrEXV?=
 =?us-ascii?Q?ipMqn7WYOgckY0eNQgOVOXIqHywfrlXyzZWke/jZPhdagi7gZxE+w0tFB2sY?=
 =?us-ascii?Q?wBhHP5WxBiJs2s0Qwgw3n7CgZ1FHbMUy77AAnG08AKjQGDJV3+ZVdPvKcBIO?=
 =?us-ascii?Q?SW372V2YLitSXU+r34g=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2567.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 593d16af-da9b-4d06-4f39-08db8a0ca1dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2023 17:05:06.2685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: INUt2wWpG/yusEcchWeNsPBmpF/R+LHzDdzBAuB41ZmLPxE83Tz4rmzyu+ZicwRQKtTakhWS7ShSnOligcIVmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8264
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client 1/2] drm/i915: Make
 i915_coherent_map_type GT-centric
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Refactor i915_coherent_map_type to be GT-centric rather than device-centr=
ic.  Each GT may require different coherency handling due to hardware worka=
rounds.
>
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Acked-by: Fei Yang <fei.yang@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c        |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.h           |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c            |  6 +++---
>  .../gpu/drm/i915/gem/selftests/i915_gem_migrate.c    | 12 ++++++------
>  drivers/gpu/drm/i915/gt/intel_engine_pm.c            |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c                   |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gtt.c                  |  4 ++--
>  drivers/gpu/drm/i915/gt/intel_lrc.c                  |  2 +-
>  drivers/gpu/drm/i915/gt/intel_ring.c                 |  2 +-
>  drivers/gpu/drm/i915/gt/selftest_context.c           |  2 +-
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c         |  4 ++--
>  drivers/gpu/drm/i915/gt/selftest_lrc.c               |  2 +-
>  drivers/gpu/drm/i915/gt/shmem_utils.c                |  6 +++---
>  drivers/gpu/drm/i915/gt/shmem_utils.h                |  4 +++-
>  drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c            |  3 +--
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c               |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c            |  3 +--
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c             |  2 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c           |  2 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c             |  2 +-
>  drivers/gpu/drm/i915/selftests/igt_spinner.c         |  2 +-
>  21 files changed, 34 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/=
drm/i915/display/intel_hdcp_gsc.c
> index ad0405375881..71da83f7e98b 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -632,7 +632,7 @@ static int intel_hdcp_gsc_initialize_message(struct d=
rm_i915_private *i915,
>               return PTR_ERR(obj);
>       }
>
> -     cmd_in =3D i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_=
type(i915, obj, true));
> +     cmd_in =3D i915_gem_object_pin_map_unlocked(obj,
> +i915_coherent_map_type(gt, obj, true));
>       if (IS_ERR(cmd_in)) {
>               drm_err(&i915->drm, "Failed to map gsc message page!\n");
>               err =3D PTR_ERR(cmd_in);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm=
/i915/gem/i915_gem_object.h
> index 884a17275b3a..06220494d246 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -716,7 +716,7 @@ void *__must_check i915_gem_object_pin_map(struct drm=
_i915_gem_object *obj,  void *__must_check i915_gem_object_pin_map_unlocked=
(struct drm_i915_gem_object *obj,
>                                                   enum i915_map_type type=
);
>
> -enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> +enum i915_map_type i915_coherent_map_type(struct intel_gt *gt,
>                                         struct drm_i915_gem_object *obj,
>                                         bool always_coherent);
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/=
i915/gem/i915_gem_pages.c
> index 89fc8ea6bcfc..44d93ead96ff 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -465,16 +465,16 @@ void *i915_gem_object_pin_map_unlocked(struct drm_i=
915_gem_object *obj,
>       return ret;
>  }
>
> -enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> +enum i915_map_type i915_coherent_map_type(struct intel_gt *gt,
>                                         struct drm_i915_gem_object *obj,
>                                         bool always_coherent)
>  {
>       /*
>        * Wa_22016122933: always return I915_MAP_WC for MTL
>        */
> -     if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
> +     if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(gt->i915))
>               return I915_MAP_WC;
> -     if (HAS_LLC(i915) || always_coherent)
> +     if (HAS_LLC(gt->i915) || always_coherent)
>               return I915_MAP_WB;
>       else
>               return I915_MAP_WC;
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c b/driv=
ers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
> index a93a90b15907..1ad18a872750 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
> @@ -13,12 +13,12 @@
>  #include "selftests/igt_spinner.h"
>
>  static int igt_fill_check_buffer(struct drm_i915_gem_object *obj,
> +                              struct intel_gt *gt,
>                                bool fill)
>  {
> -     struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>       unsigned int i, count =3D obj->base.size / sizeof(u32);
>       enum i915_map_type map_type =3D
> -             i915_coherent_map_type(i915, obj, false);
> +             i915_coherent_map_type(gt, obj, false);
>       u32 *cur;
>       int err =3D 0;
>
> @@ -66,7 +66,7 @@ static int igt_create_migrate(struct intel_gt *gt, enum=
 intel_region_id src,
>               if (err)
>                       continue;
>
> -             err =3D igt_fill_check_buffer(obj, true);
> +             err =3D igt_fill_check_buffer(obj, gt, true);
>               if (err)
>                       continue;
>
> @@ -86,7 +86,7 @@ static int igt_create_migrate(struct intel_gt *gt, enum=
 intel_region_id src,
>               if (err)
>                       continue;
>
> -             err =3D igt_fill_check_buffer(obj, false);
> +             err =3D igt_fill_check_buffer(obj, gt, false);
>       }
>       i915_gem_object_put(obj);
>
> @@ -233,7 +233,7 @@ static int __igt_lmem_pages_migrate(struct intel_gt *=
gt,
>                       continue;
>
>               if (!vma) {
> -                     err =3D igt_fill_check_buffer(obj, true);
> +                     err =3D igt_fill_check_buffer(obj, gt, true);
>                       if (err)
>                               continue;
>               }
> @@ -276,7 +276,7 @@ static int __igt_lmem_pages_migrate(struct intel_gt *=
gt,
>               if (err)
>                       goto out_unlock;
>       } else {
> -             err =3D igt_fill_check_buffer(obj, false);
> +             err =3D igt_fill_check_buffer(obj, gt, false);
>       }
>
>  out_unlock:
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/=
i915/gt/intel_engine_pm.c
> index 21af0ec52223..4cc9c5b8d28e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -39,7 +39,7 @@ static void dbg_poison_ce(struct intel_context *ce)
>
>       if (ce->state) {
>               struct drm_i915_gem_object *obj =3D ce->state->obj;
> -             int type =3D i915_coherent_map_type(ce->engine->i915, obj, =
true);
> +             int type =3D i915_coherent_map_type(ce->engine->gt, obj, tr=
ue);
>               void *map;
>
>               if (!i915_gem_object_trylock(obj, NULL)) diff --git a/drive=
rs/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 9f64d61dd5fc..aaa282b0725a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -591,7 +591,7 @@ static int __engines_record_defaults(struct intel_gt =
*gt)
>                       continue;
>
>               /* Keep a copy of the state's backing pages; free the obj *=
/
> -             state =3D shmem_create_from_object(rq->context->state->obj)=
;
> +             state =3D shmem_create_from_object(rq->context->state->obj,=
 gt);
>               if (IS_ERR(state)) {
>                       err =3D PTR_ERR(state);
>                       goto out;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/g=
t/intel_gtt.c
> index 731d9f2bbc56..48f3a30dbc99 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -89,7 +89,7 @@ int map_pt_dma(struct i915_address_space *vm, struct dr=
m_i915_gem_object *obj)
>       enum i915_map_type type;
>       void *vaddr;
>
> -     type =3D i915_coherent_map_type(vm->i915, obj, true);
> +     type =3D i915_coherent_map_type(vm->gt, obj, true);
>       vaddr =3D i915_gem_object_pin_map_unlocked(obj, type);
>       if (IS_ERR(vaddr))
>               return PTR_ERR(vaddr);
> @@ -103,7 +103,7 @@ int map_pt_dma_locked(struct i915_address_space *vm, =
struct drm_i915_gem_object
>       enum i915_map_type type;
>       void *vaddr;
>
> -     type =3D i915_coherent_map_type(vm->i915, obj, true);
> +     type =3D i915_coherent_map_type(vm->gt, obj, true);
>       vaddr =3D i915_gem_object_pin_map(obj, type);
>       if (IS_ERR(vaddr))
>               return PTR_ERR(vaddr);
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/g=
t/intel_lrc.c
> index 1b710102390b..c45e6d8cbaac 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1191,7 +1191,7 @@ lrc_pre_pin(struct intel_context *ce,
>       GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
>
>       *vaddr =3D i915_gem_object_pin_map(ce->state->obj,
> -                                      i915_coherent_map_type(ce->engine-=
>i915,
> +                                      i915_coherent_map_type(ce->engine-=
>gt,
>                                                               ce->state->=
obj,
>                                                               false) |
>                                        I915_MAP_OVERRIDE);
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/=
gt/intel_ring.c
> index fb99143be98e..a058532cc1b8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring.c
> @@ -56,7 +56,7 @@ int intel_ring_pin(struct intel_ring *ring, struct i915=
_gem_ww_ctx *ww)
>       if (i915_vma_is_map_and_fenceable(vma) && !HAS_LLC(vma->vm->i915)) =
{
>               addr =3D (void __force *)i915_vma_pin_iomap(vma);
>       } else {
> -             int type =3D i915_coherent_map_type(vma->vm->i915, vma->obj=
, false);
> +             int type =3D i915_coherent_map_type(vma->vm->gt, vma->obj, =
false);
>
>               addr =3D i915_gem_object_pin_map(vma->obj, type);
>       }
> diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm=
/i915/gt/selftest_context.c
> index 76fbae358072..87fad1bc15a0 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_context.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_context.c
> @@ -88,7 +88,7 @@ static int __live_context_size(struct intel_engine_cs *=
engine)
>               goto err;
>
>       vaddr =3D i915_gem_object_pin_map_unlocked(ce->state->obj,
> -                                              i915_coherent_map_type(eng=
ine->i915,
> +                                              i915_coherent_map_type(eng=
ine->gt,
>                                                                       ce-=
>state->obj, false));
>       if (IS_ERR(vaddr)) {
>               err =3D PTR_ERR(vaddr);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/d=
rm/i915/gt/selftest_hangcheck.c
> index 8b0d84f2aad2..fdc0b565ee21 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -73,7 +73,7 @@ static int hang_init(struct hang *h, struct intel_gt *g=
t)
>       h->seqno =3D memset(vaddr, 0xff, PAGE_SIZE);
>
>       vaddr =3D i915_gem_object_pin_map_unlocked(h->obj,
> -                                              i915_coherent_map_type(gt-=
>i915, h->obj, false));
> +                                              i915_coherent_map_type(gt,=
 h->obj, false));
>       if (IS_ERR(vaddr)) {
>               err =3D PTR_ERR(vaddr);
>               goto err_unpin_hws;
> @@ -119,7 +119,7 @@ hang_create_request(struct hang *h, struct intel_engi=
ne_cs *engine)
>               return ERR_CAST(obj);
>       }
>
> -     vaddr =3D i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_t=
ype(gt->i915, obj, false));
> +     vaddr =3D i915_gem_object_pin_map_unlocked(obj,
> +i915_coherent_map_type(gt, obj, false));
>       if (IS_ERR(vaddr)) {
>               i915_gem_object_put(obj);
>               i915_vm_put(vm);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i91=
5/gt/selftest_lrc.c
> index a78a3d2c2e16..3d1daeac4c0c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -1292,7 +1292,7 @@ static int compare_isolation(struct intel_engine_cs=
 *engine,
>       }
>
>       lrc =3D i915_gem_object_pin_map_unlocked(ce->state->obj,
> -                                            i915_coherent_map_type(engin=
e->i915,
> +                                            i915_coherent_map_type(engin=
e->gt,
>                                                                     ce->s=
tate->obj,
>                                                                     false=
));
>       if (IS_ERR(lrc)) {
> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915=
/gt/shmem_utils.c
> index 449c9ed44382..3f2fea18746d 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
> @@ -31,9 +31,9 @@ struct file *shmem_create_from_data(const char *name, v=
oid *data, size_t len)
>       return file;
>  }
>
> -struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
> +struct file *shmem_create_from_object(struct drm_i915_gem_object *obj,
> +                                   struct intel_gt *gt)
>  {
> -     struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>       enum i915_map_type map_type;
>       struct file *file;
>       void *ptr;
> @@ -44,7 +44,7 @@ struct file *shmem_create_from_object(struct drm_i915_g=
em_object *obj)
>               return file;
>       }
>
> -     map_type =3D i915_coherent_map_type(i915, obj, true);
> +     map_type =3D i915_coherent_map_type(gt, obj, true);
>       ptr =3D i915_gem_object_pin_map_unlocked(obj, map_type);
>       if (IS_ERR(ptr))
>               return ERR_CAST(ptr);
> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.h b/drivers/gpu/drm/i915=
/gt/shmem_utils.h
> index b2b04d88c6e5..743a56307216 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.h
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.h
> @@ -11,9 +11,11 @@
>  struct iosys_map;
>  struct drm_i915_gem_object;
>  struct file;
> +struct intel_gt;
>
>  struct file *shmem_create_from_data(const char *name, void *data, size_t=
 len); -struct file *shmem_create_from_object(struct drm_i915_gem_object *o=
bj);
> +struct file *shmem_create_from_object(struct drm_i915_gem_object *obj,
> +                                   struct intel_gt *gt);
>
>  void *shmem_pin_map(struct file *file);  void shmem_unpin_map(struct fil=
e *file, void *ptr); diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c=
 b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> index ab1a456f833d..fb4933543f31 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> @@ -268,7 +268,6 @@ static int gsc_fw_load(struct intel_gsc_uc *gsc)  sta=
tic int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)  {
>       struct intel_gt *gt =3D gsc_uc_to_gt(gsc);
> -     struct drm_i915_private *i915 =3D gt->i915;
>       void *src;
>
>       if (!gsc->local)
> @@ -278,7 +277,7 @@ static int gsc_fw_load_prepare(struct intel_gsc_uc *g=
sc)
>               return -ENOSPC;
>
>       src =3D i915_gem_object_pin_map_unlocked(gsc->fw.obj,
> -                                            i915_coherent_map_type(i915,=
 gsc->fw.obj, true));
> +                                            i915_coherent_map_type(gt, g=
sc->fw.obj, true));
>       if (IS_ERR(src))
>               return PTR_ERR(src);
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i91=
5/gt/uc/intel_guc.c
> index 2eb891b270ae..effb37727093 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -792,7 +792,7 @@ int intel_guc_allocate_and_map_vma(struct intel_guc *=
guc, u32 size,
>               return PTR_ERR(vma);
>
>       vaddr =3D i915_gem_object_pin_map_unlocked(vma->obj, > +           =
                                   i915_coherent_map_type(guc_to_gt(guc),
>                                                                       vma=
->obj, true));
>       if (IS_ERR(vaddr)) {
>               i915_vma_unpin_and_release(&vma, 0);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c b/drivers/gpu/drm/=
i915/gt/uc/intel_huc_fw.c
> index 48f506a26e6d..ca95ddadc3a8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
> @@ -27,7 +27,6 @@ struct mtl_huc_auth_msg_out {  int intel_huc_fw_auth_vi=
a_gsccs(struct intel_huc *huc)  {
>       struct intel_gt *gt =3D huc_to_gt(huc);
> -     struct drm_i915_private *i915 =3D gt->i915;
>       struct drm_i915_gem_object *obj;
>       struct mtl_huc_auth_msg_in *msg_in;
>       struct mtl_huc_auth_msg_out *msg_out;
> @@ -43,7 +42,7 @@ int intel_huc_fw_auth_via_gsccs(struct intel_huc *huc)
>       pkt_offset =3D i915_ggtt_offset(huc->heci_pkt);
>
>       pkt_vaddr =3D i915_gem_object_pin_map_unlocked(obj,
> -                                                  i915_coherent_map_type=
(i915, obj, true));
> +                                                  i915_coherent_map_type=
(gt, obj, true));
>       if (IS_ERR(pkt_vaddr))
>               return PTR_ERR(pkt_vaddr);
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i=
915/gt/uc/intel_uc_fw.c
> index 7aadad5639c3..4f316f010b55 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -1213,7 +1213,7 @@ static int uc_fw_rsa_data_create(struct intel_uc_fw=
 *uc_fw)
>               return PTR_ERR(vma);
>
>       vaddr =3D i915_gem_object_pin_map_unlocked(vma->obj,
> -                                              i915_coherent_map_type(gt-=
>i915, vma->obj, true));
> +                                              i915_coherent_map_type(gt,=
 vma->obj, true));
>       if (IS_ERR(vaddr)) {
>               i915_vma_unpin_and_release(&vma, 0);
>               err =3D PTR_ERR(vaddr);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm=
/i915/pxp/intel_pxp_gsccs.c
> index c7df47364013..8b5d3d129881 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
> @@ -336,7 +336,7 @@ gsccs_create_buffer(struct intel_gt *gt,
>       }
>
>       /* return a virtual pointer */
> -     *map =3D i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_ty=
pe(i915, obj, true));
> +     *map =3D i915_gem_object_pin_map_unlocked(obj,
> +i915_coherent_map_type(gt, obj, true));
>       if (IS_ERR(*map)) {
>               drm_err(&i915->drm, "Failed to map gsccs backend %s.\n", bu=
fname);
>               err =3D PTR_ERR(*map);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i=
915/pxp/intel_pxp_tee.c
> index 1ce07d7e8769..00630a1c8e77 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -245,7 +245,7 @@ static int alloc_streaming_command(struct intel_pxp *=
pxp)
>       }
>
>       /* map the lmem into the virtual memory pointer */
> -     cmd =3D i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_typ=
e(i915, obj, true));
> +     cmd =3D i915_gem_object_pin_map_unlocked(obj,
> +i915_coherent_map_type(pxp->ctrl_gt, obj, true));
>       if (IS_ERR(cmd)) {
>               drm_err(&i915->drm, "Failed to map gsc message page!\n");
>               err =3D PTR_ERR(cmd);
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/d=
rm/i915/selftests/igt_spinner.c
> index 618d9386d554..b09e56427299 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -97,7 +97,7 @@ int igt_spinner_pin(struct igt_spinner *spin,
>       if (!spin->batch) {
>               unsigned int mode;
>
> -             mode =3D i915_coherent_map_type(spin->gt->i915, spin->obj, =
false);
> +             mode =3D i915_coherent_map_type(spin->gt, spin->obj, false)=
;
>               vaddr =3D igt_spinner_pin_obj(ce, ww, spin->obj, mode, &spi=
n->batch_vma);
>               if (IS_ERR(vaddr))
>                       return PTR_ERR(vaddr);
> --
> 2.25.1
>
