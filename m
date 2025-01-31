Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F6AA23859
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 01:48:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1947410EA06;
	Fri, 31 Jan 2025 00:48:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="k1tnMc2X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9CA810EA06
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2025 00:48:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id E6EDAA42105;
 Fri, 31 Jan 2025 00:46:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F1B4C4CED2;
 Fri, 31 Jan 2025 00:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1738284517;
 bh=s/w0Uw8FyTmiMwtsU0yNyaCLd4868zM5jg3k1K4mjLE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=k1tnMc2XXtH9vo2gbMgXHk0eQhPJH9hzgaQdexs32uWCR3oU//rRWFsCABuTSYLgY
 Xka0nBQ9Z91S+NUovmSfzm0LJA5pHWSlhg/jadgQNutqZ6H1m1GZ50h+YW2pLH4v3O
 M4seZeYHnlT3bl4NxTa0YyPwYPlb7NCrah5531f0=
Date: Thu, 30 Jan 2025 16:48:36 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: "Vishal Moola (Oracle)" <vishal.moola@gmail.com>
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org, hch@infradead.org,
 urezki@gmail.com, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/2] vmalloc: Introduce vmap_file()
Message-Id: <20250130164836.1163f66bede77ec4bcc9d4b9@linux-foundation.org>
In-Reply-To: <20250131001806.92349-1-vishal.moola@gmail.com>
References: <20250131001806.92349-1-vishal.moola@gmail.com>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Thu, 30 Jan 2025 16:18:04 -0800 "Vishal Moola (Oracle)" <vishal.moola@gmail.com> wrote:

> Currently, users have to call vmap() or vmap_pfn() to map pages to
> kernel virtual space. vmap() requires the page references, and
> vmap_pfn() requires page pfns. If we have a file but no page references,
> we have to do extra work to map them.
> 
> Create a function, vmap_file(), to map a specified range of a given
> file to kernel virtual space. Also convert a user that benefits from
> vmap_file().
> 

Seems like a pretty specialized thing.  Have you identified any other
potential users of vmap_file()?  I couldn't see any.

If drm is likely to remain the only user of this, perhaps we should
leave the code down in drivers/gpu/drm for now?


Also, the amount of copy-n-pasting from vmap() into vmap_file() is
undesirable - code size, maintenance overhead, etc.
