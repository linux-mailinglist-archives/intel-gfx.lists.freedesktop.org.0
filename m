Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4995B6BC87F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 09:12:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E04610EC5E;
	Thu, 16 Mar 2023 08:12:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D8110EC5E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 08:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678954370; x=1710490370;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XhJa3epMpey/jTT+hzIL3m34xRDP7QL1t9MOTCtzvLc=;
 b=HHnT+IMA7WGinFNY8pUv57ntjbDJRDeYOgSjS1OhSpXlIR7AWrtBaWdp
 6+CBm7cn7e3eqmNJ6E6hZn7HN5y1eevwCaiRM8c8eT0pmVhBJrmOaTbso
 hwHwyPFgPba2A/27sitUrXzBx1wMVYwVcm2x+6iiE74XenkpaAcwk+63D
 yB0sd8037dMkVPSqkjisgdfYUjXba955uqz/h5TuQTcU4P3KC1bFz3mVE
 tifelX15lJ3PEQqiFwS7Bf+QTalih9bRohNVaY1jpcbuBNcMXjFPFzYSK
 ytX5fe0f77JlwZyi1NfnNFgm3Brn808QKy9Zd57j7KHoSQEKb6dhKBCdw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="326275727"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="326275727"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 01:12:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="629780373"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="629780373"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 16 Mar 2023 01:12:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 01:12:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 01:12:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 01:12:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 01:12:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UhX7/T+52DMO/J++9J1a5l+FeawLa5+NWWrFlELDzqaIWFYEeH3brPCEgkjQky5dwrt4nKLDSpHz/1slQ/3A9Q4gOPHJh5lGkKzDu2ByLZeh877B16l9kLjVJv7+OeaGYJrOrTDstSPxe6yMvwQ3jysEOlgIsg0is6Npy8com338cWVVrDUqkujpHYbglTBL3LpVheHhK2vKrd6HYfGT0pJrRnUbSGNo87O7l855mtPgCN+SS6TFiUn+VOwFefYJmsvWB2TsHaUp4PueaKQJKLl+O7q/a61p7qj6J/wnR0EbFAxgrTbjgnG0So0Z5NwIoSanSo6VlDZS00aX815N9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A3GfMBdz/svM/nZ8vqfuRGXkSxre5o3miuVp4mnwbi4=;
 b=f/wrmcfQti3dcZ4Qi2ZlKtjsQ46Qk8PM0pLRDZNYdFEzow3Shdsuim6JALRlBDtu5L5/T79T8aimUO51L/M4ABdzXI2gDTBa6Be8S5LCFmjXxXtu78V+giMoovFHrQkKQ+AY/vhd84bMmXx16JTJcbWQdzU0l/68SOr6jvFLhktqJQzbfgrhg4RPAM/fdTruzGF98Dp93hfgWW6fX9zU3F3oTFbpNaHlazpPEy5gcHakYlglJOG2Wn/VC56Qt6SVoNZB178AZ6dybc2QjiOv5IiAZ8hxvxwytYW7bOsljWPsJkFqq/6PhKDha916e8fA0FP6tlLu2HIhsZImuO49Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB6712.namprd11.prod.outlook.com (2603:10b6:806:25c::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.31; Thu, 16 Mar 2023 08:12:43 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e%5]) with mapi id 15.20.6178.031; Thu, 16 Mar 2023
 08:12:43 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v10 6/6] drm/i915/mtl: Add HDCP GSC interface
Thread-Index: AQHZNhznIANgWMQh60mJTmXUSrr3TK7t46swgAEv+5CAAzhCAIALA9Uw
Date: Thu, 16 Mar 2023 08:12:43 +0000
Message-ID: <DM4PR11MB63603974AFF76DC878C89BDDF4BC9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230201090806.3008619-1-suraj.kandpal@intel.com>
 <20230201090806.3008619-7-suraj.kandpal@intel.com>
 <DM4PR11MB6360A722321881F0BF949136F4B69@DM4PR11MB6360.namprd11.prod.outlook.com>
 <DM4PR11MB6360C3D7C4255BA69F205DDFF4B79@DM4PR11MB6360.namprd11.prod.outlook.com>
 <DM5PR11MB1739990B05EDF244E8958F9BE3B59@DM5PR11MB1739.namprd11.prod.outlook.com>
In-Reply-To: <DM5PR11MB1739990B05EDF244E8958F9BE3B59@DM5PR11MB1739.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB6712:EE_
x-ms-office365-filtering-correlation-id: f40b44d3-0554-43c5-200e-08db25f637d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jiJJ9YnSAiXhqo5xB8yuiWR1/JpHQX/ryu2L3mNWNpIYpS7AgMLkogMyPws30ZIVwQfuaRF52ZEUi80z9f28TnJFqhIztj9WphrFhpmNaf2tykqeuHcVClRdGeAgl9i662zd8ostLAQ949oAQXQ1ltoJqA7y1rrrupCxf1Emm9q0d9kysDpegLhgzCYUPRoJzI+UDhnwUDVT4Rp9ZOU6NjXSBZGg95beCSwtZ8mMa6XtrWg9qgWgwbKITaC8B9i1kGS1/5DjSNuafEkjFgI234n46PXuH4XpfJUQ63DRFHLkmijUxBrDWYksyc5AKq3HgEtrvzPP+BCEG2ehYJ4re0+T1Qns6aHgNa8Qt9PYQMgZ5VH8eOwZddm7+OTf8Qc2KOHMY/ll21dNoB8Gq4IdHo3pNRp/hSlFDCEdLAojvyRXunR+W7bbMSvuNRhUWZiF9ZT4Vx2BG9Jc2PkHuIscESXmD+PCO+pqL5yEV3aS6xPA0SOculqApT66arKLeW5JyZRjDybnN6WUMhvTgELf6opzakeKZE6w/+Rrsu5nsLvgrB7uvUDKyuaU6b3oek0qrLFnomRyvLn/GklqB5uo4Oo/ECLp2+nuMwIuxff4dtneYEbH7IybLSaShladNTVNz4Lo29ZtDPVDik6zE4BSggNoU9mLXxe9gdjPh0AKeyfCGl9Snuu1+XN4fd+rIaMD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(396003)(366004)(136003)(39860400002)(451199018)(966005)(7696005)(4326008)(71200400001)(478600001)(107886003)(41300700001)(52536014)(8936002)(2906002)(66556008)(5660300002)(30864003)(316002)(76116006)(54906003)(64756008)(110136005)(8676002)(66946007)(66446008)(66476007)(122000001)(82960400001)(86362001)(33656002)(55016003)(38070700005)(186003)(26005)(38100700002)(6506007)(9686003)(83380400001)(53546011)(559001)(579004)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EX4HhNl1m4x+4t5X8+nX1rdDDRDBSJLrt3UEDC/mvBN6+hoHVZyT8mN7Q5al?=
 =?us-ascii?Q?Rke/vfX8TKB8J0zUGrFHj3CVSLWvtnzpfJBThwsSCmPMtgcyp0iugLUJ6EEj?=
 =?us-ascii?Q?aD5y9hyxPy1uBoh05fpCi+tdZ1c/OEhLn2zSzl6U50A5da5xGTF1I42wH8XG?=
 =?us-ascii?Q?3vfX0sKapr3zDRlBIwHcXPKbDZw57SL2aLs3NFxGOa7pO1r9rb9jbFUirVnB?=
 =?us-ascii?Q?rwc5RKs2+QgIekm5GT0mgOmvtUZojKtU19AbVUWkboyv6+OuXYKuUiQDHtcP?=
 =?us-ascii?Q?HpylKbyd50cIjIFoY2hpPH3SUa3x8cbyGAENDdQX58zwqJLliH4yeKaymzIp?=
 =?us-ascii?Q?pTlUVxZu7MCXEf+Kmjqfa02jne7df3kCrw8cOPJ5bJLnGZc7GPaF39UaVIC+?=
 =?us-ascii?Q?YH/aPjFbShOOxXDZkbExywKO47WotEP2Aqx3p7O4sUGoSh3uaR+REqxkMvV8?=
 =?us-ascii?Q?D/CS2TQDCYyisesbGJaLUWWTU6+USLf7q1wfv097LrsXwu/GemPYgbp497ry?=
 =?us-ascii?Q?El3e+NrfMIXf2eJ9THz/mPdWoYjtr2DDjLKi9FJ7jLwphTB1AYNHiYIg5CZ+?=
 =?us-ascii?Q?4Mobzl5KUeJtPq8M4qhwLEwmEPcS5zyCeWgvjJ/wdf6hu6/TGMpHzG1r+9Xl?=
 =?us-ascii?Q?XFsmk4a0IZIdEspqYFh2ZFv2K61fwc2kEDrePBK7izpoGF/X0rQay6+RzWy5?=
 =?us-ascii?Q?O5ftu9Jq38Tps+HlZnU7ihe/m79WauAggwLk8CjcH5f7Fv94hNJujRadgrGg?=
 =?us-ascii?Q?m/SppIJwT3GubsvtLqb2luUn0bzuQM8ZVqdvGcu/OOONBRrH38oRtQNFISfZ?=
 =?us-ascii?Q?30YHknY3o8C/6i/TjWD1xnFGJ7TbdU99bi08fdogqqL9DowNPitC6q3+x/ac?=
 =?us-ascii?Q?sUyK8AIBfEydhl5uQEpECbTgwjMnnhoG1BO03fvU3b8xcBSy+PzAqrz6tEs9?=
 =?us-ascii?Q?hK5YLh/nOhG/d91tUEeN2Tvf4YLd+Yi0P8fZZFTiDS9J6ObyA64ulecQaKIQ?=
 =?us-ascii?Q?EiQ8a2DA7pcCqmy5PHbQx0NCQsCvL6ClVKeppg47Q/HQ7OqguQ6caERD6IuH?=
 =?us-ascii?Q?29vg05U1bKKDuLRALj0GMila92IwGrMq8kRaK6wcIM3xG8HSGzbBwG1Px9NK?=
 =?us-ascii?Q?XLUYn8TRawRxVYi9RMvVE3Q5jW24hn24Mpw9NY7/oTQO1jYWaofEYPrPEt7V?=
 =?us-ascii?Q?6bHOePYcpnOxdeH8GpAQQfsSIpzeA0CWAooI+IiDQVOSpnuYNjHlqLRNZbfk?=
 =?us-ascii?Q?5VrsBH5UdslBmH7JYnulsTLNH2wEgl/PoPF2+yYVT5cE8jb8EWpifcdOiFRW?=
 =?us-ascii?Q?B4sC0phn6OvKBRQBgR9M+iwxaL2Q5rNgH1CvIUfx440pfJKZRsHUsM4RG0Qp?=
 =?us-ascii?Q?qHXkv+unOOLUZF4cj1FvdyEWUIJ0Ah1gNrJ8CxDU/3Pj2im9pPq3lYFsNYc7?=
 =?us-ascii?Q?jzBXb+dmusrR1kSRFJeJ07uFCzqdPHYEdFq6PY8It3aJfv5zwZZ/gms1k6YC?=
 =?us-ascii?Q?YVkiqZj8bfTKo5Our9ot4TNkl5uqekNKaB2I3qveAbr8ISjliX+TcJ/RxvDN?=
 =?us-ascii?Q?TbE6jvrooKEehHHwDVCuGmZm33e4//a9N7PWc/nk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f40b44d3-0554-43c5-200e-08db25f637d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 08:12:43.1862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eLtEJ11JTjNkOpmdZeqjs49S+dcB0EG62nnbPlKmuItvEkFC31ZZIH5Rrjnmpo4xp6jz7jL5ja5okOLdxaklhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6712
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 6/6] drm/i915/mtl: Add HDCP GSC interface
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, March 9, 2023 1:22 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Winkler, Tomas
> <tomas.winkler@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Gupta,
> Anshuman <anshuman.gupta@intel.com>
> Subject: RE: [PATCH v10 6/6] drm/i915/mtl: Add HDCP GSC interface
>=20
>=20
>=20
> > -----Original Message-----
> > From: Shankar, Uma <uma.shankar@intel.com>
> > Sent: Tuesday, March 7, 2023 12:15 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Winkler, Tomas
> > <tomas.winkler@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>;
> > Gupta, Anshuman <anshuman.gupta@intel.com>
> > Subject: RE: [PATCH v10 6/6] drm/i915/mtl: Add HDCP GSC interface
> >
> >
> >
> > > -----Original Message-----
> > > From: Shankar, Uma
> > > Sent: Monday, March 6, 2023 6:05 PM
> > > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> > > intel-gfx@lists.freedesktop.org
> > > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Winkler, Tomas
> > > <tomas.winkler@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>;
> > > Gupta, Anshuman <Anshuman.Gupta@intel.com>
> > > Subject: RE: [PATCH v10 6/6] drm/i915/mtl: Add HDCP GSC interface
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > > Sent: Wednesday, February 1, 2023 2:38 PM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> > > > <suraj.kandpal@intel.com>; Winkler, Tomas
> > <tomas.winkler@intel.com>;
> > > > Vivi, Rodrigo <rodrigo.vivi@intel.com>; Shankar, Uma
> > > > <uma.shankar@intel.com>; Gupta, Anshuman
> > <anshuman.gupta@intel.com>
> > > > Subject: [PATCH v10 6/6] drm/i915/mtl: Add HDCP GSC interface
> > > >
> > > > MTL uses GSC command streamer i.e gsc cs to send HDCP/PXP
> > commands
> > > > to GSC f/w. It requires to keep hdcp display driver agnostic to
> > > > content protection f/w (ME/GSC fw) in the form of i915_hdcp_fw_ops
> > generic ops.
> > > >
> > > > Adding HDCP GSC CS interface by leveraging the i915_hdcp_fw_ops
> > > > generic ops instead of I915_HDCP_COMPONENT as integral part of i915=
.
> > > >
> > > > Adding checks to see if GSC is loaded and proxy is setup
> > > >
> > > > --v6
> > > > -dont change the license date in same patch series [Jani] -fix the
> > > > license year {Jani]
> > > >
> > > > --v8
> > > > -remove stale comment [Ankit]
> > > > -get headers in alphabetical order [Ankit] -fix hdcp2_supported
> > > > check [Ankit]
> > > >
> > > > --v9
> > > > -remove return statement from hdcp_gsc_fini [Ankit]
> > >
> > > Looks Good to me.
> > > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> > >
> > > > Cc: Tomas Winkler <tomas.winkler@intel.com>
> > > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > Cc: Uma Shankar <uma.shankar@intel.com>
> > > > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_hdcp.c     |  28 +-
> > > >  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 637
> > +++++++++++++++++-
> > > >  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   3 +
> > > >  3 files changed, 660 insertions(+), 8 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > index 0d6aed1eb171..61bb2bbd0349 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > @@ -23,6 +23,7 @@
> > > >  #include "intel_display_power_well.h"
> > > >  #include "intel_display_types.h"
> > > >  #include "intel_hdcp.h"
> > > > +#include "intel_hdcp_gsc.h"
> > > >  #include "intel_hdcp_regs.h"
> > > >  #include "intel_pcode.h"
> > > >
> > > > @@ -203,13 +204,20 @@ bool intel_hdcp2_capable(struct
> > > > intel_connector
> > > > *connector)
> > > >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> > > >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev=
);
> > > >  	struct intel_hdcp *hdcp =3D &connector->hdcp;
> > > > +	struct intel_gt *gt =3D dev_priv->media_gt;
> > > > +	struct intel_gsc_uc *gsc =3D &gt->uc.gsc;
> > > >  	bool capable =3D false;
> > > >
> > > >  	/* I915 support for HDCP2.2 */
> > > >  	if (!hdcp->hdcp2_supported)
> > > >  		return false;
> > > >
> > > > -	/* MEI interface is solid */
> > > > +	/* If MTL+ make sure gsc is loaded and proxy is setup */
> > > > +	if (intel_hdcp_gsc_cs_required(dev_priv))
> > > > +		if (!intel_uc_fw_is_running(&gsc->fw))
> > > > +			return false;
> > > > +
> > > > +	/* MEI/GSC interface is solid depending on which is used */
> > > >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > > >  	if (!dev_priv->display.hdcp.comp_added ||
> > > > !dev_priv->display.hdcp.master) {
> > > >  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> > > > @@ -2235,6 +2243,9 @@ static int initialize_hdcp_port_data(struct
> > > > intel_connector *connector,
> > > >
> > > >  static bool is_hdcp2_supported(struct drm_i915_private *dev_priv)
> > > > {
> > > > +	if (intel_hdcp_gsc_cs_required(dev_priv))
> > > > +		return true;
> > > > +
> > > >  	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
> > > >  		return false;
> > > >
> > > > @@ -2256,10 +2267,14 @@ void intel_hdcp_component_init(struct
> > > > drm_i915_private *dev_priv)
> > > >
> > > >  	dev_priv->display.hdcp.comp_added =3D true;
> > > >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> > > > -	ret =3D component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
> > > > -				  I915_COMPONENT_HDCP);
> > > > +	if (intel_hdcp_gsc_cs_required(dev_priv))
> > > > +		ret =3D intel_hdcp_gsc_init(dev_priv);
> > > > +	else
> > > > +		ret =3D component_add_typed(dev_priv->drm.dev,
> > &i915_hdcp_ops,
> > > > +					  I915_COMPONENT_HDCP);
> > > > +
> > > >  	if (ret < 0) {
> > > > -		drm_dbg_kms(&dev_priv->drm, "Failed at component
> > add(%d)\n",
> > > > +		drm_dbg_kms(&dev_priv->drm, "Failed at fw component
> > > > add(%d)\n",
> > > >  			    ret);
> > > >  		mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> > > >  		dev_priv->display.hdcp.comp_added =3D false; @@ -2486,7
> > +2501,10
> > > @@
> > > > void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
> > > >  	dev_priv->display.hdcp.comp_added =3D false;
> > > >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> > > >
> > > > -	component_del(dev_priv->drm.dev, &i915_hdcp_ops);
> > > > +	if (intel_hdcp_gsc_cs_required(dev_priv))
> > > > +		intel_hdcp_gsc_fini(dev_priv);
> > > > +	else
> > > > +		component_del(dev_priv->drm.dev, &i915_hdcp_ops);
> > > >  }
> > > >
> > > >  void intel_hdcp_cleanup(struct intel_connector *connector) diff
> > > > --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > > > b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > > > index 8e3b5e6733d7..7eb1eeeb5a51 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > > > @@ -3,12 +3,617 @@
> > > >   * Copyright 2023, Intel Corporation.
> > > >   */
> > > >
> > > > +#include <drm/i915_hdcp_interface.h>
> > > > +
> > > >  #include "display/intel_hdcp_gsc.h"
> > > >  #include "gem/i915_gem_region.h"
> > > >  #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
> > > >  #include "i915_drv.h"
> > > >  #include "i915_utils.h"
> > > >
> > > > +bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915) {
> > > > +	return DISPLAY_VER(i915) >=3D 14;
> > > > +}
> > > > +
> > > > +static int
> > > > +gsc_hdcp_initiate_session(struct device *dev, struct
> > > > +hdcp_port_data
> > *data,
> > > > +			  struct hdcp2_ake_init *ake_data) {
> >
> >
> > One more input, can we make the data packet creation in a common file
> > since it is defined by protocol and should be same both for mei or gsc.
> >
> > mei and GSC specific stuff like headers and actual command to send can
> > be separated by respective interface but protocol part can be kept comm=
on.
> >
> > Regards,
> > Uma Shankar
>=20
> We actually discussed this over in a previous version to which Jani sugge=
sted to go
> with a Separate module which felt like a lot of rework considering they w=
ill only be
> used at two places.
> https://patchwork.freedesktop.org/patch/516449/?series=3D111876&rev=3D5

It may be used now even by Xe driver as well. Can you create an internal JI=
RA to plan
the module and cleaning these definitions. For now, we can go with this unl=
ess some
strong objection by anyone.

Regards,
Uma Shankar
=20
> Regards,
> Suraj Kandpal
>=20
> >
> > > > +	struct wired_cmd_initiate_hdcp2_session_in session_init_in =3D { =
{
> > > > +0 }
> > };
> > > > +	struct wired_cmd_initiate_hdcp2_session_out
> > > > +						session_init_out =3D { { 0 } };
> > > > +	struct drm_i915_private *i915;
> > > > +	ssize_t byte;
> > > > +
> > > > +	if (!dev || !data || !ake_data)
> > > > +		return -EINVAL;
> > > > +
> > > > +	i915 =3D kdev_to_i915(dev);
> > > > +	if (!i915) {
> > > > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > > > +		return -ENODEV;
> > > > +	}
> > > > +
> > > > +	session_init_in.header.api_version =3D HDCP_API_VERSION;
> > > > +	session_init_in.header.command_id =3D
> > WIRED_INITIATE_HDCP2_SESSION;
> > > > +	session_init_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	session_init_in.header.buffer_len =3D
> > > > +
> > > > 	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
> > > > +
> > > > +	session_init_in.port.integrated_port_type =3D data->port_type;
> > > > +	session_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	session_init_in.port.attached_transcoder =3D (u8)data-
> > >hdcp_transcoder;
> > > > +	session_init_in.protocol =3D data->protocol;
> > > > +
> > > > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&session_init_in,
> > > > +				       sizeof(session_init_in),
> > > > +				       (u8 *)&session_init_out,
> > > > +				       sizeof(session_init_out));
> > > > +	if (byte < 0) {
> > > > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> > failed.
> > > > %zd\n", byte);
> > > > +		return byte;
> > > > +	}
> > > > +
> > > > +	if (session_init_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > > > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status:
> > > > 0x%X\n",
> > > > +			    WIRED_INITIATE_HDCP2_SESSION,
> > > > +			    session_init_out.header.status);
> > > > +		return -EIO;
> > > > +	}
> > > > +
> > > > +	ake_data->msg_id =3D HDCP_2_2_AKE_INIT;
> > > > +	ake_data->tx_caps =3D session_init_out.tx_caps;
> > > > +	memcpy(ake_data->r_tx, session_init_out.r_tx,
> > HDCP_2_2_RTX_LEN);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int
> > > > +gsc_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
> > > > +					 struct hdcp_port_data *data,
> > > > +					 struct hdcp2_ake_send_cert
> > *rx_cert,
> > > > +					 bool *km_stored,
> > > > +					 struct hdcp2_ake_no_stored_km
> > > > +								*ek_pub_km,
> > > > +					 size_t *msg_sz)
> > > > +{
> > > > +	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in =3D { {=
 0 } };
> > > > +	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out =3D {
> > > > +{ 0
> > } };
> > > > +	struct drm_i915_private *i915;
> > > > +	ssize_t byte;
> > > > +
> > > > +	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km ||
> > !msg_sz)
> > > > +		return -EINVAL;
> > > > +
> > > > +	i915 =3D kdev_to_i915(dev);
> > > > +	if (!i915) {
> > > > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > > > +		return -ENODEV;
> > > > +	}
> > > > +
> > > > +	verify_rxcert_in.header.api_version =3D HDCP_API_VERSION;
> > > > +	verify_rxcert_in.header.command_id =3D
> > WIRED_VERIFY_RECEIVER_CERT;
> > > > +	verify_rxcert_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	verify_rxcert_in.header.buffer_len =3D
> > > > +
> > > > 	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
> > > > +
> > > > +	verify_rxcert_in.port.integrated_port_type =3D data->port_type;
> > > > +	verify_rxcert_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	verify_rxcert_in.port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder;
> > > > +
> > > > +	verify_rxcert_in.cert_rx =3D rx_cert->cert_rx;
> > > > +	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx,
> > HDCP_2_2_RRX_LEN);
> > > > +	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps,
> > > > +HDCP_2_2_RXCAPS_LEN);
> > > > +
> > > > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_rxcert_in,
> > > > +				       sizeof(verify_rxcert_in),
> > > > +				       (u8 *)&verify_rxcert_out,
> > > > +				       sizeof(verify_rxcert_out));
> > > > +	if (byte < 0) {
> > > > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> > failed:
> > > > %zd\n", byte);
> > > > +		return byte;
> > > > +	}
> > > > +
> > > > +	if (verify_rxcert_out.header.status !=3D FW_HDCP_STATUS_SUCCESS)
> > {
> > > > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status:
> > > > 0x%X\n",
> > > > +			    WIRED_VERIFY_RECEIVER_CERT,
> > > > +			    verify_rxcert_out.header.status);
> > > > +		return -EIO;
> > > > +	}
> > > > +
> > > > +	*km_stored =3D !!verify_rxcert_out.km_stored;
> > > > +	if (verify_rxcert_out.km_stored) {
> > > > +		ek_pub_km->msg_id =3D HDCP_2_2_AKE_STORED_KM;
> > > > +		*msg_sz =3D sizeof(struct hdcp2_ake_stored_km);
> > > > +	} else {
> > > > +		ek_pub_km->msg_id =3D HDCP_2_2_AKE_NO_STORED_KM;
> > > > +		*msg_sz =3D sizeof(struct hdcp2_ake_no_stored_km);
> > > > +	}
> > > > +
> > > > +	memcpy(ek_pub_km->e_kpub_km, &verify_rxcert_out.ekm_buff,
> > > > +	       sizeof(verify_rxcert_out.ekm_buff));
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int
> > > > +gsc_hdcp_verify_hprime(struct device *dev, struct hdcp_port_data
> > *data,
> > > > +		       struct hdcp2_ake_send_hprime *rx_hprime) {
> > > > +	struct wired_cmd_ake_send_hprime_in send_hprime_in =3D { { 0 } };
> > > > +	struct wired_cmd_ake_send_hprime_out send_hprime_out =3D { { 0 }
> > };
> > > > +	struct drm_i915_private *i915;
> > > > +	ssize_t byte;
> > > > +
> > > > +	if (!dev || !data || !rx_hprime)
> > > > +		return -EINVAL;
> > > > +
> > > > +	i915 =3D kdev_to_i915(dev);
> > > > +	if (!i915) {
> > > > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > > > +		return -ENODEV;
> > > > +	}
> > > > +
> > > > +	send_hprime_in.header.api_version =3D HDCP_API_VERSION;
> > > > +	send_hprime_in.header.command_id =3D WIRED_AKE_SEND_HPRIME;
> > > > +	send_hprime_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	send_hprime_in.header.buffer_len =3D
> > > > +WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
> > > > +
> > > > +	send_hprime_in.port.integrated_port_type =3D data->port_type;
> > > > +	send_hprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	send_hprime_in.port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder;
> > > > +
> > > > +	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
> > > > +	       HDCP_2_2_H_PRIME_LEN);
> > > > +
> > > > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&send_hprime_in,
> > > > +				       sizeof(send_hprime_in),
> > > > +				       (u8 *)&send_hprime_out,
> > > > +				       sizeof(send_hprime_out));
> > > > +	if (byte < 0) {
> > > > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> > failed.
> > > > %zd\n", byte);
> > > > +		return byte;
> > > > +	}
> > > > +
> > > > +	if (send_hprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS)
> > {
> > > > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status:
> > > > 0x%X\n",
> > > > +			    WIRED_AKE_SEND_HPRIME,
> > > > send_hprime_out.header.status);
> > > > +		return -EIO;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int
> > > > +gsc_hdcp_store_pairing_info(struct device *dev, struct
> > > > +hdcp_port_data
> > *data,
> > > > +			    struct hdcp2_ake_send_pairing_info *pairing_info)
> > {
> > > > +	struct wired_cmd_ake_send_pairing_info_in pairing_info_in =3D { {
> > > > +0 }
> > };
> > > > +	struct wired_cmd_ake_send_pairing_info_out pairing_info_out =3D {
> > > > +{
> > 0 } };
> > > > +	struct drm_i915_private *i915;
> > > > +	ssize_t byte;
> > > > +
> > > > +	if (!dev || !data || !pairing_info)
> > > > +		return -EINVAL;
> > > > +
> > > > +	i915 =3D kdev_to_i915(dev);
> > > > +	if (!i915) {
> > > > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > > > +		return -ENODEV;
> > > > +	}
> > > > +
> > > > +	pairing_info_in.header.api_version =3D HDCP_API_VERSION;
> > > > +	pairing_info_in.header.command_id =3D
> > WIRED_AKE_SEND_PAIRING_INFO;
> > > > +	pairing_info_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	pairing_info_in.header.buffer_len =3D
> > > > +
> > > > 	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
> > > > +
> > > > +	pairing_info_in.port.integrated_port_type =3D data->port_type;
> > > > +	pairing_info_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	pairing_info_in.port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder;
> > > > +
> > > > +	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
> > > > +	       HDCP_2_2_E_KH_KM_LEN);
> > > > +
> > > > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&pairing_info_in,
> > > > +				       sizeof(pairing_info_in),
> > > > +				       (u8 *)&pairing_info_out,
> > > > +				       sizeof(pairing_info_out));
> > > > +	if (byte < 0) {
> > > > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> > failed.
> > > > %zd\n", byte);
> > > > +		return byte;
> > > > +	}
> > > > +
> > > > +	if (pairing_info_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > > > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. Status:
> > > > 0x%X\n",
> > > > +			    WIRED_AKE_SEND_PAIRING_INFO,
> > > > +			    pairing_info_out.header.status);
> > > > +		return -EIO;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int
> > > > +gsc_hdcp_initiate_locality_check(struct device *dev,
> > > > +				 struct hdcp_port_data *data,
> > > > +				 struct hdcp2_lc_init *lc_init_data) {
> > > > +	struct wired_cmd_init_locality_check_in lc_init_in =3D { { 0 } };
> > > > +	struct wired_cmd_init_locality_check_out lc_init_out =3D { { 0 } =
};
> > > > +	struct drm_i915_private *i915;
> > > > +	ssize_t byte;
> > > > +
> > > > +	if (!dev || !data || !lc_init_data)
> > > > +		return -EINVAL;
> > > > +
> > > > +	i915 =3D kdev_to_i915(dev);
> > > > +	if (!i915) {
> > > > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > > > +		return -ENODEV;
> > > > +	}
> > > > +
> > > > +	lc_init_in.header.api_version =3D HDCP_API_VERSION;
> > > > +	lc_init_in.header.command_id =3D WIRED_INIT_LOCALITY_CHECK;
> > > > +	lc_init_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	lc_init_in.header.buffer_len =3D
> > > > +WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
> > > > +
> > > > +	lc_init_in.port.integrated_port_type =3D data->port_type;
> > > > +	lc_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	lc_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder=
;
> > > > +
> > > > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&lc_init_in,
> > sizeof(lc_init_in),
> > > > +				       (u8 *)&lc_init_out, sizeof(lc_init_out));
> > > > +	if (byte < 0) {
> > > > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> > failed.
> > > > %zd\n", byte);
> > > > +		return byte;
> > > > +	}
> > > > +
> > > > +	if (lc_init_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > > > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. status:
> > > > 0x%X\n",
> > > > +			    WIRED_INIT_LOCALITY_CHECK,
> > > > lc_init_out.header.status);
> > > > +		return -EIO;
> > > > +	}
> > > > +
> > > > +	lc_init_data->msg_id =3D HDCP_2_2_LC_INIT;
> > > > +	memcpy(lc_init_data->r_n, lc_init_out.r_n, HDCP_2_2_RN_LEN);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int
> > > > +gsc_hdcp_verify_lprime(struct device *dev, struct hdcp_port_data
> > *data,
> > > > +		       struct hdcp2_lc_send_lprime *rx_lprime) {
> > > > +	struct wired_cmd_validate_locality_in verify_lprime_in =3D { { 0 =
} };
> > > > +	struct wired_cmd_validate_locality_out verify_lprime_out =3D { { =
0 } };
> > > > +	struct drm_i915_private *i915;
> > > > +	ssize_t byte;
> > > > +
> > > > +	if (!dev || !data || !rx_lprime)
> > > > +		return -EINVAL;
> > > > +
> > > > +	i915 =3D kdev_to_i915(dev);
> > > > +	if (!i915) {
> > > > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > > > +		return -ENODEV;
> > > > +	}
> > > > +
> > > > +	verify_lprime_in.header.api_version =3D HDCP_API_VERSION;
> > > > +	verify_lprime_in.header.command_id =3D
> > WIRED_VALIDATE_LOCALITY;
> > > > +	verify_lprime_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	verify_lprime_in.header.buffer_len =3D
> > > > +
> > > > 	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
> > > > +
> > > > +	verify_lprime_in.port.integrated_port_type =3D data->port_type;
> > > > +	verify_lprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	verify_lprime_in.port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder;
> > > > +
> > > > +	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
> > > > +	       HDCP_2_2_L_PRIME_LEN);
> > > > +
> > > > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_lprime_in,
> > > > +				       sizeof(verify_lprime_in),
> > > > +				       (u8 *)&verify_lprime_out,
> > > > +				       sizeof(verify_lprime_out));
> > > > +	if (byte < 0) {
> > > > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> > failed.
> > > > %zd\n", byte);
> > > > +		return byte;
> > > > +	}
> > > > +
> > > > +	if (verify_lprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS)
> > {
> > > > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> > > > 0x%X\n",
> > > > +			    WIRED_VALIDATE_LOCALITY,
> > > > +			    verify_lprime_out.header.status);
> > > > +		return -EIO;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int gsc_hdcp_get_session_key(struct device *dev,
> > > > +				    struct hdcp_port_data *data,
> > > > +				    struct hdcp2_ske_send_eks *ske_data) {
> > > > +	struct wired_cmd_get_session_key_in get_skey_in =3D { { 0 } };
> > > > +	struct wired_cmd_get_session_key_out get_skey_out =3D { { 0 } };
> > > > +	struct drm_i915_private *i915;
> > > > +	ssize_t byte;
> > > > +
> > > > +	if (!dev || !data || !ske_data)
> > > > +		return -EINVAL;
> > > > +
> > > > +	i915 =3D kdev_to_i915(dev);
> > > > +	if (!i915) {
> > > > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > > > +		return -ENODEV;
> > > > +	}
> > > > +
> > > > +	get_skey_in.header.api_version =3D HDCP_API_VERSION;
> > > > +	get_skey_in.header.command_id =3D WIRED_GET_SESSION_KEY;
> > > > +	get_skey_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	get_skey_in.header.buffer_len =3D
> > > > WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
> > > > +
> > > > +	get_skey_in.port.integrated_port_type =3D data->port_type;
> > > > +	get_skey_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	get_skey_in.port.attached_transcoder =3D (u8)data-
> > >hdcp_transcoder;
> > > > +
> > > > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&get_skey_in,
> > > > sizeof(get_skey_in),
> > > > +				       (u8 *)&get_skey_out,
> > sizeof(get_skey_out));
> > > > +	if (byte < 0) {
> > > > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> > failed.
> > > > %zd\n", byte);
> > > > +		return byte;
> > > > +	}
> > > > +
> > > > +	if (get_skey_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > > > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> > > > 0x%X\n",
> > > > +			    WIRED_GET_SESSION_KEY,
> > get_skey_out.header.status);
> > > > +		return -EIO;
> > > > +	}
> > > > +
> > > > +	ske_data->msg_id =3D HDCP_2_2_SKE_SEND_EKS;
> > > > +	memcpy(ske_data->e_dkey_ks, get_skey_out.e_dkey_ks,
> > > > +	       HDCP_2_2_E_DKEY_KS_LEN);
> > > > +	memcpy(ske_data->riv, get_skey_out.r_iv, HDCP_2_2_RIV_LEN);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int
> > > > +gsc_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
> > > > +					 struct hdcp_port_data *data,
> > > > +					 struct
> > hdcp2_rep_send_receiverid_list
> > > > +							*rep_topology,
> > > > +					 struct hdcp2_rep_send_ack
> > > > +							*rep_send_ack)
> > > > +{
> > > > +	struct wired_cmd_verify_repeater_in verify_repeater_in =3D { { 0 =
} };
> > > > +	struct wired_cmd_verify_repeater_out verify_repeater_out =3D { { =
0
> > > > +}
> > };
> > > > +	struct drm_i915_private *i915;
> > > > +	ssize_t byte;
> > > > +
> > > > +	if (!dev || !rep_topology || !rep_send_ack || !data)
> > > > +		return -EINVAL;
> > > > +
> > > > +	i915 =3D kdev_to_i915(dev);
> > > > +	if (!i915) {
> > > > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > > > +		return -ENODEV;
> > > > +	}
> > > > +
> > > > +	verify_repeater_in.header.api_version =3D HDCP_API_VERSION;
> > > > +	verify_repeater_in.header.command_id =3D
> > WIRED_VERIFY_REPEATER;
> > > > +	verify_repeater_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	verify_repeater_in.header.buffer_len =3D
> > > > +
> > > > 	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
> > > > +
> > > > +	verify_repeater_in.port.integrated_port_type =3D data->port_type;
> > > > +	verify_repeater_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	verify_repeater_in.port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder;
> > > > +
> > > > +	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
> > > > +	       HDCP_2_2_RXINFO_LEN);
> > > > +	memcpy(verify_repeater_in.seq_num_v, rep_topology-
> > >seq_num_v,
> > > > +	       HDCP_2_2_SEQ_NUM_LEN);
> > > > +	memcpy(verify_repeater_in.v_prime, rep_topology->v_prime,
> > > > +	       HDCP_2_2_V_PRIME_HALF_LEN);
> > > > +	memcpy(verify_repeater_in.receiver_ids, rep_topology-
> > >receiver_ids,
> > > > +	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
> > > > +
> > > > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_repeater_in,
> > > > +				       sizeof(verify_repeater_in),
> > > > +				       (u8 *)&verify_repeater_out,
> > > > +				       sizeof(verify_repeater_out));
> > > > +	if (byte < 0) {
> > > > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> > failed.
> > > > %zd\n", byte);
> > > > +		return byte;
> > > > +	}
> > > > +
> > > > +	if (verify_repeater_out.header.status !=3D
> > FW_HDCP_STATUS_SUCCESS) {
> > > > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> > > > 0x%X\n",
> > > > +			    WIRED_VERIFY_REPEATER,
> > > > +			    verify_repeater_out.header.status);
> > > > +		return -EIO;
> > > > +	}
> > > > +
> > > > +	memcpy(rep_send_ack->v, verify_repeater_out.v,
> > > > +	       HDCP_2_2_V_PRIME_HALF_LEN);
> > > > +	rep_send_ack->msg_id =3D HDCP_2_2_REP_SEND_ACK;
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int gsc_hdcp_verify_mprime(struct device *dev,
> > > > +				  struct hdcp_port_data *data,
> > > > +				  struct hdcp2_rep_stream_ready
> > *stream_ready) {
> > > > +	struct wired_cmd_repeater_auth_stream_req_in
> > *verify_mprime_in;
> > > > +	struct wired_cmd_repeater_auth_stream_req_out
> > > > +					verify_mprime_out =3D { { 0 } };
> > > > +	struct drm_i915_private *i915;
> > > > +	ssize_t byte;
> > > > +	size_t cmd_size;
> > > > +
> > > > +	if (!dev || !stream_ready || !data)
> > > > +		return -EINVAL;
> > > > +
> > > > +	i915 =3D kdev_to_i915(dev);
> > > > +	if (!i915) {
> > > > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > > > +		return -ENODEV;
> > > > +	}
> > > > +
> > > > +	cmd_size =3D struct_size(verify_mprime_in, streams, data->k);
> > > > +	if (cmd_size =3D=3D SIZE_MAX)
> > > > +		return -EINVAL;
> > > > +
> > > > +	verify_mprime_in =3D kzalloc(cmd_size, GFP_KERNEL);
> > > > +	if (!verify_mprime_in)
> > > > +		return -ENOMEM;
> > > > +
> > > > +	verify_mprime_in->header.api_version =3D HDCP_API_VERSION;
> > > > +	verify_mprime_in->header.command_id =3D
> > > > WIRED_REPEATER_AUTH_STREAM_REQ;
> > > > +	verify_mprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	verify_mprime_in->header.buffer_len =3D cmd_size  -
> > > > +sizeof(verify_mprime_in->header);
> > > > +
> > > > +	verify_mprime_in->port.integrated_port_type =3D data->port_type;
> > > > +	verify_mprime_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	verify_mprime_in->port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder;
> > > > +
> > > > +	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime,
> > > > HDCP_2_2_MPRIME_LEN);
> > > > +	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data-
> > > > >seq_num_m);
> > > > +
> > > > +	memcpy(verify_mprime_in->streams, data->streams,
> > > > +	       array_size(data->k, sizeof(*data->streams)));
> > > > +
> > > > +	verify_mprime_in->k =3D cpu_to_be16(data->k);
> > > > +
> > > > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)verify_mprime_in,
> > cmd_size,
> > > > +				       (u8 *)&verify_mprime_out,
> > > > +				       sizeof(verify_mprime_out));
> > > > +	kfree(verify_mprime_in);
> > > > +	if (byte < 0) {
> > > > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> > failed.
> > > > %zd\n", byte);
> > > > +		return byte;
> > > > +	}
> > > > +
> > > > +	if (verify_mprime_out.header.status !=3D
> > FW_HDCP_STATUS_SUCCESS) {
> > > > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> > > > 0x%X\n",
> > > > +			    WIRED_REPEATER_AUTH_STREAM_REQ,
> > > > +			    verify_mprime_out.header.status);
> > > > +		return -EIO;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int gsc_hdcp_enable_authentication(struct device *dev,
> > > > +					  struct hdcp_port_data *data) {
> > > > +	struct wired_cmd_enable_auth_in enable_auth_in =3D { { 0 } };
> > > > +	struct wired_cmd_enable_auth_out enable_auth_out =3D { { 0 } };
> > > > +	struct drm_i915_private *i915;
> > > > +	ssize_t byte;
> > > > +
> > > > +	if (!dev || !data)
> > > > +		return -EINVAL;
> > > > +
> > > > +	i915 =3D kdev_to_i915(dev);
> > > > +	if (!i915) {
> > > > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > > > +		return -ENODEV;
> > > > +	}
> > > > +
> > > > +	enable_auth_in.header.api_version =3D HDCP_API_VERSION;
> > > > +	enable_auth_in.header.command_id =3D WIRED_ENABLE_AUTH;
> > > > +	enable_auth_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	enable_auth_in.header.buffer_len =3D
> > > > WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
> > > > +
> > > > +	enable_auth_in.port.integrated_port_type =3D data->port_type;
> > > > +	enable_auth_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	enable_auth_in.port.attached_transcoder =3D (u8)data-
> > >hdcp_transcoder;
> > > > +	enable_auth_in.stream_type =3D data->streams[0].stream_type;
> > > > +
> > > > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&enable_auth_in,
> > > > +				       sizeof(enable_auth_in),
> > > > +				       (u8 *)&enable_auth_out,
> > > > +				       sizeof(enable_auth_out));
> > > > +	if (byte < 0) {
> > > > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> > failed.
> > > > %zd\n", byte);
> > > > +		return byte;
> > > > +	}
> > > > +
> > > > +	if (enable_auth_out.header.status !=3D FW_HDCP_STATUS_SUCCESS)
> > {
> > > > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> > > > 0x%X\n",
> > > > +			    WIRED_ENABLE_AUTH,
> > enable_auth_out.header.status);
> > > > +		return -EIO;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int
> > > > +gsc_hdcp_close_session(struct device *dev, struct hdcp_port_data
> > > > +*data) {
> > > > +	struct wired_cmd_close_session_in session_close_in =3D { { 0 } };
> > > > +	struct wired_cmd_close_session_out session_close_out =3D { { 0 } =
};
> > > > +	struct drm_i915_private *i915;
> > > > +	ssize_t byte;
> > > > +
> > > > +	if (!dev || !data)
> > > > +		return -EINVAL;
> > > > +
> > > > +	i915 =3D kdev_to_i915(dev);
> > > > +	if (!i915) {
> > > > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > > > +		return -ENODEV;
> > > > +	}
> > > > +
> > > > +	session_close_in.header.api_version =3D HDCP_API_VERSION;
> > > > +	session_close_in.header.command_id =3D WIRED_CLOSE_SESSION;
> > > > +	session_close_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	session_close_in.header.buffer_len =3D
> > > > +				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
> > > > +
> > > > +	session_close_in.port.integrated_port_type =3D data->port_type;
> > > > +	session_close_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	session_close_in.port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder;
> > > > +
> > > > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&session_close_in,
> > > > +				       sizeof(session_close_in),
> > > > +				       (u8 *)&session_close_out,
> > > > +				       sizeof(session_close_out));
> > > > +	if (byte < 0) {
> > > > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send
> > failed.
> > > > %zd\n", byte);
> > > > +		return byte;
> > > > +	}
> > > > +
> > > > +	if (session_close_out.header.status !=3D FW_HDCP_STATUS_SUCCESS)
> > {
> > > > +		drm_dbg_kms(&i915->drm, "Session Close Failed. status:
> > 0x%X\n",
> > > > +			    session_close_out.header.status);
> > > > +		return -EIO;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static const struct i915_hdcp_ops gsc_hdcp_ops =3D {
> > > > +	.initiate_hdcp2_session =3D gsc_hdcp_initiate_session,
> > > > +	.verify_receiver_cert_prepare_km =3D
> > > > +				gsc_hdcp_verify_receiver_cert_prepare_km,
> > > > +	.verify_hprime =3D gsc_hdcp_verify_hprime,
> > > > +	.store_pairing_info =3D gsc_hdcp_store_pairing_info,
> > > > +	.initiate_locality_check =3D gsc_hdcp_initiate_locality_check,
> > > > +	.verify_lprime =3D gsc_hdcp_verify_lprime,
> > > > +	.get_session_key =3D gsc_hdcp_get_session_key,
> > > > +	.repeater_check_flow_prepare_ack =3D
> > > > +
> > 	gsc_hdcp_repeater_check_flow_prepare_ack,
> > > > +	.verify_mprime =3D gsc_hdcp_verify_mprime,
> > > > +	.enable_hdcp_authentication =3D gsc_hdcp_enable_authentication,
> > > > +	.close_hdcp_session =3D gsc_hdcp_close_session, };
> > > > +
> > > >  /*This function helps allocate memory for the command that we
> > > > will send to gsc cs */  static int
> > > > intel_hdcp_gsc_initialize_message(struct
> > > drm_i915_private *i915,
> > > >  					     struct intel_hdcp_gsc_message
> > > > *hdcp_message) @@ -58,7 +663,7 @@ static int
> > > > intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
> > > >  	return err;
> > > >  }
> > > >
> > > > -int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
> > > > +static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private
> > > > +*i915)
> > > >  {
> > > >  	struct intel_hdcp_gsc_message *hdcp_message;
> > > >  	int ret;
> > > > @@ -80,7 +685,7 @@ int intel_hdcp_gsc_hdcp2_init(struct
> > > > drm_i915_private
> > > *i915)
> > > >  	return ret;
> > > >  }
> > > >
> > > > -void intel_hdcp_gsc_free_message(struct drm_i915_private *i915)
> > > > +static void intel_hdcp_gsc_free_message(struct drm_i915_private
> > > > +*i915)
> > > >  {
> > > >  	struct intel_hdcp_gsc_message *hdcp_message =3D
> > > >  					i915->display.hdcp.hdcp_message;
> > @@ -
> > > 89,6 +694,31 @@ void
> > > > intel_hdcp_gsc_free_message(struct drm_i915_private
> > > > *i915)
> > > >  	kfree(hdcp_message);
> > > >  }
> > > >
> > > > +int intel_hdcp_gsc_init(struct drm_i915_private *i915) {
> > > > +	struct i915_hdcp_master *data;
> > > > +	int ret;
> > > > +
> > > > +	data =3D kzalloc(sizeof(struct i915_hdcp_master), GFP_KERNEL);
> > > > +	if (!data)
> > > > +		return -ENOMEM;
> > > > +
> > > > +	mutex_lock(&i915->display.hdcp.comp_mutex);
> > > > +	i915->display.hdcp.master =3D data;
> > > > +	i915->display.hdcp.master->hdcp_dev =3D i915->drm.dev;
> > > > +	i915->display.hdcp.master->ops =3D &gsc_hdcp_ops;
> > > > +	ret =3D intel_hdcp_gsc_hdcp2_init(i915);
> > > > +	mutex_unlock(&i915->display.hdcp.comp_mutex);
> > > > +
> > > > +	return ret;
> > > > +}
> > > > +
> > > > +void intel_hdcp_gsc_fini(struct drm_i915_private *i915) {
> > > > +	intel_hdcp_gsc_free_message(i915);
> > > > +	kfree(i915->display.hdcp.master); }
> > > > +
> > > >  static int intel_gsc_send_sync(struct drm_i915_private *i915,
> > > >  			       struct intel_gsc_mtl_header *header, u64 addr,
> > > >  			       size_t msg_out_len)
> > > > @@ -133,7 +763,8 @@ static int intel_gsc_send_sync(struct
> > > > drm_i915_private *i915,
> > > >   * will follow
> > > >   */
> > > >  ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8
> > *msg_in,
> > > > -				size_t msg_in_len, u8 *msg_out, size_t
> > > > msg_out_len)
> > > > +				size_t msg_in_len, u8 *msg_out,
> > > > +				size_t msg_out_len)
> > > >  {
> > > >  	struct intel_gt *gt =3D i915->media_gt;
> > > >  	struct intel_gsc_mtl_header *header; diff --git
> > > > a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > > > b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > > > index 09ffd7ec02cd..5cc9fd2e88f6 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > > > @@ -16,8 +16,11 @@ struct intel_hdcp_gsc_message {
> > > >  	void *hdcp_cmd;
> > > >  };
> > > >
> > > > +bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);
> > > >  ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8
> > *msg_in,
> > > >  				size_t msg_in_len, u8 *msg_out,
> > > >  				size_t msg_out_len);
> > > > +int intel_hdcp_gsc_init(struct drm_i915_private *i915); void
> > > > +intel_hdcp_gsc_fini(struct drm_i915_private *i915);
> > > >
> > > >  #endif /* __INTEL_HDCP_GCS_H__ */
> > > > --
> > > > 2.25.1

