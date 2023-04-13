Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2D06E11F8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 18:14:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC25810EB77;
	Thu, 13 Apr 2023 16:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 729D110EB70
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 16:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681402461; x=1712938461;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=G9zpWrH1PV/3ASEqvvj8FNxt2ogyhJs0/kQYwuKH/Os=;
 b=hFQraFPkQDsRtHtY3Emuim+cx0FOIJsJ95sFgS1sF0mC4GPZLhrwrhEQ
 G1dV8bvHjCzVVY9P9KP019bq070Ihj+xRlZoLRi1wmk7VVYA871apIzjc
 6Xx2P6lWAUr0stJB6YSE4O57eo9qm50LbOr7xM7zV/B+MNtD6twyaYfeE
 C6GNkx6p8D1getHNPXuZNUUPNOZ3mV88lzrF+Pf7Q2Se8kfWyomwmJzmE
 4vNKCX6corTcSWRxOsx3VdebCFDRzXgtIKFXAKSg7D5njwf6I3xt+/6cy
 M3RbQN1Og/Z6Ygg3eDh7O4JcggZABCufCUncLlflr6bN7Z3BDydONEIzS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="430515380"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="430515380"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:14:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="682997460"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="682997460"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 13 Apr 2023 09:14:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 09:14:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 09:14:05 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 09:14:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fW4PoTANlIaAGfv257PnrbAnXisKDKxsWFBrHXWGptWjagpz7e2E2WWmZXEua6uQabXTUROwfMQIu1YPCjw0BSzr2q6fOsa/drD3o0O3yqU17ZvY/q3xlVV2LPIGo238tunJLJrNr4T5nji0EUlQOwW9mu9LeFv38lWivDQxoY2MXOmpcCGmNnNWq5gjdY1l4dCckhQdlGvp0NTuGxVt+28KJTQcomTpL20qXRCbBV44QQXfTQCfWZupnofSd1MUKr2+3U6NyBonJCXS24XRqKOGCobywkals6YSASrz4GtUytZwkDMU8O7kZLsOVqjlwGvsDdSxBN8JL+w16ELpDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HpZeSEGkfjJfmeqcUvM+hyISza2QAb7wo0o5scdq71I=;
 b=Je5LWCZ8hdf65Fe0X3bkRSGOeT/qmT9kVsGUjGQYFrLhgVdmxCSWoOhaZ32E03RE7yNutTP8YZjoshO8TPZSh/diNcCWo/xaKf517tzjpKHLU0dowyi7wU9T0qKVDQU59izslfKkIoMSrL+PEba1+Faf6a3jQ3rz+6dgsb6rGxtCl60MQG4lGARbe2nsUgLsTe9stwu30rQ2OdM5XkgIgaYhLY+GV/PMU4N7Z9pLhmkfTs2hcFmHOR0ohrP7AI0pCZ/QZpE7be88/Te21YLK4WsWuXg84JkkHmTRdOQ/vPPh9zlpJEBVdBMKqGcKgt2v1110DzMP/oieTmZ5nTTbcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM8PR11MB5703.namprd11.prod.outlook.com (2603:10b6:8:22::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30; Thu, 13 Apr 2023 16:14:01 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 16:14:01 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <881f50d86fd922fe39b367b688e58e7426bf377a.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
 <881f50d86fd922fe39b367b688e58e7426bf377a.1681379167.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 13 Apr 2023 13:13:55 -0300
Message-ID: <168140243509.4412.6683166708727186409@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR17CA0019.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::32) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM8PR11MB5703:EE_
X-MS-Office365-Filtering-Correlation-Id: eb49b7ce-636f-4c80-e64a-08db3c3a1828
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NpkEWw8AbRS+M/CopJGRrAQA8XKpYlx4JH7QQ3XUHwuCq+cSJPoDGHTkeFsBEI6scSbWqvaX2/oMOY/eF38v1K24xsQQu/9mwRBeyIHVb3cHSNHI8joSo0PF9Uzt59WzCJk0jZyZQV3qKQSaGZqohjvdHmuQbUR9aOovF/eLK9av2KtLj/f2+t1IjQQR36WSLV2E+ZkBsJKFyEjhjdq7XIXayXLQTmWSY9BK2wtcjzYedUZgRUSAu3m3UULhNT43nhUnngz+UOPO6a9mC9KRswdsKQDIxZOw/gTabSF4Il6D3LDgQO/NNzC2Yc8vF8YdOAQ/E6g3IodTDNPgrdiyzJCuHw5+vapOPjBpm3Mace3KjP5XL7LhBoDfFpZ3r0KE2bHBVzdW/ST6vyeP7ZkOLTSaqGeRrDn5Dw2LehFNJ+3kaWvhi5K/bxVtbb7J37N6sUqdpb0psqHrwOOPA9hY8rllN0VGbCBNGqtWWZmHdempXS8wuYEOcwooR+UhpSjMeDNkkstO1a6RkKTz8kBq88kR4IBQYi6MyWQdxYW1737HPwNccDoY/YJM0hZGW1CB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(346002)(39860400002)(366004)(136003)(396003)(451199021)(38100700002)(5660300002)(2906002)(44832011)(316002)(8676002)(8936002)(86362001)(66556008)(41300700001)(66946007)(66476007)(82960400001)(4326008)(83380400001)(107886003)(6506007)(186003)(478600001)(26005)(6512007)(9686003)(33716001)(6486002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTRubXNoVlhhRk9nNnBaeTI3Y1pycGwvdDh4S0JScVN2dU95dEFMY1M3Q0pS?=
 =?utf-8?B?WjVqMGRkbXVpT1A4YzJEQWYrSUYzVkZwRWZCYW4rWDZOcFVaV3NERkkxOCsz?=
 =?utf-8?B?QjYwZkJMSTVpK0ttVnhPcXF1T0t1TXBpWmxtbERlWU9BUjlWWkx2Z2RncmZC?=
 =?utf-8?B?TW5WNyt2dUZOcUZxUlBHL2pqL0xPNGVuUU83RHFnbVVCWFdBeEZ6c3hnODQr?=
 =?utf-8?B?UUJha05FTnUxVXZUS01XTnhvQ1ZxRkxSdVhFMnhHcVNYYXNVZUsrdGZ3bito?=
 =?utf-8?B?VkovSzdDZlEvN3Jad3BUSTJ5UE5CYnJSeHpNaFh3R0dTSkhFUEpqZmxtQ1dz?=
 =?utf-8?B?cXVsZG1pdXcrcGF0TkFuaE9lV0xwT2xjSUZzMkxVWXY0Q0R5R21vRFAxQm4x?=
 =?utf-8?B?Snp5WGV4MFpERDArc1pmTUVWMUdRamFNQ3ZVbkxPMVduS3VrZ0c4Q2tkWm9Q?=
 =?utf-8?B?VEFMd29MdjZseUdwMnFiaVFXVHZ5K01valJ6dExNd1lGcWw5cEdlbjY4c3dQ?=
 =?utf-8?B?MXY0RktpYmZzTW9QT0s2RVU0V0s2SEZiTWRRdTF0R3gxV3FDT0xYT3RCQTJ1?=
 =?utf-8?B?emVwMTFjenI5aUNtNWFrNTZHWno3dk1aMmNMcC9NSjhpNVpTV1RpTzNGdUt2?=
 =?utf-8?B?S1lzd1pJcDloSzY1aVgwb0xzenB4MUhkOXkxOXNjTnpQZENrTEFPU1Jvbk5F?=
 =?utf-8?B?d3M2VnBTL21UYmhnbml6TWFBUFZ2K2d5blVPK2tlM0E1VVI0VDg4NWhWOWVo?=
 =?utf-8?B?QmRiVGQvNFhsZjlkc3JZQkxlSTVKUEpiZy96bGpKSjBjeXlyOHEyQnorODls?=
 =?utf-8?B?TXh0YnQvRlo4R3J4UjBXUWo1bHpLb04ySTBSM2swbG1FZ0FKczNVUmoyT0JW?=
 =?utf-8?B?WUtObHFjWDhWelVBZTBGbTNpcHR5Y0s4blRDRzQ0WTI1SVREOVNDN3BGMTFp?=
 =?utf-8?B?NldmblJDUEVyTkRaTTNwNnZqbWJjOHdiR1lVckdBc3N0TXdhcFQ1Ykgrd3Jr?=
 =?utf-8?B?RC9tMlJ1MUJMNS96RkRKSTdaR2kzWjRsMjJnbVFhN1Irb3dTSU1TVUZHR2kx?=
 =?utf-8?B?UlMweUtYMy9WNUZ3aldwK3N1anVweUZZM09PZWNqbWFUOUdORWRhQy9lNDBL?=
 =?utf-8?B?a2ZpVkF2TlNReXhTNlJya0dNNndZaWc1OFVSZWZwYTdzMVQyTzNqWDlMSWFa?=
 =?utf-8?B?ckFKcVpYdzU4enp4Qi91L0l4ODFuZ1c4MjNpNmlSR0NyUjB3aFErQ0JaaXU5?=
 =?utf-8?B?TVpMUEloZU10R2VDWVNYNW5abDBGZ00wN3F6UThJUlF6VEtxVjc2SlAzeU9v?=
 =?utf-8?B?dGVSZG9lTk02S05jQUJPZUx1UWg4REhZTVlFWlZpR3YwRStTRUtvKzhyODds?=
 =?utf-8?B?TFUzemtYLzZWZUxsUTE1ODBWZ3Jhd3FINVBrWG8wM2hKdG5aa0I2V09STWxn?=
 =?utf-8?B?Z0pnTnlaQnF4N20ySEhQSGpldlpTcXgvR014QW9CVWlNZzBMd1FNMEhsSGVQ?=
 =?utf-8?B?Skk2elRFMGhMNWhnU3NqeERmTDFYVmo5OU1vL3F2TzRYQStEbktYUGpOL0VN?=
 =?utf-8?B?SkhXREtFcFhxQzlsai9LSHVkaWdtSzNBOVR5Wnd5TFJXQldlVDBJOVR6OVd2?=
 =?utf-8?B?MUloOVRJcjNDK2tRRm9la0FvWVRZSy9KWVVjSm0ranZBYkhuWlJvb1RJM3g0?=
 =?utf-8?B?SWp1YTF3OWRwZU1JeS9GWkZURWMyV3ZHS2pSZGJWcjBCaWhYZXVtbFVUQ0xL?=
 =?utf-8?B?QnE4MElLb0lBb2lkdFhKR1h2aTNBRTR2UEFMTUVUSXkxNTZleGQyQU5jVGdE?=
 =?utf-8?B?UXhleTBKcGZkZ3JReGFJNy9adVh4SFJtZWY4bDlUTWJiTlV0WVFWK2ZNbjk2?=
 =?utf-8?B?U0ZlcUxBSzcxNEVJQUVHMnRwV2lvczBoY0N5YVlNNXJlSE5PQnRCYXVCM1Zn?=
 =?utf-8?B?MUQ0NG9vOG0xZEE0ejF3UDhwNVNRWXpkNVNCTTcxMStMZ3BnM0F0YjBoSS8v?=
 =?utf-8?B?TW1WeFhmbkVEK2hzcnd5emduZ04xSER3cGQ2OHlBVnRId1dzblFjd2hGMWZY?=
 =?utf-8?B?ZWVoOUlvWjJLY1dhakw2M3JBcmZMaTk1VXE3bG40Y0tBUHJXMjNDb0gyQ1ZR?=
 =?utf-8?B?U0wrNHJuQm5QTTMwNmxlOFVWZDRJN0xWd1BYTjM1WGNjSzJRSTliV2Z0VW5V?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb49b7ce-636f-4c80-e64a-08db3c3a1828
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 16:14:01.7144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jYvgwCJjTx5p+KJMffG+0qGTZmnoiyvZXmEd91OKjcZYWrp/TIT26gsB5Dw/MMFRRTj14IhbDHnK2b6bJVxeOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5703
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/display: remove
 intel_display_commit_duplicated_state()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-04-13 06:47:27)
> This seems like an unnecessary wrapper layer. Removing it will be
> helpful later.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++-------------
>  1 file changed, 10 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 27b47680573a..1c0149adcf49 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -701,20 +701,6 @@ intel_plane_fence_y_offset(const struct intel_plane_=
state *plane_state)
>         return y;
>  }
> =20
> -static int
> -intel_display_commit_duplicated_state(struct intel_atomic_state *state,
> -                                struct drm_modeset_acquire_ctx *ctx)
> -{
> -  struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> -  int ret;
> -
> -  ret =3D drm_atomic_helper_commit_duplicated_state(&state->base, ctx);
> -
> -  drm_WARN_ON(&i915->drm, ret =3D=3D -EDEADLK);
> -
> -  return ret;
> -}
> -
>  static int
>  __intel_display_resume(struct drm_i915_private *i915,
>                        struct drm_atomic_state *state,
> @@ -722,7 +708,7 @@ __intel_display_resume(struct drm_i915_private *i915,
>  {
>         struct drm_crtc_state *crtc_state;
>         struct drm_crtc *crtc;
> -  int i;
> +  int ret, i;
> =20
>         intel_modeset_setup_hw_state(i915, ctx);
>         intel_vga_redisable(i915);
> @@ -748,7 +734,11 @@ __intel_display_resume(struct drm_i915_private *i915=
,
>         if (!HAS_GMCH(i915))
>                 to_intel_atomic_state(state)->skip_intermediate_wm =3D tr=
ue;
> =20
> -  return intel_display_commit_duplicated_state(to_intel_atomic_state(sta=
te), ctx);
> +  ret =3D drm_atomic_helper_commit_duplicated_state(state, ctx);
> +
> +  drm_WARN_ON(&i915->drm, ret =3D=3D -EDEADLK);
> +
> +  return ret;
>  }
> =20
>  static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv=
)
> @@ -839,10 +829,12 @@ void intel_display_finish_reset(struct drm_i915_pri=
vate *i915)
>         /* reset doesn't touch the display */
>         if (!gpu_reset_clobbers_display(i915)) {
>                 /* for testing only restore the display */
> -          ret =3D intel_display_commit_duplicated_state(to_intel_atomic_=
state(state), ctx);
> -          if (ret)
> +          ret =3D drm_atomic_helper_commit_duplicated_state(state, ctx);
> +          if (ret) {
> +                  drm_WARN_ON(&i915->drm, ret =3D=3D -EDEADLK);
>                         drm_err(&i915->drm,
>                                 "Restoring old state failed with %i\n", r=
et);
> +          }
>         } else {
>                 /*
>                  * The display has been reset as well,
> --=20
> 2.39.2
>
