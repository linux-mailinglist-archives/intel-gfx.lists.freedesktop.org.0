Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDE65EAEBE
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 19:55:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBD1B10E080;
	Mon, 26 Sep 2022 17:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57A2410E080
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 17:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664214945; x=1695750945;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3BrI8wtb04mTxhyvHNsX4+SSNAKEoiL9atKfY7438O0=;
 b=EJSimFZ1LPlov9iVv0/4pjEcvkZvLPr/+UVLpZKn+g5QA4qsoNKrOVcF
 wBZSO/Gl55a90ze7lfs4SttCiws9Fv+cWQXdN9z9dORD8kZbOzJFRXGbp
 PZGpsi7JuF3Jkt3MDzA6YySir1R/LrMSR22088itn0IYaCJ6z/MSpSfpz
 l5QG8KoSfribo9BG4JDa9cbMyrWV5SSBR+B3lvJSPP86kVz+AeBnh4eip
 kJ5PoZ7+qSt2taVtiHvtVIv2A5tSFS0AXVpDdzhBELV3yCC+7gzRfGVc1
 SxNtyyWhu8qDssm5L0rqxArU/YkdBkjEnPhR2UxR6Nsdf1XVnCGIvKMsZ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="302003987"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="302003987"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 10:55:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="725147498"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="725147498"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 26 Sep 2022 10:55:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 10:55:32 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 10:55:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 10:55:31 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 10:55:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NwgbSnnpKnkxergFDAihjJI2d9kNNYbRPvNEPQHr4x8YCG8yqXrbhmvnSEGKJZokgOR1eAf/L7Jp/aJGIN53OP/Dza9lYRHraS1JqNghSUnEgKyvNRDhZwL4qBjYZAe9AIAt2M5J0JtCX4jcIZxb66ZLaLrzB3LVexX3Nr43tFarnfzByEMIF2LtNq4BxcElzeRERutpYFBPa7py28LK0S9B0doCfK6/YRXohl1p8uV2NBMJ878uSKcdptFOrPMb7tc3fauWeXK80/uT6tWwj9Zc0Nsz6s7mOsijes3HToZd0KxX1ZhYYeyRkYk/6FjHxSGEkAcgEV8IGY+AHOETZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3BrI8wtb04mTxhyvHNsX4+SSNAKEoiL9atKfY7438O0=;
 b=bcf/tCzV/KXMlmsoOpSt9LFfmh/ISzqryg/yTmNHhdehpWPDZOsoOBAUolpxzTHGTZwCt0ZC8S6U31KLyBuECjAXGtRsUUdxFfopT3cPAGIQuGu1bY27jNy33iFLlpl9D0qLZGa02MduGho1mnI5ikMZrFjva95Pf7m/cnbc/UVKd9KIfUwrqjAMcd271OLD+SvjzxT/iOrNfJX8w6Rh/qzrXOGvFxOPclmYRogpHU0OpYS91HThdwTerFddW+l5xEIXWOkXwNv1yOa8q6/HIa2lsL2otyWnHKCXrfiLYg9HL2lfuAmtac0glMFimlLxipM3c2j35uSWFUKRoGdgBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by BN9PR11MB5482.namprd11.prod.outlook.com
 (2603:10b6:408:103::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 17:55:29 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%10]) with mapi id 15.20.5654.026; Mon, 26 Sep 2022
 17:55:29 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 0/6] Introduce struct cdclk_step
Thread-Index: AQHYyi6kDFMVlhHjNUK4AMz3dDZiPK3n/zGAgACvYkCAADVwAIAEYbDAgAAkiwCABJnh8IAAAqmAgAAHEHA=
Date: Mon, 26 Sep 2022 17:55:29 +0000
Message-ID: <CY4PR1101MB21669A35B55D4E610399966CF8529@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <Yyl3sZ/zE4eZR4fH@intel.com>
 <CY4PR1101MB21666FC6A193F1FDA0B2A96BF84C9@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Yyo3pJ4QD9O4Iv6N@intel.com>
 <CY4PR1101MB2166290BF7A081C7C3A966F5F8519@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Yy4DPNanyNsqC+jU@intel.com>
 <CY4PR1101MB216654E040AB3C6B8446961FF8529@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <YzHhi9b0N5szcRcF@intel.com>
In-Reply-To: <YzHhi9b0N5szcRcF@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|BN9PR11MB5482:EE_
x-ms-office365-filtering-correlation-id: 3a9bf35a-c6d6-4a23-fee9-08da9fe84ca6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WI6WwW4/y4VndkfBdJACuhxn3Xz5rDQwUNCx2d3RQprqh6vIXfVGJt3omI0NHT3E9cLhLM2G9RgWv05pi3LISlI/kmPeARcAvPnTpF4TuxhVOrMM1FeQPeuI7/3t6X02ELEalhLskSYW1AzkZW2GMU8AZPSnH+pHZmUpTV01a8uifD/A5yrwTr/UFe8OLUx8SPcOKP6yg3omFcrdJgcM77/JjbhOeqSHC6NgluvEQWQn3JRe+0WaZzQb3HKURkuoDPLg8BC1AEp5HYEntydCIxVgByoGuIWhJ+zkhKtG9akx0czs18oAzjSu5KSg8I+PZmwZXD6LDVrlRtEKnE8I8nStRZa4eM0ISpIx5RqntMZ+v8ZiN2EnalE97EFCFKwP1CNLsWTAioiSUo9SPJT3efYkbC2FJWeYNvJRcz5bbLbdR13I8QNZ4RAh+RupQN8KkPO0CyIEE6kuBTiPt4caU+Gb8MUJCd1Yh32HPqVV8OHO5/rKJUh2ZGF2CrflIwK6agtqj7+IXg57yIWldedf88pP1gXtlOKEaG5erranbkhFZEZKUpxJm/JU8rqL9/wg94+ADG4I1S84xcUxYHwQFBgYV2ckugAy0U0ejIEhuyvp93rE5UE07j88vdP4FRUu7bbeTZM0EDdHzmwEBqNU8MnFgmn42FA0jv4T2xvOh2z4KNb9H0GtT4bUzJCQ0pgLf/ZLlU71Sg0fRp017LOVP7N84jt3ReeNLLc+co74xbhC4rnJnEmGb0ed3ePoVBoP2oT3nPJBStBRWR1SNV9nKzcaccVTO5dn1JRCnA8IX0k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(396003)(39860400002)(136003)(451199015)(9686003)(2906002)(33656002)(66574015)(186003)(83380400001)(38070700005)(55016003)(38100700002)(122000001)(86362001)(82960400001)(76116006)(66556008)(66476007)(66446008)(64756008)(66946007)(8676002)(316002)(478600001)(6916009)(54906003)(4326008)(966005)(52536014)(53546011)(6506007)(7696005)(26005)(8936002)(5660300002)(71200400001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?tw10CKDnzrnKTJFNQRyWVHXg9qR8d7e2lrTFHpKZ4tGIOm0h1i1g6dBxWy?=
 =?iso-8859-1?Q?b7ygapsXmr3+Q8u7cHhPmhgUnYeDT7hQJteyZeHRaGEBVUJ6cEXn4G2Hb3?=
 =?iso-8859-1?Q?OdLUMF6uWjddXcWRTe06nYfCvzGeZ9h8CPgaKDfMdDdIgwZhzTJaIgmIDe?=
 =?iso-8859-1?Q?mWs57fkwCcrdJ2aSzJWkKc8g0nIZWi75x11NgVOmRWB3ZR3r9BItNs8GT4?=
 =?iso-8859-1?Q?REHK3+59nYdH9Se9QffJNFTKj3Yx0gwb5pq4FEObpw+vR70K6EuRYC/0w6?=
 =?iso-8859-1?Q?mjlh5jnNSCrfx7uKloQOBMjGJR+BVyARtDb0DXs1RdTfWXcRaEd6R2+/0+?=
 =?iso-8859-1?Q?c52ZMfUMJfcieA9j3bKePTg4TqXAevGlFUGMkpaotBgs85b6LzR9/TSEWP?=
 =?iso-8859-1?Q?FFImI/OPp1BIHfrZmk9HuqrTyDveXSFDt8StbyUgtI3c+E1DQs3mHzc0rY?=
 =?iso-8859-1?Q?h/AUbHSTQM/z6GChEjkLLFxiphshN84KC/T1THVurLMXml9+DUbdqVaPUe?=
 =?iso-8859-1?Q?Mi0XhB7yvlcu2LrhN7xAdbi9D8N3GtrVruUkoqZlkOtwYBvsLLLZeXZBDj?=
 =?iso-8859-1?Q?ksvSrxzjS52otglm1Knyf2SuOyWPrwAGnrKsbvTolViYn6YjxgnCdnLCpR?=
 =?iso-8859-1?Q?ttqDG+A5hO/uI3BLTTk67WBNZxz2A9ogB7xRaRJr/Mwl06HYXGsoJ2a4+a?=
 =?iso-8859-1?Q?l7M/jOiz/wr86HSt9Nu9RS8a5jjl6QPXU5Lyd8XjK4ehiLyCDVbvznnxZx?=
 =?iso-8859-1?Q?/c6/q/BEn28NA+OLL7nGXG5biJvm5T6BaEddcrpLfIafwMfmtZMcyekFyU?=
 =?iso-8859-1?Q?jCE02ibZ1cDIslxtwIIcB5Q2BsCWb3oGrb43mc0b34qVODPQPPibXv8lTO?=
 =?iso-8859-1?Q?nl22zy8dzgTdE6cf7AN/v6nkxBoyhQAiSQ77Vn5XuPvUNCZDS1VUHlLbMV?=
 =?iso-8859-1?Q?DOWDB334sjY7N+SY8WqtVX2GRjWPwn0kHhq7IuSgkni5cEh3owNtUabfVY?=
 =?iso-8859-1?Q?f198A/0IV7LieQUgXy/RGMC3vVFN3OpwSGfP9kJKjAXNcLu/g2AC/KyXD9?=
 =?iso-8859-1?Q?Noc9KBuYnV8LXY705zTEcCAV0+jkDhVUveLaN6R5wnDj49lp7+nOevaMdc?=
 =?iso-8859-1?Q?QIDSCuVgRFgxtGstdYjAolQwKh7FZHYcZly/V95E/G/GEbx8v4RVhULlkJ?=
 =?iso-8859-1?Q?/wokc1VjWMLW+Y+UIsyYDxz91NVhs9DPqwsjgjXgWMy6HGue4MBdoykrfj?=
 =?iso-8859-1?Q?GS/q0gznuE7vVzYYmzTnUb/0CMVxzuxvec6aBVOogHRVqRZYZNjaEnA0yh?=
 =?iso-8859-1?Q?q7gEVhZrpvTzyukl+5Isl5ekKGClkylXo+BXaj6RNfgvOyZOTmMxKfoU3E?=
 =?iso-8859-1?Q?XMidp1TTrfyYsS/QqVQmeRq4F+eaxRu0l/VnChV+KD3GpFl2jtbg0578/m?=
 =?iso-8859-1?Q?VMHLvfda5jdodFtqhhawlziHmOWMKjY8sgJWFDfBuCL4VdYkI+LVk7oXx4?=
 =?iso-8859-1?Q?Ma3Jh2aAQZHtechIhHn6LhFh9muyc86QppLO7CDRLdOU4ecdCAjx5fQdXc?=
 =?iso-8859-1?Q?CHaDcK8dCvFNhLZGw4SoDm/Vx73OtnPhesgpt+TClh0zmQvfs/sMAR/BVa?=
 =?iso-8859-1?Q?AdW0SxZel71PXZEOT1KPMSb4c4zdpuU8SINyhGpTrifDtQplEzbFyhWQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a9bf35a-c6d6-4a23-fee9-08da9fe84ca6
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2022 17:55:29.3119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WDFvmc5AGlpG0iVK8728Bk5Z9FVTpZJeRPjV1f8x/gPMkaQVSC89fyxRPyeKcaBCwhfMWT32041MMbEsOSUdC9Wp9XAoRiz2Egv9dQ9535k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5482
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
> Sent: Monday, September 26, 2022 10:30 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Navare,
> Manasi D <manasi.d.navare@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
>=20
> On Mon, Sep 26, 2022 at 05:21:40PM +0000, Srivatsa, Anusha wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Friday, September 23, 2022 12:04 PM
> > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > > <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>;
> > > Navare, Manasi D <manasi.d.navare@intel.com>; Roper, Matthew D
> > > <matthew.d.roper@intel.com>
> > > Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
> > >
> > > On Fri, Sep 23, 2022 at 04:56:53PM +0000, Srivatsa, Anusha wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Sent: Tuesday, September 20, 2022 2:59 PM
> > > > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > > > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > > > > <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > > > Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
> > > > >
> > > > > On Tue, Sep 20, 2022 at 06:48:46PM +0000, Srivatsa, Anusha wrote:
> > > > > >
> > > > > >
> > > > > > > -----Original Message-----
> > > > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > > Sent: Tuesday, September 20, 2022 1:20 AM
> > > > > > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > > > > > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > > > > > > <uma.shankar@intel.com>; Vivi, Rodrigo
> > > > > > > <rodrigo.vivi@intel.com>
> > > > > > > Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
> > > > > > >
> > > > > > > On Fri, Sep 16, 2022 at 05:43:58PM -0700, Anusha Srivatsa wro=
te:
> > > > > > > > This is a prep series for the actual cdclk refactoring
> > > > > > > > that will be sent following this. Idea is to have a struct
> > > > > > > > - cdclk_step that holds the following:
> > > > > > > > - cdclk action (squash, crawl or modeset)
> > > > > > > > - cdclk frequency
> > > > > > > > which gets populated in atomic check. Driver uses the
> > > > > > > > populated values during atomic commit to do the suitable
> > > > > > > > sequence of actions like programming squash ctl registers
> > > > > > > > in case of squashing or PLL sequence incase of modeset and =
so
> on.
> > > > > > > >
> > > > > > > > This series just addresses the initial idea. The actual
> > > > > > > > plumming in the atomic commit phase will be sent shortly.
> > > > > > >
> > > > > > > OK, people keep ignoring what I say so I just typed up the
> > > > > > > code quickly. This to me seems like the most straightforward
> > > > > > > way to do what
> > > > > we need:
> > > > > > > https://github.com/vsyrjala/linux.git cdclk_crawl_and_squash
> > > > > > >
> > > > > > > Totally untested ofc, apart from me doing a quick scan
> > > > > > > through our cdclk tables for the crawl+squahs platforms to
> > > > > > > make sure that this approach should produce sane values.
> > > > > > Ville,
> > > > > > Why have a mid cdclk_config? Cant we use the new-cdclk-config
> > > > > > for this
> > > > > purpose?
> > > > >
> > > > > You either
> > > > > - start at old, crawl to mid, then squash to new
> > > > > - start at old, squash to mid, then crawl to new
> > > >
> > > > Tested the changes on TGL(legacy) and DG2(squash). Took some time
> > > > to
> > > understand the code but the mid cdclk config logic works. @Ville
> > > Syrj=E4l=E4 does replacing the intel_cdclk_can_squash() and
> > > intel_cdclk_can_crawl() with your new cdclk_crawl_and_squash in atomi=
c
> check make sense?
> > >
> > > I don't think we should need any real logic at that point.
> > > If we can squash and crawl then I think we can always do the cdclk
> > > change w/o a modeset, at least with what we currently have defined
> > > in the cdclk tables.
> >
> > @Ville Syrj=E4l=E4 is this patch in your radar to be sending out to the=
 ML? Or
> should I send it on your behalf?
>=20
> You can take over again if you want.

Will do. Thanks Ville!

Anusha
> --
> Ville Syrj=E4l=E4
> Intel
