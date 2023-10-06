Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0FA7BC0DD
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 23:02:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A85710E56E;
	Fri,  6 Oct 2023 21:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7344010E517;
 Fri,  6 Oct 2023 21:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696626171; x=1728162171;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=G5qi6qjPHLO8785ySsNeRiEUjzb2UW4Fd5UOqVqDpg0=;
 b=krVLzjFCXVXEZGn+a6c02CzYuofofpX4C8k2drC+QEz6tcLO0dBg+u+N
 a113f2EFE3b3tYwB/52RAgjTopoerQJghxTJlz5/mxqloP577pQhwR08L
 oho/vksztv5zirClzAPchaXkbZokONexJ16ALJNgrl4ABfHaplvufDxnS
 olj4yHCNPMr6tzdGMOXJdXeJDuqvA5rCm+CwJreDaPnCMikP+p6w8QKLE
 TG7npQ+vlcFQz7njOFCHOYtmwWqjYDRqkoPmTipKWDVeGoBjQDx/UQsVK
 qmC6sopozugPwuUordFA3Na5zdT+2TUfZ5UC+d0kmnAAEKZTiVpuBdGOi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="381109603"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="381109603"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 14:02:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="755980699"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="755980699"
Received: from pmanogar-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.157.100])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 14:02:35 -0700
Date: Fri, 6 Oct 2023 23:02:29 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <ZSB15XtY8fqewPgW@ashyti-mobl2.lan>
References: <20231006201744.work.135-kees@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006201744.work.135-kees@kernel.org>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Annotate struct
 ct_incoming_msg with __counted_by
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
Cc: Nick Desaulniers <ndesaulniers@google.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
 David Airlie <airlied@gmail.com>, Tom Rix <trix@redhat.com>,
 llvm@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 Nathan Chancellor <nathan@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Kees,

On Fri, Oct 06, 2023 at 01:17:45PM -0700, Kees Cook wrote:
> Prepare for the coming implementation by GCC and Clang of the __counted_by
> attribute. Flexible array members annotated with __counted_by can have
> their accesses bounds-checked at run-time via CONFIG_UBSAN_BOUNDS (for
> array indexing) and CONFIG_FORTIFY_SOURCE (for strcpy/memcpy-family
> functions).
> 
> As found with Coccinelle[1], add __counted_by for struct ct_incoming_msg.
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-hardening@vger.kernel.org
> Link: https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/counted_by.cocci [1]
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
