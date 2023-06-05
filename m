Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 049EA72226A
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 11:43:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D1E310E1B8;
	Mon,  5 Jun 2023 09:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14CC610E1B8
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 09:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685958224; x=1717494224;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bL+/JCEuvzPLSA/7K4vpKZlSWwtoalUL6rmy/h8UAQ8=;
 b=PzWxLbx/zY1AKfz4Dfbub8K/QmDg11DzLUOoAH2cPlRKSK5aKvjphqng
 QqSqI8+CSe6TF7Vj8QH47WvVELFQ3HmQJIDenIyMsj0zwI0s7OocGrBSw
 zCFF60UyrVcpPU/+IWq7GzJaYbTjlB/9scYvUlhXIodsTHvJ5jAEXItdJ
 Nm4hWG/zhRFN7jOUDcLp34mlBpHSPcaZYp60qQP/ToxD39Av/9RVeRRuU
 RLRogys6P8iEMRBClOv5IVb46f8wCvBbKxWeQyLxcKjc05ZoHFq7G8Mad
 BWS3yMZ+Wc89fks8YKfquTnI5RMVkl3BOLjvGYZ0HLp9wVp7apcFTRoqH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="384629689"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="384629689"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:43:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="852909568"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="852909568"
Received: from twgeistx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.42.176])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:43:40 -0700
Date: Mon, 5 Jun 2023 11:43:36 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZH2uSOUJ73p3r4Wk@ashyti-mobl2.lan>
References: <20230601110959.1715927-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230601110959.1715927-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V5] drm/i915/gt: Add workaround 14016712196
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

Hi Tejas,

On Thu, Jun 01, 2023 at 04:39:59PM +0530, Tejas Upadhyay wrote:
> For mtl, workaround suggests that, SW insert a
> dummy PIPE_CONTROL prior to PIPE_CONTROL which
> contains a post sync: Timestamp or Write Immediate.
> 
> Bspec: 72197
> 
> V5:
>   - Remove ret variable - Andi
> V4:
>   - Update commit message, avoid returing cs - Andi/Matt
> V3:
>   - Wrap dummy pipe control stuff in API - Andi
> V2:
>   - Fix  kernel test robot warnings
> 
> Closes: https://lore.kernel.org/oe-kbuild-all/202305121525.3EWdGoBY-lkp@intel.com/
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

pushed to drm-intel-gt-next.

Thanks,
Andi
