Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E09AF664C15
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 20:12:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1189810E125;
	Tue, 10 Jan 2023 19:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 346E110E125
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 19:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673377946; x=1704913946;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UBU2NqaZ+0o2Twx9Dn0DsQRMkyosWrBWSHQxr68UAx4=;
 b=SyuzDW6LzYV7/mEsLxU4eEta4N/hujY3dn7yREVfoU/ixxeiE0A05QHR
 v6jvxKVJahqnQ3Xmj7j9WPUdUmChWYQiz47nivI/eacnerY3q6FDXbKWb
 hmy75ENxGts5uL4PdsU0igfi+R1YEELT4R5MwklcKjIJWQJ6J57pvdYfc
 i51GbTtu3Y09Xq3gMCmox38KB98SI/b5OJKlnL/bvQQZvS3W2dBqy/Mw0
 mvg1ubWm6G6en80MlU7WmIds0o90lGQL3iA9IOqDE7hZP0lW1nfMsbWh5
 EgOSe1pdLTVVyr4LvpI/r65TrQF43+rtaKm100P2LF+WlienptK5hJpLH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385541465"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="385541465"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 11:12:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="634697669"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="634697669"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 10 Jan 2023 11:12:25 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 10 Jan 2023 11:12:24 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 10 Jan 2023 11:12:24 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 10 Jan 2023 11:12:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mNr3sJJKqMoYwSzXKjO/fvqGFkq44eej0FMuWRftfBMSNacyPHfd5kkSFTf0x29nkce5jKGsuKBKaKVINZdqd255XkE2r+TEAS+W8mSvQU2VYQhqANI93OxahcN7L+PpqtKw5boMihvQRFGVo4YCZ/W5DiXoSrCOZWeOWfrcRPhPelfyE7CFDhFFnFAv8cZ0c9r2HLBWYYlEykYi6FXSnbGAh++BdvsHotDseRs09i8knjXgWwHt0IK2metgaAkbNUznMn48WXjZ3JN1DkgPNxckO4bXsgVwSzDrxh3UJ8BgBTlSjyo/gf2Nx0R3NhorKaa+Pps7+B53Ke4SitL8Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IuCGFvfAoy38nAjfgp0W6oWcROGCHOaQki3hP68uL6w=;
 b=Mvw/tF5S8FbYTO+sySctof1rA4DmKIWISU6vrRXcf3UStPMMYF0MF9I45fVVXnrjDKYVaoPh8hC4ugV0VB2HFLGCD3rVa6BMYEC6RE/G2c+i1M8q5Cam9D6wVQRKcq2R8B3l2PChbV6K5PZJM4DkgEObhh/B5mWlZoxsRMst8dAhcfO59ciDtff/V2tr8vPtI7t+q8hdANgydY0QZIILOno5/s3YSGJIldMFW5r5WPdDgDLb+1CE8rJEnwjf0s0RgwO6juJQyZw12p5bQbxykxE0n/YMpzG52ixQj1qE2Yvpb3WgHE8OONhzEVTlK4F6arr13Wkv9jyxiu4zJrN5LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB7544.namprd11.prod.outlook.com (2603:10b6:510:28d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 19:12:22 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.5986.018; Tue, 10 Jan 2023
 19:12:22 +0000
Date: Tue, 10 Jan 2023 14:12:17 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Y724kUKsBH34H51P@intel.com>
References: <20230110123338.20196-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230110123338.20196-1-stanislav.lisovskiy@intel.com>
X-ClientProxiedBy: SJ0PR03CA0122.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::7) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB7544:EE_
X-MS-Office365-Filtering-Correlation-Id: 8acec319-3569-49c4-03a4-08daf33e991d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LcPn37tEqndDickrQF6Vd1oNk4Yj1xShQ3buuIWNEmKvhhrp9rbvEo16miky4jrlpTEu3HKYHGkyU8hbz+eiwgFkQyE1Lanszo4Lrq0PLUF4CYmwdw2ZbSOWXbHkqfo5sq567Mu+yk9iqhWSEtKtthGQalb4zSFDuNtypW6CtEi4a3O9amPU4eQtErdQvJuhENWcJZ9RH86+zfK6TGYr7KFhWvNVmNmam/JI2UpFoX6Cygg0QkaIomFULm+Y5EO3SvLLH346OIK35SFeoyI2F0Sxg6UFBEADFjqo0uqW7dZMo2GFZkF3Fa6YDZrU57nYnsEZGvPDRaBKKbYzxlwz87juPnpe2/iofFWfaIga24aPu86JCnLxpsogsc/BxUzHDFKaXXVQlna5L2pnoEWvIbM5C7/sckxnCn6jgscqSCetA93qqlrSn9IsvlBHANxeKlcqH5D13uKLVXPvKTpKLB9GLFlLXS1NSB7MbZQpAdttUlDNVI0+3TCSTyXG6cf+js2kFRkNhnHjmIh5wm4m2SNct4AAhbyqUg+ilA7AT1DvulVoWvdDWRSepjT7DB8jMPHmXIhq5k4+haOvMn08tJ7tARyYfUlqAlbjW3PGnA0Z7JnSQsHDUo0gITuJRPB8xPmLMNvMM/mlhnQoDsOhJw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(136003)(346002)(376002)(39860400002)(451199015)(82960400001)(4326008)(38100700002)(66946007)(66476007)(8936002)(6862004)(8676002)(66556008)(41300700001)(5660300002)(86362001)(83380400001)(44832011)(316002)(37006003)(6506007)(2906002)(6666004)(36756003)(6486002)(478600001)(6636002)(186003)(6512007)(26005)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3BtmbyccNb7W3X2VE5iYGG5RhhhkfyNASFFKMqnUuKljtbw0HhzCm4o9yBJA?=
 =?us-ascii?Q?C93m0MfZtJ8xJRoGsLeQ1MLjvzdEqylWCl2Jkqq0EBbapumKrDVclct9A+30?=
 =?us-ascii?Q?uCNG2qd76jqFPRDRNZXM+xobnJRqig7ESMY7J0aOuGPoAJT1wouTYyz4sjBu?=
 =?us-ascii?Q?5QLTR9CLEfXRz7zJwt/NqfzBhLeTaw8TbNT8Jl3GBkOpBiTj6t/EStLO1zpT?=
 =?us-ascii?Q?SHrPKIVQjvvg6dHXhXpKAkmm7EV7opRd/SfUeuR87qESEIQsLkMevjJMDKOT?=
 =?us-ascii?Q?2mRTB0V0vSZVkwNPNxP8fvho7L5Lcr5BxlUUlO/ajE2M8ag/kPEkFeUqTa+8?=
 =?us-ascii?Q?EOec8ZxLVt75yhGOMcI+65VvtXdy4mYHU4E1+Op6LsZM/oO4jDABflVzHaCs?=
 =?us-ascii?Q?QKc96KJFJU7qZkrHMhlgHnPb3Aql9vkw9J09bZZOCZSvkYFiaTcvnbmagNBE?=
 =?us-ascii?Q?TTtGLIC9++Jw7qACTWzuKjw6NKzenS+ay75GJt2Pfm+4ptXL1jNmNocLeQVo?=
 =?us-ascii?Q?Cl5DZBWNuo2liNIpDhPgm+2MkTL7VxYruMC/H+El60bcBbc3qbo4+dGK0XuQ?=
 =?us-ascii?Q?hJhcn8t1uVHHztxb5z28uLUgjnJ6a+NhrzZCmEcYXVtgrKkG4d6r6pol5cZh?=
 =?us-ascii?Q?diBt5D4Rma22uKVVceNkfmQvRkpAdspjoONYiNC9Zph1n80UObq4J3xKB2XC?=
 =?us-ascii?Q?o6WCsbtxfqefLkH15CWX4RQ7t37iTm4Z7UIjHHeDUgEykUya8YI4QNgPbd38?=
 =?us-ascii?Q?ppfBDhVCoMY83QRB19ppyX/QgbhGMMEegW+nNBLcAttnuKa4zHABZAtJB817?=
 =?us-ascii?Q?t23iejIpP3X5pMeGf/eAw1YST2SWQMQkhWvU4HqvCvIyE2Aj88KVeMO0mHJm?=
 =?us-ascii?Q?gvy7PJbu8APWDvyPStBB2Ba2wPbgaW2fP6XIyntDbstODzuMd9AqnoUk+1DQ?=
 =?us-ascii?Q?RyVl5iR2CeQgD8fNOdXypRK0fncvrNUyqHPcrh3d2mz1N9BJMOV6mYYLRfYg?=
 =?us-ascii?Q?PIouhHlsuJskDo4xnuCBPYNg2OcY36B+dhfQZFnKW/AKVMyK/EZXgvpG6q6N?=
 =?us-ascii?Q?ct3QSYiUCj7G3v8UECoSS6IeKL3Xks/XVMSbWi+iVAia8fhoAOpKYw/ugmFM?=
 =?us-ascii?Q?wgfoUKr5iq5EMboLE5jXgyMNQpD6YvidGZwR6PGHk77IKp6q1Yk+92gUGjt5?=
 =?us-ascii?Q?utuLJDqjiTLEu0ZKyaJlqeUFpIK6agdtdJxJ2RuZb9h/p/1jtnclSEzWnh03?=
 =?us-ascii?Q?jcJ8pLtvInMiUfJSFaD6iEL/ifm20I98tJEhqPtZYyLVOsyxK87lPouXc/+1?=
 =?us-ascii?Q?BH1yQ7tuR8trMvw2/XwlSDyRkxa5UU0eOrl+T1ypQAKh2rqWUviNk+kPxlHa?=
 =?us-ascii?Q?FDd/xgcJBh8R06zBrl8P1iFePo1eee/iXE2mofsj/Iyt/GxWymJc7zODVDIJ?=
 =?us-ascii?Q?11bCjSCf0LoI+LUgsVdeI6aoY6xC3an2TFgjd9U80T1kwYQr0DcdHYgOBF8P?=
 =?us-ascii?Q?g+LANyvcRjrUy0L34tOqXRgeqoh3e3N/R55aWt016tBsXm9/RwgpH2FsaUXA?=
 =?us-ascii?Q?N8uy+Y6PunagSJk3KwaJGUpeV/nVavcjv+emR11lQcaoakFX0MpNg9O2VQQW?=
 =?us-ascii?Q?1Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8acec319-3569-49c4-03a4-08daf33e991d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 19:12:22.0869 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xHP05JnhIrsFIjtbAlKoEULWQNinIy+iqg9KRs/LPmC5N2896McilevnP+57r92nlEOnlnfGoUvaumFqfKYLJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7544
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement workaround for DP2 UHBR
 bandwidth check
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

On Tue, Jan 10, 2023 at 02:33:38PM +0200, Stanislav Lisovskiy wrote:
> According to spec, we should check if output_bpp * pixel_rate is less
> than DDI clock * 72, if UHBR is used.
> 
> HSDES: 1406899791
> BSPEC: 49259
> 
> v2: - Removed wrong comment(Rodrigo Vivi)
>     - Added HSDES to the commit msg(Rodrigo Vivi)
>     - Moved UHBR check to the MST specific code

I'm afraid you forgot to remove the "workaround" from the patch subject.

> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 8b0e4defa3f1..1f1f7f5f6501 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -339,10 +339,19 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
>  						  conn_state, &limits,
>  						  pipe_config->dp_m_n.tu, false);
> -	}
> +		if (ret < 0)
> +			return ret;
>  
> -	if (ret)
> -		return ret;
> +		if (intel_dp_is_uhbr(pipe_config)) {
> +			int output_bpp = pipe_config->dsc.compressed_bpp;
> +
> +			if (output_bpp * adjusted_mode->crtc_clock >=
> +			    pipe_config->port_clock * 72) {
> +				drm_dbg_kms(&dev_priv->drm, "DP2 UHBR check failed\n");

I'm wondering if I misunderstood your recent reply....  but I believe you told this
has nothing to do with DP2.0 so why we have DP2 in the msg still?

I believe that or:
1. We are sure this case is only happening on DP2.0 because it is impossible
2. or because we are adding a DP2.0 check
3. or we don't mention DP2.0

With the subject and the comment fixed:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +				return -EINVAL;
> +			}
> +		}
> +	}
>  
>  	ret = intel_dp_mst_update_slots(encoder, pipe_config, conn_state);
>  	if (ret)
> -- 
> 2.37.3
> 
