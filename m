Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C085B95BD
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 09:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6BA110EAAF;
	Thu, 15 Sep 2022 07:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60B0410EAAF
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 07:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663228404; x=1694764404;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=0L0cHVlhX0zSorxvlRf62KJKK1LDzsuptltc0ldt36g=;
 b=D0RYOIGsaRUPViU02+GMgfvCVx+lckzKtwLp5vEFmo40HsRMr+aj6Fh7
 PDLFBzbr6/DNu4B5YTvjVxMX2hVy9cIIAXAjdMs4EpIuM0EnFrbro4/zW
 SQ8Ll1Q6lvfPuSKIc66WWherwIihrOXM1H1S83414bZTA32OBW5V8oXuq
 EEwRoCpOXmZrjfBmv/8sQ5XB4iqcOztW/dWpvyfDYvk06HdI/e3W7Z4Iw
 Tmr3Zanb1LAzsasxpJ8fu8/lhlCzKspsm8p/eqWSKs/RcCbwYXtF3Ltdm
 x/UePDHpkZJKo0njS8ezkhgrEIXwijWs1vDHYwlTuFcLYF54uMpyf2tqk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="300003128"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="300003128"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 00:53:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="679402192"
Received: from alishana-mobl1.ger.corp.intel.com (HELO [10.213.218.26])
 ([10.213.218.26])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 00:53:18 -0700
Message-ID: <500be188-d8e0-2bc6-4f54-13a8784c0321@linux.intel.com>
Date: Thu, 15 Sep 2022 08:53:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220914203545.4057637-1-lucas.demarchi@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220914203545.4057637-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] Revert "HAX iommu/intel: Ignore igfx_off"
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/09/2022 21:35, Lucas De Marchi wrote:
> This reverts commit 58f44e349cfc10a4f2208fd806829c8fd046480b.
> 
> To be removed from the topic/core-for-CI branch. If CI's config is
> setting that, it just shouldn't do it. Looking at a random current CI
> execution, the command line is:
> 
> Command line: BOOT_IMAGE=/boot/drm_intel root=/dev/nvme0n1p2 \
> 	rootwait fsck.repair=yes nmi_watchdog=panic,auto panic=5 \
> 	softdog.soft_panic=5 drm.debug=0xe log_buf_len=1M trace_clock=global 3 \
> 	modprobe.blacklist=i915,snd_hda_intel ro
> 
> So it should be safe to remove this commit.

It's a patch which can silently bite so no complaints from me to remove 
it - just please upgrade the check from a "random current CI execution" 
to something stronger. Ack from CI folks would do.

Regards,

Tvrtko

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>   drivers/iommu/intel/iommu.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
> index 598c9b86dfd8..1f2cd43cf9bc 100644
> --- a/drivers/iommu/intel/iommu.c
> +++ b/drivers/iommu/intel/iommu.c
> @@ -323,6 +323,8 @@ static int __init intel_iommu_setup(char *str)
>   			no_platform_optin = 1;
>   			pr_info("IOMMU disabled\n");
>   		} else if (!strncmp(str, "igfx_off", 8)) {
> +			dmar_map_gfx = 0;
> +			pr_info("Disable GFX device mapping\n");
>   		} else if (!strncmp(str, "forcedac", 8)) {
>   			pr_warn("intel_iommu=forcedac deprecated; use iommu.forcedac instead\n");
>   			iommu_dma_forcedac = true;
