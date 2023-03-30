Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D2F6D0887
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 16:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEA5810EE96;
	Thu, 30 Mar 2023 14:42:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C6F410EE96
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 14:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680187337; x=1711723337;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=h0TCIZ3qWRdyIflAhyA6fptKwj1xDk+wJ+2vTgxn+04=;
 b=nq47zv3QkqtSyuxz+T4vjPi6ajm2702WEHWz60dP3JaKIOObIlZevFra
 D9pzciGUmiGrx+edx+60FpYk9hSPE0yMhlgcD5eQcvK1c8XCaEI6J8zsO
 zYA4ANCCMOGUN4n3b+tRY826/PYcsIJaHo5AL7zdOGoQyVV7nE57DvUfw
 L3J6ZaXS++4hAnm2gq6355XL4vWx3LtJuOgaOsomG6QThiUarXcO2WY7p
 kYskC7iVcpV3aZtUtEKAi6zTSXtwhO1Xu6TmlTJHf0OIu6oG7oGqKs8oV
 GgEwHy8i6keH0llkbwTIUrNyjsAGl+CDWftyY0iYZGJNtVfb3KfBlgTNd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="320836223"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="320836223"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 07:42:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="687253439"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="687253439"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 30 Mar 2023 07:42:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 07:42:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 07:42:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 07:42:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 07:42:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gElHumiHbiKRZ7wWTEPq21Li1Y+7vs+1HTwb7OexUXC/DVlmnTuZetvwdiu7SsEA44+1bH7mPFvjE9s8/bLdIQ/NqA/G1aKFb/RWaMisGPFvDfZpzlmZDuVjJKFWUZ41b9IbQaVIPJbkLPPpPNHpO/np8xLtcjaPxq3I0Idic7P5qYwihZSE+XN/O1dYjv8t4RFnMGvyNDdFgGZtQmz+KGaXGna06UcJM2NH9dwAcV63ZDKWUGkHOsk+GOpHR2fuaaTHJRL63b2i0egtASdHs54/2At5UoZGburz5z7B+XgRo1w8/56U4yTv28GXU9F1ztCb2vZVyqRCnuBqO75APQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x3nj4bU8awBIytSbEznNnUgSwt69pOaHfvPChJnpT/4=;
 b=ZtN6Gg+RNUtg7w0zt3OsWNnaXq9Tw7OfYo+gwGNHNE6jM9P5799oMwei2BjThFccE+3sfIpkpNG5qGhLQBo5ZENSCXz0p+HP7EL9hJkV9Ru8zApwfbRRn35dlVP64FmjL02C0hNfRGOVC7Im02xOv3U+VUPy+KCqBz9/iv2PUm2j/47kYyBV33pJmvVgQwYYljDkXNWq+1MRhDkOCz2AhWeIbCkX5FnyKWhWo94hEmwTTq5N39h0ILyuy2B6rcriTkPt2wk75lgvq0MJMhJqUl6k/EqTLDV/v9BJDYR3qNTRkbVq7YD+JJJ5mf+9aet/nuVkZ312y7ZZJ5vJySp5pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB7521.namprd11.prod.outlook.com (2603:10b6:510:283::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Thu, 30 Mar
 2023 14:42:10 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%6]) with mapi id 15.20.6222.032; Thu, 30 Mar 2023
 14:42:10 +0000
Date: Thu, 30 Mar 2023 10:42:05 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>
Message-ID: <ZCWfvbuozZGia/M+@intel.com>
References: <20230330121135.15414-1-swati2.sharma@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230330121135.15414-1-swati2.sharma@intel.com>
X-ClientProxiedBy: SJ0PR03CA0228.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::23) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB7521:EE_
X-MS-Office365-Filtering-Correlation-Id: ea660a1b-3f02-48f8-7eca-08db312cf10a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BhJ5M1KbdT642DweHxKh3HXsWcTGSuUj/gEM3zgKpqmAmFKPQnOH2cutQr+cYIZSYjaAi5SuyJ0wGpWuUuYd8Z9Khgvh96DzK2gc678yueioq4W1aqCyDy33RXAfoDg/X2zpxUW+eHfw/IPbW+92ozq0n0oSn5VRIrZxY4Tal6j5WUUt7jAjudf3llE92vu2NCurxaRsCgzOKMlyaoQ9o4uGDFwmejTJZB2Qn0pdTr7GmW7qeP8wdce2QqiFn2SUYMQ4gg8ID7Pz+elWqOU0HQHwK/zby5WiAYzkd1Uiq3dQ9/SnjncnsM9rMjKpku3YnnM+N8MDkR0RVMnTzB/vgTWUt+rdgsw6Yu1ETtmACuoe07HGzPrwUUPdDWbdxtFERP6AIq47TT+BJ3DZJ0ZgG5LTFpD8FGOqn6JAkbJjM2LMf1aa6ExdUiQ3hV8skbNXrpf5JRYilpAXFH2FF+gI5xKaNTxDk8jV4XX0dsYXf/nhhjY8z1ZrzO8+jj9GWHyLB09DwDwGctiWuYfAoQhUlwdi8OLseNmRo9tPlPmd6+A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(396003)(366004)(376002)(136003)(451199021)(36756003)(86362001)(2616005)(44832011)(83380400001)(6506007)(26005)(5660300002)(6512007)(6666004)(8936002)(6862004)(82960400001)(186003)(6486002)(41300700001)(966005)(4326008)(6636002)(66574015)(66556008)(8676002)(2906002)(38100700002)(66946007)(316002)(66476007)(37006003)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?4Eu/OHeWqzEjJNtnb12Egn4TpKoDn7vYK3aIYc5CsqXXAevDG6KJvUHCXF?=
 =?iso-8859-1?Q?hi9/jiB1/IHEtrVqwsmQ3q6ZE2u3hy0o5x1dWyodRcwCSw21AqVMbpSwER?=
 =?iso-8859-1?Q?avS69//y9+jYUFqTWy0jbvuftcDdjmHZ0UpJoCvL8Jcox+wwKpvaJiNWBG?=
 =?iso-8859-1?Q?ZGpsILce0iD9DnVhOB2hbuK2JdXYkOcAdrdV2v86QlNxVCdN079MjstYrY?=
 =?iso-8859-1?Q?ma1OgNsHyMZ48WYkEFDVyhshmHL7oOBTOD+zJhvrWFobj6XfY9DhJ1FsMm?=
 =?iso-8859-1?Q?p8xaW+cq2dyQW780IQ8y0zQcpRjk2iMR2TvJaRIBpV05lEJ50mYw9u0+tl?=
 =?iso-8859-1?Q?TtYuImAcZ30IUWP24zQS8iLuaR+miKfe9W78B2kA9zCJSkhijB1I2vC3qs?=
 =?iso-8859-1?Q?RJ2c/RrPTzpSZw+cdiPdqFwzAfeziB0mAyjqJDKNSux+xjH4XyBEBG8QqH?=
 =?iso-8859-1?Q?HDrHWhdZYxCAurHoYLPSl0JTz/1Cp8pD6tXX8lqQgYAKYCPWOPrV1d6XXH?=
 =?iso-8859-1?Q?1xpXeoAR5Xjdq7CwcnFRVM2KuzY8C00P1pYUL58ZZK1ldOHooEdfJTEuA+?=
 =?iso-8859-1?Q?fDDtqdPrKH8A8xfBwszE3fazujqv3MWV0wXivUJqwch5igj+sCMQhuap7P?=
 =?iso-8859-1?Q?FfxgUwrku7EWWtrlV9qvdMM0+Aw0k2/jVTImnpFqaUMWWf/B554Kxlq9CC?=
 =?iso-8859-1?Q?d0x4y77KJ5q3I7IHC5aFw6d9Hb+pZ/1120okHUO+CJ5pM0PTz/P2PWXtuq?=
 =?iso-8859-1?Q?cHNBNsEyxVQg1TC5I5m8LB8jgB8+W+sfW73iDNqqF7g8BRO5wFbzIr3Uke?=
 =?iso-8859-1?Q?xNjl0Y+/Kpoba4Bge8t0abMkZgEhSndhIa8MwO5MIukv9wUvD6tVyuXhNt?=
 =?iso-8859-1?Q?ymkkZNQZwI/1mvytumWK2oP0i9cw0e9dvMVuPLKZBuosSwKLlzrSQi7bmD?=
 =?iso-8859-1?Q?jMZIzB1NR/ZOf2OVjQOFGZlU01Cm0PCYWVyZWHbbwBmPCEsbfnDA5YR3fN?=
 =?iso-8859-1?Q?TF1XMGUwKBA+N2KkiggZVbqqZ9Ud4bECm+CTUB9My/qTKwx3jPmfUlWSuS?=
 =?iso-8859-1?Q?K23gEaFnF2dVpinQgtdw2ZhBcRQkVOe8J6DoDoTwWUy+DqSF5xM+zV+nOd?=
 =?iso-8859-1?Q?3uWYs6W6Qbd+FGCeb7UnkgPnkIrLDrN0MRvVgTYx+JK3SB6L6X9/jadKyD?=
 =?iso-8859-1?Q?NWddxa01jWEI8VxF+B0QSVEnroghCiyHjssh7yFs5gT3xql+z3Tv0lJRHF?=
 =?iso-8859-1?Q?SKqTAI3HGRB4XYwD+nvxwH+r1h4UsybTYTt4ccSqPcHddkclSO6ofUcRms?=
 =?iso-8859-1?Q?hIcQFLDSTxcVSvkv0ewX7cmKZ2j4psBYWAfgE9eVbCV70e2BxeLW1U/Liq?=
 =?iso-8859-1?Q?3DH7vKMgLZcqgAHXscCCdjxwoq+fhxtZ9KP0IRApBhFguQmy4GVdB0cCBv?=
 =?iso-8859-1?Q?crU3UJFuyrTip4stx0d+cVEDBlQzWKu6mE1KFPPJK0Zomw/gX40zEGC35E?=
 =?iso-8859-1?Q?LUQzWlfWN5QHm1GKWY5VmLDv419Tanu7+BxRSwPBgdF8W1CRdMuxrXrReP?=
 =?iso-8859-1?Q?UIFj+58FIoA02rxGxmsKXqTHlJp6CRW3b5+BWCwZ5TWan2OmG6+wyYm6EE?=
 =?iso-8859-1?Q?sMmkr6bV9G/WmdvrhBCQbEtAnKju11LkpI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea660a1b-3f02-48f8-7eca-08db312cf10a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 14:42:10.1818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e5T1T4cnw/HudNlM4CPKGidyuA6Ys5/g5gDSMmPuSxvOjsxWMSkt+uVJIOlIdECZsW+n7L49HWKyK++ndCEJHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7521
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] [topic/core-for-CI] PCI/ASPM:
 pci_enable_link_state: Add argument to acquire bus lock
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 "David E. Box" <david.e.box@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 30, 2023 at 05:41:35PM +0530, Swati Sharma wrote:
> From: "David E. Box" <david.e.box@linux.intel.com>
> 
> The VMD driver calls pci_enabled_link_state as a callback from
> pci_bus_walk. Both will acquire the pci_bus_sem lock leading to a lockdep
> warning. Add an argument to pci_enable_link_state to set whether the lock
> should be acquired. In the VMD driver, set the argument to false since the
> lock will already be obtained by pci_bus_walk.
> 
> Still, review comments needs to be addressed. However, this fix
> is helping to unblock CI execution for now.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8316
> Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Fixes: de82f60f9c86 ("PCI/ASPM: Add pci_enable_link_state()")
> Link: https://lore.kernel.org/linux-pci/ZBjko%2FifunIwsK2v@intel.com/
> Signed-off-by: David E. Box <david.e.box@linux.intel.com>
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>


Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
to get this into topic/core-for-CI

> ---
>  drivers/pci/controller/vmd.c | 2 +-
>  drivers/pci/pcie/aspm.c      | 9 ++++++---
>  include/linux/pci.h          | 5 +++--
>  3 files changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pci/controller/vmd.c b/drivers/pci/controller/vmd.c
> index 990630ec57c6..45aa35744eae 100644
> --- a/drivers/pci/controller/vmd.c
> +++ b/drivers/pci/controller/vmd.c
> @@ -737,7 +737,7 @@ static int vmd_pm_enable_quirk(struct pci_dev *pdev, void *userdata)
>  	if (!(features & VMD_FEAT_BIOS_PM_QUIRK))
>  		return 0;
>  
> -	pci_enable_link_state(pdev, PCIE_LINK_STATE_ALL);
> +	pci_enable_link_state(pdev, PCIE_LINK_STATE_ALL, false);
>  
>  	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_LTR);
>  	if (!pos)
> diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
> index 66d7514ca111..5b5a600bb864 100644
> --- a/drivers/pci/pcie/aspm.c
> +++ b/drivers/pci/pcie/aspm.c
> @@ -1147,8 +1147,9 @@ EXPORT_SYMBOL(pci_disable_link_state);
>   *
>   * @pdev: PCI device
>   * @state: Mask of ASPM link states to enable
> + * @sem: Boolean to acquire/release pci_bus_sem
>   */
> -int pci_enable_link_state(struct pci_dev *pdev, int state)
> +int pci_enable_link_state(struct pci_dev *pdev, int state, bool sem)
>  {
>  	struct pcie_link_state *link = pcie_aspm_get_link(pdev);
>  
> @@ -1165,7 +1166,8 @@ int pci_enable_link_state(struct pci_dev *pdev, int state)
>  		return -EPERM;
>  	}
>  
> -	down_read(&pci_bus_sem);
> +	if (sem)
> +		down_read(&pci_bus_sem);
>  	mutex_lock(&aspm_lock);
>  	link->aspm_default = 0;
>  	if (state & PCIE_LINK_STATE_L0S)
> @@ -1186,7 +1188,8 @@ int pci_enable_link_state(struct pci_dev *pdev, int state)
>  	link->clkpm_default = (state & PCIE_LINK_STATE_CLKPM) ? 1 : 0;
>  	pcie_set_clkpm(link, policy_to_clkpm_state(link));
>  	mutex_unlock(&aspm_lock);
> -	up_read(&pci_bus_sem);
> +	if (sem)
> +		up_read(&pci_bus_sem);
>  
>  	return 0;
>  }
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index b50e5c79f7e3..1fe4557e87b9 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -1708,7 +1708,7 @@ extern bool pcie_ports_native;
>  #ifdef CONFIG_PCIEASPM
>  int pci_disable_link_state(struct pci_dev *pdev, int state);
>  int pci_disable_link_state_locked(struct pci_dev *pdev, int state);
> -int pci_enable_link_state(struct pci_dev *pdev, int state);
> +int pci_enable_link_state(struct pci_dev *pdev, int state, bool sem);
>  void pcie_no_aspm(void);
>  bool pcie_aspm_support_enabled(void);
>  bool pcie_aspm_enabled(struct pci_dev *pdev);
> @@ -1717,7 +1717,8 @@ static inline int pci_disable_link_state(struct pci_dev *pdev, int state)
>  { return 0; }
>  static inline int pci_disable_link_state_locked(struct pci_dev *pdev, int state)
>  { return 0; }
> -static inline int pci_enable_link_state(struct pci_dev *pdev, int state)
> +static inline int
> +pci_enable_link_state(struct pci_dev *pdev, int state, bool sem)
>  { return 0; }
>  static inline void pcie_no_aspm(void) { }
>  static inline bool pcie_aspm_support_enabled(void) { return false; }
> -- 
> 2.25.1
> 
