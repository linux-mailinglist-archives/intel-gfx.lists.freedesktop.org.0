Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F329727E5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 06:15:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11DD510E3D4;
	Tue, 10 Sep 2024 04:15:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Du9N91Sd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 485C810E099
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 04:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725941739; x=1757477739;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/O8uYv9+RTSE4FInZnvV47O7MU64TEe+mrobE/vVYH0=;
 b=Du9N91SdU77uwxwmJ3ZQsiMXBrtDwIbw1jA3OMdOcggFbG0EXcroQ+DV
 kUtG5U9WIVca9ocZ6gXYS/4Hpz7Ej1VE09va4ySLlaPjSTvNwjhCCGG33
 9MJsjiNQ9HbpLgJv3gCTumB0h4GHkdt1CTZWuZlaOFDkiwaZng3Se7Sd2
 di96xATdVgbi8xyt3Squ4Y/T5W8uJ55BAcVJIrOOFAugzlbiaW4IlYtKU
 579oPhIkmNQyyovLOBb5VLDBnzDqNjkru1lUXXTF0MbfT7V2gYAQZN+ro
 TwOqy8Y1NqwNwdTWBFbOvP+u78acMEIPS3P+nTvf5oDYRH2gZ6osTHqup A==;
X-CSE-ConnectionGUID: 4/lJXNYESQiTm6DQS5cH3g==
X-CSE-MsgGUID: s/4HspkgT8CIuimruvv07A==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24212956"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="24212956"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 21:15:38 -0700
X-CSE-ConnectionGUID: IKagz1WKQGanmh60xh+lnw==
X-CSE-MsgGUID: t0OsecL7RbqVTUZib0JpVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="71856131"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Sep 2024 21:15:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 21:15:37 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 21:15:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Sep 2024 21:15:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Sep 2024 21:15:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GDoZWwWRBJQOSIxhqI8k04IHjVjQrWbj0icZYDVBekLfaZW/6luhNthSHzIA56GF4EAvWEG3snocZvQDlcJ8Sy+VDtBZ4O5GoKlWJqe+jEjFrLeJ8vQEo08XSh8HT7P4v2Mjn7DhQdy53mMviZTJ/7JOMyKMKnatS+6sY4FLE6iHkVPdV5YVZ+2iTEj6l2zwmEDEtKpdgCJFVFxU3taiQeMDGeh1DvpIm8IdQTQm8J3O9dBBohJ9TYasuEB7Coj2ZgcObwSp/JdvC4olKcnJKMhaoyLBCRt+elv6wWykYQHoqvM/BIUXJjRGYcvKhF2azLkaU18iqFUgEgffuL7xgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nz/08Af7CMwUCZQwR6aDVwtJ7N6tP2qWDKiNdVDJhr4=;
 b=aUeq4YnFUWwzJxH73SM7OcR4tKbH55nmNhLNY6/ZhhwAzCKhqjLuELr08tx13auUiFWHyulNbIsuBjFlJw2hkyjCpZ/dLk1GjNwu+xUpsy/pmcPyJN4ERldjmjdmT6RQR0NHwuAofFbiqHeJMwLnHwBsbzdnXmtNtK3yPz+vhIQpCAwolx8eJYgQrQ5w+18G8Tnq1SrUGyf2hZ17m5uyludxel4SukYXsyweXTH8GR6dKfzJGf2Qy9gIslLMUbyimAOOxs+r1qZxBFpjNqYxm2iiGo0dJJzDBPOf8l/yxeBI66szmK/hJObLPoKtuk733ZqrV/zbXyHfVfkX6r9ubQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:9b::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.18; Tue, 10 Sep
 2024 04:15:35 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 04:15:35 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Topic: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Index: AQHa/PWpZ+RNVuAGYkG7Qr5vJr+rvbJFu5EAgAnPAwCAAOtnsA==
Date: Tue, 10 Sep 2024 04:15:35 +0000
Message-ID: <SN7PR11MB67504136732324ED7FCB834BE39A2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240902050214.127352-1-suraj.kandpal@intel.com>
 <20240903082450.222141-1-suraj.kandpal@intel.com>
 <Zt8CNhEz5dYpigSy@intel.com>
In-Reply-To: <Zt8CNhEz5dYpigSy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CO1PR11MB5186:EE_
x-ms-office365-filtering-correlation-id: b18cb81a-bf8c-4d6d-f78b-08dcd14f380d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?URgmPo7PsBDEn4CWxreS2vlqXADi/BjE/vN0hMJDX/8ibwSL8MMRpYDj/k?=
 =?iso-8859-1?Q?VjHfxik1JkB4tIjt3MsQ9YdHhvTwebB63kfX6S5w93kmF7J9qxqvBJIacJ?=
 =?iso-8859-1?Q?Har1HIM0F8Ck7ei5lopLzcINXFQSjnh5xpGeSipXMAART5TP480l8BM9cx?=
 =?iso-8859-1?Q?ZnwAnnUHlWlV5q1P9U581s7/x3XkcoGyWYaXpJnUFI0qLUgdZhCVEJLNfN?=
 =?iso-8859-1?Q?VP8jm1a0OAFZ96q928dSR/eVKMxhF9PaUvw0tmwkdiY9Izef8FMTPp7mAC?=
 =?iso-8859-1?Q?eujSz3qgiOjxJPaqEHr95OsudwB4EiXcl6vWMVlUYz2gup5QmajxwiBRK6?=
 =?iso-8859-1?Q?4yDtt15iQa2Wr+7F3e9KsdoQAUUxHHENYkl0eeATURdqnjGK001TXyIDhx?=
 =?iso-8859-1?Q?l9bjMbrMnyZdd41TDFi1XwoIHr0i5p9W6IihdIrATD+WbyYKg7Niym1LzH?=
 =?iso-8859-1?Q?9NKMtMQZL8wd3ChPEkvbxv/SeRu2R4AJ9wWNl1hjXTIU+I/VwuoanGh18N?=
 =?iso-8859-1?Q?Y19f7TdOpN0/pT5CkBqjqaHUTBheLV/Fn/t1iWoRCQhxhsPGgBYPtSAU6U?=
 =?iso-8859-1?Q?xRvC1mOOgYrcgN68TBoaSx/z3GUlq7iHBsuq+m1z+tN4RvCEMqIxpndw0/?=
 =?iso-8859-1?Q?KuoZD7vfby0HMmSrsRdDHFWadKYKm0Ij+/H/ICyC9WKIyaJJYzYZFFaMtV?=
 =?iso-8859-1?Q?xzDrG+9EKp8mCcZH4eeI+5lVbHwuSXKjoB3tIYCEeHmEp0dOToUkJk+0s/?=
 =?iso-8859-1?Q?ZCXO/wmYPq7D9+XUe6XCSqFexX8z0hUUGLzE2A1K0nJzIKFOX91rk5NXLT?=
 =?iso-8859-1?Q?IQi+x3E78idFGGiVH9BxwyZSde7r5VUsEzWgZpBWVeTJIhjLACv5Coc+lM?=
 =?iso-8859-1?Q?QZniEKtu+IyZXdd/KyjKTZutYxkmBqNxt95bqtdjH9nJeQayB3Eqfe1cy9?=
 =?iso-8859-1?Q?p5XHYnEeRizg+PHe++qRRj/UTAPiEp5ZOFOKW7szEpEKMfukmrhLOx+lBt?=
 =?iso-8859-1?Q?DyU649ZgW6msbAyXJJjgHDVIOu6/TCV/mIUGx4Ep5spON85pCLH5kFPxlG?=
 =?iso-8859-1?Q?E/ltrFhfXWCJuFSjwZDwWSz+6iAequEqqLoNIGlCDaP8KV+CWlyNMvpNmc?=
 =?iso-8859-1?Q?OOfHoDna5TQtZ3+s1LUv7mfd5uZKxBaJ9AR7cW80ZIZNIFaJa0D3dd4vyY?=
 =?iso-8859-1?Q?S15iVFH4Ei013p4cWpwaimO4minv9ANbCMn27Vr7xdTA+lxw4UyalSlZzM?=
 =?iso-8859-1?Q?hdf2lSyJ7rwyk2p0bUPUy+IrrKuZ4WdTgdyIxtZjnBWkoSpoCszOHl3Znn?=
 =?iso-8859-1?Q?qu6XwlAUk6iGSV73bSDpl5U02KW4CtY3i5txRiftkjUdAHrkJ4zY4GIcOd?=
 =?iso-8859-1?Q?J60RxwKvYXQiZ5DEqDPSbTF0Y8uCa4U2hvZj0bUK8bqQCchDRujA1AzRRI?=
 =?iso-8859-1?Q?Yh0Sa8z4jjW1ayBU9tayfrC77dG7AZ1po4zWqg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?6aDrCcrhqljAURH8tP2zlsSVCY0jpb3QrY5NHCI24Ljey4aDt0oykUVBAV?=
 =?iso-8859-1?Q?xy7iLWRNKY3uAsl06QZdN9LE6lHOjmNUNEZ/dXHLUDW/xzGIMHO7yEC6A4?=
 =?iso-8859-1?Q?02ZyJ5t747EKC5JDHlHD60wL8BYB9uJJl2xFbvPYhgHIyMe3iMBmwbzglT?=
 =?iso-8859-1?Q?+mB7hx7QrViHwPhYOMzxaUf6kaPSEqLFax6nqQg7HECkOKS8vvTHE7xhNr?=
 =?iso-8859-1?Q?ByByzbTssfHwsBrb4ICHTdlMoqYMEPLpKhW8efNVrQJAu3NnpHVkiaCeR7?=
 =?iso-8859-1?Q?LVhJ1SLAaJY0XBGdk08VhWSjuHboIvKGq4cEjLZR8sDxsf2l2j6o0ia2w2?=
 =?iso-8859-1?Q?H5okgwltW9raMYPTlNydHEaYb4D2ScUEwDmDvyqHYgnPXVh7i8qhq/+3Ly?=
 =?iso-8859-1?Q?Hj0QdrqRKxXtnLWZ+t4eWErzqn3JMtYqDnrFY6oFBkatTNSlv6HoMA7QXZ?=
 =?iso-8859-1?Q?aJ6M9FyTNgYZ9CL9VoJrnah3DKbiI+FtaQSeRUQOEiUy4pTBX+ZOwR5z2K?=
 =?iso-8859-1?Q?dPuklERWOsUlDecnSGbhg8Nbdcjqnxp4nzzKhOso0pZAPOI/yS4AJTcUSe?=
 =?iso-8859-1?Q?2bnLuF81s9MioFpJDNXESLEq2WkJIjVYQhcixXV0h//vSiTK2gzmm4jqgN?=
 =?iso-8859-1?Q?xNU4/UTuMeOWfZJzMbOKtZ/C9c56k22fJxnoDDxh5wov3ZfTPpDw7u+iMs?=
 =?iso-8859-1?Q?OD32jk2/ELcNdBFvylXzh7GqFtakEK4ylFk3AMKdHUPVegpwog73Grj5bM?=
 =?iso-8859-1?Q?C8cA9jjybSwth9KkT4TwVEKGV0J02ixo35VBd0PXUn6SE1OurZw8Xu2Dkh?=
 =?iso-8859-1?Q?YjO5zW+QlCDes79FOIOW1Tn1uWJWCelWZLSZGi6DM2gkeMMvE3XiWZrex9?=
 =?iso-8859-1?Q?zTuCnH+pp3c4+dgxRiapWEoabe+w5MeQ6FLk4i20FS63f/4Hy5x54PaED3?=
 =?iso-8859-1?Q?1psdOE4Q/FjhXAaJZOtpMcXeJZ6EHFRJmm/18CDfnG5bhrtng0xyhw8WVa?=
 =?iso-8859-1?Q?laPd+03ydLWhTZjsca2rsHnMQA+09EireBR86bU1po2z02FpyJJI8RG9jy?=
 =?iso-8859-1?Q?y4WnhZb4CabvPtaJ8+j6MFjLaFUe29iEbP8SlHCa0qmCAIU2OMQznBIoxf?=
 =?iso-8859-1?Q?uITKbr310Ga+EXQn6kvYVbeVgKbUgfDvLX4XgzL0UnGZBQjDrHzLZ0ToKl?=
 =?iso-8859-1?Q?jU0rPpNbTGu3qd+mRh+uKo3lgBgsvrX6RPPY1T6afviXA2PjjNDYfA81E1?=
 =?iso-8859-1?Q?tbI+oghHEQlgoMrp4bNq59kF3l8nhjxfwNsf0+THGgjwZ1fXWNpC8jZ0yI?=
 =?iso-8859-1?Q?Knc9kmoQvt+IDy3dm3mVoYx3MZdkkecFaNMwOkP5fS5t+sTRTyT1S3yyU2?=
 =?iso-8859-1?Q?NHIBFvDPBhU97vZbU3EoQQPE0e/2gBGcGFC9VfYsXexQ/z9XWdCqanERoP?=
 =?iso-8859-1?Q?Qpsy+W1lziGBl1hmHNgZez1aBTnEH8S08cAZagakEM/ulRYENGP6U1BMg8?=
 =?iso-8859-1?Q?dcaCaccnvTXKEWGNu2MQa+tX/e8TNbhy2wjzVSP1PVLQ781vKHuxUCcRDC?=
 =?iso-8859-1?Q?oSRgoYOqcVx8ImT3+IhETIeqMMGoMJ+5dg0Ti3Kh211rB0poRAQ+0bUfVY?=
 =?iso-8859-1?Q?UOE31JumQqEDDTSQTr2KhFFt9tJhZ3JlGw?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b18cb81a-bf8c-4d6d-f78b-08dcd14f380d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2024 04:15:35.2339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CCxThicSJoCbuD/ZPWm/lRVtY5Fjp+HyKSJtFoTD8/cazRx9JjuU+q+YyhSGl6NyWmktkL7+14PbeVEiP5L3uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5186
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
> Sent: Monday, September 9, 2024 7:42 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>=
;
> Hogander, Jouni <jouni.hogander@intel.com>
> Subject: Re: [PATCH] drm/i915/psr: Implment WA to help reach PC10
>=20
> On Tue, Sep 03, 2024 at 01:54:50PM +0530, Suraj Kandpal wrote:
> > To reach PC10 when PKG_C_LATENCY is configure we must do the following
> > things
> > 1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be
> > entered
> > 2) Allow PSR2 deep sleep when DC5 can be entered
> > 3) DC5 can be entered when all transocoder have either PSR1, PSR2 or
> > eDP 1.5 PR ALPM enabled and VBI is disabled and flips and pushes are
> > not happening.
> >
> > --v2
> > -Switch condition and do an early return [Jani] -Do some checks in
> > compute_config [Jani] -Do not use register reads as a method of
> > checking states for DPKGC or delayed vblank [Jani] -Use another way to
> > see is vblank interrupts are disabled or not [Jani]
> >
> > --v3
> > -Use has_psr to check if psr can be enabled or not for dc5_entry cond
> > [Uma] -Move the dc5 entry computation to psr_compute_config [Jouni]
> > -No need to change sequence of enabled and activate, so dont make
> > hsw_psr1_activate return anything [Jouni] -Use has_psr to stop psr1
> > activation [Jouni] -Use lineage no. in WA -Add the display ver
> > restrictions for WA
> >
> > --v4
> > -use more appropriate name for check_vblank_limit() [Jouni] -Cover the
> > case for idle frames when dpkgc is not configured [Jouni] -Check psr
> > only for edp [Jouni]
> >
> > WA: 22019444797
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |   2 +
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 101 +++++++++++++++++-
> >  2 files changed, 102 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index fa03157554b2..6b95a59aba2e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1717,6 +1717,8 @@ struct intel_psr {
> >  	bool sink_support;
> >  	bool source_support;
> >  	bool enabled;
> > +	bool is_dpkgc_configured;
> > +	bool is_dc5_entry_possible;
> >  	bool paused;
> >  	enum pipe pipe;
> >  	enum transcoder transcoder;
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 257526362b39..6eb137ecd49f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -870,6 +870,74 @@ static u8 psr_compute_idle_frames(struct intel_dp
> *intel_dp)
> >  	return idle_frames;
> >  }
> >
> > +static bool intel_psr_check_wa_delayed_vblank(struct intel_crtc_state
> > +*crtc_state) {
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> > +
> > +	return (adjusted_mode->crtc_vblank_start -
> > +adjusted_mode->crtc_vdisplay) >=3D 6; }
> > +
> > +/*
> > + * PKG_C_LATENCY is configured only when DISPLAY_VER >=3D 20 and
> > + * VRR is not enabled
> > + */
> > +static bool intel_psr_is_dpkgc_configured(struct drm_i915_private
> > +*i915) {
> > +	struct intel_crtc *intel_crtc;
> > +
> > +	if (DISPLAY_VER(i915) < 20)
> > +		return false;
> > +
> > +	for_each_intel_crtc(&i915->drm, intel_crtc) {
> > +		struct intel_crtc_state *crtc_state;
> > +
> > +		if (!intel_crtc->active)
> > +			continue;
> > +
> > +		crtc_state =3D intel_crtc->config;
>=20
> We are trying to remove all that old junk. Please do not use.
>=20

Hi Ville this has already been taken care of in the latest revision

Regards,
Suraj Kandpal
> > +
> > +		if (crtc_state->vrr.enable)
> > +			return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> > +/*
> > + * DC5 entry is only possible if vblank interrupt is disabled
> > + * and either psr1, psr2, edp 1.5 pr alpm is enabled on all
> > + * enabled encoders.
> > + */
> > +static bool
> > +intel_psr_is_dc5_entry_possible(struct drm_i915_private *i915,
> > +				struct intel_crtc_state *crtc_state) {
> > +	struct intel_crtc *intel_crtc;
> > +
> > +	if (!crtc_state->has_psr)
> > +		return false;
> > +
> > +	for_each_intel_crtc(&i915->drm, intel_crtc) {
> > +		struct drm_crtc *crtc =3D &intel_crtc->base;
> > +		struct drm_vblank_crtc *vblank;
> > +		struct intel_encoder *encoder;
> > +
> > +		if (!intel_crtc->active)
> > +			continue;
> > +
> > +		vblank =3D drm_crtc_vblank_crtc(crtc);
> > +
> > +		if (vblank->enabled)
> > +			return false;
> > +
> > +		for_each_encoder_on_crtc(&i915->drm, crtc, encoder)
> > +			if (encoder->type !=3D INTEL_OUTPUT_EDP)
> > +				return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >  static void hsw_activate_psr1(struct intel_dp *intel_dp)  {
> >  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp); @@ -980,7
> > +1048,11 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
> >  	u32 val =3D EDP_PSR2_ENABLE;
> >  	u32 psr_val =3D 0;
> >
> > -	val |=3D EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> > +	/* Wa_22019444797 */
> > +	if (DISPLAY_VER(dev_priv) !=3D 20 ||
> > +	    !intel_dp->psr.is_dpkgc_configured ||
> > +	    intel_dp->psr.is_dc5_entry_possible)
> > +		val |=3D
> EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> >
> >  	if (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))
> >  		val |=3D EDP_SU_TRACK_ENABLE;
> > @@ -1595,6 +1667,32 @@ _panel_replay_compute_config(struct intel_dp
> *intel_dp,
> >  	return true;
> >  }
> >
> > +static void wa_22019444797(struct intel_dp *intel_dp,
> > +			   struct intel_crtc_state *crtc_state) {
> > +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > +
> > +	if (DISPLAY_VER(i915) !=3D 20)
> > +		return;
> > +
> > +	intel_dp->psr.is_dpkgc_configured =3D
> > +		intel_psr_is_dpkgc_configured(i915);
> > +	intel_dp->psr.is_dc5_entry_possible =3D
> > +		intel_psr_is_dc5_entry_possible(i915, crtc_state);
> > +
> > +	/* PSR2 not handled here. Wa not needed for Panel Replay */
> > +	if (crtc_state->has_sel_update || crtc_state->has_panel_replay)
> > +		return;
> > +
> > +	if (intel_dp->psr.is_dpkgc_configured &&
> > +	    !(intel_psr_check_wa_delayed_vblank(crtc_state) ||
> > +	      intel_dp->psr.is_dc5_entry_possible)) {
> > +		drm_dbg_kms(&i915->drm,
> > +			    "PSR1 not enabled as it doesn't meet requirements of
> WA: 22019444797\n");
> > +		crtc_state->has_psr =3D false;
> > +	}
> > +}
> > +
> >  void intel_psr_compute_config(struct intel_dp *intel_dp,
> >  			      struct intel_crtc_state *crtc_state,
> >  			      struct drm_connector_state *conn_state) @@ -
> 1641,6 +1739,7
> > @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
> >  		return;
> >
> >  	crtc_state->has_sel_update =3D intel_sel_update_config_valid(intel_dp=
,
> > crtc_state);
> > +	wa_22019444797(intel_dp, crtc_state);
> >  }
> >
> >  void intel_psr_get_config(struct intel_encoder *encoder,
> > --
> > 2.43.2
>=20
> --
> Ville Syrj=E4l=E4
> Intel
