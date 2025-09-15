Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A23F7B578B9
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 13:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C28E210E45C;
	Mon, 15 Sep 2025 11:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="L3512Peq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A762510E45C
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 11:43:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id F36C8601A3;
 Mon, 15 Sep 2025 11:43:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E4F4C4CEF1;
 Mon, 15 Sep 2025 11:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1757936634;
 bh=hKvJzaj9ZB9UkaTV2FjcMUpSiZF39pJt5v8Lv5bTD6Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L3512PeqGzNG754f3wx05dIHV1EMKWE1G1gY9dDiVBLI7+dXEVIVC7kVyAQYiFqi5
 UIWx3mjUHGm9P2e1OZfw5uN0BsLgCerPRm8kYxEnJ3p1gLvrIFkNLv9ZIwsLWeQvQz
 ZqFKWeLBAcCsSSMSUREteXEJNFETYGqh431fXRBDjWQjpABfYgUj8lIM3wQSWQgAaK
 EpQMXi3QkJZy+AFFvmSQxxonbOfrQFSDFbkM3SX7NpTFmjad57wH9r8QP9/KYBrwD6
 7iUEMOqtMcqzsYwJ2P4N9DWzevSbXqI8owbqzEkrFUYFsMi2DonLh0rZuDG3Ww6d+w
 2tFVrL8fqweyw==
Date: Mon, 15 Sep 2025 13:43:51 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH] drm/i915/gem: Avoid accessing uninitialized context in
 emit_rpcs_query()
Message-ID: <bekgrq6wton27cn6m4ylj32o2fxhgvwkwk5fywx52z6642y2fb@4rsc2mm454co>
References: <casutxyfjv7o4ivadvbich2sq2dt22btc5wcke55r56ptgxx2h@lv7hnxrqw5rq>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <casutxyfjv7o4ivadvbich2sq2dt22btc5wcke55r56ptgxx2h@lv7hnxrqw5rq>
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

On Tue, Sep 09, 2025 at 12:09:28PM +0000, Krzysztof Karas wrote:
> Following the error path in that function may lead to usage of
> uninitialized struct i915_gem_ww_ctx object, so move call to
> i915_gem_ww_ctx_init() a bit earlier.
> 
> Fixes: 15b6c9249870 ("drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v3.")
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.10+

I removed the Fixes tag and the stable CC because we do not
consider as Fixes selftest patches.

The rule for Fixes is that we tag them as such when it has a real
impact on users. Selftests are executed by us developers and do
not affect real world scenarios.

> Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Merged to drm-intel-gt-next.

Andi
