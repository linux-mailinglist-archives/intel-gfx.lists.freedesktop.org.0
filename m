Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DC76DF821
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 16:14:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CED5110E816;
	Wed, 12 Apr 2023 14:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C83310E816
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 14:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681308883; x=1712844883;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h8Y6jdQ39ovuKn68IjIFCU6q/7J4vbzrBk8PisMYPxs=;
 b=VDnH3hjNVeX3zGVCPI2ydgiUDPqG0U0wHwwmZlnA8FzfwfUtLkl+e90i
 3Lz+Zxm4puJsToYbPr6n9I1Pj8R9uwDUmt6UKxaXoeg9baBvJ0AHJgSKf
 vCdJ6ogMpuciRnS0q+yk373155Q1UT9ppzwNmD5RBxLnv6wSZ/hu9Mte4
 JqYOZOZl6+43R4P2UzYwCSG3hzRWvDRVts6C+MRmvCpfPUyKwZV9q2TN9
 XmE50sgbN5qMoCVvA3kb648Dwn0npLirVYjn1rhM662o/4gsILL2kHtLz
 SLRVfQ/piYgVNmEgYj0zOVgc+x1ZFmVf5wiY5vmR+ettpbOYx6waGlG4D g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="343913549"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="343913549"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 07:14:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="688954862"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="688954862"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 12 Apr 2023 07:14:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 07:14:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 07:14:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 07:14:36 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 07:14:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LaKJ4bD2cd1kxjebMMpb1hz7bp1YX2+F+RaumowsMAAIqgTtLnP6pGEDFiwm7+9pfF/K0KSlj1wOcfPJ/oamt0sLIRTPvMM0fFtalsQxrf+JzBwpbHayAJ/BwfX1/EbKKztLr1brxXcdFUSJra0kJKP/Z9JBTtDz10AOpqDbaYjBQm0BUl/L9HjOa3G9FUm6Ws36PglJXr7/mNli4BR9qpCs0Ucqx8PO3T/0nYFd2pqJBjJ6/tztO9w4i2q2kc0cBQ4X8eRqpKLuIdgcyzY5ziwsHEMXVVzvQHBLNT9ZTuVRviCiD9NhMwKJ6kZR5pocXdb2n331vBC2TmRcfoWTIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hi90ValOeS5QaV9cdw/KKdRmCnm99sgXRpvDE9x6okk=;
 b=TX7LTvsmj5qrq1gsuTK2beXtGkvb1CkdkXXMR3GfbxTifsrkhZVCC6Er3DWpScl0f9wSGPT+Ey3JVo13saAQqd7aj3r11R8GlubWlach76RgL6hySL/ZKPzTerQeFLj5BuXA39CoKVwAoNNalswI4K8/G3qjFz7AVTJV4usU3hW+zZJ9jkk6COVfScGPtMCwoNjU8oRG6mdIbnIJpMRGipLBALpjrDkanoQZZvHlaRvoV3Ca5UIxi3msK4qMaEc4u2C2Aht+Wgh4WbfX9IBzYGNgTXNRMfRNIsUuUHrfYFcT51V0YmVrFQP5qZPZkrU9oa3wmJ74l6+XCvv/uzGYRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by SA3PR11MB7485.namprd11.prod.outlook.com (2603:10b6:806:31c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.34; Wed, 12 Apr
 2023 14:14:33 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f%7]) with mapi id 15.20.6298.030; Wed, 12 Apr 2023
 14:14:33 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
 enable/disable
Thread-Index: AQHZW/z+ggztexoTfki4jDfF7FcQKK8PEY0AgBam6oCAAbUIgIAAbDaA
Date: Wed, 12 Apr 2023 14:14:33 +0000
Message-ID: <MWHPR11MB19358BF6559163B84B3F5FD1B29B9@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230320203352.19515-6-ville.syrjala@linux.intel.com>
 <20230321135615.27338-1-ville.syrjala@linux.intel.com>
 <MWHPR11MB19351B3CC439AB4C1A9F370EB28B9@MWHPR11MB1935.namprd11.prod.outlook.com>
 <ZDTy93UCSN4TUCV1@intel.com> <ZDZhk/tizSv0pTmZ@intel.com>
In-Reply-To: <ZDZhk/tizSv0pTmZ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|SA3PR11MB7485:EE_
x-ms-office365-filtering-correlation-id: 1cab8ccc-5de4-4bb3-121d-08db3b603d57
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iLt8imA23jNcT4nc36VhyjVd4h0n4MzKLyZxbgN7fJNsE6VJca2/mqC90SykkU3mbtvvZkMlvbW5qCytEf55msylbDh7QuKuI9Z4tIUYDS1bATwi7XMh/o1LVImiM8ghNOaRolP1v6tD0FoeaMTGc9DdpdvMV5kIKqbY+tk1ofTHm5BT8qebUejhzKwbKH5sGUNBiHqD0qf+Dme9A4VBl9W4BhVTVj3Our+y9BwMMUBtB3VvfV1xMSWXigHOMst5uU70E+4FzUWCOdOBi0rQPEx2yOqfF/Zg0y7vBKY6I3r6Zn+02oLXd0WTjRwoJ6Vf/oWGQor0BPt0KJB6ypUbaHEL/sQ0Nb8IsB+lf/HNV8Hce4p28OKZaKj2t7/ot4VL83z8s//QqxeyixDz1YFg+gnBuAjG5dduti8n/mQvJdQU9+ShSAWSY4dcCG7xfhbkCRwMLJoBL97EHn0SrjwdQ1nYcqbAx/0xs+b4+Jh2tvl0t+6IOsH42kgByTh0cd4QhREcR8ikJr5Wp3ZeNRgsCOYnl7vMW9YRFIAGj3TUOrgzpTceviXHGB2m78pIen7usfCFcu0LXHpi9wz7ZeAQHb/P7qcaKYAsNjEvau3SWZmHdB6ZSkdVep10+L+JDvGG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(376002)(39860400002)(136003)(366004)(451199021)(4326008)(66476007)(66946007)(6916009)(76116006)(33656002)(66556008)(82960400001)(38100700002)(316002)(122000001)(66446008)(66574015)(83380400001)(8676002)(8936002)(2906002)(52536014)(5660300002)(41300700001)(55016003)(64756008)(71200400001)(86362001)(9686003)(6506007)(53546011)(38070700005)(478600001)(7696005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?SlZZRniASfnUrBILEIGvWS4nulu8GDX27XBpuYWRJTV62Ph0nnLb+/KuB+?=
 =?iso-8859-1?Q?W7CgdVsCHrOupnN2NnLeSWvG4goUW2Peye5F635mBt4Rh0wYdw/IrFpEYh?=
 =?iso-8859-1?Q?7wKA6hJyv7KjvFqMfXnG+PqIUVbjcBrq/0q3h2KAjF1GokPeSzbU+J84m8?=
 =?iso-8859-1?Q?zc/hi9qAS65VpL5LtONdtLI37pegGVZXtlo+BPs2D+AiXW6ZXe41iWSTqW?=
 =?iso-8859-1?Q?XiCC4h71KINA52Q4lZxByeMfhkKGTaFYCatyxrwEe/y+npDmIKpbzo2iIO?=
 =?iso-8859-1?Q?6zqxrBnyYHlvZpmq2qYm2/JTsERi/cIHUxeCNoHodp4UOFKgT+lH9oi6lQ?=
 =?iso-8859-1?Q?nYB4TYEUJdukm/N6UP5rAykCATwH7+u6cUvSRMvvrAwS3yvOFzaUrT1nq0?=
 =?iso-8859-1?Q?4jHL/sOE1wCTyleZG9NOcRAf76cfyGHRU2A8Oa4UwMS5drdDoXGM+1QByQ?=
 =?iso-8859-1?Q?jy18+DR6DBUjUfVw0UcmyNToDt6Oh3928aT8Z6Ii6IkdMZStr8V9RlzFgK?=
 =?iso-8859-1?Q?t52GkExmvduBFGPTMLPzCy8aZFnUiWamRshWgF+S89MOBaMkGX40db0QvW?=
 =?iso-8859-1?Q?/vHtzEOT6AtMIIJxKGQy+KzKO4Wn0oqvfK08amyrUaza74gsUynosRfv1f?=
 =?iso-8859-1?Q?yLpyKEfUjkB7xrIyNkQCJHbrC2/2eu0mj3XIlwpswuq0sKdGT2W3qh0ct0?=
 =?iso-8859-1?Q?reFKlZVTO10v5kVG8I577VWuZP4mVz3+wCiiiSMxKPg2X81tkwUd901FWf?=
 =?iso-8859-1?Q?fe79ZcqoYZf1Yav0X5BBi3Dd0cw9hpSAS1RPhxH3h4bssAJDaLt1DxEGZY?=
 =?iso-8859-1?Q?/xZzyxL5kasDbN4n3aQMwRvNeoJdc9LsnIYi38gQG8cbk3oL3ds5IngHGg?=
 =?iso-8859-1?Q?KKTMsYAnESO4rs8T74xfYGivGczfiJF27yiiOGkYDGt04RBo71JZOs/jAf?=
 =?iso-8859-1?Q?UAhuZWIno0YAACwOSUXwzKFnYyUC131HNxdMznHmtklukp3Jl6hTdgobRH?=
 =?iso-8859-1?Q?0PgKg1g/ANnKMZLadU+m1e63h4ICa/rk/os3pUl+kxawQwJaXUluaZGPj8?=
 =?iso-8859-1?Q?AhnQMx+oHziq+k+IjiN6Vh6lvVPSWTyaTYO6EaowIwmXs0J0aLcF7No9W6?=
 =?iso-8859-1?Q?pKo8bTVPQLP7txacZw4kh1aNyEBDlXS2zGNqfihLBBwgw+iF6IYzk3RJhd?=
 =?iso-8859-1?Q?b3fMi4UOpSqh6YmclFCB0rSl4n/e28y/j0B7YB+S6GxfJqq7FUwYl1offQ?=
 =?iso-8859-1?Q?VHtd+qP4oqSRdXNvPn4dqQc1lsEGb7nmig2p9F4mjX6PIoTVKYOvzOwPnk?=
 =?iso-8859-1?Q?8l2LpKimxR9COuzkT9kr3BmuZISjqbvxNnPoS15KHnaWJitw+nNB5Q2l0k?=
 =?iso-8859-1?Q?jdbrKEMr8JKpoVgdmfQt45NExsODZGO+Pv+LVN7cANNx5r5aAyM/QTzsiy?=
 =?iso-8859-1?Q?W+h3dxin5Fa23o/93MzFOn07d23ARI8dLhKCPJzvFa7/tVinoUk3ZPKU9J?=
 =?iso-8859-1?Q?LL+S5JI1O6rCCycfM4p7bHSlRpak4ADEixfwZImX2e0CKw6X4hcwG/9Rok?=
 =?iso-8859-1?Q?ovydO3/OsFglhMRaAUdaemDNONxXTrQl3Yh6NJDM28FbZ4kvTJ443Ro1lV?=
 =?iso-8859-1?Q?THQc4ghaaBvMLrOD5038G1BhO4UtyGNLpH3TfJpdt2gViMEo1lvJ7YUnCP?=
 =?iso-8859-1?Q?n16/ZyOUZ3PagPmvlzgrOQwrxdk3J6hbbgAh+ttpgkyVtVANy4wMvLW51I?=
 =?iso-8859-1?Q?G8+RZP57guRqIAai2vrUiAdZ0=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cab8ccc-5de4-4bb3-121d-08db3b603d57
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2023 14:14:33.4896 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /x+W3HQPoJJmUshl43X6yrLDdH2s5EyISfnXHWll1jHuMEu1hCQA/03tmiXsflWis4M2bPRZE3HbfbLzLouRGNelMWI/cEeaJX3tkF9C0i2LNGAkZj4kYRM99gLUW49c
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

Hi Ville,

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: 12 April 2023 13:15
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
> enable/disable
>=20
> On Tue, Apr 11, 2023 at 08:41:11AM +0300, Ville Syrj=E4l=E4 wrote:
> > On Mon, Mar 27, 2023 at 08:05:49PM +0000, Golani, Mitulkumar Ajitkumar
> wrote:
> > > Hi Ville,
> > >
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > Behalf Of Ville Syrjala
> > > > Sent: 21 March 2023 19:26
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
> > > > enable/disable
> > > >
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > >
> > > > Move VRR enabling/disabling into a place where it also works for
> fastsets.
> > > >
> > > > With this we always start the transcoder up in non-VRR mode.
> > > > Granted  we already did that but for a very short period of time.
> > > > But now that we might end up doing a bit more with the transcoder
> > > > in non-VRR mode it seems prudent to also update the active timings
> > > > as the transcoder changes its operating mode.
> > > >
> > > > crtc_state->vrr.enable still tracks whether VRR is actually
> > > > enabled or not, but now we configure all the other VRR timing
> > > > registers whenever VRR is possible (whether we actually enable it
> > > > or not). crtc_state->vrr.flipline can now serve as our "is VRR poss=
ible"
> bit of state.
> > >
> > > Understood the change. I was thinking if it is possible to make
> > > distinguish between is VRR "possible" and is VRR "enabled" by adding
> > > a new param ? Although changes looks good to me but using Flipline
> value as "is VRR Possible" makes it bit confusing.
> >
> > I suppose we could think about adding a knob for it. It would just
> > reflect the flipline enable bit state in the current scheme.
>=20
> After further pondering I think I'm leaning towards just adding a tiny
> intel_vrr_possible()/etc. helper instead of adding a separate knob for th=
is
> into the crtc state. That seems like somehting we can trivially do as a
> followup.

Yes. That also sounds good.

Regards,
Mitul
>=20
> >
> > Another thing I was pondering is whether we should even care about
> > this in intel_dp_prepare_link_train() or if we should just set the MSA
> > ingore bit any time we have a VRR capable display. But I suppose that
> > could have some implicatations eg. for interlaces displays modes.

In that case to avoid implications should we add additional check for vrr.e=
nable as well ?
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel
