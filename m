Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB31D7AE686
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 09:15:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F0F910E353;
	Tue, 26 Sep 2023 07:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D3D10E353
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 07:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695712520; x=1727248520;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/iGqOmS40rZOaX4Jc5KhdruB5dTQOkZBDzNlOR4P3vE=;
 b=HGWSOhE+pEEDwaaCSrO5UKLlwRwKpXAlDtTmb72bk3hEH/y/wOsATiEf
 exUBepDLF0T0Fb7qegQPJgUOCr1b+fsSD+JKiXv3FMWSxSnUrXjok0NgZ
 cA0JBFnJlmQqtMEQJmWI6q16T/nzhzik725hGemePSe0RxefK5vPRw8ZH
 1Kw6Be8TxUQbrYcFhm9u7j4N6nx6io35Qatrx3hqinb71bCu/o6mTyd8/
 tmfFB/HPwimVDnp1xPhk8LngLvLmxeTAgjZ+xndreIQVomT3sjAn72sFl
 y56q8SgzaOvQslH8S8bXooUbo8MuerlYKYS9Dm+UhPd6GaEQKAqG7E6Y5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="380370717"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="380370717"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 00:13:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="838927170"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="838927170"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 00:13:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 00:13:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 00:13:48 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 00:13:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C91dJIf0O4fa4qXQMTs9L5ifv3S5VAeRtN64W1RyCigM1F84cPRC7UVllzAR9iMuk01f4TZQQbx1IscHWmJlKpYueJ9s3+3v0nB01XDHymI9F1UwKeSwA55u9iysa3CgpnmG857fWWGsTp8Nxk8/Nlnk5SWVq7f7rkvUK9XkR+ngavurhek1e6kLNg/ikk9psntRHcA03SpbgXB6ccEXVFmDnQYSfJUl5JjRwMM2jLOChn3BgcfEwU5QOfnFhqzHQdez3dmTgl9IaNr+nhjFL2wanPxVtZBKn1Fu89vduV9dbO972A3e/tzhdk56RCI+WHxSk8mK9cHfShxRESFKUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6tuagOm27KCP7PN/NMbvxgdPJ/2K0TQBy5/ZPkkW+AE=;
 b=N6XGD9mRwUS1gw+1SePRlM1TRFK/UPcxQfC4odN1/4f9Bys6kPNRO9hoRiPz9pLhLFkxP6LsE+vYsQ1B5gQPiIcZs2DwaQ0eYU5ncD/jS8tg6UJekB5pB1z3qoGbiUk+j21EATZBnZ7ObYPVUwvJfoS36lrQEfqLpHOXy4zrfk3GD/GLQOR0tAUGlNJfEY2vWbnhXfsW340r9xHMibnfVxwXSGHZNRVu15pgy432sBBIyibuqBLWpW2RLCxccfRab2S9WDK9QsmjAOGo2WW3tC34eXaro8cipeBXPM+VJDKT+Bnb1LEzSqZJMRg6G+BcxQhGV7jQUf6VSU5/FhcgnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by DM4PR11MB5421.namprd11.prod.outlook.com (2603:10b6:5:398::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Tue, 26 Sep
 2023 07:13:45 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::2d10:17dd:ff9c:7f59]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::2d10:17dd:ff9c:7f59%7]) with mapi id 15.20.6792.026; Tue, 26 Sep 2023
 07:13:45 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
Thread-Index: AQHZ7Y2Nenw0l5MGIEirNmg75TgNwrArfOkAgAE24pA=
Date: Tue, 26 Sep 2023 07:13:45 +0000
Message-ID: <BL1PR11MB59796856C4C80FE3461F13B9F9C3A@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20230922193518.723664-1-animesh.manna@intel.com>
 <87lecumo4z.fsf@intel.com>
In-Reply-To: <87lecumo4z.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|DM4PR11MB5421:EE_
x-ms-office365-filtering-correlation-id: 0373bbdb-6f04-4649-f98e-08dbbe601f38
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hkx0JKNbbs7/1KNXNT+uxlq5EA6xins2BhZpkOeALnjjNrI7xWpamEMAaZdeIW34DL0R+bt1Xl8iPC0k9sbVWlwUTrmkT2+DiIfYY7yoAf6jwMWDCkQzj+3J/EvLxUd1/+y3FixMFn97bqBqsffKEMo1fcs8wuPbk5QiAZm3R4cIVrYBvAqM+LPbi2YHZS1aUz/exV2PfpLy9P+rkJVGY4lMHamtmH2fFVIqY/ndGSNCfiaUt7aw4FSaRwqBkCSnAmKOSycT4yz2YqyUowPOkzgq6OXqME4diQILcnbijqChRvaFBi2CoPtFouyYs1HzR2Y8sQyT2Mj8eLrKUDNQfcMUGemGjCQ7vRS+3Tl4nf5BDIAOkna8hETqAobCTxn0ojtVooBB+74DDM6/1WawFrEVtEKkWEkGuO1Dd/Gtb/XR2ZenM3hUhf4mDItVAURvX2fxMf8XP6rlAI7iSjWAA9tgfv2Nu0brIdEVlEoI/rBf6wHnrpQt2HWRgT1IAPyiSbwkSR98qwjveFMBKtIt4GqI7XvZQZwPJd1jAmS1odu88ZHYTTYzoWkm6hyQuZbzzpwugUNS0i6kEIIFd8yVVF2AKey+awVNOwQtHMybvjl/Rtc65/GN57ON0F7ULvjv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(366004)(39860400002)(346002)(396003)(230922051799003)(451199024)(1800799009)(186009)(5660300002)(55016003)(52536014)(26005)(8676002)(8936002)(30864003)(33656002)(82960400001)(38100700002)(122000001)(38070700005)(86362001)(2906002)(83380400001)(53546011)(55236004)(9686003)(7696005)(478600001)(6506007)(76116006)(71200400001)(66946007)(66556008)(66476007)(66446008)(64756008)(110136005)(316002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H51j/NX0Kn6XxNQr5hjSrN77FyHGElogTpPGlrDRXEQmVofMIGhLMT3On63V?=
 =?us-ascii?Q?TQk5wbfEPbl8FqX+mHX87BLSBfK+8eqhA+BWeqc3ZseOjPpNov0+nY8peJ5l?=
 =?us-ascii?Q?BKDWOtNQjqEfhzTi42Jdo5a2JsJo+Bc+tkNtkHk4te9yK0YsCzcv3I0zNru2?=
 =?us-ascii?Q?EJ6f628jbAZkXfi0rbOFX25mQx6QJ5PwxrbuYgGJalYL5sP0TKs7+XPCWEtF?=
 =?us-ascii?Q?KD6F0I23GF0FgCX17tRrThzhvIfssvWADL86wQutJ2fTBv+ubdPnppUj1IdA?=
 =?us-ascii?Q?Z21gwcyS4vA5AUimi6FHbI/h8EaAHU+k2xGc4Y2FbMl5SEj5+YW9oUHcxNpC?=
 =?us-ascii?Q?U6hQm2ei36QrHdEaMSOeKjKUpU0LqMDa9raq00dV+c561S8PdRWRvJ4caEIt?=
 =?us-ascii?Q?y53NEPENdDB399z5GQn5u79Zj6CIPilvMkHx3eWW9zkC2JFuhVcvb0BYYm9f?=
 =?us-ascii?Q?zPYLcl2Fg11q3ddKupL7zLCaM9urcOvpuoI/OAy0SleZAUpOyj2CRCm7MbED?=
 =?us-ascii?Q?WoDUgIXyydKxhwHRxdRjdlTwPt4J+LP2qtaVAt2SNwmNPy+bQFDj/sOCKOQP?=
 =?us-ascii?Q?LTSFTsXNZyF/Xz7pC1YbYsRcu4XD0gTO20JRVMswW/VX2+yU+f95dtzioE+c?=
 =?us-ascii?Q?Uv7B6er5ix+GbL01KUi38eAvVyPjbkkPKPkOes83Y6UeiWuZhUZovQj8vyJH?=
 =?us-ascii?Q?/dIt/G7v/NDMmOz4MV+c9JBKeey/bXUJQdYwwnD5iAD6ZqXXKqrQSzeL4kpZ?=
 =?us-ascii?Q?/zmmzPDW2RTzYQ3y/bK6INvwPQRxcFh6YgeiclrI2pGq6c+7PJZNGGahhrHr?=
 =?us-ascii?Q?ZvEdc+DrkVGGYRMbsv/2vpZxsQt57QLd+tg8A4Gz91pNL9yZo42ZzYdd8xki?=
 =?us-ascii?Q?/pXU6VJK3phHzqOVc5aPzIUeLYqulo4tgAHmVDL0hezikAJJeL3DMq7NiL9m?=
 =?us-ascii?Q?7T14fGQC9c0hS6Nwwl2ZDMzEJhy652ZisjoE+sBPkplnR+Z75iqA/AaKfAo3?=
 =?us-ascii?Q?xm1flPWLwdH6smjmUvwQjzXu5ElBJnHfn6JuhRl8AgSM2UjFkDDkpGoBneKl?=
 =?us-ascii?Q?O2BVqGcEEXNOuuMr5BGuLprmhXG5kIC0raFAvwjgrzdzmf+DKYAxhzqDdabv?=
 =?us-ascii?Q?b2EuR+t5HHDIb3bnAm+PGVPIoTSLOqnEDO48FTmjvXxLuWg4pz4BzX4m8Y5q?=
 =?us-ascii?Q?OJ+0cgBFh5Mo71vISEWMagMLUNZ580PaBrTkfXo4nMmJQhWsCCSt4kavctEO?=
 =?us-ascii?Q?l2FyQ27o78xNpUBGjeX+UdI6NhMVaGTXBuUGsG+d8tzcX8/Ms53BE187Gi4K?=
 =?us-ascii?Q?Lz8upCuf7ULwvR2gCPjxYK/2WppcketvdvB+Tb553u4YUa1nWAgGRoXlmbns?=
 =?us-ascii?Q?JGfaIgcZan2UUaZ5f4u+QheV28ixyaJrtv4gzsBwjDeQTfmYvv6SFcGd/Laf?=
 =?us-ascii?Q?Cbrt1RY000M1Nogs3e5vxMvPkauPTHG3YppxZTlj8YCcV8DBZPqLEepVySJj?=
 =?us-ascii?Q?/uVdJFdyMl2CIP3Mga2ghNc6co740Pq9oSIoQIv48QGcyZ4Czm9JKvpGIh/a?=
 =?us-ascii?Q?/C4aY88r4ef164i8fgoHmBCa9wqgqASKWmQNAkHv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0373bbdb-6f04-4649-f98e-08dbbe601f38
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2023 07:13:45.2950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eK97CsqyBshMv/FI87z+GG862m7RHcVU6i2IutewLOeWLd87rYXzcbiWVEskug4uWQ0dCWn+zq2ER6zThjByBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5421
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, September 25, 2023 6:00 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
>=20
> On Sat, 23 Sep 2023, Animesh Manna <animesh.manna@intel.com> wrote:
> > Refactor DSB implementation to be compatible with Xe driver.
>=20
> Sad trombone.
>=20
> struct intel_dsb should remain an opaque type. I put effort into hiding i=
ts
> definition, so its guts wouldn't be accessed nilly-willy all over the pla=
ce. If it's
> not hidden, it just will get accessed.

Hi Jani,

Xe driver need access to intel_dsb structure, so I can create a new header =
file intel_dsb_ops.h and keep intel_dsb structure in it. Is it ok?

Regards,
Animesh
>=20
> BR,
> Jani.
>=20
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                |   1 +
> >  drivers/gpu/drm/i915/display/intel_dsb.c     | 115 ++++---------------
> >  drivers/gpu/drm/i915/display/intel_dsb.h     |  41 ++++++-
> >  drivers/gpu/drm/i915/display/intel_dsb_ops.c |  67 +++++++++++
> >  4 files changed, 130 insertions(+), 94 deletions(-)  create mode
> > 100644 drivers/gpu/drm/i915/display/intel_dsb_ops.c
> >
> > diff --git a/drivers/gpu/drm/i915/Makefile
> > b/drivers/gpu/drm/i915/Makefile index 1b2e02e9d92c..7fbb5055b85b
> > 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -256,6 +256,7 @@ i915-y +=3D \
> >  	display/intel_dpt.o \
> >  	display/intel_drrs.o \
> >  	display/intel_dsb.o \
> > +	display/intel_dsb_ops.o \
> >  	display/intel_fb.o \
> >  	display/intel_fb_pin.o \
> >  	display/intel_fbc.o \
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > index 9a507b9ad82c..f7c6b9aa130f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > @@ -4,8 +4,6 @@
> >   *
> >   */
> >
> > -#include "gem/i915_gem_internal.h"
> > -
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> >  #include "intel_de.h"
> > @@ -13,41 +11,7 @@
> >  #include "intel_dsb.h"
> >  #include "intel_dsb_regs.h"
> >
> > -struct i915_vma;
> > -
> > -enum dsb_id {
> > -	INVALID_DSB =3D -1,
> > -	DSB1,
> > -	DSB2,
> > -	DSB3,
> > -	MAX_DSB_PER_PIPE
> > -};
> > -
> > -struct intel_dsb {
> > -	enum dsb_id id;
> > -
> > -	u32 *cmd_buf;
> > -	struct i915_vma *vma;
> > -	struct intel_crtc *crtc;
> > -
> > -	/*
> > -	 * maximum number of dwords the buffer will hold.
> > -	 */
> > -	unsigned int size;
> > -
> > -	/*
> > -	 * free_pos will point the first free dword and
> > -	 * help in calculating tail of command buffer.
> > -	 */
> > -	unsigned int free_pos;
> > -
> > -	/*
> > -	 * ins_start_offset will help to store start dword of the dsb
> > -	 * instuction and help in identifying the batch of auto-increment
> > -	 * register.
> > -	 */
> > -	unsigned int ins_start_offset;
> > -};
> > +#define CACHELINE_BYTES 64
> >
> >  /**
> >   * DOC: DSB
> > @@ -117,8 +81,6 @@ static bool is_dsb_busy(struct drm_i915_private
> > *i915, enum pipe pipe,
> >
> >  static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
> > {
> > -	u32 *buf =3D dsb->cmd_buf;
> > -
> >  	if (!assert_dsb_has_room(dsb))
> >  		return;
> >
> > @@ -127,14 +89,13 @@ static void intel_dsb_emit(struct intel_dsb *dsb,
> > u32 ldw, u32 udw)
> >
> >  	dsb->ins_start_offset =3D dsb->free_pos;
> >
> > -	buf[dsb->free_pos++] =3D ldw;
> > -	buf[dsb->free_pos++] =3D udw;
> > +	intel_dsb_write(dsb, dsb->free_pos++, ldw);
> > +	intel_dsb_write(dsb, dsb->free_pos++, udw);
> >  }
> >
> >  static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
> >  					u32 opcode, i915_reg_t reg)
> >  {
> > -	const u32 *buf =3D dsb->cmd_buf;
> >  	u32 prev_opcode, prev_reg;
> >
> >  	/*
> > @@ -145,8 +106,8 @@ static bool intel_dsb_prev_ins_is_write(struct
> intel_dsb *dsb,
> >  	if (dsb->free_pos =3D=3D 0)
> >  		return false;
> >
> > -	prev_opcode =3D buf[dsb->ins_start_offset + 1] &
> ~DSB_REG_VALUE_MASK;
> > -	prev_reg =3D buf[dsb->ins_start_offset + 1] & DSB_REG_VALUE_MASK;
> > +	prev_opcode =3D intel_dsb_read(dsb, dsb->ins_start_offset + 1) >>
> DSB_OPCODE_SHIFT;
> > +	prev_reg =3D  intel_dsb_read(dsb, dsb->ins_start_offset + 1) &
> > +DSB_REG_VALUE_MASK;
> >
> >  	return prev_opcode =3D=3D opcode && prev_reg =3D=3D
> > i915_mmio_reg_offset(reg);  } @@ -179,6 +140,8 @@ static bool
> > intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_
> > void intel_dsb_reg_write(struct intel_dsb *dsb,
> >  			 i915_reg_t reg, u32 val)
> >  {
> > +	u32 old_val;
> > +
> >  	/*
> >  	 * For example the buffer will look like below for 3 dwords for auto
> >  	 * increment register:
> > @@ -202,31 +165,30 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
> >  			       (DSB_BYTE_EN << DSB_BYTE_EN_SHIFT) |
> >  			       i915_mmio_reg_offset(reg));
> >  	} else {
> > -		u32 *buf =3D dsb->cmd_buf;
> > -
> >  		if (!assert_dsb_has_room(dsb))
> >  			return;
> >
> >  		/* convert to indexed write? */
> >  		if (intel_dsb_prev_ins_is_mmio_write(dsb, reg)) {
> > -			u32 prev_val =3D buf[dsb->ins_start_offset + 0];
> > +			u32 prev_val =3D intel_dsb_read(dsb, dsb-
> >ins_start_offset + 0);
> >
> > -			buf[dsb->ins_start_offset + 0] =3D 1; /* count */
> > -			buf[dsb->ins_start_offset + 1] =3D
> > -				(DSB_OPCODE_INDEXED_WRITE <<
> DSB_OPCODE_SHIFT) |
> > -				i915_mmio_reg_offset(reg);
> > -			buf[dsb->ins_start_offset + 2] =3D prev_val;
> > +			intel_dsb_write(dsb, dsb->ins_start_offset + 0, 1); /*
> count */
> > +			intel_dsb_write(dsb, dsb->ins_start_offset + 1,
> > +					(DSB_OPCODE_INDEXED_WRITE <<
> DSB_OPCODE_SHIFT) |
> > +					i915_mmio_reg_offset(reg));
> > +			intel_dsb_write(dsb, dsb->ins_start_offset + 2,
> prev_val);
> >
> >  			dsb->free_pos++;
> >  		}
> >
> > -		buf[dsb->free_pos++] =3D val;
> > +		intel_dsb_write(dsb, dsb->free_pos++, val);
> >  		/* Update the count */
> > -		buf[dsb->ins_start_offset]++;
> > +		old_val =3D intel_dsb_read(dsb, dsb->ins_start_offset);
> > +		intel_dsb_write(dsb, dsb->ins_start_offset, old_val + 1);
> >
> >  		/* if number of data words is odd, then the last dword
> should be 0.*/
> >  		if (dsb->free_pos & 0x1)
> > -			buf[dsb->free_pos] =3D 0;
> > +			intel_dsb_write(dsb, dsb->free_pos, 0);
> >  	}
> >  }
> >
> > @@ -238,8 +200,8 @@ static void intel_dsb_align_tail(struct intel_dsb
> *dsb)
> >  	aligned_tail =3D ALIGN(tail, CACHELINE_BYTES);
> >
> >  	if (aligned_tail > tail)
> > -		memset(&dsb->cmd_buf[dsb->free_pos], 0,
> > -		       aligned_tail - tail);
> > +		intel_dsb_memset(dsb, dsb->free_pos, 0,
> > +				 aligned_tail - tail);
> >
> >  	dsb->free_pos =3D aligned_tail / 4;
> >  }
> > @@ -277,9 +239,9 @@ void intel_dsb_commit(struct intel_dsb *dsb, bool
> wait_for_vblank)
> >  		       (wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0) |
> >  		       DSB_ENABLE);
> >  	intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
> > -		       i915_ggtt_offset(dsb->vma));
> > +		       intel_dsb_ggtt_offset(dsb));
> >  	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
> > -		       i915_ggtt_offset(dsb->vma) + tail);
> > +		       intel_dsb_ggtt_offset(dsb) + tail);
> >  }
> >
> >  void intel_dsb_wait(struct intel_dsb *dsb) @@ -325,12 +287,9 @@
> > struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
> >  				    unsigned int max_cmds)
> >  {
> >  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > -	struct drm_i915_gem_object *obj;
> >  	intel_wakeref_t wakeref;
> >  	struct intel_dsb *dsb;
> > -	struct i915_vma *vma;
> >  	unsigned int size;
> > -	u32 *buf;
> >
> >  	if (!HAS_DSB(i915))
> >  		return NULL;
> > @@ -344,28 +303,11 @@ struct intel_dsb *intel_dsb_prepare(struct
> intel_crtc *crtc,
> >  	/* ~1 qword per instruction, full cachelines */
> >  	size =3D ALIGN(max_cmds * 8, CACHELINE_BYTES);
> >
> > -	obj =3D i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
> > -	if (IS_ERR(obj))
> > -		goto out_put_rpm;
> > -
> > -	vma =3D i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
> > -	if (IS_ERR(vma)) {
> > -		i915_gem_object_put(obj);
> > +	if (!intel_dsb_buffer_create(crtc, dsb, size))
> >  		goto out_put_rpm;
> > -	}
> > -
> > -	buf =3D i915_gem_object_pin_map_unlocked(vma->obj,
> I915_MAP_WC);
> > -	if (IS_ERR(buf)) {
> > -		i915_vma_unpin_and_release(&vma,
> I915_VMA_RELEASE_MAP);
> > -		goto out_put_rpm;
> > -	}
> >
> >  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> >
> > -	dsb->id =3D DSB1;
> > -	dsb->vma =3D vma;
> > -	dsb->crtc =3D crtc;
> > -	dsb->cmd_buf =3D buf;
> >  	dsb->size =3D size / 4; /* in dwords */
> >  	dsb->free_pos =3D 0;
> >  	dsb->ins_start_offset =3D 0;
> > @@ -382,16 +324,3 @@ struct intel_dsb *intel_dsb_prepare(struct
> > intel_crtc *crtc,
> >
> >  	return NULL;
> >  }
> > -
> > -/**
> > - * intel_dsb_cleanup() - To cleanup DSB context.
> > - * @dsb: DSB context
> > - *
> > - * This function cleanup the DSB context by unpinning and releasing
> > - * the VMA object associated with it.
> > - */
> > -void intel_dsb_cleanup(struct intel_dsb *dsb) -{
> > -	i915_vma_unpin_and_release(&dsb->vma,
> I915_VMA_RELEASE_MAP);
> > -	kfree(dsb);
> > -}
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h
> > b/drivers/gpu/drm/i915/display/intel_dsb.h
> > index b8148b47022d..7feeb37e00a5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> > @@ -11,7 +11,41 @@
> >  #include "i915_reg_defs.h"
> >
> >  struct intel_crtc;
> > -struct intel_dsb;
> > +struct i915_vma;
> > +
> > +enum dsb_id {
> > +	INVALID_DSB =3D -1,
> > +	DSB1,
> > +	DSB2,
> > +	DSB3,
> > +	MAX_DSB_PER_PIPE
> > +};
> > +
> > +struct intel_dsb {
> > +	enum dsb_id id;
> > +
> > +	u32 *cmd_buf;
> > +	struct i915_vma *vma;
> > +	struct intel_crtc *crtc;
> > +
> > +	/*
> > +	 * maximum number of dwords the buffer will hold.
> > +	 */
> > +	unsigned int size;
> > +
> > +	/*
> > +	 * free_pos will point the first free dword and
> > +	 * help in calculating tail of command buffer.
> > +	 */
> > +	unsigned int free_pos;
> > +
> > +	/*
> > +	 * ins_start_offset will help to store start dword of the dsb
> > +	 * instuction and help in identifying the batch of auto-increment
> > +	 * register.
> > +	 */
> > +	unsigned int ins_start_offset;
> > +};
> >
> >  struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc,
> >  				    unsigned int max_cmds);
> > @@ -22,5 +56,10 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
> > void intel_dsb_commit(struct intel_dsb *dsb,
> >  		      bool wait_for_vblank);
> >  void intel_dsb_wait(struct intel_dsb *dsb);
> > +u32 intel_dsb_ggtt_offset(struct intel_dsb *dsb); void
> > +intel_dsb_write(struct intel_dsb *dsb, u32 idx, u32 val);
> > +u32 intel_dsb_read(struct intel_dsb *dsb, u32 idx); void
> > +intel_dsb_memset(struct intel_dsb *dsb, u32 idx, u32 val, u32 sz);
> > +bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct
> > +intel_dsb *dsb, u32 size);
> >
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb_ops.c
> > b/drivers/gpu/drm/i915/display/intel_dsb_ops.c
> > new file mode 100644
> > index 000000000000..9fe125abb890
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb_ops.c
> > @@ -0,0 +1,67 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright 2023, Intel Corporation.
> > + */
> > +
> > +#include "gem/i915_gem_internal.h"
> > +#include "i915_drv.h"
> > +#include "i915_vma.h"
> > +#include "intel_display_types.h"
> > +#include "intel_dsb.h"
> > +
> > +u32 intel_dsb_ggtt_offset(struct intel_dsb *dsb) {
> > +	return i915_ggtt_offset(dsb->vma);
> > +}
> > +
> > +void intel_dsb_write(struct intel_dsb *dsb, u32 idx, u32 val) {
> > +	dsb->cmd_buf[idx] =3D val;
> > +}
> > +
> > +u32 intel_dsb_read(struct intel_dsb *dsb, u32 idx) {
> > +	return dsb->cmd_buf[idx];
> > +}
> > +
> > +void intel_dsb_memset(struct intel_dsb *dsb, u32 idx, u32 val, u32
> > +sz) {
> > +	memset(&dsb->cmd_buf[idx], val, sz); }
> > +
> > +bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct
> > +intel_dsb *dsb, u32 size) {
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	struct drm_i915_gem_object *obj;
> > +	struct i915_vma *vma;
> > +	u32 *buf;
> > +
> > +	obj =3D i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
> > +	if (IS_ERR(obj))
> > +		return false;
> > +
> > +	vma =3D i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
> > +	if (IS_ERR(vma)) {
> > +		i915_gem_object_put(obj);
> > +		return false;
> > +	}
> > +
> > +	buf =3D i915_gem_object_pin_map_unlocked(vma->obj,
> I915_MAP_WC);
> > +	if (IS_ERR(buf)) {
> > +		i915_vma_unpin_and_release(&vma,
> I915_VMA_RELEASE_MAP);
> > +		return false;
> > +	}
> > +
> > +	dsb->id =3D DSB1;
> > +	dsb->vma =3D vma;
> > +	dsb->crtc =3D crtc;
> > +	dsb->cmd_buf =3D buf;
> > +
> > +	return true;
> > +}
> > +
> > +void intel_dsb_cleanup(struct intel_dsb *dsb) {
> > +	i915_vma_unpin_and_release(&dsb->vma,
> I915_VMA_RELEASE_MAP);
> > +	kfree(dsb);
> > +}
>=20
> --
> Jani Nikula, Intel
