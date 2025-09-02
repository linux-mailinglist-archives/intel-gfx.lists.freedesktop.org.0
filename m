Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DEEB40A18
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 18:03:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 743BB10E7DE;
	Tue,  2 Sep 2025 16:03:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="rGqbFg8I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00ADD10E7DF
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Sep 2025 16:03:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id AC5BE40729;
 Tue,  2 Sep 2025 16:03:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29D06C4CEED;
 Tue,  2 Sep 2025 16:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1756828998;
 bh=MstkI0ad+LEQwTEZVr0yF7mPmG5g2KWGDQdkc1Vv2pk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rGqbFg8Ii0L9BwhWOzXYSylUEYQ2CIuU0LhN8j7poQ8EJpbLJPPxa1JCFw8eo3yyI
 IzW70iokpZ2sUknbYax/IwF5aVxES43CIEWCgP69jHb8R84qMVX56yQ9EiZrDKnO8K
 0qTdLwjwAGA0SgzoOvtbZOfxkitUpG1OFAfG/zD1lHkrhNJ9lJYcuuH4nOzlKUXqq6
 7IxsJn/WlB6KWVrHrM3tIQe3p9PTerA0czby37s45ehE4pfyTqnX1M2MUA2qzYqXh2
 0g9lK6HXyijhld9sdq2lpSgAiGbKB4FcYP/kqSDPTnrDlx1Kcur+nEz4mVURUTvxgl
 wuUbvr4fEogFw==
Date: Tue, 2 Sep 2025 18:03:15 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [CI] drm/i915: Replace kmalloc() + copy_from_user() with
 memdup_user()
Message-ID: <mmq2uggapqowxtcuzwueshopt23alsm2ucaa3qusnijncbrpww@o5r3tfzxpigl>
References: <20250902090436.42806-1-tvrtko.ursulin@igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250902090436.42806-1-tvrtko.ursulin@igalia.com>
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

Hi Tvrtko,

On Tue, Sep 02, 2025 at 10:04:36AM +0100, Tvrtko Ursulin wrote:
> From: Thorsten Blum <thorsten.blum@linux.dev>
> 
> Replace kmalloc() followed by copy_from_user() with memdup_user() to
> improve and simplify set_context_image(), and to silence the following
> Coccinelle/coccicheck warning reported by memdup_user.cocci:
> 
>   WARNING opportunity for memdup_user
> 
> No functional changes intended.
> 
> Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

I was commenting on the original mail, I can do it here as well:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

I don't know which patch you are going to take.

Thanks,
Andi
