Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B6E68E0F2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 20:15:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C82D10E198;
	Tue,  7 Feb 2023 19:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20DC510E198
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 19:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675797302; x=1707333302;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gTJ+EbE0oPuMajVA3LHyopyQHbCqlmIiRGFUU9q1w/U=;
 b=BLsjd4EkLYWsycTO3vw/Ah7VvWjgQ4UfqXYk4wkDG21Nv3Gc66nwBR5n
 fgjKXj9OnnIvKAea2BRazd/8L7pZ+BmQmKJurvtqiwhh/ceMw+ZphiENu
 ljl/4jP3sW+2lZ/+s6f0aainAfrWYWMyNuHIGgjhVtD6O+fQot0Cph8b5
 0GD8cHcefRxXtU8aW0RNQGYcY7ZS8dKjpWxYE9GJpylAm5nr5aEcmgVb4
 AR6olSecDBTVJu8sH9d8dv/x3rG0SzLpf90n9ILhsRSSXOAwJwCl9Z/Gi
 G9re2szvIUqmOTFCcnSgFf4JrHHXnm051FptwHV/0AboMUSVwwnfyCBm8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="309944019"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="309944019"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 11:15:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="699365581"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="699365581"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 07 Feb 2023 11:15:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 11:15:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 11:15:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 11:15:00 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 11:14:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QHt7mrOtqt4YZyTaFuGuozha0EvnOuFD5ql7xacePgsdBlTde8cSPf7f8X6Uo/CxRE7+5GDmH1X4iTBceYcCI44kcy7oUeaQ9vqUr089uyh5kQYKmYpH3u4ErIxPBZSgKGNGTz4pugkV2tM0/wfYmJeYSEVrcZWkR0WmMbnRNQw0DbZRlvLqCFW35S/libSr6JmeAC81og2dCuoQPD2KYgFKUZEjuaN6ROeg67cc0nmjQASn+Nr+tum07R6ILbE4W5loIwdYQGH/qNZigzT/cOqLltEGZgckcYYSOrSmuO+fhj2MrX4bnJ6q7pcvrs3TkKjySNIvSUuEW+M1F/bckA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pwhanWOnaKF+0DnolNyWe375QJJOBEDBj0rPmz6FBvE=;
 b=aL93kZx10vjqihhdFETOKlrWe8HalqZNMK3+PVt2C46nJ6wcrrB7Y6jzKBWq1jl8cwqP4MymLDaJ45gGjvUqCFKEVOt/JZS+nmqG3bGKo6ZLyJJjVWdRB7/OtB9xKz73hQqlqNPRQerCQsi9ARwr3k0iXN+y+QurALf1aCLd7uVZD6fUJQdmEx/2qrwoCEx+R0Ip+YE7d6fEqwg0wdI/2XYBgy7E2HFqgyM2b5CePYFwha1yNEDa3mmy/noRCGX/lt14563wv7qqSkuRTjwy+f+jRjZcbdP9cO3ZzBD00iyljzVLXnxA2rNXrCyLBK46LNGCCsYUv7pY6rVQ5sDBww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SN7PR11MB6774.namprd11.prod.outlook.com (2603:10b6:806:265::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.36; Tue, 7 Feb
 2023 19:14:55 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%5]) with mapi id 15.20.6064.034; Tue, 7 Feb 2023
 19:14:55 +0000
Date: Tue, 7 Feb 2023 11:14:52 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+KjLLnhiFAldJjl@mdroper-desk1.amr.corp.intel.com>
References: <20230207110619.1821992-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230207110619.1821992-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0145.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::30) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SN7PR11MB6774:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ba5446a-ba64-409e-df95-08db093f98cd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ygw5WfQnfeSRfQxgwYLOeRqDwxuGPFPOXgJuKvK6hEhtwk44Ohs0HqgmysHAwA7TewAxgHK2qtJIROlDCo/5ppzpAtwW7517b4yIbP1n6drz5ZKK9IxtVyArPVlimZrAQab4iqD9NrqzpiJ1IsJ/iLmp9FBYG+Ykok/G1Hiru9f1YDG5JXENf1ue0Rs6ywWXIEB51aORaiksSTkwOkVmlP4X+YcVo7psd9W3P4rPN3tIEDWeTdsVGjX779uxNYB0dX4RartjDwyz7w/ikCwHc9KQN/oTPeyyEYKe+YOGELufDW7yTkmYrDL0t/JtqDc7oCOqXC5OWPUmx9HRRWTUslXr3nLzvX9GYKBC3/NSO+9ioDvioWV5KPkC+v+O9rhdo0F4k6iahvloBY2cSPNUpJu/bdQeGXBXtZNCtNCzfFFk1EiyO4RANqKtQk3+AwfMWC+k8iCvxZ4hIDmP6SpmuLGSkdu52Kl5wmgPZK95YM6xYoWuIB3yUHF7xUUXbeIisVv5O8HndeVLLe7Wp/62Qc2eLx/O/4Jbe9ymgU5kgH2XoZ8ZYgZPowrw2YexSMVHvXr9hCGrHXOViqq3WID1pwX7bfDh+Khks3Ou6ptrcgf5c1wgR6M/2Y3ejVTAtkJ0eHBir0LSqwv7MMYqSZBoaeHawe1+JLlTByjaDm3Uzw4WNNgrnJeZwOkIxcg8/EGB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(346002)(396003)(39860400002)(366004)(451199018)(2906002)(5660300002)(86362001)(186003)(8676002)(4326008)(6512007)(26005)(316002)(66946007)(83380400001)(66476007)(6666004)(478600001)(6506007)(6486002)(66556008)(6636002)(82960400001)(38100700002)(8936002)(41300700001)(6862004)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4VSJl0rS/ApE5JFTKBzK6qLnqYDZO1uv1ZwBrJLIjfzPNYNrGIBBBA0I8N98?=
 =?us-ascii?Q?YEpaGB5pNjJnKkgTY+B3Pb67gC2boXHh02RSM5LLtwOxlYlw/7pQ2GoY+bpv?=
 =?us-ascii?Q?esxwBRrq5/VEQWMZfLEhzob2brbkUw0tQRpLP5/HzMvLAPoT5VC9SGTNHUk/?=
 =?us-ascii?Q?Np9tanTs4miNKahLBO434sJgrsVqOIIZtDLQJLTWMyrbvR6Re8QMd9JH5J2K?=
 =?us-ascii?Q?QQAUajYeZKStVXDIIGDSBArvWiiZjj9es0/LWJaVT47niMZBeQ9STtD8A0+F?=
 =?us-ascii?Q?pkQG6Paj5GSkaMxfK9hl4P8Mr81N56c+c2SXcz8l/THc7u9BmTrIrTGeV164?=
 =?us-ascii?Q?hJp2JaaNvx0P/ofN4cKyA4Pn35l+fxDk8xOJ0OQJvcM8i7EbFetQLQ2c/QY5?=
 =?us-ascii?Q?6bVxtjPZHM/bqAccqGWHMxxxA38XRULZXj02VG6D3xgVrEgVys+0AO7VMobt?=
 =?us-ascii?Q?zPTBZ7TzjNS4LYMf7gD/CRXzDpYvFFwIjNbTehEkFscI5UwuJqPGBcK0EcR8?=
 =?us-ascii?Q?rMX+bWeE6c9r1rGKp92mv+AeQ68leC9oIcGy6YijUFoRISQ6GOW/FdWJi5OX?=
 =?us-ascii?Q?hqe2woW9DFY1kx55YurCoFZeC4yKvTHsJCk33TRhHAD1uMZ2GuUj4VsfTemK?=
 =?us-ascii?Q?UoFjMHdrsVLEqwwiyIToKKVbtbP9DbHSL5EWVdkI1CesmplhUv/4+RlNHSt3?=
 =?us-ascii?Q?FiD5DxLUAXNzwB32YatDDFf8tXz/xKYkWEUygj9MIcWwbMBrqICe2kL+YJqs?=
 =?us-ascii?Q?lDnbxvlkEc/M01D0ycfZQRDHJpIe6OggIXF1HxQ+7LoN30ZdPDAcknhfNdvl?=
 =?us-ascii?Q?9BIV2xQuYiCSYhZckPjWMAiYrTXQ2FWWp/iy8TSECm/DFz5rZwlnjYuk1pam?=
 =?us-ascii?Q?9l4eyXtuvsbDOImuE+TuAPsiJOuk3zx8KhdwGrVXETde443UPkY7hG6g1Coi?=
 =?us-ascii?Q?fdKObtg8gVFMA0EALIp7sHGUgELBpvTIxNM5QMNFKAYBOe/wc844TfWgod4Q?=
 =?us-ascii?Q?UFmWouCtp5yXlvAgOl2VAm+4YGBA31f9aG2wPsb4MdH+bRX8fYYa7WodEEKb?=
 =?us-ascii?Q?q1Zgg0feZYeBkF7xF+KWCLW7WRF8KkniyXFiyso/0FEQLLAxEd0mhDHeU3OO?=
 =?us-ascii?Q?kXehvzxH6YFnSOrYAgtTlh7Li8/7bbujJylDckTOYissvYxHzijqMn2IStcx?=
 =?us-ascii?Q?GEffx8HLqVHD5CGdQVlLBnvI/Ws9Ky+t099bwkCNR5oOtG1T8nVzyvSaUghU?=
 =?us-ascii?Q?zYahCeBnhbSeJIoGmcnqtlHPPxE2OgpqJamCJhWLiHJlzbtLEsRqBRDXsymy?=
 =?us-ascii?Q?JjoPxlF9uka3PqBiPJl1G1M+LXFSaI4zI1Zm6lkcilDUp5fAVmWZcL7djX5A?=
 =?us-ascii?Q?VTnffAu+axz4Po3uKzokB1FfghCuSGN0QnYeP8uMU8u6TivZq3fw1Vm7hLhB?=
 =?us-ascii?Q?1LAuZ1PX7BPTdf+Egwpq8gQU2ndsTzDl/LXHdOgRy57pb92/Ppr6KJygBcmz?=
 =?us-ascii?Q?lETUaQQVSIAOy9PumeRGTApYecykcKFMxwyi16P7DxYhoyUiYAhKhOiYX6u7?=
 =?us-ascii?Q?mZn+fhJ2bz8CDCEZh+MtsNVK3a0fMI5kDo3oNRY+cJGA2DBrsIa0gw5cL8JQ?=
 =?us-ascii?Q?uQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ba5446a-ba64-409e-df95-08db093f98cd
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 19:14:55.5525 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7uC5EEcrc4ZwabOTaSP8wQoaLOtpoKc9WFCcmuNjGqNzc5A9JiZfVJrAcLHHZLIY8eT1Yesn1bKjQmOsHHjiCaBQHOVKuWoOtltLDBAFz1M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6774
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: drop "ucode" from function
 names
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

On Tue, Feb 07, 2023 at 01:06:19PM +0200, Jani Nikula wrote:
> The ucode part in the init, fini, suspend and resume function names is
> just unnecessary. Drop it.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  6 +++---
>  drivers/gpu/drm/i915/display/intel_dmc.c     | 20 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_dmc.h     |  8 ++++----
>  drivers/gpu/drm/i915/i915_driver.c           |  6 +++---
>  4 files changed, 20 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 166662ade593..a8c91fda40a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8639,7 +8639,7 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return 0;
>  
> -	intel_dmc_ucode_init(i915);
> +	intel_dmc_init(i915);
>  
>  	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
>  	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
> @@ -8674,7 +8674,7 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
>  	return 0;
>  
>  cleanup_vga_client_pw_domain_dmc:
> -	intel_dmc_ucode_fini(i915);
> +	intel_dmc_fini(i915);
>  	intel_power_domains_driver_remove(i915);
>  	intel_vga_unregister(i915);
>  cleanup_bios:
> @@ -9000,7 +9000,7 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
>  /* part #3: call after gem init */
>  void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
>  {
> -	intel_dmc_ucode_fini(i915);
> +	intel_dmc_fini(i915);
>  
>  	intel_power_domains_driver_remove(i915);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 3b8e8193d042..f70ada2357dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -918,13 +918,13 @@ static void dmc_load_work_fn(struct work_struct *work)
>  }
>  
>  /**
> - * intel_dmc_ucode_init() - initialize the firmware loading.
> + * intel_dmc_init() - initialize the firmware loading.
>   * @dev_priv: i915 drm device.
>   *
>   * This function is called at the time of loading the display driver to read
>   * firmware from a .bin file and copied into a internal memory.
>   */
> -void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
> +void intel_dmc_init(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_dmc *dmc = &dev_priv->display.dmc;
>  
> @@ -1002,14 +1002,14 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
>  }
>  
>  /**
> - * intel_dmc_ucode_suspend() - prepare DMC firmware before system suspend
> + * intel_dmc_suspend() - prepare DMC firmware before system suspend
>   * @dev_priv: i915 drm device
>   *
>   * Prepare the DMC firmware before entering system suspend. This includes
>   * flushing pending work items and releasing any resources acquired during
>   * init.
>   */
> -void intel_dmc_ucode_suspend(struct drm_i915_private *dev_priv)
> +void intel_dmc_suspend(struct drm_i915_private *dev_priv)
>  {
>  	if (!HAS_DMC(dev_priv))
>  		return;
> @@ -1022,13 +1022,13 @@ void intel_dmc_ucode_suspend(struct drm_i915_private *dev_priv)
>  }
>  
>  /**
> - * intel_dmc_ucode_resume() - init DMC firmware during system resume
> + * intel_dmc_resume() - init DMC firmware during system resume
>   * @dev_priv: i915 drm device
>   *
>   * Reinitialize the DMC firmware during system resume, reacquiring any
> - * resources released in intel_dmc_ucode_suspend().
> + * resources released in intel_dmc_suspend().
>   */
> -void intel_dmc_ucode_resume(struct drm_i915_private *dev_priv)
> +void intel_dmc_resume(struct drm_i915_private *dev_priv)
>  {
>  	if (!HAS_DMC(dev_priv))
>  		return;
> @@ -1042,20 +1042,20 @@ void intel_dmc_ucode_resume(struct drm_i915_private *dev_priv)
>  }
>  
>  /**
> - * intel_dmc_ucode_fini() - unload the DMC firmware.
> + * intel_dmc_fini() - unload the DMC firmware.
>   * @dev_priv: i915 drm device.
>   *
>   * Firmmware unloading includes freeing the internal memory and reset the
>   * firmware loading status.
>   */
> -void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
> +void intel_dmc_fini(struct drm_i915_private *dev_priv)
>  {
>  	enum intel_dmc_id dmc_id;
>  
>  	if (!HAS_DMC(dev_priv))
>  		return;
>  
> -	intel_dmc_ucode_suspend(dev_priv);
> +	intel_dmc_suspend(dev_priv);
>  	drm_WARN_ON(&dev_priv->drm, dev_priv->display.dmc.wakeref);
>  
>  	for_each_dmc_id(dmc_id)
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 88eae74dbcf2..c9808bbe7162 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -46,14 +46,14 @@ struct intel_dmc {
>  	intel_wakeref_t wakeref;
>  };
>  
> -void intel_dmc_ucode_init(struct drm_i915_private *i915);
> +void intel_dmc_init(struct drm_i915_private *i915);
>  void intel_dmc_load_program(struct drm_i915_private *i915);
>  void intel_dmc_disable_program(struct drm_i915_private *i915);
>  void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe);
>  void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe);
> -void intel_dmc_ucode_fini(struct drm_i915_private *i915);
> -void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
> -void intel_dmc_ucode_resume(struct drm_i915_private *i915);
> +void intel_dmc_fini(struct drm_i915_private *i915);
> +void intel_dmc_suspend(struct drm_i915_private *i915);
> +void intel_dmc_resume(struct drm_i915_private *i915);
>  bool intel_dmc_has_payload(struct drm_i915_private *i915);
>  void intel_dmc_debugfs_register(struct drm_i915_private *i915);
>  void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 13bf4fe52f9f..57305bb00dbc 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1004,7 +1004,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  	intel_suspend_encoders(i915);
>  	intel_shutdown_encoders(i915);
>  
> -	intel_dmc_ucode_suspend(i915);
> +	intel_dmc_suspend(i915);
>  
>  	i915_gem_suspend(i915);
>  
> @@ -1096,7 +1096,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>  
>  	dev_priv->suspend_count++;
>  
> -	intel_dmc_ucode_suspend(dev_priv);
> +	intel_dmc_suspend(dev_priv);
>  
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
> @@ -1217,7 +1217,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  	/* Must be called after GGTT is resumed. */
>  	intel_dpt_resume(dev_priv);
>  
> -	intel_dmc_ucode_resume(dev_priv);
> +	intel_dmc_resume(dev_priv);
>  
>  	i915_restore_display(dev_priv);
>  	intel_pps_unlock_regs_wa(dev_priv);
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
