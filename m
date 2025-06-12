Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6542DAD78B7
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 19:13:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A26310E0D1;
	Thu, 12 Jun 2025 17:13:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IMqmGoPt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D09C10E0D1;
 Thu, 12 Jun 2025 17:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749748392; x=1781284392;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aDFImPf2JaSNctt2Rh2Kgl34el8YmFw98Tsy8G7plwo=;
 b=IMqmGoPtqy5DGaNZJJxLDr4UISkYXLQ2j9d0bg8apAz2V9JGWjpG9Ox9
 VaIq3p/nuisHVnOsTDY4LWxUpgySoE5Qn8Bj7E2d4Ttykjlb3UF+mFvSU
 salG3J0mHd2zMYnZ61SUTcaLarp2YVEySDKMm3mxjfhwETSLYhAwPT/b0
 LCo3vlGKWVExH4pTr3D2MN0k4+Ay8LYfx7WfxxQxbPTFYpmdkNeOaEhgj
 YsTTTjXBtRHlTGU13v8UNuG8xZO3Ok1RdOS3dcNu/z9dzkdaFfV2QYo2f
 0VvVtyoPl0bQAvzCeQ6+gHqWhqrWa+GNuHT50Hbh6S9FNArqIEgje0P53 Q==;
X-CSE-ConnectionGUID: DnJartelSkm1vFGjUUcytg==
X-CSE-MsgGUID: Y7JwsY+MT1OniIgWUodAkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="63290981"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="63290981"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 10:13:12 -0700
X-CSE-ConnectionGUID: yNIZk6YBQ1G+gxLEYHn8Mw==
X-CSE-MsgGUID: DVpy6IqMQTeG9+r6ReR7Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="147443374"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 10:13:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 10:13:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 10:13:11 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.54)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 10:13:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rr29oeMd5SJYGaR4NEaJQOOAd/8EVYTfwSxw0tRGfSATzAWvKytNyG77PjkLPD0FTJSp09y4WUcQeIZZjVkvgPpAA+kY8Q0Uba4VkBpvRwaPPXwg8WC3y5BqE8OMdwQKqDdUKiZ5e84GiJoI5URcmzg8mTfW7p5C6MPWqSFODlbLwgHThSiPoeBbCN665RnOzjK2yw0a92B6TLVRUFQn6JCw8nLojRQka3HITLmnQyerTlKz+4l0dABnREVte794Jh2CgVZ9TJLAnHPW3+OW95FwRVg9F6Dmr5QhSpRqNt1FfXIXr4Uy1VPjy7ytmYKdQ8/Uzy3Yrrw5GPWIfITOSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4po9buVUgkCSk0fWNHz1CDbiNIarXFnL4gtOnI6eZa0=;
 b=cq4s4ASSOUTYfUv28ad+MfUwzMVLwCL2S8P7cB+rmlkFDGZ+bBvymSMa8uc2FKgxfLnogk70J0zTKqygAnRE/qwxB7rjUUC3RHr49nS8/1nz7637hDn6UMfdx0+PG/45dLShQttB1jNsHQcVmuw1myVXJrf5JP8fuwPaR7kGd4pAlIUqiGiiKX378QP9FA2f7STrCCldjqwJxScTCGgQJn/7XjWF6S50UqFNW7G94cY055JHtXj6WAz/qJ1EO1uwxKKo802KOtgUdHFAiJX3AAMOJaBOm26P8gPkIuPwWEPykKvU8jxYk8CbeOd4brBezmH6nizQrQ3oyRubVIKWYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.18; Thu, 12 Jun
 2025 17:13:03 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8835.018; Thu, 12 Jun 2025
 17:13:03 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Pottumuttu, Sai Teja"
 <sai.teja.pottumuttu@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
Subject: RE: [PATCH v4 2/9] drm/xe/xe3: Add support for graphics IP version
 30.03
Thread-Topic: [PATCH v4 2/9] drm/xe/xe3: Add support for graphics IP version
 30.03
Thread-Index: AQHb2tb+Ech0siRhxkyEgzTDsksdm7P/FsaAgACiEwCAAApF4A==
Date: Thu, 12 Jun 2025 17:13:03 +0000
Message-ID: <IA1PR11MB62662B9D08D36D0CD6DFA72CE274A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
 <20250611134431.2761487-3-dnyaneshwar.bhadane@intel.com>
 <142f581a-42e1-4e34-a1d4-e15e8970d634@intel.com>
 <20250612163010.GQ6239@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20250612163010.GQ6239@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|LV3PR11MB8508:EE_
x-ms-office365-filtering-correlation-id: ce9b9837-14a1-4c53-6534-08dda9d46400
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?jkU3oweOgHTroMXlcW5cIm5BnmnORiu0qrtcje9+ZFYzMy9Nc40/IirgDfpS?=
 =?us-ascii?Q?8fJy2gOksU78Jx/CgMikoHlpvBfUtOii94h8JU7jj/mO5iCMsqX+si7UVRVX?=
 =?us-ascii?Q?EDMJqlTdhnTCgYWdzEUbkUbMs4OpMVioXnsb2ifN6qBHyQTAuX4xmobGTL1J?=
 =?us-ascii?Q?ZAq6N7Yj1ZgbvcbRPw5jRMRd1BH/lGWmGnIUk/7CaVYS5ud4qiFO+AWr5Qos?=
 =?us-ascii?Q?3uyxF4qAbbfqyob0i7XFOoJ3MhIdKEeXIOMXLYOpoPHO3qo2ynC5gwNhH1O0?=
 =?us-ascii?Q?c2zJy9ch4kWdtZKOxS8pgOiUjVmjlL9JjWz+VMMOJGIqKNvq3Wx4RsEHogZp?=
 =?us-ascii?Q?gPB1C8/1XIw1/Br4dFsq82K0PAWBTPo5wrAzgfCXjjUSroYkMB33/VOjGLOH?=
 =?us-ascii?Q?0nAJZPyXYsaHIuLBc9dLL6vskGIhoRM7u4GvGo7WAm3R6ykwWCORE8PXn/ga?=
 =?us-ascii?Q?aOA/m+4WM1OcMtawVhXAa+T9B8ExpP6r5MoLubpcfSKvDU8XQwHRM4aswW9I?=
 =?us-ascii?Q?bEuITSD9BGlOPPEf7ITsL5mebuoOv7zIDinLqF6GxM7UQzHwYl9Tr4HkvqFQ?=
 =?us-ascii?Q?7GfOYoc0PN0LqyzlnWyv+icgl2KchT6LeNurYV1uwBX3GLbr6zqek8vpekX6?=
 =?us-ascii?Q?39AISd+ZLHF+D/SV9HFNr4zWsnjt+LVjqmCkUmpZldznEAxwYB3zyji3sR4d?=
 =?us-ascii?Q?UqqiRen50224tyWAVoZHSjlh78hLaNiiEKUg6CoHWQCzVBo0AIGPk3CCmLyT?=
 =?us-ascii?Q?KiKIwvwlcV2qLvCQO0YruuduWwZPN/UdqKRD8i9oBvnBZrCf2LRbTZInEq2R?=
 =?us-ascii?Q?Xr9Hq8uwLWhZSW/ggZQOobRPQJHDyoIFhUQva4b3rXef5CXG50bCDkUM4uU7?=
 =?us-ascii?Q?mxDIlJczzZFOnTne5eL+bcFcZWbt7hvcyEgOTZ54ciHGgkR98/5bSh3iAM3F?=
 =?us-ascii?Q?y6q5H1IyKDQecVW6MNL5uqSag2ZmOrc4/8pw0m/R9eVrzKfgBYDGKnJsjYGv?=
 =?us-ascii?Q?APxWYc2wLs8VJ4YASiKcjzIEYkxtHS1xs/QOfU1CZp/L9XCnHZlNdyF/U/k0?=
 =?us-ascii?Q?qFKT5tpLEMSBK1nstigaQ7coqCf6msfaARbwtuKQhNE7ac0gV1NvBXpr4EYT?=
 =?us-ascii?Q?WrLy0wQtKCJvk8D51Dj7oHu1MZ4au3NaBR35y7upuiVHtOCS0NQR0+QAVuJj?=
 =?us-ascii?Q?NzX16bXIiRZOINKdGHbhyvhxykS59KpR4HAs8YdbPuofeKkCQayRk8MpBGf8?=
 =?us-ascii?Q?BmjY+qkcfP8GFDmOlR9VI1gVRG0mvKNYbqdRFXyfypFHVZyrwVmGhBeLDKUF?=
 =?us-ascii?Q?VqbCK9r6/leYus21o+Cb5ZeSqP/k+EmJzDiircja4BG0pioOue6g5/lkeX5P?=
 =?us-ascii?Q?xmnnH8XeA+a16WOhmAmViCzPyJy7sPIQaPJwdy9Q1DCi140WieX7s9qMS+AF?=
 =?us-ascii?Q?qxAkpU1a5g8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XPJuLwg2yYUIBP48JXkyXlrptt9e7bNXsC3laLAhD4qvoszFjoBorTCymwXY?=
 =?us-ascii?Q?KFEK4gBMo9k20XEZeetYd4qeEcFPDx8UXB/nQ2KLZBHLKHIpkZ+mV6v7eQ03?=
 =?us-ascii?Q?PJP0BjabQjd2xOh89HppkfB1Dq81vFYeO/BHw5InClsVaV5GUcCql4yzNbI0?=
 =?us-ascii?Q?ymakY4tuwYvi6b87L+PTdBKw0AtHmwUD5CVOQvp3pXoaINALP9yf2PLW7EDS?=
 =?us-ascii?Q?oD6CYjpBrL2ak19xLyvWcqvIfOaiyhEJSL47VRemeZOo8SXNuJa4g4YrR/hH?=
 =?us-ascii?Q?wDrfyy4Wsocsi0fA2zEexTZ6Uo9Hn/hc76EzqfGqGHTSo8wnUM4gpNTK6LW+?=
 =?us-ascii?Q?xWRc8/ZsiFaA4MfHn3NP92psplyjIQ+dJUy/40UUopj+KURnz27UB+oHTc8p?=
 =?us-ascii?Q?Oh/USoFbGj1y9EUZ2mZpJhN/ub9yecATEHw06swniIM9/kueRQBSYdXt6dA4?=
 =?us-ascii?Q?7AXaOR3XVo3TnzMvxUI3Wj1rVR0Kbc2NAI7lWSiL+eU8fwX9rBf3FXM7P1EC?=
 =?us-ascii?Q?a9dHvIC0oGWU+V0N2N0J1pul0QcGPoCQMq04KkmKVCojuzxHYfYZbpW6XIaF?=
 =?us-ascii?Q?E0BdtZy36B37wDIEmW6OJuk+O5xbaPzWB5/Q3bgXHW/jIIbUckG77L0SvZKw?=
 =?us-ascii?Q?I7gg/IPfclVMVSgWXtjUOSmZ9BfG2sUkFgjK+FaJ6xQayRTZu0KK+W1T8vro?=
 =?us-ascii?Q?uVEi3bQvURLVo/Hx0vXVG3ArvL2/0S2NtsYYkdA6zfLcLbvDyY0g6M9aCI1O?=
 =?us-ascii?Q?S3kYUWdgg0eaaaXEUfngCS6XjB5iDONIHwjjFtV/Mq/CO4CfFpEij5ez5q3v?=
 =?us-ascii?Q?EemjOn24nUfX4njgqp4S457qltG6HbZO+UEEsMKKCSZqhIfEk5OZ+DQj3Ex/?=
 =?us-ascii?Q?Bn/2JWRPWOy7UvfvfK2KW6dxY0d4/nqZWW3ntcxyypwmljZgmuIvuKhyYkxA?=
 =?us-ascii?Q?+4wy0GbrQA74+rLiJAF/ZdW3cvHwTXMIUEVUtdXFZVyOmgGYpUycZXuj1loV?=
 =?us-ascii?Q?X+Iw9ue4aN8WxtfaDRRIm6u8QvrdyNxxyR3MS5IMr5BKYHI0/vAikqTaFYf2?=
 =?us-ascii?Q?x5o6Mz64XtUh/jeRZAwQDHVldfpIwO1rI8WIe0vW2U4Cz47NMIpwFz5uAQW6?=
 =?us-ascii?Q?0zCXwa98ZT3Sca9oZUA1JK+Q+MWcXzkxNuoYYL4HBD+a3FhxRIan8inI4K06?=
 =?us-ascii?Q?fLJNihwlhggXSqOUNzxnyP4g6MTMFBjdcxKsG8/0zmMVerjzAuMFyCq9cYvz?=
 =?us-ascii?Q?E5C1/tv/MHmcaFoSi+LbVlPfjHfoPVsJ0BTda4ZgM35ij8DgZeoNON+hQttJ?=
 =?us-ascii?Q?MJ19BsRuovcoeU13PlbZeS+6zh0V5uLsmIChRY2DbTMj3h2/iMoYeVLKu+Vs?=
 =?us-ascii?Q?IC7OBGpxp7Ky63RuWRdIyQGCMMzfJAUdad7aR9vWOWBFaC3tvIf5T2/z4dyR?=
 =?us-ascii?Q?klcvyYy9K3GC3Y6O8DUVHlK23AqFtvK6T0CUO16Yw24TOqvUTv2Or/6D8c6C?=
 =?us-ascii?Q?iCRlw7svgkW/WKiPqo2sv3Kf0KmAPdrVzYkFC48mkkSdn6m92jrXglvni+S2?=
 =?us-ascii?Q?VXOoxRqre95zlLFw3FLcSXRRMXuSSLlnOnaiOUtReXMqTU737WniSjqy6xXt?=
 =?us-ascii?Q?/g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce9b9837-14a1-4c53-6534-08dda9d46400
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2025 17:13:03.2338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jGByvl/o+sTCJwYAJpHumSxbGOLvq0jjPOJiLrs264Dxu14yWpsEgSnP/b6xnZoioMd6B7t8qko3fUKfxUUt83P5At51x2oMff6Vp1dfWkw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8508
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, June 12, 2025 10:00 PM
> To: Pottumuttu, Sai Teja <sai.teja.pottumuttu@intel.com>
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH v4 2/9] drm/xe/xe3: Add support for graphics IP versi=
on
> 30.03
>=20
> On Thu, Jun 12, 2025 at 12:20:05PM +0530, Pottumuttu, Sai Teja wrote:
> > On 11-06-2025 19:14, Dnyaneshwar Bhadane wrote:
> > > From: Matt Roper <matthew.d.roper@intel.com>
> > >
> > > Graphics version 30.03 should be treated the same as other Xe3 IP,
> > > but will have a slightly different set of workarounds.
> > >
> > > -v2: Merge and extend the WA onto existing entry (Bala)
> > >
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> > > ---
> > >   drivers/gpu/drm/xe/xe_pci.c        | 1 +
> > >   drivers/gpu/drm/xe/xe_wa.c         | 2 +-
> > >   drivers/gpu/drm/xe/xe_wa_oob.rules | 7 ++++---
> > >   3 files changed, 6 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/xe/xe_pci.c
> > > b/drivers/gpu/drm/xe/xe_pci.c index b5559800db7a..8824a8016b1c
> > > 100644
> > > --- a/drivers/gpu/drm/xe/xe_pci.c
> > > +++ b/drivers/gpu/drm/xe/xe_pci.c
> > > @@ -183,6 +183,7 @@ static const struct xe_ip graphics_ips[] =3D {
> > >   	{ 2004, "Xe2_LPG", &graphics_xe2 },
> > >   	{ 3000, "Xe3_LPG", &graphics_xe2 },
> > >   	{ 3001, "Xe3_LPG", &graphics_xe2 },
> > > +	{ 3003, "Xe3_LPG", &graphics_xe2 },
> > >   };
> > >   /* Pre-GMDID Media IPs */
> > > diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
> > > index 67196baa4249..8693d098aa9b 100644
> > > --- a/drivers/gpu/drm/xe/xe_wa.c
> > > +++ b/drivers/gpu/drm/xe/xe_wa.c
> > > @@ -609,7 +609,7 @@ static const struct xe_rtp_entry_sr engine_was[] =
=3D
> {
> > >   	/* Xe3_LPG */
> > >   	{ XE_RTP_NAME("14021402888"),
> > > -	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3000, 3001),
> > > +	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3000, 3003),
> > >   		       FUNC(xe_rtp_match_first_render_or_compute)),
> > >   	  XE_RTP_ACTIONS(SET(HALF_SLICE_CHICKEN7,
> CLEAR_OPTIMIZATION_DISABLE))
> > >   	},
> > > diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules
> > > b/drivers/gpu/drm/xe/xe_wa_oob.rules
> > > index 9efc5accd43d..5c0d8b720946 100644
> > > --- a/drivers/gpu/drm/xe/xe_wa_oob.rules
> > > +++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
> > > @@ -32,10 +32,10 @@
> > >   		GRAPHICS_VERSION(3001)
> > >   14022293748	GRAPHICS_VERSION(2001)
> > >   		GRAPHICS_VERSION(2004)
> > > -		GRAPHICS_VERSION_RANGE(3000, 3001)
> > > +		GRAPHICS_VERSION_RANGE(3000, 3003)
> > >   22019794406	GRAPHICS_VERSION(2001)
> > >   		GRAPHICS_VERSION(2004)
> > > -		GRAPHICS_VERSION_RANGE(3000, 3001)
> > > +		GRAPHICS_VERSION_RANGE(3000, 3003)
> > >   22019338487	MEDIA_VERSION(2000)
> > >   		GRAPHICS_VERSION(2001)
> > >   		MEDIA_VERSION(3000), MEDIA_STEP(A0, B0),
> FUNC(xe_rtp_match_not_sriov_vf)
> > > @@ -57,5 +57,6 @@ no_media_l3	MEDIA_VERSION(3000)
> > >   		GRAPHICS_VERSION(1260), GRAPHICS_STEP(A0, B0)
> > >   16023105232	GRAPHICS_VERSION_RANGE(2001, 3001)
> > >   		MEDIA_VERSION_RANGE(1301, 3000)
> > > -16026508708	GRAPHICS_VERSION_RANGE(1200, 3001)
> > > +		GRAPHICS_VERSION(3003)
> >
> > Can we merge GRAPHICS_VERSION(3003) here into
> > GRAPHICS_VERSION_RANGE(2001,
> > 3001) above just like the other WAs?
>=20
> It would probably be better to go the other direction and break out
> 30.03 on those other workarounds so that they aren't incorrectly applying=
 to
> 30.02 as well.  We don't have any platforms using 30.02 at the moment, bu=
t
> one could show up in the future and these workarounds may or may not appl=
y.
>=20
> If we're sure a couple years down the road that no 30.02 is ever going to
> materialize, we can come back and consolidate some of the entries to help
> simplify.  But for now we should try to follow the workaround database ex=
actly
> and not make assumptions about versions that don't exist yet.
>=20
In this case applied here also then I should revert to original changes on =
rev3,=20
as I have extended few WA entries as single based on feedback on rev3.
1. https://patchwork.freedesktop.org/patch/657455/?series=3D149794&rev=3D3
2. https://patchwork.freedesktop.org/patch/657456/?series=3D149794&rev=3D3

Dnyaneshwar,

>=20
> Matt
>=20
> >
> > Thanks,
> > Sai Teja
> >
> > > +16026508708	GRAPHICS_VERSION_RANGE(1200, 3003)
> > >   		MEDIA_VERSION_RANGE(1300, 3000)
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
