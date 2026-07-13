Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HEWVCddGVWqMmQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 22:13:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB1974EFEF
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 22:13:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux-foundation.org header.s=korg header.b=d5pRZ+Fa;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=none
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 332F410EADC;
	Mon, 13 Jul 2026 20:13:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C406210EADD;
 Mon, 13 Jul 2026 20:13:07 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id EF47242ADE;
 Mon, 13 Jul 2026 20:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 272691F00A3A;
 Mon, 13 Jul 2026 20:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=korg; t=1783973586;
 bh=zNMcQg/QQOMJnm4JfpFNABwF8Ya+JEdt/5e9nl4z720=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=d5pRZ+Fa6/vyblirCa4HDcE3KQZPSBlFG0a4tb9CcEMh3wtxj9zwmybCNeAcPiuWq
 UVntrVU/RQVfo1Q+BKmpnsbZP3DqxpEwvyY5coxuuEFxUsYlb+YdDTdDegsF1dRWum
 ddmIci1/2NuA8DbOVeFmjMMG6BI+o5M3kmEWgh+U=
Date: Mon, 13 Jul 2026 13:13:05 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Christoph Hellwig <hch@lst.de>
Cc: baoquan.he@linux.dev, chrisl@kernel.org, usama.arif@linux.dev,
 kasong@tencent.com, nphamcs@gmail.com, shikemeng@huaweicloud.com,
 youngjun.park@lge.com, linux-mm@kvack.org, Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Christian Koenig
 <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>, Matthew Auld
 <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: better block swap batching and a different take on swap_ops v5
Message-Id: <20260713131305.3efec91d077d224a3a8d1aad@linux-foundation.org>
In-Reply-To: <20260713093350.2154226-1-hch@lst.de>
References: <20260713093350.2154226-1-hch@lst.de>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linux.dev,kernel.org,tencent.com,gmail.com,huaweicloud.com,lge.com,kvack.org,linux.intel.com,intel.com,ursulin.net,ffwll.ch,amd.com,suse.de,lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	FROM_NEQ_ENVFROM(0.00)[akpm@linux-foundation.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9FB1974EFEF

On Mon, 13 Jul 2026 11:33:37 +0200 Christoph Hellwig <hch@lst.de> wrote:

> this series makes use of the swap_iocb for block as well so that it
> doesn't do inefficient single-bio I/O, and then rebases the swap_ops from
> Baoquan on top of the now very different method structure.
> 
> When running doing kernels builds, which is a workload that doesn't
> really do much THP anonymous memory it still gets 2x clustering for
> writeout and 1.2x for reading back swap in.  The overall times do
> not actually change, though.

Thanks.  Sashiko review might have found a couple of deadly issues in 

	drivers/gpu/drm/i915/gem/i915_gem_shmem.c
	drivers/gpu/drm/ttm/ttm_backup.c

so let me add a zillions cc's.

	https://sashiko.dev/#/patchset/20260713093350.2154226-1-hch@lst.de
