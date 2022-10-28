Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4D16108B0
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 05:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D37F10E0C9;
	Fri, 28 Oct 2022 03:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 022E610E0C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 03:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666927385; x=1698463385;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eO7Fyfz0r3hSxSrEqVPp3M+fgTTVsrlJSQQ/aLb2BJc=;
 b=NJiudp0Tc2DBoMYy+5zU0VC+kstzqNZMd8zhmumucjYUwFv0mp+nTBBZ
 eJUDBORuoSKNEmhZs8aZx5T4zdRtZXsTUBhDT6PwEXTfjRjMNoPerJycV
 jOpnM9EXtZYdFA8nESxha+PPNFOLoNEWfrdiSt68tVwBsleCMWGlpAKfW
 TaWL6iBMy3XucI/ne67seDPHEh7+TzRP+Hwyph+4wluF9apAcJPukBlIy
 MajwqHloXCLdysSmKpXeifiDl4EGUj0RU2nVc3aRJR0LnWHNf91TXSfTP
 tF/3GvJhEY8u4+TJvQeqDRdo8354kLuJ06BsFZdCVJnqO7Ogd+kk9IJNL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="288795033"
X-IronPort-AV: E=Sophos;i="5.95,219,1661842800"; d="scan'208";a="288795033"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 20:23:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="610600426"
X-IronPort-AV: E=Sophos;i="5.95,219,1661842800"; d="scan'208";a="610600426"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 27 Oct 2022 20:23:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 20:23:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 27 Oct 2022 20:23:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 27 Oct 2022 20:23:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ceEOdHs99LjCX6l5xHOpyW/vwdA/uEf3lnDgExXHWRrvMI8ZSXl8hzSXUsAE7ALeS/ZlncJirDXl/oHXBAodCHgayDN+s+3NWFl7wlhLeJ+G7eJQSJEeYWY9muSgAc/MMlmQpJB4WgjU/SSzZRm5n5oDShuBZfZOOq82hRoARH1unu+wglz6nHlpCCu4+p05FCmTMU8hg2xS1S8R0XA2c7PIXOl/oi3acD8+ns1NHwIdNlcNlz87T1x4O0n/SKUXjsYZD5k3BQ4tEJMqqiernx+/V82IuhHo7agaI705c4dT4UZvIT4uZ4WDDDD2oAGOwbld4Qh68VplZt/a+P/Rxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9WO+Va0yxJbI94AmNguLwn1BrQNQyiChTcweStrao94=;
 b=D3oOyO+udo/1dqOPCPS2YYslzzhixdhUdyqA6CoaTqp7gkatIXcQzf3fXeEcAF8d5zJsze2I7/uxutn57/rP7brjQ/pYnvmjYY1s1NG2b+4/CSJa54v9tmSzEYeJQRKJoJ9Gyd6V+cRp29xWPWdFVV/GSnFP+/phlNKOqYqLNNg302f32R8US1zZvQwb96sMip7sUECxU8i/zpT1bFo+GoJqDjwJYf0+YHUJvRcdMk3rGUd287ngITVY5bc/RzHxzlabjZZ73IbVb5ILMSewpXU+lVV7w/GVwPrLiuYxS24em0k2i3964aDA9MP4DNf8gp7s7AjB5t/FPoAhV2PVfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM4PR11MB5534.namprd11.prod.outlook.com (2603:10b6:5:391::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5769.15; Fri, 28 Oct 2022 03:23:02 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a1c5:bd1a:6241:1e23]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a1c5:bd1a:6241:1e23%4]) with mapi id 15.20.5746.028; Fri, 28 Oct 2022
 03:23:02 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYwaOE/EXAADz+NkeUK0QgUHi7O63WeiyAgAhR7zCAB3v7gIAhL06wgBv+ZsA=
Date: Fri, 28 Oct 2022 03:23:02 +0000
Message-ID: <DM6PR11MB3177CFCD0942A580C4E9FE5BBA329@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220906034803.4094252-1-arun.r.murthy@intel.com>
 <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31771349661CE3E0C2CB28BABA4D9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31777D09EBDFB4604D5E6631BA209@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB31777D09EBDFB4604D5E6631BA209@DM6PR11MB3177.namprd11.prod.outlook.com>
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
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|DM4PR11MB5534:EE_
x-ms-office365-filtering-correlation-id: cfb56f30-3c0a-4872-e312-08dab893b8be
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jtF2rI8CF0xN1Wi766nJupyvOumc40kt5b0DEx7O9va14vo/JyxxlNv46azeUKHDmbPtzeTnKXZ1bjBgg2PB0zSun0o2dgQoUcug16yEOnzi1eB9EZb2pwY+n5s6hIjYwxT7XUC68f2iBIFSd0IsH/fu/41lKofr0NqG08NM76XCJohbJ3dYkU8CdTR3V3VNacUL2eEkLwXXQkx2NqJyD/ujC3zT7Xoo1Vsve85zCzBTxRPORb/RZCkHk20X6xCxzLv+5wVhHGnB/0TfYTi/l89ks/ybyyKJNqv6gzzJpQ4e9UW/3+O5JF4kpo22Tk7pEaWzWjSNcRC0XREenWp7PN0UPRJa7LLqh5aJkyHATqamcSlms2WvanvYUPmiQS2t/8xwtzl/kb3tWLEMJCSsuJCJgv0oEdFbsp3poI6aZ+V6SU2mnE5q1R7Qjh9H374LPnXAx4F2Rq50F4pqZ3HmOuMH3qpTCVhImVkOyOqGwQTHfqE8pPd9W+GscAqGbrPxuApSUBMXur+9bHQGr46IAchi0kwlSf6kervcd1siB+TFttkod+yIJ1UxSF4Mr/jJLtLHVn/J/gTuy0BR+5Bw3Oa1mrsLCC0UPTq130xxuoS3PZtcOGQ1u3sSIvVN060r5tCB1PDwjuesuzm80OWj/JNPHTUjz/9N3u9eeYJZSq1CHIcQoAQyE1nhT3Nld/jwv7AVN/JaI0HG4c3lTWpbPmlK3oArRX3z+apSw1+bUqnrcY2sIkVtXk3tMKjNr4eZbAAhJOZqkDCDqOuEr2FVGQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(366004)(376002)(136003)(346002)(451199015)(122000001)(86362001)(316002)(107886003)(41300700001)(5660300002)(8936002)(52536014)(186003)(38070700005)(38100700002)(6916009)(82960400001)(9686003)(2906002)(26005)(83380400001)(76116006)(66476007)(66946007)(66556008)(66446008)(71200400001)(64756008)(4326008)(55236004)(8676002)(53546011)(478600001)(6506007)(7696005)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p60fDen9QbzHEL7NEGTPL86TL9xtK423EXAc7M06iEOCsrArDV/jRB685NTe?=
 =?us-ascii?Q?gp5mw8RTFiHXE8e5W1JpGZzvaJXArIsT3jQMkm1Qkmes0n4DG9kFTtbfObr1?=
 =?us-ascii?Q?H4iKVDb8Gn2tNqm0bXC7ybb/5XBAWucl7OKV6QRyYUifXCuJZ4rqJ402gmDe?=
 =?us-ascii?Q?3X7WCuy0YXcYlnPi0XMQteLsv2MhS59lJNTceE2jrf5pHL9RTF6Qh6/aazTj?=
 =?us-ascii?Q?GvouKsqcVkvxDHqiGDr4NomkkWsz+uCiDWCWvQVRPTAtuz+EuzBb++tExOlE?=
 =?us-ascii?Q?0D9fUmK/Hx8X6WaUbI3n6ex/Mk234V0YtHAUo+jcfFSwKKzzNPVGtLiEte5N?=
 =?us-ascii?Q?6hJuNQQw6QxxCZZdw3RbyP0jQSJ7CN7NihA5Y2Rn/xEVJfYkotPcdvt6Kmm1?=
 =?us-ascii?Q?3s8jpKQiEIpW91T3IaMUsQOCYGSuvZyHfC2KG4H0ClQuvpI6Ou0Ch2txYBaw?=
 =?us-ascii?Q?tAyZfuZxBd32dsUzCGgsQ1TVM0MTnB8ZtW2oVujB6+VS/MyN8r3E/RpYkq77?=
 =?us-ascii?Q?reXsSKbqL0uvBo5kf0//odIIGLa7cByuHKsiTUfHwfOFuyXT7V3IEE2UL10/?=
 =?us-ascii?Q?oyQjVB4JEf8TvEnelWDJsMlceHZHf3haUQNE2k8ZJArhV5ooK1HV6P/Tx/fm?=
 =?us-ascii?Q?MKyceO7kNmd9m8RuF4WyT5BtXqI/tgSxxQB5Qs2oMoKmV0/HoobqqvKkr8/P?=
 =?us-ascii?Q?lcTZoiABmtxyw8CggY93/i1ylH2Td5oXg0xkT89jeBLyX6F7D8O2PX/Rx/9Y?=
 =?us-ascii?Q?yni6WzVWV3NTfx5PKXAFmdaaWeVcOmpIVIbW5n/LGgYg99jJYRG7/uqkL2jM?=
 =?us-ascii?Q?iHHUqCOgpTxWyI7gv5gyTtiuMb1zDZYa+hXtdAy0i0RvuXIkvPFtNFGC6rsZ?=
 =?us-ascii?Q?pIdd1OOdJM5oLXsMKlDb1gtQcKuS2CMf/X0T2AeulIIzZPX1EPgZR4T19C3e?=
 =?us-ascii?Q?fXrD9+76H0mHc14eokVepvJPNhYlKBU5atfem/P5vhA8DL7lHPke4g39uj2e?=
 =?us-ascii?Q?6m0pKKx2CFcg/QzntLEvAI+6t/IbWd/L1jWg3e2kRZHRGkKweA8kdUxu8GVb?=
 =?us-ascii?Q?cVO/Eyag+9mPTbQymHCxs/E1VhW0EMOgjpvzOljUpBnjUJ+8AUqHrFK5assI?=
 =?us-ascii?Q?N+bBQ20UK4nDi9yEL2ZYbi7J3klbyCH2Hx4HxLKO/AgFFRJa8JBVjgTjuDna?=
 =?us-ascii?Q?kBDvxAv/Y21H1P/v3/xiQm7ViDzKxIspceNhMx1X+o2KIm0ey9PrHVsZTfTZ?=
 =?us-ascii?Q?kl1D2cMcT+yOdBTJECI/wal9ZLajOmmPGxYV0kEUzauPQrLUkmHokm1aYaJH?=
 =?us-ascii?Q?mbmwBIrZOWkxFIp20ilNCA6hu0KWVNMOfzXZ/gSV3k5nTYDE1o5mgBntp0s8?=
 =?us-ascii?Q?9RJOVT2JMltIVtrEz7SlOhE48md8cD9Vagknum35p8/0t3NWb+QWN2SYJGSV?=
 =?us-ascii?Q?wKd+/a//eALb8oGJD8w7DKMZxzkS0T6xC5keJTAdTf6stMekyJHLv64fx7zK?=
 =?us-ascii?Q?O9Zgo+qwpE9oriy7uyPEEKNXaF0Ef2FQxckkdBfOhgTQ49DVmaH2MTlAKj5g?=
 =?us-ascii?Q?a6IB2UHbj0m/HKBNYxqk4nau5X8apWTDh0O0vdcg?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfb56f30-3c0a-4872-e312-08dab893b8be
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2022 03:23:02.5098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dq7TNcVU7zknyQ65E3zpq8w/3zthnE2ri5x3YtMbEwmpPYE23pIzbL28x6IRW2bJgUth6qRK/1/E4PitUUv4HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5534
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

Gentle Reminder!

> -----Original Message-----
> From: Murthy, Arun R
> Sent: Monday, October 10, 2022 1:24 PM
> To: 'intel-gfx@lists.freedesktop.org' <intel-gfx@lists.freedesktop.org>
> Cc: Syrjala, Ville <ville.syrjala@intel.com>
> Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
>=20
> Ville,
> 	Gentle reminder!
>=20
> Thanks and Regards,
> Arun R Murthy
> --------------------
>=20
> > -----Original Message-----
> > From: Murthy, Arun R
> > Sent: Monday, September 19, 2022 10:38 AM
> > To: 'intel-gfx@lists.freedesktop.org'
> > <intel-gfx@lists.freedesktop.org>
> > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
> >
> > If no comments, can anyone merge the patch!
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> >
> > > -----Original Message-----
> > > From: Murthy, Arun R
> > > Sent: Wednesday, September 14, 2022 4:21 PM
> > > To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > > gfx@lists.freedesktop.org
> > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > buffers
> > >
> > > Gentle Reminder!
> > > Any comments?
> > >
> > > Thanks and Regards,
> > > Arun R Murthy
> > > --------------------
> > >
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > Behalf Of Murthy, Arun R
> > > > Sent: Friday, September 9, 2022 9:17 AM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on
> > > > Linear buffers
> > > >
> > > > Gentle Reminder!
> > > >
> > > > > -----Original Message-----
> > > > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > > Sent: Tuesday, September 6, 2022 9:18 AM
> > > > > To: intel-gfx@lists.freedesktop.org
> > > > > Cc: ville.syrjala@linux.intel.com; Murthy, Arun R
> > > > > <arun.r.murthy@intel.com>
> > > > > Subject: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > > buffers
> > > > >
> > > > > Starting from Gen12 Async Flip is supported on linear buffers.
> > > > > This patch enables support for async on linear buffer.
> > > > >
> > > > > UseCase: In Hybrid graphics, for hardware unsupported pixel
> > > > > formats it will be converted to linear memory and then composed.
> > > > >
> > > > > v2: Added use case
> > > > > v3: Added FIXME for ICL indicating the restrictions
> > > > >
> > > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_display.c | 14
> > > > > ++++++++++++++
> > > > >  1 file changed, 14 insertions(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > index be7cff722196..1880cfe70a7d 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -6610,6 +6610,20 @@ static int
> > > > > intel_async_flip_check_hw(struct intel_atomic_state *state, struc=
t in
> > > > >  		 * this selectively if required.
> > > > >  		 */
> > > > >  		switch (new_plane_state->hw.fb->modifier) {
> > > > > +		case DRM_FORMAT_MOD_LINEAR:
> > > > > +			/*
> > > > > +			 * FIXME: Async on Linear buffer is supported
> on ICL
> > > > > as
> > > > > +			 * but with additional alignment and fbc
> restrictions
> > > > > +			 * need to be taken care of. These aren't
> applicable
> > > > > for
> > > > > +			 * gen12+.
> > > > > +			 */
> > > > > +			if (DISPLAY_VER(i915) < 12) {
> > > > > +				drm_dbg_kms(&i915->drm,
> > > > > +					"[PLANE:%d:%s] Modifier
> does not
> > > > > support async flips\n",
> > > > > +					plane->base.base.id, plane-
> > > > > >base.name);
> > > > > +				return -EINVAL;
> > > > > +			}
> > > > > +
> > > > >  		case I915_FORMAT_MOD_X_TILED:
> > > > >  		case I915_FORMAT_MOD_Y_TILED:
> > > > >  		case I915_FORMAT_MOD_Yf_TILED:
> > > > > --
> > > > > 2.25.1

