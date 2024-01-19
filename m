Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C680832C77
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 16:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AEDB10EA15;
	Fri, 19 Jan 2024 15:45:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8B4C10EA15;
 Fri, 19 Jan 2024 15:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705679131; x=1737215131;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=1otSjm3UTKmCctsW2Ab8p7qLsbt9k9jCPoX0qJHPvJA=;
 b=U9Yly/u31qx1zg7sQCc8cNfYYI9ar+ZJOIyrmMy83qWeWYnmC65QOt6g
 s9IDAaYycEQvCfbPHmhwWlfqJP/ADOQD4DgNF+rK/8P2b0wrYUk/Stigh
 EMXnCJqcgx4/j2eUjuI8nPMjEHobysfQ6iebgZ8nh9Uulvtb4gFhxIxF5
 JLVKjGmQx4MhskF4KIW91Y9GyFYPdumVPXpI4BCuPlRnTdyVJxYCBHrTT
 Ipb+24OQZRqdXbMytpfn6XfWBmPtG+igqm1dNqE88aIIymNeguEGGPo48
 H90r0Xwv7OljAlUqAQKQRU7Cp8mnkfFB6Kf5ZthGLxNeMqWHSI8aFuCJG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10957"; a="8169231"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="8169231"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 07:45:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="19433656"
Received: from amcgaura-mobl.ger.corp.intel.com (HELO [10.252.18.221])
 ([10.252.18.221])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 07:45:24 -0800
Message-ID: <6333556b-60ec-4233-be50-1dcb745bb89d@intel.com>
Date: Fri, 19 Jan 2024 15:45:22 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/xe: store bind time pat index to xe_bo
Content-Language: en-GB
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
 <20240118152745.162960-3-juhapekka.heikkila@gmail.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20240118152745.162960-3-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 18/01/2024 15:27, Juha-Pekka Heikkila wrote:
> Store pat index from xe_vma to xe_bo
> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>   drivers/gpu/drm/xe/xe_pt.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
> index de1030a47588..4b76db698878 100644
> --- a/drivers/gpu/drm/xe/xe_pt.c
> +++ b/drivers/gpu/drm/xe/xe_pt.c
> @@ -1252,6 +1252,10 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
>   		return ERR_PTR(-ENOMEM);
>   	}
>   
> +	if (xe_vma_bo(vma)) {
> +		xe_vma_bo(vma)->pat_index = vma->pat_index;

Multiple mappings will trash this I think. Is that OK for your usecase? 
It can be useful to map the same resource as compressed and uncompressed 
to facilitate in-place decompression/compression.

Also would be good to be clear about what happens if the KMD doesn't do 
anything to prevent compression with non-tile4? Is it just a bit of 
display corruption or something much worse that we need to prevent? Is 
this just a best effort check to help userspace? Otherwise it is hard to 
evaluate how solid we need to be here in our checking to prevent this 
scenario. For example how is binding vs display races handled? What 
happens if the bind appears after the display check?

> +	}
> +
>   	fence = xe_migrate_update_pgtables(tile->migrate,
>   					   vm, xe_vma_bo(vma), q,
>   					   entries, num_entries,
