Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEFD891B04
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 14:15:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2BD71126FE;
	Fri, 29 Mar 2024 13:15:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="zYtFZbqY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8C4A1126FF
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 13:15:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 4B6FDCE2F7C;
 Fri, 29 Mar 2024 13:15:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C089C433F1;
 Fri, 29 Mar 2024 13:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1711718115;
 bh=SXxQmWkMYtTeEu0wM0ZZLc4fskX3b9plcxCm0Lm+APs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zYtFZbqY4t5iRlyzs3H+Md7bJ44GInJXzapKKou50je2lT7VuxE8Q9Yexn6SmDF0T
 sJS2WY6XucFfHroR7JHH0YcwAnlaG+YxzNKQrCx1Oh2GX7oYaKA3Ir9qxUTikSRwYA
 2D55JLpM/R+JPBkjgKsvWVATtSQqAs6R7jrZpJFg=
Date: Fri, 29 Mar 2024 14:15:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: stable@vger.kernel.org, intel-gfx@lists.freedesktop.org
Subject: Re: v6.7+ stable backport request for drm/i915
Message-ID: <2024032904-reformed-pupil-7519@gregkh>
References: <ZfnpxcS2dXkzlExH@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZfnpxcS2dXkzlExH@intel.com>
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

On Tue, Mar 19, 2024 at 09:38:45PM +0200, Ville Syrjälä wrote:
> Hi stable team,
> 
> Please backport the following the commits to 6.7/6.8 to fix
> some i915 type-c/thunderbolt PLL issues:
> commit 92b47c3b8b24 ("drm/i915: Replace a memset() with zero initialization")
> commit ba407525f824 ("drm/i915: Try to preserve the current shared_dpll for fastset on type-c ports")
> commit d283ee5662c6 ("drm/i915: Include the PLL name in the debug messages")
> commit 33c7760226c7 ("drm/i915: Suppress old PLL pipe_mask checks for MG/TC/TBT PLLs")
> 
> 6.7 will need two additional dependencies:
> commit f215038f4133 ("drm/i915: Use named initializers for DPLL info")
> commit 58046e6cf811 ("drm/i915: Stop printing pipe name as hex")

All now queued up, thanks.

greg k-h
