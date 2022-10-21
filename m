Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9A7607106
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 09:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D2810E5F5;
	Fri, 21 Oct 2022 07:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAD9910E5F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666337213; x=1697873213;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=64h2jMLhv74hSnWilLQ/jTiSZ0k9rhfYAly5VdeMsPQ=;
 b=C7s/CMZjRCh0k0zsMXRorz7a8SwTL1LPGRTQd+0bZYFKrC9g9efJaeIn
 UHkI52BUFPWMrtHyTDtFtqjPGFybq0PvdmY93olt9/LZiHC5foiApMESs
 8QCENvDs3kX6Ezabho4tUCunuGBrEwFjby7i0zaCq99KBSjBlyJ6y6qD/
 yzs03gJCG+eAlaFntx8oPQuuUE3Bqb/xMpR4oZV8BYGB/rWjlAvX+SvN/
 x4w34J6YtUnESaP3o7WlQ1pAinm/A71up4d82AmT8eoK7VYl3wiLxRZ84
 bl3ytArh5qDBNZl6xeTd94LgRvdezA3mJQDRELirmo08gZQU9DzYReI1u g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="294335235"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="294335235"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 00:26:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="699190110"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="699190110"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 21 Oct 2022 00:26:52 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 00:26:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 00:26:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 00:26:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+w6UPB91A3yKqSMyeZ1NMCMD9GeuQkifBsvOWUQ15EVsVs+SUA+MjbKNaYnmQeCWnKH2G+yhketrWNSExSIGobdQpNUMZwbynrOEF3YgtP6P1TUe6tn16Vhrt3T0CB19NdGHB4Jdq+mxRxL8D9JdjjMmwzELfXJ9Mz+ADqDmKFO4UJk0IHQKZHgPVyQcPMuB/zaqGZU5Jz72YX/BXw1OHeWJHwlJy6vSO2AF5OqCYuuFV8rOagBf1wqzDTllLoGLYh6UQhTW5aO5L5B4eY788ckpsioVphwD2epu8OPcMAz1WTiLWkgnAgvjq/3K9rSGTJ/3ofOvftLZ4XjT8QueA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s8SwTTfL3kCxeE9Ms3Gu9XBBJ0ab2GHsA2M82LCApj0=;
 b=C5dAktTDNv2U4Dn1ePXNS2QN/Vgiyk26pb5w6qQRTXeyd5zJwQII+hW+yJn/amPmf63230BCyg0ADPmGpuKj/0gu6bPMgVao8iDy+PpChGCyJLf03ObEmaGxbYqdwkg/ztKs4GdjVWOSkFGqwE7dJi8jI+d6vuJVsxpb1dIicmwOCdnn3CBj+R1KeahH4uI+NmBwqyuJrjWWB9NlZx0zl47tX6MJqBkhsQg2lHN/uiHVGVsLaaRXefYIeYIExbBEQZBCJ3sXMZxfvylFuxPAqYhXW3h4sNCYvtzcOghlowyl7UC0qBoaClxukZC6yfTvsVhg22yaBC5Fw8ZsExdXAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5271.namprd11.prod.outlook.com (2603:10b6:208:31a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Fri, 21 Oct
 2022 07:26:50 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5746.021; Fri, 21 Oct 2022
 07:26:50 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 0/1] Remove Connector iterator macro
Thread-Index: AQHY5HFvzkPK8t2JrkOXAyGru4rLeK4Yc9Kw
Date: Fri, 21 Oct 2022 07:26:50 +0000
Message-ID: <DM4PR11MB63604BAF674C11940B76BE06F42D9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221020104635.874860-1-suraj.kandpal@intel.com>
In-Reply-To: <20221020104635.874860-1-suraj.kandpal@intel.com>
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
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5271:EE_
x-ms-office365-filtering-correlation-id: 1ef68da8-2285-4d63-29a0-08dab3359ea8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7Pe+RfA+2phSQfp+4JwhsKxIiBjjNBLqrb2AX25g1KXC83QNGfjaziCNUKU07nSXZgbf/Dx0oSygEMnDQeVAi3MI5ylo7cQmR0yYrQsMS6xL9mPF9LqS3iJ746YOB8xLbvhbOhoQsV/2Q3yZF68kyHXZgh2E2rDovgnlXdtWj9hM5ETLFqvmIRT3VAt8YMgL3JhEpUIg04kez57VvazZrZKmq1EpokyBBZlL5RdSUIQoF09CLAR0PewUyGPT9G37b1Xt4XlblnyoxCiBw7twkw00IUKz3K33I47CspkS5VlXhIQInZUSzB9IMtnmFJu66Zgp5UKnQOQIasbiOywUb9fH/z70ht/rfnd+tegyWXcaY/N01jchFzt+NFT86PRxjwVt7TIgpofJTSv16m13U3/Acv8nOFOOF5EQw0Yxf0QrcTOINHe+xcvLE18NXgXdty5Fibo3JxK8o+orMORPUzdXVIDRJySbpzksR8uy/lHiBTzO9iX4wN2CCjbPh5mlw8/aVAO6XpgipouSkL3Ey7mN2lKZFnfXWiXwqSnjMqYRAp8kGNF2z6Q2tX4wwu0ItQ37M1yfQWaJxk5NyVHmcO9tE0cDfjeld7wlMKoOI7DVVrwE7tO3OQBk41T/FcYO7SaoTOH+3Z48hh9EFMYy8FSmt0wJHVsg60GB983Na8h7H6y/RxN77UZesmS+sNSzj2BPTebkAIDYBmFjj+sWdFLEsRPo1Vu4NmY+mDAb6bsBcZ9Mc0AttczkaO4UIqPTk/AhIb14/Qhs667Q39/WBg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(136003)(366004)(346002)(39860400002)(451199015)(55016003)(6506007)(82960400001)(7696005)(83380400001)(33656002)(38070700005)(186003)(2906002)(9686003)(122000001)(26005)(52536014)(8936002)(5660300002)(53546011)(4744005)(38100700002)(478600001)(41300700001)(4326008)(71200400001)(86362001)(316002)(110136005)(107886003)(66946007)(66476007)(64756008)(8676002)(66446008)(76116006)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BkgrGpEwuT7P8VZiSqcrfeip84aBaWrFGpbxOGOnyY83iO3wwTGWCfDumRiF?=
 =?us-ascii?Q?lR56Y+T8lXfXc8CS3GADoZ1PhSr6z1t+FnVUdq1wLEebZ8RsTKv4Xan3a2lh?=
 =?us-ascii?Q?5nTFFneMW7ESEqZe+vK4Xx1DbQd6q5OhwEqtGHcSqTUcjzszgUnyUJyWUeiC?=
 =?us-ascii?Q?w9w/pga+87QAJcjvs9qQzq5sBCWh5njeuCgt4COtCc03RYll7lnr1J4Xzhn7?=
 =?us-ascii?Q?vPyXQCR1b3tFMbvLZQjyRbBRRZhHSxfw1kRxOxLZ3efSonbzzNS3QgXgbzxQ?=
 =?us-ascii?Q?dlDrhIUTBn6aGJ96l9xedyA5krO7fRVifv/uF+CK6DwqXdu1jFH+VCWYVtf4?=
 =?us-ascii?Q?gJ+73uGZvEipBiI+TOOKf47N3p+AUYHAro4zRNKzIXT1NifipW4tBM2kMz1j?=
 =?us-ascii?Q?EWbUtjbrRp8P/ESWfKnDIs5MhZTMCZzMbmK1xwOxlZ+7XXI0fCUDgsR4h2QE?=
 =?us-ascii?Q?CPHut/uuVCNY8CVcLdReZTk20ZzAuSXW/MmL9QLb9f0XC1Cf6edUC03zdTMo?=
 =?us-ascii?Q?iyw72IJD4pri1PwwEmSH5jLMa8jX0b5AA3YzGsyCTx3NDyGr8jiNNhmFbC+A?=
 =?us-ascii?Q?L1cpsubWEg+VRi03iXgNsMnC05XDWrWZ0zyimXNKPy39BAywKkbeWkTtyNIC?=
 =?us-ascii?Q?HZ/xiQIyoIZ3M5WeiftUp6TLY4wlWSU1KUgPb2WzgbDT1ObqtidjvbM6lPHI?=
 =?us-ascii?Q?c1CK+sb5WfKvnOVMpEZJI+DfUsTGCIuqtr3gBezGpR/UNjeoh8UmaIpHKPo7?=
 =?us-ascii?Q?sBvPyWAR77Nd08j8mI0BE89jpTU7CTUN23jD6V8ZWI7XtQhRCcMjrPNhzSUi?=
 =?us-ascii?Q?Jyf740CM1F9e4qnuDnLTlq8MnPQRSLrg/WupndWzDt5NRJwbVYf3hbqxurRF?=
 =?us-ascii?Q?tkRtkFN5Gw9/fbITcj3UE4yQtP4FSwcwvuRPHJTjP5A4ncSlQb+OpNtNhXKB?=
 =?us-ascii?Q?HP/WhyLhfi6fbQxi9Ewp5BWSd/UKGjaqDvl6QV8npiMhb+MJBPjFIuPCaaxk?=
 =?us-ascii?Q?WLB4YTmdlzcPWvJUPLieE2ZBXRtat1WT3vBxoJNTMOPCGeIFSQte76CTKsIY?=
 =?us-ascii?Q?CAUxgyExD1FthJQ9CdM3rz+p8AsICsz8qWC3qUNG6xCh3c61mditNlJJRIj8?=
 =?us-ascii?Q?hA8S6EHll1fooXa0ClU1cxL0+0knTBxZgQMk328RbyQeN/LWEGOuklPgWE9j?=
 =?us-ascii?Q?UQAk1Xv6p/olWAO+ZSfCfC7p+/44XqtM6uRmoWM4bPdZmZQ1GAfNW4sVAmmW?=
 =?us-ascii?Q?/ank0b9au1jL0VAeijv1vGyyQZtCmkVuZEd4Blh44DQDnEBYpndSHLxE3bmB?=
 =?us-ascii?Q?XcBTOxUVo/LiWgeqeqvvjS0indqmnYkHpOQ+pM6zceFzPvtk+T9ckLkuay9v?=
 =?us-ascii?Q?LNRO0lk0g3nGShVVtJjsKvOE0HZMXAYJocA53sR74rEvjsY5+Ty5yKPehDP1?=
 =?us-ascii?Q?OPgnVL8DMDC9S8poRqyJRZWYdwMoKiHAephKyCkXdola6W4ZBUmjAfxUDCYm?=
 =?us-ascii?Q?mHNeSOlz6OP/PB8eVF1CGFd6IRO9yy0LY4YxlZAN6eMZfGoksqwADZSiVIQz?=
 =?us-ascii?Q?LKlEAmlgShEfCVdcJCYYer70KFjmRqTmtd5NqSw9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ef68da8-2285-4d63-29a0-08dab3359ea8
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2022 07:26:50.2493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QP2VSu3F72OcOO5BNtH7HgOWP8fJEK9GQQrkiUF/6kUuObBVBGArtWADHY3k9DvKdx2j5lqTchjL9diSGfiarA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5271
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 0/1] Remove Connector iterator macro
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Thursday, October 20, 2022 4:17 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH v3 0/1] Remove Connector iterator macro
>=20
> Remove connector iterator macro (for_each_connector_on_encoder) as it is =
only
> used once and changing the function to use macros currently present.
>=20
> --v2
> -remove bogus indentation [Ville]
> -change found_connector to intel_connector struct and return that, bypass=
ing a
> check [Ville]
>=20
> --v3
> -use a imperative mood in subject and commit message [Jani]

Pushed to drm-intel-next. Thanks for the patch and reviews.

Regards,
Uma Shankar

> Suraj Kandpal (1):
>   drm/i915: Remove one use macro
>=20
>  drivers/gpu/drm/i915/display/intel_display.h     |  4 ----
>  .../gpu/drm/i915/display/intel_modeset_setup.c   | 16 ++++++++++++----
>  2 files changed, 12 insertions(+), 8 deletions(-)
>=20
> --
> 2.25.1

