Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE6F241852
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 10:34:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB82E6E057;
	Tue, 11 Aug 2020 08:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E0C26E057;
 Tue, 11 Aug 2020 08:34:32 +0000 (UTC)
IronPort-SDR: R3qyfr6KqC9jlG7q8L0r1ogQjcIqi3RYTP4GEwjTCoc0nljXiuWEUeiufakBMbpJKKloZsLYep
 7BI9yzZwHJsg==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="215209493"
X-IronPort-AV: E=Sophos;i="5.75,460,1589266800"; d="scan'208";a="215209493"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 01:34:31 -0700
IronPort-SDR: aFEU9XPlGKIde/Rq12SPDNI9+zxp8HnEo9ZQwa7nwh7uj+ZeqJLwWUaMpt4r3DqPfpvgCbxzmz
 +12gwzix9IAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,460,1589266800"; d="scan'208";a="324700261"
Received: from joy-optiplex-7040.sh.intel.com (HELO joy-OptiPlex-7040)
 ([10.239.13.16])
 by orsmga008.jf.intel.com with ESMTP; 11 Aug 2020 01:34:30 -0700
Date: Tue, 11 Aug 2020 16:18:56 +0800
From: Yan Zhao <yan.y.zhao@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200811081856.GA3605@joy-OptiPlex-7040>
References: <20200811030209.21058-1-yan.y.zhao@intel.com>
 <159713437103.2955.4439985576665396417@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159713437103.2955.4439985576665396417@build.alporthouse.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt:fix raw-wakeref not held
 calltrace in vGPU
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
Reply-To: Yan Zhao <yan.y.zhao@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 11, 2020 at 09:26:11AM +0100, Chris Wilson wrote:
> Quoting Yan Zhao (2020-08-11 04:02:09)
> > UNCORE_HAS_FORCEWAKE is not turned on when intel_vgpu_active() returns
> > true, so the guest mmio writes go to gen2_write32().
> 
> The vgpu writes are just memory traps, the device wakeref should not be
> required. It seems like we've accidentally added the assert to the wrong
> io accessors.
yes. if vgpu writes de not go to gen2_write, or if gen2_write does not
need such assert, it would be better.

Thanks
Yan
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
