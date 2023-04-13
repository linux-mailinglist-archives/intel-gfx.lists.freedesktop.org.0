Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B84816E12DF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 18:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D71610EB9A;
	Thu, 13 Apr 2023 16:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7B9310EB9A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 16:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681404949; x=1712940949;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=QHe6/lrFU/5s9fc/2H3TEEcawNPhxYp4CzIfFyaK9og=;
 b=eIQm6134PEtmpBVgqyCWcGlWKsJazGJXlDZ+Jule/Gu0eMn9VEh2gCh7
 lQD999zz0jnhRRXn8cbODafIYvhu2VOHNrL1qee/+BsZ7KnQFaTykBjsf
 aghTLtVSSpqJCFY8XmyP4bXRsNpdsq0fj8Obiklx3O06Hf3DZseF6dxRx
 l5WKYq9BZ6ThL27EP+roruZrPCWTXwjUHcLzYaIS0d97TrHJRzF+CzcZu
 a3aC10WB/J2sEGbJEdBneDF0ILnbitfKL7p7cU79rBn5eTP6OXVsOGzom
 /FzVDkNkawOdApCHicIYi4uOMnpPkEK1KS7b6kfo1lz1z5OvCr34poqMg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="332983068"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="332983068"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="692039443"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="692039443"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 13 Apr 2023 09:55:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 09:55:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 09:55:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 09:55:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ai8ftfCsyqaMGXQs14X0l/4x8GpK3FE3sxcMxnkdR3Tva3pTcTvUjH0mIyZBbWMsMPCuPbuK925IX2cbXZDAMF0aWcQ8wTKUPSumUvxW69MErKI+/151LmyOdEO0vqnhT8//JJd5+rH8HzEScl22bnvKoI66VCnuVlis0ftwjs8e5oyxGNmqc6i/2TOcFB8MpVMGoFZOxrbqn2ZF2eoT2mtkVxUBJzQRisecCHevnOVAZi51Pjp4YlIdsSBK4TPYOaL6ccT+H7YO4szOGYo67jrp1/sR9NcWM/rnS5Ex9LWxSWn1yqmMTW8OCYdKIQm3k93aaRgMzLLN+GHYig/uBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TZUAnuFPTh8UPj0P53L/XIZ3/R0+t7qUsBty7vtzaRw=;
 b=BNk5jRKILWEclJ7R+8H9wxcSHwjdPplAKvGo6PD+xENzFY82pVARB5BflwHe/HM8DkyKVv0fOXD3x9zc+1K9I/u0BrSBhfnRJh6Fmqd2XoYZ+NSe1ggUTJWb1mpFw4GsPaUiBgO9trwLyrbsauS39P32CrKxpmccnAzzpgUfFFHY9urAn7BQtVr5zX3qjN7Rx2IgMsdhLRJmuy7tvkDV7ReGzDPmKoUGWBV/QKZuCjsccVxHC2jvlbg/VJewXU2ChDflifOI/x/0t5c3paUb4VGAJCO432hvnkVv6ZNF7mllIyoH7cAwASXIaORb7WjILznYvGSUFQWNPjm44A2ELA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CH3PR11MB8186.namprd11.prod.outlook.com (2603:10b6:610:15a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 16:55:40 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 16:55:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <6b73f3e8cbb286c9323057445afbcd81606af82e.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
 <6b73f3e8cbb286c9323057445afbcd81606af82e.1681379167.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 13 Apr 2023 13:55:35 -0300
Message-ID: <168140493531.4412.15751671420037605723@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR07CA0011.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::24) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CH3PR11MB8186:EE_
X-MS-Office365-Filtering-Correlation-Id: 09180b22-e731-4c8c-a869-08db3c3fe935
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FE0yV3ZH7Ns0wiMHqmOUYjAAm/QRSyRdv61fUmDvszw4QeLzhYpgPQB8RQrG7w5T2HZGqEnGX5WcmGWk3vwSf85E3+SCRMmxqWXS7/6uWMX69J/3gHMNmsxUvgmAcTOKxnkKWKZG3FBWpLWo0Fr9y77UaRuIYLi9slB4reAA0nFCT37EJadN/clRctAB9q+WZuE9Q9rwQrapvRnebrMses6MoftjzyTH7GPxGLDUL/CSzuL5T2sfoGILflYfKk2LzSeU36AaxZJRjHmM5JoCkWr7dRlw/NNxmDsPk3CuJu8vdGrYbVB2Hwl9Zhc08p7AI2C+Lc3hwlhv1PKcxQrwzzJ6HV56tXBQBJvnFjusd3p/xpGneuLPhPYbJEvWoLB6TlIw/FxgIBCbYMm+eSVwNIK4wtEMkvHnQbPlh2370VCZUWIUtKLBJluIpMW0gzTjprm4ykw94q8n+Z2y3a3sfezpCRpTVAR8vfIFVDl/VGJmPiRrIuo/S/uOUX+mRVSl21hQOFkuQM5QUi7RyMGlOxdDZw+Z28mlycXTZd1AvAWCabVy+dqngICic/4TM/nq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(136003)(396003)(346002)(376002)(39860400002)(366004)(451199021)(6666004)(6486002)(66476007)(66556008)(66946007)(4326008)(2906002)(44832011)(33716001)(86362001)(41300700001)(82960400001)(5660300002)(8676002)(8936002)(316002)(38100700002)(478600001)(9686003)(6512007)(6506007)(26005)(186003)(107886003)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SE5tN29TTG1CeU8yR3JzeHQ3dXI5SHhqZE5PZFhuZUNENWRTWklWQ1N1cmQ3?=
 =?utf-8?B?K3dMM2RjWFMzSjZRSkVOelRyeU8rRjIzaW5UWXhiWllmQXZGb1AzY3NSSVBI?=
 =?utf-8?B?M3phMEUzaUJBNDdMVjVWdFJpMTJ0Q1AzTjZyKzIzSnRJZnBIRGl5a0NtUC9n?=
 =?utf-8?B?d29lV1V1Z0I5TE82NmFuTStWWW5CR1B0V2xkNURGdlFrVHptOHh0Y3RGeDg5?=
 =?utf-8?B?cDRVbUt3bjNTVmczY2dEck9jbGlTWDlwOEhtaDgwM25JYlIvblZFUEgzWm9h?=
 =?utf-8?B?VDM4SERaekI4Q25nUmJKb29WSDhrL0dzZkpNK0IrR0dUU29FZWREOUd4dWha?=
 =?utf-8?B?dzBuZWNWRmVWNVNidENPWitXMnBkWXlyTFhCUzZMZkovbzhEcDJFeUcweUdK?=
 =?utf-8?B?SUFqRk9RSkhwbEsyaGNEMjJtY2xkSDRYenRTRzEyNy8zeE9TQWZUUENueGdI?=
 =?utf-8?B?OVd1ZHNhU3dxcTRYamRkU2MwTUJJMXRlWFJMdlNEeXVGd2Eyak5pUHBsNmds?=
 =?utf-8?B?cDIzZVpUYktKZG96STRFK01SUS9uaTRDMTNUb1FNamxJaU5xZE9hMDJQMEVa?=
 =?utf-8?B?QnRtSFVhNnlwWWo2Q3crbVQ2cWxaNUhxOERTYUk2Q1g0ekNzRnpEeXB6SlY3?=
 =?utf-8?B?aVA3QzNYTm16eDRrVjd0VjBLdlMvdlp0aHhNRVVpQi9zaGVqN3NRa2pQVXhw?=
 =?utf-8?B?L0prbFh3VFdVTFlOaGtjTDZVZ3R4d0dZdVN3UHpOcDY2amwyTGM4WEdva3dF?=
 =?utf-8?B?VTJQMTRwSlNwb0daeXk1VnRBa1dPWXFOQ0NiUldkaFVEY0RxTlhvM0tMdi9J?=
 =?utf-8?B?ZmhYSlZhWFpzaVVKcGI5NU5JZk4zVzJkbW9oTXl6WTc3bUF5Z3k2eEdjOEVZ?=
 =?utf-8?B?TWNZdTQ5YnAvVkxablhZdUJZTGRuRERyZmx2ZDBiTmVDRlRsQnpNZDgzQ2Rx?=
 =?utf-8?B?MU8yS0RGd21TZDNpYzIzQUpWQkwwVUtIdHBnR3hWUGNjT0VSTDJMTGRLVzBo?=
 =?utf-8?B?NVNCeUNhNTlqSVFYV3NqNjdQYmxMdzE4NXhLVm9CSFJucnVqOWhvVTBVT2gz?=
 =?utf-8?B?SjNjallsblJlSDg1WTg4UWxkRWFHTnYzU3dsSVR0aXArMUhYWTdQMjlUWnlr?=
 =?utf-8?B?OEZHOW5pbVZHTFJGOGZXbW1rZWdvVDNQUGcvSE53a2VNc3ByNnVHaHNpaWRL?=
 =?utf-8?B?T0RhbXBCZGN3Q3JsT2NYOVlaRU0vWXdQdGE5M25qVFBkZXdhdjEvTzZEYklC?=
 =?utf-8?B?OXRGdm5DazFTV1VyUmR3K0FRei9OSTN3eGRoc1BsWmlWZEJ6ZlB5Q3BpKzR4?=
 =?utf-8?B?WU84SW1pcmdGbTBwVWRBUzRhQlJuMTB6Z0hBSCtVNXFOOXllclQ2SVlsazRZ?=
 =?utf-8?B?alM4c0dZL1V6QjZSZTE2aUVYdEt6VWtldlhuV2I1ZXZDMmZyVTdheVF1Ti8z?=
 =?utf-8?B?dCtwVFU0ZTJ4Y2hFaG42SDdaWllBeDJ2MkEwWTRPWXRheU92Ni9VeDZiTFFz?=
 =?utf-8?B?Wlg0anRjTmpCVTJpaWg0OTBxNktzTlBrRm1oWFA1TjJkeXp3aDdOOUtqeVo4?=
 =?utf-8?B?ZGJrR1NSZlJWRlF2blVQRGlxb0NvdUtVenRpNjBTOW9tbnpGekdKNGJ4dDN2?=
 =?utf-8?B?R1RZYjJTeTVGQ2NRa0NzZEhnWlBFelpmYldmdWYwK1ZxUDQyUldmWEVuNE80?=
 =?utf-8?B?VmNOVHNDajdpbWc2TEpzV3o2Z0p5VjJ0TW42ZTQ3MXRyc3d4UnBDQWRLTUkw?=
 =?utf-8?B?b3BLcmErWFNnNGtaQkhJK1RyN2lIY09WMkxUYXV4U3ZGc0VET0xaOW5iT2oy?=
 =?utf-8?B?Sm9lK1Q1ZEV1TEdFR2tCS2pyQU9neWpZb1MzVFNmcUthLy81WDdWSkswUG9M?=
 =?utf-8?B?YXlFalhrdFRUcWZNL0Q5bmJUODBNbzdycDZSRVpCK293WDFMMEhNU1llNEVN?=
 =?utf-8?B?L1VaYjRIZ1ZKYW5kdHVRSk8welNvNmZBMmtYOXhOaHQzUENkc2lzb24wRm84?=
 =?utf-8?B?VThZQUdyb2M4Z2xHc2R2STRVazdyTm1ORVpVSWVSNDYvYWdFS1gxbjBObEVV?=
 =?utf-8?B?RngyL0x6NUhFUkZXdDR2dnAyTGVDK241SHJpOTZGNEIybUFYU0IzNXNZb2xH?=
 =?utf-8?B?UldmdDJrRy91OUtidU9lRFJGajJTN0greW5pQTFuOTY4RW83NFBvOUVkMlkw?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 09180b22-e731-4c8c-a869-08db3c3fe935
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 16:55:40.0269 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SbOpub15Z44k5H6RnaJ4rPYXf0WxY6tymKF2iFoc+CSt4H31CX3Ei9SJ2bCGRSq8b7/Es31lZYViy1MvlTVOHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8186
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/display: start high level
 display driver file
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

Quoting Jani Nikula (2023-04-13 06:47:28)
> The only way to truly clean up intel_display.[ch] is to move stuff out
> of them until there's absolutely nothing left.
>=20
> Start moving the high level display driver entry points, i.e. functions
> called from top level driver code only, to a new file, which we'll call
> intel_display_driver.c. The intention is that there's no low-level
> display code or details here. This is an in-between layer.
>=20
> Initially, move intel_display_driver_register() and
> intel_display_driver_unregister() there.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 53 --------------
>  drivers/gpu/drm/i915/display/intel_display.h  |  3 -
>  .../drm/i915/display/intel_display_driver.c   | 71 +++++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   | 15 ++++
>  drivers/gpu/drm/i915/i915_driver.c            |  1 +
>  6 files changed, 88 insertions(+), 56 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_driver.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_driver.h
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index 97b0d4ae221a..91f0c214ef28 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -237,6 +237,7 @@ i915-y +=3D \
>         display/intel_crtc_state_dump.o \
>         display/intel_cursor.o \
>         display/intel_display.o \
> +  display/intel_display_driver.o \
>         display/intel_display_power.o \
>         display/intel_display_power_map.o \
>         display/intel_display_power_well.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1c0149adcf49..7c66b9ce0db5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -32,7 +32,6 @@
>  #include <linux/slab.h>
>  #include <linux/string_helpers.h>
>  #include <linux/vga_switcheroo.h>
> -#include <acpi/video.h>
> =20
>  #include <drm/display/drm_dp_helper.h>
>  #include <drm/drm_atomic.h>
> @@ -70,7 +69,6 @@
>  #include "intel_crtc_state_dump.h"
>  #include "intel_ddi.h"
>  #include "intel_de.h"
> -#include "intel_display_debugfs.h"
>  #include "intel_display_power.h"
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
> @@ -8833,57 +8831,6 @@ bool intel_modeset_probe_defer(struct pci_dev *pde=
v)
>         return false;
>  }
> =20
> -void intel_display_driver_register(struct drm_i915_private *i915)
> -{
> -  if (!HAS_DISPLAY(i915))
> -          return;
> -
> -  /* Must be done after probing outputs */
> -  intel_opregion_register(i915);
> -  intel_acpi_video_register(i915);
> -
> -  intel_audio_init(i915);
> -
> -  intel_display_debugfs_register(i915);
> -
> -  /*
> -   * Some ports require correctly set-up hpd registers for
> -   * detection to work properly (leading to ghost connected
> -   * connector status), e.g. VGA on gm45.  Hence we can only set
> -   * up the initial fbdev config after hpd irqs are fully
> -   * enabled. We do it last so that the async config cannot run
> -   * before the connectors are registered.
> -   */
> -  intel_fbdev_initial_config_async(i915);
> -
> -  /*
> -   * We need to coordinate the hotplugs with the asynchronous
> -   * fbdev configuration, for which we use the
> -   * fbdev->async_cookie.
> -   */
> -  drm_kms_helper_poll_init(&i915->drm);
> -}
> -
> -void intel_display_driver_unregister(struct drm_i915_private *i915)
> -{
> -  if (!HAS_DISPLAY(i915))
> -          return;
> -
> -  intel_fbdev_unregister(i915);
> -  intel_audio_deinit(i915);
> -
> -  /*
> -   * After flushing the fbdev (incl. a late async config which
> -   * will have delayed queuing of a hotplug event), then flush
> -   * the hotplug events.
> -   */
> -  drm_kms_helper_poll_fini(&i915->drm);
> -  drm_atomic_helper_shutdown(&i915->drm);
> -
> -  acpi_video_unregister();
> -  intel_opregion_unregister(i915);
> -}
> -
>  bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
>  {
>         return DISPLAY_VER(i915) >=3D 6 && i915_vtd_active(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 287159bdeb0d..e46732d26b7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -518,9 +518,6 @@ void intel_set_plane_visible(struct intel_crtc_state =
*crtc_state,
>                              bool visible);
>  void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
> =20
> -void intel_display_driver_register(struct drm_i915_private *i915);
> -void intel_display_driver_unregister(struct drm_i915_private *i915);
> -
>  void intel_update_watermarks(struct drm_i915_private *i915);
> =20
>  /* modesetting */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> new file mode 100644
> index 000000000000..d4a1893e9218
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -0,0 +1,71 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2022-2023 Intel Corporation
> + *
> + * High level display driver entry points. This is a layer between top l=
evel
> + * driver code and low level display functionality; no low level display=
 code or
> + * details here.
> + */
> +
> +#include <acpi/video.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_probe_helper.h>
> +
> +#include "i915_drv.h"
> +#include "intel_acpi.h"
> +#include "intel_audio.h"
> +#include "intel_display_debugfs.h"
> +#include "intel_display_driver.h"
> +#include "intel_fbdev.h"
> +#include "intel_opregion.h"
> +
> +void intel_display_driver_register(struct drm_i915_private *i915)
> +{
> +  if (!HAS_DISPLAY(i915))
> +          return;
> +
> +  /* Must be done after probing outputs */
> +  intel_opregion_register(i915);
> +  intel_acpi_video_register(i915);
> +
> +  intel_audio_init(i915);
> +
> +  intel_display_debugfs_register(i915);
> +
> +  /*
> +   * Some ports require correctly set-up hpd registers for
> +   * detection to work properly (leading to ghost connected
> +   * connector status), e.g. VGA on gm45.  Hence we can only set
> +   * up the initial fbdev config after hpd irqs are fully
> +   * enabled. We do it last so that the async config cannot run
> +   * before the connectors are registered.
> +   */
> +  intel_fbdev_initial_config_async(i915);
> +
> +  /*
> +   * We need to coordinate the hotplugs with the asynchronous
> +   * fbdev configuration, for which we use the
> +   * fbdev->async_cookie.
> +   */
> +  drm_kms_helper_poll_init(&i915->drm);
> +}
> +
> +void intel_display_driver_unregister(struct drm_i915_private *i915)
> +{
> +  if (!HAS_DISPLAY(i915))
> +          return;
> +
> +  intel_fbdev_unregister(i915);
> +  intel_audio_deinit(i915);
> +
> +  /*
> +   * After flushing the fbdev (incl. a late async config which
> +   * will have delayed queuing of a hotplug event), then flush
> +   * the hotplug events.
> +   */
> +  drm_kms_helper_poll_fini(&i915->drm);
> +  drm_atomic_helper_shutdown(&i915->drm);
> +
> +  acpi_video_unregister();
> +  intel_opregion_unregister(i915);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> new file mode 100644
> index 000000000000..4f6deef5a23f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2022-2023 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DISPLAY_DRIVER_H__
> +#define __INTEL_DISPLAY_DRIVER_H__
> +
> +struct drm_i915_private;
> +
> +void intel_display_driver_register(struct drm_i915_private *i915);
> +void intel_display_driver_unregister(struct drm_i915_private *i915);
> +
> +#endif /* __INTEL_DISPLAY_DRIVER_H__ */
> +
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 93fdc40d724f..5ccb24498cbf 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -48,6 +48,7 @@
>  #include "display/intel_acpi.h"
>  #include "display/intel_bw.h"
>  #include "display/intel_cdclk.h"
> +#include "display/intel_display_driver.h"
>  #include "display/intel_display_types.h"
>  #include "display/intel_dmc.h"
>  #include "display/intel_dp.h"
> --=20
> 2.39.2
>
