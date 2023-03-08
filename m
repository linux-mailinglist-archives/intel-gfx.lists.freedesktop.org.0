Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BBC6B083F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 14:16:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79BCB10E147;
	Wed,  8 Mar 2023 13:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E0610E147
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 13:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678281411; x=1709817411;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nQ5QYIGpFDY1vGnX0H6ZEsnOrWK9JPQ8TRO/M1wx1bo=;
 b=asNP70xvbAA03zHOSpiRW6h2SzBEqLjqS+2mMlmx7YLPKd1lDaFwbBRq
 uN8+swqfLvrnJZgWtWC2puZ2lO4gAAlGGK52RH6hZbvTPN9ebFYsh/LQg
 rH9PHRTGrt8r6T0o1buJJdqQcZziyNX4Z7cdDylIsyRsl70/Q5sIuSAeX
 +v+PJ/q5jRZH6hyItB/IMzFYNcvHetv/ys8T27hahZi4UluwoQCOy6WOL
 14aNIG5UhKDwKJApvoTC+xPmuAs/kZLJAjjbj6NkCr957elXOtIBMO83n
 wCzw1TxBZqU84ayHx1JyjxqqL6buZRiiD4RrPu6AaDrCADvnhgB6nL6rV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="319979449"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="319979449"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 05:16:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="765986541"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="765986541"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Mar 2023 05:16:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 05:16:49 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 05:16:49 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 05:16:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X5zGO5/y0k+GzfzkonK+CZ9UWbBWgiQm9Gm38RRlXr8TLpWakPeTBT3SpV67g2MNXbCZqOcKTWGG1tJ2vYROHdYsfefFuWMio27NQFyXUJxsdGHVUaLXz2GKL+XzPZ9crQmCh3JLm3du3JJ/pKxOnXYqEvvfifUK7zZf1RHqReXZ2hrNW0yZZ576tZzT8aMTytlPoLUJ1GGL9WJD9ypAHaqWwT6dc5foZCBIt7QdagJjCF5yBzHKu6yj+QtB6ogQhrW8jQPihVjG+kLDvI5j9D2UxFP6R0Q1BQg1ZQU0dciNyA2QI40I17nsO00mCnjc3CUwNotBuUbQXE1pPRxm7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+xq2VueDBPxbWdhFZ+Y07QkJ4gixrHseqbJqj6+Pp0Q=;
 b=VWydvrUjYMh+WW8bGm/wWPJ8AZq/JR7P9KImOMt5hDtCs2pI7bhMueFFhXnY53PNQ7GBxxyLMJl9+8PwVlKnQkA6h+nD7tpraG1KhGSauBKHb3NpcA+zKuU763oSAjfqiib5eLZzqEZZFXnk1k5nO3h4m3NmQ8ioxKIux5ARwelvcewZ+sZE0IaYCOZkTg+OUX6b7yMAW5oAdbpKBuxNpeVneF29gmhIIKeq6L4ulEUMHkjdGzVAXoBluLSJMX2S3iSZBbbIvLJ8Wlwa3xvclWKDKbiv8k2y9j4GJ/7C1iyLHi7ZLidZNpIQsw3YUjagr2YuzkwWKgxTFPL+zj8VEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW6PR11MB8311.namprd11.prod.outlook.com (2603:10b6:303:241::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.17; Wed, 8 Mar
 2023 13:16:47 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6156.029; Wed, 8 Mar 2023
 13:16:47 +0000
Date: Wed, 8 Mar 2023 08:16:42 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZAiKuulQBp0569s/@intel.com>
References: <20230308112349.1882182-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230308112349.1882182-1-andrzej.hajda@intel.com>
X-ClientProxiedBy: BY5PR13CA0036.namprd13.prod.outlook.com
 (2603:10b6:a03:180::49) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW6PR11MB8311:EE_
X-MS-Office365-Filtering-Correlation-Id: dcbf5c4b-252c-4a54-5646-08db1fd75eef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cfjCQMJRpI9JNLqOH5OP0MwCHibiMCjl2Uk7gjQ2/3GwDffhoxJLtwCxe68LGTla2GcN9CGPxtHvTeeXbMGUZ6uLr3zbJ5vG7l/cF9Ryy5uBVEsAw9k9/BtLb7EQLylhuTNC93q8ZccIbFwbWAqiD1sVdmr4MwKZmOpIejlkyfOlMdgHUkNBFKU+peBBlp3Lw6yzYeMj4wuQ5ytjku54xCMEyf2A/m39idDSq0k0Sb5Lw+JhKVxGNSO9PTf5bTBtKJlpcZ+LQqcf2YxxOS7xV+du+bsL0+NXq8JkpZbYz9yqCeR20IpQjnDadnf1fDAryADczVPKP0bjNn8+8MEDkwOkNz7UXUKz8mxanZJtG6p9+OmfTS+3hBCwtOvVmU3C+5H1fORoEsU+CPR4UJ7vduI8GKZEDF+b/NmTr2YtCsomA/3XguMzFTcV/YRlP85oNImAjayOj0jxdpsYJaRyRLDX8SysakFb5yMaHSBPS2EDP8YBpZngaSlUj7rhywDssWqENFvgTi1LLewG8GowzLYDDcr2fX0NqkcLkbsXHpgfxWpNtZbciBhclMQ5iyYqfdBa82F55X6vNkADKj6g8c83veTfIV4k6XX55joz1b7EejGDpbSaSFe9c2/bbVeoIUv/drk7oEEUE/v4MVH/sg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(39860400002)(136003)(376002)(396003)(366004)(451199018)(41300700001)(86362001)(6666004)(66556008)(66476007)(66946007)(4326008)(36756003)(6486002)(316002)(37006003)(8676002)(6636002)(54906003)(83380400001)(2906002)(186003)(44832011)(478600001)(38100700002)(82960400001)(6512007)(26005)(6506007)(8936002)(6862004)(2616005)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vp1OckNPqXk0kZHpCDRW7ZIf1rFpCo/0a7Xz7WHJzsYx8dEzai4A4q0blJDA?=
 =?us-ascii?Q?bwha4iU/d5GQLwFZ0zUrOGBPyAGX2zmDryuNoMFd9QCczJbj1Ndk/Md71COY?=
 =?us-ascii?Q?I2GhN+M2c4CuFVMhDE9P/stI/JLfTLEFvbW8KzmW1IXv/C0JOxtHDHfdGDap?=
 =?us-ascii?Q?UM9EXgKwXRQApGenifpsSXhFTP6VvVcf0d/1uogTpP4BWhWneyeVIiUkQDhW?=
 =?us-ascii?Q?U9/f2AE24Xq68DaYE65xZJ3FaxtB83lUglWmbF4dcu5/pYcb50Oro1CIeLuk?=
 =?us-ascii?Q?5ubDE4C1T/aO1XFGT8Q4ywzYNNmz0AeulS9v3TDP2oth3G+veEHnfWqDpWqr?=
 =?us-ascii?Q?aXSlsPCS7RX0kc/UABGDeS+u6WtIDS/xNUvTHdPlx4N9uqNa1asBAHjXMaUw?=
 =?us-ascii?Q?14gBOh9Se/r3RYi6wVyb/zstntd34ddaB8+5VliwwhMKqHu0fsyCYfgkfoMw?=
 =?us-ascii?Q?+jUb8CQVQ53qlTSLBJIm3C9AbHHnwc54PI242oHi21WhJGPcoZOe8Thkqyqr?=
 =?us-ascii?Q?sJrsnRm5TNKDz3MRSznFHYlFXDZUjwrijl4ipigFFUJdJ6zKDrAfRGju01aJ?=
 =?us-ascii?Q?sdwIE6ASGHO5fB5x68LaOTRInGtt4u9Ex/gpEDWBqZHfBX4CykmbrGW2X+n1?=
 =?us-ascii?Q?2vJrIbD834A+AoVulR3lrx7DoWM3GAz0v8GbPUfv89ZBRlP/OLpuFSjnecCn?=
 =?us-ascii?Q?8O+AI83I49z+fRFHbsFnuip5Zpe+8PB2ES2aHzYRMUM+UziU8FwSFoajIxsh?=
 =?us-ascii?Q?R2GPk3BNIvzDlLtREoGIVmXR9fo4GNwMCsz0hz4gNerU7SDagroSyPvdLsoT?=
 =?us-ascii?Q?0qCs9HNfV5qJ1UzthswN43CY1vU89AdYhJGqsu7FKOlL06Ry61BEr2e7pDYg?=
 =?us-ascii?Q?WE8ZGqBxOIQYzhzdYSijPOlgz5Bjwpf4XOjUnAHxYfQY0BOaLbTeCM64crbK?=
 =?us-ascii?Q?hgGTx3wF12/Xa9lH+zdFyNSn7438nA6P/dIR70Eoe8dJ9u1y2so1KyyIOaCr?=
 =?us-ascii?Q?dmMyRCvdOLSZgsXACJEQ13a0qk2vqRbCjlSSuxK3OSQeZ2gOwIxSyXlCvdJM?=
 =?us-ascii?Q?34oKcWb5p2LjQGyADnRNXZBJx8S6B7l9FBNEoSa2+46K5IeOO2v9afnrHdj6?=
 =?us-ascii?Q?PKtDGQchaO2VbRkFwcQ+3x/N4fm0oJ/e/hNaK+hjp/iyYxIe+OUhlLuyvbRS?=
 =?us-ascii?Q?DE9YlabkDzXbUPc6omQZ/ChYHJSGLHfkTDbW/rXRxlPDR1qKaOwYOBPLz/Uu?=
 =?us-ascii?Q?GznqNDKJ5/7cuus2kcFZ9Z4i6kZ4NqqgM+kQDdB+jKbR1HBoGJ1eAJhpHSjb?=
 =?us-ascii?Q?ONaaCgByNpxdfL/oP2iYM3o3lznGg40yEvHaoh6yifePD+mNJBGbk+2RAwJk?=
 =?us-ascii?Q?x9P6ydMkL9vlPCQg2DSQW79poP+HNz5njz72krI5LU5kxfNSTJVQoE3GHqNZ?=
 =?us-ascii?Q?0nJi7Y3MhdHp1AhdsHzm8eeZFaHWutBpYlULAh5a8WtxYthGEMNSUb0+j3LC?=
 =?us-ascii?Q?rIZ1MDstaZV8j2NjzFUMED8K8fzLf0JlqSd8F5Kc0ZNXw8p9PeQLHywDaFbQ?=
 =?us-ascii?Q?Hh6sZL9sgWCUVYRWgVQmu/YFAWsgmM6ocut9JDhZFP6EcGNeEPOn8LjVmHoS?=
 =?us-ascii?Q?wg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dcbf5c4b-252c-4a54-5646-08db1fd75eef
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 13:16:47.6732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8ZtvnRKyE+FUpy6Nf8Q2tXEh1jnCkj0AcnAaJdYmbQaM18E9Jim/6nsoyKvEkeBwJ2O8IDZrfrOADQSFW8HR5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8311
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: prevent forcewake releases
 during BAR resize
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 chris.p.wilson@linux.intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 08, 2023 at 12:23:49PM +0100, Andrzej Hajda wrote:
> Tests on DG2 machines show that releasing forcewakes during BAR resize
> results later in forcewake ack timeouts. Since forcewakes can be realeased
> asynchronously the simplest way to prevent it is to get all forcewakes
> for duration of BAR resizing.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index 89fdfc67f8d1e0..5a01dc6ca08324 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -54,6 +54,7 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
>  	struct resource *root_res;
>  	resource_size_t rebar_size;
>  	resource_size_t current_size;
> +	intel_wakeref_t wakeref;
>  	u32 pci_cmd;
>  	int i;
>  
> @@ -102,6 +103,14 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
>  		return;
>  	}
>  
> +	/*
> +	 * Releasing forcewake during BAR resizing results in later forcewake
> +	 * ack timeouts and former can happen any time - it is asynchronous.
> +	 * Grabbing all forcewakes prevents it.
> +	 */
> +	with_intel_runtime_pm(i915->uncore.rpm, wakeref)

I believe that instead of the with_rpm you should probably get the rpm ref here
and return after returning the forcewake put. So you also ensure that we are
not going to suspend and allowing D3 during the resize.

> +		intel_uncore_forcewake_get(&i915->uncore, FORCEWAKE_ALL);
> +
>  	/* First disable PCI memory decoding references */
>  	pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
>  	pci_write_config_dword(pdev, PCI_COMMAND,
> @@ -111,6 +120,9 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
>  
>  	pci_assign_unassigned_bus_resources(pdev->bus);
>  	pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
> +
> +	with_intel_runtime_pm(i915->uncore.rpm, wakeref)
> +		intel_uncore_forcewake_put(&i915->uncore, FORCEWAKE_ALL);
>  }
>  #else
>  static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t lmem_size) {}
> -- 
> 2.34.1
> 
