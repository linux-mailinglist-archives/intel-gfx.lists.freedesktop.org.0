Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 193CFB15EFD
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 13:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE15910E1A6;
	Wed, 30 Jul 2025 11:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JgskH+4u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8271C10E1A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jul 2025 11:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753873683; x=1785409683;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yO0BRve+zCl7T1EmGdWRO7edFsB8CxYNoqY/4+4rKnU=;
 b=JgskH+4u4DHQ3Ukormn6Bv1tqxxq+1KcZZ14FYOntxVxb6/S36VLoHim
 X7/bx6lyktRFwp84M9D9MuwM2v8B3uj0ra6e4FBCW1z6bsGAspKxxtXFc
 cTcHLfDfXGC2MuTAx3rKzmFze9Fj8iIgChdQaOQH1Z/k9aYKqXgQJeAnR
 cAxd2S5CWPUgD3J+imUmyLVysfABo5HwxuCOwJzgrVbc2muuZiIjDdKnS
 25pHUMHCXhZomgcNUTaImw8Yq1gGkC9X16i/oMn2f2XGmcR1CGtENNtU1
 hSyy2qGbP9v+eiTzmeOjOC6oAN5oceQaDmrZK4aDBZ1pZHd8DtFABn8mw w==;
X-CSE-ConnectionGUID: l9I+W0H2RgaTKtMXdrgVkw==
X-CSE-MsgGUID: aU6RGX5aRk6v+026uEkLPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="59996913"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="59996913"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 04:08:02 -0700
X-CSE-ConnectionGUID: wid76SSeTo+A6f0IBaQmYg==
X-CSE-MsgGUID: Nsq0xSmnRzer9rMOLQJ5fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="162678720"
Received: from johunt-mobl9.ger.corp.intel.com (HELO localhost)
 ([10.245.245.84])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 04:08:01 -0700
Date: Wed, 30 Jul 2025 13:07:57 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/selftests: Do not overwrite error code
 after intel_context_migrate_clear() call
Message-ID: <aIn9Dc02LmU5dgFE@ashyti-mobl2.lan>
References: <cover.1753859971.git.krzysztof.karas@intel.com>
 <c0348e052bcb2870acdc15d60f5389fbdf4ef886.1753859971.git.krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c0348e052bcb2870acdc15d60f5389fbdf4ef886.1753859971.git.krzysztof.karas@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Krzysztof,

On Wed, Jul 30, 2025 at 07:39:23AM +0000, Krzysztof Karas wrote:
> Currently this function's error code is stored in err variable,
> which, if a i915_request is present, will be immediately
> overwritten by return from dma_resv_reserve_fences(). Call DMA
> functions only if intel_context_migrate_clear() succeeded.
> 
> Suggested-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
