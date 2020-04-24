Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9570D1B8129
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 22:51:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 980FD6EB08;
	Fri, 24 Apr 2020 20:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62AC76EB08
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 20:51:44 +0000 (UTC)
IronPort-SDR: xEYgXOEXKVVB2Ba0p6kfbDczcHNkztcZkFd+uUZgio+NFuZg2VFM5+cYzZjJVjV5CwkxfaPkTU
 wCE8G9PMIC5A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:51:43 -0700
IronPort-SDR: KmZKfq1/8otp/SovROwCZHUwUvK8gEkg+DOK1JXYLjp31khfOtw7+DIQak9wawGiOcp+6RjVA/
 h3s7pH+toIJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335482470"
Received: from mlandows-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.12.15])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:51:41 -0700
Date: Fri, 24 Apr 2020 23:51:40 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200424205140.GB1429@intel.intel>
References: <20200424191410.27570-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424191410.27570-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Drop rq->ring->vma peeking from
 error capture
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

>  static void engine_record_execlists(struct intel_engine_coredump *ee)
> @@ -1231,8 +1235,10 @@ static void engine_record_execlists(struct intel_engine_coredump *ee)
>  	struct i915_request * const *port = el->active;
>  	unsigned int n = 0;
>  
> -	while (*port)
> -		record_request(*port++, &ee->execlist[n++]);
> +	while (*port) {
> +		if (record_request(*port++, &ee->execlist[n]))
> +			n++;
> +	}

grrrr.... is this necessary?

Besides, in a one line while loop we aren't supposed to use
braces.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
