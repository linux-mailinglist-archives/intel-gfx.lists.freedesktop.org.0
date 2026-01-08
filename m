Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D88CD018B9
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 09:17:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2AE110E398;
	Thu,  8 Jan 2026 08:17:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j2+dAlES";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4810410E398;
 Thu,  8 Jan 2026 08:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767860244; x=1799396244;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=25+6AwTNSIIZmvzPEi7cXbyP+k+3OjYtR4XnwhfzTDc=;
 b=j2+dAlES7G8QaEFhuaCiiDvN33oKV0umuiTFhn61cWdZpHMz7YDuF/R4
 vUbQKkTlLqrTIxcNcGAzjGScaRmEHQTUsskfORXTZ69bTSY6qq754D5O1
 L8ztFYKc0kNdxQv/Q2Lu4vqf5ONqBZidVEx3ApvG3nwTogZE5H0A6+HcK
 5m+QtxCjj/RDRsp3zA6d3ufQKw0TIGDYdr47luLnIzJvowgJbKKaSh9CG
 ZDfs+7Qi/3zmfyMlhjXmz9KqGeAPLKc6WLGW4nBQtQcvB9mpi6qjbc+8y
 jL1KnIYMGY2FwodBgBSbYKLpxbfveUd48MjXHU/3bkOJqS6LQodu+OyyR Q==;
X-CSE-ConnectionGUID: C2AZ1ICQTiO7TeaqniAPWw==
X-CSE-MsgGUID: 8TYE2JlcQ9GMoy6/2R9XJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="69215021"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="69215021"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 00:17:24 -0800
X-CSE-ConnectionGUID: ff32S7u4SBacrLwlWyMA7w==
X-CSE-MsgGUID: E0UGRHP0RA+GHI1vJhirDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="204014496"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 00:17:24 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 00:17:23 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 00:17:23 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.17) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 00:17:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WQsze6uPXj00j+cqjRk0shce9eOuikdi6rKBZTCrrFwX8znUYzrwWa3fLi8yAufx/pRkDLIcUMvg/kka+3tL1lnEPFF5z1j2zNJlQpd1lv8KNw0Y6i7UsMz5btmPqSDPQltdJRVGsaB/j7Zw3ywAYNvZEYmU9GlZugUS9umNYF/8OgpQqO2xvzh/582iB3Z/IupP7DfjLCmuw7hK3ilwYBa2WWc1EQt4ijnOQF/8Pu5ciPS6PBUXjEyDZVtO8WMaMEBW5PiE9sHLGnjTmHEKJe0Lu+brriGAq7st3GIUi3tqtxl1TSHkGJ5W1mD7dDs+fhIw0/CNxhhiPvzJR3jmhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ETWdzAIS92dwys32UysssSTNMVTmHXLmjBqNCTyEa4U=;
 b=SFQ2ew6a5j+chtvpm4pK5tFbrV0hBc0wGQNEeNw/qExRAfE9+I8YXhpJG8DhimpcalFP8DkAGXtMs/eKi3NH2LgPDxrPAEEk+KqqCUo87NthNz6KAJKRsYMq/rGMsZOoJhlMDgLLBVGxcBkyeUpUGYcv1CfnQn0U2vAI8Fs47w7DY3F6KUXJEgu3b3htZFksIu5DzLEgp9J/vSOxHbK1WPHxnaYklsxi2fzk+IdYb0jsU3LUlfREAN48M/y7vMqMd9Wb229v9zx2wmuoTQsyBcx/95g5CTbXTPPau0dHtJrA7BS7Agc5CVfplj65m87d6qmw1U1UiRtRQzZ3O6Bk+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 DS7PR11MB9474.namprd11.prod.outlook.com (2603:10b6:8:265::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.2; Thu, 8 Jan 2026 08:17:21 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%3]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 08:17:21 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [RFC 1/8] drm/i915/cmtg: enable cmtg LNL onwards
Thread-Topic: [RFC 1/8] drm/i915/cmtg: enable cmtg LNL onwards
Thread-Index: AQHcV7sVGlavxlDnqUe8lkN7pGj5ErT2+oMAgFFEFkA=
Date: Thu, 8 Jan 2026 08:17:20 +0000
Message-ID: <DS0PR11MB80492FC84E850729AAB46B53F985A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20251117114216.1522615-1-animesh.manna@intel.com>
 <20251117114216.1522615-2-animesh.manna@intel.com>
 <233b0f125ed2caa3f8c06de970636c0d92ca79af@intel.com>
In-Reply-To: <233b0f125ed2caa3f8c06de970636c0d92ca79af@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|DS7PR11MB9474:EE_
x-ms-office365-filtering-correlation-id: 4868b2a9-5639-4393-9d39-08de4e8e587a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?KpyUVhJ2yDD7nycWhe9yPKXMQZepBfvvCGkmTvr13VLM+2To3q4p0VNZTlfj?=
 =?us-ascii?Q?VrpcKHUqlTHXrgwq2rexMqEbbod8etj7ALU2+ogq1NyOC33Asyk8Z3Fxn4+y?=
 =?us-ascii?Q?SAbWgYciHqHtvS5DvBUJAXbkHntPq0PIP6tjTS/OQh4r16S8LOlkHjPQu5r3?=
 =?us-ascii?Q?EsDp+sAhpYRJturzYC90gEz3gebUxWSktJ/Cqo6PBm1FixPzTJSbvuh/zqmp?=
 =?us-ascii?Q?1Vz6WrXXU/k6xeaAXto1cQbGqqQyO2YVLlmYk9ZGh9DRa40L2sFLfHFXI/LY?=
 =?us-ascii?Q?0rZcS3W4x7gXTL/+qRrDSJ8g/wc9sDBg1UP8orbKNQadbHF+AQALPBDEFjip?=
 =?us-ascii?Q?U2vb5DzK6j7BCq+JvvEAnhdSmE3qRfLKXxjE8AoiEg4LgEfUI+3cs1SEcdkL?=
 =?us-ascii?Q?d2HxUJymFf0PE+5iebgriW+wjGxozzjwDCNgpeJmlV3UyUp/eG2J40a5nWod?=
 =?us-ascii?Q?94IuKG76m7ZyqGo0Gro1Ed9irSOLzdWnCazQjwp+/dSxBvybk4z5K7IlIrtE?=
 =?us-ascii?Q?/uZIFp4egsejlEYNCUvzZZevxi8cE7l2trTHmE2z54wr/rsIfCV3QBa/25RB?=
 =?us-ascii?Q?bEMcwR8HXO4UYAiOZUqqo0EziMLzbxjeBh4107c7G/Y0L4zXbn8Vj8u3ZSW6?=
 =?us-ascii?Q?MiBuBzll+5IkSp2RPuhRQdCn6UnpnMU9ORIEJw6mEcTjH0p5h24h9KC7KSIT?=
 =?us-ascii?Q?Ya+W0kWHhFHvJMpbIg9Jc0d5sLeUeAmzrr1ZX1Tf3lnWXyOAWJ5HvhNxz01+?=
 =?us-ascii?Q?AF4EaeZ7tBUslquraggQGWh+uHaNlcw0NhxP3gS541KX0GpjXdifontB7XAk?=
 =?us-ascii?Q?Z07CPHEMJ9RcWF/wawPKGhuuEJ91bndcXg7FV5Qfb/0ot5SKj2T1SgCcUlnf?=
 =?us-ascii?Q?P9noiKc5acVmX8JV3/VaRrOs/ktbsJFJgmTBGxsisXGtPQmxMy9KsN1+JCCx?=
 =?us-ascii?Q?S5zHNLKYNQp9GZSwcviRD6zDgFQGh9kTsafs/dsJ9WW160N9xPISump+a8hY?=
 =?us-ascii?Q?yiGvzWN1vPxtvqCnVVhQ4HVzX8uOe263xV3jUJrADHczsV8AKyOKZYQ3SHVj?=
 =?us-ascii?Q?mVK5KiMb4TC+5IQBlrK1rK/6DaHrvFltnhebPpnwUbq9CySUEJBRlUX+mMPI?=
 =?us-ascii?Q?awd/EtGlkHj/oVWz95IdRAl9NwHToar0nj58i52V6HZXNY/yF8cg17yOfgW5?=
 =?us-ascii?Q?vpYmIlTLszlClrVogJgMwJYGi2ZEKqLy/CGuTcn2d36qkzpFWYQ7MO4C6c6R?=
 =?us-ascii?Q?c/6hQ6lE7hi2mMNi1Ukas0ZXwXuJEGlIzogdcA738ie9wt966pTLOtG/d2dL?=
 =?us-ascii?Q?tXdW87Pnkj13BdLHhERfA6L4C3Y+gsyINWpcHqX/dOFJvqqfZk+iv50Msi4s?=
 =?us-ascii?Q?7Z9r3iWL23+lP33srFtp47eBeTU6vltWmMefltbjVjBkSvjZRRgEwhulBEic?=
 =?us-ascii?Q?6JeFxviHsaIldq2OsYGu2V4PEQAuTZCfqxRT2pxnq/9NpXPm065iHjIuS5wP?=
 =?us-ascii?Q?EzdLUA+2C+sMzLmlf3etz66vZVNVi7iRG2JI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LA6qCBE/dXpubRTm8dsxrHmxETbtliL6WTX1Aja84Nrd69xjWY8TOCvDmFTz?=
 =?us-ascii?Q?wwspsAYeKI+0TX1pTktYZu6RjQHfoD4uykhpQAP+YdSfHOdohFYhlrwpKBvK?=
 =?us-ascii?Q?C/oF9WKOMkGJiMpuUmAVAV+V4FhhxfkUyktcu9w2i5+AtXn7tP/C2bEWrGj/?=
 =?us-ascii?Q?QbifnPLE7gVeBtVn26Pxhvbh9J8QaABp1fl6ZCr2h2KoG7mxQynl+UXVlpc1?=
 =?us-ascii?Q?uVeoyROniVzAKucSyxzndRTB7k13ktmey9Pau8y4i76KOoLfT0X5MvRjEqG+?=
 =?us-ascii?Q?1xPYNQaNK1gvNpS15dehBEeGTbFj3kEzI1TnzbNLLWhVv1h/1BF5osmsw+zD?=
 =?us-ascii?Q?X9bcK/twT0c6+WSgI2CVWueq5ENbMwHQzfT681zO8Pn74PYnzYTsfApDomuH?=
 =?us-ascii?Q?/lBdYpkrFtj3KunvoUPx5BKe0vjgA6Jn2KfWiQh5q8J2TmseOGiRpWIsPpOV?=
 =?us-ascii?Q?hbs+I03oGF9YQZeC36EPuJqXvxQQ3xU1AtEzU9JO0GZE19C0K4sr3JJTAlpS?=
 =?us-ascii?Q?0qB0YbCNpYMkOl8qMS7VUpg9+VlGnOJlwuvRFA2DI2agSExGBmRLfZwx1Jgg?=
 =?us-ascii?Q?q2hGep74M0hl9tKkq33iXyRVl9S6gEG6TH7s56b7dTQpBLxMUL7oeL3VbihO?=
 =?us-ascii?Q?Wt+vsjTf/HgEy1EAl4yd/4kKQ2ju7A+nhpPX72t9eHw4Ehx0+9IzVXkXHI4c?=
 =?us-ascii?Q?tfQtVrM9eU48w75wlMwy+h/Hxp+Ta3HKyWMHwM8zx9WT4h/x8PunwwUpKXu2?=
 =?us-ascii?Q?e+EbsGLCFznM3LfwVVP+okbZJ4C17/YYkrekQwVv3yCH3KBt9dzgcc4jtEZg?=
 =?us-ascii?Q?/ObMTmmX3f9OEMWIHMz9xy7b5F+BbSOYjscS3nL7O6k1LroMqSEmCeoGaBkS?=
 =?us-ascii?Q?Rh45y4CBUjCRJb07hJlr7mQ8NUhrsknI5Ahsc4+g9xZYwERDAZt+qfBP+VFh?=
 =?us-ascii?Q?RJMtjmEUr7PugzLcEThsXtV/g6lr5p2sYKAHuu1Cr3iK0NhSlA0T9y9tBKN+?=
 =?us-ascii?Q?XW7sH0lQEgVHN6+OcNe/1vcJIlciD43rlpmnIkXzmfdDVOqk5vF1qEeGfep3?=
 =?us-ascii?Q?H2WEQ5yvQh8DYoqDTNNet/jaEl/CEDHg0XmtLzpWF3tHWT0Q2VPOiOh5Gh/p?=
 =?us-ascii?Q?Qd94xB6TgevMW8j9OsjDfZ7B4cL+VuSIa2Qj1Rj4EkqYUJfmbPdnCj4t3rWY?=
 =?us-ascii?Q?H3kWfnBV/w6S7uoEdnJudJG8RXsW92oBkIj7qgC4aRDdstIWTyRnMI6Gkc6a?=
 =?us-ascii?Q?FG/AX0efjvO7YqPYwrMAVTRYaZXidqoem1Xo02TGXQDksAljPYGW5lYcnSwu?=
 =?us-ascii?Q?PFRan3NCgw7Hivm3tv5o7zaVT1g6Kk1IbEIUPuxH230tH3o84M8d9Yx2n/fH?=
 =?us-ascii?Q?srIzl6UKB+e5iqFtdT8v+QwNOD3iPIEOor3k6jnaObV0Sx3PzfvqFSmlzRA8?=
 =?us-ascii?Q?pMHm6P1NbS7+bSJksf8ZU6dgGUyYs0/gXhQ/97NEOluyfC2agIi8xHPKiF/M?=
 =?us-ascii?Q?L/b4Afb53JkZ8CaXFzeONriaIloasYvz4/BvXqkM9NRB2kJTrtCB+WmgFfbm?=
 =?us-ascii?Q?LhzpwZdGtQVNaCDBsb0qFaznRBlNynoXPkXH8zPjBJc7UQnVEKPy+Y2b2oov?=
 =?us-ascii?Q?fRDl0ViUtHC1sxVjoVffAMStLjM+XbF/Z2M1cPaGVXoFUZAgAmy1UiWeTuKg?=
 =?us-ascii?Q?J4UFBZIVTPABou24ZWR8+ve1eqwgx/Jp5NYtDnJkkUhXxqT2UvQ+Zvn5QJsa?=
 =?us-ascii?Q?MN+8Ux3MCA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4868b2a9-5639-4393-9d39-08de4e8e587a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2026 08:17:20.9457 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roJtsONjLDSwaLKEQ6/6BTCP/XZBBlrH4F+qz2Z+NOEdqrVDoU3Irs/wDvtTJrU8tfE7vHeTNZFX8QAtRJSghA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9474
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
> Sent: Monday, November 17, 2025 8:45 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [RFC 1/8] drm/i915/cmtg: enable cmtg LNL onwards
>=20
> On Mon, 17 Nov 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> > Introduce a flag for cmtg. LNL onwards CMTG support will be added.
> > Set the flag as per DISPLAY_VER() check.
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
> >  drivers/gpu/drm/i915/display/intel_dp.c            | 5 +++++
> >  2 files changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 38702a9e0f50..7b8343755c90 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1351,6 +1351,9 @@ struct intel_crtc_state {
> >
> >  	struct drm_rect psr2_su_area;
> >
> > +	/* CMTG Enable */
>=20
> The comment is useless, it's literally the same as the member name.
>=20
> > +	bool enable_cmtg;
>=20
> Please let's add this stuff in sub-structs, we should do it more in
> general:
>=20
> 	struct {
> 		bool enable;
>         } cmtg;
>=20
> > +
> >  	/* Variable Refresh Rate state */
> >  	struct {
> >  		bool enable, in_range;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 0ec82fcbcf48..3f7da4c08665 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3421,6 +3421,11 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
> >  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
> >  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp,
> pipe_config, conn_state);
> >
> > +	if(DISPLAY_VER(display) >=3D 15 && intel_dp_is_edp(intel_dp)) {
> > +		pipe_config->enable_cmtg =3D true;
> > +		drm_dbg_kms(display->drm,"ANI-DBG:
> intel_dp_compute_config\n");
>=20
> Please don't leave personal debug stuff even in RFC code.

All above feedback have taken care in next version, currently debug ongoing=
 with flipQ, will float after that.

Regards,
Animesh
>=20
> > +	}
> > +
> >  	return intel_dp_tunnel_atomic_compute_stream_bw(state, intel_dp,
> connector,
> >  							pipe_config);
> >  }
>=20
> --
> Jani Nikula, Intel
