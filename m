Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 973AFA27F24
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 00:00:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB7C10E0F2;
	Tue,  4 Feb 2025 23:00:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ihH+uq4L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81F7410E0F2;
 Tue,  4 Feb 2025 23:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738710036; x=1770246036;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RJJeJ/lXHuadWXUXidxam4lS+MrABR/sqnISbGpZzQo=;
 b=ihH+uq4LP5YLhZ31fxi+68QpM4yDJ0zQbj67pBnA/HY6zTyhc6VTp+V6
 taMMbuiow56s8mFwZrc+DaqjkyxhgS8C8IpojFmbjQFrfDEJ8sBkEnX1T
 Wc8R5uRJpLPW7h2/sErUC5knPkNgBKpn+rPewF07e1uSOBPBRw5L4DdWE
 /NMFcsSszvDJdufM3YOzTLr1OsxvLtzG29JYSOziaYrMiJnXfKNjNJ33d
 5E0KyZnuEnkq1/5xRnWlLYGA+Xb3YEsTAzcNUyNpJNT4xW3F6JU/CMPWM
 pWPsCJO0inxKFYl8KgrFaBxAUEHi0InMsaoDh3MYlvDZzSxAmgsMkOM2U Q==;
X-CSE-ConnectionGUID: QzGTRrL8RZyGVJYeiVrdew==
X-CSE-MsgGUID: FxrczW9fRL69hE7S6ukkuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="26861063"
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="26861063"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 15:00:35 -0800
X-CSE-ConnectionGUID: lQArezqIQi67BJIAWV638A==
X-CSE-MsgGUID: aWFcdK0uQe2z3KklA/217g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="110509921"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 15:00:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 15:00:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 15:00:33 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 15:00:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ikb1WY3BHfHLfPnmBD9eGbyN7dFsdByHOVWs9MGBt+CYzk22BuTZ1vptOTkT/O5XbhtKJ167hxjFhzsD+xraCNHiIjjgNEjm5R8eJsa11virdQ1cSMr7fUglCuK7IMW1YD6LxWqsth4KAKMarGIL9zZg7ZVQtkxGqa5DVU0StDFpL4UC9aTfCSpYwF+zxJYDTkf8AA76sucl8E4uYWfpFyImS9NdLjIYtFW3W0X3M372yaVVi7fKZMmzfb+twvtzaOmsl1KN00fnT/PgfuZVAIUePTNEhm4Uj29rxGmsPFXNhqW552vVF1yFzLdx43L781tHmWhe8ekHH/h9WMxvJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K7oWSN+qHGiFUDqof47rh2l5xIP7OZhvJe5kjcEgMmM=;
 b=yNuyHKezfmeMWmxhaVEag7RhELn92D9j0WiXRWO8Gmoa3/ulZ7OTx9gmiDxend2oSWgNgUSWHj8XcAqDW+Jok87gj9f9j3+ojOsmgRgtiKWcw96qbM62EWW+zD6tuwCMOHROasM26adClW5b94LtnhmVkJTLlHFjv7p23XMI2nEKhKSQwR4CPuC091fLrKdhrr1MuR3uzGCGhcBX4yOyCpUl1xZpWtIaMa8Ssc6Oyv//XgetABOmQbAcqLbwpzx7Q662NGBUxaogkjRF4DcW4obFUNAcK+dBT51ClqvWBC141AweGCl7E3QEHf0ttHIQFJE3eIPjf44O7ac5di4RQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by BL1PR11MB5223.namprd11.prod.outlook.com (2603:10b6:208:31a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.26; Tue, 4 Feb
 2025 22:59:50 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Tue, 4 Feb 2025
 22:59:50 +0000
Date: Tue, 4 Feb 2025 17:59:47 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 6/6] drm/i915/lspcon: rename interfaces to
 intel_lspcon_* to unify
Message-ID: <Z6Kb490agrojYSU1@intel.com>
References: <cover.1738677489.git.jani.nikula@intel.com>
 <15e8c4133aee89181e6776a44e58f2573cfe23f2.1738677489.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <15e8c4133aee89181e6776a44e58f2573cfe23f2.1738677489.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0028.namprd03.prod.outlook.com
 (2603:10b6:303:8f::33) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|BL1PR11MB5223:EE_
X-MS-Office365-Filtering-Correlation-Id: 1537f83a-70ac-4c02-54d0-08dd456fa0cf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4h2QVbxMEnxeFCnwB54+AJe/pzky8CdeL7Yl0ASbOcIf5RQtkWOMbNBBX4LR?=
 =?us-ascii?Q?a2uqZ9Mq8sXb+37F580YlFHZeFE12TfdIXj8k1KrPNL2Lzp5WHUb9Yl1NQNr?=
 =?us-ascii?Q?O4qdLx/PbNGmwFwzkZLnS3kNqtb//wnGje2SBncf/RgG5krxHQNwmpw7jDFF?=
 =?us-ascii?Q?bwJq+ZT3iOlED4Qogiw2jXMVw/T6QEEuWBXso4b26b1C49O5TIqCiWkeUc/X?=
 =?us-ascii?Q?fr++W9KoLiBUzkpAJZVuOprpZZoARjBKxFk50dxPQngkrW9Wx2U/pvtx8l2Q?=
 =?us-ascii?Q?NVZ6LxgpaxKDCMNYkjBcO/toodvFnhpgtsHABf9lzcU8u0WMBfNkAD8izyev?=
 =?us-ascii?Q?3TKkwgztp+3UR09sYHbeY4YuQcR2vQzq4yUJz1RFQ20J8ZzAnUimRrdA+L16?=
 =?us-ascii?Q?p632/uYqMblUazJEgmYaqQ9YXHl9j9nkIDF4mwTrpIChkR3yjaiUtYkKtfjz?=
 =?us-ascii?Q?tiKS9BYjVDiIqTWICAHKIL7r2fdyoPXXWvJndQM3zKdliISwwQYUz+/qeSSu?=
 =?us-ascii?Q?6BdZEArKOl8O0IUAWUSAMnd0qkZwqFbirLh+WMjPfc3wR2f5a8z71eHKB32k?=
 =?us-ascii?Q?gg7TgOHwMSQa4VerMx+/p7rBy3AZVTWDCsCYCpn0EgUSrr1yk2UT+p3dIz0f?=
 =?us-ascii?Q?pJNdsYPbkWFI1DgMBIYpGGhUel0X24TSB2DwYnQxxQMMY71N9n0I+ib6ozzC?=
 =?us-ascii?Q?Uu777QS1wkPJ6tgbpk94J6UtkVlwQpPYwZId1kYadYKBG17jkvtfR6DdkGgC?=
 =?us-ascii?Q?jA9SQTfXPsxntQvimuxA5h0ElCQk5aidFfILwZXQcAKjDdoEJ10uizxzwLRt?=
 =?us-ascii?Q?3aXjAQOdW6hPGFkzmUzQn6PjjgT3YTClIsZocO6Xs8t6MvT1C6Qnyq4YvQ1f?=
 =?us-ascii?Q?q2pGZNNhsP72K360ef0RnDR3YPy7xSScM4egHv/LMsR0n/lUumilXGOzAoE4?=
 =?us-ascii?Q?/szQiUKBEgAYEdtQ4bXUlIw++LyY0PiIFF9rYhzgIjHy8IpCVf2pB1n98wst?=
 =?us-ascii?Q?VunZyhffia8jLwQqFDPMkIQuwRCqPB0YqSNHRPdsFPut4/U1Kgp9e5ZC/nuO?=
 =?us-ascii?Q?lbMGLow5c4Qx+0J1zyYwpxeajVl5/PCGWIBMErKtJx1TGGjrA+FVZ6/2gjOE?=
 =?us-ascii?Q?2W6PGvXSOJ/3vKTam4EFDviG5hgU92cUdqUYsaYckbVj8QM98nxW/ZEew7fF?=
 =?us-ascii?Q?DktICm21G6PP0q85HaiQkhXhlBqeHk19HTG+WD5Xfa3kedDKFma1YBZNzDYo?=
 =?us-ascii?Q?AB6/jiPA8/EYOHEPNGoNEFocLx+EdJJKO8MsUUecwyxUEHqTjb3xud1k+dFU?=
 =?us-ascii?Q?rCwrGjrx+3wwZaAj+IzkUNqokwvGpU6h2tdTfu9uYw7BlXhCna7x47dG5JmD?=
 =?us-ascii?Q?F2m+Rx1pJ1KtkCpLnZeld7Pcd1S5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K+551Et/m0+RfJRGm5k0rx/hjIPh45J4jQ/xkZNcxolwXtNgqR6yN6xJzcMv?=
 =?us-ascii?Q?lzOKYetblJK2rmXeC5PI7wFB+vFe779VMgog8afyT0dFeq6SUxwhdm6dDevh?=
 =?us-ascii?Q?s8wnPVTlQyzFL48VGs+Kyh4VZ82ghmK37Gm3RELUJFnIdnGSh5FgvcxSozhr?=
 =?us-ascii?Q?jnDL9BY6xHlEY723+pXbm5IpEyhspQdAKKo0H7gN8QaJoTtzy5ZGU7Sc/Wef?=
 =?us-ascii?Q?O3li5wQ7pM2nFTPCkE1y6JlokBd4NfZcdcndG+YS2uzTa9h3wIMPG0mX0sLz?=
 =?us-ascii?Q?W2/mr6bDxCy5Cg969qpUQJGDn2I4VTY/oI+Z+UxPc5yGGskulCvUG2oc0oHz?=
 =?us-ascii?Q?KvJAGG8LmhQ0wyVNwVOgiVsQqv7HrOXcLAEMPMQ9I0dPYLO8SaeqDW5/ByZ2?=
 =?us-ascii?Q?jbGjoFrHDCJ2gPqVU+z6CeEc9dSfSSfTsDBVc0S9IpVcKIBrP3Vc5qaXrc5c?=
 =?us-ascii?Q?U6Ypuk5zWj5Dvc/SlnwkTsa9n+CAfr1Gn3hCtMGCOgvkC7rRE7NY5q6y5pz9?=
 =?us-ascii?Q?Z0XyoTCLPip2zewqtWmkfcQHzuzs1yTh5/YAqeIljW0v73hBiGicRcW3mlFW?=
 =?us-ascii?Q?3FNOeiP+7A+TVOLWk54Mktdy61HlRqJJ1lAwAmxv5ITQ7+9hrB15ArJLrphz?=
 =?us-ascii?Q?K8QrspVX6fRfz9X/38YrnHsNKGgls4Cyl1h+pr3t1NTZC2VRa3yxyFRYHg4z?=
 =?us-ascii?Q?kb/ybwacbM1OsXn88oEhXYn40aqk5pqIUPTFXBdt/1zoJrKfNeh8YE2sKxe3?=
 =?us-ascii?Q?ZqVkqU6kuhexTU5c3HsQq2VxWbR9+GY7QzPVu00X/ESKEgvXXsmNyz3aMCNw?=
 =?us-ascii?Q?32HYCBUr/7sup+oWhJLPNcF2X8mCLy99xyBNF4HmFL7WCIgi3QBrNchNmSI/?=
 =?us-ascii?Q?J9FZF03NwLUmLsIrlW1cyzShGQqysE43i2smkTU1CbUG5+rF/UGCo1JiEgsU?=
 =?us-ascii?Q?ptY8wwR5jLXGtdQU0KFsmRNhsDCbE175RPNtJQBz3ytnIHEHpp5HIUV2tULy?=
 =?us-ascii?Q?5uWCmNjzliARMaZ7D0gQr4drLIAKL/hNfIRw0t+RvjrPUYqfmOc+hia319ru?=
 =?us-ascii?Q?AQ6+SM0tXX1C6Twz6ruehsvcJHN2oXjtt2ID4Lq3mOGNU9P96vopILxpns5O?=
 =?us-ascii?Q?u7AtNTKrBNQdCYNntKn5d/wTAvoFJ0/6870840AJoS5Qw8+7BHUpsHaI/Gwx?=
 =?us-ascii?Q?sxqr+XTPBhaOePQyMfHPJRIUW2a4GR6jbvecPt0whK56W49sAj3i+lWxTAtX?=
 =?us-ascii?Q?3IVMZqGTlnq7aMfx/tWHNgAhIVOU7RhobFdb/WNvMM7Evg7hgxQ3H/UxLrC8?=
 =?us-ascii?Q?vQ8JRZnwXUBQc3z3q7BuJ5YY6Z99+JeU2F+m8OSm+cTqiI+EBkwwQWb8auMF?=
 =?us-ascii?Q?G6JH6NAMEf7KxEAia924yxmbH/LOMFE30nGIVUDXe8hsvViHfrvm5DpWYfHK?=
 =?us-ascii?Q?NLwSQvpw9rK5J8OOpKqlNDNWcZcJcNhZzZ6ehZR3g3Pg6K9p6/uRcEYZ2HoF?=
 =?us-ascii?Q?BD3AF7quYCi9V4ObPXh5BnESWgf3d/L/fTXtNWhBf70jKSTdObgxKjyiLHW6?=
 =?us-ascii?Q?JgKVLW9ME3yV22MDh39B+W+uX6ACt4CS7XftHHaTM1JwhwwYjG6qOKDTn/j8?=
 =?us-ascii?Q?EA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1537f83a-70ac-4c02-54d0-08dd456fa0cf
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 22:59:50.0349 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J10xmmuGWadRj9KWDYTK1eIy2baa3q+lmqfD2d4k/r0s1VhEE7zOJeOIjOAR08ToHkp9SnI1l61OC5wtwVrOkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5223
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 04, 2025 at 03:58:43PM +0200, Jani Nikula wrote:
> Rename all the main functions to have intel_lspcon_ prefix. Keep the
> infoframes hooks named lspcon_ for now, and grouped together, as there'd
> be a clash with intel_lspcon_infoframes_enabled().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_lspcon.h | 14 ++++++++------
>  3 files changed, 18 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 14d81538c912..6cfd8c8c78de 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3502,7 +3502,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
>  	} else {
>  		struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  
> -		lspcon_resume(dig_port);
> +		intel_lspcon_resume(dig_port);
>  
>  		/* Write the source OUI as early as possible */
>  		intel_dp_init_source_oui(intel_dp);
> @@ -3519,7 +3519,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
>  		}
>  
>  		if (ret == 1 && intel_lspcon_active(dig_port))
> -			lspcon_wait_pcon_mode(dig_port);
> +			intel_lspcon_wait_pcon_mode(dig_port);
>  	}
>  
>  	if (ret != 1)
> @@ -5369,7 +5369,7 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
>  	if (drm_WARN_ON(display->drm, intel_dp_is_edp(intel_dp)))
>  		return connector_status_connected;
>  
> -	lspcon_resume(dig_port);
> +	intel_lspcon_resume(dig_port);
>  
>  	if (!intel_dp_get_dpcd(intel_dp))
>  		return connector_status_disconnected;
> @@ -5864,8 +5864,8 @@ intel_dp_connector_register(struct drm_connector *connector)
>  	 * ToDo: Clean this up to handle lspcon init and resume more
>  	 * efficiently and streamlined.
>  	 */
> -	if (lspcon_init(dig_port)) {
> -		if (lspcon_detect_hdr_capability(dig_port))
> +	if (intel_lspcon_init(dig_port)) {
> +		if (intel_lspcon_detect_hdr_capability(dig_port))
>  			drm_connector_attach_hdr_output_metadata_property(connector);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 02c22a981fe1..63c1afa30b05 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -126,7 +126,7 @@ static u32 get_hdr_status_reg(struct intel_lspcon *lspcon)
>  		return DPCD_PARADE_LSPCON_HDR_STATUS;
>  }
>  
> -bool lspcon_detect_hdr_capability(struct intel_digital_port *dig_port)
> +bool intel_lspcon_detect_hdr_capability(struct intel_digital_port *dig_port)
>  {
>  	struct intel_lspcon *lspcon = &dig_port->lspcon;
>  	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
> @@ -661,14 +661,14 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  	return val;
>  }
>  
> -void lspcon_wait_pcon_mode(struct intel_digital_port *dig_port)
> +void intel_lspcon_wait_pcon_mode(struct intel_digital_port *dig_port)
>  {
>  	struct intel_lspcon *lspcon = &dig_port->lspcon;
>  
>  	lspcon_wait_mode(lspcon, DRM_LSPCON_MODE_PCON);
>  }
>  
> -bool lspcon_init(struct intel_digital_port *dig_port)
> +bool intel_lspcon_init(struct intel_digital_port *dig_port)
>  {
>  	struct intel_display *display = to_intel_display(dig_port);
>  	struct intel_dp *intel_dp = &dig_port->dp;
> @@ -714,7 +714,7 @@ u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  	return dig_port->infoframes_enabled(encoder, pipe_config);
>  }
>  
> -void lspcon_resume(struct intel_digital_port *dig_port)
> +void intel_lspcon_resume(struct intel_digital_port *dig_port)
>  {
>  	struct intel_display *display = to_intel_display(dig_port);
>  	struct intel_lspcon *lspcon = &dig_port->lspcon;
> @@ -724,7 +724,7 @@ void lspcon_resume(struct intel_digital_port *dig_port)
>  		return;
>  
>  	if (!lspcon->active) {
> -		if (!lspcon_init(dig_port)) {
> +		if (!intel_lspcon_init(dig_port)) {
>  			drm_err(display->drm, "LSPCON init failed on port %c\n",
>  				port_name(dig_port->base.port));
>  			return;
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
> index 20581af1ddb2..41d142a5c440 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -13,11 +13,15 @@ struct intel_crtc_state;
>  struct intel_digital_port;
>  struct intel_encoder;
>  
> -bool lspcon_init(struct intel_digital_port *dig_port);
> +bool intel_lspcon_init(struct intel_digital_port *dig_port);
>  bool intel_lspcon_active(struct intel_digital_port *dig_port);
> -bool lspcon_detect_hdr_capability(struct intel_digital_port *dig_port);
> -void lspcon_resume(struct intel_digital_port *dig_port);
> -void lspcon_wait_pcon_mode(struct intel_digital_port *dig_port);
> +bool intel_lspcon_detect_hdr_capability(struct intel_digital_port *dig_port);
> +void intel_lspcon_resume(struct intel_digital_port *dig_port);
> +void intel_lspcon_wait_pcon_mode(struct intel_digital_port *dig_port);
> +u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *pipe_config);

nice!

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +
> +/* digital port infoframes hooks */
>  void lspcon_write_infoframe(struct intel_encoder *encoder,
>  			    const struct intel_crtc_state *crtc_state,
>  			    unsigned int type,
> @@ -32,7 +36,5 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
>  			   const struct drm_connector_state *conn_state);
>  u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *pipe_config);
> -u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
> -				    const struct intel_crtc_state *pipe_config);
>  
>  #endif /* __INTEL_LSPCON_H__ */
> -- 
> 2.39.5
> 
