Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEAF6A6973
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 10:05:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC2B310E216;
	Wed,  1 Mar 2023 09:05:04 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8091810E216
 for <Intel-GFX@lists.freedesktop.org>; Wed,  1 Mar 2023 09:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677661502; x=1709197502;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OkR9ThoByySFblLT2H5aT3IJSUU0GP/n9zMn20DSQUc=;
 b=PnGvmhd2HtcMS2zGjQoMwDf9JpqiKUg2Bu5d+A9vyjUns7ZvVDAOwc+4
 iqq/oCr4sDeTkSf7MhHwyveJSnfCMEHtz8zl+J5WuFcvsw/aqPqLNiw3Z
 h2TdaVb+ADG31zhQSdxMQNY5sI6SiHKEllhXJ2KeqW08Pqgm5bv5k/Ab5
 42U2HCc05I9O50rMp2wZyfh2LpiFKRod+Cq5YD3z0WeZDEa59NVg6k2ap
 bjEuuiFghigIOhFSwob6f5rSfOQfhxF7QcAkfig2Q/jnx4Q/HobP5qN1R
 w+M2urKG2vecOfQZpjfQqGdOZdEWnJ8zjy+jteoiv2rwIzvjL0OEE7c4d w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="420617692"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="420617692"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 01:05:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="848571722"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="848571722"
Received: from unknown (HELO intel.com) ([10.252.57.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 01:04:59 -0800
Date: Wed, 1 Mar 2023 10:04:57 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <Y/8VOYM0b5ake8pT@ashyti-mobl2.lan>
References: <20230228044307.191639-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230228044307.191639-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [Intel-gfx V2] drm/i915/selftests: Fix
 live_requests for all engines
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
Cc: Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

On Tue, Feb 28, 2023 at 10:13:07AM +0530, Tejas Upadhyay wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> After the abandonment of i915->kernel_context and since we have started to
> create per-gt engine->kernel_context, these tests need to be updated to
> instantiate the batch buffer VMA in the correct PPGTT for the context used
> to execute each spinner.
> 
> v2(Tejas):
>   - Clean commit message - Matt
>   - Add BUG_ON to match vm
> v3(Tejas):
>   - Fix dim checkpatch warnings
> 
> Acked-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks Tejas,
Andi
