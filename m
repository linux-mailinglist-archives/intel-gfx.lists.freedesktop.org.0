Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1551B265F7E
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 14:27:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B38F6EA14;
	Fri, 11 Sep 2020 12:27:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F9466EA14
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 12:27:13 +0000 (UTC)
IronPort-SDR: H7ZA6H1QQVo5askJ51WqCLIlc2CuSCV5Opotgtof/20/F4Di5XY8E3DEa68bXYDuGs5yEK4ndn
 SHwfDBbUYSCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="146476871"
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="146476871"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 05:27:11 -0700
IronPort-SDR: WVLhJdTiUqmD1jiPze4nyy2eET5u/aF1Pq/qQwD8w5+fThDdHBTLUKQnTF4gAAIa4EdlCte5B2
 PDPSZNC89Nng==
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="449971090"
Received: from reweir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.6.151])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 05:27:09 -0700
MIME-Version: 1.0
In-Reply-To: <f42a12f4-9c43-bfe1-20b6-f42b729d633f@intel.com>
References: <CAPM=9twVqXMW17Pw11W09D9+tn+r676yb7R3FxwpkMYrTEtS1A@mail.gmail.com>
 <f42a12f4-9c43-bfe1-20b6-f42b729d633f@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <159982722697.15554.10447903613389770525@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 11 Sep 2020 15:27:07 +0300
Subject: Re: [Intel-gfx] dg1 flag for userspace to allocate contig resources
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+ Jani and Ville

Quoting Matthew Auld (2020-09-11 11:56:56)
> On 11/09/2020 06:42, Dave Airlie wrote:
> > I've just been looking at the current DG1 uapi, and I can't see any
> > flag to allow userspace to upfront say it was a contiguous vram BO.
> > 
> > I think you'd really want this for scanout, since otherwise you'll
> > have to migrate any non-contig to contig when it transitions to
> > scanout, and cause an extra set of copies.
> 
> Hmm, why do we need physically contiguous memory for scanout? From hw 
> pov it's seen through the GTT.

That's correct. On both discrete (and integrated) platforms the scan-out
addresses on Intel GPUs are programmed to targer Global GTT managed by
kernel. So no need to have the backing storage contiguous.

Only extra action required for a scan-out BO is to bind it to the GGTT in
addition to the ppGTT that renders to it. 

GGTT is relatively expensive to write to these days and limited in size,
but that can't really be helped with an upfront flag.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
