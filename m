Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4166DF82C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 16:16:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD4A10E81E;
	Wed, 12 Apr 2023 14:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62FB810E822
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 14:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681309011; x=1712845011;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=alTh3oKpa1adMPvfCT7Ec2cq/Krha1+4frFxAAaF5vU=;
 b=CZ/XIxIqD8ZdWlPoC3y+XV98VZUJ9KjVMiHwH97/aIqIUYr5CESC2gAl
 AHyEh6CLznTzFFGDk+mBzYCWbDW7t8fm9CRZ4ksk4NFx50ocNU2wiL8we
 UHWGjFSpkfLgABxjomJa9FkxwcqjpWpw9cHymMKxuv0tAFApElVD+NVuc
 Bp62oqdiJ3xwgkrGrbFJGGvEU4ItZmIzlo4RFDrcTwWDjDu6hc4IkUbem
 RjnYIeVnsfCybEWvsKIVX6k1Y0sLCJFRFwSjBKp+hTs/oT3TbL3tBwpXg
 OwFycdgjHaDSj/5+sCXDXvyp7KzhW7leW60gUzFBTU7BvdAmkqnKYN3sA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="323533720"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="323533720"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 07:16:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="758262437"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="758262437"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 12 Apr 2023 07:16:25 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 07:16:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 07:16:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 07:16:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FikEt+oFY3nDbsVhe89OVeMHIKRIrHjERcvZNDLGJLBNtNQ17p5Qpxrth/Eky5CeMx2L9flw4Uu19Xp59vnegbwqlyK7QNnEnnEboA4TU8ysFNqtCiJEDMLatt0croajNkZVDPIvwuazEzdXuWhRf/lIIPM5QEpS2viWKHQdeLN1JT8Z2KfJk1FL0owHUKkmU3w23Jz9uOR3lVoM4omWVjuws4zbiS2DVFPvJJgip9cETVmQw3JEdnTzhqZvzdT1/+YwZBrESdAs2geyml/MNMOOVQFQgHpCMF1sMvUAuepzkZoN6FHMfzmzUNv0buzbRdB4Y/bA/FzlCgDhRvoRGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j5i+aVZh9D1HeQ88ErwiD2+Yy9VPChqeD22gC8Dmp8A=;
 b=mXQzAR4ZuCHn5nBDZEtdz0m8O2daBLkcQdDWj2q7PodrhLHkdf050kINhiwtdd+waBDVP1EuWCEwske8vZF+lOR+R/pYSW2tFXK08PRMEWEjp2Q8JrZ1IEIwiOVZXKA3C54Skp1ELsMGxJ+W/nXXIBmLCOkz3WnR01W3RlN5mVeEhG/3I4HxNELwNdSzaUY99u93hGPGUhErasFiDK7hgeTkq4GuvrTxBA6E31y2cI1aMCNQeGPskAck07H+S+0SehfaxGsS++QNTwwLCgxBT8By4N+qtbyfUcrwf9dvaCsi/ubdestHtxuxGL6TWv+1N8KeWBr0VEKnTU5GZDPUYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by SA3PR11MB7485.namprd11.prod.outlook.com (2603:10b6:806:31c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.34; Wed, 12 Apr
 2023 14:16:23 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f%7]) with mapi id 15.20.6298.030; Wed, 12 Apr 2023
 14:16:23 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
 enable/disable
Thread-Index: AQHZW/z+ggztexoTfki4jDfF7FcQKK8PEY0AgBam6oCAAbUIgIAAbDaAgAAAwtA=
Date: Wed, 12 Apr 2023 14:16:22 +0000
Message-ID: <MWHPR11MB19351E0FB8251DBBD7DDD866B29B9@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230320203352.19515-6-ville.syrjala@linux.intel.com>
 <20230321135615.27338-1-ville.syrjala@linux.intel.com>
 <MWHPR11MB19351B3CC439AB4C1A9F370EB28B9@MWHPR11MB1935.namprd11.prod.outlook.com>
 <ZDTy93UCSN4TUCV1@intel.com> <ZDZhk/tizSv0pTmZ@intel.com>
 <MWHPR11MB19358BF6559163B84B3F5FD1B29B9@MWHPR11MB1935.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB19358BF6559163B84B3F5FD1B29B9@MWHPR11MB1935.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|SA3PR11MB7485:EE_
x-ms-office365-filtering-correlation-id: 79ea459e-6c4e-4e27-cda1-08db3b607e6c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kyyphm6Nv9lhxQnj8FbXVXXSG5rjJQeoclSgeQHhmZr71MJvvVthyB5VOXFZ8S+G2CHZUMIuqMLtTnW0WhTjv8lqRoYP20tamXuWBkNrRiQ2f64Sio25NbGoWu0iAlA5t0CWDwBeCOEn35vJojeULrEG1UbW+1NTVPZifszTJxCjaIxH/FVPHwcSRLfq68amfkRXbt/RRDvVlIaON6NMKvy1PsTP3gQXJ4oaSXKZL4Y+6Tjb9Pf4PtwesnN+OEneh/zL142kcGsrkdCqEVOy/oKPhQ0MM8z9WVpjq4KGIrlu7i3raJtf8jcIiLyR4Ziaz1Gto2Ms9B1Ec9q63N8Ctzi1m24S+lO29bzpfVBsJyHh8ir2+k9lwl/oYmfxdJyR3ep7Augx4HjAoYpCH7jarcaLIp4DpzSBDuvjr3wyXkrMKQDPNvhFr6Q4hQbf1zWAjuqaDLJk5g9gMmXQHISYkipOVWjLs0RYuKOcIDfyhla0DITswkQpzjsmZZRvjH1xoA2mla8Oanpibm2Acyp+WLsiK/xqF+x3YOl1emxeplGeNVvo7L67+Cr3EWPPD0kCBOzE0MR7iuVtCjWObQstRYpf0+A3NWAdgAgpKatmCl78Cy95ZdyAkECOriuV4HzZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(376002)(39860400002)(136003)(366004)(451199021)(4326008)(66476007)(66946007)(6916009)(76116006)(33656002)(66556008)(82960400001)(38100700002)(316002)(122000001)(66446008)(66574015)(83380400001)(8676002)(8936002)(2906002)(52536014)(5660300002)(41300700001)(55016003)(64756008)(71200400001)(86362001)(9686003)(6506007)(53546011)(38070700005)(478600001)(7696005)(2940100002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?ghgbsi4MQyvmiyx4s9L+fchNAb3sAgZvj6UbK8J+qs7DV+25E5YFw8yGlq?=
 =?iso-8859-1?Q?yLPZpSyoRaHDLj8zxFHr0dk2C0WSm/Sht8eRC1sthRhQe0rS7gMxeJhNNr?=
 =?iso-8859-1?Q?9a3o3h3OT6/Qd6ZLqz/N3GKyvUyqUCGvuOw5F5kVGDkxAJw2uUJdSv1m/V?=
 =?iso-8859-1?Q?ib5nxEKsYIUsFEsBI5vDQByqK1JpCiDUTb8HnM63wMVeKiDPpe3sIWTGSr?=
 =?iso-8859-1?Q?rW9SkNPlPH8vAAd2+YE5Ygkz4noEz/1WFfsGKQsxA5+F3tZYtySbCUr7fH?=
 =?iso-8859-1?Q?kFNOIoS4Tmay1VG0M/kv4O3Mxgx6xUIf6vkkaHOY+fs6THwnkEuDhtOYPu?=
 =?iso-8859-1?Q?vAJ6bYVq8NTrELFDcnB7EmP9Bn8jdh59VRHlZYbz32349f6ixpKmllkhtU?=
 =?iso-8859-1?Q?KSMisq33HwcZIi0QDwnfmaYbok1/5HwmoCCW14Jx8moOzvy5npxn9I7sQq?=
 =?iso-8859-1?Q?uPwUG6kmzqlk7gcHt3p1zbmC9sUhKsXqmG+eDO9Pw6plObQkIn1cxA9FoN?=
 =?iso-8859-1?Q?vqXofzI94B+h/rElZ5ZZ6GaHyj10Ri4gnfpbJ/wD2neVTkNgJ5lHdlKJSu?=
 =?iso-8859-1?Q?jIymujhbulve1lNDhV31Bab+OBA1orh2CAbQp1KKsAbZA68hpJ0SalEDV0?=
 =?iso-8859-1?Q?ln0cbDV8aO7iXvL23J/not09CyF9moDsfyeHt10PCKm99AvvoeB0uaiUtT?=
 =?iso-8859-1?Q?b3xb64DFHB5mHac4vvxoDrSfIr9Kz0NFqn16/SgeBZG0w+h+N51z/+7dmA?=
 =?iso-8859-1?Q?RhPHI3B1ORz5E0pyPcrUd5cTaZxLog3pcIYqahjWHTn+mpRQN3vLSa48HJ?=
 =?iso-8859-1?Q?tJqDs6o+W/NyvkkQcHDBv+HUeXxQYfaF5Pp5VEtimOMofQ8GAllaXnACuK?=
 =?iso-8859-1?Q?SejvJZijDYUpNIzmINL0MYikRby2k0l2r7tYsOtFwM/Ofb1pPPoF/jVj8B?=
 =?iso-8859-1?Q?2XawGpEprR+oz14BhlU23m0spgzyfRZY7FUxvwao0XyePfK0KGfoGB3awS?=
 =?iso-8859-1?Q?PMLOpO553qclVMJrUtcNOQ2kbCStkZRKkyHnDaBK81q8KOdFtfguHyYcD3?=
 =?iso-8859-1?Q?enMZ1Zhtf9QRidTqQs+slYTcWQqR4fOMO0ki8jb6mRzp+dWtnuf9pWaxay?=
 =?iso-8859-1?Q?EjJGShiRlCrJDt2NoDiGAM3aWBL3+l2uuTfD8PlRJMsgxL9n1kH68Dsbvl?=
 =?iso-8859-1?Q?QvtOCUBBTrJAbSKyUsdQk+L6TxvVCs4mTL/7ckplhToqpk4pTvI+DeEHOT?=
 =?iso-8859-1?Q?zoi+L3bw0tPVG+QBbCP3FAjtNB+ZqajCHY6XC7cYCf/p7sKTEGPZ7BP+xa?=
 =?iso-8859-1?Q?x2T6Au0g8KIGv3dCGmaO5M0evVq8MeFdxkXz9Ra0XRdAuCmckKsidQ4ctc?=
 =?iso-8859-1?Q?qsGAxfxTN06z2AdrX1gkQYuXCGuiu4UwlyiA1fkCvAZC1VVUuqQoN0uB3u?=
 =?iso-8859-1?Q?dvBUPWqiXChZPsJOGsjExoJlr1Fyqm0pMpLz5cMkLXezDRgH76rD5at5qY?=
 =?iso-8859-1?Q?c9NBFRU9ayei3kHD7x0DZxh84CAlNL0CupIVtj3X/c+JGIlK3MmYQ+1mdi?=
 =?iso-8859-1?Q?8YannG/5vZcvVf+VEYQL1jgaHr5O+oBmlCMAPur0DymLTwfP9rPrNP93Ac?=
 =?iso-8859-1?Q?SGXWNMiSbttV+GZB8WFTJ7mnbLjopVGrtSVFwHUWaoDmYKDFZljwH4PkgS?=
 =?iso-8859-1?Q?Sg5O4SWNwuqtoS+bxyeMi921CcyCkABejH6qFIB5mJKGdL6K8tQDgUeRkF?=
 =?iso-8859-1?Q?K0G6Q83n8sHxKasxi05LINDhc=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79ea459e-6c4e-4e27-cda1-08db3b607e6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2023 14:16:22.6719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vpaQrglHMRXSvG31E3twBHK4d0uhotkVzs30qLDAAXe3swN/5jTk43RSzmCIdmBb1Shb4+tVSzFZYwBop0oOawBcbnGNdgRhGLDst++ScMWZ6EPmGqQOiWyn+xnGe+c5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7485
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
 enable/disable
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

HI Ville,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Golani, Mitulkumar Ajitkumar
> Sent: 12 April 2023 19:45
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
> enable/disable
>=20
> Hi Ville,
>=20
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: 12 April 2023 13:15
> > To: Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
> > enable/disable
> >
> > On Tue, Apr 11, 2023 at 08:41:11AM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Mon, Mar 27, 2023 at 08:05:49PM +0000, Golani, Mitulkumar
> > > Ajitkumar
> > wrote:
> > > > Hi Ville,
> > > >
> > > > > -----Original Message-----
> > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > Behalf Of Ville Syrjala
> > > > > Sent: 21 March 2023 19:26
> > > > > To: intel-gfx@lists.freedesktop.org
> > > > > Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
> > > > > enable/disable
> > > > >
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > >
> > > > > Move VRR enabling/disabling into a place where it also works for
> > fastsets.
> > > > >
> > > > > With this we always start the transcoder up in non-VRR mode.
> > > > > Granted  we already did that but for a very short period of time.
> > > > > But now that we might end up doing a bit more with the
> > > > > transcoder in non-VRR mode it seems prudent to also update the
> > > > > active timings as the transcoder changes its operating mode.
> > > > >
> > > > > crtc_state->vrr.enable still tracks whether VRR is actually
> > > > > enabled or not, but now we configure all the other VRR timing
> > > > > registers whenever VRR is possible (whether we actually enable
> > > > > it or not). crtc_state->vrr.flipline can now serve as our "is VRR
> possible"
> > bit of state.
> > > >
> > > > Understood the change. I was thinking if it is possible to make
> > > > distinguish between is VRR "possible" and is VRR "enabled" by
> > > > adding a new param ? Although changes looks good to me but using
> > > > Flipline
> > value as "is VRR Possible" makes it bit confusing.
> > >
> > > I suppose we could think about adding a knob for it. It would just
> > > reflect the flipline enable bit state in the current scheme.
> >
> > After further pondering I think I'm leaning towards just adding a tiny
> > intel_vrr_possible()/etc. helper instead of adding a separate knob for
> > this into the crtc state. That seems like somehting we can trivially
> > do as a followup.
>=20
> Yes. That also sounds good.
>=20
> Regards,
> Mitul
> >
> > >
> > > Another thing I was pondering is whether we should even care about
> > > this in intel_dp_prepare_link_train() or if we should just set the
> > > MSA ingore bit any time we have a VRR capable display. But I suppose
> > > that could have some implicatations eg. for interlaces displays modes=
.
>=20
> In that case to avoid implications should we add additional check for
> vrr.enable as well ?
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel

Changes LGTM.
Thanks
=20
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
