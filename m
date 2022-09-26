Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDF15EAE0A
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 19:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21CBB10E728;
	Mon, 26 Sep 2022 17:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD05B10E728
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 17:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664212904; x=1695748904;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3A2dKkHXMDRgHHiYHocAgnmiFL39jPFeIRRdm8tNhSs=;
 b=eVQTubvdXtbW0Euz5h1zX0LEgLNwE7VrgxjQN5bKtcnQecwzyTdYZK3k
 UDipQILmNxjWagAGc8S0hO4bC6RUnx32GPnOfSXgQTmuScUp2s/Djg0al
 76K/bLGB0/KloinYb0FuKj+LePDIIiQm86veYZTwToK4IActMvq8vK3/X
 u6jb6rgkQ0VDCoXbVfewT7YgIw4p2kq9e6GhX1/Z2C98Kxosf8bzCa1ux
 zUnIRBxq7gTnOliQItze8+XWTxd4vfhIpBwU0OEAIRKCKuDMrZRqcUsQ1
 q5//1GmerglW4MwXzo4xV1CAJRklJPYix0wcud4uaz1hBP6DbDfBU7maB Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="365126406"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="365126406"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 10:21:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="616491208"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="616491208"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 26 Sep 2022 10:21:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 10:21:43 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 10:21:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 10:21:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 10:21:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VMx64d2TPEFcasK+o7Z1IN1/25UeQOGoUPfT7c2vnWBDzNwUWAOwQhr/zZQFMSmIuCw6aRQ3IvewNlhSQZ8JPZFj1u1nWXBpgJ14R9YFZWc/JlG5LMYXJ96mnSclgOj9j3ZbhLfbsX+7QYtw1OfYFQ+bVKQHL07sAB+LjUnb8mWxcea1Pet+UC1yMFlKee+0PbM6wuvknMjHFa/4zS6PHIkWw8/bgmnixQu9h/Sm13CL601olHrbk2YMdGzpb4Bys1yljwRyKuv3ohYh1mBt17YWhKJKTwJUC6qBHNVo8SoZJtlI7geRV6u30SZEP5XFUrMGM3KhBAdhs7D/moT6Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3A2dKkHXMDRgHHiYHocAgnmiFL39jPFeIRRdm8tNhSs=;
 b=bHusOkiYsWBCNzhhbupnJwQNs+uQyRRJ1iBpBDrngN2nf6b0KWC6exDdPpP7lRlQeIRGjrvctO+h4KfiXsak3W4qUCMQTmMYK8GX4T4u5vQut2/3jeFoI2dj3xECg+CneVmftnayZWhFZbsOOg4eWSteERBs8ze5HTwibdkS9VTb1otV27WOe+exIUM1rghzVoEWJmNqGr1T9vlI939+b/6YeOwS/8yYtSXrVMbulAPXDVNRQtBPX4beMnGG4UBxWobibhfXg+GRrK75xymlu9rsHD8pGm8gclvlMp6UD8G6dJdZFt3kSdbh6aAJStoOQDc99SIGWeLtQITfClw5pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by PH0PR11MB5832.namprd11.prod.outlook.com
 (2603:10b6:510:141::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.24; Mon, 26 Sep
 2022 17:21:41 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%10]) with mapi id 15.20.5654.026; Mon, 26 Sep 2022
 17:21:41 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 0/6] Introduce struct cdclk_step
Thread-Index: AQHYyi6kDFMVlhHjNUK4AMz3dDZiPK3n/zGAgACvYkCAADVwAIAEYbDAgAAkiwCABJnh8A==
Date: Mon, 26 Sep 2022 17:21:40 +0000
Message-ID: <CY4PR1101MB216654E040AB3C6B8446961FF8529@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <Yyl3sZ/zE4eZR4fH@intel.com>
 <CY4PR1101MB21666FC6A193F1FDA0B2A96BF84C9@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Yyo3pJ4QD9O4Iv6N@intel.com>
 <CY4PR1101MB2166290BF7A081C7C3A966F5F8519@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Yy4DPNanyNsqC+jU@intel.com>
In-Reply-To: <Yy4DPNanyNsqC+jU@intel.com>
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
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|PH0PR11MB5832:EE_
x-ms-office365-filtering-correlation-id: 40b8515d-8d84-4d26-c07a-08da9fe393a9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vYo1DVF53RorlQncmcR7kZuxAT97QTTKJR9hes20UArajRTbI/Y1f7v1xAOqF/m2mHwr9+lKhJdcBcCG8A/9s6qnLBiHc6pf5Xx/yaxZd1Vw7JWdrJZlCir0KxO+VP+JPyx7rjDnV/LIJ3L/rKfRPTFQu6i3YFbwl0CudDvVM8fAaE8x/QStI8O9owheF1sxrWRtCh8zuNBr3qwNM1kib6vgtokRckNja4ARbSQaeg+l5jRhGmrhS0nUhcZ2/RvlveKuSrHma6CDhcZegBfLXke0EcyaBEMYOwA/AcO/IIZTliP5RnHYJC1sdNtGHGywR8UeIpoP5EcAajjiV+UmhlH1qtg/nmiHcf6qjGVme0z+tgXHemdgvbE0rBLtxqRgqlOM5OnQY4leVU1e0Lf5Vicv1Jn4FlM8+0c0YZxYSKWyCzY9w7hIA75EdFn2QIKggsv8mAk2xFDXtX83l9rjMBLsmJx8i2k6ZWB/KauI4HmUryRbTWsKDOuH6js8Qc5CBzSYJoOGGvSQQj5yebMHkGOZbPfVzTJNCkT5cscNItkkKcWTBMvDZmsDw+ROCH6YnJnmybqJtNMZ5EwtDYi8Nbitwi9W+tBW1qqZTL9Qzd2KaxjFshuYZNeVWlDxuvMV2QiCsTUvndf9TuZO0HMfKr0A7qLQsJQEb2vyP8f3WnJcMRd74N7n+4LvRFgQeWVmLGzrg1Bnz+KyIyg98k6t3CDZ9sohMRUbv6q1PiW6Mmr+qXagPhFftBAgsSEk78SjmagH1sbi8Ylfqg+ngMGP4PCoXcM99OnLiRT5c65Apt8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(136003)(346002)(396003)(39860400002)(451199015)(55016003)(6916009)(54906003)(83380400001)(86362001)(26005)(66574015)(9686003)(53546011)(6506007)(7696005)(186003)(33656002)(38100700002)(8676002)(2906002)(122000001)(66946007)(4326008)(76116006)(64756008)(66556008)(66446008)(82960400001)(66476007)(8936002)(5660300002)(316002)(38070700005)(52536014)(966005)(478600001)(71200400001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?4QFgYaPVi6OYbTihq08Sqmf+wwtZ5FfoncrSFJJoYrD8rWTSU5MSEp1Hhw?=
 =?iso-8859-1?Q?Uwt7Eyek7nX5n4Wfm1jXr+Kr+12jAlLbNTDWeZRHKwatClhaq9lvTWGsmd?=
 =?iso-8859-1?Q?6OhnMyQIrZ8YlBys9/adjaqxDRRn+P6id4Jtsr0Q3PR4IZIdQpCO6JL6im?=
 =?iso-8859-1?Q?QBPVCW0iB7fwKgXBNz2QN8n0sp3lZCTraHJGFflpdspfQkSQgKWlcOYGgM?=
 =?iso-8859-1?Q?/fHiC2g5logVtrVqOJuyVfa4zGAASRNk21z7FYi4Uv+T+FKNmiHGu3juYr?=
 =?iso-8859-1?Q?sBUP8h78NCKxT3u8+/65dQ6oORRq24jmYEZzBP/SRuoqI+xHX944olZYkV?=
 =?iso-8859-1?Q?2IbMrymD9Pd8J+SICYRsHiXl02HfNhchif3DPLzmp3Wo6k+oysUcIjPhM+?=
 =?iso-8859-1?Q?n/b+l3h0aXQTg6gogKrHxBMwPHSBhd3Q9MwIzlaWEvroYHdcc+DIRTHiuK?=
 =?iso-8859-1?Q?igvZbJjRMKA2m3aWYUYAdTiTLTrTQjuwxl2UuqWnkHUmEhUTcJTOSgqVJs?=
 =?iso-8859-1?Q?67VA2zhbf5F9hzBkgtjdUZYS70/Prsf6SoujQuXIsWF8EvZ1kpeHnT78EJ?=
 =?iso-8859-1?Q?CvHkmUwlciXk+dS39kevY76IO1FTBK4CTtvRWc+COWxE0IpImnuOM+MFz1?=
 =?iso-8859-1?Q?KKHTBp/yH03MNEmPT8JZfXnZe0QMhVZ5L6+2ZiT+tNbuBFhPbOpsRhWHFv?=
 =?iso-8859-1?Q?LM4ekGMgA43NX4Rp2hbKr3TYNn6kvlUZp8nkszZ/pR7BYbrOObJ2OeXuEu?=
 =?iso-8859-1?Q?sEvhTee3jU5xUUW5wisWHpYUx0Md+3QTOu1gY16VnLsjS6MCxNDpVbbh4C?=
 =?iso-8859-1?Q?xz3AD0Xyz9MPoQYg4qMukfJ047FmBmYIrV63gHLmzcpfJCvu2wukTYkvUy?=
 =?iso-8859-1?Q?qkGwUR0YryBVKyGy0OkJDUOpA2eT0SAqV6CR7UlwX2FFnpL0F/lcvxbZ37?=
 =?iso-8859-1?Q?vXBrr3fGfvLSAu6uDFcd0LXjjW9KjOhgRilES7RD6VaG9Hej0DCWIPKSgr?=
 =?iso-8859-1?Q?8AWnIL1j44r+eKm4Ca5k4R2KavQ5IpNZlF1GFydEPPLqhgU8DwVYZeaAZ+?=
 =?iso-8859-1?Q?EbAKPJ9U2Os7zwaHa5PVQk9u26rAbpJp+kVCOFuVZe/cBwqTwlVbbvJXFL?=
 =?iso-8859-1?Q?SOmeFivvgf74bS48/UWdXOUsug8pkFCCapFVKDNKbCIy9SPx0ucJIba+ch?=
 =?iso-8859-1?Q?F07nuMV9GQN5RttkRpUFx9Y4TzO0CZZ7ZuHMTuxmYu0Dem2GXl967nj223?=
 =?iso-8859-1?Q?KHBm1hPdqLqqCInCoI6+dcUIVBnQUAEYL4Fwri7G829CiZXLwWml48NStL?=
 =?iso-8859-1?Q?6UQnlyb5vSBMxxqiIrnerlKKiAOzjZa5mhAKwxNNox5cWf0n9RZGkLTdED?=
 =?iso-8859-1?Q?iH2n+H/sz7nG8zhTyPEBtQJbb2Gqq7wglXBb6hx9vJSUpskEvwuhBfWTU1?=
 =?iso-8859-1?Q?28QW3o/VwH/qmFNJ0MXD70rweQH9urnQ+KK9k16jLPgdyI6e11Ixhl6kf9?=
 =?iso-8859-1?Q?GXcCx/2Ji3tYWaHvqc65gWDGOzvx4TMQmbOM0P81D+cx984O0gPWfktjWV?=
 =?iso-8859-1?Q?r3krjqaCAJ68XJTu2THuG+ZmHBbPQ3TiHWnV3Jd9RYlFoKOfdRO50eEw97?=
 =?iso-8859-1?Q?bZ9xRlprLWUgtpFRVNQgOQE/+oSMGXswZywxeH3de922gbHNI1bXGcxg?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40b8515d-8d84-4d26-c07a-08da9fe393a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2022 17:21:40.9958 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UXHJNN+GKRxXSQUWgQnDfWhUqYhexRqRNgSm7zPNgcJqxAgbZpCMIlYNLDrJb7+CaspeIyE60MhDYqSWEQSLu9Tm5JA/RSuyeKzPS/jvNVQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5832
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
> Sent: Friday, September 23, 2022 12:04 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Navare,
> Manasi D <manasi.d.navare@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
>=20
> On Fri, Sep 23, 2022 at 04:56:53PM +0000, Srivatsa, Anusha wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Tuesday, September 20, 2022 2:59 PM
> > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > > <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
> > >
> > > On Tue, Sep 20, 2022 at 06:48:46PM +0000, Srivatsa, Anusha wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Sent: Tuesday, September 20, 2022 1:20 AM
> > > > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > > > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > > > > <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > > > Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
> > > > >
> > > > > On Fri, Sep 16, 2022 at 05:43:58PM -0700, Anusha Srivatsa wrote:
> > > > > > This is a prep series for the actual cdclk refactoring that
> > > > > > will be sent following this. Idea is to have a struct -
> > > > > > cdclk_step that holds the following:
> > > > > > - cdclk action (squash, crawl or modeset)
> > > > > > - cdclk frequency
> > > > > > which gets populated in atomic check. Driver uses the
> > > > > > populated values during atomic commit to do the suitable
> > > > > > sequence of actions like programming squash ctl registers in
> > > > > > case of squashing or PLL sequence incase of modeset and so on.
> > > > > >
> > > > > > This series just addresses the initial idea. The actual
> > > > > > plumming in the atomic commit phase will be sent shortly.
> > > > >
> > > > > OK, people keep ignoring what I say so I just typed up the code
> > > > > quickly. This to me seems like the most straightforward way to
> > > > > do what
> > > we need:
> > > > > https://github.com/vsyrjala/linux.git cdclk_crawl_and_squash
> > > > >
> > > > > Totally untested ofc, apart from me doing a quick scan through
> > > > > our cdclk tables for the crawl+squahs platforms to make sure
> > > > > that this approach should produce sane values.
> > > > Ville,
> > > > Why have a mid cdclk_config? Cant we use the new-cdclk-config for
> > > > this
> > > purpose?
> > >
> > > You either
> > > - start at old, crawl to mid, then squash to new
> > > - start at old, squash to mid, then crawl to new
> >
> > Tested the changes on TGL(legacy) and DG2(squash). Took some time to
> understand the code but the mid cdclk config logic works. @Ville Syrj=E4l=
=E4 does
> replacing the intel_cdclk_can_squash() and intel_cdclk_can_crawl() with y=
our
> new cdclk_crawl_and_squash in atomic check make sense?
>=20
> I don't think we should need any real logic at that point.
> If we can squash and crawl then I think we can always do the cdclk change
> w/o a modeset, at least with what we currently have defined in the cdclk
> tables.

@Ville Syrj=E4l=E4 is this patch in your radar to be sending out to the ML?=
 Or should I send it on your behalf?

Anusha
> --
> Ville Syrj=E4l=E4
> Intel
