Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 564805237F7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 18:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A9F310E29A;
	Wed, 11 May 2022 16:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 251DF10E254
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 16:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652284850; x=1683820850;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=0qJTkPcG2gLnjQeStOeuNaiaQVxKhmqLqZlqOAW7wm0=;
 b=LF0LVBIFKqSrbw9kSmPaaLH+Jv2t+LPz3UcJqDyrldsrRwc0JmJvScnF
 Qk5q1sncM47wvW9oIH27Jb5grtVQ+tH+imUwuJTJfcwn/PbJJUXqh5ii2
 7/AzTlA88x9VkGxNpYJVyE7M9g3TxR2xE5fsr7+S6TZyU49JnyRWcsPzO
 ESryCSawLBfrz1KNE59OAEhDKPi8AAbQ0wgA1lM6+OSwzloxjHZtzk1iv
 SJjU12FNAk/yTWCA6EO+n/t2EwsXlg2ZGU06bUJmaZSBZZ54U2Q+GDbo9
 VkmPmVUFeou2XKaNIJ+kxYT7XKq0j2k0cFkt6oOeVczdmHQfDGIZWz5tZ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="356162170"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="356162170"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 09:00:48 -0700
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="670444749"
Received: from fcollins-mobl1.ger.corp.intel.com (HELO [10.252.17.150])
 ([10.252.17.150])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 09:00:47 -0700
Message-ID: <ddcfb5b9-a42f-df79-0604-bfe5c53e0a15@intel.com>
Date: Wed, 11 May 2022 17:00:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-GB
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220511153746.14142-1-nirmoy.das@intel.com>
 <20220511153746.14142-3-nirmoy.das@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220511153746.14142-3-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: error out on platform with
 small-bar and CCS
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

On 11/05/2022 16:37, Nirmoy Das wrote:
> Until we enable small-bar, we can't support CCS so error
> out gracefully on such platforms.

It's not so much CCS, but any platform that might end up with small-bar, 
which is so far only some DG2 boards.

> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index cd105ec10429..43caf8052ffb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -111,6 +111,13 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>   		flat_ccs_base = intel_gt_read_register(gt, XEHPSDV_FLAT_CCS_BASE_ADDR);
>   		flat_ccs_base = (flat_ccs_base >> XEHPSDV_CCS_BASE_SHIFT) * SZ_64K;
>   
> +		/* FIXME: Remove this when we have small-bar enabled */
> +		if (pci_resource_len(pdev, 2) < lmem_size) {
> +			drm_err(&i915->drm, "CCS isn't supported on platforms with small-bar\n");
> +			return ERR_PTR(-EINVAL);
> +

Spurious new line here.

For the series,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> +		}
> +
>   		if (GEM_WARN_ON(lmem_size < flat_ccs_base))
>   			return ERR_PTR(-EIO);
>   
