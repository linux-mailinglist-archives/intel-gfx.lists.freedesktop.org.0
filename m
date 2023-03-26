Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4076C93CE
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Mar 2023 12:51:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2098910E080;
	Sun, 26 Mar 2023 10:51:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F32CC10E080;
 Sun, 26 Mar 2023 10:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679827873; x=1711363873;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VSNgHNJlQ1yAcoF9fjOzjAvOWvF5+KYvP0Y51QqJYqI=;
 b=Lmp8Ovk+zm4RZ0VIufEgW9D+LzR+KvpIgglvg69EUEfQrkyccRSCzF5h
 OoWKhCgtf26RnMSu4w+zw9DcCXEwvwxM+x1NZIsFyJllwaagn7s/ifYDT
 mVM59gHuacnIzbSAOZDond+jKvpQ7NSGcODdeCyWN57Bp4xDA5/1AkmvX
 aH4ge6mPtdh1GAMMlgH8aceSUKO5wPv2rnpdepLNkUmfQeD1YgtGV4Zsw
 blfDqoP4lPfY+qh7Z/Mm8N4jX5w/OPnMasFvU+G793pqGR+I4PLqFiAc3
 W0NZ5pQhg5WtZAiRNhGFKLGp7m4+IYzyvS3N9DmIHaFcotKGcAa/RKE3L w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10660"; a="319724762"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="319724762"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2023 03:51:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10660"; a="772363231"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="772363231"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Mar 2023 03:51:12 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Sun, 26 Mar 2023 03:51:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Sun, 26 Mar 2023 03:51:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Sun, 26 Mar 2023 03:51:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=grQS49AlbKp56qu4+5gkH8NBGsteDek8A2ZgWz+pd7/MxSqeVvLtYvBRPsAK+nFop1R6Fcb6Y3uTf974mILwclfx84mmnzt5oB+reL6l/o8L6c7PuokS3rtnHbMLTRAz9KugFcJgzHFMOkPniMfHJvyAIosKyf6a+c6FhvN9Wzpm3ArWae8sZh6Crl8nOSPbnyzOVAmGSOxA/YqNe0k2sjRHfQxttBj4vslNfKI3QMjZgk90HK9Jdge78RUJj/fTJND5tf+j8JJlvDKxUYpbsmtrYzhXHk5Tdt6PKfzobhSRX5x7+tMmrgGMraGSo3cE94YS8RH1p2/1PjrooiXlVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gCe1qHi583v2j8uOieeychSpTzri5ImTqmTE0KhDOos=;
 b=oOx4yefQhgHUR4SObmgHf4vGdOtrktjhyXvU/vnjSSVUAiC8Nk6yjxp0gSBIJp2WilTRZT8GGLixCBMPV291fbj48KFJWcdDMSU5hQNoj42+Y8iHNCBpArGr0cJjUpJT9pDW64Yg2nICABvIWL57qmG7u0fTlCtlrzf+1D2xzuYRXhxcoKkNE+CuZHwA8pru3+0tFHcZ+N3i7/wemdtvA+Js9X9Q7SpgfLaq1/nqatB+Xae1Dg2s9YMu+1O9EUr1cS1PJEPaUM6sKfKtVsiNuErIkca+IUA3aXnrwLipsCoVtWm/0dHGc9KLiJ4jL42fwPa+IyH/mczWXJiog+0Cmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM6PR11MB4722.namprd11.prod.outlook.com (2603:10b6:5:2a7::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Sun, 26 Mar
 2023 10:51:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6178.041; Sun, 26 Mar 2023
 10:51:09 +0000
Date: Sun, 26 Mar 2023 06:51:03 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Message-ID: <ZCAjl7AmtScKwKHf@intel.com>
References: <20230325003442.1767568-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230325003442.1767568-1-vinay.belgaumkar@intel.com>
X-ClientProxiedBy: SJ0PR05CA0163.namprd05.prod.outlook.com
 (2603:10b6:a03:339::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM6PR11MB4722:EE_
X-MS-Office365-Filtering-Correlation-Id: 97720ca1-26be-4dc8-1a04-08db2de800d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0mnUsKNVi0hQE+jCmTLjLsjtOCbV1se/QlEha9G5YVjKx7pX3I1FkdzlavdtGUlR3Qmazaq7sqKTLSLr6THBeg/ieG1jc3oGivjOLdNK1GIHUvLz10KsPG0pKlEzKqri+PzZjJsOZLvHxDW/L5100hVB5uECwwYTfDSXvz6VM9WcUjkGaoqvlpxF1ozRgZbPUkV7My6ok+OhYbxUqCPDkBc73YVYmghxbNpZlV3mNT32ZyCU/geHsb3yCJbJmUxgKIyBobeLyk4W8aUYGsJf3kiwtvZVF+nUMyOpgq8aAnk+8PvxtLDpzwMODrPrwG8HCZXDWMnPp7DI4XwdZOWoQ7ILY+IAPgqC7ShPuvQELapXi3aB2wDOsWYn0mEBeM5Z3qTJgMzD9ii1DXx5BR0ey2H1RUjeXP1oN4nUOeI1ZQrncxT3CLbYJA/eR7c9AiSM99OaTq+iDTNreCCQTwE784uwuCk7O17cZQICm4psZrMWpJsbDsb+uNczJzUC/xH8GoClZOiPTHdbNGmEcyyNWKUXRSUyZUfTyGogfsfm2fN5MBbvjCAudk9CTK0GK/7Z
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(346002)(366004)(396003)(136003)(451199021)(66946007)(66556008)(66476007)(5660300002)(316002)(37006003)(6636002)(450100002)(8676002)(4326008)(26005)(82960400001)(6862004)(44832011)(6486002)(8936002)(2616005)(186003)(41300700001)(478600001)(6506007)(6512007)(83380400001)(86362001)(36756003)(6666004)(38100700002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?skdvz2I0dY7FLcwfTcLJnVO/RGy1XUXsVbhsHMkuGXeNtvldfSj6FneDHW6V?=
 =?us-ascii?Q?66rcHJNbuwkRAWX8DTpgOI27pNeCc02A/cgWg2IHxfeIg5pdOP0pkGIMKmfV?=
 =?us-ascii?Q?n4UKy3O4NIAjQSd2RTZLp7S3mUjQRxxW3KUVYoEkOpKdMoo2ruom+O8/kDR+?=
 =?us-ascii?Q?VtOT4htcNycX7FeHVKQa5moTn/uIPTUXmluW4s0BRB3Ws8NKNpTcrttbP2tJ?=
 =?us-ascii?Q?DnUE7EQE/zFtb1ISuSs/uU5IxztYufPTCq/LHL04wWBfvV7JNelgUwbBTaRN?=
 =?us-ascii?Q?6WaGZ10u2nPnH1bayhdKDNakAMGp7W9yQ36oFNcGGWFWtIv8Z0/fAIv6Vj/c?=
 =?us-ascii?Q?LaTP7WBacMSazgjCNPkzM/c5er7+Ciix0tV0iuuHR69uE4Bka3cirvzcSgsM?=
 =?us-ascii?Q?+Ug5aenjEAHHaAfr5qIRAh9CE791nWiKGrEFj3Y5O/g9DPuamLdgBjbjndNu?=
 =?us-ascii?Q?kqGpj+vV5qgeIqFVg38Fhg78Aex5aE4TIbnphLvy/Um9XYVSZtqoa7tjnuIl?=
 =?us-ascii?Q?lhS9RxbikN6bIZIKp24yjmF5ku6O4kdhWfhoj5fDYr1mBCJjoTBaIxL8kmAS?=
 =?us-ascii?Q?A1B+lSXmx359tB37geUMh/4zAKsjga16BjovWPehfn1uMURZV2IWvj+GVRy7?=
 =?us-ascii?Q?ZXCtcvGNuvxfKg6POBHqS1F5ERmW476i2fq6sJ2NnlM+lwTU2zgneFbQJvkj?=
 =?us-ascii?Q?7iO3Z/AykXbT0e9STBm7YPTjkbid1O2n7GiW2sZYeWCqqa+N4j/KqzI2mQCJ?=
 =?us-ascii?Q?jHDTN1dv/mV4RTiw0UMRZJZJFYRGe+SaMF/G0TGHSnBxZ9vkdQS/GExqJN+M?=
 =?us-ascii?Q?dk3fEe4SvpJdRalIMXFk9ZXbfjqoCbFy0TtoJJAR7/YSM9hHLW7Ruzdg5hvR?=
 =?us-ascii?Q?0RpnTx1noLC0aV4onBaxsCegvuvJK8aIO4HaMjGLAEAtOkUPwO4sHzypTnPL?=
 =?us-ascii?Q?ykzFWlKcvyZkdAKkWkIcnFt4pPaN9MYc4mQktIgk4SnY/vzsMuirFg0M4L3O?=
 =?us-ascii?Q?6ndzAeuMwo4jANeVjvCs9rwWxjm/oYE/Y1CXWH3qYd4+aJ/u3lfhDMN7x1zW?=
 =?us-ascii?Q?n1E4HgOtZdsBK5H16XoxJjB9ZkEf736TDia7j/LHdJUvwJhqgOE4C7zhnW1Q?=
 =?us-ascii?Q?gGx1hdMkYyf6+sJ8iKe3129Nt1tgW4PAeEiG/1RPA8ceVOch6zd1uK1msICd?=
 =?us-ascii?Q?UjI84vyURJ784uGkGa9MnmJC263ZAvq3oRmnMFdAuylSVxA5B8svPaK0g+X5?=
 =?us-ascii?Q?O/xUfyuwMcO4TrJG9aQRCniAOXHmJiUHTjxO9EempOuaOCv5UGS6uIc1jcxI?=
 =?us-ascii?Q?cDheDfBI+aOptKmUF/71G/vRmCTIaiRWYQr10r919AI8nu7djnFkbaXsFf5z?=
 =?us-ascii?Q?WeKLo/xFHPej+9L+WVEK1qZiFeNPOht7xAgL3EXcEhkImNjqrnhod6qg/NZZ?=
 =?us-ascii?Q?CnFNVG53ZmhuCf0tZI4rMMp5eDIQM6vPmGl643jv0uw0v17o1y2WWtE+JGfP?=
 =?us-ascii?Q?TJDMJ+cvhy+fj2Ke++pGKZ972GuRXDQVdLk7p+cMgaIiZDlOE4v4W6XvVfwb?=
 =?us-ascii?Q?ge11KTffidPBuobjHGZROMT9keLpKRoBegtwk0JO?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97720ca1-26be-4dc8-1a04-08db2de800d9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2023 10:51:08.4363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c2hEoeVr0L3ZWnC0zoWQk70tvtnp6nc5HvIDnitjjvDd/Cz+8MD1dXcRdbjAL61tfGwq/ya9F+ihSLdVjCdRdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4722
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/xe_guc_pc: Restore
 max freq first
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 24, 2023 at 05:34:42PM -0700, Vinay Belgaumkar wrote:
> When min/max are both at RPn, restoring min back to 300
> will not work. Max needs to be increased first.

why max needs to come first in this case? we should probably at
least document so we don't forget it again...

> Also, add
> igt_assert() here, which would have caught the issue.

I was going to ask if we should really add asserts inside the fixture
or maybe using igt_require instead, but then I noticed more cases
doing the assert...

> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>  tests/xe/xe_guc_pc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/xe/xe_guc_pc.c b/tests/xe/xe_guc_pc.c
> index 60c93288..43bf6f48 100644
> --- a/tests/xe/xe_guc_pc.c
> +++ b/tests/xe/xe_guc_pc.c
> @@ -489,8 +489,8 @@ igt_main
>  
>  	igt_fixture {
>  		xe_for_each_gt(fd, gt) {
> -			set_freq(sysfs, gt, "min", stash_min);
> -			set_freq(sysfs, gt, "max", stash_max);
> +			igt_assert(set_freq(sysfs, gt, "max", stash_max) > 0);
> +			igt_assert(set_freq(sysfs, gt, "min", stash_min) > 0);
>  		}
>  		close(sysfs);
>  		xe_device_put(fd);
> -- 
> 2.38.1
> 
