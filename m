Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95601B99CEB
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 14:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A54110E725;
	Wed, 24 Sep 2025 12:21:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="A0sflKan";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36BD410E70C;
 Wed, 24 Sep 2025 12:21:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7A59660007;
 Wed, 24 Sep 2025 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7235C4CEE7;
 Wed, 24 Sep 2025 12:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758716487;
 bh=cg9tYmgUiVVW1uumNXt/D1iRzUoownQi8iUjG0i70yg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A0sflKanrsVC28RO9dbNQruISzbMYiXxZzT6SBvxD5jNpox2TzFkC4kHIeE6in8b/
 muEyjTKXRQYoK9rY8DM1CYCoVexSDOrUXF4UaQP4kO4KhK1qP6AF6YeiGSUIM2T8gB
 Hf+spIRlBDCQrxD6QRGcP7k82pyLoq9nBqr6pV8qaRGVIorEhh8SH200WWxvkA048Y
 InGiISMKBwuxUdw/SeWb7XhpCD5fPFQNyfgBqHv2h3Y/7bRBpdWRpPDvXnBYg9fqK7
 4EYVd2MBrfTM01rEL+nzFhb7JhvZaYmrq72uqjMFRZpFo1n5eL3HSI48mSgu8KWi8i
 KO/KvlXkMH4Eg==
Date: Wed, 24 Sep 2025 14:21:24 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Madhur Kumar <madhurkumar004@gmail.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com, 
 rodrigo.vivi@intel.com, tursulin@ursulin.net, airlied@gmail.com,
 simona@ffwll.ch, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/i915: i915_pmu: Use sysfs_emit() instead of sprintf()
Message-ID: <wd42hb6kriwk7wlunhlei5tnbslbckdaomsmhrcjx33wta3vga@ozds23vg7ez6>
References: <20250923195051.1277855-1-madhurkumar004@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250923195051.1277855-1-madhurkumar004@gmail.com>
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

Hi Madhur,

On Wed, Sep 24, 2025 at 01:20:51AM +0530, Madhur Kumar wrote:
> Follow the advice in Documentation/filesystems/sysfs.rst:
> show() should only use sysfs_emit() or sysfs_emit_at() when formatting
> the value to be returned to user space.
> 
> Signed-off-by: Madhur Kumar <madhurkumar004@gmail.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
