Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4A1571606
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 11:46:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D627693E7A;
	Tue, 12 Jul 2022 09:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4A8F93E76
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jul 2022 09:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657619184; x=1689155184;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=K4CR1/G82UxJFPYY75mEX62EkEPAcJuS/9XvvOEmADY=;
 b=eO2Uuw8j4GV+t/PTsu2RsuaWOmWKK7oso5BseykKoUgaCtGPAbXa/t9O
 3EX0PqYpRHV5LpC6YftsacE/LFH2PHV3Zbh2/2PsI4rh/YT48AJR/A+I3
 OtqNnIUAGuMjqzKkndhrd7arzhkas9l5cEXs0uLqk3af9/ZU7yHjAb0bZ
 k3beFuayxx1GDwgjUFglaxDGJVER0q083BuWq4CmfWTfJ+Qfc8RAxxwHg
 NWYV840Uw7GG12UKM2ZafIsuqdsYCbbXCjaBGe3j4yPhPssIwHjwZ7HXS
 GaTrYD/zcbtpV5z7dWAH+GvUvzGu3TyronpVk1bpR6UP6CwoG4eg8BFCV w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="264678628"
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="264678628"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 02:46:24 -0700
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="652839253"
Received: from syeghiay-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.53.242])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 02:46:22 -0700
Date: Tue, 12 Jul 2022 11:46:18 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Karolina Drobnik <karolina.drobnik@intel.com>
Message-ID: <Ys1C6sG6VAuQvdlu@alfio.lan>
References: <cover.1657289332.git.karolina.drobnik@intel.com>
 <d7b953c7a4ba747c8196a164e2f8c5aef468d048.1657289332.git.karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d7b953c7a4ba747c8196a164e2f8c5aef468d048.1657289332.git.karolina.drobnik@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/gt: Only kick the signal
 worker if there's been an update
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Karolina,

> One impact of commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove
> dma_resv workaround") is that it stores many, many more fences. Whereas
> adding an exclusive fence used to remove the shared fence list, that
> list is now preserved and the write fences included into the list. Not
> just a single write fence, but now a write/read fence per context. That
> causes us to have to track more fences than before (albeit half of those
> are redundant), and we trigger more interrupts for multi-engine
> workloads.
> 
> As part of reducing the impact from handling more signaling, we observe
> we only need to kick the signal worker after adding a fence iff we have
> good cause to believe that there is work to be done in processing the
> fence i.e. we either need to enable the interrupt or the request is
> already complete but we don't know if we saw the interrupt and so need
> to check signaling.
> 
> References: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>

sorry, I missed this patch.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
