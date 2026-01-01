Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A63CED012
	for <lists+intel-gfx@lfdr.de>; Thu, 01 Jan 2026 13:22:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEF6910E541;
	Thu,  1 Jan 2026 12:22:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="EbR0+NQf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07A7610E549
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jan 2026 12:22:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 106F360008;
 Thu,  1 Jan 2026 12:22:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AC8AC4CEF7;
 Thu,  1 Jan 2026 12:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1767270161;
 bh=OktOxjA9IvBe6b4AHKx3IfuhYKk72BWKSpPorMtfSi8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EbR0+NQfBpp2H+1bIn5d8tCp3E2Aw8G7EyVrc8ONDthydofDbOYbHZiCouJICuPHe
 5DP2yTKbDQqyH8B8JILBbsSzGv155/obTcFD/+AsUhKXO++ZPnn3j50Uj+ph4pNFp3
 c5Kv8PiDIWZJZZ4sGPDpgjjpa26nlb/rZ9Cxzbkvsc3uHFaBEzinHaZgJ6AADbAZgz
 bzElBiqy+DHGhZefqoNG5zvzDEuMpHw/Pc2OEqcRZlVZ3XJ2zlR/r7pkuyttm7FKNB
 ROXOK7b1BNFgN41LnyYHrWN4ttWIX513kZFzxsYPkZJjWqQEUb7/RzPISDGaYLZ2RB
 RAzGMS0RhM+gw==
Date: Thu, 1 Jan 2026 13:22:38 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com, 
 krzysztof.karas@intel.com, jani.nikula@linux.intel.com,
 krzysztof.niemiec@intel.com
Subject: Re: [PATCH v3] drm/i915/gt: use designated initializers for
 intel_gt_debugfs_file
Message-ID: <fqeykoqwo2xuzkef4l66ddpyiwhauqhtejkdilx2ccxusnokii@ia6pjbk3kmrh>
References: <bae491e8098705a87304a7c94573b377e8c8fa37.1765897826.git.sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bae491e8098705a87304a7c94573b377e8c8fa37.1765897826.git.sebastian.brzezinka@intel.com>
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

Hi Sebastian,

On Tue, Dec 16, 2025 at 04:11:45PM +0100, Sebastian Brzezinka wrote:
> CONFIG_RANDSTRUCT may reorder structure fields, which makes positional
> initializers unsafe. The i915 GT debugfs tables were using positional
> initializers for `struct intel_gt_debugfs_file`, and on configs where
> the layout differs (e.g., presence/absence of the `.eval` callback),
> this can lead to fields being initialized incorrectly and trigger
> randstruct warnings such as:
> 
> ```
>   drivers/gpu/drm/i915/gt/intel_gt_debugfs.c:75:51: note: randstruct:
>   casting between randomized structure pointer types (constructor)
> ```
> 
> Switch all the GT debugfs file arrays to designated initializers. This
> binds each value to the intended member regardless of structure
> reordering or optional members and removes the warning while preserving
> the intended initialization. Also drops the '&' from
> intel_eval_slpc_support so .eval receives the function pointer directly.
> 
> No functional change, only initialization style is updated.
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Reviewed and merged to drm-intel-gt-next.

Thanks,
Andi
