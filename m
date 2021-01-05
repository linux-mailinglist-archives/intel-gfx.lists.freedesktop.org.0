Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2470D2EA317
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 02:56:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81236892AD;
	Tue,  5 Jan 2021 01:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82DCE892AD
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 01:56:01 +0000 (UTC)
IronPort-SDR: +IBk5pPFNlw2Y5/B+qbIaatJq0kDe7RbEANzd+avg2N+cq6dQmrNqxQv6Oc9K76FQZSp3r4xXf
 U/1AChfavMDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="174459255"
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; d="scan'208";a="174459255"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 17:56:01 -0800
IronPort-SDR: 4srky6yJYBBWdU8JlR08ae6SxWU4+jAusE+yxO/jaMFOY1OyW4ycbXFbYrBUluUORMsAZmiU68
 r5FlsLWLvZhw==
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; d="scan'208";a="462143126"
Received: from wburton-desk1.ger.corp.intel.com (HELO intel.com)
 ([10.252.28.225])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 17:55:59 -0800
Date: Tue, 5 Jan 2021 03:55:56 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/PHLN5fVP//5RHy@intel.intel>
References: <20210104115145.24460-1-chris@chris-wilson.co.uk>
 <20210104115145.24460-4-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210104115145.24460-4-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/gt: Check the virtual still
 matches upon locking
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Mon, Jan 04, 2021 at 11:51:43AM +0000, Chris Wilson wrote:
> If another sibling is able to claim the virtual request, by the time we
> inspect the request under the lock if may no longer match the local
> engine.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2877
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
