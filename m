Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B31254FBBD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 18:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36BC410F3F4;
	Fri, 17 Jun 2022 16:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FD2C10EB83
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 16:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655485046; x=1687021046;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FnQtsz0h0b2kdb0gPrFfMjJUg6wyl9JpgWO3xdbsL1A=;
 b=hZFfeo+NnKwtZTUQYxubcfS7VgbeBPzzsKWGwSAuAMVOBdfFRFI/C+vv
 dxPpmEYbEnUpt4Id5rP4r9nwzHCOkHSGwpxDLKHZ+xILCROT2ac/VXIjE
 jNZA3XPNyoN2JHW+6Y2SBY7prAIrGr/fgJ2TsJDCtIKFKsDA4OpVXdP+L
 wlQ41sqGAkm+1GdQK5usoUIkAhAyF4SsyQxGksJFGxMfigUphDnCZZ2IL
 kfpchKAw5MavUqVFb3YF0+KxeSgTG0ao8x3cI2I5i+ObyE3Ns8PFa8vQt
 I92yP/49jKxzbyXuxNiz0GYaTbtrdOs7vW3Zeu9ptkySPNvVah0DjUfqi w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="304934014"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="304934014"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 06:22:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="560468674"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 17 Jun 2022 06:22:07 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 17 Jun 2022 06:22:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 17 Jun 2022 06:22:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 17 Jun 2022 06:22:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lx/f6w+0R+QxsaSzkbSDH/N1aNS2ntL+DgFGqiWRdnlcITKjv/XMGQ6F5G5EHAnOMA/0cAz6FhjXCZ0M1B4n2coQ5n7Im/26yd5eHAseZ2Lk62px2IMj4zwCaexGVdoBUgrbYDHHm9UcMzH+i01pTb2JCg03uQFwWKJ6UyLK5/FcXlRfHUl9F+cL84k4YQMrheOcLNjVAI7+uXM5Sf6f+C0c/h5TDD/A7XC+PEkjixNN1NQN/MovFe+d5wSbIpuFs1bGh/IPBeRgbPARKCtWoCbW0lkiaQpNa5UMlI65KR6fihgVSA9Rlp46Md1i4atXTMMCVV4DpW5lLaOUI4ymdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ngf8cEG0RRXYSewQMsAr9udst3CWCyk6a0wFCFxh/GI=;
 b=IbplWDG6HaBPckMNq/GqS3Gq0GWzNiHTfNn9gt70yQcpuVyXvMNc/ISppTB3sfMdGcL9bfI+cMCqTgMEPmRXXSyZOdVGtf6/AiREp/RKMEDxico4RjxfdeUc4YE8IlUbneJWsDP3SAz8lRT6dMywGS3dJV3uLkq4GMUGZxYDMbeunk6RZWfaAiepT/TOBuYOJ3ZVD0AB4B9MydM5Vn3PNanMXs+uC56qLXJfN3+KLbEOpM0mpiGmKEAi4e+k1DhdsU2mkj4gtpgJ4SEETjKnpKpR6sN7K8gcqINib+OBol2h75h4LNlHdWZeEX3kOEkSnOqP+4U4uMJeuQqXxp5mqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by BYAPR11MB3719.namprd11.prod.outlook.com (2603:10b6:a03:fa::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.17; Fri, 17 Jun
 2022 13:22:04 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1cd:c94b:8c0d:7d0f]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1cd:c94b:8c0d:7d0f%5]) with mapi id 15.20.5353.016; Fri, 17 Jun 2022
 13:22:04 +0000
Message-ID: <bd0dec62-cc7d-9150-9ef8-e04ffc201901@intel.com>
Date: Fri, 17 Jun 2022 15:21:59 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20220617115529.17530-1-nirmoy.das@intel.com>
In-Reply-To: <20220617115529.17530-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS8PR07CA0044.eurprd07.prod.outlook.com
 (2603:10a6:20b:459::17) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 716571c3-03f1-4eed-9ddd-08da50645e51
X-MS-TrafficTypeDiagnostic: BYAPR11MB3719:EE_
X-Microsoft-Antispam-PRVS: <BYAPR11MB3719CCCB9C6CBE2E4193E0D099AF9@BYAPR11MB3719.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lsa0yNS7wnwNy1FoZXBBuAQlWBNaDMZUicUIPXnSyQp+sGTKH92xYnMeqOvDXuIcoWL0/i2/eytcQAmaBtx6+Lrw/vNVlRpX9EFcsOpd96T9PCGSlqN6BWlJaLxsMezFuNiyGV7QeImdeDNtkvAHKORMQsQ2DYBlWWkVqe8KQvllmhvwztLGrKcXDdEW+8410vD5E+z4B4ROTyyNfzzNHIP0KbYJeha8LPN8TLX1PqfYTjfaoV2mep1RqjT30zVNfLz0p2GQka1EwGlLUs2xY8zD+dnt7RdqVwnINZEu1jN1M9cFyWIUa/Y0XEm5YkYBNAtLndpk0r1COKXQA//3nsiWyDAfJXgqLZ0zg1Bv5xbPsbckrLcaRv/x/BBWmbOw6BTfebNJJ0CfUE8XIoxY3Sy2fx9TbmEvaHDxHs3mkl2J2BRazv83ggkaLFtT2pVS2EjxlptpqPwg6Aygu/Ikg5LndffrFQWsiJirmWo+cWZeT5J9GD1nyFjzT+281cYn/qJjZ+Ad2Vz+Gp9Ar8z1N2Mmg6mAvJRMfz6DWFgQx9xjQ7MKahQQO7trlBLkmPSnNBwUJHF0VRkdSOzOtQskWjlMxyTj6+vg0wxWkwpSr+fNhkCsG7Cro2i2Idk4bmyXiOG00UViqJ25ujq1U33C2FpnOFUAEoz9kZ3NQCpyxk5VapWBxFwAPn89EBD3TZu9hQ+E9YOjIoI77nx2g6GoDgRWnBn2ogzW+DJ79vys/ng=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(66946007)(86362001)(966005)(8676002)(31686004)(5660300002)(498600001)(82960400001)(6486002)(36756003)(4326008)(2616005)(66556008)(2906002)(66476007)(316002)(6512007)(53546011)(38100700002)(107886003)(8936002)(26005)(83380400001)(6666004)(6506007)(31696002)(186003)(6916009)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WjROb0tYWVNtRWtyVEd3S002bkhaSkNKR285ZXlSdUJDbDdzYW9iZUR0QnRZ?=
 =?utf-8?B?dTcrNWwySWMxTFNhUWc3aWM3Y1N2Q09Oa0xRQmtUOHh4bUhZNWlrcXJmN0Qv?=
 =?utf-8?B?Y1ZmT3J4ZXpMYTJ0dktSV2poS2RXdGRCbVJQVVRjL2N4ZjhHWE5JK2JUOEpx?=
 =?utf-8?B?ZGpEMlVaWGxTKzBqMFhFODVlZEJUMTN3bUlUQ2pKWjZxWmlrWEQzV3FBeWxj?=
 =?utf-8?B?TVZTR1Bmc09wVHR3b0ZVS0kyc2EwbzB3V3VBWDlYaXdVczJlRG10Q0VMdFho?=
 =?utf-8?B?WnM3OHFIeDl3Y0NDS2NqNzF3d00rSExoajdKd1ZGMVdrY09uQU8xTFRvREtD?=
 =?utf-8?B?aElpT2VnaklnT09yMFhQdWJJUXFDNFF5cGF0L3JCZC9rWUo1cU1ubDcrdHZk?=
 =?utf-8?B?SWwvWGlaWG0yc3lJVHdYbEtJajlUdkxNRVVEZGtmb21DWFJ2ZG9XL2ttNFlN?=
 =?utf-8?B?Y2lhM2VBTzZ4OWg1YXN6WHhLdFJISDFpZWM0aUNncXhDTnhSWmJhT1MrL3dL?=
 =?utf-8?B?Y0tiRFh0UFBicGdHL0ZxTGVISFJqbjNoUTY1SUtJU1hSZUd0c3dCejNkWXN4?=
 =?utf-8?B?MFFhVlI4VndIMXFJMkFKVUFTbVFPTUpwZXlDWEw2L3p0VzdQQjJXeDJ1M0My?=
 =?utf-8?B?YmNPRU91VXZKV25lMUg1OFFUTzQwallLb1RaT2ZxeGxpbkhOUllNbDljejhD?=
 =?utf-8?B?N05jVnkxM3hDd1hFK1ZwaVBxeDVHYWxteUdoODl6SWdsVzNZT0t0eHpadkVQ?=
 =?utf-8?B?SXZzRU91TW1IUk1Ld3d2VFJOYmpjWjU4SzZxZG9DZWw5RmRLZGMxaW1oRldZ?=
 =?utf-8?B?Yjdtc0N3RFdtdGV0MHQ0UVdxS2pyNmFMMGpPczk3K0pQRSs0Ump5TnVnWXFW?=
 =?utf-8?B?Q1ZaYU1kUmhyRlZtWUtqbXJxUWVhOHpDL2F0ejdkZ2RKWHBJUHIvT2QwOWNx?=
 =?utf-8?B?RnNiczk2NHdrSmwrMXJ3c0lKd1ZQYUF3U05LdGJkVkQrdzdxdUtBMlVpTjVw?=
 =?utf-8?B?ZTBRNDNMaDBNdmZaa1BBdFl4eVJWR3FsQk5UalFLckJnUlpqVWI1YzNUVlBy?=
 =?utf-8?B?aEh3VUQ2WEtFQWozekM2WXBYTk1nZldIVkZuRXNZUnV6Qzc0OStlWmcwVnpa?=
 =?utf-8?B?VU0xcHRKY3lNSHBTRmpVcHFjN3h1Zm9Nc21adFVUTDl5NkxJOGtIaE81TTJ2?=
 =?utf-8?B?YzVkbW1oVklHaVhCYVJobW01QnlEUWxDUXNpTEludUhFZlQ0RXpXL1pmTzhF?=
 =?utf-8?B?NVd5SWZweDgvRnJ3a3BUcXB4SVZnSWttOFFVeHJVbTMrSUh4TlpqWXVUYmNF?=
 =?utf-8?B?MFV2WVZKNERsdFA2Nkd6NWtHaVJwRm1HdXJBM3hYWnBDTGVtaWlZSWJNMzJX?=
 =?utf-8?B?U2dCRHRPdG5sYjVyV1F5MHowUE9vWlp6UlBxMUY5M2hjMmQzUFFhVFVmK1gw?=
 =?utf-8?B?SVRKbitrdlhIR2kvSUJKb2dGZG5HdG1RaGRJM1BnNTJiT0lYKzJsRWI5QXdQ?=
 =?utf-8?B?WUQvU2ZiU2w2Ty9wOWpVNXhqVzBnNStzb3lFV3orR2kzL0huVXJ4VE85ZFZn?=
 =?utf-8?B?Y3pzWmZvVWxDTHdXQXNWdkc5VFU0SnNmT1c5b0puaU1RYjJTVU9sN3FFbEYw?=
 =?utf-8?B?cWx2NDJMN2tnQVNVQWZRTnZXNEkxRmJkcThTTEVMWVI0ZnVBTm1iVWRjTXZp?=
 =?utf-8?B?RWxGYmV2OWZKQUJadDBFRXAxLzRyN1VleHp5K0VKbWNxdjVDT1NqZmt2VEMr?=
 =?utf-8?B?RUJiZW9TWXhGbTkvZisveGwwcVVVdkRBai92aldMMGZRSUtFSFpKcC9oanlB?=
 =?utf-8?B?eEFuYUROdGNqRGYwSWZMblBPUDhyMTdrcFBqNlhPVTJmZ2xiMDM1VlZkWjZK?=
 =?utf-8?B?NENzNzRocUFyUjBNcUQyOGpkNWV1K1o0N0tJTlo4S2ZKcnlXM25vTkpNdnFQ?=
 =?utf-8?B?bFlqcHkvLzJubG54RWxTczJtL3pOM2V5cnBPeXo1VGdIQXZiWnBiM0ZZNlFj?=
 =?utf-8?B?dTU2YkdTdUx5aHc2N1JqT1lHNllqajlBQW03ZUxxdHczcmJIR3lpaEl0TXVZ?=
 =?utf-8?B?MHF2VGtSaGdQQjRkQTRNdlEyTjhsVGhMQ29HTEEvcUYvVHQyTVFEYW1uL1Fz?=
 =?utf-8?B?eDJsTTZQZFh5bUY1ZUtNMHh6R1U2OVNFOG1vSUQxbFNCQmpWRjlSdjFmYUZG?=
 =?utf-8?B?bk5XeUZTUzNiYXpHVUdFR3N0b2ljeEUzNnRnR0ZtNjc3dmM3UFJNeEY5NUt3?=
 =?utf-8?B?dndhM202eVlRMUprTFFrNk52NmpaU1JZQ25LQng4R2ptR1FlUWloZkZhODBZ?=
 =?utf-8?B?N2xOYzRudTl5Mkl2eUVvN1R2Mk9CeWpERkl5WmkxOXJ3UzZYMzhqdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 716571c3-03f1-4eed-9ddd-08da50645e51
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2022 13:22:03.9923 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ssMYeXyOpQJzO4d5UPwEYNHAjnYmjG0yGy7yV+XE5VIZdxdsSk1ollhnwO/HY6VrRiYel3z04rgOUxDL17N4RA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3719
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix a lockdep warning at error
 capture
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
Cc: chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Missed the fdo issue ref:

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5595

On 6/17/2022 1:55 PM, Nirmoy Das wrote:
> For some platfroms we use stop_machine version of
> gen8_ggtt_insert_page/gen8_ggtt_insert_entries to avoid a
> concurrent GGTT access bug but this causes a circular locking
> dependency warning:
>
>    Possible unsafe locking scenario:
>          CPU0                    CPU1
>          ----                    ----
>     lock(&ggtt->error_mutex);
>                                  lock(dma_fence_map);
>                                  lock(&ggtt->error_mutex);
>     lock(cpu_hotplug_lock);
>
> Fix this by calling gen8_ggtt_insert_page/gen8_ggtt_insert_entries
> directly at error capture which is concurrent GGTT access safe because
> reset path make sure of that.
>
> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_gmch.c  | 2 ++
>   drivers/gpu/drm/i915/gt/intel_gtt.h      | 9 +++++++++
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 5 ++++-
>   drivers/gpu/drm/i915/i915_gpu_error.c    | 8 ++++++--
>   4 files changed, 21 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_gmch.c b/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
> index 18e488672d1b..2260ed576776 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
> @@ -629,6 +629,8 @@ int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt)
>   	if (intel_vm_no_concurrent_access_wa(i915)) {
>   		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
>   		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
> +		ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
> +		ggtt->vm.raw_insert_entries = gen8_ggtt_insert_entries;
>   		ggtt->vm.bind_async_flags =
>   			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>   	}
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index a40d928b3888..f9a1f3d17272 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -306,6 +306,15 @@ struct i915_address_space {
>   			       struct i915_vma_resource *vma_res,
>   			       enum i915_cache_level cache_level,
>   			       u32 flags);
> +	void (*raw_insert_page)(struct i915_address_space *vm,
> +				dma_addr_t addr,
> +				u64 offset,
> +				enum i915_cache_level cache_level,
> +				u32 flags);
> +	void (*raw_insert_entries)(struct i915_address_space *vm,
> +				   struct i915_vma_resource *vma_res,
> +				   enum i915_cache_level cache_level,
> +				   u32 flags);
>   	void (*cleanup)(struct i915_address_space *vm);
>   
>   	void (*foreach)(struct i915_address_space *vm,
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index d2c5c9367cc4..c06e83872c34 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -493,7 +493,10 @@ static void uc_fw_bind_ggtt(struct intel_uc_fw *uc_fw)
>   	if (i915_gem_object_is_lmem(obj))
>   		pte_flags |= PTE_LM;
>   
> -	ggtt->vm.insert_entries(&ggtt->vm, dummy, I915_CACHE_NONE, pte_flags);
> +	if (ggtt->vm.raw_insert_entries)
> +		ggtt->vm.raw_insert_entries(&ggtt->vm, dummy, I915_CACHE_NONE, pte_flags);
> +	else
> +		ggtt->vm.insert_entries(&ggtt->vm, dummy, I915_CACHE_NONE, pte_flags);
>   }
>   
>   static void uc_fw_unbind_ggtt(struct intel_uc_fw *uc_fw)
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index bff8a111424a..f9b1969ed7ed 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1104,8 +1104,12 @@ i915_vma_coredump_create(const struct intel_gt *gt,
>   
>   		for_each_sgt_daddr(dma, iter, vma_res->bi.pages) {
>   			mutex_lock(&ggtt->error_mutex);
> -			ggtt->vm.insert_page(&ggtt->vm, dma, slot,
> -					     I915_CACHE_NONE, 0);
> +			if (ggtt->vm.raw_insert_page)
> +				ggtt->vm.raw_insert_page(&ggtt->vm, dma, slot,
> +							 I915_CACHE_NONE, 0);
> +			else
> +				ggtt->vm.insert_page(&ggtt->vm, dma, slot,
> +						     I915_CACHE_NONE, 0);
>   			mb();
>   
>   			s = io_mapping_map_wc(&ggtt->iomap, slot, PAGE_SIZE);
