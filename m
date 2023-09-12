Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA8179DA5A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 22:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83D2510E083;
	Tue, 12 Sep 2023 20:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84C1610E083
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 20:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694552246; x=1726088246;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2n6pqUdydGX+nZqT91zsFYNrWJJREjTZpbU3pXOch5Q=;
 b=gdFck64gFCG08t/kYU/O7/H07lip6qPfTBKXJd/qoEG9aujDdXwbJpOq
 GxHdej2MCg9nY4D7rZQ8yZqUQ9f3Mo1I5ZMGr2aLIK4BOn2NBaun9eUlQ
 On1Uhar027fkulOKBcyFF30gYYvTqyGVGmL1zU0UcfBGKR4y9XHj/T+9j
 3xM6NSPyvYIVDtJdnJdlLq2t8AUT/MBMqk8DtvnPScrZz6rhskfM57RHR
 RpV6McwiAD99UOrVOtbd3YHB7frs2ljsxoM7xsUfE95BzMIJ8rTRuYECN
 5sPQzy5rvr0dvsGUXy3OclF6xKhLtfR58pIF7dxddDIoAaSYoquLgWlUR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="375820327"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="375820327"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 13:57:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="813982660"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="813982660"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 13:57:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 13:57:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 13:57:25 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 13:57:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SZWH/39lc4i2VBHwmTnXna8Cn2PGVdMnu8MVU1A0u7WcrbBtzYkD1O2Ft1flheyEAIQkLn/9dwEDdJH/LDWgJ7hMfzQrXe60Dnl4ZHX7vCWSRygGHe//yXKdP1Lwhit69JjWUnryKLEc7YucqyHctBasb9jabrAHDWKms2clcVMnG2qK92wHlKEGoXdDsuOkKqrcfBcyGbczY+afxfcFwayEFZPVWVXHKfutmQlX3qey96ZThqw7qL7/tl6JU9ivVVZxdR/CaBA5jpwp5YGMnT0lKVZvKvfiVgd70AZ6ShZQAhz7qhZNjX3ubQEzjhAOViNfROLohd/s5hMrot1Ozg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7oUOZhzyx8202cWEcqzUFVMDVj7bHQgZ5BQ9PuHsg0Q=;
 b=H46v84w43ZCj0sQjPGOyO7azutk+9pPpzH2wVjUtKFXmSSylqK7YsfAw+Rt5+W7A0AK+BDepQoNmvHQeB6pqsDAiIai9NhTHvNIpKXzZ9rXGxUxjPFOPBx1ZD6rSzotuDyTVdUeXpFjPPVX87JWj6PGxPGiq3Q2durtAyS8DFyoEMGE/UGhtKA4Ifi93tUx5Ppla16uWgmLcUbSMkw6sMzxYVJJrdD9+671bkQqKbG0scqGnt9zj2d3wVbAf0fbQmEBHJY7EaoN7K8RWMilTn0cEETFsx3gRacnv/i4pinX7Y6wUcnFT55SaSn1IeXKa02vL0fDVCD1nVRrRJS1mUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB6835.namprd11.prod.outlook.com (2603:10b6:510:1ee::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.30; Tue, 12 Sep 2023 20:57:23 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 20:57:23 +0000
Date: Tue, 12 Sep 2023 13:57:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20230912205720.GM2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230912120537.2158209-1-jani.nikula@intel.com>
 <20230912120537.2158209-3-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230912120537.2158209-3-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0104.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::45) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB6835:EE_
X-MS-Office365-Filtering-Correlation-Id: 56e8c0ac-e512-4eb6-1238-08dbb3d2dcf2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ri3Ml1eNyhT1Qvgore2+Yz+Avp6jh1gRf/ol/vqvd58ZhAQTro5yfrW+onryBTUKp3YPt6WXLNNhIR6ICNYPZ8sP2GwPxwnaxyfXV758D2J7qETjkFY40o4YKjZxYT5RtHyVvvVJ3DQAJEHZoXwVZb3bD/rni9Y4j/gapTCBJlhjNP8QG5nSK/7KQd2sg1g5LwHGf3/XVfl6o8r/ZQiZMje/jcVhPGeqOjlbpY+tIEjbRJ4DJ9uPFoL9LLeHaiEg6HdVZqur9SCbE4yg44qduUe8+C2EXVsYGTntFSaVDDdlk41GeHpr7ZZD/rFGjCijlQbJ0wOckKnboYxzlN8EjIdUDDZqKVZAalpE6xzQLa1y8X3mcz/EVeihLZgtb3pzlJeZZ+iIB8jQ6gLqBcpZOnHqq/XNjpURnXY6s/ME7KwH7g1flK0nF1cOtpwCYQ89tZSUWQnszYfoEQFSX1z258egox/m+H6J3XBZEfSThCXzYD0tSpqxw17jUcnBm+qYf289mZN4GKjASBYa9pyxDkd0qW9WZ//v8Wwidau9jL4jGWg3if5DknIiPHZhDcLA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(396003)(366004)(39860400002)(451199024)(1800799009)(186009)(66556008)(66946007)(8676002)(66476007)(6636002)(41300700001)(6862004)(5660300002)(4326008)(316002)(2906002)(8936002)(6512007)(26005)(83380400001)(1076003)(82960400001)(38100700002)(86362001)(6506007)(33656002)(6486002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vpejVo0o1M0dBQPhvCx1fFNl4sURwP8pvDzfWVCaOR40t92mZM+Oz8G4rFAk?=
 =?us-ascii?Q?LiuH0S3nkqeXeMUbd9dDogfhqn4jbA65Z1u4sUzm9su6qXG2DgrMx36DxOK1?=
 =?us-ascii?Q?1Cr8sH2SjVasi4EDZNgcuntJmbF+qrjPuvhECsd1VfIgv1Z7P+bOT9ONTLXx?=
 =?us-ascii?Q?WUxmNLdcW39CDB+rRjizqR0FthtzVx9xP5mqrdYX+yO9XzX1c4Ywu2kTqLKv?=
 =?us-ascii?Q?Sdb+PQ14ySq/3OqKPZqvXyDXzHDx4QtKAIV2q9iJ2O7W1R2xKEydl7Yc8d57?=
 =?us-ascii?Q?OvHvaYqaJRcI1GAsU1SbHNAPVdnR+2FjjPxeFfq09ZTUgzldcfbJJ5vzDb9Y?=
 =?us-ascii?Q?W4oq/y38Gq/Dv28jlpr7zLzFUJpik1QPq38AFXt5iOZGBU4gJr3lLUAZb4D5?=
 =?us-ascii?Q?I5LEz8BmkXR6ItwSYFgjv5MwLF8c3AOYzygnhaD6iOfxHQ7w0coRyYkya/YQ?=
 =?us-ascii?Q?rxywbvQttC3Y+lPmUFjtQiZIUZe3VP4PJMzQevezbW0qiNQSkb3LVnkYfgyc?=
 =?us-ascii?Q?bnG1RDERgxCv0h1LETWI7S7MmZwsvfLqKRCo7qfJ3A0ZAyUJtH5yRb7L301p?=
 =?us-ascii?Q?rtyWr2ohbMXSYrEXwhog4F7C/ug1H5wLjNOIG2DZhrs1okV4myXht6OMxMID?=
 =?us-ascii?Q?aRS9SLsQNVaZinFZJ87tSQC1kmXTL84QNAbs1KAi4SV+3V6BQySWMyMXDdWS?=
 =?us-ascii?Q?YH+qHOXnQVKhJ2mx2hU8pLyz2X797WgzNYj50VeXre2KT4YIPWAuLkbiuU/K?=
 =?us-ascii?Q?QQcrac4M78LiYElwbAglC1Wp2bkTd362Wt+xNbQz1KbjFpj6XVxPYnHApQ1R?=
 =?us-ascii?Q?naH/Apiy6ZgnhZL0VMa6oP1eEhFwZAuKeCZ4LtQBzRXY+schcxNFNtKAhpkE?=
 =?us-ascii?Q?ot08eJDzj9s5mUUPjuAgojqLxkGV+ZFK4PWSVT3lqCSB3G0LCszVL+zb8QsY?=
 =?us-ascii?Q?ARjPzxacZaHcEEL2By1WSsaY62nuyfXaV3EYj2lBe6G+tY8QiguQjAhzB5br?=
 =?us-ascii?Q?G/MHieBzrU+KTNqhmYhXcAmL/YZb4F0UQnr3Hlf48F5waNPzVK0yu+p7QjEX?=
 =?us-ascii?Q?44crVK+zFRtt8iu82TqQfoUfNUnQrWorJjixmSPwUIpxIh0fKnqrXnCi+gQ9?=
 =?us-ascii?Q?hhLG4DMiKM79/DYmC53zPMItyvrushz+kN1aMhc2b0iXY7LudNMKIkWqdp17?=
 =?us-ascii?Q?jJXlpHHk0ZoI/EtLB5sOzOBYLf7ioxHlK7cKN7agAZGvwxV1fUmsZ9JYs8aM?=
 =?us-ascii?Q?XEU3UeJSwGCpMdiyO+NiDXQ/ixLY00lWRbqjlS+Z8lTqtmhEwK42pqSFolRE?=
 =?us-ascii?Q?99cfluRTXYprlQF7vqsREfO40b6GwFkUmvLV/+RL0Q2ux1aAPubLx1PMRUCt?=
 =?us-ascii?Q?nbP/qKawscWsWwwZJoGGnPPwdQ4ug6Wwf05U2nI1ZJEy78yo1vMQWeQ9za1+?=
 =?us-ascii?Q?0eTVfXIq6RenwCIxJJ7qKPY/jZ7s9jl7BIC8eQ9RchTVA3EWs7lj4TxYxgAE?=
 =?us-ascii?Q?9ZRyGbakP2SXodrm5jZddxsDf3x307Qpx8PXWENFrbHOyQAzql2gvmkIb2v3?=
 =?us-ascii?Q?eYPRu+uf0ww+5m05BNpLWQ7NFgomyQNF5E+wteXrlQVekm1tLHWy10Gpv/+x?=
 =?us-ascii?Q?gQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56e8c0ac-e512-4eb6-1238-08dbb3d2dcf2
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 20:57:23.6162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FrRfyN8pKrJxr2uEHf96g2ZwzT+lFH62eBWcLGWxdSoHUPZNaLvDs3pEBJ1ydSUL4ifrmisZoyMyTOCP2siAS+Kr6wJcpq1W3MoO0d0Q0yo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6835
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: move
 intel_display_device_probe() one level higher
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 12, 2023 at 03:05:37PM +0300, Jani Nikula wrote:
> Don't hide display probe in device info code.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c               | 2 ++
>  drivers/gpu/drm/i915/intel_device_info.c         | 2 --
>  drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 ++
>  3 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index f8dbee7a5af7..b5e1f72cc3ce 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -735,6 +735,8 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	/* Set up device info and initial runtime info. */
>  	intel_device_info_driver_create(i915, pdev->device, match_info);
>  
> +	intel_display_device_probe(i915);
> +
>  	return i915;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index b9b8b22540cb..d2ed0f057cb2 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -418,8 +418,6 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>  	runtime = RUNTIME_INFO(i915);
>  	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
>  
> -	intel_display_device_probe(i915);
> -
>  	runtime->device_id = device_id;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index da0b269606c5..7de6477803f8 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -181,6 +181,8 @@ struct drm_i915_private *mock_gem_device(void)
>  	/* Set up device info and initial runtime info. */
>  	intel_device_info_driver_create(i915, pdev->device, &mock_info);
>  
> +	intel_display_device_probe(i915);
> +

I realize this call was already happening with the old code, but do we
really want to be probing the (real) display hardware while setting up
mock (fake hardware) selftests?  I don't think any of the mock tests
should be doing anything display-related, and if they did we'd probably
want to add some kind of mock_display_device_probe() instead or using
the real hardware?


Matt

>  	dev_pm_domain_set(&pdev->dev, &pm_domain);
>  	pm_runtime_enable(&pdev->dev);
>  	pm_runtime_dont_use_autosuspend(&pdev->dev);
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
