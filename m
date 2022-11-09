Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 391896236C2
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 23:44:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3496610E62D;
	Wed,  9 Nov 2022 22:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7966B10E03D
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 22:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668033862; x=1699569862;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TiIS0fK29UQILPqCx0ghGK0xjtQgNicEDasmhZdrqs4=;
 b=KwttTFuZ/TIElbi6kMkZ1PmMPCzlycuy/JgM3U7W4tVWBkGFbUiNIcHR
 wlh3Zb9po2dqClOizC4QR/dGkyHJ63Acdg9SRRzNcMhBlz9k9ucwIAcKG
 8So0Qt4TiZog43TF9wZ0bJ1oti/l4vuhaCHK1Qysmk7/lC4PTLwkt5MzL
 bvuVIJX6zV7clZLvig1+rMAfIgDFlvN2jmorPRwxr1m7v2imvJwD0utMa
 OJLIp+vUCOpx2UyW32bGZDXpGFecMXQ3MVlgHvnc5fzKL2iS4ymmJ6rcz
 urYm+wvk2INPLbDe9J7JfVoKLvxFb+4dyQvpeu+dkX+grqQC1q5wVAy7t g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="294477523"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="294477523"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 13:49:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="742576612"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="742576612"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 09 Nov 2022 13:49:47 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 13:49:46 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 9 Nov 2022 13:49:46 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 9 Nov 2022 13:49:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hSEzF3u0Rw5hjEfiJ3UhphvMpj3ZtYXoC5+gNVpKneB//vbCnbY10K6J30oRvj0C2W+RGcxwudnMRwbkrAScwUb0xZ+HkJM8/uTFJd61lz3ceOmUJ8e79NArSLhQ6FI4RUMQGnpJA2OPnU7XiPpJtFG+f2qky8Z945hAhujZ72S81ErMjKh7ouWrv7zVKkbyk0lDiS0LGUNhM8hEOQmdo7uP00NopMvEjhm/Dp8WwNLQxV+OL0P9ZCRGIv3+CSPdr+c5cAW/LWr6LpulJGpz41VoaOelWzIlyZIaOGLVMKF7nM9B9p6pYdgBzR8BP5LH2iZGYzYIcKKHm58Z6eq4fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ahhKuq1okbEAzHOAK/095wJxgSpPKzWkpUBntyjgQ0o=;
 b=k9p3C+gnI0RN8qnhvXbYZPUvOkiFagSTc1QRY0G/mMNBTqxWettDuPwFbkueiD1+HRpS7fty3KGppG1rExGYacuFozhAybywMWd86/uzN2Gfi7yXNCVBbrl2CZSPoRfQHLvUoyJfxaE9/NZGMLPfK9nBHA+hLYytx71TUBGpvTqB8nBPm0dT+VPY41vo25MVFvVayuAkK8dlY3s3RkqVUewgrXfES3oJVUPivpldBI6CvQfFvCbPS7WDU1k0S8ql9u4xGwCKCelWuyZEmvfana6KIAdhLWC8UD7s8FId8keEcIEiH+tCQQp1Hzbhfn29KJceFjlI6PcpDmZEVKEYgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by SA1PR11MB6613.namprd11.prod.outlook.com
 (2603:10b6:806:254::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Wed, 9 Nov
 2022 21:49:30 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5791.027; Wed, 9 Nov 2022
 21:49:30 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
Thread-Index: AQHY8JyG1wvbs4AElU2oS7uVkgpqca41tlCAgAACstCAAAkJAIAAudoAgACrwJA=
Date: Wed, 9 Nov 2022 21:49:30 +0000
Message-ID: <CY4PR1101MB216664300DEF9B56D305E149F83E9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221104222642.815560-1-anusha.srivatsa@intel.com>
 <Y2rpZ/8Li/186jR1@mdroper-desk1.amr.corp.intel.com>
 <CY4PR1101MB21662FF152C69CF61E943118F83F9@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Y2rzPj+6AR2PVjbi@mdroper-desk1.amr.corp.intel.com>
 <Y2uPJq+bVG9xm71J@intel.com>
In-Reply-To: <Y2uPJq+bVG9xm71J@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: ville.syrjala@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|SA1PR11MB6613:EE_
x-ms-office365-filtering-correlation-id: a4693140-bdd7-429c-e7e9-08dac29c47d1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gWfCVk9jjwrc6sXRNx3kayR9BFOa0H1yh75/yJHrq0knJxpn0uzOwYg/cLPcfDwiREcTdXESxuo004ucH3cHX5HKgFKNbfmpPuWRRvsKY2aRTVRPlT/ajO5uMo6e5WWg5otHFCxqCVsVWEtZ+FDK483W4yTwiZFo7L2jPv+JExhWzFNhviZZnmjLvy6E4KTO8UYLKWZ+rjF1/D5B/ZbJu0RvEuvggbi9opkT7fttmN/n1t7Eeq4Hiku/1CML11qbGXqhZr+6Q9USzOKRCg/XDfFyOXJFUmRrAnkHvuo9mkoLlYHcAzJ4JShYjdmz4qL2KDtYkuLMS3v2GWzjFqifkKEHjrmJBWQrJ86y0qRJA2iQ5suTO25utbp+sX3KYlS/TIwLEzN40ViHfYvlXNl/aUnMeeEVU77WsOw4J/WFSEgYBK4ZioUHZf83iFYc12ehU+2zVrWmZ/IFPwik9qM696/elYg0N/1Mg7IYK79ChQZUyjf0d+Ylh2HgqCvEL33ACvbH6ROIAeLIxTHpsZQGy+tzhqR530m0Ba60f3VHThhvTh0R/vkGXQsn5BQUSvtRg/T76xnXr9X62BQ07vUXDtK2HUgAMQcu0GNRU22kCcOBWw1uhQzxHfN3ET6e/GqMz359jHGqcQ4XOWK8Biyh8zDEM3tQ58OIGujRlf37dEVyhtuq15p8GAC3yoCa+4Frl1ZbUT2rIR/AVuhbL7uy7BkMFz/NpvpcQRpSD9gdpxHVflCFRHixh+/LyWicherpMvMyBYoS//fveT0un76eYr58qvK4gvqom7mD2XG+IpI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(346002)(376002)(136003)(451199015)(478600001)(26005)(9686003)(71200400001)(7696005)(8936002)(5660300002)(41300700001)(6506007)(52536014)(316002)(86362001)(54906003)(66946007)(110136005)(66446008)(6636002)(76116006)(122000001)(53546011)(186003)(38100700002)(82960400001)(38070700005)(83380400001)(66574015)(33656002)(4326008)(55016003)(66476007)(8676002)(66556008)(64756008)(2906002)(17423001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Tn1hnSEeCTOxTqGGYfKkZ6m98Gzt83a7JLXvLar3dzwlF620JnJTzdRfv0?=
 =?iso-8859-1?Q?aShO0jvYeTt8/ryKFqAnLDKjgrpfFgjFb3JUkmnGB27LY4evYc8TZimFNB?=
 =?iso-8859-1?Q?eM++5HrH6pUQzTCQsyfoYUFGSM4aFd27Ao2604umCN9Pjio8u0UXXNBYNW?=
 =?iso-8859-1?Q?u3ZHUWckPTOA9x4WpwexOXv9y+17iPfZP+0Jv/szo0L+TwWKSNlmyWyC6o?=
 =?iso-8859-1?Q?3MotImlWnHQRCa29QszQi2eW/LpS4ge1HcMx+Xr+HRUq0Tw8CrQVxCUjFI?=
 =?iso-8859-1?Q?8Bhqhs7fTbDaVKoJLcJSj9Kqpul//gvgAqYV6DB0P8IWCCGlz2og9WKpSv?=
 =?iso-8859-1?Q?CR64HaswaHZicMJ2hlbAcLoVLuB6QLc/knWHKiVi5i7chImy9/Tvk2cNb9?=
 =?iso-8859-1?Q?mQdF8n/jPcyzivZ9tDg99ueqtPcDIgc8SXsva1n9A+inT+wkzDPb/tPcgk?=
 =?iso-8859-1?Q?SWyJ6l7XjKFdPxb7mc5eqk4qGY8l73qVRsLbwCC5NN5+Nu6CgvPojlILPb?=
 =?iso-8859-1?Q?p6RlVD0dyh4s03Y6+LEyYn0gkiiBalQpIsuZZhNddRyFZ/42hRXsV2u0IJ?=
 =?iso-8859-1?Q?wLaOPZVJfZiPGOwF7BZppsEg+KJ2WKgYOo2YQ+Wl1al5JFVmLSMeFYbcwo?=
 =?iso-8859-1?Q?dASkLb3xRv9nmiF2qsThY1o5/7vqoNlXoKsSVq6pXhgK6237pWHCycNrLx?=
 =?iso-8859-1?Q?CXqRxto5/Ia2yoJ/mdEpfnkVI1P/9e2ju9jHHQRQpBL6bd/WFiBf+cz3BH?=
 =?iso-8859-1?Q?Lk4Sj2Tcf3MMJVyEE3glIJR02tRXB0xXaqqXEPbF4HFhh9PCnJve+vI68P?=
 =?iso-8859-1?Q?9dVwPNDQYYjGmH1VUVHfISqMiYp9vgN8yFzIlGqbEgLBqk4jbcCa2L4+Pr?=
 =?iso-8859-1?Q?3ozJD2y165318fqMvP+skWM0x6WBrcvHH+b1aJLoKBmMaLrBHM999kF/o1?=
 =?iso-8859-1?Q?yfBT/936nXOU2mo6S2AAsFHpDXC0uHlkk3sgtWQGKNM43CLMU7UEwIu4L2?=
 =?iso-8859-1?Q?tgUcK0gnPUsnW4W4diI0dMnwHQbKyFsO/ysLSowWHWT3/Nv6QFynJXeXh2?=
 =?iso-8859-1?Q?rzzyrk+q0u1pL4xFX9O9Kh4qy3cWjqcRhoMsPpBvaOKqQdpa1bFtvC/igD?=
 =?iso-8859-1?Q?SlTy0DmW/aE/2ZsD6X9cZaFN5jU9V3I3Q833gatJsYjVURdNMSYEkdbIei?=
 =?iso-8859-1?Q?9GytUvSt0Ls+qGAClFQ3Kbx8/wzaUWwSRu6s2rASg6FW4JeKjd0NDwHQtI?=
 =?iso-8859-1?Q?ewznji/+zW9p84dpFRitoVKziPNDEdiLvIOMJ+N4OM0xErG4KdabdKWm/B?=
 =?iso-8859-1?Q?HHXk7lT2OIC/kZ6gDS92CavLRYrEdAWlJ2IpBMInok/rvntWVtY+sgb0YV?=
 =?iso-8859-1?Q?Qa8/3AE5Qd4zsw1o7xrDVHLXqRTN2F8EakZdjQ+KI9WMSSsTiUehqSOafK?=
 =?iso-8859-1?Q?1lg7ck6+/iuwXvUrkhG1cgPPFNVFZ7duRk9UKhA0kbqg5jF6+8GTVludVm?=
 =?iso-8859-1?Q?bb7saf1WhAxsqcnrWdsthHUmUlj66lTqh9hE4/RhHUDwZRXNrumT5NVUYT?=
 =?iso-8859-1?Q?MD7S9a/eIIHbzHocJ4jfT4gXt4ykTF5XtjDrBGXnDjSZXiZ1gQNpRZ5Rv8?=
 =?iso-8859-1?Q?DR6cfMpFSWhMDnP48WQ8xlNUkaXuIpeLMI?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4693140-bdd7-429c-e7e9-08dac29c47d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2022 21:49:30.1659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vxVuxRj24CluOL16mEB69yl3OvSnrjT/VzZ+3wq4VCY8rGibuoRgfg2VNiQQXwEK4E2iHXEhzoZ1keIoWRuk/GCPvLwRKUBVI0A16BuDgH8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6613
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, November 9, 2022 3:30 AM
> To: Roper, Matthew D <matthew.d.roper@intel.com>
> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org; Vivekanandan, Balasubramani
> <balasubramani.vivekanandan@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
> squash when changing cdclk
>=20
> On Tue, Nov 08, 2022 at 04:24:30PM -0800, Matt Roper wrote:
> > On Tue, Nov 08, 2022 at 03:56:23PM -0800, Srivatsa, Anusha wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > > > Sent: Tuesday, November 8, 2022 3:43 PM
> > > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org; Vivekanandan, Balasubramani
> > > > <balasubramani.vivekanandan@intel.com>
> > > > Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both
> > > > crawl and squash when changing cdclk
> > > >
> > > > On Fri, Nov 04, 2022 at 03:26:41PM -0700, Anusha Srivatsa wrote:
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > >
> > > > > For MTL, changing cdclk from between certain frequencies has
> > > > > both squash and crawl. Use the current cdclk config and the
> > > > > new(desired) cdclk config to construtc a mid cdclk config.
> > > > > Set the cdclk twice:
> > > > > - Current cdclk -> mid cdclk
> > > > > - mid cdclk -> desired cdclk
> > > > >
> > > > > v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk
> > > > > change via modeset for platforms that support squash_crawl
> > > > > sequences(Ville)
> > > > >
> > > > > v3: Add checks for:
> > > > > - scenario where only slow clock is used and cdclk is actually 0
> > > > > (bringing up display).
> > > > > - PLLs are on before looking up the waveform.
> > > > > - Squash and crawl capability checks.(Ville)
> > > > >
> > > > > v4: Rebase
> > > > > - Move checks to be more consistent (Ville)
> > > > > - Add comments (Bala)
> > > > > v5:
> > > > > - Further small changes. Move checks around.
> > > > > - Make if-else better looking (Ville)
> > > > >
> > > > > v6: MTl should not follow PUnit mailbox communication as the
> > > > > rest of
> > > > > gen11+ platforms.(Anusha)
> > > > >
> > > > > Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> > > > > Cc: Balasubramani Vivekanandan
> > > > <balasubramani.vivekanandan@intel.com>
> > > > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 161
> > > > > +++++++++++++++++----
> > > > >  1 file changed, 133 insertions(+), 28 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > > index eada931cb1c8..d1e0763513be 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > > @@ -1716,37 +1716,74 @@ static void
> > > > > dg2_cdclk_squash_program(struct
> > > > drm_i915_private *i915,
> > > > >  	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);  }
> > > > >
> > > > > -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > > > -			  const struct intel_cdclk_config *cdclk_config,
> > > > > -			  enum pipe pipe)
> > > > > +static int cdclk_squash_divider(u16 waveform) {
> > > > > +	return hweight16(waveform ?: 0xffff); }
> > > > > +
> > > > > +static bool cdclk_crawl_and_squash(struct drm_i915_private
> > > > > +*i915,
> > > >
> > > > Bikeshed:  maybe name this "cdclk_compute_crawl_squash_midpoint"
> > > > to help clarify that we're just computing stuff here and not
> > > > actually programming the hardware in this function?
> > > >
> > > > That naming would also help clarify why we're returning false if
> > > > we crawl but don't squash or vice versa (i.e., there's no midpoint =
in
> those cases).
> > >
> > > Makes sense.
> > >
> > > > > +				   const struct intel_cdclk_config
> > > > *old_cdclk_config,
> > > > > +				   const struct intel_cdclk_config
> > > > *new_cdclk_config,
> > > > > +				   struct intel_cdclk_config
> *mid_cdclk_config)
> > > > {
> > > > > +	u16 old_waveform, new_waveform, mid_waveform;
> > > > > +	int size =3D 16;
> > > > > +	int div =3D 2;
> > > > > +
> > > > > +	/* Return if both Squash and Crawl are not present */
> > > > > +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> > > > > +		return false;
> > > > > +
> > > > > +	old_waveform =3D cdclk_squash_waveform(i915,
> old_cdclk_config-
> > > > >cdclk);
> > > > > +	new_waveform =3D cdclk_squash_waveform(i915,
> new_cdclk_config-
> > > > >cdclk);
> > > > > +
> > > > > +	/* Return if Squash only or Crawl only is the desired action */
> > > > > +	if (old_cdclk_config->vco <=3D 0 || new_cdclk_config->vco <=3D =
0
> > > > > +||
> > > >
> > > > Isn't vco unsigned?  "=3D=3D 0" should be fine here I think.
> > >
> > > You mean the new_cdclk_config->vco right?
> >
> > Both of them I think.  The vco field of intel_cdclk_config can't take
> > on negative values because it's defined as unsigned:
> >
> >         struct intel_cdclk_config {
> >                 unsigned int cdclk, vco, ref, bypass;
> >                 u8 voltage_level;
> >         };
>=20
> Hmm. I guess I used the vco=3D-1 in sanitize() as a way to effectively wr=
ite
> vco=3D~0, the point of which was force the PLL to be fully disabled first
> regardless of what its current state is.
>=20
> But now that I look at that we might have an issue with platforms that
> support crawling. We wrote that code as if vco is signed so it's actually=
 going
> to take the crawl path now that it looks like the PLL was prevsiously on.
> I think we need to add an explicit check to not do the crawl for the vco=
=3D~0/-1
> case...
@Ville Syrj=E4l=E4  in bxt_sanitize_cdclk() do we need the scenario:
dev_priv->cdclk.hw.vco =3D -1; ?

Anusha
>=20
> --
> Ville Syrj=E4l=E4
> Intel
