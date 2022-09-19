Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7105BC267
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 07:08:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45AFA10E088;
	Mon, 19 Sep 2022 05:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 011B610E088
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 05:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663564100; x=1695100100;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RIa9iHGQ1FsEGek7l8b5bro5NoO3pMMnxdz/AT5eQks=;
 b=RDizvaMLLmlHBq8xK/S+577RryA7yKps5P0e+YwrgGv02UnnHIWl4E8H
 UZvsnLI+HeILEiv3+BPKsp+FuLZGQ7I/zC/IsuXOFSFjnhTQBu12OcFOp
 SUVXfDX1/4ocIS9VGaSE5N2OLZ0jeXzinfanqfodgsszRGbf/3CbB2/w2
 0oLK2qhTtPLgcOWk5apKC+NTuu37DP9joqrfX1zWAOJ1rtFUu6TqM6ixm
 L4YNeKm6LK+Yv1zFKEvvXQ0Hqmft0zS50bPyYNSFbjcGID778JtkgqKmp
 b0Bw/c6hvH3sR8mPOdrmOw8NAQbmzv0z3mn97x526kFM0P8UorDlblOYO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10474"; a="286350547"
X-IronPort-AV: E=Sophos;i="5.93,325,1654585200"; d="scan'208";a="286350547"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2022 22:08:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,325,1654585200"; d="scan'208";a="686827694"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 18 Sep 2022 22:08:18 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 18 Sep 2022 22:08:18 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 18 Sep 2022 22:08:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 18 Sep 2022 22:08:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 18 Sep 2022 22:08:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kS0gsadoFQr5crsYzasJKCTvaigP+pWqk7p+DPBZXU8WyVSuVfqZYNJOplQW2pRQby4vjwdjdsxfXgf6cQcouPgQunCeS/tBgKhLT9O2GtUbtPevAj2xMhXd7rxbo8G1PJTDrnZEqInnwwX9NArDCq5b7Etzv0QklSO/ON8FXhpF7ieYt3u709+cItIhVZOP4edo/v7Z8glzPZLGS6tWY7FOmRUnTt2EXmFK3nxja1oj/mzDmqI5zE26h9wX3mAem1BFLB6G9Pci8166vV7pp1e4YhCz0+nE4pNMN2Ayx+ir3yjd4dCABgxUqUQ93LrzXanmJyocwSDvLsTfjtBxEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fNOvt8H9tlxMS0K9I7gskdtYsOPi7JlphoNGQ2Ahu1M=;
 b=LRCx9A+zbyHrsAK2WnC+sjia5ScSi2T5QCShcib/kObVUJfJoBeJPzfHvVBrrDzym2Ray/ptDoFF0qDgs5GxpcVlz5SFRa6Dz+aN4EO7J2XAEi66tTRnhaejWdGfG2UCwNNgWZ7eaW1/NA0DFve5Hbih3WFnmyQHLGdtTk/c/tPSz9lnGbTnp30TYvlYBqiuvq9JIKIMpmh+ZwDJ0uXK06wUVAmmndGR5xfo02Uso08uZcOrHL0u1h8dItShDsPU3lMsbY6donODmgJohP/9Phxk8/QQ3V2t2C575aYAWjOobFaffHUtF7XUNspVZkgM2jj0HgCeTWiW42v+U9LyqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CY8PR11MB7033.namprd11.prod.outlook.com (2603:10b6:930:53::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.16; Mon, 19 Sep 2022 05:08:15 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3083:6b7c:8c2a:c200]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3083:6b7c:8c2a:c200%5]) with mapi id 15.20.5632.019; Mon, 19 Sep 2022
 05:08:15 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYwaOE/EXAADz+NkeUK0QgUHi7O63WeiyAgAhR7zCAB3v7gA==
Date: Mon, 19 Sep 2022 05:08:15 +0000
Message-ID: <DM6PR11MB31771349661CE3E0C2CB28BABA4D9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220906034803.4094252-1-arun.r.murthy@intel.com>
 <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CY8PR11MB7033:EE_
x-ms-office365-filtering-correlation-id: 830029a4-87f0-4263-223a-08da99fcf5a4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kPZixVaUCTLolvu9rgbZAVjltoZrmgUcCVPLjzCMaiosHNHQz9s7EGm2kticps043H3r+bm97g8iITWMZtK4opkwKYgEwKDi71F45rKi3hGxzqQOU7s8/tPkVTZLJ4CWxo2b3gzXCQXGFSajT8I75QIC0zStiB8l9Tdx6JeRep2j5xTxvG/wFZxuAdUf+SrwhSkw04kqE3oEQ3s0RgsVLjzvrdu9LuTrUuJWQ/iAYU3ulfOYZwSgcFjkSWxgdpjYd5aBL5j9clxtU1CThQOKgl/RvxGJBMPVtdlH+nDtY4cqJccoy6FLWDJO7+oAsaP1tk5quQkd2dxijZZVEsabB0A0nBatgGRQ4LIBXvt1sYwb8ykhGnn8yVaur7arPxDCZ2kwS7DCVT4sAS0LLzf7cUeQvtlHAnWAX6QHgB6L/MNFTMj9LP4IukjGOSw8RT6vsciMt6hYs++AET6n+6Sh2RRdQbJRI8qasCUq3295O6Qw/7I5ccXVvDdSFF20u21ysKROda9yI4rbFBZeRyITyLy5XuNW/FpkYia9aSsdJOj9uWvf8xKrHQzC/NImmx6ph32bqVg3SX9XgCl+/dMJ/LRLFlSevA7P0mAfXFKEFO8PeelrmJVXcAFs1VfwMvR2q5t17f+gwH5s43xZ8/JudYXzOijTMjl2NYeQfHv3z0oCIfeq+GYVO5OrvFOjkrp5xdO7QhZv5zh3a1osPFbsHkmkC5I/SGz/emiVxudiHJEq4tSpY2gUUltdceGYKEUMbxa0YgZQ/iSresuYLE49KA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(396003)(136003)(366004)(39860400002)(451199015)(2906002)(55016003)(122000001)(316002)(82960400001)(38100700002)(8676002)(66556008)(4326008)(76116006)(66446008)(5660300002)(64756008)(66476007)(66946007)(8936002)(6916009)(86362001)(83380400001)(186003)(478600001)(38070700005)(9686003)(26005)(52536014)(33656002)(6506007)(71200400001)(41300700001)(55236004)(7696005)(107886003)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/PXvJ56DT0J4nF6psi794/HmCfznFCE4AK98AlCWvuDgsZQZ9KycIniEeALW?=
 =?us-ascii?Q?uj+XQ8C49B+II/G3c8nF0/doXLuCPai/s5RKs150uCQFgu6Yj/qJfEtAISIA?=
 =?us-ascii?Q?Ss8JozbBFQtoQeZ+R+aSYvRIjER95AeorKxFgYzP9hV4RbcgCwcbWcgMQZMj?=
 =?us-ascii?Q?VsGuP+WQUJawIVafyOmosj5dEBZr6s0Cpzrmhz6woHcJ5BUV6Vm46Ci9N4Ee?=
 =?us-ascii?Q?+my+DBdsZ1IIoIwYFikDBcazgMJHSIerOlq/vpva0f+nbyjINpu+qAzoMs7i?=
 =?us-ascii?Q?UnwaC9bUAoDsnBJ4QIU+FhNnXoE8/A+/0U3IQRZXM+RGoskFOfa3o0O8UN5e?=
 =?us-ascii?Q?S9dwVK3f04cM/cQQJBZM6E4tN2dMCjHotLJIDat3yZXIN/hX06FAVn8VMUPS?=
 =?us-ascii?Q?u4/dY1mcC0sPcBlgfCTwfkJYLutetonN87o4lDBYod1qWY89Q4I7hLglSBxh?=
 =?us-ascii?Q?I6LuqXziKWVGolCg2fkAxkbgTyjkVzs098BKS7mjQCg1p3Ujj6GbiQe7jMKs?=
 =?us-ascii?Q?mWNf0F3mD7vuXNtJ/sfnO97gEuiYH/xu3mM9jlBNRhKnddMb2TL+AT0w7f5i?=
 =?us-ascii?Q?YUzS/CxnxB63vdZNr6fuadk7sNHMFsu5c0ekjpG9r2ZiLKUSxaDImrfj/eyx?=
 =?us-ascii?Q?fBhCSATRcdpwHzHLWbs/RQ60ZrHY1M7mQD21wYxOCCWJSc+PPMSSULobpxVz?=
 =?us-ascii?Q?MTFYjVAh/J7Xol/bcqr8WUPN8j3+zJbFvHyi9ACRsAl2Wxp/XxhXzFdNkgus?=
 =?us-ascii?Q?XR4IoH5TX76xEl1GPqjKLN7U472BeBuAJ8Yl1nKn7o7FBZkhbTxPp48p+PEe?=
 =?us-ascii?Q?hxiiq7qXCKt+sCVaa290/CgFn1LiBR1nmDeF0HohlStbAmcu8DoEXHPOFUOp?=
 =?us-ascii?Q?aTstj1SIhfNaW367w55P3dFS7OzA+HnP7QYXrFDzpxUwcqzlEChEmg9nlUsV?=
 =?us-ascii?Q?guWdex932o1Of7CsWKgf/FVPdlhqvgSOmGmYF0fbMg+ORlsqRZJE/OJplTL+?=
 =?us-ascii?Q?+H6tKX1luZLSidtPCNL0R52Yzr//g62QhV8RAUB05/gtYSJ+LJQcXmwcbeNB?=
 =?us-ascii?Q?+h2m2kjkRI/pqeyMU4mRBl+zPEE25mn/EaYMF9anQEDQFqBIoRrY04SiCXaf?=
 =?us-ascii?Q?F1a6YDbOhP0M8FLFqOZFK9Y4Pf2yzrB9fBpe8LbovMpkB7Cobnmnqx0ZeG13?=
 =?us-ascii?Q?frptUi2aAJ2eRtWSnnr2hWoeopoBygx0LVDET37fZlK+CI1gpNMi2KSN4Tvt?=
 =?us-ascii?Q?itnHN7RcB4fU2VLEt4HO5ONlUrbmQ+N7DSNffe05BBvy+mhgEsHOl1oimPVD?=
 =?us-ascii?Q?EtAZv0qNMUR7/p74QRVnEUxjWHFMxUuT5ql9vfmq+Yd1olY7QfCyerR7jMPf?=
 =?us-ascii?Q?pgP11plIFGwd9gPbS+c+p1Aqelr9oOfWWnDz5l+wTWA9NxDh22b1aTZf3LgD?=
 =?us-ascii?Q?yKe90qB4eBFwFDERqlhrKyLioPFkvfKGnaEyWRNbtwl+6ItdsLB+tlbVoJ6I?=
 =?us-ascii?Q?HRBohxWSrkCIOjG5Hu9nVwJeDugIJHbl/vB9v47ji3x3lHR8P2qP2gmdWnjz?=
 =?us-ascii?Q?GqStQOVTUaCVlR0GGYt6jG6s9g45Oa5oGFwCMi0/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 830029a4-87f0-4263-223a-08da99fcf5a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 05:08:15.8173 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9mUG0mrbCTQfIhlgzAMe0n9L7ob6qbhn2ZEGfvNQUN3C4fDhnuYHTEWQ+TUpXT/f4unN4942WvrpBSq4ikXoYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7033
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If no comments, can anyone merge the patch!

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Murthy, Arun R
> Sent: Wednesday, September 14, 2022 4:21 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Syrjala, Ville <ville.syrjala@intel.com>
> Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
>=20
> Gentle Reminder!
> Any comments?
>=20
> Thanks and Regards,
> Arun R Murthy
> --------------------
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Murthy, Arun R
> > Sent: Friday, September 9, 2022 9:17 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on
> > Linear buffers
> >
> > Gentle Reminder!
> >
> > > -----Original Message-----
> > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Sent: Tuesday, September 6, 2022 9:18 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: ville.syrjala@linux.intel.com; Murthy, Arun R
> > > <arun.r.murthy@intel.com>
> > > Subject: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
> > >
> > > Starting from Gen12 Async Flip is supported on linear buffers.
> > > This patch enables support for async on linear buffer.
> > >
> > > UseCase: In Hybrid graphics, for hardware unsupported pixel formats
> > > it will be converted to linear memory and then composed.
> > >
> > > v2: Added use case
> > > v3: Added FIXME for ICL indicating the restrictions
> > >
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++++++
> > >  1 file changed, 14 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index be7cff722196..1880cfe70a7d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -6610,6 +6610,20 @@ static int intel_async_flip_check_hw(struct
> > > intel_atomic_state *state, struct in
> > >  		 * this selectively if required.
> > >  		 */
> > >  		switch (new_plane_state->hw.fb->modifier) {
> > > +		case DRM_FORMAT_MOD_LINEAR:
> > > +			/*
> > > +			 * FIXME: Async on Linear buffer is supported on ICL
> > > as
> > > +			 * but with additional alignment and fbc restrictions
> > > +			 * need to be taken care of. These aren't applicable
> > > for
> > > +			 * gen12+.
> > > +			 */
> > > +			if (DISPLAY_VER(i915) < 12) {
> > > +				drm_dbg_kms(&i915->drm,
> > > +					"[PLANE:%d:%s] Modifier does not
> > > support async flips\n",
> > > +					plane->base.base.id, plane-
> > > >base.name);
> > > +				return -EINVAL;
> > > +			}
> > > +
> > >  		case I915_FORMAT_MOD_X_TILED:
> > >  		case I915_FORMAT_MOD_Y_TILED:
> > >  		case I915_FORMAT_MOD_Yf_TILED:
> > > --
> > > 2.25.1

