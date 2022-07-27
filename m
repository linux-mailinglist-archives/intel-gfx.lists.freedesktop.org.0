Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8310E58341C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 22:32:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2247DC6D8E;
	Wed, 27 Jul 2022 20:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C914EC6C69
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 20:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658953961; x=1690489961;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=MhFNyI7arBmBA4TobVFsROE6QfzDQKEF7eDJ28c7sNY=;
 b=LlokQIGTEPXATmxcFdDQhkzGGDJRz28CvMomqyhT0a+0yUZ8lm6QZHdt
 JxFJTNJzwDLQ+re/hCHnIXxaQMcXYCqvzjhDsxOEWCRAv/93v/qpKQdf7
 V5q8vm1YaklwX7NEFQY1M67hBuVoohpyewmQWDIqqmgvdVLMjTm7xFA0L
 PEG8L+9iOjELDO+nnZ8yj9BaFwZEh4MKkHVwjU4VDAZL3Yh9fCAtwAuqo
 ylCPAAwPyK77M6Aknkq3MyP2zACNbKn1nj3rmf/Ub04TJ7SWmH3tOB3go
 WHQjPJR2ukK6iWGMgsugAZ2cYwzKHZ/q4aYoQF7rI4Lw8N/8M4qMC5eZc g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="288354146"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="288354146"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 13:32:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659360406"
Received: from cene1-mobl.ger.corp.intel.com (HELO intel.com) ([10.252.44.151])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 13:32:38 -0700
Date: Wed, 27 Jul 2022 22:32:35 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <YuGg45GRtl7w1r1I@alfio.lan>
References: <20220727173306.16247-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220727173306.16247-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: disable pci resize on 32-bit
 machine
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
Cc: priyanka.dandamudi@intel.com, intel-gfx@lists.freedesktop.org,
 naresh.kamboju@linaro.org, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Wed, Jul 27, 2022 at 07:33:06PM +0200, Nirmoy Das wrote:
> PCI bar resize only works with 64 bit BAR so disable
> this on 32-bit machine and resolve below compilation error:
> 
> drivers/gpu/drm/i915/gt/intel_region_lmem.c:94:23: error: result of
> comparison of constant 4294967296 with expression of type
> 'resource_size_t' (aka 'unsigned int') is always false
> [-Werror,-Wtautological-constant-out-of-range-compare]
>                     root_res->start > 0x100000000ull)
> 
> Fixes: a91d1a17cd341 ("drm/i915: Add support for LMEM PCIe resizable bar")
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
> Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>
> Acked-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi

PS You forgot to CC the author of the patch you are fixing
