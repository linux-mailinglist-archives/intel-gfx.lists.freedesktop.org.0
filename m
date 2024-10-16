Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C389A016A
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 08:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E97BF10E68E;
	Wed, 16 Oct 2024 06:27:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZmB+bJke";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D66310E68E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 06:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729060037; x=1760596037;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vvptCE1E0L4IPNgBqmELbS6fExzdiFtFk/I88SC653Y=;
 b=ZmB+bJkevWxTMt3TlAjNLbyDUuBp5b4VQxIcTpaoxuHrMSUaAxvHaz6F
 8DdEyEfM7mOw9ZFlUJZHSTDW1QGYKkCkB7Vw+yyIO+G+WMQOYKOE83gLR
 Lsekt1FcbE+0rypGkqgnbr9pryqtD5Ykoi2UVRbDLmfDWfLlJjlDA2LvK
 WuWqiVToQhLkAgto/5h7vD4Fp05vYNyxYDnmEMebv0CYxIqveSi4RlvYO
 2T3gKflQKRx5F8NumhfqAj+DFD4dT2cWNhAvtpNK3D82GAGkMfY+6hxX4
 xBqL57/LvyFoOGHqw3Y/yhrmPETi8jLunjkVjjdnrnyf0zjo2YRm3OOsR Q==;
X-CSE-ConnectionGUID: T2kP5FLVR0+nyRNZQ8r3WQ==
X-CSE-MsgGUID: 7mIVKBQ7T0WU1Uv1oSXNOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="45966592"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="45966592"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 23:27:17 -0700
X-CSE-ConnectionGUID: lhaNP4x6QD2vN/i/xJiDsw==
X-CSE-MsgGUID: 9rl6rhYqTVisEL5wU/KC0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,207,1725346800"; d="scan'208";a="78582182"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 23:27:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 23:27:15 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 23:27:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 23:27:15 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 23:26:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=abtSP/qvEG8TCOq7M4O0t7Mopiv7F7O81PYcBA+u3Gr0n1CkNVV6cMunuMqtrx5k0OslPV7tUIJQQ0ORwiah2q1RN06Clmx5FSP/AOwyiabgPOzuBy0QTnXfmi8geclLNObVBIfvHaUuAHQ/NfZs+ccfCJBrCBCihIghggYeP8O84+jarYk4t1dTFhoZ+ALwst+x6rqbmN5yNmRVb5nICAdrhOossLRFr80NUi+aqINiScE5DdhMmfJYmf0ZBnvlPPeYQYIGg4Yjh+1X9SdL6BZ5deA40l0lx5QnX+jEjAO2MMVxkhlB6hVCR6ZFANFnkjD1wkfMd58OI1ol23+ULA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TdtlvCuS6mtEqaHFE4YNQkLwt8S3D2UaQdxCYYqXtAw=;
 b=UrE94MIz2rFHxlf2LGn4dyCdkBoGi1IbGqWpMg+5jzE+dOOev3sJIfi6AxrpxAeXW8eUie5fJNYHP/xgEOtmO0cAXoEuHlcCgTkVBKEuJYggO+QrIP/5S0DgUdM1qt6RzdsX2G/sgHqvLl0whiBMBYbwfzNH8ELV74IibXcquBN3mcuP7Vkoh3SzwXtcs7VrfOeh8z6KgrlnuSg4BYgbhH2s3I5fWDbRJUgl3IjCt+GNDnYalA85Um856AurnJkgOdrekMGfTgJaSYipwTxoX/PLv+Cr8s6ORr/6vqg2uVoVq3+2OQ+Rpdyq1GVv+65efJLYIWwe108xdNVgSV+O9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by MN2PR11MB4726.namprd11.prod.outlook.com (2603:10b6:208:269::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Wed, 16 Oct
 2024 06:26:42 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%7]) with mapi id 15.20.8048.020; Wed, 16 Oct 2024
 06:26:42 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Topic: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Index: AQHbEysofg4QnnlQeUm14i8grYYPOrKHm7WAgABGfXCAABuSgIAAF2VQgADLQICAACBLQA==
Date: Wed, 16 Oct 2024 06:26:42 +0000
Message-ID: <IA1PR11MB64677DAB1D05FE812FFBC2DEE3462@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20240930112343.2673244-1-nemesa.garg@intel.com>
 <SN7PR11MB67509E290DB4807E294502B8E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
 <IA1PR11MB64678E621767064D910F53F8E3452@IA1PR11MB6467.namprd11.prod.outlook.com>
 <SN7PR11MB6750AADC23292F7E8F1C3D58E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
 <IA1PR11MB64674DCCF019544450B26825E3452@IA1PR11MB6467.namprd11.prod.outlook.com>
 <SN7PR11MB67507BC2CE5C9FE11A6E3BC9E3462@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67507BC2CE5C9FE11A6E3BC9E3462@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|MN2PR11MB4726:EE_
x-ms-office365-filtering-correlation-id: ea5648ce-e885-4beb-3e24-08dcedab800f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?jQiqpWtFY03hz9gxwacefpaJMvZPm1NByQaljbvm84Ofxscq21nJmVZjT0HB?=
 =?us-ascii?Q?EDcA/NUbz3E0OH5qt9JUPc+OuHA9ntwJmjtUdrVDdiBNUMOJJ7Isb6bLTW2j?=
 =?us-ascii?Q?XjsYTSp57BGh3HsKsB+YBpKLnr7V438YTkZqjB527bS66B2EMqxGeoFirABz?=
 =?us-ascii?Q?eb51pp5H0HsAkyHkI2bx2UA93i+r56ON7lm6kRV6y7Nvn+gVVsrcYhMOSJYW?=
 =?us-ascii?Q?hD5A56FqBYfk1KWW7ghJ2O/ZDT4UX7J7Y+O3YJziK4DzTI2N+Zi4ukMvOUXU?=
 =?us-ascii?Q?Ux1Y3C3yjU92xna+VUm7CEXpfl3ckDf45MS0bUofcKws+KnBbuWVEEKfNjjz?=
 =?us-ascii?Q?kSmdTCQ3Ar2vsvdbKMuN9CjuQASSfj2EeEetQJ64hBIXK3s4oGi9RG9uuZSl?=
 =?us-ascii?Q?mfp8HUlSBG97Z+N62XjeAhNtEGYf4uiz9kf0TKw53bwGx3TylEfkCcnk3vUw?=
 =?us-ascii?Q?ArZtdCGWQGrJtdg0TPA06IN9OuaUyWoiVtK8pu7RCEU6RwxGMru23iL+OML1?=
 =?us-ascii?Q?PckDE07BlUfAV7fZKKLvHkrffe7CWUUXjRxMSoA7E4Eptqm28YQZvHp6hCjp?=
 =?us-ascii?Q?I/Ilq8DMr2GECNK8Vbjcz0+puCkGWapAp2jvVYt9PGTM2MHsa0zdHBo10K90?=
 =?us-ascii?Q?PeuUGdFfmC+kXLJp6s0uVZF9skHIoHCikYSmRgxxP9VFhoZuo3Zs34+ULswI?=
 =?us-ascii?Q?qr6k4tJ4yYVbzvRb+1TWu3FaXxP/dPKPPxvl9Dhv8N6wC736bD+3MJIWNUeq?=
 =?us-ascii?Q?w/2tGxGK/uuGQLdl0NA+3qVF3eqOcW1Qj5l1RU8ZjuStfNw5vgM50wFR0AOY?=
 =?us-ascii?Q?YUSMHxxfh2O4KixpMedZj/xJGK+CtcU6FdcWnNsv5pQAZ5z1iCkUrOw1L7fc?=
 =?us-ascii?Q?x52OuPeu4//dtSaQ43X6/Ts427SOb70igmcIhGP+uz9ul5hX3T0vsJPmppGr?=
 =?us-ascii?Q?o4UhEPbHK6y8vMzEgNZ/QT2k+TcgW09uQDxKFVgcnqS493MEx0wPFQCLfyM4?=
 =?us-ascii?Q?eV7yBquQbODq9MZJawlK5l4us7jPg9uo6m3Iv67FgLxZxO6M5cqXQTqlLHio?=
 =?us-ascii?Q?GUCLIzGhFgzC3toT59+vm7bLmXGkGkGti9xBTIefy1NrXzzQFUKah9ZUa93I?=
 =?us-ascii?Q?V/6md+u+3RnVHUixceZSO+hkUw2v7V2FKzBoJJdTiei/I30aMnHVQiQdqZMI?=
 =?us-ascii?Q?iAtMcjpgh3j98zzrzN9H7ckdNQiOKVTXPtFxxshBORyTVAzeYsGFqrqVj6lg?=
 =?us-ascii?Q?EOJYvY1YR7WtVgI7oOGpKYmsRAfovuXEFxA1VuYWrONQFfK72cDZnJ9so9FY?=
 =?us-ascii?Q?/C5yTuVDek03Pkc+esRE+osuMJcriMeoKwrR+QPEhxwMKQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IdeXD/fPdJmPSUa9EEa4txgljC8QoEqqiQk9VwCDf5NzMS6bqkJgPQMkCIlf?=
 =?us-ascii?Q?hyxhEfoZY7ETFgVOBGHO3dKHiIFfQwlbSbfCAXvRpLiWDAkTNtN2eyAxwuzO?=
 =?us-ascii?Q?Vx6vIrdxVNQJj8dhp3Cma1IE3Z2e+Nqf4IkVd0tZ4dlV6GJbleDxoU9ZJtUS?=
 =?us-ascii?Q?340/6ZukGwFndutb/irUqanVL8164X7EZGbvcPn6Qji9A6Wp8jCaz21M24u9?=
 =?us-ascii?Q?rAD+5WpUhnKXOZ1TKEEIBSKCvNmhV4S20gpIbGpgZ4b5f/kT/JVq7eQcQbf4?=
 =?us-ascii?Q?pBBZ8aw4cNNYhRQgRF38SgQJgfd07J9Q/EdVrkyEBduhYO+aYo+SWfbi9Enq?=
 =?us-ascii?Q?OZZm5ZpFJsFIyxhrfp3GMux7wIIFSJoKq1N/7RngdROOx3ZutqbvkNaHeJHD?=
 =?us-ascii?Q?qg1pGRGIyJ8qZgNwcR/ZUpIUiNsu6haaT9C8PDLJX5xHr9VL+EFS0aNw9ovE?=
 =?us-ascii?Q?xuWzhESVgp4DzItzvnL6lL28/7KSKhz/iHjZTVk7kUU/joEidxgRZGQ/K+kt?=
 =?us-ascii?Q?X1sS51QkunKlatw3WMIRS3PklgbuFO3+fCxidmS3L6FDOxif2YWaPGDLE1t4?=
 =?us-ascii?Q?t3XahNS/JpEh7NHhvZWJ8nbguTjQe2iEtQdaLiLoZ5TZrgUMcbxJFoN/1l+Y?=
 =?us-ascii?Q?eThM09bj+tueZ/8CoXM+MrCRMQjS4UbtotvlDQS+B73Xj3WJYOv8y3Sa9XGQ?=
 =?us-ascii?Q?l6uNKIqab33cVdof87OT2uVHYv0upHolBEpCa++m4Fwwc8SLUN/CeyUsozSw?=
 =?us-ascii?Q?jcZ9WuHKHLdDPSVh8ToKWf8D7DTBw5dzAN/9J+PNQyP1JG0UuSOz5ca6Gs1f?=
 =?us-ascii?Q?Qqeqip6VQyaFYujwjLPrrbq9+U7YPK3E30gYB0jehwT9xL+S5javD6ss4Z5j?=
 =?us-ascii?Q?QO1RHUc2FN9+1UGRUSZtTveFPdVwFweJfEgBzJIz457aqdMPKAvMvvNGeyKd?=
 =?us-ascii?Q?aFBPchZkf2OV4AlZWDDaXAq75tMkrICEy3igGxPZKD4aKcnrNoP4tTshFeLq?=
 =?us-ascii?Q?iFb9CIcFRZSkBPq0Ke8UL7mKuN1/29hBf8p9WdTBdG4LbRe9U1/+r7qcH4ls?=
 =?us-ascii?Q?pV+fLzG+F/wjQGAYE9AiFKMzFRwKmSifcPlmFUMz9tFDwYSrzKXE9uQXqr1K?=
 =?us-ascii?Q?nWiAo6KzdvZbpqdgsFGB3ZFUBcomPC9NnVxs5o/Y4o893sKDDfcUjkPCDRXo?=
 =?us-ascii?Q?Li0gHQTiqDZ4MQou1wGTCwawXcEaYGJzAiIP2Qe4h/DPD2pCbZhgb+WenXPz?=
 =?us-ascii?Q?3p1e46T1wMbWmV0HFebQiiEqzhP7cxPdn3lAdG03H5aiVieay96pGgK+KIjC?=
 =?us-ascii?Q?/DQJ9Hzmmsio6tZ1vZcBYs+vDEBCkg3E0TbttKJkGvZ/xflPpmJhSuHpQFVM?=
 =?us-ascii?Q?31f/ha/MgHrAmVuxN0N9Qh6dKD3jH6O5cHhMIshnS+Nn0LN+1TeDOnhHISAU?=
 =?us-ascii?Q?eCP2P4nXzZsBBIIH/EDS9gijKB4I7h+YtSl2RPH11dFrsqvSaagOfglFr0xZ?=
 =?us-ascii?Q?aP9JEM2O5jf//x+gKhjLh0GakVDgdD1sje8C+QD1f5pu6MBAW8YcXYD/rr4R?=
 =?us-ascii?Q?oCLCMMp8vgBcatqbzxWt7QzTXilBNeJxeQSx3CQd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea5648ce-e885-4beb-3e24-08dcedab800f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2024 06:26:42.2947 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iVS5HxtgrLcwDFfzEe8++zvZaXCLlbQrND1/7CAGOePsyh+ap5lXR387RPAs0BPY8MF/5E98yfU3JdhdA/lqXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4726
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
> Sent: Wednesday, October 16, 2024 9:55 AM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for pla=
nar
> yuv
>=20
>=20
>=20
> > -----Original Message-----
> > From: Garg, Nemesa <nemesa.garg@intel.com>
> > Sent: Tuesday, October 15, 2024 9:53 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for
> > planar yuv
> >
> >
> >
> > > -----Original Message-----
> > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Sent: Tuesday, October 15, 2024 8:24 PM
> > > To: Garg, Nemesa <nemesa.garg@intel.com>;
> > > intel-gfx@lists.freedesktop.org
> > > Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning
> > > for planar yuv
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Garg, Nemesa <nemesa.garg@intel.com>
> > > > Sent: Tuesday, October 15, 2024 6:52 PM
> > > > To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> > > > gfx@lists.freedesktop.org
> > > > Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning
> > > > for planar yuv
> > > >
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > > > Sent: Tuesday, October 15, 2024 2:33 PM
> > > > > To: Garg, Nemesa <nemesa.garg@intel.com>;
> > > > > intel-gfx@lists.freedesktop.org
> > > > > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > > > > Subject: RE: [PATCH] drm/i915/display: Workaround for odd
> > > > > panning for planar yuv
> > > > >
> > > > >
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > > Behalf Of Nemesa Garg
> > > > > > Sent: Monday, September 30, 2024 4:54 PM
> > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > > > > > Subject: [PATCH] drm/i915/display: Workaround for odd panning
> > > > > > for planar yuv
> > > > > >
> > > > > > Disable the support for odd x pan for even xsize for NV12
> > > > > > format as underrun issue is seen.
> > > > > >
> > > > > > WA: 16024459452
> > > > > >
> > > > > > v2: Replace HSD with WA in commit message [Suraj]
> > > > > >     Modified the condition for handling odd panning
> > > > > >
> > > > > > v3: Simplified the condition for checking hsub
> > > > > >     Using older framework for wa as rev1[Jani]
> > > > > >
> > > > > > v4: Modify the condition for hsub [Sai Teja]
> > > > > >     Initialize hsub in else path [Dan]
> > > > > >
> > > > > > v5: Replace IS_LUNARLAKE with display version.
> > > > > >     Resolve nitpicks[Jani]
> > > > > >
> > > > > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8
> > > > > > ++++++++
> > > > > >  1 file changed, 8 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > index e979786aa5cf..e3401a4f7992 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > @@ -1029,6 +1029,14 @@ int
> > > > > > intel_plane_check_src_coordinates(struct
> > > > > > intel_plane_state *plane_state)
> > > > > >  		 * This allows NV12 and P0xx formats to have odd
> > size
> > > > and/or
> > > > > odd
> > > > > >  		 * source coordinates on DISPLAY_VER(i915) >=3D 20
> > > > > >  		 */
> > > > > > +		/*
> > > > > > +		 *  Wa_16023981245 for display version 20.
> > > > > > +		 *  Do not support odd x-panning for even xsize for
> > NV12.
> > > > >
> > > > > Only mention WA no here the rest anyone can refer to by going
> > > > > and checking the HSD
> > > > Sure..will do.
> > > > >
> > > > > > +		 */
> > > > > > +		if (DISPLAY_VER(i915) =3D=3D 20 && fb->format->format
> > =3D=3D
> > > > > > DRM_FORMAT_NV12 &&
> > > > > > +		    src_x % 2 !=3D 0 && src_w % 2 =3D=3D 0)
> > > > > > +			return -EINVAL;
> > > > >
> > > > > Also rather than return -EINVAL here we set hsub =3D2 and vsub =
=3D1
> > > > > this should make sure odd panning is disabled When we have even
> > > > > size since we only need to disable odd panning according to hsd
> > > > > not even panning this return may end stop panning for even sizes
> > > > > all
> > together.
> > > > >
> > > > Even if I do hsub=3D2 then also it will return -EINVAL as src_x wil=
l
> > > > be odd and src_x % hsub will be 1 which will return -EINVAL.
> > > > Even panning doesn't get disable that's why I have added the check
> > > > src_x %
> > > > 2 !=3D 0 to make sure that position in not even and src_w % 2 to
> > > > check for even size.
> > >
> > >
> > > That will be fine let the code later that already exists take care
> > > of that since we don't Want to abruptly send an -EINVAL in a code
> > > block where we were assigning variables.
> > > When it fails later as you said it will with a clean debug message to=
o.
> > > Secondly when you do return -EINVAL for src_x % 2 !=3D 0 it ends up
> > > stopping panning in y direction If the current src_x is odd but
> > > panning is being done only in y direction it will return -EINVAL
> > > Hence assigning hsub and vsub here make a lot more sense.
> > > We can remove the src_x check and keep src_w and add src_h check
> > >
> > But if I remove  src_x % 2 !=3D 0 then above condition will get true fo=
r
> > even positions as well in both x and y direction.
> >
>=20
> Ohkay got it then you can keep the src_x check but still need to add the =
src_h
> check along with And set hsub using if else condition and let it fail lat=
er on with a
> debug message
>=20
As mentioned in wa I will add a check for src_x only and will add hsub in i=
f-else condition.

Regards,
Nemesa

> Regards,
> Suraj Kandpal
>=20
> > Regards,
> > Nemesa
> >
> > > Regards,
> > > Suraj Kandpal
> > >
> > > >
> > > > Regards,
> > > > Nemesa
> > > >
> > > > > Regards,
> > > > > Suraj Kandpal
> > > > > > +
> > > > > >  		hsub =3D 1;
> > > > > >  		vsub =3D 1;
> > > > > >  	} else {
> > > > > > --
> > > > > > 2.25.1

