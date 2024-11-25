Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F119D7ACB
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 05:29:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 196E810E263;
	Mon, 25 Nov 2024 04:29:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ggdd7gmk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1209410E24E;
 Mon, 25 Nov 2024 04:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732508951; x=1764044951;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YMGQ0fB0Nwg0qDIElKXKwdp/Aqv7DPo1XDgK9o4wH2g=;
 b=Ggdd7gmkFohYVEp3sWQiq1beQsFparpdRCEzdWqoPH8nGFYuvzfKypuD
 lak+q52XlgsKj/h52jViQA/R0m9GR2+QLdLwfg6DfQ1X4CW1lkbCyabic
 ykdt/yg5o8xUpiwB7TeOCmLd7orbiVGAtsdyLuJWeSI2epICZ2k0nmwTN
 cZVf+RsS+0kCUmG3Bv5lY1Ggpvs5ZINnTCHhionmSfnm4YHqb6pxgPHgl
 RaeKoFODzDXoIlZcvfzENwix6zMjBaOZ/tIO9mTe/LdHxo3jzJ/JnXwRL
 IIuCRD/yUEMA8t9rrALlMDVKVFfmUJ9iUckIk4VBGHYE74zefbLuyAAbX Q==;
X-CSE-ConnectionGUID: BYiwyztpSmif695t4DAIrQ==
X-CSE-MsgGUID: unhGIllYSDODWSUGcjK6/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11266"; a="32538081"
X-IronPort-AV: E=Sophos;i="6.12,182,1728975600"; d="scan'208";a="32538081"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2024 20:29:10 -0800
X-CSE-ConnectionGUID: +KEDYgJjRSW6ziP3rh6Nzw==
X-CSE-MsgGUID: VxB3dkOXR1C+pGNRNNWOYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="96205260"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Nov 2024 20:29:10 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 24 Nov 2024 20:29:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 24 Nov 2024 20:29:09 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 24 Nov 2024 20:29:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ctXLRRM20NzGJ8JgySx5f/2NNKifY6gwuA6Yrqz4UoCYVgkoaohcgEKYBEsUaiPq7brmMfC1VqLTp5R6p2kLiw8ek3/9blEk+QqpuEunlUFl2dgPKPtXdybLN/ulejcQDFrcJQnf5PMw0BifkMcmEtRwhDM/jLe+X1XzoKSvxhMC4JOLsfwf3zyiOU0l6J0jFIlZqzu0nqNPYQh1geeXbdGgzma8ghjaxHl4xXv+sIZTT52QcOToZV+LXxGZEoC/n7EAlPMNPyKEi6S6alwGKYzq5Fhg3Z2rueSLai7Daw2hl0hMogLWNY9fA7MWS0awoURDp5/wLhU/7dhpUXIBug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hYcwS/yJDDTHKZoUJU8YGiT2ZZujM8Vwb6feQ8Ln0Fo=;
 b=FmQceui/RAzKsXK99yydOBCueewUmJq6AJp7pDVoEqcGz2Oxl/bYsp/RjdFjbiN9ZGsijCoMFKJB0vgsYT2rv6ph7UY8mBGKggq8C+lyc3UCaLGPqtbL07wKy7VGtw/1ZiHc1eEBglUueMZlNvSP82qmFX6ub8fx6toVeagkLi+Dz7Hb8A/v6k7e2Hc4qlUGagZ3nDSf8vtCPnwqJetpUo6rL2W3ymYDDR0ZdpefAAkXIeSMQeB1gLGlf3mU6kJXTRoEQslTCX+qF3XYJT9o6ZLw0poc6ggKT69eOKZBGZoyIR112RTCPnoi2BQJnUigpgTmDbUa27QchGd/z/a6LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16)
 by PH8PR11MB7968.namprd11.prod.outlook.com (2603:10b6:510:25f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.27; Mon, 25 Nov
 2024 04:29:01 +0000
Received: from CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd]) by CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd%4]) with mapi id 15.20.8182.019; Mon, 25 Nov 2024
 04:29:01 +0000
From: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: RE: [PATCH 5/5] drm/i915/display: Load the lut values and enable
 sharpness
Thread-Topic: [PATCH 5/5] drm/i915/display: Load the lut values and enable
 sharpness
Thread-Index: AQHbNn6K+AzKHqyo9EWeT5CADZ6DMLLHeAyA
Date: Mon, 25 Nov 2024 04:29:01 +0000
Message-ID: <CH0PR11MB550862DD439DBB59BB067550C22E2@CH0PR11MB5508.namprd11.prod.outlook.com>
References: <20241114101825.3413688-1-nemesa.garg@intel.com>
 <20241114101825.3413688-6-nemesa.garg@intel.com>
In-Reply-To: <20241114101825.3413688-6-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5508:EE_|PH8PR11MB7968:EE_
x-ms-office365-filtering-correlation-id: cc9c2140-452e-4983-bd5c-08dd0d09b021
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?p1GU6YScg8EkS9zgCYg4ObMFGJIgKgoQdKOt11J7FzNKZSusacyX1JmIJe7k?=
 =?us-ascii?Q?Uf6d34ybJVMVLMHvmN46pmLWpBfCMqXo2jXPesJWgBcNxVIzJfXAWrft71QM?=
 =?us-ascii?Q?ATejhp/uVJ60hkWwIepCuScCl7OGAaEtJLheRkASKL3jKrf2/smOW0ddNdNq?=
 =?us-ascii?Q?2xIqrFn5rPE4oyfaivrc0FyXhsdBFTeHNLZP6QKJrODDAH1nB4AxoYW/bNo2?=
 =?us-ascii?Q?0lgQ0YRAzJaWDA5dyCqy2Nx7ov0rxrfKs5OvXTyuZAX0iJZSHI5ETVNGc2o3?=
 =?us-ascii?Q?Q1bt70ZscnlCLO8fc2vUzqQDzJWUo9VxPuB0I1wgGJwsdKahFGXZK+6Y6WFT?=
 =?us-ascii?Q?pGgn6OLDMV1uRLppFhi/l8MY7PekUxChfPOHezkY3tZoMu6Ip4GqFOa8wfv1?=
 =?us-ascii?Q?HSy9IHIQfPeIuzUSdBQVuGZ3uJMv2ikIexDWWmwTkKMUXp1h7frnYCfelMXk?=
 =?us-ascii?Q?Wp1E/M1aNto4DS520w+zUN+1YC7LUHo2YXyJMXuJ3cdOIe+UaNf6ICVHvUYr?=
 =?us-ascii?Q?5l/PhFhWg2BixiZJ5VEY5kNV7CVeYGF/n4pwVznqvuQqlcjJl8UOpK+T+gbJ?=
 =?us-ascii?Q?QSG4NzRBvKhtid8nUY+qBHlc9i3KUllkW5bbaUaGSyOHcj4B1rmQzNAeD7R0?=
 =?us-ascii?Q?9OQ4S23+4fAa97StyWHBB11vwVLdsIzNIak1MZU+LtP1HKF80i66/R+hdcku?=
 =?us-ascii?Q?ieaIhzSrewIhtdcPcIDJE25oO2MDBjpnMsEjBvy+dkGMHyDHUQHZ0DyX7bxm?=
 =?us-ascii?Q?2fiXr18z6I7c1nej7oKZxJgOPxV5ExHtd2700VxdjhW/zRGYHamVfEUL/ZQO?=
 =?us-ascii?Q?WbwGAIqtWcnDf0oQnDXypFaGJYiPKAj4TDfZ2dnogv6f5AZW26GKY0Gz7h2Q?=
 =?us-ascii?Q?8z4pNWsdL+Jeg+KVkmybMlDk3pwRxg3LTDLTVLAjbLyF1d3uQpDOT9suQVX8?=
 =?us-ascii?Q?8pSIo+trR+gxGPw/s85P3QnMa6wnx4uIMyHE0N3fMUXkccm4vOAdbM7UCL3t?=
 =?us-ascii?Q?420BcSKlTtP/JxhkjBE4SMQm7/Go+zJ67zpoDgpYGwF2C+Yligftv4cD/4SW?=
 =?us-ascii?Q?QYlYzJhSL7tlffF5LUFMwUwjd/4DAh5hu0CfWM6MxZQQr+DBCiK20/g0fph0?=
 =?us-ascii?Q?iljjwKgihjyGq9XUbJJZbi1VzwImuakPPpoq42rjacVshc8rWApMBy6/1vTV?=
 =?us-ascii?Q?uKU0IpG8RI2O9eQrO7x75XdtzgccLQ7wgJXF5Jsnf7YtIGnVhDSbx5y4/J4D?=
 =?us-ascii?Q?t28oUeyhAtfeu0ADiz/8f57ITzAK8bLFZJVhw4iwlAIHiGejoBflUQagzq0G?=
 =?us-ascii?Q?Lcm6hdJKLtG3OwG8HB6tGHFO7/PjC3/7/uTzjDu7Jv9o4PaPQe/UYO5PN9Hp?=
 =?us-ascii?Q?6CuwGQ0H/eu4HuM6YhJLQ13U2VhG8E39GWBnQ3xrDJK95pxLUw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5MNE0HbnWHNauzM8Iuw2SfI/TvRz8wEzr2YCKmTM34g1lOu1p0nSMuCWO6a9?=
 =?us-ascii?Q?qS7qD1pGSkbjaOqqZjXpSBUwf70NYt0O2o9/Y2tvKfakEinPDkRcwDt/34fS?=
 =?us-ascii?Q?hXn7i88pCLM8ilcsDUBFaob+iyo0TfJ89KqUcn0T4AjYTh4UY9QIm+eNh6tE?=
 =?us-ascii?Q?iiAjyQIklPrgfzc3VYKZn3G+r52YVoCsT6bMpfCaQ26ZcZ36G1raAsx3pf4g?=
 =?us-ascii?Q?yl4VCoXJMfFP5UZqv2FI5ddg5MmKokITdOi9QkCG7qluM8F8xvmyDOArwZqt?=
 =?us-ascii?Q?bZ4V+CJMvBEFS+v3QrK+i5FCcHMCurZOKGK06Gqx68+tO06G02MmZu6HFIBr?=
 =?us-ascii?Q?fO+4bvji3q1+wfXfSc/FE/pG5PG3efBwFnsH2baazmy7fAFrUdXYBZKJ2aZK?=
 =?us-ascii?Q?08V46NU3acyQskcSW6+QYTVE3T0y+O/jgeUR1erVGrjTjOwafunfAOT+0DfG?=
 =?us-ascii?Q?OLWTyM2K6r9kQHLuRmBa/hqJEAC15AA1XgjGCf4q+oL8oscuedrqFFHcLFPn?=
 =?us-ascii?Q?crrIRyzUIVM36WqTDFD8kopemSbdF3PW1omr7VXVGVVHmCMiY8EcLMWm6qH2?=
 =?us-ascii?Q?wYfg31QOu1JwGYw0Vj7KRRZfHiL3YJPepcIyBh2LmgEcbJk2OZQFxD5VW/ps?=
 =?us-ascii?Q?mlfQa2ME5HMQpIQGxZmKbvIejF0nAxGDQdE1TuhusQ7HrHNu2lm8K2X/BViE?=
 =?us-ascii?Q?OmMRxx4FC63U3QJ+88eH/UReAzg3OfcPa8Fj48mlG71qqP/PufPYW7VZFclc?=
 =?us-ascii?Q?WV3Lvqha+MP8lZsUaCJhfcLDOhNGoowxE/Lfb4D+jusDVR4gm/lIN4kR2M5c?=
 =?us-ascii?Q?rXJVMQmYu2lajuQZsxc1yhv932rbuFWNBku1WkA0Y9QxTxa8x/3T2RJR0wAW?=
 =?us-ascii?Q?iIkC1vD81z3JaAoRN+5mYMmPs8YIC/M3Vpu0rg8WJArM6wbNftdV7ZZf7SFy?=
 =?us-ascii?Q?jSHwOjfVJxqHj1Q0iVRtAR04iAcOtADolqxHl7ntWvW873zKBmfKPB08kJjs?=
 =?us-ascii?Q?52jLR6Qz3N9HWQhdtTGDI9GmgzQnYVKO0IScZ6TJHgNko3a+AcnM62aixdCj?=
 =?us-ascii?Q?DDsaFmfGIW3nx+WvorWVNfsLRCsw9r3BzHZ17vH46U7AVNYBrxoWSLbJVTBF?=
 =?us-ascii?Q?bMkgypL8Fl2OEz/AL/IDZcLJoY15yrgJJkYai4e+3WSCNlYDvCZg7QJJU2WP?=
 =?us-ascii?Q?K6Wr+f1bJo3/ok7Iv0TUpRBTe3KtRs+cUVxVPGYYzCMDcy/fcrCYKzZity6r?=
 =?us-ascii?Q?UFiNhcKrgNrwDyr5GTf8O5tBkIILeQ2Vy02TtlA/1vTWlNO9CS8onf8TD36z?=
 =?us-ascii?Q?zrAY9QjzXuYocmQA+k7U0C8cCeQL5Av9q1QFVhzTb274czJ8/Snrw1F/JASk?=
 =?us-ascii?Q?bdow312zY7IZsBBzgZUkQxs2OEPfnC/DF/691YKvhLxDtEnXOT+u1hVUib69?=
 =?us-ascii?Q?OJA22oy4MCa/DEhs6ajbo7GVb/IZaWoqKqL2laUllhfTjfUiGwiiI+/Yjr0i?=
 =?us-ascii?Q?+eBo+Jn55B0Efz61W9dWuG6e6+YGNmo460xRMjFijoE84J73CYPEBHQlRQ3Z?=
 =?us-ascii?Q?XZxItg0ZJONrhqIb35Mv65Vb4/cu3MJ7RSTuqe2lAf8CJCzKStayM3R9waGm?=
 =?us-ascii?Q?tQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc9c2140-452e-4983-bd5c-08dd0d09b021
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2024 04:29:01.6799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WZzbnfNRW/tek4qyATbU3e6nGU3fQCPgokbPXlLMBiaeZjFL3/Vpz8mPVdV7Eq7KCkULZWZV5pE2/fefENzO7UwlIaUj42E22PvbTJYtRP8wB/UhJV5N8jhYuiP+FLsp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7968
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> Nemesa Garg
> Sent: Thursday, November 14, 2024 3:48 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: [PATCH 5/5] drm/i915/display: Load the lut values and enable
> sharpness
>=20
> Load the lut values during pipe enable.
>=20
> v2: Add the display version check
> v3: Fix build issue
>=20
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>

Looks good to me.
Reviewed-by: Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c         |  3 +++
>  drivers/gpu/drm/i915/display/intel_display.c      |  6 ++++++
>  .../gpu/drm/i915/display/intel_display_types.h    |  2 ++
>  drivers/gpu/drm/i915/display/skl_scaler.c         | 15 ++++++++++++++-
>  4 files changed, 25 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> b/drivers/gpu/drm/i915/display/intel_crtc.c
> index a2c528d707f4..b4d7ae7b3db8 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -388,6 +388,9 @@ int intel_crtc_init(struct drm_i915_private *dev_priv=
,
> enum pipe pipe)
>=20
>  	drm_WARN_ON(&dev_priv->drm, drm_crtc_index(&crtc->base) !=3D
> crtc->pipe);
>=20
> +	if (DISPLAY_VER(dev_priv) >=3D 20)
> +		drm_crtc_create_sharpness_strength_property(&crtc->base);
> +
>  	return 0;
>=20
>  fail:
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index f5e837310309..e81135f8daf9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1881,6 +1881,9 @@ static void hsw_crtc_enable(struct
> intel_atomic_state *state,
>  			intel_crtc_wait_for_next_vblank(wa_crtc);
>  		}
>  	}
> +
> +	if (new_crtc_state->hw.casf_params.strength_changed)
> +		intel_filter_lut_load(crtc, new_crtc_state);
>  }
>=20
>  void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state) @@ =
-
> 7203,6 +7206,9 @@ static void intel_pre_update_crtc(struct
> intel_atomic_state *state,
>  			intel_vrr_set_transcoder_timings(new_crtc_state);
>  	}
>=20
> +	if (intel_casf_strength_changed(state))
> +		intel_casf_enable(new_crtc_state);
> +
>  	intel_fbc_update(state, crtc);
>=20
>  	drm_WARN_ON(&i915->drm, !intel_display_power_is_enabled(i915,
> POWER_DOMAIN_DC_OFF)); diff --git
> a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 19a671848f42..ad4138dcea8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -920,6 +920,8 @@ struct intel_casf {
>  	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
>  	u8 win_size;
>  	bool need_scaler;
> +	bool strength_changed;
> +	u8 strength;
>  };
>=20
>  void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val); diff --=
git
> a/drivers/gpu/drm/i915/display/skl_scaler.c
> b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 5311ef6c51d1..19f6cf62164c 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -7,6 +7,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_fb.h"
> +#include "intel_casf_regs.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>=20
> @@ -869,12 +870,13 @@ void skl_scaler_get_config(struct intel_crtc_state
> *crtc_state)
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	int id =3D -1;
>  	int i;
>=20
>  	/* find scaler attached to this pipe */
>  	for (i =3D 0; i < crtc->num_scalers; i++) {
> -		u32 ctl, pos, size;
> +		u32 ctl, pos, size, sharp;
>=20
>  		ctl =3D intel_de_read(display, SKL_PS_CTRL(crtc->pipe, i));
>  		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) !=3D
> (PS_SCALER_EN | PS_BINDING_PIPE)) @@ -882,6 +884,17 @@ void
> skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>=20
>  		id =3D i;
>=20
> +		if (DISPLAY_VER(display) >=3D 20) {
> +			sharp =3D intel_de_read(display,
> SHARPNESS_CTL(display, cpu_transcoder));
> +			if (sharp & FILTER_EN) {
> +				crtc_state->hw.casf_params.strength =3D
> +
> 	REG_FIELD_GET(FILTER_STRENGTH_MASK, sharp) - 16;
> +				crtc_state->hw.casf_params.need_scaler =3D
> true;
> +				crtc_state->hw.casf_params.win_size =3D
> +					REG_FIELD_GET(FILTER_SIZE_MASK,
> sharp);
> +			}
> +		}
> +
>  		if (!crtc_state->hw.casf_params.need_scaler)
>  			crtc_state->pch_pfit.enabled =3D true;
>=20
> --
> 2.25.1

