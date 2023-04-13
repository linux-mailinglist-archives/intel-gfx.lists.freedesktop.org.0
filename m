Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E6A6E0F3B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 15:52:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B3610EB10;
	Thu, 13 Apr 2023 13:52:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEAE710EB10
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 13:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681393932; x=1712929932;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=ZI7wGHsuqkvAbtSF0dpSayZpDpSHesCmTR8LPvX3pKc=;
 b=MT/gsQYAwxOLdKOTMGrxEb+jGXPAmkN7D1vhmc5+MaKWiVOaPr1WDHHR
 XVC6/6BFVQgPFOALNSYJCwr8Mbkbk17uL9i/aLLlr8U8P2mSZZGPG7teY
 1Xq4InMCM9mxGfmutFSoUYWFm8dJUuLxj0+w36epPl/zXYVtS8ITsb9S7
 WK3hnc8mvLFKElbXqfeRuuT9KTCph/pm4FVIbazHQCSrUqjRbjnsnIyIP
 x67bRkjQuv0SoAbxRqPq1fQofQV2sRE1i6+09MdUOz1g2M+tcEdQd2eOt
 GEhDyiKhrkPnGElOQqBqpjF2dkWOwoXV87vkUhXLtAbG0k+OS3qBMkOqJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="345991378"
X-IronPort-AV: E=Sophos;i="5.99,193,1677571200"; d="scan'208";a="345991378"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 06:20:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="1019175279"
X-IronPort-AV: E=Sophos;i="5.99,193,1677571200"; d="scan'208";a="1019175279"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 13 Apr 2023 06:20:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 06:20:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 06:20:45 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 06:20:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L4SaYnUmPN73nIX/JiODQ+bZi+oNbyKc5fq/jK9Fn7lnZ4SLzuDCpnC7/WQ2osOdQ9ATYgOC13uAIEf8Dd5+pjRYFbvAUQ2zddJwFTlL8JnJIKhPX/cmUZI7lWBpiFdRs6UrbA4kQrGA/Js1y2hErHiMb0E9fPkeL7J6t0E46O+1kCzNYh4z69QNjBGrdi87ocDXzaeXEEZUbHbx4fIF6M0Y8q5xWwfsdmyVD37MOBGv0neNa4DinFUhjW1ASNJ754U8bQTcWvnpecceAbxa0tOQv2yeEOrccsyQQDaaYvH0cx7duY9b4hHVuo0zzdfyi+fiO4QwUjh7HrsAsUu6aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tv4i3mi6NFPTwaZMJZSqbefs7ODPriQ/Ny3OFSr6rJA=;
 b=U1xOCnPYPccvZEao/gRTFTmSJQL3KnVzURmQLADDHizT3YrZoI5ZTtWsb+rH44ZNOUJom75yPy5ZcLmvKCx+wpGj0LN79pROAkTo+n8QjHozuUy6I3k5mmjXu7JvvkMR7NpMzM/NN6tJpouqoMjE9UxdeP6P+QeNH6jfoLcHmDwDpBIKD6haPTDTRttSXnKfZmun+uok8Tq7WAg5dztmd2Agp5Vay4T1DX4rx7Uxpqntk2CqSr43DRvknq3fiG4h590mGNw44rPSvA5x+dO/scjY9ixoti6pEbL6KTKaFDZAvuGC+1E0k6M0dJ+S11oq+uso9IRPEMgKSPqbke7D1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH7PR11MB6545.namprd11.prod.outlook.com (2603:10b6:510:213::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.35; Thu, 13 Apr
 2023 13:20:41 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 13:20:41 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <79b7928790ba7e006bd0673da84ce5cc6e5db478.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
 <79b7928790ba7e006bd0673da84ce5cc6e5db478.1681379167.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 13 Apr 2023 10:20:36 -0300
Message-ID: <168139203649.4412.3287681227496282868@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR08CA0001.namprd08.prod.outlook.com
 (2603:10b6:a03:100::14) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH7PR11MB6545:EE_
X-MS-Office365-Filtering-Correlation-Id: fb38cc1f-098f-477c-dde7-08db3c21e111
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E8TR4OelBnYBQnNgXecVQtl+1TpCAXZh7Gq0iaLoYk+qK2yLa6W7TFs5R+kGiUrf6ktXrz1FBdhXU3klNvn3e7B+IRP8t71hmcqUQxm81JhZ+6m3HuT2CqWRDwa8xUbr0WAtxPjr5bL5Mck72kSusMPEYhe9eQgIntH/Uix8w9U8xZrtTn1yIg6P929ymD9/cCxhY4GlFevcJBPbP6s+F3b89hvb1LVDa4DDC1dU0bPuttsSgJ6xnES84CSNUu5upaNY3lEq0VT1pr5aCQiCdIO1c0LRjN/A7g5xblwNrm8MHutn1DVD23S+LpMZsnS3Ata4HP8QiJ7CIdtuI7rF5xW+Xbec5WfWsxiN2+sjOsN7LUEg9bz9uIdPjeRFAcpELNIwN3WweoClecN+c9QREOtJgxUG7zWgfZ/kk4rR8ZA5WBnf0KW3GSxZTvcAlNCECTX0kxNLDyXz7lJqkac+tfIlxnuu3gJhF/r+HQuWkx+qyn7OsJYG3UuqcwoGSnKZvn2K8c48nflRB8kMia7l4Pm2qmb1ftZA8LgwZ/v0YkZwf1jgsBds56uk0zsznepE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(366004)(396003)(376002)(136003)(346002)(451199021)(316002)(82960400001)(66476007)(66946007)(8676002)(66556008)(86362001)(4326008)(38100700002)(478600001)(33716001)(186003)(26005)(41300700001)(9686003)(6512007)(6506007)(2906002)(83380400001)(30864003)(44832011)(66899021)(8936002)(107886003)(6666004)(5660300002)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1NLWm1vQXpDd3JKWU5CdGhLL3o5Ly9wWjZ6TjdDcU1uWTV5MG9ucEFLMzZD?=
 =?utf-8?B?Nk5mYWNiZlFmWU5aVUt5OFJDdW9lK2ZISm5wN0tJdXVJL0xQUjIwUkNTZHRL?=
 =?utf-8?B?ZjEzckpGWXZSclBKTjQ4QnBhaktkV2czYldLYXF6ZnU2alJheDFpcndYUys1?=
 =?utf-8?B?KzQrbkloZ1JneDVIcWdXZTA5enpuYVNuaTNRdk53d0V0QWc0M0hkZFZ5eGhk?=
 =?utf-8?B?V3JRK0lYeWEzN2lpZXZrd1lULytPOE00cDZvOC9wRTBNd0YxM0lRZC9ZOENS?=
 =?utf-8?B?TlZnQW5oT1BUd1B6aFlLc2kxVUxRYXI4MjFVMmw5cWpuK2I1UXhpT3oyK0FL?=
 =?utf-8?B?VzJwVnlRUU1BUDZRYUVUcjFrU2g4clQ1WmhBZHpXbmtKMGpWdk9YK2pnQ1V0?=
 =?utf-8?B?bnhzQmpaVXVUVjZsMkRPZlFHN3poZUhraTlPY3VGcU9abGthTVdTUTRyR2dW?=
 =?utf-8?B?YXhabFNUTXZ5d1NDMGRSRVZudGNCOXJLK0tscGlpQTl1T3RuZXVaQzB2WnV3?=
 =?utf-8?B?NlI4Z1Fpb1JiYnFLTGtYQmVrVlFHNC9SVGREcERFT3RGRCszZkU2S29XT0Rw?=
 =?utf-8?B?NW1tcU9GTlNaa3hGbldhVWNrUXVhZEFSMUVJcnR6YTF0WHdONzVhemt5SEFI?=
 =?utf-8?B?NW5JNkpXWDUzU2pOOUovQ1BLZUVuTldGeGFDQ1dJQWJjUXNraDdjNjVQRWgw?=
 =?utf-8?B?dWVPL3BLZFNXYnZPbkhWTHFPZ2h2SEY4a1hIS2wzTWNrTUo0V2xHMUdNbUg1?=
 =?utf-8?B?ZFg4YmQ1cFNqUnZ4eDZrbU9xY1h6b1ZaVXV3TlBZVCtya3F6OC84YkppSzA4?=
 =?utf-8?B?TVcrWWJucGR2QUhyTHh1K0NyTk0wTEVpUGtBalJiODllelM2VjNTcDA2bDBn?=
 =?utf-8?B?Q1pxZlZ0K2ViZUZsaWQ5OW5HVEhybHp0U0d1SmlsUG03SmxFdE4xSHk5MVA0?=
 =?utf-8?B?aEtEL3o1V0d1eUU2QUVITEtHbVZaMlhUdjI4WjVJbVZ3WDlaSjl3UENYK25j?=
 =?utf-8?B?cy9obzdwMmRGdndLcFhmRE9PZUtCdTBrTXh1YS9YUTJEZHFucnFzVXFJclhx?=
 =?utf-8?B?a0tPbHU4S09vell0Q3ZnOVlqck95SW0vVWtpVEtJdWFiT2h0RE9mZk9wTDc4?=
 =?utf-8?B?SEFBVWx0MnBSR3BpRUFQbWFQaG1KbnplOFNZS01yYXFEekNkVjR5L3I0WVRR?=
 =?utf-8?B?dWVTSUhYaWc3UDBFMFN0SHF0ZTVGYnRrWElSSWNTd05zSHlRR2hxZTNrRkVi?=
 =?utf-8?B?YXk0ZDVPYUYzVSs3MkZ6L253L3VTMEJ6UExXOG9uNnVscEw4UGFUbVhybnBL?=
 =?utf-8?B?ekRGVDlKcVNaTGp0SVU0cjZLU1Rqc2Q2NXN3TXkwTitxUElRU2hTN1g4SUl2?=
 =?utf-8?B?cEc0WS96MVBmaE5nbDlLSkduWEZ1eFdrdnIzZmNWK04yNldYd3doQkNTM3dQ?=
 =?utf-8?B?Zmc5blJUeCszYzRIVEdoRHlndVV3N20veGxIaUpWYVJyV1VmQ2RmYUtRZ3BV?=
 =?utf-8?B?UlR3SEsvaldtY3NCcUpRbk45and3N1JkL2Q2MHhubDlxbnh4V29tZ1JHWk0z?=
 =?utf-8?B?R2ZDZDMrZTk5MjBkSWs4dkM3bGtRUytyZTlTWUROSjJJRUtkU0RMdDAwTi9L?=
 =?utf-8?B?eWlhaGFYSlRXVXhaMmVyalZ4b2hhaVpsc1V4ZTRuTlIwNFdZWlZYS0M1MFBX?=
 =?utf-8?B?cUx0QVpuNG1jUkdUR2xpRW9tN3NRT2JxcUxENFpMaWRUam9UL3VQVDZONmYv?=
 =?utf-8?B?bkpMRUU4dVJjVzlRNDRNVXFoK1VZUy9UenNEVzk0L080NnREY1JDZmZ3T0NO?=
 =?utf-8?B?dXBMa1MvZEY0THdYUFNHYjhjUGNGbnBvTTJmWmhSWElpRmVRMzR4OXo5YlZn?=
 =?utf-8?B?akJqUGdUd0l2OFRuNXRmejdSQnJtTHNZWTdRU2JITnJ1Z3RvUksvdGlMamZx?=
 =?utf-8?B?N2hjK0M0NzY4enlaVmQrblpiTi9LYVZUdVAxM1M4T1NkV05WR0xDRUdxVFBN?=
 =?utf-8?B?ZFhkd05LazJTR0xLZWVvSXpPajFZUUE5VkYyNkVkS3VxamhTYmovWkk3UkpQ?=
 =?utf-8?B?akM4dkpHT1BmVWZGeE4zTDJvQnlEcm1HWGxFaG5kSDRvWXNMbVhzTnUveFZI?=
 =?utf-8?B?ckxycGZSako5VVNPN29EaWFVUFBVM0JudTVaT3UxUk9YYXVuVFdxUmVBQ0dT?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fb38cc1f-098f-477c-dde7-08db3c21e111
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 13:20:41.5078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: InLNanxBP8cee6YboOZrT82v2RAH0o0LUUchlHUyrBTJbkqjGpvAv3hrkCDAPEgBdu60inCEhX6N93ArJ7+iZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6545
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915/display: move modeset
 probe/remove functions to intel_display_driver.c
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

Quoting Jani Nikula (2023-04-13 06:47:31)
> High level display functionality only called from driver top level code.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 373 +----------------
>  drivers/gpu/drm/i915/display/intel_display.h  |  23 +-
>  .../drm/i915/display/intel_display_driver.c   | 374 ++++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |   7 +
>  4 files changed, 408 insertions(+), 369 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index dfec17bb3a7a..56e3aab7e1c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -54,7 +54,6 @@
>  #include "i9xx_plane.h"
>  #include "i9xx_wm.h"
>  #include "icl_dsi.h"
> -#include "intel_acpi.h"
>  #include "intel_atomic.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_audio.h"
> @@ -67,6 +66,7 @@
>  #include "intel_crtc_state_dump.h"
>  #include "intel_ddi.h"
>  #include "intel_de.h"
> +#include "intel_display_driver.h"
>  #include "intel_display_power.h"
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
> @@ -86,11 +86,8 @@
>  #include "intel_fdi.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_frontbuffer.h"
> -#include "intel_gmbus.h"
> -#include "intel_hdcp.h"
>  #include "intel_hdmi.h"
>  #include "intel_hotplug.h"
> -#include "intel_hti.h"
>  #include "intel_lvds.h"
>  #include "intel_lvds_regs.h"
>  #include "intel_modeset_setup.h"
> @@ -104,7 +101,6 @@
>  #include "intel_plane_initial.h"
>  #include "intel_pps.h"
>  #include "intel_psr.h"
> -#include "intel_quirks.h"
>  #include "intel_sdvo.h"
>  #include "intel_snps_phy.h"
>  #include "intel_tc.h"
> @@ -174,7 +170,7 @@ int vlv_get_cck_clock_hpll(struct drm_i915_private *d=
ev_priv,
>         return hpll;
>  }
> =20
> -static void intel_update_czclk(struct drm_i915_private *dev_priv)
> +void intel_update_czclk(struct drm_i915_private *dev_priv)
>  {
>         if (!(IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)))
>                 return;
> @@ -2582,7 +2578,7 @@ intel_link_compute_m_n(u16 bits_per_pixel, int nlan=
es,
>                     0x80000);
>  }
> =20
> -static void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
> +void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
>  {
>         /*
>          * There may be no VBT; and if the BIOS enabled SSC we can
> @@ -7225,7 +7221,7 @@ static void intel_atomic_helper_free_state(struct d=
rm_i915_private *dev_priv)
>                 drm_atomic_state_put(&state->base);
>  }
> =20
> -static void intel_atomic_helper_free_state_worker(struct work_struct *wo=
rk)
> +void intel_atomic_helper_free_state_worker(struct work_struct *work)
>  {
>         struct drm_i915_private *dev_priv =3D
>                 container_of(work, typeof(*dev_priv), display.atomic_help=
er.free_work);
> @@ -7573,9 +7569,8 @@ static void intel_atomic_track_fbs(struct intel_ato=
mic_state *state)
>                                         plane->frontbuffer_bit);
>  }
> =20
> -static int intel_atomic_commit(struct drm_device *dev,
> -                         struct drm_atomic_state *_state,
> -                         bool nonblock)
> +int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state =
*_state,
> +                  bool nonblock)
>  {
>         struct intel_atomic_state *state =3D to_intel_atomic_state(_state=
);
>         struct drm_i915_private *dev_priv =3D to_i915(dev);
> @@ -7677,19 +7672,6 @@ void intel_plane_destroy(struct drm_plane *plane)
>         kfree(to_intel_plane(plane));
>  }
> =20
> -static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev=
_priv)
> -{
> -  struct intel_plane *plane;
> -
> -  for_each_intel_plane(&dev_priv->drm, plane) {
> -          struct intel_crtc *crtc =3D intel_crtc_for_pipe(dev_priv,
> -                                                        plane->pipe);
> -
> -          plane->base.possible_crtcs =3D drm_crtc_mask(&crtc->base);
> -  }
> -}
> -
> -
>  int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data=
,
>                                       struct drm_file *file)
>  {
> @@ -7769,7 +7751,7 @@ static bool intel_ddi_crt_present(struct drm_i915_p=
rivate *dev_priv)
>         return true;
>  }
> =20
> -static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> +void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  {
>         struct intel_encoder *encoder;
>         bool dpd_is_edp =3D false;
> @@ -8021,9 +8003,8 @@ static int max_dotclock(struct drm_i915_private *i9=
15)
>         return max_dotclock;
>  }
> =20
> -static enum drm_mode_status
> -intel_mode_valid(struct drm_device *dev,
> -           const struct drm_display_mode *mode)
> +enum drm_mode_status intel_mode_valid(struct drm_device *dev,
> +                                const struct drm_display_mode *mode)
>  {
>         struct drm_i915_private *dev_priv =3D to_i915(dev);
>         int hdisplay_max, htotal_max;
> @@ -8163,18 +8144,6 @@ intel_mode_valid_max_plane_size(struct drm_i915_pr=
ivate *dev_priv,
>         return MODE_OK;
>  }
> =20
> -static const struct drm_mode_config_funcs intel_mode_funcs =3D {
> -  .fb_create =3D intel_user_framebuffer_create,
> -  .get_format_info =3D intel_fb_get_format_info,
> -  .output_poll_changed =3D intel_fbdev_output_poll_changed,
> -  .mode_valid =3D intel_mode_valid,
> -  .atomic_check =3D intel_atomic_check,
> -  .atomic_commit =3D intel_atomic_commit,
> -  .atomic_state_alloc =3D intel_atomic_state_alloc,
> -  .atomic_state_clear =3D intel_atomic_state_clear,
> -  .atomic_state_free =3D intel_atomic_state_free,
> -};
> -
>  static const struct intel_display_funcs skl_display_funcs =3D {
>         .get_pipe_config =3D hsw_get_pipe_config,
>         .crtc_enable =3D hsw_crtc_enable,
> @@ -8246,21 +8215,7 @@ void intel_init_display_hooks(struct drm_i915_priv=
ate *dev_priv)
>         intel_fdi_init_hook(dev_priv);
>  }
> =20
> -void intel_modeset_init_hw(struct drm_i915_private *i915)
> -{
> -  struct intel_cdclk_state *cdclk_state;
> -
> -  if (!HAS_DISPLAY(i915))
> -          return;
> -
> -  cdclk_state =3D to_intel_cdclk_state(i915->display.cdclk.obj.state);
> -
> -  intel_update_cdclk(i915);
> -  intel_cdclk_dump_config(i915, &i915->display.cdclk.hw, "Current CDCLK"=
);
> -  cdclk_state->logical =3D cdclk_state->actual =3D i915->display.cdclk.h=
w;
> -}
> -
> -static int intel_initial_commit(struct drm_device *dev)
> +int intel_initial_commit(struct drm_device *dev)
>  {
>         struct drm_atomic_state *state =3D NULL;
>         struct drm_modeset_acquire_ctx ctx;
> @@ -8339,246 +8294,6 @@ static int intel_initial_commit(struct drm_device=
 *dev)
>         return ret;
>  }
> =20
> -static const struct drm_mode_config_helper_funcs intel_mode_config_funcs=
 =3D {
> -  .atomic_commit_setup =3D drm_dp_mst_atomic_setup_commit,
> -};
> -
> -static void intel_mode_config_init(struct drm_i915_private *i915)
> -{
> -  struct drm_mode_config *mode_config =3D &i915->drm.mode_config;
> -
> -  drm_mode_config_init(&i915->drm);
> -  INIT_LIST_HEAD(&i915->display.global.obj_list);
> -
> -  mode_config->min_width =3D 0;
> -  mode_config->min_height =3D 0;
> -
> -  mode_config->preferred_depth =3D 24;
> -  mode_config->prefer_shadow =3D 1;
> -
> -  mode_config->funcs =3D &intel_mode_funcs;
> -  mode_config->helper_private =3D &intel_mode_config_funcs;
> -
> -  mode_config->async_page_flip =3D HAS_ASYNC_FLIPS(i915);
> -
> -  /*
> -   * Maximum framebuffer dimensions, chosen to match
> -   * the maximum render engine surface size on gen4+.
> -   */
> -  if (DISPLAY_VER(i915) >=3D 7) {
> -          mode_config->max_width =3D 16384;
> -          mode_config->max_height =3D 16384;
> -  } else if (DISPLAY_VER(i915) >=3D 4) {
> -          mode_config->max_width =3D 8192;
> -          mode_config->max_height =3D 8192;
> -  } else if (DISPLAY_VER(i915) =3D=3D 3) {
> -          mode_config->max_width =3D 4096;
> -          mode_config->max_height =3D 4096;
> -  } else {
> -          mode_config->max_width =3D 2048;
> -          mode_config->max_height =3D 2048;
> -  }
> -
> -  if (IS_I845G(i915) || IS_I865G(i915)) {
> -          mode_config->cursor_width =3D IS_I845G(i915) ? 64 : 512;
> -          mode_config->cursor_height =3D 1023;
> -  } else if (IS_I830(i915) || IS_I85X(i915) ||
> -             IS_I915G(i915) || IS_I915GM(i915)) {
> -          mode_config->cursor_width =3D 64;
> -          mode_config->cursor_height =3D 64;
> -  } else {
> -          mode_config->cursor_width =3D 256;
> -          mode_config->cursor_height =3D 256;
> -  }
> -}
> -
> -static void intel_mode_config_cleanup(struct drm_i915_private *i915)
> -{
> -  intel_atomic_global_obj_cleanup(i915);
> -  drm_mode_config_cleanup(&i915->drm);
> -}
> -
> -/* part #1: call before irq install */
> -int intel_modeset_init_noirq(struct drm_i915_private *i915)
> -{
> -  int ret;
> -
> -  if (i915_inject_probe_failure(i915))
> -          return -ENODEV;
> -
> -  if (HAS_DISPLAY(i915)) {
> -          ret =3D drm_vblank_init(&i915->drm,
> -                                INTEL_NUM_PIPES(i915));
> -          if (ret)
> -                  return ret;
> -  }
> -
> -  intel_bios_init(i915);
> -
> -  ret =3D intel_vga_register(i915);
> -  if (ret)
> -          goto cleanup_bios;
> -
> -  /* FIXME: completely on the wrong abstraction layer */
> -  ret =3D intel_power_domains_init(i915);
> -  if (ret < 0)
> -          goto cleanup_vga;
> -
> -  intel_power_domains_init_hw(i915, false);
> -
> -  if (!HAS_DISPLAY(i915))
> -          return 0;
> -
> -  intel_dmc_init(i915);
> -
> -  i915->display.wq.modeset =3D alloc_ordered_workqueue("i915_modeset", 0=
);
> -  i915->display.wq.flip =3D alloc_workqueue("i915_flip", WQ_HIGHPRI |
> -                                          WQ_UNBOUND, WQ_UNBOUND_MAX_ACT=
IVE);
> -
> -  intel_mode_config_init(i915);
> -
> -  ret =3D intel_cdclk_init(i915);
> -  if (ret)
> -          goto cleanup_vga_client_pw_domain_dmc;
> -
> -  ret =3D intel_color_init(i915);
> -  if (ret)
> -          goto cleanup_vga_client_pw_domain_dmc;
> -
> -  ret =3D intel_dbuf_init(i915);
> -  if (ret)
> -          goto cleanup_vga_client_pw_domain_dmc;
> -
> -  ret =3D intel_bw_init(i915);
> -  if (ret)
> -          goto cleanup_vga_client_pw_domain_dmc;
> -
> -  init_llist_head(&i915->display.atomic_helper.free_list);
> -  INIT_WORK(&i915->display.atomic_helper.free_work,
> -            intel_atomic_helper_free_state_worker);
> -
> -  intel_init_quirks(i915);
> -
> -  intel_fbc_init(i915);
> -
> -  return 0;
> -
> -cleanup_vga_client_pw_domain_dmc:
> -  intel_dmc_fini(i915);
> -  intel_power_domains_driver_remove(i915);
> -cleanup_vga:
> -  intel_vga_unregister(i915);
> -cleanup_bios:
> -  intel_bios_driver_remove(i915);
> -
> -  return ret;
> -}
> -
> -/* part #2: call after irq install, but before gem init */
> -int intel_modeset_init_nogem(struct drm_i915_private *i915)
> -{
> -  struct drm_device *dev =3D &i915->drm;
> -  enum pipe pipe;
> -  struct intel_crtc *crtc;
> -  int ret;
> -
> -  if (!HAS_DISPLAY(i915))
> -          return 0;
> -
> -  intel_wm_init(i915);
> -
> -  intel_panel_sanitize_ssc(i915);
> -
> -  intel_pps_setup(i915);
> -
> -  intel_gmbus_setup(i915);
> -
> -  drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
> -              INTEL_NUM_PIPES(i915),
> -              INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
> -
> -  for_each_pipe(i915, pipe) {
> -          ret =3D intel_crtc_init(i915, pipe);
> -          if (ret) {
> -                  intel_mode_config_cleanup(i915);
> -                  return ret;
> -          }
> -  }
> -
> -  intel_plane_possible_crtcs_init(i915);
> -  intel_shared_dpll_init(i915);
> -  intel_fdi_pll_freq_update(i915);
> -
> -  intel_update_czclk(i915);
> -  intel_modeset_init_hw(i915);
> -  intel_dpll_update_ref_clks(i915);
> -
> -  intel_hdcp_component_init(i915);
> -
> -  if (i915->display.cdclk.max_cdclk_freq =3D=3D 0)
> -          intel_update_max_cdclk(i915);
> -
> -  intel_hti_init(i915);
> -
> -  /* Just disable it once at startup */
> -  intel_vga_disable(i915);
> -  intel_setup_outputs(i915);
> -
> -  drm_modeset_lock_all(dev);
> -  intel_modeset_setup_hw_state(i915, dev->mode_config.acquire_ctx);
> -  intel_acpi_assign_connector_fwnodes(i915);
> -  drm_modeset_unlock_all(dev);
> -
> -  for_each_intel_crtc(dev, crtc) {
> -          if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
> -                  continue;
> -          intel_crtc_initial_plane_config(crtc);
> -  }
> -
> -  /*
> -   * Make sure hardware watermarks really match the state we read out.
> -   * Note that we need to do this after reconstructing the BIOS fb's
> -   * since the watermark calculation done here will use pstate->fb.
> -   */
> -  if (!HAS_GMCH(i915))
> -          ilk_wm_sanitize(i915);
> -
> -  return 0;
> -}
> -
> -/* part #3: call after gem init */
> -int intel_modeset_init(struct drm_i915_private *i915)
> -{
> -  int ret;
> -
> -  if (!HAS_DISPLAY(i915))
> -          return 0;
> -
> -  /*
> -   * Force all active planes to recompute their states. So that on
> -   * mode_setcrtc after probe, all the intel_plane_state variables
> -   * are already calculated and there is no assert_plane warnings
> -   * during bootup.
> -   */
> -  ret =3D intel_initial_commit(&i915->drm);
> -  if (ret)
> -          drm_dbg_kms(&i915->drm, "Initial modeset failed, %d\n", ret);
> -
> -  intel_overlay_setup(i915);
> -
> -  ret =3D intel_fbdev_init(&i915->drm);
> -  if (ret)
> -          return ret;
> -
> -  /* Only enable hotplug handling once the fbdev is fully set up. */
> -  intel_hpd_init(i915);
> -  intel_hpd_poll_disable(i915);
> -
> -  skl_watermark_ipc_init(i915);
> -
> -  return 0;
> -}
> -
>  void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  {
>         struct intel_crtc *crtc =3D intel_crtc_for_pipe(dev_priv, pipe);
> @@ -8724,7 +8439,7 @@ void intel_display_resume(struct drm_device *dev)
>                 drm_atomic_state_put(state);
>  }
> =20
> -static void intel_hpd_poll_fini(struct drm_i915_private *i915)
> +void intel_hpd_poll_fini(struct drm_i915_private *i915)
>  {
>         struct intel_connector *connector;
>         struct drm_connector_list_iter conn_iter;
> @@ -8742,72 +8457,6 @@ static void intel_hpd_poll_fini(struct drm_i915_pr=
ivate *i915)
>         drm_connector_list_iter_end(&conn_iter);
>  }
> =20
> -/* part #1: call before irq uninstall */
> -void intel_modeset_driver_remove(struct drm_i915_private *i915)
> -{
> -  if (!HAS_DISPLAY(i915))
> -          return;
> -
> -  flush_workqueue(i915->display.wq.flip);
> -  flush_workqueue(i915->display.wq.modeset);
> -
> -  flush_work(&i915->display.atomic_helper.free_work);
> -  drm_WARN_ON(&i915->drm, !llist_empty(&i915->display.atomic_helper.free=
_list));
> -
> -  /*
> -   * MST topology needs to be suspended so we don't have any calls to
> -   * fbdev after it's finalized. MST will be destroyed later as part of
> -   * drm_mode_config_cleanup()
> -   */
> -  intel_dp_mst_suspend(i915);
> -}
> -
> -/* part #2: call after irq uninstall */
> -void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
> -{
> -  if (!HAS_DISPLAY(i915))
> -          return;
> -
> -  /*
> -   * Due to the hpd irq storm handling the hotplug work can re-arm the
> -   * poll handlers. Hence disable polling after hpd handling is shut dow=
n.
> -   */
> -  intel_hpd_poll_fini(i915);
> -
> -  /* poll work can call into fbdev, hence clean that up afterwards */
> -  intel_fbdev_fini(i915);
> -
> -  intel_unregister_dsm_handler();
> -
> -  /* flush any delayed tasks or pending work */
> -  flush_scheduled_work();
> -
> -  intel_hdcp_component_fini(i915);
> -
> -  intel_mode_config_cleanup(i915);
> -
> -  intel_overlay_cleanup(i915);
> -
> -  intel_gmbus_teardown(i915);
> -
> -  destroy_workqueue(i915->display.wq.flip);
> -  destroy_workqueue(i915->display.wq.modeset);
> -
> -  intel_fbc_cleanup(i915);
> -}
> -
> -/* part #3: call after gem init */
> -void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
> -{
> -  intel_dmc_fini(i915);
> -
> -  intel_power_domains_driver_remove(i915);
> -
> -  intel_vga_unregister(i915);
> -
> -  intel_bios_driver_remove(i915);
> -}
> -
>  bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
>  {
>         return DISPLAY_VER(i915) >=3D 6 && i915_vtd_active(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 6ff8faa1b5ac..f82987fbc94a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -63,6 +63,7 @@ struct intel_power_domain_mask;
>  struct intel_remapped_info;
>  struct intel_rotation_info;
>  struct pci_dev;
> +struct work_struct;
> =20
> =20
>  #define pipe_name(p) ((p) + 'A')
> @@ -521,13 +522,6 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_st=
ate *crtc_state);
>  void intel_update_watermarks(struct drm_i915_private *i915);
> =20
>  /* modesetting */
> -void intel_modeset_init_hw(struct drm_i915_private *i915);
> -int intel_modeset_init_noirq(struct drm_i915_private *i915);
> -int intel_modeset_init_nogem(struct drm_i915_private *i915);
> -int intel_modeset_init(struct drm_i915_private *i915);
> -void intel_modeset_driver_remove(struct drm_i915_private *i915);
> -void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
> -void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
>  void intel_display_resume(struct drm_device *dev);
>  int intel_modeset_all_pipes(struct intel_atomic_state *state,
>                             const char *reason);
> @@ -536,6 +530,21 @@ void intel_modeset_get_crtc_power_domains(struct int=
el_crtc_state *crtc_state,
>  void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
>                                           struct intel_power_domain_mask =
*domains);
> =20
> +/* interface for intel_display_driver.c */
> +void intel_setup_outputs(struct drm_i915_private *i915);
> +void intel_sanitize_watermarks(struct drm_i915_private *i915);

I can't find the implementation for this one and it seems it is not being c=
alled
anywhere.

--
Gustavo Sousa

> +int intel_initial_commit(struct drm_device *dev);
> +void intel_panel_sanitize_ssc(struct drm_i915_private *i915);
> +void intel_update_czclk(struct drm_i915_private *i915);
> +void intel_atomic_helper_free_state_worker(struct work_struct *work);
> +enum drm_mode_status intel_mode_valid(struct drm_device *dev,
> +                                const struct drm_display_mode *mode);
> +int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state =
*_state,
> +                  bool nonblock);
> +int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *=
_state);
> +
> +void intel_hpd_poll_fini(struct drm_i915_private *i915);
> +
>  /* modesetting asserts */
>  void assert_transcoder(struct drm_i915_private *dev_priv,
>                        enum transcoder cpu_transcoder, bool state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 882a2586aba4..f7805c6f1b63 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -9,17 +9,47 @@
> =20
>  #include <linux/vga_switcheroo.h>
>  #include <acpi/video.h>
> +#include <drm/display/drm_dp_mst_helper.h>
>  #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_mode_config.h>
>  #include <drm/drm_privacy_screen_consumer.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_vblank.h>
> =20
>  #include "i915_drv.h"
> +#include "i9xx_wm.h"
>  #include "intel_acpi.h"
> +#include "intel_atomic.h"
>  #include "intel_audio.h"
> +#include "intel_bios.h"
> +#include "intel_bw.h"
> +#include "intel_cdclk.h"
> +#include "intel_color.h"
> +#include "intel_crtc.h"
>  #include "intel_display_debugfs.h"
>  #include "intel_display_driver.h"
> +#include "intel_display_power.h"
> +#include "intel_display_types.h"
> +#include "intel_dmc.h"
> +#include "intel_dp.h"
> +#include "intel_dpll_mgr.h"
> +#include "intel_fb.h"
> +#include "intel_fbc.h"
>  #include "intel_fbdev.h"
> +#include "intel_fdi.h"
> +#include "intel_gmbus.h"
> +#include "intel_hdcp.h"
> +#include "intel_hotplug.h"
> +#include "intel_hti.h"
> +#include "intel_modeset_setup.h"
>  #include "intel_opregion.h"
> +#include "intel_overlay.h"
> +#include "intel_plane_initial.h"
> +#include "intel_pps.h"
> +#include "intel_quirks.h"
> +#include "intel_vga.h"
> +#include "intel_wm.h"
> +#include "skl_watermark.h"
> =20
>  bool intel_display_driver_probe_defer(struct pci_dev *pdev)
>  {
> @@ -42,6 +72,284 @@ bool intel_display_driver_probe_defer(struct pci_dev =
*pdev)
>         return false;
>  }
> =20
> +void intel_modeset_init_hw(struct drm_i915_private *i915)
> +{
> +  struct intel_cdclk_state *cdclk_state;
> +
> +  if (!HAS_DISPLAY(i915))
> +          return;
> +
> +  cdclk_state =3D to_intel_cdclk_state(i915->display.cdclk.obj.state);
> +
> +  intel_update_cdclk(i915);
> +  intel_cdclk_dump_config(i915, &i915->display.cdclk.hw, "Current CDCLK"=
);
> +  cdclk_state->logical =3D cdclk_state->actual =3D i915->display.cdclk.h=
w;
> +}
> +
> +static const struct drm_mode_config_funcs intel_mode_funcs =3D {
> +  .fb_create =3D intel_user_framebuffer_create,
> +  .get_format_info =3D intel_fb_get_format_info,
> +  .output_poll_changed =3D intel_fbdev_output_poll_changed,
> +  .mode_valid =3D intel_mode_valid,
> +  .atomic_check =3D intel_atomic_check,
> +  .atomic_commit =3D intel_atomic_commit,
> +  .atomic_state_alloc =3D intel_atomic_state_alloc,
> +  .atomic_state_clear =3D intel_atomic_state_clear,
> +  .atomic_state_free =3D intel_atomic_state_free,
> +};
> +
> +static const struct drm_mode_config_helper_funcs intel_mode_config_funcs=
 =3D {
> +  .atomic_commit_setup =3D drm_dp_mst_atomic_setup_commit,
> +};
> +
> +static void intel_mode_config_init(struct drm_i915_private *i915)
> +{
> +  struct drm_mode_config *mode_config =3D &i915->drm.mode_config;
> +
> +  drm_mode_config_init(&i915->drm);
> +  INIT_LIST_HEAD(&i915->display.global.obj_list);
> +
> +  mode_config->min_width =3D 0;
> +  mode_config->min_height =3D 0;
> +
> +  mode_config->preferred_depth =3D 24;
> +  mode_config->prefer_shadow =3D 1;
> +
> +  mode_config->funcs =3D &intel_mode_funcs;
> +  mode_config->helper_private =3D &intel_mode_config_funcs;
> +
> +  mode_config->async_page_flip =3D HAS_ASYNC_FLIPS(i915);
> +
> +  /*
> +   * Maximum framebuffer dimensions, chosen to match
> +   * the maximum render engine surface size on gen4+.
> +   */
> +  if (DISPLAY_VER(i915) >=3D 7) {
> +          mode_config->max_width =3D 16384;
> +          mode_config->max_height =3D 16384;
> +  } else if (DISPLAY_VER(i915) >=3D 4) {
> +          mode_config->max_width =3D 8192;
> +          mode_config->max_height =3D 8192;
> +  } else if (DISPLAY_VER(i915) =3D=3D 3) {
> +          mode_config->max_width =3D 4096;
> +          mode_config->max_height =3D 4096;
> +  } else {
> +          mode_config->max_width =3D 2048;
> +          mode_config->max_height =3D 2048;
> +  }
> +
> +  if (IS_I845G(i915) || IS_I865G(i915)) {
> +          mode_config->cursor_width =3D IS_I845G(i915) ? 64 : 512;
> +          mode_config->cursor_height =3D 1023;
> +  } else if (IS_I830(i915) || IS_I85X(i915) ||
> +             IS_I915G(i915) || IS_I915GM(i915)) {
> +          mode_config->cursor_width =3D 64;
> +          mode_config->cursor_height =3D 64;
> +  } else {
> +          mode_config->cursor_width =3D 256;
> +          mode_config->cursor_height =3D 256;
> +  }
> +}
> +
> +static void intel_mode_config_cleanup(struct drm_i915_private *i915)
> +{
> +  intel_atomic_global_obj_cleanup(i915);
> +  drm_mode_config_cleanup(&i915->drm);
> +}
> +
> +static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev=
_priv)
> +{
> +  struct intel_plane *plane;
> +
> +  for_each_intel_plane(&dev_priv->drm, plane) {
> +          struct intel_crtc *crtc =3D intel_crtc_for_pipe(dev_priv,
> +                                                        plane->pipe);
> +
> +          plane->base.possible_crtcs =3D drm_crtc_mask(&crtc->base);
> +  }
> +}
> +
> +/* part #1: call before irq install */
> +int intel_modeset_init_noirq(struct drm_i915_private *i915)
> +{
> +  int ret;
> +
> +  if (i915_inject_probe_failure(i915))
> +          return -ENODEV;
> +
> +  if (HAS_DISPLAY(i915)) {
> +          ret =3D drm_vblank_init(&i915->drm,
> +                                INTEL_NUM_PIPES(i915));
> +          if (ret)
> +                  return ret;
> +  }
> +
> +  intel_bios_init(i915);
> +
> +  ret =3D intel_vga_register(i915);
> +  if (ret)
> +          goto cleanup_bios;
> +
> +  /* FIXME: completely on the wrong abstraction layer */
> +  ret =3D intel_power_domains_init(i915);
> +  if (ret < 0)
> +          goto cleanup_vga;
> +
> +  intel_power_domains_init_hw(i915, false);
> +
> +  if (!HAS_DISPLAY(i915))
> +          return 0;
> +
> +  intel_dmc_init(i915);
> +
> +  i915->display.wq.modeset =3D alloc_ordered_workqueue("i915_modeset", 0=
);
> +  i915->display.wq.flip =3D alloc_workqueue("i915_flip", WQ_HIGHPRI |
> +                                          WQ_UNBOUND, WQ_UNBOUND_MAX_ACT=
IVE);
> +
> +  intel_mode_config_init(i915);
> +
> +  ret =3D intel_cdclk_init(i915);
> +  if (ret)
> +          goto cleanup_vga_client_pw_domain_dmc;
> +
> +  ret =3D intel_color_init(i915);
> +  if (ret)
> +          goto cleanup_vga_client_pw_domain_dmc;
> +
> +  ret =3D intel_dbuf_init(i915);
> +  if (ret)
> +          goto cleanup_vga_client_pw_domain_dmc;
> +
> +  ret =3D intel_bw_init(i915);
> +  if (ret)
> +          goto cleanup_vga_client_pw_domain_dmc;
> +
> +  init_llist_head(&i915->display.atomic_helper.free_list);
> +  INIT_WORK(&i915->display.atomic_helper.free_work,
> +            intel_atomic_helper_free_state_worker);
> +
> +  intel_init_quirks(i915);
> +
> +  intel_fbc_init(i915);
> +
> +  return 0;
> +
> +cleanup_vga_client_pw_domain_dmc:
> +  intel_dmc_fini(i915);
> +  intel_power_domains_driver_remove(i915);
> +cleanup_vga:
> +  intel_vga_unregister(i915);
> +cleanup_bios:
> +  intel_bios_driver_remove(i915);
> +
> +  return ret;
> +}
> +
> +/* part #2: call after irq install, but before gem init */
> +int intel_modeset_init_nogem(struct drm_i915_private *i915)
> +{
> +  struct drm_device *dev =3D &i915->drm;
> +  enum pipe pipe;
> +  struct intel_crtc *crtc;
> +  int ret;
> +
> +  if (!HAS_DISPLAY(i915))
> +          return 0;
> +
> +  intel_wm_init(i915);
> +
> +  intel_panel_sanitize_ssc(i915);
> +
> +  intel_pps_setup(i915);
> +
> +  intel_gmbus_setup(i915);
> +
> +  drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
> +              INTEL_NUM_PIPES(i915),
> +              INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
> +
> +  for_each_pipe(i915, pipe) {
> +          ret =3D intel_crtc_init(i915, pipe);
> +          if (ret) {
> +                  intel_mode_config_cleanup(i915);
> +                  return ret;
> +          }
> +  }
> +
> +  intel_plane_possible_crtcs_init(i915);
> +  intel_shared_dpll_init(i915);
> +  intel_fdi_pll_freq_update(i915);
> +
> +  intel_update_czclk(i915);
> +  intel_modeset_init_hw(i915);
> +  intel_dpll_update_ref_clks(i915);
> +
> +  intel_hdcp_component_init(i915);
> +
> +  if (i915->display.cdclk.max_cdclk_freq =3D=3D 0)
> +          intel_update_max_cdclk(i915);
> +
> +  intel_hti_init(i915);
> +
> +  /* Just disable it once at startup */
> +  intel_vga_disable(i915);
> +  intel_setup_outputs(i915);
> +
> +  drm_modeset_lock_all(dev);
> +  intel_modeset_setup_hw_state(i915, dev->mode_config.acquire_ctx);
> +  intel_acpi_assign_connector_fwnodes(i915);
> +  drm_modeset_unlock_all(dev);
> +
> +  for_each_intel_crtc(dev, crtc) {
> +          if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
> +                  continue;
> +          intel_crtc_initial_plane_config(crtc);
> +  }
> +
> +  /*
> +   * Make sure hardware watermarks really match the state we read out.
> +   * Note that we need to do this after reconstructing the BIOS fb's
> +   * since the watermark calculation done here will use pstate->fb.
> +   */
> +  if (!HAS_GMCH(i915))
> +          ilk_wm_sanitize(i915);
> +
> +  return 0;
> +}
> +
> +/* part #3: call after gem init */
> +int intel_modeset_init(struct drm_i915_private *i915)
> +{
> +  int ret;
> +
> +  if (!HAS_DISPLAY(i915))
> +          return 0;
> +
> +  /*
> +   * Force all active planes to recompute their states. So that on
> +   * mode_setcrtc after probe, all the intel_plane_state variables
> +   * are already calculated and there is no assert_plane warnings
> +   * during bootup.
> +   */
> +  ret =3D intel_initial_commit(&i915->drm);
> +  if (ret)
> +          drm_dbg_kms(&i915->drm, "Initial modeset failed, %d\n", ret);
> +
> +  intel_overlay_setup(i915);
> +
> +  ret =3D intel_fbdev_init(&i915->drm);
> +  if (ret)
> +          return ret;
> +
> +  /* Only enable hotplug handling once the fbdev is fully set up. */
> +  intel_hpd_init(i915);
> +  intel_hpd_poll_disable(i915);
> +
> +  skl_watermark_ipc_init(i915);
> +
> +  return 0;
> +}
> +
>  void intel_display_driver_register(struct drm_i915_private *i915)
>  {
>         if (!HAS_DISPLAY(i915))
> @@ -73,6 +381,72 @@ void intel_display_driver_register(struct drm_i915_pr=
ivate *i915)
>         drm_kms_helper_poll_init(&i915->drm);
>  }
> =20
> +/* part #1: call before irq uninstall */
> +void intel_modeset_driver_remove(struct drm_i915_private *i915)
> +{
> +  if (!HAS_DISPLAY(i915))
> +          return;
> +
> +  flush_workqueue(i915->display.wq.flip);
> +  flush_workqueue(i915->display.wq.modeset);
> +
> +  flush_work(&i915->display.atomic_helper.free_work);
> +  drm_WARN_ON(&i915->drm, !llist_empty(&i915->display.atomic_helper.free=
_list));
> +
> +  /*
> +   * MST topology needs to be suspended so we don't have any calls to
> +   * fbdev after it's finalized. MST will be destroyed later as part of
> +   * drm_mode_config_cleanup()
> +   */
> +  intel_dp_mst_suspend(i915);
> +}
> +
> +/* part #2: call after irq uninstall */
> +void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
> +{
> +  if (!HAS_DISPLAY(i915))
> +          return;
> +
> +  /*
> +   * Due to the hpd irq storm handling the hotplug work can re-arm the
> +   * poll handlers. Hence disable polling after hpd handling is shut dow=
n.
> +   */
> +  intel_hpd_poll_fini(i915);
> +
> +  /* poll work can call into fbdev, hence clean that up afterwards */
> +  intel_fbdev_fini(i915);
> +
> +  intel_unregister_dsm_handler();
> +
> +  /* flush any delayed tasks or pending work */
> +  flush_scheduled_work();
> +
> +  intel_hdcp_component_fini(i915);
> +
> +  intel_mode_config_cleanup(i915);
> +
> +  intel_overlay_cleanup(i915);
> +
> +  intel_gmbus_teardown(i915);
> +
> +  destroy_workqueue(i915->display.wq.flip);
> +  destroy_workqueue(i915->display.wq.modeset);
> +
> +  intel_fbc_cleanup(i915);
> +}
> +
> +/* part #3: call after gem init */
> +void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
> +{
> +  intel_dmc_fini(i915);
> +
> +  intel_power_domains_driver_remove(i915);
> +
> +  intel_vga_unregister(i915);
> +
> +  intel_bios_driver_remove(i915);
> +}
> +
>  void intel_display_driver_unregister(struct drm_i915_private *i915)
>  {
>         if (!HAS_DISPLAY(i915))
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index 744117b04ed4..947b666575ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -12,7 +12,14 @@ struct drm_i915_private;
>  struct pci_dev;
> =20
>  bool intel_display_driver_probe_defer(struct pci_dev *pdev);
> +void intel_modeset_init_hw(struct drm_i915_private *i915);
> +int intel_modeset_init_noirq(struct drm_i915_private *i915);
> +int intel_modeset_init_nogem(struct drm_i915_private *i915);
> +int intel_modeset_init(struct drm_i915_private *i915);
>  void intel_display_driver_register(struct drm_i915_private *i915);
> +void intel_modeset_driver_remove(struct drm_i915_private *i915);
> +void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
> +void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);
> =20
>  #endif /* __INTEL_DISPLAY_DRIVER_H__ */
> --=20
> 2.39.2
>
