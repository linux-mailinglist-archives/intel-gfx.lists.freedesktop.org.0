Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4715AA6980
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 05:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6046C10E898;
	Fri,  2 May 2025 03:43:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GVbKvQWr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D9BB10E149;
 Fri,  2 May 2025 03:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746157421; x=1777693421;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4XW2F9Pkp5wfKtvixTG8UYy6x4E3VYchPhG+iCULKpc=;
 b=GVbKvQWrlaDRHOyBy2dIAOmnQ/Ob+rF4QIbUcOMKBfMe2v+jUELBMNtC
 PU0Dyn6lpK2MO5oSvB0DIiKffoFTu/V49M7nEr3zWuKUf/cFrjwRRSjoj
 pmEnRUtWqtFJxpWvZouFfpkvW0679FxG1BEu3YdmmWOgvaQcndk2ZSDEW
 g/h/rObwJbFRdV1s2Yx9uh52KaWheJug3/vpQX551x8QoGdPgxDCOPoNk
 2vykCqQNVu/3vG6Kir54VONpFBkbZr//DrG3WkZONVRXcXlLeUquCNcjU
 XWHJSIiOOIkx+okvoB/zOozkiYqrPh5Owyh1TI9o89tW81VZqbLF9QTtA A==;
X-CSE-ConnectionGUID: 3UBJe+tQSDevKjfV3cRK+w==
X-CSE-MsgGUID: H6q+GQKoRamDMlG5Dfbulw==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47727716"
X-IronPort-AV: E=Sophos;i="6.15,255,1739865600"; d="scan'208";a="47727716"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 20:43:41 -0700
X-CSE-ConnectionGUID: reyQ9N1SS++rZoaN0K6Hcg==
X-CSE-MsgGUID: 6RLs7VBGRnmjMimCSoo/7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,255,1739865600"; d="scan'208";a="134457544"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 20:43:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 1 May 2025 20:43:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 1 May 2025 20:43:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 1 May 2025 20:43:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qvdHCsQyzIJu0KWNmsKdHsrOlKgTGo0+Y4Pu8zYgRxvBUiJDd95mKF3VRM164vCkWkNfCW9NhxlV7IPsmylHbi36nyNnESvTHehM7mQgd8n1EE45cm4H5QTBwHx/HRZ5w58e9epia/AtZNShAI7oBkS+YAPjzFz34SIQQ9t0vZkLGfOQzgV2Fc8F2+o/OSO2gN73dGSyYbIr0658ajymCNjOQHpFAJ5K9yTWHZFJDjvrqGW3kuBshgjHeGdkdB/MxYKkfFjP4gizexMe0udLyz4NCzsOtQr4ubZ9PObMYyUwNaQVUPt5FEyWo4qYY2vDj440YwdtxV4WiYd173L9Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GCFX04W0D7OPTRwTt/diufRKJ829jOjQVYZ+5hv+a0Y=;
 b=PoCLu3iKw6kaxODJNp8DyHHe+wq4jE2K0z3lELSYWmoNxAFW1fVVT9fBYY1IdnBHA3QE7ITWuP9jtvp2ibGOi4+59NRJ5UGDqRhalDGPLE2MePaOycchItfE39KSktJmT1lWLo7rso0gG2JEHPfvADfboDTqhoVI8HBmoYj42kMpQr9Dsyqkl+z/zq1N+j3iTPLqxt62rMlxMWqk0dMZl6kk7N0GozueBQF8K7dA46W62gHEA4ZCAetChvCfzLjPAubavn/PI8Lp76Bv/Mia5ZmfsKNvFYlQbDLsA4a0F4Q6j/XH9jEUb6W5l8H/zkATYx3fhyA7k05qegBGU3i73g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB8803.namprd11.prod.outlook.com (2603:10b6:208:59a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Fri, 2 May
 2025 03:43:37 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8655.038; Fri, 2 May 2025
 03:43:37 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 05/10] drm/i915/hdcp: rename HDCP GSC context alloc/free
 functions
Thread-Topic: [PATCH 05/10] drm/i915/hdcp: rename HDCP GSC context alloc/free
 functions
Thread-Index: AQHbtVPRSESdE98m+USbXhy5yNn4U7O+vfww
Date: Fri, 2 May 2025 03:43:37 +0000
Message-ID: <SN7PR11MB675084FCCFC198E0974A2A75E38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
 <c6e25686ed20b5fdea9a59faf6a64a7312a075b0.1745524803.git.jani.nikula@intel.com>
In-Reply-To: <c6e25686ed20b5fdea9a59faf6a64a7312a075b0.1745524803.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB8803:EE_
x-ms-office365-filtering-correlation-id: fe2a5c4d-7591-4f68-4ed7-08dd892b8587
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?U98MUawcPEsbdhKFfI7slN7+qv50Hbp0ZRJWbCo88/X/y5+9Cx1c93bf/tTs?=
 =?us-ascii?Q?zRB3dllMXf81DSY0mOwqbY9r/870CAqZKwuaSaivX//6r+phRrOSBNKBkPC5?=
 =?us-ascii?Q?fYCpfTSVq+eizTIXgEZzop8GocH0yg1mBDmKZlTboGJmExkjtfblFUmv+v8k?=
 =?us-ascii?Q?RfuV4wRWLDzf68dzMPN9U3ppdQRtTNaum8cgS3IhKMB3twZccT8R0B43ydgE?=
 =?us-ascii?Q?JHA4uT2VnWWSDyE+8g5GbDz5i3PU6n2P3QTtlFVHJpcIsc1b18/4SUIQ7qrW?=
 =?us-ascii?Q?O/GEdhsJY6PtDOPgmXO3sbQ3C3NpDUpAOjuqe51pNgr/qPghZ6x3BfmFcNmf?=
 =?us-ascii?Q?CnigFqdj6z4QcjavqwlLhJ1kiHOF/C7WeAE6TgZFpjlynupyZh2moIybEFJH?=
 =?us-ascii?Q?kHsDeCLlz1vUNYvFnOn24EGknXfWXueQEmbP3vNfQla7bJRc/Z0xVQ73xnyb?=
 =?us-ascii?Q?c7w+oMcXPLa76ipinkUZ48G0NVyi2U4rz729cVFiSMh8zlYWNvsvj5WDHJbn?=
 =?us-ascii?Q?qCTq5PGMyQ3dAsbsJUCSCzYt0ug3JDj+SYTEUlMXeJWgBHiQlfoWMwaLtMfN?=
 =?us-ascii?Q?LmlfBsyAAyoHd0kGBdV83EppzoJ5cvpsVDNH7H+FKysnn93LcLRkNNIZpK4b?=
 =?us-ascii?Q?Pr9iy5Klaod2rWvxoAvk9cSdRmceS//QEjR2mzYKcVj/gP8nMgYTKTu0Pnwb?=
 =?us-ascii?Q?di5nYi3clMt2g3QpjXGihZUIZovZWc1HCOIClEX/fs+OJIy469xmV3xWlTlj?=
 =?us-ascii?Q?TESUrdkpa1+ZoC4IMKMWQ73a8J23Q+JdpcskeCNBUmmmrhXJcfJBc9nkqB4O?=
 =?us-ascii?Q?cBWBE6aWDRy2V17c+gna6QOC0RCxvbUmEB1mlhymaom6BhNQcjZpHE9sznWj?=
 =?us-ascii?Q?0PX759t07zwnK3tNNZCGBttbrJm4c/CmG8xV6bU5oGkNXrqSzh/fYqSF4hy4?=
 =?us-ascii?Q?POL0aSEFU802urH7K69MW5hwqtsNZrk6mtejF6uWs0OsekA5RRApe7WL/Ogn?=
 =?us-ascii?Q?O5gYtN5VhzeWGrQCqsrqLwMxpjlcygjmZ/wDJLWMV/3cZB/tAT8V08rRNVWA?=
 =?us-ascii?Q?4X2Gk6U6KTwosfMwbwffsx0CHNDgc6Lf0ryMS7ab5Q0muuD7OPsZUXYLgakh?=
 =?us-ascii?Q?OIXMJwC29Wm93afzkVWbVGtRXf28iZKkLSRLRVMzpoWWOITOT5sT1Ibiixt2?=
 =?us-ascii?Q?HjTRtYo6TWBAgFZts/k+hQM07VjHHs8/fM0DfU5kNg2nlo+Lnvuz9SmuNVb1?=
 =?us-ascii?Q?hEMgNMRbAzPIsBEf3ym1auZ8pUKEY5GRMAcuStnlcbvslO/H3NyBRjsZtn96?=
 =?us-ascii?Q?LCUuONlTCjT8HMitz7+CIGB8h4s2Lefhed6IoOkiwkWZVXxMAHGmqLjgvPEq?=
 =?us-ascii?Q?cCvtBjQHEeBMj6Ya3b/Zi1qbZVWvqUB/KBzuOB/dWstExe/ixkWI+AT3gNHf?=
 =?us-ascii?Q?1IuWWkozZ/9CQJRnTG/DlI1CXa+PrmAvgLTYq0IE+M+Hdb+RupIZiGo/lpQ6?=
 =?us-ascii?Q?58ECJKVmuwtRUSU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9oy8ZIpBhvFJROXDhSbgfagTRT73TgXwvHTB7v8QewMb55prBkFpJMrfBIdx?=
 =?us-ascii?Q?uKgmq4IwCKzyQQlpBOWgC6IF9xh0IuUxAfYlW1HAVMSQv2y8d92i7SL9/58V?=
 =?us-ascii?Q?7bvBfi/Q131EDv7LQ9EWLqonlyWDHwIKIj9yBvbX1oU/5zQ+9SQTUL1t2f+f?=
 =?us-ascii?Q?2dp7rA7JrtGJ6akxfM5UdogPvm6GUEvmrZIMoemHY3n1hAT7TXT0tL6418AV?=
 =?us-ascii?Q?K/be57p28QVKlQdrEPd6Oc0fyeBmDeyOMASrIYjhMppVE9DIcIl+xm/wpDVF?=
 =?us-ascii?Q?ebuK4qT9fOWKSxKQD+LLWfNzmlyGs6MDATxIjrrly562abB9oZq6G8isWQQh?=
 =?us-ascii?Q?yLg8KseqUQZtuAZOlzoz0EPjKdlaGLFH6Xw06uHHy/DSuPvP31C4nPT5ay9r?=
 =?us-ascii?Q?KpJMhmAkHLHGSoBgiNkPc11ZctYWPGqpyiHTN6JsR3uuOt/vyhAnKMdL3N2S?=
 =?us-ascii?Q?k6bDubi07tRP37RyKzUEihYB16PRoKclOhVixxG0wMWy/oCnwAqhghn2D8F1?=
 =?us-ascii?Q?++1ybN/ZfAHnwo/5FboSTbT+/mbH7C3cG5XHjdiQZojj0AEsLA0h60d0t/Q7?=
 =?us-ascii?Q?6aEQ5tC/e5BZERbeyUvyoY0hBch/P/M6VTZ6p0HcuM8iGIpIOFrWpWeJz2wt?=
 =?us-ascii?Q?AgD59R8EbOn4BAexm+ypV+he92wLvc1IAzBXxtK0pfRNvf2eXJCk9DoZLVkp?=
 =?us-ascii?Q?z3643PCcRhR1kGbpTwJ19WxT/M8im+S5Zl3UfvShWIWnUIj7GICUk8lRSsev?=
 =?us-ascii?Q?5qNLdt8+DG/GohNECNRfptQOCH8AWHuJKmLfxr07j4dhqPRyTPHsvTQJOrpr?=
 =?us-ascii?Q?fgERbGRWr9wAdEq7crGBEP6hGs7l7sW9GhVARk7Y13n6ezZ6dg7GXXqlfCT+?=
 =?us-ascii?Q?TWmlBZgyV7Jn+QOWp9bgRZGr4qEp6jSNidLKFTHKM7qnu7RAezVl5VGsVOlJ?=
 =?us-ascii?Q?lz+vvSow9o2IdwVbQ0TaClfAsG65NsXk/CmlDZx2P2otkADh9ksM5Jv1wLGt?=
 =?us-ascii?Q?39CJPmIJTxqw77Vi7A3WKvG8GBkg5SlhGvDSgiCyQjr6sk/IXWs2d3CRLBUQ?=
 =?us-ascii?Q?NkoFoQHha1vWbTp4WteDiFEF2qgRR1dEfGBuNWmYfrHNMFcifIS9ucw9V5eV?=
 =?us-ascii?Q?+tsGxGxGFj60v2yuIC6tvVteDqN9FA59apqk52PwEwdSbAwfWG9lAjXRxzIZ?=
 =?us-ascii?Q?9yafKUDQ2WbDUzpwF2WAWqDtclx1cBbCUyevhFgXJU9jYaFGY498I3fC+9NM?=
 =?us-ascii?Q?unyhrtiGn/Tj0/3OkYPb0JkbWM77PV2CypYI2H+1rsJ0zAu3vSlTHXaX92OL?=
 =?us-ascii?Q?9LaN/Y612+5sKv/bmtg2QFsU6dDwf7m+tgu9YQ7dRf3Ph0CAJFnXUtIh1iAA?=
 =?us-ascii?Q?GCVi8bXByEBVjQyaGQEpQsuT0XHcLmEU0kx5hyHYURvpBAGYBJCAPH0+ABCR?=
 =?us-ascii?Q?TofBdf660S5DE5Ir1ZKr+i06T7PFcDQET7vALdzgM7bzXhomvOf25PCDkawv?=
 =?us-ascii?Q?JBAfHiEppdq8HN2hNg5y+4FIEEjBsUqt9pPXjReZEB3WlFDjcY9+35I+G1Dh?=
 =?us-ascii?Q?w3m885ahgnuPBCw4EVaGRJU55YU9ObpAzPNoBYN0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe2a5c4d-7591-4f68-4ed7-08dd892b8587
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2025 03:43:37.3283 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GYxXIpMEtOEW5HPihb9y70wjQ7eqy/GGcPorJLazjZ2ju3REDORAlgywQXAtrWWMuLQgyVJIV3x55omI16A2Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8803
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, April 25, 2025 1:32 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 05/10] drm/i915/hdcp: rename HDCP GSC context alloc/free
> functions
>=20
> Name the functions intel_hdcp_gsc_context_alloc() and
> intel_hdcp_gsc_context_free() for consistency.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c         | 4 ++--
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h         | 4 ++--
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c | 4 ++--
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c              | 4 ++--
>  4 files changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 3e1dc2f7310c..efcd3a4b41ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -90,7 +90,7 @@ static int intel_hdcp_gsc_initialize_message(struct
> drm_i915_private *i915,
>  	return err;
>  }
>=20
> -struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct intel_di=
splay
> *display)
> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> +intel_display *display)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct intel_hdcp_gsc_context *gsc_context; @@ -114,7 +114,7 @@
> struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct intel_dis=
play
> *d
>  	return gsc_context;
>  }
>=20
> -void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_context
> *gsc_context)
> +void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context
> +*gsc_context)
>  {
>  	if (!gsc_context)
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index 31080df80097..227c00a837d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -19,7 +19,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> drm_i915_private *i915, u8 *msg_in,
>  				size_t msg_out_len);
>  bool intel_hdcp_gsc_check_status(struct intel_display *display);
>=20
> -struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct intel_di=
splay
> *display); -void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_contex=
t
> *gsc_context);
> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> +intel_display *display); void intel_hdcp_gsc_context_free(struct
> +intel_hdcp_gsc_context *gsc_context);
>=20
>  #endif /* __INTEL_HDCP_GCS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> index 94ca571ab481..92143226858c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> @@ -643,7 +643,7 @@ int intel_hdcp_gsc_init(struct intel_display *display=
)
>=20
>  	mutex_lock(&display->hdcp.hdcp_mutex);
>=20
> -	gsc_context =3D intel_hdcp_gsc_hdcp2_init(display);
> +	gsc_context =3D intel_hdcp_gsc_context_alloc(display);
>  	if (IS_ERR(gsc_context)) {
>  		ret =3D PTR_ERR(gsc_context);
>  		kfree(arbiter);
> @@ -663,7 +663,7 @@ int intel_hdcp_gsc_init(struct intel_display *display=
)
>=20
>  void intel_hdcp_gsc_fini(struct intel_display *display)  {
> -	intel_hdcp_gsc_free_message(display->hdcp.gsc_context);
> +	intel_hdcp_gsc_context_free(display->hdcp.gsc_context);
>  	display->hdcp.gsc_context =3D NULL;
>  	kfree(display->hdcp.arbiter);
>  	display->hdcp.arbiter =3D NULL;
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 68fac12ac666..16458c1ddbe6 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -99,7 +99,7 @@ static int intel_hdcp_gsc_initialize_message(struct
> intel_display *display,
>  	return ret;
>  }
>=20
> -struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct intel_di=
splay
> *display)
> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
> +intel_display *display)
>  {
>  	struct intel_hdcp_gsc_context *gsc_context;
>  	int ret;
> @@ -122,7 +122,7 @@ struct intel_hdcp_gsc_context
> *intel_hdcp_gsc_hdcp2_init(struct intel_display *d
>  	return gsc_context;
>  }
>=20
> -void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_context
> *gsc_context)
> +void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context
> +*gsc_context)
>  {
>  	if (!gsc_context)
>  		return;
> --
> 2.39.5

