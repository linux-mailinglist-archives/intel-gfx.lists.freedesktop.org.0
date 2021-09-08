Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C67404000
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 21:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4008921A;
	Wed,  8 Sep 2021 19:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 532A08921A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 19:45:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="200112630"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="200112630"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 12:45:28 -0700
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="693574591"
Received: from nvishwa1-desk.sc.intel.com (HELO nvishwa1-DESK) ([172.25.29.76])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 12:45:28 -0700
Date: Wed, 8 Sep 2021 12:45:54 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210908194554.GT11424@nvishwa1-DESK>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-11-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210830121006.2978297-11-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 10/19] Move CONTEXT_VALID_BIT check
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

On Mon, Aug 30, 2021 at 02:09:57PM +0200, Maarten Lankhorst wrote:
>Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_engine_pm.c | 5 +++--
> 1 file changed, 3 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>index 1f07ac4e0672..df81a0dc481e 100644
>--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>@@ -52,8 +52,6 @@ static int __engine_unpark(struct intel_wakeref *wf)
> 	/* Discard stale context state from across idling */
> 	ce = engine->kernel_context;
> 	if (ce) {
>-		GEM_BUG_ON(test_bit(CONTEXT_VALID_BIT, &ce->flags));
>-
> 		/* Flush all pending HW writes before we touch the context */
> 		while (unlikely(intel_context_inflight(ce)))
> 			intel_engine_flush_submission(engine);
>@@ -68,6 +66,9 @@ static int __engine_unpark(struct intel_wakeref *wf)
> 			 ce->timeline->seqno,
> 			 READ_ONCE(*ce->timeline->hwsp_seqno),
> 			 ce->ring->emit);
>+
>+		GEM_BUG_ON(test_bit(CONTEXT_VALID_BIT, &ce->flags));
>+

Looks good to me.
Reviewed-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

> 		GEM_BUG_ON(ce->timeline->seqno !=
> 			   READ_ONCE(*ce->timeline->hwsp_seqno));
> 	}
>-- 
>2.32.0
>
