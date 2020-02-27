Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE4F172BC3
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 23:51:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 659416ED75;
	Thu, 27 Feb 2020 22:51:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C4EE6ED75
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 22:51:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:51:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="238573006"
Received: from nmwoolve-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.251.88.225])
 by orsmga003.jf.intel.com with ESMTP; 27 Feb 2020 14:51:09 -0800
Date: Fri, 28 Feb 2020 00:51:08 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200227225108.GK1514@intel.intel>
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
 <20200227085723.1961649-8-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227085723.1961649-8-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 08/20] drm/i915/selftests: Disable heartbeat
 around manual pulse tests
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Thu, Feb 27, 2020 at 08:57:11AM +0000, Chris Wilson wrote:
> Still chasing the mystery of the stray idle flush, let's ensure that the
> heartbeat does not run at the same time as our test and confuse us.
> 
> References: https://gitlab.freedesktop.org/drm/intel/issues/541
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

[...]

> @@ -331,8 +331,7 @@ void i915_active_unlock_wait(struct i915_active *ref)
>  	}
>  
>  	/* And wait for the retire callback */
> -	spin_lock_irq(&ref->tree_lock);
> -	spin_unlock_irq(&ref->tree_lock);
> +	spin_unlock_wait(&ref->tree_lock);

maybe one day I will stop complaining about out of context
changes... maybe one day.

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
