Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FB98ADC61
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 05:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E4EB11301E;
	Tue, 23 Apr 2024 03:45:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yi0lSK/T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B01CE11301E
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 03:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713843946; x=1745379946;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UD0oPB3CVoVAr55CnEKM4+nkE8/RGJWW6h0Ug4SqNbQ=;
 b=Yi0lSK/T2CX1d8aUVZt5SQVZbdc8KbrSRGY6CEFd8byE6Q1aXYzpDsE8
 PUaTp2F0OWnk6pKLftcmL4cL7CBOvMvjSxKVuA7Ru9upmsoyhOYDGOSlj
 vnqqrjwN5nsmilrXum0629XU0UeH6293BmQYWSzTw4oGKAQz3pLEHcXi+
 b5QyUvTV/b1lXYC4JcFQFzJI+pkPQ5Ydrye4XHjLzWNR05DmrkETlZrPQ
 NEGK7zjmZ4ZfTEIuVHBqi0zRTsVwZ+1n+h2PoGH8u8g/JYVWrYvgNpIb3
 fZ8mgG6JV8HbfCyNje4KWTCxQow03L3hHiI0NeFnciysjxMEh1v05sRcB g==;
X-CSE-ConnectionGUID: 2L1xD7bGStuSqR2urlpHdA==
X-CSE-MsgGUID: YeKAbAR+RP+Pzj96+0NlEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="20812756"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="20812756"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 20:45:46 -0700
X-CSE-ConnectionGUID: 3DZMx5VTQRaQ/Rrm+qcD/Q==
X-CSE-MsgGUID: 1CndjHBUTrejHkEtGZk4CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24281708"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 20:45:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 20:45:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 20:45:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 20:45:45 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 20:45:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fri5OtS4Gj4YZB3slOamcwxLX+TF+p0kbZ5inabsocNeeAkKY6O0rsb/fSjkQlBz6No/T/Xjb89vSXwDOJhjLu2SpEiDKWlYaX8OGlz1/cMG89lXGsXHgU3dQqs1FXRX3NeG+gZGwhc3w5qpwzMOxQPIglrLzyAtoMef9n6RJ1J2CfR5FsUofZZg5c/TB6labNdF3MflDKYBSLdXDXO3HGEL+T+LddR4jQyHJfuoBYTljH+ZCR2RsrNjbwqULeAoNBchW6EBFXRUZUN5YpQViKwkJ/NZ4Z2gIQPrC6Wm7tm4VHk1nEOeFmcv73l5V+V6YuVaCHU6H1Gr56MENtvRxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LU9/6LsPZRjb3ZDgk/uwepi/sozh2BUv6y6xXm+a9Jk=;
 b=aY/0LwhE2m2ORjJW9GdKXwOsro1iDfIaWL86JI82BWj+HW57/0YfiWF5oxqZaWzJqK2NmfQDrLrxzRgRblzbZBZxwAZJ/ee6wK4IFynyi6cwbG5r7CPas6Y7f+1Ouqc09no1cJvt6Pwc+sxl1bG0cdracu1DAXxdkjAR5xOSxnWoEgwVyXMxT+3R64JSQJHdClAdUo60mkPFmdUPb5n/FE+AU4fJs3hl2W3wmY20vJUyKHVBb3wH6KpyjyaPq+aMsGJ3Y40j+NeHSBqy9YtUCRP+RyV+477UvWkbDnD3OOPiuGQ2lItKojnkBvgdluJkpArePj5yfV9/eK8YGZDvPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MW4PR11MB6618.namprd11.prod.outlook.com (2603:10b6:303:1ec::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Tue, 23 Apr
 2024 03:45:43 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7519.020; Tue, 23 Apr 2024
 03:45:43 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/6] drm/i915: Reject async flips if we need to change
 DDB/watermarks
Thread-Topic: [PATCH 2/6] drm/i915: Reject async flips if we need to change
 DDB/watermarks
Thread-Index: AQHaeuBlXHMmbe4JoES2dNHc7TfferFvLGyAgADKOwCABXQH4A==
Date: Tue, 23 Apr 2024 03:45:43 +0000
Message-ID: <IA0PR11MB730742C8A8CDF011B0C33069BA112@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
 <20240320160424.700-3-ville.syrjala@linux.intel.com>
 <IA0PR11MB73072BC8E9CEAB07BA6D7E04BA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZiKa_tyF0USsa2dH@intel.com>
In-Reply-To: <ZiKa_tyF0USsa2dH@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|MW4PR11MB6618:EE_
x-ms-office365-filtering-correlation-id: 8011016b-1898-476c-ea20-08dc6347da0a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?YGSbWaZJCx9Ig7+ZxriaeSEgdMzaPNbgyYXRbqjmj28wK8gjToeOX8/CvN?=
 =?iso-8859-1?Q?Cf/zadvKyTmoYqEvF/FioCPL6KH/ZjbomOsuRHnT4yM20S7ZDp4YJ3laYC?=
 =?iso-8859-1?Q?toKPZJ9wlnKiG59VhoMboxWitOXWC7bAeo0fEVUFb3NOQ6geQGmmziPak3?=
 =?iso-8859-1?Q?rioGtiBuiPI49UtY/OXO9aB0goNr+Xutq2BEArr93+FkHHZd4JMz5ZojvE?=
 =?iso-8859-1?Q?nePvM7sKXt0g0RhLmhOwjHrTXNdbvZ2B6LZp+kRFlaWXpVeUfTLpogEM8h?=
 =?iso-8859-1?Q?/Z2wUJktbsiwBDq9K86t9JgimLvlbtY2fJI8LBR7UqW6RqURA94lC5YJvI?=
 =?iso-8859-1?Q?N2dwYvV0OaU2oEZ6sEHfsnuFfq1hBdC8pTn01ZfBTwKSelLmY2cZcQqBNt?=
 =?iso-8859-1?Q?25OE7NopWQKbpRBnthRTnOGk+/pc+dCHFFyNoK53TLk21WYvnvdM25lrbf?=
 =?iso-8859-1?Q?/VLbJVhLTfJ+g24Zm3WBRtWkVSyB2vChUyHcWpN6/S3GSHMxshBkjpqwiF?=
 =?iso-8859-1?Q?GVm+pzOezokJPduKDdt2eEtHagwQ9sZuPboiEbcQYHYvNXu4AgWFviNqLi?=
 =?iso-8859-1?Q?HAT1KXDeqqwN0FOdfAqZfEQ0W7THROvPMRURAu5sC+EQknKywWmrSuTO4R?=
 =?iso-8859-1?Q?XBw/Jx6gIuNdT1F2fc+gFOpz2NTcgXxDnFo9yX9NkNp7VjyL6ichAbuNLq?=
 =?iso-8859-1?Q?2/Q0UXBvFo+kJglSWMgt4D0kzijSrlJYssrEvcdFYxpyfAyI6HDYLb2eYD?=
 =?iso-8859-1?Q?tbljwBYvSBISvZFrwScMsCZ1GXR1Ig7TfKJMlvZeDsmAtInsAKIX+qzFVz?=
 =?iso-8859-1?Q?usH4EohwrYX5ImDOT8S7RRcYyjEZP7oe7STeI0g/A4qnXeNNMom5bzzBSs?=
 =?iso-8859-1?Q?vkYMUz22y8KKq+bGwSfC/V/mU+kaMnQ8rE+vb90Fj0J8Cr81xrrssugTPW?=
 =?iso-8859-1?Q?PhjB70WKqM3XJf7M9Qiv7rNxMUcMW4OgWjLW0AqCo3opmggkoKSCU82+1d?=
 =?iso-8859-1?Q?Eim7LDR7AmOHJASH7ywkNl98TjCPFb+Bo8QjJ/enZo9zMvvAvNkFY6c3i3?=
 =?iso-8859-1?Q?35LNDwyTcjIYCuanLFMshKViujcAH4xzPy8dKT5QeWdX2NsoxtBtrwPKq0?=
 =?iso-8859-1?Q?5g+xVwrLwfIP1oYt5dVRSyOINERFqx7xDVZcy/X9ARgaB6SqW3T7TLJvXp?=
 =?iso-8859-1?Q?C72cXyEeuxKTMaYlHyDDk/i37bx8MtcZUAj7vU04qtDBFkbOpZdyHW/mm/?=
 =?iso-8859-1?Q?WOI4FzXlFyY1fcXit+TwLdXKssVkIqZ1V1tgIptyvTNSec5EEA0AUvmlO1?=
 =?iso-8859-1?Q?QNwc4J6BbfSmdz2JtIYlrDIpPPlROp++aZJ0/WxdGT/PhG73c4ZOjCrrIC?=
 =?iso-8859-1?Q?qrptYWVkcIjDPzVq5U36UUGX0ti4/29w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?yH2gKuHvecDcNsrX1tiKz+BOmSz3RN4GD22f0yWGUiU9sT7eSUrL0A40NR?=
 =?iso-8859-1?Q?ISrlsQSFqzPs4Suu/2WSJlsnVlxwzCoH5sunXp1EE0NeH8kmwscAiyISb+?=
 =?iso-8859-1?Q?TjrEHxR714gvjhjVDT4i2DOVryfzHkaTUH4rCXKJixjFcycggUtaIrdO4M?=
 =?iso-8859-1?Q?eFx65n0HDCkSohZIAIXmnwaRQsAV5O8skE1v2U9qk7OadaZtzqT03QcgaB?=
 =?iso-8859-1?Q?tXcm5Lh1p8WeDxp4ulUCZAEBzV2VWRb9iee6orElwaVBMjHWY1bEF8r8Rf?=
 =?iso-8859-1?Q?q7ZuOPp+R3LvuKNV2gHTfmDn7laUlDK+BMuVVUZldpUiyfPSHSn/K7LeeR?=
 =?iso-8859-1?Q?c5S+V2CSoIlV1ufN1rggbwzhlj5t2IV4mpc3mSW/I9uzXnjZ1NBqA8N26e?=
 =?iso-8859-1?Q?sF9+C+d8xqT45+tXMAov8KLmzVYg5cL289KLBZS2OtVdxR7KUe1FaSm+JI?=
 =?iso-8859-1?Q?ETlFpSGXjeFmCy0zOLPzb8bUi+HO83ggqIzWClTlOySthGATGfPN1zhCF1?=
 =?iso-8859-1?Q?Rk9MPWEiVUyp6yX7GB7IiTl2+G0w60F/6CjBnms00YvmsJ6rEDoqNN+28c?=
 =?iso-8859-1?Q?HgWPnvmbmxd0/dcmv9Sq2xvpkNRgzYwjfDHwLjgAp4PfQXkIR0Ro6hEnb/?=
 =?iso-8859-1?Q?AXgYkaf9Zix0mJFapDXRJU71aPF3H+h1D4R0mNdHzXa8Jg7mXZjgF6DDGs?=
 =?iso-8859-1?Q?00MJKkWioZO3vK0GMr5OqPUdVIylWGUmCFsvUl8KTrvJm68FakPvZ+CcdL?=
 =?iso-8859-1?Q?npShA6+HTgiqvy9gK1Uq6AiAilnJKt7Xd05WJ5mU2kPu2wTgC0X8jLKX5B?=
 =?iso-8859-1?Q?trn7YBF13sEqBI6RZ8OkqxOUuZrz98Ln0Tcylbd7EnKD0MPlhrY09iWHlP?=
 =?iso-8859-1?Q?6sDDvLovZiO/Yw7uYsTRwAUPv/trupQTLggIBpMPhzs5KGaSn5ER6kpreM?=
 =?iso-8859-1?Q?CUZq9FOSJoSwDYt5nvZGkO5vlwMK2x6x0H2tz2AiHj1nLW4VAxhXneGszO?=
 =?iso-8859-1?Q?FmP60E/jh46f05l2581Xu5JeYZn+RA+Cu6pw19U1zmfy7gVfeu03rCv3En?=
 =?iso-8859-1?Q?uUb+RBnsAG/rVjLcAYn/DDQZq8awtbcaL68gXDiBc94Ykw8Y/KWGz+ww5E?=
 =?iso-8859-1?Q?aB+bZqNNzuI7pHQa4ek0klZ9peSfsPjVvXLmXnlNlXPOLBtuCHoQJK2ToJ?=
 =?iso-8859-1?Q?LY7HJVGdsxz6gqaBTqwpq/2lv7gjjOKLvsoPtXlWnM2PxT++5P8SYsC+mB?=
 =?iso-8859-1?Q?8ZM3NMSJexqGSD3gPJErHsSZkPW8ebBlK/Mj1WwsrQAUAf4RhTYJYfsJHs?=
 =?iso-8859-1?Q?1+fTNmpp+hsDDWWhjh42pqqnCBNscHVSWXID2KJ55hDJSZOzpOEkr7z1PN?=
 =?iso-8859-1?Q?gQ/55Zj936n4e857wZyNVHRHO3LK7PYbmPq3JjEBGzPci58wLjmtqMxGx6?=
 =?iso-8859-1?Q?fYvVPWJ+VrHk+VWjSgzcRuvo42s9vzNA7cgWVJP8wHtzKceFxnJtlELCsD?=
 =?iso-8859-1?Q?t8uQcPb9UVvlfZWSZe1PugJh3vxGIaqvWFj3As9atJCsBAgkKiy/sJW0jA?=
 =?iso-8859-1?Q?aSp4LtkjcdgIL9AlCM3w8RwNZYP4qp0mUyX4q2wyMx5QkzskrjhJGCUlsF?=
 =?iso-8859-1?Q?Lf6bPi4KLouxePUX4ZxJLuTLsFBDCHsCuE?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8011016b-1898-476c-ea20-08dc6347da0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 03:45:43.1706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Va+iSaNw5LgPyoLYWcXyfwV2dPDI6aj0C1yXfTZs9paXSZ3RppF7aSJ4zKTOS4YM1jSNiVaSk9pzie8yckT3bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6618
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, April 19, 2024 9:56 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 2/6] drm/i915: Reject async flips if we need to chang=
e
> DDB/watermarks
>=20
> On Fri, Apr 19, 2024 at 04:27:53AM +0000, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Wednesday, March 20, 2024 9:34 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH 2/6] drm/i915: Reject async flips if we need to
> > > change DDB/watermarks
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > DDB/watermarks are always double buffered on the vblank, so we can't
> > > safely change them during async flips. Currently this never happens,
> > > but we'll be making changing between sync and async flips a bit more
> > > flexible, in which case we can actually end up here.
> >
> > Rather on getting wm/DDB changes should we switch from async to sync fl=
ip
> to honour the wm/DDB changes else might end up in underrun or
> flicker/corruption.
> > Spec is also aligned to this approach.
>=20
> I can't really parse what you're saying.
>=20
> The sequence of events that can lead us here are:
> 1. start in sync flip mode
> 2. userspace asks for an async flip (potentially asking for a
>    different modifier)
>    - we convert it to a sync flip and proceed 3. userspace asks for anoth=
er async
> flip
>    either:
>    - the format/modifier (and thus wm/ddb) stays the same all
>      is good and we do the async flip
>    - the modifier changes we will now reject the request due to
>      wm/ddb needing to change
>=20
> We don't want to convert step 3 also to a sync flip because userspace cou=
ld just
> keep pingponging between two buffers with different modifiers and we'd ne=
ver
> actually get into proper async flip mode, and would just keep doing sync =
flips.
> That would completely defat the purpose of async flips.
>=20
> And we do have to reject the request here in the wm code because otherwis=
e
> we'll clear the do_async_flip flag and the later
> intel_async_flip_check_hw() wouldn't refuse the request even though the
> modifier is changing. The other option would be to move some/all of
> intel_async_flip_check_hw() into some earlier phase of atomic_check(), bu=
t that
> would require some actual thought.
>=20
Even adding some/all changes in the beginning of atomic_check will eventual=
ly fail the flip, so better to send the failure as is.=20
Upon seeing the failure X would fallback.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------
>=20
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> >
> > >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > index bc341abcab2f..1fa416a70d51 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > @@ -2540,6 +2540,12 @@ skl_ddb_add_affected_planes(const struct
> > > intel_crtc_state *old_crtc_state,
> > >  					&new_crtc_state-
> > > >wm.skl.plane_ddb_y[plane_id]))
> > >  			continue;
> > >
> > > +		if (new_crtc_state->do_async_flip) {
> > > +			drm_dbg_kms(&i915->drm, "[PLANE:%d:%s] Can't
> > > change DDB during async flip\n",
> > > +				    plane->base.base.id, plane->base.name);
> > > +			return -EINVAL;
> > > +		}
> > > +
> > >  		plane_state =3D intel_atomic_get_plane_state(state, plane);
> > >  		if (IS_ERR(plane_state))
> > >  			return PTR_ERR(plane_state);
> > > @@ -2906,6 +2912,12 @@ static int skl_wm_add_affected_planes(struct
> > > intel_atomic_state *state,
> > >  						 &new_crtc_state-
> > > >wm.skl.optimal))
> > >  			continue;
> > >
> > > +		if (new_crtc_state->do_async_flip) {
> > > +			drm_dbg_kms(&i915->drm, "[PLANE:%d:%s] Can't
> > > change watermarks during async flip\n",
> > > +				    plane->base.base.id, plane->base.name);
> > > +			return -EINVAL;
> > > +		}
> > > +
> > >  		plane_state =3D intel_atomic_get_plane_state(state, plane);
> > >  		if (IS_ERR(plane_state))
> > >  			return PTR_ERR(plane_state);
> > > --
> > > 2.43.2
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
