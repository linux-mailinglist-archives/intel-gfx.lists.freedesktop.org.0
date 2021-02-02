Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4080230BA77
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 09:59:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8AE86E908;
	Tue,  2 Feb 2021 08:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AA3E6E908
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 08:59:41 +0000 (UTC)
IronPort-SDR: jH92STe+7n72gBIuCQKxUihV2n9bsXJh8CXanCurE1NBtnBt/GQQ/+V7meqnOKuFpo3pWWppY5
 X8qgqr0U8Cwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180046732"
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="180046732"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 00:59:40 -0800
IronPort-SDR: Qlz0JF1a5QnAFzdRyFHViMaTMIM7DVX+h6Qq6nJwNwjOZKfsb3i6tqHLSP5F9LR1AbCzkpt9T8
 ZydwoWWkSjjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="391361901"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 02 Feb 2021 00:59:39 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 2 Feb 2021 00:59:38 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 2 Feb 2021 00:59:38 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 2 Feb 2021 00:59:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YHXM+nKcmBZRAo50vqb2OTuVXwbMrLOAJVtKRxmh8VeKDKS0RpLCjQUstPyMRW3sUvVvo8zaULCE5Lh5a+EqS1I4jXXRoD6dw2QcgYZc30uKcGLu8SJiPL0+JGiXvlHp8gp/V5TUOwfdJmffwQ1+anHkHEBLqHJiAxALS9TD6Dzlv5DOluvx7PfPD4tvYiAeaa0rV5YSfTKBWV57dGIgXWbQMJeHP+Y/NfMDDXuV11yW33NrAwGHmtsjkP41o1GBijsd2X8oFAtoN6IN8HJffGfoqgwM3PZVHJXiQ8vjAdrMvZrzUc7nFWRJRQHqFxucZUrGWmn2ry5ddD+16PuijQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UtnSlLZau+72mWdLuiLmE4ak0bLZQ8b7uz2jp5EsW0Y=;
 b=iBIqF+ssxNEHIV5kOFMHRwPNWSVw+jVnMvLSwxHvakO/+mB+2E+2n0ae+VOiJeJprs1tNU69EzAnOq0p8hhu2t/2vhlCoVsMHcP7IHFb/P6pu0/ZKgcS4Pkr6/3ElIYolPpKZj6FWKNTye33oxL6zgHSL4TF6NrwPLMSNsdKGs7CRAeKfikycE7D7cmLDiQMMTSPsdqjRtfaZnhAWNHg0e5tz0rZWUek1wtvSwcyyr/S1ZqtDGqjVqVLbQouN2YLg2aEOYxrGif9m7pq3vd+qGewdd11unOzToNmSfVOIo1aYMxeYkymILI3te2lvLFRBjqbuvzUQ5u/CmzvobHxlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UtnSlLZau+72mWdLuiLmE4ak0bLZQ8b7uz2jp5EsW0Y=;
 b=xDjobsWLkRJ+AkWsWUzI7+/3xfFDiEk94WBpp2KA1n3b9D2Mvj8as5BCTxYQlL1kIlc3E8DQBvOXlnx3kz7aLuCALQdZDKq21DVAWCi9p6Dn00c9Bm0vRJLLqRQsVnNhnyDfN9NfQtP+kPG6hak7vti7w6IQLMvsTG+vTUBdlq8=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB2832.namprd11.prod.outlook.com (2603:10b6:805:5b::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.23; Tue, 2 Feb
 2021 08:59:21 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::858b:c175:afcf:1672]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::858b:c175:afcf:1672%6]) with mapi id 15.20.3805.028; Tue, 2 Feb 2021
 08:59:20 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
 suspend/resume
Thread-Index: AQHW9JWuFxjFhGQU6EiSmsLbqEBQmqo8G3IAgAhKAjCAAAuLAIAAC0wAgAAcFCA=
Date: Tue, 2 Feb 2021 08:59:20 +0000
Message-ID: <SN6PR11MB3421EAB14C44008CE72F09E6DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210127100830.162292-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YBH0FJolpTwO+BJG@intel.com>
 <SN6PR11MB3421882AC3045B652D2CBDC4DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
 <YBjx1O/3jeFcRPDw@intel.com> <YBj7TmOwNCqwits7@intel.com>
In-Reply-To: <YBj7TmOwNCqwits7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [42.111.125.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2efbec1b-3fc0-4303-de68-08d8c758d487
x-ms-traffictypediagnostic: SN6PR11MB2832:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2832CFCB4979CAB813BA5E4FDFB59@SN6PR11MB2832.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pn8LlJU3IHo3+jP7Q+Lv67tMs1kzPNbq01NOK24cgehWK6x5NPI+wBN8q0KNxJKxjCOezhykCDVM8zm/IRX9MH6Q/34LQfmE28t2vK9sE/fr/HKJbDdPqR58MDsyzMcHstHdRfNyIM17JfQmHspgk9CaGdpBmrG8dXPA0YPAca+SeAmL/gD6i8XNQJRh4GzQOuAM9XNvB5GB2aFl04Ylm8FCy7/5np8/66zTtOmUuYZKmiEBpvmqhUEcpj7qu4pbYBGaV/3DU6dU2p1d3I2LLeHnrY1NgpdcYpTno/vml/0LunjxtWSqk4iVl8+0nF2K7uRzeDT74sLGHwkz9So4UXns5QsBH74FC3LmF9jV584ZTJ5LQydk07LMTUYfSLornN62eBz2qaHzNST6F4U5NDlYIZxeWJ4GQbyyU0JEga34dCbwj30OSzrIdN9az7ivuX9N/rWlMzjhFWBsIAuG5FjgxdjBF76YkjOwtnimGTfC1US2dCc8rG/QYPbdaR42mlLJp8wzmhhMWKS3wcLdHN2ey3sRpZIDReJa0Mjopj9yzpNxvJMSaMz0S5zgHcj4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(346002)(39860400002)(376002)(136003)(9686003)(15650500001)(4326008)(7696005)(66446008)(5660300002)(66556008)(54906003)(2906002)(71200400001)(55016002)(66946007)(52536014)(64756008)(76116006)(66476007)(316002)(8676002)(83380400001)(186003)(86362001)(66574015)(6506007)(26005)(8936002)(478600001)(6916009)(53546011)(33656002)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?ejspMz3KSEOsnrhWt61kZevsUD4lcZae130k4lRnRyezQOXv0zl3kaqcKd?=
 =?iso-8859-1?Q?jenM1heIHAeTVxeBEYcC92wWTZfkmIDByIi6N5QbRWWeqleDZYb26wSynM?=
 =?iso-8859-1?Q?z3hT9BpSxcA9c3cSsWMdcWZUzTXQNgSvAut/oA+/JXZKaCG8YSMxVpXA/r?=
 =?iso-8859-1?Q?gsr+wPCmXkTjQD9ZGCFUsPcnAW9fDbPYw7iT0gMh9ZxY/3EBIBEbMxwEJy?=
 =?iso-8859-1?Q?uviOJHEqanuSvP/a9xNqYgmqHKq7BxxLEOCB0a0eyRLzDrIpd37RecjvdQ?=
 =?iso-8859-1?Q?JekCw/ZT/sPwHG9TQBHdfbrrfbRgRJzTAVFSNplTFn3zOG9GG+GDBgz9pT?=
 =?iso-8859-1?Q?h4M4klBhOL9TTyaNYNna88Gu3al7G5agyWPqfc6nMhJkPHSXOvz/dcaRYv?=
 =?iso-8859-1?Q?gYQ7MsskMaHI7H6JW+KxvrIG3yEy8y3NV6frXxFHT8wZ/JFDbv1T7+glvo?=
 =?iso-8859-1?Q?hPxqe8W2ZoONa5E9M7GKgg6SpdfIXZDA5jklEUtNRU+M1hl6iJ+V5epFq0?=
 =?iso-8859-1?Q?3NLCr2ZSpplB/G9TpY4YeweoXLNHDYxDXE1Bunb4xvkTr4BuvkU5PjZPfa?=
 =?iso-8859-1?Q?hnkw1Z3JAzIKskS8JBZMsSVgOv40iWL+S+RYCgYBhRHvURfbDXwbz0INgY?=
 =?iso-8859-1?Q?xexAAuBuOC80rMUsztPvZ7I5d3warjuLRe5/IUEXULezoCr4W693NvwJGk?=
 =?iso-8859-1?Q?WcQ4lv9ezBrpC0FP1HNaqFwn7oAU86XdCQRx0CWLXfKqaPolcfq3Helgob?=
 =?iso-8859-1?Q?SsA2acd8eNibgILBHz8Dr3fLqoPwxbQnvHptN7LBSnz8eG04H61P83e9fc?=
 =?iso-8859-1?Q?b4SkFRsKWEZ2y0BaxJhSn1hv48OsFRZ5j4KSWfwGGirwenoqBhyHEQvv7G?=
 =?iso-8859-1?Q?Qg7eL2uvLSxIKd00SdjPlhObDJZzzGm8cybkix3xPUhwwOzY2dZS98rnr3?=
 =?iso-8859-1?Q?zAQO1QjHV4IHWLZawxZN87QynvzdaGN7JrDMHJG589mMfdFAPvku/C0Pe2?=
 =?iso-8859-1?Q?LrDUXw1hQJoWLV+AAemnYJ18xGg0sVeL1fj+GhwcXNhwmBhu3VPZ1rot/d?=
 =?iso-8859-1?Q?aT2IMnh53PIzdbn9GTeTyRj6/c5V+IM2slnHExtUe9iR?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2efbec1b-3fc0-4303-de68-08d8c758d487
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2021 08:59:20.8849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9LtHYFM9fEtEx+fS/lZ5qEPjMpXECttp7N9WGuTgkoMPEDdFsWl0kPhv9D4lqGtFekFJha7rdXCjk1neyrq2ASjTmW6eppgpOrHIO+KZBDki8Fbp/+GMiRIEWEtdAhmMBD2Oq37S2fojjJvi4Uv4iQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2832
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
 suspend/resume
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: 02 February 2021 12:42
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Pandey, Hariom
> <hariom.pandey@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
> suspend/resume
> =

> On Tue, Feb 02, 2021 at 08:31:48AM +0200, Ville Syrj=E4l=E4 wrote:
> > On Tue, Feb 02, 2021 at 05:52:28AM +0000, Surendrakumar Upadhyay,
> TejaskumarX wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Sent: 28 January 2021 04:46
> > > > To: Surendrakumar Upadhyay, TejaskumarX
> > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org; Pandey, Hariom
> > > > <hariom.pandey@intel.com>; Roper, Matthew D
> > > > <matthew.d.roper@intel.com>
> > > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH
> > > > during suspend/resume
> > > >
> > > > On Wed, Jan 27, 2021 at 03:38:30PM +0530, Tejas Upadhyay wrote:
> > > > > For Legacy S3 suspend/resume GEN9 BC needs to enable and setup
> > > > > TGP PCH.
> > > > >
> > > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > > Signed-off-by: Tejas Upadhyay
> > > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/i915_irq.c | 36
> > > > > ++++++++++++++++++++++++---------
> > > > >  1 file changed, 27 insertions(+), 9 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/i915_irq.c
> > > > > b/drivers/gpu/drm/i915/i915_irq.c index
> > > > > a31980f69120..6dcefc3e24ac
> > > > > 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_irq.c
> > > > > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > > > > @@ -3026,8 +3026,20 @@ static void gen8_irq_reset(struct
> > > > drm_i915_private *dev_priv)
> > > > >  	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
> > > > >  	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> > > > >
> > > > > -	if (HAS_PCH_SPLIT(dev_priv))
> > > > > +	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> > > > > +		GEN3_IRQ_RESET(uncore, SDE);
> > > > > +	else if (HAS_PCH_SPLIT(dev_priv))
> > > > >  		ibx_irq_reset(dev_priv);
> > > > > +
> > > > > +	/* Wa_14010685332:cnp/cmp,tgp,adp */
> > > > > +	if (INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_CNP ||
> > > > > +	    (INTEL_PCH_TYPE(dev_priv) >=3D PCH_TGP &&
> > > > > +	    INTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
> > > > > +		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > > > > +				 SBCLK_RUN_REFCLK_DIS,
> > > > SBCLK_RUN_REFCLK_DIS);
> > > > > +		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > > > > +				 SBCLK_RUN_REFCLK_DIS, 0);
> > > > > +	}
> > > >
> > > > Time to refactor instead of copypasta.
> > > Do you expect below? :
> > >
> > > If ((INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_TGP) {
> > > 	intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > > 				 SBCLK_RUN_REFCLK_DIS,
> > > SBCLK_RUN_REFCLK_DIS);
> > > 		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > > 				 SBCLK_RUN_REFCLK_DIS, 0);
> > > }
> >
> > I expect a new function instead of copy pasting this whole thing into
> > multiple places.
> >
> > That said even the current code doesn't make any sense to me.
> > Take for instance this part:
> >         if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> > 	                GEN3_IRQ_RESET(uncore, SDE); What is that PCH type
> > check doing there? What weird PCH type are we supposed to have that
> > doesn't need this?
> >
> > Also the Wa_14010685332 part looks a bit odd. Is it correct that icp
> > doesn't need that, but cnp and tgp both do somehow? Can we even have
> > cnp on icl+?
> =

> Hmm. Looking at it a bit more, that w/a seems to have something to do with
> suspend/resume, so seems rather misplaced in irq_reset(). Should probably
> just move the whole thing into a more appropriate place.
> =

GEN11+ needs these checks in irq_reset(). Please check irq_reset for GEN11.=
 Now that customer like dell are expecting TGP PCH with gen9bc platforms, I=
 have done similar PCH checking in irq_reset() for gen9bc. You mean these c=
hecks are at wrong place for GEN11 irq_reset() as well? Or you want one fun=
ction doing these checks and calling it everywhere!
> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
