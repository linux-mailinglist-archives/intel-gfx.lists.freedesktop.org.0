Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E23494A46E
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 11:36:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2932310E49B;
	Wed,  7 Aug 2024 09:36:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="btbhCRAZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A50D910E49B
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 09:36:05 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A161561127;
 Wed,  7 Aug 2024 09:36:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E42EDC4AF0B;
 Wed,  7 Aug 2024 09:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1723023364;
 bh=SIN474AVw4y1MoDQyBN2l9zLDxAG8yJpM+IZg/xSlBk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=btbhCRAZArjLvUl8j5Ej+vHzQoO1vTjwqrNsQBIT0/x406nNG6tlbPi9O+sN17d4Y
 QICBpuxQ5Bjmn0gXNfW6CQYVZcH8G9ejnTHAA9QFo2zZkYlDWAI6Ot2tDmga9anM+b
 WGgtBA/ZIv47FtykXIpoPT2AFtuvlcGoPU21CF4LWL98hI/ZRbIPlQfOtpM6SjubXy
 OlCR91eQljQjrJdxLmEtfQYDLsvKApDB3/uWNI88bc+X4QiyQeaPCNomUP+ive0rEL
 gGm3BEKgE3wm60LcEtCDTOpcEofl8MTOn6i7t19oigLeiBJBu3URtJDBmLKsiEuJyf
 nO0JARebaxVPA==
Date: Wed, 7 Aug 2024 11:35:56 +0200
From: Christian Brauner <brauner@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Cc: kernel test robot <oliver.sang@intel.com>, 
 Ryan Roberts <ryan.roberts@arm.com>, oe-lkp@lists.linux.dev, lkp@intel.com, 
 Linux Memory Management List <linux-mm@kvack.org>,
 linux-fsdevel@vger.kernel.org, linux-block@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, linux-bcachefs@vger.kernel.org,
 ceph-devel@vger.kernel.org, 
 ecryptfs@vger.kernel.org, linux-ext4@vger.kernel.org, 
 linux-f2fs-devel@lists.sourceforge.net, linux-um@lists.infradead.org,
 linux-mtd@lists.infradead.org, 
 jfs-discussion@lists.sourceforge.net, linux-nfs@vger.kernel.org,
 linux-nilfs@vger.kernel.org, 
 ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, 
 linux-karma-devel@lists.sourceforge.net, devel@lists.orangefs.org,
 reiserfs-devel@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [linux-next:master] [fs]  cdc4ad36a8:
 kernel_BUG_at_include/linux/page-flags.h
Message-ID: <20240807-fazit-bergbahn-25781f6167b7@brauner>
References: <202408062249.2194d51b-lkp@intel.com>
 <ZrLuBz1eBdgFzIyC@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZrLuBz1eBdgFzIyC@casper.infradead.org>
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

On Wed, Aug 07, 2024 at 04:46:15AM GMT, Matthew Wilcox wrote:
> On Tue, Aug 06, 2024 at 10:26:17PM +0800, kernel test robot wrote:
> > kernel test robot noticed "kernel_BUG_at_include/linux/page-flags.h" on:
> > 
> > commit: cdc4ad36a871b7ac43fcc6b2891058d332ce60ce ("fs: Convert aops->write_begin to take a folio")
> > https://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git master
> > 
> > [test failed on linux-next/master 1e391b34f6aa043c7afa40a2103163a0ef06d179]
> > 
> > in testcase: boot
> 
> This patch should fix it.
> 
> Christian, can you squash the fix in?

Yep, done!
