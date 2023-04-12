Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F626DF816
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 16:12:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DECA10E81E;
	Wed, 12 Apr 2023 14:12:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A22710E816
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 14:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681308726; x=1712844726;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zm4ps7WWSpDd82XlMASFXlLKDHeeMmX+NbNLsjllOLs=;
 b=Dm1TCyt2wI/s3BO1hez8KNMC+c5zJvOo2v+/71QQ+QIgZnjtn2MYU15o
 NZ1aUYhD9mCygFWC8ITG6zkgTDmfGtAfcC7pprECJzQuUHnjJb3BKOROH
 9ZRftld6KIbItZ60dg5gJte33h8XFqv9xC1bynf96Fgi8mxlr/knsg/Od
 e/rNuJQRBhYLM33+85t0zJrofudVV2xW5IzjPcX3H+EMQoSNk+CTxKUIY
 pGOqAomvBq2UUoKnlPVH2BnMcBOucznU/M0r9RyMv07BqKvTL1k+zrhYk
 ejFyPCifRscHqBLpzvHYjgb05Bir3b/T0ny2UhLELtPR85er1QUEgbhH2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="332604963"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="332604963"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 07:12:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="719389535"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="719389535"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 12 Apr 2023 07:12:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 07:12:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 07:12:05 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 07:11:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h95NYJWC3BdrE+viO2O+by4vD+QHSHlyi2r9rKrTdk95loy9y3cxgYvd6oEruyh2JWH82I0lOfNamqo+FF7RU5vzclY/pZNXuQtZKL8mNEJUeEJ9SCiqAGpLa2NmVQ0Jfc87qKyZm67bfKMMeBvXCEJxIrGqMciotr/B9L75tVS2LiTT+YcEA8icoMsRA9WHziwGJMih95qfT8VasWvTQxP0AphK5tEvB1VAba8RQMNuzNwEpl2HTxXnV8WF4pOu2ruajKQmDmT8gWJ1QR0aZC3fMG2cWJfP0y3BFY0f6YsvHRC+54Vimh+8UwGAWOgKy7qV07X9zUg48jskfk05Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EgGjASQH2qcOKABYjFVBTeKgdwFS+CPoFSgGodH0dLM=;
 b=TGme064rcj6WnpZpHCFQvfP/r+VvgEMHoXYz+OJk9bHeFnVpMwhJQU5kCvVaduXX9BVlWNEP1avkoN7ry73PyUZAi/LUMnHir+KYyZMYDxuP6kW3U2bylAh9ye9m/OM4mIpbIqxOxZ6YBmmSN2QwwF774M/PSBfUcDWMOC91ik3kYPzdIhaUaDDpHiOeROnnI74bi8vWdH3+lmwH+4hNhELvMj+Lu8dprBsX1EDuys+6NbULJFi2MPfSB2+tsYRkBIhArVD+eM0tkCWHopMZgROB1Hk9J9t7peDJlSR3jwmOKrwJy4ecmynwLYv/prUDH+zyzZU9e1tpLZQhytCA3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by SJ0PR11MB5792.namprd11.prod.outlook.com (2603:10b6:a03:425::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.36; Wed, 12 Apr
 2023 14:11:30 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f%7]) with mapi id 15.20.6298.030; Wed, 12 Apr 2023
 14:11:30 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
 enable/disable
Thread-Index: AQHZW/z+ggztexoTfki4jDfF7FcQKK8PEY0AgBam6oCAAh7sUA==
Date: Wed, 12 Apr 2023 14:11:29 +0000
Message-ID: <MWHPR11MB1935B2215BECDFA356A48F40B29B9@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230320203352.19515-6-ville.syrjala@linux.intel.com>
 <20230321135615.27338-1-ville.syrjala@linux.intel.com>
 <MWHPR11MB19351B3CC439AB4C1A9F370EB28B9@MWHPR11MB1935.namprd11.prod.outlook.com>
 <ZDTy93UCSN4TUCV1@intel.com>
In-Reply-To: <ZDTy93UCSN4TUCV1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|SJ0PR11MB5792:EE_
x-ms-office365-filtering-correlation-id: f2de2fa5-1f1d-4580-8ea5-08db3b5fcfce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H9p8YjAOyXMlPNUDrPTAJSOKPCWffcT2/ctIhOzyBIxee/OndAGyxhcjdx8CuISaK5Y7mYgOExUGWVrqlaAvypuLD9w06s1Yjfs8oA0iPF2lSyR0uzeLhsRISaopMR1D4di5c3LPHVxA+LHIvL+zdEAWgKiydm4Gr+b5f92Q5njDegnN+Yy6Zjw0KzuB9vu4bOYA5uKhjL/e4xVD2K2aLgWqe816Zow1upg/hxSu3aSJQbUyVZ0K2b4aNlMT3DSY9yAcumbljlwjHGMnsDXdZqI3C8i7vhf9RHKRr/fcYWNy9LimTVR29CIDKUr8SZp4yv9kPXdEesP9qbON4t1p/4npAhA5bElvvYnbZ2ZCASst4IgkRQu5vOLwmt3x4aY8FdJmWtYNJV0u1QI1CabzZG6vsgyTwYtMV7Q92vvBaQGRY0qmKPS6EaHRi07hF3jttxj36k4snuSKFuVsoAcxUrSM8jPm4sHslflqbl3LNvmA/zXN4P6pDivtTafrUSUC/T1Fot4hoQRUFiIFzgIR9Y6z0MY3PLtThzK4MzAW7eoXBnf0Hk1mHpBmUDXXdUQ3gHHga/dC8nRw6ijNQKWI4oQ+6Lwcmr4aW9/w7tRLli2VnyeWn/8LztOEcRIdZuCc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(39860400002)(396003)(136003)(451199021)(8936002)(55016003)(52536014)(7696005)(5660300002)(86362001)(4326008)(66556008)(6916009)(53546011)(66446008)(66476007)(76116006)(66946007)(8676002)(64756008)(478600001)(33656002)(38100700002)(38070700005)(316002)(122000001)(82960400001)(66574015)(2906002)(83380400001)(71200400001)(9686003)(6506007)(186003)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?X8vZJn/5f/qpBlg3bP4pPkrajdwb1yOi56YxYnNYgfxsug/fdXk5SHInVI?=
 =?iso-8859-1?Q?g2mlbwE3xP7SMIS4s/K4PnAg4lujnPG/OfJ1F48tFH6Mo7PzPOwGA/0Rkz?=
 =?iso-8859-1?Q?82a/qwQ6rxo8EWj6ksRUo7bEf0qd0izPZNHkEMUTtlh5x1osZmEdsJiDc8?=
 =?iso-8859-1?Q?CrTxM6HuoK2GeGxdwtdEDTn6qZvGkpumuRNETcNgtRIhfuuiUyv9EIVxQZ?=
 =?iso-8859-1?Q?YNjkZvbKW8clp41JivxJ8lnNaw4ON/yoTE3oOCsdxJeneMHoJsYXoTGy0X?=
 =?iso-8859-1?Q?jCxH5CF3hJ4yZ7q5w0qxMBjz4gKfApDobGV/gbyE66Ss0twLBzJHA8KYHK?=
 =?iso-8859-1?Q?Ib3V7yfEB4IPYrt2QwMUOQXh3b2uklF3u0i7FGISxSLAuT8pq/r8oMOYVH?=
 =?iso-8859-1?Q?I6n3zqI3letxWReTpswrfubGF0aqKfCpqRtMkNVEU14WrRt92O/Z3Eacpt?=
 =?iso-8859-1?Q?1aRlZqAF04Wze49BGf/Ekgsgks0Ys1xYhZ1wzbqvA/iF1iPi/h5jIYTmXB?=
 =?iso-8859-1?Q?3Tc8QtZGhm4ov7c1qxZEtPlqaptvepToPm09AcCQWBCNDp0pgI4UcBvRv+?=
 =?iso-8859-1?Q?a7hqtpPjG7o/0Y71Lvj3FJyOEZxslkjB0wAWxL7FLw5NP3IHHV8oJtWjjn?=
 =?iso-8859-1?Q?j6WHRhXvjmgw4hADLX2LqmOHSosQHYm0qj6VJQ0DU4Kjl/tLgZiLLEy+/R?=
 =?iso-8859-1?Q?zNNqcemOtWyEQU2jEmVG/LMV0W1cTRerjFWjOKby37w2wFzSLgegB3uXyI?=
 =?iso-8859-1?Q?ySqj3AUuoN1iGtaUFxC2ZUJiPzvKQKrEayV+JWpbte1dgQTHMv+xxJxjAM?=
 =?iso-8859-1?Q?iRwiHNvg1oz7NeqC6PLi0Y/uDl/roieJUVnNAejb3On33trEfae06MmYf0?=
 =?iso-8859-1?Q?FURd9xuH/el89HnfSiIXNFtce5kifpLkips0EswlIIx5mInwSMsyXdmXIZ?=
 =?iso-8859-1?Q?bFpcH6JfYDLlbPXi0yVt/mHeuJJTx2yqkTlc+5KPnxeGJVyVt2qc4xuav0?=
 =?iso-8859-1?Q?tO/PI+lUvzaAQq94z7bowLCP70ayf8vC0zIM2Ft90vdUQYQSPQeVvd2hFU?=
 =?iso-8859-1?Q?MtKpHg+7STZ9TBowC1tiJUSDBVXnzRQJ4BY5P86E7PvQOdR1ynJoTd+bfu?=
 =?iso-8859-1?Q?P20hJwvpkZNXbbosFC/zy5rJgfq6G9Mecvf+yt4NZH1B+jF+WfKfkkKozS?=
 =?iso-8859-1?Q?9QbcpohE6Y30nZ06b2kEtm0MjIwpvD4nHwWAd49UFhwk5LoE48Cvl+XdD2?=
 =?iso-8859-1?Q?Sk+6IOYW3hljiNfnBEOC6fdft7GRRRpnjN2jw2lTgzlXXzu+L00AqS1BM1?=
 =?iso-8859-1?Q?orv/9VpbxSfuxdv2MF+lmWAfcyOQ0cA+DTk9huEj6Ri8T1+fYsnQwmY4r5?=
 =?iso-8859-1?Q?yQ29FvgbCpTTJqANGdsuw4CZ8zyTUi/BpT/RTDVZ0QOBsYJiUqFXLP/85W?=
 =?iso-8859-1?Q?KS7aQY5j85R6cW6BCdefIsuCfE2GJrnYMufhRubU0v0Ju6EYhBLzurw0AC?=
 =?iso-8859-1?Q?/2q8DLV+unG7Ji0Nxuy9UsyEI8Wm08Cy72rV/g1HxBEEJLMB7Udu/lM95m?=
 =?iso-8859-1?Q?hB2aKgWfgctuTiWgD3caQF7P0H1L60/+oLHZRtz2NHwFFWMyM8yf7mrTWp?=
 =?iso-8859-1?Q?ZG6WOi78qYTYS2xLcbPWm6xXjIG1vMeC/wi0ElmAv9m8Nz3P9dljMR71fD?=
 =?iso-8859-1?Q?s+pFx39saceN64Ll0A/wd5ZTVwL0gWKXDWGr2HeqwkSob16SqUz8V2x3kq?=
 =?iso-8859-1?Q?imfjtOoM/tSMDTsSTFmKVrGO8=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2de2fa5-1f1d-4580-8ea5-08db3b5fcfce
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2023 14:11:29.7193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bAIkiB68YDIImLPODR6n0h+EHfspQeHLHi3/Nfq8360CU+Bv3X2RnHYTdLxmJ2+k+GK+GZfy7BmZFXa4AKjU0Yf5kGcw8sWXRdzplRCtNFJvepqU0nSUg15rOZAEEG3d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5792
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
> Sent: 11 April 2023 11:11
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
> enable/disable
>=20
> On Mon, Mar 27, 2023 at 08:05:49PM +0000, Golani, Mitulkumar Ajitkumar
> wrote:
> > Hi Ville,
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: 21 March 2023 19:26
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915/vrr: Relocate VRR
> > > enable/disable
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > Move VRR enabling/disabling into a place where it also works for fast=
sets.
> > >
> > > With this we always start the transcoder up in non-VRR mode.
> > > Granted  we already did that but for a very short period of time.
> > > But now that we might end up doing a bit more with the transcoder in
> > > non-VRR mode it seems prudent to also update the active timings as
> > > the transcoder changes its operating mode.
> > >
> > > crtc_state->vrr.enable still tracks whether VRR is actually enabled
> > > or not, but now we configure all the other VRR timing registers
> > > whenever VRR is possible (whether we actually enable it or not).
> > > crtc_state->vrr.flipline can now serve as our "is VRR possible" bit o=
f state.
> >
> > Understood the change. I was thinking if it is possible to make
> > distinguish between is VRR "possible" and is VRR "enabled" by adding a
> > new param ? Although changes looks good to me but using Flipline value =
as
> "is VRR Possible" makes it bit confusing.
>=20
> I suppose we could think about adding a knob for it. It would just reflec=
t the
> flipline enable bit state in the current scheme.
>=20
> Another thing I was pondering is whether we should even care about this i=
n
> intel_dp_prepare_link_train() or if we should just set the MSA ingore bit=
 any
> time we have a VRR capable display. But I suppose that could have some
> implicatations eg. for interlaces displays modes.

In that case to avoid implications should we add additional check for vrr.e=
nable
as well ?
