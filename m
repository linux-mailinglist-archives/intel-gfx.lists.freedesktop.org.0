Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 869A5C50972
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 06:14:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A54110E691;
	Wed, 12 Nov 2025 05:14:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RgNJAkHa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC00310E064;
 Wed, 12 Nov 2025 05:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762924459; x=1794460459;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jS1O+NuT5SuS2R6BkwlIUfigO1/AiZgTet9G6DpHHRg=;
 b=RgNJAkHazbvd1tXfKU8FQURwg8DYtPtXZd1nCTsrWQ8+wDzjk0dk4ZCj
 kBz/gowy/bT9vIZn0a9tZozn8E/sJxU5MpA1o0rHOK7y0I+v9YxHl/IXE
 77NOMgPxin4SyAs2tP7l+OE3S+6qMYFRfdUNYtDt5yeDF1lj8vFwmmfxn
 VqwwMtIfWfJ3l5L14GXzOtKvgleTXk3h29VEJWQDw5sDOyHXEMvo1aQFe
 Ww9kzlNVAKqBp1i4IobOWgxDsmCIsrOaxEY/rEDlLX85O3iaBd0e8Mru3
 Jk7oV/wz/OcwpmcJFeQKWczvwBZGCK9nu3kNdGZf+pRldsMpQ9UqsAG+G g==;
X-CSE-ConnectionGUID: 3BtpTuihStGGHTkOu2nQqg==
X-CSE-MsgGUID: 9vifYB8eTLKlIYXu6Pm/AQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64902714"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64902714"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:14:18 -0800
X-CSE-ConnectionGUID: KsI9B42RStKwnmoCEnEjyQ==
X-CSE-MsgGUID: dVrglSgfQq+Uebc/kC3jaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="219771698"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:14:18 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:14:17 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 21:14:17 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.42) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:14:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y0f2Rm4kuAm9pw+IsauNvC8Z7jPIqFsKk1EGN0YiQ4w02U8Wox73EY6ttudBm0k/vHExLQCFNenOZZWP5tTNfpb68FU7U2L5JAw5dKqMXgEP23q8E5aHnlSnuYzL5Hq9bE9VOV5wdBYSHgoMW7/4DRnZnqehkl27ayv2xKFlagFrbw2q5IePh83Cp7RrMFl7DEERiKVug9D3gmJJkPN9MnoHuv95JKh5PRfxKbk6d/IMynwJwi7/lNULhYaSHTyiNQQhweyDo97UInh9k5+JPlhbX7B//L/h2qutfP5PxrFNdZgO4YC4BkKCGI0Yj6glDNDssQarccnUrtLniAwkQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yMpLdoa/pZ0IqD6VokZkdr3p3zyYn8DtF4sjlEXqOYw=;
 b=y7hHXu13Xa26lkylQ/+j7Ject/YqVjSqmicp7Gn86D3Q7sz+dMQgk4JSGpnAMNrXOkgtzhCwhkqHn0Z2O7tPz3Z0BguB+0uxJI9bxx5CKTZzWv0ZN6KCZF4kKLKfkQWMyOAhquP3iLrzE1RN6kC5cMaXh3Pqxx1f+7+bhhcn3xJelM+dMcQfamjdFKj3P9APemBuvZ72vK8C/N+VQnkIbZET2gpn33KJ1Sce9xpYG9eCVaJe8g8uVGDkdjUwxYIlsND3IXNBRHEte/VXcGiV6QrnTVY2Q5mJPt9HQPrgTL5kxH46EDmTTbBFVQWuoe0cr6Sfm+YUGh70gpcOKhTypA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH0PR11MB4789.namprd11.prod.outlook.com
 (2603:10b6:510:38::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Wed, 12 Nov
 2025 05:14:10 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 05:14:10 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 25/32] drm/i915/display: Add .get_hw_state to MTL+ platforms
Thread-Topic: [CI 25/32] drm/i915/display: Add .get_hw_state to MTL+ platforms
Thread-Index: AQHcSl7nb1mEbRmOxkqjpzk3mmaUhbTukVSQ
Date: Wed, 12 Nov 2025 05:14:10 +0000
Message-ID: <DM3PPF208195D8D1B1BCB5CD13D300343CEE3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-26-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-26-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH0PR11MB4789:EE_
x-ms-office365-filtering-correlation-id: f7dd71ee-d4e1-4751-b72f-08de21aa5034
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?Kzio05VuRkd4kCvqSLQ9SjNbFVn6JoLVu0lzjkINaKjD6B1VKbIjdWV0v5S9?=
 =?us-ascii?Q?8BOr19xAlnLDsAdL30rNE5xFzglb+2M+p/5E/Yfgn/CGra7ksbTyh/dHAhHF?=
 =?us-ascii?Q?+CMcfL3S7LolBqCg1VTjqatRYN/FVjrb6pAQ5iI7Jod4fmvPX5hY+KGBZtxi?=
 =?us-ascii?Q?hKmgV/1oOzdadAWaWsWZ+7BhLLDQPzAaYnVRFzfFriSkkVANgsWfDy+Rz4A4?=
 =?us-ascii?Q?w9upwq8B/qty1isDuqF3URX2zpBQXBzO8UhEt5k+dWTtTjrdvXqgoGXA2c4r?=
 =?us-ascii?Q?9YIWyUbWXb2c/dYnkXhMhDC5U0jdMkz2CG4QsA9f7ufPCrJToMMoRsa0KCwh?=
 =?us-ascii?Q?BOAmBIW05Rb8wdacB3ItIeSWhtODMWbpcjtl/j1QrgJPai4n8vpbON8FRO+s?=
 =?us-ascii?Q?nvoqo9UqbDzkkU/YiJuX561BcSg2snQdK53xSJzTywdPRTMICJFoBg9tusOZ?=
 =?us-ascii?Q?3Z9EtqB7aUvsNdxpYdEMz5EqITLr32pB7aVgKEj3r1qvpqzWmxIV3OhU7+tV?=
 =?us-ascii?Q?tkAWpTH6araURvkoqK1jceca4Mulr69VpXFqkVnm8CYOQMARnOmPkVpHCR/e?=
 =?us-ascii?Q?SCRjPrCzamELBzIHrA4NyWnHeAqXKynp6AZFz7fYbD4yLLigVycrilHk3OSa?=
 =?us-ascii?Q?eZujAaRktcvkAaBD/8OO5NbHi9k1/ybLfFW26ZFhsguahk/Aw1luwH7sQREZ?=
 =?us-ascii?Q?oy7xURQW5LbX4gJbkfNgoHs+fQZdYYXGrGkt7fEDSrq40dEUpsi3YgJjBasM?=
 =?us-ascii?Q?GOv+yoW8efPb850WN4MYPHiU323s0xO11RKbPKWRxAW1++vNhY5cxbdArwgw?=
 =?us-ascii?Q?wIPbqnNcx4+lT3xO2NPlbRs4ArAceyHN87krw3P1k0+XVmLUpX8U+CksqGqv?=
 =?us-ascii?Q?GaYGW6fwmAXxhDJ6eAJbUeARegiMjwswrQWcxi2wdgQt30y3NNjjKpkeQWsK?=
 =?us-ascii?Q?Xng8IsGkjiTUfLJXm/8sX5MdeLs6ZTtwZo56hliDY+EIJPr2+tWACOaKlTJG?=
 =?us-ascii?Q?dftf/4XBcEGK0dKj2sF76Ej9ldb67HVeL4DIf/HcSVcC3kCQoZNTM+WTtIf6?=
 =?us-ascii?Q?ulujFsuBnOd9Da0GpArv3B50AHIc1tPA+AdMewddIy3rw/zL0UpteyM9yEh2?=
 =?us-ascii?Q?/SNdnTessIKFhYh4kXJFMs4wlV2de65/ob58O4jzfTv4vTYBCG6J2pJe+nAO?=
 =?us-ascii?Q?tOlVAgGZJX2jf4T8rjk33qomuMUWZWZCEpy8rgrz/txC07jvYlmExSu1V2Hk?=
 =?us-ascii?Q?Dx5CeYY1AREPnEJhWQW8Pcq6VtRwoi026JVBQ0wrGqByuK0ty+PKkRCwieOe?=
 =?us-ascii?Q?BIxtSJ3rvyxk+Ddd7TH0QA9UJAqqOyy9wewSGzhUr0vN/tq6ouS+T0VrtfoA?=
 =?us-ascii?Q?lYum486GOM1fqtd/uG3IiAYrJiIY7kGNp6oizREfFABwruWLuFkJ1E20eTOn?=
 =?us-ascii?Q?AMRPPa4p/WvPBL/JtSfIwazxmgG0oYUwzOH509lalfrlLtVXx78tNfyCyBOw?=
 =?us-ascii?Q?PiWIWZp7iXg7z78HDrRpUWyi6I1K+ErATmEi?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?axfIKUspCo7pfXAzyeLysp2yVdpP/pr+Z8NTP2+qI0dYERYV/7MaYuUtHz/I?=
 =?us-ascii?Q?ZN7lRoAJOowGhXFls3RNWn801ue9nnf3BvHkI4mgTeslAkhfEu0hzVutkKXh?=
 =?us-ascii?Q?e83I3VZBiTmyKmrjMN+4lxNhJji0n7E7US6nUHwAamZuZnQ/EVGIPzJ+dFIa?=
 =?us-ascii?Q?qYKHFLv/rmBoePDszCW/A1Kzl8Rb8f3TpaiJiP4YjzKWvAxIHMKXipgWN8Wq?=
 =?us-ascii?Q?3wn1pHFU+Wc+5+vfv3j0CawO6EgmLvjU86ry3GecIRsxT0hnEfc0rIY25HEo?=
 =?us-ascii?Q?p30CPdHHxMSOXWL8BN/aRSt1bGowrlsJ6uKiW5oc+mI9stHvIWNuQY5WwG+W?=
 =?us-ascii?Q?7y6auDJ4JAMNNbJTBzAijsJd4/og/LVvMjpxP6dtqDiKHWfn7iv1Hcr7D3ff?=
 =?us-ascii?Q?Jit737DNBSwnmZBYm8Pya3/nhYCqx8cPoi1eBXj+WbePdLsWZdyBiAS4LSd7?=
 =?us-ascii?Q?OqK5+vvxZM7TVb5kYMZFhUI/H2IxOJlEJp3XNWulclt9VQ+jIjJtVpRHVfiF?=
 =?us-ascii?Q?r+M2VcEdmxpQeZxC40zYuQqIs9Cm7g14wqmuGB880Ktdys1UvcT8lCLpAx+X?=
 =?us-ascii?Q?3/yXshxkCwMWiKbNJ8nfMLHxWpVGf7OdOqUrmZi6Vt4679+e3xh7tTCRmUUG?=
 =?us-ascii?Q?ToNg+s7rVxPZdkI+Jlzyewwir5OQTQ+kXaEQMaHF/wq+eO5vlapvERoML8Qo?=
 =?us-ascii?Q?puQciK8sY/82HG1O3HBSuOCfS3E2pXsc0SJLmW1Q7KtRxtq/NuhFBLomwQCI?=
 =?us-ascii?Q?0ydpl8Z91zqXUNDdXf2d9rAKt2093wmIG8C9K1oPIP9k46rUv8so4IkZ0Q04?=
 =?us-ascii?Q?p/m9MGlYuS003yvygGsWV+orA2UsLcpxeGbrBgrgakH5DASlvtARoWiUsMA6?=
 =?us-ascii?Q?6CeBUBkOoud98m3Tm0itzRkgAMztjn3HGUqCrWM+tH/FL1ZAcFr2oy83XcWI?=
 =?us-ascii?Q?Z3kLIeqU+4FBaK8TD18oMs+6DxddiRVzpOhlSjf5IAInhlNhpFVFbodaoRhR?=
 =?us-ascii?Q?I5Mx/+UQelk9rrRGI1V++/g68ToPbS2/VpWteB0K/pZKxVK+tfdfNNIIDOQa?=
 =?us-ascii?Q?pBaafAOC4JiOdeQuVXL5swyooPe+DUDCyEq2CS1omdU6/1PAwOsiSFtwNQ8n?=
 =?us-ascii?Q?djI3esfWIBkRkBMWAAssn2swL0aCd4uLGqUVEQZuPKrRaPhLye4BmiCX+r4Z?=
 =?us-ascii?Q?61PX7GUzghIQZicNbdqSO1kzGPZrzYJfYMit3aqCJNl62fh0ui9knON6mIs9?=
 =?us-ascii?Q?zkuPY4Bc5k76NfHJQjQZwZKmHV7mIB30ctrDF6ad30k2tAgyhbDMEIIu4G68?=
 =?us-ascii?Q?FA17QvqoFxypn9wsvV3zaDoAZxv5pJ9b/USOKiOT4OqVb85opIU1k7kvww1x?=
 =?us-ascii?Q?TPEkWAr9o1krBw9J5FtVyKoVSH+W6by8hNgYzBPTWA/EIDbpuYspTTvFmIi2?=
 =?us-ascii?Q?4a8PFS9D5iU4C0pYapzxIpy3HU1Z+aiDrGe42/HBGHFtiWN7jBB0G+7pkaO8?=
 =?us-ascii?Q?jNk1prOsO3Sb613HWLhoWlAGrU7QNuWZ5xq+o04qEZGgmjm6aAuGXmLkGYEi?=
 =?us-ascii?Q?LodL81P7WItB9D3V0LY3KP3CT+L2hH0rKNE6XhJd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7dd71ee-d4e1-4751-b72f-08de21aa5034
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 05:14:10.6831 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rEuKZaey/av7k3vpnOp6g3yRn7Cfs2Zxj59ZS6WUIudkXREdNJtqW7paA1255kxZsN0ExDW8FPVPTo8eB78XOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4789
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

> Subject: [CI 25/32] drm/i915/display: Add .get_hw_state to MTL+ platforms
>=20
> Add .get_hw_state hook to MTL+ platforms for dpll framework.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  9 ++++--
> drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  2 +-
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 29 +++++++++++++++++++
>  3 files changed, 37 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index e44dfda43d38..15ba3522b5b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3620,19 +3620,24 @@ intel_mtl_port_pll_type(struct intel_encoder
> *encoder,
>  		return ICL_PORT_DPLL_DEFAULT;
>  }
>=20
> -void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
> +bool intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
>  				   struct intel_cx0pll_state *pll_state)  {
>  	memset(pll_state, 0, sizeof(*pll_state));
>=20
>  	pll_state->tbt_mode =3D
> intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
>  	if (pll_state->tbt_mode)
> -		return;
> +		return true;
> +
> +	if (!intel_cx0_pll_is_enabled(encoder))
> +		return false;
>=20
>  	if (intel_encoder_is_c10phy(encoder))
>  		intel_c10pll_readout_hw_state(encoder, pll_state);
>  	else
>  		intel_c20pll_readout_hw_state(encoder, pll_state);
> +
> +	return true;
>  }
>=20
>  static bool mtl_compare_hw_state_c10(const struct intel_c10pll_state *a,
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 03441138ec01..13eaf6d280ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -32,7 +32,7 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
> int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
>  			    struct intel_encoder *encoder,
>  			    struct intel_dpll_hw_state *hw_state); -void
> intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
> +bool intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
>  				   struct intel_cx0pll_state *pll_state);  int
> intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
>  				 const struct intel_cx0pll_state *pll_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index d22771cf2ebd..db6ae7bc63d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4351,7 +4351,36 @@ static const struct intel_dpll_mgr adlp_pll_mgr =
=3D
> {
>  	.compare_hw_state =3D icl_compare_hw_state,  };
>=20
> +static struct intel_encoder *get_intel_encoder(struct intel_display *dis=
play,
> +					       const struct intel_dpll *pll) {
> +	struct intel_encoder *encoder;
> +	enum intel_dpll_id mtl_id;
> +
> +	for_each_intel_encoder(display->drm, encoder) {
> +		mtl_id =3D mtl_port_to_pll_id(display, encoder->port);
> +
> +		if (mtl_id =3D=3D pll->info->id)
> +			return encoder;
> +	}
> +
> +	return NULL;
> +}
> +
> +static bool mtl_pll_get_hw_state(struct intel_display *display,
> +				 struct intel_dpll *pll,
> +				 struct intel_dpll_hw_state *dpll_hw_state) {
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (!encoder)
> +		return false;
> +
> +	return intel_cx0pll_readout_hw_state(encoder, &dpll_hw_state-
> >cx0pll);
> +}
> +
>  static const struct intel_dpll_funcs mtl_pll_funcs =3D {
> +	.get_hw_state =3D mtl_pll_get_hw_state,
>  };
>=20
>  static const struct dpll_info mtl_plls[] =3D {
> --
> 2.34.1

