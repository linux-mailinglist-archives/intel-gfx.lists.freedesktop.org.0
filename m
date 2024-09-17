Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC6197AF3C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 13:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBE7B10E0BA;
	Tue, 17 Sep 2024 11:05:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f+gqR5db";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E63610E0BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 11:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726571101; x=1758107101;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7H/aOc4cDoYy4FmINZ5FmLZgaSASVI6GFOQ0HR87iF8=;
 b=f+gqR5db8Sb6bqDvU20yks/HSpKBKo+UkUy2z9ZTNvcjSFfMDkQvL7yG
 qliLGXA53kM+GpZVqucsl+U7j6GRpkf+SGXWDq9WR46PyZY5gPJDCP9ZF
 TiF3Bi/OQjfjCC8ZYVX4jh8D0tbiwiIE1WuPymh7dLSKVSypyH8Yg0HB8
 YxqhcGF05DRtBTPUbB55rGkeoUile/dxbMoosoGEs9qKeK1hLP+j/5E+S
 MCRcK38oU9HaYV9JPSwgg+e/LU/Cvwzu805OlzpVsi8aG1s6DRhMovd7p
 LG9sNYBvwnczc1rAIgKF9nJgq5joMWpC27AxAbmEJdxPX/vYNhEf1dQtD Q==;
X-CSE-ConnectionGUID: 5nZzJCZlRGSja+dPvH7ozQ==
X-CSE-MsgGUID: vC1RS7UsRQuoa52zXK5JvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="13555078"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="13555078"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 04:05:01 -0700
X-CSE-ConnectionGUID: i+pVvHk/Sg+W+ZvFNsdmrQ==
X-CSE-MsgGUID: B/2NhszSTmezbVrc+crNGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73978648"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 04:04:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 04:04:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 04:04:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 04:04:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l4K/w/pcJZNDg6MPPAPHwmjwxpukBXmtd42bR4dvfrl1uJl4VEpm98YoyzJfTNlSItwHVztvoV/tHH0PepX/So63EFohZ4jS98jKwAXmOnnMikv6dI58aQH0FvgSmtJOgVbW+tHhatQmf/2EWVd0WFBsjsgrHqVPPMRdw+V5Up79XLJYF5nFZKnW1+65X2PslrMKd+c6wto1jVUjixPYpT6mL+1Jqm/mm/yCYbkGTNgsXT0IAcNRnWnqwx+WNx/V9QUnUobASu8qOduGVLFGhpD8KhJlzRB0RjRO0S7BUL71v1q/317Y0dkAv3oMoIZqyidUxKwiwECRbP1vZuSF3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7J+9y6Lnm4Zhpk4e8wecs6E26OEpIfPKlv/OISUQrJA=;
 b=l9sMfgSItzEjTNe6xhSzby/8HQ4hB1bVkQ/4/KM+we/xUNgUjjrAVYX1/CthCp5o5jqVku811h146eo4pxoLGK20I+WFV/NjYFiTKp0f7vPuno6qfNaXcw1QwMOpXfscRvhbyx2tzLyyQS6Qds6XCT9gJal9NvlK0+yPcq1jnS6vtHNk25rfWHKa53NDJdSuC0a4g5Jm/1tkM94HPZC5Skb0LfYwqCI1eHIYcEaHbiPZ/3isbqmUbwAZNxTneHFMdVYJg+PimGAt/SolAyWX2McmsSiU2i4+hpF869UmeheIQjx9txsluohS12U2koPYGwvU+fKhI2e1IlhJgo2WOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN2PR11MB4616.namprd11.prod.outlook.com (2603:10b6:208:26f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Tue, 17 Sep
 2024 11:04:53 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.022; Tue, 17 Sep 2024
 11:04:53 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
Thread-Topic: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
Thread-Index: AQHa87WZJusTjY3OEUmZ63RSw/ze/bJUC/OAgAUI2DA=
Date: Tue, 17 Sep 2024 11:04:53 +0000
Message-ID: <IA0PR11MB73078F44519DB072E08FBD32BA612@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-3-arun.r.murthy@intel.com> <87seu5gpu2.fsf@intel.com>
In-Reply-To: <87seu5gpu2.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|MN2PR11MB4616:EE_
x-ms-office365-filtering-correlation-id: 55f28d63-f5ff-4a4f-32ea-08dcd7088ec9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ykeMtx1bmfpXlnF9MOgsqrYz2xlbKSLsTW4J5d/6kKT5GmO5LwfanT3EB6nG?=
 =?us-ascii?Q?fIqmrfwFBCWHkR0A8ncdSev0ZufT3fFs0JzE3WzBdiZnLA/hFggZ3CdGbo9a?=
 =?us-ascii?Q?f2io9W+j11RU3di4eCURFmiwsMGL0xpcUMSDAO1V0ZSoOCt+UjdorXvH8JvN?=
 =?us-ascii?Q?8KcoNrnRHLmeTc5zhdufNiqLCxCl2uWS5mx8ok0oz5kFp3y+0ixzj993rTKd?=
 =?us-ascii?Q?yDo50f/rp6tLYd4tLoj/U4z2M5w7zE1u8hos98qy4kP4pGeri7s7cgj8TIaJ?=
 =?us-ascii?Q?8vND14A7M6pYI02ptltxanCFpcEtrgJNjqBL/xj0SpjrqXtNlOqCHpW37c5P?=
 =?us-ascii?Q?/zQQUUgKBrwBx0tJWQsRon78dT2FswfGqcZRaQp+Jc28YfZaCjDwWjxs0A6+?=
 =?us-ascii?Q?5t4XW6VZAIrbtuPyXroOEvRRbOwQrSN5fTT1KLGhSj3VLvUg5SkQDlUAPiaZ?=
 =?us-ascii?Q?fnFaYAjKRMJtxel6B+BwFMmHgFrTgeIanmVR45tTyiaLKbIj6MPkcOo61M4P?=
 =?us-ascii?Q?JmxwwF89LsBQV64HfWBDEbrXjsvlgbGtQZOcmuEBK87RC3Ox55CHGUJU728f?=
 =?us-ascii?Q?0yULyEWgQgfCjUk653PDUZTqmZS5mkdf0zG4CprLrTyJTB++65OOxzsnPVLW?=
 =?us-ascii?Q?7PZUiOG6Rxu2GXeM6WHHgHapCWTxVR5dGqGWoobWPGYhozUW1RV3uIK2fuz8?=
 =?us-ascii?Q?Xm6LNwiKZ4ambnmT3h2qe9uCbwtTIKSNf8fcUJjLKGvZxtszaG5sZ3gH9FRt?=
 =?us-ascii?Q?CjYURmtI97LlG8SR1U1m4zPsEQdGFyKikE/Y6MkzD8NaeqZ4SCSJ22Z3MQJS?=
 =?us-ascii?Q?aFcCmND6F9G6ntQa2jUGpL+U8KCpODvIweFDd2IW2kV+TKp4/HIoiGS5dW/4?=
 =?us-ascii?Q?PU63x1eCyiox5jrV7hZfmeHt6XTZmK0LWUtV3wuM0fnyYI7yEKh0yJSNxa8B?=
 =?us-ascii?Q?ocqKO1YPxY+vvKUnlOXJQ7VFvjPj5mGgeyDokHLoBz5sxfhAApwwkMtnLxzB?=
 =?us-ascii?Q?Ey1tCcC7COAo6v2SfwBizkwrPfGKopJg1KCyCLRaMgDcGEeh7bBzf+iGxfUL?=
 =?us-ascii?Q?1UqSmLZZunTFCEvKMD8sxZElgGkfEQzx1lO82iml56kFPIGA6sSfyO+fDUrs?=
 =?us-ascii?Q?GgWulUnAi/i8DS6ueA2mLR+oa/LS9+w58Gn2/VSy1yvfWo5TEUQFQYuGKh1h?=
 =?us-ascii?Q?u10qFOMYavVb8+ndJ2zM7SwFQ5RsEu/Ck2xeQpmFjl9L7x2cWWjvYLukyTT3?=
 =?us-ascii?Q?wa5lnXAO0Cp3Qv4msSEQD3DWCe1B11Ow9NVeNU+BHi4pm7BiGM6wvT5L1LXm?=
 =?us-ascii?Q?GMqROjpTDFrpvekeqGuLlBiaAoMow5xfZrEWIWzDmxDDj7ZU8uQctc+zOJnK?=
 =?us-ascii?Q?wQ4Te2BVLOWpTkYmsG+v6crlu0R8rxeIf9664Sw56iaAr4qWJA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fQVy3XtBJ0+cghr3fo7tBYGJ4/dW6A7RvWp9wPSw7xZr815TFJVcOHWum1uL?=
 =?us-ascii?Q?jN49F1dliWufsSu9CxMQ5a8ba1WSBihp0WjpuOmLmNSQowE2Jkh9KZDipRM8?=
 =?us-ascii?Q?QCgsK92yYLqEecnG3dqmiNB5ZeJ1OHxLHosO73G0FqvqYUN7N3d2CYcSY7Va?=
 =?us-ascii?Q?nW9w3j4Lfb2bFhPthyxaKrpD3jHPd/yB5aqtcN8JAnhOf7JF2iNILe+j/I1w?=
 =?us-ascii?Q?9dZLdx9gEeV77HgFWSpD+AG2bWTZInTxA5GQ58NiLUtfLlHDBBGi28x7iM6/?=
 =?us-ascii?Q?4fk6xsa0n4d1ojpn68wPXiEONR3QlaV1yPzSS+JDwDhONz5s91fHEHToibdQ?=
 =?us-ascii?Q?2t9T2bTnisP+37fD1WQB7F3SgUAfZ+jvBCIpBFI5RMV1FtdOMrwia60QCeQM?=
 =?us-ascii?Q?nLHx1k4DqRpAJeFeBkwMf5eTbOyqhWvdLYC/q5Y6smoY3nVSNuSXBhGDvZp6?=
 =?us-ascii?Q?PtC3aY1NmupG2uGrf0snhZzWnrxDSJvjzF1kJKy8/yIbUvbd4M55tuxLcoKS?=
 =?us-ascii?Q?gAlh0pIFAlxWRNyiva16wIFZyQbYLSu0z4g/ME6ml2WhGW3qBsSH7uWY2qaj?=
 =?us-ascii?Q?RRd0KR9yT9v2cRUMOYDEnW0QGmjMGuWa6vD8aWilHJhH6OCvBj3oymrJuESE?=
 =?us-ascii?Q?V5KcAEgDolqgBDkSsT75LnOy7dutzjFOUq1X9gpQwLZBjo88Eh9XDA84qQUG?=
 =?us-ascii?Q?ZDaXeHhzds3fRkHmB4Miz9aKtqjSEy23NWjk/uRcXrA67Agh090kv8dxF593?=
 =?us-ascii?Q?+yBf/h+GlSy8VhWaFrPKSr3Z3SExQek4djfdq2sQMFqwVUFY0lZzOz3rV3bd?=
 =?us-ascii?Q?ogydzZ9IsJUQFP0Jtzxl6KQ43EpH+eIhtphnlZIJ64t30LC3/l9wdb3Qr+zp?=
 =?us-ascii?Q?9BWTJWx7sn1Mwbua27O3pZlkl7sQsiOGfs3Q/1Ve0E33L1SVf9k9ZSlIAlLQ?=
 =?us-ascii?Q?e6Mz9pyqacOkLsavSChu66z1eNvtitclteTpVbegpJIlXcAWO8HQy+gh1xos?=
 =?us-ascii?Q?ubKPrRmTzy6xE2ur9vsJUHLYO0rIZYKG9sANInXzAsffDSerwZQuHyQYnpWR?=
 =?us-ascii?Q?AMU5053Q5/ttHmtGg0GglDrbaiH6lHKxsALnO9Q5UFHGa3haAESKeBoAEA4s?=
 =?us-ascii?Q?2u2x/UCTUVEbKFY5G9kVKeJr/XJIFCen0+xsv3nWpQwTUzl3u5Bb30frdNRe?=
 =?us-ascii?Q?N8Xg5Qei7zEiajc0neEgSZhAuDfUImNEWvyWrsweGSOHnbg102gsiAUVyknv?=
 =?us-ascii?Q?WU9zhuKORYWthpV3xIEUsFut5gpg2gtkz7lNJa/5SPROnedbrS9KbvQ4ym/m?=
 =?us-ascii?Q?0MNrPk3OwjDICKxoybrvtrq3ZdqoJip4T839u7xUfYOUEvmsWJbheG2cEyyq?=
 =?us-ascii?Q?qX6/B8HOocRJNd8JzfH2OgWMeouUXtT8PrRL1dg3Sy3WcL07hiDRM5dd/KKF?=
 =?us-ascii?Q?mwkqWPOT+eQWlOpV2t/pt5Xqju8C02Ig7Km6VqSj18xwHKOAvXv08lyWTOEv?=
 =?us-ascii?Q?xmQeCfX+c2BQrbUMEKJo82CmLWgOv4X2scALUxF7AgUc7gwuVZzDNaETyhh1?=
 =?us-ascii?Q?EcaFYPvTxNH6CMZ/BCFL9zcllkypJGvswA+jnB4VZooR4DhRsUKJHfrZl9L6?=
 =?us-ascii?Q?P6SCeoHeV7XkZ8nUr53tL/F/UxBTWZg8voNdMQidEub2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55f28d63-f5ff-4a4f-32ea-08dcd7088ec9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2024 11:04:53.4493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WTzX2tbUoVkqLxGN3rIJLgAgAIyQsr0V4WYWIAaVcX11SFHvVsmtJXw1agH/XRcasMO4gE1ynoaYIJsUh+haDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4616
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

> > diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> > b/drivers/gpu/drm/i915/display/intel_histogram.c
> > index 45e968e00af6..83ba826a7a89 100644
> > --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> > +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> > @@ -19,12 +19,83 @@
> >
> >  struct intel_histogram {
> >  	struct drm_i915_private *i915;
>=20
> Don't need this if you have crtc pointer.
>=20
As part of replacing drm_i915_private with intel_display, this has been tak=
en care of(Comment from Suraj).

> > +	struct intel_crtc *crtc;
> > +	struct delayed_work handle_histogram_int_work;
> >  	bool enable;
> >  	bool can_enable;
> > -	enum pipe pipe;
>=20
> Why not add crtc to begin with in patch 1?
>=20
Done as part of replacing drm_i915_private to intel_dispay(comment from Sur=
aj)

> >  	u32 bindata[HISTOGRAM_BIN_COUNT];
> >  };
> >
> > +static void intel_histogram_handle_int_work(struct work_struct *work)
> > +{
> > +	struct intel_histogram *histogram =3D container_of(work,
> > +		struct intel_histogram, handle_histogram_int_work.work);
> > +	struct drm_i915_private *i915 =3D histogram->i915;
>=20
> struct intel_display everywhere in the series.
>=20
Done! As part of comments from Suraj.

> > +	struct intel_crtc *intel_crtc =3D histogram->crtc;
> > +	char *histogram_event[] =3D {"HISTOGRAM=3D1", NULL};
> > +	u32 dpstbin;
> > +	int i, try =3D 0;
> > +
> > +	/*
> > +	 * TODO: PSR to be exited while reading the Histogram data
> > +	 * Set DPST_CTL Bin Reg function select to TC
> > +	 * Set DPST_CTL Bin Register Index to 0
> > +	 */
> > +retry:
> > +	intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> > +		     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK, 0);
> > +	for (i =3D 0; i < HISTOGRAM_BIN_COUNT; i++) {
> > +		dpstbin =3D intel_de_read(i915, DPST_BIN(intel_crtc->pipe));
> > +		if (dpstbin & DPST_BIN_BUSY) {
> > +			/*
> > +			 * If DPST_BIN busy bit is set, then set the
> > +			 * DPST_CTL bin reg index to 0 and proceed
> > +			 * from beginning.
> > +			 */
> > +			if (try++ >=3D 5) {
> > +				drm_err(&i915->drm,
> > +					"Histogram block is busy, failed to
> read\n");
> > +				intel_de_rmw(i915, DPST_GUARD(intel_crtc-
> >pipe),
> > +					     DPST_GUARD_HIST_EVENT_STATUS,
> 1);
> > +				return;
> > +			}
> > +			goto retry;
> > +		}
>=20
> The retry logic seems pretty weird here with the goto. Maybe abstract a
> separate function to avoid it.
>=20
>=20
Done

> > +		histogram->bindata[i] =3D dpstbin & DPST_BIN_DATA_MASK;
> > +		drm_dbg_atomic(&i915->drm, "Histogram[%d]=3D%x\n",
> > +			       i, histogram->bindata[i]);
>=20
> What's atomic about this? Also please consider the amount of log spew thi=
s
> generates. If you need to log it, do it in a single hex dump after everyt=
hing is
> read.
>=20
Will remove this dbg print, may not be required for normal debugging.

Thanks and Regards,
Arun R Murthy
--------------------
