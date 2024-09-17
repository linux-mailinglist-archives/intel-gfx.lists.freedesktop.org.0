Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F5297B1B7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 17:16:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA56810E0F0;
	Tue, 17 Sep 2024 15:16:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QbgspF0E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC50210E0F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 15:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726586195; x=1758122195;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=U0RSD0NKiqSO+Iy1Avn6JQhXIz8H5wrYfIDhnu6CIUU=;
 b=QbgspF0EBGfY9/X66YCzempUW+c7YPbxdsBrhvKgCHBOLub+oGGc6Hlw
 TekSj4UF5s9I3x7Uxjt1HcZ/GX5Tyf+f0KPzQZOLJMD/1adWVrv/Xe+dV
 YUtUaNUVdDc+4e6EZPqz4E1tKfl8rM9x8xcT7kVUQr4pyBXj7duaozUM4
 ZC1nGNLXdLbTl9Dlr/cHIdq1ekyQPnZCSN/z8m3Lwpp7fHBi1GWpO+dd8
 76EL9du3GC2zQ2x9sFZJD0trnLIAbIGUHRvnm3hCYY4T1nwLDoVVihTDo
 a0MsCQIAuGGVfZ2FRuoWpbJFlkiVsKWn62/JGfnRnkKpBSSOVfo+kWCZT g==;
X-CSE-ConnectionGUID: q7yU3psyQKKbWcglzfrcCg==
X-CSE-MsgGUID: MvwuTJ0xSWuCcCpjvFJ39Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25389830"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25389830"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 08:16:35 -0700
X-CSE-ConnectionGUID: OHI74sEmSr2JPLbf4xBX7Q==
X-CSE-MsgGUID: uDAFWty1SeWvOIf9I7xkmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="68853722"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 08:16:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 08:16:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 08:16:33 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 08:16:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tFEfQ2f4fNzeptplVq0I0SWl2/uGTYxJvCu5jrUFiZMP7j6Sgi7CHWYofMJz2asJzZ2TUa4lqOT1Fnx/iD7RoT43gl6JpQ/DyuE8hblckwNCGkmHJWK32SfRL8K21d7NhBmehTAGdAOwrhfnFh4hFGyzb3JOI4D7OYjPmZNIicW21pkqckgeBDnixNEcCsXq9gkMCjvR5TGJLFCnKiTQAoyzO2QOQIlWv+F16WZFRJ5YwaDRDsdip6+etCoq14rchgyrgJIFsy5JacaYPh6M+EcrsrwvL8gRQjmvVjz6eLV0k7l1TpjcuQGwJ9aq6fV/gzKtciWgoICs7QTNceVddg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tWjqOzi+ingTSUkldkjGa27u9U1WORV3UN8Y2ecjZjw=;
 b=UaRgtPMFTokLgHaQlaw6xgitJ1U4rTh18VSldY/3+y3uF70+zWA6Lgh0W+x9QSVG8qKsijCGPuE+OhNyW+D4fQgZvQbVM+S3GPHJAWP0mpw2AUwuI6zgEgUloaFJ+liUJo3mhYfIuMFBO77jXbkEJSdEGYAUg/DpuymB8bdXXWBYIlFNTPjQuE776duyYgBjffdHAZHD+vPQsUZtfFuUPlNc4WefOPsJCYLphY2g6vN/wWbykAlmx44AIObUOPpTUsx07Bt2ghOO5jUls5EITEPegLOraR7Ksw2frmwze4Qr7FaWGcfK6YL24ZKhTbSHs6W1WIFe3rJUP4vbO2skDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ2PR11MB8500.namprd11.prod.outlook.com (2603:10b6:a03:574::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Tue, 17 Sep
 2024 15:16:31 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.022; Tue, 17 Sep 2024
 15:16:30 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/5] Add crtc properties for global histogram
Thread-Topic: [PATCH 3/5] Add crtc properties for global histogram
Thread-Index: AQHazsL0znkcFXfG40iUXf2B2ytMb7JSdcUAgAA71ACACdmOkA==
Date: Tue, 17 Sep 2024 15:16:30 +0000
Message-ID: <IA0PR11MB730762EBBDEC62D7E0948414BA612@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
 <20240705095551.1244154-4-arun.r.murthy@intel.com>
 <SJ0PR11MB6789D70ACF2DBDDFD80EAD6D8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
 <SJ0PR11MB6789255E3DAECD9AADD9A9398D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB6789255E3DAECD9AADD9A9398D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ2PR11MB8500:EE_
x-ms-office365-filtering-correlation-id: b41c377a-e99c-42f6-bdf9-08dcd72bb586
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?a18UwT3jXlKQ4S+4gUBjZLW2yeyv0QIJaf1xf3wTR7aCXH8JRcwQO9a1BG01?=
 =?us-ascii?Q?jp6hr/atlegfaihEiZtBe8WArxGFevicMBQ9iglzLr8XebzluLCthCqKIdii?=
 =?us-ascii?Q?00toiHnX+3qHHsw3zejbsj3n2SChb91wvFGzKoVG0Z4AXkosFOiZf16ed8N2?=
 =?us-ascii?Q?Y5gHcWP1FzT+dK0j/0lGq0+T9D37xjm2Atw0YJtW/o+gzyCUzIdK09WwDcdo?=
 =?us-ascii?Q?BTjSDmCYkQg7Ucp8rA2C5M90F7TqRcpx208F7tLqjA66qsQ0q8JhUvOj+lPY?=
 =?us-ascii?Q?IZDzNgWMkCoUnKlkNFaJetI2RuoAh8/doeJZLSkXFWyZp+Bo8BHFY09kyFEx?=
 =?us-ascii?Q?GFEMZDeY4rSjEFE/GJ2mFmsgIOs1elK1I+6U6hGZE6dUXNIJs40ywdH7sBeK?=
 =?us-ascii?Q?xvCbN9VNacxo4B8qTdcOd4K443uzgjkIA2/28HodPk51V6fHi6BLuWIIqBVk?=
 =?us-ascii?Q?s8PDKLVswH2w/64lQqxGroUSmTyN/GWicJNbwQE4+xB6c30COmdiiiXu0Muw?=
 =?us-ascii?Q?5OaACZw7yxdRO9ZbyhaIUS5OtZNs/FKE7z/vt4rhwMxEE4A8shj0Q3ljkoft?=
 =?us-ascii?Q?wY0jQKdsyb16i1CeicNbZaS+4mGr1BGHLJ5ul23bH24Kbqqf2xGSXPZZgGYT?=
 =?us-ascii?Q?3o7TPE48C4xXyZp/SIhlCGQ8Cl3gYUYE4+Tlh2FlsODketV7/2b98q7wtbit?=
 =?us-ascii?Q?s5g20Y/JKrrrccjUXM/geOuntjp9aHJEJSReVErcZH0ZhvA84HCj+llsIUWj?=
 =?us-ascii?Q?kGaeXRW4KF7KmV02+gdj+NtBugKYSvQCD++V+bApOdZTJNqR2ceZvPoFRoKA?=
 =?us-ascii?Q?Vk6x/PhW6sxXyscKAEz6fCz9QTkrxwg1CDKbGwe5HuEqHvRiZW+qLXubA52q?=
 =?us-ascii?Q?OZJungNzCYwnOLRlmWlYvghU3sEXaTbeiASsElwn/vONmrE9vDhfYIZ+/nIZ?=
 =?us-ascii?Q?CQAPgsTof1X5Onya7QWoUfeW75ndx4FEVgZUq7KXzsff2gRBslWy219YscgZ?=
 =?us-ascii?Q?agdCNsWC7urClG1oue2hmtNkCIWNST+DgZIGjCh3eS+UqeeuLFwrqHYGcl0m?=
 =?us-ascii?Q?h7TlSS4h/ZxRFoxOeb3/XWQe5W8T/ECEzk4kOn3HBi/DFPL/xbjR/MsceCTa?=
 =?us-ascii?Q?xtGPoNEEOlEvcZ3FUrcKdqtFPI2sNOqn+RsY+SevwCsl7gpwDsRO1AcHWjyw?=
 =?us-ascii?Q?oBYuo0lEea93EmrH6stFJRaS8J6isS3Vqw+D18M7MtV43T/jHtjz7PY8+1x5?=
 =?us-ascii?Q?IP6uyPUb9Ut6/MOYC7TrHk3OW1yNBSHtACOU0CfhUMz4b3X47AGDUv+aecYa?=
 =?us-ascii?Q?yDeUrp96Tmc+o8i4MmyCgmueaAHzvlO95IkPKpNJyMbM170BG6nIMJqthLic?=
 =?us-ascii?Q?wuybsthBupK/IjIw/UgGMHL4PUe92TrUCB00Mir8Qrp50rF8mQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?M/R7xIv+JjTdEdM7GkdZxSZg+JODF+t7ShMlfB4wvW5QApI/KfjrnKbUE7xn?=
 =?us-ascii?Q?FVmypv9Ew+BKLBH0NRi6SsQVp1QQIvHQWJBmVUMdkU7fP5sNxIPpu7kTJItH?=
 =?us-ascii?Q?o/lKv8jhWD7e1WmPMJCKPW47Ypj6wjU5fXGdM3LUS/jkIECcWqB1mvzxRfl2?=
 =?us-ascii?Q?3Nq0kMICq+d8J4DO/ZR5ciPL3PIjMcr6k1tncSdR6BHzZZ3Q1eB9/8DjJXmb?=
 =?us-ascii?Q?4UfOIxR3NsZtnjzlnc4IPixVUkzbpFGRy9G73jax2p40XgYeajfYOGMLgW2o?=
 =?us-ascii?Q?HQ1ruoYY896u4izvlwV9JEtu+EhdFd8obRLqaX7zP2ixb5xKq2rbLzgNGlru?=
 =?us-ascii?Q?0U4IBJfQVwglkn3q0NukvAPttFs2tWUUfhq/noE7uVzjdOrZbK4LOPmGRZsx?=
 =?us-ascii?Q?/mV9kE/ox5dNRkGEHBC35W1dmr+0adZ7uojGkUUdxT+lfvzEMMnLN1yyqcpt?=
 =?us-ascii?Q?5DZgqjvMq46MyaIqhGG/585ICpuJrljRiAgIcPPrXNzQF+8K4goNxD+lMlHp?=
 =?us-ascii?Q?Ow76MJhzlVOdb5/aJ9hHRv+Ph9qoBLotQqkddF2b/nFOtEIsREBz/XHznR9t?=
 =?us-ascii?Q?4DFihB3iZTOHx5VWxEUwJphzXsP8hCYdjSoIVaPkytSsms9qTn12BfA5i8Ia?=
 =?us-ascii?Q?NL220Rm1Kk77wBcPoKQfrGrf+gpQI1fGV3gduBwlRQUCDEZ29ZlqbFMcLZQ8?=
 =?us-ascii?Q?Dv+pWlFJcVqSqzLtWpoQRE6Oxsz0NQ4prLESKKBkse9bm9cZyEro4dqK9Amk?=
 =?us-ascii?Q?ur9GJYZibZx8PAwNT2uxGzk+4GgWqufxJTvccK9RKr7v0lUJeuFTqqjOSmQQ?=
 =?us-ascii?Q?2LKv6T522badNmPpZls81K47cSoP6yxo6VwY3Do5W8OBO1p9BDhIUfEM9TUh?=
 =?us-ascii?Q?bvJgppe/BpAxDUliCYWdw190I9x/hEALx8V9AIDKJR49HwiEtYM7d1VLbQLe?=
 =?us-ascii?Q?THdFKEPgIaRQKk1Njj87KflYLuvQryTNNk4QjOT6FhMQzRLH2DFeBvWDhxXO?=
 =?us-ascii?Q?LD6Ib67wl45Krhfo4d5SiLdcq7rHIFCusVXqrgEgetP7UoKdmImi1Ki1G8y3?=
 =?us-ascii?Q?DELnzaQme7tTtXquIDWfLICn51WkcyKCkWkgfKz3E6zo95rSv0BssmGp36Y1?=
 =?us-ascii?Q?vhLk0jFYyjjTAZOdxU6DHB/931qPdibeh/eeFsAlr5ACa3IukwbTTsJJxVMu?=
 =?us-ascii?Q?MGbi4+vC+ptersJWP94opiMueia2Lvxs1tUTim/Y/CbKYvcTSodUUJ8QDVfJ?=
 =?us-ascii?Q?m333O4tq7IsbQ9XfgBMOihalag0o1Xjd5bX0tSpi6dBTxadkGd/NN0aa7SYl?=
 =?us-ascii?Q?3hQizQeieTaKK/VPNnWImdV3fNy2zRI9MToZqjPx1ZO7j+QSsvbB1Il4g2oD?=
 =?us-ascii?Q?4gVt3aOYA1ZOYU/TVPiec0nXYNJpbLo9Bhgl4bIobQ8PAR9x2rn5ZoYYBCAY?=
 =?us-ascii?Q?HfExL2GLonfCtEwMpPCFMYPTTizsFl8VcPgPkhwKjP0AUlDUh9jqgt9rDQ7I?=
 =?us-ascii?Q?zhgGRX4YtdfmD/6Fdc+uoIgiMnGblMTpHp+4fktevvBVsoPDOFsxzjMy/8U+?=
 =?us-ascii?Q?vab57OymJjWoZH5JabEy/4GuNji2+5CtwQTPunpi?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b41c377a-e99c-42f6-bdf9-08dcd72bb586
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2024 15:16:30.8671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sXfQzih709akbMnPIlPGU49KEA4sH57fCBP6hBSBL1m6kmF9rHl15Pfvs8ftxyy9VqwoJa6ZCEtk8HHT82q7kQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8500
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

> > > +static int intel_crtc_get_property(struct drm_crtc *crtc,
> > > +				   const struct drm_crtc_state *state,
> > > +				   struct drm_property *property,
> > > +				   uint64_t *val)
> > > +{
> > > +	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> > > +	const struct intel_crtc_state *intel_crtc_state =3D
> > > +		to_intel_crtc_state(state);
> > > +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> > > +
> > > +	if (property =3D=3D intel_crtc->histogram_en_property) {
> > > +		*val =3D intel_crtc_state->histogram_en;
> > > +	} else if (property =3D=3D intel_crtc->global_iet_property) {
> > > +		*val =3D (intel_crtc_state->global_iet) ?
> > > +			intel_crtc_state->global_iet->base.id : 0;
> > > +	} else if (property =3D=3D intel_crtc->histogram_property) {
> > > +		*val =3D (intel_crtc_state->histogram) ?
> > > +			intel_crtc_state->histogram->base.id : 0;
> > > +	} else {
> > > +		drm_err(&i915->drm,
> > > +			"Unknown property [PROP:%d:%s]\n",
> > > +			property->base.id, property->name);
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> Also to me the below function looks like drm_property_replace_blob_from_i=
d,
> why are we not using that, am I missing something here..
>=20
This function was not exposed from drm when this patch was initially develo=
ped.
Thanks will make us of this function.

Thanks and Regards,
Arun R Murthy
--------------------

