Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1493E881C0F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 06:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF6C10F2C3;
	Thu, 21 Mar 2024 05:04:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N4Z5Kmv4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F97910F2C3;
 Thu, 21 Mar 2024 05:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710997494; x=1742533494;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ro6D8rmAma0m9S63qyL6aNoKbPnyUu4M+HBJU5lEJsY=;
 b=N4Z5Kmv4bFrY8jHb8pLtKF2sxgO2IcC4/3zPVakKiWXiBfWvDc/RwYve
 ytSjAOUuF3bvqI2eXxpURheJiCNeB1dBR/RYcAglCl7ExZMKf3+6ARxKl
 5ioHx8Kkzk6CbFrNgkIIXRglXiWDaKJq/4bMLJSWV2jaGRQYnJYxrGpnS
 BdfRnVtIztGgaSKMTPYcr1xEERS3KAIYkAxY0oUlld8e3XJsn9emgtWKI
 W762bEDoeQWunDnxt7Y42ohkjAfuUa9nNTwBdwxfITs9YE6iwC0KrLPph
 mgHptU2ZEjmORGnu3wQsfao02QEobPQWQ3dJG0AHPvExEaogWsKoUUe7w w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="31398252"
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="31398252"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 22:04:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="14449637"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Mar 2024 22:04:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Mar 2024 22:04:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Mar 2024 22:04:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Mar 2024 22:04:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EA5CSGW5UGbaQD/wFBh/Po5t5Ibk20arHTS1Z4l9r2erW/PlGuTTevkVQuxB8iz7eLF8HuzMc8QqB9KcWLTVgJVl4/ywQ4h1tWOF/bOvBmE/d1AF7tc54pGK9+fJuaucpl45u7kQoznqY4vxiDu8IGHoXxlzl8SWwNp4P5BT0yL6Ow1eid67EiG8wB5SyGsMz2T7bH2zbwmCIi+ZsjU05P595BOn999ccnJxbjY5IeG22M9nMLRRGs5C3T9t/LrkijVsKCQFisN7ArRPW9IAhQ8C74QwZBQOct+/P3Sun1YCG13kwOU1/mTLLpiz7AcGJC8V8KJn4YdLI/YuMuyqVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VbjocHwGDXwARcXVnGwRd6u5hT2gt/G9d5JHOIAQQgc=;
 b=U6qd1YN+oanbYE8kqRUkzlIZ3d9ocYj8Y98o0TQJ5eE0UyGfdDTane6Gb4vinNiZ3sTctiEexr3cE2fq4TjEBT9ln1kQeHQA35UN5CKGnWkbz7kPMplJ5CcBgawnAsxLw5IeKQ9Jh6zHeT6WXaDcXtK6qoUk++IRCc5hNy2fR5lPguG5UEw9rG9ri0V9GA6OJMQvthGrg/QTCn/FJejxnrbJ7KEuJczkdyLxXeHkluWeL2+4L08f2v+VpANVh9ZEVGzmfb62kIn10ZEls7PvtF3Gum4fYPG09UBqnoqH7Fn5oFrdCO9OoOHbKkFzuoioQXSk8sGedd1TSsO3gZMsfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SN7PR11MB7440.namprd11.prod.outlook.com (2603:10b6:806:340::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11; Thu, 21 Mar
 2024 05:04:51 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7409.022; Thu, 21 Mar 2024
 05:04:51 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/xe/display: check for error on drmm_mutex_init
Thread-Topic: [PATCH] drm/xe/display: check for error on drmm_mutex_init
Thread-Index: AQHaeat0uu06rA+ciUe2zjTcNQcYjbE/ya+AgAHacLA=
Date: Thu, 21 Mar 2024 05:04:51 +0000
Message-ID: <IA0PR11MB73070F0A670BF9127F6F684FBA322@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240319030341.3907617-1-arun.r.murthy@intel.com>
 <ki4ynsl4nmhavf63vzdlt2xkedjo7p7iouzvcksvki3okgz6ak@twlznnlo3g22>
In-Reply-To: <ki4ynsl4nmhavf63vzdlt2xkedjo7p7iouzvcksvki3okgz6ak@twlznnlo3g22>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SN7PR11MB7440:EE_
x-ms-office365-filtering-correlation-id: 6c44aa05-aabb-4e5a-d5f3-08dc49647077
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qm+k3tCO4+qVaik7WI9s5s1rLMwaLbd5YUeQq294TtRLZ3Lt/WbkdSgchlZN8AD6039Vvt93Iw3JF/s0buLsyiXzLKKeMHYiR+yqL549f/VNKmCUqIWkr2U91gW+qKUoLmnPlj3DlibuIdLtgh1H7cuJmG7pbpxFEByWnK2qH+KPnh4gpnd34Kh7Pldci+2nkfFSkbyjtDLR4lJnEXVmGCFW2Td21PQLYz334xCPubCpmYac2QjbwQ60xNNRlEJgPuLXNen5h0ZIrDw/mVCVIDM0qpnPc1KZJTyQkMMxYcd7uQFii+gepPfLaekN+c8ttI5wfmRMz/Gm/XAESWhtkYekqBMwmm4a2TW68D8arvW+89WqXQEeJZnwgUCnxlY6Q//xHhhjpoZq97R8NB2Dp/QKi0golb+6ARQ0QoVdgPIs1QzPkPYv7D/C36GO2KbUgI8PKnB4UBEj/0YI6+PTEPiPdAKQb9QjVW2ekRR7O5tG4zqaXqi37AZIu0WGxOQhycsZSKKo6+NJRTTdzreHG+dWeLIOkoIBlAYIROf/u2jkYoYMMorRu/2Vc3A6L2hrOSOxjvgECs8r51R/YqXYjyAshZaYHomH5YW+7m6Ryc23XvugA6f+djjAzupRGMMgSEw9EewB7YvOAId2Thi0QdwnClTzW5FiLAG6lic1K+LaeO9HIAMK3vq2eIa6/MWlVEgGVadMzhjS1PacuNJ6ICXdswE7/r2RpDvwxIMT3j8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y5m/nPfweO018KUY+LkMmqLolJFQ+ioLWLRn/e96GdU7ukGxMtsldkrxuhXE?=
 =?us-ascii?Q?xsnh9MQtFtI0HCxve3vY8D+iAonPjgyUYA8e5HjGz4TKITOmwSUSMmSTBnHC?=
 =?us-ascii?Q?dhD/chue+O0DjMfCp1020epQTQ3QiIWo6leRmdwgMDrtU5yMOO48L7kuIuvG?=
 =?us-ascii?Q?zOCGXqawBuTBpPN6C9UIAHtNxDJoSGOXnSpXbOovicEAWz38frtvkzhkihFZ?=
 =?us-ascii?Q?INKPFpYoBFU3pilXvthxqeKBTk/FRh9wAtLJKlc67A4Hq1rrNxagQOME9euS?=
 =?us-ascii?Q?V3GaCfNd/Ju5a7BWX7YLBDg4+Aj/PeO5ZYuT5oCs7D9dLagXcZmQjjyVixtx?=
 =?us-ascii?Q?Qg2exTNStD+OWQo7a4If1MeZcq/qtDeArCLrPXzbstv+NpIS/RE4uq8kqIdK?=
 =?us-ascii?Q?luHX0y951/1lY47NJ2f+nTGU/y9yY+GsMliqLSxj2HBjvxR/fH5ziY64hZ32?=
 =?us-ascii?Q?4FKZz2T3TGgazyFiaQmc24xxQle/hEmcufOTdIW0cyvEf6IIEOWcpeDWHVvM?=
 =?us-ascii?Q?q2g18G/zzY+U77izkHww0Zb8dyGlim0fJU+lsPMhiKax6O8eNYgesW57RjyN?=
 =?us-ascii?Q?OkxOjuKX2oYdoFTcyzMs6Fmk7+xIEEs+VJpkqVY9IFpMh57MUpG10gZw7QW+?=
 =?us-ascii?Q?S+O0zpbYlnkxUCPnPnf0eNDDy/H3/zpw2M/mUvyKOXPQTsPrpZxzdxAmpAI/?=
 =?us-ascii?Q?z3XSCTinhdHiAdpEGCoMNztVglZJegTleanCCgk7+fpzVXLD9kIwhYdnCZm0?=
 =?us-ascii?Q?aV5aM09tYg0RlZKWgNamlOuTYgo75Lij2Sttm7a8j0Jgo5R5rxXQ0Fw84Oke?=
 =?us-ascii?Q?XhiH5QqHeZ7kxDKf4A5dK16sjJUxsY1upuTF9wTf5Yc/un0K9zswznOd65hU?=
 =?us-ascii?Q?XXElUDWH5jIa77tNBOIecE+haqBfwrK3mngO+VFa17t4Zhz32lWzyZDWMV9X?=
 =?us-ascii?Q?RQ8q7wmBHAwgyiF5xF1J0Z5PzVCvpOvE3z+kIfmoPIk49krlCuW6YJPdaQV2?=
 =?us-ascii?Q?AATozwuXaYLsM80+I9WiB8Jw+RuV69oGCF65lJORpFav/wKF2qlJnT8WVDc7?=
 =?us-ascii?Q?kzk0dNl4geVbgC5lKCm33bi+xunRQ3Rhpd9bL+Mn6MxQJk8X3yfw29j1ubKA?=
 =?us-ascii?Q?nzEXXA7WP6y2yI/x5TsYCMKbLOzaSGOjY55lUiNokrVE/PXzttQKP3H7vQjq?=
 =?us-ascii?Q?rMLrOTd/H4XuDDcFvKDXNiGLZZCIWa6zYbmlgIfXzS/Q1GNTbU0Ne9G3ejf/?=
 =?us-ascii?Q?cydnYj4niClYsroxJDlgYZvxiAHeu+dfYBPodXuwpIgzDZ71zh3f8iDn/yXp?=
 =?us-ascii?Q?Zy6i6KVHAD+t3M8ers91pwzSH0ETHcvrqoTFa9kD27FZE9X2Q76pc+gJAwtk?=
 =?us-ascii?Q?HecNhIwlfTplSn3RViqVRZSKCa+n2l26wXSMu9oc4EQFbTeYz3aj8HW0zsiz?=
 =?us-ascii?Q?Lduu4Ls9xwaTle+LU8KZ+kzdqnPtz85H3LLot5f90KpBSshjdRaqzKYPgCRY?=
 =?us-ascii?Q?hsL199xbNAJD+0CMlOwcKZRJ8uNVNe96MCCRU7DJdYYcTpsFpxet1WmnP3l9?=
 =?us-ascii?Q?Esv92r57iBJDY0w7ik4ZvBAKNtlr5DGRu3LttbWl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c44aa05-aabb-4e5a-d5f3-08dc49647077
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2024 05:04:51.1837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E7kCYuQ87Aq2gbLxU1xfExX2Wm8lyHkpwl+yfC7ovBAo8gOPKRN9RS9Cubg7R0xcCq0u+kzvRe1emsWL1+uq0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7440
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
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Wednesday, March 20, 2024 6:06 AM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH] drm/xe/display: check for error on drmm_mutex_init
>=20
> On Tue, Mar 19, 2024 at 08:33:41AM +0530, Arun R Murthy wrote:
> >Check return value for drmm_mutex_init as it can fail and return on
> >failure.
> >
> >Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> >---
> > drivers/gpu/drm/xe/display/xe_display.c | 24 ++++++++++++++++++------
> > 1 file changed, 18 insertions(+), 6 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/xe/display/xe_display.c
> >b/drivers/gpu/drm/xe/display/xe_display.c
> >index e4db069f0db3..c59fa832758d 100644
> >--- a/drivers/gpu/drm/xe/display/xe_display.c
> >+++ b/drivers/gpu/drm/xe/display/xe_display.c
> >@@ -107,12 +107,24 @@ int xe_display_create(struct xe_device *xe)
> >
> > 	xe->display.hotplug.dp_wq =3D alloc_ordered_workqueue("xe-dp", 0);
> >
> >-	drmm_mutex_init(&xe->drm, &xe->sb_lock);
> >-	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
> >-	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
> >-	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
> >-	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
> >-	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
> >+	err =3D drmm_mutex_init(&xe->drm, &xe->sb_lock);
> >+	if (err)
> >+		return err;
> >+	err =3D drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
> >+	if (err)
> >+		return err;
> >+	err =3D drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
> >+	if (err)
> >+		return err;
> >+	err =3D drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
> >+	if (err)
> >+		return err;
> >+	err =3D drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
> >+	if (err)
> >+		return err;
> >+	err =3D drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
> >+	if (err)
> >+		return err;
>=20
>=20
> humn... but not very pretty. What about?
>=20
> 	if ((err =3D drmm_mutex_init(&xe->drm, &xe->sb_lock)) ||
> 	    (err =3D drmm_mutex_init(&xe->drm, &xe->display.backlight.lock)) ||
> 	    (err =3D ...))
> 		return err;
>=20
> I think there are few places in life for assignment + check in single sta=
tement,
> but IMO this is one of them where the alternative is uglier and more erro=
r
> prone.
>=20
> thoughts?
>=20

We should not proceed with the remaining mutex_init in case of failures. As=
 an alternative we can have=20
drmm_mutex_init(var1) ? (drmm_mutex_init(var2) ? drmm_mutex_init(var3) : re=
turn ret) : return ret;

With the existing one traversing the code is more easier, these optimizatio=
n might make the code look complex.

Thanks and Regards,
Arun R Murthy
--------------------
> Lucas De Marchi
>=20
> > 	xe->enabled_irq_mask =3D ~0;
> >
> > 	err =3D drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
> >--
> >2.25.1
> >
