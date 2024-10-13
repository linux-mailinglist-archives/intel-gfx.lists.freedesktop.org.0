Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8B299B9F8
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Oct 2024 17:23:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 731EF10E236;
	Sun, 13 Oct 2024 15:23:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jRU7+Wg5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0632210E195;
 Sun, 13 Oct 2024 15:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728832998; x=1760368998;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4PiDoaxFfsnDIWUEUevK0qhpCpp3JNyxBB6Rsi6jFc8=;
 b=jRU7+Wg5TiPUS4qSUGTmTPDrZozprJBEoBeiY5a8WHZj7LhLcM1q6ypx
 mcrq7rxPZ8S7AQeJ5UJVh94rFyVWyHVTNvuHYWxTwGq460b+4mHUtdser
 HJ7MK1z/edwiIm/K5MetdYZz7znPxi4v+HRe5ZRV53FhlAlyykuB075h5
 YLUT/EenLXLlzb3LDTtXELa2aEJN+Rh0uKsIni7E15he4vxiaSLPzDLId
 Lf7B4OCZOFVBjdT06nl3zzCiVLgkkfutVV/xUOi+DAzozPqOytAffegsV
 4oxNEHDpvvj2uTL1dVc11adBbIj09CUOJMHEa9EJzjjc1qsA2IePHRACt w==;
X-CSE-ConnectionGUID: Ra00vBNbQKWm8oHwnfk5ow==
X-CSE-MsgGUID: 9dvwIRvvTIy72Dqp76mycw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="27985347"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="27985347"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2024 08:23:17 -0700
X-CSE-ConnectionGUID: 1va+kyFMQ5SyUB9YvTtTcw==
X-CSE-MsgGUID: wM61f9JXSeCx1VA2GKXoiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="77675510"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2024 08:23:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 13 Oct 2024 08:23:16 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 13 Oct 2024 08:23:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 13 Oct 2024 08:23:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FBGF0CSCrR/oKTGCFVOZT6BTnkwV0/vuFK1Nqz+VPd3uQMDHKJOvj606ZqMYYw0k4nk/YjN5EVGe7rsnFYeG0YmX4SvzqXZSCmA15MfNRMDTAkxU8Jr5w6Sg7mcl9j8vCeayBhTYxlHdMTNUW1RBKeIxSqPr/AacIS6nMqALsRk5C458ZKjt9h+4oXIQFiDa0iWUNPW/wzsA1rtmlJKPDKaqE1/VIxJXuhTDAtsKIZiOhv1P3ayfiw/Z5uM0xtrCxCKr3R6FKp9Uq2uMw1tsY1nhMwWMv3coSL4m73GBa9n6QCAV3m5y3qG05AUyrv9MLSUlmnzwTh083Q+djoF/kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jRpodhz/H/spLIL0pXDcn8npCh2jCzJWCFjibKQSLK8=;
 b=lHXvLogPUYyQLjBhl30oH95f7VAsf6NV/KzodakdiuBUHdKekQ4wTEcbtWauGp2+LRfX2xXT/xgPRnpnpDEPQ9ahOWTxWTv5aP4aB80Nf6KVtC/5q7bzcnoPNBWSdg83uImeeil3+etp2TcW4fZlPmQjQqSyYdBi4Eh2k+gSh6hPgopNtao4Y/okNTPUSSYyBUE/jJvEapPISmkUpWXjwyepMmSfx5mH/xKmDvsr+C691OP3DjgCwDC/x1RjeIvAYOX7cwJOM2CXudH3I8xyld4v3kBsMgkHUTXy3l395V/5pLCKDPrZtngsaGWRRvZLzuec9/dq8KeSTu+vpnghMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM3PR11MB8682.namprd11.prod.outlook.com (2603:10b6:8:1ae::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.24; Sun, 13 Oct
 2024 15:23:14 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Sun, 13 Oct 2024
 15:23:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Taylor, 
 Clinton A" <clinton.a.taylor@intel.com>
Subject: RE: [PATCH v2 07/10] drm/i915/xe3lpd: Add C20 Phy consolidated
 programming table
Thread-Topic: [PATCH v2 07/10] drm/i915/xe3lpd: Add C20 Phy consolidated
 programming table
Thread-Index: AQHbG2XfTVSo9RLRrEeTSda3EfeiuLKCFwKAgAK5HQA=
Date: Sun, 13 Oct 2024 15:23:13 +0000
Message-ID: <SN7PR11MB6750418D03E78067D531F988E37B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
 <20241010224311.50133-8-matthew.s.atwood@intel.com>
 <20241011214535.GT4891@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241011214535.GT4891@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM3PR11MB8682:EE_
x-ms-office365-filtering-correlation-id: 445d1f67-ba53-4d4c-206f-08dceb9af47c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?2vYemiW2llLFtZCv6etzNfPJ8FMdUYj7ZpYHueOR6UE2jKXKenQPjTm4HEV0?=
 =?us-ascii?Q?rX3SBu+Kstcj3QqJXCC3VeC8KmAdA55ZZ17bylpDdCJWKwv4CVihJF1Ht5/d?=
 =?us-ascii?Q?hH5/woYNAXBN1Ujgun/BcrOJdzJCoLWSHSZ+89Y0nN0szV6CBkGjgEuQL2Vb?=
 =?us-ascii?Q?YDmOtqBQ2FE3bhBb48HqQqEKzg5ec8bCc/hdF9slh+BuC+y9N/CqmySkH/Pq?=
 =?us-ascii?Q?MKiIhu0v22x9etY0dLGSpH62TGir2qK/YFRSqGjLE6E30nCLqoGxSMnwVWxi?=
 =?us-ascii?Q?pRJP1nm44zzRo24G7OMv1B2jTCUrvcGfR43Xs/KBuW6JcBwPH+ODtu3wz7lw?=
 =?us-ascii?Q?fG0Kp4gHdf5MQn0VdHZncsQBho725NOUpGYNFhMnLyoqO7X/fo6//mdjXk2v?=
 =?us-ascii?Q?M40WfjdUM4OjFF+Kj9cwHpARco1lMPEzQNfJXz8N1Yh6JKr0Hxg0x9GnSJZJ?=
 =?us-ascii?Q?G21EE3Y4CMFr0aa3s3+ziCECLx6Tcd/qaiJPwdDNY7zwM18fE2F5YUlEJ+qo?=
 =?us-ascii?Q?9a0DJT70sMLkA/83q5jgQNszsS26E61Y+y2lQtsoyWvSHZNh4qzgEhsf93Xa?=
 =?us-ascii?Q?i3O48kptSY4sfMk+mca2YXlGpJopRslBSJHyn4odohbQIE5BG0hgr91PNHBM?=
 =?us-ascii?Q?h5Xjb8Xs0RGIaxTrPH/wsrCBc82O/Fe7V39+GFxnzTJMV4ns8fdwyunwP+Md?=
 =?us-ascii?Q?RZ7thbFx7x2nhjg6SJ0ADPBBMI9g2A7FkhuBupVZFOlQ9Fe1Nu8dRqh8ySEF?=
 =?us-ascii?Q?8qoP2aPD9oqJwA1p6GoZQTFbxw2jc52P/N6aRDK9LN3/msdKDwVp6JqDfsTe?=
 =?us-ascii?Q?1onZ+2zc2XPyeigBRMABejryCXcZECPWqnscIhYmQCbSjqVKsSs6BYoxJH1v?=
 =?us-ascii?Q?IZgi6sVl8exT3Y89mtsZWVXEQmgTGesd4c3A9Mt1QP88PZUoC3jqaDg5vtRy?=
 =?us-ascii?Q?kKQL1e7/qqmjiFMyurVYOuf2RawKrphsQGblqyUxJS6Mi92qomNVB7/Icqw0?=
 =?us-ascii?Q?rKl0SslYBApJBgWoBD39xbjMHLuv4LCR9aD+0TL2G9/rqzGbgJD7YIOm0FNa?=
 =?us-ascii?Q?mcHn0gbx0LSE9i40pYv+Gzk2UkjSORIXAL0vtnE8oOgBLxJ1Hhc2cySAodAe?=
 =?us-ascii?Q?EhE+1CGy5DF2JyFjjgswd+XZrxFIYVQmNgrE6x7y55qC8547OYAGiDwucrlP?=
 =?us-ascii?Q?Q9NLs/2OedRM3DcdHA48fcyWBpgUoX/1k9qFV4Fpg8GJerx2KS3YjoqyYVCq?=
 =?us-ascii?Q?edWz4jvO2R7HuFkBX11mH7iZr6mY75qKTYn8ubEiMTW1+UnpK3KkhbzFsOBO?=
 =?us-ascii?Q?ZskyJVghGga7QvA3JOALBeDTSfoRp3SsppyQEij8F+iWdw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?D3WlzhlHd5rKefsR6cC96uTnGd0va2tnvCVlyk7l6DYAUzYVCRxlHhXqh7gY?=
 =?us-ascii?Q?zuUXKWtTb+5jwY9XIUlqMDj2IPospcKeQMnE5SOu6668qyWHyVF1g3wy0c9S?=
 =?us-ascii?Q?RQePh9iN1v4vCTdpPOO3WwsFpPh7TPapi+r0E3dnY2IAFS139KNN0UgqVefN?=
 =?us-ascii?Q?w4IX3B55ZyHQT6PzU7/MVu+/OoN0DtvBi2X96ijKmSGA0nZTukXsj+4jetN6?=
 =?us-ascii?Q?6m2NQqwdTTJ6RU1dRI8tkSM/2V+Qm5ofdapf/87XEkCar+XyXS/yceNMY9a5?=
 =?us-ascii?Q?l6c0yI68/qeVMwPKhRhUf/jMdQVJE5hsAAfKXgQ8GW6HAP6XgyxH1fSBSES8?=
 =?us-ascii?Q?XSDBgq+OFFJqZDXVQeWMNsP1dU7VKfZSATjctsPP8YvlS0ghlMo/dQrBgfVC?=
 =?us-ascii?Q?qIlQ1YyQxULzcIZbOv1D2/eoSsT/xjArJe3cMt9O6e5IYZLuvg15IyklSs+V?=
 =?us-ascii?Q?ne4V1FpU6JxIKkdJRoszlOKOD7g9PgjpYgNrI76+ImPtoZVUD3DlwQ+nK3Tk?=
 =?us-ascii?Q?MDL4sK7/D6wJRo73Ivivmfb4pq5OhKW3YuYvdqdySlXtt2yB+i6FGSY4Bw0m?=
 =?us-ascii?Q?g2v/79oTyNKAPhvHbKjACHKHelGTXmt42koVn4MnVkPVOOZuWmmwNYgVvZM0?=
 =?us-ascii?Q?kGMiuK4U7FNL4KxH9BPmHhj8/VwrhTRPYmh8kR1+bRsiqBneH4n/o1KvJ/CQ?=
 =?us-ascii?Q?Xx6YOh15wc4tcaVXxWXySh8NBNCAhPz/bCzB1eijo+qfp83ovzX2QVLRm1TU?=
 =?us-ascii?Q?Q6znG6OQ0vuKibcnyrqpoc69mrrCQk6wkwUWsnoCGTENakJakzN8FYb6QabC?=
 =?us-ascii?Q?fBbhNAoDXrfP0/GWPClxjRWZUUjLgTKDe5G1Rg4J+G9/nyDEWW3Gp4tSt5ea?=
 =?us-ascii?Q?9WxVks/qyhHpWhg0dka6ttmjC0IKwVx6MehamQJqJNQy5wkpo9Ds7UMzmtK/?=
 =?us-ascii?Q?2oYHCVbQvNS8YJb/6c+wW+PGDjGPqTz96eefI+ntIAnmLLgnrHPlWC+n4QIU?=
 =?us-ascii?Q?lfKxfeTiyXm+KkxMIpxn5qvCzWG6j2HOsolRNDzmbgZ9/2dkR8zjXoQ+KR1o?=
 =?us-ascii?Q?wQ1AP1gmgriZAwGV2Eu4SNFcghLqthoq33opcC4MyYlgD/l1seNIRXUBc9tO?=
 =?us-ascii?Q?NJlq1oADHWeG6YaLTwxvvy5V5lOkinNFq4GNaI8ZdAgNmDSDLh+coLkSrUm4?=
 =?us-ascii?Q?3S/PosqTiZ4bhei8tgIYg9bqrfFbPJ9V5BvVdaVh8RmzHpo09xfmXqgrDFVs?=
 =?us-ascii?Q?nmKbr2Cr/E3AzKoUQBWjPzD7zkKypI8ejVn+PrnpMdg59WC7eI+jc7a4rI49?=
 =?us-ascii?Q?51npMzyfjtydOMuNa9TlAG2ZFbCI8/PwTLOYI5XWGagcLY62+fFG0Zm7Nw3R?=
 =?us-ascii?Q?EP1IxedoWHk4hRfQGOWaEmV6bztG2fbXP4WTbRbJa9J3jTyBaaAtyExpvlUP?=
 =?us-ascii?Q?WTlN9bj48O+mxWEk/ChE5XtYvqIswkvCMZgvzssQQQb3G4IX6yasgiwVQLJy?=
 =?us-ascii?Q?BLjOc7B6AV8A/wW6J6Whfjf5Ev5d+r65zGMyCGtaXyVxl9MiZMSCkyv7UkHH?=
 =?us-ascii?Q?CUO7pD2Bf+CB12qu0ZvdzX64hHYFf7dob6b8v28B?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 445d1f67-ba53-4d4c-206f-08dceb9af47c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2024 15:23:13.8483 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 703UQUxjQ0ivhgGGm+84udstjS/TWPAZVkpCTdtb3RKaOcVXBEuOlRUXU+/01Cjbbe+MbNOuZBuLw+XrRZjNjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8682
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Saturday, October 12, 2024 3:16 AM
> To: Atwood, Matthew S <matthew.s.atwood@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Kand=
pal,
> Suraj <suraj.kandpal@intel.com>; Taylor, Clinton A
> <clinton.a.taylor@intel.com>
> Subject: Re: [PATCH v2 07/10] drm/i915/xe3lpd: Add C20 Phy consolidated
> programming table
>=20
> On Thu, Oct 10, 2024 at 03:43:08PM -0700, Matt Atwood wrote:
> > From: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > From DISPLAY_VER() >=3D 30 C20 PHY consolidated programming table of DP
> > and eDP been merged and now use the same rates and values. eDP over
> > TypeC has also been introduced.
> > Moreover it allows more granular and higher rates. Add new table to
> > represent this change.
> >
> > Bspec: 68961
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 24
> > ++++++++++++++++++--
> >  1 file changed, 22 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index f73d576fd99e..f1aea5ead41b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -1122,6 +1122,22 @@ static const struct intel_c20pll_state * const
> xe2hpd_c20_dp_tables[] =3D {
> >  	NULL,
> >  };
> >
> > +static const struct intel_c20pll_state * const xe3lpd_c20_dp_edp_table=
s[]
> =3D {
> > +	&mtl_c20_dp_rbr,
> > +	&xe2hpd_c20_edp_r216,
> > +	&xe2hpd_c20_edp_r243,
> > +	&mtl_c20_dp_hbr1,
> > +	&xe2hpd_c20_edp_r324,
> > +	&xe2hpd_c20_edp_r432,
> > +	&mtl_c20_dp_hbr2,
> > +	&xe2hpd_c20_edp_r675,
> > +	&mtl_c20_dp_hbr3,
> > +	&mtl_c20_dp_uhbr10,
> > +	&xe2hpd_c20_dp_uhbr13_5,
> > +	&mtl_c20_dp_uhbr20,
> > +	NULL,
> > +};
> > +
> >  /*
> >   * HDMI link rates with 38.4 MHz reference clock.
> >   */
> > @@ -2242,11 +2258,15 @@ intel_c20_pll_tables_get(struct intel_crtc_stat=
e
> *crtc_state,
> >  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> >
> >  	if (intel_crtc_has_dp_encoder(crtc_state)) {
> > -		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> > -			return xe2hpd_c20_edp_tables;
> > +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> > +			if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 1))
>=20
> It might be a bit simpler to && the conditions here instead of nesting if=
's.

I kept it like this because in the next patch I add a condition for edp ove=
r type c=20

>=20
> > +				return xe2hpd_c20_edp_tables;
> > +		}
> >
> >  		if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 1))
> >  			return xe2hpd_c20_dp_tables;
> > +		else if (DISPLAY_VER(i915) >=3D 30)
>=20
> Shouldn't this ladder be using the standard "newest platform first"
> ordering?

Sure will add that change

Regards,
Suraj Kandpal
>=20
>=20
> Matt
>=20
> > +			return xe3lpd_c20_dp_edp_tables;
> >  		else
> >  			return mtl_c20_dp_tables;
> >
> > --
> > 2.45.0
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
