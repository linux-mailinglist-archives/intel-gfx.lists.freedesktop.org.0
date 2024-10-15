Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E94999ECAD
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 15:21:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6081F10E14E;
	Tue, 15 Oct 2024 13:21:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZM6OSZmj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84AD710E14E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 13:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728998511; x=1760534511;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2/jgeFgHUhwakXnMXDsnOeuiHf5wXBd992ttqQ3AEW4=;
 b=ZM6OSZmjfzsXtIpqrGQBopHkZDXBzhwu0ySGvQy6de4pmFF1scVrLJZ9
 4ksHLR9uNSILd1BdpTqY4SRbGtoFlObUtnDDLeTL+5F6ist9dNy2HbbY4
 ese6UW6a5jMmQ5hizEvQU+tbdoygWvYqXLOPlKFmT6LERYuuDnkGw9r5B
 vDR+MlF8GdYTg8vD7n6HufH64bfGsUCnGgSfeRzKQx5TONddmfInhVIPX
 NjsSSzKG2mwCMhoz7+51CaCO/NC5hV7ZZLhYBCmv1O3hd4bH//U1nK2t/
 f0NXtXb2B/Ir/MTPkBwZ+WuqkNbNaOhNXVn8FFm/bq7t7RDNcuC0oy9nu Q==;
X-CSE-ConnectionGUID: bGt0A+2fSNufBVwxa5dvvQ==
X-CSE-MsgGUID: fT2GzF2QTWeNNkMJcpfcBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="39766471"
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="39766471"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 06:21:51 -0700
X-CSE-ConnectionGUID: PjbMQStGSUqN/8znrKK5Og==
X-CSE-MsgGUID: +4Xp4qHsSYicbozDxvlCFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="77508401"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 06:21:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 06:21:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 06:21:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 06:21:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 06:21:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V91fnJjhuSitNmgeFY2IbX5PmYHS8a/4JmGZaQuOGojVKdYflGPETg2SEnIW450nPQqOK88C9vc7AnjUXqq/EjwqCde5aT7bNWDSPSJjxiW7sqJafKELrh8+JKThahY3pMSQg5FrbDcZzFCT4wyNPhvnCZaDCtsi4z7qd3RMjRX3msf0JN68aR1GqoWvPS5wgQPZnSV/AfSpoXnym4SqExemUqIk3QOphnEZQexl4cLqVnQdohCpAjB1gyOwMZiQ7lwxFr/nKWqesCYv9juUA0OOFC4Ja+aV+JJrQ9UuqTXgpGqSV+kxShAy6rM9XClV/MfwFhjwo5XNuDdFj/5izg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s830GQyVTtM03+E/dfHGW6E8FnNZ4hwnH7t3DVd02Fs=;
 b=Hb6xfjekcUT0aOW4XE0BaCrlwSjDQpgoTeIX1BfWOP61WQpo1tZV6AzmKXYOPiASrqVwRKLypgV2rOj8z/L5rwyy7cbEpTkVufa1l/9/hBnyek9DR92Nnyrw1Id0CLvzS1nY6lW30pylP3erBIG8+nJ3enblXbH4BGrHigk97MZ/b4rgwmZVLOl1sKvAnp4sOJ4vmvNzRXkXT19A9nluXYEE5VlILuvScsngHE/qOn61WfXUisyxbkr9zy5f5lOu2qW/6mtAg5Yf8J4/PVtFXnvwJsgZ2PRvItSvWuStYpwzB1ALmiljw+xxdP7eybPONYTRcskhfs14w/X8udW/Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH0PR11MB4856.namprd11.prod.outlook.com (2603:10b6:510:32::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Tue, 15 Oct
 2024 13:21:47 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%7]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 13:21:47 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Topic: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Index: AQHbEysofg4QnnlQeUm14i8grYYPOrKHm7WAgABGfXA=
Date: Tue, 15 Oct 2024 13:21:47 +0000
Message-ID: <IA1PR11MB64678E621767064D910F53F8E3452@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20240930112343.2673244-1-nemesa.garg@intel.com>
 <SN7PR11MB67509E290DB4807E294502B8E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67509E290DB4807E294502B8E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH0PR11MB4856:EE_
x-ms-office365-filtering-correlation-id: 8dd033ae-ba6c-4ae4-636b-08dced1c522f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?zTrTEAcWqj4No4KdSloMQ/vohAYgWNA3ovV2NYrUgEyxvTPiUVsaRv11cmCF?=
 =?us-ascii?Q?r2mM9SAo8foB+pBGMZGUTfal/r5xkeUE7czj8c9qrI+KOL8XEbrdSPwRcY2E?=
 =?us-ascii?Q?gOUtL/BhtoU8holhH9IcXMXqoOq8ggVoWMiQdRfbd7/+YU2Gl8j+xWuH8GU6?=
 =?us-ascii?Q?HsWKIc9fdVU7d4GRk3t26x9G8gOYa+mSTqwkTuUTjdXExr+cj+ZERsekVoiM?=
 =?us-ascii?Q?tgiXy+JRBNQjKk4wLFBIWJPAaBndwgQXHH6h0SWl69F4JHoj5sxi1Qqdcuuq?=
 =?us-ascii?Q?OcmZgw5Mw/q6bntXgucYSLZksyaQpRMZ2VOI9IhVpGFk9Ikh1TyZ0n4qhl5Z?=
 =?us-ascii?Q?ZpKGiTr4XCK8jRlaam/gQZwD2u6xW3yo94SdlzlqqsPTSyv/dqmTYgY+EA3R?=
 =?us-ascii?Q?B9o0c3W2QJZDG65XN6OJYSiZLQU9aEjsuhOE8Yn31kzoQa4Vs0Cg/jZwFfXC?=
 =?us-ascii?Q?SrrKJjxpej4tkCM49nOOIscM7t35X+A60rPYqvFASleKWyLTcwBPp564n04T?=
 =?us-ascii?Q?D4ajQoSVMp4IMPJ8N1oOKHphWKHZjiKmL33Bn9gkYqg2bS7HERQwDp+uGR+M?=
 =?us-ascii?Q?MGp2k8FeO0FaYZWrSe86Nslb7tcxA5kpGGKTEec5KZ5GV6n75sS8+CNafJE2?=
 =?us-ascii?Q?5P7yVOWmil6Mrw5gUMnurJ6lbRSS0msZdixw56G15pow3eqoGIm14N9LDVZt?=
 =?us-ascii?Q?0itdjL67qwkMkW/Gtxq9cUKVnZSWlLe3hfWqSUapeztwMoCKGmsKCA65aLTK?=
 =?us-ascii?Q?BZMFEkop+NBWf14WB4NsBGZR1NQbcUTG/y0LMTZCL1m7mVrH+6kPexb4vAVI?=
 =?us-ascii?Q?CV8riqdJ2jIM4macaQS4K+vDi/PGE7aY/tO4DSWCOYm+ssMqaTFknHWe2wdg?=
 =?us-ascii?Q?4StstEqSkUo1UKZmcLASlk4gIWjBQVrSY/GFN2QkfLb7yE7NOQUOoI9IuKC1?=
 =?us-ascii?Q?BQFZyZ1kNkw/V+DYFML0rDbiVYTBl6IBf3A1AVfhaV0lGcW0s/iaU+NpbpVR?=
 =?us-ascii?Q?ocwLeWRiW5Y0JPNofLhg7+/CHZJItBAtsHmxbZupq7AYnzfTyIG4csH3ByCk?=
 =?us-ascii?Q?dwkDkslgAEgFJiH4DFkv2KxWUwS6oMJ6eSlBae7Hanxt98jOjfUSYOFcdWet?=
 =?us-ascii?Q?+0SXnigO+ruPOJfoU75stchSVUFW/AcXNlWNFcTIiMbcOOLSCLO61Zd3oUqK?=
 =?us-ascii?Q?OyS7fkZxE35USzY3Na1ydApqdxZKC1KewTO1no2wRqwadQXjQWvjrqehp19u?=
 =?us-ascii?Q?GcVYviJCzuIV+tMGv0TgzTkD2GNJ++5WjrTLhirshcs7QdiBjLfwYV6iwLlm?=
 =?us-ascii?Q?unPYN+5fpbnQilwnnwYlQk7AoZTEfvZXdNoLFUwlTnZnNg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LK7UJaaClAZ9i6SGhMZh1/xEdc53NNInRpHd2oATm1jdmm+3d76dCK5uv68U?=
 =?us-ascii?Q?Rteov6em+AWmmp/uiPVVOkjIQE2chJrcfRe4rTZNYZYJnUjOQmnNSAo8LJVK?=
 =?us-ascii?Q?VtzCR5SspNH4ga/faaEHtBmVqLEvZ4HsI8ugDf26k3f0iD9uRx9U5glV0AQw?=
 =?us-ascii?Q?pBof9VYztCamxMlvOUIOkYIcKsZjb4Gurwrl5vyny2EtdjbIoW9/k7h0rNvQ?=
 =?us-ascii?Q?ET4/KYxHz+xPLK6a+wDeinLFjQ7F0HEwyRutfb7E0i8BaypzTXDJJh6xfmwC?=
 =?us-ascii?Q?WRibQfamAx+lwMW1+qY0etiHUotvBWz/kO8P8xEwS1p++VBYH4UVrGv13JJJ?=
 =?us-ascii?Q?Ef2l01xAuJD6NYbjPnK4HRx3WKTOvMN6Im7qE01haJIHg1DbPxl6Qu5N+H3I?=
 =?us-ascii?Q?dI4dyv7XH1aRJ0b9y4JS+H+R3CsFL4qgC4sHeQGNs5r9mRhCtcnw68urFqeK?=
 =?us-ascii?Q?l28Rr8fW+Y5vxYz1Qdf/I7YNSMaM/1cA+0lUGj/0JZFRNzZ5VES/8Wfp7NCY?=
 =?us-ascii?Q?V/fIToXTmmqo2IHA6nqyiSxmYidUhnNu71cJgYdgBPdYLnVBoVcjrus1pgJk?=
 =?us-ascii?Q?uOFQl+YolYa4EVLpSbv1pTzQCPguJz4Jv+Tsyuz5Mq0c20KdB/5m72nudIoq?=
 =?us-ascii?Q?kUHuFqpJ0xHQeOwtZgFZcOCDxTU0eizADXvXNDhtLh60XSd+YlrkwkFehvqf?=
 =?us-ascii?Q?s08qtv5QJH71xNsl23Kya7grXhhpggEsYWWLb9kKjegRtNDi0jGAKRkznzsk?=
 =?us-ascii?Q?OGMiOd/Kul2xIJixcgcTIRlciTc2l9FJHvZeXdB8n6JuLc8ZY4B3H9oTpo+H?=
 =?us-ascii?Q?1/jrD0nnXD7EWzuS/IZW2kuwlyjWdksTSXSjZN6KOZ/1/c7QsZqRcEFCYUzd?=
 =?us-ascii?Q?Ipy04IG9o3cXx6zIESbCjHXTisjEyc+/xZSJEe5JwhIOYxqoO6ZoHkZ7ggAd?=
 =?us-ascii?Q?zWUdYFbAUNHXZahNwFVoq8o2MVQMzmNHwD7D4UrEFpx58V2RJm4uVOouoFWj?=
 =?us-ascii?Q?jCI8HXuVa+/BYepxCoPpiRw02S6MXXkaQM6Dnh4qffpkFyWHEAPG/GHGWTv+?=
 =?us-ascii?Q?41VmF+V08MA9lgUAzdYDywxkCVmzlFEadaSuPtQdePm7qjHrY8MNnY36q3MR?=
 =?us-ascii?Q?lfLTir16k0zzB3Nx5dQgB5WXbkw03pnWvRgv6sDRnQDJfhKA4iFNOjwoffzL?=
 =?us-ascii?Q?2oArVfpv+mzscA0PuN4lqslmJSWn8lP7lQiiwqGLbgeanxSAORdlkliEV4Io?=
 =?us-ascii?Q?01YaN8m2uTBOBraBEOFu+vKenIqv35YPJUWFvGmMFohCVqAMPIF8Xrt0CHd5?=
 =?us-ascii?Q?bQkbh0o9CCjtZCNUmHWAIScxVaxMt8UF4lvbGghJTWjW6B2KM/Ne7usBQ0KA?=
 =?us-ascii?Q?0b2aSrO2RfrMiAfvQivHp1G0SGZ783Y4EnCkzoKShnwmNUHKafIO6MDjf6cz?=
 =?us-ascii?Q?eSlNqyYr731bQVbuYjJ4IsDZPYzikGpWNk849kzo1uOLU4TsJ9ppznQOAE5c?=
 =?us-ascii?Q?46rVmMoR+vQlwWCUR9hIGsAQUIPTmJ1WPdJQSMOuxw9F5yBdFuwDLossuT+P?=
 =?us-ascii?Q?ZXJr1tINKjHeDt51FN+bN6xGocGNmpJtp0d23mkF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dd033ae-ba6c-4ae4-636b-08dced1c522f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 13:21:47.3265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hhBuGre8kFtPDyPDIGQO6osx+1tg0y2cCPjp/wy5XEhumjQ9LKiGGScKi8IgSHJ4n6kwvpHsgCh1oJgezM73ZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4856
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, October 15, 2024 2:33 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for pla=
nar
> yuv
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Nemesa Garg
> > Sent: Monday, September 30, 2024 4:54 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > Subject: [PATCH] drm/i915/display: Workaround for odd panning for
> > planar yuv
> >
> > Disable the support for odd x pan for even xsize for NV12 format as
> > underrun issue is seen.
> >
> > WA: 16024459452
> >
> > v2: Replace HSD with WA in commit message [Suraj]
> >     Modified the condition for handling odd panning
> >
> > v3: Simplified the condition for checking hsub
> >     Using older framework for wa as rev1[Jani]
> >
> > v4: Modify the condition for hsub [Sai Teja]
> >     Initialize hsub in else path [Dan]
> >
> > v5: Replace IS_LUNARLAKE with display version.
> >     Resolve nitpicks[Jani]
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index e979786aa5cf..e3401a4f7992 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -1029,6 +1029,14 @@ int intel_plane_check_src_coordinates(struct
> > intel_plane_state *plane_state)
> >  		 * This allows NV12 and P0xx formats to have odd size and/or
> odd
> >  		 * source coordinates on DISPLAY_VER(i915) >=3D 20
> >  		 */
> > +		/*
> > +		 *  Wa_16023981245 for display version 20.
> > +		 *  Do not support odd x-panning for even xsize for NV12.
>=20
> Only mention WA no here the rest anyone can refer to by going and checkin=
g the
> HSD
Sure..will do.
>=20
> > +		 */
> > +		if (DISPLAY_VER(i915) =3D=3D 20 && fb->format->format =3D=3D
> > DRM_FORMAT_NV12 &&
> > +		    src_x % 2 !=3D 0 && src_w % 2 =3D=3D 0)
> > +			return -EINVAL;
>=20
> Also rather than return -EINVAL here we set hsub =3D2 and vsub =3D1 this =
should
> make sure odd panning is disabled When we have even size since we only ne=
ed to
> disable odd panning according to hsd not even panning this return may end=
 stop
> panning for even sizes all together.
>=20
Even if I do hsub=3D2 then also it will return -EINVAL as src_x will be odd=
 and src_x % hsub will be 1 which will return -EINVAL.
Even panning doesn't get disable that's why I have added the check src_x % =
2 !=3D 0 to make sure that position in not even
and src_w % 2 to check for even size.

Regards,
Nemesa

> Regards,
> Suraj Kandpal
> > +
> >  		hsub =3D 1;
> >  		vsub =3D 1;
> >  	} else {
> > --
> > 2.25.1

