Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDDAB1475B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 06:59:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3782010E5BD;
	Tue, 29 Jul 2025 04:59:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kB0bYEAH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB7710E1C3;
 Tue, 29 Jul 2025 04:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753765176; x=1785301176;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/1qGWlbFlbtEgQX2mYZfJ31wSm7w1tpeaOkddDuHCXs=;
 b=kB0bYEAHmac64IfF2yH9Q0ShV0kOg5kSeNZBM2OCvja2KtVDwfrQKfn4
 LQc75DP5BwzBECdl8OyCza5QqkZIhP1AbRcOwQ7IbggzvTMijaGODFMKy
 mSZQzR3tW7NBjRsxyh60xiSXL0V4AtM+UiJmOkO7x5/oyLvSdGtQUG6u4
 ROeVIkFgwsI2T9EZjbfFrKWsfEUjCBmpGQz5K7ja+h0Zo3sauQclPW9+q
 e3muTHhw4fxJm3x98Hx1gLvUouEyc/NO2sdeLplMpu1IWdhhyEfNN7G4A
 eVeDbVzW6dnqi1e3vkbRFX6kqfRyIXENVXZVEbf52sHjiVtzGbJXm/aJS A==;
X-CSE-ConnectionGUID: TYqv6WkDQpCrRBbjS8/PuQ==
X-CSE-MsgGUID: O3NcQD6OQ/e/5Z0gHsndIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="67379695"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="67379695"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 21:59:28 -0700
X-CSE-ConnectionGUID: PyBDDLHHQMKSATFAg4nKVw==
X-CSE-MsgGUID: 3jA6/DjyQiiPxJ73+Iuu9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="186248212"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 21:59:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 21:59:21 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 28 Jul 2025 21:59:21 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.48)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 21:59:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y7tazcGVi+Vd3dALXpgaCd89y2l9iXxY5CFm5Bp8JRuLV2H0QJPU1HC9Y6qk9mjcDNN3BcM48Zx/nqTHsAXsM+CkXwSo1db9npgqsvo2X7DXZPPiG56oBDeiTiZmRsUDXMCDt8Bu3YKM2GWEBrZ3SEcpeF2v33R0BMBSEEO9/WBsVA5wKSIzO+WwrfjuNtpmJ8xKAlq7yKpqWyjTvaXzOjBsQoctwXN9SGxX503qzIvMBWO5Uda6OCeOcojY3UFQfYbM31LcrikMUG2QIuU1LU5GvRc3CFl67EYMv52RNGFQS1yqNK9GJkMi7AaamlIRp1UheAIz49hHeupHOvvYQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6O5QMkfqDICN9KiW2VWALBqJJxGjrZd9cQRNiP7ijoE=;
 b=OKV/lQHdbje21twnVoMCMD1nwIp2Ky4botfsykBev6g0KqV3XIQeWzWw4tYkGkyDnMIkD7e1lggtWMp2WQjmxLQUPaqa0bcpbfr96tuIaKB9LBBQadjEG0hBHpyASXYnzp1uNAF8BWNxpQSNgOotUgQm2OOx7itcBAYwXvXnRHGBCmvTDs1NTO1ECopLpbFT1WQVox4zYiSgDgW2ZXtTgJm+nM4XsvdWjn/ZV2V0vmp0rV4Zn2vV1nuljiIFZnXgsZoj9nTqILjDy3CXBaoTQ/g1t4CoLc7AYKkYjCBaX3UFVyneQhm93gRFfn8kplWqSZ60heltrATGmK7ADhI/AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM3PR11MB8713.namprd11.prod.outlook.com
 (2603:10b6:0:45::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Tue, 29 Jul
 2025 04:59:05 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f%7]) with mapi id 15.20.8964.023; Tue, 29 Jul 2025
 04:59:05 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/edp: eDP Data Overrride
Thread-Topic: [PATCH 3/3] drm/i915/edp: eDP Data Overrride
Thread-Index: AQHb/SuexsDqadKk4EONK0U4Omstc7RHhMEAgAEKrJA=
Date: Tue, 29 Jul 2025 04:59:05 +0000
Message-ID: <DM3PPF208195D8D9CE17F826295679BDF50E325A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250725061548.2704697-1-suraj.kandpal@intel.com>
 <20250725061548.2704697-4-suraj.kandpal@intel.com>
 <5f02b6b0cf49d1c182a6294fa9144b4b4a22943e@intel.com>
In-Reply-To: <5f02b6b0cf49d1c182a6294fa9144b4b4a22943e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM3PR11MB8713:EE_
x-ms-office365-filtering-correlation-id: 8dcf4a63-997d-4b01-8d6d-08ddce5ca4c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?HTgQRBvIGpTn4mwSNrtKEYVBZlowL/gzP0qwGU0PXRBmYF3T9FZZ3O0/2LZ7?=
 =?us-ascii?Q?nXotpAQjZQkCOv9HoYr0Pv8Swtc1iqqehvddUdu0Z20TzL21+BOR+9MMiv9F?=
 =?us-ascii?Q?/rtkp9TiqtuqNFVaH9MMExcPeQS3YJQLpOT197lttZryKhQoCAV74j7vEEps?=
 =?us-ascii?Q?hhdgRyTtC/x/KtxLJs8C0+IkZ7NQwk48cnvLzM1N4mc+LQqDdmTd2zPe1Fme?=
 =?us-ascii?Q?Np8hlp3bAS8dvsC9jb8j3TtLxfEjO4ahMRN5a3zbc9MQcTlLo21wZJvSq1No?=
 =?us-ascii?Q?7kv1LLknri0/3yDRFjV/nX2yPrTAjKgKiyIzzXxRPGI8Z41IhVPoK+/8VWiH?=
 =?us-ascii?Q?sFGjqfG61ZQDqZpKwI4xaAyllk1pYwy4prY05ja7rRiJvccdB7vKWbqbTE9O?=
 =?us-ascii?Q?zz3wjRp+bsnIPUnZopZifh575YYHNENwQ9J14bXCwydtrC5A1jiVQiP1hMcs?=
 =?us-ascii?Q?yHDVXUWb5YO/ks6U77IQICZIQ4zgrg84oX5R+3I1wuro2EvWZfGZ9Qxrs9HV?=
 =?us-ascii?Q?+6HK3eR+1H259qjYZAWcHsC5TV7UvRINC0REQjepvB7zfugY6cDADBnjpwEf?=
 =?us-ascii?Q?8tLfx2QJDzDjJPgGajZlrpfx03o5PTsjee2yDRJnzK7lHNfOg01grpLYCXyD?=
 =?us-ascii?Q?VDrFmWdy9UPaYxe8CLf2uPGkG6hNbDd/uZB8JgJAXl8x30pOvDZiundgaL42?=
 =?us-ascii?Q?DWRwQX7cb2uIRsho3dIe+iN3VzLpo+hUcbJVXp+30hZng+5PcWwa9cvUIFeb?=
 =?us-ascii?Q?GybssCQtDtr4E0CZdwkjTyh1ygii5pwjB6lO5lThHWXOEl1pDDmLuaQ9ZylU?=
 =?us-ascii?Q?juqFo/QBPdfQaWKz4Lgn13+vROdevYGBB01eH9x/xvIAl0TatahyRBzxU7qJ?=
 =?us-ascii?Q?qdusY8mXI+w1eAe3O0q9nmXFOVBuBt5UnNpw5BDOGfTmSiIWdIuzqbDXwxQ3?=
 =?us-ascii?Q?9bu4gOBr87V445ACMKClKWkkcyG/ZiERRSRuApT7gvZNcSSz00aDzaD98K7a?=
 =?us-ascii?Q?pxqhg3e2V7Sxx4Tg9r3cVe19ree+V6AJxtoTk5bOvFUm9ihxiRH4dDJquoT/?=
 =?us-ascii?Q?umGbfdVZKBAg78zbjRBz2+2uAj47eixOOGvL43FqBDtkh3PmdvVLrPB1+fUr?=
 =?us-ascii?Q?mTTHOcxmQRCk5nocWQC8hzhpkqMmFbicOcK3HniHpjdMb7mvKSlWJGX2um4T?=
 =?us-ascii?Q?U1vA6enB6a685xhALEKQqSN462iltMFn3BqqUt9w0RdqISM01ecZWnOPNgGq?=
 =?us-ascii?Q?8p1JMv1S05xXMjWROQw3AetOo/pbB6GeUo058cf1aCBSU5frKDXtsXW5E6r8?=
 =?us-ascii?Q?ZUSJ5bMUcfneQWy9ClzKkwhAed1AxOQ1rRZMdx/ezJQQLNrTOz0FpMOktZnI?=
 =?us-ascii?Q?e8pMY9SeDO48zHYyOtoN6fJAdUzbNNv/DFFUvA4324ffrE26DcImusdCcPd+?=
 =?us-ascii?Q?9+N/UFwXfZ86mJxHGmujveYyszn+U1WkReA82agTciDJ5HB4RKjOiQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dfJIUUNWXg7PpLza2I53/7sGQYjEanWjqTgViUpybRuNnekaP5I/oChlGGoN?=
 =?us-ascii?Q?YHZUy29uUKwinf9sc+ypTCQ0ArLREJ1i2WNBp0K1PPg6aZSo99ttWHK+RVF0?=
 =?us-ascii?Q?z38qPQOJPCv1elM45/nLTgVdeACN+YH7xfPMf6WB/qy/S+Ifeeq4iru+ftSS?=
 =?us-ascii?Q?8Ui1kx/m2G8Qzd884iDj+cEn1p61pCXI0/iIjcMzADJjfYaR43L1JTi5+Cv2?=
 =?us-ascii?Q?g18DodSS2gr3XKBwMkd8lioOpnvhA5MqcIF6uHCgH4TJSdqjaym6J6hRTTNu?=
 =?us-ascii?Q?2HJhs8hYQSa7I96Iky+et07g5vMqNVFxbspMZxepK6aZsFZB6MiBK7SpbDub?=
 =?us-ascii?Q?WLXZzHNoBWO0zuGIyltrYriml6IS/tzhsfpd/BMqnB/dfDR29S/9GjRMFSt+?=
 =?us-ascii?Q?90dO3zagmdJI5WQtWKRckQUOhaiEAmlnubHwXFIl/WLMEJxBeg2Amned8K7x?=
 =?us-ascii?Q?izQF9VZoY2XThaxMIyH7lLIeTQmJEUY4iIu83OmWyE6sV8eskNaeTYVMcTdZ?=
 =?us-ascii?Q?DEJO5ERrjfCVkqjGozvrFtJKBtcjx6SZeBodl8BDCiLeC9Q/MFdaEpLOYhLB?=
 =?us-ascii?Q?N1ugrNpnp0oJnFxYgmH+xxsYUsUdFDj8qgeV9i6gAvswUORymPOO1w9sfNs5?=
 =?us-ascii?Q?w9tFCL/t1wE0+jlMR7UHIdDCmo+tFd55saDzIZWDLGfFn4e66cnFE0+dwghI?=
 =?us-ascii?Q?evJ5UeV0AXBbqnWhdznd22yTRvvLUM2n1gTlo5iR1TYq3SYzR2hCoZj2OzLL?=
 =?us-ascii?Q?ALDtgwFyKKDWoefEVTC1kAq3OGbRr4BB6fbYdfehI5sgzfds+/PCgbJG5xb5?=
 =?us-ascii?Q?uJJRzcQW/NCbyjZmFtcpvcxXy+LPrzogbiAgDrnsczD8HXsMRUbpQl8Om+0r?=
 =?us-ascii?Q?hm3gnBPQMHdXeO25J8gID9G1GJfn/I6pFE1gnMHeLeyErJFsOSgYxP3hL3sw?=
 =?us-ascii?Q?D1cO/wf3FiPtzTU2+XhZh+T53ONYgZatRU0l+BsbJXyAviROU9UbnpJBcyjm?=
 =?us-ascii?Q?UlPKxwBtFa8PaArW/hW/uPEj8LGe888FuiuLeWTVoEIY6GqNWUR2uAz9KMqa?=
 =?us-ascii?Q?8OGtb4J9ASRzYxGMNJMyf9A6yWDLM28uHQwmdm+SyRUYAaIBldvazf5Nnl2B?=
 =?us-ascii?Q?oSLSHPelfex9jL/mEyGc+VypdJxiHvLoCcnLwmpLRC1EglAhvnJcE+woUOxs?=
 =?us-ascii?Q?EjKRrm9eWCmIBE7C46LzBzBx7mkutxNm97NrQReLwxYUUOEZN78nXQWM88XK?=
 =?us-ascii?Q?ZvqF0O8oRyHnJ9CdYs/nhZMRPQzykbe3OjjQLcZpT+xZMAJjhQna5cdky/i8?=
 =?us-ascii?Q?Us8u6PAuUIei1DA4sTunHakkfcoBei+V43bj22fnI3tNMs1QxqL+f/TzGacw?=
 =?us-ascii?Q?/eKpJy5GoVjQO+o0JMMWLVRtAuFihjD66QNJNeM+BeEQyvffp4rqUtyW+s8z?=
 =?us-ascii?Q?ZUo4HxID2IUwkY2gEmQwpxOPFmtGUx/AapQYGwY+kYDbHbDe0yxJ1atdMEu0?=
 =?us-ascii?Q?K8TEa0zblAgfNkWDvA+Ybc2i5fbObjzwSI1YbMk3Nzhb2+xBrTqeaX+mQXmW?=
 =?us-ascii?Q?zJOMRrgFsriWGZH7w7aFUSAs4Ro+8FQYLWBtqgXA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dcf4a63-997d-4b01-8d6d-08ddce5ca4c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2025 04:59:05.2709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rP8z8EkC4MWytVqU9N3VcAVydo+50vGWDgUe8nfDseQWIN4BgEnwIg5gXzLQRvIEmu9cgp+J5+sWDzRVTmAQwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8713
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, July 28, 2025 6:30 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 3/3] drm/i915/edp: eDP Data Overrride
>=20
> On Fri, 25 Jul 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > We need override certain link rates in favour of the next available
> > higher link rate. The Link rates that need to be overridden are
> > indicated by a mask in VBT. To make sure these modes are skipped we
> > don't add them in them in the sink rates array.
> >
> > --v2
> > -Update the link rates after we have a final set of link rates [Ankit]
> > -Break this patch up [Ankit] -Optimize the assingment during loop
> > [Ankit]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 54d88f24b689..040344949b8f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4277,6 +4277,23 @@ static void intel_edp_mso_init(struct intel_dp
> *intel_dp)
> >  	intel_dp->mso_pixel_overlap =3D mso ? info->mso_pixel_overlap : 0;  }
> >
> > +static void
> > +intel_edp_set_data_override_rates(struct intel_dp *intel_dp) {
> > +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> > +	int *sink_rates =3D intel_dp->sink_rates;
> > +	int i, j =3D 0;
> > +
> > +	for (i =3D 0; i < intel_dp->num_sink_rates; i++) {
> > +		if (intel_bios_need_edp_data_override(encoder->devdata,
> > +						      intel_dp->sink_rates[i]))
> > +			continue;
> > +
> > +		sink_rates[j++] =3D intel_dp->sink_rates[i];
> > +	}
> > +	intel_dp->num_sink_rates =3D j;
> > +}
> > +
> >  static void
> >  intel_edp_set_sink_rates(struct intel_dp *intel_dp)  { @@ -4327,6
> > +4344,8 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
> >  		intel_dp->use_rate_select =3D true;
> >  	else
> >  		intel_dp_set_sink_rates(intel_dp);
> > +
> > +	intel_edp_set_data_override_rates(intel_dp);
>=20
> This can lead to no rates with a broken VBT, and so far we've taken care =
to
> always have the fallback in there.

I can add a hweight32(edp_data_rate_override) >=3D 11 and skip this entirel=
y since that would mean the
OEM has set all the sink rates to be overridden leaving no other option.
I can do the skip sliently or add a drm_dbg or drm_err which one would you =
prefer.

Regards,
Suraj Kandpal
=20
>=20
> BR,
> Jani.
>=20
> >  }
> >
> >  static bool
>=20
> --
> Jani Nikula, Intel
