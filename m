Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WbRHIVXFVWqtsgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 07:12:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D37C77510A5
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 07:12:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=lst.de (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEB6410E008;
	Tue, 14 Jul 2026 05:12:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C73D10E008;
 Tue, 14 Jul 2026 05:12:50 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id F228D68BFE; Tue, 14 Jul 2026 07:12:43 +0200 (CEST)
Date: Tue, 14 Jul 2026 07:12:43 +0200
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Christoph Hellwig <hch@lst.de>, baoquan.he@linux.dev, chrisl@kernel.org,
 usama.arif@linux.dev, kasong@tencent.com, nphamcs@gmail.com,
 shikemeng@huaweicloud.com, youngjun.park@lge.com,
 linux-mm@kvack.org, Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: better block swap batching and a different take on swap_ops v5
Message-ID: <20260714051243.GB31523@lst.de>
References: <20260713093350.2154226-1-hch@lst.de>
 <20260713131305.3efec91d077d224a3a8d1aad@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260713131305.3efec91d077d224a3a8d1aad@linux-foundation.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
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
X-Spamd-Result: default: False [-0.51 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lst.de : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_CC(0.00)[lst.de,linux.dev,kernel.org,tencent.com,gmail.com,huaweicloud.com,lge.com,kvack.org,linux.intel.com,intel.com,ursulin.net,ffwll.ch,amd.com,suse.de,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[hch@lst.de,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D37C77510A5

On Mon, Jul 13, 2026 at 01:13:05PM -0700, Andrew Morton wrote:
> On Mon, 13 Jul 2026 11:33:37 +0200 Christoph Hellwig <hch@lst.de> wrote:
> 
> > this series makes use of the swap_iocb for block as well so that it
> > doesn't do inefficient single-bio I/O, and then rebases the swap_ops from
> > Baoquan on top of the now very different method structure.
> > 
> > When running doing kernels builds, which is a workload that doesn't
> > really do much THP anonymous memory it still gets 2x clustering for
> > writeout and 1.2x for reading back swap in.  The overall times do
> > not actually change, though.
> 
> Thanks.  Sashiko review might have found a couple of deadly issues in 
> 
> 	drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> 	drivers/gpu/drm/ttm/ttm_backup.c
> 
> so let me add a zillions cc's.

Well, I mentioned this before, as did you.  But it is all existing
issues.  The proper fix would of course be to not give users such
low-level access to shmem writeback..

On the other Sashiko comment: the bi_vcnt doesn't make any sense,
bi_vcnt is only for the submitters convenience.

