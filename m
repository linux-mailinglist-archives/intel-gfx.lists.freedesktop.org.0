Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B44DEAE0066
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 10:51:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A694110E9D8;
	Thu, 19 Jun 2025 08:50:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DUx8Y70M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC5710E06A;
 Thu, 19 Jun 2025 08:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750323056; x=1781859056;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Sorodxasx80w1m6XWrBK5/YZot2WDaEhbz4iMaSYjiY=;
 b=DUx8Y70MfRUAEd8D+s/W4vd4Up4Wl3cjnBrhSo2sOQmf/SRLduS5s1cn
 ex6pWg+JvPpbAOivVt+6ysqpHIlKzYZhjFjEmSRL4kIQJ21VsiSwUGo/t
 meCGFJNIn7u/aQGNy8zB2+eWw5vkfslAn09INcCfFsMbMbTVHbumbewvS
 aGTX0QD7FqrlRBFZzY67j3Xwy2DJYFmMCzLEAYkCj0GDS7SbS4IKzK7lw
 U3LBrFdm+v1eDpCfhNTYvbokIN96YzgSdB35W8KfBD5qJH3YACUeqXdwZ
 z66/s+TkkwG52Y3AVXm7t0W23wcKzsZnxpXcGuhIm6iEeiWBikHAzUUfH A==;
X-CSE-ConnectionGUID: fpewtBJWSK2CEd/WBtrz4A==
X-CSE-MsgGUID: n3Nxnh3OTf6R3ihoTVr0XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52270223"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="52270223"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 01:50:56 -0700
X-CSE-ConnectionGUID: oI8jBJyZSr2epRyHtZxRRQ==
X-CSE-MsgGUID: u/rJjUvjS/Oj7OyU8nm6Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="156068808"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 01:50:56 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 01:50:55 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 19 Jun 2025 01:50:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.82) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 01:50:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eszq3vmPBAKbPr4zof3Z617NYZMw3cy0BepT5GiFYBSkxJL+7D0D2PBFsnU9j6kSzCc3kCLfW0TdW/lnKeukCUIHQv75+15VUm0lcHK5j04GECzDYqeqUJ/Zn0v3vrblb1mD/lkQgqO36p0Sxo5uDi8IKF2R4hhNjzq18AYd7aG15jxsUPq6bosaqmQQ/OFuQyacxjJVk/rkJB8RNj2jITDMJpQ+3/XQdZi3glxzM7ifHE1cOMENKciGkhfztkjE+T9hzo01L7OK0T6cPfKzC4aRg3oulC2QyLdNIrK5q9AUSadYjZwRmtKK7WGmwqPqMwubyX4QpUuItY4V6n8Ilw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=goiQW6VQ4bc6pcwvOmKxHmxekCYPUT8/2YzMx73S9aI=;
 b=MI6pkfur3X0TUaZ4ddYOk0p+Bw/jlRLykZizlR/YuT1OmZ+OF+Ipm2Mdg9os3eDkqAbdun8ZRCy65JZRpyafhYLCfbh4sNrXJ6WH91UjC8pXDI3fFgt1KNfnjRvINyUkeuMDJNe5Fgc2tuII+YBsVFKQ2NcnmIkh5+Hc3YbmHxLKtdaEbpjnZ7ICB+uGubs7dhlCHSYHXBWYxsqCgSRT3i3BgftvvBKbloUg54V381U+Tle61fbgVOjdQuVqlHXmGMETnV550wGQ90JW/LJaPMfKN26hRhXoMCPi3PUp0Xgernd8vWoKdNSMdGQiURCq0VB0VxS9jKxOo+/nIlMUAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY5PR11MB6512.namprd11.prod.outlook.com
 (2603:10b6:930:40::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.20; Thu, 19 Jun
 2025 08:50:48 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64%5]) with mapi id 15.20.8857.020; Thu, 19 Jun 2025
 08:50:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Use HDCP2_STREAM_STATUS to verify content
 type status
Thread-Topic: [PATCH] drm/i915/hdcp: Use HDCP2_STREAM_STATUS to verify content
 type status
Thread-Index: AQHb4M94JClz5yVtQ0e1Ygd6DL8O+rQKKtuAgAAA0/A=
Date: Thu, 19 Jun 2025 08:50:48 +0000
Message-ID: <DM3PPF208195D8DD47DE9A8561A7623809BE37DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250619040519.3375518-1-suraj.kandpal@intel.com>
 <9447239ea5d3bd0e42383868c3da0e5dcda0412a@intel.com>
In-Reply-To: <9447239ea5d3bd0e42383868c3da0e5dcda0412a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY5PR11MB6512:EE_
x-ms-office365-filtering-correlation-id: fd83ffdb-0348-49c5-dc90-08ddaf0e631d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?LbggQpsJY9GUqvGNOPY+E4DgafWibxnG5paMdziYNp35bq68DkWIYCHCD0J7?=
 =?us-ascii?Q?TPxs2ACir4szstR4JBFX8HpQsJ3DqcSTuYe7Iz8JPiByofMVgzgbWyMmrIiA?=
 =?us-ascii?Q?4pWVJi89zpM3rvKMI/hPE6wNA1ZzPi3Kme/cq9tJ93rf7x6FAG6Venp1lrTm?=
 =?us-ascii?Q?C6wxR8lzTfk1K7xfwPi0hcJY8+DB7ASUWZTt2+FwEooiK/sR2NfNuAu/mYbI?=
 =?us-ascii?Q?6Y3KuDVhq4KCLGBGtO2bKaR4vyVveixJ5nsK9zwxVuSWmWDAEPaZe9R8C868?=
 =?us-ascii?Q?hj3omOQ3FHbvSu5YY65fVKz18mWXuKymqBvwudby3+aenRKZrF8DuYVNSZYL?=
 =?us-ascii?Q?fLHWhSR6yQRSI58d8LHAzfxAJFtWuUkIyaFAP2g8vyEHIs0xwubMYetJQFbM?=
 =?us-ascii?Q?u4MRi7/nfi0QeNejb7uibF0cYvjcOn/VfU5ymComJC+J4B01zU3craHm+Opk?=
 =?us-ascii?Q?V3b+Q9s+qcR97DyTOfGzNAYXdDP0vPMxpA8KmQHla2zzQFrqcfqHBDoqe5i3?=
 =?us-ascii?Q?SsMQSjhWmQOK2+1kaYTHobPgP1cfSY9mTViatjS/HJR758fVcYq93OfCcjyM?=
 =?us-ascii?Q?PI4OrfMUa2WRmpc7sBdhaWLQaswUr+wx66++vrwVV0CVsqzcgE4caMsE8j6m?=
 =?us-ascii?Q?O748XjG/+V3OQKpSWH4xWwj93FjkLGfFCakQghmUYTUzeh3O+DdWJgDyW9rX?=
 =?us-ascii?Q?uKk5nZ8km1/4svbt8bOiuZ0OunJwWAHqGjvKJucaFrmkNqQOEgf1jp+HI43n?=
 =?us-ascii?Q?ST4I7nrtI+8mUCK/rhorkRq3TXlgTEEQR7G2TuexYpSJGWyf+j7TT0eQaGix?=
 =?us-ascii?Q?eB3HJ3tWoWvZxqnRk35QI996jPeq9WmcOi+HJRGl7NBiHDl8gslIW76eMKbQ?=
 =?us-ascii?Q?7yYjuY4b2PRC/HfDJUyhxj6ZqeeeBK4qx0KQjvpQKWnusdyf7etyow6KsdRh?=
 =?us-ascii?Q?L2drKpr0AyNzZXvjWOorWMoDrZdvQ++Km8FQs3sPK+bEdeLv71b5couJGXG+?=
 =?us-ascii?Q?IvKeDV3OgYQsDqrTYXZZaCygt7T7WcyMcr+fJKFGMCJnLnZmwyTq1IdlpDjT?=
 =?us-ascii?Q?YGuNHZLTlDM0jnMAV9bWRHzxXCPHf5fbBj2h7b+x6yNRx9SoccNHvrZ9f9Ft?=
 =?us-ascii?Q?0eqS1eWu0y2i6cNXKG2iF9yV2UijeBCwHBb84AmPNvsOg8tqSfAAl8/vYocA?=
 =?us-ascii?Q?8YbQYWrrJcv9hOHBIeKxL/koS1kNDhWlKBxm0tRJETVVnwcD7K5IJ3Zqg1jR?=
 =?us-ascii?Q?zUfqoGobZzDvNAxZ9ZOsyZPNB4K3tCu4JGLEnWItl2Og9B6SL3tVovbbb0BW?=
 =?us-ascii?Q?bJ87Gdb48TUn4ebvfhk01nte2oNygz4z8/cPLxftpXKNUX2p3N5D8UZRJ/DA?=
 =?us-ascii?Q?rHXnJiBYnSdOKRyeaLHSdYtGECipleRIz6o+L3ynlXsbDMbmVZDD0Sn42n5w?=
 =?us-ascii?Q?BoXgIsbAu43SV28cmspeY1JSHqC9R5jzm/7hPtGSfXJDa7FoHhFMkg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KM2u69uTdcx1a15cvPMTfBxQ3F8NBb9qjhOGRVTKZiDp2aawrTWSNskykm3A?=
 =?us-ascii?Q?XGsnLHSrbOppm3fQLiMYhJcbXvKqYVYf+RR0iTYGL1f9ESS4jAgVNaF/G9vZ?=
 =?us-ascii?Q?tCMtdwReqY1NRyG2keD5zC39Lsbic8j/+6TRMs6rRWL/kneawKPEhXv1nhuf?=
 =?us-ascii?Q?jntxQKXRBTUNXXoxYVcGjJxWuGzOQGbdK+I+1jUpxn92GmjFNQbXo4rjkybP?=
 =?us-ascii?Q?5Dfz7odD0zTtVBCjiG2JUYvyBLXPpIqGyZIcUcxR+1HHBc73XO9I0ReFLdVf?=
 =?us-ascii?Q?kYjwu9odqRAx+X0OMXFSW1uBmdUSD+T6/tynGVhsvtDMdIbgyiPJzo2Gklzt?=
 =?us-ascii?Q?W0l+M5hny4YYamYPHbXJ9NjPx9kxYpG80gWs7pYmEmS88ML3cFWlGTEhl/Tt?=
 =?us-ascii?Q?OiD0TKz8BYpHOUbjSKHMbUKV/S7KMmTCzwjruls1IOX0c+Rqb4VQduFPf0Ip?=
 =?us-ascii?Q?XCuamrvCav3YmCzdbokNuMAfYfvlAixYVzjielJDlHrsoLMurDTwuzPDskpr?=
 =?us-ascii?Q?YRJBx4ubx4RXUTWtiZERJMSvVFo2zQLNXbZtjKdNge2fpzUk+Vuyph73kyMM?=
 =?us-ascii?Q?qALaEaVsUKuAQcAXlYUfHmlk4yh8VHK058jwkZr4GRKdzLNvcGtNiJcSfcFp?=
 =?us-ascii?Q?ug8qZZpc2QVZnKMGNjpjjqoHvWoL/cl18sTU6NBaxJRbs+/MX/f4EoQvbUyA?=
 =?us-ascii?Q?71fRArskf6/7MSfMVvw0uh3x70qqrUtcpHE1GHHT+UVczpz+8TxO/W5GrwHL?=
 =?us-ascii?Q?oZSJMOdXoMXWfIlY8AH1jBctyJKWLTPJGaNQ5hUHlPIwGss5wWauvH6C+BLk?=
 =?us-ascii?Q?t+kJcdOW6Emp+K9qZ2OFX1JurBmvwlYDYZitKUt5wiZckfuyRVU22Y2ATfNx?=
 =?us-ascii?Q?M3VPppeGhasPNBSJnGpwZK2isw8w2DMpJ40GVHAQ902JjQYz8NS5qq9a5pOm?=
 =?us-ascii?Q?u17Unoldq9AqRPZItQzEBjZ7lOZeyhs6FgF0W5R19WHYpmh6n7516h4TwBGp?=
 =?us-ascii?Q?NxW0qukkL4sIlJrG1+6na2QNlGG6v8vYZvTXuABlzv28kzFhAc+082KUZxCm?=
 =?us-ascii?Q?kK//QRgLYbLqkiu+2mTTNG3IGZzHIuFw5KZ3nAgGsAE4gyX7VIr2OZ0jVggY?=
 =?us-ascii?Q?NZOl/VQg6xsiExB7xgt2IZOT7+Qa5TsHWNY20fAtsTLO/ZL/O3viZMNN2EGc?=
 =?us-ascii?Q?RAetWLUkjYUjjlBIF/4WJLhBJqMZ5n6WBtN/+BREgfMePFtRe1GCsIegv5Ia?=
 =?us-ascii?Q?NsR3RzVCOYcwmPp63ye1nVpny6rfNa5QTc85RnSCIOHGbMJ1Akb4Sg7B0zNF?=
 =?us-ascii?Q?lf7pCiuAcUipAJDKz/TpzIeXD5G3Kehjw/17oZxefOjUUPY0JJcG9KTeZRSF?=
 =?us-ascii?Q?6sSq6jBCoK8xZzSNbvfOiGBWXjSOsRYKtfT9MXHvVMTd+f+dUu86ROrPj6ny?=
 =?us-ascii?Q?hEwI1tt5QLT00JBnD/iOcPoGnIVa84jaLh9EBqRRACIQl3ovZ9+jre+sFWq0?=
 =?us-ascii?Q?RDaI1SpxOrVhMurKlr9hs4Rn/csFsScXDt8OKw3AXM2SzA2hKuAVe1fKt9++?=
 =?us-ascii?Q?5Sf8aAjfUhNi5O0BzVDQeTqiUeBDhylG74Wso08n?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd83ffdb-0348-49c5-dc90-08ddaf0e631d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2025 08:50:48.3363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VXt+He6uF5CNRSK7qbO8Iq9o5SH6SSXNraNllorMB7uNjkzubrLLr87S3rt5+kKYLgUC27FRjU2Zj80xG6kD+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6512
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, June 19, 2025 2:14 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/hdcp: Use HDCP2_STREAM_STATUS to verify
> content type status
>=20
> On Thu, 19 Jun 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > From PTL we need to move to using HDCP2_STREAM_STATUS to check if the
> > written content type info is the same as we expect since
> > HDCP2_AUTH_STREAM is inaccessible to us now.
>=20
> The commit message talks about "verify" and "check", but in reality it's =
just a
> warning and move on.
>=20
> When can this happen?

Yes its basically just a warn will fix the language here
Also can happen when the data sent by driver to gsc gets corrupted and writ=
es the wrong stream status info.

>=20
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 13 ++++++++++---
> >  1 file changed, 10 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > index 7bd775fb65a0..131fc0cae13b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > @@ -806,9 +806,11 @@ intel_dp_mst_hdcp2_stream_encryption(struct
> intel_connector *connector,
> >  	enum port port =3D dig_port->base.port;
> >  	int ret;
> >
> > -	drm_WARN_ON(display->drm, enable &&
> > -		    !!(intel_de_read(display, HDCP2_AUTH_STREAM(display,
> cpu_transcoder, port))
> > -		    & AUTH_STREAM_TYPE) !=3D data->streams[0].stream_type);
> > +	if (DISPLAY_VER(display) < 30)
> > +		drm_WARN_ON(display->drm, enable &&
> > +			    !!(intel_de_read(display,
> > +			    HDCP2_AUTH_STREAM(display, cpu_transcoder,
> port))
> > +			    & AUTH_STREAM_TYPE) !=3D data-
> >streams[0].stream_type);
>=20
> As a side note, can we please stop shoving complex intel_de_reads() insid=
e a
> WARN_ON()? Separate the read and conditions for the warn.
>=20
> Moreover, stream_type is u8, and it's compared some boolean logic.


Will send a separate patch fixing this as a part of this series
>=20
> >
> >  	ret =3D intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
> >  	if (ret)
> > @@ -824,6 +826,11 @@ intel_dp_mst_hdcp2_stream_encryption(struct
> intel_connector *connector,
> >  		return -ETIMEDOUT;
> >  	}
> >
> > +	if (DISPLAY_VER(display) >=3D 30)
> > +		drm_WARN_ON(display->drm, enable &&
> > +			    !!(intel_de_read(display,
> > +			    HDCP2_STREAM_STATUS(display, cpu_transcoder,
> port))
> > +			    & STREAM_TYPE_STATUS) !=3D data-
> >streams[0].stream_type);
>=20
> And this is now duplicated in two places.

It is reading a different register and this needs to happen at different pl=
aces to since STREAM_STATUS is only really reliable once
It indicates encryption is enabled

Regards,
Suraj Kandpal

>=20
> Please deduplicate and simplify.
>=20
> BR,
> Jani.
>=20
> >  	return 0;
> >  }
>=20
> --
> Jani Nikula, Intel
