Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA25594F41
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 06:07:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 525F2DB47D;
	Tue, 16 Aug 2022 04:07:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C81BDB469
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 04:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660622842; x=1692158842;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dT6pTFgT158uO0rSfF9Fjhe/CPvEyQCkEIYP7VrUdwk=;
 b=Cjoz5+PM1ZAR2J3R7+gh2U4gJ8TkIYSxwVMpeZ0HYSkgEIu0R26y0fjp
 KcHI5E1o1DLNaO2k/Lg522lvhIifcjKw6U8D0x2lky9mP/Q/yqAq4KUbY
 bLqrNceGOcMRmGo9jg/GoggVnubt9OYLr0kTwgfGEioxbNqd1QL5AsHlL
 qvQQMWhQfoweO/woGjVYBslpaF+xGGc++C3v+MvpDLVzjo4LV0ciBu7K1
 oALa7EwI7Dcvdc+fYk1Wkbdo/Y/39rS922rXx+diyuFFT24urmEbG2Qk/
 5Hmz8Zh32TqbwV1shkRwBdfoc7ZPyC7BvKAqqylePX6J/915v1ESyVjtr w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="289688912"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="289688912"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 21:07:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="934732534"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 15 Aug 2022 21:07:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 21:07:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 21:07:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 21:07:20 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 21:07:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BNb7xIhR9ECiNqEj7ACJ5dM9g244YxGONZsbRUqcSbwaNyrIH7zNkv6fewDXq6PAMo3I1/5VjSlVPQG5SYqlLsfYmGcr2gSmiIcdZ3SG402vXMVazhQwXTL5aniIJuUdAQs7iuA1E/VCzbI1vDDcsBmu9FGty8x/yo1aGDbCCa1VHkKRev+0Bm9RLHeP6awMM0ccyy9u6n1DCj4l9AuDB9SldQ3VpclHBZMX0ipEH0xioooms/v52P9t/ej+Mi3+qQWY7UKDKM2YqGQlPmQNiAXQ36LyDU0jjTBtwIymJrolmm+jvcIMoumO6HOg3yRzj6835fE9C/us9O588WwCyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QvQjPFs90pRTY6M0A6KfI6PY2s7HxptMGEp01JXrM6M=;
 b=cmUSNXjN/ejKYj3WT4A+Ej+G7ckLzCz6cVYS2lno51czUdE0QeR0h5TY90hSoJXWyMGAjcLgP7jtRFr0GJaa6Tlt0ZEbU4JevQ/DWW3GhSnuZxTAX8IgUbBXLnV0OLAM1bMGT3U75Im7J3NZG5Cvzz2Cg8D4VmSQ7jfnYn1jxtglf2wAHRFOcvqdye1ujc0EKApI+B684sNE/+fTPgNAJLtGJLA1Y9zZS8j/JJ6gvnlyvrGMspxcojecWXkUUbtFeYPewxl+E20/V00vNUfWrSYoUyU3LZmcPbdcRcTyI+X/xiStK8/m1gNzegSv+eZ9ZxuZIvXcIjiEZB1XZ8nTiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM6PR11MB3545.namprd11.prod.outlook.com (2603:10b6:5:141::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.15; Tue, 16 Aug 2022 04:07:17 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 04:07:17 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 11/39] drm/i915: move dmc to display.dmc
Thread-Index: AQHYrZV9kf3Lkx+pZEeodEXIa1wJUq2qtEnAgAAi/4CABhg5sA==
Date: Tue, 16 Aug 2022 04:07:17 +0000
Message-ID: <DM6PR11MB3177D7C5DEB3D4C248F0122DBA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <034fed72ccfe9c25bfd7543991344a57340ceb43.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB31771C8CACC002848EF68748BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87mtcarlnu.fsf@intel.com>
In-Reply-To: <87mtcarlnu.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b2b44f90-b0b2-4b09-5477-08da7f3ccf37
x-ms-traffictypediagnostic: DM6PR11MB3545:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J3SeD9KjaZmZVOEbTEuPQKVEWq2eaWzStViBSptz9UC8WmAkoMh3O3x4eI/Wa8kjz/n8S8DMTsklVGKL8aiLtQ6gvYwXtz39nEzXFO1pHbCdyvtg64CfLRHSBeFJH3QSVtGjZ+5b2WKaMaU691gc3jVsm+6TaxKr5vtHCHpE3zaWg16N4h1ClC2z0m34KJrMl/+fTXT69dPhjGhcz/flq1jcboyl50yfyEY+fSPAMtUvMFRwTNRYKKFmeY1UGgd4zVvAZFsezVhxxklwYgPJMdEkTc/KtFqoIslwQwOnE477qifJe3xvbFX5idmTYE0HCBSFmpiXk+oDJsvOWogE9Eijnk0h2T6cXs4krATZnSeAjBr52gG9Pi38z8hMblUkYrqpcrmxFxBpgiADZNtk2jV43gST0jSsRtYVq4BCKc64CwZAQDP3YHeA1auJDg1UaDLeNVl3lsc3tFvOsMTpFdr1KjW74DQPJjNTLGTJMs/+ghMH/94kbZ7BWH/oUl0EaoDwrAomiVT4QhQlEy8+OD9P0p+InDsUi+uJ3uYooBUnBtw4Kp/WWACZbARE8c2X7rE0BiNQp/6C8BljPrYxqJ4DtH9A7Ww3GPZuE6d/+YcgUeKyfZfylNYn+RHxpBjRjcNvA90Sy84AdZ+HEoa6AOLWtRDSN/etIVUBv0R1xZPcghCGOh8Dk1kC+Fv3gFDpac4/TfxRa5qhbQqPnjhjs533aufN2G/VexEeTZAB4n/9Wkb30iROhHn/t9sVmWI3TROY2ioCtPfJUipmmUKQsRLTlEkb4pkdrvPqHi+ugjx4NjwjLG73DtPB9I9utWb3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(136003)(396003)(346002)(376002)(4326008)(83380400001)(82960400001)(86362001)(38070700005)(122000001)(110136005)(66476007)(66946007)(66446008)(66556008)(64756008)(38100700002)(76116006)(316002)(52536014)(5660300002)(8936002)(2906002)(6506007)(53546011)(26005)(7696005)(9686003)(8676002)(55236004)(186003)(71200400001)(55016003)(41300700001)(478600001)(107886003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4haCXIJfLbjjkTkpF+XhXflYJzF+5j51D/Se+MZGmjMTbhxq3F9tK9EApfF3?=
 =?us-ascii?Q?lHc6IuGVZJldRfdfuwK6Lw5mUqcTs20uKMNaOmQQoOGJ8c/ir7mySncfeSK/?=
 =?us-ascii?Q?Hi0Si8NtCfrH46VwEsj0Wjqn14o+HgR4pqq0o9IMGj4kwC6lqFkloTTOitTz?=
 =?us-ascii?Q?a2Krw5Qw16EgMwkQXB7w2RorKGuN3zpFG3XDtPErEruDOQFAEGx72YhxT/ju?=
 =?us-ascii?Q?ri6Yt8M3v61KTkkpNDKpaX7ETShk0Xk3bnGi5VzatROyOT2itKIulfYNLtrb?=
 =?us-ascii?Q?sZ4JBTbAdzbuO9jy7DgA5kTx79nrKxL66xm/O32r6oXuH4YlPVWMjqDtLc+a?=
 =?us-ascii?Q?6Tm//T8oi4CqzU/M3Sg7lZXPF9bQ/T0WRjykYMPcPoDcQ8KNmmG6plymWEPi?=
 =?us-ascii?Q?XPls3YTP/x8Nkd89gxFkGLcbo4fxLhkSeejARuGVsD/Kqme5CDVICyEBw0vu?=
 =?us-ascii?Q?4qMLS46d2N5GwTgHXAvBs1y+NTK5BQRQiLZ2K6bD6PvzIGwz/YwrbMCE5AAC?=
 =?us-ascii?Q?QvY7w9CsV4DVMp4k1kH0xPz+PerDbyFBAXojUbAfJHLSreIxxGBvCT+txPVr?=
 =?us-ascii?Q?vtirbopTT+HaqAhr0mI9Asl+quE5mJSMxRRE3ew+Dk9S2IHmnyofm2JPg6bB?=
 =?us-ascii?Q?hHlQpJRTEJHUN6keDARID/3R+hQxF+KIPjf8H85Ec6E8C524rU06PI0XfxwO?=
 =?us-ascii?Q?WWXmzx5v9Boy+w0BgLj/aAtQO/BuvyOTyhI3DV8I3QLUox4V971Qz+43rIub?=
 =?us-ascii?Q?gS1zvR9nHkDST3q6dKnGNYsHC4o6Dfi+OuuKCa+0hgpJQxEOeXG10qIC1zQX?=
 =?us-ascii?Q?h1Z8Fn/JnGqPMPoKY2M4x9Ty/L6XHpSGQMBPZF7wucqiH52D9c4jB1hR42TD?=
 =?us-ascii?Q?R3SNxJIGcUEzELkLtRbNFOg5ZawMNbDL8kacWSqm92u6e/7BbbB9/MQWN+AZ?=
 =?us-ascii?Q?8AhlHArMBy6p7q9LvOjbitn8VKtigjTig69ALLAScCkGux0klNgMZNkEtEGN?=
 =?us-ascii?Q?EOSzypM810mpMQLNimuKjiNlnIgBtXd5aoogWr0UcvGHbEdZy5Xy7TZnd6zS?=
 =?us-ascii?Q?6Ff6wKWZnqFQ5yWwCJ3GROG3GlR+m7hln3cFGgp6nrHyRUz15Y0MgvSxhpFj?=
 =?us-ascii?Q?1nQmXb76FbpRyO2VrR0miQlKOi+9ZljKiPeaWnmpej059NCnTTVE+6sEtXG/?=
 =?us-ascii?Q?HOhmDQFBm1BkUTNEcHtTedSW1uq0czhZMJFgsTlN/OyZ2JVpJt0KaFIAzKrG?=
 =?us-ascii?Q?WrT7uwAXwa3O2dJwcgsjwW+Mmnc1v7ZaEiDmAzyFuV9zZHpvUZub4/RR2kLU?=
 =?us-ascii?Q?te/sUvcWS724hBVndY2rG6UCBjW8mg3W4FW7TRh0Ms1dPGHGPj1/QDAq9GfB?=
 =?us-ascii?Q?0XEebaD5lFqMVGnHDUqvcHyOHW4wbdoEZ4R+QSwVPVeuI0FHJ345EYZmBm+I?=
 =?us-ascii?Q?eZdXp0Hnc6LBroeC+0BXnY6GkniRraqCTclOzR9S50fX/OcOgNlEmiqBv7Kc?=
 =?us-ascii?Q?w+w2WV6PmDI3DafPOxjjA+yv0vJy/IR6zYj1IyGQCZTtYG5TUJnqWj/5ss+g?=
 =?us-ascii?Q?QjCyRkWICElfrFZis8y2txJdlcO1/PROAbfn9GVc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2b44f90-b0b2-4b09-5477-08da7f3ccf37
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 04:07:17.7465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qFyW9Ok0GESii45NVHvDDwpmKKNiUqemcJCS8lKrmSJVHbnuV/jz5vc99JYa4Z4/A6yXyP5OOHNfpRZoYtMPWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3545
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/39] drm/i915: move dmc to display.dmc
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, August 12, 2022 12:31 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 11/39] drm/i915: move dmc to display.dmc
>=20
> On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> >> Of Jani Nikula
> >> Sent: Thursday, August 11, 2022 8:37 PM
> >> To: intel-gfx@lists.freedesktop.org
> >> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> >> <lucas.demarchi@intel.com>
> >> Subject: [Intel-gfx] [PATCH 11/39] drm/i915: move dmc to display.dmc
> >>
> >> Move display related members under drm_i915_private display sub-
> struct.
> >>
> >> FIXME: dmc really needs to be abstracted and hidden inside
> >> intel_dmc.c with display.dmc turned into a pointer
> >>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  .../gpu/drm/i915/display/intel_display_core.h |  4 ++
> >>  .../drm/i915/display/intel_display_power.c    | 18 +++----
> >>  .../i915/display/intel_display_power_well.c   | 18 +++----
> >>  drivers/gpu/drm/i915/display/intel_dmc.c      | 52 +++++++++---------=
-
> >>  drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
> >>  drivers/gpu/drm/i915/i915_drv.h               |  3 --
> >>  6 files changed, 49 insertions(+), 48 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> index 030ced4068bb..ca22706e11e6 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> @@ -10,6 +10,7 @@
> >>  #include <linux/types.h>
> >>  #include <linux/wait.h>
> >>
> >> +#include "intel_dmc.h"
> >>  #include "intel_gmbus.h"
> >>
> >>  struct drm_i915_private;
> >> @@ -108,6 +109,9 @@ struct intel_display {
> >>               /* protects panel power sequencer state */
> >>               struct mutex mutex;
> >>       } pps;
> >> +
> >> +     /* Grouping using named structs. Keep sorted. */
> >> +     struct intel_dmc dmc;
> > Wouldn't it be better to skip this patch for now?
>=20
> Why?
>=20
Since this struct wouldn't stay over here under display but eventually land=
 up in intel_dmc.c, so was thinking why un-necessary intermediate step, let=
 it be where is resides as is and once for all can be moved to its final de=
stiny.

> > Anyway the patch has a FIXME so can up with a proper patch later and
> avoid double work.
>=20
> The FIXME is a long-term todo item, really, just logged it somewhere.
>=20
> Basically this should be struct intel_dmc *dmc, struct intel_dmc should b=
e
> opaque and defined in intel_dmc.c. The patch at hand is really trivial
> compared to that, and moves forward with the shorter term goal of putting
> all the display stuff under i915->display.
>=20
> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center

Thanks and Regards,
Arun R Murthy
--------------------
