Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE278C988D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 05:58:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70B4A10E069;
	Mon, 20 May 2024 03:58:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PPXz/wZo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8D8310E069
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 03:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716177504; x=1747713504;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+M77llNPzfMndGyzfLMxOEsnGwlE1kxr4soR37cO6UM=;
 b=PPXz/wZozxaxt+AojqfaGOSa1u/Tce0nciBKBFiVz+lQa4SVpADfWlhN
 J5oYmL4AaiCN1oL3V1cTBh6VDyNwsMiJggMTc1ZfYnJJKGoV3SJvwSiRQ
 z5fSvmQMgaU5DTfe4E/BUnXYnJ9+MFPZe4jkJ+tTHtI4bvVs/Q+rURn5h
 U4ec/n/IRvcdqRbRiML2TSVFtbD0SHY+tkERBMRHHF1r4X6IrjieozJ+o
 WthlenaadAPAwavJAwKHd5KKLkvmfih01NZNAN8pQaNfQ7CaBMIkzDrC9
 AMfLIRCpIG2j4IBzNzYDiH5ngGJ8lVSfPUb7vRpujjeBMkfbY4Nu6lZlb Q==;
X-CSE-ConnectionGUID: kJ/H0PQjRo2eaYmgx1OV8w==
X-CSE-MsgGUID: Xv3a7jXbQ3y9E7Bs5qTpWQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="12134760"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="12134760"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2024 20:58:23 -0700
X-CSE-ConnectionGUID: jEnSNzTATtSjT98RIFpzcw==
X-CSE-MsgGUID: C71qL8BXQmC+rcFUzbqC3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="32417539"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 May 2024 20:58:23 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 19 May 2024 20:58:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 19 May 2024 20:58:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 19 May 2024 20:58:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YsQG3Q+1dO9m5/Rot9KUnpBxkI4KMKldA/vhOS4QBASt2D1d4tbq4m6VWqw0AwsV/2ndI3HcroAeuVv2EYr0lU56SPPxI9MAOy4ISKiIk/tE4hUC7Fv5nE9yhsLOi2FvprptZpu0Wk3LaME+T+eUtnEBCkxBxjL6t8aTMwHxPRNxl9X3GpQ9qhUdULYyIvUnB2ChWEb5Qsw9lprxXDfGsC+MIQ3YvcqH7KUvodW5bl+YLXGjNjPJqQFzV9+/tvqtTneVYPFgQBAkZ3sRGsx5B5wODepYhSYGt28aDI69+CY0dFyseyj+w1N25CKrafnzSPBPWgmS1+E6YGrZLhjaog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JkNnVRdNc0HWW7+/cA/u+1jZ0/PWZQfxPvn+MzUNqGE=;
 b=jhEsUuIVcGimFlRsyNLHfzDmMvKTm2kbGOtCVjtT5/VFqQFcWY65lwWqb/lvfRy7d/LtolB7UC+Xnf2Hr+bzmLGgEjeefB+eM+S5pSlXfxOlCtg0IbMSxVpZxXGiiNqp6kzPFfoYqZfE0cAB7dIy3KWfXItxm0HM+kSKla72DkMyM13pox63v8zmD6T5TdLM0GXa0TvkVUYEQ1DkrNCuTI3pSaliqdX7KLkFuOkZiuPOBVcz1s/UyEF0/bQLakjzHOEJ96KOYk1RfkVuSw9+hc66BFU8pfjoJJVcfXiPytzDQ1m4NGfoon/HIaclbdjleChc+83HPB3JlI66SC2l4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW4PR11MB6668.namprd11.prod.outlook.com (2603:10b6:303:1e9::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Mon, 20 May
 2024 03:58:19 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%6]) with mapi id 15.20.7587.030; Mon, 20 May 2024
 03:58:19 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/hdcp: Check mst_port to determine connector
 type
Thread-Topic: [PATCH 2/2] drm/i915/hdcp: Check mst_port to determine connector
 type
Thread-Index: AQHaoDIXFc6VCMz6EEWUA4m9xUoHd7GbcMCAgAQe4JA=
Date: Mon, 20 May 2024 03:58:19 +0000
Message-ID: <SN7PR11MB6750DAD5AAD6759070FCD197E3E92@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240507035037.1025012-1-suraj.kandpal@intel.com>
 <20240507035037.1025012-3-suraj.kandpal@intel.com>
 <ZkdSNa0Cb1EpwpUB@ideak-desk.fi.intel.com>
In-Reply-To: <ZkdSNa0Cb1EpwpUB@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW4PR11MB6668:EE_
x-ms-office365-filtering-correlation-id: 45ad2e90-4579-4044-8579-08dc7881160a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?v4oG4zqOkr9aR11RaOx7U0VfM5TxqnwXhu1HaONxxFGdyZxhRl0QapVRMZox?=
 =?us-ascii?Q?fIgZv3rQncow3iwyUhcIyZlKzwPL1FdHPw8kr3L/nTPQ57+dfSF0Ii0tkxdV?=
 =?us-ascii?Q?kk2rxKK4ZWAITUhrJE8f+ybFNHc/hfJPA4qoTzyk5TxcOOZZcYYXJvOpdS5n?=
 =?us-ascii?Q?cHXerVxDlt+By5vzqlAw8txiXMGNADGAtba2AFnywLNSgoIGzy5UJcokXGOH?=
 =?us-ascii?Q?YmJRkg9zb0wilJGIfPttUWI/uk3ZfL0pRbelB1K4CkLWzhoiXMWz4UQWnGz8?=
 =?us-ascii?Q?kGqZH2V+JUFWdgaIiasGd3xaSUeHW5sfcgRIiHBGcDOuArlB4BRiAi9gM68m?=
 =?us-ascii?Q?+SwFjmLt5G8QRYmSmxP901Wqu9qnfqMvoQmmRyhV700Actjom2kOqT1xwIzh?=
 =?us-ascii?Q?f24PZamZsv3wd991tKy0nz1svSIC0ajQ6QpK1+nYGl4KrXJrs7QYU6xPH2Cx?=
 =?us-ascii?Q?e4YFOG5FUvAcCvVsxkFtGCbwdhnpxRVAiZyt11ggqVG2x5kP/fbmZbLkacuT?=
 =?us-ascii?Q?cUFBWKAmSkG0RxIrwQ8HqYWCdIAHaA2YbYiLICGQAEx/y8CFQw1QD33zCElB?=
 =?us-ascii?Q?jo4DwO57JBx4i+w6AGNLTMDej22aFKYV46c128b8mltjqZWvOHyiiJ2QQW8z?=
 =?us-ascii?Q?fP74TUkHhVyz7c6GOaE5z5jfiortgyNfwj9qsOak95j92QmHNqIuwb/qEHwp?=
 =?us-ascii?Q?yDPuUKS4285lRXZ8vZ+epN0SIeQ95ieoqiPPKKyLIVT3wjWUtIfNWsq4UIcE?=
 =?us-ascii?Q?3ZEPbs1sGsJuFCgvK6oq7NBZerLJsxrHEf2IL4nj/tuEZn9fdYq8FSvnU1rI?=
 =?us-ascii?Q?gCq61R4SwnK8TivdH6IvTbEWerPa6RwTIEIZZlkWhszhgWB5z6xQs0BKLPuR?=
 =?us-ascii?Q?L+4rNbIPzHwqe5X4/x3IiTRq9igsZGWAxsXKNYHQd8fc5SmdSjJcyGHfHi7v?=
 =?us-ascii?Q?G2uYjq8CUerMv/JzoqmsCq9l41SBorr3UyxDPwDkid0YZNDkhwRDumylki+M?=
 =?us-ascii?Q?5DLRS2xmmZSvViuZuY4XTVYEfz813gIA4PWykTeQRtGhP4ZCZtuAlvKUuyEz?=
 =?us-ascii?Q?qdczQ41OzIfcT2t+ghoznaKUzYG4HLszVsRX+kC8Du38S+6g47qZBqLKd70I?=
 =?us-ascii?Q?AyhcaVMn+6dZ/zadE24IlBZ+xKwIxw2K7EuT8OGkWMvJMG3NP1zyhvjVTsv7?=
 =?us-ascii?Q?ot7u51zcUFmsXrhwDcAy7g2+omXnt4vZkOjQa555qPNZmzRPedLgVc569yol?=
 =?us-ascii?Q?VkRxIZ2JnrS/YZecuz7WEl6cMMSb2vQkQ3WflXn/WQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KnLqD6yKjjB52n5Ur4bU/c5MiiRDmYoa9mOEthhMj/u5OsyojmXvbrezQkZz?=
 =?us-ascii?Q?2HI6Q/wc2jthiMq9DM6oG7FRyDxi8bjkcndYalvSP2ljx7b6tETt6u+dnmi8?=
 =?us-ascii?Q?SoHw97Qt6/L+snnM2MFDDva/WweO+MAlGCeTLoziqJyoP35Bk8Lc+LaojREY?=
 =?us-ascii?Q?271iut2W1MdTX9kKyuKSHiDRVDuRFNHdMli6alYgUpaoweeoHI8lwHejUhI0?=
 =?us-ascii?Q?m0lSjZKz25ABGVBpBYNenBZ5VDSM0MA39ZLWDh9N/kPwvPCqrlgUGBBHccJq?=
 =?us-ascii?Q?Lw2QXgNCkSpZWFsj+J1tpAKimziGWS6D9YqWH71iWPNRNnBPvL9fYRXgPXIh?=
 =?us-ascii?Q?mlvFMLUHEvsp+VQKKeYxAtpbCx64Y8SDkcULMWK5Y9erTc3/SOoFWVERKCl8?=
 =?us-ascii?Q?3Z1i8AJe3gt61LI/D81rAruR3avb3fmvcAHumlN+tOqRhxqLINWZfmMqFHxr?=
 =?us-ascii?Q?vrXszXYQs3bOEl4Sa7dpMigXuAgu+NANjJJFd6XnyxnnS47QdBV3sX/VuxV8?=
 =?us-ascii?Q?LU1NYQtlrUEHjIKVo8itPj0KgIGv9uqcEgNshZ9DWyPozp1K0Y65K66eD2s5?=
 =?us-ascii?Q?u0xJJdTLrbK/DAggQ+sYXSrPCwFIN5bmE6CpsIILOtzB045ebmqCefN0ekIk?=
 =?us-ascii?Q?Sr6KlnoFv9arYpFXtd+lM4d3fMIVgjzdyVFIr1fyblVqXJwmHUZuInQcZh7J?=
 =?us-ascii?Q?srf6P0SY1LAW3YnGXQLZf9w/62jk7xd5zG463SKeIKr8q8BHd2qx7fX02ikC?=
 =?us-ascii?Q?K4abDI0IYzn8KBCZIxrU1eAoB2lo4LQsAFoyDjVZfREB4d+uL6t0w+SkyYkR?=
 =?us-ascii?Q?hY+gN72771alkKOnT+/ZReVttDKFXxRCHO7L5OiDx8bnJBDu9UjCEvT1NHC/?=
 =?us-ascii?Q?z+loG7+VjaA2rkm/EivV6UY50q6BaCl8ThrIFOPxx46HM0sb2/USt2GrQv77?=
 =?us-ascii?Q?wF1AaLMNI+EPg0HKEDQrBrxzn5Bdh6oFsEgD8foavRWCDswdUqrd2ptgMMHL?=
 =?us-ascii?Q?2xvCs4u3P5g3oDPoX4O/YTAfnmKi7klHJYVV3xLSKsup2riUwLIp2wlAVd2Y?=
 =?us-ascii?Q?wseNYKzZSDzBYhzmJ0TvZV5shw70KjJcy9U6/ilMHkJnmlvT/OYq+Ci8fEWx?=
 =?us-ascii?Q?3WqvCQnk13VY1vjLVcC/W+a5u+Fh9RMi7twhfThAS15FZCiMUCPRxqVGBTpl?=
 =?us-ascii?Q?Ts/v1pOxIohYo3vcmNQrTfmGxBirgdS5OlU6ZAxzXj7ld7JKQjqqiC9Ftn0j?=
 =?us-ascii?Q?nYW9K3qj+zbjyEIAPQbj8/T/955pcT+uQw7eNa+NPi4wr82lpLFxePBOKqSf?=
 =?us-ascii?Q?fYyotll6oraAf17yIjGNiY1VYJfWRpgP+pUPwxH/rGFtGjGkZ7r6Iqi5vbxy?=
 =?us-ascii?Q?m6MJa9IgyX8TOZAldodkMzlyfNPsNWcTGa14h+hK1suHg/o0O12FAG0o+TE0?=
 =?us-ascii?Q?IEpfsZVFL6low8KbA7EA7MUS0QkV6pJ2Jp97WnLxfn7UyqkqL3LxR4zgpfly?=
 =?us-ascii?Q?3zXqZCdI7U4BV3CljD/7QPumzsfgffJb5QhzyMSLCUUrNfwLqYPuILOSYFEx?=
 =?us-ascii?Q?OnKsWpEzTjf9xteah8RF55d1fyQbBzAX8NZBj8Hi?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45ad2e90-4579-4044-8579-08dc7881160a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2024 03:58:19.5646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mYUx2ct05OLwkV3iioUIXXLqdUzykRzeahL+wNt8odSo83XFGMWAfnBuxOOBvV2enFx2wEDNdd2pdm14Hginvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6668
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Friday, May 17, 2024 6:19 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Subject: Re: [PATCH 2/2] drm/i915/hdcp: Check mst_port to determine
> connector type
>=20
> On Tue, May 07, 2024 at 09:20:37AM +0530, Suraj Kandpal wrote:
> > Check mst_port field in intel_connector to check connector type rather
> > than rely on encoder as it may not be attached to connector at times.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > index 551c862ed7a6..2edffe62f360 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > @@ -693,7 +693,7 @@ int intel_dp_hdcp_get_remote_capability(struct
> > intel_connector *connector,
> >
> >  	*hdcp_capable =3D false;
> >  	*hdcp2_capable =3D false;
> > -	if (!intel_encoder_is_mst(connector->encoder))
> > +	if (!connector->mst_port)
>=20
> I suppose this fixes
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10898
>=20
> Could you add the Closes: line for it?
>=20

Sure Imre will add that.

> Can this function be called for anything else than an MST connector?
>=20
> Afaics it's only called from
>=20
> intel_connector_info() ->
> 	intel_hdcp_info(..., remote_req =3D true)
>=20
> only for MST connectors, which makes sense since only MST connectors woul=
d
> have remote caps. In that case it would be enough to simply remove the
> encoder check which leads to the NULL deref in case the output is disable=
d.
>=20

Right this function is not invoked from anywhere but hdcp_info() since this=
 was=20
Created just to have a sense of the actual HDCP capability of remote monito=
r rather than
having to display the first monitor's HDCP capability and repeating it for =
the second monitor
specially when in daisy chain setup.

Regards,
Suraj Kandpal

> >  		return -EINVAL;
> >
> >  	aux =3D &connector->port->aux;
> > --
> > 2.43.2
> >
