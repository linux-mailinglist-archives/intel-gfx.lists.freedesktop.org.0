Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF12F59868D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 16:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFBEB973C;
	Thu, 18 Aug 2022 14:59:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B0D1B64D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 14:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660834731; x=1692370731;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=YY1tVw5i+ok8bMrK8eI91ImY8vaRvUUQXK1bFK4HfVM=;
 b=XicqHjwlMDaDhIzzriCkpAeqtofWROq5WFp3Aof5OxFnWJKGXgrXk6Jv
 YLEMhFajoquv/JZWhQho2Zk7PHmalHDRgPRBR7ZCCauyJCJtP2AJMbjTs
 X6TIfHhm6ALi1YZN2XBqWKxyeamxhqfFxJi+h0uROKmGOSIWg+xsdfJrD
 0/aeXk9emjiBcDCVli6c8QwcuwdR3Vkz+a0XDMIDrUY/4Hnvk3fNsn7Z0
 xK0BJI2/SPp6Y92wJwzL6kX2EE/o0x8IRsOOZFYtfztwJisWw9Mc+KY4o
 WnFxIlJ7JBfU2UyJ9QBEosX63okriCAo+WNIJNbjwMnqr6Y2g9qDjdEyf A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="290343194"
X-IronPort-AV: E=Sophos;i="5.93,246,1654585200"; d="scan'208";a="290343194"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 07:58:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,246,1654585200"; d="scan'208";a="668138398"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 18 Aug 2022 07:58:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 18 Aug 2022 07:58:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 18 Aug 2022 07:58:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 18 Aug 2022 07:58:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=clw6G6kVe29tfkVYqkjAAp+WHthJwDpaz8GE9oVriKCKdLNCgfVg2QxzZbGCvOPxprjWb4Ln/zqYhIXaOTnpymBF6uk3UVqjuSLqEuDGkqLMhVOq9Gii8mrznTIYDctGpSLNNE2X2AWGhLH7YCFm8YgJOhg9JpqI6nrMqFRCE1YBY/+IwegB6RLbTihEwVaH9n9kE4StpUh9192JdyM8p/bwkCI5vJKplG1sKhxPweR+Cm3EhosPFCr2vLaWZNwFm8tEuO24rTBRsbyHD5/+TtFCJsJu3Qj1rNJPozUBy4cf6pvvzMbEdUfAz1o5FgFEt8YpU/NhfwSNqnxzq5Tq0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RGbAp6fxkNyTQoGvvsAf4Tub7f6LH3AJQJBAD4sAMdE=;
 b=h69AynONILPhDU3rJTfhzPVSzw8U0Hz2PWejMUYahDTepM9Sje+itdDDOsr5oxUnsJ6/W7YawPCWRLI7t8Fyh/2IDnLeru9KAMQTxTL7r97mkX3nolq/qETam0WCV7dK91erL9Bs/e5UTvWkjI9F6YWBsYAVu3gI9Q8pqJ9ooTtlMabdySTXsD4xWy9kg74tGn5HFy1/IOyj/C/zd+uMs5johmHXY7w4V4LsLGeHbIen27EJgol/lTrkqIOjRF6M4q9F89ZxGxX4jOgPJY80mr+PuPiFIlZRkESwf+M9NyVL/1El3yYyOkoGKr4YgeUHMc8zEm5LPedkLhJZ8N4kxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 CY4PR1101MB2182.namprd11.prod.outlook.com (2603:10b6:910:1e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.19; Thu, 18 Aug
 2022 14:58:47 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::46f:6936:6441:5a7a]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::46f:6936:6441:5a7a%8]) with mapi id 15.20.5546.016; Thu, 18 Aug 2022
 14:58:47 +0000
Date: Thu, 18 Aug 2022 20:28:37 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <Yv5Tna2Aap/lZOTg@bala-ubuntu>
References: <20220728013420.3750388-2-radhakrishna.sripada@intel.com>
 <20220728034609.3888825-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20220728034609.3888825-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: PN3PR01CA0090.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::9) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d8138f8f-4d38-4bb5-f8ec-08da812a274c
X-MS-TrafficTypeDiagnostic: CY4PR1101MB2182:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H7da3tDs3yGAlG0BIAnXFrgi5juU7/EdwnGVa9gcGpFreOHFv2Q+RoESUbk7A4rOdPhNMDLg6uM3vY5FIr6r+ED5zgsDclmXXfw9KcHkfxE1j5T5fv1xWdN9ejgmYLYDReKZ0Xy/Eealbym4wUUljKH2G3C1ohKU2J6C6i7jsOVwJ6gSv1uz6ZFZkLg3xSH/n6J6SYk0PViCzdnL991Fw7k9H0a6KZCb59h0vtwiE05n2InehpMayT3hfYNoPCneyfMYpVeQYfetzRidqlIPbxlxXh4Y8XM4DjnmS+MPPo/53gOXWE0eA7DBhEqIX/VdxO4dy0ITT+z9iWwzDR1KLa21WwFgjpkofSFZy8JHNNfOR4/SERxfaAPGWk3H1zomiwtyQruZE2SLJD5zJ6omwESygl2n3S8TKL5K1GYh6ICWv/lABgUlcLQYyrFVYAoFWDIcHchn4LJ6UiXyOmSfo5qsnE+kHAU70k40HdgGxgUHx7FcAWWZzvDroepnHDnr41U8UHRdj4AlnMcAcRx0LIIb8PaCWE0OoeeHfIUE1ZUGr7gZI92yx2FPx0/7UO4s9Tz2XRD5OpT31y52CJykHvubD84iVDaRumyUodSlyqoumEQCpJLRAoFgcgzUtXi1XlgepyAwnm3g9cXU79qC1/4YimtXb89rDK691PJqkdqAbKn251CCfB28/ZPu2CHj2l6cVJZEO4Up5FXXTbC3hg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(346002)(136003)(366004)(376002)(396003)(39860400002)(186003)(83380400001)(5660300002)(8936002)(44832011)(41300700001)(8676002)(66946007)(33716001)(2906002)(38100700002)(82960400001)(6486002)(53546011)(6512007)(6506007)(6666004)(9686003)(316002)(26005)(86362001)(66476007)(66556008)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmE2anlkOGI5SThSdDlQeWFwaEUvVjljWUdkRUR1OVFpNkhoWXRFWitwMmtC?=
 =?utf-8?B?dkdLWDh3dTJpTDRKaWRlWUp0elFLVkVidUQ2QzB1cGJYSm5qWktyeFFrcjR2?=
 =?utf-8?B?bzVZNWVXSWhOTVFyNGhuUjNpVEhvZ01idUp1cmhqcU84dUZBYWRiMFBSbGpD?=
 =?utf-8?B?VTVKak1XWWR0S2w0eENYOWcyLzBkKzVlK0djcWlCQ21kRjZkMnhlaW9jRTZB?=
 =?utf-8?B?ODJPUU4wUitkbnBlai9sb0sxak8xaWs0bk1NYjBhQzY4SHUvanJId0N2cUIz?=
 =?utf-8?B?NU9na0xuL1ErendMWnBZOGU4ejloRkM4d2IwMFZTS2tQZTBqQm90SHhKNXhn?=
 =?utf-8?B?Z2lUZ3FQcXZLUFQydEM1YTRWbTNYb2R3RVpzUXkydGVFaWJNVVNpMkc0UEcw?=
 =?utf-8?B?elI0R2F2MFlRR2swdkYrOWFEd2YzYnFZTy9UY2dsbXdwbXc3VnozNlBxZXky?=
 =?utf-8?B?cUtkZjZIVTl6RkpoUSs0Ty8yYjEvYlJ2MWhWVi9ER09mRnBnL3JDaTBHTjIr?=
 =?utf-8?B?d1VBT2VaNU1wT3lEM3BZbDV4ZWhZTHo3S0ZSVldWOWJQSU1JT3pjMGM4M1Q5?=
 =?utf-8?B?M3hjYnlTcm1uYlZVbkhJMXRBRUZuL25MeS93bFE2Q1RGTWs0aEtJOXp3dWs1?=
 =?utf-8?B?WkNJWmVJSCtFNEtjMmQ0MmFNaTB2UnlmbnNGTXZVWmMydWNlY1lnZWJ1NFdP?=
 =?utf-8?B?V2pwYmhvZWl1alk3b2p5UmJDTHhwaVNMMGw1cHllV0xUMGdyQjNhNDRXWHJy?=
 =?utf-8?B?Qk5oRlhrQlFkZ2J4Z3dTTnF0cUpOYzA2QU1QQmxTbDl5RXcrajRBSnpObXZD?=
 =?utf-8?B?cUE3d284Y3Qra0dJazBiNm80TTRFeGgwUGszbDRnVHQ2VU4xZm93N28yL3E5?=
 =?utf-8?B?UXFnV1h3cnJWdXBRS2d1QmQzOWJMNXN6NzFHZytMbFBMdms0QVJ4WkF3akU1?=
 =?utf-8?B?WHZaZnFCdFFvQmpYQUZKOFkzMjlOQXhJVWhSUTV6T09jSTVrakViSlhRbzZ5?=
 =?utf-8?B?M1pZNEZWNFFvc0VCM1h4dzdOTS9hcGVueFhud3ZyUXRVL2QyZjVBb1pzL0wz?=
 =?utf-8?B?bStOVmh1YUV0QzBFVVdScjlRak8ybUhQZlhTZUs0TWFBWkQ0eXFVaEZobXdp?=
 =?utf-8?B?WFQ5TGhtd0l4REJyc1VXR0FVQm82ZlFjNExpdzZDV2pQVHpxZHA2eXovYnVM?=
 =?utf-8?B?dHpXM24vVW5JaGZzSVNDZ29TdnFiWkVDK3R1bEtkMUhtVFl2aDlUR3M3eGdx?=
 =?utf-8?B?dmx4MnlTTHlrdHNSblZmcE53elNlVWluM0EwWmkwMTFmTHhpSmVNMzJ5bDBs?=
 =?utf-8?B?ekZEU1ZmOVJSTS9rYXhMSVJFYWkxYVl2TkE5QzBHTHNJU0NFdjZGYUZnczVv?=
 =?utf-8?B?aGJVdkN5MThkVi9zVVRrR243dlhaZ3BXYiswNDRzdVV0VDkzRTVuSG5raSsw?=
 =?utf-8?B?RlY0V0JwNFBWSlQ3U2hqZ0RIQys5N0JVRDR4ZnBPUlpZWDJIT1NKQ1JvUVZX?=
 =?utf-8?B?dVVUWjFnTGU4R0dBUzJjSDU5SnVvWHVQeEdya05ucmw4UmJIaTYzTURZOUkz?=
 =?utf-8?B?OEp4Q3FucmlCcTYyaTNxdnVFbWZKN21PL1VzNDhCblVtdW1uUmhMZTVVTnpR?=
 =?utf-8?B?ZG1kR3FBNnFvNGdGclNua0pQaXBHODIrNSs4NGVDa0E1TXRnR3ErUnUySVRK?=
 =?utf-8?B?Q2o5VStYNnFTclFqWWhteDViMkQ0K0RRblQxK0ZtcjlFbUw0dGVJcnFvTUxn?=
 =?utf-8?B?RndkY2JFWlBxM3JDVzVIbUFiTWp6MVdvUUNUY3ZXZGFqUEJ1ZUpqcjB6dDNk?=
 =?utf-8?B?TSs1S2NLNHArV3o0YmVZRnVnWWFxN0lYblo0Yk9GTFRMaEFnOVZrWVVPQ3R3?=
 =?utf-8?B?SEVGUlM0eTNBRy9saDdQUW5jbmNjMzE2QWVXRndMb2JaVlVwN2VmZjl1NUZM?=
 =?utf-8?B?dkYyc01ldFp6RzJQdkFvc0xIbzRDVkIrc3ZmWEE4M0JGdHVWL1ZFYXR6d3Bs?=
 =?utf-8?B?S3EyZWU4bXZueXhSUlErMDJEVy9KYXpScTUrNmx1eDkrdVFNTm5JYkdJWjZq?=
 =?utf-8?B?ZGNrSzZFZTNSNGkyQWs0RTI5OWpUVXI0SXZiOGljTEp0NkdvVWJEaGRTbVV3?=
 =?utf-8?B?c0xEaUkrMzdueHBuaVE4R0RUZlpWZll2SUdQT1laaVI4cWEyVGlNbVQ1WEV1?=
 =?utf-8?Q?U0ve4ZdLFF/2KajrsutPJoU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8138f8f-4d38-4bb5-f8ec-08da812a274c
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 14:58:47.6342 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HHD7pdF5cRtR3N+kRln57cHbJ7NEzrXqxtcdW+NsiWb76y8cvHwR03eDE0yF692zCvsGnkyF08KyhES8WAHUjvx0W0BXZeFB/7+ADWJbJsdkq3X9CzRd7LpmHWZyFUOu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2182
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v1.1 01/23] drm/i915: Read graphics/media/display
 arch version from hw
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

On 27.07.2022 20:46, Radhakrishna Sripada wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> Going forward, the hardware teams no longer consider new platforms to
> have a "generation" in the way we've defined it for past platforms.
> Instead, each IP block (graphics, media, display) will have their own
> architecture major.minor versions and stepping ID's which should be read
> directly from a register in the MMIO space.  New hardware programming
> styles, features, and workarounds should be conditional solely on the
> architecture version, and should no longer be derived from the PCI
> device ID, revision ID, or platform-specific feature flags.
> 
> v1.1: Fix build error
> 
> Bspec: 63361, 64111
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  2 +
>  drivers/gpu/drm/i915/i915_driver.c            | 80 ++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_drv.h               | 16 ++--
>  drivers/gpu/drm/i915/i915_pci.c               |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               |  6 ++
>  drivers/gpu/drm/i915/intel_device_info.c      | 32 ++++----
>  drivers/gpu/drm/i915/intel_device_info.h      | 14 ++++
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  1 +
>  8 files changed, 128 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 60d6eb5f245b..fab8e4ff74d5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -39,6 +39,8 @@
>  #define FORCEWAKE_ACK_RENDER_GEN9		_MMIO(0xd84)
>  #define FORCEWAKE_ACK_MEDIA_GEN9		_MMIO(0xd88)
>  
> +#define GMD_ID_GRAPHICS				_MMIO(0xd8c)
> +
>  #define MCFG_MCR_SELECTOR			_MMIO(0xfd0)
>  #define SF_MCR_SELECTOR				_MMIO(0xfd8)
>  #define GEN8_MCR_SELECTOR			_MMIO(0xfdc)
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index deb8a8b76965..33566f6e9546 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -70,6 +70,7 @@
>  #include "gem/i915_gem_pm.h"
>  #include "gt/intel_gt.h"
>  #include "gt/intel_gt_pm.h"
> +#include "gt/intel_gt_regs.h"
>  #include "gt/intel_rc6.h"
>  
>  #include "pxp/intel_pxp_pm.h"
> @@ -306,15 +307,83 @@ static void sanitize_gpu(struct drm_i915_private *i915)
>  		__intel_gt_reset(to_gt(i915), ALL_ENGINES);
>  }
>  
> +#define IP_VER_READ(offset, ri_prefix) \
> +	addr = pci_iomap_range(pdev, 0, offset, sizeof(u32)); \
> +	if (drm_WARN_ON(&i915->drm, !addr)) { \
> +		/* Fall back to whatever was in the device info */ \
> +		RUNTIME_INFO(i915)->ri_prefix.ver = INTEL_INFO(i915)->ri_prefix.ver; \
> +		RUNTIME_INFO(i915)->ri_prefix.rel = INTEL_INFO(i915)->ri_prefix.rel; \
> +		goto ri_prefix##done; \
> +	} \
> +	\
> +	ver = ioread32(addr); \
> +	pci_iounmap(pdev, addr); \
> +	\
> +	RUNTIME_INFO(i915)->ri_prefix.ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, ver); \
> +	RUNTIME_INFO(i915)->ri_prefix.rel = REG_FIELD_GET(GMD_ID_RELEASE_MASK, ver); \
> +	RUNTIME_INFO(i915)->ri_prefix.step = REG_FIELD_GET(GMD_ID_STEP, ver); \
> +	\
> +	/* Sanity check against expected versions from device info */ \
> +	if (RUNTIME_INFO(i915)->ri_prefix.ver != INTEL_INFO(i915)->ri_prefix.ver || \
> +	    RUNTIME_INFO(i915)->ri_prefix.rel > INTEL_INFO(i915)->ri_prefix.rel) \
> +		drm_dbg(&i915->drm, \
> +			"Hardware reports " #ri_prefix " IP version %u.%u but minimum expected is %u.%u\n", \
> +			RUNTIME_INFO(i915)->ri_prefix.ver, \
> +			RUNTIME_INFO(i915)->ri_prefix.rel, \
> +			INTEL_INFO(i915)->ri_prefix.ver, \
> +			INTEL_INFO(i915)->ri_prefix.rel); \
> +ri_prefix##done:
> +
> +/**
> + * intel_ipver_early_init - setup IP version values
> + * @dev_priv: device private
> + *
> + * Setup the graphics version for the current device.  This must be done before
> + * any code that performs checks on GRAPHICS_VER or DISPLAY_VER, so this
> + * function should be called very early in the driver initialization sequence.
> + *
> + * Regular MMIO access is not yet setup at the point this function is called so
> + * we peek at the appropriate MMIO offset directly.  The GMD_ID register is
> + * part of an 'always on' power well by design, so we don't need to worry about
> + * forcewake while reading it.
> + */
> +static void intel_ipver_early_init(struct drm_i915_private *i915)
> +{
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +	void __iomem *addr;
> +	u32 ver;
> +
> +	if (!HAS_GMD_ID(i915)) {
> +		drm_WARN_ON(&i915->drm, INTEL_INFO(i915)->graphics.ver > 12);
> +
> +		RUNTIME_INFO(i915)->graphics.ver = INTEL_INFO(i915)->graphics.ver;
> +		RUNTIME_INFO(i915)->graphics.rel = INTEL_INFO(i915)->graphics.rel;
> +		/* media ver = graphics ver for older platforms */
> +		RUNTIME_INFO(i915)->media.ver = INTEL_INFO(i915)->graphics.ver;
> +		RUNTIME_INFO(i915)->media.rel = INTEL_INFO(i915)->graphics.rel;
> +		RUNTIME_INFO(i915)->display.ver = INTEL_INFO(i915)->display.ver;
> +		RUNTIME_INFO(i915)->display.rel = INTEL_INFO(i915)->display.rel;
> +		return;
> +	}
> +
> +	IP_VER_READ(i915_mmio_reg_offset(GMD_ID_GRAPHICS), graphics);
> +	IP_VER_READ(i915_mmio_reg_offset(GMD_ID_DISPLAY), display);
> +	IP_VER_READ(MTL_MEDIA_GSI_BASE + i915_mmio_reg_offset(GMD_ID_GRAPHICS),
> +		    media);
> +}
> +
>  /**
>   * i915_driver_early_probe - setup state not requiring device access
>   * @dev_priv: device private
> + * @ent: PCI device info entry matched
>   *
>   * Initialize everything that is a "SW-only" state, that is state not
>   * requiring accessing the device or exposing the driver via kernel internal
>   * or userspace interfaces. Example steps belonging here: lock initialization,
>   * system memory allocation, setting up device specific attributes and
>   * function hooks not requiring accessing the device.
> + *
> + * GRAPHICS_VER, DISPLAY_VER, etc. are not yet usable at this point.  For
This looks like an incomplete statement. Is it a typo or you missed the
following sentence?
>   */
>  static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  {
> @@ -855,13 +924,22 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		return PTR_ERR(i915);
>  
>  	/* Disable nuclear pageflip by default on pre-ILK */
> -	if (!i915->params.nuclear_pageflip && DISPLAY_VER(i915) < 5)
> +	if (!i915->params.nuclear_pageflip &&
> +	    !HAS_GMD_ID(i915) && DISPLAY_VER(i915) < 5)
DISPLAY_VER can't be used at this point in code till intel_ipver_early_init is
invoked. Can this code block be moved after intel_ipver_early_init()
call?

Regards,
Bala
>  		i915->drm.driver_features &= ~DRIVER_ATOMIC;
>  
>  	ret = pci_enable_device(pdev);
>  	if (ret)
>  		goto out_fini;
>  
> +	/*
> +	 * GRAPHICS_VER() and DISPLAY_VER() will return 0 before this is
> +	 * called, so we want to take care of this very early in the
> +	 * initialization process (as soon as we can peek into the MMIO BAR),
> +	 * even before we setup regular MMIO access.
> +	 */
> +	intel_ipver_early_init(i915);
> +
>  	ret = i915_driver_early_probe(i915);
>  	if (ret < 0)
>  		goto out_pci_disable;
