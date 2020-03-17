Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA8818886F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 15:58:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2FBB6E5AB;
	Tue, 17 Mar 2020 14:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8B726E5AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 14:58:52 +0000 (UTC)
IronPort-SDR: LwNFghtu+lvvRgUawdhDJqnpVg8ogwsV1beOwbGDjot1F5HdsBLJAhNfDHoi9WCp1nLrKtjX+2
 z3k5jabkhQ7g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 07:58:52 -0700
IronPort-SDR: M5AAB9YSxGX5KK/UTr7JYnIx25euQK9xPU7pu/a6P8EJHG11F5BnhX0b4cdCBbj+CoNRzT0AaF
 TxF+/QR+E3qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,564,1574150400"; d="scan'208";a="267989813"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga004.fm.intel.com with ESMTP; 17 Mar 2020 07:58:52 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 17 Mar 2020 07:58:51 -0700
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.163]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.71]) with mapi id 14.03.0439.000;
 Tue, 17 Mar 2020 07:58:52 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/12] drm/i915: Wrap i915_active in a
 simple kreffed struct
Thread-Index: AQHV/Fd+WxDLnwDhrEmnlWH7sXRP96hM3/VQ
Date: Tue, 17 Mar 2020 14:58:50 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663F500650C@FMSMSX108.amr.corp.intel.com>
References: <20200317122719.1889-1-chris@chris-wilson.co.uk>
 <20200317122719.1889-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200317122719.1889-2-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915: Wrap i915_active in a
 simple kreffed struct
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
>From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chris
>Wilson
>Sent: Tuesday, March 17, 2020 8:27 AM
>To: intel-gfx@lists.freedesktop.org
>Subject: [Intel-gfx] [PATCH 02/12] drm/i915: Wrap i915_active in a simple
>kreffed struct
>
>For conveniences of callers that just want to use an i915_active to
>track a wide array of concurrent timelines, wrap the base i915_active
>struct inside a kref. This i915_active will self-destruct after use.
>
>Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>---
> drivers/gpu/drm/i915/i915_active.c | 53
>++++++++++++++++++++++++++++++
> drivers/gpu/drm/i915/i915_active.h |  4 +++
> 2 files changed, 57 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_active.c
>b/drivers/gpu/drm/i915/i915_active.c
>index c4048628188a..535b8161a597 100644
>--- a/drivers/gpu/drm/i915/i915_active.c
>+++ b/drivers/gpu/drm/i915/i915_active.c
>@@ -937,6 +937,59 @@ void i915_active_noop(struct dma_fence *fence,
>struct dma_fence_cb *cb)
> 	active_fence_cb(fence, cb);
> }
>
>+struct auto_active {
>+	struct i915_active base;
>+	struct kref ref;
>+};
>+
>+struct i915_active *i915_active_get(struct i915_active *ref)
>+{
>+	struct auto_active *aa = container_of(ref, typeof(*aa), base);
>+
>+	kref_get(&aa->ref);

Does this need to be kref_get_unless_zero()?

I asked this a couple of days ago, but found that the email for
chris-wilson.co.uk had bounced.  Not sure if you have answered this or not.

Thanks,

Mike

>+	return &aa->base;
>+}
>+
>+static void auto_release(struct kref *ref)
>+{
>+	struct auto_active *aa = container_of(ref, typeof(*aa), ref);
>+
>+	i915_active_fini(&aa->base);
>+	kfree(aa);
>+}
>+
>+void i915_active_put(struct i915_active *ref)
>+{
>+	struct auto_active *aa = container_of(ref, typeof(*aa), base);
>+
>+	kref_put(&aa->ref, auto_release);
>+}
>+
>+static int auto_active(struct i915_active *ref)
>+{
>+	i915_active_get(ref);
>+	return 0;
>+}
>+
>+static void auto_retire(struct i915_active *ref)
>+{
>+	i915_active_put(ref);
>+}
>+
>+struct i915_active *i915_active_create(void)
>+{
>+	struct auto_active *aa;
>+
>+	aa = kmalloc(sizeof(*aa), GFP_KERNEL);
>+	if (!aa)
>+		return NULL;
>+
>+	kref_init(&aa->ref);
>+	i915_active_init(&aa->base, auto_active, auto_retire);
>+
>+	return &aa->base;
>+}
>+
> #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> #include "selftests/i915_active.c"
> #endif
>diff --git a/drivers/gpu/drm/i915/i915_active.h
>b/drivers/gpu/drm/i915/i915_active.h
>index b3282ae7913c..bffbcf7751a7 100644
>--- a/drivers/gpu/drm/i915/i915_active.h
>+++ b/drivers/gpu/drm/i915/i915_active.h
>@@ -221,4 +221,8 @@ void i915_request_add_active_barriers(struct
>i915_request *rq);
> void i915_active_print(struct i915_active *ref, struct drm_printer *m);
> void i915_active_unlock_wait(struct i915_active *ref);
>
>+struct i915_active *i915_active_create(void);
>+struct i915_active *i915_active_get(struct i915_active *ref);
>+void i915_active_put(struct i915_active *ref);
>+
> #endif /* _I915_ACTIVE_H_ */
>--
>2.20.1
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
