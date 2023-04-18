Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7505C6E6028
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 13:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E2B10E767;
	Tue, 18 Apr 2023 11:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDDD610E767
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 11:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681818333; x=1713354333;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5j7jbsNaX06KXJ07wkARpDtnzGlk6oAbBde4UpfRgpY=;
 b=hyHzzRUyJu4eXOksVxm+SF0d7VcSJM8dNOVO3KgXPy+dcLVFekVJtSwy
 3OB2kCcl7Ojq0zgiDgkNHAp2ZZy4SRbUaRJBcIlFz9mlIx/567L23BSDi
 ws4fUxcWpQd3It4RBK7l63TGoc0h/b8hQeIWXxaMJeN1IlrXgxDeOgDq0
 qLifHduAiDCkYerNtwjTbHjdG8ZE1zu/yEjmPCw4BGJduCiyf3XFKt1B0
 Ex2he3cSGHhskFVYPpGXpI9H09Fg6vskaB9I4P8UVO+GztELnE/HUMQWT
 5CbAk7P0qLjHyN6dW3hGCukCCDNuLGRjevrKowLz4FXyIfJGyFS+71Y7D w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="345145499"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="345145499"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 04:45:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="668486865"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="668486865"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 18 Apr 2023 04:45:31 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 04:45:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 04:45:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 04:45:30 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 04:45:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ARGdOAXOmGGR4vFkHV3f/ys2CHyk8Z0MsjBN6MuAUYNA6FJ6DBO8fbG2aQN8d7Y5MTb9B9uedkwtxStYN/2m30hUIgEy4OuNXNH7VqKsTNLCPOQQyaqkQSNHt8yVsVzwbOoy+BQWqq7ghQCFIPC+Gh/xqUPPADHospFYd0o8wtYCovxDtA62tYBzXUFCqIYP29VIjlCSI9qf3x9q5JfhCF5DDWZGZjO74RHYzpTjmXz9VBirqzad+55ITy1kn+9f1w5PkZp/YjojW+/nYwy46fRFL4OPqZ+yyZC2KY/+QBgj21FORByOf6UXaSlMoDwtlEQ1O8mkK98ESKrmzWDVOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TxZ00cosloF5PV/r8I2FneX4ytpgfe25kqRtdHyzWFQ=;
 b=GpnYspcW/96vU75mw9Aqufgya2vIKeBPMRPS0JLkJFD1iUe+b07ntHsweD4lMpOV9L1PHMHSd1Dm1Q+83r9SzpKzyEZd4RMGpos+j5hj37T+DdZicY3Nj6fHuasGPYjTDQqAhKVVBa6jzCIUUrFiHMSbUAkT+LuJmnENZ2rEdgZJHOh3U+36vOcec+0nfW5xtaQKl3/fxxcksS2QlVTlmjdnln8znP3e1ivSUYMD4mb+0aGooEORZQ15d/j58N4r8SYY/0GER1wruWRZhvrFOqTeaFvB0kWcuISYdkmfm7dyknx4agzGv45ePGDmMOtXCde8H8lmKxgKu0YoHWJ2oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by DS0PR11MB7442.namprd11.prod.outlook.com (2603:10b6:8:14d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 11:45:27 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::1f76:e934:bd01:fba9]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::1f76:e934:bd01:fba9%6]) with mapi id 15.20.6298.030; Tue, 18 Apr 2023
 11:45:27 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH v4] drm/i915/display: Increase AUX timeout for Type-C
Thread-Index: AQHZceQF/j2ai/yuq0CDntXS/JAd5q8w5KEAgAACaYCAAAtLYA==
Date: Tue, 18 Apr 2023 11:45:27 +0000
Message-ID: <MW4PR11MB67616E8133E26D024886E543E39D9@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20230418105207.1281084-1-suraj.kandpal@intel.com>
 <20230418105454.1282711-1-suraj.kandpal@intel.com>
 <ZD55A0JHyRd2bozM@ideak-desk.fi.intel.com>
In-Reply-To: <ZD55A0JHyRd2bozM@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|DS0PR11MB7442:EE_
x-ms-office365-filtering-correlation-id: feeb8275-bb7f-4a0f-bbe3-08db4002677d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UIRABt8tO/odRYIVJOCQPzLpntR7L9PkLErm0DdkTY46IZplxOGlvQu4kwRhkP1I90gpVfYrjuamNAMFA+Je1C6/VR50RnCzNj1Ug+q1Dqj1lLiMO6SPtyCcxA6UMN5sGEpsn9G7/CboSwrPYUSN4a5qPOyDsNPYZiyAkOlwrSAwfjqknOWorLLacYgZ2URA7CwpleE6q5QmCxye74/m8GddsY6iDNpdV5yr7slZeZNRFiM5KqaOO4946LKPckUdRLqUk9GMeuTH/ZWc5tmBZghPooG+rMeVFxDJhh1WlSUJQue8pCD2vNaMFG+ZqK731ylk4jfcDomPFLMmFXcsyEYVNNmFNiaYBhvSyk8k3yVoaKlG2cQPUu+EvPvlUlkLyhRQB5JpXfBDNYOQVo860GtuKevlVHJYzAgT+wx80sa3C2QKCxjCmmhMM7tSe9tQR/NodKjgjLS69E0lznK1o1omp0Zx7CuNl9UiS+JKPGVy/GmHOIiWOXmGTOjX+Yk8QLfjqg/2PpyA1BWm0AcvCVCjp0ewfgmnZCa/Us2b42YXun9xYYTXCjP0L3Vx6qRoTX7WxC6GtCg2oiT/7b34wsNp/fWGnypUqrW+EQgclvnAZSlIKjV5f86WnbpJWHh2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(39860400002)(376002)(346002)(396003)(451199021)(83380400001)(2906002)(52536014)(71200400001)(38070700005)(478600001)(33656002)(54906003)(6636002)(5660300002)(8936002)(8676002)(6862004)(38100700002)(7696005)(122000001)(86362001)(107886003)(186003)(41300700001)(82960400001)(316002)(64756008)(55016003)(9686003)(66446008)(4326008)(66556008)(66476007)(26005)(53546011)(6506007)(66946007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cPEoSkQHD53Xiwz+twZVcBp4sV4SVRqUKbIBQy6ua1CnZIQqizxgFoveAkQ8?=
 =?us-ascii?Q?A08ALYWgf1OZeaZjMCAkXYoPCDm3CBp7PMxGvbKq6LWNf6cMYZ6EAn3fOcnV?=
 =?us-ascii?Q?o55Ysg5277qD8oYqH9E9dx+i5QiSoaoVT2TgV0pBm+YffC06Jn8EeQYM5Pd0?=
 =?us-ascii?Q?C1qJamBllloRjF4bRJlEHOS3YALguXgNDfAwIBad177NLhR/WQV16YfjvnII?=
 =?us-ascii?Q?LHWlGrcBpwB/d4Qnc/UJoN0JjMyNCkBEiyAdvDZMJ2ANc5y8Qz6LlyOlVqAE?=
 =?us-ascii?Q?ZZkzb78bS81WrrpYlyZS9t1ij+c+Z6p8dIGtFLnW98YBK+j0x719mLJjZVVF?=
 =?us-ascii?Q?Tp19M8wnyWy4+LSKLyF3oNAr0j0QU/5kEVEHQIcgJOaXs9JRKy1kqe+9NbCt?=
 =?us-ascii?Q?sFUyTHBRfGCVD9LiW098SqZnckmQ//GBUpGTnwOr2z7eLz/dJRlUpB97/pwp?=
 =?us-ascii?Q?WSrwOINWxFWSdeLVCwyi2vVlILQRPTC5u2D/j0+PAQN4/6wFn1Xyw+SSuhPn?=
 =?us-ascii?Q?6PZ5gonhF6lQfH8X1UFL2LxgAouWZtoozbDk6WjcYxU0l9hbWEDm2un1j3AQ?=
 =?us-ascii?Q?4euP1k0raO4ODe4Z4HgpqgQX5K+JRrCT4ZtIvEcTtKbyCFUua1xGg5PrNegE?=
 =?us-ascii?Q?dSU1/y08ZxuAkR7ZrMSIa8noHk7UQWDNMCVP+2HVGIqqrh9VkmVhrtcWJ3qI?=
 =?us-ascii?Q?b1ZcEM3BrMDvGoHNBaaybpcDGpGmwMwwzdZbBqyS3mYMej87U+xGnZS9+jvB?=
 =?us-ascii?Q?xF+b2VSXekLgBIQCE5TOpVIoUI2lpC4MUtlB0pLJgBlFXqThZsXuweD+bm9z?=
 =?us-ascii?Q?LVBg+zbRjc9tE1frytwOv+UBN3vMvTmj34PZ0ZC2W5guTSKmtoxEArIJXM3b?=
 =?us-ascii?Q?44BEl5bx92xOdDQH1BkXrQh1JvtuFV9YhNr1QIo0Qt90UGDoRi7qHKh072E3?=
 =?us-ascii?Q?ZHo/LgCqgV1P5apMRDZLXZdeusQrd0CvrWist2LlSSVaBy1MINFx0agdButO?=
 =?us-ascii?Q?tXSwz+A1g/2PrvAVTnuPg2NOXv9TcmOmp6K1rj24M6TpuktDRUcBDDA3wCVa?=
 =?us-ascii?Q?QvZ6V6AUIa3iTh/qvSvoOe7kCvjRBHo7e6+sBfrpqc3TKO6mX6IFDdantN8H?=
 =?us-ascii?Q?5sdSpIfeJHtgrWGF+jbrGdrgjTLHWnG8AH4330I0q+KCsOcU4G/4gaNljBv3?=
 =?us-ascii?Q?gmQIkTZCpkZFVyoGKmYo2bp/fYg/FKLf0Y95aPHlyMN/xytsstEXR4QV6hGz?=
 =?us-ascii?Q?bp0jc97HOfhU0yP0B6TyVMycfSWva6xhwlJFfrdFGyN8v3CFNUmS3NMQhFfD?=
 =?us-ascii?Q?HlbXgCY9ruElYmc0EgQ2a5ARnhArgQhRJC4nRKB5i5+8vn8C3nphfb9+7vWR?=
 =?us-ascii?Q?uxtRipovmsreHCiF7wmHCiNW0BZWJhYENok+OYVbqIhCR8KhGcmTl8JkaWUW?=
 =?us-ascii?Q?y8R5ipwM3TW5F7y5g4CTKdGLJMb1VqR6eI5H2guceBeSiV22IzSlmGAdK9mR?=
 =?us-ascii?Q?s8XxS6q8fZeErpm/9fflQxnybOK3enR+3vn23KJfIAcSQyy/IzEyRu3BLguw?=
 =?us-ascii?Q?1SnK+wP5W4IHTsm2V7/5ASXsrLh1LCjRd/ep4shL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: feeb8275-bb7f-4a0f-bbe3-08db4002677d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 11:45:27.3057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f+jGAjsU7JTNZQwPPHD+w/VPo2+AcE74AancJRy6Gsa34plUEoXOiTYt7e7gOEpyLVbWd2PRKSGUxP9q1TulCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7442
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/display: Increase AUX timeout
 for Type-C
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, April 18, 2023 4:34 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [PATCH v4] drm/i915/display: Increase AUX timeout for Type-C
>=20
> On Tue, Apr 18, 2023 at 04:24:54PM +0530, Suraj Kandpal wrote:
> > Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
> > Workaround: Increase the timeout.
> >
> > ---v2
> > -change style on how we mention WA [Ankit] -fix bat error by creating
> > new func that is only called for aux power well scenarios so we can
> > avoid null pointer error as it is called everywhere.
> >
> > --v3
> > -Add non-default enable_timeout to power well descriptor which avoids
> > adding more platform checks [Imre]
> >
> > --v4
> > -Remove Bspec link from top to bottom remove WA link from commit put
> > it on comment [Jani] -enable_timeout in ms and add .fixed_enable_delay
> > too [Imre]
> >
> > Bspec: 55480
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_power_map.c    | 11 +++++++++++
> >  .../gpu/drm/i915/display/intel_display_power_well.c   |  3 ++-
> >  .../gpu/drm/i915/display/intel_display_power_well.h   |  2 ++
> >  3 files changed, 15 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > index 6645eb1911d8..f0d51a30430a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > @@ -1385,6 +1385,17 @@ static const struct i915_power_well_desc
> xelpd_power_wells_main[] =3D {
> >  		),
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.fixed_enable_delay =3D true,
> > +	}, {
> > +		.instances =3D &I915_PW_INSTANCES(
> > +			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC1),
> > +			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC2),
> > +			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC3),
> > +			I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC4),
> > +		),
>=20
> Instead of duplicating the above 4 power wells the change should move the=
m
> to this group, as in the diff I provided.
>=20

You mean add the enable timeout in this instance itself

{
                .instances =3D &I915_PW_INSTANCES(
                        I915_PW("AUX_A", &icl_pwdoms_aux_a, .hsw.idx =3D IC=
L_PW_CTL_IDX_AUX_A),
                        I915_PW("AUX_B", &icl_pwdoms_aux_b, .hsw.idx =3D IC=
L_PW_CTL_IDX_AUX_B),
                        I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx =3D IC=
L_PW_CTL_IDX_AUX_C),
                        I915_PW("AUX_D", &icl_pwdoms_aux_d, .hsw.idx =3D XE=
LPD_PW_CTL_IDX_AUX_D),
                        I915_PW("AUX_E", &icl_pwdoms_aux_e, .hsw.idx =3D XE=
LPD_PW_CTL_IDX_AUX_E),
                        I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.id=
x =3D TGL_PW_CTL_IDX_AUX_TC1),
                        I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.id=
x =3D TGL_PW_CTL_IDX_AUX_TC2),
                        I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.id=
x =3D TGL_PW_CTL_IDX_AUX_TC3),
                        I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4, .hsw.id=
x =3D TGL_PW_CTL_IDX_AUX_TC4),
                ),
                .ops =3D &icl_aux_power_well_ops,
                .fixed_enable_delay =3D true,
        },

Regards,
Suraj Kandpal
> > +		.ops =3D &icl_aux_power_well_ops,
> > +		.fixed_enable_delay =3D true,
> > +		/* WA_14017248603: adlp */
> > +		.enable_timeout =3D 500,
> >  	}, {
> >  		.instances =3D &I915_PW_INSTANCES(
> >  			I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1,
> .hsw.idx =3D
> > TGL_PW_CTL_IDX_AUX_TBT1), diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 62bafcbc7937..930a42c825c3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -253,6 +253,7 @@ static void
> hsw_wait_for_power_well_enable(struct
> > drm_i915_private *dev_priv,  {
> >  	const struct i915_power_well_regs *regs =3D power_well->desc->ops-
> >regs;
> >  	int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
> > +	int timeout =3D power_well->desc->enable_timeout ? : 1;
> >
> >  	/*
> >  	 * For some power wells we're not supposed to watch the status bit
> > for @@ -266,7 +267,7 @@ static void
> > hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
> >
> >  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
> >  	if (intel_de_wait_for_set(dev_priv, regs->driver,
> > -				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> > +				  HSW_PWR_WELL_CTL_STATE(pw_idx),
> timeout)) {
> >  		drm_dbg_kms(&dev_priv->drm, "%s power well enable
> timeout\n",
> >  			    intel_power_well_name(power_well));
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > index ba7cb977e7c7..e494df379e6c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > @@ -110,6 +110,8 @@ struct i915_power_well_desc {
> >  	 * Thunderbolt mode.
> >  	 */
> >  	u16 is_tc_tbt:1;
> > +	/* Enable timeout if greater than the default 1ms */
> > +	u16 enable_timeout;
> >  };
> >
> >  struct i915_power_well {
> > --
> > 2.25.1
> >
