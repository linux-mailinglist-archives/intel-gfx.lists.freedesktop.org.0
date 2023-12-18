Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FABE8179E3
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:43:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553F310E2C3;
	Mon, 18 Dec 2023 18:43:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 269EF10E381
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702925015; x=1734461015;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u4DZ51vuSxU64DLPfKijznolasxzjQhVG6/smOX+7KI=;
 b=dwzEs8V5iSpD9Sc400qORWKo+2JY/0dcmjq7zZSW0vhFGCfqPrRwHB57
 /xk5aOUM5j45Um/LphBHt5vYxLVnz5Q6jrlT+A49ROCP13MIcUXJoGBvR
 yaiVMRY7WZ40rMfxRHvu8DQQg/Q7c7vAP9y0yn6cxLV/gk4xFKl9X3nsY
 FzLckk3k9pQCTaW6uc03LcDC83EmggtiGd64wGH7UNlyAbuhc8zMTZyNk
 Fv1bQJKdNR16ZpljTptVLtLsqpSxiD/bMydjdlsaNPHoryrpSM45nJsp5
 g28jddUebiWk6jO7kVX+rBRCMcXlu8J1nHwfbun9QEF4t7e2D/WOnuUhv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2380195"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; 
   d="scan'208";a="2380195"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 10:33:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="23882993"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 10:33:48 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 10:33:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 10:33:46 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 10:33:46 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 10:33:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N1E/dmr8pQS4QwwPeG45uju65O3I07aUAvh1beLfYxgcxE5pBbFgmIpF/noiXIn9Brr/GYlwDZY/03km3GTejwaLN/HyaAKt/vwGXZ7eMXBLjp/wLU44svTCpyyx+uDoEjWuscqflrQIh+4+8bdZQqQtmq3Bg1QWljCng8mH0oZGujqsIW+enXkvmcJS+Es6LV6kUFThkvZfM/OJ/59yiMUbCU68YfGdq3JGnaHMkHIFwew+bXOxvAblrZoxShfIrpQOHQD4jolf6KnZI1Ilj6jeUvfsMoLOj3wiG7f+yR0zp2/LVgTYGhSWWl/UpNLXElJdm5ycG3K8gPPQnXowjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PyQrhZKqQMPbLqljjtBabmJEOGH+mMdrBWIDU1vAdKs=;
 b=Mnj168RawGUAxtAMThlcNaKDb0Iuap3racqmdumMnbLxXOJU+8WpONWCpiD6Wlbn8x6BS05LFE+SqGZuFoHIJgX0wX2CqrcUNLrOfoq69MqyYZ9Hl/oLl3+GvJIk93EwjBfJbAkC/yhTAcbo3Cz7SH1szMLZISSJ3NXHUHyF9fS+FW3LkkMADhPkydcMmPvB7gFg8yd02ZVVMXc3Ori5fizFGYTisFyZKeo23IulaQwhM96NT7ykoA2xKS5xJg/6JqcknuwUBtaTfhEvIo7UO2EBg4bdfhCbLKMArSJ2fPzlSv52yaVp62Zp/jV36F5Px/WglSfHzAX2BFRGTb/5ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CH3PR11MB8137.namprd11.prod.outlook.com (2603:10b6:610:15c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Mon, 18 Dec
 2023 18:33:44 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::63a:96cd:589f:5b76]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::63a:96cd:589f:5b76%6]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 18:33:44 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Subject: RE: [Intel-gfx] [PATCH] drm/i915/gem: Atomically invalidate userptr
 on mmu-notifier
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gem: Atomically invalidate userptr
 on mmu-notifier
Thread-Index: AQHaIhj5ruTxRdbK5kih/JzkTjaF47CvU/oAgAASIiA=
Date: Mon, 18 Dec 2023 18:33:44 +0000
Message-ID: <CH0PR11MB54449E9E6A63E244DBB21B94E590A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20231128162505.3493942-1-jonathan.cavitt@intel.com>
 <ZYBt5n2BkJFqommW@ashyti-mobl2.lan>
In-Reply-To: <ZYBt5n2BkJFqommW@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CH3PR11MB8137:EE_
x-ms-office365-filtering-correlation-id: 5b888326-4f52-4625-a429-08dbfff7ddad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bM0azBrTZyVqMPNobwbIbkvWY0V308QtVQpJS+wB9fZGX+cCkKsAKD0X+863xQ4rc+AeuaFKC6ZVnG/VjOi5varbE99b5jAtJDrOhA55Zu4iTDYQp8sr2PcmpXBXf7pc+a1bLdodUsfGhVrDOwJiM/SikrbC+zcbiJz/2h1KKZvote48NLEby+IZQJvz2fTgcHpDm45Nu2DKTnlHBZ9QA3+SohpjLu+ZaA67iD460nbL2OEjc8pZ9TUTCnFUs/5LAA+BftGxOQgNhjGLeqqd2JnR9KtkEc1dUo8mX2rc4e3D4iq42RhA1huLJthteazZFhG22/IURgQJ0PjLqQ8KFbfdlL5oz75cG/f6PilBKqyqWZrp8Q1yvmjLKVDmfbRPYg3hX55xEVBlMV2+z3VNJCN7sEYogID9KuF+POaT5Wi5P1F51Cba3c2r5Ti/Fu9gxQaEgXCUG23BcmHcVgFu8aXthjYSTDzPihtEYdGihIpVU/c/PTOXoUdqYC6yFeXmtQHQLOCmyKUwcfgK+M5z6Qn7iBfO7BwHr78H66ALS47nS9yDpmeRcLP7JNrYRdkRz/VYqdGkZUiUGlrGoFgI1o/4tSIZIDN0oKXFd7iPKFlQJw4Od0xJSRFH7UGSwzdM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(39860400002)(376002)(136003)(346002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(55016003)(26005)(6506007)(7696005)(9686003)(53546011)(71200400001)(122000001)(82960400001)(38100700002)(38070700009)(86362001)(33656002)(8676002)(8936002)(4326008)(41300700001)(5660300002)(2906002)(83380400001)(478600001)(76116006)(52536014)(6916009)(64756008)(66946007)(66446008)(66476007)(66556008)(316002)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7ioOksrblxxtwym8FifRNx3QBnVKtAWxHx76gz/5RpoyxpGEHYgDiUitr1as?=
 =?us-ascii?Q?n4cTftLrH5lGqgbN8GsUb7uyJCjK22LaC50cBWmkVlhduU7Yn9BZ7A/1/w++?=
 =?us-ascii?Q?g5jnnHnKGRdzSUvjkLTNDxmdPiHYREQYVuHrDLR20x64edZGbhY9hhdsN3Wv?=
 =?us-ascii?Q?1ODqLtYbjrsjEg28+enBBUL29MrbKHqayhAgQaJKQOt1USTDIgcWIQNglVpo?=
 =?us-ascii?Q?cS/hVrJnOKzhgeSIAgKHyg1Au6GYkWrbE24frrCI/zSFpIwI1+dCalqXAmTE?=
 =?us-ascii?Q?G49loLCDnxRlbSSUBJPpP+rHP8cGOYK/IbKOxMreCpen0QYXMCwIurPuEV1m?=
 =?us-ascii?Q?puzFI7vy381eDf/LsfgY5EphRvnf7qNvRTR9r49kc4lplb7mcv3ssZBqTODa?=
 =?us-ascii?Q?9qxI5Q0qD0o2jGJGP0YambzGBO5rx6BO2jglhRH4qxCpuI1rtRkNnVo2EJnJ?=
 =?us-ascii?Q?drKgIjErcwAYVi1Zv4DVHw8DRxgg6F4NBSHoXwqE1WKkm9GxeiUWKCFkTY0p?=
 =?us-ascii?Q?uTx+lnCyTCB2yAof+q/Pmk0+ZcY/7hhP4/rFpSGsKIiAPswImex7E7+hpx1B?=
 =?us-ascii?Q?WW+kHfCl/Aoly+WLrzA/W6nMcabIKjnOGeuLsdl+sCSKwBQHzRC99Iktrm97?=
 =?us-ascii?Q?ix7/0b2ZmusgDxODPoqCbIFxMb4KxrKsCAXBVnx5A3519NPnSqkAKn+Y3STH?=
 =?us-ascii?Q?meIT4/9Eel2kp9V3nuU3apjzG9yVTeszQfDmteVFdiYOCD9mb2B4XZU+MknG?=
 =?us-ascii?Q?XdG/rx5cQPGtOpARppcygBUIEklyqn0rwrRKMCuCb1AM5vtLhcm3cmJIaYuF?=
 =?us-ascii?Q?clCdFZLrBrAS7oylq7a7XYe+muELxLRXk70KWAw7pU8DAC94XwyNcBZVlbIL?=
 =?us-ascii?Q?CG0QH7fik1UZNao9573j+jQE3jnt8w96UR3ZkvY7zidW/MF5JHk/VXI6IvY4?=
 =?us-ascii?Q?j3JX0oSiDs4o4gTavO1Qg5TZT57gaJxPWygpygj2OQ+dyLIieQstDAVC3g20?=
 =?us-ascii?Q?VPRyqtijZS2kgyOTPFWcOpghsLkBcELitVpCwacnMGmDGFAPXLMaRSyIU4qo?=
 =?us-ascii?Q?KT29CZYOmYqhVVi1s1g+2BIQ7WK62v4EPi7IZSps28sTF1+e8OYcyOsKpyis?=
 =?us-ascii?Q?RMAkZQn0GzkLRwZNoK8fLeiOvoZDfZRnkepApg7FYz0ijwjuGD1BNxoeclhK?=
 =?us-ascii?Q?iZG6G3/PXuJozYVrqmaYQ6zzdc5zTtlsq+K6nFmp5vOHZdJyCjBcLz8cOTbc?=
 =?us-ascii?Q?3apJjeM+0yz8Z7tT5cX9kPALZis0jqGB5vPHpxAzeVZJm+/X4Fej/8UWRxzk?=
 =?us-ascii?Q?DEFrf5bCn2ru8CTXGNMKY56dqOqoFvyn9Q0ZmJn097aJ6l845CiOkfghIGop?=
 =?us-ascii?Q?79k8plIQcOirMk46KhUghiyVCH6HeFAIXQtHS4LEOjgYBuJhwlTcPgZjW13V?=
 =?us-ascii?Q?1hocoQgobW8X7RxgtzI1nIPDv8j76TQ01iU0yhAo60kXal50OyEBgJBYd+uH?=
 =?us-ascii?Q?ApLo7lxMfrnTNhEBH5pJCNqhWuqxs98WONnHWG//ZUnmXvwvM+TArVshgtWi?=
 =?us-ascii?Q?PZdhESRB4WtCmNb6lwm2DGuYQ+L7EdkpOLblRvEp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b888326-4f52-4625-a429-08dbfff7ddad
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 18:33:44.3847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dQIBYvpjM0l9wT3OoIANj4RTYgcJnggWX0H8KMX9YqX29SR+zRjknOFqFlQrYnX5Toh2IqvH8MECKP5wyjhuCLTTnqnKQihbHRZSgkiKKfs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8137
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
Cc: "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Andi Shyti <andi.shyti@linux.intel.com>=20
Sent: Monday, December 18, 2023 8:06 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org; Gupta, saurabhg <saurabhg.gupta@intel.=
com>; chris.p.wilson@linux.intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Atomically invalidate userpt=
r on mmu-notifier
>=20
> Hi Jonathan,
>=20
> On Tue, Nov 28, 2023 at 08:25:05AM -0800, Jonathan Cavitt wrote:
> > Never block for outstanding work on userptr object upon receipt of a
> > mmu-notifier. The reason we originally did so was to immediately unbind
> > the userptr and unpin its pages, but since that has been dropped in
> > commit b4b9731b02c3c ("drm/i915: Simplify userptr locking"), we never
> > return the pages to the system i.e. never drop our page->mapcount and s=
o
> > do not allow the page and CPU PTE to be revoked. Based on this history,
> > we know we are safe to drop the wait entirely.
> >=20
> > Upon return from mmu-notifier, we will still have the userptr pages
> > pinned preventing the following PTE operation (such as try_to_unmap)
> > adjusting the vm_area_struct, so it is safe to keep the pages around fo=
r
> > as long as we still have i/o pending.
> >=20
> > We do not have any means currently to asynchronously revalidate the
> > userptr pages, that is always prior to next use.
> >=20
> > Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>=20
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>


Thank you for the review!  I don't think I have permission to push this ups=
tream,
though, so you or someone else will have to complete the push.
-Jonathan Cavitt


>=20
> Thanks,
> Andi
>=20
