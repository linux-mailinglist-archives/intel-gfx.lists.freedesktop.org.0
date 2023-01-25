Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2458367B1CC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 12:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAB9D10E7A2;
	Wed, 25 Jan 2023 11:43:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF4A10E7A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 11:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674646979; x=1706182979;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Yi0HjntQg0n4rXFwZ2WHFof7huCR96Pnzdfr678rjBI=;
 b=DhPGiVgUr7M7EpHsFnOOhPUcEaMRGWlGVFKyupaWtbmnGqBe3UJUJyn8
 KWoC8Ki/vjmuk9t7dijob2Qnki6p8PmgX4kE3Hu3DrFnVFBUCCzXlKIuX
 3PHT47ufUKNmgHjar0/YcsL8RRgpc0ZMmfnKm1fgHyWJEGSymvQgLLmzZ
 43EnGD9UI9FFprL5q7NyRRjJ+8lFvjRmQrkR8NgZ695k7Czk4N2Z0MF2e
 c9Ept11xJxNUtH/J7g9Ow196ucWhIY+SjrNvpwvg/prAkZuAGWV1nLjt5
 4gGH0LIsqKGg3kGPtMk/70z1KaOlf/opmlD1CKZehdXkkk3a8DXbgk7p4 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="412768824"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="412768824"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:42:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="786398572"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="786398572"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 25 Jan 2023 03:42:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 03:42:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 03:42:57 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 25 Jan 2023 03:42:57 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 25 Jan 2023 03:42:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hI/Ngigt3o1jQK+URZzuHgM+yTF9gRHYoQ3QvyjH873HDaIJopRrnaz6NpJ3xPasHTXrBtQvQuU40xg5E7iimV2S0UYCD1EnldY+Y5n5NqRFG95katHq1qYUub5PhuzV8uDUUTcOa5gC4U2Sl0JW8qJEV0Xh/eYfbd5m+pHsj+NV9LgLV80ZO6kyLa+p4UykV186HH2fe5+aKfFuykRiGzxt8mz16WhGols7CJa8zIo99NMajaTNeukWrQzJbQ9Yn/vm+TtnesyXo/nDnwk5y+3LUCfdwI3AqFyd4ltB0ft9j8PRlAkwFoLIq3nYb86ryigJWYf0cEFLg2AAAF4pRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CWANntyDP6aXCXGMRBpxOxyjXbRpICP5AF8ezHcac54=;
 b=CfO5To35RGDgYT9eO2Y0rQRTNnfm0Vmbbx3mEf7sFsA+0i8sbWE4nG1PXpGgyRIt7kPMmlM2Keh44oAdEwRRgpglEGr7FJGGSr2/YHRpFIlZLlT5zepVfBlf/GalbGaGc4GkObhNHEXfXN3SVrmwirUuPMqZNnqU/OLbsXJAnex2VM/PFz3AG9Yh0em7I5zNYKnVBqZr+FymAKiXMJkTfbiI1YvcwlxR/gOHF1ORmadwOJmlivRG/J1Am1LjSaitmrtnEvrX4HOzQhL4Sh+2vsSmmURZZLMNYM7PYZSMrh9lX3wLl/b1y8TimH1X4Z29SqCTBxK4iYNKOG6EyvvgcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 IA1PR11MB7173.namprd11.prod.outlook.com (2603:10b6:208:41b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Wed, 25 Jan
 2023 11:42:56 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::165a:9b6c:b72a:7747]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::165a:9b6c:b72a:7747%11]) with mapi id 15.20.6043.021; Wed, 25 Jan
 2023 11:42:56 +0000
Date: Wed, 25 Jan 2023 17:12:52 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <Y9EVvAhlfutawi6g@bvivekan-mobl>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
 <20230111235531.3353815-6-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230111235531.3353815-6-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: PN3PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::6) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|IA1PR11MB7173:EE_
X-MS-Office365-Filtering-Correlation-Id: 14ab038f-b509-4a3e-06c6-08dafec94c95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wIRVO9EC40k3Hc9r9hjMsnkZyLSiQSR+OgubeOYMludsSpE0D29F9bbScWqoY+gfIGcjQA4yRUUWTc9gM0af3/Vr4qUzuRcfFDFArD0ZFYoxfN0F9mu8Hyf8XPbrgpr7hh+xbARoOOeJ+xo6x03ETtyRxTW1lVyKk1RwhdRwMZRnvU4LVCwUSTBXLHJHX3mt/yiSxcWAcsIvM46c1RTwvmLd+l7hJsM8KcwIAmRLK2B9oKwMo62MrdD1KN2t0awjZP7AI6Uk8U9jjNJUMxl1qiIdE3DO+HBew/2o1tzUezdNA/1PCJ3gfPSqOeO6h8qM/ml5x+9CmIXi9EVHKY3MVMrM2cGJzdQH1Rz1Oe2wQMMCDdyemRaIb85bnX7Mk+lgNe018wf74MM4BzQ7K73kRBiC5Uq5xPN5txQtlhuCnA4r33ibOQ2DtHqqVVgtb5FRlsXeDK1dGyl/8CspN73IBRTTYc6/FE73+wl2EbIiQ/o3nVjfT+nlqde0xHzEAhH+1E2ndOdLsMUCrwhRmpShdP5GjQ/ZxTFw2UfUKTDGLEDSChkfJ2ZGLvPUlPFIhnbmaLw2Xi11wJIjZa4Ef6rG1TtsUACepzBHn0HPDXKma4lTXRZhnS92yVukmvayOOMnbTFLva+9NSY4m5a/u6T8NA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(376002)(136003)(396003)(346002)(39860400002)(366004)(451199018)(86362001)(8676002)(478600001)(66476007)(66946007)(44832011)(5660300002)(186003)(33716001)(2906002)(82960400001)(38100700002)(8936002)(41300700001)(83380400001)(6506007)(316002)(53546011)(6512007)(26005)(66556008)(6666004)(9686003)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2oxOGcvU0VrTW83MVhDZFRBRzJURGNKb2IxUGF3a0NSV2tGSGYrcGZ3a2Y1?=
 =?utf-8?B?aVhqUTN0a2pkY29kTGtGcXJJa2tiK2JCenhtZlU4MnBrYTVUWUx5aS9GNHZB?=
 =?utf-8?B?TjlUUXRMT2RuT1NuMjRuSVM0Y3BlcGxHVFB1cXRiTVoyVFdHcWg4MUwrVmpn?=
 =?utf-8?B?YklmSkpJRjE1K0RTdU5TUUMxSUkyYXFYaGRnKyttdG1NVUdqV000bTd4VjM3?=
 =?utf-8?B?Z0ZaNnZPOStYeFN6bmpXejB0UXpKUHZaVnlpQW9XWVlndFVSS3hNTkRPZnpO?=
 =?utf-8?B?UnhWd1JLa2wvWDcrb3pJL0c3U2RxWG4wa0JrcG9zUUpWSnI2cUJkSTNyQlZp?=
 =?utf-8?B?ZFhKN1ZLVEtRZ1hjeW5SM3ptdm85UUhsNGZ4R3hvNExlMlZlcnlyZkRhZnEy?=
 =?utf-8?B?VFRuK1JVcU11Kyt4TUxjSnM4UjFLYkhaNXhjT0M4Wm9IRmI3YlI5MkZyQlRU?=
 =?utf-8?B?bXBjSyttMmtoTlFJU05RNldvOFZWamZvYnlXQ2hJNW0yVWhrYk94TGF2d2Rv?=
 =?utf-8?B?c1c5Mmw2VXFTMGgrR3JreFowYk5sWTU1Q2R0OXQrK1JDV3dvYllzS2UrTGlr?=
 =?utf-8?B?aUtrbDdMSThtclZyTGNVeWpRT0RzeGxkdTZZQUptMkZUc01weTdENXp0cXRJ?=
 =?utf-8?B?aTBucGY2UnBha3R2N2ZlUHpwamExQ3Q0U0NodzM4TGlEeXVDb3NjUzlmbFNX?=
 =?utf-8?B?cUFWeWhwRlJxbmZ0TmlxSnh6OUVsS3lSL1JkdXc5MVI2eVI5Z25LZWpHbDB5?=
 =?utf-8?B?S3Iram1BMVJlRFhGbE9ROWNEcWVxVVpVUFNLVmw5U0x0VnNTNjd4RjRaWDBz?=
 =?utf-8?B?bjQ0NTA2ODFwem43Sk9SRXhQZDU0c0dZS2NNam8zS3Q3ektJdFJZSlhSM1gr?=
 =?utf-8?B?Um9lMkV1anVGNGZTa3JZUDE1UkczMnMzRDlaalBEeEs3ejcrL3dpbTgyeVI4?=
 =?utf-8?B?Wkg0RVZYRytsUDltUUk1eUpLQTNIZGFncW1aNkgrMFpoMmhvZFlqU2J1REJu?=
 =?utf-8?B?RG41ZGJ5aG1UT3ZKVXJkRWs4bzdWVU5ZVXFBRTl5bk9tajdVcU1QSnBXRlpV?=
 =?utf-8?B?ODFNSUpUNW93TU1VeWhteitmOWQ2YURpalRUeWJsbVVSQWRYeC9qYzIxWVhT?=
 =?utf-8?B?WEpwK3U3NVY1MHh3bjVyd3p2SWJxR1JnYUtlNHhBa0xLdkVQRXJSRU1QRkh6?=
 =?utf-8?B?by9mSDZwYUlXL2hQZHZTZ2tZOWw5c2Y4UFdsNXV4MVE2Y0twS1FROXBRN2t5?=
 =?utf-8?B?YVlnL1l1OGx5RVZFTVY5WnZmZkxFSFVDNURiYThkWGVvblBrdll6SVVrRE9T?=
 =?utf-8?B?RCsyL3VHZ0RVV0QrZGthckxIK1g3SE16SHI1ak1PNU9OSjdTUXlibkczNjUz?=
 =?utf-8?B?aHVBUVJOcDNrQ090a25oTnlRWnZQamVrS0J0L25GOEsrKzZscEgrUURlRnZB?=
 =?utf-8?B?RkZFMEZhTS83QkREMVphMUExdmY1eHE1Vk9lR1NMTmtjM1lCeXNEMCtwVHVz?=
 =?utf-8?B?YTZ4RGhKTlNLcmlWTFhFWXdsMVE0YmM2ZjAvdmczaW51WXFnRHBVd3NaODVj?=
 =?utf-8?B?Wjd3YzFYczRodlFwSjVTaFY2bU1BUk1WdFRaMm5McXVEd3ZiRWlrSGNHb2lB?=
 =?utf-8?B?TGgrck1yWFlhVVNiQ0Judyt1bE5NMDQvcTlPV3VIVTNydFpqem5sVXVXekto?=
 =?utf-8?B?WVZ4a21SUEVkTk05dlErdmcwa292dE14dzUvUFRNM1Fqa1A0bnlrWm1pa2ZW?=
 =?utf-8?B?UHFESFdYVWVRdXFVaXdWMnd2b0hoWUNmL0pPQWh2bmJJeDRUdWpONjV4KzRs?=
 =?utf-8?B?OGZGRUt0TjVRN0pDTmkyL2hvd2U4dVZKSC9MMGdnZUprRXVlSmJ0SWRqVWc3?=
 =?utf-8?B?K1pkWTBYdlRFQVRBaVpmWStTdk5oWDRTZnB5RVREOU13VFNmV1RJYWJURTFJ?=
 =?utf-8?B?S1VOeXFuR2REUWxPYVBwWUQvQnFONi9SNXNFUVh5SW9SQ1Q2UVBJMVRMN082?=
 =?utf-8?B?MWxERHFsRnhmVnh0bHJNc3ovYWtGemhvaWU3WWlSOVY0UHpJS3VPQWFqV0d4?=
 =?utf-8?B?TklNcE9RSDI3a0ZZYys5VVFEdklmeUVHR28rTzh1UFFMY0Uyc2NscmlzQUEw?=
 =?utf-8?B?anhFQ0FYem9Cbi9CWHZYWlNGU0NJUHpZdS96bkY4UndNMmF5OC9GV2N3Z0lV?=
 =?utf-8?Q?wc1D33hAbXhwYgyuvWfjPOo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14ab038f-b509-4a3e-06c6-08dafec94c95
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2023 11:42:55.8375 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vjbHw4r2n5a5BvuE6h6eR3cckHWSNCMbBLuAWtK0stMN5bDfz1mqOR+tGswFDjt1c0sWR9EVSdvSKszcqT5RxzEEqDjkgSMepQx7enIzULTxq3kgZ6UxDzQHL9Mtt7yR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7173
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client 5/9] drm/i915/gt: generate per gt
 debugfs files
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

On 11.01.2023 15:55, Radhakrishna Sripada wrote:
> From: Andi Shyti <andi.shyti@intel.com>
> 
> In the view of multi-gt we want independent per gt debug files.
> 
> In debugfs create gt0/ gt1/ ... gtN/ for gt related files. In
> platforms with 2 gt's, the debugfs would be structured as follows:
> 
> /sys/kernel/debug/dri
>                   └── 0
>                       ├── gt0
>                       │   ├── drpc
>                       │   ├── engines
>                       │   ├── forcewake
>                       │   ├── frequency
>                       │   └── rps_boost
>                       └─- gt1
>                       :   ├── drpc
>                       :   ├── engines
>                       :   ├── forcewake
>                           ├── frequency
>                           └── rps_boost
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    | 4 +++-
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 2 ++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 5 ++++-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c | 2 ++
>  4 files changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> index 5fc2df01aa0d..4dc23b8d3aa2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> @@ -83,11 +83,13 @@ static void gt_debugfs_register(struct intel_gt *gt, struct dentry *root)
>  void intel_gt_debugfs_register(struct intel_gt *gt)
>  {
>  	struct dentry *root;
> +	char gtname[4];
>  
>  	if (!gt->i915->drm.primary->debugfs_root)
>  		return;
>  
> -	root = debugfs_create_dir("gt", gt->i915->drm.primary->debugfs_root);
> +	snprintf(gtname, sizeof(gtname), "gt%u", gt->info.id);
> +	root = debugfs_create_dir(gtname, gt->i915->drm.primary->debugfs_root);
>  	if (IS_ERR(root))
>  		return;
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index bb4dfe707a7d..e46aac1a41e6 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -42,6 +42,8 @@ struct intel_guc {
>  	/** @capture: the error-state-capture module's data and objects */
>  	struct intel_guc_state_capture *capture;
>  
> +	struct dentry *dbgfs_node;
> +
>  	/** @sched_engine: Global engine used to submit requests to GuC */
>  	struct i915_sched_engine *sched_engine;
>  	/**
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> index 68331c538b0a..71b1f23b64c1 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> @@ -542,8 +542,11 @@ static int guc_log_relay_create(struct intel_guc_log *log)
>  	 */
>  	n_subbufs = 8;
>  
> +	if (!guc->dbgfs_node)
> +		return -ENOENT;
> +
>  	guc_log_relay_chan = relay_open("guc_log",
> -					dev_priv->drm.primary->debugfs_root,
> +					guc->dbgfs_node,
>  					subbuf_size, n_subbufs,
>  					&relay_callbacks, dev_priv);
>  	if (!guc_log_relay_chan) {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
> index 284d6fbc2d08..2f93cc4e408a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
> @@ -54,6 +54,8 @@ void intel_uc_debugfs_register(struct intel_uc *uc, struct dentry *gt_root)
>  	if (IS_ERR(root))
>  		return;
>  
> +	uc->guc.dbgfs_node = root;
> +
This hunk is implementing a new change to what is decribed in the
commit. It is actually moving the 

>  	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), uc);
>  
>  	intel_guc_debugfs_register(&uc->guc, root);
> -- 
> 2.34.1
> 
