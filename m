Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E766EA5D5B3
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 06:47:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B9A410E6C3;
	Wed, 12 Mar 2025 05:47:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mLTmkYjG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A85F10E6C3;
 Wed, 12 Mar 2025 05:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741758444; x=1773294444;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Sa+aoVF43wluD5AzAdbVE0D4ETNuEmU9L7UMQrcNKbw=;
 b=mLTmkYjGcgVDVADlxV6G5vhPsIeLrf76w12in/8/p+sWVgKq1tc27JHm
 zcSyXXF7TD7d80Sjd/FMp88L025k/ize6yoiOwzBfGDMfWsShrDIUXYeg
 Jznvf+u7Vj74956Gv4/BiHv9iFamCRyf5wBlcOgaBCLerA+5IrOOR2u5r
 /s3rCTQXVOp01r7azLU7afDOM0Du0ZlQmp0r+vJ6cnoSyY1qhC+rrCZ1s
 HJ7g94sKlUB49RdArALJ0VJAseEc/4dwISBskkhmWitNwMd3bSgJDkeHQ
 xc3CHH+fyj1dKjEHp5L1o8bExfMVJatnojhE7Y6UE+orFMaojhF7dHt34 Q==;
X-CSE-ConnectionGUID: zj9PH+cOQHCz0anrgSmYjg==
X-CSE-MsgGUID: ms6d3/iuRKe/GV4R/Jg3BA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="41989227"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="41989227"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:47:24 -0700
X-CSE-ConnectionGUID: Ju8YIFrDSLehGmgfySd89g==
X-CSE-MsgGUID: 5IkhOPsOTii8CX7oOh416Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="151495593"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:47:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 22:47:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 22:47:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 22:47:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qDvV8auWkDYLjsX2KbrHtdZW/Bww2AdrRicmyHnGpvzQm/PnQrw4lNuqa272Z79binKoEbCGP9d2akB5s9YTn2gStcVhUi0nwFaSmMDXLaOhxSzanSzMmtCZh1GMHCbtl2UdAxXzDgjAWypEeGU2D+tjPRNu4Y8bRJVmxPrRaxDr1nBGfGS/TqXCsQr0nI34oY6KjkQeBxfdStCgGgjtmYu+xqqMc13xUHmaqg1LhguhByiWWPwA1on33b1oFOOw6EghliVI6M/NaK5SLT2KugbeSjGPOmr4yC21MhrNJg5N/BN2D43yEBT4fdkh1CyNyFLRMDc+7DpcoRlAgxdkeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dqQ3UDMrIq6RYlqbO8Gtz4hTjLj4L1uXvxgcoyqnwaA=;
 b=ZObPn181PFHjpBqp0qG72be7XfTUVWPfda73rdQHlST3raSdID/H06zL+7+X5JKSdFhi2qyGc6oOnrZsvBWOs76eN+tJki5cNC3aahMG/05csbdRI1RNfv5xCmzAw70w6Y+Yq1l2F0NsaznfVZb/kCwbL8Tx6OZM6u0OMKe6cHUPd/K0ApXzm2JRmmhk3VT6g50mOOhNJ931D0BVPv4BrjNA0GxbZaMfa1R9WaaEkgyP3HeHf7pWz2UHzHxBLwKkEveLKTUUmRcO7C+ufA9c1e7b9D9TTx9Rwh++xWNvZNytwGaoMWRHpWcVvWjwdZuznhowBWtdye83wVWg81DK4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB8020.namprd11.prod.outlook.com (2603:10b6:8:114::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8511.27; Wed, 12 Mar 2025 05:47:19 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 05:47:19 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 7/9] drm/i915/irq: convert intel_display_irq.[ch]
 interfaces to struct intel_display
Thread-Topic: [PATCH 7/9] drm/i915/irq: convert intel_display_irq.[ch]
 interfaces to struct intel_display
Thread-Index: AQHbkq+66jPPUOMbb0yeW7HxS0xak7Nu/RUw
Date: Wed, 12 Mar 2025 05:47:19 +0000
Message-ID: <DM4PR11MB6360B7E172A5AC89C895FFD2F4D02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
 <df68cf79674a31bb55b641e29976052d380274a4.1741715981.git.jani.nikula@intel.com>
In-Reply-To: <df68cf79674a31bb55b641e29976052d380274a4.1741715981.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB8020:EE_
x-ms-office365-filtering-correlation-id: 9e755d4e-22f8-46c8-0c48-08dd61295a60
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?pfXxdkFquYe3eH0czp7TPJDa30yekBr5NPiIuoM4WbP3lk6uoQ3DcAbwVzUo?=
 =?us-ascii?Q?wSkfN9ZIS/UEET3Rt8XQp5NT6hj+hA1cKic067L4x7obO9aD0gaIDCR/SPa3?=
 =?us-ascii?Q?6Lga/i1Jc1NdFHnBJ1ipyD0Ge5AGbV1x/gDNz8qaXllQzp3vj5v2d0Cx2iJ+?=
 =?us-ascii?Q?bs620Yke/4ssagsba9U1wK9LcV2ghEGIl5I60/IHmoful2rUws1yzBJmP2YT?=
 =?us-ascii?Q?lmL0SckeMthXBPIldN0XtdM/NFKjIo25E9qzasrZRmzfnGhJSQQXCe5sSLYp?=
 =?us-ascii?Q?52xGA4qjQ5naEodgCkeLonrxyJW/yxMZD0i0DJLlcUbTPLqV+Dp1mRnAqkqH?=
 =?us-ascii?Q?oM/oL1+LffMWHPrQYTt0Viox6AFs1+fA58duB1XqNnR8EAOJbNNHAfxN6EkP?=
 =?us-ascii?Q?wwEsfM8R+8pRdt6779mFGhLJwj+OGc4ETX0LQp9gOipy8pvb3qERg8mrHDtU?=
 =?us-ascii?Q?RkKpXni/89WmzN2aA5d0kAHAjvMlpBpiDWIeAHCfxKryzGPzNcyGtFUeD9MP?=
 =?us-ascii?Q?o33KrOkgB8QU/WS0U5f/7LeAHY1H91Es7l7DvyGnzYSWgh36MQ0/FVfIJDwq?=
 =?us-ascii?Q?RWHPKrQ2hpxR52lnotTKgGSULt5lYkYkMMPzm4JLRPO8NXMgxDil+e4MhjNA?=
 =?us-ascii?Q?XF6yQnkq9CsdBSvmDehOCzfPwKd9XlgVZocDPjYmppkCREkQedohrxDox41g?=
 =?us-ascii?Q?9m41bsYKtbnnoA0dZAzB+G5MbX0GdldvwI8nY2TNHjNJbaICp2IQ6GOTcaPH?=
 =?us-ascii?Q?IL4xkryNwNnviqoIG/3BblCeCbhKwVifBz/XIs0pvxMPbypuXw8UvIHHd9NZ?=
 =?us-ascii?Q?q/oXowZXyu+Ihj+1F8Jd9Jwc8mFkXJklGDKBsZ1U/e7lntzh5vihANWoMaMq?=
 =?us-ascii?Q?WB8O12DR0f76ihlhxFxfRm5es4msYaCzbxf10xqh9iugL9GZKmhppMD5JWIJ?=
 =?us-ascii?Q?rYCfV3PQzvoq7SgtX71iCJa0ccbDvSKIaVoh8/dzuNVeLpDKtgT3eKJ6XLBG?=
 =?us-ascii?Q?3j14J/PJO4djqQhGfxeKPWi7Jl6Z28nxDWg1GkPFFzpe5KX7yJ5hu4r/XmgV?=
 =?us-ascii?Q?h8N9nsW55YSFogdIhx4fbBniMsu8aF8O08khbr9D2IlpqgKwDrR0ADBVmwek?=
 =?us-ascii?Q?Exca5rRFjFA9SJRGnP9aJsT+q5kwstbGjvb7K7QbaGFC5mprRPaAVSYUgQaj?=
 =?us-ascii?Q?P7iP1Neo+4ajReOimeve7nIanNuRYUMxDqKo8XGrP9alorLRjM6QM1f6CbFT?=
 =?us-ascii?Q?sqjM4IA9zNTYzUwNZ/S9/r+ug7jSqpqaIgL1eKei/J8NGCy/pxiPO9skGE7J?=
 =?us-ascii?Q?SO+cRG8Lj4g04rYdUmqOZpEpDftufm/gvvgEB7NJYy141N+ly+xDKOGCIR/Q?=
 =?us-ascii?Q?dsmpzrMu7AbrIxQ/oZ/CDRqX2Vh4IYM/dyKH3rqZYiPt7Axz8v4mORoo841c?=
 =?us-ascii?Q?AbeDB+dOP+ZpiISFSh3I9uyHe+6lmIn+?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dGaOcaIjc+O0GRueIwxb7cBxMI5Gi34UfYjhd/+BRXc/84n2AXmooZXbewlb?=
 =?us-ascii?Q?72xb7omocCZBHzxkS0yH8I3febAg2tXGjqlpsS5MB4EDbzSynSwY/26rZPdp?=
 =?us-ascii?Q?1gQONyvxOdJAwVFjHJqzzlKTmF65Fzj2RO8BVt+R2s5ji5LOLSZCvLcUjdHW?=
 =?us-ascii?Q?o9NWIMd08yEdbacOq+BCvIB+ibu3RHmbGWcPDdPmsk0F1X3I+mqKVi+Ho8CP?=
 =?us-ascii?Q?46atVTkFFtYI2XtppnmFEObUWsAuSDIkJYBSrGKWk4/mcoWAE5hWJC9Zi9DS?=
 =?us-ascii?Q?xWF/EbzFM7nJeDMDC+gUKC8yefVmMMrTd4y3WEZ76d8thg2yNN/uIofsFrkI?=
 =?us-ascii?Q?NFKATCvLnHtwORh4wA+vu6Dq6n4CqyIU/270qCnkZm5qgRxS8La82EZCsiJs?=
 =?us-ascii?Q?A3+p2GXhaC9VNeq3l3b+qQpYf5RC/2nVVxWV0h17dxQqxtLihupNL1XfKzxD?=
 =?us-ascii?Q?70kk26p5/K9d3F/NcmdSeX4f1J/J3lm5HiZAqze3HOOFdfZ2MugMiiApSDk+?=
 =?us-ascii?Q?pfddTYwMSz/ciH7rIeZR4F/8UYL+ifddq9oT7S4NI77D6ZqSC6CxIqmHMt3p?=
 =?us-ascii?Q?DUZpF1G8rDaKq+oGkw7FhMIAitCVQoCVinvTwZhHC5xTzKB1/M57JbtrzOj0?=
 =?us-ascii?Q?YDlADv1HQigKA/yHNdIKKPlvoMCDBQJWT0SEHRM5hpEiTMYnA/MgkzI4u+lK?=
 =?us-ascii?Q?r42NzsDD7Rnd3jVj/OsCv2WLZl0uayysnHL9diLoGedA6+FWoq/nnu5UB1Z9?=
 =?us-ascii?Q?EIqrAxHngg5ShmGaKuzvJ+v2yrhulJGWRK4rmq+H/c/jD13KbZZLPha6HfiP?=
 =?us-ascii?Q?oEcuFxqY1dRtxmGmDTHctOhHgm9rbbZ3LF1lgiGnY+cbTjJYYnVFwZVGOQbc?=
 =?us-ascii?Q?vnuG3MlWF+xVqh0QnNqVtuLKZZeUcNs80LJlzIypHZV+KJPPkRf7G7nZsRlI?=
 =?us-ascii?Q?e+I18cbtxX3q2GfvTuJE79M9intaBLRSpsNUkZfbIVC1hWE2m3Q5Pzs6hDfe?=
 =?us-ascii?Q?9O/4Z6YyPn6fU7Clzew1ao8bDGtN4Xfa+H6CnEqfwDS6L/J/o3VXmtLBZu+o?=
 =?us-ascii?Q?ApkJt0HGVN+I7Ryry1jdOvKwp0m4EI5EV5ipA2AyZfCOY2LMRlwmjPhSu9FS?=
 =?us-ascii?Q?yqdz5B+JveHJYMhgha9fs8NIl2NMxKORO/xzlnWx/z3jZpYM8BeCSUfQogp9?=
 =?us-ascii?Q?SvOsU3vYxKQTuXtlKeazFepno1OY/ywNt/fP1CxFSGFsP3UzRNLiWVC7sm4L?=
 =?us-ascii?Q?KzFZ5usLRm31fBu24ENFh8gi7yiPjGa/WMYfuOSzUyRhS36Xp/TUrJ+SS5Af?=
 =?us-ascii?Q?QisxKVI9RXO8cEKbN7B5AJDOvDeK02KuAsCOfuiKXIKGEIC5OKyRxA3GYU53?=
 =?us-ascii?Q?oJKaVV3TTHpTDnpCf1NsRYbKpYiR5LtZd/eM+vEgb69QNSrT3Wbsq60HjL7F?=
 =?us-ascii?Q?xZbwQaTr4Fb/VlxdVbB4aw5DEaSbXD59/QjsgQcx9eOolpXAbt4SQe50PCz6?=
 =?us-ascii?Q?sG2LklgEW+o4k0KJjBsDA4MwsMhe4xvPqODZF8U4ZIm03Fq06BZ3wwRZLAVV?=
 =?us-ascii?Q?sDjkmLjUm1sjQ5gxoKt8K7iyqxRW4bzRHd9tSvGq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e755d4e-22f8-46c8-0c48-08dd61295a60
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 05:47:19.3810 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mKPjlliy2gAGmNWkHg9iSbei7HvvH8g9OkpO5T6vOl3adNRA/NJoMtMtOW3eVoSkwxCItV4uuEDJs06ia8vrqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8020
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani=
 Nikula
> Sent: Tuesday, March 11, 2025 11:31 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 7/9] drm/i915/irq: convert intel_display_irq.[ch] interfa=
ces to
> struct intel_display
>=20
> Going forward, struct intel_display is the main display device data
> pointer. Convert the external interfaces of intel_display_irq.[ch] to
> struct intel_display.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |  24 ++-
>  .../drm/i915/display/intel_display_driver.c   |   2 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  | 204 +++++++++---------
>  .../gpu/drm/i915/display/intel_display_irq.h  |  75 ++++---
>  .../i915/display/intel_display_power_well.c   |  12 +-
>  .../drm/i915/display/intel_fifo_underrun.c    |  27 +--
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  |  22 +-
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c |   3 +-
>  drivers/gpu/drm/i915/display/intel_tv.c       |   4 +-
>  .../drm/i915/display/skl_universal_plane.c    |   6 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           |   6 +-
>  drivers/gpu/drm/i915/i915_irq.c               |  98 +++++----
>  drivers/gpu/drm/xe/display/xe_display.c       |  12 +-
>  13 files changed, 263 insertions(+), 232 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c
> b/drivers/gpu/drm/i915/display/i9xx_plane.c
> index 013295f66d56..5e8344fdfc28 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -630,84 +630,92 @@ vlv_primary_async_flip(struct intel_dsb *dsb,
>  static void
>  bdw_primary_enable_flip_done(struct intel_plane *plane)
>  {
> +	struct intel_display *display =3D to_intel_display(plane);
>  	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>  	enum pipe pipe =3D plane->pipe;
>=20
>  	spin_lock_irq(&i915->irq_lock);
> -	bdw_enable_pipe_irq(i915, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
> +	bdw_enable_pipe_irq(display, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20
>  static void
>  bdw_primary_disable_flip_done(struct intel_plane *plane)
>  {
> +	struct intel_display *display =3D to_intel_display(plane);
>  	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>  	enum pipe pipe =3D plane->pipe;
>=20
>  	spin_lock_irq(&i915->irq_lock);
> -	bdw_disable_pipe_irq(i915, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
> +	bdw_disable_pipe_irq(display, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20
>  static void
>  ivb_primary_enable_flip_done(struct intel_plane *plane)
>  {
> +	struct intel_display *display =3D to_intel_display(plane);
>  	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>=20
>  	spin_lock_irq(&i915->irq_lock);
> -	ilk_enable_display_irq(i915, DE_PLANE_FLIP_DONE_IVB(plane-
> >i9xx_plane));
> +	ilk_enable_display_irq(display, DE_PLANE_FLIP_DONE_IVB(plane-
> >i9xx_plane));
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20
>  static void
>  ivb_primary_disable_flip_done(struct intel_plane *plane)
>  {
> +	struct intel_display *display =3D to_intel_display(plane);
>  	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>=20
>  	spin_lock_irq(&i915->irq_lock);
> -	ilk_disable_display_irq(i915, DE_PLANE_FLIP_DONE_IVB(plane-
> >i9xx_plane));
> +	ilk_disable_display_irq(display, DE_PLANE_FLIP_DONE_IVB(plane-
> >i9xx_plane));
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20
>  static void
>  ilk_primary_enable_flip_done(struct intel_plane *plane)
>  {
> +	struct intel_display *display =3D to_intel_display(plane);
>  	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>=20
>  	spin_lock_irq(&i915->irq_lock);
> -	ilk_enable_display_irq(i915, DE_PLANE_FLIP_DONE(plane->i9xx_plane));
> +	ilk_enable_display_irq(display, DE_PLANE_FLIP_DONE(plane-
> >i9xx_plane));
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20
>  static void
>  ilk_primary_disable_flip_done(struct intel_plane *plane)
>  {
> +	struct intel_display *display =3D to_intel_display(plane);
>  	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>=20
>  	spin_lock_irq(&i915->irq_lock);
> -	ilk_disable_display_irq(i915, DE_PLANE_FLIP_DONE(plane->i9xx_plane));
> +	ilk_disable_display_irq(display, DE_PLANE_FLIP_DONE(plane-
> >i9xx_plane));
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20
>  static void
>  vlv_primary_enable_flip_done(struct intel_plane *plane)
>  {
> +	struct intel_display *display =3D to_intel_display(plane);
>  	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>  	enum pipe pipe =3D plane->pipe;
>=20
>  	spin_lock_irq(&i915->irq_lock);
> -	i915_enable_pipestat(i915, pipe, PLANE_FLIP_DONE_INT_STATUS_VLV);
> +	i915_enable_pipestat(display, pipe,
> PLANE_FLIP_DONE_INT_STATUS_VLV);
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20
>  static void
>  vlv_primary_disable_flip_done(struct intel_plane *plane)
>  {
> +	struct intel_display *display =3D to_intel_display(plane);
>  	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>  	enum pipe pipe =3D plane->pipe;
>=20
>  	spin_lock_irq(&i915->irq_lock);
> -	i915_disable_pipestat(i915, pipe, PLANE_FLIP_DONE_INT_STATUS_VLV);
> +	i915_disable_pipestat(display, pipe,
> PLANE_FLIP_DONE_INT_STATUS_VLV);
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
> b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index ae60ccb21520..f76a3a9d66b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -193,7 +193,7 @@ void intel_display_driver_early_probe(struct intel_di=
splay
> *display)
>  	mutex_init(&display->pps.mutex);
>  	mutex_init(&display->hdcp.hdcp_mutex);
>=20
> -	intel_display_irq_init(i915);
> +	intel_display_irq_init(display);
>  	intel_dkl_phy_init(display);
>  	intel_color_init_hooks(display);
>  	intel_init_cdclk_hooks(display);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index b37bcb8fb2e8..68f903c35978 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -125,14 +125,14 @@ intel_handle_vblank(struct drm_i915_private
> *dev_priv, enum pipe pipe)
>=20
>  /**
>   * ilk_update_display_irq - update DEIMR
> - * @dev_priv: driver private
> + * @display: display device
>   * @interrupt_mask: mask of interrupt bits to update
>   * @enabled_irq_mask: mask of interrupt bits to enable
>   */
> -void ilk_update_display_irq(struct drm_i915_private *dev_priv,
> +void ilk_update_display_irq(struct intel_display *display,
>  			    u32 interrupt_mask, u32 enabled_irq_mask)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 new_val;
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
> @@ -150,26 +150,26 @@ void ilk_update_display_irq(struct drm_i915_private
> *dev_priv,
>  	}
>  }
>=20
> -void ilk_enable_display_irq(struct drm_i915_private *i915, u32 bits)
> +void ilk_enable_display_irq(struct intel_display *display, u32 bits)
>  {
> -	ilk_update_display_irq(i915, bits, bits);
> +	ilk_update_display_irq(display, bits, bits);
>  }
>=20
> -void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits)
> +void ilk_disable_display_irq(struct intel_display *display, u32 bits)
>  {
> -	ilk_update_display_irq(i915, bits, 0);
> +	ilk_update_display_irq(display, bits, 0);
>  }
>=20
>  /**
>   * bdw_update_port_irq - update DE port interrupt
> - * @dev_priv: driver private
> + * @display: display device
>   * @interrupt_mask: mask of interrupt bits to update
>   * @enabled_irq_mask: mask of interrupt bits to enable
>   */
> -void bdw_update_port_irq(struct drm_i915_private *dev_priv,
> +void bdw_update_port_irq(struct intel_display *display,
>  			 u32 interrupt_mask, u32 enabled_irq_mask)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 new_val;
>  	u32 old_val;
>=20
> @@ -194,16 +194,16 @@ void bdw_update_port_irq(struct drm_i915_private
> *dev_priv,
>=20
>  /**
>   * bdw_update_pipe_irq - update DE pipe interrupt
> - * @dev_priv: driver private
> + * @display: display device
>   * @pipe: pipe whose interrupt to update
>   * @interrupt_mask: mask of interrupt bits to update
>   * @enabled_irq_mask: mask of interrupt bits to enable
>   */
> -static void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
> +static void bdw_update_pipe_irq(struct intel_display *display,
>  				enum pipe pipe, u32 interrupt_mask,
>  				u32 enabled_irq_mask)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 new_val;
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
> @@ -224,29 +224,29 @@ static void bdw_update_pipe_irq(struct
> drm_i915_private *dev_priv,
>  	}
>  }
>=20
> -void bdw_enable_pipe_irq(struct drm_i915_private *i915,
> +void bdw_enable_pipe_irq(struct intel_display *display,
>  			 enum pipe pipe, u32 bits)
>  {
> -	bdw_update_pipe_irq(i915, pipe, bits, bits);
> +	bdw_update_pipe_irq(display, pipe, bits, bits);
>  }
>=20
> -void bdw_disable_pipe_irq(struct drm_i915_private *i915,
> +void bdw_disable_pipe_irq(struct intel_display *display,
>  			  enum pipe pipe, u32 bits)
>  {
> -	bdw_update_pipe_irq(i915, pipe, bits, 0);
> +	bdw_update_pipe_irq(display, pipe, bits, 0);
>  }
>=20
>  /**
>   * ibx_display_interrupt_update - update SDEIMR
> - * @dev_priv: driver private
> + * @display: display device
>   * @interrupt_mask: mask of interrupt bits to update
>   * @enabled_irq_mask: mask of interrupt bits to enable
>   */
> -void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
> +void ibx_display_interrupt_update(struct intel_display *display,
>  				  u32 interrupt_mask,
>  				  u32 enabled_irq_mask)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 sdeimr =3D intel_de_read(display, SDEIMR);
>=20
>  	sdeimr &=3D ~interrupt_mask;
> @@ -263,14 +263,14 @@ void ibx_display_interrupt_update(struct
> drm_i915_private *dev_priv,
>  	intel_de_posting_read(display, SDEIMR);
>  }
>=20
> -void ibx_enable_display_interrupt(struct drm_i915_private *i915, u32 bit=
s)
> +void ibx_enable_display_interrupt(struct intel_display *display, u32 bit=
s)
>  {
> -	ibx_display_interrupt_update(i915, bits, bits);
> +	ibx_display_interrupt_update(display, bits, bits);
>  }
>=20
> -void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bi=
ts)
> +void ibx_disable_display_interrupt(struct intel_display *display, u32 bi=
ts)
>  {
> -	ibx_display_interrupt_update(i915, bits, 0);
> +	ibx_display_interrupt_update(display, bits, 0);
>  }
>=20
>  u32 i915_pipestat_enable_mask(struct intel_display *display,
> @@ -318,10 +318,10 @@ u32 i915_pipestat_enable_mask(struct intel_display
> *display,
>  	return enable_mask;
>  }
>=20
> -void i915_enable_pipestat(struct drm_i915_private *dev_priv,
> +void i915_enable_pipestat(struct intel_display *display,
>  			  enum pipe pipe, u32 status_mask)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	i915_reg_t reg =3D PIPESTAT(dev_priv, pipe);
>  	u32 enable_mask;
>=20
> @@ -342,10 +342,10 @@ void i915_enable_pipestat(struct drm_i915_private
> *dev_priv,
>  	intel_de_posting_read(display, reg);
>  }
>=20
> -void i915_disable_pipestat(struct drm_i915_private *dev_priv,
> +void i915_disable_pipestat(struct intel_display *display,
>  			   enum pipe pipe, u32 status_mask)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	i915_reg_t reg =3D PIPESTAT(dev_priv, pipe);
>  	u32 enable_mask;
>=20
> @@ -381,11 +381,11 @@ static bool i915_has_legacy_blc_interrupt(struct
> intel_display *display)
>=20
>  /**
>   * i915_enable_asle_pipestat - enable ASLE pipestat for OpRegion
> - * @dev_priv: i915 device private
> + * @display: display device
>   */
> -void i915_enable_asle_pipestat(struct drm_i915_private *dev_priv)
> +void i915_enable_asle_pipestat(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>  	if (!intel_opregion_asle_present(display))
>  		return;
> @@ -395,9 +395,9 @@ void i915_enable_asle_pipestat(struct drm_i915_privat=
e
> *dev_priv)
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
>=20
> -	i915_enable_pipestat(dev_priv, PIPE_B,
> PIPE_LEGACY_BLC_EVENT_STATUS);
> +	i915_enable_pipestat(display, PIPE_B,
> PIPE_LEGACY_BLC_EVENT_STATUS);
>  	if (DISPLAY_VER(dev_priv) >=3D 4)
> -		i915_enable_pipestat(dev_priv, PIPE_A,
> +		i915_enable_pipestat(display, PIPE_A,
>  				     PIPE_LEGACY_BLC_EVENT_STATUS);
>=20
>  	spin_unlock_irq(&dev_priv->irq_lock);
> @@ -524,10 +524,10 @@ static void i9xx_pipestat_irq_reset(struct
> drm_i915_private *dev_priv)
>  	}
>  }
>=20
> -void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
> +void i9xx_pipestat_irq_ack(struct intel_display *display,
>  			   u32 iir, u32 pipe_stats[I915_MAX_PIPES])
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe;
>=20
>  	spin_lock(&dev_priv->irq_lock);
> @@ -592,10 +592,10 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private
> *dev_priv,
>  	spin_unlock(&dev_priv->irq_lock);
>  }
>=20
> -void i915_pipestat_irq_handler(struct drm_i915_private *dev_priv,
> +void i915_pipestat_irq_handler(struct intel_display *display,
>  			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	bool blc_event =3D false;
>  	enum pipe pipe;
>=20
> @@ -617,10 +617,10 @@ void i915_pipestat_irq_handler(struct
> drm_i915_private *dev_priv,
>  		intel_opregion_asle_intr(display);
>  }
>=20
> -void i965_pipestat_irq_handler(struct drm_i915_private *dev_priv,
> +void i965_pipestat_irq_handler(struct intel_display *display,
>  			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	bool blc_event =3D false;
>  	enum pipe pipe;
>=20
> @@ -645,10 +645,10 @@ void i965_pipestat_irq_handler(struct
> drm_i915_private *dev_priv,
>  		intel_gmbus_irq_handler(display);
>  }
>=20
> -void valleyview_pipestat_irq_handler(struct drm_i915_private *dev_priv,
> +void valleyview_pipestat_irq_handler(struct intel_display *display,
>  				     u32 pipe_stats[I915_MAX_PIPES])
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe;
>=20
>  	for_each_pipe(dev_priv, pipe) {
> @@ -894,9 +894,9 @@ static void ilk_gtt_fault_irq_handler(struct intel_di=
splay
> *display)
>  	}
>  }
>=20
> -void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_i=
ir)
> +void ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe;
>  	u32 hotplug_trigger =3D de_iir & DE_DP_A_HOTPLUG;
>=20
> @@ -946,9 +946,9 @@ void ilk_display_irq_handler(struct drm_i915_private
> *dev_priv, u32 de_iir)
>  		gen5_rps_irq_handler(&to_gt(dev_priv)->rps);
>  }
>=20
> -void ivb_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_i=
ir)
> +void ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe;
>  	u32 hotplug_trigger =3D de_iir & DE_DP_A_HOTPLUG_IVB;
>=20
> @@ -1359,9 +1359,9 @@ static void gen8_read_and_ack_pch_irqs(struct
> drm_i915_private *i915, u32 *pch_i
>  		intel_de_write(display, PICAINTERRUPT_IER, pica_ier);
>  }
>=20
> -void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_c=
tl)
> +void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 iir;
>  	enum pipe pipe;
>=20
> @@ -1517,9 +1517,8 @@ void gen8_de_irq_handler(struct drm_i915_private
> *dev_priv, u32 master_ctl)
>  	}
>  }
>=20
> -u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32
> master_ctl)
> +u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 maste=
r_ctl)
>  {
> -	struct intel_display *display =3D &i915->display;
>  	u32 iir;
>=20
>  	if (!(master_ctl & GEN11_GU_MISC_IRQ))
> @@ -1532,17 +1531,15 @@ u32 gen11_gu_misc_irq_ack(struct
> drm_i915_private *i915, const u32 master_ctl)
>  	return iir;
>  }
>=20
> -void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 =
iir)
> +void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 =
iir)
>  {
> -	struct intel_display *display =3D &i915->display;
> -
>  	if (iir & GEN11_GU_MISC_GSE)
>  		intel_opregion_asle_intr(display);
>  }
>=20
> -void gen11_display_irq_handler(struct drm_i915_private *i915)
> +void gen11_display_irq_handler(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &i915->display;
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	u32 disp_ctl;
>=20
>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> @@ -1553,7 +1550,7 @@ void gen11_display_irq_handler(struct
> drm_i915_private *i915)
>  	disp_ctl =3D intel_de_read(display, GEN11_DISPLAY_INT_CTL);
>=20
>  	intel_de_write(display, GEN11_DISPLAY_INT_CTL, 0);
> -	gen8_de_irq_handler(i915, disp_ctl);
> +	gen8_de_irq_handler(display, disp_ctl);
>  	intel_de_write(display, GEN11_DISPLAY_INT_CTL,
> GEN11_DISPLAY_IRQ_ENABLE);
>=20
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> @@ -1585,8 +1582,10 @@ static void i915gm_irq_cstate_wa_disable(struct
> drm_i915_private *i915)
>=20
> _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
>  }
>=20
> -void i915gm_irq_cstate_wa(struct drm_i915_private *i915, bool enable)
> +void i915gm_irq_cstate_wa(struct intel_display *display, bool enable)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +
>  	spin_lock_irq(&i915->drm.vblank_time_lock);
>=20
>  	if (enable)
> @@ -1599,12 +1598,13 @@ void i915gm_irq_cstate_wa(struct
> drm_i915_private *i915, bool enable)
>=20
>  int i8xx_enable_vblank(struct drm_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc->dev);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>  	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>  	unsigned long irqflags;
>=20
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> -	i915_enable_pipestat(dev_priv, pipe,
> PIPE_VBLANK_INTERRUPT_STATUS);
> +	i915_enable_pipestat(display, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>=20
>  	return 0;
> @@ -1612,12 +1612,13 @@ int i8xx_enable_vblank(struct drm_crtc *crtc)
>=20
>  void i8xx_disable_vblank(struct drm_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc->dev);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>  	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>  	unsigned long irqflags;
>=20
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> -	i915_disable_pipestat(dev_priv, pipe,
> PIPE_VBLANK_INTERRUPT_STATUS);
> +	i915_disable_pipestat(display, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>  }
>=20
> @@ -1641,12 +1642,13 @@ void i915gm_disable_vblank(struct drm_crtc *crtc)
>=20
>  int i965_enable_vblank(struct drm_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc->dev);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>  	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>  	unsigned long irqflags;
>=20
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> -	i915_enable_pipestat(dev_priv, pipe,
> +	i915_enable_pipestat(display, pipe,
>  			     PIPE_START_VBLANK_INTERRUPT_STATUS);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>=20
> @@ -1655,18 +1657,20 @@ int i965_enable_vblank(struct drm_crtc *crtc)
>=20
>  void i965_disable_vblank(struct drm_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc->dev);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>  	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>  	unsigned long irqflags;
>=20
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> -	i915_disable_pipestat(dev_priv, pipe,
> +	i915_disable_pipestat(display, pipe,
>  			      PIPE_START_VBLANK_INTERRUPT_STATUS);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>  }
>=20
>  int ilk_enable_vblank(struct drm_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc->dev);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>  	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>  	unsigned long irqflags;
> @@ -1674,7 +1678,7 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
>  		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
>=20
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> -	ilk_enable_display_irq(dev_priv, bit);
> +	ilk_enable_display_irq(display, bit);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>=20
>  	/* Even though there is no DMC, frame counter can get stuck when
> @@ -1688,6 +1692,7 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
>=20
>  void ilk_disable_vblank(struct drm_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc->dev);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>  	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>  	unsigned long irqflags;
> @@ -1695,7 +1700,7 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
>  		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
>=20
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> -	ilk_disable_display_irq(dev_priv, bit);
> +	ilk_disable_display_irq(display, bit);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>  }
>=20
> @@ -1753,7 +1758,7 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
>  		schedule_work(&display->irq.vblank_dc_work);
>=20
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> -	bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
> +	bdw_enable_pipe_irq(display, pipe, GEN8_PIPE_VBLANK);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>=20
>  	/* Even if there is no DMC, frame counter can get stuck when
> @@ -1777,7 +1782,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
>  		return;
>=20
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> -	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
> +	bdw_disable_pipe_irq(display, pipe, GEN8_PIPE_VBLANK);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>=20
>  	if (crtc->block_dc_for_vblank && --display->irq.vblank_wa_num_pipes
> =3D=3D 0)
> @@ -1913,15 +1918,17 @@ static void _vlv_display_irq_reset(struct
> drm_i915_private *dev_priv)
>  	dev_priv->irq_mask =3D ~0u;
>  }
>=20
> -void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
> +void vlv_display_irq_reset(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +
>  	if (dev_priv->display.irq.vlv_display_irqs_enabled)
>  		_vlv_display_irq_reset(dev_priv);
>  }
>=20
> -void i9xx_display_irq_reset(struct drm_i915_private *i915)
> +void i9xx_display_irq_reset(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &i915->display;
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
>  	if (I915_HAS_HOTPLUG(i915)) {
>  		i915_hotplug_interrupt_update(display, 0xffffffff, 0);
> @@ -1937,9 +1944,9 @@ static u32 vlv_error_mask(void)
>  	return VLV_ERROR_PAGE_TABLE;
>  }
>=20
> -void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
> +void vlv_display_irq_postinstall(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 pipestat_mask;
>  	u32 enable_mask;
>  	enum pipe pipe;
> @@ -1961,9 +1968,9 @@ void vlv_display_irq_postinstall(struct
> drm_i915_private *dev_priv)
>=20
>  	pipestat_mask =3D PIPE_CRC_DONE_INTERRUPT_STATUS;
>=20
> -	i915_enable_pipestat(dev_priv, PIPE_A,
> PIPE_GMBUS_INTERRUPT_STATUS);
> +	i915_enable_pipestat(display, PIPE_A,
> PIPE_GMBUS_INTERRUPT_STATUS);
>  	for_each_pipe(dev_priv, pipe)
> -		i915_enable_pipestat(dev_priv, pipe, pipestat_mask);
> +		i915_enable_pipestat(display, pipe, pipestat_mask);
>=20
>  	enable_mask =3D I915_DISPLAY_PORT_INTERRUPT |
>  		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
> @@ -1983,9 +1990,9 @@ void vlv_display_irq_postinstall(struct
> drm_i915_private *dev_priv)
>  	intel_display_irq_regs_init(display, VLV_IRQ_REGS, dev_priv->irq_mask,
> enable_mask);
>  }
>=20
> -void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
> +void gen8_display_irq_reset(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe;
>=20
>  	if (!HAS_DISPLAY(dev_priv))
> @@ -2003,9 +2010,9 @@ void gen8_display_irq_reset(struct drm_i915_private
> *dev_priv)
>  	intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
>  }
>=20
> -void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
> +void gen11_display_irq_reset(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe;
>  	u32 trans_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
> @@ -2054,10 +2061,10 @@ void gen11_display_irq_reset(struct
> drm_i915_private *dev_priv)
>  		intel_display_irq_regs_reset(display, SDE_IRQ_REGS);
>  }
>=20
> -void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
> +void gen8_irq_power_well_post_enable(struct intel_display *display,
>  				     u8 pipe_mask)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 extra_ier =3D GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>  		gen8_de_pipe_flip_done_mask(dev_priv);
>  	enum pipe pipe;
> @@ -2077,10 +2084,10 @@ void gen8_irq_power_well_post_enable(struct
> drm_i915_private *dev_priv,
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>=20
> -void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
> +void gen8_irq_power_well_pre_disable(struct intel_display *display,
>  				     u8 pipe_mask)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe;
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
> @@ -2128,8 +2135,10 @@ static void ibx_irq_postinstall(struct
> drm_i915_private *dev_priv)
>  	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
>  }
>=20
> -void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
> +void valleyview_enable_display_irqs(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +
>  	lockdep_assert_held(&dev_priv->irq_lock);
>=20
>  	if (dev_priv->display.irq.vlv_display_irqs_enabled)
> @@ -2139,12 +2148,14 @@ void valleyview_enable_display_irqs(struct
> drm_i915_private *dev_priv)
>=20
>  	if (intel_irqs_enabled(dev_priv)) {
>  		_vlv_display_irq_reset(dev_priv);
> -		vlv_display_irq_postinstall(dev_priv);
> +		vlv_display_irq_postinstall(display);
>  	}
>  }
>=20
> -void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
> +void valleyview_disable_display_irqs(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +
>  	lockdep_assert_held(&dev_priv->irq_lock);
>=20
>  	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
> @@ -2156,9 +2167,10 @@ void valleyview_disable_display_irqs(struct
> drm_i915_private *dev_priv)
>  		_vlv_display_irq_reset(dev_priv);
>  }
>=20
> -void ilk_de_irq_postinstall(struct drm_i915_private *i915)
> +void ilk_de_irq_postinstall(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &i915->display;
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +
>  	u32 display_mask, extra_mask;
>=20
>  	if (DISPLAY_VER(i915) >=3D 7) {
> @@ -2201,9 +2213,9 @@ void ilk_de_irq_postinstall(struct drm_i915_private
> *i915)
>  static void mtp_irq_postinstall(struct drm_i915_private *i915);
>  static void icp_irq_postinstall(struct drm_i915_private *i915);
>=20
> -void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
> +void gen8_de_irq_postinstall(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>  	u32 de_pipe_masked =3D gen8_de_pipe_fault_mask(dev_priv) |
>  		GEN8_PIPE_CDCLK_CRC_DONE;
> @@ -2323,33 +2335,27 @@ static void icp_irq_postinstall(struct
> drm_i915_private *dev_priv)
>  	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
>  }
>=20
> -void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
> +void gen11_de_irq_postinstall(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> -
> -	if (!HAS_DISPLAY(dev_priv))
> +	if (!HAS_DISPLAY(display))
>  		return;
>=20
> -	gen8_de_irq_postinstall(dev_priv);
> +	gen8_de_irq_postinstall(display);
>=20
>  	intel_de_write(display, GEN11_DISPLAY_INT_CTL,
> GEN11_DISPLAY_IRQ_ENABLE);
>  }
>=20
> -void dg1_de_irq_postinstall(struct drm_i915_private *i915)
> +void dg1_de_irq_postinstall(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &i915->display;
> -
> -	if (!HAS_DISPLAY(i915))
> +	if (!HAS_DISPLAY(display))
>  		return;
>=20
> -	gen8_de_irq_postinstall(i915);
> +	gen8_de_irq_postinstall(display);
>  	intel_de_write(display, GEN11_DISPLAY_INT_CTL,
> GEN11_DISPLAY_IRQ_ENABLE);
>  }
>=20
> -void intel_display_irq_init(struct drm_i915_private *i915)
> +void intel_display_irq_init(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &i915->display;
> -
>  	display->drm->vblank_disable_immediate =3D true;
>=20
>  	intel_hotplug_irq_init(display);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h
> b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index d9867cd0a220..f72727768351 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -12,28 +12,27 @@
>=20
>  enum pipe;
>  struct drm_crtc;
> -struct drm_i915_private;
>  struct intel_display;
>=20
> -void valleyview_enable_display_irqs(struct drm_i915_private *i915);
> -void valleyview_disable_display_irqs(struct drm_i915_private *i915);
> +void valleyview_enable_display_irqs(struct intel_display *display);
> +void valleyview_disable_display_irqs(struct intel_display *display);
>=20
> -void ilk_update_display_irq(struct drm_i915_private *i915,
> +void ilk_update_display_irq(struct intel_display *display,
>  			    u32 interrupt_mask, u32 enabled_irq_mask);
> -void ilk_enable_display_irq(struct drm_i915_private *i915, u32 bits);
> -void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits);
> +void ilk_enable_display_irq(struct intel_display *display, u32 bits);
> +void ilk_disable_display_irq(struct intel_display *display, u32 bits);
>=20
> -void bdw_update_port_irq(struct drm_i915_private *i915, u32 interrupt_ma=
sk,
> u32 enabled_irq_mask);
> -void bdw_enable_pipe_irq(struct drm_i915_private *i915, enum pipe pipe, =
u32
> bits);
> -void bdw_disable_pipe_irq(struct drm_i915_private *i915, enum pipe pipe,=
 u32
> bits);
> +void bdw_update_port_irq(struct intel_display *display, u32 interrupt_ma=
sk, u32
> enabled_irq_mask);
> +void bdw_enable_pipe_irq(struct intel_display *display, enum pipe pipe, =
u32
> bits);
> +void bdw_disable_pipe_irq(struct intel_display *display, enum pipe pipe,=
 u32
> bits);
>=20
> -void ibx_display_interrupt_update(struct drm_i915_private *i915,
> +void ibx_display_interrupt_update(struct intel_display *display,
>  				  u32 interrupt_mask, u32 enabled_irq_mask);
> -void ibx_enable_display_interrupt(struct drm_i915_private *i915, u32 bit=
s);
> -void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bi=
ts);
> +void ibx_enable_display_interrupt(struct intel_display *display, u32 bit=
s);
> +void ibx_disable_display_interrupt(struct intel_display *display, u32 bi=
ts);
>=20
> -void gen8_irq_power_well_post_enable(struct drm_i915_private *i915, u8
> pipe_mask);
> -void gen8_irq_power_well_pre_disable(struct drm_i915_private *i915, u8
> pipe_mask);
> +void gen8_irq_power_well_post_enable(struct intel_display *display, u8
> pipe_mask);
> +void gen8_irq_power_well_pre_disable(struct intel_display *display, u8
> pipe_mask);
>=20
>  int i8xx_enable_vblank(struct drm_crtc *crtc);
>  int i915gm_enable_vblank(struct drm_crtc *crtc);
> @@ -46,41 +45,41 @@ void i965_disable_vblank(struct drm_crtc *crtc);
>  void ilk_disable_vblank(struct drm_crtc *crtc);
>  void bdw_disable_vblank(struct drm_crtc *crtc);
>=20
> -void ivb_display_irq_handler(struct drm_i915_private *i915, u32 de_iir);
> -void ilk_display_irq_handler(struct drm_i915_private *i915, u32 de_iir);
> -void gen8_de_irq_handler(struct drm_i915_private *i915, u32 master_ctl);
> -void gen11_display_irq_handler(struct drm_i915_private *i915);
> +void ivb_display_irq_handler(struct intel_display *display, u32 de_iir);
> +void ilk_display_irq_handler(struct intel_display *display, u32 de_iir);
> +void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl);
> +void gen11_display_irq_handler(struct intel_display *display);
>=20
> -u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32
> master_ctl);
> -void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 =
iir);
> +u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 maste=
r_ctl);
> +void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 =
iir);
>=20
> -void i9xx_display_irq_reset(struct drm_i915_private *i915);
> -void vlv_display_irq_reset(struct drm_i915_private *i915);
> -void gen8_display_irq_reset(struct drm_i915_private *i915);
> -void gen11_display_irq_reset(struct drm_i915_private *i915);
> +void i9xx_display_irq_reset(struct intel_display *display);
> +void vlv_display_irq_reset(struct intel_display *display);
> +void gen8_display_irq_reset(struct intel_display *display);
> +void gen11_display_irq_reset(struct intel_display *display);
>=20
> -void vlv_display_irq_postinstall(struct drm_i915_private *i915);
> -void ilk_de_irq_postinstall(struct drm_i915_private *i915);
> -void gen8_de_irq_postinstall(struct drm_i915_private *i915);
> -void gen11_de_irq_postinstall(struct drm_i915_private *i915);
> -void dg1_de_irq_postinstall(struct drm_i915_private *i915);
> +void vlv_display_irq_postinstall(struct intel_display *display);
> +void ilk_de_irq_postinstall(struct intel_display *display);
> +void gen8_de_irq_postinstall(struct intel_display *display);
> +void gen11_de_irq_postinstall(struct intel_display *display);
> +void dg1_de_irq_postinstall(struct intel_display *display);
>=20
>  u32 i915_pipestat_enable_mask(struct intel_display *display, enum pipe p=
ipe);
> -void i915_enable_pipestat(struct drm_i915_private *i915, enum pipe pipe,=
 u32
> status_mask);
> -void i915_disable_pipestat(struct drm_i915_private *i915, enum pipe pipe=
, u32
> status_mask);
> -void i915_enable_asle_pipestat(struct drm_i915_private *i915);
> +void i915_enable_pipestat(struct intel_display *display, enum pipe pipe,=
 u32
> status_mask);
> +void i915_disable_pipestat(struct intel_display *display, enum pipe pipe=
, u32
> status_mask);
> +void i915_enable_asle_pipestat(struct intel_display *display);
>=20
> -void i9xx_pipestat_irq_ack(struct drm_i915_private *i915, u32 iir, u32
> pipe_stats[I915_MAX_PIPES]);
> +void i9xx_pipestat_irq_ack(struct intel_display *display, u32 iir, u32
> pipe_stats[I915_MAX_PIPES]);
>=20
> -void i915_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u=
32
> pipe_stats[I915_MAX_PIPES]);
> -void i965_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u=
32
> pipe_stats[I915_MAX_PIPES]);
> -void valleyview_pipestat_irq_handler(struct drm_i915_private *i915, u32
> pipe_stats[I915_MAX_PIPES]);
> +void i915_pipestat_irq_handler(struct intel_display *display, u32 iir, u=
32
> pipe_stats[I915_MAX_PIPES]);
> +void i965_pipestat_irq_handler(struct intel_display *display, u32 iir, u=
32
> pipe_stats[I915_MAX_PIPES]);
> +void valleyview_pipestat_irq_handler(struct intel_display *display, u32
> pipe_stats[I915_MAX_PIPES]);
>=20
>  void vlv_display_error_irq_ack(struct intel_display *display, u32 *eir, =
u32
> *dpinvgtt);
>  void vlv_display_error_irq_handler(struct intel_display *display, u32 ei=
r, u32
> dpinvgtt);
>=20
> -void intel_display_irq_init(struct drm_i915_private *i915);
> +void intel_display_irq_init(struct intel_display *display);
>=20
> -void i915gm_irq_cstate_wa(struct drm_i915_private *i915, bool enable);
> +void i915gm_irq_cstate_wa(struct intel_display *display, bool enable);
>=20
>  #endif /* __INTEL_DISPLAY_IRQ_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index daf2a0cbb157..b03a95ef64da 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -186,22 +186,18 @@ int intel_power_well_refcount(struct i915_power_wel=
l
> *power_well)
>  static void hsw_power_well_post_enable(struct intel_display *display,
>  				       u8 irq_pipe_mask, bool has_vga)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
>  	if (has_vga)
>  		intel_vga_reset_io_mem(display);
>=20
>  	if (irq_pipe_mask)
> -		gen8_irq_power_well_post_enable(dev_priv, irq_pipe_mask);
> +		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
>  }
>=20
>  static void hsw_power_well_pre_disable(struct intel_display *display,
>  				       u8 irq_pipe_mask)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
>  	if (irq_pipe_mask)
> -		gen8_irq_power_well_pre_disable(dev_priv, irq_pipe_mask);
> +		gen8_irq_power_well_pre_disable(display, irq_pipe_mask);
>  }
>=20
>  #define ICL_AUX_PW_TO_PHY(pw_idx)	\
> @@ -1226,7 +1222,7 @@ static void vlv_display_power_well_init(struct
> intel_display *display)
>  	vlv_init_display_clock_gating(display);
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	valleyview_enable_display_irqs(dev_priv);
> +	valleyview_enable_display_irqs(display);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20
>  	/*
> @@ -1255,7 +1251,7 @@ static void vlv_display_power_well_deinit(struct
> intel_display *display)
>  	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	valleyview_disable_display_irqs(dev_priv);
> +	valleyview_disable_display_irqs(display);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20
>  	/* make sure we're done processing display irqs */
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index 7a8fbff39be0..3f47a3beb2e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -136,14 +136,13 @@ static void i9xx_set_fifo_underrun_reporting(struct
> intel_display *display,
>  static void ilk_set_fifo_underrun_reporting(struct intel_display *displa=
y,
>  					    enum pipe pipe, bool enable)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 bit =3D (pipe =3D=3D PIPE_A) ?
>  		DE_PIPEA_FIFO_UNDERRUN : DE_PIPEB_FIFO_UNDERRUN;
>=20
>  	if (enable)
> -		ilk_enable_display_irq(dev_priv, bit);
> +		ilk_enable_display_irq(display, bit);
>  	else
> -		ilk_disable_display_irq(dev_priv, bit);
> +		ilk_disable_display_irq(display, bit);
>  }
>=20
>  static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
> @@ -169,7 +168,6 @@ static void ivb_set_fifo_underrun_reporting(struct
> intel_display *display,
>  					    enum pipe pipe, bool enable,
>  					    bool old)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	if (enable) {
>  		intel_de_write(display, GEN7_ERR_INT,
>  			       ERR_INT_FIFO_UNDERRUN(pipe));
> @@ -177,9 +175,9 @@ static void ivb_set_fifo_underrun_reporting(struct
> intel_display *display,
>  		if (!ivb_can_enable_err_int(display))
>  			return;
>=20
> -		ilk_enable_display_irq(dev_priv, DE_ERR_INT_IVB);
> +		ilk_enable_display_irq(display, DE_ERR_INT_IVB);
>  	} else {
> -		ilk_disable_display_irq(dev_priv, DE_ERR_INT_IVB);
> +		ilk_disable_display_irq(display, DE_ERR_INT_IVB);
>=20
>  		if (old &&
>  		    intel_de_read(display, GEN7_ERR_INT) &
> ERR_INT_FIFO_UNDERRUN(pipe)) {
> @@ -193,26 +191,23 @@ static void ivb_set_fifo_underrun_reporting(struct
> intel_display *display,
>  static void bdw_set_fifo_underrun_reporting(struct intel_display *displa=
y,
>  					    enum pipe pipe, bool enable)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
>  	if (enable)
> -		bdw_enable_pipe_irq(dev_priv, pipe,
> GEN8_PIPE_FIFO_UNDERRUN);
> +		bdw_enable_pipe_irq(display, pipe,
> GEN8_PIPE_FIFO_UNDERRUN);
>  	else
> -		bdw_disable_pipe_irq(dev_priv, pipe,
> GEN8_PIPE_FIFO_UNDERRUN);
> +		bdw_disable_pipe_irq(display, pipe,
> GEN8_PIPE_FIFO_UNDERRUN);
>  }
>=20
>  static void ibx_set_fifo_underrun_reporting(struct intel_display *displa=
y,
>  					    enum pipe pch_transcoder,
>  					    bool enable)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 bit =3D (pch_transcoder =3D=3D PIPE_A) ?
>  		SDE_TRANSA_FIFO_UNDER : SDE_TRANSB_FIFO_UNDER;
>=20
>  	if (enable)
> -		ibx_enable_display_interrupt(dev_priv, bit);
> +		ibx_enable_display_interrupt(display, bit);
>  	else
> -		ibx_disable_display_interrupt(dev_priv, bit);
> +		ibx_disable_display_interrupt(display, bit);
>  }
>=20
>  static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
> @@ -240,8 +235,6 @@ static void cpt_set_fifo_underrun_reporting(struct
> intel_display *display,
>  					    enum pipe pch_transcoder,
>  					    bool enable, bool old)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
>  	if (enable) {
>  		intel_de_write(display, SERR_INT,
>=20
> SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
> @@ -249,9 +242,9 @@ static void cpt_set_fifo_underrun_reporting(struct
> intel_display *display,
>  		if (!cpt_can_enable_serr_int(display))
>  			return;
>=20
> -		ibx_enable_display_interrupt(dev_priv, SDE_ERROR_CPT);
> +		ibx_enable_display_interrupt(display, SDE_ERROR_CPT);
>  	} else {
> -		ibx_disable_display_interrupt(dev_priv, SDE_ERROR_CPT);
> +		ibx_disable_display_interrupt(display, SDE_ERROR_CPT);
>=20
>  		if (old && intel_de_read(display, SERR_INT) &
>  		    SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index e44ae6acc55f..1bcff3a47745 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -758,13 +758,12 @@ static void ibx_hpd_enable_detection(struct
> intel_encoder *encoder)
>=20
>  static void ibx_hpd_irq_setup(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
>  	enabled_irqs =3D intel_hpd_enabled_irqs(display, display-
> >hotplug.pch_hpd);
>  	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.pch_h=
pd);
>=20
> -	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
> +	ibx_display_interrupt_update(display, hotplug_irqs, enabled_irqs);
>=20
>  	ibx_hpd_detection_setup(display);
>  }
> @@ -847,7 +846,6 @@ static void icp_hpd_enable_detection(struct
> intel_encoder *encoder)
>=20
>  static void icp_hpd_irq_setup(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
>  	enabled_irqs =3D intel_hpd_enabled_irqs(display, display-
> >hotplug.pch_hpd);
> @@ -859,7 +857,7 @@ static void icp_hpd_irq_setup(struct intel_display
> *display)
>  	 */
>  	intel_de_write(display, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
>=20
> -	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
> +	ibx_display_interrupt_update(display, hotplug_irqs, enabled_irqs);
>=20
>  	icp_ddi_hpd_detection_setup(display);
>  	icp_tc_hpd_detection_setup(display);
> @@ -1061,7 +1059,6 @@ static void mtp_hpd_enable_detection(struct
> intel_encoder *encoder)
>=20
>  static void mtp_hpd_irq_setup(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
>  	enabled_irqs =3D intel_hpd_enabled_irqs(display, display-
> >hotplug.pch_hpd);
> @@ -1074,7 +1071,7 @@ static void mtp_hpd_irq_setup(struct intel_display
> *display)
>  	intel_de_write(display, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
>=20
>  	mtp_hpd_invert(display);
> -	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
> +	ibx_display_interrupt_update(display, hotplug_irqs, enabled_irqs);
>=20
>  	mtp_ddi_hpd_detection_setup(display);
>  	mtp_tc_hpd_detection_setup(display);
> @@ -1082,13 +1079,12 @@ static void mtp_hpd_irq_setup(struct intel_displa=
y
> *display)
>=20
>  static void xe2lpd_sde_hpd_irq_setup(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
>  	enabled_irqs =3D intel_hpd_enabled_irqs(display, display-
> >hotplug.pch_hpd);
>  	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.pch_h=
pd);
>=20
> -	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
> +	ibx_display_interrupt_update(display, hotplug_irqs, enabled_irqs);
>=20
>  	mtp_ddi_hpd_detection_setup(display);
>  	mtp_tc_hpd_detection_setup(display);
> @@ -1248,7 +1244,7 @@ static void spt_hpd_irq_setup(struct intel_display
> *display)
>  	enabled_irqs =3D intel_hpd_enabled_irqs(display, display-
> >hotplug.pch_hpd);
>  	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.pch_h=
pd);
>=20
> -	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
> +	ibx_display_interrupt_update(display, hotplug_irqs, enabled_irqs);
>=20
>  	spt_hpd_detection_setup(display);
>  }
> @@ -1300,16 +1296,15 @@ static void ilk_hpd_enable_detection(struct
> intel_encoder *encoder)
>=20
>  static void ilk_hpd_irq_setup(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
>  	enabled_irqs =3D intel_hpd_enabled_irqs(display, display->hotplug.hpd);
>  	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.hpd);
>=20
>  	if (DISPLAY_VER(display) >=3D 8)
> -		bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
> +		bdw_update_port_irq(display, hotplug_irqs, enabled_irqs);
>  	else
> -		ilk_update_display_irq(dev_priv, hotplug_irqs, enabled_irqs);
> +		ilk_update_display_irq(display, hotplug_irqs, enabled_irqs);
>=20
>  	ilk_hpd_detection_setup(display);
>=20
> @@ -1373,13 +1368,12 @@ static void bxt_hpd_enable_detection(struct
> intel_encoder *encoder)
>=20
>  static void bxt_hpd_irq_setup(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
>  	enabled_irqs =3D intel_hpd_enabled_irqs(display, display->hotplug.hpd);
>  	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.hpd);
>=20
> -	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
> +	bdw_update_port_irq(display, hotplug_irqs, enabled_irqs);
>=20
>  	bxt_hpd_detection_setup(display);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> index 10e26c3db946..65f60615f387 100644
> --- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> @@ -281,6 +281,7 @@ static int ilk_pipe_crc_ctl_reg(enum
> intel_pipe_crc_source *source,
>  static void
>  intel_crtc_crc_setup_workarounds(struct intel_crtc *crtc, bool enable)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_crtc_state *pipe_config;
>  	struct drm_atomic_state *state;
> @@ -288,7 +289,7 @@ intel_crtc_crc_setup_workarounds(struct intel_crtc
> *crtc, bool enable)
>  	int ret;
>=20
>  	if (IS_I945GM(dev_priv) || IS_I915GM(dev_priv))
> -		i915gm_irq_cstate_wa(dev_priv, enable);
> +		i915gm_irq_cstate_wa(display, enable);
>=20
>  	drm_modeset_acquire_init(&ctx, 0);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c
> b/drivers/gpu/drm/i915/display/intel_tv.c
> index 5dbe857ea85b..2e3f3f0207e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -1594,7 +1594,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
>  	/* Disable TV interrupts around load detect or we'll recurse */
>  	if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
>  		spin_lock_irq(&dev_priv->irq_lock);
> -		i915_disable_pipestat(dev_priv, 0,
> +		i915_disable_pipestat(display, 0,
>  				      PIPE_HOTPLUG_INTERRUPT_STATUS |
>  				      PIPE_HOTPLUG_TV_INTERRUPT_STATUS);
>  		spin_unlock_irq(&dev_priv->irq_lock);
> @@ -1669,7 +1669,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
>  	/* Restore interrupt config */
>  	if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
>  		spin_lock_irq(&dev_priv->irq_lock);
> -		i915_enable_pipestat(dev_priv, 0,
> +		i915_enable_pipestat(display, 0,
>  				     PIPE_HOTPLUG_INTERRUPT_STATUS |
>  				     PIPE_HOTPLUG_TV_INTERRUPT_STATUS);
>  		spin_unlock_irq(&dev_priv->irq_lock);
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 70e550539bb2..8739195aba69 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2689,22 +2689,24 @@ static const struct drm_plane_funcs tgl_plane_fun=
cs
> =3D {
>  static void
>  skl_plane_enable_flip_done(struct intel_plane *plane)
>  {
> +	struct intel_display *display =3D to_intel_display(plane);
>  	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>  	enum pipe pipe =3D plane->pipe;
>=20
>  	spin_lock_irq(&i915->irq_lock);
> -	bdw_enable_pipe_irq(i915, pipe, GEN9_PIPE_PLANE_FLIP_DONE(plane-
> >id));
> +	bdw_enable_pipe_irq(display, pipe,
> GEN9_PIPE_PLANE_FLIP_DONE(plane->id));
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20
>  static void
>  skl_plane_disable_flip_done(struct intel_plane *plane)
>  {
> +	struct intel_display *display =3D to_intel_display(plane);
>  	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>  	enum pipe pipe =3D plane->pipe;
>=20
>  	spin_lock_irq(&i915->irq_lock);
> -	bdw_disable_pipe_irq(i915, pipe, GEN9_PIPE_PLANE_FLIP_DONE(plane-
> >id));
> +	bdw_disable_pipe_irq(display, pipe,
> GEN9_PIPE_PLANE_FLIP_DONE(plane->id));
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c
> b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 2cfaedb04876..4b46c59588b8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -550,6 +550,7 @@ static unsigned int init_emon(struct intel_uncore
> *uncore)
>  static bool gen5_rps_enable(struct intel_rps *rps)
>  {
>  	struct drm_i915_private *i915 =3D rps_to_i915(rps);
> +	struct intel_display *display =3D &i915->display;
>  	struct intel_uncore *uncore =3D rps_to_uncore(rps);
>  	u8 fstart, vstart;
>  	u32 rgvmodectl;
> @@ -608,7 +609,7 @@ static bool gen5_rps_enable(struct intel_rps *rps)
>  	rps->ips.last_time2 =3D ktime_get_raw_ns();
>=20
>  	spin_lock(&i915->irq_lock);
> -	ilk_enable_display_irq(i915, DE_PCU_EVENT);
> +	ilk_enable_display_irq(display, DE_PCU_EVENT);
>  	spin_unlock(&i915->irq_lock);
>=20
>  	spin_unlock_irq(&mchdev_lock);
> @@ -621,13 +622,14 @@ static bool gen5_rps_enable(struct intel_rps *rps)
>  static void gen5_rps_disable(struct intel_rps *rps)
>  {
>  	struct drm_i915_private *i915 =3D rps_to_i915(rps);
> +	struct intel_display *display =3D &i915->display;
>  	struct intel_uncore *uncore =3D rps_to_uncore(rps);
>  	u16 rgvswctl;
>=20
>  	spin_lock_irq(&mchdev_lock);
>=20
>  	spin_lock(&i915->irq_lock);
> -	ilk_disable_display_irq(i915, DE_PCU_EVENT);
> +	ilk_disable_display_irq(display, DE_PCU_EVENT);
>  	spin_unlock(&i915->irq_lock);
>=20
>  	rgvswctl =3D intel_uncore_read16(uncore, MEMSWCTL);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 3b05eb3f9cbc..ba3afc7e38ac 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -284,7 +284,7 @@ static irqreturn_t valleyview_irq_handler(int irq, vo=
id
> *arg)
>=20
>  		/* Call regardless, as some status bits might not be
>  		 * signalled in IIR */
> -		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
> +		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
>=20
>  		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
>  			   I915_LPE_PIPE_B_INTERRUPT))
> @@ -311,7 +311,7 @@ static irqreturn_t valleyview_irq_handler(int irq, vo=
id
> *arg)
>  		if (iir & I915_MASTER_ERROR_INTERRUPT)
>  			vlv_display_error_irq_handler(display, eir, dpinvgtt);
>=20
> -		valleyview_pipestat_irq_handler(dev_priv, pipe_stats);
> +		valleyview_pipestat_irq_handler(display, pipe_stats);
>  	} while (0);
>=20
>  	pmu_irq_stats(dev_priv, ret);
> @@ -374,7 +374,7 @@ static irqreturn_t cherryview_irq_handler(int irq, vo=
id
> *arg)
>=20
>  		/* Call regardless, as some status bits might not be
>  		 * signalled in IIR */
> -		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
> +		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
>=20
>  		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
>  			   I915_LPE_PIPE_B_INTERRUPT |
> @@ -397,7 +397,7 @@ static irqreturn_t cherryview_irq_handler(int irq, vo=
id
> *arg)
>  		if (iir & I915_MASTER_ERROR_INTERRUPT)
>  			vlv_display_error_irq_handler(display, eir, dpinvgtt);
>=20
> -		valleyview_pipestat_irq_handler(dev_priv, pipe_stats);
> +		valleyview_pipestat_irq_handler(display, pipe_stats);
>  	} while (0);
>=20
>  	pmu_irq_stats(dev_priv, ret);
> @@ -418,6 +418,7 @@ static irqreturn_t cherryview_irq_handler(int irq, vo=
id
> *arg)
>  static irqreturn_t ilk_irq_handler(int irq, void *arg)
>  {
>  	struct drm_i915_private *i915 =3D arg;
> +	struct intel_display *display =3D &i915->display;
>  	void __iomem * const regs =3D intel_uncore_regs(&i915->uncore);
>  	u32 de_iir, gt_iir, de_ier, sde_ier =3D 0;
>  	irqreturn_t ret =3D IRQ_NONE;
> @@ -458,9 +459,9 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg=
)
>  	if (de_iir) {
>  		raw_reg_write(regs, DEIIR, de_iir);
>  		if (DISPLAY_VER(i915) >=3D 7)
> -			ivb_display_irq_handler(i915, de_iir);
> +			ivb_display_irq_handler(display, de_iir);
>  		else
> -			ilk_display_irq_handler(i915, de_iir);
> +			ilk_display_irq_handler(display, de_iir);
>  		ret =3D IRQ_HANDLED;
>  	}
>=20
> @@ -506,6 +507,7 @@ static inline void gen8_master_intr_enable(void
> __iomem * const regs)
>  static irqreturn_t gen8_irq_handler(int irq, void *arg)
>  {
>  	struct drm_i915_private *dev_priv =3D arg;
> +	struct intel_display *display =3D &dev_priv->display;
>  	void __iomem * const regs =3D intel_uncore_regs(&dev_priv->uncore);
>  	u32 master_ctl;
>=20
> @@ -524,7 +526,7 @@ static irqreturn_t gen8_irq_handler(int irq, void *ar=
g)
>  	/* IRQs are synced during runtime_suspend, we don't require a wakeref
> */
>  	if (master_ctl & ~GEN8_GT_IRQS) {
>  		disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> -		gen8_de_irq_handler(dev_priv, master_ctl);
> +		gen8_de_irq_handler(display, master_ctl);
>  		enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  	}
>=20
> @@ -556,6 +558,7 @@ static inline void gen11_master_intr_enable(void
> __iomem * const regs)
>  static irqreturn_t gen11_irq_handler(int irq, void *arg)
>  {
>  	struct drm_i915_private *i915 =3D arg;
> +	struct intel_display *display =3D &i915->display;
>  	void __iomem * const regs =3D intel_uncore_regs(&i915->uncore);
>  	struct intel_gt *gt =3D to_gt(i915);
>  	u32 master_ctl;
> @@ -575,13 +578,13 @@ static irqreturn_t gen11_irq_handler(int irq, void =
*arg)
>=20
>  	/* IRQs are synced during runtime_suspend, we don't require a wakeref
> */
>  	if (master_ctl & GEN11_DISPLAY_IRQ)
> -		gen11_display_irq_handler(i915);
> +		gen11_display_irq_handler(display);
>=20
> -	gu_misc_iir =3D gen11_gu_misc_irq_ack(i915, master_ctl);
> +	gu_misc_iir =3D gen11_gu_misc_irq_ack(display, master_ctl);
>=20
>  	gen11_master_intr_enable(regs);
>=20
> -	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
> +	gen11_gu_misc_irq_handler(display, gu_misc_iir);
>=20
>  	pmu_irq_stats(i915, IRQ_HANDLED);
>=20
> @@ -613,6 +616,7 @@ static inline void dg1_master_intr_enable(void __iome=
m
> * const regs)
>  static irqreturn_t dg1_irq_handler(int irq, void *arg)
>  {
>  	struct drm_i915_private * const i915 =3D arg;
> +	struct intel_display *display =3D &i915->display;
>  	struct intel_gt *gt =3D to_gt(i915);
>  	void __iomem * const regs =3D intel_uncore_regs(gt->uncore);
>  	u32 master_tile_ctl, master_ctl;
> @@ -641,13 +645,13 @@ static irqreturn_t dg1_irq_handler(int irq, void *a=
rg)
>  	gen11_gt_irq_handler(gt, master_ctl);
>=20
>  	if (master_ctl & GEN11_DISPLAY_IRQ)
> -		gen11_display_irq_handler(i915);
> +		gen11_display_irq_handler(display);
>=20
> -	gu_misc_iir =3D gen11_gu_misc_irq_ack(i915, master_ctl);
> +	gu_misc_iir =3D gen11_gu_misc_irq_ack(display, master_ctl);
>=20
>  	dg1_master_intr_enable(regs);
>=20
> -	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
> +	gen11_gu_misc_irq_handler(display, gu_misc_iir);
>=20
>  	pmu_irq_stats(i915, IRQ_HANDLED);
>=20
> @@ -691,24 +695,27 @@ static void ilk_irq_reset(struct drm_i915_private
> *dev_priv)
>=20
>  static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
> +
>  	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, 0);
>  	intel_uncore_posting_read(&dev_priv->uncore, VLV_MASTER_IER);
>=20
>  	gen5_gt_irq_reset(to_gt(dev_priv));
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	vlv_display_irq_reset(dev_priv);
> +	vlv_display_irq_reset(display);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>=20
>  static void gen8_irq_reset(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>=20
>  	gen8_master_intr_disable(intel_uncore_regs(uncore));
>=20
>  	gen8_gt_irq_reset(to_gt(dev_priv));
> -	gen8_display_irq_reset(dev_priv);
> +	gen8_display_irq_reset(display);
>  	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>=20
>  	if (HAS_PCH_SPLIT(dev_priv))
> @@ -718,13 +725,14 @@ static void gen8_irq_reset(struct drm_i915_private
> *dev_priv)
>=20
>  static void gen11_irq_reset(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_gt *gt =3D to_gt(dev_priv);
>  	struct intel_uncore *uncore =3D gt->uncore;
>=20
>  	gen11_master_intr_disable(intel_uncore_regs(&dev_priv->uncore));
>=20
>  	gen11_gt_irq_reset(gt);
> -	gen11_display_irq_reset(dev_priv);
> +	gen11_display_irq_reset(display);
>=20
>  	gen2_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
>  	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
> @@ -732,6 +740,7 @@ static void gen11_irq_reset(struct drm_i915_private
> *dev_priv)
>=20
>  static void dg1_irq_reset(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>  	struct intel_gt *gt;
>  	unsigned int i;
> @@ -741,7 +750,7 @@ static void dg1_irq_reset(struct drm_i915_private
> *dev_priv)
>  	for_each_gt(gt, dev_priv, i)
>  		gen11_gt_irq_reset(gt);
>=20
> -	gen11_display_irq_reset(dev_priv);
> +	gen11_display_irq_reset(display);
>=20
>  	gen2_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
>  	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
> @@ -751,6 +760,7 @@ static void dg1_irq_reset(struct drm_i915_private
> *dev_priv)
>=20
>  static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>=20
>  	intel_uncore_write(uncore, GEN8_MASTER_IRQ, 0);
> @@ -761,23 +771,27 @@ static void cherryview_irq_reset(struct
> drm_i915_private *dev_priv)
>  	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	vlv_display_irq_reset(dev_priv);
> +	vlv_display_irq_reset(display);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>=20
>  static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
> +
>  	gen5_gt_irq_postinstall(to_gt(dev_priv));
>=20
> -	ilk_de_irq_postinstall(dev_priv);
> +	ilk_de_irq_postinstall(display);
>  }
>=20
>  static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv=
)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
> +
>  	gen5_gt_irq_postinstall(to_gt(dev_priv));
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	vlv_display_irq_postinstall(dev_priv);
> +	vlv_display_irq_postinstall(display);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20
>  	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER,
> MASTER_INTERRUPT_ENABLE);
> @@ -786,20 +800,23 @@ static void valleyview_irq_postinstall(struct
> drm_i915_private *dev_priv)
>=20
>  static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
> +
>  	gen8_gt_irq_postinstall(to_gt(dev_priv));
> -	gen8_de_irq_postinstall(dev_priv);
> +	gen8_de_irq_postinstall(display);
>=20
>  	gen8_master_intr_enable(intel_uncore_regs(&dev_priv->uncore));
>  }
>=20
>  static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_gt *gt =3D to_gt(dev_priv);
>  	struct intel_uncore *uncore =3D gt->uncore;
>  	u32 gu_misc_masked =3D GEN11_GU_MISC_GSE;
>=20
>  	gen11_gt_irq_postinstall(gt);
> -	gen11_de_irq_postinstall(dev_priv);
> +	gen11_de_irq_postinstall(display);
>=20
>  	gen2_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked,
> gu_misc_masked);
>=20
> @@ -809,6 +826,7 @@ static void gen11_irq_postinstall(struct drm_i915_pri=
vate
> *dev_priv)
>=20
>  static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>  	u32 gu_misc_masked =3D GEN11_GU_MISC_GSE;
>  	struct intel_gt *gt;
> @@ -819,7 +837,7 @@ static void dg1_irq_postinstall(struct drm_i915_priva=
te
> *dev_priv)
>=20
>  	gen2_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked,
> gu_misc_masked);
>=20
> -	dg1_de_irq_postinstall(dev_priv);
> +	dg1_de_irq_postinstall(display);
>=20
>  	dg1_master_intr_enable(intel_uncore_regs(uncore));
>  	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
> @@ -827,10 +845,12 @@ static void dg1_irq_postinstall(struct drm_i915_pri=
vate
> *dev_priv)
>=20
>  static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv=
)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
> +
>  	gen8_gt_irq_postinstall(to_gt(dev_priv));
>=20
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	vlv_display_irq_postinstall(dev_priv);
> +	vlv_display_irq_postinstall(display);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20
>  	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ,
> GEN8_MASTER_IRQ_CONTROL);
> @@ -900,9 +920,10 @@ static void i9xx_error_irq_handler(struct
> drm_i915_private *dev_priv,
>=20
>  static void i915_irq_reset(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>=20
> -	i9xx_display_irq_reset(dev_priv);
> +	i9xx_display_irq_reset(display);
>=20
>  	gen2_error_reset(uncore, GEN2_ERROR_REGS);
>  	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
> @@ -911,6 +932,7 @@ static void i915_irq_reset(struct drm_i915_private
> *dev_priv)
>=20
>  static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>  	u32 enable_mask;
>=20
> @@ -942,11 +964,11 @@ static void i915_irq_postinstall(struct
> drm_i915_private *dev_priv)
>  	/* Interrupt setup is already guaranteed to be single-threaded, this is
>  	 * just to make the assert_spin_locked check happy. */
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	i915_enable_pipestat(dev_priv, PIPE_A,
> PIPE_CRC_DONE_INTERRUPT_STATUS);
> -	i915_enable_pipestat(dev_priv, PIPE_B,
> PIPE_CRC_DONE_INTERRUPT_STATUS);
> +	i915_enable_pipestat(display, PIPE_A,
> PIPE_CRC_DONE_INTERRUPT_STATUS);
> +	i915_enable_pipestat(display, PIPE_B,
> PIPE_CRC_DONE_INTERRUPT_STATUS);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20
> -	i915_enable_asle_pipestat(dev_priv);
> +	i915_enable_asle_pipestat(display);
>  }
>=20
>  static irqreturn_t i915_irq_handler(int irq, void *arg)
> @@ -979,7 +1001,7 @@ static irqreturn_t i915_irq_handler(int irq, void *a=
rg)
>=20
>  		/* Call regardless, as some status bits might not be
>  		 * signalled in IIR */
> -		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
> +		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
>=20
>  		if (iir & I915_MASTER_ERROR_INTERRUPT)
>  			i9xx_error_irq_ack(dev_priv, &eir, &eir_stuck);
> @@ -995,7 +1017,7 @@ static irqreturn_t i915_irq_handler(int irq, void *a=
rg)
>  		if (hotplug_status)
>  			i9xx_hpd_irq_handler(display, hotplug_status);
>=20
> -		i915_pipestat_irq_handler(dev_priv, iir, pipe_stats);
> +		i915_pipestat_irq_handler(display, iir, pipe_stats);
>  	} while (0);
>=20
>  	pmu_irq_stats(dev_priv, ret);
> @@ -1007,9 +1029,10 @@ static irqreturn_t i915_irq_handler(int irq, void =
*arg)
>=20
>  static void i965_irq_reset(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>=20
> -	i9xx_display_irq_reset(dev_priv);
> +	i9xx_display_irq_reset(display);
>=20
>  	gen2_error_reset(uncore, GEN2_ERROR_REGS);
>  	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
> @@ -1037,6 +1060,7 @@ static u32 i965_error_mask(struct drm_i915_private
> *i915)
>=20
>  static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>  	u32 enable_mask;
>=20
> @@ -1065,12 +1089,12 @@ static void i965_irq_postinstall(struct
> drm_i915_private *dev_priv)
>  	/* Interrupt setup is already guaranteed to be single-threaded, this is
>  	 * just to make the assert_spin_locked check happy. */
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	i915_enable_pipestat(dev_priv, PIPE_A,
> PIPE_GMBUS_INTERRUPT_STATUS);
> -	i915_enable_pipestat(dev_priv, PIPE_A,
> PIPE_CRC_DONE_INTERRUPT_STATUS);
> -	i915_enable_pipestat(dev_priv, PIPE_B,
> PIPE_CRC_DONE_INTERRUPT_STATUS);
> +	i915_enable_pipestat(display, PIPE_A,
> PIPE_GMBUS_INTERRUPT_STATUS);
> +	i915_enable_pipestat(display, PIPE_A,
> PIPE_CRC_DONE_INTERRUPT_STATUS);
> +	i915_enable_pipestat(display, PIPE_B,
> PIPE_CRC_DONE_INTERRUPT_STATUS);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20
> -	i915_enable_asle_pipestat(dev_priv);
> +	i915_enable_asle_pipestat(display);
>  }
>=20
>  static irqreturn_t i965_irq_handler(int irq, void *arg)
> @@ -1102,7 +1126,7 @@ static irqreturn_t i965_irq_handler(int irq, void *=
arg)
>=20
>  		/* Call regardless, as some status bits might not be
>  		 * signalled in IIR */
> -		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
> +		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
>=20
>  		if (iir & I915_MASTER_ERROR_INTERRUPT)
>  			i9xx_error_irq_ack(dev_priv, &eir, &eir_stuck);
> @@ -1123,7 +1147,7 @@ static irqreturn_t i965_irq_handler(int irq, void *=
arg)
>  		if (hotplug_status)
>  			i9xx_hpd_irq_handler(display, hotplug_status);
>=20
> -		i965_pipestat_irq_handler(dev_priv, iir, pipe_stats);
> +		i965_pipestat_irq_handler(display, iir, pipe_stats);
>  	} while (0);
>=20
>  	pmu_irq_stats(dev_priv, IRQ_HANDLED);
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c
> b/drivers/gpu/drm/xe/display/xe_display.c
> index 263459323bf7..8e61cfa06647 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -220,11 +220,13 @@ void xe_display_unregister(struct xe_device *xe)
>=20
>  void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
>  {
> +	struct intel_display *display =3D &xe->display;
> +
>  	if (!xe->info.probe_display)
>  		return;
>=20
>  	if (master_ctl & DISPLAY_IRQ)
> -		gen11_display_irq_handler(xe);
> +		gen11_display_irq_handler(display);
>  }
>=20
>  void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
> @@ -240,19 +242,23 @@ void xe_display_irq_enable(struct xe_device *xe, u3=
2
> gu_misc_iir)
>=20
>  void xe_display_irq_reset(struct xe_device *xe)
>  {
> +	struct intel_display *display =3D &xe->display;
> +
>  	if (!xe->info.probe_display)
>  		return;
>=20
> -	gen11_display_irq_reset(xe);
> +	gen11_display_irq_reset(display);
>  }
>=20
>  void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
>  {
> +	struct intel_display *display =3D &xe->display;
> +
>  	if (!xe->info.probe_display)
>  		return;
>=20
>  	if (gt->info.id =3D=3D XE_GT0)
> -		gen11_de_irq_postinstall(xe);
> +		gen11_de_irq_postinstall(display);
>  }
>=20
>  static bool suspend_to_idle(void)
> --
> 2.39.5

