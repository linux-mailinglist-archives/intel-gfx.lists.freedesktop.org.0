Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BD3892257
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 18:05:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B666C1127D9;
	Fri, 29 Mar 2024 17:05:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iLm5OJVt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE93B1127CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 17:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711731910; x=1743267910;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=ZorZrI8qjdp5zwFwpcovA5vQmM3jIzo5bkzh9m3WB/A=;
 b=iLm5OJVtWT4eDKBIcfsQs+CzCIppD7CzCgDjE3VbqVzPdAtKU/aFgCbr
 fO1Lq8a6j0xwg9zeevkh6XxLLdekkQuuykVArsvOZFWq1DOUGLn6n/Tvf
 /nOgd/vZ7frOVGs3UBWpTgBWg6JPBvgaEESUHqQ+l0m5DXTiKzHAzKjPf
 PPFGtLIBjJHX+J0B0Ga71BvhrHk2Wxe1z/LALOvzy/Zpl+choG1cNvkQn
 8LAVTC3GyL2UDtPOc9ai+1IOcb+EeUggDH5bBnPXzPyyJ/I1xbKa3XJjt
 i8Tf6VNrDaoCQKNzbtbEWOKRLAK96JW5ljSOlZ2cj8M0ELCQVaiD4gHTj Q==;
X-CSE-ConnectionGUID: gBz6L+hUQJOyjcMSd/HH1Q==
X-CSE-MsgGUID: uLS/AzDXQlC8RDprbc97VQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="7034728"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; 
   d="scan'208";a="7034728"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 10:05:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="17496723"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Mar 2024 10:05:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 10:05:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 29 Mar 2024 10:05:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 29 Mar 2024 10:05:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e9ZwSOccTELb6/6ATWlyZmx1ayhTUTzjwOBtBMx3K8TdjPupqXfO7Phr05Y3QzOLE88isqKlmvOIsSEG0A4e1a0dggSH68YRamrPn4yIk69xqTLz0zICgKxkRT06lH3N3GFr6OXNKPUVcOd4T/S/JcwUOJb89U+B92urdmugqnLptaYZRfKI4rCNgDq9rEVXXRK6PHPJAhg9j9OtBa1OIChnZvOX4iwCfBSEwtQleyXfo+n9u7WQcE5iMVNEbZyKfohFiD/ePRbHMvJtm3A3XUgikUwPy6TvtEU5Z7MX8ayzMiftxOWB3w1077DCa33NdKjnDz93fwdZXth3ulHxMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bOJUkujrfD8l9pYv5/Gt+VvcAWuliHHZ/VgtND694yg=;
 b=WLFICO1/wsNtYFlNwXEYIpqn7De8mfWRZCvbP2f+zwzcmFvSeUrOHXwV8rDNUJWS0Ci9/nL+nWsZGPhrjXgnopyI8mHHlCdnjE8l/it0oyLDH1gdyQhTu+LNgjbAezSXwlET4OV1fQWmAwy8KX3YstFlIt+qeU8WwwrGUWyxOr1pzlQnNTFOq62rcOwg/e+wwlX9VQDVquqj9fF5QXN3zutm9/wi0Bl7opsa2vWtSY/5dqAWnUs29Aj1bSel7cV+89mEilgreIPjcexwdx8i6p1cDD+vgdfTwZ9DBMsJWcWIQ7MAQQYZA0aBeXEc/CAjdCI4qD38q8BR/GPFMpZ0Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7649.namprd11.prod.outlook.com (2603:10b6:8:146::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Fri, 29 Mar
 2024 17:05:06 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7409.028; Fri, 29 Mar 2024
 17:05:06 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240327174544.983-3-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-3-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 02/13] drm/i915/cdclk: Fix voltage_level programming edge
 case
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 29 Mar 2024 14:04:55 -0300
Message-ID: <171173189599.2604.463532333386373442@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0050.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7649:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: voK+pTISB3/NArjPzlkObTkZ3i/0ZT9iAp9BJ+zooOeg5k5SQ1BS8QdSQ0RZMWBRcAKaoSUwCcjxbfrxFoTMt8icGG2TTRjtPsfuTXsSpslhXh5wkraP8FFoAHK+4R18VLesY1L5zvn0B8pg/Sf0fB1sIdWRAUnycVaDvpBOyQ8RkVLAqG4bS0zvK9T6S4E06IXT+ZSwBNdkhuhcHjjWfnTuoR0p8qNXvm3/4hOjtQXNYiBMfsB8YqqbhQ3FTZq9n5+rgtTpWKNJrxihlByif7GHXRdd8dH9GiH/q/i6rEkbQy6iULjQPBQb6BRk78bw/uOvuwONKkt5+0JKXJmHt4Lh3YVj8iZDLkfcgFmVWmXAUlykM6ObgTHRRxeJjaZxybTWTPL/1IMPxLxCMkAOOlqqm0Y7J8+DddGwmhWlOGozCrsJJdiB01YgO9xsBGcQ5sHYhcxvXmzshmiQgy7DGUu1r3lbnUptZz7aFl/IXsDdvpAmmYRUAFYbvMQw7cUPhiptEnNS1dzEq0EoNgLaLa1NCJMXu08gxNKe3dT6Wx+zNXlrgdQKKy/ABjrXD9wsXGqBadMHe5PmLl3QuUEDUosIb7IyC9RQHR/UguVO8hzSu5UkE6VK4w8liwbKv5Mxni4Wh3IQ/Awc7aqwnU1vB7k2L3DPAj1X3X63qYAdlLU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Skg2SUtqamxRa0dJNXR6RS9qb2ZXeUV3YndLQkNIZU51YUdxVUFLbFUwR05Z?=
 =?utf-8?B?S3ZmQytETm44Q2c1MjE0a3J4Tm9RSFNmZXhqbWZ2YnRCTnYxZy8xanBOb1Uz?=
 =?utf-8?B?NGNKeUVQTjA1QVUwbVJHNjJpUThsekZRQ25sQjNCakF3cGhWRGt4SFJtcmdi?=
 =?utf-8?B?RFpNQ3F3ZHNhTDVwTnJ6ZlQyb1dqaGhWZm4wKzgxQVBvM0tmRVNkQk9BOGdP?=
 =?utf-8?B?cUFPZC9UYlEyYXk5aXJ0Q2pVMXpNY1hlT0ZvbUJKT2M0T1hyb2NRNG84NDFK?=
 =?utf-8?B?cUJYNUJVQzFHWjlzYlVNSzgrUWFvdnpNMVZNSGlaa3VMWG9xR2xteFo5Z293?=
 =?utf-8?B?N1QwUGg0ckRJWlQxM2JDL0p2L1lzajh0d0MrejBVTW5SaFVPemtIbklUb2Ex?=
 =?utf-8?B?S00zdDRZbVhGUytVM2dZZW1BeW5vc01UY1ZGRVhKQ2V3MUtDRmpYRjhkSHRk?=
 =?utf-8?B?NDlnbG9NMzhDcklyNjFnaVYxVGlkS0hqWWxORHh1bm40VWNKM3pscnZURW9T?=
 =?utf-8?B?WXB4QUw1ekhNMmJGMzR0bis4UHU3aThDeFZ2MGFBN3RNRXd1a3BrS0JuZkN6?=
 =?utf-8?B?VDhWMkRlWEtGdVlabE1FY2g1QUF5SnIweXhETG1GcXlUdTRXUWdqaUJneGt2?=
 =?utf-8?B?VjdHM2ZEckhmYmFEVmc5VkZ5QzZodk04WGY2dnArZmlPY2ZHckwvS2oySGUw?=
 =?utf-8?B?MlMwVW1pYkZKSVp0eEFVbk9IYkRCTFoyNWMvQlVRQ3d5dGcyczI3NFNUWHRO?=
 =?utf-8?B?N3A4SzdBUlVnUFluUFZJWXNDeDVtSXo2L2REa3ZScWc3MkRpT1IrV0E0R3cx?=
 =?utf-8?B?bHlNK0EwUFN6eGw3aGk3L0V6QnJybzJRZzhLcy9pUGpoQUdHVTNsUkFuUFFC?=
 =?utf-8?B?Um94SnM3RGpEbjZxRUVkTnh1aXViSzFyS3N5anFhdUtsdUY1VjIxNW9ybjFQ?=
 =?utf-8?B?b2ExZnlKSDFtMWhYN3NZSm5uNXVjUngxTmIvWTc4VkZGTHlCZkNueHEwcXU5?=
 =?utf-8?B?SlA3OFh1T0U0TGJPdEd6M3hPb05BOWthNG55YmJjaHV5eUFyOUd0TFhXMFo2?=
 =?utf-8?B?cktHOGRYbk1nNWJGek5wTlZLOEI4OXp0U0pTdHZONENoM3JZaVdnOWMxV0d5?=
 =?utf-8?B?blI1TjMreTlRd3p3a3I2engveXVza3VaT3dLbmFjblJXaTBsZldJdnBiNVVl?=
 =?utf-8?B?c2FPMXY0RHk0YW5NeGRVNFJybDkxclVqRDhINEJiSndpQmtiUGpkTUhFU3cr?=
 =?utf-8?B?WDE3V3NxekFUSktmendabTNHSytCN1ZNSlVpamE3eWtlMXpaMGpTelhlV1dq?=
 =?utf-8?B?OUd4OUNvdmpIVzBSUU1CWUwxd0xTbm43TnQ2UWowQ3ZBb0Fsd2NleitIYW53?=
 =?utf-8?B?dmpFR2IyMU51WEZaWWRlN0VZNjUwN3RKRC9UV3IweG9VOUpmbk9iYU96K0Vn?=
 =?utf-8?B?MG12ZDhpbmFiOG5uRWpwRURxUUpidVFkUGIxWlJQUk9YOVFiQndCbWhoVk1w?=
 =?utf-8?B?ZUN4dytvOWpuTFZsRFpidXZlcEZsVVlOR0FEZ0pMeG9XUmJMSTNHaTVLN2Z1?=
 =?utf-8?B?VzJlVjk0UFJadUxqdWxwWmRnUjB5bmlFc3VoS0gyM1A1Q1hkR3puMDRqNm82?=
 =?utf-8?B?bHFrV2ROK0U4VkY0NmpjYVZlN3FrdzdQOUNBM0FyL3lUZ095bCtWcUVKLzFF?=
 =?utf-8?B?c3JVSUlMdXc0K2hMR3ZiTGpoM2JOamdVVW15d0dEZ2d4VEJjaWFVclFaeWpk?=
 =?utf-8?B?aDY2WHNvVndBZjlXTlpWSGYrc2ZxaENqK0tKR1V6RytrNkowS1luaksvMldP?=
 =?utf-8?B?enRNR0p1VEZHTWRESXc4bXJwODJXbWY1L1RDMXhuNkRIcjJQQ0ptU3JJTXpD?=
 =?utf-8?B?SUNObkM3VjlvaDk0TVBVYmt3M0RyeFZuWTU2MEdwSHR1TUp6L2diRXZnZkxh?=
 =?utf-8?B?aVdCN05Vb2JIQjhjTFYxZXhhZXlURGpKSTFmOC9YWHhaTk9Pb1RZSEtOOU5v?=
 =?utf-8?B?UWZoNCsvQTl4QnBlZHdVWlFxeFh5V2h0aVdtT2R2WDBYUE9yd2dHK1NrVTE1?=
 =?utf-8?B?SkZRbC91Szc4QnJjYXZ4aEI2L2pJeDhCelp6R0pydTQ0Y1JKMmYvcXlLRGlQ?=
 =?utf-8?B?NS9DVGMzdncvQ1dhR0RnYUhFTVN2a0N4aXFhNnNBK2pDUTcva2tGZjdNU1c1?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b067d8f4-c35a-4763-343a-08dc50126213
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 17:05:06.5992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TAJOQYEGZ/Lob/Cwch5k1oPAz8SI+G5L6BXh+uTdyxwIHv28KCdFEcmc/mFPvkJd+gpFMvfXNcUQTFu/8d0rMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7649
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

Quoting Ville Syrjala (2024-03-27 14:45:33-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Currently we only consider the relationship of the
>old and new CDCLK frequencies when determining whether
>to do the repgramming from intel_set_cdclk_pre_plane_update()
>or intel_set_cdclk_post_plane_update().
>
>It is technically possible to have a situation where the
>CDCLK frequency is decreasing, but the voltage_level is
>increasing due a DDI port. In this case we should bump
>the voltage level already in intel_set_cdclk_pre_plane_update()
>(so that the voltage_level will have been increased by the
>time the port gets enabled), while leaving the CDCLK frequency
>unchanged (as active planes/etc. may still depend on it).
>We can then reduce the CDCLK frequency to its final value
>from intel_set_cdclk_post_plane_update().
>
>In order to handle that correctly we shall construct a
>suitable amalgam of the old and new cdclk states in
>intel_set_cdclk_pre_plane_update().
>
>And we can simply call intel_set_cdclk() unconditionally
>in both places as it will not do anything if nothing actually
>changes vs. the current hw state.
>
>v2: Handle cdclk_state->disable_pipes
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 27 +++++++++++++---------
> 1 file changed, 16 insertions(+), 11 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 619529dba095..504c5cbbcfff 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -2600,6 +2600,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic=
_state *state)
>                 intel_atomic_get_old_cdclk_state(state);
>         const struct intel_cdclk_state *new_cdclk_state =3D
>                 intel_atomic_get_new_cdclk_state(state);
>+        struct intel_cdclk_config cdclk_config;
>=20
>         if (!intel_cdclk_changed(&old_cdclk_state->actual,
>                                  &new_cdclk_state->actual))
>@@ -2608,13 +2609,21 @@ intel_set_cdclk_pre_plane_update(struct intel_atom=
ic_state *state)
>         if (IS_DG2(i915))
>                 intel_cdclk_pcode_pre_notify(state);
>=20
>-        if (new_cdclk_state->disable_pipes ||
>-            old_cdclk_state->actual.cdclk <=3D new_cdclk_state->actual.cd=
clk) {
>-                drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
>+        if (new_cdclk_state->disable_pipes) {
>+                cdclk_config =3D new_cdclk_state->actual;
>+        } else {
>+                if (new_cdclk_state->actual.cdclk >=3D old_cdclk_state->a=
ctual.cdclk)
>+                        cdclk_config =3D new_cdclk_state->actual;
>+                else
>+                        cdclk_config =3D old_cdclk_state->actual;
>=20
>-                intel_set_cdclk(i915, &new_cdclk_state->actual,
>-                                new_cdclk_state->pipe);
>+                cdclk_config.voltage_level =3D max(new_cdclk_state->actua=
l.voltage_level,
>+                                                 old_cdclk_state->actual.=
voltage_level);
>         }
>+
>+        drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
>+
>+        intel_set_cdclk(i915, &cdclk_config, new_cdclk_state->pipe);

Not sure if there could be unwanted side effects with passing
new_cdclk_state->pipe when using old_cdclk_state->actual. Because
voltage_level might have changed, parts of the cdclk change sequence end
up being exercised even when cdclk_config =3D=3D old_cdclk_state->actual.

Well, even if those side effects might be harmless, I wonder if it would
be better if we used INVALID_PIPE when using old_cdclk_state->actual.

--
Gustavo Sousa

> }
>=20
> /**
>@@ -2640,13 +2649,9 @@ intel_set_cdclk_post_plane_update(struct intel_atom=
ic_state *state)
>         if (IS_DG2(i915))
>                 intel_cdclk_pcode_post_notify(state);
>=20
>-        if (!new_cdclk_state->disable_pipes &&
>-            old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk=
) {
>-                drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
>+        drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
>=20
>-                intel_set_cdclk(i915, &new_cdclk_state->actual,
>-                                new_cdclk_state->pipe);
>-        }
>+        intel_set_cdclk(i915, &new_cdclk_state->actual, new_cdclk_state->=
pipe);
> }
>=20
> static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_=
state)
>--=20
>2.43.2
>
