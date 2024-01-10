Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 414C6829628
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 10:21:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7366B10E582;
	Wed, 10 Jan 2024 09:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED4310E582;
 Wed, 10 Jan 2024 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Fed6Wh38yLZ4VW44UQIVxDeEah6yaESJroVirbnMcCQ=; b=BzqKa9NUJWdXYv/6rgJZ4RYlWu
 NoYKk1B6vvpRdx9T5jBwEbUpXKbB8ClufPgK2+QxrMZA4mYpvYPlrZBfhNN3Eq3c8NvdELaZfWQBA
 qfmN5Oux/8hGs/+KFHxmTyEKgilboZcGvJOxMoPkRpYoolaZ1yYG44FbLUe8cXpQ9CY8mS090847h
 8HR55gJQTas2JOmu7+yt1dCZ3PU9LzfzRPVSS2UoIJ3XSSYdwsP/jr3oxtjv80gPLeoMHrEtLbaUc
 e8MTRADeIe8t1pag7oAFYXTjJvi3NNL5SVv5oRpf857r0P1F947fMRc+a1lIOdOLRinVn/+IgWgWD
 ujp50hSg==;
Received: from [2001:4bb8:191:2f6b:27f:45ef:e74a:3466] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
 id 1rNUls-00AsAW-1I; Wed, 10 Jan 2024 09:21:12 +0000
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>, Hugh Dickins <hughd@google.com>,
 Chandan Babu R <chandan.babu@oracle.com>
Subject: disable large folios for shmem file used by xfs xfile
Date: Wed, 10 Jan 2024 10:21:07 +0100
Message-Id: <20240110092109.1950011-1-hch@lst.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: "Darrick J . Wong" <djwong@kernel.org>, dri-devel@lists.freedesktop.org,
 David Howells <dhowells@redhat.com>, linux-mm@kvack.org,
 Huang Rui <ray.huang@amd.com>, David Airlie <airlied@gmail.com>,
 x86@kernel.org, Dave Hansen <dave.hansen@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 linux-sgx@vger.kernel.org, Jarkko Sakkinen <jarkko@kernel.org>,
 keyrings@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

Darrick reported that the fairly new XFS xfile code blows up when force
enabling large folio for shmem.  This series fixes this quickly by disabling
large folios for this particular shmem file for now until it can be fixed
properly, which will be a lot more invasive.

I've added most of you to the CC list as I suspect most other users of
shmem_file_setup and friends will have similar issues.
