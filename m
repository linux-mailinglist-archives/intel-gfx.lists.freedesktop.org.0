Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 135E121BC20
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 19:23:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12F5B6EBAB;
	Fri, 10 Jul 2020 17:23:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FC2C6EBAB
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 17:23:28 +0000 (UTC)
IronPort-SDR: Ng7QzRa/Ctx4iEtNFUHinU0HbHo3t6pj3sV8URvIhRSWTBCCwimx1zXtMn4KUljk+z+TJTDdcy
 XyYcdki0Qk+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="166343165"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="166343165"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 10:23:27 -0700
IronPort-SDR: SatOlKZuZSDq9y3Cl63xmli3dDUMy+iIpv9CnUbweEIUoyTqNoNN0XkqZxO4T1SWdqylDveLC0
 zQOSqnR2S5cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="280714624"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga003.jf.intel.com with ESMTP; 10 Jul 2020 10:23:26 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 10:23:17 -0700
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.193]) by
 FMSMSX112.amr.corp.intel.com ([169.254.5.142]) with mapi id 14.03.0439.000;
 Fri, 10 Jul 2020 10:23:17 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gt: Be defensive in the face of
 false CS events
Thread-Index: AQHWVrLC/1tyxl8XlES1kO6vE42hvKkBL7yA///gMwA=
Date: Fri, 10 Jul 2020 17:23:16 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E866301245BC8E3@FMSMSX108.amr.corp.intel.com>
References: <20200710120717.32484-1-chris@chris-wilson.co.uk>
 <20200710121609.6775-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200710121609.6775-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Be defensive in the face of
 false CS events
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
>Sent: Friday, July 10, 2020 8:16 AM
>To: intel-gfx@lists.freedesktop.org
>Cc: Chris Wilson <chris@chris-wilson.co.uk>
>Subject: [Intel-gfx] [PATCH] drm/i915/gt: Be defensive in the face of false CS
>events
>
>If the HW throws a curve ball and reports either en event before it is
                                                                                         ^^
s/en/an/

?

m

>possible, or just a completely impossible event, we have to grin and
>bear it. The first few events, we will likely not notice as we would be
>expecting some event, but as soon as we stop expecting an event and yet
>they still keep coming, then we enter into undefined state territory.
>In which case, bail out, stop processing the events, and reset the
>engine and our set of queued requests to recover.
>
>The sporadic hangs and warnings will continue to plague CI, but at least
>system stability should not be compromised.
>
>Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2045
>Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_lrc.c | 8 ++++++--
> 1 file changed, 6 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c
>b/drivers/gpu/drm/i915/gt/intel_lrc.c
>index fbcfeaed6441..c86324d2d2bb 100644
>--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>@@ -2567,6 +2567,7 @@ static void process_csb(struct intel_engine_cs
>*engine)
> 	tail = READ_ONCE(*execlists->csb_write);
> 	if (unlikely(head == tail))
> 		return;
>+	execlists->csb_head = tail;
>
> 	/*
> 	 * Hopefully paired with a wmb() in HW!
>@@ -2613,6 +2614,9 @@ static void process_csb(struct intel_engine_cs
>*engine)
> 		if (promote) {
> 			struct i915_request * const *old = execlists->active;
>
>+			if (GEM_WARN_ON(!*execlists->pending))
>+				break;
>+
> 			ring_set_paused(engine, 0);
>
> 			/* Point active to the new ELSP; prevent overwriting
>*/
>@@ -2635,7 +2639,8 @@ static void process_csb(struct intel_engine_cs
>*engine)
>
> 			WRITE_ONCE(execlists->pending[0], NULL);
> 		} else {
>-			GEM_BUG_ON(!*execlists->active);
>+			if (GEM_WARN_ON(!*execlists->active))
>+				break;
>
> 			/* port0 completed, advanced to port1 */
> 			trace_ports(execlists, "completed", execlists->active);
>@@ -2686,7 +2691,6 @@ static void process_csb(struct intel_engine_cs
>*engine)
> 		}
> 	} while (head != tail);
>
>-	execlists->csb_head = head;
> 	set_timeslice(engine);
>
> 	/*
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
