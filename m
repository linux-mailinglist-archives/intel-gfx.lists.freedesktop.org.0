Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAD8523640
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 16:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7621610E39B;
	Wed, 11 May 2022 14:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5045910E283
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 14:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652280855; x=1683816855;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rShlZe3H9JOlN13D+O7o7JKAwt9N3bd6zx5na+SZ/wM=;
 b=X2mfUrsXvM5KdVw5ECJTRAI3+2P2TWxyikXIqnIWOboH582XU7GNv2b/
 gAawRjVUNT04XiIKw6tkxN5g/RCOGGnr+RRRkdk5lC5S7npBhG7tgB0lA
 q+igR2OFW8rzJE3xqsQuL/juM8XY1mSPw5u7rlTa0JJKf/baR15KB+AeI
 LVpKKRzeCPqh2JAgyBlKCpb3j5rxNvQ4HViuPqSu0+/cuIlR2718D+f3L
 W7zoK4GHR13phi6pDNlNwSncYfx0+O4EdNgSfAcixKjd414kc8QTI+ohF
 t0rwjWPEkCzx3Tm3zqoQ+KPf7Lh4cdPKjN0MoPpl65DjI0wJUW0cAdvVG Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="249616426"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="249616426"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 07:54:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="697609788"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga004.jf.intel.com with ESMTP; 11 May 2022 07:54:14 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 11 May 2022 07:54:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 11 May 2022 07:54:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 11 May 2022 07:54:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ah86FzqGLJXwRoBuC1X1soTXR3LQGWlu4KxJVTU2FIC9FFexMMtQcVsrAi+m2o4zolvMqYm9lTWU4+sReH9wxNfk8VyvRnqI+M4X51ngaTOUbgzbRi/ErKRybqCqsalBY0ZPb7FVDBXAWZHChUxblbEFyhy3vEoHW5NcW1NqNKLna3x1WOZlSBbm9x68hwpOsXadx8vH0gAXgVTzJ4zSYQwSWKYjgQZ2bo/nqLbGgb8P53kGSxQ8lysTCKJjNkPO/TsE6rcZj0XZ4aJfBRYQxSZ9MAJM+eX38LrGm2RZ5lPfy5b+NxjK32YHKQ2t8RXbaJgqjog5ctK5XTMPz5/wPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yBHFHd6W2MG7FNUBsJPJSfXR1BN3iAytEf6ceXVMbVs=;
 b=TtmIZouTJTlFHkIqq1HNBip74j0WnNT+yDxHKXs1oblySgFBNomfqtmfDXK/OGbTPOFmVakmIyVg3wLmY+hUukkvGc9llSL/yPQdZPdqyyK+jZK8VxlRhc9ceRZgfVSWJjrTOGDdwcDeMd9/RJo85i/S5bLRAUgLIMiFNJyLDTcm+6WX89AkKygJC+e9CpZ88PAcJZ+xQa3IBS4lJEwyytlSAr9RhdPX3CjnRq4INj6QRLdP3uWk+VoqnAccF/CLrvuEmtTS2pGH+TxMqVXVY19X/GUEmXEfWGjv0B3gSWF4GeseD2KBgLMLQuuQslkWGlgj07X/ZaWhxG4iMSARwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com (2603:10b6:a03:2d4::5)
 by DM6PR11MB2985.namprd11.prod.outlook.com (2603:10b6:5:66::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.22; Wed, 11 May
 2022 14:54:11 +0000
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::3d83:3af5:c95f:e062]) by SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::3d83:3af5:c95f:e062%9]) with mapi id 15.20.5250.013; Wed, 11 May 2022
 14:54:11 +0000
Date: Wed, 11 May 2022 20:23:55 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Mullati Siva <siva.mullati@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <YnvOA1PtYOjTPArr@bvivekan-mobl.gar.corp.intel.com>
References: <20220509153516.85099-1-siva.mullati@intel.com>
 <20220509153516.85099-2-siva.mullati@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20220509153516.85099-2-siva.mullati@intel.com>
X-ClientProxiedBy: PN0PR01CA0009.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4f::14) To SJ0PR11MB4894.namprd11.prod.outlook.com
 (2603:10b6:a03:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: da21c7a6-88fb-4d23-2d2d-08da335e1bb4
X-MS-TrafficTypeDiagnostic: DM6PR11MB2985:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB2985A557E34CDF29C7A150279FC89@DM6PR11MB2985.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +e2w4TtoiSYkzoxzdyjPjq9UcxrkvJ/fWxx1jufVzS1i9hF64pwy0zsUJ/BefFnO5PQbTmPFEqxIfUCRQnZHnrt4VCki9dZq7hkDng3uP5CHMtZzmyOmTk1iEu5eIhIm/k2hK9nlk7JLUAOS41qNa8Bj/zRCg/ygR+UpxMwQP4cJ46vYcuDW3GG7F31mmdCftcjjEvhlFnvou80IzNgFLBObbcDv8TLVFM16+ssoi6/qjqwFxjMSb1m3y9fPoAsX67oMnNrPIJaHOxDqIfmlv/KUaxm5lF6zOo0i6oN8qMWthjU04viqR/f2AjazZ5QKDzx5eKQwI4TAeG9iB9GnfKG0qZyf/v66B4GiEM4lHEQjHExiForUwO6fUUP70b8DV1uml2QYIC8hUJgj9kjYYeQiNdx1k3fy1pCS64xMKn6yyMmMZq/EKcTK5WPh1GmZxaeVL/uGM07LyL1Kn7xfBrI7EgjN/LPu82Zcz4x5M6o4/A+zLBrhg6XBB3PxLU/YEcUk+vmUqvw3z+HjJc/PIi4o4ValNDHGN3rYgy1i58GqTUwYkoyZ1wpgoeMpicKnH7/5v/qzt2pOiofV92dUgaJ0j27+FpkCLRk+YJEttRb4TBluYoaOhFf9WEMbb6SzE5LsKAVj9muM1Yea4bmwqw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(26005)(38100700002)(6512007)(107886003)(4326008)(82960400001)(8676002)(186003)(316002)(66556008)(66476007)(66946007)(6666004)(508600001)(53546011)(6506007)(86362001)(5660300002)(2906002)(8936002)(6486002)(83380400001)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFJBZitPbE1vbVFKSEFKRzhmSHZoOVhXQnF4eWJ5M1pjY3pVaUR3V0FBYzlo?=
 =?utf-8?B?dC9Obmw4Ri8wTWpsYkJlODFjWTZDMG9wMGZOZVc2YVNOdW1vY0Uwa1h5T21Y?=
 =?utf-8?B?SVUwTVBsWHJ0UVhTbVR2aVAxTFUwd21MQ0QwZEtVeFJHbFBibzFjNy9CMEVD?=
 =?utf-8?B?aEJNenlTTVhiMzd0akdGdE9kVnNTeS9CMkI2d1MvcjNITTgvcUhBUE9NWG9O?=
 =?utf-8?B?ZWkzNUozUmY5L3c2RWRBTnNGV3FtUzB5OVVQcHYvYndKaDZvY3lYcTdnVmpk?=
 =?utf-8?B?QlZCVkhXZ2hLYVY2RndRR2RvN01NcEtWUkttaE8zU0EyNlk4dmorQUVsRFFG?=
 =?utf-8?B?cUR2NmJBREdDTVk5NmNBZWZKSHRxZVlIT2U2amlSMnFZTkR5TStPUjg5c2NT?=
 =?utf-8?B?ZnI4SlE1RXpSQnd3VzI3MnBhZmNqa2N2Tkt0WXhRbVprZlFaV2JNR09xbGtL?=
 =?utf-8?B?MTdGSjVyblh0ZGhNcDRhNnFFeFdmdE0xem12WWJjWUI3YmFUYUYzdnBROUUx?=
 =?utf-8?B?bFl1dit4aGZPbzh4SXBEN0dKWnNwTzgrZ0tXRTAxZmR5QjhzbjhJWUR0TUpw?=
 =?utf-8?B?UjJraWR3MWF6M243VnBrVGNGbW5oUk1OR21iWGpkOHljeUpEV1N6UlcvWTMr?=
 =?utf-8?B?VEt3dXNVUHBZYUtHK2lKWWc3Y3dJNmk3OGc0ZHlGUUlqMlIrQTVEN2dJNVYv?=
 =?utf-8?B?VnlLa3hxb2VYLytQdkhqbmlzQjNWbjRaZ2ZDOElMU1lraXA2Nm00MzN0QU1L?=
 =?utf-8?B?VjBDNS9nb09CdWdUZ3VCUGRoVzdoYkoyQ2RsR0hRY0FTTXQvNGJ6Zk5VMDdV?=
 =?utf-8?B?bm5CK3I0dUhncGNuczNQdGQ5Slhrb25CUWZJcm91V0ljTUhIQ21Jb0VCZ2h4?=
 =?utf-8?B?Y3h0aXRFNSt1VzR4Z1ZYS0F2YXlFTSsvVHM5bEQ3bG5RRG9kNDJhRDdzK0FI?=
 =?utf-8?B?bkdlaVNqYmozU3Y3dE42OU1nUmFGZmNpUzJmL3huOWtLWkJVZ0RnWjFmc3NQ?=
 =?utf-8?B?ZHM0TkN5OGZuVnFBMk5TcjlHSHBuVTZRTHlTR2V1Qzdldm10MEJYaXJiUTlM?=
 =?utf-8?B?TWVFZkF1QmN0VzhJdUFYZEl1WktyL1JQeDhKMno4eDhPS2lZYURmdTUxMHZn?=
 =?utf-8?B?WEJBY3IxWkdsN0R2UU9yZXM1Q2tqQ1JQZVRNWkJ0TkZrWUYyZTkvb0NBY2po?=
 =?utf-8?B?aDJidDE1RitjNXdrRTBXdGt0RzZTOHhNeDhsZENsMnd3Y25yS1lEcjFsay9N?=
 =?utf-8?B?QzV5VSt4TDhSTUI2REhFM3RmMWxCSlBTVU9GKzN4VmdDRFlkY1RyMU9yaTd6?=
 =?utf-8?B?RVhmWFZ2UG9xK1VSUk1OYjFDSjMveG5WektTVTZqZjcveDVmZXJucXlqdFFQ?=
 =?utf-8?B?d0JRYkdZWnVCWWxnYkNiQTRjMnpiaHErQmExcnpoT09MNXphdW1XczlIcC9h?=
 =?utf-8?B?S3lrUEhuUEpVMjk5VytKZi9pVnQyNzltYmRvd3ZCRm1FM3hvZFJiQTgrT1d0?=
 =?utf-8?B?MkwwVDNkWVJWL3ZzRFIzcTBtWm9qWTJyQm5oaGJ0Zm1NUzFiT0MzOTl5aTFL?=
 =?utf-8?B?TTIyeE9OOTBNMHFJRitoNnIxekxoZVBGQk9KVUdzQ2dXelp1OTRacFhrVDZv?=
 =?utf-8?B?MnZGa3lFSW1qUDVaQlNIWmJueEJ5NWF2cTRvZnlsTGhRSVJpMXltUnpvaXlp?=
 =?utf-8?B?ZVBkRmdUZzBVRzVhWEdabFc1bCtJUW1EVUozdWlBL050Z3hCMkhPbWpkbjFM?=
 =?utf-8?B?bXZNVGNCUlJTV0ZrMXVWeE1qMWhFN0YwSE5mcHo1eVczc1VZT3dRWXhNcnlM?=
 =?utf-8?B?MW40TjdKUXpKQ1d0VFV0bHdhenNveVZ0ZGova2xYTWxNd1NscnFOYlRLcndm?=
 =?utf-8?B?eWxXakYxeE5FbitCeExlb05scFppYmZabHJpQVdJcXFibm1meUNTZUc0cjB0?=
 =?utf-8?B?L0hrNE5qNkVmeDd0MjBsbkJlaVkxSVZwQ2Z1d2x0dUpSVDBHQ1I2SThjSUxC?=
 =?utf-8?B?WmhwbHFDVXNaQ2hvVXVZYzVPRXc0cGVobDFsOExWWHVMcW1GRWpxZEF6d3ph?=
 =?utf-8?B?akZQMm1lUXlpbGxBV0pvbVdibVdwMFpRdzRXeU1RSFo4NnlUM2R4cCtSVGVm?=
 =?utf-8?B?cHgyR2F4dnNXSGprL0NRVUhveUNSMjdWUTVRZ3o1QWN1MUpIalJzRlhvbFNX?=
 =?utf-8?B?WWJtbkdCWDU5ZWczNlRycWFHc3NaeCt1V3ZxYzkrODlLVWNCVDA2RFhXZWNJ?=
 =?utf-8?B?amZUa3lLZmE2K3BJb2lhTU5oYlFDZjVuUEhUZ1lCampzeHFRRWtXN1FBV0NG?=
 =?utf-8?B?UmkyOEV5di9TbmNNTS9QRnhaY1JKMjg4UENqaW9lVWZGNUpwaFVsd3hwSmw2?=
 =?utf-8?Q?AUwwyh3zWEtm3MdxiUld7UiXF9l6L3nq7tkDh?=
X-MS-Exchange-CrossTenant-Network-Message-Id: da21c7a6-88fb-4d23-2d2d-08da335e1bb4
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2022 14:54:11.5143 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1AsQCmR7WXZNH9dvN8w9RAgVVtsFhoHczT9EhSg0Skjjx/YnIWJPTOGZu5nglZZiLAGSyNpVHTV7nPW/AcIs1emLpwF1eJSMmtJO7g7fvXqoxnja+snIx+IoIQMRv99+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2985
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Convert slpc to iosys_map
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 09.05.2022 21:05, Mullati Siva wrote:
> From: Siva Mullati <siva.mullati@intel.com>
> 
> Convert slpc shared data to use iosys_map rather than
> plain pointer and save it in the intel_guc_slpc struct.
> This will help with in read and update slpc shared data
> after the slpc init by abstracting the IO vs system memory.
> 
> Signed-off-by: Siva Mullati <siva.mullati@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 82 +++++++++++--------
>  .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |  5 +-
>  2 files changed, 50 insertions(+), 37 deletions(-)

Acked-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index 1db833da42df..ee9fd8e7f1d4 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -14,6 +14,13 @@
>  #include "gt/intel_gt_regs.h"
>  #include "gt/intel_rps.h"
>  
> +#define slpc_blob_read(slpc_, field_) \
> +		       iosys_map_rd_field(&(slpc_)->slpc_map, 0, \
> +		       struct slpc_shared_data, field_)
> +#define slpc_blob_write(slpc_, field_, val_) \
> +			iosys_map_wr_field(&(slpc_)->slpc_map, 0, \
> +			struct slpc_shared_data, field_, val_)
> +
>  static inline struct intel_guc *slpc_to_guc(struct intel_guc_slpc *slpc)
>  {
>  	return container_of(slpc, struct intel_guc, slpc);
> @@ -52,50 +59,51 @@ void intel_guc_slpc_init_early(struct intel_guc_slpc *slpc)
>  	slpc->selected = __guc_slpc_selected(guc);
>  }
>  
> -static void slpc_mem_set_param(struct slpc_shared_data *data,
> +static void slpc_mem_set_param(struct intel_guc_slpc *slpc,
>  			       u32 id, u32 value)
>  {
> +	u32 bits = slpc_blob_read(slpc, override_params.bits[id >> 5]);
> +
>  	GEM_BUG_ON(id >= SLPC_MAX_OVERRIDE_PARAMETERS);
>  	/*
>  	 * When the flag bit is set, corresponding value will be read
>  	 * and applied by SLPC.
>  	 */
> -	data->override_params.bits[id >> 5] |= (1 << (id % 32));
> -	data->override_params.values[id] = value;
> +	bits |= (1 << (id % 32));
> +	slpc_blob_write(slpc, override_params.bits[id >> 5], bits);
> +	slpc_blob_write(slpc, override_params.values[id], value);
>  }
>  
> -static void slpc_mem_set_enabled(struct slpc_shared_data *data,
> +static void slpc_mem_set_enabled(struct intel_guc_slpc *slpc,
>  				 u8 enable_id, u8 disable_id)
>  {
>  	/*
>  	 * Enabling a param involves setting the enable_id
>  	 * to 1 and disable_id to 0.
>  	 */
> -	slpc_mem_set_param(data, enable_id, 1);
> -	slpc_mem_set_param(data, disable_id, 0);
> +	slpc_mem_set_param(slpc, enable_id, 1);
> +	slpc_mem_set_param(slpc, disable_id, 0);
>  }
>  
> -static void slpc_mem_set_disabled(struct slpc_shared_data *data,
> +static void slpc_mem_set_disabled(struct intel_guc_slpc *slpc,
>  				  u8 enable_id, u8 disable_id)
>  {
>  	/*
>  	 * Disabling a param involves setting the enable_id
>  	 * to 0 and disable_id to 1.
>  	 */
> -	slpc_mem_set_param(data, disable_id, 1);
> -	slpc_mem_set_param(data, enable_id, 0);
> +	slpc_mem_set_param(slpc, disable_id, 1);
> +	slpc_mem_set_param(slpc, enable_id, 0);
>  }
>  
>  static u32 slpc_get_state(struct intel_guc_slpc *slpc)
>  {
> -	struct slpc_shared_data *data;
> -
>  	GEM_BUG_ON(!slpc->vma);
>  
> -	drm_clflush_virt_range(slpc->vaddr, sizeof(u32));
> -	data = slpc->vaddr;
> +	if (!slpc->slpc_map.is_iomem)
> +		drm_clflush_virt_range(slpc->slpc_map.vaddr, sizeof(u32));
>  
> -	return data->header.global_state;
> +	return slpc_blob_read(slpc, header.global_state);
>  }
>  
>  static int guc_action_slpc_set_param(struct intel_guc *guc, u8 id, u32 value)
> @@ -156,7 +164,9 @@ static int slpc_query_task_state(struct intel_guc_slpc *slpc)
>  		i915_probe_error(i915, "Failed to query task state (%pe)\n",
>  				 ERR_PTR(ret));
>  
> -	drm_clflush_virt_range(slpc->vaddr, SLPC_PAGE_SIZE_BYTES);
> +	if (!slpc->slpc_map.is_iomem)
> +		drm_clflush_virt_range(slpc->slpc_map.vaddr,
> +				       SLPC_PAGE_SIZE_BYTES);
>  
>  	return ret;
>  }
> @@ -243,10 +253,11 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
>  	struct drm_i915_private *i915 = slpc_to_i915(slpc);
>  	u32 size = PAGE_ALIGN(sizeof(struct slpc_shared_data));
>  	int err;
> +	void *vaddr;
>  
>  	GEM_BUG_ON(slpc->vma);
>  
> -	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&slpc->vaddr);
> +	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&vaddr);
>  	if (unlikely(err)) {
>  		i915_probe_error(i915,
>  				 "Failed to allocate SLPC struct (err=%pe)\n",
> @@ -254,6 +265,12 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
>  		return err;
>  	}
>  
> +	if (i915_gem_object_is_lmem(slpc->vma->obj))
> +		iosys_map_set_vaddr_iomem(&slpc->slpc_map,
> +					  (void __iomem *)vaddr);
> +	else
> +		iosys_map_set_vaddr(&slpc->slpc_map, vaddr);
> +
>  	slpc->max_freq_softlimit = 0;
>  	slpc->min_freq_softlimit = 0;
>  
> @@ -335,40 +352,37 @@ static int slpc_reset(struct intel_guc_slpc *slpc)
>  
>  static u32 slpc_decode_min_freq(struct intel_guc_slpc *slpc)
>  {
> -	struct slpc_shared_data *data = slpc->vaddr;
> -
>  	GEM_BUG_ON(!slpc->vma);
>  
>  	return	DIV_ROUND_CLOSEST(REG_FIELD_GET(SLPC_MIN_UNSLICE_FREQ_MASK,
> -				  data->task_state_data.freq) *
> +				  slpc_blob_read(slpc, task_state_data.freq)) *
>  				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
>  }
>  
>  static u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
>  {
> -	struct slpc_shared_data *data = slpc->vaddr;
> -
>  	GEM_BUG_ON(!slpc->vma);
>  
>  	return	DIV_ROUND_CLOSEST(REG_FIELD_GET(SLPC_MAX_UNSLICE_FREQ_MASK,
> -				  data->task_state_data.freq) *
> +				  slpc_blob_read(slpc, task_state_data.freq)) *
>  				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
>  }
>  
> -static void slpc_shared_data_reset(struct slpc_shared_data *data)
> +static void slpc_shared_data_reset(struct intel_guc_slpc *slpc)
>  {
> -	memset(data, 0, sizeof(struct slpc_shared_data));
> -
> -	data->header.size = sizeof(struct slpc_shared_data);
> +	iosys_map_memset(&slpc->slpc_map,
> +			 0, 0, sizeof(struct slpc_shared_data));
> +	slpc_blob_write(slpc,
> +			header.size, sizeof(struct slpc_shared_data));
>  
>  	/* Enable only GTPERF task, disable others */
> -	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
> +	slpc_mem_set_enabled(slpc, SLPC_PARAM_TASK_ENABLE_GTPERF,
>  			     SLPC_PARAM_TASK_DISABLE_GTPERF);
>  
> -	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
> +	slpc_mem_set_disabled(slpc, SLPC_PARAM_TASK_ENABLE_BALANCER,
>  			      SLPC_PARAM_TASK_DISABLE_BALANCER);
>  
> -	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
> +	slpc_mem_set_disabled(slpc, SLPC_PARAM_TASK_ENABLE_DCC,
>  			      SLPC_PARAM_TASK_DISABLE_DCC);
>  }
>  
> @@ -613,7 +627,7 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
>  
>  	GEM_BUG_ON(!slpc->vma);
>  
> -	slpc_shared_data_reset(slpc->vaddr);
> +	slpc_shared_data_reset(slpc);
>  
>  	ret = slpc_reset(slpc);
>  	if (unlikely(ret < 0)) {
> @@ -701,8 +715,6 @@ void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc)
>  int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p)
>  {
>  	struct drm_i915_private *i915 = slpc_to_i915(slpc);
> -	struct slpc_shared_data *data = slpc->vaddr;
> -	struct slpc_task_state_data *slpc_tasks;
>  	intel_wakeref_t wakeref;
>  	int ret = 0;
>  
> @@ -712,11 +724,10 @@ int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p
>  		ret = slpc_query_task_state(slpc);
>  
>  		if (!ret) {
> -			slpc_tasks = &data->task_state_data;
> -
>  			drm_printf(p, "\tSLPC state: %s\n", slpc_get_state_string(slpc));
>  			drm_printf(p, "\tGTPERF task active: %s\n",
> -				   str_yes_no(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));
> +				   str_yes_no(slpc_blob_read(slpc, task_state_data.status) &
> +				   SLPC_GTPERF_TASK_ENABLED));
>  			drm_printf(p, "\tMax freq: %u MHz\n",
>  				   slpc_decode_max_freq(slpc));
>  			drm_printf(p, "\tMin freq: %u MHz\n",
> @@ -735,4 +746,5 @@ void intel_guc_slpc_fini(struct intel_guc_slpc *slpc)
>  		return;
>  
>  	i915_vma_unpin_and_release(&slpc->vma, I915_VMA_RELEASE_MAP);
> +	iosys_map_clear(&slpc->slpc_map);
>  }
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
> index bf5b9a563c09..96f524f25b52 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
> @@ -7,15 +7,16 @@
>  #define _INTEL_GUC_SLPC_TYPES_H_
>  
>  #include <linux/atomic.h>
> -#include <linux/workqueue.h>
> +#include <linux/iosys-map.h>
>  #include <linux/mutex.h>
>  #include <linux/types.h>
> +#include <linux/workqueue.h>
>  
>  #define SLPC_RESET_TIMEOUT_MS 5
>  
>  struct intel_guc_slpc {
>  	struct i915_vma *vma;
> -	struct slpc_shared_data *vaddr;
> +	struct iosys_map slpc_map;
>  	bool supported;
>  	bool selected;
>  
> -- 
> 2.33.0
>
