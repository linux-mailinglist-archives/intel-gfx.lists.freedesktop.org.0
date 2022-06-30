Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC9B561596
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 11:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6DB112ACF;
	Thu, 30 Jun 2022 09:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5152112333
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 09:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656579812; x=1688115812;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NeQAcRMrCd9mxC55kQ2uJHVW/JxOKIGm4dYAh1njQ4M=;
 b=IAR+0KQ9bF6+h3CQdStskh5MniK5h/JZKEFkW7HALVbN23FdocueFnPk
 WikB4z6qDZG0nn4HoJxp8HG9nwpD8aDpWhaxB3SdCoiKHgnsnXIZFa0gy
 tXYPx4tQhM22KvUA6f6Ro+LEc3Qxdv/Eni2/3Jm11TMTqFLBxtUlct2tU
 3/aIchwczZ63L90ufXhmrB03yQVfk/Q69kgiPV+zPk2m4lNoEjHXg8mfl
 xC9e5quaFfP3q8uJk9lKs4sIkUL1/YTn5Q7+8bVdJ3DeIbuG66NA5yKsV
 E+UuOswEl4pCwzC7hbsUYVugICK2plcfVoBCMrR5SB2XPQrDX4ju08ShC A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="282327351"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="282327351"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 02:03:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="541260166"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 30 Jun 2022 02:03:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 02:03:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 30 Jun 2022 02:03:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 30 Jun 2022 02:03:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fKN7ZqHZB5eT2yyWSXfO5D86LPGqdSDcoihtDvCmNlU8Wcph5foOVzjdd0k4UbkeQyZm8hmutJc16juWa1EpmN+Hw+XZFYcNql1sGTUW3+4b5EaO9/mJSC1i9FvHp2hxHXj0xBmMQPlf4iqIqKQM01M7tAkWrh0TCz7RCCHygBUppAT8LDY/q5xdXO79WhSRqmoH4PJt2rDegXbpwlbpmJbUEPnEPqZ7FEzBch789lMaTpfl4N7CvL/advtSNRoNDfDqrkYDB+3unkx7AecggRwwOg5kSL66smEctdbKc/eZ3SKQ6BzVh35AwspyIRyP0g4BMKH1foEPtqXf6Yfouw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nkrs2Z5NVQ7xuKRyv+4QsVQpMdCXRdILaabD2+UWaSQ=;
 b=UuEZmNKNgOqd1CH0sG04chYe++y47q00V98korPPagGlSKtfV6wekck3iRQYZkztK9vecqWMLe3FgR6a6JKGAYdhOFb1foXNEzO+KovD80fTECJ5JaTj9AZrgN7l2qveYP61Sg49NQ3UYtJWDqnPbRHR3AP9wnpPDG8o8mypmcA92K2+pDsrDxzkIBTxZAIFKM5zOf7tnqSNLN6PQHWfkfPouRWd4KNzaqONgzEkT7/LIprW3Tz/l4NYL1u8sS1ODIY4d0WZZHY60jvdukqVOcEnwvse2z5VnN/EUl0CpHhk9v/O0orp9s6szbs0tm3zZTkd0FPSklPa/1zpkfnqoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CH2PR11MB4408.namprd11.prod.outlook.com (2603:10b6:610:4a::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.14; Thu, 30 Jun 2022 09:03:27 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.015; Thu, 30 Jun 2022
 09:03:27 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv2] drm/i915: free crtc on driver remove
Thread-Index: AQHYjE/ttYapa21zNU6JImNgVB3BLK1nklQAgAAP6EA=
Date: Thu, 30 Jun 2022 09:03:27 +0000
Message-ID: <DM6PR11MB3177171F55430E985075F9DEBABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220630070607.858766-1-arun.r.murthy@intel.com>
 <87k08ypp9z.fsf@intel.com>
In-Reply-To: <87k08ypp9z.fsf@intel.com>
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
x-ms-office365-filtering-correlation-id: a352cc44-f1c8-402a-cbd1-08da5a77654c
x-ms-traffictypediagnostic: CH2PR11MB4408:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S8Vz7cMxEpMthSm4mMq+fkcNhWmnvPEDKdIx+meoVgINNatFLAyOAvtY+yeekweUYeSJWj0zITGfD0GNlMrqX+qB7b5Mq7EVwHIgbwUn1DelOq99MQlnxzgJYKnTMUYmlz3++EsX6/hYwGbJoIYTf/h6ZwCHMzn1ju9bk797tT2DXefsLWPdE4jiBVnXF4E0H0J/n8wRfMmJXW4NjrwHlosYvOgnpoKeZJE++Q5RMwkF9DxTeTahFI0/+ZC4dB76NIcb2zWRWdbKOR4HlCsAykZh5laTs/VJugolhL+Ks60V2RIknpqzAIDym4cMH/n+aKZ7Rfzyjs0UNNmTfS52Xn5rv/7feECOOa4MlxrGvLd+Gp1HSmrVgC3z+ZtoP9OGmovSm3BX7oihH+8cCZBdkQgSgEo7heKYkAoN2P0xhL56BQXPXfUz2+DrSlvZlVAdXfGowTVFotAQkf0AT78TtMtmx9eQA7lHOZJeY3yVGhboop2t/087W4Cxzc1aVuNXC7i4bFQ2ECiTx+rxIgURSV8feO5MigE62+wurvQWY6kNCIel6v3JQQOXtszrF4o8qbq8iUdM/6ezbex1KM15Il4CyWrnbo6KnNghLt1SeutVCWd9OI7BjW8uqvzXuVWKt9LO6eoGTIF2KMp9WHgZm4O/tRZxZ23W5qyIaXliyCzhKFzHh2SSytukL7SMKl/8l0W1mO45LtnMo7P1GNKB4pLRppCiKr83ZZijjuisloQfOtEHry91fQ06mX7cBolmmWA99Dl50JIM9OnlNeAKTDghaLKR0aZBuk9eqZ+bPaGDT2ZNx4aB/MKPROVIRQ0N
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(396003)(136003)(376002)(346002)(478600001)(76116006)(4326008)(2906002)(33656002)(8936002)(8676002)(52536014)(66446008)(66556008)(64756008)(66476007)(54906003)(5660300002)(71200400001)(110136005)(66946007)(122000001)(9686003)(55016003)(26005)(55236004)(6506007)(7696005)(86362001)(316002)(41300700001)(38070700005)(38100700002)(83380400001)(82960400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4gLe+NkL7ewimKvX2YuAeGku5id0p+pn0Vb2JFpi5QAHjGNgp4Nvk8ycOKLl?=
 =?us-ascii?Q?yZBKWWPAtkKvi3CVUBSrh3WqpSJ9v53nZ0JbZpk/3R6lsahiclM3u/gElnqd?=
 =?us-ascii?Q?zygwpYHjHNNoOeG5WLUxvY3TGkz8uVeR7Wz/YD0hMGbfAEtCk1j76ajXYFtr?=
 =?us-ascii?Q?/sVDwU8wU5NFyxcDSceWikXEuzav5qE2WYfWR9mWQnWhbNC1Xk/P5ARIqoBX?=
 =?us-ascii?Q?t2ZZ5o7rR/CQI+fmdWj1uPcFa00Kei53INBWLrmNA7tdiciluY9AvWMkDz7Q?=
 =?us-ascii?Q?yHOjGxXYEZHpg1kOXiUwJMfi9pgYolhe3ssy5INVxIng3uoHaqM95fRQDYLG?=
 =?us-ascii?Q?3mBh3YZnAcouAjsBAxydGcmIyQlqrhpQ9P+XAVGHQJGgmX6b2bOaBPAklpt4?=
 =?us-ascii?Q?2kQVg4UBe11Adr4Pp7Eawfl1VrVdHnHQKqmt/SvEAE+m2alYNq9TsqbaRDkP?=
 =?us-ascii?Q?3ClkNNPq9Bs4lNprJeUtsG+dumA2g1tL/77l81Jm0ds0B6VPL9k/JImAJniT?=
 =?us-ascii?Q?jXTF/yrtpAswc7N33pXZTpxfxGdldDnzr/y/sOuZ3/hkGFw45QZwAvjayE32?=
 =?us-ascii?Q?pouVewgpbKJpdz257hKqN7nlR5Dp142ohkV32b1MkM9eNRXHfusQvCFQQzEJ?=
 =?us-ascii?Q?EeD/6i3bosg+5cy/SX+eVKuevTgKMjoY3o5YU/TMnSrQnOQT6vxoMTM/1+CC?=
 =?us-ascii?Q?kRw3hdBhCZ28Ji5E7gBGX3b5zFL2eJGSZIYQfpr5bZsHgYUu6rb4rH/cUCIO?=
 =?us-ascii?Q?TytZGu3EZi6soAAiuXjAQ+K74q1MZROL18PxNgG3vMimjiiF7bM4ioK1RqT1?=
 =?us-ascii?Q?VzBslR7qOJTG2woxLbVpBDQuac3+OhP2TreKwYC2ecRkxWUQOtXXjFgaQAb9?=
 =?us-ascii?Q?iIXcV3Q7TzYwsxjpt8CWRYaQXBuF1tIeILTLuWnOCpwoAW24LqUrwOyxw4t7?=
 =?us-ascii?Q?ym+E4cyZc4Ia/Gz8pfV9SI10lLQRDrNXZXYlBfsDZ3/UKc5FybDGHvgOCAvG?=
 =?us-ascii?Q?veoW/iANoiJxnbEQTwFeOtJw5J84dIZXwTv2YMOwvxv1L680dhMKQMwJ3Wb8?=
 =?us-ascii?Q?YZ2Y4j7hQLewa4Ynwl8SQgemwN35ajopuxMt8svEMIfkFJzIYh9rJKhZg8kq?=
 =?us-ascii?Q?FmKYdzSRAQgAbgL7ZYVw0VJibF4v2WVzV9eqYvO+QwNC8Rtbup/xXSufm9wJ?=
 =?us-ascii?Q?PDFTB0MIKHmv6asphDNiY6M4sxCVd+QGivFiTe7cKn2/GQ3L5C7SPM87UZM+?=
 =?us-ascii?Q?a+V+66tvBHWUpG4j+d3xDpQDn3wAO/ayvv9cxI0A8TuHug3jgybGL7hXYrex?=
 =?us-ascii?Q?fk7Csta4Ltsu5+gPrHo4NwldV7IHyAuwaRWeUL2qayo66s1yoWJeZH6TPe5K?=
 =?us-ascii?Q?MjquDUCtAA5aX9ukxWR1+HV40IU74rGjcG5g2yUMnIDtDirEos8Haevy92hD?=
 =?us-ascii?Q?S1SzBFUKcega6IDYx2xkmwNX4fLR/CVDqObo7LvCCnhq4xA9IwTmn0aTxZFb?=
 =?us-ascii?Q?TyzoqH1sh2Mjh9gdgA9paDYTeoRNLekVjrNpjbgjpBA3wSAUw54WOiVTECMX?=
 =?us-ascii?Q?ORCIgxBdPBZAeXuxsAdDB6irgWguaWYkvXTfwgcw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a352cc44-f1c8-402a-cbd1-08da5a77654c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2022 09:03:27.3017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6e6xDPGEm866MCu8svk/1AW62VL6XXAWmDxU0vyS/Ly71ZCoj6AiRRDu5pwrJsAMUw2aCGZ0MtSUoB3W+d6ZBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4408
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915: free crtc on driver remove
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

> > intel_crtc is being allocated as part of intel_modeset_init_nogem and
> > not freed as part of driver remove. This will lead to memory leak.
> > Hence free up the allocated crtc on driver remove as part of
> > intel_modeset_driver_remove_nogem.
>=20
> No, there's no leak and this is not needed.
>=20
> See drm_mode_config_cleanup() calling crtc->funcs->destroy() on each crtc=
.

Sorry, I didn't notice this function.

intel_crtc_alloc() is called as part of probe->intel_modeset_init_nogem->in=
tel_crtc_init
on similar basis cleanup/free should be done in  driver
remove->intel_modeset_driver_remove_nogem->intel_crtc_free

Does this look cleaner?

Kfree(crtc) which is called in crtc->funcs->destroy is intended for cleanup=
 and hence
drm_crtc_cleanup() is being called from intel_crtc_destroy(). The comments =
added in
drm_crtc_funcs say that cleanup resources on destroy.

Again looking at the driver design, intel_crtc_alloc is not done as part of=
 any=20
drm_crtc_funcs, rather on probe->modeset_init_nogem, so calling intel_crtc_=
free
from remove->modeset_driver_remove_nogem would make more sence.

Also, looking into the func intel_modeset_init_nogem(), the func intel_mode=
set_driver_remove_nogem
should be renamed as intel_modeset_deinit_nogem().

Thanks and Regards,
Arun R Murthy
--------------------
