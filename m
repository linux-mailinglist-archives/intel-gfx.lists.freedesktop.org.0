Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDFD93BB26
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 05:20:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA51C10E5F1;
	Thu, 25 Jul 2024 03:20:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FbbTMfF8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1856B10E7D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 03:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721877635; x=1753413635;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hL0YXsXfnGCa2jAEerB1wJMj09K20SaUqEIBxgPcJO8=;
 b=FbbTMfF8cEDgi7T3xKVtAZvXjS9Y9ww+MVAxfA3JMtkzlKsbdFKNsMpL
 DFP0BIh/gtHPV7ceawELHKrfLyICCxjScd7LdFrhpXjjBRD48tS+QmQvz
 HpzhN5OoHvVyarNHcmmIW+c4S4H1k2U9Fscjugr7hT83NUS//xklJ0DDv
 5xI50ynfYZsSeVbw/mQS7cqy8bmVPvHbbDUzIjSheW2UULF9TN77YKle5
 axZNnyxM37dnobx2v0HiORahafBx+RfwmGBSrJ9q0M0la918J6plw9CSE
 NRGJ2zHW+RlO0Xn99j+CG89lVgPCcAIr/R8bYWKhRjf1oOmA8Uk40TXVb w==;
X-CSE-ConnectionGUID: JcFnPPdKRUm3KN+MzdSKmQ==
X-CSE-MsgGUID: ZBmJcW0hT0mpOgi5QqfifA==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30981965"
X-IronPort-AV: E=Sophos;i="6.09,234,1716274800"; d="scan'208";a="30981965"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 20:20:35 -0700
X-CSE-ConnectionGUID: gWbaCaa3RgS3mPAg9ydCHg==
X-CSE-MsgGUID: VgyApTrlQoCaRubr13MSOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,234,1716274800"; d="scan'208";a="52461183"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 20:20:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 20:20:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 20:20:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 20:20:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 20:20:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m7AR1R2wByKK6XAgIYgpkYl/xTTotD67CHnf0sfepBLgHl04yMHP2Q2RpQiEibrQVOTyALRs+0d0zsyLTfXXjhCv+aYB+7Fys7uPNQmFlIxJwDXeYLRoJhaPXwqWvOWMLpk7ypMV8sDNZd5Ssts5ake7CD06GnvkKWK9lPZmJrmX1lpCfZ6FMn4TzjEqoBPu8oi+0Ql1GhRewg3WRntCSQuR3CyDICd54S71QYCZ0bcr2gY5omxywzvFJ7gxYFHxYo/zdX9WCljHLnFhYG510Oa5xUSQC6YHIVBiv2vaPiqlx9MuFNTAfaJIaIaMVWUYxleSW/Y8ZZ+IaixZPdazpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Rh5If4eu7vLPHTxBjnoXq4TY0Vdlu+mKJxf9Ke08ag=;
 b=y2hNwyQJIaZ12NZuhjYnHO5YPu8j1zOxeasruHLYkmuX9Db4Jy+lxipPAD8t8keGgbznvxJwgyZyMRcTBYaAJSp8Qf0yYwYlsxTI7j3huyPmrHykTa22HNuDiBKQjfWKy71TD9c0GtOgw72SsGhWydFeFyHQl+AO58LWyDszXlneIoneAhFKtbFWiGrpSTQtjQMHjtbEPOToq6imz2Zmg5ytMISDNwPNpssR4RB/xam4aEQYannx3fgmtaevY3aqxX1X4Kd6+KcA3yedv58OwEENUMF5Jd1HBI/9FxgBqXbpvceOpPDY9bw7NP6N5XM4HrFJfVT3Ivs7utYFH3nUqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH8PR11MB7144.namprd11.prod.outlook.com (2603:10b6:510:22c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.28; Thu, 25 Jul
 2024 03:20:24 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7784.020; Thu, 25 Jul 2024
 03:20:24 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 07/14] drm/i915/dp: Add a separate function to reduce the
 link parameters
Thread-Topic: [PATCH 07/14] drm/i915/dp: Add a separate function to reduce the
 link parameters
Thread-Index: AQHa3Ff9p9duFzcjrESdNYIUSVL0LrIFUCBQgABt+ICAAQszoA==
Date: Thu, 25 Jul 2024 03:20:23 +0000
Message-ID: <IA0PR11MB7307C9BD62D17A5924853AE3BAAB2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-8-imre.deak@intel.com>
 <IA0PR11MB730707E45A582AEB695B479ABAAA2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZqDjU66_p6yKpxUx@ideak-desk.fi.intel.com>
In-Reply-To: <ZqDjU66_p6yKpxUx@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH8PR11MB7144:EE_
x-ms-office365-filtering-correlation-id: b6342067-8e45-42ac-e470-08dcac58b8f3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?B8tdaTXoVe4RBdzSP2Hmk3nShvmKEBQbp5dMSwQRp1bpeWIgzhTsr2CWsiNt?=
 =?us-ascii?Q?dWL8ZyQTp/guOVickb/k7oA2R81tY1EWgHgWPc+Ykn4LBxjHbNEXLFF+bESb?=
 =?us-ascii?Q?Xv4tp1qtdJPFn2f1cs0rtTfzjQaXHXI3Y1lyAcA9djDug/d0er6Dt27IAFKJ?=
 =?us-ascii?Q?aEB7svNIg4ns/WLyO/dhQzesBbZOjZxNHzcXI1XHcrFquYoBTnhrlaLlMzdC?=
 =?us-ascii?Q?rqwLLE/6+Qh7LfmhsnRGpYKG1w02dlrC3Q7phSa14C09fwLFUFRnbLY97xyp?=
 =?us-ascii?Q?s+7k9o8O6/5oofOTb8L2Z4TVyL9dJFNnJ2CCHfuDtWCmLxR2MzXwpvc6gjmU?=
 =?us-ascii?Q?pJELKbjjdlq+gUJzLwvv6U75NdYLsCC0fSfMkGLKyCV2ggLdDoLfJLvxcsZT?=
 =?us-ascii?Q?CmJzX+/CTuESlWr/gv86uQEhdaHe/f1UV+db68Nz8cS337+uTbCmsQmdHehH?=
 =?us-ascii?Q?vM3JFCAmwFy1Z8imZiZnv+n1pqJaGUjI5V5uNt8umyd4ID6A2oiZYDs9yr0m?=
 =?us-ascii?Q?cxrFDrjxMZmQfq8LF89v65TYtClf1IOKz4EFf3V2CCEOAy/fxlCVqjykVwRd?=
 =?us-ascii?Q?rbo0g9LvCXm3knMPOib2PtLvs4EoiYtQ/UgBbuemszVRbCbGn45ckhKqrsTG?=
 =?us-ascii?Q?QU5o7zizydaQ4ylk+YW0p1fbUfTbL/FukgxuAkT+rxd1NphXJo6hKoTBjUIT?=
 =?us-ascii?Q?qZWUR6qo02Jn/gqwSRi/2AtosBOnoogzBpqwhZGg2fSMXBUqKbiCcjWgMJAZ?=
 =?us-ascii?Q?AItk0AaVoJJIi00zaoqAeyeHtuk/DxEI196+hdPP9IFcCsi4/AZ83MTIdIx7?=
 =?us-ascii?Q?mfVv2baDwbEq3he9D4L2tfbRfedy1Vu5QFbqFVL3lYgyjM4SRXhj8QkVUNoE?=
 =?us-ascii?Q?+f0//2dHqxwFi69fC+k5h2AkWLXrqGFzFFNZEtvo/gCSsnfUMdcRcawgWa5L?=
 =?us-ascii?Q?sMqp5F8Zzt1Hrn1xhVZ7QbmXW2bcYaKT2k8aziW14CQcS2RsKWktIF5v1mzY?=
 =?us-ascii?Q?j+TAODateflZder9cSo7yG0KjTWMxsVuUVbbrSjJY4ORbtX6Uum3yAOHuCdU?=
 =?us-ascii?Q?8bZXRI/0rnw6IrX8raUGjcxo0sgXKO29S2GsXjTodG2X4Q2JGSbnAciAd7Sg?=
 =?us-ascii?Q?llEs72gzTMk26lycuOU+GOqILraFkiNByMLOIqTvt3lglnwucHSDFWZ18q/T?=
 =?us-ascii?Q?wed8wcETkew6feZG5V1EvbO93AmBd9Q2DKGR5Jf6qYhC0ZsG97fo17DHaPvc?=
 =?us-ascii?Q?Q2Nz5LcMWaNNZMQPizqKnDEbY7efzKOlq0B/HFH40FR1yJLptobUxQ0SjdjD?=
 =?us-ascii?Q?WQf/1CYggjd39a79n6mpyxIugNxnfgswUEZRnOFGc1KCYtXxXlMpaBHo7tvF?=
 =?us-ascii?Q?a/C01/ojAYCZSkACnDzO62Y9IjN6jER7eQgxWCCK2mAuh+TRBQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/0wmt4F+5gXElsdntRRmGb+TTFusJsg7JX9mkNHTeLtsq71W8iJ9mm+4bv+c?=
 =?us-ascii?Q?Sos0wErtNPYW40HjKDBgpxa95UkiSINPp+V90vKx1n03wMVuU1tKFdZ8Q1Rj?=
 =?us-ascii?Q?ILbtpLbR0e/OeCG63AKix96C8JTVLyALdhfVhEmdvuZBgCkewVH3McBWfFvN?=
 =?us-ascii?Q?6vnRrkRSZw6WFw/ly4GOR+MGZ2bX59SHLd9OXd5NcD2yeKSwZrfaNwxo8V/8?=
 =?us-ascii?Q?AcSGMi4Kc9fXorJ2mBeleZ+u4eEuzaRGpyCH2z/LMlRNClMpKVqkofZrN5Gt?=
 =?us-ascii?Q?Y9KXik4X0KoECZNqIvo9NNbArWcsrY5QLGIUjTPzpQ2RnWiVwVAOL2F9unQk?=
 =?us-ascii?Q?KuWepSEq0Mk9iKVXVEvUuUZeeiAGALy+V3euAw+T8x1LB0+B6ES4VVLDzOQs?=
 =?us-ascii?Q?aWDhNhWA2JYt5CbGzjUJOsxaFK5Gb3bPkaIpvKimC8Jl4Z5HfLO1g/gSMyjA?=
 =?us-ascii?Q?NdVp7npZurLiEVJuRUBUgtSTsUHOOM+y4/tA8NoHiOSk5s6oK2urEcjmqY4K?=
 =?us-ascii?Q?HA063I9nQ52VZuwgwd0fW7MFbYBxVlyWgOVlcoolG8vWBrtFpaTpEJRIxjGl?=
 =?us-ascii?Q?6l4OU9VaTQpe+bkJLvjlYo0AW8ouVcopIAdYxdmMLUKhcl7VVoUU3YDdPOuq?=
 =?us-ascii?Q?VX4qoYf/G9931I19t97H2zglFAHzZah1u5AjR8Y5saG7Yv72Mu6TST41rZBZ?=
 =?us-ascii?Q?mimzWH2OtyEy+uQPSFLNJklPqGgB+tGUxWJW07IefYRSwfgs/ID2i3A4U8yG?=
 =?us-ascii?Q?DfUmVxCtq1xt2pWbu44ASqSdvyAmjuiw7+388rcnLhWyW+u2YlHWVH36JTZr?=
 =?us-ascii?Q?pj7z7LmMpB0R/ydqtCHwIcX4TqDAhEdF3n/pESPegVf9fI7r4POPaARFOwGm?=
 =?us-ascii?Q?kUPS5wMO5tkuWeqJcL4qWEAvdZ/dtdBJzPTZzo8m4Dn8x3bLOEjWSHR5JyOL?=
 =?us-ascii?Q?fWJUr4lw/Lb3qlmvusV2vG9vcx5SJZOhzAqcmZFh5B+NARVa57NhEK601YlE?=
 =?us-ascii?Q?bGzPMFRuM1KbDaN7r6TCSUbWu3AqSaXvoQEN0EGVQQioylJb3BHcpMhNMgwO?=
 =?us-ascii?Q?b4wc7Pru7ucmgP47SHY3c1ueY49mBmVH49J4qBKxlmr8zcyFpk96+VaqRupo?=
 =?us-ascii?Q?Uri3VNfspYVaA2OqsCqUCPSigNfEfgKiyurcwGhS1cgHWn1nbZsX1D4r1pC0?=
 =?us-ascii?Q?6vngHl1qsgtI7tgpn7m2Gtyipovsv/1etZp59QoBiSk8aaQz3Gqj0Kp7iN+t?=
 =?us-ascii?Q?lAM62DmlxKuEYZ3Bfk2gSucL+zmzFvFE1usefANeiQWhLgIW+ZDUVedanr3J?=
 =?us-ascii?Q?ggGnoGI85y0V0IwC2qBsneLv3tSe13uSmPekl3cofuD0SOejDhTtML9tFr6R?=
 =?us-ascii?Q?AYaTHILXTAhDDzbyd8Qu33CdDP3L7Ugd955Py+a+uymQMugYOkIg84oLrjQ3?=
 =?us-ascii?Q?P3xDUu/amwwbGbN3HmeN7/kuqukiZbgOZRF/JQELJIcwixMUOcnK7IjIZgew?=
 =?us-ascii?Q?ypH7vj4KrZdvhtKBKcbJyhzpUEiOaHpzhWPPvIN6HIhtirTl2XPqHv4Z43fM?=
 =?us-ascii?Q?J/HD9z8f1/Maw03tMjLu8TDbqM5cfGGOVkWBi5pT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6342067-8e45-42ac-e470-08dcac58b8f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2024 03:20:23.9753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uk96YDJMenyAs7SQRqJ56SD1OUKWmqtVZi/gCp7iOHjTlZtt2a098aHXoCUKxFXEWOlgW920crQpx4ApYSoTbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7144
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Wednesday, July 24, 2024 4:50 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 07/14] drm/i915/dp: Add a separate function to reduce=
 the
> link parameters
>=20
> On Wed, Jul 24, 2024 at 07:55:03AM +0300, Murthy, Arun R wrote:
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Imre Deak
> > > Sent: Monday, July 22, 2024 10:25 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH 07/14] drm/i915/dp: Add a separate function to
> > > reduce the link parameters
> > >
> > > A follow-up patch will add an alternative way to reduce the link
> > > parameters in BW order on MST links, prepare for that here.
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_dp_link_training.c | 39
> > > +++++++++++++++----
> > >  1 file changed, 31 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > index 58dea87a9fa28..57536ae200b77 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > @@ -1193,6 +1193,36 @@ static int reduce_lane_count(struct intel_dp
> > > *intel_dp, int current_lane_count)
> > >       return current_lane_count >> 1;  }
> > >
> > > +static bool reduce_link_params_in_rate_lane_order(struct intel_dp
> *intel_dp,
> > > +                                               const struct
> > > +intel_crtc_state
> > > *crtc_state,
> > > +                                               int *new_link_rate,
> > > + int
> > > *new_lane_count) {
> > > +     int link_rate;
> > > +     int lane_count;
> > > +
> > > +     lane_count =3D crtc_state->lane_count;
> > > +     link_rate =3D reduce_link_rate(intel_dp, crtc_state->port_clock=
);
> > > +     if (link_rate < 0) {
> > > +             lane_count =3D reduce_lane_count(intel_dp, crtc_state-
> > > >lane_count);
> > > +             link_rate =3D intel_dp_max_common_rate(intel_dp);
> > > +     }
> > > +
> >
> > On link training failure reducing link rate or lane count is not
> > linear. Sometime we fall from uhbr to hbr and then again with uhbr
> > with lane reduction. So would it be better to have a table/list for
> > the fallback link rate/lane count.
>=20
> This patch is meant to to keep the current way of reducing the rate and l=
ane
> count, just preparing for a follow-up change that adds the alternetive BW=
 order
> fallback logic for MST. I think later SST would need to be switched to th=
e logic as
> well, for now I didn't want to change this.
>=20
This series enables fallback for 128b/132b as well and the fallback linkrat=
e and lanecount values for them are not in linear reducing manner.=20
Can we have a TODO in this function about this?

Thanks and Regards,
Arun R Murthy
--------------------
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > > +     if (lane_count < 0)
> > > +             return false;
> > > +
> > > +     *new_link_rate =3D link_rate;
> > > +     *new_lane_count =3D lane_count;
> > > +
> > > +     return true;
> > > +}
> > > +
> > > +static bool reduce_link_params(struct intel_dp *intel_dp, const
> > > +struct
> > > intel_crtc_state *crtc_state,
> > > +                            int *new_link_rate, int *new_lane_count)=
 {
> > > +     return reduce_link_params_in_rate_lane_order(intel_dp, crtc_sta=
te,
> > > +                                                  new_link_rate,
> > > new_lane_count); }
> > > +
> > >  static int intel_dp_get_link_train_fallback_values(struct intel_dp *=
intel_dp,
> > >                                                  const struct
> > > intel_crtc_state
> > > *crtc_state)  { @@ -1206,14 +1236,7 @@ static int
> > > intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> > >               return 0;
> > >       }
> > >
> > > -     new_lane_count =3D crtc_state->lane_count;
> > > -     new_link_rate =3D reduce_link_rate(intel_dp, crtc_state->port_c=
lock);
> > > -     if (new_link_rate < 0) {
> > > -             new_lane_count =3D reduce_lane_count(intel_dp, crtc_sta=
te-
> > > >lane_count);
> > > -             new_link_rate =3D intel_dp_max_common_rate(intel_dp);
> > > -     }
> > > -
> > > -     if (new_lane_count < 0)
> > > +     if (!reduce_link_params(intel_dp, crtc_state, &new_link_rate,
> > > +&new_lane_count))
> > >               return -1;
> > >
> > >       if (intel_dp_is_edp(intel_dp) &&
> > > --
> > > 2.44.2
> >
