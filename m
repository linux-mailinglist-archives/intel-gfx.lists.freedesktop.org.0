Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7668C73D923
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 10:08:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6E6310E1C7;
	Mon, 26 Jun 2023 08:08:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 466F710E1C1
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 08:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687766886; x=1719302886;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q7SaC/Wv0lUro865K5ux9UOBCNVGHPuuMONUNJof/Mo=;
 b=nqem7HoORpk91925SXASw8p6rnIrgtv1ubHENVYP46eG9sHIOuaQflAT
 IwwaZFxL6rc+wRnlfIW5cDgSqB6Gp4QqwYiw4JqCDEBJy8IBiNLLEeV4F
 HmJOUdtouT1pIGp//CJ+G+GaM7UYa9iVjyIpD2dAk9A0CwYO4ku0/Qlb4
 nC8pgLYOgb1vxZg58tPznxxgUPAtI9eR0QL9EiW/uoFST35LCpOXVAxR0
 Ft18mcJ0RgT9M+3JgQweRAfsge21XxFYLfFstJ3Ss6v9fcIBMACbGFwnE
 9vqcxXrUddIc0XWr7bzUMwSjjIoY/zxMUC2oP/R0PV6O7aXtmpa8sK6ry w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="340796715"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="340796715"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 01:07:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="693399514"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="693399514"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 26 Jun 2023 01:07:57 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 26 Jun 2023 01:07:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 26 Jun 2023 01:07:57 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 26 Jun 2023 01:07:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P6FIhpV9UA7fHT5Ur3huIfaf0OHdxTMVOYnc701wX/UjSdeonZQ3wTdNqGzXKaoB3mpgxZbcIW6GOzjMl5DDc/jGl1u+Q4G6R7uPktuIy91ilmsDWfn7/u68+9Fv5kYeBDoq5AkI3Jmp8gfXQI1OS1zmFEPCmjve4Ik9JL5F0grnuTj+AOJXLmA2aEP8v4XT9gtX7jJ5ZPD+ohZ4hrs3lazzCL19h4nLgHIhMIcF2htvRojsl6Ft3xvUGybKdtYBtqW1XPCiOeM9v5bEqwYGj0jwAwkLLpkaLeKSgWkqmpg/9N7PZKnKGJ/o/MIcynBjRx526g7GFUjjx6j2piIDQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RuAF3cMvLzJd7ZdTMdOok2niFrZolWEB+NN8iTR54bU=;
 b=M0DxcZWQlTyOSAct5qRUgOkGF648+MP7etHyzyS6PW5Dult9QUHEJlffpJsGuNmssiD6PUylP9ZIQuT6PVqrIrs+YgukLPEqo20ie4sEQBySLLi5h00IyKXEjOZqxUuAyP7c1zMh2nKaPOyk+QVzIyQgQkxMw5Znk4eX28ZMgm7N2ymaQ/RfZYOM4WXTb4nVWUf7C8rvkVeGYh3Suswl43/DIW/9dvQlP8ft7SFknrl5T8UrneRa5eM7uBzH4dI0RlqldNzZTmokKTSLGu98McMJYrKATFrNRbcZStkwEU7VXmqiOrwLCCTKaqD0j+0X3cJT8Q+aaK1JIVp9tdel2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA1PR11MB6848.namprd11.prod.outlook.com (2603:10b6:806:29c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.36; Mon, 26 Jun
 2023 08:07:54 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8%7]) with mapi id 15.20.6521.024; Mon, 26 Jun 2023
 08:07:54 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Add header file for struct seq_file
Thread-Index: AQHZp/UfLCiLdBMsL0GDaO+b4ea9g6+cpk+AgAATWTA=
Date: Mon, 26 Jun 2023 08:07:54 +0000
Message-ID: <SJ1PR11MB61298D140BAC088C058750CEB926A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230626061043.1162688-1-chaitanya.kumar.borah@intel.com>
 <87mt0myaps.fsf@intel.com>
In-Reply-To: <87mt0myaps.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA1PR11MB6848:EE_
x-ms-office365-filtering-correlation-id: 50584fa4-0ddc-4781-2e7d-08db761c71d0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NoZ+2yGQvmaDDW7EQxPfqvImRKLus30hQZbwi8edxaQzCaHon/7lgfy5O4mBgEfpfm+KZl6OVlz4qFQHPDBFUu3z6TL1Y+iwiq5b4O5vpMyNbUqrd8xn+/xoSywi2ppjhxuRkv3tSXtIcc7G0x38yMLec9Ro8RI8cb37pqEGuMGV0ukoH7mVhkZ5B5BiHeKLrq+EY0lpN8elhAhjVohIVOxhFBQ9q/62h3fKTYW2GAyjJbddZxvEaMRNAKZYalwT5vbL1ti34C6Lrhl621RJDVJ3R68/UNnjJPiiDXi5F7GLQXLOZshMACGjFSRHh18hiQW7Xa3fX1N4yTjZTEfX8jU++rEanIA0p5m8rxfE7qSvtR/rYZytzwRjVn84U2DDZT27oO+39ES6wFiR2m2YiPq/Xs2U3q43qyJWSiZUKaK37JslXq/NGp5q14o0VJ+AeyKSl36HpncZAdE9APNypEHxzTce4cBFWDvDpWsZli0oZhJPDLOdH+f1X7l7LRroYIoHNe4kTkMI4MYxjMOJo2ND7IErZ/jKXcB6B/s73l/tkz/EUx8newMLGhYxKoIQ6nvrDXAM1YkRmNCAh7pVpehZxQPFxJAYDUQ1nLkKTfMCmJ+oHBM/EZW/y3i5MtGH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(396003)(376002)(346002)(366004)(451199021)(6506007)(53546011)(38070700005)(4326008)(33656002)(52536014)(64756008)(5660300002)(8676002)(38100700002)(66476007)(66556008)(122000001)(82960400001)(316002)(41300700001)(55016003)(86362001)(66946007)(76116006)(71200400001)(186003)(110136005)(66446008)(8936002)(9686003)(2906002)(54906003)(26005)(83380400001)(478600001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ny32HfeapL7HMAKg4/kb4u0RMyP7rzljQ2U3sAf/kju5CQ5pT8ht2UmSPSsr?=
 =?us-ascii?Q?vdyq4guvRln/O2rvk+g1d9GMX9c5uvPvptpjbmlKvJvCXdc0O8xGRh97buo+?=
 =?us-ascii?Q?h4dqkR0WMthrugSGgLLThOoaD1sHDWKmuf/5iMatNHWglSk33qMeXaHkDAJf?=
 =?us-ascii?Q?Am1QSTX0vWOmIgX7SolxsmaVBFkdBLIFl9NYQ9xqWr8xLYlb9N15A397/T3h?=
 =?us-ascii?Q?+LcGweai4rCucyjVDTqeyEXd0d/0YqPwZv3tM4kECZ+ETiFbuod8QxgbqI9t?=
 =?us-ascii?Q?QYtIxFnZIuzfXkw7Uuyr4R+kssCiDLU3jIqXxfYTn6t/qhkZAdAabbKera2f?=
 =?us-ascii?Q?z9mEQQSGE4jVnmUBcbHWDYg95inDFwjQat1XWmxZd9b+xsH1jpVHlh36wi93?=
 =?us-ascii?Q?/gMBSss6iXmca/tfaEeQDsdiXO56UnSoADxr8To1MBRIgGvqtHO2jkc+o5up?=
 =?us-ascii?Q?1ldhRegkuuhU3iZaVLBJYDcwxQmcnq7REOJ7xHZAqJtCaUr+YOv+G8L2KXag?=
 =?us-ascii?Q?sB+r3/l7ga5DThvTsL7anfi/mYTHBMwA9+dbqGKL6pCDMs8vFE12cRmkvAyK?=
 =?us-ascii?Q?u0LSczduR6o37LkYB5yfH+nLKReLt/R5QpA5+WQrKo1fGbaO1tYzMI1UxuR0?=
 =?us-ascii?Q?srvxXzI5U/H/9x1MhLfnlJGZ6Nhgb55AjwoY/VtSjfb7fZt/hYFp2kDSaqwQ?=
 =?us-ascii?Q?bfYaUUFp8yyPw6PNjSgqfLebJB+pmDq2xiNGD7OG96cA2bmXpGwqficrsjtU?=
 =?us-ascii?Q?OQWYXOCtCgOcJ2EzZd/X92RbY8q/wq4DRQkVNA+rv4oKughUSUIOaXB+UviU?=
 =?us-ascii?Q?FaIqHk4xsj33U4LN9ZDtQVl+XB+o0b9xQoaZqFTORbJbpyk8WgKlfg9qh9xf?=
 =?us-ascii?Q?OwJcha6y3O4IFbV+WthLPCnbFnsvYjhcPBCR7onOkEgStxix3/baw4B9ZWgg?=
 =?us-ascii?Q?YSRl60YWfEpGLSiheg1VlOJymrQmX/fFG5G/DSr5yLQInHKtI2gEdJXEHBOY?=
 =?us-ascii?Q?hOE9H0ZHKreao9ANgfAlUbCP5sE5n+jEMNtdf6XrQHJFUj7ZIwzCS9tyiAPi?=
 =?us-ascii?Q?lHuYl/6bewzxoqsBPlET412OEOgu0alumv1TWfgVsix5XEvyuHQLlZkKgNVj?=
 =?us-ascii?Q?hQSR/GwAXDtV36VOcrDLnHw7OQKmGWqJvzaIr6sfJKdXPraPVi5/gEa8uIqh?=
 =?us-ascii?Q?ubRLuDKrys1YQtmLAMK8mJwKWXn2EB0xtpCrgd9qpBqlhMy6ubqDMqlQNPSZ?=
 =?us-ascii?Q?z24tMjaPmgXEgk+6Z5IpMueggmpymeIC3MUtyKwRjljQ5jbcAYvwMQX/X+8U?=
 =?us-ascii?Q?xHoaK//uHP+x4LSKfIT0MU+QxKb5KSP7Gn5CF6RnlZpZQHxZMpzPKRXMxrKH?=
 =?us-ascii?Q?9t/Sfzv5WLhMZ6wrnORE4cG8qTLtdrCCAATWexfuFCA2Z/OA3n6MN1vF4Pew?=
 =?us-ascii?Q?vmpyYfBgys7161kNgz2jda2yEMWWrqeOA6VfipRZMb+wf7YKUcer56xJbQim?=
 =?us-ascii?Q?43G3Y+jf/Fb63HwqE4NquPTntF0IEwheVxbWf2y2rWB9We2BOOZGa6ZSIPTB?=
 =?us-ascii?Q?GaI+yv4g70lBbtmez3BkdUjbfP3h/JFwja30j5wBt1IjViD9hX6TDznkKlz2?=
 =?us-ascii?Q?bg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50584fa4-0ddc-4781-2e7d-08db761c71d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2023 08:07:54.3408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jxy7KP426MRRjilIXrFVkH8bpPHvhroH8NgOUl+VuXqnREj0+m2KSbo+UdVcd3oQqNhOSQsQc3oI2BYfUa15dwh2rh/Mj+mkEXq36/1m1Nw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6848
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add header file for
 struct seq_file
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

Hello Jani,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, June 26, 2023 12:25 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Add header file for struct seq_fil=
e
>=20
> On Mon, 26 Jun 2023, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > With change [1], visibility of struct seq_file is lost in
> > intel_display_power.h leading to build errors. Add header file
> > explicitly to restore visibility.
> >
> > [1] ef104443bffa ("procfs: consolidate arch_report_meminfo
> > declaration")
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.h | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> > b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index be1a87bde0c9..888993079a7b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -6,6 +6,8 @@
> >  #ifndef __INTEL_DISPLAY_POWER_H__
> >  #define __INTEL_DISPLAY_POWER_H__
> >
> > +#include <linux/seq_file.h>
> > +
>=20
> Always prefer a forward declaration over an include when it's sufficient.
>=20

Thank you for your comment, I have sent out the v2 of the patch with forwar=
d declaration.

Is there a path for this patch to get merged into linux-next?

Regards

Chaitanya

> BR,
> Jani.
>=20
>=20
> >  #include "intel_wakeref.h"
> >
> >  enum aux_ch;
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
