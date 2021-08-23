Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 458C83F46BA
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 10:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2707389358;
	Mon, 23 Aug 2021 08:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52D3789358
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 08:39:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="204199371"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="204199371"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 01:39:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="683120273"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga006.fm.intel.com with ESMTP; 23 Aug 2021 01:39:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 23 Aug 2021 01:39:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 23 Aug 2021 01:39:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Mon, 23 Aug 2021 01:39:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 23 Aug 2021 01:39:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nndqf4KPtBY8b13YwdD5KJzCjmtWLtUMokWFIYXiwun80KPI5Bb6CZF/UHVC6YEYTupi29+F7UdtjawC+xZfRr8RpMy8rrKXUy6b7m8cQ7sY8M+JutpYerK6E1voUPZc22IPCJCpi+7aKeDGGFiHOpaTW9UbBKNZJvWwW3B9bEhSAlJ4lU3zVN38T+ZNbntduh6T6R/xFBwRnlS3bmShSKhcaFF1uTxVJARDZr3rZXN1HDIaMT7UjHJIKmaka3rGYAj+PmAHV1zJyBYupoGiFGwTuehUWjCmax96ysSerJ5QqczU76m78azZgbxqMbgCK8/a2EDX/RjANdfbeSoN4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h+LnVojt/hSFIy/0gfoxTrMIFVMfedz3Tobxb0Lbu1c=;
 b=Psopz0F/ERyP4OqzBWQwYdKIl/eP9FiPbFStvrMSDCF1kvsFbb5W9fHT7blOZtv4kcL7tSmRpWolZjnsR0jspZqyFPEPVhPIqc9MXZRWl8ilmcVxC/NPoR2Mf3QLotcuIK00gOzS9pfDLEW+g4s2SwWOiVqe2NPFSft1h+047BXbE6A/eNWbTUOkvpGgOfK3Eg4wFpLobfyIVvZv9r81yYf9uLXeJ5X8c3rUZlecAGEAZpPV8McLxwASPowJ9D2EC4uAOkvjENoWQf45aXo8/Cb/NrNG7hpjw8jh0rX46nnn2t54UGGNJL2x9BSAFHZ9VRZQUzL7S34r8xuJ6LvBrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h+LnVojt/hSFIy/0gfoxTrMIFVMfedz3Tobxb0Lbu1c=;
 b=BgTxCgXDHBb6Qrjr2d+YhsebNB5uOFd7ZMiAQqYB+zU7XFbnwmXdSyJ4udMnDuaywPMtynhOrXx1/YZy5ylIf0hOpb3rTaNArRy7I0uunV+2dN9JoXH4DP+od4lsUDp/KHs1O7SebIdtBo/duyxPQgZBUOi6hMZhvt2STN40s0U=
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 DM4PR11MB5568.namprd11.prod.outlook.com (2603:10b6:5:39a::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.16; Mon, 23 Aug 2021 08:38:58 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::3067:fc35:451d:6b54]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::3067:fc35:451d:6b54%8]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 08:38:58 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Deak, 
 Imre" <imre.deak@intel.com>, "Vudum, Lakshminarayana"
 <lakshminarayana.vudum@intel.com>
CC: "Lee, Shawn C" <shawn.c.lee@intel.com>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Chiou, Cooper" <cooper.chiou@intel.com>,
 "Tseng, William" <william.tseng@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link
 training result
Thread-Index: AQHXcnpSmyNLzxvMw0+cznTwPSNpB6s2llyAgAAkzQCAQuYHgIAAEtsAgAOKDACAA9F10A==
Date: Mon, 23 Aug 2021 08:38:58 +0000
Message-ID: <DM8PR11MB565526AB906B71F99CE24C8BE0C49@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20210706152541.25021-1-shawn.c.lee@intel.com>
 <bc5e0ada3f3270a8e1531486ba4302dcdb1c80e6.camel@intel.com>
 <CO6PR11MB56513D4354949879295355E3A31A9@CO6PR11MB5651.namprd11.prod.outlook.com>
 <CO6PR11MB565113D39F6A44130F72386DA3FF9@CO6PR11MB5651.namprd11.prod.outlook.com>
 <20210818161712.GA2831921@ideak-desk.fi.intel.com>
 <YSAqlKSixZ9CNWNz@intel.com>
In-Reply-To: <YSAqlKSixZ9CNWNz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: Lakshminarayana.Vudum@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95de94bd-f768-4f34-28ee-08d966117342
x-ms-traffictypediagnostic: DM4PR11MB5568:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM4PR11MB55681A168590DA165ACB0D04E0C49@DM4PR11MB5568.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LqHv6g83tCiRdvBJO5PnizY7O8Te1rA9UMFmys8Bo0Bl41y2nstoadTlgQdGhCLwIOxSpRkihEJHUP3nBeEdy4txy4FCCrAxRW+xzm1JMGhati1nTaMAd5shN9T8LebygMVowZdFHxfYp24Jl0mPq1ljMgwig0kR0QDou0xpJDAvJpL7JqMxEcW6w4h/nu2eH3JvAZyN+smsK7XajVO9FhD2kK7dgM+OZrU6wGUoGbDc6XO/SvnC/pkBgIDcocnN8o4kET/M+Dx5mvx/wG6Ohvgy5977b/6KdtgvSV4afpalB6wmILAxAbz758BzVQBx7B9jFXCQ1MaLFIZCaj1DHU2TMQot36SqdZwOQerVycLF9TE5hlnnjWvILyl/jxGqMiTnABMFAxntIB3c+qYPDZM1Fghip2VykBAmFM/gEucxy5jLhNEgjjsCaKs0oC2lYDpByT015qbOsVTOj1NFE1LFdBQ4WFWrrG1GizuQVzLolctTiByXGnaRUJaO0KlXBkz7eXM1bNCcMlPZXfjNVNoo7C5F6WN/vaEK3BvnP0G9qfmLxPb7UzjfBFUbxzgv5mb1sUCuf0HzXqSF8EUs/vHTqoiByy+iCl4fKfn9wM4eUioPhxRaqOxm+kxkmu7lO6rKpYIEkAOA6kkpRo91z42TQZAsQsGezBJCgeIfFRIjwlkSEB7XL2KkSIvWpnE2RLu5duMNq0uIR5m5+N3HF7qLehT57dm5np4YsEGBW7Z7XyydXtZWVNe6CfMRbJ5x6z4rKD3ldJICY1RmiSgfewbwQAOJJTTNz7UZjXEgmaLkraPW0g3zvnmmW+HRhLO470m5B3Md9vte8DU+IJbQ0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(54906003)(508600001)(52536014)(86362001)(66574015)(5660300002)(966005)(66946007)(64756008)(8936002)(26005)(71200400001)(8676002)(66556008)(316002)(110136005)(6636002)(2906002)(6506007)(7696005)(38070700005)(4326008)(33656002)(122000001)(9686003)(55016002)(76116006)(83380400001)(66446008)(66476007)(38100700002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?tKNNZKwlxffXLyCpKRWnpOnYOCK0bCPQB/C1aFlA3fiFgOURaGayGsgdtc?=
 =?iso-8859-1?Q?CbGIG5xLLdQl1UGGURQb1iSmkhGGf+HNNUPw8Xq0ciRelK2m7MAW/WZqUk?=
 =?iso-8859-1?Q?G5rCECU8Ll4PE3c6xdhoCq6H73zPzmOm4a1rrcDSnukPajOrUdxgEXMCje?=
 =?iso-8859-1?Q?jVeSpYWQXe/OAcsVAInLM1XOX08jRbKHQdX+o7t0NI8GkoCwKb8BBN1rc8?=
 =?iso-8859-1?Q?bHCQRbME+Zp0djeRkyuwZJ3vKnE+mcCm8iKJzbtJr++p2tNE6IwtPOZKTg?=
 =?iso-8859-1?Q?32cf4u91f+qAHU2uRtwnL8GFA2k2h+K3//AHQpf6BviBvDmmSPJIQU9p/Y?=
 =?iso-8859-1?Q?Y1Fu2xEHZsm6J1tuv0hYCyfVReSGaPw53l+3JJFgVnTxxiGO5qMD3c/N6F?=
 =?iso-8859-1?Q?X3tNEG/sJZoBA1Ix4U0AUS3+BgTiYZFPJybHNjTwoR/IMb5vqMy8PyN4ah?=
 =?iso-8859-1?Q?xT3tD7Ue/xya26mYYiXs86cIFITr1IqCiHvGEe6GGZn7ux3K5HH+BrU+Lr?=
 =?iso-8859-1?Q?UJHWSkRcVc96mNbcs5Ym5TFL3KVE4h16pmtOY5nYwlfXcXsCQ+qkfwA6WV?=
 =?iso-8859-1?Q?AYnw6km2IARdDc+RL88zi9XQv9GnQx4U7VPtm6EPKooJiAcUFtxgBgTmoP?=
 =?iso-8859-1?Q?vFvz8+Hj1DmE+kqHIXgSuAPkrj9FIVyDYWHGA1X37mxadHS63n0uGn1tNb?=
 =?iso-8859-1?Q?HMzsNiQKMikFbKwvEvNXYxfT0tBf6Eju5rPS+QTpgBTz7AuilTbie8OVLG?=
 =?iso-8859-1?Q?V1nWWUZHY4kHtkhF7fqghkDr8X1aDBPcSFP38eho7+SjVsQ+lOR3/T9CKa?=
 =?iso-8859-1?Q?YoPnD5Z0BcFwXXiIvqZlZ1X9ttUdKalO1p34qu+fRJ5yTHzdFxiYfGWbPX?=
 =?iso-8859-1?Q?BS4Ohsdaiwr8nxqPq/Gq4rXCyfJYjSCsDByWH875rGIV8AErA1KYvgqbC1?=
 =?iso-8859-1?Q?glLtyBbyNjI/LyqhycCIN/RIBQut4oKY4NeF+ABVP11WCtYGLh8JbKfCua?=
 =?iso-8859-1?Q?h7Juw8oa0HcwWTw1Aw7GlRiGyDUEKC1fvKFR3llMt9nGY3LDLSnEz9tNxQ?=
 =?iso-8859-1?Q?aRSZrDC0bZl7CGZOxVNBlloUeXcFuYyDoZnvKguo+b37oOLe7yUiWC2llb?=
 =?iso-8859-1?Q?uP7W+4DQwlr7zwI29G7L6NPijQOhAuZuwJDk72RC6QCHtrlXFLN86O+P7D?=
 =?iso-8859-1?Q?IzLwQigzYqoPqkFS+B+UHypO9Xtl1dtf5aicfREePJflUhm4vxxPnh2Pfu?=
 =?iso-8859-1?Q?BM7l2BMCNrC/8ZgxsF1CWgGJDVqXx0EF2g0Sm/g3bdH3OBBNm+CzBnxz5I?=
 =?iso-8859-1?Q?K+RG0iVJIwsDmNzFTymvjcXt1e2mz+9wV2v4/QWnruvRB8UmqZIh52ClJh?=
 =?iso-8859-1?Q?asuLINgvBI?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95de94bd-f768-4f34-28ee-08d966117342
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2021 08:38:58.2335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XYUqtbEPe7/FbpNpCw7PTcNy0Sh6PNFXlVMwuOiyka4IJuq/mDaTbITMi53RwK3xinVUzGf+9Ysuu6AscbBSfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5568
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link
 training result
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

Hi,=20

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vi=
lle Syrj=E4l=E4
> Sent: lauantai 21. elokuuta 2021 1.20
> To: Deak, Imre <imre.deak@intel.com>
> Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Almahallawy, Khaled
> <khaled.almahallawy@intel.com>; intel-gfx@lists.freedesktop.org; Chiou, C=
ooper
> <cooper.chiou@intel.com>; Tseng, William <william.tseng@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link tra=
ining result
>=20
> On Wed, Aug 18, 2021 at 07:17:12PM +0300, Imre Deak wrote:
> > On Wed, Aug 18, 2021 at 06:09:43PM +0300, Lee, Shawn C wrote:
> > > On Tue, 2021-07-07, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> > > >On Tue, 2021-07-07, Almahallawy, Khaled <khaled.almahallawy@intel.co=
m>
> wrote:
> > > >>I believe Imre's LT fallback:
> > > >>https://github.com/ideak/linux/commits/linktraining-fallback-fix  a=
nd Chrome
> user space fix:
> > > >>https://chromium-review.googlesource.com/c/chromium/src/+/3003487
> > > >>should address Chrome concerns for LT failure and LTTPRs
> > > >>
> > > >
> > > >Thanks for comment! The new fallback patch should help on this DPRX =
problem.
> > > >One more thing. If driver did not handle DPRX link train failed prop=
erly.
> > > >It would impact link layer compliance test case in below.
> > > >
> > > >400.3.1.3
> > > >400.3.1.4
> > > >400.3.1.6
> > > >400.3.1.12
> > > >400.3.1.13
> > > >400.3.1.14
> > > >
> > > >Best regards,
> > > >Shawn
> > > >
> > >
> > > Hi all, before Imre's patch series land on upstream driver. The link
> > > train failed handling works for LTTPR only. But DPRX does not. Could
> > > you please consider to have this change as temporary solution? Thanks=
!
> >
> > I sent already fixing this, see
> > https://lore.kernel.org/intel-gfx/20201027133600.3656665-1-imre.deak@i
> > ntel.com/
> >
> > but it fell through the cracks. Applied now your patch, thanks.
>=20
> We seem to have a tgl that fails consistently at DPRX link training:
> https://intel-gfx-ci.01.org/tree/drm-tip/fi-tgl-1115g4.html
Yes, @Vudum, Lakshminarayana what is gitlab issue for this?=20

>=20
> Previously the error went unnoticed.
>=20
> --
> Ville Syrj=E4l=E4
> Intel
