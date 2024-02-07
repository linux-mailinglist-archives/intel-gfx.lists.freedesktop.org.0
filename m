Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A9F84C505
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 07:33:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D219F10F059;
	Wed,  7 Feb 2024 06:33:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LWzwbyYs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D7B910F059
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 06:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707287632; x=1738823632;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B4Tl6COY8l/O2DkYnA4Egko35H1H7zmNTQZCzVMCH/o=;
 b=LWzwbyYsQD3S7Ba6grPq1MaOOIqGZqL/gRhE6gAHAjWPAxc5e24dD770
 9O5gHgvdB5DwXhI2Wubw0Qvxi1/tgyb/3p9qyYCpDgOiPuABXz+ewgQos
 hoAntryDIR4TFRQZQ9MjpfHNZe9GUANMtbpKc87KCtzI6twilVy7rvbFp
 UurcJKPJN+OreWQ/MnZCF6zzfOuvaWRRrUSGsrsJm4bOTrjrcp0gVyTzy
 5xKj6084wEY7b9JpXl0wMbzjiMo7kCMKshZNXVJ7tBs3mq7VWsJDfXGne
 qj99GzN8nFHkgXYnseY5RJFv8zFOm1bgueTNzfN85OJcM53wL/HfytGNF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="4704535"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="4704535"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 22:33:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="5867635"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 22:33:51 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 22:33:50 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 22:33:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 22:33:49 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 22:33:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EqPtCu+UPgK3F5ezX3fNZ2K8OhG5Er532u2Rp5vh2HpHDxKSI6CnDyo17c4rC7Wt0Q2vb3NdcNeZdRvpiGvLamn/xFiNq4OhcX99oVRV0WV6Fa8YRJxFbMIGiMErfwcC5I61iK4nFY3lp2IDKRkHFzWH9oFxIHqD3RFw4EqXHB0wjx+IcA+bY0lAN3bSjHGk2QLUxKErRWbt68UsRBhGBBRVnsyQAisv0KaJolFIgNO1t/OpaFzZ9p9zMO5x4518QuzMwJ34O65vQy7Q1e2CQ0HmBmWnJCqnRzVjLXzhzVKaj1qZ5hQm9C2071/oSAdv94++DCeJ9hL78TalgIqnjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cwO6eX0vaXmanth6quaAD7DHJOPiQCK7+L1Bur/+M0o=;
 b=OJGEM+omMeb000TYsl269TnGD3nEOwS7ixUK0T/ojgXTX2qBMGS7wN8CZKeKUacw93PGPnrs0JG4uo48tjJTm9EWoxGNUNCpzVY8WoDKYCDjqY/cSXm/0KpLkikbmZQUX8rV36HxfCiS0VLSSHfywTtKddkK000Pzp5rXut+l90LGVPj8jNQvU28fAmgbgjCMiz1y9nH8N+X9zfQoWc0S+Ew19Ml0k9zU11kexPWcyYNK5RsnrzUM68y04WHDyP7wLuUJwgG/CI3eLpqkTFDK2DCo+ExZfIOei9RMe0suOHib2/eDa8n+J9prlC0fhyhpl9U+1Ah1aoBc3fiEj6EEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN6PR11MB8169.namprd11.prod.outlook.com (2603:10b6:208:47d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Wed, 7 Feb
 2024 06:33:47 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7249.035; Wed, 7 Feb 2024
 06:33:47 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: RE: [RFC 2/4] drm/i915/display/dp: Dont send hotplug event on LT
 failure
Thread-Topic: [RFC 2/4] drm/i915/display/dp: Dont send hotplug event on LT
 failure
Thread-Index: AQHaWOtqXCNYqQwHCUemvTMEbySyebD9MJUAgAA5MHCAAQIdAIAAAHZA
Date: Wed, 7 Feb 2024 06:33:47 +0000
Message-ID: <IA0PR11MB7307295B726A12C6B36E7D67BA452@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-3-arun.r.murthy@intel.com>
 <87ttmlddo1.fsf@intel.com>
 <IA0PR11MB7307F175201A8AC01FE7EAB2BA462@IA0PR11MB7307.namprd11.prod.outlook.com>
 <d6820247b64c63a230f105dd25ee78fd955e0c23.camel@intel.com>
In-Reply-To: <d6820247b64c63a230f105dd25ee78fd955e0c23.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|MN6PR11MB8169:EE_
x-ms-office365-filtering-correlation-id: c82fa7fc-b5e2-4613-d744-08dc27a6bd6b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ISQhEAmXVfrHlU69UrHfUb9xdAKwehVHx1Jv52+j6vXKNjlflQzK0OP9phwcyu2EspGeSwRL1fpRKBvZW9rH8Zfywf/GS08kPc+TOW0z/q89QkdnsApXQRGtogRMbWfI21V0DC9aZqi3zlBJvqS/bGapEMOlRviIuo2e13213qQyWRMHmb8EIVsVMV2//+8IA1dz23gIsAPeXd2pz8Jk45SL0N9v6dKLp9GDuvSTjcs4WGwxlPhEv8oyhZiVhmNTZLcTI8HyAlXQK5qi7RB1WAEXIjCaO07hvRXFAxUviSvv82EggdSLZR6s3ruyDGJjw0xWptkRUVutrEYaB9WOrqDTV5XBeSa6l80fBmHS2kErzMehwCDZrnZLLG24vB+1Idh5MZucrQaImURB6cCAP/wZfWvD1DUk5ZqhJyO01042sjC8jxE0x7F53Ut8hghF7ITGp+92pu0F1QJPLmkOHRfXQyBgzlTrlAUqyUeYa/pkdK+zXzq2VV1mJL8YDDZGlN5ZwcC6ZnAbkrLHxl+IgCw0q6WYv9/55iaOF0jLDqOAeNW1Lk/lfmLbvJ2snuDmAxPWTbkG96WFNtNqIfooVFja2GNtQBbsWZJJsyCcvWs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(376002)(136003)(366004)(396003)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(5660300002)(52536014)(2906002)(55016003)(83380400001)(41300700001)(38100700002)(82960400001)(107886003)(86362001)(122000001)(6506007)(66476007)(9686003)(8676002)(7696005)(53546011)(66446008)(110136005)(71200400001)(8936002)(478600001)(54906003)(64756008)(66556008)(76116006)(66946007)(33656002)(4326008)(38070700009)(316002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/J3g3oLOwsuoa+WNTmRwWQEzkD/Crz0w2eRRBxDWijVJuwgJ80P0pEbFbu/8?=
 =?us-ascii?Q?9NH0zo5RT/i5MeXBRqkF6kZYMgqVGoA+evMegJV17SjC2xchyccgcdHvay+b?=
 =?us-ascii?Q?8lgX+jv6M7uSLurxBXMJ3AFmdh8xSxFq+IdJbHIxyqesczqkgzKU19u3P+BQ?=
 =?us-ascii?Q?4DYcsfEZ58h8XPE2fdWDQD3tqZkDpz/rwYrYIxAbHjzHqE0HN1eE7fvnUMCP?=
 =?us-ascii?Q?PuxLaCVv7reQkgY5fq1oueLJkD48h+Dlp9EYU7rjdtobtkYMSaC4xA7qo7XC?=
 =?us-ascii?Q?vwfBvxEN17KPNWl7++xvnswRVzgeEEejzSDhxt9Le0drsGJkoQ7H7rVj1YlQ?=
 =?us-ascii?Q?Q/TV7XL5EFbEmVgOu22MQpiK6nNUqAZgBTwQSRhfhPnF+A13s6t7NSL/BCeo?=
 =?us-ascii?Q?t1W5T3qKCMlJ0Uhjkm4roX4JGnU5jKfWwMl3Zgt4LDg+SmlEpxUWrwg/t/F5?=
 =?us-ascii?Q?JQVIzOb9OVVC8vHyljS+6ki5tzOAHVVnFoQ8GfvU1qiPpNtRPhSU3LoZ5P8Z?=
 =?us-ascii?Q?LKeyrdUaxPZPR5tr4yVfEeRCa/phctHvg4a5t/d/+AR0R/CgmqPTDM+Wg3P+?=
 =?us-ascii?Q?Pb0lHZroYl1wt/mmk/BtxFMT7NNp45OsSD5OdZ5by1CJq8H9Is1jXmdK8020?=
 =?us-ascii?Q?9xYQPQAr+Fz7BUQzzR6UZLDwlMiO0qVum/DVmhV0A6f8uCDaxIKSjMnUfSDR?=
 =?us-ascii?Q?vruPH2b8tSbeK2d/Amzh2K2uM8ISRd/3cOI6KQ1O/4llqh2Yk9eib09+VL0Z?=
 =?us-ascii?Q?mUwMhTmB1a/pv0FbgqLHc7nCzGe4seul7Wgwis4lZgqWq7ZwFB24hoezsGkU?=
 =?us-ascii?Q?DCvOA6NaEvAluMgPEwMcFodULOY6/QCS/y4rXrC9GreQ4Z44bu03cztBzBMD?=
 =?us-ascii?Q?gAGdC7v6AmQ3uL/KXqMcEph7FNtdl0Ojp61svGPyrtXEUu263E15QY0xkv03?=
 =?us-ascii?Q?bEvaFFr17nw5k1Zbq3J7fi6Nhx41Uq7Ogvmaw8NgewjTfQRegKzAcOB6bGn2?=
 =?us-ascii?Q?g8RnJ1EnDZDoKhw9d4Ef1eSAJyZw3irGQDcyT07upI8OmY/tadi+Ot3XsiKU?=
 =?us-ascii?Q?DeGtbj93X1k77N5HH24xHC9h6hL8bh//lyzJKvhdIi1Rakkdt0kCaFuU5hKl?=
 =?us-ascii?Q?pkPdlG2sIk42ZlXU3x/H8C6rIxVG0E2n04lhsKNwdNpccypGfJkbtpMRSKMt?=
 =?us-ascii?Q?tl7E3CHrxzQU+NnczfVqis72m8nl5jj2zzOFUmeUJJu2EStV2n38jASX+xCO?=
 =?us-ascii?Q?osIxVs08zE9fTzUvYmQsEep+RNqeNiNK6mscePvg8WsceoYyzs35M093Yz90?=
 =?us-ascii?Q?nYrdgvlqVk1II8a6eoHTPWKjYZh7ykk6UdxCyrBbQpPvN0yXpeTSaXeJg8pc?=
 =?us-ascii?Q?PL83lEq6wWOlmj1Btm6ydsqUanu1nJjgKb6TA/f+/MKzH5e1L8vGU86C8G3j?=
 =?us-ascii?Q?9kRi32LDx2zF6gDKkzWBMfPt7z69MIKpy4Zp3p717xj3Nc+Sv8WRuX6jQI+/?=
 =?us-ascii?Q?6e/R9uOpiviBDh8RyFxxR97WXEJ8kakLhHvfpGTEtvrxpbRb1oR/wGfVnvy3?=
 =?us-ascii?Q?+9sAJcvDsvjWWVrsYmrOuRivds73AdVkDeQgvSvDiOoatU1Qhy2cGnxZzbiL?=
 =?us-ascii?Q?XCxaaFziq28bgYs7H9bF7TvWJ4gqpCR54CQaKss1/UIv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c82fa7fc-b5e2-4613-d744-08dc27a6bd6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2024 06:33:47.5722 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: acHla4RzAr12DS97PGOBPg608MNNsWMTBe+0ro6JprBW6WmkNZ6fonP5ksVLD0K0qMTvVHHmDFgoBjRDIbCyKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8169
X-OriginatorOrg: intel.com
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



> -----Original Message-----
> From: Almahallawy, Khaled <khaled.almahallawy@intel.com>
> Sent: Wednesday, February 7, 2024 11:58 AM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Deak, Imre
> <imre.deak@intel.com>; Syrjala, Ville <ville.syrjala@intel.com>
> Subject: Re: [RFC 2/4] drm/i915/display/dp: Dont send hotplug event on LT
> failure
>=20
> On Tue, 2024-02-06 at 15:06 +0000, Murthy, Arun R wrote:
> > > -----Original Message-----
> > > From: Nikula, Jani <jani.nikula@intel.com>
> > > Sent: Tuesday, February 6, 2024 5:10 PM
> > > To: Murthy, Arun R <arun.r.murthy@intel.com>;
> > > intel-gfx@lists.freedesktop.org
> > > Cc: Deak, Imre <imre.deak@intel.com>; Syrjala, Ville <
> > > ville.syrjala@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> > > Murthy, Arun R <arun.r.murthy@intel.com>
> > > Subject: Re: [RFC 2/4] drm/i915/display/dp: Dont send hotplug event
> > > on LT failure
> > >
> > > On Tue, 06 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > > > On link training failure fallback sequence a hotpplu event was
> > > > sent to the user, but this is not requried as we are not changing
> > > > the mode and instead only changing the link rate and lane count.
> > > > User has no dependency with these parameters.
> > > >
> > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 +----
> > > >  1 file changed, 1 insertion(+), 4 deletions(-)
> > > >
> > > > diff --git
> > > > a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > index 1abfafbbfa75..242cb08e9fc4 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > @@ -1074,8 +1074,6 @@ intel_dp_link_train_phy(struct intel_dp
> > > > *intel_dp,  static void
> > > > intel_dp_schedule_fallback_link_training(struct intel_dp
> > > *intel_dp,
> > > >  						     const struct
> > > > intel_crtc_state
> > > *crtc_state)  {
> > > > -	struct intel_connector *intel_connector =3D intel_dp-
> > > > attached_connector;
> > > > -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > >
> > > >  	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)-
> > > > >base)) {
> > > >  		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on
> > > disconnected
> > > > sink.\n"); @@ -1092,8 +1090,7 @@ static void
> > > intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
> > > >  		return;
> > > >  	}
> > > >
> > > > -	/* Schedule a Hotplug Uevent to userspace to start modeset */
> > > > -	queue_work(i915->unordered_wq, &intel_connector-
> > > > modeset_retry_work);
> > > > +	/* TODO: Re-visit, sending hotplug is not required. No need to
> > > > +notify user as we are not changing the mode */
> > >
> > > Yeah, we're not changing the mode, we're asking the userspace to
> > > change the mode.
> > As far as I see mode change is not necessity. Link rate and lane count
> > change is internal to KMD.
>=20
> Userspace may need to reprobe again in order to ensure that the
> resolution/refresh rate still fits within the bandwidth provided by LR/LC=
.
> Also I believe this part works with DP1.4 LT fallback when we tested rece=
ntly.
>=20
That's right, I missed it. The case when we are shifting from UHBR to HBR r=
ate, we might have to check for the mode support and if not then trigger ho=
tplug.
A table with link rate and the max supported resolutions helps for this, fo=
r a new resolution based on the fallback if the current mode fits in then p=
roceed else trigger hotplug.

Will take this change in my patch series.

Thanks and Regards,
Arun R Murthy
-------------------

> Thanks
> Khaled
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > > BR,
> > > Jani.
> > >
> > > >  }
> > > >
> > > >  /* Perform the link training on all LTTPRs and the DPRX on a
> > > > link. */
> > >
> > > --
> > > Jani Nikula, Intel
