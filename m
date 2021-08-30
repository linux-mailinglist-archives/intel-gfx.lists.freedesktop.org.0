Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 948CE3FB195
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 09:05:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB48089CF1;
	Mon, 30 Aug 2021 07:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0A389CF1
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 07:05:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10091"; a="197785734"
X-IronPort-AV: E=Sophos;i="5.84,362,1620716400"; d="scan'208";a="197785734"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 00:05:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,362,1620716400"; d="scan'208";a="600408486"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 30 Aug 2021 00:05:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 30 Aug 2021 00:05:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Mon, 30 Aug 2021 00:05:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 30 Aug 2021 00:05:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bgvp2CMpJfM6OM3bk/X3ONUHNx4ul1Sxf5bH4pODqsg6pIZlmrjssMNE8U5gYTWbQe/BLikRGAcMsIYrnDPK6oRKkFzJRq/IntGegd09U1mZcYI/GSEyU++pFri3L1sI6mlTTjh9Xk2aGOfQiPslH7o5VdCJ/h2Kd5kDDJLgv4sjZMWrBfEnoqb0OucPcNV+x6C2WcJJ3kWhRLCX1Uw5bJMWnSzbNSnBgnZyNrF3IM0HGB8OYzqOP0I5ZNIQL2Zo1sGZaXx49iFFNeAc0ucD+vH6EbtbQq1oTrfT2YB2BhPnK9xFsT8tyT8uFUd9kwVUsUhR2OWDU2oXOTERsyXARw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U8C7tprLRenv1FCfhBJGAKXog38qvs6rcPE9LfHlA40=;
 b=ms28gq5A1/efkd3P6h4SvTXMY+yIWt/668ThBYHJGG+XKsJ/QMXPYTIuPXwLvhY8v3ptprstjcpwxeVwwD+tyZ3je+31g6Jyim3PiPcJJFLy4hceIc1X2Hl+fBq9vMIKwM36RElpUR180cun0Ktm/CdTcf6pk+v/7QWoAga08L0G+31q+X/P/BJp31oybz5Pqn41RjV8PHo3LJC65Q9Adpx2n+aEC/3T85GDM8hIHWIcA6fTvl8gwjzNiXXRQIUEzNyMKQPbmmEHenOclXfbobdV95gfdr5QlsHzxjScmdSKMDW4sUWPF4e/Lt0okKuDzfYBcLeEx4DSKC5d5WzPsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U8C7tprLRenv1FCfhBJGAKXog38qvs6rcPE9LfHlA40=;
 b=RunEaIsGWrNmVKbZAwVuiwW788HlXtyv2sgMjfb/j/4MJ7R8upxxZZlw7HZzhFbnJ95dBSvygV91WPyQrw+ZZ6JLMbVCmXQhGapW5hC1MFR9mahB3PyycH8FlA+qSPI/Oyx8zbbLzwLhF3yBXSSQJQPNdk9CqM4wahFV6uu61ts=
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 DM8PR11MB5576.namprd11.prod.outlook.com (2603:10b6:8:37::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4457.23; Mon, 30 Aug 2021 07:05:36 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::1b3:4f2d:67a3:1a20]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::1b3:4f2d:67a3:1a20%2]) with mapi id 15.20.4457.024; Mon, 30 Aug 2021
 07:05:36 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, =?iso-8859-1?Q?Ville_Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
CC: "Lee, Shawn C" <shawn.c.lee@intel.com>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Chiou, Cooper" <cooper.chiou@intel.com>,
 "Tseng, William" <william.tseng@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link
 training result
Thread-Index: AQHXcnpSmyNLzxvMw0+cznTwPSNpB6s2llyAgAAkzQCAQuYHgIAAEtsAgAOKDACAAAu7gIAOpm4AgAAFdMA=
Date: Mon, 30 Aug 2021 07:05:36 +0000
Message-ID: <DM8PR11MB565516F8C6C7BB87171F3131E0CB9@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20210706152541.25021-1-shawn.c.lee@intel.com>
 <bc5e0ada3f3270a8e1531486ba4302dcdb1c80e6.camel@intel.com>
 <CO6PR11MB56513D4354949879295355E3A31A9@CO6PR11MB5651.namprd11.prod.outlook.com>
 <CO6PR11MB565113D39F6A44130F72386DA3FF9@CO6PR11MB5651.namprd11.prod.outlook.com>
 <20210818161712.GA2831921@ideak-desk.fi.intel.com>
 <YSAqlKSixZ9CNWNz@intel.com>
 <20210820230203.GC2886701@ideak-desk.fi.intel.com>
 <20210830064522.GA3420065@ideak-desk.fi.intel.com>
In-Reply-To: <20210830064522.GA3420065@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 566e4283-7d77-46d1-5f92-08d96b84915b
x-ms-traffictypediagnostic: DM8PR11MB5576:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM8PR11MB5576C7CC93F2B8E66F994456E0CB9@DM8PR11MB5576.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9nuHNQU660uWfPN9NK+Z0ZXmQCcs65eYF3IF+ANm9EEf8Xk3F0TiWPUSDMcnd6g2tAPAf+vSC5MxhxDrFGt+MoeC4XSuEfpL63/DnZK5yjlWE7f85fsAjsXdd70DHvyLstFfC7Bnme8xakZjdk5745vDTQ3UNynuAq77OQ7KJgg4Ra0AgI4i/QRkWIcJAmpiyOrIJRJiOxgl366Hub6PDFyr6vOJrk5+cD2tWT5TTRZ7dLHlxNJt5wlBYxVjjsaJGMsknVylqlkP1Jn7qHdNr+b5+BZ7BbrRpC1xAkO6CvgM1E4We8NrfJ5KQX0SCRmk3ZPb+TTimcgMj3oDeKeqyo3oeZ0nkJ3oOmmijZcKNFnxrX3mOjIAEQFBLRJY8vX2435DeAY98bXqoA/Wv7ZCILLDmzJQ3EAOxZ2ooemBXe2boLuaApL2dquO7YZoZajtyWr/pfkukkQMINR7Fi3IWI5+ReUnLNK9tsE0DrAMnrTPxwCPR5XQnEsHsw7MgCF70IV51l/ue8JqGrCq6UhkipEopARFCiKNufLIAELMlzbEIpojnIGC8QKsHDK3kpBI9tOYcut42PCdttmk0yjsDB0i7nletTtK71D8dwDM4n43lq5LSb8svFqWeDsPuLIGYaaCa1PUCYth3mevohdzITJjLJ42KQkrNBqXoYVEjvDsayZrsjrZc7KAEq7Qod+BlvwEPNnWO2Dqp5/ntqL+7Z+hi8+RWtoA5iJx97Z6YWn9QKSWN5QAArb1DjeluQkkOWzBU46jOMrm20GzNT6Go/WZ1fhblRbfEAVzxhaAAwK/7StPlwkkH9FV/1hNdAFqo47qPTKvBy/v26QwMhsJ8Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(396003)(366004)(346002)(376002)(66556008)(66446008)(2906002)(4326008)(966005)(66476007)(64756008)(52536014)(122000001)(6506007)(71200400001)(54906003)(5660300002)(38070700005)(8936002)(7696005)(316002)(86362001)(186003)(110136005)(55016002)(9686003)(33656002)(66946007)(66574015)(478600001)(38100700002)(26005)(76116006)(8676002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?B7Rw99ZGA6FNRqX0AreSe8N5fMnuYkqqHptwQy2xUiZe+VapWP6jyq//11?=
 =?iso-8859-1?Q?EGIvNWNPl9DTREvDs1SrU6ii4k6TQiW8ABPO53eOudH7AyDAdM7JSAw9or?=
 =?iso-8859-1?Q?awfXw2k+fVWu/mby9u+tZusm8tjxZJ/RO6f96xpTt0d8WLAOU84dLLdmWv?=
 =?iso-8859-1?Q?LuQzq50xkGy3+bTA+Lqk14pbz2PdgsKmhVqXd04xjMYMTvWFosU2TJ6Edp?=
 =?iso-8859-1?Q?HKptG02oSzGNAGUdOCELy8/sxzVOYq1y7KWY6LvB9HyZLEn7WHbf314XJu?=
 =?iso-8859-1?Q?AixpmZb82/XXc7CRYBLmwiUZBlUgLAzD/xkK7wmvEOH46xsFI9zdysoB2n?=
 =?iso-8859-1?Q?ZZtdGhHyk09CmOKhxrJnyREuNKzgjko3S92XYu5/KDD6WiRZ7YelMhFNaT?=
 =?iso-8859-1?Q?vcwfLtTzE16Iwp2Wviw5jT7FA0KG/Raf4+0QpZS6q7kgAwklQt+gs16lvH?=
 =?iso-8859-1?Q?xW8j82cI0/RvMG80wM2WfaRm4mJxT1usDM2axMsnbSkiOjTooMUYFQUEzx?=
 =?iso-8859-1?Q?mNKge8Uqu9gNXTA9ItwbBQET04K9mdXuldL1SAuQFwY8dS2nGPuLRLwGct?=
 =?iso-8859-1?Q?2uCla8xeu7zg0JPY/1zX2deGK2uymqXsC2mZSlJvxqYbPrMgiVKktIiwqJ?=
 =?iso-8859-1?Q?UGGUsNJMElpmH4D5WJMrLjd15yu90AogpFVC+kEvaVZoTWqR4zALf3cfpg?=
 =?iso-8859-1?Q?ShEfZReqO9RNkcHPGTgzOIhCSTqwSitgm9c6rlxP5MC+q7zcZA25ul0Wm8?=
 =?iso-8859-1?Q?4oNf19McKhQVorOSWFh7/53hRUS40lgQdihUa82aLnvZdxznfWqGNNiyjl?=
 =?iso-8859-1?Q?ZGtjcrMtSHNk8UzNMGdTfrvlcR1vTZRdZLg4qLzEdRfPjVjDnXzcRebt9m?=
 =?iso-8859-1?Q?u18cyuyK4V0TP97gZ4oFXQvgZ2cuaOEJ7qtr+v3nuBrrPRFosWiXMIcVcM?=
 =?iso-8859-1?Q?8dnQXWSRPmz71VT3uKqJDsBWuvfCoHgwK5TpPEaLhISX16376HYpdJs0ub?=
 =?iso-8859-1?Q?a2V6ZFB6rmuHyZEgqW3WZF3EkphP6AKC1IbukngEnomGuWJ34peLV+SXWS?=
 =?iso-8859-1?Q?tp9qxn8NRsWxhdUhIOE6SUm3+ZoPaXw+s7iXj6R3aAtPoo7wrAXy1n7gtl?=
 =?iso-8859-1?Q?JredUvhy4qLnwOz0AifdKJNXkv1mtY/0UF85C0+5dYvwjIM2wnd6poPsMQ?=
 =?iso-8859-1?Q?39GyFOFjLDKRKKfrPiNFiDJse0kebVva9Z3Q4sFSfnKlWGGix9nXabBXaO?=
 =?iso-8859-1?Q?THbgbOoLnBaIBeOCsL4wHekxMjvFh8LiIAynSE9hVzqbOCq17/hRl3093r?=
 =?iso-8859-1?Q?OoOji1N4DVSbsamVlfUOQr/3ihCdDROKbScpuE0l46db/QE=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 566e4283-7d77-46d1-5f92-08d96b84915b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2021 07:05:36.6592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0fUf0OYL9XEOZiwgbE80KQZB0zD86EnAcVN2z6CpFNXqNEOlF66XWZ3ffkeuBLA+E3LCS31nQwuhr3DSKuXOJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5576
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re Deak
> Sent: maanantai 30. elokuuta 2021 9.45
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Almahallawy, Khaled
> <khaled.almahallawy@intel.com>; intel-gfx@lists.freedesktop.org; Chiou, C=
ooper
> <cooper.chiou@intel.com>; Tseng, William <william.tseng@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link tra=
ining result
>=20
> On Sat, Aug 21, 2021 at 02:02:03AM +0300, Imre Deak wrote:
> > On Sat, Aug 21, 2021 at 01:20:04AM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Wed, Aug 18, 2021 at 07:17:12PM +0300, Imre Deak wrote:
> > > > On Wed, Aug 18, 2021 at 06:09:43PM +0300, Lee, Shawn C wrote:
> > > > > On Tue, 2021-07-07, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> > > > > >On Tue, 2021-07-07, Almahallawy, Khaled <khaled.almahallawy@inte=
l.com>
> wrote:
> > > > > >>I believe Imre's LT fallback:
> > > > > >>https://github.com/ideak/linux/commits/linktraining-fallback-fi=
x  and
> Chrome user space fix:
> > > > > >>https://chromium-review.googlesource.com/c/chromium/src/+/3003
> > > > > >>487 should address Chrome concerns for LT failure and LTTPRs
> > > > > >>
> > > > > >
> > > > > >Thanks for comment! The new fallback patch should help on this D=
PRX
> problem.
> > > > > >One more thing. If driver did not handle DPRX link train failed =
properly.
> > > > > >It would impact link layer compliance test case in below.
> > > > > >
> > > > > >400.3.1.3
> > > > > >400.3.1.4
> > > > > >400.3.1.6
> > > > > >400.3.1.12
> > > > > >400.3.1.13
> > > > > >400.3.1.14
> > > > > >
> > > > > >Best regards,
> > > > > >Shawn
> > > > > >
> > > > >
> > > > > Hi all, before Imre's patch series land on upstream driver. The
> > > > > link train failed handling works for LTTPR only. But DPRX does
> > > > > not. Could you please consider to have this change as temporary s=
olution?
> Thanks!
> > > >
> > > > I sent already fixing this, see
> > > > https://lore.kernel.org/intel-gfx/20201027133600.3656665-1-imre.de
> > > > ak@intel.com/
> > > >
> > > > but it fell through the cracks. Applied now your patch, thanks.
> > >
> > > We seem to have a tgl that fails consistently at DPRX link training:
> > > https://intel-gfx-ci.01.org/tree/drm-tip/fi-tgl-1115g4.html
> > >
> > > Previously the error went unnoticed.
> >
> > Yea, didn't notice this. Can't see anything obvious, besides that it's
> > a DPCD rev 1.1 monitor, so maybe not compatible with LTTPRs. I follow
> > up if I find something.
>=20
> Power cycling the machine and replugging the monitor and Type C dongle an=
d native
> DP cable fixed it. So, it could be a flaky connection (unlikely, because =
detection
> worked), or the port in a stuck state even across warm-reboots. The latte=
r would
> mean the machine wasn't power cycled for a long time and that's likely be=
cause the
> pstore kernel didn't boot (grub failed to load it due to a missing initrd=
).
Thanks Imre for checking.=20

>=20
> One possibile root cause is the TypeC PHY getting stuck across warm reboo=
ts issue
> (and nothing recovering it besides a power-cycle), that was fixed by
> 151ec347b06a2fb ("drm/i915: Force a TypeC PHY disconnect during
> suspend/shutdown")
>=20
> I'll re-check this after more CI testruns.
Ack but now looks indeed green again.=20

>=20
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
