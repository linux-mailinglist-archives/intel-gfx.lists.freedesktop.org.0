Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B095265C0D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 10:57:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6481A6E392;
	Fri, 11 Sep 2020 08:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E52266E392
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 08:56:59 +0000 (UTC)
IronPort-SDR: wmLe4qQ5VojFz1tAAb3dgG50bg0f4v0F5TQqjgpeb+akOQYyfjajSB07r1mIh7JbguHN+7vH7C
 PknqkHwPpoDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="138237371"
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="138237371"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 01:56:59 -0700
IronPort-SDR: z/dF2ppwTb/r7HQz/mPb/8uhr4xnUDGMad46a78uEfhIZYkGd8Uf3Fa1e6g6zBDTkmZ8p2M4V3
 wQPjnwDuAiyw==
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="449920295"
Received: from nehagupt-mobl3.gar.corp.intel.com (HELO [10.252.58.71])
 ([10.252.58.71])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 01:56:58 -0700
To: Dave Airlie <airlied@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
References: <CAPM=9twVqXMW17Pw11W09D9+tn+r676yb7R3FxwpkMYrTEtS1A@mail.gmail.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <f42a12f4-9c43-bfe1-20b6-f42b729d633f@intel.com>
Date: Fri, 11 Sep 2020 09:56:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAPM=9twVqXMW17Pw11W09D9+tn+r676yb7R3FxwpkMYrTEtS1A@mail.gmail.com>
Content-Language: en-GB
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/09/2020 06:42, Dave Airlie wrote:
> I've just been looking at the current DG1 uapi, and I can't see any
> flag to allow userspace to upfront say it was a contiguous vram BO.
> 
> I think you'd really want this for scanout, since otherwise you'll
> have to migrate any non-contig to contig when it transitions to
> scanout, and cause an extra set of copies.

Hmm, why do we need physically contiguous memory for scanout? From hw 
pov it's seen through the GTT.

> 
> Dave.
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
