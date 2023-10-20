Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C16507D18CB
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Oct 2023 00:03:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2D8010E5F8;
	Fri, 20 Oct 2023 22:02:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A04710E5F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 22:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697839378; x=1729375378;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hxzksNSLK5sO5p5suFyqJ3agYLLonhoWTNz/ExTmkqQ=;
 b=B/WR7xdZgvk+TONZ/vDP1OU1o6e1pvoN7P6oRqvqFA9w/VfAuEQRWoDm
 stJ+/z90y61REw42oE2oyo3EJn/5+LKstzAtkBpQLYdwLb1CDn8EsRVIC
 HwbJYY91h2N621no+fIV8kKzQ1q2v/Cq7gyT5X7M0NSG5e7fdSQ7+kKJc
 P6x0LAB1pw0BPpmvnk4kRlVRIirGg9cjZJwSkVdMh2lyFcd9ZaYMDlGSd
 mIkf7b9DfRolQyNzOVcdpHQl877vK6D4AP9D4KEaP6PzdnxxgEQgaDIMa
 z1RMrVeXkaz9lZB1DyFfEEvkX02WLI6ih7RI/7Hxnqt8szfEoD+Y9pYAT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="450810972"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="450810972"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 15:02:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="901246697"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="901246697"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 15:00:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 15:02:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 15:02:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 15:02:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 15:02:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oKuUV9E1QpnqfTk7QYPPvlI3fNt/z2Wf4D4BIZ4jFu5fR+E0z0qF1CVPZ4mj92zWHWvEJDgPKcUoxb7ytyRiOc4iNmNNulCr7Jw7JKHGnu5wOv5IN8HcfvwGUpGN3yWurPIzZk8qyJLtt/9md3xNjY4ZSeo7eAih0Xe0zGRUD3wgNbxJW56BcpKivKzcdPNxIzIHQ9KcQSK42BZ1yM5UU095Fo1zOU3fKuC+AxxTlA57eTSyQjGV38my1bDoLWmRcVSmysU4Au8wQSv8lILrLxskKLexQLHu+aP0NXbEnPE+U6PR/NdIr5ZnacMHP+K7hIrTrWdmxAB20WmMZFHHMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j3yaoC7DuGgK6wEdXXQdmXH3ueppVDAA94wXDe1NuFk=;
 b=X7+m8KhSl3s/+djQYe5WPIHx1QnTIjirj6fQ8yeMU6EcAmOLoIcZSS5Odt3mmp3Aa7f5/cRRJmhj3La1L12M5FO2huC5UzEWZiqx2ZfudZmajOjuMAqWxN+lggi4NNN4yfkPC5gIkEwmUgVB5KyoODfjZD1sjHz2t54M+yJRgrmjAIAnEqQR6FIKlJan/8pchnVsPSc08T67/xULKT9B7oYTabfvpvPij843P7rjkObkdLCfYuqtvGS3pMRHdB0LNd+QqG5kPhzfPTlpk8rywUjUJ1BbBt0QGt2uas6hKINWy5otuybjUj8bVtnDA4Add1MZvAch2PIrv8dkex61sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by IA1PR11MB7174.namprd11.prod.outlook.com (2603:10b6:208:41a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.21; Fri, 20 Oct
 2023 22:02:49 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::1d86:9790:8b2:4fa]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::1d86:9790:8b2:4fa%5]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 22:02:49 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>, "Roper, Matthew
 D" <matthew.d.roper@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/mcr: Hold GT forcewake during steering
 operations
Thread-Index: AQHaAq4aS8saKHn5LEmyShZxNSEwRrBTNGGAgAAHrRA=
Date: Fri, 20 Oct 2023 22:02:49 +0000
Message-ID: <BL1PR11MB5445F6E2FA14CAF5BE4735D4E5DBA@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20231019163913.2097183-2-matthew.d.roper@intel.com>
 <20231019170241.2102037-2-matthew.d.roper@intel.com>
 <DM4PR11MB59712B37171A3626F85186CB87DBA@DM4PR11MB5971.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB59712B37171A3626F85186CB87DBA@DM4PR11MB5971.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|IA1PR11MB7174:EE_
x-ms-office365-filtering-correlation-id: 30542e17-4900-4459-b6f9-08dbd1b84c96
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4IjzIWcKmzjug4GGHw0l79jghwKgfFgrexrY0TeQ8X7rZiwZMAWYT6sLIS5FVFOxZO8lAkbfrzlHT64UAFu1Ng2hhDnoyD0h2Y87dz5IkbZTjYJNbbHYo1rVFcyWdmqDvaibGbU/fSxtR969ve/uouvoorR+QZkUbHKdMm1XwbYhx7aKUGmXJjhaV/w3NZwgyPM+FodN4snEQ/va80TU8a5ren33jN1LTYyG1sX9HV5g4IM5eqgQK2Rtt3b+qih59ylh4irPYWvVjn7Rav5lpHMSRXlGUIPe51CY/SoY0qXB9U5huMDjowqJ0EYZNZV0efkrKdiurf8v/GisTaXd9nLmONFsgllF2k8QpmSLZ8qbTiGfOsGFJOyhsCBGYg7Kq58+BAzY8CK20C9YT7b6k6phL795F9qyqzEWSOtXRdhC4KTW5sdFWyW+ErqRz1okNoybk43lcejc3CDnd98qxFbULjVfBNeAKBR5+YOdnJ4c9QHIDWUS7lDjsVZ7boqDeyP5ipgHFjI8j01PvtMOEDPEz82h+mPLPhOdSHJBWozsA9Ke0fIvlhoasaWjUh8PMjZ1qLIQa5fC6ztpvNp6khz74E3iIK04q2x06QousBvAW5e/NMjJ5c57JXRoXw8M
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(376002)(136003)(346002)(396003)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(86362001)(38070700009)(52536014)(41300700001)(33656002)(53546011)(5660300002)(8936002)(4326008)(8676002)(38100700002)(2906002)(83380400001)(64756008)(66946007)(55016003)(66556008)(66476007)(66446008)(316002)(26005)(122000001)(107886003)(9686003)(6506007)(110136005)(76116006)(71200400001)(82960400001)(7696005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Eic0bIedogD8NSfhxmZkgwx0GyxM4wr+sTRSMKvjH9EJGBs/1kKpQKcEux7p?=
 =?us-ascii?Q?O2DSAf2mMmUPoTe2tFWxeDbSzGhIHMLHTlDE6BarR0tTgojniiHIAVV8KxPg?=
 =?us-ascii?Q?YpjyBhJTskdVJXb0U6S7p8TT9lx70k5gL4PuCMWLT46qNvnL5vfXZb0sFa4X?=
 =?us-ascii?Q?FxtR/0Sf+C3DvcS07xBigAr3s0m/APgxyU79J8li5pYXQw+yt3q0GdiO6LV2?=
 =?us-ascii?Q?s75vzMa1APwQNDL5QGWETbSom6SqoFFZlqgNUdiEex3tXbp+FxIKFvJMhXPB?=
 =?us-ascii?Q?Y0xArBNVWz0qDBwF6E7bXR0C4KqFuRNMcCW5UnXlZ+UIuXyfFLyfcJ6I1MeM?=
 =?us-ascii?Q?0n0vniaBUdRv6XkJlBdOVQY5BU4vX70hxeJmtkn6xa2jabjdrlxEUN8aonf5?=
 =?us-ascii?Q?2gcZw8BFf2PzFZk9jhtr0QqAkLbwa1J8Jrfcz1obpY1yw6eMhnZfBV1lluJd?=
 =?us-ascii?Q?lQ9s0736uQMveytnSa14Y8nuYwppD9qxvK0xrLOvVtGPt/4rCiWEcnekgTqb?=
 =?us-ascii?Q?8jf2W7NW5brciwkVFVa/3U01TOPO/T/5yr5FJuS5b3hD1h5lZAbYyqFenScb?=
 =?us-ascii?Q?TD7sDdL2qwRdhAJpf7y0L0T1G32mZbId9tpmWSrfRzvAcMOIuNXzV04QODrw?=
 =?us-ascii?Q?T1TD71gJVe9zShLeOgMCuK98aVPt/3+qV5vCfuc/kXCN/3XbTMby+K4py/ie?=
 =?us-ascii?Q?Ty5rP7cAGvG7jmfA9pTfouR5k5FvkqVVpj49AeW2jDPUS+aLWB6Vma7AGhsr?=
 =?us-ascii?Q?bcTPCEVTSegBY8swhiWc7ZWhYs5cEEusNGXqNX9Lf7Mnej0z4Uc+yYbiYII7?=
 =?us-ascii?Q?WKrwwRUz4m/P50BGOLyISMl6gtAoCYXkIe34QBBQZ9uIXYyYG6qTaqL6UfMC?=
 =?us-ascii?Q?lFHlSLccsGtd3m9nCyaYuIf1gDTIxquUVxfXBQjpvHGX4iSbpK4i8tstzBmx?=
 =?us-ascii?Q?gJV3dJK2/ZIO7+sBjef5SX92fefvB1WKAIjHxjYuSxe3YQGmoWXzvK1ocmeY?=
 =?us-ascii?Q?u87kPoe+rNmcnKXuE/6DNRuYcGPagcbpcvON2TpvNMPRocZvrhrkSUiajaF+?=
 =?us-ascii?Q?mvEfAvAz47wKhpASJXb9VjSvbLQC4uzjJFdwJMYnH7ehTyzVDfH8Qyk0opXA?=
 =?us-ascii?Q?y0peHPq0DzNQjjiW5AngImznW27tt+1GHSyLe2G7ORZYqKxCprCI5wALt0od?=
 =?us-ascii?Q?1Xq8WEF6JYoc79RH2Za9eLRpRZmJHwAwdHvbeen6HWH6AiDm/pUW+AUPITqo?=
 =?us-ascii?Q?kULxf+AKymS/wwaWzi0vG5tF7zlWf0wwCk1eynADX+BvUNhAGJ3opqKzuong?=
 =?us-ascii?Q?oJSDZ3IlHKWmJMiLBR1aashaZwbyFpF0cVOM1PgF06bwIWSxixGVDVJoYuCQ?=
 =?us-ascii?Q?/wmkTLPYpi+Ey6Ev6GUYCTm6ZDfzg7h6+IKgQvSI9kE00XTYfRCrJqXBmjO0?=
 =?us-ascii?Q?5eyDIl3wlOlmBTzoiMqo+KDw/hQlUcuenbcMDHuoR4I9gY6K9dRa25C136pC?=
 =?us-ascii?Q?JClymfb+xTbsNKERcMdvGp7LBN4SDYbVcg71JC4WYllx3QVpGpreEQt4ZMHX?=
 =?us-ascii?Q?5bYRJ9vq11dWRrclDQ7wzsBXMFg9nQ/QHGW6/0fM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30542e17-4900-4459-b6f9-08dbd1b84c96
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 22:02:49.1962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gdogRSd1lzxF4Ws26IxRfnjdegnpGJbJdFZN9sISnIgZG9s5JuTcgerMMm7MJi10Xy1ehPHT7WB/u93iKxmwFrf8UX00Ddu7iej2MPIkbp8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7174
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mcr: Hold GT forcewake during
 steering operations
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
Cc: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>=20
Sent: Friday, October 20, 2023 2:32 PM
To: Roper, Matthew D <matthew.d.roper@intel.com>; intel-gfx@lists.freedeskt=
op.org
Cc: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Subject: RE: [PATCH v2] drm/i915/mcr: Hold GT forcewake during steering ope=
rations
> > -----Original Message-----
> > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > Sent: Thursday, October 19, 2023 10:33 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Sripada, Radhakrishna
> > <radhakrishna.sripada@intel.com>; Cavitt, Jonathan <jonathan.cavitt@int=
el.com>
> > Subject: [PATCH v2] drm/i915/mcr: Hold GT forcewake during steering ope=
rations
> >=20
> > The steering control and semaphore registers are inside an "always on"
> > power domain with respect to RC6.  However there are some issues if
> > higher-level platform sleep states are entering/exiting at the same tim=
e
> > these registers are accessed.  Grabbing GT forcewake and holding it ove=
r
> > the entire lock/steer/unlock cycle ensures that those sleep states have
> > been fully exited before we access these registers.
> >=20
> > This is expected to become a formally documented/numbered workaround
> > soon.
> >=20
> > Note that this patch alone isn't expected to have an immediately
> > noticeable impact on MCR (mis)behavior; an upcoming pcode firmware
> > update will also be necessary to provide the other half of this
> > workaround.
> >=20
> > v2:
> >  - Move the forcewake inside the Xe_LPG-specific IP version check.  Thi=
s
> >    should only be necessary on platforms that have a steering semaphore=
.
> >=20
> LGTM,
> Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Concurred.  While a WA number would be preferrable here, we can add once th=
e WA
is finalized:
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

>=20
>=20
> > Fixes: 4186e2185b4f ("drm/i915/gt: Add dedicated MCR lock")
> > Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 24 ++++++++++++++++++++++--
> >  1 file changed, 22 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > index 326c2ed1d99b..34913912d8ae 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > @@ -376,9 +376,26 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsign=
ed long
> > *flags)
> >  	 * driver threads, but also with hardware/firmware agents.  A dedicat=
ed
> >  	 * locking register is used.
> >  	 */
> > -	if (GRAPHICS_VER_FULL(gt->i915) >=3D IP_VER(12, 70))
> > +	if (GRAPHICS_VER_FULL(gt->i915) >=3D IP_VER(12, 70)) {
> > +		/*
> > +		 * The steering control and semaphore registers are inside an
> > +		 * "always on" power domain with respect to RC6.  However
> > there
> > +		 * are some issues if higher-level platform sleep states are
> > +		 * entering/exiting at the same time these registers are
> > +		 * accessed.  Grabbing GT forcewake and holding it over the
> > +		 * entire lock/steer/unlock cycle ensures that those sleep
> > +		 * states have been fully exited before we access these
> > +		 * registers.  This wakeref will be released in the unlock
> > +		 * routine.
> > +		 *
> > +		 * This is expected to become a formally documented/numbered
> > +		 * workaround soon.
> > +		 */
> > +		intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_GT);
> > +
> >  		err =3D wait_for(intel_uncore_read_fw(gt->uncore,
> >  						    MTL_STEER_SEMAPHORE)
> > =3D=3D 0x1, 100);
> > +	}
> >=20
> >  	/*
> >  	 * Even on platforms with a hardware lock, we'll continue to grab
> > @@ -415,8 +432,11 @@ void intel_gt_mcr_unlock(struct intel_gt *gt, unsi=
gned
> > long flags)
> >  {
> >  	spin_unlock_irqrestore(&gt->mcr_lock, flags);
> >=20
> > -	if (GRAPHICS_VER_FULL(gt->i915) >=3D IP_VER(12, 70))
> > +	if (GRAPHICS_VER_FULL(gt->i915) >=3D IP_VER(12, 70)) {
> >  		intel_uncore_write_fw(gt->uncore, MTL_STEER_SEMAPHORE,
> > 0x1);
> > +
> > +		intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_GT);
> > +	}
> >  }
> >=20
> >  /**
> > --
> > 2.41.0
>=20
>=20
