Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LNQ5EunMVGoBfAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 13:32:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A498874A63F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 13:32:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="IGLzlfl/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CBA110E919;
	Mon, 13 Jul 2026 11:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4331F10E911;
 Mon, 13 Jul 2026 11:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783942374; x=1815478374;
 h=message-id:subject:from:to:date:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=db9eSoCMqiyiPL1Dl/5RAF99+DSiTdsNrZQEK+Xtow4=;
 b=IGLzlfl/PyTO9DdmIbT7L6B3ut87KaSPabi+2qbQYa3T4EqHHI+//z3z
 mTo6KkU7ln2Q4atfc1c7FMfw90CyFBuCyMzpLEhzuKZLI26ClwS/YWF3Q
 RgL5/7yxg0GW8IeAxJkYRtVIGW5dHFaYUW8064y9uCtopQo2data0vPNg
 r4f/L6ppsjE3KDatOUvjTegirnjs2YMJlMH2AScGOFUDyTxSEwVnH/WbI
 IcksfCPAMTLmVLjO1i6VY4HteZm6Tm5we6Lvfr4P1DxUJkoPDv6a68Hgi
 BaFp1QTF3bZDGio/0bhLcU5bDumR/24b3wWBiV4dExNP0Hz67BWGffDjG w==;
X-CSE-ConnectionGUID: 6yh5gdxGQ1amq2PyCvPvVw==
X-CSE-MsgGUID: QOo+hmy2QNSqlRF9lVtMEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="94899550"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="94899550"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 04:32:54 -0700
X-CSE-ConnectionGUID: iec/IZY9Tk20QDiTheYBsA==
X-CSE-MsgGUID: 0BwvW1IXQdK1LgG/q/5QaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="251105714"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO [10.245.245.123])
 ([10.245.245.123])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 04:32:51 -0700
Message-ID: <b1eb8f038e0cb094b9df35cdea400b7fd7cd2d54.camel@linux.intel.com>
Subject: Re: Refcounting dma_resv and using that for drm_exec support in TTM
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>, 
 dakr@kernel.org, ecourtney@nvidia.com, simona@ffwll.ch,
 matthew.brost@intel.com, 	nat@pixelcluster.dev, airlied@gmail.com,
 dri-devel@lists.freedesktop.org, 	linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2026 13:32:48 +0200
In-Reply-To: <20260710190752.2355-1-christian.koenig@amd.com>
References: <20260710190752.2355-1-christian.koenig@amd.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,nvidia.com,ffwll.ch,intel.com,pixelcluster.dev,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.hellstrom@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,linux.intel.com:mid,lists.freedesktop.org:from_smtp,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A498874A63F

Hi, Christian,

On Fri, 2026-07-10 at 20:52 +0200, Christian K=C3=B6nig wrote:
> Hi everybody,
>=20
> The idea of ref-counting dma_resv or ww_mutex came up multiple times
> from
> different people, but so far at least I have abandoned that as to
> complicated to implement considering how widely used that object is.
>=20
> Thanks to AI I gave the task to refcount dma_resv to Claude Sonet 4
> just
> to check how horrible it would look like.
>=20
> Well turns out that this is actually a cleanup we should most likely
> aim
> for and I'm really wondering why we haven't done it like this in the
> first place.
>=20
> Not only resolves it a bunch of issues with dma_resv instances shared
> by
> multiple GEM objects (we just recently had a bunch of patches for
> that on
> the mailing list), but also allows TTM to implement it's delayed
> delete
> handling without any zombie resurrection or similar hacks.
>=20
> The patch set is totally work in progress and only survives a smoke
> test
> with amdgpu, but I still wanted to check if the idea is valuable and
> should be looked in further.
>=20
> Please comment and/or tear apart :)

Before starting to look at this, in the spirit of trying to aligning on
a "final" solution for ww transactions used in TTM, could we agree on
how we are supposed to pass the importer's ww transaction context to
the exporter's dma_map_attachment() operation to handle exporter
evictions while mapping, because that decides what abstaction we should
use for WW transations within TTM.

drm_exec_init()
xe_bo_validate() // IMporter
dma_buf_map()    // importer;
map_attachment() // callback in exporter
xe_bo_validate() // exporter tries to move exportert bo to VRAM but
runs out of memory.
ttm_bo_evict()   // exporter's evict needs importer's drm_exec

As mentioned a couple of times before, we can't pass a drm_exec to the
exporter because that would make dma-buf depend on drm.

So with this series it would be sufficient to move drm_exec to the dma-
buf layer and rename it, but I still think we should have a plan.

Thanks,
Thomas




>=20
> Cheers,
> Christian.
