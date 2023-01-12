Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF04666E9E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 10:48:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5916510E189;
	Thu, 12 Jan 2023 09:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D7A10E189
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 09:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673516913; x=1705052913;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o9NEpkPNai1b2LZJ7TN9PyIgjK1Xc05lwziwCVKftPA=;
 b=Nv4QlNLIuAhQOiAbF/H1KYMs6kGdnfDgitsnR7E8KYtV0Zywf3ZuY5lw
 raagpR5qWHd/AF5nOmuEX5KbKuAifMIefsiayBuRNS4gcYWT6ltIsnkX9
 TFI8KfxolVtT3NMcJzHs5y7rHKGAYTSOlQlK/RCOyIUUAgaLBitksmMOu
 3dox2nBvA8MEIiLizhBv/5eNiziwMqriUyzjHc4fqQxlNThF1X85lxk9W
 ZwpM9tKa+hzmAExvtE06K51cmTKjBazAuwi4M/LHRpK2HhA2EZMCFmjWN
 c0kph2zMJkHR3J7NMfdrDjE15JhE5OmOx8pqTDQTHffQHjJQemJ+pN2nY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="325685140"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="325685140"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 01:48:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="746496174"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="746496174"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Jan 2023 01:48:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 01:48:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 01:48:31 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 01:48:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TafWgl42wUOJ7luGBKr+vNXX48pO2+Jyyl8BGMhMjgj9pfLHTk6ffDluqrfphk1sH2edvB6jQ3bzGeAcYgwlhLEn2AQtSG07HkblrIoB51W6T/7TLn6BTRTodv9d90gLFfIy/lOZcOXtuoGSeINic5I2rS+L9igHDR5MQVg+cmztJbFuwa0N5iag8CkP8sccZvR4yum4iQGWhAGVApGEVP0MkFJ+lvGdDKVtqG05OXU1ABzUwHF3Tjl09a73DkWH4NrZzycahe3f9rbURaqXzKVHBZBU+OQe/o6rnl5K1dC8DMsrPVaGVfgCrfl+Qk2H18zZ/DjokFYhH52eLYKq6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p464teEZDUmyPOBKPUNgWrYbnfV1uW/CL2O79UxXvMg=;
 b=cCFULH37jEsFQfloYyXGU82uY9HDT+2/Aom4U4Y1h3Law+lEb3cNBBYceqfPJgPkN+J+Z4T0D45KVAU7AK5PSXb58GrKfbQXjxultVzaWJX3V6f2h56tJTBwYbH2ZLxzcRUOb3UaunIZIPnFk0tJL+8WJhP7wp712T6Lh+pAMPKA8nDWp7asEOknKgXNB2BVCofjgGPZtYmMwPT2qHhrOrQu5M+rkeMrbOTuhbmwmUe1aVTK5qILxeZCYmgGIf1bdIG6laRqY5x1MDIcfoUnJh/slC+urMkI32CqcRqhvsbjSL0SxP0ah7G7/oYORqIF1NPQ/ZllLMT/BkWnsUFBUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SN7PR11MB8028.namprd11.prod.outlook.com (2603:10b6:806:2df::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Thu, 12 Jan
 2023 09:48:28 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703%7]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 09:48:28 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [RFC 2/2] drm/i915/display: Add 480 MHz CDCLK steps for RPL-U
Thread-Index: AQHZIloQc0wusLfoakmidH9oX3RXyq6W22MAgAO1LUA=
Date: Thu, 12 Jan 2023 09:48:28 +0000
Message-ID: <SJ1PR11MB6129719E076585A55707BA67B9FD9@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230107053643.1984045-1-chaitanya.kumar.borah@intel.com>
 <20230107053643.1984045-3-chaitanya.kumar.borah@intel.com>
 <Y7y6jDk3RUiW2Ayf@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <Y7y6jDk3RUiW2Ayf@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SN7PR11MB8028:EE_
x-ms-office365-filtering-correlation-id: a536ae48-03e3-4263-b515-08daf482284d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ln15tFk2Z+Nj5Y7tZt3HstHgWCp7DLkSUpURGSWgLeqBvEw8ckM4dNbQcGzupSfe/H2quzkgWjsNXEvCtslFDCzn6wrJ9rOGA1Z0vthjYLfYKSW+znXfOALrUIJQlgCNKj9gbvKjSUXWu7QlATn/ArrLFYjHQ6bjJVHbKZwSljMNAcsFv8sf6WfZFCvwWiEGH8UV3zmcnpAtXSPGVcWvQXPjNY40wq6/XfwgkFjphcHRFOO4b2b+NYhmx/gW26LM3TcEARq9XMiSiW9KVq2zOSduR2UYtPtRpVIZTUKqFgrQpH0hvGFGdk0ntHzuAJ+xAABNwMBVvuY4MEMIjLu8bj42w0C2gAduabsa1L1QKfT/wYwB+1Eugfx54nEWfKYdlIYHY/UhsjJ5rfLq2f3VqeT/yumQobwmwK26DRqQ0Q7Qw6+8udvsm7A2k76eTJ1VOvHaOGjeLb1cczxkteeKp3m/n85YrUyDCmWfOr8YBszselUHpmvAO4tPmOLRVjGPvBmjOJiLIzx4hY2Ti6PI+kNUyDXKm8fTfKv/MNmGnsbn3I6CZHhsB+RsWRFSrk7dYZ8dSL4Iohtmj4JswrmUo20zagAEbFghe7rkNnTW5ZDzjXu+39jcuBi852eK0/deZ3a6RGxZB+B09PTRf9GFxg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199015)(6862004)(55016003)(41300700001)(4326008)(66556008)(54906003)(66476007)(316002)(66446008)(76116006)(8676002)(66946007)(64756008)(86362001)(38070700005)(82960400001)(122000001)(52536014)(33656002)(38100700002)(5660300002)(8936002)(83380400001)(6636002)(6506007)(2906002)(71200400001)(53546011)(966005)(7696005)(26005)(186003)(478600001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/4dolM7NHGoAX9WBYVe8gBZw9mVZGCZwWB+sThw7OeANsQ2ziQmfLrQdHbjJ?=
 =?us-ascii?Q?8fkgkBA9aAFWhuKV6XDyDhjHtasnYCtfvQdl4YyDDxSFKaLD7ocaw09YT9Mr?=
 =?us-ascii?Q?EcaLotpFlJOADNFPmiTzg8bHMg9yeoRcZ1gQQX2CbpqnAIMM7yd3TNCF0Kxt?=
 =?us-ascii?Q?xkbBE/9fDALgzf0m9YSLh+CzzVxzNxzZcXg33By1KN6oRXY87WNdOFL8sfQI?=
 =?us-ascii?Q?VyN8KKpWca4DF03TNw0t8JXCUK0+8aL2Wne4yU3vfkpTfLzMRfAcRW0/5ROo?=
 =?us-ascii?Q?VoAhSfZ1KkJhYDTzMn6UjYLXfKC+CLvGmw6+gPWFlQQv6Zn4e6KLM71DKyob?=
 =?us-ascii?Q?2lfWPyeA/KkZCjdwhQAp7zAGnegwOSVmf4EbxBoGE56B5rJRXARjFfcYhZKN?=
 =?us-ascii?Q?h6VYX3i+iwKnTjnhaIfFhn9T8iReO90eiNApXZPx8tEdrfP31+mPY6agDsuV?=
 =?us-ascii?Q?LstqLG++Bl+nNyZ4oofDSDTc7B5EARQquBpXJdkg/cJZhlFZxx+wdsByAKXB?=
 =?us-ascii?Q?e7kvxgczbOH58OX8e+qJgzMszzoJyftejiDlx5DfbxdrhyMoJiz3gm9Y6Ufs?=
 =?us-ascii?Q?/XK9TNUnx19iqzMVmoaWPYfdn4caIseQvLCBCkQStO0MZsNUJjMc20+rbwpc?=
 =?us-ascii?Q?0XTl7q+WV+5M9JAsOkPzbNm7NCY4phrScF+i/uQH+xCBvO9JxiZPpuyrdiuF?=
 =?us-ascii?Q?JcGhCPW5w9zjuSaVBDrGEN6KFYbDQgn7yOkIAMii1UNTk5RWDbhJ/lfjobBX?=
 =?us-ascii?Q?iYkxy9b4llxlMiJ8DESozBpCF1TsvI9X7bUuYbp3V4u7CQFUlASt12irkS46?=
 =?us-ascii?Q?4AJcXaEGAS46QKzgePiempflK/fZJSwPsegVPegRMFiU+fFBZBAVO5S1jP/V?=
 =?us-ascii?Q?4qMui99PhvAEM8exTmxixpySqooRppLublpZrALp1tvflSq6DJ5n1G6QPoLa?=
 =?us-ascii?Q?+CGxUfeRICs0tJkTucabiYs3BK3HrxBzmgGg5nKeT6uRnizpQB/Y1aGdchIs?=
 =?us-ascii?Q?rrrjL5r1cmC41KQ/mAebW59nkLOP9f747FKkXW7R0g7gpaVmBQaEGeoOpAWr?=
 =?us-ascii?Q?Ve75qGiwccKwFW2wNXn+vqNt2JfMMF89S4l54YCNbqKVHIa83g1eZCZel7EP?=
 =?us-ascii?Q?WVMLHY1aA3ru3EuMKH+HPpuE9/zsfdOddf6WKdzzSzuDWvFPeKiX2Fi7dhLY?=
 =?us-ascii?Q?THIWc+/Zs2/op8q0Aok4qTe/uy0gGir+dPVqYlngkqWDvLFf944nkd15F9wR?=
 =?us-ascii?Q?1Mp350o8L6jcZDt1VroRuL2sAh770C2aWbcQF4nlwXWgEfWZfiIjqhF8yiHb?=
 =?us-ascii?Q?Dd9xSryuUDUDEr9JC/wc0QcOQWy3WG/IpWI75fDr73CEH003Z+V8U66j1JmT?=
 =?us-ascii?Q?vVS75+Ds0pTirL+w0cv7encNzjPUSIQsmdXGWZ8j5id7VsL1I/hLEtpoYH26?=
 =?us-ascii?Q?judcADo8nZENBGqBAAg3XqPi9BTEdGODYapn+aKzDZLiTEgLIl9E02LTXMtz?=
 =?us-ascii?Q?AmQv+aFHyQZmHKbeJVuSfle6dlSAok9A76oBt+wMGTCjxthczptgbd/QSdqG?=
 =?us-ascii?Q?jhKB9ZnuxADhVDExUG4shNkbkEJXWZ/XRvfwdwxxrU24sVRGhnSbRTz4Jmam?=
 =?us-ascii?Q?ng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a536ae48-03e3-4263-b515-08daf482284d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2023 09:48:28.4984 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Q+d55kjzq9yw5za7NyYbpjNvzDJ0TPZdj74uZy5+Dv+oa7iNDXLU3Lxbj643NtJ+NAPAtCOG+ZWhj37A1vX2jAgK3E2SO5wLZxOTGkbTZE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8028
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915/display: Add 480 MHz CDCLK steps
 for RPL-U
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Matt,

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Tuesday, January 10, 2023 6:38 AM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; jani.nikula@linux.intel.com; Shankar=
,
> Uma <uma.shankar@intel.com>; Syrjala, Ville <ville.syrjala@intel.com>;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>
> Subject: Re: [RFC 2/2] drm/i915/display: Add 480 MHz CDCLK steps for RPL-=
U
>=20
> On Sat, Jan 07, 2023 at 11:06:43AM +0530, Chaitanya Kumar Borah wrote:
> > A new step of 480MHz has been added on SKUs that have a RPL-U device
> > id to support 120Hz displays more efficiently. Use a new quirk to
> > identify the machine for which this change needs to be applied.
> >
> > BSpec: 55409
> >
> > Signed-off-by: Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 23
> > ++++++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 0c107a38f9d0..a437ac446871 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1329,6 +1329,27 @@ static const struct intel_cdclk_vals
> adlp_cdclk_table[] =3D {
> >  	{}
> >  };
> >
> > +static const struct intel_cdclk_vals rplu_cdclk_table[] =3D {
> > +	{ .refclk =3D 19200, .cdclk =3D 172800, .divider =3D 3, .ratio =3D 27=
 },
> > +	{ .refclk =3D 19200, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 20=
 },
>=20
> Are we missing an entry for 307.2 MHz here?
>=20

Ack. Added in new version.

> > +	{ .refclk =3D 19200, .cdclk =3D 480000, .divider =3D 2, .ratio =3D 50=
 },
> > +	{ .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 2, .ratio =3D 58=
 },
> > +	{ .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 2, .ratio =3D 68=
 },
> > +
> > +	{ .refclk =3D 24000, .cdclk =3D 176000, .divider =3D 3, .ratio =3D 22=
 },
> > +	{ .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 16=
 },
>=20
> And 312 MHz here?
>=20

Ack. Added in new version.

> > +	{ .refclk =3D 24000, .cdclk =3D 480000, .divider =3D 2, .ratio =3D 40=
 },
> > +	{ .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, .ratio =3D 46=
 },
> > +	{ .refclk =3D 24400, .cdclk =3D 648000, .divider =3D 2, .ratio =3D 54=
 },
>=20
> Typo in refclk here?  Actually, it looks like we may have the same typo i=
n the
> ADL-P table as well.
>=20
Ack. Added in new version. For ADL-P I have created another patch. [1]

>=20
> > +
> > +	{ .refclk =3D 38400, .cdclk =3D 179200, .divider =3D 3, .ratio =3D 14=
 },
> > +	{ .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 10=
 },
>=20
> And missing 307.2 MHz again?
>=20

Ack. Added in new version.

Regards

Chaitanya

[1] https://patchwork.freedesktop.org/patch/518086/

>=20
> Matt
>=20
> > +	{ .refclk =3D 38400, .cdclk =3D 480000, .divider =3D 2, .ratio =3D 25=
 },
> > +	{ .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, .ratio =3D 29=
 },
> > +	{ .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .ratio =3D 34=
 },
> > +	{}
> > +};
> > +
> >  static const struct intel_cdclk_vals dg2_cdclk_table[] =3D {
> >  	{ .refclk =3D 38400, .cdclk =3D 163200, .divider =3D 2, .ratio =3D 34=
, .waveform =3D
> 0x8888 },
> >  	{ .refclk =3D 38400, .cdclk =3D 204000, .divider =3D 2, .ratio =3D 34=
,
> > .waveform =3D 0x9248 }, @@ -3353,6 +3374,8 @@ void
> intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
> >  		/* Wa_22011320316:adl-p[a0] */
> >  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> >  			dev_priv->display.cdclk.table =3D
> adlp_a_step_cdclk_table;
> > +		else if (IS_ADLP_RPLU(dev_priv))
> > +			dev_priv->display.cdclk.table =3D rplu_cdclk_table;
> >  		else
> >  			dev_priv->display.cdclk.table =3D adlp_cdclk_table;
> >  	} else if (IS_ROCKETLAKE(dev_priv)) {
> > --
> > 2.25.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
