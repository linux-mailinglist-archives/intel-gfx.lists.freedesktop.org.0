Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E91A19DF72
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 22:36:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B4A56E169;
	Fri,  3 Apr 2020 20:36:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A0F46E169
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 20:36:24 +0000 (UTC)
IronPort-SDR: /Sq3gMiXSTywbi28olSKplOBJBFlKRL9pInwY2d1pOX9R5Y8GKhQi+EMIqv/k4eRr4KlvrFh1T
 D8k6XWsxJjHw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 13:36:24 -0700
IronPort-SDR: uE3x8/y5Tdy9J2aeYwsethr+FyNiMrLuyO9OwPhuovH1evd0Y+sAaVBzNq/S55uPMAo2XEZUrx
 JasTUo7TELSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,341,1580803200"; d="scan'208";a="451417438"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga006.fm.intel.com with ESMTP; 03 Apr 2020 13:36:23 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 3 Apr 2020 13:36:23 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.38]) by
 FMSMSX153.amr.corp.intel.com ([169.254.9.172]) with mapi id 14.03.0439.000;
 Fri, 3 Apr 2020 13:36:22 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/selftests: Wait until we start
 timeslicing after a submit
Thread-Index: AQHWCepwD8hZ9Qvt40uxg/8huyHDt6hn2JMwgAB3dgD//4ry8A==
Date: Fri, 3 Apr 2020 20:36:22 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663FFFCC402@fmsmsx107.amr.corp.intel.com>
References: <20200403190209.21818-1-chris@chris-wilson.co.uk>
 <14063C7AD467DE4B82DEDB5C278E8663FFFCC3E1@fmsmsx107.amr.corp.intel.com>
 <158594606463.5852.10172868919470731029@build.alporthouse.com>
In-Reply-To: <158594606463.5852.10172868919470731029@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Wait until we start
 timeslicing after a submit
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
>From: Chris Wilson <chris@chris-wilson.co.uk>
>Sent: Friday, April 3, 2020 4:34 PM
>To: Ruhl, Michael J <michael.j.ruhl@intel.com>; intel-
>gfx@lists.freedesktop.org
>Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Wait until we start
>timeslicing after a submit
>
>Quoting Ruhl, Michael J (2020-04-03 21:31:42)
>> >-----Original Message-----
>> >From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>Chris
>> >Wilson
>> >Sent: Friday, April 3, 2020 3:02 PM
>> >To: intel-gfx@lists.freedesktop.org
>> >Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> >Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Wait until we start
>timeslicing
>> >after a submit
>> >
>> >If we submit, we do not start timeslicnig until we process the CS event
>>
>> s/timeslicnig/timeslicing/
>>
>> >that marks the start of the context running on HW. So in the selftest,
>> >be sure to wait until we have processed the pending events before
>> >asserting that timeslicing has begun.
>> >
>> >Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> >---
>> > drivers/gpu/drm/i915/gt/selftest_lrc.c | 6 +++++-
>> > 1 file changed, 5 insertions(+), 1 deletion(-)
>> >
>> >diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> >b/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> >index 985d4041d929..9e02917695b1 100644
>> >--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> >+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> >@@ -1244,7 +1244,11 @@ static int live_timeslice_queue(void *arg)
>> >               if (err)
>> >                       goto err_rq;
>> >
>> >-              intel_engine_flush_submission(engine);
>> >+              /* Wait until we ack the release_queue and start timeslicing
>> >*/
>> >+              do {
>> >+                      intel_engine_flush_submission(engine);
>> >+              } while (READ_ONCE(engine->execlists.pending[0]));
>>
>> Is this guaranteed to clear?  Or should there be a count to protect against
>> the endless loop?
>
>Yes. If the HW stops, we reset it and clear the submission queue.

In that case:

Acked-by: Michael J. Ruhl <michael.j.ruhl@intel.com>

M

>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
