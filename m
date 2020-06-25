Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0019E20A0E2
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 16:32:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A7E56EBD2;
	Thu, 25 Jun 2020 14:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EBEC6E2D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 14:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 9FD083F891
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 16:32:25 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=WfT7PxW9; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7QJgMhFLxJtn for <intel-gfx@lists.freedesktop.org>;
 Thu, 25 Jun 2020 16:32:24 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 782D23F841
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 16:32:23 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.139.83])
 by mail1.shipmail.org (Postfix) with ESMTPSA id B8F35362166
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 16:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1593095544; bh=q0QDI+SE3iPGAFrU8WPixWD+q4svQqdRB8lpbZJU7ro=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=WfT7PxW9LAEQH8xHG7ox3iKHX/Ls2bQeUjVaV49rcFiCedIw5sw5kgP/i6Gt+2KNc
 V54/61BGjdp3zDWlE0GJYJXrSlapcvtHn1aI8AZ0W7u3eu4b8f1JteCif6k+JapKVT
 AD76WY78eF9VPmyPDQUNf33SZSeGdHSwU5QlO3mc=
To: intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <20200623142843.423594-15-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <b320bbd2-3a81-d5dc-f629-dc9144c1d227@shipmail.org>
Date: Thu, 25 Jun 2020 16:32:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200623142843.423594-15-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 15/26] drm/i915: Make sure execbuffer always
 passes ww state to i915_vma_pin.
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

Hi, Maarten,

On 6/23/20 4:28 PM, Maarten Lankhorst wrote:
> As a preparation step for full object locking and wait/wound handling
> during pin and object mapping, ensure that we always pass the ww context
> in i915_gem_execbuffer.c to i915_vma_pin, use lockdep to ensure this
> happens.
>
> This also requires changing the order of eb_parse slightly, to ensure
> we pass ww at a point where we could still handle -EDEADLK safely.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |   4 +-
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 138 ++++++++++--------
>   drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   4 +-
>   drivers/gpu/drm/i915/gt/gen6_ppgtt.h          |   4 +-
>   drivers/gpu/drm/i915/gt/intel_context.c       |  65 ++++++---
>   drivers/gpu/drm/i915/gt/intel_context.h       |  13 ++
>   drivers/gpu/drm/i915/gt/intel_context_types.h |   3 +-
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 +-
>   drivers/gpu/drm/i915/gt/intel_gt.c            |   2 +-
>   drivers/gpu/drm/i915/gt/intel_lrc.c           |   5 +-
>   drivers/gpu/drm/i915/gt/intel_renderstate.c   |   2 +-
>   drivers/gpu/drm/i915/gt/intel_ring.c          |  10 +-
>   drivers/gpu/drm/i915/gt/intel_ring.h          |   3 +-
>   .../gpu/drm/i915/gt/intel_ring_submission.c   |  15 +-
>   drivers/gpu/drm/i915/gt/intel_timeline.c      |  12 +-
>   drivers/gpu/drm/i915/gt/intel_timeline.h      |   3 +-
>   drivers/gpu/drm/i915/gt/mock_engine.c         |   3 +-
>   drivers/gpu/drm/i915/gt/selftest_lrc.c        |   2 +-
>   drivers/gpu/drm/i915/gt/selftest_timeline.c   |   4 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   2 +-
>   drivers/gpu/drm/i915/i915_drv.h               |  13 +-
>   drivers/gpu/drm/i915/i915_gem.c               |  11 +-
>   drivers/gpu/drm/i915/i915_vma.c               |  13 +-
>   drivers/gpu/drm/i915/i915_vma.h               |  13 +-
>   25 files changed, 214 insertions(+), 134 deletions(-)
>
 From a quick bisect, it appears this patch is what's causing the 
contention in execbuf,
./gem_exec_alignment --run-subtest pi-isolated

/Thomas


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
