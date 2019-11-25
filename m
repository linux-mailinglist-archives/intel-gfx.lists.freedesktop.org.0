Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A06BD108E9F
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 14:13:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 078946E142;
	Mon, 25 Nov 2019 13:13:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E49A6E142
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 13:13:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 05:13:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="211020005"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.158])
 by orsmga003.jf.intel.com with ESMTP; 25 Nov 2019 05:13:55 -0800
Date: Mon, 25 Nov 2019 15:13:56 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191125131356.GB1815@intel.intel>
References: <20191125112520.1760492-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125112520.1760492-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Fixup
 cancel_port_requests()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgo+ICAJLyogTWFyayB0aGUgZW5kIG9mIGFjdGl2ZSBiZWZvcmUgd2Ugb3Zlcndy
aXRlICphY3RpdmUgKi8KPiAtCVdSSVRFX09OQ0UoZXhlY2xpc3RzLT5hY3RpdmUsIGV4ZWNsaXN0
cy0+cGVuZGluZyk7Cj4gLQo+IC0JZm9yIChwb3J0ID0gZXhlY2xpc3RzLT5hY3RpdmU7IChycSA9
ICpwb3J0KTsgcG9ydCsrKQo+IC0JCWV4ZWNsaXN0c19zY2hlZHVsZV9vdXQocnEpOwo+IC0JZXhl
Y2xpc3RzLT5hY3RpdmUgPQo+IC0JCW1lbXNldChleGVjbGlzdHMtPmluZmxpZ2h0LCAwLCBzaXpl
b2YoZXhlY2xpc3RzLT5pbmZsaWdodCkpOwo+ICsJZm9yIChwb3J0ID0geGNoZygmZXhlY2xpc3Rz
LT5hY3RpdmUsIGV4ZWNsaXN0cy0+cGVuZGluZyk7ICpwb3J0OyBwb3J0KyspCj4gKwkJZXhlY2xp
c3RzX3NjaGVkdWxlX291dCgqcG9ydCk7Cj4gKwlXUklURV9PTkNFKGV4ZWNsaXN0cy0+YWN0aXZl
LAo+ICsJCSAgIG1lbXNldChleGVjbGlzdHMtPmluZmxpZ2h0LCAwLCBzaXplb2YoZXhlY2xpc3Rz
LT5pbmZsaWdodCkpKTsKClJldmlld2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVs
LmNvbT4KCkFuZGkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
