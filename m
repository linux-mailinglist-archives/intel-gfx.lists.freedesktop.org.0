Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A16147433BD
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 06:46:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 504A510E0F1;
	Fri, 30 Jun 2023 04:46:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C45C10E0F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 04:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688100413; x=1719636413;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=inirpf4/BD9alak7g05m/LgsdrZLUQYd6hGXHH4StNk=;
 b=DCTfb65vZ6m/lgCrsyWiCDBK6yVJ4SNCOz2TBoSA/l4CGyyRASNjhR/0
 Qux1mFjhQLS+Z4BT++47Y8ihrcEQmQcuwTvAGBgKg3V3NIdpl9BQybxla
 2yRiuMS2yrScavzzi86oWCL8hhtK2ALXji3KZetOiP5BaohR5w0d1kPby
 OxY79pgdh0lVbzBW93ae69r5ZOoai5uulUkH8j8tMxsnLPhr7R8y3A7JK
 8jBDb5Ak4UvJNu6cB/4IDj0ulPxCkV/X1wm95PTWrB7Slg+7Dbc4VVemK
 I9mMkSkfqIZeSOi4IPZsj+mPYJqdo7ek0YdzGhZBOKJY/x3qnmId67D72 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="428352032"
X-IronPort-AV: E=Sophos;i="6.01,169,1684825200"; d="scan'208";a="428352032"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 21:46:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="841725806"
X-IronPort-AV: E=Sophos;i="6.01,169,1684825200"; d="scan'208";a="841725806"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 29 Jun 2023 21:46:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 29 Jun 2023 21:46:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 29 Jun 2023 21:46:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 29 Jun 2023 21:46:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hmOzx/3UCNNpMeaecP3rtfs0zt5NKjVtlSsO2vhPiBcvxdd1HI0NbT6Ww6OqCtcMDlvqyWO53wn9jYwOEo/PTzTu/QdJjXbU2ymxu82cTK1VeMc9vjoBWqcd1IPcOtN5Vr1+Xm+ZVu/5FpeeQlSC1jJc+ypQg9RO439sfbG4AT+qE/hsagudZUoAZ5Pp3xOEczNcUyP9oYW7qwJcXZVLFoBp8IB6myita+34DjVjWMLTqwuRT/jO0mvHnHS4V0p2yvy7Dnxk1AiDUn3dCNAixHkpa4UIW32cAJrI9ZcjKTGLeK3MvM5HXN/ABbOTx+3GRydil11jxUxyxFtN4tlPMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a9fikIFJAuDMN1QTG5GBd+n04L18Lizk6n9TWKbl2Lg=;
 b=VIqNnGYfD9IgrKHMhO+9EVLPCYaeJOSdPVxZz1adUHtm2k9tMe3SVFr+gowyUdZdVH4/pj7h9h1YcumqhJCN/OAP+FsSV6S98O2XBlZVrKxBjJ4X/mULQrFdKNSykYKsy7+j0NqR6ePktNJMxfWNZhHUWzgp7m/AKJWISonYEjxuTFw2+4eGx70QmPEhMfnrnET5zN0rcrwA6lSoIbNnUJo6hLw2vy1L+u7sS6c3GNkkAQB1oq6PkS3ASS8O2B0wVf2aBnB5lGDkkQsF0Lk3d3LzhsR/zecMGwKbKSZtRaf/u4CSQO2M9VL+NBg340a/pLSblqQbvHTyaFXhvcNPow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by CH0PR11MB8141.namprd11.prod.outlook.com (2603:10b6:610:18a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.19; Fri, 30 Jun
 2023 04:46:46 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7%11]) with mapi id 15.20.6544.019; Fri, 30 Jun
 2023 04:46:45 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 0/3] Get optimal audio frequency and channels
Thread-Index: AQHZqd4uxJfcZ9rmt0myyND/sELzIK+hb0KAgAFYjKA=
Date: Fri, 30 Jun 2023 04:46:44 +0000
Message-ID: <MWHPR11MB193540BAB156384854A9A13BB22AA@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230628163359.2879668-1-mitulkumar.ajitkumar.golani@intel.com>
 <87h6qqsn3w.fsf@intel.com>
In-Reply-To: <87h6qqsn3w.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|CH0PR11MB8141:EE_
x-ms-office365-filtering-correlation-id: 02f1c15e-d219-4599-d0d0-08db7925016c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ddHDyv3ZOI2X4Zr6+e9gl+Mib7D29fefx8eH5Xh8oBE2KO/F84RS4BM/L2oXAaM6gfFxnDaEl12V49vwPo628UHC42Dj+1Wi0r66Fwf3OeCl8YxfMBPx5IAYcN9mplRIU5tXTPFwpTL15s2xMetSRKTvXNuXFka86ompLKdIO1PpDy1KPxNbz+Bw0nobgByZAMmXO3i7uxA0ixEkMqyxeewHWZac+s6S1iLC3LuxFKdh+8vZhnrOiI1BaqUF5+5ZFCzFXEK5iX3ZkbqViZ7jlYwtKPlxCzboccz4dsaWRrpC1AEWlue5Ob3e8Wal4CrownwX9YPnkh3Hm1THiZqewrq52562wjcahXcXrIjerGLCoTARFdf9C8AiDc4QWAVNyqQUcCWKWHyxEaqKEQSTd1e1zo0c41en1xK9JKClON7myvSPg2Kq2MsQvBRgFKUZHpuDxgat0fMbYUP7PmKtpwXfV/zZYfUXSdnVdiY/JOm5qUAWidv0NdZemzWHeZKeJU0daAZFG7wAJGAGPPLvOwgCS+274frfj6nggUEzpmtsMV8nabRNmeFvIRLs/O3ppaMGawHUDH7GO9cNQFrPLvHTJg79rwueQrzdFelwYAw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(136003)(366004)(376002)(396003)(451199021)(55016003)(83380400001)(38070700005)(2906002)(122000001)(38100700002)(82960400001)(8936002)(8676002)(110136005)(5660300002)(52536014)(86362001)(71200400001)(966005)(41300700001)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(316002)(7696005)(33656002)(478600001)(186003)(53546011)(9686003)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aF8X1XqXzeuCJFRycEzupm3IweYC1e4kuX7CUGqiaPwOQgGhwt5DUFk3Xntz?=
 =?us-ascii?Q?r0qxRRuHLBeTaUCBDqEP4aDcVZ7eUuVHkj3kpHU4B0DTSJdlWsVWvVueq3rJ?=
 =?us-ascii?Q?OopOO7k2+U2FKeWlaiaBA3Y3STGFrOoXFKMaeHsfq1zrgvOPHFDHddfk1L26?=
 =?us-ascii?Q?3UVyPaEMlJGL2iAlhDDEbUsMAh0ir95DzfQs3AKbnmTPT8ts/8aQHbJgOoNZ?=
 =?us-ascii?Q?qoe0FDXvYhBkOHR3th+GzDAHBHy/EwknD7aROMHAa9T+2FQ4kub1J5OklXXg?=
 =?us-ascii?Q?EiK/htVQ21m1Pp3MHfkhHjKQV/DbnOHiggNrEeE/IyK7KecMQ8qsYKvwxAyD?=
 =?us-ascii?Q?Q87Qz+3NyJtxIvANjHNTgOxV5epKlF0fUrSHBxr43X/S3kC0GMS6fEfr6c7W?=
 =?us-ascii?Q?Wre8iyIL5EbwcP+sPfBih1OrnAT4mdrorM8SX4Jfrk/dx6WCsgpuIZIePNpo?=
 =?us-ascii?Q?yQCG672NViIjBqIXexSOPvd568PzOgCOiCHAdBWVBOGVDPFdfWIJ2+UHv7hq?=
 =?us-ascii?Q?AZ/pgDAjZKRO9s33CDTyHwZvLI6jgfK962Y5pF2yodyY8N/TG5UKrdBgNVz4?=
 =?us-ascii?Q?zubTiYzJF91nJuyh9hAM6minDNsTgayDkplxnm5oNQRelnxSDPHQ3VE3XCVb?=
 =?us-ascii?Q?Np3Uq/OCcAyq0kMOPtCtdZu/t55WqzvNVGv7CSE+FPd/o/lXUgHjLRbcVazZ?=
 =?us-ascii?Q?r+Y6fPfp+Vq9pnAwF9z/PItgXdrurOSrhEVAjNFVCHIYrFG1sQrT+kvWxtQH?=
 =?us-ascii?Q?jyld+BzvxbXJyvtF5Ph8l8YC5oPv7ClesSsixN2vz977H5FAIBdaSfcAQIfg?=
 =?us-ascii?Q?n04pZGDIjbJ91OCaQPvrjRJOxpzZr/fMkCKMXoHGMdLIYjqpuYJxQriZXp68?=
 =?us-ascii?Q?ayBwNDVh4KLNTOLfZi4fJd27AzuoiWZqL3SORtEFj2fp/+YPRrSRCP+/NiSN?=
 =?us-ascii?Q?C/C+8hdZ3yEQJPoWM/PiQAKdKmboJ8LFnisbXvTGcDctuvp7AYzacDIrMZO9?=
 =?us-ascii?Q?jw6TT9xvtit54neojK7RuCxxRBfY5s98h2JluPx4Rup32hJcYdDploMsjVho?=
 =?us-ascii?Q?6gP/aznNRNjWYbBbx5jzQoD+AUnWjFzL90n3OVNsJBhbgSWtesS7LY0hLQbB?=
 =?us-ascii?Q?HdGYXSZT3AA+Lg3IBJdVdoaGq1hp+rfssTDF8Ni52E2xclm2LZ/JpVK4Uz/8?=
 =?us-ascii?Q?WeYp1n1rv0xhdmYr8StuFk7hu9WAyfRHXBt8Sx2qd/xa6E2J/N8TXfNAh+eS?=
 =?us-ascii?Q?zombg61LJdoBWgPLYxCk7Fto2DmXoRPyujDV52CbdY7IZCiZ/1tosq+QYV+0?=
 =?us-ascii?Q?XntQPUaO53xuAjBY4o+ACg94k1IpLbW1LZ6SlooJcyQ0+xpSESeobBAfi4BA?=
 =?us-ascii?Q?bCbx1729qkXlqWqtOfyp9HP25GBwx2MtOHVAtdhmm5HhRlkaFG2W1yhs7bga?=
 =?us-ascii?Q?WmHenoPu1SIJEFMEmfbO4JiiCrVnGFeeCpgti7ed9JMnsXAAzoMe9PEShq0p?=
 =?us-ascii?Q?tXRaT9p74c6qlAyzkR2XE2EkEgZ4uZAj++yAT3e7mz/iQpev5FKu2KUekV66?=
 =?us-ascii?Q?/eTUQxwchhp7aChi4tlDOXO0YQhEb+KubzdM1FM3B3XKapIq1u13Xl4CS1am?=
 =?us-ascii?Q?LQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02f1c15e-d219-4599-d0d0-08db7925016c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2023 04:46:44.7583 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t5ICyHv/v9mUe0AJL8MgANPqqWTBf1F+QApv3O3nJHYgpmkbmLLTNNicFsYZa35KCCjy+OSpimXHNUT6k5IzToqL/vii/Vd6IyXvmByB2Tx0Fb5+EaFwCBFYYlZpb1YF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8141
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 0/3] Get optimal audio frequency and channels
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

Hi @Jani Nikula

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 29 June 2023 13:43
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [RFC 0/3] Get optimal audio frequency and channe=
ls
>=20
> On Wed, 28 Jun 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> wrote:
> > Currently we do not check if there is enough bandwidth for audio, and
> > what channels and freq it can really support.
> > Also sometimes there can be HW constraints e.g. GLK where audio
> > channels supported are only 2.
>=20
> Why are you sending this so many times? What are the changes between the
> versions? People lose track.
>=20
> BR,
> Jani.

Due to Indentations got off while fixing one of the comments from different=
 editor. Check patch would have failed.=20

From next revision onwards, I will add revision tag to cover letter for bet=
ter tracking.
Please review latest revision in this patch series.

Thanks,
Mitul

>=20
> >
> > https://patchwork.freedesktop.org/series/107647/
> >
> > Obtain the optimal audio rate and channel based on available display
> > timing constraints.
> >
> > This can be achieved by:
> > - Retrieve the supported channel and rate information from SADs
> > - Adding audio-related config parameters in the CRTC state, such as
> > audio support, rate, and channel.
> > - Initializing the audio config parameters with the maximum supported
> > rate and channel by the audio source.
> > - Computing the SADs based on the audio source's capabilities.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> >
> > Mitul Golani (3):
> >   drm/i915: Add has_audio to separate audio parameter in crtc_state
> >   drm/i915/display: Configure and initialize HDMI audio capabilities
> >   drm/i915/display: Add wrapper to Compute SAD
> >
> >  drivers/gpu/drm/i915/display/g4x_dp.c         |   4 +-
> >  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  16 +--
> >  drivers/gpu/drm/i915/display/intel_audio.c    | 115 +++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_cdclk.c    |   6 +-
> >  .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
> >  .../drm/i915/display/intel_display_types.h    |  12 +-
> >  drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
> >  drivers/gpu/drm/i915/display/intel_sdvo.c     |  10 +-
> >  12 files changed, 147 insertions(+), 32 deletions(-)
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
