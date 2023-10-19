Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A3C7CF418
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 11:30:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A90210E4AB;
	Thu, 19 Oct 2023 09:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D97910E4AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697707853; x=1729243853;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YE6dt78QaT1wbmg/MYlWgeBBy9KVRpjb6C01cJ0X2iw=;
 b=MrUGYvhuBgCCSLDK29OJqgOg/kQxJDEN4sEhAwz4kSh6NznbRhDia3Wu
 jJWmMJWnzThtcqI/0mkBJ2Svxl1fraapgahEiHNZ2ZxA8mGqiHUqOK8bW
 oVX37St5R4O+DO/GvYyNPQ+QVFr4QApwoY9yQHAq/5VLCL+9XcZhzRZ9V
 lCpnGctu35WcwGnerXCyM+NWY29R1n+S9/UYZnAQgmGzl8fW4U1lQLdV0
 B4EqfANoq0MhULlipx6n4mA6nvgtx7dpVZcg+LFtMAp2Z45dXlH4rROu6
 XmsGkyzbTeuXzKAOkpUhstHrEDKnRGzubwlKBmy58mPnfnXAzCFkaEjJu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="385084646"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="385084646"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 02:30:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="791932956"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="791932956"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 02:30:40 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 02:30:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 02:30:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 02:30:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IJdRMVO6FrPTlNL8oOHDRvE2aNDgJ47843bddUS8yRpspRrYlmLVsApM2r7t8crMXXZDFMQ3XbgwxWG7kwNTuj5q2xHANy5a4gH/SPUv8UTP7FSOf+EA5A9pHh7sAvTI7Dkt2u1GuKIeC+8lvt/qQOHxZw72weCW5VnYw6+/SOTtP9+ew6Fn4yKHoRj0xjbDzigWwylaPmlHOaxa2B91YeM2zzjE19WBqErymqHbIfoq3IxrblBx+CdwRSYRbVKRZwHz9oLsRwrvdyrkb6COxXDtBDynYRcfb6mgcALrbA/Rs1r+sCxlbezzPJfBI0W5n4vrlR3tREHSi3v23af+Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bM5zHkG/RCKxt9myFzuQiM5KkMWDZnZZYVDfVuSim54=;
 b=MzoYu69PvOSdQ5h8AZI87Owr4QZ//nzkjh3i+JtZ3VEzQ9gAp3A9c6Yfgq0XQmgA7H9zKYm/p5ufVFnPKsNKprzCT8sgB5pLG3YLG/938RqT9EwIvaoR2dkTmlPs40fWw4tHNWDn1KAAUvPm62TU26Aw5wD7kTGbqpt6IM3Y2zPnGV1oIqvc05AU0IzytKRUWybv27HvLnpfK9wJj1PykTvRHjoIJ8QazkGxt7XPSNBG8JjYYQjsph8nqz5CqOo7/8hY75YvYdxd5eucIbHJR5tqMLjyfSVBHlq/piKWZmsk0XNKgThLTf9aVt3jlPdAxq+9NX+CDFQBxtWWhYK3XQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW4PR11MB7055.namprd11.prod.outlook.com (2603:10b6:303:22b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Thu, 19 Oct
 2023 09:30:38 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5%7]) with mapi id 15.20.6907.021; Thu, 19 Oct 2023
 09:30:37 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 1/2] drm/i915/display: debugfs entry to list display
 capabilities
Thread-Index: AQHaAa25K9oCwmUeD0SHJabGtV3XQrBQ2cig
Date: Thu, 19 Oct 2023 09:30:37 +0000
Message-ID: <SJ1PR11MB6129C9C7F943148519AD4FF9B9D4A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20231018102723.16915-1-vinod.govindapillai@intel.com>
 <20231018102723.16915-2-vinod.govindapillai@intel.com>
In-Reply-To: <20231018102723.16915-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MW4PR11MB7055:EE_
x-ms-office365-filtering-correlation-id: 4b295694-02ca-4508-9877-08dbd0860d95
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x4wvK6P94rqJ2yzAqApt7ptctvyPQeOeST3OdbkibTnj5dpKv/CiqB/zBiol7yoTGcUPxFrSVqm00hNvFHFZZmDadfSOJydq1kPCyRdxzJX4BMX2ohUGQqmCwTsxM4rP1FH9PDNtuEcIzY79M1GBH5Q7cFB43n9vdN3TuRrOzS4THhE7oSAPBjl2XhSNq2yJ78CpOr8Lu3kXddP/Zde0PPd11fEH9NRd9JyA9NwlO2w+cleawDSVyon7oMXsy4u2YT8UIa6vJl6h6RUlpeTL9TpvLxYba0Mg7D6T6sbD7GFPb1SS3qkEqx9ww24ZyooibQz/5HEBkuFp/mhiOOMuM8K12PBP036V4RAs0+s60Oacc4z/TsEymubZAHGXCgUElCuEmlfGnh2dqZHcGbH3u9WuRJwOJKd3u3dc5XPKYd1natt/VarEapSahCIbvNigh5OgflZi2UbSFbfC/KihFZioA41r0ANXwF1pfU0U7iy7CjwjaCfhO3fJ6ez8znXee6uY6FXrWnYTFa4OzcrfI6VGKg1WEcUZMnXkrBmuhKta+qP1AQT+hr7TUfdtG1glj0DkS8yxvYPbSqHAFmpogZaTQ+8kCSYXrX/DAPYywCUNCw/XlaajTyU9MNfo3N6x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(376002)(39860400002)(136003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(55016003)(86362001)(7696005)(6506007)(38100700002)(41300700001)(5660300002)(4326008)(52536014)(2906002)(83380400001)(9686003)(82960400001)(26005)(122000001)(53546011)(107886003)(38070700005)(71200400001)(478600001)(33656002)(8936002)(8676002)(110136005)(66446008)(66946007)(76116006)(66476007)(316002)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rB2HU1P6j1eqr0pJSnPSVGARYF8TSgxvB0xNkRr1b9A1uaTU8hhjJNHTdl9F?=
 =?us-ascii?Q?RlOUsXGJyq3+ZszYIhfaSDO6qRNk4gvO72ff7RZL00CQQv0enwDBbr+x7yCJ?=
 =?us-ascii?Q?0MYF3/mugIh+uEeE4J2NYmp4dZoCtTT/jNSq6yvYOv4urueovup2JsJiLhxS?=
 =?us-ascii?Q?iPp+/JYwAbZaEp7MGGRrLhGQdzaQZOs1FTWLNrFzwBPzwXFtH1MwzbLsrG9d?=
 =?us-ascii?Q?v4SfAo+2pABSz9Segj3Scc4NpLy5c0bWwUb9TR5j+GbcVIydq89ZonWkyBz9?=
 =?us-ascii?Q?YVLF9X2fEb1d1wnT/YuVrZdItMRLJ7G0t3PIkoa3g+01JE0aLc2pjIY/Q3bO?=
 =?us-ascii?Q?OBRJh9THI3r7TQg1815jydQJL6gEvIquSd4bnKOZZClHCZkWfgYZDzQ6wN8h?=
 =?us-ascii?Q?NHEBrPoh4PesJTNyuvSu3hHORVFgEImUZNWVZRP/nOF0ejAphgC1iKct+WFQ?=
 =?us-ascii?Q?QI1eYTjFKmux7V5gsOQYPPZaURnb9C7CW28vpmxe8y9g+ZhQOxthYjUeGgPD?=
 =?us-ascii?Q?Aue3LDlxTRJ6CXqrnm06jMOQzmPqjPMY2HrS/jNYhJSIzzdO2jO6VmSx7cXX?=
 =?us-ascii?Q?Ve0imvFTwYGd9P7agbMXvdSFnTSxdB9vwkyqFWQ883vvzQFMTLWUuUBlPCVf?=
 =?us-ascii?Q?bdY1A99Qa7Gnoi6lCr2wmyrNuZmUhBE4pxgAORvzh3X2LRAGiZuhGloJA41A?=
 =?us-ascii?Q?ReMFIopIFjdCY5qxr79jT3+VIlbBVXIi664u4DMdr01U6hMaw/3Ryu5kWwmM?=
 =?us-ascii?Q?P5fFQD3opPvWvIbIJqHR1PsNkqJ/uQxDrWgRhSSjeIl0a4WBiaqFc1Jd/u+H?=
 =?us-ascii?Q?IPHdme1i7wvQ76d9bkjC3TaeHDx0TaDP2xl4memCrSW9+wj54+jTf/k0k7iu?=
 =?us-ascii?Q?EV9pGgH4Vc6A9ASrTeP+f8Nj1uLcLTZC9ChAdoHa+7hVxWoszu6EAfpHfH5J?=
 =?us-ascii?Q?8VDUPOhUqsmdKdwWU5JNg+tUNRDQm/jTiRLau6l/dAInDZTxkaS44E63Rcqj?=
 =?us-ascii?Q?LQRAIQKc+cnjV06kkEbOkBReBbiQGap+HIWUigBIZ2cAahelYgswXGArC5oX?=
 =?us-ascii?Q?zh1Se4wiqzA8d5bJdJ9z2SITvEXcFTyOmUSeUYLckQI70wpAqDulRkNty/Uq?=
 =?us-ascii?Q?nbABp/hiRDKuv60hpDebueLLR0NPIJmKSA9C+sHnT20JO7HI73CP28JTA843?=
 =?us-ascii?Q?Tc7bUj0RvWpils4yu61lzIkz6wfGIfNd/tt32Y4b8xh7phfMIlm35i7VVtpt?=
 =?us-ascii?Q?UVn1B+8QtdGkd38qy56/KKhr6ZRWo1R/RLorhn34LBKo+hPDrKGOiERvpRYr?=
 =?us-ascii?Q?xJ0kbTZi124n67GEeyenPbKPSzh/wH6ugcdh/yrIvDe366STzgSDacYrR5Gb?=
 =?us-ascii?Q?UvC/+bpeCkHoSw/7I4QgDpaeRQvTyk7pJaDz/5Unw3kSQVi/YTlxdWEzOhOy?=
 =?us-ascii?Q?/9/gsqgiJkHPb0CTJteYhpyUJ5R5TUX0g2iKnwdcaHg1/d53rNowtg86sbmK?=
 =?us-ascii?Q?lzvEB7LmcNm32ryNMmVvTdwJkQl/zN/q8Is1xnH5mFhv1pfzsipYifTEupxq?=
 =?us-ascii?Q?v4uvwBkHVzTYJ0YJrWgp7oecns3uexfzTaVE0u9xwca97sH52uUp1WA4H6T6?=
 =?us-ascii?Q?bg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b295694-02ca-4508-9877-08dbd0860d95
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2023 09:30:37.4717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bCUlTkgI801gZouRF04WfzEQZsu33yEQx+UXwrUFg6hxn2TdTm0gfiVkDkJLhhmeC8VkXWAsr4ex6rzlAc2BL4iIb0bNCGlLaEdvCEFeFe4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7055
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/display: debugfs entry to
 list display capabilities
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
> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Sent: Wednesday, October 18, 2023 3:57 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Sharma, Swati2
> <swati2.sharma@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [PATCH v4 1/2] drm/i915/display: debugfs entry to list display
> capabilities
>=20
> Create a separate debugfs entry to list the display capabilities IGT can =
rely on
> this debugfs entry for tests that depend on display device and display ru=
ntime
> info for both xe and i915 drivers.
>=20
> v2: rename the entry to i915_display_capabilities (Chaitanya)
>=20
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Assuming that it has no other impact in user-space. The change looks LGTM.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index fbe75d47a165..b0248dfa8dea 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -641,6 +641,17 @@ static int i915_display_info(struct seq_file *m, voi=
d
> *unused)
>  	return 0;
>  }
>=20
> +static int i915_display_capabilities(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *i915 =3D node_to_i915(m->private);
> +	struct drm_printer p =3D drm_seq_file_printer(m);
> +
> +	intel_display_device_info_print(DISPLAY_INFO(i915),
> +					DISPLAY_RUNTIME_INFO(i915), &p);
> +
> +	return 0;
> +}
> +
>  static int i915_shared_dplls_info(struct seq_file *m, void *unused)  {
>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private); @@
> -1059,6 +1070,7 @@ static const struct drm_info_list
> intel_display_debugfs_list[] =3D {
>  	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
>  	{"i915_power_domain_info", i915_power_domain_info, 0},
>  	{"i915_display_info", i915_display_info, 0},
> +	{"i915_display_capabilities", i915_display_capabilities, 0},
>  	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
>  	{"i915_dp_mst_info", i915_dp_mst_info, 0},
>  	{"i915_ddb_info", i915_ddb_info, 0},
> --
> 2.34.1

