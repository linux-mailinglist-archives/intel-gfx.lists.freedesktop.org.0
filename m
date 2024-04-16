Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 668C08A7114
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 18:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA65710F174;
	Tue, 16 Apr 2024 16:17:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jhva4c8U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3FCD10F1C4;
 Tue, 16 Apr 2024 16:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713284274; x=1744820274;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Af4b4aKEFU/ur1EGEv1xjcs35ynXu5MrTFGM/cU6NF4=;
 b=jhva4c8UI/c/2bWZTsZNqIn8CbWJOY/mwYpdGpTK4UqqYThDEDfWy0Mx
 Gx/3KB40XKeZAhCPhggeiuYELgIo2zjA6jZWa818VfYy2LKBetyLEEM4q
 4qZJgF5EztUiHW+Z9eUF4aLIDDrA3bTv+ohE64xJ048zg/vh2rXMePI44
 RyuTJX5mmwMfAC9oYnyUls2MvsD1I0mcULjfmgdqRq0DT4ofrbD0lS7gZ
 IIgswD3m7KJvze6xEo25k7uBaESP3sCQ743t5dYKkkpJpnPn8DmsakkPT
 Zlod42Ki1OxBiZO6QwaKhC2a8BVkm0Jzkg06RzsAoEPJd9BDzKG2+Nvgi Q==;
X-CSE-ConnectionGUID: L5ATuUJhQp+RihbfLucsDQ==
X-CSE-MsgGUID: rXyZAadfSmCjRTlxvbKu0A==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8567251"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="8567251"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 09:17:53 -0700
X-CSE-ConnectionGUID: njJuZUNTQ/CJyQeZwrYLNQ==
X-CSE-MsgGUID: iiMvF3uOTfC5ihPY0LlZ7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="27103249"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 09:17:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 09:17:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 09:17:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 09:17:51 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 09:17:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PbJx+Q8JA+hZcSyteBJNmgK6vLaCoThJzNFitlLKzAf8Ji86YDZ+2mKAgR068cH4cP0xmJe+zgoUWGvcimEeFtwWLZL/2exJ0LIp1WyHlxfq9eJ4kyjbFhwmKVmDT5zb1bU49UWcygZ4IsNwAzLwg5UtH2qyCuGF8zM+KVvbsRP4V/pbmPOiImCWEPaOH86MQQwlBQvAI9rzUoxHsZGbS4u0GSl0UHgQMa/svUpuWsufZ1VIGjYBbMVdepCj8yxjWgXRo4E8MtCPyzagtW2A1OMfAIhKXvH6Njk/+a0Cbw9BMhNjIyfIgAkAOfpUHNmZbnUTVi6nuwwWKlbWuJviJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gVpikR1hoP+Gp/Wz8kS8Q5CFs0ZMS5eAIHnqMSkMiQ0=;
 b=KTbSBg/FoUXuEZn9oVCYbeFxjPiRvoZHhBaGWeKR6J4F5Xde4quy/jQ3ko5T/4AgUHXSHRe+G4sQ97eYL1f54odzBheJMh7g8BwLQqxCiQ5/TIJCjAiGDR635AKmXY3zrvCJbpJIurldqa0wmJyP3BFhhC9/8O7JvT2QJz7lCZV7WGk9Vp1QdLdwsm44w/ah7wLwdH9mN6hrOcONWqT2T3kXwU1AAzP2BTxrzwNuLn1GELvpNUyEEtxw6jrSre7Jv8ZPmtotp3eko4xn5xMg39SPOJhgabuf14sWq/1xwZ/Lz7xZ7VpPBZHFOB2aGhQ95pKcXU23oo+P91b1aXEYVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by CY8PR11MB7170.namprd11.prod.outlook.com (2603:10b6:930:91::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Tue, 16 Apr
 2024 16:17:49 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506%7]) with mapi id 15.20.7472.025; Tue, 16 Apr 2024
 16:17:49 +0000
Date: Tue, 16 Apr 2024 12:17:37 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <tursulin@ursulin.net>
Subject: Re: [PATCH v3 7/7] drm/i915/quirks: convert struct drm_i915_private
 to struct intel_display
Message-ID: <Zh6koRhjPyRedD0W@intel.com>
References: <cover.1712665176.git.jani.nikula@intel.com>
 <e6c5776a5ace759539b19debadeb150a02498d54.1712665176.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e6c5776a5ace759539b19debadeb150a02498d54.1712665176.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0014.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::19) To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|CY8PR11MB7170:EE_
X-MS-Office365-Filtering-Correlation-Id: 966d80e3-e1fe-4d63-8eb7-08dc5e30c204
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p65kGTITjD7icsxtbSkUSGAk/7j7qovxleXjkHxJekEVU08soxqEVHiHNUfHXqlqVvgPNgsdZOLVMrTsuMZ3H7bSjVnAydYW92HcHL88BAe2uDpyATzxVVZlNlxAubtFEXi+mO2E3cCSxKccXoG9iMCRIN0UeXIMl/+GZdt1Nb/AA9jFydhET9hdFfzKIhDOySBURNDB8GP8c3oqhoyC+P2gF63zD1o09Od1ndXLvIdVH0k27j91ysh9whFh7S1YpEECWWK02bL7h01VHYSdYU4yeUlcSj1npFHsNK/unD1zqBLAdavwG5d3XEY/eQRgWI/qiox96VxRds6pULUBHtXhmEjxCFVDNf4AlFAxtbNdA8Jka8GZkhmXemyk9Gtur0iTZE/J74kEmk084pwJi5X9Yf0vEhfa/7ppxzg/n5xHNsOz4gohxvu1spNIgti9zcfGlv/fmUsXmv+yFoYFMuZY49X+TgpNYiS9UH2fWgFSRNwZKrWXmVKT206sOhTDB6bf/wOh2oounpQzXKltSPmzABS1zv14OsKWyZKjjKmAe/QZcboo1VckmYLFbzYxd49ydQK9A88bq5bIiCOgOGRynr2J3whcYTt3mJrgBcUbXVicfzSSXldWiCVB3PZcjrzjF+O8TpM+a1B61zPyB7T8oRZprBcNAr+/urPsPgg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8rpr6ybiL9k/Y9t3DxEf/BBm+lXByhLlgo1T9vNWwWR2RuKj73yNMDsoPvbI?=
 =?us-ascii?Q?YlP/PQjd7NEHFi03A4o2gC8YFV0d/XFrNdpIuEVHYJ9pKJ2Znq20ufo05azD?=
 =?us-ascii?Q?rFji+AqB5ERYCIJmzS6xJuq0fp7PRRJEv7gjN30qO/jhBzaBMps2OSqoXqvw?=
 =?us-ascii?Q?wFGjmWRA55PQjgcpAVjxyrxGCrAfRuplk38402mY3l4H5bNK0NFrlQoiii08?=
 =?us-ascii?Q?lUiNVFh0MSRoiFtkIySXyj3GLrr0sRo6Sw9zM1C/G6a+yNLpa1JBWF3zFmrK?=
 =?us-ascii?Q?YkEoA5qN/M5zhssNlml2rAkNdZ3q2aKGBOWp0KsB2QYIyNVcmeoHbWX02Tia?=
 =?us-ascii?Q?xjAnhvA/ALgtsrC7gxpWIhCQ5z4f+LFPwJH9Hk/gmRPxkn87t9EDboCxyN3p?=
 =?us-ascii?Q?Ze0WB2lxsKUVJ0sJoCo1W9r0QYdKBQDgKn0F/FHnBNs7b4aP/mkY5nEbJFfk?=
 =?us-ascii?Q?PkMBsaBFPGyP+4fmp4jlqojueyanHii+QXPsZXUgUGDa7DlsD7SYgXu05XKj?=
 =?us-ascii?Q?8/CGXQFvRG+PThMumH+NrvndZgozASQLuzK221PZQGGrg71NA8Z2JSfru4MP?=
 =?us-ascii?Q?jCivvNS9dMEK70D8BOmNajW1ZMM3Ga3ualenS60t9DDisbsh5p+WO9dayiQn?=
 =?us-ascii?Q?JYsMkQ/DilFJDddmtQ+/bjIG23vB5YuW+ChO+Y3zNcpj3EZ/Bp/dr+68l69A?=
 =?us-ascii?Q?A3HXDcIilkQ0VDXo1mGZks9yq9JtHxcKfHA4HbNovlH+7d7VSAt5zZMP+OC3?=
 =?us-ascii?Q?cJ7ZD8NUaeCA/wz8y/sGSwrq17+IFC3bLQw/YZbs2Xwsexok7CAM1vYW3B0g?=
 =?us-ascii?Q?tYnIzbEIQRsoV7AbkQp0oG5CTiCLFclSc8WylTry/Px5TDkmwwdDjWfBYAbP?=
 =?us-ascii?Q?98qCSTt2UzQ0T8GzX8rMFC9kskAaj/ShqMd1Ibnde0IYgR78nddU5uLCTuFL?=
 =?us-ascii?Q?4K7u+agGLpI1vdvbTdmCTqfz6uLnRSEm0+X/2uXqsDEGLruBh03FCZyrj62+?=
 =?us-ascii?Q?p2ibFFNmafwY+AD+QLBjbXcB0qLB7Bch90cTHSYmHOra4YXTxXNuhBRFkiQD?=
 =?us-ascii?Q?to2sT1ECJCJ38NZV11AF+VXf0oYYMqZTmxYoxbHvPzC4KkwN9kvDj6NnudL4?=
 =?us-ascii?Q?TezLHDLf7ws2zP8wYb3xuQDhQMUMst+knxbFa/tRN/jToZcaWyDY7BONGAk5?=
 =?us-ascii?Q?vZxv2mbaynGFUdh8n1YFjTNdynhEanHxzHGH0Xn0XpKEOqLWmQgeHIvQm3Ap?=
 =?us-ascii?Q?aIBWBtEUo6e4eHQ8LUKDLZIj7S4WKOcWBsX7kqtYUWfSGn4XZOjWyoBzFhxo?=
 =?us-ascii?Q?64FtuUdZfDwwU9WVKnUwfZJYoAlLbeCDsNoXuMYTmslNEAjBlGNlN6tzgI23?=
 =?us-ascii?Q?7LlhOAblq1wqljOgxaSpN5xwAOQdzYI3Vzq470Qk8fownCcw2WjNN4UxRWpz?=
 =?us-ascii?Q?dw8nXeOBfcqhsB9R70asObdQ8sl8WykxlZSkXECVc3dLxJ7MY+jx//Fo2k75?=
 =?us-ascii?Q?+1iGQqHAB2eJVCG4TZ/vA3oIr3apEqkBMykUi9oOMUA9iUOcVNcW/BrAKqNA?=
 =?us-ascii?Q?r+NW0DCYlPk1mdyhBQeyUNmld8na6vgtUHXYkP/0u9AO5zciIC0vu9WU2DqF?=
 =?us-ascii?Q?sw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 966d80e3-e1fe-4d63-8eb7-08dc5e30c204
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 16:17:49.3371 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lJeaopThY7UophOfer4ARoGH3RdCzD6u7hWGecQuLx0vEIodgnvTeChSHRzXEpzA1Lv0BJ0x9YkuzYaqxHBAoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7170
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

On Tue, Apr 09, 2024 at 03:26:49PM +0300, Jani Nikula wrote:
> Use struct intel_display instead of struct drm_i915_private for
> quirks. Also do drive-by conversions in call sites of intel_has_quirk().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_backlight.c    | 40 ++++++-------
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +-
>  .../drm/i915/display/intel_display_driver.c   |  3 +-
>  drivers/gpu/drm/i915/display/intel_panel.c    | 10 ++--
>  drivers/gpu/drm/i915/display/intel_pps.c      |  6 +-
>  drivers/gpu/drm/i915/display/intel_quirks.c   | 56 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_quirks.h   |  6 +-
>  7 files changed, 65 insertions(+), 62 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 4d4330410b4d..071668bfe5d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -83,16 +83,16 @@ static u32 scale_hw_to_user(struct intel_connector *connector,
>  
>  u32 intel_backlight_invert_pwm_level(struct intel_connector *connector, u32 val)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_panel *panel = &connector->panel;
>  
> -	drm_WARN_ON(&i915->drm, panel->backlight.pwm_level_max == 0);
> +	drm_WARN_ON(display->drm, panel->backlight.pwm_level_max == 0);
>  
> -	if (i915->display.params.invert_brightness < 0)
> +	if (display->params.invert_brightness < 0)
>  		return val;
>  
> -	if (i915->display.params.invert_brightness > 0 ||
> -	    intel_has_quirk(i915, QUIRK_INVERT_BRIGHTNESS)) {
> +	if (display->params.invert_brightness > 0 ||
> +	    intel_has_quirk(display, QUIRK_INVERT_BRIGHTNESS)) {
>  		return panel->backlight.pwm_level_max - val + panel->backlight.pwm_level_min;
>  	}
>  
> @@ -126,15 +126,15 @@ u32 intel_backlight_level_to_pwm(struct intel_connector *connector, u32 val)
>  
>  u32 intel_backlight_level_from_pwm(struct intel_connector *connector, u32 val)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_panel *panel = &connector->panel;
>  
> -	drm_WARN_ON_ONCE(&i915->drm,
> +	drm_WARN_ON_ONCE(display->drm,
>  			 panel->backlight.max == 0 || panel->backlight.pwm_level_max == 0);
>  
> -	if (i915->display.params.invert_brightness > 0 ||
> -	    (i915->display.params.invert_brightness == 0 &&
> -	     intel_has_quirk(i915, QUIRK_INVERT_BRIGHTNESS)))
> +	if (display->params.invert_brightness > 0 ||
> +	    (display->params.invert_brightness == 0 &&
> +	     intel_has_quirk(display, QUIRK_INVERT_BRIGHTNESS)))
>  		val = panel->backlight.pwm_level_max - (val - panel->backlight.pwm_level_min);
>  
>  	return scale(val, panel->backlight.pwm_level_min, panel->backlight.pwm_level_max,
> @@ -1642,17 +1642,17 @@ void intel_backlight_update(struct intel_atomic_state *state,
>  
>  int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_panel *panel = &connector->panel;
>  	int ret;
>  
>  	if (!connector->panel.vbt.backlight.present) {
> -		if (intel_has_quirk(i915, QUIRK_BACKLIGHT_PRESENT)) {
> -			drm_dbg_kms(&i915->drm,
> +		if (intel_has_quirk(display, QUIRK_BACKLIGHT_PRESENT)) {
> +			drm_dbg_kms(display->drm,
>  				    "[CONNECTOR:%d:%s] no backlight present per VBT, but present per quirk\n",
>  				    connector->base.base.id, connector->base.name);
>  		} else {
> -			drm_dbg_kms(&i915->drm,
> +			drm_dbg_kms(display->drm,
>  				    "[CONNECTOR:%d:%s] no backlight present per VBT\n",
>  				    connector->base.base.id, connector->base.name);
>  			return 0;
> @@ -1660,16 +1660,16 @@ int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
>  	}
>  
>  	/* ensure intel_panel has been initialized first */
> -	if (drm_WARN_ON(&i915->drm, !panel->backlight.funcs))
> +	if (drm_WARN_ON(display->drm, !panel->backlight.funcs))
>  		return -ENODEV;
>  
>  	/* set level and max in panel struct */
> -	mutex_lock(&i915->display.backlight.lock);
> +	mutex_lock(&display->backlight.lock);
>  	ret = panel->backlight.funcs->setup(connector, pipe);
> -	mutex_unlock(&i915->display.backlight.lock);
> +	mutex_unlock(&display->backlight.lock);
>  
>  	if (ret) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "[CONNECTOR:%d:%s] failed to setup backlight\n",
>  			    connector->base.base.id, connector->base.name);
>  		return ret;
> @@ -1677,7 +1677,7 @@ int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
>  
>  	panel->backlight.present = true;
>  
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] backlight initialized, %s, brightness %u/%u\n",
>  		    connector->base.base.id, connector->base.name,
>  		    str_enabled_disabled(panel->backlight.enabled),
> @@ -1821,7 +1821,7 @@ void intel_backlight_init_funcs(struct intel_panel *panel)
>  		if (intel_dp_aux_init_backlight_funcs(connector) == 0)
>  			return;
>  
> -		if (!intel_has_quirk(i915, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
> +		if (!intel_has_quirk(&i915->display, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
>  			connector->panel.backlight.power = intel_pps_backlight_power;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 793ef3e387c6..49d947f4ccde 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -631,6 +631,7 @@ intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
>  
>  void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> @@ -661,10 +662,9 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
>  
>  	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), ctl);
>  
> -	if (intel_has_quirk(dev_priv, QUIRK_INCREASE_DDI_DISABLED_TIME) &&
> +	if (intel_has_quirk(display, QUIRK_INCREASE_DDI_DISABLED_TIME) &&
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Quirk Increase DDI disabled time\n");
> +		drm_dbg_kms(display->drm, "Quirk Increase DDI disabled time\n");
>  		/* Quirk time at 100ms for reliable operation */
>  		msleep(100);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 87dd07e0d138..0b05c3b732e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -203,6 +203,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
>  /* part #1: call before irq install */
>  int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display = &i915->display;
>  	int ret;
>  
>  	if (i915_inject_probe_failure(i915))
> @@ -261,7 +262,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  	if (ret)
>  		goto cleanup_vga_client_pw_domain_dmc;
>  
> -	intel_init_quirks(i915);
> +	intel_init_quirks(display);
>  
>  	intel_fbc_init(i915);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 073ea3166c36..6f4ff6a89c32 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -47,10 +47,12 @@
>  
>  bool intel_panel_use_ssc(struct drm_i915_private *i915)
>  {
> -	if (i915->display.params.panel_use_ssc >= 0)
> -		return i915->display.params.panel_use_ssc != 0;
> -	return i915->display.vbt.lvds_use_ssc &&
> -		!intel_has_quirk(i915, QUIRK_LVDS_SSC_DISABLE);
> +	struct intel_display *display = &i915->display;
> +
> +	if (display->params.panel_use_ssc >= 0)
> +		return display->params.panel_use_ssc != 0;
> +	return display->vbt.lvds_use_ssc &&
> +		!intel_has_quirk(display, QUIRK_LVDS_SSC_DISABLE);
>  }
>  
>  const struct drm_display_mode *
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index b5d9920f8341..052f4ee406b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1350,7 +1350,7 @@ static void pps_init_delays_bios(struct intel_dp *intel_dp,
>  static void pps_init_delays_vbt(struct intel_dp *intel_dp,
>  				struct edp_power_seq *vbt)
>  {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_connector *connector = intel_dp->attached_connector;
>  
>  	*vbt = connector->panel.vbt.edp.pps;
> @@ -1363,9 +1363,9 @@ static void pps_init_delays_vbt(struct intel_dp *intel_dp,
>  	 * just fails to power back on. Increasing the delay to 800ms
>  	 * seems sufficient to avoid this problem.
>  	 */
> -	if (intel_has_quirk(dev_priv, QUIRK_INCREASE_T12_DELAY)) {
> +	if (intel_has_quirk(display, QUIRK_INCREASE_T12_DELAY)) {
>  		vbt->t11_t12 = max_t(u16, vbt->t11_t12, 1300 * 10);
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Increasing T12 panel delay as per the quirk to %d\n",
>  			    vbt->t11_t12);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
> index a280448df771..14d5fefc9c5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> @@ -9,72 +9,72 @@
>  #include "intel_display_types.h"
>  #include "intel_quirks.h"
>  
> -static void intel_set_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk)
> +static void intel_set_quirk(struct intel_display *display, enum intel_quirk_id quirk)
>  {
> -	i915->display.quirks.mask |= BIT(quirk);
> +	display->quirks.mask |= BIT(quirk);
>  }
>  
>  /*
>   * Some machines (Lenovo U160) do not work with SSC on LVDS for some reason
>   */
> -static void quirk_ssc_force_disable(struct drm_i915_private *i915)
> +static void quirk_ssc_force_disable(struct intel_display *display)
>  {
> -	intel_set_quirk(i915, QUIRK_LVDS_SSC_DISABLE);
> -	drm_info(&i915->drm, "applying lvds SSC disable quirk\n");
> +	intel_set_quirk(display, QUIRK_LVDS_SSC_DISABLE);
> +	drm_info(display->drm, "applying lvds SSC disable quirk\n");
>  }
>  
>  /*
>   * A machine (e.g. Acer Aspire 5734Z) may need to invert the panel backlight
>   * brightness value
>   */
> -static void quirk_invert_brightness(struct drm_i915_private *i915)
> +static void quirk_invert_brightness(struct intel_display *display)
>  {
> -	intel_set_quirk(i915, QUIRK_INVERT_BRIGHTNESS);
> -	drm_info(&i915->drm, "applying inverted panel brightness quirk\n");
> +	intel_set_quirk(display, QUIRK_INVERT_BRIGHTNESS);
> +	drm_info(display->drm, "applying inverted panel brightness quirk\n");
>  }
>  
>  /* Some VBT's incorrectly indicate no backlight is present */
> -static void quirk_backlight_present(struct drm_i915_private *i915)
> +static void quirk_backlight_present(struct intel_display *display)
>  {
> -	intel_set_quirk(i915, QUIRK_BACKLIGHT_PRESENT);
> -	drm_info(&i915->drm, "applying backlight present quirk\n");
> +	intel_set_quirk(display, QUIRK_BACKLIGHT_PRESENT);
> +	drm_info(display->drm, "applying backlight present quirk\n");
>  }
>  
>  /* Toshiba Satellite P50-C-18C requires T12 delay to be min 800ms
>   * which is 300 ms greater than eDP spec T12 min.
>   */
> -static void quirk_increase_t12_delay(struct drm_i915_private *i915)
> +static void quirk_increase_t12_delay(struct intel_display *display)
>  {
> -	intel_set_quirk(i915, QUIRK_INCREASE_T12_DELAY);
> -	drm_info(&i915->drm, "Applying T12 delay quirk\n");
> +	intel_set_quirk(display, QUIRK_INCREASE_T12_DELAY);
> +	drm_info(display->drm, "Applying T12 delay quirk\n");
>  }
>  
>  /*
>   * GeminiLake NUC HDMI outputs require additional off time
>   * this allows the onboard retimer to correctly sync to signal
>   */
> -static void quirk_increase_ddi_disabled_time(struct drm_i915_private *i915)
> +static void quirk_increase_ddi_disabled_time(struct intel_display *display)
>  {
> -	intel_set_quirk(i915, QUIRK_INCREASE_DDI_DISABLED_TIME);
> -	drm_info(&i915->drm, "Applying Increase DDI Disabled quirk\n");
> +	intel_set_quirk(display, QUIRK_INCREASE_DDI_DISABLED_TIME);
> +	drm_info(display->drm, "Applying Increase DDI Disabled quirk\n");
>  }
>  
> -static void quirk_no_pps_backlight_power_hook(struct drm_i915_private *i915)
> +static void quirk_no_pps_backlight_power_hook(struct intel_display *display)
>  {
> -	intel_set_quirk(i915, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK);
> -	drm_info(&i915->drm, "Applying no pps backlight power quirk\n");
> +	intel_set_quirk(display, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK);
> +	drm_info(display->drm, "Applying no pps backlight power quirk\n");
>  }
>  
>  struct intel_quirk {
>  	int device;
>  	int subsystem_vendor;
>  	int subsystem_device;
> -	void (*hook)(struct drm_i915_private *i915);
> +	void (*hook)(struct intel_display *display);
>  };
>  
>  /* For systems that don't have a meaningful PCI subdevice/subvendor ID */
>  struct intel_dmi_quirk {
> -	void (*hook)(struct drm_i915_private *i915);
> +	void (*hook)(struct intel_display *display);
>  	const struct dmi_system_id (*dmi_id_list)[];
>  };
>  
> @@ -203,9 +203,9 @@ static struct intel_quirk intel_quirks[] = {
>  	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
>  };
>  
> -void intel_init_quirks(struct drm_i915_private *i915)
> +void intel_init_quirks(struct intel_display *display)
>  {
> -	struct pci_dev *d = to_pci_dev(i915->drm.dev);
> +	struct pci_dev *d = to_pci_dev(display->drm->dev);
>  	int i;
>  
>  	for (i = 0; i < ARRAY_SIZE(intel_quirks); i++) {
> @@ -216,15 +216,15 @@ void intel_init_quirks(struct drm_i915_private *i915)
>  		     q->subsystem_vendor == PCI_ANY_ID) &&
>  		    (d->subsystem_device == q->subsystem_device ||
>  		     q->subsystem_device == PCI_ANY_ID))
> -			q->hook(i915);
> +			q->hook(display);
>  	}
>  	for (i = 0; i < ARRAY_SIZE(intel_dmi_quirks); i++) {
>  		if (dmi_check_system(*intel_dmi_quirks[i].dmi_id_list) != 0)
> -			intel_dmi_quirks[i].hook(i915);
> +			intel_dmi_quirks[i].hook(display);
>  	}
>  }
>  
> -bool intel_has_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk)
> +bool intel_has_quirk(struct intel_display *display, enum intel_quirk_id quirk)
>  {
> -	return i915->display.quirks.mask & BIT(quirk);
> +	return display->quirks.mask & BIT(quirk);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
> index 10a4d163149f..151c8f4ae576 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.h
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.h
> @@ -8,7 +8,7 @@
>  
>  #include <linux/types.h>
>  
> -struct drm_i915_private;
> +struct intel_display;
>  
>  enum intel_quirk_id {
>  	QUIRK_BACKLIGHT_PRESENT,
> @@ -19,7 +19,7 @@ enum intel_quirk_id {
>  	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
>  };
>  
> -void intel_init_quirks(struct drm_i915_private *i915);
> -bool intel_has_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk);
> +void intel_init_quirks(struct intel_display *display);
> +bool intel_has_quirk(struct intel_display *display, enum intel_quirk_id quirk);
>  
>  #endif /* __INTEL_QUIRKS_H__ */
> -- 
> 2.39.2
> 
