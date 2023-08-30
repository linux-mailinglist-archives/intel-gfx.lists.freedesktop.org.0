Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C56878D654
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 15:50:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9697F10E524;
	Wed, 30 Aug 2023 13:50:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1290310E524
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 13:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693403417; x=1724939417;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=F/r9sbQ3trF5LuE4FqRrxXPBmdtzaHOagy1AleegBTk=;
 b=Cn6sKvd4AXKety457ph7zr9+rAsPCJlGe9AImOFDYvj2nPp6TDbSvZ60
 3taIHDFtlHdbtIxKbEvAZxtRi4TwQr68gNgiRDDPBzRCYp0XlzrjGYwIm
 5AFcKa+YARl5yO9YQVgwyLAe9I2yE+NCdQ2/fjFOwMWx3DZAZbUDDxtMM
 k0jhcPCfJ1AvoRmCVviCAqHNLa+INXAm4ROlDrVcaXyZwnVNNodUHL2rD
 H3bTOdu4vQk+lj9dxLl8N73SvD4dFaJqvgQfXEGAUp9319Kjh2F7JlAIq
 yS97i61HiskQtOpYPP3cYWiyxFbyUd/q5Sk2NYAu3tr+x9O/HN8cdRDPc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="406646894"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="406646894"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 06:50:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="804537720"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="804537720"
Received: from msterni-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.170])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 06:50:10 -0700
Date: Wed, 30 Aug 2023 15:50:07 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZO9JD6YQ1rSqV4Oa@ashyti-mobl2.lan>
References: <20230821153035.3903006-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230821153035.3903006-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: mark requests for GuC virtual
 engines to avoid use-after-free
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
Cc: intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Mon, Aug 21, 2023 at 05:30:35PM +0200, Andrzej Hajda wrote:
> References to i915_requests may be trapped by userspace inside a
> sync_file or dmabuf (dma-resv) and held indefinitely across different
> proceses. To counter-act the memory leaks, we try to not to keep
> references from the request past their completion.
> On the other side on fence release we need to know if rq->engine
> is valid and points to hw engine (true for non-virtual requests).
> To make it possible extra bit has been added to rq->execution_mask,
> for marking virtual engines.
> 
> Fixes: bcb9aa45d5a0 ("Revert "drm/i915: Hold reference to intel_context over life of i915_request"")
> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

applied to drm-intel-gt-next.

Thanks,
Andi
