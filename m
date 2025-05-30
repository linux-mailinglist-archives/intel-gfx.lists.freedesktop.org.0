Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3273AC94BD
	for <lists+intel-gfx@lfdr.de>; Fri, 30 May 2025 19:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9C6310E225;
	Fri, 30 May 2025 17:28:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="ATkJwl0W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A49410E225
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 May 2025 17:28:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 13C69A4FB17;
 Fri, 30 May 2025 17:28:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B50C0C4CEE9;
 Fri, 30 May 2025 17:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1748626123;
 bh=GdcfJTIn4EytzQKo4ejTdCL4JTbbbptL8+8tqtN4Cvc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ATkJwl0WhZr2oNKqAcxbj4uBGmLzfhBZmkWuhd3oOdOeZ18cbiNkyEmaZzixDZ/OH
 3T1IQWLc2UvpHqooPq1kA3Oxraj7CVeno0n/fIkojyopxiX6/Ec2rc5B4p3YDClKf6
 FUaEzhbE5smIIkFrQqotEGp9BaxH+cnHnFCqBJj7v5B2d2hqz9qhblvZ7AK3b/cKVh
 yCSU+J8svgc7hCkDyP8A3/WXZMy0Bb52VNEJcY1TTIMtv+8TdieiD8kp6ATZv29n/2
 CmbNy/IruGQAbOaMwtQF823e+4h/8Qmascp3h5J4PXXnhvHhvkfivxgINr7vBHXiRa
 0q8j0Zs+mjz3w==
Date: Fri, 30 May 2025 10:28:40 -0700
From: Kees Cook <kees@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-hardening@vger.kernel.org, intel-gfx@lists.freedesktop.org
Subject: Re: i915 utils: range_overflows*()
Message-ID: <202505301026.126AB6FFC@keescook>
References: <cd0ea72c6cab6c478336cd1bb5b517a9fe7a150d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cd0ea72c6cab6c478336cd1bb5b517a9fe7a150d@intel.com>
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

On Fri, May 30, 2025 at 10:44:31AM +0300, Jani Nikula wrote:
> 
> Hi Kees -
> 
> drivers/gpu/drm/i915/i915_utils.h has a handful of helper macros for
> checking range overflows: range_overflows(), range_overflows_t(),
> range_overflows_end(), and range_overflows_end_t().
> 
> Looks like the first one has also been copy-pasted to
> include/drm/drm_buddy.h.
> 
> Feels like include/linux/overflow.h would be the right place for (some
> version of) them.
> 
> Thoughts?

Sure, yes! They need some documentation too. :) And probably some
renaming. It looks like range_overflows() is not end-inclusive, but
range_overflows_end() is? And the _t variants are forcing explicit
types (like max_t, but unlike struct_size_t).

-- 
Kees Cook
