Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35017892071
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 16:29:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C52610EFA7;
	Fri, 29 Mar 2024 15:29:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A/FRa3Kq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 300A310EFA7
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 15:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711726162; x=1743262162;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=Mt+I40bKQpbNGTY+lEyFQ8I6QRkqNR5TdB+Cyjzkn7g=;
 b=A/FRa3Kqh3ljlo4AQGw7PdCrj/0W0T5nJAo2GwztPLouaA6rzeVbJ/eC
 uqYmgdQP/RMnwmulIWCo2sTVZDcwArcvZhwhJryk7+C1KjMa6cutyf+o2
 n2I2tTgl2v1TueIp9vA2nUOnGcx4bYBJysHjuLQROLxPlSgY3b+psvOZK
 l/L6KyNF4LtOXGpEvpfUiE/3NRNOK/9pCRnTQiP6gzyTYSYSBMslDavBD
 Ph06uoTO5MPPMtVVeGTTBEjZ2Q4/U133JWwG9IaDFfXXirgiBuv3alKg+
 F2/L1j166Y2Z7Lcn5ot3ig3BTo3ABiii3J9kiH1aFDzzEKeHelTuy2KMK g==;
X-CSE-ConnectionGUID: HaHGx1dkT9Wc38Z8aKnVvw==
X-CSE-MsgGUID: nqd2f/YZQsu6PZ84JWXlVQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="29400334"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="29400334"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 08:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="17087544"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Mar 2024 08:29:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 08:29:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 29 Mar 2024 08:29:20 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 29 Mar 2024 08:29:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d785nBpI5D8Q+2Gqzd/NTLhZbustKY+XjhmngzuFb1Rgrfje0FDcsi2kPyrrBh5XPh4a0ZYvComPZgm232Vks3aWu2mndXD7Wqa1WavQMXSDIkSv8EmcbN87sYHlZGYD8PlTT1Obb16IcpwUJmRnmWCK+ll8W+226JwATeuwTEqWRS11muFad8AoKKj295RjmKJDQtM3QfV0xUo4Fxj3D3JYbeV0msHfACDLz7QhYF2yvgz45DBrqHVhp74GBET5fGQodYiPGIewFsBy4+CWc9ID97XQ/WN9VqnknucLbUOb5YGyzMXtLHMWCEKy1OhNtfwuAU4kGmWqvytWqs3RSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bGuSe1L+pjluoINZzgMxKF5CKtfdh2nrkntFrJP7lwU=;
 b=EbSBT8NkRvUMHBr5COVSO8q+B3C2+vaEqGGgPBryjMfKHVv2UVqguWZ2UrXqUKMqxWFeXK9iKYY5H9iJTVEtTmwLQ8uGJExeM7k4s5DC07Uk7HoCShYE14QZQMHnoqMe6ie10OMDvCubGbojmcnB6lhboxZYq4WjvEAwRIA+fngIf31NG1oNjQaVKjNltku6/ecPpCRAIqptV6gEW8rIQRZT+UneGMlTN1w9bB6SOOfHZP0RErwEEghn0dSRfNuM1vmkxMTxcW+RUlBGuCUENeXZq7+fzYv3zraRqSASIwAm7IBxvgtJmP5kBBQorqNKlUImwILWntrUtsaDrgUKnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MN2PR11MB4629.namprd11.prod.outlook.com (2603:10b6:208:264::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Fri, 29 Mar
 2024 15:29:15 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7409.028; Fri, 29 Mar 2024
 15:29:15 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240327174544.983-2-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-2-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 01/13] drm/i915/cdclk: Fix CDCLK programming order when
 pipes are active
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 29 Mar 2024 12:29:09 -0300
Message-ID: <171172614955.2604.11177523422567223748@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR05CA0005.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::18) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MN2PR11MB4629:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F1mq6GB4brnQu1MY3NZMimjceINQDANELoCrYd8ym1M8j1Ia2OeM/trF/V1dK01whguTGRKD56AmKJlRBs91657YEC0ZIJVS/qPOOf0WEZVIZX7YGTxToMR5i5UTsZYIOeFrLRIsGmxLAS3eGcbAtgE+lgPqzzqXIAcQbjdHK0bWzndGDgFMI5gdwvsUPgW9fC1H2R+LjknfipnUPXucz/hZH6/Ywm2PQxjzguwnG/482L9vGFeHnh1Of6DyDOOq7/cQItao9e2E7csABzxsablxpuBKckK1SIHpIF6c6rCLeBSsK+P8cQcNIkw2jCjzxJqv1zBYvQc35Ws9YmslR54XG8FT9uBXpuM8z0oMgwJhTQ2ZQWQGNEgfotQOE9gpgYTTPili02F3jwkQTmNNvIl3V0+87azTeJkhDmgcZ1oInFiOEqp8woURAQuVC0Vbpj6Ct+8Bzh4YbFhzhQYFXbbVdWYc+mP38I9HR463a33SWxhApsDxgoTKrMo4opB5nnHB1+iQ1XpCJXMO1lNUNxSj6wOViA6gGQkgQOXhjJ9awF5zjKSDA8Kt6CvcYYbCSN6ux3hnt+rUxmkh9ifNv0aaDw9+htBxvsKPhI1nRcs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RzN1SEZkSk5iUktQcGtOUzBlTkYvcUFaTUNab3dlSjljSDFLS3d2NGErRlNY?=
 =?utf-8?B?NWxMeTNDcVdockdNTzV6UExueXVQemE5QzlVMjFuR0dibFV0eElENlp2VHRn?=
 =?utf-8?B?UU1jMjc3TUZBZ09qM2JWK2VlK3Q2ckRZc2pFRnRXNXUxMDFGR0VQVCsxeUZ6?=
 =?utf-8?B?dnhRSzZQcSt5NS8zMmllUTFldW9CL1FSVHdvcUtJd3grcUI0UmRoc3R6SzRY?=
 =?utf-8?B?dEhTVkNEbjJxcjdNcVJ4R3MrWVJGOFFYV0pkSFVIbU5lcTFKd1B5Ky9ka3I0?=
 =?utf-8?B?dTU3KzE3NzdSTVpuN0s2WnFjajZwNXhXS201Rkl6a2lMbmNKK3VnNzZHdGg2?=
 =?utf-8?B?N3RKNVhKNS9EOXBrai9QZGh4dGZCUGZ4T2M4V0s3VjJ1bGxwbW1LRHlUWm9r?=
 =?utf-8?B?V0s5a2dtYkpJZWZSM3Q2VHF3eFlGSVBsNU9SUmFXNXhYTVk2M1ZpUUhZN01R?=
 =?utf-8?B?WDJiRnQxM2YxbE1NNGdoRHJVZGRES1ZOVGFvUzRPK2dDZHdPNngyOWwrNFpi?=
 =?utf-8?B?am5LMUZBRzJKaHdOREUxdjFNK2hKUDQ0SmhwM2toK0FoV25sZ1k3ZjZQWmdS?=
 =?utf-8?B?aG1jWkVkbjYwMUtLaWxoN0loZlVMLzJXSUpOUFpKeWRISnJCZXlJOWhGOFJV?=
 =?utf-8?B?YXZtT3d0ZFhwMVJ3cm1oVE8zdHBPS2ZVK0V3M0hxei9wTkZMb3JHSGNPSCt3?=
 =?utf-8?B?alFuNnZRcVFCejhJaWFSYUdOcU1WeHJEeTVCamFNZUFQeFVWMXcyNTc2OE5B?=
 =?utf-8?B?NkRJTDJmUldNdHFmQjUxTFFLQUMvbDlYcVZkQTcxdERGTko5azdRa28rLzZ4?=
 =?utf-8?B?RnVkMWtIYnM4OHIyalh5M3h6bWVOMGRKYlZ6ajlITXdMTzVkWnBNR2dRbEt3?=
 =?utf-8?B?a0xwWHQwS1QrbU5hN1VOTkNKblVuUFJXVGw0bnJJSktibU05b3ZuMXR5Y1JF?=
 =?utf-8?B?dXVWUlNkS21LM1JVQlZ3RGV0QktpVTl5RXl6Q0Q4VWRBdW1ITGk4ckJOODRC?=
 =?utf-8?B?TG93Mys2QStxSHlYUVBBalJKNkh3Z0oveWNLZUZuNWpYbkQvamNYSkZKeDJF?=
 =?utf-8?B?NDRDemoxL25EbUw3a2hWMER0Y3BGc3ByZzVmQlRxNWVTNGYvOVRqSVowNUI5?=
 =?utf-8?B?RjhwS3c0dkttR2dyeDlsazhaRkpVemQwOG9tU2xVV0R1NG5QYU5TVlQ3OVlw?=
 =?utf-8?B?TDh6ZEd6V2w5RzUvcHVFNDdFU21Lc1p0YnlWNzd5QmdzWTFLN2hvY3RKd0Ni?=
 =?utf-8?B?UUJtR1VXajllVmd2S2dWUlhKRGF5L2dhVnhvaTE4YStXNlNOS2Y4eTdxQnh3?=
 =?utf-8?B?cXNId0JlQjVWbXppVEZNYm9yb1kyaHRUdlRqT1VkNXBERzNkUmNHNnRVQitY?=
 =?utf-8?B?THk5a0JMMkpuT1lwRFhZR2ZCWVVRYTNQbElxTWRwMHdMRm1TdllySTJGV2Fa?=
 =?utf-8?B?RHVCUXVnandXWTJvS3diL1NkZElVd2crZzdIcS9LUTFiaFdYVFFuU2NNNVVJ?=
 =?utf-8?B?OXREVlNHcHhrL05wUy9GamkzMWloTHI5THRlMnFFdTRIN1Q0dnFQSnJwbWVU?=
 =?utf-8?B?enhibDRXUHB0M29ZRkJEOWR2dUdaR3Zlend1b3dCSlBnTFhmb2p2VUZUMUwx?=
 =?utf-8?B?ZjhpUnhTN0pzQzhHQWxMMFFaSUtYYlJRTVloenRXNXRjQlBBOFMyZTl6NjN6?=
 =?utf-8?B?a2tVam42SE1ybWVGVUlJZXBOK1h1WGUvT1dwUmQ5dTdlVy9JT3UrUzI4M1RG?=
 =?utf-8?B?VklMR3BET2lEcHpvcFl5TVduL3lkaTZOZTl2UlhCUjBORXAxejM1emdJRHdB?=
 =?utf-8?B?RnYzRWE4NlNLMjNWdVYwVFA4SzlIbm5sc1FlMlVGeC9aa1dnQ05QRnpQcFBE?=
 =?utf-8?B?Y1Z2RkZtamlpSFFTUExybzM4UTJML3BHNDY2VGtsdVdFRWxsQ3AvNEZYNmVK?=
 =?utf-8?B?NU16NDFzaUQrNGRlbG1Rai9SSmM3VGk2Yyt2YnFLWGtKWDIzUE95OTZ1aVIr?=
 =?utf-8?B?K0NwVTVCWFMwNnN4b3p4YnlmcEI0a0JiTm9WYWxmejhFMEVzSzNCbWRVVk80?=
 =?utf-8?B?WTBNb2lRVXpyZHM4Y3NBRmdWZnd5bU1RTUNRRTM1VGVYQmFZS0NuVXI2Tm05?=
 =?utf-8?B?RURMUHJpWHl1WXordU1YUkZUQlpFWmhWekFBdDJKZHk2WXFmek1FZ3gwcHBH?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 315d7957-7568-4414-70cb-08dc5004fdd9
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 15:29:15.1375 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UrhK3w/QFehieomldXjzWLO+YVwz2tR193mLAdyXwRWz3R4gY+8q0j8nZTo7IbpDMnEeQ2nEh3Z9JcX9rz4WlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4629
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

Quoting Ville Syrjala (2024-03-27 14:45:32-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Currently we always reprogram CDCLK from the
>intel_set_cdclk_pre_plane_update() when using squahs/crawl.
>The code only works correctly for the cd2x update or full
>modeset cases, and it was simply never updated to deal with
>squash/crawl.
>
>If the CDCLK frequency is increasing we must reprogram it
>before we do anything else that might depend on the new
>higher frequency, and conversely we must not decrease
>the frequency until everything that might still depend
>on the old higher frequency has been dealt with.
>
>Since cdclk_state->pipe is only relevant when doing a cd2x
>update we can't use it to determine the correct sequence
>during squash/crawl. To that end introduce cdclk_state->disable_pipes
>which simply indicates that we must perform the update
>while the pipes are disable (ie. during
>intel_set_cdclk_pre_plane_update()). Otherwise we use the
>same old vs. new CDCLK frequency comparsiong as for cd2x
>updates.
>
>The only remaining problem case is when the voltage_level
>needs to increase due to a DDI port, but the CDCLK frequency
>is decreasing (and not all pipes are being disabled). The
>current approach will not bump the voltage level up until
>after the port has already been enabled, which is too late.
>But we'll take care of that case separately.

Yep. Maybe that's another reason to have that logic detached from the
cdclk sequence in the future?

Another one mentioned in an earlier discussion[1] would be the case
where voltage level changes without changes to CDCLK.

[1] https://lore.kernel.org/intel-gfx/Zc0dygncPPX_pqIi@intel.com/

>
>v2: Don't break the "must disable pipes case"
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 15 +++++++++------
> drivers/gpu/drm/i915/display/intel_cdclk.h |  3 +++
> 2 files changed, 12 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 31aaa9780dfc..619529dba095 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -2600,7 +2600,6 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic=
_state *state)
>                 intel_atomic_get_old_cdclk_state(state);
>         const struct intel_cdclk_state *new_cdclk_state =3D
>                 intel_atomic_get_new_cdclk_state(state);
>-        enum pipe pipe =3D new_cdclk_state->pipe;
>=20
>         if (!intel_cdclk_changed(&old_cdclk_state->actual,
>                                  &new_cdclk_state->actual))
>@@ -2609,11 +2608,12 @@ intel_set_cdclk_pre_plane_update(struct intel_atom=
ic_state *state)
>         if (IS_DG2(i915))
>                 intel_cdclk_pcode_pre_notify(state);
>=20
>-        if (pipe =3D=3D INVALID_PIPE ||
>+        if (new_cdclk_state->disable_pipes ||
>             old_cdclk_state->actual.cdclk <=3D new_cdclk_state->actual.cd=
clk) {
>                 drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
>=20
>-                intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
>+                intel_set_cdclk(i915, &new_cdclk_state->actual,
>+                                new_cdclk_state->pipe);
>         }
> }
>=20
>@@ -2632,7 +2632,6 @@ intel_set_cdclk_post_plane_update(struct intel_atomi=
c_state *state)
>                 intel_atomic_get_old_cdclk_state(state);
>         const struct intel_cdclk_state *new_cdclk_state =3D
>                 intel_atomic_get_new_cdclk_state(state);
>-        enum pipe pipe =3D new_cdclk_state->pipe;
>=20
>         if (!intel_cdclk_changed(&old_cdclk_state->actual,
>                                  &new_cdclk_state->actual))
>@@ -2641,11 +2640,12 @@ intel_set_cdclk_post_plane_update(struct intel_ato=
mic_state *state)
>         if (IS_DG2(i915))
>                 intel_cdclk_pcode_post_notify(state);
>=20
>-        if (pipe !=3D INVALID_PIPE &&
>+        if (!new_cdclk_state->disable_pipes &&
>             old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk=
) {
>                 drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
>=20
>-                intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
>+                intel_set_cdclk(i915, &new_cdclk_state->actual,
>+                                new_cdclk_state->pipe);
>         }
> }
>=20
>@@ -3124,6 +3124,7 @@ static struct intel_global_state *intel_cdclk_duplic=
ate_state(struct intel_globa
>                 return NULL;
>=20
>         cdclk_state->pipe =3D INVALID_PIPE;
>+        cdclk_state->disable_pipes =3D false;
>=20
>         return &cdclk_state->base;
> }
>@@ -3316,6 +3317,8 @@ int intel_modeset_calc_cdclk(struct intel_atomic_sta=
te *state)
>                 if (ret)
>                         return ret;
>=20
>+                new_cdclk_state->disable_pipes =3D true;
>+
>                 drm_dbg_kms(&dev_priv->drm,
>                             "Modeset required for cdclk change\n");
>         }
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/=
i915/display/intel_cdclk.h
>index bc8f86e292d8..2843fc091086 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
>@@ -53,6 +53,9 @@ struct intel_cdclk_state {
>=20
>         /* bitmask of active pipes */
>         u8 active_pipes;
>+
>+        /* update cdclk with pipes disabled */
>+        bool disable_pipes;
> };
>=20
> int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_stat=
e);
>--=20
>2.43.2
>
