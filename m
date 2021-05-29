Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20902394A92
	for <lists+intel-gfx@lfdr.de>; Sat, 29 May 2021 07:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8426E098;
	Sat, 29 May 2021 05:29:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A04CC6E098
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 May 2021 05:29:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A312E6128D;
 Sat, 29 May 2021 05:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1622266154;
 bh=vUcwMg0oxT4K5R8nTbh3KdbXpvAddhf1SbDPcXhNnP4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tm2hPmeU/sfWm5aTQ0V0BHRISk6rF/ZIbPTPWt29w3f4Id/gQ9YdmqBW65i44OyJS
 2EM6N+Zc20RMOtzi6m7ywS4uo3qc8qh3znhmUzeuLNV/a5xgl5FSXBIbWelFTbXVhU
 kIqSWNfNJY5V9KIYsybERb2CoZTeQFYqg1arpRQ8=
Date: Sat, 29 May 2021 07:29:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "J. Bruce Fields" <bfields@fieldses.org>
Message-ID: <YLHRKI+RZ0nvIe/P@kroah.com>
References: <20210528172543.GA7385@fieldses.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210528172543.GA7385@fieldses.org>
Subject: Re: [Intel-gfx] [CI] drm/i915: Disable atomics in L3 for gen9
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 28, 2021 at 01:25:43PM -0400, J. Bruce Fields wrote:
> Would it be possible to apply
> 
> 	58586680ffad "drm/i915: Disable atomics in L3 for gen9"
> 
> to stable kernels?
> 
> I'm finding it quite easy to crash my Thinkpad X1 Carbon 6th gen with
> Blender on Fedora 34 (which is using the 5.11.y kernels).  It applies
> cleanly, and I've been running 5.11.16 with the patch applied and seeing
> no obvious ill effects.

As 5.11.y is now end-of-life, and has been for a week or so, what
kernel(s) would you want this applied to given that 5.12.y is the latest
stable kernel tree?

What prevents you from moving to 5.12.y now?

thanks,

greg k-h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
