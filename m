Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C655BD791
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 00:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E96D810E1B2;
	Mon, 19 Sep 2022 22:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6615710E1B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 22:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663627344; x=1695163344;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lsiOaxW7VQunJP8vAyHMY7RqQl/LehsG2YwHpYsOb8Q=;
 b=Af9cr0SA6N4woqmaFU4ByertuauOkZmZq4gxpsZ34SwagTLHecs1RLAQ
 r3qPdQplUoGvdLh+e2gad8l4JclBE2eOZjAfIvdj0fwyRm+u+Us0forJz
 OaDpf5dd6zxM62v5eNGDToPQz1kowLA3uDFalDqKwoXi71hKFUyD5tfM/
 vjbXQnOLIwNIq8NHhU6XkI7EEjE53Tip6JCO/OyUrvD84mI9vm2Uo6D6G
 xRYlP6jCADxS2XVh1MMNgXLL/QWP2czmYjX7oNKEHtutC5vhVMw0spVgB
 FlLvTt5yoDh2/2J4WvlQ7GyxHu9FDefb4zuK9MH1LNBlPwPZ3ditQ0oqz A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="363499026"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="363499026"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 15:42:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="744289109"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 19 Sep 2022 15:42:23 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 19 Sep 2022 15:42:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 19 Sep 2022 15:42:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 19 Sep 2022 15:42:23 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 19 Sep 2022 15:42:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dEVbNmc+Z+C5orlRF/jMuyQpUWVzugYkxjzTCShFPcQdVPvYjdUJvdF5YWuXirEiVtqIrsDzOwiKYLctd41iBULtyZxdZWXPplGp9nbtQcMNeKpTKNVF8tGmgvZVO1L+8etPrn0OtWG6+Joi7+HBV160b+gXArvf5/fldtOoHQfsOgyL+p73XWURqE3+FqtAudyelMmgbe/O2eA0rqbDLD4KGPdg+d0PY8h86gvoch9CgUyFoCkxmJBJQdpkMS/KKpJ9eUdvoDzW3LTJOZO6xetrgCUmjk+pD/Zvd+70fTW1RxiMBoqjQteZOuQv1G46QyaoZBVIFMvk5izEVn7SRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I2FNrRKwogf/LB7M12Do/YDSWXQIjKZNBHcMUi3XKOs=;
 b=AuDYj91ceRSYWq2jfOQ/H7ua7q2ZKFVXzAhIvMVEqmysXbPl/2I67XbAxDFHfgHz+INL5L78wvqpM86p5x8UkTTSZH4wIDQIRJxfahOtF6BCW6+MDEmkdyt/W/dKJ9+d9nSsR5E8yJ7k2XeJpccxZ4uc8wg7mMgBJLakjl5ROuWDsJE1ro1kKrT7jVlwBG4/8HBTcR6lG2nqeBgcREddfUHy+rB0pm71z8Plps8tWnjKgTaH7Y/W+X6xCePpuRFoaM2ITJ29pOL6IdJejcaSiWIIPzjE65/l8hIu12ov4EJ145HKkev+Y3+P6K5ajgJyYblXcATLKna+zkELhuOCsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by CO1PR11MB5137.namprd11.prod.outlook.com
 (2603:10b6:303:92::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Mon, 19 Sep
 2022 22:42:20 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::e045:7fe1:eeca:861]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::e045:7fe1:eeca:861%6]) with mapi id 15.20.5632.021; Mon, 19 Sep 2022
 22:42:20 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/6] drm/i915/display: add cdclk action
 struct to cdclk_config
Thread-Index: AQHYyi6pNh/FbZMWmkCFf8HaDFNGf63mf2KAgACpfoCAADRWIA==
Date: Mon, 19 Sep 2022 22:42:20 +0000
Message-ID: <CY4PR1101MB216689B1D6D7ED654EB51B11F84D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <20220917004404.414981-3-anusha.srivatsa@intel.com>
 <87y1ufpves.fsf@intel.com>
 <20220919193257.GA1061080@mdnavare-mobl1.jf.intel.com>
In-Reply-To: <20220919193257.GA1061080@mdnavare-mobl1.jf.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|CO1PR11MB5137:EE_
x-ms-office365-filtering-correlation-id: e074553c-2789-4fae-272e-08da9a9036a5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Kc67DH+migSO5VswOoy8f7Jssx5WvVxbTkDxXHMxunB9/6s4fhyA670j3qlMdGGA5jHxs1yn7NgzpuJ96ut92f16ZpUwL77PM0Y58J2g6015jL6+PVf9rMyeC3E8nZ7ZEcJf+aCEoNWVUf4wLXIqGnhB+HskpFwPrYyyWsvajHf8+qTxe2FzwHp4DndOeCbGaiNI+KY/qIow6Vw/8MR6xus/XopN/kHmvWsXCwhqaUO7SKoMCpp3d8fzBKzCMXa2rTF3N1wEWzP/ajxK+uIZMDXWTzXK+MBiuIabroQpFhmxThzLBls2sBazNXXLQ0QCGXlqaJwtLi1K3dOARW3xKUlOv1UwCdjbJN+8o5qC0uNF1h/yb7XzFlCCCr792G0a4Re6Ww7Nj7QLAaASqlpOgtuFULJIqyp+3+JlIRJUWis7Pb5XKhCfgrsWl3OwUoboCen0UQi6ExGqMyLUsnrlA3gaaAlNW6rLsNNXmT9JI2D+9FtHIQDI3y7YxmVW2KZN2vOww6GvnWc3JAwBH0wtbychW4XbZE6T8FrhsvBcO6FR25Euv2BvpYG09H5kSmojkTQVuHOCV6HxEz846CKCp9Z/Wj37XFXllr+y6lo+P+xJHVu1/O9PlvxUO3n/ZSPFrS52PrjcKQtz/DQc9xqpEssuXiiA0S5TBB6IoeJBcO3j/vMeZ/pfXS1FVkEdkr/VVuUjYkPRSeA2KfP1b/QMcCpALSPiR+sER2Oa5TahtnWuMR6MnekcnC+RMxUS/C/MgW4XIaJrUQqfRkY90c0VVQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(376002)(366004)(136003)(39860400002)(451199015)(53546011)(9686003)(7696005)(478600001)(26005)(6506007)(38100700002)(71200400001)(122000001)(82960400001)(316002)(8676002)(8936002)(33656002)(86362001)(38070700005)(55016003)(83380400001)(186003)(2906002)(52536014)(110136005)(41300700001)(66556008)(66946007)(66476007)(76116006)(4326008)(5660300002)(64756008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SJP+AFqFBwj/RwweqqBfgOkhQHHc0sSWiE/3lWcnv3M8qKCd4DPXAQGaquU0?=
 =?us-ascii?Q?2wTUTsbiKQf9OFyhCe52Yu3eAiRvjDR9xcBgKQ273x9PRP0MBvLDCOlL3UFD?=
 =?us-ascii?Q?FXfpvQJ6V76hyaeNbqRvRqBVYQmOu5Ngg9n2xeUaXqYD9T6aJ15c89K5qpQU?=
 =?us-ascii?Q?hAna3IX2Abt5RW8y7IguT1izlaFF6o/h85MRnUuIBLVpyhmaY6SP7i/1/XuR?=
 =?us-ascii?Q?9j9CBeXy0X59bA8TqrL2xmso6ZFwxJd26ZRQPJ9waDl9hNxelntNk+CoJOgC?=
 =?us-ascii?Q?A4n3pN7cUrvunnvdtu+4IzxetgznA6ZAjowLAHRGlRh2rLikohOWLkhqKZEr?=
 =?us-ascii?Q?IpV0Ytuk7xt3M7ubVf+2+BquHJtItHsAeqX6UHrPAzsb6djMRhed42AM/fzE?=
 =?us-ascii?Q?HmkGnYGLJf/myH7cqCVFk0F7M2rouz/mLMyUhX2wmdn4hnOJtj15Y9P/A3+r?=
 =?us-ascii?Q?PUfe3YMMSCqG3zCcrm/AkO81Sh+HPZqDKEbbfaqxtMFoQSVzadx2OlKqvzEv?=
 =?us-ascii?Q?G7aJgmOV317z04rN1J3jds51HkAuDVMm/9odf2A2l2LuDa0saNhiTIa1ixwy?=
 =?us-ascii?Q?euDDhBSXebgJybn5QauKqThEfeAJLG+aeZDY+cPLvqiFMzMWathNHdEgd5XZ?=
 =?us-ascii?Q?iWbK1Jjd0eUNOXQNZ7Q98xuc8D6mw4p0QSrsDxmDL67tO+d2M7wvLG0JHdMv?=
 =?us-ascii?Q?9pRLVpCkQPPBj+tAr4qYmwTJ0ppi82ngXk1vdgi/mWMGfPwDfy+ZaC6z+40L?=
 =?us-ascii?Q?pwKWRO8sFW98fmr3bcdpvvKmDw7tRz5hqWoBoh15AERcct+vuD8BDNv9iRq3?=
 =?us-ascii?Q?LugSfApvbM7xZsKOeYCX5NAvFEUN/f5ab7hdYjLMPO6eBi8H0vNbWtUKQwHc?=
 =?us-ascii?Q?HFtkAnYgdXV9jv3EIdbYJYhg/14cqA5W5phNFpE6QCYSgeE++13j1mTLDwov?=
 =?us-ascii?Q?J3YtQxy7ylu8GwC89IJI7XFhqD/fypRhiQCza3P/hyBZ/T1qXRa8j0ytQTJf?=
 =?us-ascii?Q?eoV6hq8JfBMRWJAsJqBm9F5kq+IC1oDv/uGbNn7qyNm3pfIeptNyqZRCvwW+?=
 =?us-ascii?Q?PIJ16eYDHfKgWgvPPTWf5nsFywVd4AQkD+x4PlPUOydt2DfDta0J+zMj/lbc?=
 =?us-ascii?Q?lBUOS2dof53uaKe8JMd0hiqMe8cAcMVACooBNtM80nyR+eWnrIQV60++oEPI?=
 =?us-ascii?Q?aPhj1vPWwujscauo/AutOkau4U5iOdcxNcFgKxXmNRMmDVdg1BBbQZr5Fxjd?=
 =?us-ascii?Q?y3AzogTxXom8UF/fUBju1wPdxnRZnjO1yyCv6CJrnRN8Q9lGZDBPwGDz3NrA?=
 =?us-ascii?Q?98DfyqPeuYuUVpwt0S1I9JssrCPpZPc0Ga3yVUg4Ehgu1zlFIMcnWXm92ilg?=
 =?us-ascii?Q?wNKYqwKGWbEWUZODBsmjq2xxj8ifSbQl7+9MdgWSR9XI1PaH/AuEOj2U7mU9?=
 =?us-ascii?Q?K6EcKwU9ndyuFox9DNdZj1817BTg4XvACfYx51YrcRKJp8FqYbtZ1+td1p1d?=
 =?us-ascii?Q?iILKMZ386u9ZhNv+CJf718jT3UUKdw3qefYbxyGXjT/zdpOGUeGVhlufX4Xc?=
 =?us-ascii?Q?yCHIpnwrTSCZFbeea4U24MALTg8C8IaY6D8uVMFYoCS20GGv3pg9knadJe4a?=
 =?us-ascii?Q?CQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e074553c-2789-4fae-272e-08da9a9036a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 22:42:20.8482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rweGIfxQ4S+uwsCc2+xoO4KGeM2Hrjky3+tiEiiOmPk294evCwSVMvpthuH/FOy31+RxAWyDGseBL4c4b75Afeh3vRtJ84NBiSmCkJsvhYM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5137
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/display: add cdclk action
 struct to cdclk_config
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



> -----Original Message-----
> From: Navare, Manasi D <manasi.d.navare@intel.com>
> Sent: Monday, September 19, 2022 12:33 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/display: add cdclk action s=
truct
> to cdclk_config
>=20
> On Mon, Sep 19, 2022 at 12:26:19PM +0300, Jani Nikula wrote:
> > On Fri, 16 Sep 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > > The struct has the action to be performed - squash, crawl or modeset
> > > and the corresponding cdclk which is the desired cdclk. This is the
> > > structure that gets populated during atomic check once it is
> > > determined what the cdclk change looks like
> > >
> > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cdclk.h | 14 ++++++++++++++
> > >  1 file changed, 14 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > index c674879a84a5..3869f93e8ad2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > @@ -11,13 +11,27 @@
> > >  #include "intel_display.h"
> > >  #include "intel_global_state.h"
> > >
> > > +#define	MAX_CDCLK_ACTIONS	1
> >
> > Okay, this review is just nitpicks, but they'll need to get fixed
> > eventually so here goes.
> >
> > No tab after #define.
> >
> > > +
> > >  struct drm_i915_private;
> > >  struct intel_atomic_state;
> > >  struct intel_crtc_state;
> > >
> > > +enum cdclk_sequence {
> >
> > Needs to be named intel_ something.
>=20
> Agree here

Agree with all the above. Will make the suitable changes.

> >
> > > +	CDCLK_INVALID_ACTION =3D -1,
> > > +
> > > +	CDCLK_SQUASH_ONLY =3D 0,
> > > +	CDCLK_CRAWL_ONLY,
> > > +	CDCLK_LEGACY,
> > > +};
> > > +
> > >  struct intel_cdclk_config {
> > >  	unsigned int cdclk, vco, ref, bypass;
> > >  	u8 voltage_level;
> > > +	struct cdclk_step {
> >
> > Needs to be named intel_ something.
> >
> > Since this is used independently, I'd prefer it to be defined outside
> > of struct intel_cdclk_config.
>=20
> I think the point of having it as part of intel_cdclk_config is that beca=
use we
> already pass cdclk_config to set_cdclk where these actions are going to g=
et
> used.

Yes. That is correct. This eventually gets used in bxt_set_cdclk() and we a=
re already passing cdclk_config there. Having this new struct embedded in c=
dclk_config makes the fields - action and cdclk to be accessible without ha=
ving to change the function signature of set_cdclk()

Anusha
> Manasi
>=20
> >
> > > +		enum cdclk_sequence action;
> > > +		u32 cdclk;
> > > +	} steps[MAX_CDCLK_ACTIONS];
> > >  };
> > >
> > >  struct intel_cdclk_state {
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
