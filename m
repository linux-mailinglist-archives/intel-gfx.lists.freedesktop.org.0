Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA05664D9A2
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 11:37:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12EFE10E52E;
	Thu, 15 Dec 2022 10:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75D4D10E51E
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 10:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671100643; x=1702636643;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YzE6/8DZmlBeFlGbujRhghxqaUdHze/lXdkgCsqaHkE=;
 b=kR/24byZ+82t9yhkQcMyrbDrAjg4wPEIHqlIi/T3BA0DBLWyX6ZeVXNn
 AtaMlGcwesoXcTj9SfMpHYT972Qb3p6w90llzrKvj4sfl8bNb2DXYI4Tt
 qVLlI4mBSpZK3s5xd7uJ0ZYr0iT6QqX3f3t9kKcAHYAFI0jgDF5sbTLTc
 UxsRHjSFk7XEQlQVDyzEYuqdocQvgmx6vGNZZIdPTRvikHx2FiidyQJb1
 hclrRiV4tVCY4fGEoSIqCeowfNrTUiG73Do9LudLM6MAaYnHupMoz1yxl
 mL/eqc/KDiVEH/0Dz2ERj4KxQzz269UR9k8HE25DICDDAfSWsZRsc5/7c w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="302050152"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="302050152"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 02:37:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="823639776"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="823639776"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 15 Dec 2022 02:37:22 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 02:37:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 02:37:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 15 Dec 2022 02:37:22 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 15 Dec 2022 02:37:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rjdj16ynXjzEGMdRe/01NfqYGcEOcMO8wQ4o/XILeznhbGrkxSS9kJq6m5ZLYsZcJh6OG3LJLjF3FPYU7uZFuXPOcIDvXLdtkubWs5oSbsIvnZVQebWZ+Unn8OvRgkFLkKTBFHdMWUBycCYRL4GkG1QrfZkw2le5ujdmtDBPLfTUrqAi6woYMMa0pD2FD9fQGQdYVUUc+tKrRz3wV1Da6c69tI4vRJkvpJVJ2JdUCrLMfEeV2G0vhDqlSrMrab50hCNxDd8gtyTz6BfxUecOjUgCAYvd5Hllt1T/m5AWm6oalMmWBPCL4xKvlBdeRnjf7VOebTds3g8PjceIj4arHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qHRTuAKhHXBaNY9X+fG21O6oHdHbZ9qo54XBQcEWzKQ=;
 b=HLGtj3jXMIkNrSeRhl12KyPzs4r77S4ebspfHnVo1USDLMND3Q016u0bF4iSLML8l6niOzFrxovHxSRJrPdp988cPM05AO6SGRDu8/yKY/0s/lk7wi5TBe/c1vlu+jZRV0Qq1fwfQukQypElhEzumkXsiK8FDvU7MNynzm4FAv81Vf6sX0TWk+GfNegijq6CKxWk+BxeFwpbaAbFEXXieCR7LXr52epl2x0P7LaVIYXLqUMeeay8b+uk8MEIpUunXfSMbT9HxFC3zHlHjX+tzHoGJHZDgyt5S2F5XP+QOzKcN/8fAF+Je6SpVf+K+g7d2UNozauhuUY++knWRy6F8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MN0PR11MB6205.namprd11.prod.outlook.com (2603:10b6:208:3c7::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Thu, 15 Dec
 2022 10:37:19 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%5]) with mapi id 15.20.5924.011; Thu, 15 Dec 2022
 10:37:18 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCHv6] drm/i915/dp: change aux_ctl reg read to polling read
Thread-Index: AQHZEGtaSidO+yTeHEKKUNGyLnp0Ya5uv6YAgAAA+tA=
Date: Thu, 15 Dec 2022 10:37:18 +0000
Message-ID: <DM6PR11MB317737888DA32256EF98CAF6BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221215095533.1073528-1-arun.r.murthy@intel.com> <87pmclufgd.fsf@intel.com>
In-Reply-To: <87pmclufgd.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|MN0PR11MB6205:EE_
x-ms-office365-filtering-correlation-id: 151605af-e2ad-48f4-ced2-08dade88574d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gu3RDqi9oVJjpEmuWLvlZmwOUMrEgKpoGn4MBRSwffhv9HpSPIclCdZIy+rnLRize1g5HobvMog+QRTleXk6pr9tc2sLshXQbl6tPsnxmugNllIQwrfrrhZLIBM+rILm4gAS0YyT5e9eKC2HhT+egnpIk1zx1VuMXEiQLiiwJWEW5R0INGgsyHi8j+CneSLQvm8xg2pK9Uk3C/tOHG9oqOX+Yk/ToA/AXA+Ybfkv+AS2NcGSMPs/tDkYSdca3Wv0ChOxK1qzuuySTU22vr3zWAm0ZTBGR8e4apzM5lRhsNKcYWYDBKBQPYv9Md+S7buOlP8rsgjl/dmZpNUWGRIo7jFt3plmPbZfh6RQpFQCiZnYq2xJeBDHjSZMnxDP8D/HVbdUsduhv+Woc6OtbryP5YtF0u+3j5y5Z/Mizu162fBQfTClHAFO/SeBsZv4FOb9Fr7/AaSFLOKp8R9NV8zTosxGVtK/uQ/7Wo1MyS2DK3CZyohcYc+FNaiAYzV66FGJ+2cdqu8ZVhUy4ZwCRsjuv+HKgOetb7fVfemGK/SBXlAqgzUg46voed+q50ncLnk5HHgjgzYGVAhheH/GCICExUfXghmRAN5WIym2iOBYotd32cl9BsuYLnUsoXbJYLQ1y/mFsph/AISL+3noBvI45d1LNJHZ8R8jccxIJChI7xpItjcuU3YZQO8ULjI/fvAD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(346002)(366004)(39860400002)(376002)(451199015)(8936002)(41300700001)(5660300002)(6636002)(52536014)(110136005)(86362001)(38070700005)(66556008)(8676002)(66476007)(66446008)(64756008)(76116006)(316002)(66946007)(83380400001)(33656002)(38100700002)(55016003)(82960400001)(2906002)(71200400001)(478600001)(9686003)(55236004)(122000001)(53546011)(186003)(7696005)(26005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X1gV48AHCLA97nOMRkMLQNIGqcheM0obeLlNHVSYCo2zEtpqMy1j3fHADStp?=
 =?us-ascii?Q?dPBfbcKQnFJFEyMmUqDpR3mA2M9Ewq9St1R0+xUpIW+T273IHHiXZInFS8gz?=
 =?us-ascii?Q?l/cAEImFamAJeswRLaIpNDQgnMDiS2FqwJdscP5P+jVFwwz5NXIlXzYL4pfi?=
 =?us-ascii?Q?p1njqgQvcpvrJHgtJ3/qFiFn05Cf1XdRkXgYiZU6OBZqAYbqmLl1x34sZNjn?=
 =?us-ascii?Q?T+BpJW/XqSmG67Td+7ZAHl0X12UhmfrZm7pwtD6IkWHxIIF4L2tS21hD1heK?=
 =?us-ascii?Q?+DMcpB5S0SodzZnZ68S1fPRDuIzgnsyokeBAnKAOUbY5sRljToNDuFlIgJkZ?=
 =?us-ascii?Q?x9uf6YZaRFpqkIdqrTWJ1IqAQUkotTti1i6UV48np5qR1TqXlqU6e9DgxrP7?=
 =?us-ascii?Q?b4KVp21ZowBjkBwxptl+5GyE87QGsycOIXMP83HhLqYrqyqG0ROivWioiA09?=
 =?us-ascii?Q?meRM1UNISQM+0UQxR2Zsnrd2JMRxbPJjbuY7N70MXtb3o2CM6+/ULRbS9B9O?=
 =?us-ascii?Q?OZtUQguKfhTP0cHIXCvFVvSjzDU8uyzG5hwupfkSxsOjLTbSQWaJplsxs1VL?=
 =?us-ascii?Q?L0DfeZsVUoDZiX7fB3576uMPQMUBcOtw/T2Ko9W/GGfOAEQL+7l4HSxSIJBb?=
 =?us-ascii?Q?Kr73MP2V2oY9rDES6ZQFuYO7CXDyhp/M1TBUbFWodtyrDmWkhcfyLA3de1AP?=
 =?us-ascii?Q?Y6xhli/y4+3FTTczZc7ofeNYo3Dhn6XUGrKy+9KA632cCqYHS3HK5uunIzZ/?=
 =?us-ascii?Q?iDSs/iRtIknI1WexUs8U09NMHmprNqnMGCbAHYlSpBhnTgyGbRs+2OaXmqbu?=
 =?us-ascii?Q?MucWghBhoEazFg3yw5sRTruaVe6TYMfGeLw2jKgj6tOhDL7JUIFSL/wGmmHy?=
 =?us-ascii?Q?DhpaJeTujO23uGE5FSWQ7DmhemMaghOkuSVus1b+Vdh33ZB1vuJJuo9JA3Fq?=
 =?us-ascii?Q?2ZaMZ+oVhBbq0jr3ycj/pDx5TjbLy2GGPV8q254B4ixupQVXJmRbhYQeDouM?=
 =?us-ascii?Q?ujrLg9Z9zlP/9wqzb6QJIfC0907i/x9/RSigPmXNbqlmVD/az84kEYuhMNNg?=
 =?us-ascii?Q?dIDCJv/RX0nheC6EPmdPIfoQA1H0BkWjZ/dbLk3EjPyx8ySyHuYRgt6RNQoc?=
 =?us-ascii?Q?cED88SElhcQHPGoV7LMfYnzRfsCiyDqRWPhANyQvkqKNrHWWTtq59nKw/GAh?=
 =?us-ascii?Q?LS4wXWRD+P40YlxFoO8mFOFyA9b/M06OvzTVoY7N2hj0iRzB1JktKf2gAbrd?=
 =?us-ascii?Q?m12fcTd0+C+H8YQlGj2bH+YPRpYnJugch7BiEGdElw+PtSWFLFO+0Kr8r207?=
 =?us-ascii?Q?TFqdfApI7hR7VjoIS5sI6hvNb2NOn2/Cg4CJTI2nCB+QBR94U7lQPZ+ThNRK?=
 =?us-ascii?Q?tK3qvmatF/plv88j/nLzq77xmKuS70+dPcTXRskJzDgJvOMXEApL4aTi332M?=
 =?us-ascii?Q?DpRyCVE7wK8RudzBQKVtgtXvM2aM4OsKSwVVZBTCIgR3tshldY45yLmmDIys?=
 =?us-ascii?Q?u01jUrmou02VTxO4JTgnZsU2nyKQxw7NM4NJ63aX7eJ16GFTGhTy5HGTXFcQ?=
 =?us-ascii?Q?TrFYk3VdJ4DaoTkn5WfZ54pr+RdiUSgOKhJ3nSfR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 151605af-e2ad-48f4-ced2-08dade88574d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2022 10:37:18.7357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M/0r0/Jo+hJ/MjhlZuywmZ9OA7RmM7uRVhTXhGxy5qLSLDwPaQb0ObncuUs2ni9W4zazoC7awB0bTDi5zfFNyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6205
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv6] drm/i915/dp: change aux_ctl reg read to
 polling read
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, December 15, 2022 4:00 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com; Deak, Imre
> <imre.deak@intel.com>
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [PATCHv6] drm/i915/dp: change aux_ctl reg read to polling re=
ad
>=20
> On Thu, 15 Dec 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > The busy timeout logic checks for the AUX BUSY, then waits for the
> > timeout period and then after timeout reads the register for BUSY or
> > Success.
> > Instead replace interrupt with polling so as to read the AUX CTL
> > register often before the timeout period. Looks like there might be
> > some issue with interrupt-on-read. Hence changing the logic to polling
> read.
> >
> > v2: replace interrupt with polling read
> > v3: use usleep_rang instead of msleep, updated commit msg
> > v4: use intel_wait_for_regiter internal function
> > v5: use __intel_de_wait_for_register with 500us slow and 10ms fast
> > timeout
> > v6: check return value of __intel_de_wait_for_register
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 15 +++++----------
> >  1 file changed, 5 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index 91c93c93e5fc..dec88f41380e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -40,21 +40,16 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
> >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> >  	i915_reg_t ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
> >  	const unsigned int timeout_ms =3D 10;
> > -	u32 status;
> > -	bool done;
> > -
> > -#define C (((status =3D intel_de_read_notrace(i915, ch_ctl)) &
> DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> > -	done =3D wait_event_timeout(i915->display.gmbus.wait_queue, C,
> > -				  msecs_to_jiffies_timeout(timeout_ms));
> > +	u32 status, ret;
> >
> > -	/* just trace the final value */
> > -	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> > +	ret =3D __intel_de_wait_for_register(i915, ch_ctl,
> > +				     DP_AUX_CH_CTL_SEND_BUSY, 0,
> > +				     500, timeout_ms, &status);
> >
> > -	if (!done)
> > +	if (ret =3D=3D -ETIMEDOUT)
>=20
> What's wrong with this comparison? Although it probably does work by
> coincidence.
>=20
If (ret)
	dev_err();
Will also work, but for code readability using -ETIMEDOUT(sorry missed the =
declaration int ret;)

Thanks and Regards,
Arun R Murthy
--------------------

> BR,
> Jani.
>=20
>=20
> >  		drm_err(&i915->drm,
> >  			"%s: did not complete or timeout within %ums
> (status 0x%08x)\n",
> >  			intel_dp->aux.name, timeout_ms, status); -#undef C
> >
> >  	return status;
> >  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
