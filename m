Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 631B815F743
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 21:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974326FB9F;
	Fri, 14 Feb 2020 20:01:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B36C289DC1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 20:01:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 12:01:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,441,1574150400"; d="scan'208";a="257634138"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga004.fm.intel.com with ESMTP; 14 Feb 2020 12:01:57 -0800
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 14 Feb 2020 12:01:57 -0800
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.2]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.191]) with mapi id 14.03.0439.000;
 Fri, 14 Feb 2020 12:01:56 -0800
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 19/19] drm/i915: Use ww pinning for
 intel_context_create_request()
Thread-Index: AQHV4yHluUZ9yL9aTkq5mKnTgxrNhagbG7BA
Date: Fri, 14 Feb 2020 20:01:56 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663F4FC3C1D@FMSMSX108.amr.corp.intel.com>
References: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
 <20200214103055.2117836-20-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200214103055.2117836-20-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODA0YjJiNzAtMjdkNi00NjhiLTk5ZGEtZDA3MGJkNzEwM2JmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoickN6bFZUOWxzN3VBMmJBeUJmTStTSmZJelZBRTYxTHM4ZzlDQ3NEODl3UndSMllwcGlkMmR4d3VtaHJ6dVg3RyJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 19/19] drm/i915: Use ww pinning for
 intel_context_create_request()
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

>-----Original Message-----
>From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>Maarten Lankhorst
>Sent: Friday, February 14, 2020 5:31 AM
>To: intel-gfx@lists.freedesktop.org
>Subject: [Intel-gfx] [PATCH 19/19] drm/i915: Use ww pinning for
>intel_context_create_request()
>
>We want to get rid of intel_context_pin(), convert
>intel_context_create_request() first. :)
>
>Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_context.c | 20 +++++++++++++++-----
> 1 file changed, 15 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_context.c
>b/drivers/gpu/drm/i915/gt/intel_context.c
>index 87f9f9e61916..44868b10be0a 100644
>--- a/drivers/gpu/drm/i915/gt/intel_context.c
>+++ b/drivers/gpu/drm/i915/gt/intel_context.c
>@@ -436,15 +436,25 @@ int intel_context_prepare_remote_request(struct
>intel_context *ce,
>
> struct i915_request *intel_context_create_request(struct intel_context *ce)
> {
>+	struct i915_gem_ww_ctx ww;
> 	struct i915_request *rq;
> 	int err;
>
>-	err = intel_context_pin(ce);
>-	if (unlikely(err))
>-		return ERR_PTR(err);
>+	i915_gem_ww_ctx_init(&ww, true);
>+retry:
>+	err = intel_context_pin_ww(ce, &ww);
>+	if (!err) {
>+		rq = i915_request_create(ce);
>+		intel_context_unpin(ce);
>+	} else if (err == -EDEADLK) {
>+		err = i915_gem_ww_ctx_backoff(&ww);
>+		if (!err)
>+			goto retry;
>+	} else {
>+		rq = ERR_PTR(err);
>+	}

If you have the pathological path:

err = intel_context_pin_ww(cd, &&))
	else if (err == -EDEADLK)
		err = i915_gem_ww_ctx_backoff(&ww) ; (where err != 0)

It appears that you can get to IS_ERR(rq) with rq being garbage from the
stack.

Do you need to preset rq, or set it on: 

if (!err)
	goto retry;
else
	rq = ERR_PTR(err);

?

Thanks,

Mike


>
>-	rq = i915_request_create(ce);
>-	intel_context_unpin(ce);
>+	i915_gem_ww_ctx_fini(&ww);
>
> 	if (IS_ERR(rq))
> 		return rq;
>--
>2.25.0.24.g3f081b084b0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
