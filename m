Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7905892342
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 19:23:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5209D10E10B;
	Fri, 29 Mar 2024 18:23:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V+r8YVPf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE02210F4FB
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 18:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711736622; x=1743272622;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=SKmbwzlTEF81gnMFQRAEdil9Cz0TA5QIf6TbqUNihQc=;
 b=V+r8YVPfD1+7lRy6I0JeG7bJHRwTWWhzmoLpN/pOD2Ek6BN5o9ne77NC
 LSSVUy+QRlz+rdOhJYm+eumwZG0vEbXHU108FhdeMKZhMhoVz7MHRT8wW
 2yKJnQwBh4OQXSlCfRBa3cQKjYyw9sW0WEPvY9V5C+4pWxFyCUohLdjU4
 qTMQAyCRh5kaJ9jcdAOThLGxcwwGDtutMZaSnPbNMXkkRRFwue6vQ2i5y
 dI5ZeWaX15SIkgYEiTkdRbTH865O8MiD/oDksrJhNO6KVjaIQJxNntvMX
 CgZXexWm4y/kazk1EnWyPYJHjp4iMCWUAMBJC/47g+tA7QpZYIBUwQGuo g==;
X-CSE-ConnectionGUID: 7bwbOGHlR3C4igZ2MAdsUw==
X-CSE-MsgGUID: 4r+SwgrXQWyZ8m5fGgUP2w==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="18374746"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="18374746"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 11:23:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="21753239"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Mar 2024 11:23:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 11:23:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 11:23:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 29 Mar 2024 11:23:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 29 Mar 2024 11:23:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LXMqPBXKOChTGlKIx75EyzwoHNLd46jGHNhRiqXgvihl2IaWNhqLOixOC0TOiVSt2tWSEP6oLbBYvZZcYb06yUMDtZ0MqpgJZ/MrnTdJQuGaXyQN3i1e9dmGaSKLldcurruGRCexgfarx0vR7tSzpiCyEKC164B663GukNswNq69nNQcqRiHSHj/VM9EU6S1P5cV1kgmzqfF4qA57ZinN19uwC8FABTPeetUU5yZPO3MxZnlj22P6eE9sQbMJeUa4vAkDrAfnaNLeCjGlzvtol8by6u05nWi1ZHSZE/2LAFvQ6anFrveTQCHqTdN24ea74U/wgOT6Fh2cN7YIksrHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JOdoHxoas+cSdG0MOBQbM8frRPERHH6q9/ZG7KwRtzc=;
 b=GUby6HjOCn3p0JexEEDkGE58lzMHvSrqxTbLWWGi3JWS7PVaScDa+w1zlN7F4dyAAqnxieyH4N2/1Jdjy5kTUibwtp6fihU5tGXQCypDo1haOVbYSODYACvOAWopXXS45+enshC8o4izyUJGVaeJVXR9LH0Sbcd7UmE1vFgzhKoYVHoGNI8siruICm2MfwEsjcBoSp2qTYeCK65aJ0kYNN4DD3vfQY60HZUVoMjh+NagZcVfxsMXbdgWxnLrYr7renra3ApGjV/DJrySwVZIp1SIV5laGcPnMFPfFeiXrZvQhZWCNkuWpBLaYs8Tzsmmf74AJAHkB/M5YX1e7lIf+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7828.namprd11.prod.outlook.com (2603:10b6:930:78::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.41; Fri, 29 Mar
 2024 18:23:38 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7409.028; Fri, 29 Mar 2024
 18:23:38 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240327174544.983-13-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-13-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 12/13] drm/i915: Use a plain old int for the cdclk/mdclk
 ratio
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 29 Mar 2024 15:23:34 -0300
Message-ID: <171173661439.2604.16824263735177166188@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0003.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::8) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7828:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0Rwpjy/FOc98MjyEtChGo8DeSrIa4E4FeMcJl3dot8BOWBNbPP/9Deemvmm4rENdzzd3CtUz154P4LBPJE3D289yN68GFeonCiWGmyeb3gTS4o3EBTxz8CkqSIlWlZz4JxEz67XexWz3v8zw3ICThW3itSURv+rPm7On88bc8PSH2w9hbKxgwN6WGOVs3g+O4z5vXbRn/tTmXUL5hYTfoUGiu/1k9lP0D3vBng8Oed2dnXG0HL6gwN1Oy97szarj2pXN52IvWdGd8un+mL57RCCf5tP7LbvyvGhzhtKmBNOxKLCCwhABEyXD9ksBpzxreJCIqjTxBKAYFcMzPyf0x/0RdVAGp9X5soZOCKxPQ9J8Q3w/fHgfgh75JrN3V8BlQHNk4pB9rfbeOzFvFoKpFwvRUfH2JqhLX2BkKTAjxyapakTYal3u+JUa0ULspcpDZ4w6NtDDcaOcuaXI+tNzPZHJ+oE+G7p8SwW0E5fIHYtCysMe3kV/+cozUfmFG0X58dBacOS/EeAbuTdDrOlS6+GS0ysMMqlgb1aXmk4CNxtpafdTXDtaFuQJnRdSIzhZOXNKfopuWkvil7zcrpqD1fPs2eXU5puKB48OD9rJIFPCRBTNoh6N9svsW4Z0l07txC6CStESBCBgql5xr5cqfZhYyKhKlL1aKZh1hf7X9YY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEhnUjcrcFJWWW9xRSswdlkxRG13UXluc1huRXNteVM4N1dHeXlaRHZueUxv?=
 =?utf-8?B?M25pNldkVVFlL3J1L2NIaXQzQWFtUFNsU25JOTBZNFVWSHg5cmd1aDMwN0h4?=
 =?utf-8?B?dm5sbkRuQXBkYUxRRHJrY2M4ZW1lSkpmcGw4MGNiMGZBNjFyOHN4VUlDVTF2?=
 =?utf-8?B?M2hmZWFhM2tRN3lCbTFKWmo3a1ZSY0JoY1BOZkFqVzJSYVNveVZCdGVNWnp6?=
 =?utf-8?B?bUFiYWF6ME84M2E4SWx4NFFJQkJkeHRmOVZ4aXpXTjFZSkhJN3h1dkJvcldU?=
 =?utf-8?B?cnhaa3F2d3diMVNjZmF0SWcwc3BEK2tueFU3SkpCRkF3MVdtV1ExUFhSSkVJ?=
 =?utf-8?B?eklKeXQvWStwWnRiTWswblRMYWZIVlBpcnZrNDJUdUxiTE9qSmJWMUc3WFpU?=
 =?utf-8?B?cHBZdG5kTHpWVytwdi9aVGxGb2cvdXd0NnFqcDMrbHVEZjM3TVFYWXdyWU5L?=
 =?utf-8?B?aVl3TGtOb1hMNFhDU3FCSkhGdWNFb2lRaHlPQWYzRVBFUVEvZmZLaU5MOE05?=
 =?utf-8?B?b1hZUkR5T0kyanNsdnF2blhXdGgrRHJmcG1la3hjblU4K0xPbTlGcFZFak5M?=
 =?utf-8?B?eVVVZWZRTlo4LzdDNk5sV2F3b3ovR2dwbVp3anpnMEpKVTVzY3NlbkdZWXBk?=
 =?utf-8?B?WGN0amg1NTNUTElCL0NLaS9UekpkU1JHZi8rUExNMjI2RXBaNHRkenZMb0dt?=
 =?utf-8?B?SEJsaWJoV0dpY2Zqdi9iQnpVTGl5SGpZdXM2MnkvZnhBRDdxdnhpMkVYWHNy?=
 =?utf-8?B?ZFNQRE9kdWJhUzdoMTdReWdOMDVabDZYTkhKUVg0SGxUbkUrRWp4ZDJqVkdO?=
 =?utf-8?B?WGU1R3ZUaGxKamZ5QzduaTVYOHdKRzhVUDJRTUJHQ1E3bnJONDNqcFkySzZj?=
 =?utf-8?B?elorNmx0M3d6OURaMVJjMlJVN01URzR3TGd0ZGNMdzY5cGFBZU5nR0U3R2VW?=
 =?utf-8?B?Q2lSbGZKcUJiU0hUYWM2bCs1R1dURVNPUDJVQ1YwQVdKeHNvUkNBVE9FWCtT?=
 =?utf-8?B?emdxVTZqSmF3dWdSWDFnK3V4YklpRURDeStCbHQwbDBKaUdjZ2cwc0lvZ3Zq?=
 =?utf-8?B?NnptQXhhR09xaFl5Yk5ybHR4S3BOYXFUcTlId3NtVlNYVDh3RG81TzZvYUM1?=
 =?utf-8?B?VGpCWnR2NW1kdlVGR2xYVHFvWlR4V3pXRUFua3ZXR05vWFpYRHUyQTB3Wm1L?=
 =?utf-8?B?Z2UwZXY0TkQ4Unp0SVJ4WkxnVHBsUHo0RlMxYVdzYU9LMHV0NU9RMjFST3NC?=
 =?utf-8?B?UWhBRjZJZ0s2OUE5c0txUExTL0FEak9oQjRlMm5xaVowT2FNZ3N6QUdRaXV4?=
 =?utf-8?B?SnI2QkRueVlXZjhRWnhiSnI0bEphRVpjMFVOMmo2Z0tzSHZhd29UWkVieVFT?=
 =?utf-8?B?elB6Q2V5dXF5dEhQU0VqNFlCc2hSQnJQRkdDa1FYalAwTTVBOS9JV0R5dDhX?=
 =?utf-8?B?Slk5eEdrY1BIU0F2dVJsWU5DSnVJL08wcU4wOVMyVlNmN3kvVnpZN0V5OFN1?=
 =?utf-8?B?eHNLVFVyRCtTSWZpR2JPSE9aemcrWG1xQ2dGKzlzL0JtY2hwYlhYaUpFVjQw?=
 =?utf-8?B?di9WRHJ0WkVuYnNpWkhVVy8xb1JGQVhVdXlSN1FJTVRiOVduNHdCdjRUcEMx?=
 =?utf-8?B?TlR0VGlyc0Nmd2xONFYxa3hMd0tJZ3ZVWmsyMk96c2JrMmZNdnVhS2NFcktF?=
 =?utf-8?B?QU8rSXZPN0kzd2txb2lVQ0xBYTNiaTdzNC9wU1AyK3o1UDR0SHZpN2hyWEM1?=
 =?utf-8?B?WHo3d2wybnZUOFNETHNmVGtqeXpia2lTQWlJYXVlMU9XbkxjM3pvSWZkcUdi?=
 =?utf-8?B?dkI4dkxZM2tKVEw2WnFMd0Vnekk0L0xmNEdSOE9aZlJpWERNK0hKajVmUmNU?=
 =?utf-8?B?SU1mdTA1QXk3VFIxSHpxaGo0bldXYXJIUWdVVWtwVjVTdGsyZkRqNFNldVZZ?=
 =?utf-8?B?Z2RxKzdwczNjTnJUTjFwL05sNUJVbTd2aWx5QjVLdEFFclQrZG5Sc1F4Znpy?=
 =?utf-8?B?UjY1dVVlZWJnTzhLRU00MDFDZ0tXK1FkQm1DOG4yNjIyZ2NVaDdlQjdacjdr?=
 =?utf-8?B?aUM0VXpDTWpVTmoyVDh5clp4YW1mNTZ4bnZLTWVVd1Nzckxuam9vYTIvbUI1?=
 =?utf-8?B?OHRkUXVkTlFWZi8zSmFtM282WXpkUjVMMjV6ODMzZ29yZzdUaXlUSGVFQ2Vj?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6cb2f61-163b-483d-1f5c-08dc501d5a85
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 18:23:38.4986 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JVSN6u7bAShO21e3MN9VTXAwZ5zxu7NZAPI94zPJi/cpogdwaL9s2/GUQ2788/yXJfI1vK2I9H0gljZPNWW08A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7828
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

Quoting Ville Syrjala (2024-03-27 14:45:43-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>No point in throwing around u8 when we're dealing with
>just an integer. Use a plain old boring 'int'.

Learned and noted :-)

Thanks for fixing that.

Should we also modify the member mdclk_cdclk_ratio of intel_dbuf_state?

In any case,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cdclk.c   | 6 +++---
> drivers/gpu/drm/i915/display/intel_cdclk.h   | 4 ++--
> drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++--
> drivers/gpu/drm/i915/display/skl_watermark.h | 6 ++++--
> 4 files changed, 13 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 66c161d7b485..5cba0d08189b 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -1893,8 +1893,8 @@ static u32 xe2lpd_mdclk_source_sel(struct drm_i915_p=
rivate *i915)
>         return MDCLK_SOURCE_SEL_CD2XCLK;
> }
>=20
>-u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
>-                           const struct intel_cdclk_config *cdclk_config)
>+int intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
>+                            const struct intel_cdclk_config *cdclk_config=
)
> {
>         if (mdclk_source_is_cdclk_pll(i915))
>                 return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdcl=
k);
>@@ -3321,7 +3321,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_sta=
te *state)
>=20
>         if (intel_mdclk_cdclk_ratio(dev_priv, &old_cdclk_state->actual) !=
=3D
>             intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual)) =
{
>-                u8 ratio =3D intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk=
_state->actual);
>+                int ratio =3D intel_mdclk_cdclk_ratio(dev_priv, &new_cdcl=
k_state->actual);
>=20
>                 ret =3D intel_dbuf_state_set_mdclk_cdclk_ratio(state, rat=
io);
>                 if (ret)
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/=
i915/display/intel_cdclk.h
>index 5d4faf401774..cfdcdec07a4d 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
>@@ -67,8 +67,8 @@ void intel_update_cdclk(struct drm_i915_private *dev_pri=
v);
> u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
> bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
>                                const struct intel_cdclk_config *b);
>-u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
>-                           const struct intel_cdclk_config *cdclk_config)=
;
>+int intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
>+                            const struct intel_cdclk_config *cdclk_config=
);
> bool intel_cdclk_is_decreasing_later(struct intel_atomic_state *state);
> void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
> void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/dr=
m/i915/display/skl_watermark.c
>index ca0f1f89e6d9..1b48009efe2b 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.c
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>@@ -3616,7 +3616,8 @@ static void intel_mbus_dbox_update(struct intel_atom=
ic_state *state)
>         }
> }
>=20
>-int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *sta=
te, u8 ratio)
>+int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *sta=
te,
>+                                           int ratio)
> {
>         struct intel_dbuf_state *dbuf_state;
>=20
>@@ -3629,7 +3630,8 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct in=
tel_atomic_state *state, u8
>         return intel_atomic_lock_global_state(&dbuf_state->base);
> }
>=20
>-void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u=
8 ratio, bool joined_mbus)
>+void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
>+                                         int ratio, bool joined_mbus)
> {
>         enum dbuf_slice slice;
>=20
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/dr=
m/i915/display/skl_watermark.h
>index 3323a1d973f9..ef1a008466be 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.h
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
>@@ -74,11 +74,13 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state =
*state);
>         to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, =
&to_i915(state->base.dev)->display.dbuf.obj))
>=20
> int intel_dbuf_init(struct drm_i915_private *i915);
>-int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *sta=
te, u8 ratio);
>+int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *sta=
te,
>+                                           int ratio);
>=20
> void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
> void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
>-void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u=
8 ratio, bool joined_mbus);
>+void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
>+                                         int ratio, bool joined_mbus);
> void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state);
> void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state);
>=20
>--=20
>2.43.2
>
