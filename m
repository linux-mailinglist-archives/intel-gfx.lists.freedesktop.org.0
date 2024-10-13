Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9503299BA1B
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Oct 2024 17:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06FC410E242;
	Sun, 13 Oct 2024 15:35:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dlenopev";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E0D510E242;
 Sun, 13 Oct 2024 15:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728833713; x=1760369713;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y7//OUIszwO/sMqK8N6UA2YPuOcvw+/LCgQsIdSJiRA=;
 b=Dlenopev51gD9cVs/d9D0vz38wUOx9MSsdy3zdgHyyDPfCJ2xEy4mB/n
 8O6JRxjkTQU4sjmLk7XGv+vuLlpB/AQSRVb8I4Vhrug/j5i5qAgmupDGO
 AXDCGZaUJM4LSi1USjkaZONa0q+W6sn1Lm/AmdRQCFNSkQAoXNVJPsMgr
 JS1lA5gcA2+wyyK7VZHw2+K45oAWYcq4K6vL9zaTyKUo8zNdt5/WQvap5
 viBZ8pyW/ry2/+nJL4ekKiwX73BJeeuiz/9f73My5wIdOIPGhRmd+aJYp
 Vld4tlFjJR+M3Y5c+qmtVYG7LSgXnGFjwyK0VzbiQ6DMFzT6oHhidjbzo Q==;
X-CSE-ConnectionGUID: mHszCLaRTaCK3em+1BpMEQ==
X-CSE-MsgGUID: 3WvmS38AQBScigaaVdSg9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="39564219"
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="39564219"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2024 08:35:12 -0700
X-CSE-ConnectionGUID: lnR+XQJyScGwPZ9vmaeRSw==
X-CSE-MsgGUID: Q14GrGFjSBikAug3oKaExA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="77002922"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2024 08:35:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 13 Oct 2024 08:35:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 13 Oct 2024 08:35:11 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 13 Oct 2024 08:35:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=taUwor+Rn1QYUaUaHNoVJndXkeAkYuMlLhPxqqNM4i9HE16PiMr/VORDObjAt8bB+AETQW3U4dUfQzn6DT7TRmRbUDLib2EC4fQCcZEbRH1ifROA6RGpI7npvd2E1pIuAQWYqQ2YuAFGPdsEfmcSS8UdyX8o8K6qtkT7GFGVc2oD05c0s0goVIxnjbilrG4saS5qNY/ZvwzJOBSb6lcOZgYJk/twCswtT6/2tdElslTMYN6Zx3pMhX9Lo5CzmZGfeM+KoFG2zlvsGj7tjQObK3wPWtGSw8sspZ0ERX9Qub6rsYjDOHEGqPHi+khvw6TVSWh+0CQf/t4Ev+68LCltQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4N/4sDuoqukcHS3jh1xoaAJVgBb5NVyS6mphUV5URWk=;
 b=w1CspdRvKuic8wwN0X7d0pQCFm9WQsQGo8riMjgoYnOE2M+nks20g0hhCf78SiJVT/OwF/tzXDOwUB9gDL7ol47RnIDMaqTn9SSCPpwAuiadXRBaLeQzY6fe6gkXJsoqNSsCuu6A6vYBYXNCaBmZ8chO41wpy//Xzt0g8fLTUHzNpmyfloGbrnWKCs1FI2z1DShC1p/fS9t2JtzB+VDnAn3vyWo7egqbIqljL8NJXUI2VBPCrUSjX46jBE7CF5x2u4aNRTqAS/ZbLkVgmx1At08/qc/Z62N77EZtyMdlEjb+t0RRbrcQ361qr6ZG5e1qQoH/ycxJI8F9kfPQvp6RcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB6554.namprd11.prod.outlook.com (2603:10b6:510:1a8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.24; Sun, 13 Oct
 2024 15:35:09 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Sun, 13 Oct 2024
 15:35:09 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 4/7] drm/i915/dp: Drop max_requested_bpc for dsc
 pipe_min/max bpp
Thread-Topic: [PATCH 4/7] drm/i915/dp: Drop max_requested_bpc for dsc
 pipe_min/max bpp
Thread-Index: AQHbFYDgcBpfgv2nfEKITB+OhMG1orKE37lA
Date: Sun, 13 Oct 2024 15:35:09 +0000
Message-ID: <SN7PR11MB675059F2CFD785CD6CF62F66E37B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
 <20241003104343.984060-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241003104343.984060-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB6554:EE_
x-ms-office365-filtering-correlation-id: 74e9e223-6135-43b2-ee0f-08dceb9c9ec6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?jwj2FZbsA3pLgcMJKYPUbYq3pzFe8YtLn4gdZFeyc1pjlJ159N7N47Hw3glY?=
 =?us-ascii?Q?I2TF8r6srmM6NoQm6gaXCGrpX6/UKei53JgQBMUuU7KVi6oCrfsCVifrFEyZ?=
 =?us-ascii?Q?aH74HdBz9teKdT6nSohoxa5LqSdNWQXOg2ttWkOFChg56A5CVYjIlDHWCmMl?=
 =?us-ascii?Q?URT+ovZLU7ftx+xjBTyPkO+3HW/s0Ai0vKoQfLbSW/Q+Dkad25OVRKyakAfh?=
 =?us-ascii?Q?L6Cv5xD2Tutr97klvupMO9ExH60tWf59+Z1Wiar/2fFyLTD1A92HotqpqoxZ?=
 =?us-ascii?Q?nHGkRcY8Yk0+XhSsDsSPEBx3ynU4224KRYKluPj+d2FRf7YewE+S4635iYqa?=
 =?us-ascii?Q?qGmKyHa5ql5LHo2DBDxH9GA6qAUXmCHWq4ghzDCjrWhIzRNq5xRXsPL5NsQr?=
 =?us-ascii?Q?j+zL208bR6yNHiZwszi4o2Xxp8wai6mh+VFjDkyHBLqFPHpCLpBXzlJG0wBH?=
 =?us-ascii?Q?/7aoUhpCAnPgbgEQh15BNZJOFpkTigbUKG96zZwmkqqV0FJWB6kBstv5xHLH?=
 =?us-ascii?Q?tEH7F7yYPdPIj97iShmgLDYSMzmcaLINVSwZ6JQ2eVHPjNR1H684k+xmr0Vn?=
 =?us-ascii?Q?K1tEGkpiF+SQJr/yVcG+49Y3Ns/34GZL+RxW8QKvTpI+wf7hytN/2FmS0FDP?=
 =?us-ascii?Q?QzjERV3mYfRkqnpE6MNDDdeNH1XBgIdmDHfv05xaNe6PZ5A2oJ4dPo+tQt4Z?=
 =?us-ascii?Q?azI5WFs1AJqfdC/NUUy1lFNRV5r2Kq5XbmWQAROsrxOJbmcZFy12oxTtAAIq?=
 =?us-ascii?Q?N64OsTe6rMxI39scqeUrRUbHM4ouwpbELmIMYdhM5TY2b90LJLnGeg0Uv+ca?=
 =?us-ascii?Q?ZcAebeU4e8YlMJ3B0mVJSyuw7qfhU8axNFuwwZa7vxf7hyxfCBnA9I17UhWX?=
 =?us-ascii?Q?7cdvgU0J7PLroD042M+3WwejsGx8EVJaIORS7zef5zE/w8G0uJ9TpWhrDNlL?=
 =?us-ascii?Q?FmJz9PxqxsVgAsDvnjozQMHKAvezQEYosdKmbYIBqzBTj+7Z/PznoC1f6gKx?=
 =?us-ascii?Q?r8hsO0JEYkIGCAu80OAaNcbFRVW1GnMt35vgmNheUTjFCJXi8LwtfrRiOf0C?=
 =?us-ascii?Q?YQCjDfOoRTpcqklAXke93u8N7raNQ6Mh5YLp/PE4zVwnmQ1FbjQvA25XHYdb?=
 =?us-ascii?Q?n6+xj9dHF6NCnFYaHYeY+olRmOaC1HmGnFOM8q6F0YPHyrzYb7Wf5B24l6PX?=
 =?us-ascii?Q?m2hgI+rLlr01H5ni/3CPAtUuvE45kdxF/aCOYTidyS9FAfLDnxaj3uxkW6+T?=
 =?us-ascii?Q?Af8TJ6eFvfpsI8brB2vLtbIO6JRXeV+evUNBP/h6WdzJAUIJ8LKdjHw51zJ1?=
 =?us-ascii?Q?NFB6dJKzV2UbDMGQZt2Yr+p4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fMHk2Mxg81gkEbOld6XyhzcnL174DVH/O0OWDSi6kYZoTBxIANMk0HDIuGDX?=
 =?us-ascii?Q?xI98VFdOQMtuY++z9dpiS1E/a7SxkzT3rHWbplBFJyGm88fKtzlqNJgIILVw?=
 =?us-ascii?Q?VeXZIwFAdDgeRXJR6eTr8pNt/LphI9yMA/eJPmvk/EK52ihvUZyf1//RGvnu?=
 =?us-ascii?Q?hOxsUCVVM7Ymdo5lUtwiIFil62F+SyNdYF9OujoWCCCAzKqjD+bSG/olJf5f?=
 =?us-ascii?Q?wUvP1Td3UikB0F/MLbXBOfFG/QiNcS/uKB+SWaZhaS9bKZK8hXDdUzavqheR?=
 =?us-ascii?Q?SVZ0qvLpTMfPhbq9Fmr+v46JUYR5uP3FA8G4jHRp5QjHqdiJ6QiYPE0fX8rP?=
 =?us-ascii?Q?ts70H9rAlI+Q9FlBTk7UgB7n+xwncrsBrTynb9qJes7JzOKzQlh05tBvvfxp?=
 =?us-ascii?Q?Go+x4rLpTEZyuK8jQ50Ri2JG3b5NGPKGV8djsV6ORQPSLSUGs06TQysl30Ms?=
 =?us-ascii?Q?NnuD5c/6aWYMH77s54sfQb/luqXWrpSwc1vrfIcZLzsZlpeRu2hT0EC2B6tL?=
 =?us-ascii?Q?lFyFUMDeJlWHFdCBNbZs8hhlzGsfMQgHqgEUJrTAQNERrHWx/cXXnAD2fgSX?=
 =?us-ascii?Q?2fEVdKSD0VGwla7wFf8JldzjpqZiK/J4ZUORjeLgwAP2zUprDxhgDNGU1wr/?=
 =?us-ascii?Q?yC8MdoFKd4c8qxOUHQwACRQ5oHpztgLjOOy8JnYrBkmQNdb599VGSKO54m9x?=
 =?us-ascii?Q?iPLQeHF/r2skHRTV+CMVXaoEsydo5jJf3o5mGbmTDRqAFAbn+E+B19eB5vtL?=
 =?us-ascii?Q?bAtPygKJhMWHuOEIkwD8MjBz1rse8R2v8C1ZCwN0+rZFHx3VfrNpGRZH+bqi?=
 =?us-ascii?Q?fYc6wDsALRnCwS5Wl8CRc7dqqSvzjMPjVKjExXMMKKePlMjiC4yTxYYh9qI6?=
 =?us-ascii?Q?d9m07vpxSLuV0l9UYt1GN5LVrlxzI2e6DhRzypQpdsxJMZPR1d4qGP5LAVLt?=
 =?us-ascii?Q?AqEBlF6b3rwLyeNvSAevLztKwsw+uuYxnIJJkT07bFp1GeN8cisSd9djpXMw?=
 =?us-ascii?Q?opWRvxjTNaPBByOwe2Ok9o6kx/1YeccaXWvlkCqrBmDwwxJYxyTkSQFqOxYv?=
 =?us-ascii?Q?JgOOlUk9GjTZRdUXktJjZ3L3qSs02W1Wbhx/Xgpme81Snx4D/QAIcrDTGtHG?=
 =?us-ascii?Q?vC9sQvlRjQbeNCP6pYD66QxbJaO4uZV+uj6HGLScrxD1fkZLYKxawSttZyVn?=
 =?us-ascii?Q?8gdbiLupNpf7vFSQPlqNFaQAKdezBCUjc37ffTlZICJplIoOCGcz8m3FZFZX?=
 =?us-ascii?Q?Jvy+dWKfoHt/epGYYvOEacU5ldcGwQhJHIkinRkjt0FX071yJzS0KVgosFkY?=
 =?us-ascii?Q?PuKPFdJRRnBTzelJI1SCuGE+G4bDWLwJ+zBS1pgjzHifa1lAvG9Jemk0iVLw?=
 =?us-ascii?Q?rNrKWxOEr8y7kqYdHRgPylz8HkpUf7d1clIE6NNa7y+ZtN48KD+UbEZ+d6ZI?=
 =?us-ascii?Q?7mT2/2aXuA+4+85yGqIj3Lyy478NRbMahYUFKXCqFKaaaVg7VIfklDZgPbea?=
 =?us-ascii?Q?t6IA4hFBG+b+Rg3qgOKNpwXinJuzZBa3WVb6E2NwmDcCPjSsVVz15S0N0ZMX?=
 =?us-ascii?Q?r89HfdOnvYcbEBkdg7jGR8NRS5RP8EHTyipa8DRN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74e9e223-6135-43b2-ee0f-08dceb9c9ec6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2024 15:35:09.0547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0PADUAQAroBLNL4MgA6GVJ2IcaXyDVg5H2EOExdyIEN+wlTN2Kr/rPPC7p1Q3hbSKcyW0aWWmCIxpWpwCaBeLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6554
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Thursday, October 3, 2024 4:14 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH 4/7] drm/i915/dp: Drop max_requested_bpc for dsc
> pipe_min/max bpp
>=20
> Currently we are including both max_requested_bpc and
> limits->pipe.bpp_max while computing maximum possible pipe bpp with
> dsc.
> However, while setting limits->pipe.max_bpp, the max_requested_bpc is
> already taken into account.
>=20
> Drop the redundant check for max_requested_bpc and use only
> limits->pipe.bpp_max. This will also result in dropping conn_state
> argument in functions where it was used only to get max_requested_bpc.
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index b553b24604e1..46f3b680afe9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2167,14 +2167,13 @@ int intel_dp_dsc_min_src_input_bpc(struct
> intel_display *display)
>=20
>  static
>  bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
> -				struct drm_connector_state *conn_state,
>  				struct link_config_limits *limits,
>  				int pipe_bpp)
>  {
>  	struct intel_display *display =3D to_intel_display(&i915->drm);
>  	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp,
> dsc_min_pipe_bpp;
>=20
> -	dsc_max_bpc =3D min(intel_dp_dsc_max_src_input_bpc(display),
> conn_state->max_requested_bpc);
> +	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(display);
>  	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(display);
>=20
>  	dsc_max_pipe_bpp =3D min(dsc_max_bpc * 3, limits->pipe.max_bpp);
> @@ -2186,7 +2185,6 @@ bool is_dsc_pipe_bpp_sufficient(struct
> drm_i915_private *i915,
>=20
>  static
>  int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
> -				struct drm_connector_state *conn_state,
>  				struct link_config_limits *limits)
>  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp); @@ -2197,7
> +2195,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
>=20
>  	forced_bpp =3D intel_dp->force_dsc_bpc * 3;
>=20
> -	if (is_dsc_pipe_bpp_sufficient(i915, conn_state, limits, forced_bpp))
> {
> +	if (is_dsc_pipe_bpp_sufficient(i915, limits, forced_bpp)) {
>  		drm_dbg_kms(&i915->drm, "Input DSC BPC forced to %d\n",
> intel_dp->force_dsc_bpc);
>  		return forced_bpp;
>  	}
> @@ -2217,14 +2215,13 @@ static int
> intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	const struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
> -	int max_req_bpc =3D conn_state->max_requested_bpc;
>  	int dsc_max_bpc, dsc_max_bpp;
>  	int dsc_min_bpc, dsc_min_bpp;
>  	u8 dsc_bpc[3] =3D {};
>  	int forced_bpp, pipe_bpp;
>  	int num_bpc, i, ret;
>=20
> -	forced_bpp =3D intel_dp_force_dsc_pipe_bpp(intel_dp, conn_state,
> limits);
> +	forced_bpp =3D intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
>=20
>  	if (forced_bpp) {
>  		ret =3D dsc_compute_compressed_bpp(intel_dp, connector,
> pipe_config, @@ -2239,7 +2236,6 @@ static int
> intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	if (!dsc_max_bpc)
>  		return -EINVAL;
>=20
> -	dsc_max_bpc =3D min(dsc_max_bpc, max_req_bpc);
>  	dsc_max_bpp =3D min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>=20
>  	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(display);
> @@ -2279,16 +2275,16 @@ static int
> intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
>  	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
>=20
> -	forced_bpp =3D intel_dp_force_dsc_pipe_bpp(intel_dp, conn_state,
> limits);
> +	forced_bpp =3D intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
>=20
>  	if (forced_bpp) {
>  		pipe_bpp =3D forced_bpp;
>  	} else {
> -		int max_bpc =3D min(limits->pipe.max_bpp / 3,
> (int)conn_state->max_requested_bpc);
> +		int max_bpc =3D limits->pipe.max_bpp / 3;
>=20
>  		/* For eDP use max bpp that can be supported with DSC. */
>  		pipe_bpp =3D intel_dp_dsc_compute_max_bpp(connector,
> max_bpc);
> -		if (!is_dsc_pipe_bpp_sufficient(i915, conn_state, limits,
> pipe_bpp)) {
> +		if (!is_dsc_pipe_bpp_sufficient(i915, limits, pipe_bpp)) {
>  			drm_dbg_kms(&i915->drm,
>  				    "Computed BPC is not in DSC BPC
> limits\n");
>  			return -EINVAL;
> --
> 2.45.2

