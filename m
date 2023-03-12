Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8726E6B6543
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Mar 2023 12:13:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1195A10E0FD;
	Sun, 12 Mar 2023 11:13:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E504210E0FD
 for <intel-gfx@lists.freedesktop.org>; Sun, 12 Mar 2023 11:13:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DD5EE60EFE;
 Sun, 12 Mar 2023 11:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE302C433EF;
 Sun, 12 Mar 2023 11:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1678619586;
 bh=vn6T+dgSQAH/a44bo7vTOMijpLAntt2Er++HWdriilY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CVUiT9YvA6OLgYWq+IeBYCYkKV18SIEGT45/pYK0desV/tVza84J4oClTrS+Y+Ah4
 YXHZxx6ZFm8TdK+DTYlxiLKyso48fvnWG5FHuxx0whpChzLN5JQPzd7xolYLfRflh0
 WPSkWXPxxq1fnwV21/coP+i03ol2oufis2oFZyfc=
Date: Sun, 12 Mar 2023 12:13:03 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Philip =?iso-8859-1?Q?M=FCller?= <philm@manjaro.org>
Message-ID: <ZA2zv2/bv7WT+qSE@kroah.com>
References: <d955327b-cb1c-4646-76b9-b0499c0c64c6@manjaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d955327b-cb1c-4646-76b9-b0499c0c64c6@manjaro.org>
Subject: Re: [Intel-gfx] Stable Patch Don't use BAR mappings for ring
 buffers with LLC might create some issues with 5.15
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 stable@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Mar 12, 2023 at 04:41:32PM +0700, Philip Müller wrote:
> ||||||||||||||||||||
> 
> ||
> 
> Hi all,
> 
> seems there is a report open on the "drm/i915: Don't use BAR mappings for ring buffers with LLC" patch, which was included into 5.15.99 lately.
> 
> I saw this patch also on 6.1 and 6.2. Older LTS kernels I didn't found them yet, even it is tagged to be included from v4.9+ on. However I saw also the patch "drm/i915: Don't use stolen memory for ring buffers with LLC" applied when applied to other kernel series.
> 
> Reverting the patch according to this fixes it:https://gitlab.freedesktop.org/drm/intel/-/issues/8284
> 
> Maybe double-check what is actually needed if this creates issues on some Intel i915 hardware. Thx.

Also another report of this here:
	https://lore.kernel.org/r/NQJqG8n--3-9@tuta.io

I'll go revert this for now and do a new release.

thanks,

greg k-h
