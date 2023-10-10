Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BE07BF0E9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 04:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0552810E30F;
	Tue, 10 Oct 2023 02:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D87AE10E30F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 02:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696905126; x=1728441126;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AZTsXKqeAhewlRg9sYf5GjmS74dqr5N236UFaZ0UYYs=;
 b=bImeRDlQH233Afh+KeWyLr5s/NDb0mrPhMlwntS90HpmgSbFJqPtB7tJ
 O534D1By1nxAWZSEzyko/TR+Dy9CY4Re8XtpQylqZR0mxpRZNSTMbZ3sr
 udQX3/spHo3zAIUU4B+5qgFXgzOt1+7sIgC+bk7DJWB1+gKJnufl9d7GT
 sKhug2hBa0Jo+oFx2ECeBnkzK3q2RhMDwStKS5CP0JfnGbC0gO0WB38/s
 kdpJFjuJFLKdu1k0DxjfyEFD5fsojWPqdEm75dqBneziS1jHXx6B2R8Ib
 S+yAHatbpzViQyDUhZzHHpvXooSxhO7lSEUfSpdB0s2f3c4krtf2vqJk5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="415292205"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="415292205"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 19:32:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869490281"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="869490281"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 19:32:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 19:32:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 19:32:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 19:32:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 19:32:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BPPHUelOrb1SqcVpqpNk0uDi08urPmzwgpv4HwOVG0Vezad0OEyo+0W8+wkqKF9iSDWxsZRb5v9O4Ry+Qd5Z8ZccloLiMl3OwmDy+dMFthF6q2wUOREzNwOhY+y9Gg3N+9M4G+2jGhNqpRDGC5WUWCf2lQRsO9Jm9qOVPrIlcUkc9XHQMV8Mr0/9eHXMv6Ym7Vbbpput8qqdyOCKs7ToTbUsmzkdjwMbXpIC6wzs8jUYo1i5t/lkfkzxCyJTJeNR7kJFrCPQOhmuLhO5ao7/bzS9Kktq+Ae+bIVC4adPoduKXHz98NByicgEM7S5qW18DyJnTWjaXiITOJQNxMtRTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oURRV4Y0PmFczbPlYgbsTLHZXPz0kAacvDljjSoogxM=;
 b=a9oY0rjkndx+K934wYOvGj8K9GFIcoB4LYfES/JTzbw0211WI2QRp7bHwHxFfcoiAQselH3ysTbFVM8D21nEK6TX7seLq187D381OFMikqyeQKfj0URYIzspWf9Ni4rcGhhqYIu4gEDHE89Na1Y5bZnKryP/aYQaUOyafynJBtmh193dNl+nz9R2cXEo8uGtIJSSOPn4RyZehbOgf1vjCYMba79TPCeGR7aIzhgeeqCSqbA9daQviqwvsfRIeMLZ7eoejE5O9Cl8kJ/ibn90STzG+o+9eKpCtA+dLJlW4uBc8quINXgfceFgdkioAEeZsXFvfaoKkD6nHd4hwN74cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MN2PR11MB4583.namprd11.prod.outlook.com (2603:10b6:208:26a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 02:31:57 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::5103:18cd:56cd:ec75]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::5103:18cd:56cd:ec75%6]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 02:31:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Free crtc_state in
 verify_crtc_state
Thread-Index: AQHZ+pej71ThWue/Jk+F+1te8Yp9gbBBQ9gAgAAE71CAABzGAIAA6Ozg
Date: Tue, 10 Oct 2023 02:31:54 +0000
Message-ID: <SN7PR11MB6750366F3D1553E6E93E2F6DE3CDA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231009095946.655337-1-suraj.kandpal@intel.com>
 <874jj06q0r.fsf@intel.com>
 <SN7PR11MB675012785B6ED0FB365DF013E3CEA@SN7PR11MB6750.namprd11.prod.outlook.com>
 <ZSP0ColRMx3GhEnA@intel.com>
In-Reply-To: <ZSP0ColRMx3GhEnA@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MN2PR11MB4583:EE_
x-ms-office365-filtering-correlation-id: 09a65e33-3c5a-411c-99dd-08dbc939119a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lRYN6yO6ka9XzZB5IZGgBkcQ5oicD6nRNqj+mbh6qMvKRGp/yZqojc6IMaWl2ueVSi5O+pKSvWznBnxGfdrCxnHuAclg4jd1TxNRpMn16B4b4jn7YIJ8OOowcPy/+C97Js9l+8yDfHdWYmDf9Z6GnDDmPZC6hbU5p8gOuLZXuWzzHjY8pnemqT0QTJFJn7dKLjP4+HOagwKAa7YbByoU+vMbZCLi23peFTTJu/vS7BVS44RqFrqcSPlQxwLlqVhlUdrAiDyU2yseJ7CyincW2PXT5sCAKKxX0HQSbHwsb2ifx87+kk1nw/zW1rSZkMPRIk5zGP8ZAY01r8GnkEVDIraFFeANlgTsfKNgjRIj0E4LGhcfIYwvaMLT0tOUEWV15Nt4hlts369YvcWW/MrXXluLAA33+JZwuXadjwySvWOm+L2EanOOSqjUgBNTPIJhQ1flh4Xt0pwKOmTKbJy5RDks11yDbNAu64P/umh+zMTCiooIHI0tF2OPOG59nN4MP85CRrJlvRB+uoIMjefa5pXOOu7UhGJbuKL6kHd8nJpCR9E2Mx2CDsODlCZNqsQZjDtTCkJlcLQAU1WKjUnMQi3nQazEZykHv/MJC/1corL7SSrS0qjGZpwSt1gDMaoO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(346002)(396003)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(86362001)(26005)(53546011)(71200400001)(55016003)(33656002)(38070700005)(38100700002)(82960400001)(122000001)(4326008)(15650500001)(2906002)(9686003)(478600001)(8676002)(8936002)(6506007)(7696005)(66556008)(66574015)(83380400001)(52536014)(5660300002)(41300700001)(316002)(54906003)(76116006)(66476007)(66446008)(64756008)(6916009)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?2R7o9OXnjg6PFAwiBePvr1APb1AgLajybdBg5JQxV4VlpI+BtsePwpYPSI?=
 =?iso-8859-1?Q?f26gxXynMBC6ATwWAgBQLYiIFCrVyY2dJIaBckrU8a9cDFmG8FqpaRpvUy?=
 =?iso-8859-1?Q?ugHel95T37ZetVRVnY/hAuSgPHe2Xs83CPcr+0gMqt4lHChnp65/0oba8W?=
 =?iso-8859-1?Q?Epb5hY5wgcNldq56a/dmY7dV2BJzUpVYmycNfYVoyz7+syj87z7zj9GlIl?=
 =?iso-8859-1?Q?ur/XvJBz06ht++pFUlzpkMx70rybn6dRk0jSu9R0C4SCvUamrZd7/EfEm1?=
 =?iso-8859-1?Q?w+v8h06tIe4vLcLjVEMcV8KIZC1vULxQGPa8vqppqE1aKXU8tiyfdc0LoJ?=
 =?iso-8859-1?Q?etVeGFVNPC5gEeXM0Dy5ZrrlciN427gWh98dMhyTqEEoIsEKCW2uL42b5P?=
 =?iso-8859-1?Q?ji8NR3knu7c/Cc56W9gTc+Uf1CNzH1pwb+XcDy2MUTA1wPyNsbmYCMAKzA?=
 =?iso-8859-1?Q?ZNrNxYARe9nh3Xwyyz8EmoHPJtjnws9wgevG4urcOhOI9f3YB2F/ZdTPcS?=
 =?iso-8859-1?Q?ZUW8+UhZuDPc7u6ZvnuXyZSSkOi/DmVM8KKe7kdG1OK+y3t3tB533H+AfF?=
 =?iso-8859-1?Q?tbxZpQs38bIrKbG3jtilQDxCk+tQOZ+j8qE7aqBLTJwqeetqrWJSFkHisl?=
 =?iso-8859-1?Q?Jt2YtTBcrEpLfgIzEtzyzmyVlcced0JkhrRsi1BFWVi3Ujfo0Dfchc7G80?=
 =?iso-8859-1?Q?9tYZXIOevAWrinWOw09t4FxUFpNNVfejxj4QEZki/bioTXX0z5A6n4cv4k?=
 =?iso-8859-1?Q?TYasqXQwqJpp1mTpdndwvQhYOkpJ7Oid8B9H1F+4SI4BtcKfy8W8AlRASL?=
 =?iso-8859-1?Q?q9Zu5QEBHtDk+FdHIJmlHwuh93HjAf7DUlJqAK2K2l9S7D8Q0rZiB6ZQVG?=
 =?iso-8859-1?Q?MTNuse6CXxgDUcs8Now3QYTv07QzKnojlz7ZreTDHsC5vRvZmNmQ+bs7L8?=
 =?iso-8859-1?Q?tFd15JDAnBolKEZSrJocD7aWOKVlY1nYZzo6jMtZFRp01suPtytvlEe+6s?=
 =?iso-8859-1?Q?1X01fFZoDmn/dDRRporsaZs+QoAw6zodo089PN4poO6eheg21g3OdA/jAj?=
 =?iso-8859-1?Q?eBGdAGPsBJK3P3wMcdDVB6BpB/p/kBdkzlOjStL59O3A7rxwxsnlevCVJ+?=
 =?iso-8859-1?Q?gi1MZckIbrRcPh9qHDfdHmuUCqlJr3f3u+t72AAQnDRycffhYZz/QFdxHG?=
 =?iso-8859-1?Q?gRisAyC5IPk4kePeToGNaH7T9ALb4nT0k5qYz/tFN0j8Bj45t9ngTrGmER?=
 =?iso-8859-1?Q?hAFv2MifQ/3tWokJRWzLPG0F1vXDaw8bLILKC75Xg4vhEk2FCUW9q94Wo5?=
 =?iso-8859-1?Q?Vn1ArWnALtuUOOZ2pc/FijmsEi5niD6Z2Z8VZNno5+3BGDQG5JV8zSsHiH?=
 =?iso-8859-1?Q?ZnCNJ3O29pvmShFrDZVtB0/gWCC3iHcp1zs0M2DOtD/dO18UNckaBiirIM?=
 =?iso-8859-1?Q?0MxZM/vmVywPBUprR9tGZrIlPioAyFIu7IYefXQ65K2JMTkkGzi3l5SsYB?=
 =?iso-8859-1?Q?3As3GoKkbheqUXCJbP3pGBjzg+4/+AMOYi9UGt0S+hAlY1gNN9qrPOcxrC?=
 =?iso-8859-1?Q?HqRTetfS1oeptb/QbHILECx2u2MxNaUR/OvE24Rwa0x758BSzwcw6CZ+FH?=
 =?iso-8859-1?Q?JABVA+Bhat5+Vdk6bsPGmNQlLqZhSG64ab?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09a65e33-3c5a-411c-99dd-08dbc939119a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 02:31:54.8567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gruzRy8iC6/SR3/bBfllKcTDBRZvbEnFV5gn0YIu+o7qgW47lXlFizckaq82EZBYkx8tvRtxDA9bS3FkaXbmKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4583
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Free crtc_state in
 verify_crtc_state
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Monday, October 9, 2023 6:08 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedeskto=
p.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Free crtc_state in
> verify_crtc_state
>=20
> On Mon, Oct 09, 2023 at 10:58:22AM +0000, Kandpal, Suraj wrote:
> >
> >
> > > -----Original Message-----
> > > From: Jani Nikula <jani.nikula@linux.intel.com>
> > > Sent: Monday, October 9, 2023 4:07 PM
> > > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> > > intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Free crtc_state
> > > in verify_crtc_state
> > >
> > > On Mon, 09 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > > > Free hw_crtc_state in verify_crtc_state after we are done using
> > > > this or else it's just a resource leak.
> > >
> > > Fixes: ?
> >
> > Cant really trace when this was introduced as this function was split
> > from Intel_display.c to intel_modeset_verify.c and then this is the
> > last commit that introduces it
> > df17ff62b626 drm/i915/display: split out modeset verification code
> >
> > Should I use this commit in the fixes tag?
> >
>=20
> Mea culpa
> Fixes: 2745bdda2095 ("drm/i915: Stop clobbering old crtc state during sta=
te
> check")
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>=20
> BTW looks like intel_encoder_current_mode() can also leak some stuff on
> account of using kfree() instead of intel_crtc_destroy_state().
> Can you cook up a patch to fix that one as well?
>=20
> And while vlv_force_pll_on() isn't actually leaking, it'd probably a good=
 idea to
> switch over to intel_crtc_destroy_state() there as well...

Sure will also float patches fixing the above mentioned issue

Regards,
Suraj Kandpal
>=20
> > Regards,
> > Suraj Kandpal
> > >
> > > >
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_modeset_verify.c | 5 ++++-
> > > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > > > b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > > > index 303eb68fec11..5e1c2c780412 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > > > @@ -214,7 +214,7 @@ verify_crtc_state(struct intel_atomic_state *st=
ate,
> > > >  	}
> > > >
> > > >  	if (!sw_crtc_state->hw.active)
> > > > -		return;
> > > > +		goto destroy_state;
> > > >
> > > >  	intel_pipe_config_sanity_check(hw_crtc_state);
> > > >
> > > > @@ -224,6 +224,9 @@ verify_crtc_state(struct intel_atomic_state *st=
ate,
> > > >  		intel_crtc_state_dump(hw_crtc_state, NULL, "hw state");
> > > >  		intel_crtc_state_dump(sw_crtc_state, NULL, "sw state");
> > > >  	}
> > > > +
> > > > +destroy_state:
> > > > +	intel_crtc_destroy_state(&crtc->base, &hw_crtc_state->uapi);
> > > >  }
> > > >
> > > >  void intel_modeset_verify_crtc(struct intel_atomic_state *state,
> > >
> > > --
> > > Jani Nikula, Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel
