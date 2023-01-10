Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CE8664FF2
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 00:27:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C9010E29A;
	Tue, 10 Jan 2023 23:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA3F310E696
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 23:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673393233; x=1704929233;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DkAZ9+n88M+/qxwXJP3J2hO0gT8Smi3BhmIBlujGN9Q=;
 b=MyEfsRxPERm61CTgRNHNIC9qKxY8/JCMuOTOAYYBBS04RVg5g3tkfPxR
 azcRnFa+YxeDVHi/JmkMOUO/jiPSU9YKMp/A1w/6qN7t8drKRc3H1h58z
 FmSzFbn9jwGJdHJcp/s76ruAUWc6KJwlMdk04jhXy/9uVFjhgW0wk2qVK
 4iLhM5wP3TZ4xmwRGkcb06fK8Dss92xEoJH2ivcs7iDGpOlMZevRxbPkB
 V3IJfMrlxnltYwmwlsTYNPRWLlM1QyIe2ABTZt5TWVLChszcl3bMXZeKH
 nQfV+cTQmW0vO7lSXf92FhXPqWRHgEDg88MoWNTqixaynhiIrceTIVj3H A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385590395"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="385590395"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 15:27:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="781212620"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="781212620"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 10 Jan 2023 15:27:12 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 10 Jan 2023 15:27:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 10 Jan 2023 15:27:12 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 10 Jan 2023 15:27:12 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 10 Jan 2023 15:27:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EL6cvDkdBdZNZDNzG84ROefngI4GSYrU+9TQQgg1IkdSys43LjG/LUZcUcJTd4Bz6XSHCstvu5mlEOa+jgV4S6Ws5ekL3bST6rlJvKCcV115a+6FN5Or02u/cyBeej8VBT6CZ0IBgFEBgpKWpqia7JlHjFJb19b3rzFDyuVfS3A6T4Rar73hfcZlKQE0rHM3dFwwb1CUZEtInfE/qL+OdAoW9kC0q0H1pB2a+6wYuqYJeBgGqY4qjLCmfLSvf05Xds+Ubp+ijOJ1ULmHbT2bn/ussk0uzfxsDWnokA39uqmCJtqwyCJUnfXMwKzy+eRsaSBhdnYhj+LmRk23vbzAOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=63hBixH7ZzLFdBLbkVVAmI80c+h2aoWv+kjdEZqILYE=;
 b=EJRqqAJ5KqdHjWqQuVhdLwVdgWS2nacMCAy3BJ5sOId0dPUiay12TkteUo8IUiovdSqXJbxffN/Xp7KCW1T0bLM6+nC9YeGz5SXKQnrGurh2GN0QNOevZpuLQvIcBZVt37cI3GRPPM/zTyfOmHaRvF/yvolABrIXlzLzQ/HvBqFSL9zRYmdgYOGqbgsQRSh0kfBYa5DY8Rtwe3hYdIsvaz0fI4z7LwI7vgJN4aPpW8Tr0MsxiwYt1yBW2hI5pbyesTmQ9FClq5o7SjgCNgUS7AD6frPGrGy3OuMXwXdXwbXBIwAyauspbzB1nEVQO3euELlXoMQaxUl+5Cqk37iZmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 MN0PR11MB6009.namprd11.prod.outlook.com (2603:10b6:208:370::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 23:27:09 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::7c2b:3ee4:6e6e:9a05]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::7c2b:3ee4:6e6e:9a05%8]) with mapi id 15.20.5986.018; Tue, 10 Jan 2023
 23:27:08 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v7 2/2] drm/i915/mtl: update scaler source
 and destination limits for MTL
Thread-Index: AQHZFs9ILUpuJKyMP0uEtmiFJhStea6Vy2IAgAKc5OA=
Date: Tue, 10 Jan 2023 23:27:08 +0000
Message-ID: <DM4PR11MB5971443C32EE9D56AA7914BF87FF9@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20221223130509.43245-1-luciano.coelho@intel.com>
 <20221223130509.43245-3-luciano.coelho@intel.com>
 <Y7vDAg3Ub20o75MS@intel.com>
In-Reply-To: <Y7vDAg3Ub20o75MS@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|MN0PR11MB6009:EE_
x-ms-office365-filtering-correlation-id: 6d31f237-4685-4e0d-1283-08daf362318a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GV2ta2e6PsR6rgAG+KuJg0y37sYPSAar60CwYfDLXpASt6j+YrUAGDym6jy8B54/s+9C1nqMcaNdaKOZzKoIOSt6tkPvamo+LpGXJs19tUkcvhoFsp2Q9htV2LzYeLTjwkhR8fmq2tSmVfga2VQ3PQSUr6KtRCE0fWFEgUwid11KInnZejPOJmLemqcP/NTWtjC96buwGXQuKVCI0osEoS0/2C2gmdijnBtVOaFPPpLHI8R18hYmJ80arLxuaoi3wf9rNFZt0OKUcQ02HJ84czVTZjT+Qdnc/6vUTfu1ZAw7gLXqUY60JFWFRBQtnI0amKlzSEAeRh1fzgCkpdf6WOMfdzK8vc/e9iETf+pjjjT+ZB2L6AGBeyr85KKACPv69wY/A8BDuftxMHDnyjYCrNLk08ZpZknCBbLqfvGQ3JigP+JuFoKr4zb7/q2jverhTTEE1jo9rUYGJ/6G73cJUlkflluchh1RP/sE9Wbqn4WcZ0JrUhbfmPzNZvLlu2QQecuSqqL0cvQ7wv7RUJUwsA7M+Yx3IxiEsZM/9zXdlLX8A4F6aOhJaZS4Hf9xoS+IEoova2k29KuTHcW5Prf84ESo3A+d3FyR64d+safuVvLJau+IuaAqC7OdA6sGCi/b5fycVFm5IvvsaMKwJFZFCXZ9w3cMJwzXtNeazjVhN8faDI3SBrGXhVeYqa9eaQlMvyEhtuyfH1rliVXf4PYYyA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(376002)(346002)(136003)(451199015)(53546011)(15650500001)(2906002)(6506007)(71200400001)(7696005)(478600001)(186003)(26005)(9686003)(83380400001)(110136005)(6636002)(4326008)(66556008)(66476007)(66946007)(76116006)(64756008)(66446008)(8676002)(316002)(41300700001)(33656002)(5660300002)(38100700002)(122000001)(82960400001)(52536014)(55016003)(8936002)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?cfQpDTsM8RBzgMPJREd7jXS7Mcr8xanRlObf2/bU38kgBnGDTVZImW8O44?=
 =?iso-8859-1?Q?6qavCLAORfFKpVPF2WeSDHC6BFwZ0EBVUnP7WS+RDmOEP9Bs05mVLTsaOq?=
 =?iso-8859-1?Q?GCt+XnNPDw9uwVFBFDY/nNsFewwl3aTMjhDHonaF9rZE0itftvs9HiwOuO?=
 =?iso-8859-1?Q?3u63bP8mUyqY6WBx/hI3fn3TtSBZZacsRkG56uC0rxL4CEEzzYNMHlo2A7?=
 =?iso-8859-1?Q?IxH7hz69/rVDza5js4qkBYBAdo44dJj2ATKCBPbHTiAyK2k4tGaNV9J7LI?=
 =?iso-8859-1?Q?bjR5kDvlea5SeAK58QseoADYtwkF5wf9jwskKc9uBgki8JT6SQDk6Dq8cs?=
 =?iso-8859-1?Q?4CEbrAOxXOCdsdSEwcGsgrLQsc3Ahn40rtHaSuqGz2npszq0UHX69eMvCO?=
 =?iso-8859-1?Q?g5f5qT0SUor/do8b/e9+ezwE01LwSAZCXReqSrJ62X+6np0J0JdcwwFO5F?=
 =?iso-8859-1?Q?PQMo0hSmDlEaqQuHOkOXxFBpUYIfn5JyBduQPzxAsB5cRyqRiBpNUmNxW4?=
 =?iso-8859-1?Q?yfAPbkMXZ73oL9Waxix1u2/vrL0briW0GcbONBA5whr0DRbA1WlE50IuTq?=
 =?iso-8859-1?Q?Q1CxVylCydw7Wh+eOFRe/Y1cThxet/kdlTKhGk1LStwYi30MrVr0hefBCi?=
 =?iso-8859-1?Q?+mmZgCjTx3wwnkVc46I8iiVXRTgBUeIdf/L5tGVPNxHTWYBb54ie/K3e35?=
 =?iso-8859-1?Q?c9zV6piI1Zt+Q7H577eF9cpn7GH2RM6ar5zl3wcmwnjhKRjXe+juUxhoum?=
 =?iso-8859-1?Q?felRKWP+3rST/G/EH6iXGIG8jQoWvhc8kyXYPlaq79lcHKVwiGVowMQBbD?=
 =?iso-8859-1?Q?h9emjw7pP531csj8Yqox0k5QhSmClbbUSlNFSkcqXRpDUHgSeaAleG1UBa?=
 =?iso-8859-1?Q?TN0tOH3q0pi8kwpVdDhR47ZETdtDgav4uhxGaxSs9TZg9mXbanDFx3jlLJ?=
 =?iso-8859-1?Q?iWj69NM8odoFn3SyO4kW+eTCb+ohUwjj+1hFZfeo22ojCrh0G17pGpWhQb?=
 =?iso-8859-1?Q?u66Ezp+IWtiSKhRGlNRf7uFj3Z/OolafKhBfD6hXfPaIXamXM0spSCz2hW?=
 =?iso-8859-1?Q?KrdVKDeb2Gh+MzBwKVDIes8LOSGP0E9J4QJxHq90z1N9+GZbIb12rFNFsL?=
 =?iso-8859-1?Q?LznipuxcHSHFQr1JPSIIZlTc6zSBVkTopC2HrQIUcWbUXR8bHySzwLeQG0?=
 =?iso-8859-1?Q?7W7A6rGQ6sUqHCJhKZmA5As0+k+Y0x2CeCgY0/q9YquAATYoqDojm9dPST?=
 =?iso-8859-1?Q?svS1JvS3xV+KzZ1RzpbL+82DxjxZYLJkVbQjPDDrsSLf78m6ZsJgMKTSh/?=
 =?iso-8859-1?Q?+lQBzQBoH5NB7G773fT02FEJcMrbk4AehOHvx8NCl+J+CiCkCeri9SClhG?=
 =?iso-8859-1?Q?KJOS4FOBtSShp4Bt/nTK71dTvrTq4fh4Pq9lQm5qPp9P7sccl/ZLYgpNwy?=
 =?iso-8859-1?Q?w0psuv+AMj2jXFGndtaSxDIIsAvwE5tWB3RbvYpoKS7QlfSrDIm8LoKljV?=
 =?iso-8859-1?Q?bspSd5/T+BOtgCcClvtndLlqAg1hKttX/LhwLY1sea84XA7kvCblv+RQtK?=
 =?iso-8859-1?Q?i28w7tiqTJIcWJufNeK1Tw2Bm3eAitNjOyHshX7QtEHBhshsw3EcMp7hEL?=
 =?iso-8859-1?Q?Wd17+Uj1O/tNHeW8e0ifasBxi9gJrPt4wz6HTrQb16+hLGS91YZSeuZw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d31f237-4685-4e0d-1283-08daf362318a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2023 23:27:08.9510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I5qdC5aNR00YCaVm4FRa2OwLJ8gAcqCzpjM9PtD1eIntBGQOiYJ3NFtPOhKRtPvB+l4qeLdvVddQDQEcdA5k59FRdFsS6Ex5/areOXJk35Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6009
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 2/2] drm/i915/mtl: update scaler source
 and destination limits for MTL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Merged the two patches. Thanks for the review and the patch.

Regards,
Radhakrishna(RK) Sripada

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Lisovskiy, Stanislav
> Sent: Sunday, January 8, 2023 11:32 PM
> To: Coelho, Luciano <luciano.coelho@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v7 2/2] drm/i915/mtl: update scaler sourc=
e and
> destination limits for MTL
>=20
> On Fri, Dec 23, 2022 at 03:05:09PM +0200, Luca Coelho wrote:
> > From: Animesh Manna <animesh.manna@intel.com>
> >
> > The max source and destination limits for scalers in MTL have changed.
> > Use the new values accordingly.
> >
> > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >
> > In v2:
> >    * No changes;
> >
> > In v3:
> >    * Removed stray reviewed-by tag;
> >    * Added my s-o-b.
> >
> > In v4:
> >    * No changes.
> >
> > In v5:
> >    * Just resent with a cover letter.
> >
> > In v6:
> >    * Now the correct version again (same as v4).
> >
> > In v7:
> >    * Update to new MTL limits according to the bspec.
> >
> >
> >  drivers/gpu/drm/i915/display/skl_scaler.c | 40 ++++++++++++++++++-----
> >  1 file changed, 32 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index d7390067b7d4..01e881293612 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -87,6 +87,10 @@ static u16 skl_scaler_calc_phase(int sub, int scale,=
 bool
> chroma_cosited)
> >  #define ICL_MAX_SRC_H 4096
> >  #define ICL_MAX_DST_W 5120
> >  #define ICL_MAX_DST_H 4096
> > +#define MTL_MAX_SRC_W 4096
> > +#define MTL_MAX_SRC_H 8192
> > +#define MTL_MAX_DST_W 8192
> > +#define MTL_MAX_DST_H 8192
> >  #define SKL_MIN_YUV_420_SRC_W 16
> >  #define SKL_MIN_YUV_420_SRC_H 16
> >
> > @@ -103,6 +107,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_sta=
te,
> bool force_detach,
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	const struct drm_display_mode *adjusted_mode =3D
> >  		&crtc_state->hw.adjusted_mode;
> > +	int min_src_w, min_src_h, min_dst_w, min_dst_h;
> > +	int max_src_w, max_src_h, max_dst_w, max_dst_h;
> >
> >  	/*
> >  	 * Src coordinates are already rotated by 270 degrees for
> > @@ -157,15 +163,33 @@ skl_update_scaler(struct intel_crtc_state
> *crtc_state, bool force_detach,
> >  		return -EINVAL;
> >  	}
> >
> > +	min_src_w =3D SKL_MIN_SRC_W;
> > +	min_src_h =3D SKL_MIN_SRC_H;
> > +	min_dst_w =3D SKL_MIN_DST_W;
> > +	min_dst_h =3D SKL_MIN_DST_H;
> > +
> > +	if (DISPLAY_VER(dev_priv) < 11) {
> > +		max_src_w =3D SKL_MAX_SRC_W;
> > +		max_src_h =3D SKL_MAX_SRC_H;
> > +		max_dst_w =3D SKL_MAX_DST_W;
> > +		max_dst_h =3D SKL_MAX_DST_H;
> > +	} else if (DISPLAY_VER(dev_priv) < 14) {
> > +		max_src_w =3D ICL_MAX_SRC_W;
> > +		max_src_h =3D ICL_MAX_SRC_H;
> > +		max_dst_w =3D ICL_MAX_DST_W;
> > +		max_dst_h =3D ICL_MAX_DST_H;
> > +	} else {
> > +		max_src_w =3D MTL_MAX_SRC_W;
> > +		max_src_h =3D MTL_MAX_SRC_H;
> > +		max_dst_w =3D MTL_MAX_DST_W;
> > +		max_dst_h =3D MTL_MAX_DST_H;
> > +	}
> > +
> >  	/* range checks */
> > -	if (src_w < SKL_MIN_SRC_W || src_h < SKL_MIN_SRC_H ||
> > -	    dst_w < SKL_MIN_DST_W || dst_h < SKL_MIN_DST_H ||
> > -	    (DISPLAY_VER(dev_priv) >=3D 11 &&
> > -	     (src_w > ICL_MAX_SRC_W || src_h > ICL_MAX_SRC_H ||
> > -	      dst_w > ICL_MAX_DST_W || dst_h > ICL_MAX_DST_H)) ||
> > -	    (DISPLAY_VER(dev_priv) < 11 &&
> > -	     (src_w > SKL_MAX_SRC_W || src_h > SKL_MAX_SRC_H ||
> > -	      dst_w > SKL_MAX_DST_W || dst_h > SKL_MAX_DST_H)))	{
> > +	if (src_w < min_src_w || src_h < min_src_h ||
> > +	    dst_w < min_dst_w || dst_h < min_dst_h ||
> > +	    src_w > max_src_w || src_h > max_src_h ||
> > +	    dst_w > max_dst_w || dst_h > max_dst_h) {
>=20
> Yep, that looks definitely way cleaner than initial condition.
>=20
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "scaler_user index %u.%u: src %ux%u dst %ux%u "
> >  			    "size is out of scaler range\n",
> > --
> > 2.39.0
> >
