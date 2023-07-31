Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C926769B33
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 17:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C772D10E2B4;
	Mon, 31 Jul 2023 15:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A9310E2B4
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 15:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690818620; x=1722354620;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xRZkMqSXhdWpdHxTtnvcR43geEvTdfqF0F4N/ALatZE=;
 b=gu7A0aXUTHFIld6VHciZLF8F+1MSnwdu1ap27BMU+qCO0JZRDhS3l/LR
 EokIPmtuqPxS2yXGbk+daC3pFHpwQJ5EcsT9wWS87MBifW+JSNaoj+Pe2
 ZSjyvIBYfP0VJBM2v+AuME2ciMe2pAlIsCqR1oLFMYU/6FgfhC3Le6DgW
 akRdYldOqBszy0CL5LiMmlVW+K610p8+hhiV6joVWP+GIKb6ixpluJ4dk
 WJIyEZQ7Tn7K5XisOKLIZqVK35fGoMtUp0ZIUbjQazyH4182hjQ2wJ7/S
 PUP+Vc4XZpO0sjN18CR4yPSmvgKQNF2fHAq3gLbMJ58/zutiMF6Rxl4eg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="435362439"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="435362439"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:50:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="722127599"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="722127599"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 31 Jul 2023 08:50:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:50:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:50:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 08:50:01 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 08:50:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kbUVGXME/ze2wyqDqxZwibFdvEcOhw81fK8ny2kwB1/C9YV63awyTBxUVxViaTMk/vq55p59d2bzgIf9wslIuOfIM9oag3ndqRh05FrXStYif1UaU9sM1ltTFeC8xoAZbqOnxjdHvIBy6f4wA3lea38PnWJku0XpOJh6f31kk9mUgETZmrglvt4LHToDecUSilICVu9t/OPIVRImiiyHXzSAKj6dBulDC15Q8HBY/Qqb2VOLrIgFNAx3D5xsKpAoB5vCLLYWLdDHV70kBU4qCn45tjiX6Rr2VhguZzJjIlZaLDpZx2eBHnGSquAIPuXQMFm0E1yQ3T3lAL4TlWAtzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=86tXXhTiWGTkZv1TcQElvswHDJshBBdO7+3nZwbaYTk=;
 b=flmZm5okEPCX/7tyEU+J71jc+BBHw8cT4/vH/6MaVj6m0mrYw+f1R8toKD/VZLKlZOhxS/6rbEQxvOTgRiTDWaKUBtA8hCWsg27E0squTdYNibQxEP1Mj00CAOu8sZJKaiFjTyHjXDBZvfSS5Gc0aL8zT4rlhshjwi3UIeVd+h2y7NkCIDxHHe8oNsxh6XbYwCI/WeJ9Z4tAuuxl2OM9J/0CAu/sVSnvS6UxJDBiFUo8lnJjbc42kqQNUNCKt/WT9jssGDobUUvbVSTAh44MT7utGid47Q3hOF3zsecjcJB7GWBABa0fAf48zZMOBo/wmxk5rl1OS8qsAm3YIDPF0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by SN7PR11MB7018.namprd11.prod.outlook.com (2603:10b6:806:2ad::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Mon, 31 Jul
 2023 15:49:59 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 15:49:59 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 12/14] drm/i915/rplu: s/ADLP_RPLU/RAPTORLAKE_U in RPLU
 defines
Thread-Index: AQHZv/zV3ZqI4KtVLE+OJfVkJGdf6K/UDTig
Date: Mon, 31 Jul 2023 15:49:58 +0000
Message-ID: <SJ2PR11MB771590CC13B86E9025F0BCC1F805A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
 <20230726200657.2773903-13-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230726200657.2773903-13-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|SN7PR11MB7018:EE_
x-ms-office365-filtering-correlation-id: f28f6f1f-4a0b-4ccc-f7fd-08db91ddcb61
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0JsyuJ8y2GH58Wv0PfjdHvb3FfzNjlHZcC9pO43wktcvbeMI1ZNrMYnexpMVJzKiu8FFdPX5VgqGXyuHaF5WAWYRz1Uor5fOBLUxDfNT9VSo1Q9HKYLoXS8TTyM82uZeQKuBngh10/caRl+Bd5lkrDMZ+bUCehFyxYfY/sAO18//qAz2/pxodrw4w+KmVApohbZ6fnG2VsfEOrNhU564Hv2hLqRjof5hcE7NsOH/Y9Rkb1nXIakx8xeMjkWqudCaa0xvwzbuwjzLqadUo6zV2hMDUA1LW6D2jnB+mKOvjUbWncamHYBVQwCmQB9HuL+jg7jDo/lN1A9+3bgnx21CXwikPf+Tkl/51X3LU/u4Vxr5M+U/EI31ABjFRb8WgOnALax0IA0lxO0STEjzymHscOYKM5GE2gAvzbhrm9Qsi+SSL1uVU9st1ocqtkrOAvGs0fd3RfDH8jyCdkDAaf2KdDrc8+GUFThZIEhDlrVcQr2vH1BJn/whpXu6I/ANUaJaDvpfjK4c4KCE7g8NPzTGEq6cnOjoz8Auf4iXVHbiXlcmG1Dcluz3h1uUAiPCEk2VS7bahQmO98CjVE9O+vj2BRbCeEtV4KLM9WQY7C2i0ccdGJTyfzFmIPOTjsqMPoRm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(366004)(396003)(136003)(376002)(451199021)(55016003)(110136005)(9686003)(66556008)(71200400001)(7696005)(478600001)(54906003)(38100700002)(52536014)(41300700001)(82960400001)(66446008)(316002)(64756008)(76116006)(8936002)(4326008)(66946007)(122000001)(66476007)(5660300002)(83380400001)(186003)(26005)(8676002)(53546011)(6506007)(2906002)(33656002)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?StRooVLpSS/33iCfDztHUSKfcjmLEVS7vEu5m2rHCCFV96knRx49oYJkxVM3?=
 =?us-ascii?Q?igVWjBrsladCyJ6SegFka661/8ieqQnWtTjPAa0+PcoFOOC8KILLm+bJqpG7?=
 =?us-ascii?Q?M3Vmzv1EPNKijZ+zsiOKd0fdGmg0g5VcMGMqAR8cJNfkP3cz8NMpSfDh7Zq0?=
 =?us-ascii?Q?WCaf1/S+2lFVG0MF/Ge4RHMemm7OSLtfeFSl0LKwNKSMcBq4wKJMTggxaCUl?=
 =?us-ascii?Q?+1a2yUlsn6tVDHtc5r1xYYTU/boCtw1B2gBSvS4m3m3/TfqX05rRMkhJdcLr?=
 =?us-ascii?Q?yYgxlR+HO3hoWmuE5G5Kt0bvFsq9CfvVhY5zeZXZHJQHInxetBw3GZBHhgBj?=
 =?us-ascii?Q?x/fYrIXI4+CuF6RlrpwDRVT5UbkfN0pYl8Ntagf3qV2e2w6jn3KU4pC/wdmg?=
 =?us-ascii?Q?5efOkpz6wlWx6cNtbidjV2X3vR02zxLTwlnZxx5pvDPcCNMSmjA1/Sg8SHHs?=
 =?us-ascii?Q?BTxDxUe4kXSMeI1+GoGjAQE7RBD1iGBf+AZld322STlvAG3kuHZiUJibykAl?=
 =?us-ascii?Q?JaQWp7DOP7svvE29bOAPItAONwj8CmUHLb9BUJJ/5f3+aJEd891ecSZN+hwh?=
 =?us-ascii?Q?6F+ZjjJoqqlougsidcTY7KeFvD7/b08Cof5a52Y7wRSXGj2Cc5GNNBzYvB5H?=
 =?us-ascii?Q?F98aI7JYsTvsLxHpdIj1oEpK8lu/IhijZD9jhhwrWMmtgOPlYy/OSZE2r3HS?=
 =?us-ascii?Q?y+ZeJM+OeuAtnRdKQs2cswHMLvRJL3CO4VxHoUWcK0hG7bnbxfAjH2XP56dG?=
 =?us-ascii?Q?rjbpAxOiV+AO05Sw//5WVIgjTKuxaYNeRk5RG5yOeF8mG2wlq5t9p1N4aehU?=
 =?us-ascii?Q?4oWYHpMO/M5KhOH4O+8JzRTohCtiQUwq7IT1vf26rSBxh48f7eFdWCuq9s9z?=
 =?us-ascii?Q?Dv4GjPOApeChXlFHsEgyMoDiTVTMWKtqKzF1VmhdskX4jBhnQWX5SgcAhvy1?=
 =?us-ascii?Q?C7JLxAc5gyfFMraXsqXpuxYj/4QR36Eh/A/BOBLN2m8qhQf9zifjg97K+6Pl?=
 =?us-ascii?Q?ZeH81IulgWYyopvdLz7ZXKKvqMXiL81OZ3zR4BFUMPA3r9UmmqjlHVrQ8q6J?=
 =?us-ascii?Q?V/cr0IkhZgs7iAMJPKgkw2AoQX8AhiDA/uXDC80Xbp5lx13EG5/T4GWGRGR2?=
 =?us-ascii?Q?mzn+A15ARemV/PqgamwrH7lZm+S6gC2Q6ddURYFiHIFuLhWxNVkeP6p58M3R?=
 =?us-ascii?Q?GAaXUYiYQXBM+ljHv9xD7m7/jnypZNGxV/nKldtEdd47qZjHl0kERPt2qXjk?=
 =?us-ascii?Q?y5eMYTzkYcy6ValbnTOnRRyCzSYc5O7J/uGQ3NRKoNFuRwhxp5QgP+fOYMZl?=
 =?us-ascii?Q?sGq9rSEe7KlJKIyppHct0yZMJ7eE0m4GFs1pAR7c4s9+Oj7wotdQbN/2wgGI?=
 =?us-ascii?Q?Q+NwGjZ6VheZRBCESFdCcKyt5FAbZM0sjXAQBqZPqN7aduLeVQWiMl2PDFpx?=
 =?us-ascii?Q?hq83c7J0nvxckglWSghnEOPazqQsfTLiNZVsKLAnk7s9dHvW99SmL+2Ms5Op?=
 =?us-ascii?Q?PJt5rKYjRi1ee4Njv2tqlsYhbVesGQAg274f4ynPmVv3qKqJ4LWtqzX0plOI?=
 =?us-ascii?Q?y/PviucnmjKimz4glh85n+dMQEupoCew2ahk0qPB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f28f6f1f-4a0b-4ccc-f7fd-08db91ddcb61
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 15:49:58.8962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v8QuIg/MdnB4zSp/Ww4oP68MDQN8aTT/V3LBrgp98qbuDF4a96b8ixpYLBJa9zF3FFO2jSBA7gtu0UK0kc34qpcUgN0qqrygFbR0jZbXEFY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7018
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 12/14] drm/i915/rplu:
 s/ADLP_RPLU/RAPTORLAKE_U in RPLU defines
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, July 26, 2023 1:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>; jani.nikula@linux.intel.c=
om;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>
> Subject: [PATCH v2 12/14] drm/i915/rplu: s/ADLP_RPLU/RAPTORLAKE_U in
> RPLU defines
>=20
> Follow consistent naming convention. Replace ADLP with ALDERLAKE_P
>=20
> v2:
> - Replace IS_ADLP_RPLU with IS_RAPTORLAKE_U (Tvrtko/Lucas)
> - Change the subject
>=20
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
>  drivers/gpu/drm/i915/i915_drv.h            | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 57113fb01fb2..2fb030b1ff1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3570,7 +3570,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private
> *dev_priv)
>  		if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv,
> STEP_A0, STEP_B0)) {
>  			dev_priv->display.cdclk.table =3D
> adlp_a_step_cdclk_table;
>  			dev_priv->display.funcs.cdclk =3D &tgl_cdclk_funcs;
> -		} else if (IS_ADLP_RPLU(dev_priv)) {
> +		} else if (IS_RAPTORLAKE_U(dev_priv)) {
>  			dev_priv->display.cdclk.table =3D rplu_cdclk_table;
>  			dev_priv->display.funcs.cdclk =3D &rplu_cdclk_funcs;
>  		} else {
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 4e07ba69642d..d3a621e5a36b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -590,7 +590,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_N)  #define IS_RAPTORLAKE_P(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_RPL) -#define IS_ADLP_RPLU(i915) \
> +#define IS_RAPTORLAKE_U(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_RPLU)  #define IS_HASWELL_EARLY_SDV(i915)
> (IS_HASWELL(i915) && \
>  				    (INTEL_DEVID(i915) & 0xFF00) =3D=3D 0x0C00)
> --
> 2.34.1

