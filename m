Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 069C87BD912
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 12:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE6F10E0F0;
	Mon,  9 Oct 2023 10:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E20610E0F0
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 10:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696849106; x=1728385106;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uk1XHKTzoc7ak52IFIJt6idoZuGKn7Sf2cPvwLu1qWg=;
 b=Mg/RW4nuOx3EboVUO0tOtkpJBlD5jGIl4j8yxVVV3ytNjmJYM+uUCAsy
 5HxnZxHc803/njcYId83eJLDaSHDI3dlhMygF6CyDF2tmpez2MhYeIXKj
 1tmGAy3iHsw3M0582UAjLz12bR44o5WhkrxcrB3PvbWbif+CX/EkgefOJ
 y7VkPIJqmgEcR3pcl2JgI0cqph8o49ya5Ez4/+5qH1j6PpkAYBgy7ovSR
 aFA+x1EsDZ2059CHKXO8kmZVDybIy9Pyp8p4YozziROnKaCD8r2/xNwTd
 OLpk7Tvr0Nm/2A+cBwPPRtK597+49RXqrrin1JFKJStnzMlB0Nk6VFt9l w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="364407588"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="364407588"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 03:58:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="746636938"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="746636938"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 03:58:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 03:58:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 03:58:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 03:58:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 03:58:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L6DNCih/+ToqH+NF8XP+aqFluRmXSqjPK4Qcmb1M6lTOPpxqQ0/TlsEKJ3z/EOrSxxuByWfx5kPUocuAYeEncQ6nKzlFtLrC9zG8zQl2rrzeMwN/aPCxHhuLI1biEcEdulNRPQ7ro8nf8CBUXlmDgovYxvZlg1ie0govsQb+TQ168K/esGhVJSkelOYrnVG+qo4sMV745boclCvn96V/faBkoLnkOYljbfTnRiu+fEyLt9Rjm6koaqQZhsmhgJXDErpupGgxnV8TslA74hsUxNR7q2ZWmuslxcuW+cYEGfk/YqOvicwaa7YHPpHfVEgJj9h7r2pJwT/QMTMz7aw1vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=77DYU2Ux0AskikORmfsEYER8bVPxJsvHVZ4wB3yGnL8=;
 b=RLJ1ZHrUJ7LVzjsst8qOK2+nzk+E8dauFTizm15X0q5FFluMLmdAAQ/vWnuQdA2J5r37Mlfc09Fz3TBucWoe1onTieoUfKHdMkrAnnAc40ZvpwnpW6g7YU+uhGaTlz58RmTyxTddw/4gngoOMryUfxf7zIjBCJkIwoi1QA939fZjh8pagcIwKDx+fS9UVKIz6gwVMRyqfqXkVMupiaO9ykFM+fuV6ayM/oXnRTOpP0Wi9iHAOcW8+zQeFQf1n6JMmYrHJOd7VAq6KmD36JRJ/Hn+0eafSxGzJk5wuZQSgCseMLj4qErXn2tpSrxaGOhtEnuvsc0Ngnsq/OuZTXlicA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BY1PR11MB8078.namprd11.prod.outlook.com (2603:10b6:a03:52a::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Mon, 9 Oct
 2023 10:58:22 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6838.040; Mon, 9 Oct 2023
 10:58:22 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Free crtc_state in
 verify_crtc_state
Thread-Index: AQHZ+pej71ThWue/Jk+F+1te8Yp9gbBBQ9gAgAAE71A=
Date: Mon, 9 Oct 2023 10:58:22 +0000
Message-ID: <SN7PR11MB675012785B6ED0FB365DF013E3CEA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231009095946.655337-1-suraj.kandpal@intel.com>
 <874jj06q0r.fsf@intel.com>
In-Reply-To: <874jj06q0r.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BY1PR11MB8078:EE_
x-ms-office365-filtering-correlation-id: 4f9afdc6-d26b-4b02-295a-08dbc8b6a7bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lVmPk4VbvsaZPaOtjnri8iiG8pMzBGnNmls4ipX9AIomB6LdyxtTAqgLmM9hsJB2bZTEKXcQhyGV/UiBER3uLGGHdLj070WPmbZUW9XFpClnc6uvWx+S0vw3yzlA5Mj6/ZvHMVEacV1CnmRoTuAO6saaFQd699Is/qfd6vz3V2LGVU1HDZ7QUquzaAdedfolvlvMz9e7IQobK3TQLyorgzLZVb1F+ilYa77xOpzxJkvvy0Zgazx1GBddsZFa1iU9QbqG7QwyySvqZ6GBr6TEkYhMDIerhfjt6y5xw14GEoLlRSYKsPotniJnG2aeKWtcZrKND7nigq1PukpxuJTutJTTO70FLT8nnnUp2GJrXg1HuBcDQ8sAkviu4PiUKix1qROLHPMe4A1mkcNDOmgGrJev58Ol2D4VQmTWbZPF14mJN3zWLu08MOD3M72a7FnF6mDLD0VhUtikXlc/ag2l1q7wcP4ftSMFqKfz86z4hmKUorOe04bOQDVz0hgr30PsFqi6QyINhu40sRNpRJ9jJOINTJ7oCwxGAI5Qi/5Iq8c0gUCTqzqhprBlw7qzkSeKw3dtgeSgY1MelZqDDFSAnRISNadXJ8iOyrW720lIYV4jfWxaJKH5N/WTF6nKTe9p
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(396003)(366004)(136003)(39860400002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(122000001)(38100700002)(38070700005)(82960400001)(86362001)(33656002)(55016003)(2906002)(9686003)(15650500001)(478600001)(52536014)(5660300002)(41300700001)(8936002)(8676002)(53546011)(71200400001)(7696005)(6506007)(83380400001)(66556008)(66476007)(66946007)(64756008)(66446008)(110136005)(76116006)(316002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zr6hsafnrb4aMtezUFKhDKkN5PqkpercNiLRSshxzFt000WyqigrolstCjX5?=
 =?us-ascii?Q?lGkCfz3prvEzArjNTumMGS08LEv1d3S9oRNlyhPT1E03xq9ngHRyMLlDOx2G?=
 =?us-ascii?Q?hjd03IcnhXYhHh2tqDUfgkK76TR3kuf1/i+EGN+5g2sLW8u1d0vw2YWjXuzl?=
 =?us-ascii?Q?vvF2yQzS9JlScQcHRi3ntjrwtohdXLv6bue+uCwmZwcFipoYjyy5OH9MQ3EB?=
 =?us-ascii?Q?adqR0EBM5q27lifJ1hfcv9X6O+xiAH2AC7RXW159ZQLzlBFnKWgeX9Zm2b0M?=
 =?us-ascii?Q?3ttxG7Hgm+TpdDy5/t1zfvOekoeMpsHdea9rxzPkEI/OrJA/1eX61dEBZQLg?=
 =?us-ascii?Q?Qp1NIuvI/TOphi/bnFPjxjoxCrj578skFZCepB6aw8fvJgytJBNVz1FTzKhi?=
 =?us-ascii?Q?Tv/nH0ontPexAdfeiMq3dyOeGD/Qc9cVXsyr9I1ZQBBvCz4/Ezo96SrhGsaN?=
 =?us-ascii?Q?/ioVivuNyHYTLXycCiUzoirSyWqmXnDDJ1UuzvSQnQaZz2QTi1zRAKUrjuc1?=
 =?us-ascii?Q?5lYOpMgmNREb+5VX+hqu9UypbVR660x5UOHPGIQXUt+ly5jyEJK4lJrXhtvi?=
 =?us-ascii?Q?Sfw2QjTv04p9mBPLu6WHlrMidQF7zdHjx8LZMp2QagxhHqR4naA/fd13CUL0?=
 =?us-ascii?Q?p/QcQusGCoH5Uh2jHP1UalWNgrOvyvkrE3ZaWikdbBS4P1TIsTgoX1f+lmk1?=
 =?us-ascii?Q?Yine+VOwB5ea0TBrdFAdfadmkW8RcuVrzyulYZFtDO0x9EDo0y5l1JE8pUKU?=
 =?us-ascii?Q?SrNGwyJC1HNiK21sUMqEzTYnGz/EKOfMIFLoiSb00N6Yvu3Qp/NNempRtBeO?=
 =?us-ascii?Q?4mDAbc0THZQn1d2EqLiCRiKY7tZQIqhzX90Jvjdj+9KTdq9YpgFYWZAvJ2+c?=
 =?us-ascii?Q?1KDzm7aUBkIg4TQB7ZgG070T1logt4slnCiaZsYfVvNUYMKKPsdtnzSSNFQx?=
 =?us-ascii?Q?UDL4hmLwh8PLoweQFbv2qj2fi1L2rOJpeNCZMuEtckEyN2SiuExQrntT6u3A?=
 =?us-ascii?Q?fY3AGMke/HxpXWKERpfI7d8qKPwnsGs7B2ihwHwY9AOOzNVxOmYUlKohA/Zt?=
 =?us-ascii?Q?3V1Iq0djjZnqtbYlF+BFyfiw8OS+xJbkALnNQ908avkKSoGcAF+1wxRu9u9/?=
 =?us-ascii?Q?scLyAfC2RXy3ujGHv8aK0/rK1GyPB7oS1gB1nSup+kTWiJbgkYnLQdRC5PBu?=
 =?us-ascii?Q?oITM7Rm54/HPPT3fge1xCKlr/KV2joJkvNDnxHVKVdhQMr366lNYg7nIfSq4?=
 =?us-ascii?Q?i2Q9WbVge3PTOt6CfeBww1lOPns5HFuPSYDsJap1C3bniV5LVxV6tiIh0yvF?=
 =?us-ascii?Q?IbGl9wTv1my3C/o7lUC3QxuSwH0LBjNRLl6MH1UKT/pt1kxEpDVCndq7tUmU?=
 =?us-ascii?Q?S2UZMgT+8sK8jsrwIBIWXhPC8RgKsv/QwEMsFnbfd/TgYD0SoUBJd2BDi2Lu?=
 =?us-ascii?Q?t5jIuga6pvwLnHe5cFNR2do5xvvQtylX1YiT4geDSgC8pwp4MazBcLqPhync?=
 =?us-ascii?Q?rTZoPPhgIK6o56vF6W3Wv35vaYouTmBgum0h95B+0VdIEBZbKzdKTSBNIuDQ?=
 =?us-ascii?Q?ogL/8A42DE7LmgirCg+9RGnvy410QTK0pI8Biwsw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f9afdc6-d26b-4b02-295a-08dbc8b6a7bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2023 10:58:22.6450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iZ6FMSld4hSX3iQbLCKcNPHH8+FzJTO3dvN3BBUPAS5xBgNZRt+MRy4r52KyJX17vaHQGtPjvFtK4NBkFsvGWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8078
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, October 9, 2023 4:07 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Free crtc_state in
> verify_crtc_state
>=20
> On Mon, 09 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Free hw_crtc_state in verify_crtc_state after we are done using this
> > or else it's just a resource leak.
>=20
> Fixes: ?

Cant really trace when this was introduced as this function was split from
Intel_display.c to intel_modeset_verify.c and then this is the last commit =
that introduces it
df17ff62b626 drm/i915/display: split out modeset verification code

Should I use this commit in the fixes tag?

Regards,
Suraj Kandpal
>=20
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_modeset_verify.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > index 303eb68fec11..5e1c2c780412 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > @@ -214,7 +214,7 @@ verify_crtc_state(struct intel_atomic_state *state,
> >  	}
> >
> >  	if (!sw_crtc_state->hw.active)
> > -		return;
> > +		goto destroy_state;
> >
> >  	intel_pipe_config_sanity_check(hw_crtc_state);
> >
> > @@ -224,6 +224,9 @@ verify_crtc_state(struct intel_atomic_state *state,
> >  		intel_crtc_state_dump(hw_crtc_state, NULL, "hw state");
> >  		intel_crtc_state_dump(sw_crtc_state, NULL, "sw state");
> >  	}
> > +
> > +destroy_state:
> > +	intel_crtc_destroy_state(&crtc->base, &hw_crtc_state->uapi);
> >  }
> >
> >  void intel_modeset_verify_crtc(struct intel_atomic_state *state,
>=20
> --
> Jani Nikula, Intel
