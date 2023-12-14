Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A4E8133BA
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 15:59:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2847810E2E1;
	Thu, 14 Dec 2023 14:59:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16FC710E2E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 14:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702565955; x=1734101955;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HR8HFNchm75iZ/6MBd0rHvJUkx6SseZmH8fS32nN6bg=;
 b=d4ZpHEDDZ9s0Noo5gkiRvyFvZ7iKbhrozwGWeDmCI1YZ12WBRqVTNSF/
 8PnFlOJinqpIapQi1MZaB1DxUjLTjPeAiVlgSQCRQ7MbGJaXlVcA7VsXc
 cZdifmT29vWUvLci/JZ+TYD+CU5p/EcNER0VJNrxzEOF4kNk/12tH3vAn
 6mXUvXDxUnYIm9ALl9PVP4/B4UGcm7owaIBKaNiCUrRoTY+EswcqbJg8M
 j6JrqDVJPA/iTa90f39sGtJURDcm0fhK3YYbMeGoGQ8hrbGuXPbA3tutg
 TmJ8EfSsfCBQSKv/4/YnbDujCLe76O3ijP38/IjgD5tgWhx+CKVbh3tOC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="426259717"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="426259717"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 06:59:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="774398704"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="774398704"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 06:59:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 06:59:12 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 06:59:12 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 06:59:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VzU+tUsabXgP0vF+Eo7z2zyU+PxfCExoYZyBvmJ54Rp88fWoqb/c7YQrjMtyMZDFMau2hz4j1MHp8JAoOG9gtF/TAB63KexhNqucAT4FTTlu9yJ8kITNBm7L8Y/MEBxHwE2EzjHY2a0EuiY+3UAp9qTCK4cO4mh0zYife2q9bwhAOaMgLprFMyxrfx5QOfROscLJjDCkO2AsZPyNsC54EFYSRgONlHJ2wZOkUBX8opT8l3W2tdWJg1KO/MgkyLjOZTkDMVshwnPPRGcXUpAMUIQ8OVJYKlq8RwDUhVzOo7IMEYDxCSDAU51a4SHNUlbnP/KMJYt0/k+xbfGiyh4S4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=31+LC0vzauQtkKSLm2Z9sOBaG3Nb+jZwtM8eLFL1GrE=;
 b=Efr4pHgCGRfuE6JYo3h3ZPX+UHMENhqpmnM9E2thCMhqnNcWsI9fwpS6z77H46PYv5/xdthTYO8mwvJwFIpyVOR5nR8Rm46QCyzil05lpPdAcUJXXz4YJWxyJhjqHE84g2gaQx90bB5lg6nnla3cjHKB1TbBEeDCAhhQ5qKlI0n2NlpFGUMs3GcqZrt6g5IKf56VZINdkkUhSaqjFoOzhEsHUBK4hcWT0pCarkJO1XA8FfvVTWidwFRD4i8S3/+iLWshm0Q/HqzAZiF9k6WEeYx0x//yOB3XUlEkPruE+vMZl4GU3NwWHejui+by1CCPgvATiXWzAjXxviBoTKTxTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW3PR11MB4604.namprd11.prod.outlook.com (2603:10b6:303:2f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 14:59:10 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 14:59:10 +0000
Date: Thu, 14 Dec 2023 06:59:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Shuicheng Lin <shuicheng.lin@intel.com>
Subject: Re: [PATCH] drm/i915/guc: Change wa registers to MCR type
Message-ID: <20231214145906.GT1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231214072629.3240287-1-shuicheng.lin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231214072629.3240287-1-shuicheng.lin@intel.com>
X-ClientProxiedBy: SJ2PR07CA0002.namprd07.prod.outlook.com
 (2603:10b6:a03:505::25) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW3PR11MB4604:EE_
X-MS-Office365-Filtering-Correlation-Id: 32e11e6f-8450-4e47-bfa0-08dbfcb53999
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 68Lv0IBk+rUNmBwjsAz4+RWCWHomzjnCbw2EHvTCpvztpTkdXPB61VIfp3O2mMEkvQDufnisAb9Ql/7gdcpXQGV8GDxesNPb2hXLXiCyRxzs2Rg7qGvqW1bLV9V1hWXGlgxrQ5AucYrgS6006JwQy7O8v5s3VE60HfAltH9LAbfTNPbaKkhr9kYX7TN94pmTWygZTGSvlZ9s6ezLAZlGyxZzyNkr+VsolrahsR5qgjbzOnV4gLlwih99EKWuOg4g2D0gfqPKlYl5+oiyGBFBrxO7FOa8Jw2oSvLoJPTDJr9TTP8Sta4uOVH8eTBfQFoW6xRYL7e6xYnNqL5svlJaum23j0xz0gHyCG3S3LToNeb+/HLg6EDOwgrq8df496SbBAdoytl0Sy6GPvfsAC2I9WGcNNiVZZXQ5kxx3goKEthaUV8GYisFSVKgyqEDv02xlR+n27rcEl7XrYXBrPQXMX1XBpqpfllfcm95eCzCTvfYvvffuqtMaEhefVqbo6eVibKJGL863UsxxUGMtfjG9ma8eU8LFbJUv1BRAIhd/YqKAyU0Yw8q6nMOS0MWw7+1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(136003)(396003)(376002)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(38100700002)(86362001)(82960400001)(6506007)(478600001)(6666004)(26005)(1076003)(83380400001)(6486002)(6636002)(66556008)(4326008)(66946007)(66476007)(316002)(6512007)(6862004)(8936002)(8676002)(41300700001)(33656002)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7RCq5F6vcOJIqF4+Y96elYBRFRFnyaH+ye/8bjSJriw3yegNN5S1U1xH1JEe?=
 =?us-ascii?Q?pyvAsoel8NeVIj6SgQYEvx6+7fHWZ0daQWPZfC/8G456KYBCdu6MQY5Nnsg1?=
 =?us-ascii?Q?O8Kr7w3ndDCODLw3ojCKTpLMvZEWYf6YhCWaRtwpgM1owN0L1LlTqI4NiWbK?=
 =?us-ascii?Q?hkNoZiS9N7oLdF923FiXxaIPC4axP7y/ssjrbvOwipAfz7YolnZc1jeW8mL0?=
 =?us-ascii?Q?bcT3NT8K5KAZz93XvYVtzKYUSOBJ6L7iFzCqFmledxkPznY3/yZmUiDDecux?=
 =?us-ascii?Q?/I+Z2JktOleISqOXizfPtHZAp3qmD0fANSXPBBgdFbk8XLjBPujvrWtNZEM+?=
 =?us-ascii?Q?XaLKpKmIM7vNMAaK5avPIw32aXapSzzlZBIcit/XTZ2ct6LTemtCnMryYlpz?=
 =?us-ascii?Q?WRLzUYyft4/T62Zw8Cqo0Xh5CbewB/fNdNw5Ym4/4v9vbpT/zjXDMofCj3wR?=
 =?us-ascii?Q?kjl4j4tj3Z3QhOpXvdMxGRx8nStRKodqSzAx0zKoMpF4u+rMqH5NsyKCWYAf?=
 =?us-ascii?Q?GCrDj5vUsUqskRw+NxmMVxyEtgZdta/39PF0j1kEGBi9LIe05BmCLyYuYDLL?=
 =?us-ascii?Q?L6dGaXsEOvzYS0T6sgmU4ryUzhzJkTPH1r2krmrXB9i11uFZM0Sq6oR1QyUL?=
 =?us-ascii?Q?9royOh6SDW3DsYWaIEC9rZHr/z3Q7g3pAastUEx7lntRPJWCO/Rs9MopSGfi?=
 =?us-ascii?Q?PzTw7Cfy9TxfEkZim5xC5Tt9xF0JQJfkz5VWa7lb1Gb/dBhODY0PIAo/kct6?=
 =?us-ascii?Q?OHcnZ4RyMpUKQkY82nLQNy4r/obndkuBEUw3GAC1ydjMLXr3IFTqEBTJKMVV?=
 =?us-ascii?Q?NIb/bn2C1zxsf+YQYF7ajq1vBWyXs/0tiV8CsmMCrIFQmrz3K51QdadePYO2?=
 =?us-ascii?Q?zvFG9zaz2+BykvGqXm6l6sSbUh8lZrWFi9/c20kTvDaNl8fFNmpTkl4fX4ji?=
 =?us-ascii?Q?QWhwNzIcIH2E3dLlOWv18RL6F+hkXm4EYkYMxYAcg1ioKpGq68gNZV872IHU?=
 =?us-ascii?Q?q5cXAbki+BlwuybTT72WfZrgjYyoOhGcGOgcW9L8R/1uplDjeeKWBOWKU39d?=
 =?us-ascii?Q?AnJDnGzF+Yk5A1EzLK0w6LwQA5jHZ4MC6d4EYLKG3GBttSaTICgvehPnrRmr?=
 =?us-ascii?Q?pg3gjT1Ka77wzhmdosG3zlHJHD+cJtrjFC36ZMg5BIPdd/ElC388FYSgf6c2?=
 =?us-ascii?Q?ZQ+NSfxe7d7mQx8VbLNgq7+yDqv+hs9t2Wi7nbM6lJPumhtyZbJwcJMaeGem?=
 =?us-ascii?Q?IGcS9dTkn/JoPTyo3C9H6AwkmKCUrDmvE676mEI9qLhzAqQq0llBzTltEBC4?=
 =?us-ascii?Q?pOj0rO5Ehh3LW14Q3D7I7pfNMtgtfrHdWEHCKtUV/1kVkyvEvG7F/H6zgKyd?=
 =?us-ascii?Q?9vmtWWkADOxJrnx03sYl1YR5e2xwB07tZFf/AvmanMfuiNoEapga2MP2Sffg?=
 =?us-ascii?Q?zDiYixKLhdGiFtUbEJIhijPG//4Cq8GFwi2R8Kl/NI5+DVVx6Zt7XubdG94x?=
 =?us-ascii?Q?Wog+K9dWHFMO0ZYLJrOMwf8HTwMBJX5M2V2p+v0RGXC2+p1dr0Afo9BQBxKH?=
 =?us-ascii?Q?O3EXk+csVaD329vL1055M14hFPEcalcDIa+K7RAwxAKc+k4FpSlZ1iL3Xv+E?=
 =?us-ascii?Q?uQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 32e11e6f-8450-4e47-bfa0-08dbfcb53999
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 14:59:09.4539 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7fope4Flv650C1lMjLIRsVOcc/SXlbH5Y6XlJFSaJF3K6yEIJsNavEyQz6ag+VRJSuAW36WLObx/LWrH6IArM7EoX1OPymsXBiFqgxp10IA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4604
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 14, 2023 at 07:26:29AM +0000, Shuicheng Lin wrote:
> some of the wa registers are MCR registers, which has different
> read/write process with normal MMIO registers. As the MCR process
> also work for normal MMIO registers, change all wa registers to
> MCR process for simplicity.
> 
> Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 63724e17829a..7409d3255cb0 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -377,8 +377,12 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
>  	    CCS_MASK(engine->gt))
>  		ret |= GUC_MMIO_REG_ADD(gt, regset, GEN12_RCU_MODE, true);
>  
> +	/* some of the wa registers are MCR regiters */
>  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa->masked_reg);
> +		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))

The condition here doesn't really make sense.  MCR registers have
existed since gen8, so why are we doing this on graphics version 12.50
and higher?

It would be better to just make this conditional on whether the register
is actually an MCR register (and needs special steering) or not.


Matt

> +			ret |= GUC_MCR_REG_ADD(gt, regset, wa->mcr_reg, wa->masked_reg);
> +		else
> +			ret |= GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa->masked_reg);
>  
>  	/* Be extra paranoid and include all whitelist registers. */
>  	for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
