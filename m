Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FF51F9FA1
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 20:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2395A6E4C7;
	Mon, 15 Jun 2020 18:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0BBB6E4C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 18:47:25 +0000 (UTC)
IronPort-SDR: 86Mt5bwTAC6keQHyi6yfJkbPIeb1qbn5TVJK8hrPcwma2r/fD3TxaIQdq9YPz7kL9SqTuixLbD
 AHl5XNPSpsZg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 11:47:25 -0700
IronPort-SDR: sM2l3oloX1fjaI2ulNb2v5wNX46N6TtmEaGSAQP4kYawmKRMXedKGY0/Ytb0dLXKCHBuk9QD4e
 iYIjxuM0IFsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,515,1583222400"; d="scan'208";a="420467756"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 15 Jun 2020 11:47:21 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 76F055C2C94; Mon, 15 Jun 2020 21:44:42 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200615183935.17389-1-chris@chris-wilson.co.uk>
References: <20200615183935.17389-1-chris@chris-wilson.co.uk>
Date: Mon, 15 Jun 2020 21:44:42 +0300
Message-ID: <874krc9nj9.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Don't flush the tasklet if not
 setup
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> If the tasklet is not being used, don't try and flush it.
>
> Fixes: 594893870044 ("drm/i915/gt: Add a safety submission flush in the heartbeat")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 31049e0bdb57..045179c65c44 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1094,6 +1094,9 @@ void intel_engine_flush_submission(struct intel_engine_cs *engine)
>  {
>  	struct tasklet_struct *t = &engine->execlists.tasklet;
>  
> +	if (!t->func)
> +		return;
> +
>  	/* Synchronise and wait for the tasklet on another CPU */
>  	tasklet_kill(t);
>  
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
