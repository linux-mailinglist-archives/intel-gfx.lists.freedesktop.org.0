Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFCB892357
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 19:29:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8CD510F1B6;
	Fri, 29 Mar 2024 18:29:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WY4FM2Y8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4D3F10F4FB
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 18:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711736956; x=1743272956;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=QfMEXR6PuOThd5Y+4rxXGVg7moTlbHBmfxvz5pLPeyc=;
 b=WY4FM2Y8kEqM4lzjAcpimGMUJKOPRUKvtU7+kNI0hLb6exZqa2WCY0Dc
 f7+fPBgKTyLuRynT1s1kMpv17oKOdktVB71a7MaF+J4Iql00wK6VogWgf
 Lxv2vct3rfoOVh6lMkVozJQ3GoxcGsg4i0y3on8lOh4EMFnfvrn2I2Izq
 Rh25AWxe9a+sz30arfnDD1CGNI7l8Sr2hjEMsVmqSiHgCIOcAC9GXEju4
 owb/bKjicoWR/76Lx1E44ha6WWXOtqXWmm7s/ZVP2BZSsyb6UDPu3qfs1
 5GtnDJDE81iuUaijrM9n0UiDSAkDqlA6iBNhSYBhOt6dDRHS5nzbdTLqb w==;
X-CSE-ConnectionGUID: 8efHQ12rTHiesNfnDw6MGg==
X-CSE-MsgGUID: ZKq7obRIR0eWjQHQ0L613Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="6871713"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; 
   d="scan'208";a="6871713"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 11:29:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="17028576"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Mar 2024 11:29:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 11:29:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 29 Mar 2024 11:29:15 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 29 Mar 2024 11:29:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HtvU64Yq7bSTFQwsfy+T9OL+aAE5WFI/bQMT/9GvJa3YoSf1XJ/vZk9R4pIGSp94ArYIjDkrynnTzg6O7r0mdtQ2e+HUgoEMArEd+X7tGYZMqcjwaNyF7h39XkN86usrONzIWYG8drhcu0jkN7Am2joWgfWQmCuYR1i0QpKjkIx+t6SNIV+VtxNiMAUtI7bNzk/PY2q2SQ8xrI5zxoSew3h0zRfE5FtnNWqgZPGelzxNYzGm95y9m7x8iIXFDArCGhuc2eWa/HVBet8TZO6PkIcArXdugsShjZHgobQCX0mm9NJ6ER5pYvIK1eIkFALU7khh9ZNiydrEfUW8fYSHNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/XcufeT4O7M77QeSNtV7x3cohoFUA2pAXqJc967ULZI=;
 b=jW6y7sud+Dqzx4ccRGDFYMHWKV17KwZ+O/VI/gJLKQpJzLjaBUJXIEgq/BJJQ/11wsEhXY6mzAHtaChtUItd0yz2hMd486fXZC7OPYDkdV+Sd3bLelh68uVWsNpAr7i0KkSEI5Vc0O4qscwMRaZ81JCsATcBNUwRufNz0FMOELpYBdQBf93f9692hmBmYeeeMu6VVWjPmVtc/V5bW5T02A/URYfwfhlzsKW35U/1QRkV+llmpkoO8o5c1aJLJ6kNoGWgWpogFdgV3CqZMBzC8D+HuKZox40/yWY9NHmGtP7iurr3OV1+XyZmbwgms6lrESC0wYFNDBhackuPNPOsHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB6734.namprd11.prod.outlook.com (2603:10b6:806:25d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Fri, 29 Mar
 2024 18:29:09 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7409.028; Fri, 29 Mar 2024
 18:29:09 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240327174544.983-8-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-8-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 07/13] drm/i915: Extract intel_dbuf_mbus_join_update()
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 29 Mar 2024 15:29:04 -0300
Message-ID: <171173694476.2604.10903896144839397412@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0151.namprd03.prod.outlook.com
 (2603:10b6:a03:338::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB6734:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N6xaBNTVVYFagMsTJqLK6rUiarT1dvxhbixmU7liO4ro2jFhvSVxhnhEvaGplDOJXF1jwbp0NrblF3GCSIAuZvXfyxzmoDCHVt4X7Xb85NxGRJuTzgqQDOMxu+3BsOffwg7OK7tZ6lgm4LZoCufSNS4v3+D3rbCiApSKGcNjHJ3/6DEq32JGDm9nhDK297m6UemYJGlRk/8wkZI7/XBb3ebdH5zmf8PDSaDwP2IJbKJ2A/R9i5CSliaMV4LohppiOlSqkdOn3rU4Ufzbki4g+ZxY32FhK8DAHr/SKjKO2Zt/L7xnRYVf9O86DzgcXbOPK88fGkzv6NHJeFu9oWW6CyqAm8beM4+6IGfzaUMNcLBL5muyNQRVcCSUvay0p0jm2CbBC60AMZxTHwBy+puiy/vtOPJyYfSwOJsEPyOlY60tF8e14fwxaqRoTzsXCaF7H4j/KhZ/+9+30TnQHdQkrphfQ92/HI+kLJO0qsQ+sw58bYGR0ikkx/+dwQcQ9G5HapuaJXqGXwe1KXcnqeCcPZfw9WNgs/CRKOs9csgPPyrzkhEU3i8u+jwNK40Me8/BhGgEvfGaz7wrUSihFhDyvTo5CK2JPQrbjj3gpdX8IwrGzxLMNmfumQ9ZAeKHqKgOmwcKwhbj+EwT8em1YsGgoPbo1HZ1QvBbtMZM4uJSRow=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmNOVUR4aE5FL3Uycnd2MnZDZXIyWGdPUEpYT2RncDFMWUJVY2hnMmxjUENs?=
 =?utf-8?B?TTFmWkhIdFcyNFFSeUlmTkhGS092eWU3OVg2REtYR3YvSUZ6UkdZZTFKd2Rr?=
 =?utf-8?B?czVzY09YMkxLdWgvb1BMdWJKV0VLallSQVZORmR4NVlobWl4WjhiT3p5ekM5?=
 =?utf-8?B?ZlQza01MZ3BmK0hDdEkwZklycWlCaHBOWS8zMzRha3FSV1BHdTFhRm5zbkM0?=
 =?utf-8?B?eC9QY3I1Z1U0cDVzZUMwamdaczVOdHJieTNJdzhJRnpxYWxTYW1GMnpqNitj?=
 =?utf-8?B?NW55NGNvdjN5aUo4Qmw2L0NpTk9ORkFNVmcyMCt3bEwvMGF0d0xTVDRlUTdD?=
 =?utf-8?B?SS9RQm9TVzNYODRPNTYzY0Vwd1o5SXN0dzZEeThjVFh0SUQzcklQUlZBUWRN?=
 =?utf-8?B?RXgyZGtYUDVORHp1RGlhQ2RVU1FIYitydDVISkNqYktZV0VVdHVuZVR2SmR2?=
 =?utf-8?B?SlR3aVp6bmwvNmorRDcxSHpVSHUvVHB0ZjdiUzZtc3dqSTVkdUhYMVBoUEZQ?=
 =?utf-8?B?RzNoVU1PNmJFR1U1M1VaNFVUcXp4dEhEUVQ5U1ZFVWVyenZ2RkZ0MDJLK2lS?=
 =?utf-8?B?eWUvSmJ0b1E5LzZkWDQvWk9zSU5jUC9JWFFmNjB3SXdHcUNwSVB1Skx3Vllp?=
 =?utf-8?B?R3FlTjFTT3dzUzhiZFd5K2pmTUJ5NXM5RHhzSFo1V0lDbWJ5a3BJZ2FBMzFj?=
 =?utf-8?B?MS9weFRLWnB0OXFTVWwyNHVXT3J3NnpYYmV2RUxVUWg2UGVSTWNlUFZwcDRV?=
 =?utf-8?B?VEY4TFdVcklyM1NKVnNOYXNjbGVUQmxnMUtKYWJ2M1FPOHJRcGxES0NJbzZn?=
 =?utf-8?B?QlRodWRrRHlINnM1Q3JBTzFxaWRHK0d3LzZZZnB1VEY0Q01PTDNRcWZOSlp5?=
 =?utf-8?B?L0EyZWV6OGFYb2FlejF6WVVYODR0SlF0RXdTZmlXNllhYjZiZmQ5NGpQT01H?=
 =?utf-8?B?cVV3cGtxSFZ6SzB0dzJsbFBnWElyYW1rUzNIRk5BSUdENUVQRGhWNnNBdGJG?=
 =?utf-8?B?V29jR2NoM25IVnVWTWY0VjNJTDN1R3B5ZkpjUjBMa0UyRFhXb05PYS9sZWp0?=
 =?utf-8?B?Qmg0RU5EcTNKOW1IVTR5Vlg2dGRlSENzQWhQa3B4cnNrZENzMWUvN3VJa240?=
 =?utf-8?B?cDJiNks2NnF6UkFSSHlSMlYzMUFrQ0paY0FvMXAwTE9NZTBFMjAvbTNkT2lG?=
 =?utf-8?B?RjN4bXZxRVVzZDJGdlNwK0FYNWk5UytFRzBTeXZnOUJENmN0dTV1QnB5Vmtw?=
 =?utf-8?B?YXY3ZUhQUUoxMnRmOUFvUlFQMVBwZFdUcDZtdFp3OWhhOTBOd0ZPL1h4bENt?=
 =?utf-8?B?QXUwRHYrSkNkZmhreVNSejBJbW9va1F3M0x3OGZBSDN4bWVYY0tEUEFRR3pZ?=
 =?utf-8?B?SHkrSTFMUld2MmpHbHJ2Q2VuUFFZL3lCampWQ3ZEcW5wYU5hejZGRTAxVllD?=
 =?utf-8?B?ci9nVzR3VzBSWnlQTk1Pa25nQ0EzVEpMamdwaG93UFlvZGpmSjJhZzVjNDNt?=
 =?utf-8?B?dkQxemIxMTFHY2hHTEZBb3B4aGx5bVlTNlZ0KzRYSGQ5UTNzQ3Q5ZkYwQWJa?=
 =?utf-8?B?Uk0reUZ6OFVIUnN2QmQ0YTZ3Q3laYVorRXF1bXJlV1V2b29Ic2pBNUVoS3hD?=
 =?utf-8?B?YkFZRTFkQnlJbUkwVE5lMmxCY2Y4dmpxZnQwS3FNOWlYdjNQUDEyajcwTkVs?=
 =?utf-8?B?NlVVWHRjaHdwMzIzcE1OSk9WKzl2QWh1Y2FmcDFkRzR1bnFyVmRidmJzWVdV?=
 =?utf-8?B?N3QzZElSb1ZJeE9wY085TThrT3hLdU5reE9LYXIwQ3VzL3Z6R2xHY01XTGlQ?=
 =?utf-8?B?RTBqY3Rsd1BHcGV4RDFrcGJDRlo5Y3BqbTBpaUdqajVmZjFMMEgzZFJyNmdq?=
 =?utf-8?B?cnlxbWlpMUN3OEJtc2UxWmloMm5WcjlIQ0xUVllRTjNJRURHZC85d2IveFI0?=
 =?utf-8?B?SnZsOTIxaDZBdjRmQnhwR2xoQ0txWDhUajVjblRLZENGTHpUTDh2am9COVlz?=
 =?utf-8?B?Z2t3VS9iN1Z1ais3WE11YVBaNWxxbkxudWphZEhNclR0eko1OFVaWklFeWMr?=
 =?utf-8?B?dW5vTWl4VXpEMFdOUVNEbWZGWkNpbkFRbG9uQW5pTVdiaTJoZll5cHN2a0pp?=
 =?utf-8?B?SDJ3NGtDbFArZGo1cDFqcm4yclVFSlBUWWNCS2lFV1FUQzdFa3BQUklHbDdh?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 656c92be-1acb-46bb-81cc-08dc501e1f9c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 18:29:09.1518 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G2bt6TCfWPTKyWhDbi4bwlOJeW6wCorppwX3F+56jzSLpA4JmQfL06IRA4hAbPcOy00iuJgpE3UXEO3IGVDJ8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6734
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

Quoting Ville Syrjala (2024-03-27 14:45:38-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Extact the stuff that writes the joining bits in MBUS_CTL
>into its own function. Will help with correctly sequencing
>the operations done during mbus programming.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/skl_watermark.c | 37 +++++++++++++-------
> 1 file changed, 25 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/dr=
m/i915/display/skl_watermark.c
>index 6bd3fec0aa56..f7e03078bd43 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.c
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>@@ -3653,21 +3653,12 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct dr=
m_i915_private *i915, u8 ratio
>                              DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
> }
>=20
>-/*
>- * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state=
 before
>- * update the request state of all DBUS slices.
>- */
>-static void update_mbus_pre_enable(struct intel_atomic_state *state)
>+static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
> {
>         struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_dbuf_state *new_dbuf_state =3D
>+                intel_atomic_get_new_dbuf_state(state);
>         u32 mbus_ctl;
>-        const struct intel_dbuf_state *old_dbuf_state =3D
>-                intel_atomic_get_old_dbuf_state(state);
>-        const struct intel_dbuf_state *new_dbuf_state =3D
>-                intel_atomic_get_new_dbuf_state(state);
>-
>-        if (!HAS_MBUS_JOINING(i915))
>-                return;
>=20
>         /*
>          * TODO: Implement vblank synchronized MBUS joining changes.
>@@ -3683,6 +3674,28 @@ static void update_mbus_pre_enable(struct intel_ato=
mic_state *state)
>         intel_de_rmw(i915, MBUS_CTL,
>                      MBUS_HASHING_MODE_MASK | MBUS_JOIN |
>                      MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
>+}
>+
>+/*
>+ * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state=
 before
>+ * update the request state of all DBUS slices.
>+ */
>+static void update_mbus_pre_enable(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_dbuf_state *old_dbuf_state =3D
>+                intel_atomic_get_old_dbuf_state(state);
>+        const struct intel_dbuf_state *new_dbuf_state =3D
>+                intel_atomic_get_new_dbuf_state(state);
>+
>+        if (!HAS_MBUS_JOINING(i915))
>+                return;
>+
>+        /*
>+         * TODO: Implement vblank synchronized MBUS joining changes.
>+         * Must be properly coordinated with dbuf reprogramming.
>+         */
>+        intel_dbuf_mbus_join_update(state);
>=20
>         if (DISPLAY_VER(i915) >=3D 20 &&
>             old_dbuf_state->mdclk_cdclk_ratio !=3D new_dbuf_state->mdclk_=
cdclk_ratio) {
>--=20
>2.43.2
>
