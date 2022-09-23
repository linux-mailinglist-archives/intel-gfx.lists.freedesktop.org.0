Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 009525E8035
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 18:57:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E3B710E59C;
	Fri, 23 Sep 2022 16:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 454EB10E5BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 16:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663952217; x=1695488217;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0s4W3qho6+NY5LxH9fg9sYEV/Ft6BloXSh5CCkaDATg=;
 b=Q07MIPoqQ9mkEu4xiRroqMalMZQM3niXgYJBYUZIi74x39vzgTub08IS
 b41WVzedzYX7NPAE6gtX4E3PLG0T8DYm4MSJ4InsXL9CfZ07JyotCL+gX
 VCVY1CP6PoeaEdZnPtsfepQIQTcz19hwh8rrWezG+Ys57ksW1s+istVLS
 Rg6Kh3Is4FsVoRKU4Gl8gcWNT/rn+i8jiZiDOnMZibYntPLk87PVua1Zb
 UmDcIzIQcWFfgvPXNk5V5Z9JRGKqc+UXRaz5xBHtmiOFZcEddBV8nInmA
 rDN9biukGyz+cEcwR88R1sjlWe9+AwS1sLrhUNIwvHR5hoeE9LO6ynwEE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="302083153"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="302083153"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 09:56:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="653459785"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 23 Sep 2022 09:56:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 09:56:56 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 09:56:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 09:56:56 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 09:56:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F9oopg7ExQQeTnplLCWxkIDMPqMHbnnM0qxJf67LDhpplGpEtV6ACzv1YEF4ha42sjL7fNQIcz5blggB9mFjWBJilYw2r+qVghkYRbMN6bhwBGlDuujtiZoHGgZumlgVIxf/nlBPN9VS9lxAff9RWkXeF0Er6dotGZRigVZvhKIkWDWsQaW6Vi183grRSYmWwUZek5zZ9Q8WRJ+qZpIscmsU/tdIt0Xs+sskbLWyjrACQtJy7LRseTB8/aOihaIE8vzY6+HDU52J1tVr8FWiy3oIz1KBEnGXoTrmKC8cw0o3Y3oFoiq8+cx0NftgXJ9iDAhXjzt7znPyWKxbUskDdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0s4W3qho6+NY5LxH9fg9sYEV/Ft6BloXSh5CCkaDATg=;
 b=dRTa99VNVABQkiXFm+BiLPf5STEJAUWA0aqJf3A++QQO8ahEwRgoDAfj6J8txR4i71W9WGsNsYnKOeFnkJT3eJiKLWHWv1ckA8fxXHWl9TMxkgezEhk3GNcD65yjHxtB24cFu4YSBP5ABEqRxn82XUxd1feFL/SdmiRkDgwkCtFcdNh0izkmfXTL/6YzSf2Eku1IwPatTq8///xxWv59q05DLlCWs29BeBHOx2dz3O+F5E6hXYyGDD6r6/EKK/dKZ+t0Zt2E4YajQfybFBRy8Q7O3qpa/EVtal09Cjk8C5/slJyAPLPom2vbz2xv6fh+b4iyY36VbxqiMXvifnn2DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by IA1PR11MB7293.namprd11.prod.outlook.com
 (2603:10b6:208:42a::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 16:56:54 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::e045:7fe1:eeca:861]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::e045:7fe1:eeca:861%6]) with mapi id 15.20.5654.020; Fri, 23 Sep 2022
 16:56:54 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 0/6] Introduce struct cdclk_step
Thread-Index: AQHYyi6kDFMVlhHjNUK4AMz3dDZiPK3n/zGAgACvYkCAADVwAIAEYbDA
Date: Fri, 23 Sep 2022 16:56:53 +0000
Message-ID: <CY4PR1101MB2166290BF7A081C7C3A966F5F8519@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <Yyl3sZ/zE4eZR4fH@intel.com>
 <CY4PR1101MB21666FC6A193F1FDA0B2A96BF84C9@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Yyo3pJ4QD9O4Iv6N@intel.com>
In-Reply-To: <Yyo3pJ4QD9O4Iv6N@intel.com>
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
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|IA1PR11MB7293:EE_
x-ms-office365-filtering-correlation-id: 90914d3e-60d0-402a-a981-08da9d849e0f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HwuyM79WVRp8+X+IANhK1tIgvXiwvTuyfOPomfZRwCTcRBP3AwkERdAsw3C4dM8tuUZFeX594sMobf7YXqpsymWIOVghcFQbe3C4luLkA8we1TzECscjsa3epDzbTAPKTbIyeVkv7/uQWq+gJVx8PihOy8ZMRUCGO1om0zhsLKNXWUJCYvWQSJUmbUAM5ChHn2Fvvyu/ramlFbhk9/NFHOcQI7iCw037luINASOYNmJI+P4KpGpiJ0HCBfkpgNinQDCfCMtPKlyf6Xe1+eml5BfM67dAAqF0L4POH398XdyaNDCvm9eNBZyk4v/e+3+svCBxnP/royY2SAR3oz8k6t51gMipv53+4PU6GSWAs6u3d0wG4v4RBFp3KIKgctKnnQPonEGtGsEJwZva3hokKaX/Ant2O+W1oXMEdTyLzXYZln2VubrstqJzfXej6W+b51giTiME4+OGQI4LDo+i8N9sw7V2nnR1EPqUwGTLnQMzFFgfuHJ6VwQNlE9lF1ZDdH2jC9Y3SPHpBq5bQYezxIkvLrtJ1cucPCbxhhg67fjQ0Y+RUDLP3tefIHdOSsWUeU1ZRj6AtZ3pHMMqL+gcfHfsyFh4+gXAV55p0I7fWrmtEbQ0k4B9kFxEjkE5HiAVCGOXVe3Ino7Ni3tudAd+9fIyhA0AtIghp/a8s7pOC2q1oQWlRkOaeyzfYs+oeUbggyKrp9T1yqLl+plJyoQTOM9gzQze7XDHZAanDBh0SDxw3O79WrCZdT6O/Vu+gSpMYmgZ47y0cSa3hqsOnMmRSiNGeljwOOt1ZafOx4Bdh9k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199015)(52536014)(186003)(5660300002)(66574015)(2906002)(83380400001)(38070700005)(55016003)(38100700002)(122000001)(33656002)(86362001)(82960400001)(7696005)(54906003)(6916009)(316002)(53546011)(6506007)(478600001)(966005)(41300700001)(8676002)(71200400001)(8936002)(66946007)(26005)(9686003)(76116006)(66446008)(66476007)(64756008)(66556008)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?V2+OudxQ0rhzH9/WMkL91KdY60ihNswJMZ9gUXOGy4vo9JGq339fI2gfvF?=
 =?iso-8859-1?Q?dnhsoT7FntjA49QlVPd3E7+D+zFboyIGZ71BONuNcbNSJHtFeFbKN8gCCO?=
 =?iso-8859-1?Q?K5JM7F6txQOZs7l5JhSdAxCGIjW+U/YZRrMQAJzqL1NmNQ5FioUkrWhObO?=
 =?iso-8859-1?Q?pZ9QhCUCQo1vDNgVlpOrBeBSr8nerelP/IDjF3mvfXwdd0ZtgC2pgigur5?=
 =?iso-8859-1?Q?bHu+UGlpbN5krawIeZy88izQx/4VbeVgMgzX/c9Id6nEuVjxzlkWIsVPPl?=
 =?iso-8859-1?Q?d3EmvD+ap+niEDmXs4O8vZSjeGL9hWolZj1vyJ+lCASewsA3lKU1EnNiyK?=
 =?iso-8859-1?Q?3vKDdwCpvyAgXyzNym1+sJUvrCmjHty1MQnchbmYgBOV/d7y+S3ZmzBaVT?=
 =?iso-8859-1?Q?ja+sic+it6jqd64np6ki53g3AQ2bCM8bibn/UvPUhVok76BbkaMk7IiXVf?=
 =?iso-8859-1?Q?JkyDFJtDwJstadLBUlwP07aq/kxld3Qz+rmlp75NHkZxp5G8d/tefbcdNp?=
 =?iso-8859-1?Q?LFIPOGcNxCJxpX3STjd3tBBL7KzBEHylvvl6s89XaEmDjsYf9ub3aKNXNn?=
 =?iso-8859-1?Q?dn4H/LuLEBQwBFuBxiljOQkfTbtZnqwr2U5/FF6yF1u7kEAmibEu6o1MYa?=
 =?iso-8859-1?Q?ZcxNoiUporoudBT/NMAXxuFHzH42Iae5dKGJQiYpvZ62XUmZe64fOo81BW?=
 =?iso-8859-1?Q?/0NfIHE5h6mDIyQZC6522vjTk1Nr1hJi7VF6ve+EZ35F2kRCEcoaZW/xjA?=
 =?iso-8859-1?Q?G5ryifUz6pXiWaPyDd9q7NGf459mTdwQDBrlzHO+XLi22Kj5815LbfS9lb?=
 =?iso-8859-1?Q?/61o1mPrxiNop67jc0VjdA4k2I8G4sgXNTzG2q6cyq0e0/VozSYWmxAmXY?=
 =?iso-8859-1?Q?6JiQH2rljgiq5Kb/aEET7q1PDd0T5GGr1o8oIiwbKRiJdO6pFECyXK+Uae?=
 =?iso-8859-1?Q?4rKHm+PF8PJSd0icobPXC+DAsKNEzWJUJADEkbbW9aYHpjYaBV0oHA6Ks7?=
 =?iso-8859-1?Q?lwgs5ALva4Rz1fKYRj6kWBvMrPv1fzbmOpxDzWQfZNM7ZslT/mGM75cXSl?=
 =?iso-8859-1?Q?Ig9EXapTB+kGpJ/hIiCs3xGWDtktbZLK685bZRK+EYoKheKI+ZIPVtDaBD?=
 =?iso-8859-1?Q?D5cTIFp/+F5z+0pTYpJiK3m9G4SybKfYK/UkzTGqF48mU0USIS5LSc3Jx7?=
 =?iso-8859-1?Q?TkepayShwSyc51skU+dgWP4vKPbTBwCFAgSQou+iHVFJAuO3nK3tLmcwNh?=
 =?iso-8859-1?Q?4hx6yvkT7OyS7PVNwRjgcPsn3O+79V01ceXYrmzWPkj8THAcrJnx9kbJM9?=
 =?iso-8859-1?Q?87HJ31X4/syk5dmc6wVgAzFsLJI2WxqolNW0QJI2k3ZMlz+J2V7eulHczp?=
 =?iso-8859-1?Q?O0O0ChYztf0VrLusm8+KlLnGQi9FWe5hI88nyiOelPFQTJMkGYsiZt27vs?=
 =?iso-8859-1?Q?PiMfMR5wrwegzVtHrAE+ULOH8YzlR4fGt1O2Apnqjl5FzyJvF1rErPOGkt?=
 =?iso-8859-1?Q?5fZjTcw5Q08kU8mF51PPLA/n0THITFc+Buzc6UM3MX7KCEgXMbq+e2zzcF?=
 =?iso-8859-1?Q?I1X247dudOCkoLKmuCTM98KvIRhgo4dz/EbcUtVBsV+nfekxYqDcZ63i2L?=
 =?iso-8859-1?Q?4D8SOz10j7+FuK6u0LaLBpbfqB4QpNF2Irn2h7urgldeD6GiqLSKboMg?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90914d3e-60d0-402a-a981-08da9d849e0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 16:56:53.9104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 41bQodjCGS1YqTVrqOa/7+wWz4uziCiMjJvgo9Rj/QaZR8Uc7Y3PbHC9ohkapgz3fwHNYBZTtCm4hrEWuirLafHVV4rOajIQ5w97akN95Rw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7293
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/6] Introduce struct cdclk_step
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, September 20, 2022 2:59 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
>=20
> On Tue, Sep 20, 2022 at 06:48:46PM +0000, Srivatsa, Anusha wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Tuesday, September 20, 2022 1:20 AM
> > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > > <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
> > >
> > > On Fri, Sep 16, 2022 at 05:43:58PM -0700, Anusha Srivatsa wrote:
> > > > This is a prep series for the actual cdclk refactoring that will
> > > > be sent following this. Idea is to have a struct - cdclk_step that
> > > > holds the following:
> > > > - cdclk action (squash, crawl or modeset)
> > > > - cdclk frequency
> > > > which gets populated in atomic check. Driver uses the populated
> > > > values during atomic commit to do the suitable sequence of actions
> > > > like programming squash ctl registers in case of squashing or PLL
> > > > sequence incase of modeset and so on.
> > > >
> > > > This series just addresses the initial idea. The actual plumming
> > > > in the atomic commit phase will be sent shortly.
> > >
> > > OK, people keep ignoring what I say so I just typed up the code
> > > quickly. This to me seems like the most straightforward way to do wha=
t
> we need:
> > > https://github.com/vsyrjala/linux.git cdclk_crawl_and_squash
> > >
> > > Totally untested ofc, apart from me doing a quick scan through our
> > > cdclk tables for the crawl+squahs platforms to make sure that this
> > > approach should produce sane values.
> > Ville,
> > Why have a mid cdclk_config? Cant we use the new-cdclk-config for this
> purpose?
>=20
> You either
> - start at old, crawl to mid, then squash to new
> - start at old, squash to mid, then crawl to new

Tested the changes on TGL(legacy) and DG2(squash). Took some time to unders=
tand the code but the mid cdclk config logic works. @Ville Syrj=E4l=E4 does=
 replacing the intel_cdclk_can_squash() and intel_cdclk_can_crawl() with yo=
ur new cdclk_crawl_and_squash in atomic check make sense?

Anusha=20
> --
> Ville Syrj=E4l=E4
> Intel
