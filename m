Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E29836E74D1
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 10:17:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E307F10E0E3;
	Wed, 19 Apr 2023 08:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B01D10E0E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 08:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681892269; x=1713428269;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=I9Xj8k8P8B7wJE2GS+U/tGdPN7yUAg9bjDScRnt/fuU=;
 b=FYkE/fK1kW+ayTXIrmx/NiWZAzcTK75p93TgKFWalOHV0gXv6hyX2D40
 aT4mytHwGJ9SV9bCV5JLXxYDpMGe6qqWFuxMYZwOwJHrvnuq66jWR/P5u
 xZoBHmwFqaEPWnxgtDWWPLcayGeaH1Wnst21Nult2t21BcQpMlgI9isvT
 VmMFZ+Rj6KwjOBnWuM63r1I4Hy8we02FDnnH5laqSAe2UiQt6uFkvXYQh
 1Wzdc7clpGO8VcjXsUwz+62rTlPFlveeztidaZTMs9WfgOY9XX6O5lgYk
 lNVwc4UFd6F/q7lbiWIGqzlGJyhaaa0akzBSykTMXLMrtBvuIY7MGiE+D w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="431665322"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="431665322"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 01:17:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="723966335"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="723966335"
Received: from crijnder-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.35.137])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 01:17:38 -0700
Date: Wed, 19 Apr 2023 10:17:34 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZD+jnngV9nwFRJmP@ashyti-mobl2.lan>
References: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
 <20230419060036.3422635-2-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230419060036.3422635-2-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Consider multi-gt instead
 of to_gt()
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

On Wed, Apr 19, 2023 at 11:30:34AM +0530, Tejas Upadhyay wrote:
> In order to enable complete multi-GT, use the GT
> reference obtained directly from the engine, rather
> than relying on the to_gt(), which only provides a
> reference to the primary GT.
> 
> Problem appear when it runs on platform like MTL
> where different set of engines are possible on
> different GTs.
> 
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi
