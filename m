Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6E24FB62A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 10:35:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5716B10F5C6;
	Mon, 11 Apr 2022 08:35:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C91E410F5CD
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 08:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649666116; x=1681202116;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7AkKZSb9ZPfi6REre5af6P9C+XPNgqrHT+pUUcU72UE=;
 b=DYptp//XoqUjbd94YIJAWGA0hgcXOEuDBQMAIfJYs16K8W7Aw4HbHk89
 STgoL94JbmmKbTOYwFCWbFP3GsIB/FtJnxBmW8/YnbnTiZwJOK+7QCYvr
 FjWhA949Rk2F4H4GEr98YrwjADmdkHXZafmYwSeDTEAkiUK4U+TDbnQce
 phI+w8GaaS/Iiq74QDcnTOC3YUXrfz/kMGOAj1D1u1xxHSjATBSgLvjaw
 UkyEDosMIcfSCn3QUl2Ui6E25tiSGGgPr3/FzGKTHk3omJ7Tviw8ofD7q
 1xAPgkVHOKBwB70yFB24Dek5oa2tBcHGfDWCQpmrAw+1IHwCQ5vBayosf g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="242654935"
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="242654935"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 01:35:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="525894042"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 11 Apr 2022 01:35:12 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Apr 2022 01:35:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Apr 2022 01:35:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Apr 2022 01:35:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z0xC/Uea6xDt0mbp2nTpHkqyD8hjS0TUJGKEZ5O/XVtV1QYuFxRcYhPxJo1Nz2lv9FQPRnUtb6fyybYEldkjgI6m1Rr4XkuNQQhu0vfdCwFL8IBG/6iwObbFtDPjluknDpbDQ8mzxB1aB4+C12VlA4Rb8IRzLQTME1Wa4s1jJilO/z8rPhmQq3xMe0ao4V8FtADnRIMjEeCzN+vk3wON5cAMNU8WMshWc6FBFPr50lWm2pVzb77oGwCfiwLF3dUs1SUaWLLfXy3jdtUIiM53ieyaAYUSMIkV6mBMQ0Je8g4Q+Bv8VXbM/gc0K+6CWLNNuj74EgQndA9qgmTJEYcVFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f2lNV62hsaqToa5xB99VJQ1LqhbMLQ6sT3cKBOoAw7c=;
 b=a09Pe+vg40m43prqziHYvhLODHtIVvW/+Q0+vu6Wu773L0FqOip/I6Ukr3MG1y0/vl9sm35nJC1Fpkv4VoUWg5g9/timnN/+geBNCfYOqH8wzlPZkOyboPwykTRBgRWE/FeKVJ+VhAOOcatY1QE4i1R8fdtorLQ8jBc1/0MyxCA+bxZwd75MTCHRq6/t/1sA7CLxcS7OBYXB+H64I0XbTVVEAhcmPcaR6WFDHz6VmUfOM02PnRXDjhsH5eI1pxxd4hgJohdUEx/TJ74dD2Vur/vgCzgAZ8e/yNuI7CfV+T248jNCU0a9NT3sgtDEmOscTRr2LHjq0vP8+cW+WGZuEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by BYAPR11MB2568.namprd11.prod.outlook.com (2603:10b6:a02:c6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Mon, 11 Apr
 2022 08:35:10 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c%8]) with mapi id 15.20.5144.029; Mon, 11 Apr 2022
 08:35:10 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915: Swap ret and status returned from
 skl_pcode_request
Thread-Index: AQHYS0dcCTfwQIBW9kuP+Z5a3BNy5azqYY+AgAAFihA=
Date: Mon, 11 Apr 2022 08:35:10 +0000
Message-ID: <CO1PR11MB496211BE1A89EA906FADE2C9F6EA9@CO1PR11MB4962.namprd11.prod.outlook.com>
References: <20220408125200.9069-3-stanislav.lisovskiy@intel.com>
 <20220411081343.18099-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220411081343.18099-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 67be2b07-49c7-4d9e-b7f5-08da1b9630a8
x-ms-traffictypediagnostic: BYAPR11MB2568:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB2568EFAE68B9C3D2ED780CA0F6EA9@BYAPR11MB2568.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X3VAe3OnEcwLMnnsjw7DWvBNaUJ1NV8wTTKXp7DqajTXHTRhnQc1Dkc8EUWW+LNb8rTx72lmzMfRVLk6LjoL0QobFzC0gX7FKz4E00VQzpGyJWT8+ZF6rzp06O5xMDPipb2WADoEc+0Bk6rRSjN4C+f/zwYY4wNpougcjbs1FZZlAXPCEQttjRVHHOqOY7A+FMRwv8pqPFO1XjXj/q7dtZ8u1a3T5cjF9Z0YNbeLTyP06ydtFFFHhVet/B9lYPwVXfO4ufaJCA9v9QmVwfmlgav068ba8c/dJXxe7w13X36RVblg43GFsO8nRJ+2LunU74noy55TJltwdVMswri6u22/v3RK3MnYHq1VpTmAN5fq4emJzL0aDfBg6wdnOzHnIwfYOWRKSQ4JEzSmEmMRZrTM9AIKWFvy8ISB7MgNjstP0GRmenoCWgOXpPwt6vPx6GX0GYj18vVs8dUmQXPmUzMcWg8A5GU9PA5gQHL4qHgnjQdWRPYYxKgiHq9LFeC5QYL9W613odCJiM1IQBRgkwIr0oFmzgqr14wSFMYDIqM2mss1koA0W3LZ8ns3CVmpVlsXvO8bxDvy3TUsEc6nNrJfP+OBkxh+1TFtUXr089d5rkwjDkl9ous5F+l3JUxpSm9Gnd6XpZmr7YhQzr2aYcTwyM8MTp5bu2r2/B05oRBPRmI81Dv0mrqC0v2DN16eB/jrDwHy4XgC6eicSrcQcw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(38070700005)(38100700002)(2906002)(86362001)(33656002)(186003)(71200400001)(26005)(55016003)(53546011)(6506007)(9686003)(7696005)(66946007)(76116006)(83380400001)(107886003)(64756008)(66446008)(66476007)(66556008)(8676002)(52536014)(5660300002)(4326008)(122000001)(8936002)(508600001)(316002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Fo+UMeAuWWp0f5L7TLD2z9FqaSykoBovZwfJAdAYAV/4OOJuGCxHutZhi0m6?=
 =?us-ascii?Q?LsDAwb/tgD8PkLu0N0YFAado/9L/SDXjILyFyb6oUTa8YdrZHYB3GQyW8flC?=
 =?us-ascii?Q?F4NTurHUWTPT+t7P+Pi8KwRlUyJn8jE8wYjy1Rpfl8XRMU+NOqU8ZOSKBLPL?=
 =?us-ascii?Q?duWQBZFnEa10K5OxJm5NZHAQOkf3Ac/ROvHw/PaJf5/c31RLUK82DdZXMIt/?=
 =?us-ascii?Q?aYpRjUs2JrZplXtE2CmpyreeQP31J/9gB3j/ppWDx6YdC0nr18CiXtSa+0yN?=
 =?us-ascii?Q?lxMPt+UaR1jwdCwf98dG8woAzfv6wQQ3aNx+P5IXEoAIWP6NsvX3GMq4OCMn?=
 =?us-ascii?Q?8OY/kCdx5y/TCfc0lcDdpl4iOZN0PZvepsQlkY0NpjxWVF4v+1kz4YducqQz?=
 =?us-ascii?Q?cyRLi+xMlqz3Fqy1MiG3zZFJDrKOAR0WrbG7/3kJ6Ru09NoXKQfHArF+ckEq?=
 =?us-ascii?Q?LUvNW/ErEyQp8LePbZjqCouadrKQYd557/oH5U1B8ced7B7X+cYQ/y860+9M?=
 =?us-ascii?Q?vATcp3DpkHomCEuzYr/kxPlFtfG3wGi8bIG0O+g7XSme9dMCZI9Yc78dXn1F?=
 =?us-ascii?Q?W/T47FpCeIytAKaP22kAaagFDXRwIPZP1ZhBkS1/O74ZYZ6bbVIzZ+zVQ8ov?=
 =?us-ascii?Q?jEIyrAQ+ehYqFU3qdVp2+FPpUN0S3pdPmk1N8f45Kpf0j7vvRLeCWGm5/oob?=
 =?us-ascii?Q?3bcGaBm2hFiVAybXMQGIf5d7sk5Aj6XuXWQ0EjKaObxCmi03ZgBmuioX39KR?=
 =?us-ascii?Q?6G5VI4pUWA5ugx+h/xaeg/t+s1bZs5e+xm+5PAkYE2uauiKKuvp15GSgWAHF?=
 =?us-ascii?Q?cSpeyyA40Gspxo7lNRO/7nbqMNtqiD2Tik83/QAo1TiVMEg+sdppj3y+E1zx?=
 =?us-ascii?Q?mlrUEMlaRea15zeEv5BFbtwMvMh2PjyQCppQF+gUWyAB9GJ5veNgPPr6PHrj?=
 =?us-ascii?Q?3Z1g5lerd7CtLkGQ/G+Grsmf+UZi8t76mIuSFuJ1hLLcf/ibjUp5pNCriVLC?=
 =?us-ascii?Q?JuPvzDr/hDau+vmJbMlperiA8cuCxLrciL7mW5wcS6RLtXVtzNl2CQquiePM?=
 =?us-ascii?Q?8nsQMNoDOptg62MPnDw2ZbBvQ8s/PQLBMbj2dwitPmxMTCg7tx4WfBnB0peT?=
 =?us-ascii?Q?5+DqFAcQGPaz2k2wTjBKcUQbcm2oTck9A+HfYQjcWt/5flW7ijNQRfr/Tzdk?=
 =?us-ascii?Q?TM63OtuXohNChXaoH91Yi4WL0/UtdrovycnF02Cl4Ey1b8JRlWx+yuYsq4Cp?=
 =?us-ascii?Q?TUNSxGT/qPPrEFUcjbonFq3ApPbt5msNrGYEMYpkkjtrYS1IsSWjJahy85/9?=
 =?us-ascii?Q?aVSvjUJM0qQdZ3tqadp5BPN57z3aM7VVwfCeYZhFBaZMF8J+eVHM7Nam0p/O?=
 =?us-ascii?Q?xHEfadikUYaeLDcdwzgPcrT6wAhiDXgfpvMmYsV3rSqKuCilQ32wNaF+0Rpu?=
 =?us-ascii?Q?Fmby13GyOwq0x8yj8CBKtDJ0mcmyqTpRnpLQlM4szuCd74w6j6LU+So4EWjn?=
 =?us-ascii?Q?QnIDD74EQF1jRKrtJuAIDGn/egp5jEEOg3ChmljbEDv+h9uvrj9KOsSsh6A0?=
 =?us-ascii?Q?8H9iRByWPF9Cooy60fXKE/ZFpjitynUjB4GgfApz/NtHTh60NPNl17yHOGvD?=
 =?us-ascii?Q?GpDCz8/3K8a8DLItYfeoErYlGsczRxieDZR440A+wlcl1UV6TyOGk6PKxB9+?=
 =?us-ascii?Q?e8MWRqD/gtr9F2Eik6IAFgkJuD0U1Ei7tVSlcHj1/dAkxCSX0wTwZosKo5n6?=
 =?us-ascii?Q?SQ16E/wyaDa62/Ypd5OSqkP1F0C+/fw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67be2b07-49c7-4d9e-b7f5-08da1b9630a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2022 08:35:10.0660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3QSSNkFdlsBZRrUmmpiyP/RD/TF1eErZm92x4A8GjoF7yD/dGMxF9OmI/LG67KZAtCxJA53OUBJQ5U1ta77xKxe/U+oIeJWVWtlHXEWWnwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2568
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Swap ret and status returned
 from skl_pcode_request
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

Thanks!=20
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

> -----Original Message-----
> From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> Sent: 11 April 2022 11:14
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Govindapillai, =
Vinod
> <vinod.govindapillai@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>
> Subject: [PATCH 2/2] drm/i915: Swap ret and status returned from
> skl_pcode_request
>=20
> If ret isn't zero, it is almost for sure ETIMEDOUT, because we use it in
> wait_for macro which does continuous retries until timeout is reached. If=
 we
> still ran out of time and retries, we most likely would be interested in =
getting
> status, to understand what was the actual error propagated from PCode,
> rather than to find out that we had a time out, which is anyway quite
> obvious, if the function fails.
>=20
> v2: Make it status ? status : ret(thanks Vinod for the hint)
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pcode.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/intel_pcode.c
> b/drivers/gpu/drm/i915/intel_pcode.c
> index fb6c43e8a02f..ac727546868e 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.c
> +++ b/drivers/gpu/drm/i915/intel_pcode.c
> @@ -202,7 +202,7 @@ int skl_pcode_request(struct drm_i915_private *i915,
> u32 mbox, u32 request,
>=20
>  out:
>  	mutex_unlock(&i915->sb_lock);
> -	return ret ? ret : status;
> +	return status ? status : ret;
>  #undef COND
>  }
>=20
> --
> 2.24.1.485.gad05a3d8e5

