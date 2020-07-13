Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B2021D59C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 14:15:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C17ED6E0AF;
	Mon, 13 Jul 2020 12:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF4B06E0AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 12:15:41 +0000 (UTC)
IronPort-SDR: dCSvp+c57OOu3OH1Hp2SMhy/OVjhUm370h3vn1+R1Io/0FP2NVt/WvgVBbz85rPLNSV4E4J5Vu
 pLmmDAEB26aw==
X-IronPort-AV: E=McAfee;i="6000,8403,9680"; a="166708373"
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; d="scan'208";a="166708373"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 05:15:41 -0700
IronPort-SDR: wls6kdOqmRMKaSoWBdQCFYzloZioI42U3yIAPfwrOkgeouwtG9t5zErRm9VjSPNIlWQFWDG+Zj
 hKcQxEVay2Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; d="scan'208";a="485460617"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jul 2020 05:15:40 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id EFC505C0D4C; Mon, 13 Jul 2020 15:15:19 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200713120437.4442-1-chris@chris-wilson.co.uk>
References: <20200713120437.4442-1-chris@chris-wilson.co.uk>
Date: Mon, 13 Jul 2020 15:15:19 +0300
Message-ID: <87k0z7392g.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Free stale request on
 destroying the virtual engine
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Since preempt-to-busy, we may unsubmit a request while it is still on
> the HW and completes asynchronously. That means it may be retired and in
> the process destroy the virtual engine (as the user has closed their
> context), but that engine may still be holding onto the unsubmitted
> compelted request. Therefore we need to potentially cleanup the old

completed.
-Mika
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
