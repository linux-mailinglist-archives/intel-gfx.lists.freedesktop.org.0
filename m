Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B2C89227F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 18:15:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7B71127D0;
	Fri, 29 Mar 2024 17:14:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ATCC9BMe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013B31127D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 17:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711732499; x=1743268499;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=M45sUB/xNHBd2zQNAy1Vzp5UIe5a7rvdhtH7LvBy6Tg=;
 b=ATCC9BMeVYlRPi3AN+5LNCJsEz94722EYRgUBhqF3L5tHXa38ar7lsu8
 zG0pK6sOyMcC4Pko1DKBzaH/OvBwLP8j/tNYFRBHNtrziVhWQRWWmPc1u
 6Yn3SYq0osJTtxa9QEKdyTfve3V+Hw7zYGxc/TpkVMvM8X6YooEFEYIYD
 p7vGEtVzd2KDS+zeMLtCx4reb1pO7bILCVXxLzMRvUmF4+XkXH+/VPi6X
 hJwp1swR460U+CxpVfeE1lEbFis0S6O6nl6dS18HytQ8eZwYvEuOk5Lcf
 3QPA5AbbKRqvYnLq7Hd2o7QWBkvLryiSIHhjEwAX79mL9S2YlP2BortG0 g==;
X-CSE-ConnectionGUID: qmOJOf6rT4m4EAaRU+lHMA==
X-CSE-MsgGUID: H5TtYKx8QPixoFdn0Qzj3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="6773082"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; 
   d="scan'208";a="6773082"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 10:14:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="21556550"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Mar 2024 10:14:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 10:14:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 10:14:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 29 Mar 2024 10:14:56 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 29 Mar 2024 10:14:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QgINvqEZ+DSEGzafF9uunmZmvdKW/KF9aakdF+YuOYjy6vPNrxoKqhfYvHqEpJfWtk7oKNcfgSTkS975t2KqJHgPG7d+7zmXl6h51atdtexBy4LSNvuruH/3xpLBu4TTd/P0vaqH7njIzNsGwKpSfFCqZZANDIWr69JW8gzC482P581Hn6FWnwyEnC/t+K6bWv1Fr2lbhd5HQAwGHQ4/pM8J/y3mbylimSjks5UGSG2pGgIFTwuJ6diRKolm4+hVWW5tUqZRqk2u7HADLl77MEG3wOx8HPLPyMlQDJrGerV8+tOzCtVjfg51Qk07B/I1NBc3TCzJx1Y+LCMZyL2MPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lNxB8dE07jBjMxjFXxltlqUDFaGfSGjFiAdGOpWsHps=;
 b=KuUQzmcXDxIJwoFwD3sTOzoWTpO7qM5VspDlhbFrq86qGTWyucGKbb0MzaU2z98qWU3RE8QBXvISgb9KP2V/WPoJTh/cy2eST1v8YZTpOycxTZ0O0ugak3BPHjlh7CxSehUw+ypy7PBdU05XhbVjUY8c1ofbiAPeZpmcmHila8WM+EFDLyKI+dFg8XuRiaZdpNBPP7CASPWNKXubVBhG/BKFxdiTVm0kYH3IjiVFU/UgufMibUHXVNZY7l2fyWbmxvhc2nDuAccsOLeDf7fCVcJz4gvJIyzKuJAmOiiehJk7cimSuJs5EFQjnfnZHrzotthFUEhCC380/vP3JcRZ2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MN0PR11MB6279.namprd11.prod.outlook.com (2603:10b6:208:3c1::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Fri, 29 Mar
 2024 17:14:54 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7409.028; Fri, 29 Mar 2024
 17:14:54 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240327174544.983-5-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-5-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 04/13] drm/i915/cdclk: Indicate whether CDCLK change
 happens during pre or post plane update
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 29 Mar 2024 14:14:50 -0300
Message-ID: <171173249014.2604.14540443530746931452@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR07CA0094.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::35) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MN0PR11MB6279:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YawEyaBbs/GYMZr81CNNkkR52JPP+xWiDvsrFG6iXdk1SomphbAvbklAx9Qor5QNZIxHAwWfdB+/y6aOtYxEbawI2QVgnTuZ2GHs5aknAVaE09VyuUldetXAKRNbw9LBpiR1KK2Sx2ycSXrfHVZtMM+OodzHrfqwDB8bAi1auQA/clq7KtDugysybeZeEvJSTkvgGO9rXKEUDvJuK6u8wKSr0WJqobY1MvyohKH0PR9qrUfzAUkp8ViTCCjXEgjz2FO16DSFL+xHjH1N9nEin2TZAtyK7pFV8piyDnnJplxKd2rsU+Tr7zOu6ezjtW6v/eqh1U2J8zcWr0mMCqYFdwDKiXJtffy/0PVrE457Qf1udoT0Hka1CbhCxOiCMRET5peG1u3sHhWXp2eYXmsC17ahFtjck4FFPHDaegxSfkiJck3pgahpbzkOQ9ZfpDLpM3gLHPPFwonWTcppMN/Jk958e2j59bNl3ZOjPPWshwHFzXw4WauBJ1F57dFFbtxBYLoYpt0NYxWj05cVsIJirZyjXa9WY0lbyDKW0JlJfKRVixBYYDa4/6+3vxAu4tZ6S5xQXh+EhCLfhyonylCX1XUYsXkOU3bFWLEjxiNsgw21nMOqvGn5W7tIbgrwVpv+X/Bx5tOxzsihSpGKs492elUsLGR0y2czBhvdz1PyL0E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0JsNlgrN2Fsa25jM2VpeFk2MU5tenphb3JPVTBYVVZpY3VqSXdEU0huZm12?=
 =?utf-8?B?TENLYVYvRVhISzVjaFIyWnIrOUhlaUI3UWk2TlNpWmowQitidDZDNExrWEdp?=
 =?utf-8?B?ZUJ2N0lncEw1VTVIZUF4MGtFRUMyWnRVdEd0MGVRU25BKytDUnVJSFBudUZP?=
 =?utf-8?B?d3Mwc0NRNGE2Ylh6c1AzLzNvN1Y2bDBwa3VkMkJIRTVKaXZLMUVEUmxrUjBH?=
 =?utf-8?B?RDQ5eW1oeURkOHJNSWRsRjFyd0NaejVHYjM2VWF4R3NleDNQaDBJeFI5cTVC?=
 =?utf-8?B?U2ZwVnlZdk9NVTI2NktaeGdoMFV5L3d3aUhPMEhPdEJOZFZkMWgzYjlWUWRq?=
 =?utf-8?B?UmIvZDJnVEIyM3hzNFdVbW9sM2tDVGhZYVNEbDVVcXYzcHQ1N1lTWm9odnVJ?=
 =?utf-8?B?UTJPckhYTE95OG5tWEQ2cTRSZitBVVBpRlB5THRHUTRBQ0s0NWZYd3BvWGd6?=
 =?utf-8?B?Mzh2RmE3bXlzcUsxbVdoZXYxVzJrNm4wVjBJWjRkZytVUDNNL3l0VzdTQnVI?=
 =?utf-8?B?THp2NFZlR1ZnMVRpWmg1ZHZRLzFqbEZyY1ZRT2d5bnZrR0V6Tm9pS2h0NTdQ?=
 =?utf-8?B?a1B5K3JNVnhoQWdCUEFzc29zVjJXZWFpWEJ3bzF6S1hJeXJMSXMrS3l0Uklv?=
 =?utf-8?B?d3hTTmdLRzVHZVlNTXlmUE41dXVLL3RVRTVUTFZaTk5jbjFlK0gya0lYTlp3?=
 =?utf-8?B?dEtMT29oQmZnR05RUTNoYU1vZFl6WlpibCtwY3lrMnZoS0VwcU9BcDhwK0c5?=
 =?utf-8?B?czRPRUp2MzR1dFdlMlgwNVY3NFl4dE81TDBMd1hDZURMYkoxcW41UXh3OVln?=
 =?utf-8?B?bVNEME96ZTNUdTVoeWxOd2h2Y0xyU2dXZFQwTXZpejZFMFljZXFqSGpXZEx5?=
 =?utf-8?B?bk90bHN0QWZFSHBxZjd6dXZ6UmIrODVKY2VUMG8wQS92cDJIZzErTDZ2NGxo?=
 =?utf-8?B?VE5hb3Boc0Zya3BVM0pWRFliYmJtMkVxbTQ0RzFoSXhYU1VWR3ZyNmlqZkhS?=
 =?utf-8?B?UTJXM1N5Z2V0aUp0eUE5K0NXdmt6dm4zRTVBZFllZG5WVjF3aWV5QTZ5RitU?=
 =?utf-8?B?RnhjUzJmbU83ZDNQL041ZDJCcy81RHpuTWN1QkJLVDc0RGRhdjVUVy9JOWxs?=
 =?utf-8?B?T1NvL3pYdW9aU2VOTnR1N1JuZExKaGF6K0hNcU9RWVR4VU15MEpXUW1YekpH?=
 =?utf-8?B?ZXZUQzJ4bzNDSld4dk5OT0dLOHlHVmYvY3puUjBtcFMvamtFN3crMVJNTUxz?=
 =?utf-8?B?WUduMStOKzRPNldvZEJPMFpLMVVaTFlocVB0QzRKU0NzeHZaUkJ1MGwvaXVX?=
 =?utf-8?B?b0dpc3RwcGg0TTQrNG0rUmw3VFJpNFRxR3NKVmZ1S01KbkU5U29UTnFUUXZB?=
 =?utf-8?B?Wlp6RVVWWXFpQ2Vmb2RqaVRGTFUwTENFSDk2d3VhVFJvUGFnckJ4WmphR0tB?=
 =?utf-8?B?M0ZnOTlFWkpTMUM2Uzh5VE5aZ3o2ZzJQWDk2d3J5ZE94ODFHaUsyRkF2bmcr?=
 =?utf-8?B?RVZMdWdYdEpydVVURVlKK3o4bjlIODczbHlEUWhQUW5mOWpTOHJOdmN6Zk9a?=
 =?utf-8?B?VWt6WUxpQXNWMGJPSTdMWmtzNHYxWUQrK2hxMi9IbzJzNGQvUEc3bTcwL0ds?=
 =?utf-8?B?cHp5VjNwWU51TXJCb25mWTIwM1ZJbEJQVVpNS0MvZnE0MWgyZStONCtWWHJW?=
 =?utf-8?B?clhBWUplUXVscEl5S1RGaTZuQzh4eC9oMy9lS3NWY09Na2pObEFuSXU2eGZR?=
 =?utf-8?B?U3BDK3N3SnZBcUhrSnpGV1hWSFdKM3NuaXkreWxRbzF0OThucG1JclpYUUdZ?=
 =?utf-8?B?MUxYWDlnamNVd29sblN0SE01QlJPckh4UkV6MEtleS9RUUxndTBxTUxuRHZH?=
 =?utf-8?B?U0JaNWZQaUFFSzZMdDdSSUwzUG1ib3B0L3h2cURuaGxwWVZlNy9KUURoaGE0?=
 =?utf-8?B?RVNTdXZBcVFUTjN5OG5sbGtrQ1VZWXBEK2cyT2FVcFVQRVpKdWo4Y2lhMWVG?=
 =?utf-8?B?aEZrNjA2R2E5NjZ0WFgwcVBKbCtKVm9tVUdOTzJXSHp4YWhaUXBSMkFRaS9S?=
 =?utf-8?B?TmVQQzk5dDEyUDFXbDhxZlBEd09neHNGTk9PcG1nR1F4cC9UanZEM1YxTUtr?=
 =?utf-8?B?QVZXeWplSEJvb1BydFdhN1FGcmhSZSt1dUpjRDNtRkVrWDREdFBHeURQVnhQ?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95004523-ae17-41d2-08e5-08dc5013c07c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 17:14:54.6131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xa0Fb7JWcGc5HX7TGYJRJsRRTD/vdUySZBV4Db7xn7Kp4a8j1QboanD/ZO7j7oWKC2tli0s/BPZYjlrDCUBdsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6279
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

Quoting Ville Syrjala (2024-03-27 14:45:35-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Currently we just get a plain "Changing CDCLK to ..." in the
>logs. It would actually be interesting to see whether we're
>doing the programming during the pre or post plane phase of
>the commit. Include that information in the debug message.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 19 ++++++-------------
> 1 file changed, 6 insertions(+), 13 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 99d2657f29a7..98546f384023 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -2434,18 +2434,9 @@ static void intel_pcode_notify(struct drm_i915_priv=
ate *i915,
>                         ret);
> }
>=20
>-/**
>- * intel_set_cdclk - Push the CDCLK configuration to the hardware
>- * @dev_priv: i915 device
>- * @cdclk_config: new CDCLK configuration
>- * @pipe: pipe with which to synchronize the update
>- *
>- * Program the hardware based on the passed in CDCLK state,
>- * if necessary.
>- */
> static void intel_set_cdclk(struct drm_i915_private *dev_priv,
>                             const struct intel_cdclk_config *cdclk_config=
,
>-                            enum pipe pipe)
>+                            enum pipe pipe, const char *context)
> {
>         struct intel_encoder *encoder;
>=20
>@@ -2455,7 +2446,7 @@ static void intel_set_cdclk(struct drm_i915_private =
*dev_priv,
>         if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display.funcs.cdc=
lk->set_cdclk))
>                 return;
>=20
>-        intel_cdclk_dump_config(dev_priv, cdclk_config, "Changing CDCLK t=
o");
>+        intel_cdclk_dump_config(dev_priv, cdclk_config, context);
>=20
>         for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
>                 struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>@@ -2623,7 +2614,8 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic=
_state *state)
>=20
>         drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
>=20
>-        intel_set_cdclk(i915, &cdclk_config, new_cdclk_state->pipe);
>+        intel_set_cdclk(i915, &cdclk_config, new_cdclk_state->pipe,
>+                        "Pre changing CDCLK to");
> }
>=20
> /**
>@@ -2651,7 +2643,8 @@ intel_set_cdclk_post_plane_update(struct intel_atomi=
c_state *state)
>=20
>         drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
>=20
>-        intel_set_cdclk(i915, &new_cdclk_state->actual, new_cdclk_state->=
pipe);
>+        intel_set_cdclk(i915, &new_cdclk_state->actual, new_cdclk_state->=
pipe,
>+                        "Post changing CDCLK to");
> }
>=20
> static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_=
state)
>--=20
>2.43.2
>
