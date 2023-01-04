Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9763465D26D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 13:22:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2502C10E109;
	Wed,  4 Jan 2023 12:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1C0B10E109
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 12:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672834954; x=1704370954;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8eQnWC1adZrPhBxCgNkqgO3W2H+Emu9wdjdRe2lEC2c=;
 b=VIonjX9R6XmUvhDKgxAthKLQ3h4oLlU7K37XYUBUY6pez/rbAWWH3f+V
 8ooPXznjsGSF9V8fP9ZievHyeHJEx68qlzQC/MFfpBXXy3R2m1aW1Thx0
 mb5XM3/iHVAYxwGn0jimq2r2GYyl7hOXUzrZYzspVdpqEOOj0OUlMna5i
 6TNFDcsi8+yIV1Q7/XeBCD7De6eVTptA882dwqXi6HtFxuTQQb4gZeAcu
 gKOsSgWMSp5UP/MaRvmETORG/z2MhVDszzFIUDU/Y91P415V28dsxgR0L
 9ZB4/UrXkwmCMEi2oskDi/9ZwMCzCtFOdaC+D0eFNkiP+AKZQZImE7zAk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="323923464"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="323923464"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 04:22:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="632772440"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="632772440"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 04 Jan 2023 04:22:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 04:22:34 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 04:22:34 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 04:22:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gIGaajBWm84G7ugAMXdQbmz6EO9YjdH8aq8A8jNPfRozw3XGmoQFs09ZMi5Xj2MuGDac+Zv206erCBm1CnWeSWg7kiLudJWCGa+e9xbaaKO+pvf8TMJqLzJD5eMT3eXWBZGG2uA2JNoCBjkfmiKuYp3c/KmZML/sshhBTZZ/c/37DU3xEAO6GfkJtYUwz7HKQDb8cTCiaSUda/Gz4CAb/aoK8Lia7PO+Pm2wzC+PwVX53Uzju62cX4pxfoXOhhP11bOd45+LZQ82VcH7Vs+Q8B920SID4f0UkXotrO6mmJwdars+RMcgdjSBFoWIOGd2N0oJcPS7yBgemgbBPOkSHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XuMK7QCY4+nl988OXExuG0KEbsqNbsUXMooG/jzukZ0=;
 b=SJjHbEQd3OISp3HUHmdTADN3izVVQTIaiJimz2/0lXl0kePGURzEti3ocIM+wox+aqFqsRngrjNgSX8IPLZHdo7q6NWsC1nbW3E0qB240GinmNimXmvop7zLCLmIZ00IiWasfLl6CP2dDCTgtu75Cd6EVU6XevZXHIqGB8c6ZjbQjuOuqft2hzKPD0887PAAX57d1iMLr/OAp4ndpNHTLeuRY2K4A9WXdg0GKQy1hrAPKwXo4J3NhFh4lf6YU5J+eOMqKdYAAG+ql0RzXpWR+F1L+PHD+QMfyGOXOBsmgrcaDZTMIv367dQQd5f8/E8a2EWQEP7pNw6sgqWBzStqow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MN0PR11MB6009.namprd11.prod.outlook.com (2603:10b6:208:370::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 12:22:30 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 12:22:30 +0000
Date: Wed, 4 Jan 2023 09:22:26 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20230104122226.pvs7gnys3rpnjjni@gjsousa-mobl2>
References: <Y68bHEiFZJMZJ9Ot@intel.com>
 <20230103194701.1492984-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230103194701.1492984-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: BY3PR10CA0023.namprd10.prod.outlook.com
 (2603:10b6:a03:255::28) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MN0PR11MB6009:EE_
X-MS-Office365-Filtering-Correlation-Id: df11c3bb-c38f-4a2c-4b58-08daee4e5950
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7cKpoxxNeMEijdeLpRClFIKfC97kMkzTzkrgVmVTzI8DshhMb2eujGC8+uvtM1pvW1pWQYya1RVsVlzYQWs9E1Zj/1lBcCX6LCl+yTt6can10TCk5XkfuFmk35YdSu/C4eLOsq5Mp9nNo7GPngEDczXhoHC7nuvWx16iss4TPeF+5kjuQF/DDHo0cRXR7PbIwPRxQYKq5QBOXlE7Z4EweDVmNS5sFpm4k1SIZHPFJpQYDJ6Uxgvub6yf8FUT8CloTONMTa6Tgq9SG/HAmIEDgHvB6CRp9aJ+c/gM/rmepM+fsHz6W3gbbcSrDxhoz9k7SAZqLsCOwnhK1Pqkz+8sd3gn27Aoix29q47uUM8RgZkMVtscJdjMYx4xnvNURjMXVvxKC/fi8K3akMJW+v1GaxTmxr5KVxTxjHAcRgCJCswm3Rd+IFtwOGKWMcWaOIkN/NRohiwDu0APJtl9jr1PEnvHaVzscBYkp1eCVRXpYpitlW9pVGZh4vUZjiDRbpzbkvnPa+1fpB+1ebUwaoY9xKry+/B6N/MW+C5etvZDuYkmfop22x92eIGBtWm5LZIC+A/HKZGPcYXFg/7NTg3RXQNcd+tHBfA8+i3iYS1zMTFbS9BYWlLlXWKFk0ZE4CpR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(396003)(366004)(136003)(376002)(346002)(39860400002)(451199015)(38100700002)(83380400001)(66556008)(86362001)(66476007)(44832011)(8936002)(5660300002)(8676002)(2906002)(41300700001)(66946007)(4326008)(107886003)(33716001)(1076003)(26005)(6506007)(9686003)(186003)(6512007)(6666004)(6486002)(316002)(478600001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pqFrAhuUTCr4TsdVsQC23qQgsReP8fu8wYqWOaa1r8rflr+mKDuqFKitSpiI?=
 =?us-ascii?Q?lqO+lqkjOlW4CY9Aand2iat9gxIjcl/o2eVLJ9taSIaj5pXWwNXfWWGr+6uu?=
 =?us-ascii?Q?0pykInD2C+24dwWfwSUbBlLOv1b1YI4/cr6cTLWUi1VYKuY7IbXqGsn9hFDW?=
 =?us-ascii?Q?z8MKq+hOmZIABAsaMFMZlGGomQ/M9G3HXYB6Az97b4AsL5QeWZ7QeSKPNLeK?=
 =?us-ascii?Q?c9kIit1atu2Py7uWXGohWCbuT8KEEM+qrzAZQyonLS0ZOnd50W5lO4lZKYwr?=
 =?us-ascii?Q?6cMOk/q58jbGaiYjqJxXVd2bStspuYxfjoK2raYV/zittou3Ko1kNs9eSh3U?=
 =?us-ascii?Q?pa/A+oZcLGyGZfp+GUHfKX9sK/iRXz39lSi+DfKPHk8fGp+VmWYAbIBWK78p?=
 =?us-ascii?Q?MNfo9JkPGSDHg79zwILFdlhtItU8MuE3S+zYLkuOYNqs11FqHgHyXlr/ny1T?=
 =?us-ascii?Q?/vOVeZZMuyEdMWHo2+iXbVX200i0w5MqYAGf67/dlUoY77Q8sH2ift4e3W+l?=
 =?us-ascii?Q?KrBk9r4r8iLF20nfMeFraeLw1rq5fkIWhy+pZ5aeka59msQUc1+Pcub4+9cS?=
 =?us-ascii?Q?YnW6qxZgZ/Me2Ne1MSaYPBrY6NOYx/akUaOsU8VN0v9wiUJHd117nlLdAthd?=
 =?us-ascii?Q?MWdk66YmVlmsMmBWlAW+sjp0mMcZS6HWBFxq23/knhbTCgD7XGiOyPahkNmK?=
 =?us-ascii?Q?ZV0RhOmFs2HW59LaPGe0avVu2dnWbbs8LbiKrEsWwDCt6xBUF8ayp9BEZmgZ?=
 =?us-ascii?Q?PmifuNZRhlLw6hGV813hLReRgopdrkIEf7am9KGcd7ILicRa4sgGzaBNToBf?=
 =?us-ascii?Q?ZzVwJbe4Ohvgntc5DPq4o6A0mX//9Re8gt/rEml1DUInZn9JBr7u9oOEDCyN?=
 =?us-ascii?Q?VHNL0Dwxn6OjdeY9oLKVEv94v52aI21e0foJWXzgLKhEARb2g5cmnzsTXCDp?=
 =?us-ascii?Q?7NXH6kZMFxX9fbT5FYwhQtbYzua0pQDFfiPrbBWdHRaWU1RWe2jyMcweIcUJ?=
 =?us-ascii?Q?xyGMOtE9XdsllvleoxkTdsvXeaGs+pvvSTr/qhL/kO0h3eriWbR3Beoccxxt?=
 =?us-ascii?Q?/d4BRvy9fVngcWFmdBBEAQrLRZWOpsU6Y8gMM/Q5DR3cMHcIUavmJPCqvtY8?=
 =?us-ascii?Q?vfZd3Fh5MbTK+5nMYqvU+qUUYGIM9ucD8TOOFddpf1vl8194+0jGRKQRhvl2?=
 =?us-ascii?Q?7XgJemz9jXqZHHQQI+i17MMyZXUP34eLrkXHrfC0d+MAk5iikjTT5cZu0tn3?=
 =?us-ascii?Q?GTx2tLxxTuETabTZxIqm9DVpumJIGdwLyyoGmOeAKEf5IbnL26WxAXZlp6P7?=
 =?us-ascii?Q?Ew8h4ftpmJYLzeRsjSu37hNWfUGNTI5OROqr1gXN/2Adk4kGrv5dUeMV0LyJ?=
 =?us-ascii?Q?G57cd8J8eVvt1t1v1XWkAXaJoIH8lHa5UjGw5reXOIk7Dk3vWts+kwb6qJ+B?=
 =?us-ascii?Q?4bjg3tpKtmWVh5SOKJ02xYivYdX8HjrRulca4InBz4CM97sVtsSALke/85IV?=
 =?us-ascii?Q?b0PuBCK8+le7RACgSLdXUH0pqA2Eev1X+oiHIw0qKY5VuYCtrxgWvSzRfdtH?=
 =?us-ascii?Q?oY0dmMYwd6oor2fogxM0tAqdb9HgCZHpV+KH6wzwc2ArDPEG5BRGDq9oBqAi?=
 =?us-ascii?Q?GA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df11c3bb-c38f-4a2c-4b58-08daee4e5950
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 12:22:30.4484 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ejvxF7cVHvV5rlhq87npbSs+6bUiICclSnqGweE4/4fBFekpT9PswudYnutT8vABsqOqzhrd/SVMLXFL+WY+OQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6009
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Expand force_probe to block probe
 of devices as well.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 03, 2023 at 02:47:01PM -0500, Rodrigo Vivi wrote:
> There are new cases where we want to block i915 probe, such
> as when experimenting or developing the new Xe driver.
> 
> But also, with the new hibrid cards, users or developers might
> want to use i915 only on integrated and fully block the probe
> of the i915 for the discrete. Or vice versa.
> 
> Oh, and there are even older development and validation reasons,
> like when you use some distro where the modprobe.blacklist is
> not present.
> 
> But in any case, let's introduce a more granular control, but without
> introducing yet another parameter, but using the existent force_probe
> one.
> 
> Just by adding a ! in the begin of the id in the force_probe, like
> in this case where we would block the probe for Alder Lake:
> 
> $ insmod i915.ko force_probe='!46a6'
> 
> v2: Take care of '*' and  '!*' cases as pointed out by
>     Gustavo and Jani.
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/Kconfig       | 15 +++++++++++---
>  drivers/gpu/drm/i915/i915_params.c |  2 +-
>  drivers/gpu/drm/i915/i915_pci.c    | 33 +++++++++++++++++++++++++-----
>  3 files changed, 41 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 3efce05d7b57..8eb3e60aeec9 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -54,24 +54,33 @@ config DRM_I915
>  	  If "M" is selected, the module will be called i915.
>  
>  config DRM_I915_FORCE_PROBE
> -	string "Force probe driver for selected new Intel hardware"
> +	string "Force probe i915 for selected Intel hardware IDs"
>  	depends on DRM_I915
>  	help
>  	  This is the default value for the i915.force_probe module
>  	  parameter. Using the module parameter overrides this option.
>  
> -	  Force probe the driver for new Intel graphics devices that are
> +	  Force probe the i915 for Intel graphics devices that are
>  	  recognized but not properly supported by this kernel version. It is
>  	  recommended to upgrade to a kernel version with proper support as soon
>  	  as it is available.
>  
> +	  It can also be used to block the probe of recognized and fully
> +	  supported devices.
> +
>  	  Use "" to disable force probe. If in doubt, use this.
>  
> -	  Use "<pci-id>[,<pci-id>,...]" to force probe the driver for listed
> +	  Use "<pci-id>[,<pci-id>,...]" to force probe the i915 for listed
>  	  devices. For example, "4500" or "4500,4571".
>  
>  	  Use "*" to force probe the driver for all known devices.
>  
> +	  Use "!" right before the ID to block the probe of the device. For
> +	  example, "4500,!4571" forces the probe of 4500 and blocks the probe of
> +	  4571.
> +
> +	  Use "!*" to block the probe of the driver for all known devices.
> +
>  config DRM_I915_CAPTURE_ERROR
>  	bool "Enable capturing GPU state following a hang"
>  	depends on DRM_I915
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index 61578f2860cd..d634bd3f641a 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -122,7 +122,7 @@ i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
>  	"Default: 0");
>  
>  i915_param_named_unsafe(force_probe, charp, 0400,
> -	"Force probe the driver for specified devices. "
> +	"Force probe options for specified supported devices. "
>  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
>  
>  i915_param_named_unsafe(disable_power_well, int, 0400,
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 7fd74cc28c0a..bc1af7e8f398 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1253,7 +1253,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
>  }
>  
>  /* is device_id present in comma separated list of ids */
> -static bool force_probe(u16 device_id, const char *devices)
> +static bool device_id_in_list(u16 device_id, const char *devices, bool negative)
>  {
>  	char *s, *p, *tok;
>  	bool ret;
> @@ -1262,7 +1262,9 @@ static bool force_probe(u16 device_id, const char *devices)
>  		return false;
>  
>  	/* match everything */
> -	if (strcmp(devices, "*") == 0)
> +	if (negative && strcmp(devices, "!*") == 0)
> +		return true;
> +	if (!negative && strcmp(devices, "*") == 0)
>  		return true;
>  
>  	s = kstrdup(devices, GFP_KERNEL);
> @@ -1272,6 +1274,12 @@ static bool force_probe(u16 device_id, const char *devices)
>  	for (p = s, ret = false; (tok = strsep(&p, ",")) != NULL; ) {
>  		u16 val;
>  
> +		if (negative && tok[0] == '!')
> +			tok++;
> +		else if ((negative && tok[0] != '!') ||
> +			 (!negative && tok[0] == '!'))
> +			continue;
> +
>  		if (kstrtou16(tok, 16, &val) == 0 && val == device_id) {
>  			ret = true;
>  			break;
> @@ -1283,6 +1291,16 @@ static bool force_probe(u16 device_id, const char *devices)
>  	return ret;
>  }
>  
> +static bool id_forced(u16 device_id)
> +{
> +	return device_id_in_list(device_id, i915_modparams.force_probe, false);
> +}
> +
> +static bool id_blocked(u16 device_id)
> +{
> +	return device_id_in_list(device_id, i915_modparams.force_probe, true);
> +}
> +
>  bool i915_pci_resource_valid(struct pci_dev *pdev, int bar)
>  {
>  	if (!pci_resource_flags(pdev, bar))
> @@ -1308,10 +1326,9 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		(struct intel_device_info *) ent->driver_data;
>  	int err;
>  
> -	if (intel_info->require_force_probe &&
> -	    !force_probe(pdev->device, i915_modparams.force_probe)) {
> +	if (intel_info->require_force_probe && !id_forced(pdev->device)) {
>  		dev_info(&pdev->dev,
> -			 "Your graphics device %04x is not properly supported by the driver in this\n"
> +			 "Your graphics device %04x is not properly supported by i915 in this\n"
>  			 "kernel version. To force driver probe anyway, use i915.force_probe=%04x\n"
>  			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
>  			 "or (recommended) check for kernel updates.\n",
> @@ -1319,6 +1336,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		return -ENODEV;
>  	}
>  
> +	if (id_blocked(pdev->device)) {
> +		dev_info(&pdev->dev, "I915 probe blocked for Device ID %04x.\n",
> +			 pdev->device);
> +		return -ENODEV;
> +	}
> +
>  	/* Only bind to function 0 of the device. Early generations
>  	 * used function 1 as a placeholder for multi-head. This causes
>  	 * us confusion instead, especially on the systems where both
> -- 
> 2.38.1
> 
