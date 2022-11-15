Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F8B628DF2
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 01:07:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A885910E352;
	Tue, 15 Nov 2022 00:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE4E110E352
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 00:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668470839; x=1700006839;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D/JzwB1NIopktZtQKRd6q6tk1/gT+KN0hse8umv5Elg=;
 b=kXUd078zTqZtHxy6GiF04lAhpGYvq0Kjgho3lJowajNgSQHzSTrQd0KB
 JQTE6la35qpVFaHBCSp1WOPVUIXVgS2h2cdEn8PaOY2/h8IshMPoMJBMu
 MCOMGnWwuHoxSfyQp0wp/w4CrTVYS43KuoHzjs24No9ig6czIjYsg+Wf+
 058fGrILvRoQWQDtEZD6lYpH6hYvEy1riG0oU9bwh74wb1Gouv6QFkf4x
 3F73t4mfFdzid8m7keABlJjgby1WfPLGrE3MvLGjK5JsuXlRxGTEsVi9n
 1IWOSB7Sp0lLs3S3iL7C5mA40Rz9gx+Y4AKBGI/QmADV3yWjODJLU1lLw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="310825497"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="310825497"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 16:07:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="633014750"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="633014750"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 14 Nov 2022 16:07:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 16:07:18 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 16:07:18 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 16:07:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YY29niDy1Ahf/lrUq8gUzspFKxtBcoDuybWLl14oATRduTp/1bRPDZI54PY5nkUU80oBo1kw/XyylPZ99bbB28T/5ktE46OyEYRMWre/yWOHtI8Me3VsULTeQXy6XKYGfL9HOTzGTrzChOzqFymzM/JRBrKDl1qY7Gy5oYJBKbYdK4kTFc0n9tap1KOHQeteghwY6+imVBsyK547iPIebIAklgnNf3Abg7XL/EJWytuP4VYhsTDfoRqSLwFdtQZWG01q6vIGTYY3jHMyeknBdPwm59RuVrTlNWJdInWYZgNBReHhlMD3b+qnTvYQHMtlpx7nlWz1aodt16TbDgPEAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZKwyCy9ygjyXKbInzSKas15wSnsAnMlCcsE2bUTc84o=;
 b=VUBlQMKZglIl85AQ256g750sSkV4sKGdGZ6SK3uDUu/VphOxLarFCetN3+CAZhzahnr1pP2ZDv2i2+TpxjEsDsqme/Rt8A5cjqBW2AktjrSo/1Z/Bqe/bYHZT4pSdeP3QiaNDKy0/DmRAyrXxciY3VqmDKvyDSuL0My5jjzT5f9X1KvGJpmh7Tq7FgUNmQ6+6hqm7NFjjcJwfoVnKROEuxNmmdlPYr7HEMTwc65PLFcpMRBwR0ByPeVl2GKbzrpcWp3zukfNXIfPBjQKabU2SMucmr9mCodcK7zSw/+Lny7jQoMgLRJdN/BnwTj1XdOjNoachjCSdVLLrSNM6zhzqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by SJ0PR11MB5599.namprd11.prod.outlook.com
 (2603:10b6:a03:3af::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 00:07:14 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 00:07:14 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH 2/3] drm/i915/display: Do both crawl and squash when
 changing cdclk
Thread-Index: AQHY+GuqpRj5ndF1xkmRVKvqNqFwGa4+/HCAgAAO+BCAAA56AIAAAXnQ
Date: Tue, 15 Nov 2022 00:07:13 +0000
Message-ID: <CY4PR1101MB2166F7D1ED877C67D094E096F8049@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221114205717.386681-1-anusha.srivatsa@intel.com>
 <20221114205717.386681-2-anusha.srivatsa@intel.com>
 <Y3K+EWdQwpKSLm1L@mdroper-desk1.amr.corp.intel.com>
 <CY4PR1101MB21663F7C69EA4AD5984E85D3F8059@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Y3LWxBeTXE+Nt3m2@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <Y3LWxBeTXE+Nt3m2@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|SJ0PR11MB5599:EE_
x-ms-office365-filtering-correlation-id: 3a9b76c5-21f1-4e9a-4136-08dac69d5976
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iTeCT6n8+u8Pj9T2gRdM7QON+Q4lmHuFBh7U+da1pJ00Gn84B+FZouYqh4rb4sdqPwOsDVIpgkXX0nKLiVTm2vZjid8a6Xil3Ylqz/ku+Aih9csE1rUj5jS9rkZm3cTp0VtocIznk+wETABqLUkZs5uXHyYvUWWWDbjdlVlRblOnE2P81OYto4M7XZderQ6IFLpkHtucyvM97WIAnVqMLWnrubZOnscwIekMph8e7EKvHuTu8igPJdTf+KVitzlrPt2vgzdRAATDDDWWQUc6aIgUHUdnwnwhHYuB7fWo8E6z7KWmJ7ViXeJiGEq6xKOEyStuPjZtp6g1UWnec5FA6MVulrj7iUnTVicyZSxvCXq9tZFAY2a04lYb7M1Et5WW08Lz/s4EJictVFdQR0jP5DyAXwZ8xb2yvfCtpxganKmOTTl7kIVsJWLmKlQ6O9Dhr0/OSpZuna1IdXemu3gbGkc/nsSflJYq06hbAGZZ7TkFI2Tmy+K8RNUpYAyOihehnw+9zUxFLR17M5EBP4yxIyqpvOmEpEoo6UZ3F6/vGZTf36yxB+NWlNegm+NJd7KGXOMxDD/sb8UBTtOE6wRTGDpePzLfW26oH16qMJVDb1XrVZWfthgjnxUU0AaWy9UjxW4u8fn7noi7IvjLJh/j6+Zwy7YdVG267jRfzsn6xD7YDCuUdUhU9iMtLOelebU6x9tMETCiW75bVLTv19DeJDTcDI0FTG9szzhYKWfh+ajbA31nMfgEaIiBYbR4yFBsu/hgSmQ+KBna95v2npbBmxrKs+6PwcnKE2m4fERCVw8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(396003)(366004)(346002)(136003)(451199015)(2906002)(8676002)(66946007)(76116006)(66446008)(86362001)(54906003)(316002)(33656002)(83380400001)(38070700005)(478600001)(55016003)(6862004)(5660300002)(64756008)(6636002)(8936002)(52536014)(71200400001)(38100700002)(7696005)(66574015)(53546011)(41300700001)(186003)(9686003)(26005)(6506007)(4326008)(82960400001)(122000001)(66556008)(66476007)(17423001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?xmlJINfSCHS/0PiL9yPSGO1VJxo4qGbCRy819PT33/ksz9EuhHykO6y9UF?=
 =?iso-8859-1?Q?ANjnFilMJhZf/lRGFwVLKaVtOvesfsWfZ78QoS179P0vtBQ23/sov5D42Q?=
 =?iso-8859-1?Q?S7nozX88zeun8hsygw6gC4tMkQ2pN3QKqeBYGH0dtwEaG5MER2BKNtVUfx?=
 =?iso-8859-1?Q?gmqMxc700uycbdvpb28tFyMlEnz+SNn5AaniazXUbVSAE6YLLuEu0z3p9x?=
 =?iso-8859-1?Q?OAx42ozxqtlEREQuthfWlTDJ4g6VoFPO7FyWYhaNxKe3CMEY9gfilJeWId?=
 =?iso-8859-1?Q?OQ4HlTGSxRn4vOguE3AqB+0lMuHAdDagyHL74jngI4C4G0P4xOOJwYHXXl?=
 =?iso-8859-1?Q?KZ+Xh4SkDgD9v1+WKlk/YvJGIp1qwGSG7x+n3iI+CHTAPgy212rziJfbwi?=
 =?iso-8859-1?Q?86j75Ttm36irIseJ+HA7yGd2wjtDHwnGxUM8Qq6Ks/UWCJbn/Ke/dx6qu0?=
 =?iso-8859-1?Q?uNtWlKAYmCxB+58BL6es3kb0KUqDp1QesU9iTkZfEi0+wQ3k4/onV+DOEa?=
 =?iso-8859-1?Q?7Q4HxbHRscali84Qw7bcGfVUped6ht9bjwtcmi8jqwQuHifWWfdjNSM1Cd?=
 =?iso-8859-1?Q?7aTRNCGOjRFo5yue9Zb42nRGmyTcUo6lb2KziEH1mztRVrFx2hbFOurwyK?=
 =?iso-8859-1?Q?lK4flqdp/TU03hSV+oLOc9NUl+cLtWp0b42n6/wOLDo7Vdx+VEX0eBoLQl?=
 =?iso-8859-1?Q?X/TVM5yj6QD0z4XU7GqofkYUIcm3D1W3na4MTByBY8w0ggxYhpKz34wTTj?=
 =?iso-8859-1?Q?w2eWIiNuFaTb4G+8C6WeChfzHy0bXIJj9mz+pFBLEqOWP82yhu8WBok3Tl?=
 =?iso-8859-1?Q?clMNoyFdnZYGuVq5DmyEOWmZ3OtZTQmSZHni+22hPLU9JfhStHbO3Ct8WJ?=
 =?iso-8859-1?Q?R1R8UBpM9fVlIx/cMzGXNGHkU8uPIp+U9qc34aI6KK6QBx53I8R6rSKJfL?=
 =?iso-8859-1?Q?JkbcHKl5KJENFnY7MHrwlkZz5fI6KBCtkxV46135mkMl6jPfFpxZxyY/bm?=
 =?iso-8859-1?Q?XsBPVJrXjE4Rt4kIsWqcBPLU1t62c/ZYJprMkL11J7tfgLxrD9PlECixoD?=
 =?iso-8859-1?Q?nhSFSoRwA0+64aczYMnWlEMmAQCZPtNnSIJQJ1HWy9soCYfubfGwLidPIa?=
 =?iso-8859-1?Q?i83dOp5sgIVob5cawY2SjXLm07raiNTzUwZFJfndSycZjPzIQanLsD4lCE?=
 =?iso-8859-1?Q?VDNhSG43O8xPytP8lZ+/VbMSG5WsXlKGNZ9rXk+7XNQlK5RSa7eiomw5fj?=
 =?iso-8859-1?Q?/v35Ho4eAYZqqDF+pLqCp3whWrl1dz47saazHR2T5pcnihOs1aPqI+CgtL?=
 =?iso-8859-1?Q?JW3lXoQ5mNEKqhv3GFIlKhnqNsTVKBiCQa6y59Khg/ucRPW/kPWBfMQY63?=
 =?iso-8859-1?Q?aXOy86dHZtCVdRzmzZXBpN0HIhLp8NxuWysEUL7yC8Nm/ttZFPjRbuQ4o9?=
 =?iso-8859-1?Q?crh5kMbIxlQIXP7LA3dXjgsqnU6UAZDWXBstwpyTI2dHd81wo4pXg1Jw7Z?=
 =?iso-8859-1?Q?TW1CE6Bsrcm04E4DQ19lFlvCs7qa3ireHtuJGkdpYf7ZGrWAqjnGoNzHxh?=
 =?iso-8859-1?Q?aqGdXTmht60jdsD4hSC97mup0bgS+kDccTGffQBahhJNOHugUyjeLPd30N?=
 =?iso-8859-1?Q?xg2ySY41N8hnsUQ9tSV6p6OZNrPpOznwm5ZdORJVMSCXPiRsK02CREEw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a9b76c5-21f1-4e9a-4136-08dac69d5976
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2022 00:07:13.9121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3flhgQdUomGOuu3d3OxJrZVlF31/dyAouIL2Q7cIH0CwLlFVAJA8RV3U8UuxbdbZOQYROteRe3LvgH1hkuOytnDYjKLjwMuoFBjkJRXRdws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5599
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Do both crawl and
 squash when changing cdclk
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



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Monday, November 14, 2022 4:01 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Ville Syrj=E4l=E4
> <ville.syrjala@linux.intel.com>
> Subject: Re: [PATCH 2/3] drm/i915/display: Do both crawl and squash when
> changing cdclk
>=20
> On Mon, Nov 14, 2022 at 03:14:33PM -0800, Srivatsa, Anusha wrote:
> ...
> > > > +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > > +			  const struct intel_cdclk_config *cdclk_config,
> > > > +			  enum pipe pipe)
> > > > +{
> > > > +	struct intel_cdclk_config mid_cdclk_config;
> > > > +	int cdclk =3D cdclk_config->cdclk;
> > > > +	int ret;
> > >
> > > You should initialize ret to 0 here since you don't set it in the
> > > new branch of the if/else ladder below.
> > >
> > > > +
> > > > +	/* Inform power controller of upcoming frequency change. */
> > > > +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> > > > +		/* DISPLAY14+ do not follow the PUnit mailbox
> > > communication,
> > >
> > > "Display versions 14 and above" or "Xe_LPD+ and beyond"
> > >
> > > Also, this is another case where "/*" should be on its own line.
> > >
> > > > +		 * skip this step.
> > > > +		 */
> > > > +	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> > > > +		ret =3D skl_pcode_request(&dev_priv->uncore,
> > > SKL_PCODE_CDCLK_CONTROL,
> > > > +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > > > +					SKL_CDCLK_READY_FOR_CHANGE,
> > > > +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > > >  	} else {
> > > >  		/*
> > > > -		 * The timeout isn't specified, the 2ms used here is based on
> > > > -		 * experiment.
> > > > -		 * FIXME: Waiting for the request completion could be
> > > delayed
> > > > -		 * until the next PCODE request based on BSpec.
> > > > +		 * BSpec requires us to wait up to 150usec, but that leads to
> > > > +		 * timeouts; the 2ms used here is based on experiment.
> > > >  		 */
> > > >  		ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> > > >
> > > HSW_PCODE_DE_WRITE_FREQ_REQ,
> > > > -					      cdclk_config->voltage_level,
> > > > -					      150, 2);
> > > > +					      0x80000000, 150, 2);
> > >
> > > The switch from cdclk_config->voltage_level to a magic number
> > > (0x80000000) on old platforms doesn't seem to be related to the rest
> > > of this patch.  Ditto for the comment update about 150usec not being
> enough.
> > > Were those intended for a different patch?
> > Well, initially both squash and crawl support for MTl was the
> > intention. The change came to be a part of this patch because MTL
> > doesn't go through the Punit mailbox communication like previous
> > platforms and hence the churn. Thinking out loud if changing the
> > commit message makes more sense or a separate patch. A separate patch
> > would just remove make sure MTL does not touch the bits of code Punit
> > code. And the next patch would be the actual
> > squash_crawl-mid_cdclk_config patch.
>=20
> Okay, it looks like part of my confusion is just that the code movement m=
ade
> the diff deltas somewhat non-intuitive; due to code ordering changes, it'=
s
> actually giving a diff of two completely different code blocks that just =
happen
> to look similar; you're not actually changing the value here.
>=20
> However I still think there might be a problem here.  For pre-MTL platfor=
ms
> there are supposed to be two pcode transactions, one before the frequency
> change and one after.  Before your patch, the 'before'
> transaction used a hardcoded 0x80000000 and the 'after' transaction used
> cdclk_config->voltage_level [1].  Your patch keeps the 'before' step at t=
he
> beginning of bxt_set_cdclk, but it seems to drop the 'after' step as far =
as I can
> see.  I don't believe that was intentional was it?

That was not the intention here. I think the Pcode thing needs to be a sepa=
rate patch? Might make reviewing easy.=20

Anusha
>=20
> Matt
>=20
>=20
> [1]  It looks like we might need some other updates to that pcode stuff i=
n
> general for some pre-MTL platforms.  What we have today doesn't match
> what I see on the bspec for TGL at least (bspec 49208).  That would be wo=
rk
> for a different series though; just figured I should mention it...
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
