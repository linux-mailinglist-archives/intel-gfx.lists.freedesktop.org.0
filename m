Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F84828D20F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 18:19:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA7AB89DB4;
	Tue, 13 Oct 2020 16:19:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D51C089DB4
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 16:19:29 +0000 (UTC)
IronPort-SDR: ytPyn+j8N5IjDrGczekNKz2/F31hgwf6ZdpBjmTCTUBck7S+uC407zLuH9gwYViKI4IyiGAda1
 Rqv183v8LFMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="183424942"
X-IronPort-AV: E=Sophos;i="5.77,371,1596524400"; d="scan'208";a="183424942"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 09:19:28 -0700
IronPort-SDR: qhAI2bjHqjBEsQwD2HHaTVwQ/GmSIQ9BSKkTQux9w3qz/qbmFjCwUVv4VYJIh1+EqdC2sMakoc
 4BPHpdWHCnVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,371,1596524400"; d="scan'208";a="313858018"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga003.jf.intel.com with ESMTP; 13 Oct 2020 09:19:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Oct 2020 09:19:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Oct 2020 09:19:27 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Tue, 13 Oct 2020 09:19:27 -0700
From: "Tang, CQ" <cq.tang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Make the GEM reclaim workqueue high priority
Thread-Index: AQHWoUw7vknVeKpXoUG0dRnaVPrLvamVsYWg
Date: Tue, 13 Oct 2020 16:19:27 +0000
Message-ID: <8c41461201764a0d8a05caba47d1589a@intel.com>
References: <20201013103256.31446-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201013103256.31446-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make the GEM reclaim workqueue
 high priority
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

Chris,
    I tested this patch. It is still not enough, I keep catch running out of lmem.  Every worker invocation takes larger and larger freeing object count.

Here is my debugging code:

+static int obj_count = 0;
+
......
+       if (llist_add(&obj->freed, &i915->mm.free_list)) {
+               bool b;
+               b = queue_work(i915->wq, &i915->mm.free_work);
+               pr_err("queue_work: %d, %d; %d\n", atomic_read(&i915->mm.free_count), obj_count, b);
+               obj_count = 1;
+       } else {
+               obj_count++;
+       }
	
And here  is the output:

[  821.213680] queue_work: 108068, 105764; 1
[  823.309468] queue_work: 148843, 147948; 1
[  826.453132] queue_work: 220000, 218123; 1
[  831.522506] queue_work: 334812, 333773; 1
[  840.040571] queue_work: 539650, 538922; 1
[  860.337644] queue_work: 960811, 1017158; 1

The second number, 'obj_count', is the objects taken by last worker invocation to free.

--CQ


> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Tuesday, October 13, 2020 3:33 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Chris Wilson <chris@chris-wilson.co.uk>; Tang, CQ <cq.tang@intel.com>
> Subject: [PATCH] drm/i915: Make the GEM reclaim workqueue high priority
> 
> Since removing dev->struct_mutex usage, we only use i915->wq for batch
> freeing of GEM objects and ppGTT, it is essential for memory reclaim. If we
> let the workqueue dawdle, we trap excess amounts of memory, so give it a
> priority boost. Although since we no longer depend on a singular mutex, we
> could run unbounded, but first lets try to keep some constraint upon the
> worker.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: CQ Tang <cq.tang@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.c
> b/drivers/gpu/drm/i915/i915_drv.c index 8bb7e2dcfaaa..8c9198f0d2ad
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -219,20 +219,10 @@ intel_teardown_mchbar(struct drm_i915_private
> *dev_priv)  static int i915_workqueues_init(struct drm_i915_private
> *dev_priv)  {
>  	/*
> -	 * The i915 workqueue is primarily used for batched retirement of
> -	 * requests (and thus managing bo) once the task has been
> completed
> -	 * by the GPU. i915_retire_requests() is called directly when we
> -	 * need high-priority retirement, such as waiting for an explicit
> -	 * bo.
> -	 *
> -	 * It is also used for periodic low-priority events, such as
> -	 * idle-timers and recording error state.
> -	 *
> -	 * All tasks on the workqueue are expected to acquire the dev mutex
> -	 * so there is no point in running more than one instance of the
> -	 * workqueue at any time.  Use an ordered one.
> +	 * The i915 workqueue is primarily used for batched freeing of
> +	 * GEM objects and ppGTT, and is essential for memory reclaim.
>  	 */
> -	dev_priv->wq = alloc_ordered_workqueue("i915", 0);
> +	dev_priv->wq = alloc_ordered_workqueue("i915", WQ_HIGHPRI);
>  	if (dev_priv->wq == NULL)
>  		goto out_err;
> 
> --
> 2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
