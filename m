Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2200279EF23
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 18:45:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FC8910E4BB;
	Wed, 13 Sep 2023 16:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7252410E4BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 16:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694623524; x=1726159524;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ih5rKflcXjeZyrGJIg5CE9dA3nNTpAqoSOOiTXwA0gI=;
 b=AiWwSHIJy7TfI2V6oheZFRQn+gEcps2ozmdaQOPrlrd80JM5m1zod3Jl
 TYZRAiGpPLZyIxH8qyhVH33G9p9XxJjKIDUFw/8C1NntMZa3rFpx2QU2U
 uMbpj5hmjOzDIdHnOzej0bUVDydkMB145AZ0dT2jPySHVMVJFshdmGiFo
 i0aUab+eWno+uIAL9EGDaZy0RXb1icxrlve1FEwsvyrgLJnmFKU4yzFrF
 QJZifcEcc17Oz9AThplwewbEceMX2aoS5suo+VwRPWEXwbCoYaDbGWWSX
 EdGUqKdtsrGQG+ANuY/mYH8ApU7wsU3tM5LRe4N+meeQSFvHZ29bJu5aX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="378627204"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="378627204"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 09:45:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="887397996"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="887397996"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 09:44:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 09:45:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 09:45:23 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 09:45:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k5lWBBGu0dXFzupmx1Qic3BEQTHMM4inzTV1Nq+oVPMW4sdAOOl44j7vsOYHIZ3Lr7oTk2zhWWF62B+m22gLBXFYAcLEUE+U2niAlzyoSheUnHwi9P1qyEvibvUAXijLxU98AyRmSuScQfhUBhE6hUYlIt6GgGMwAD724fFu4M3y6Bz13R7h359A9MH3EXVXUwFQOWshDNOZPwpzlyzbixjKJbyC7Ddb8JC9+RkERgmNaSVnlCspVh05z2uU0MhHP/WyVpvphnvvnYR4Vzu5/MrZHKtK/s+p+yowq2HWN0FMyN09WvMzuoxpnVbrYe8AI0UjGgR6O10ad7RLGqZgsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B9Eid8gRZPz+VHdFKoyUm4SnBZOnhZDWBCkqXqH74hU=;
 b=nrJMEnPyI7rg9YdX1baCQBBV82mm/db6QW0M97f5e7Rp4Ww5BW5Mh/0LxPpmNiXZ5gy8p5LtCva3pzmQpeDVYPlcdz+5zYDv7TV9sx5uGieiYY/aqVij2jfjTDzvVu1SlqAQBFSHqBPCrUN6pjB0uN0DV2PISJ/jt7vyjH5TsfiA0L6ogIUnB6sE1d1jJnoepOrcHQeDT/YvnCvZz2bA7OpeNOdcJqb+wKUyz1ye62qsQsL2o15cTiNw7j3hcv8OkBu33BnJio0YYILfXFbC3NqAirRJ9m4J42GbcsVSR8d9rch3zlXiXOzESiO0D7oKzJ5Gc0L6pxAvpC+JERtCZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 by MW3PR11MB4681.namprd11.prod.outlook.com (2603:10b6:303:57::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.19; Wed, 13 Sep
 2023 16:45:16 +0000
Received: from SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c]) by SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c%3]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 16:45:16 +0000
From: "Zeng, Oak" <oak.zeng@intel.com>
To: "Das, Nirmoy" <nirmoy.das@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/7] drm/i915: Implement for_each_sgt_daddr_next
Thread-Index: AQHZ5kOZ6/YkdxNjqkq0Js9guOtIxbAY9iAQ
Date: Wed, 13 Sep 2023 16:45:16 +0000
Message-ID: <SA1PR11MB699116FC61C377721F80BC1492F0A@SA1PR11MB6991.namprd11.prod.outlook.com>
References: <20230913130935.27707-1-nirmoy.das@intel.com>
 <20230913130935.27707-5-nirmoy.das@intel.com>
In-Reply-To: <20230913130935.27707-5-nirmoy.das@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB6991:EE_|MW3PR11MB4681:EE_
x-ms-office365-filtering-correlation-id: 66b7e51c-c725-40e8-c767-08dbb478ced7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1a+UDMpDQ2E3dC784HUNkrw2tayDd7KIXko4fHkYd1va9flsySNnZMPusPAmLGLRZdI4CcCgvswnQRVqmyAhXAZFGbqaaIVYOpUE2NJiKozWD7wDA1yvGDJ92KEtGGYoSFK3yRzKO2Vj9SutYm4E04xO1i/70P8YSvtktAg7cg2ysfpEeZn38sWAtsC/dzlU+d5nCsdYP/MwiNmMkkPpah8+AMA07n52Gr6KFPkBLYA7JQOpDDd02W0rRlCg2DNKh4PJ4kwr7yo5Ri+c2U1g2Igj2aWVlLbSaXKhDEyVUjpiaLUw3uykn6G/fHB6KuramBgsfUSNtFnMdj3ltE1GTBKqSg/673lSpzxHdLbnWqcrn/iE2rFIe+752HPd4RC3MVWVsVmwQYB1VF95zWs0b6gZWsNCFJYkybbtuErnbqixFbbH/p5G1/YetRviSAmdk3SwCPMzvS1W1wkZXSfYknMs+Vpq0ZtLEeIYQxgxd15S6N4yMQHB/s8J+Wd64Ei3WQIC4ftFkBLQNTTr0xLE9oMEipHlUgFwI9yrcjuJ0aoYmIVFVwCHV1Mvtiz4eO+256Hc3i6TS0nBjutHePJR4hzqxNw5t/XB084fVzISmRQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6991.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(136003)(366004)(396003)(1800799009)(186009)(451199024)(71200400001)(53546011)(6506007)(7696005)(9686003)(478600001)(83380400001)(26005)(2906002)(66556008)(64756008)(66476007)(54906003)(66446008)(66946007)(76116006)(110136005)(5660300002)(52536014)(4326008)(316002)(8676002)(8936002)(41300700001)(33656002)(86362001)(82960400001)(38070700005)(122000001)(38100700002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gw+p1kepJdyP7NUPqA4r3C87Ul0WZyEDwzCWbB7y7MyuAvoUOiTPwkggFQsc?=
 =?us-ascii?Q?fxrGjF7LYSxVQPxNxh9NSrHVA4xmw6MxWZ7kbv0g9DfQ3vrKgWWeyiQDobSs?=
 =?us-ascii?Q?XJJbAFDTA/5CQrfMSunKaZKGDkeW4eLt2QoNso8zSAdeWryV12ef3haJyunA?=
 =?us-ascii?Q?PFxSqhquodKFlMqtPjp45LQEjwovMHs9M6i0hErGU+6TANhRMsKpOudjVVbA?=
 =?us-ascii?Q?TpflLiYDUk3EchLZHr1Ws3W2N6BboGp1xIICMnAeg8SIMsuuUoBY+Ksrup2J?=
 =?us-ascii?Q?aOoaXZju1RGF0ek4df1Zml6b7vkcld0C/taHlGbyJJfBDOrZHA7GiOgsbo0i?=
 =?us-ascii?Q?rK4HdSdAo8GED7kjcH/699MJyBOSGUEKrdwb/V44fospCjVGg/hxCYUkXz3n?=
 =?us-ascii?Q?tX0qRrCokWzZd3AprpEmp6fuF2bDr4EE4Ui/3d2PxkmOv+hgOjvhlfGe+daj?=
 =?us-ascii?Q?RNcFJNKJ/OYX0Ucdx6ujm2nTZDSkVHc1fVwNe1wVerJ/26xkb+giQu/b2LEk?=
 =?us-ascii?Q?pHxWZ0Y3I2oCYCgwROIKWG9sep2CvPV/aMx5JFL3O36KfP8gD9dWdh9YAFxk?=
 =?us-ascii?Q?D9VJDo/E9yEmlzSgWqdKnZRwJ20cmmEzTC8jw+yvaKAzfxX6o5AlrbS45ayx?=
 =?us-ascii?Q?l2USdduD3tBug9KquSP3FrjD2UWKWW8+drknWDZpETuhxDBXQlnWMRmZCf87?=
 =?us-ascii?Q?uoU1QxdLZ1HlDuZjN4C5UMhzSY9HEpno/9Gk0KpZJuQ42FhbHNRdASm8rbvJ?=
 =?us-ascii?Q?HRF/yru73nCSI8VHGSNhmeO8rdC7HPG4XmOE405+ImnuDdTTCBmjbcmFSvG3?=
 =?us-ascii?Q?smNP83ABPh8b6fqwq4m9CqxtuXMr3xw4RR7UbC7TSvym49MF5pYZWwSBzBgj?=
 =?us-ascii?Q?hJStROwu6rUdjI3vn1XDdG0yFPnKSphfXUNnti2G8bEdXNpD9RjB4ZMcBkDk?=
 =?us-ascii?Q?TD1ouiwXhMDXl8P033Cs/Pf5gPHyv8jkvh87O8sdJmqJZWHBko4d7YB16rgd?=
 =?us-ascii?Q?gdDZnNCpEXWDkfBf0ogZ6ii53pBIHHmoPx4uZftmlA6OnXFc/2BkL02wyNVJ?=
 =?us-ascii?Q?8AT3XurwoKvzG4Vnd3eq3SEv5SVeGFUxbqI50hmG/MHONs8SEN+W3HPa4Ncf?=
 =?us-ascii?Q?IOQfJzVVQk7rv4zxg+3u3pBKPV1xFoNHolrj5Ruohv8OZMVvusQodJtLWetb?=
 =?us-ascii?Q?H6C914Wzw45yO4OPsQouz27wI8rmKBZwW1JwU1vHIR4mzUX9Vw8wF3SGy2do?=
 =?us-ascii?Q?AUrm/6NCNaltpOdElohJlNdEwHy7DzvWb3KjvsGJ85fT3YBFg4XWFM6E/6Xh?=
 =?us-ascii?Q?Ulxy0si3hA/wdhTzJPohv1RGBueAfqUWTi5z2ErrGd9Q4k6KuoiYjlBguhP9?=
 =?us-ascii?Q?DUTI57tjUjX/yTr8rqm6h8VLU5erTcHZZzPC2OcLDUmlD3GVXE9+qmeqZJl7?=
 =?us-ascii?Q?KkOZ/5VCt2jJM7tIuAVgOt6zAgUtaNZDqV2n6qDZ9gP7mYlYj9T1ThAf56My?=
 =?us-ascii?Q?JersPelTA3jPngtn59ZEeRmcVckw4tPkYAPluy8AMlTkQ0GmWpgj5XAi262E?=
 =?us-ascii?Q?wZG1VcNcnkLfpbxYMpI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6991.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66b7e51c-c725-40e8-c767-08dbb478ced7
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 16:45:16.2070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GiXjR+l3yRb8ynobfrOvJtcBbujJ8c/EaGcFx5CmFjHbpGd3N/mJbSeVFzWTpHNN0skvkV/splVyNO9emWED1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4681
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Implement
 for_each_sgt_daddr_next
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Thanks,
Oak

> -----Original Message-----
> From: Das, Nirmoy <nirmoy.das@intel.com>
> Sent: Wednesday, September 13, 2023 9:10 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Zeng, Oak <oak.zeng@intel.com>; chris.p.wilson@linux.intel.com; Piork=
owski,
> Piotr <piotr.piorkowski@intel.com>; Shyti, Andi <andi.shyti@intel.com>; M=
un,
> Gwan-gyeong <gwan-gyeong.mun@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>
> Subject: [PATCH 3/7] drm/i915: Implement for_each_sgt_daddr_next
>=20
> Implement a way to iterate over sgt with pre-initialized
> sgt_iter state.
>=20
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gtt.h     |  3 +++
>  drivers/gpu/drm/i915/i915_scatterlist.h | 10 ++++++++++
>  2 files changed, 13 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h
> b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 346ec8ec2edd..41e530d0a4e9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -171,6 +171,9 @@ struct intel_gt;
>  #define for_each_sgt_daddr(__dp, __iter, __sgt) \
>  	__for_each_sgt_daddr(__dp, __iter, __sgt, I915_GTT_PAGE_SIZE)
>=20
> +#define for_each_sgt_daddr_next(__dp, __iter) \

The naming of this macro... I feel _next is not a good name, but I couldn't=
 find a better name either...

The codes look good to me, so it is Reviewed-by: Oak Zeng <oak.zeng@intel.c=
om>

Oak

> +	__for_each_daddr_next(__dp, __iter, I915_GTT_PAGE_SIZE)
> +
>  struct i915_page_table {
>  	struct drm_i915_gem_object *base;
>  	union {
> diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h
> b/drivers/gpu/drm/i915/i915_scatterlist.h
> index 5a10c1a31183..6cf8a298849f 100644
> --- a/drivers/gpu/drm/i915/i915_scatterlist.h
> +++ b/drivers/gpu/drm/i915/i915_scatterlist.h
> @@ -91,6 +91,16 @@ static inline struct scatterlist *__sg_next(struct sca=
tterlist
> *sg)
>  	     ((__dp) =3D (__iter).dma + (__iter).curr), (__iter).sgp;	\
>  	     (((__iter).curr +=3D (__step)) >=3D (__iter).max) ?		\
>  	     (__iter) =3D __sgt_iter(__sg_next((__iter).sgp), true), 0 : 0)
> +/**
> + * __for_each_daddr_next - iterates over the device addresses with pre-
> initialized iterator.
> + * @__dp:	Device address (output)
> + * @__iter:	'struct sgt_iter' (iterator state, external)
> + * @__step:	step size
> + */
> +#define __for_each_daddr_next(__dp, __iter, __step)                  \
> +	for (; ((__dp) =3D (__iter).dma + (__iter).curr), (__iter).sgp;   \
> +	     (((__iter).curr +=3D (__step)) >=3D (__iter).max) ?            \
> +	     (__iter) =3D __sgt_iter(__sg_next((__iter).sgp), true), 0 : 0)
>=20
>  /**
>   * for_each_sgt_page - iterate over the pages of the given sg_table
> --
> 2.41.0

