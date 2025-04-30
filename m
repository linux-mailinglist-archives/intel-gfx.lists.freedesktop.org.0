Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D77C1AA41E4
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 06:31:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99D2610E281;
	Wed, 30 Apr 2025 04:31:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lkrgl+jw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C19B510E281;
 Wed, 30 Apr 2025 04:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745987488; x=1777523488;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1k3nP1RQZDKNVII5jb7VG4mgk8lM/RGA7/9rpw5rpl4=;
 b=Lkrgl+jwc0nqxbpG41nEYdlSCSQfi203jCZedX3jEb5tLgX0jRqw5jmy
 HNFBQZZms2Ne2a/iGP0SPcrpzZ4lsIWtMqzqe1J8+SkXTUcQdaWBZM1d9
 q9r/2297QKP3NY2kXaB60UA2LP8dD+ppC80/29w/Z2y/uZSgbGOiM451w
 1dQfko9TycWQxx/pYkjZSEK4xRM8iIVJpBLgP+UJ46AOQ984a9OgGl82G
 S+E7cloNeOpUBObKfq/uWu+bUd6yZvYTQGkjcZ82lHCU2I8IlQ876ms+z
 opamfNXDr9Pt6oYg63YCiPboWIfdh5mVL6aPbu2mz63AhVUSpX42SKj5E g==;
X-CSE-ConnectionGUID: EjnYzQP1Qh+nMvfImx9Zqg==
X-CSE-MsgGUID: 64jOG06CTB2q0cBlTBm2IA==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="47771213"
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="47771213"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 21:31:28 -0700
X-CSE-ConnectionGUID: LebYydwTTNeaAVEUJp6CbA==
X-CSE-MsgGUID: P/sjX8URQkKH8Im+1vuLHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="138822333"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 21:31:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 21:31:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 21:31:27 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 21:31:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H+0Lsgbxkog4O72vm4Q4D44MbY3Ehr4006zRJVmWwFJRWEQ65hjTv7+VnjOROXCJiLSzs1f9cbAi66reBIXRZFZYvw6t8KhPebsOXJ+5wYZBqLSoCXXYbSlD8+OYvxcOmHYjRi2jrxOdfxG+PngJwBiN2uUgOFIFhy2kKDL2kFWudkb9c8Fcd+QOV89vyNXeRptlI2t2xRdcW1iQSoYYzy9yZKnD0YywPh89StJhx66yYHmYMhbuoH1Thn5b4Wl0uEeQkTTD/TiH62iRmKejrxr5VR3JQ7mV1VRzldilSvkvMpm8bOrhx1DqZyZQBVGkr3ZH+Fk4cb4bG0wpaj5GHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CuYWYjAy99I/wugqe4113VjGCqPZPomAVfe33L+ZoNo=;
 b=W6QbIFeKPVt5fE90PVoNzr7TeSUMjIS+JkjgkKmECgGVNuU0udqOuhcIquht9AfSsmmBak4tqnOAxBRswflVFCwK3yXANI13bazLSVaygqpwPTY0RenqeHeemHZi5RDkh6frZujdjGDsDvo5p/3/LHZYd2LEMfJMoi8qim5iDhyEmkTbT82zsy0jga7EyzpLs5LPsdlISeOWKpuXmvR7xuzkdVY2/UEFn7bskCYYmzd1nPGYX3cu9s9tAsjz+A4BJwT4bCdxPpL+wjKfDpoTfjrLs4pGw6cfo6mE70Oqix49ad357GgPIdtc52BHgmNqKyEAGfBf38rMEOmsfqzc1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ2PR11MB7646.namprd11.prod.outlook.com (2603:10b6:a03:4c3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Wed, 30 Apr
 2025 04:30:57 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8655.038; Wed, 30 Apr 2025
 04:30:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 08/10] drm/i915/hdcp: simplify HDCP GSC firmware usage
 selection
Thread-Topic: [PATCH 08/10] drm/i915/hdcp: simplify HDCP GSC firmware usage
 selection
Thread-Index: AQHbtVPXBbGH9JhVNUe6HKfq5T4r5LO7pjMA
Date: Wed, 30 Apr 2025 04:30:56 +0000
Message-ID: <SN7PR11MB6750EF331CF8AFF23DA597F7E3832@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
 <a1d031bfbff7073e576dfe8d3d3d5a28d7bb2c15.1745524803.git.jani.nikula@intel.com>
In-Reply-To: <a1d031bfbff7073e576dfe8d3d3d5a28d7bb2c15.1745524803.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ2PR11MB7646:EE_
x-ms-office365-filtering-correlation-id: 11719a45-aa87-4a1f-da6b-08dd879fcd4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?uBzEDd9QrbrZqQ7+vW6cUzZsWYGxF5MqhCmS2Rh8NlLPf1c3iavJc0kgWKrb?=
 =?us-ascii?Q?t7mtf89FzxnRFF3ECqwPFYukcHdKlzDkQiqVH3EirdkSuRDsNWYQ3BkTr/Tj?=
 =?us-ascii?Q?agtaBIlqtuwYzYwv92RxkZMARW8u1cYvHmeZlLuvtEHKVisShvKKJCkKs4KK?=
 =?us-ascii?Q?3BxmYZSP1aZKLh9uc3Gxo7oKw0W1tv/GZCkGzUohpOB3tvTUoLtCkAhr75/O?=
 =?us-ascii?Q?vHxk08DTc9qOHRUHSkQKuH0vKp5MXh6qipIwOptGKV6pYpgcPS/3bQW9WT1x?=
 =?us-ascii?Q?TWMAdxeo7kyHG8WjVdnGfXJGKjC+KAM9KSKJ+Hy3xVDWMhgjy0MNkICwA3Mp?=
 =?us-ascii?Q?cNXQxGA7DXUFvn3ZSBhDkC/7cyDhIa4waL3KCoigUG/Y9/ONFS68BfiSBd4j?=
 =?us-ascii?Q?tNlfQCLd4ZrON3QI+TZugHnBBcIYKghQV4LYOIuo5VeiObHOBE/Ahdeya5NE?=
 =?us-ascii?Q?fYlQ/fR2LWfyeiwOWg++rLp2akTu1u6jfG/qe23EJQimOca7jdtEsItARRGw?=
 =?us-ascii?Q?v9f4hTzIlZtaK/TAsljwLuiv+UUG+I97HK/Y68EUawsiSpYtSj5E/loqG6hX?=
 =?us-ascii?Q?QaW+XyFm28mWr42bIRymsCr0q1/3cG9cXfZE6l38fCi0vvQsHc4GlO4mcQUY?=
 =?us-ascii?Q?bhyEthbHqa8TTWxaM/Qm/Dh0PI4XRYiApfzGjm4Ey6qok6ueboUVJBxz5orF?=
 =?us-ascii?Q?3Ycaq8wDs8+t+qvXwYQsCfG9ru6NV5IIHj5rMsOO+XngOHx2iyDX1L1QmEZF?=
 =?us-ascii?Q?luPp9aSnTWNK/6g/jUCpWdmRRTiV5Q8hJ2vrBVeJPgAApEPnxBxdnXJO2Bdy?=
 =?us-ascii?Q?wNp0J4bs2rM0aSDWBNp1W0kWlilgh4ArBvMrtmv0362UpRolTyU4MDb0HkMn?=
 =?us-ascii?Q?Yvnjexa+aiNxe2sMgVSNnDvFlrDeUbN9DD46rrrTyTXMI6en2aF9rDyXgqdB?=
 =?us-ascii?Q?vY/Rws6k3i51X4GveVeqSUv1KfxIJ2bPc6qOhjw1jv5uInW51n4c7BrXauSY?=
 =?us-ascii?Q?ZjkBMJTXgUlgDdXkbGtDVzgwc2mXr92VBTEQBogA3mWQHeD3TxurGtgWVFgi?=
 =?us-ascii?Q?xKVj0Bq0n7CiK8yzmQwQpTX/wW+jXrxJiH1w0Yu1GlIFh4TfiYGcWuACN62n?=
 =?us-ascii?Q?SYh0h/WTnzUTR2o3qU6+H3RVG2zCdYK1TDgjam+k6FG8LBAMJjDo1FPQ0kEr?=
 =?us-ascii?Q?hbrchRHV5nUPunGpj0SWVnTEKcwx+nZdvPKOu8oxPuY9U5mU59G2l6DBQApJ?=
 =?us-ascii?Q?hHNLMhSCUhFzlKUXlFGtgNdM3bsVrEZmQH24GRGShRaXup+cyoMm1R6B4c3w?=
 =?us-ascii?Q?WbqTc8wDipnUT4Gn1jREYDCZBEMcDXdhXvMbTff4u0d5xRf4s/8p2Z4Rjmau?=
 =?us-ascii?Q?tN9z9AXQOxEvUTGC6jxi7x1FhqeZrs/q+iHo9Z7GrUehdaJzcqUFPiMr0L3s?=
 =?us-ascii?Q?HfEU1pb6oPgPDTqQ8WG8ruzTheGBSxeXzt2kspi/5REUxhi8oN1/WrgIfMT8?=
 =?us-ascii?Q?yDRM2btD3Y5VDsw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YM1/0TNnyio6ZSJZCWVvhYpoESj3pFlq6SMzmOcv7TfTuWhtyqt9L5sEOCr5?=
 =?us-ascii?Q?yu6cj3try5xRUUlKEgdnyN+jPdeyIb2pl0/FJ/YvlyexjX9+rks9Zn2LqlDI?=
 =?us-ascii?Q?2Z0QHEx4/xcQmxutTrGVPwE7XTeQY0TL6jQJuvd3lW7FS/bc3RWtmrlkjHwa?=
 =?us-ascii?Q?7yvoDR9RjSlA4wU5tFNQRwu/HBUU7q3yfpcHqq6Ptm+CP2b78K9juoQeymVk?=
 =?us-ascii?Q?7EU/vzaXgNrQRTEwGPum3XDJFnbgxfGlp4ehVK4LDaSsjNJ90aj+spHIYOmo?=
 =?us-ascii?Q?J1fHNnLHUrrxGh1E3jaN2nlKBt3r0d2C/HA7YwbGlbbsNCGOxFFE+HyYlVbz?=
 =?us-ascii?Q?vjSjjJOvSZT1wEdSY4v+UZ6Ww2/bYtgc8FDhY2DQoEeynMJWK0Pt7pRhZQQ+?=
 =?us-ascii?Q?oIub9WaqIH2izP8MJ5pYJBvlyuuZf5tiNzieX48/D6KhElSajTGCXAYMHGjg?=
 =?us-ascii?Q?UY8EElOw1JLCnu1oerDHeqWnNIAkQXB8qEDUE5Bfon55Yoe/vqr96ddpXNMH?=
 =?us-ascii?Q?LZOTedHFPUQ1K40wa0lVZCnwT8eif/5a7ldxvMr8XGTb42NKS+F3VKTff7By?=
 =?us-ascii?Q?w0c+bI6C1JmjYeCt3pb8n0+3VlSF4j9MOTMIusApCuMGK9h9IsmLJ+yek7Ah?=
 =?us-ascii?Q?+QsyYmRpXEXHGV415/r04KpW7oNebfx+xLGtGcKlqFCGhBLmfTsO9fytF30I?=
 =?us-ascii?Q?WwJqTXee9nuSTA1md4B1HQ8YXuw2EILkwIC7M2L+omMc0O679e1twA0W2cU/?=
 =?us-ascii?Q?hmlwABULRJLb0fKLKw2eDkxdIdf0Ie1TqYzYSUxaVb/0vv634LC3BAVlHoLi?=
 =?us-ascii?Q?w9JVdERRP0EuxCFGAnPNjyDFyOZXiWwWlZZtd2LrmyUHAiVSvV/mHmF8ZfNP?=
 =?us-ascii?Q?ZLUBb+lticKe6YszDPU2p2wxm9XAW4W92K4E1ySamETUmbmjmRt+Y2zYM3/9?=
 =?us-ascii?Q?90fnQAj6F45lsHyNHBIy3tjBjeM7Mh/MacvSfRTnzdwYmRZFxKIjAzQv6GZ3?=
 =?us-ascii?Q?JVVNF17FmIEcXm6hgpgPhgvnqnCl5JTI7i0yFJXmB//xEt7WToq7cPuuHHUG?=
 =?us-ascii?Q?fDU61kW9H4J4SwBW2UpeJfI/P6fSI5VauaO5yPSSS1QHkSXkY8KHTnOlYXlD?=
 =?us-ascii?Q?Fvk521ObaBTzfRCZxfOHxGlrUKroIjChbQaW3wS7JZcQqQwNNNEbKowc8GJO?=
 =?us-ascii?Q?inLKIMt622WLCPLws2D8gn0wrlYIgN0PdWL0MJhPuubzBue9OhNphTO7TLMK?=
 =?us-ascii?Q?+i1Zev3v+PYarKUjaKOXgSPgEil7yG8FDmdaw3yueSnulx0Vc895sgTWPdF5?=
 =?us-ascii?Q?5jmSGjK93fvVIXok6F0eS52l7Gi6qOjsXhxSXcix0umXPAhA+4QIVL3k/3qW?=
 =?us-ascii?Q?1aC67Xa7LbO6uWhp8itgmUH1ILB337Jyrcd50ALOVf044qpJR67MErnaiH/w?=
 =?us-ascii?Q?F/tAwVcFnYKyMtchetXlGnhCO9CIZ3pRLqMBOvQVqMLG8s7PV+0a54GEN7mQ?=
 =?us-ascii?Q?ezIZUrnu5O8myFALC5qh53IGktdAfITU017mx7YyEPa0Th7thkD4x/P3TjwO?=
 =?us-ascii?Q?lN6Lxhx3/IB10oW+15xaBWXog9HAY4JyTHTtzi5w?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11719a45-aa87-4a1f-da6b-08dd879fcd4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2025 04:30:56.9872 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uo0df5cI/dzT1i1NbHc7EKzduWEDZwOVR44gTpvifx4+vuKy0Z/YByv9mAiMpkyP0zuFLf07H8JEHLUWHWYhMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7646
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
> Subject: [PATCH 08/10] drm/i915/hdcp: simplify HDCP GSC firmware usage
> selection
>=20
> Just localize the GSC decision inside intel_hdcp.c, and deduplicate the
> conditions.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 10 ++++++----
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  5 -----
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  1 -
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      |  5 -----
>  4 files changed, 6 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 4857685c4020..39bcf8f3d810 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -32,6 +32,8 @@
>  #include "intel_hdcp_shim.h"
>  #include "intel_pcode.h"
>=20
> +#define USE_HDCP_GSC(__display)		(DISPLAY_VER(__display) >=3D
> 14)
> +
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>=20
> @@ -251,7 +253,7 @@ static bool intel_hdcp2_prerequisite(struct
> intel_connector *connector)
>  		return false;
>=20
>  	/* If MTL+ make sure gsc is loaded and proxy is setup */
> -	if (intel_hdcp_gsc_cs_required(display)) {
> +	if (USE_HDCP_GSC(display)) {
>  		if (!intel_hdcp_gsc_check_status(display))
>  			return false;
>  	}
> @@ -2340,7 +2342,7 @@ static int initialize_hdcp_port_data(struct
> intel_connector *connector,
>=20
>  static bool is_hdcp2_supported(struct intel_display *display)  {
> -	if (intel_hdcp_gsc_cs_required(display))
> +	if (USE_HDCP_GSC(display))
>  		return true;
>=20
>  	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
> @@ -2364,7 +2366,7 @@ void intel_hdcp_component_init(struct intel_display
> *display)
>=20
>  	display->hdcp.comp_added =3D true;
>  	mutex_unlock(&display->hdcp.hdcp_mutex);
> -	if (intel_hdcp_gsc_cs_required(display))
> +	if (USE_HDCP_GSC(display))
>  		ret =3D intel_hdcp_gsc_init(display);
>  	else
>  		ret =3D component_add_typed(display->drm->dev,
> &i915_hdcp_ops, @@ -2639,7 +2641,7 @@ void
> intel_hdcp_component_fini(struct intel_display *display)
>  	display->hdcp.comp_added =3D false;
>  	mutex_unlock(&display->hdcp.hdcp_mutex);
>=20
> -	if (intel_hdcp_gsc_cs_required(display))
> +	if (USE_HDCP_GSC(display))
>  		intel_hdcp_gsc_fini(display);
>  	else
>  		component_del(display->drm->dev, &i915_hdcp_ops); diff --git
> a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 1ea2c7204444..4194ef77f7c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -19,11 +19,6 @@ struct intel_hdcp_gsc_context {
>  	void *hdcp_cmd_out;
>  };
>=20
> -bool intel_hdcp_gsc_cs_required(struct intel_display *display) -{
> -	return DISPLAY_VER(display) >=3D 14;
> -}
> -
>  bool intel_hdcp_gsc_check_status(struct intel_display *display)  {
>  	struct drm_i915_private *i915 =3D to_i915(display->drm); diff --git
> a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index fbef56db54f2..e963c1fcc39e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -12,7 +12,6 @@
>  struct intel_display;
>  struct intel_hdcp_gsc_context;
>=20
> -bool intel_hdcp_gsc_cs_required(struct intel_display *display);  ssize_t
> intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
>  				void *msg_in, size_t msg_in_len,
>  				void *msg_out, size_t msg_out_len); diff --git
> a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 7712d53627f0..078916072c10 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -30,11 +30,6 @@ struct intel_hdcp_gsc_context {
>=20
>  #define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
>=20
> -bool intel_hdcp_gsc_cs_required(struct intel_display *display) -{
> -	return DISPLAY_VER(display) >=3D 14;
> -}
> -
>  bool intel_hdcp_gsc_check_status(struct intel_display *display)  {
>  	struct xe_device *xe =3D to_xe_device(display->drm);
> --
> 2.39.5

