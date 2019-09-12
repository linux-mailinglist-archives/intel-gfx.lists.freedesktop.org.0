Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DADE2B09BB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 09:51:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E2916EC14;
	Thu, 12 Sep 2019 07:51:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3243B6EC14
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 07:51:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 00:51:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="385960992"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 12 Sep 2019 00:51:52 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 346BD5C1E49; Thu, 12 Sep 2019 10:51:38 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190912070925.11526-1-chris@chris-wilson.co.uk>
References: <20190912070925.11526-1-chris@chris-wilson.co.uk>
Date: Thu, 12 Sep 2019 10:51:38 +0300
Message-ID: <87pnk6rlyt.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Add a paranoid
 flush of the CSB pointers upon reset
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQWZ0ZXIg
YSBHUFUgcmVzZXQsIHdlIG5lZWQgdG8gZHJhaW4gYWxsIHRoZSBDUyBldmVudHMgc28gdGhhdCB3
ZSBoYXZlIGFuCj4gYWNjdXJhdGUgcGljdHVyZSBvZiB0aGUgZXhlY2xpc3RzIHN0YXRlIGF0IHRo
ZSB0aW1lIG9mIHRoZSByZXNldC4gQmUKPiBwYXJhbm9pZCBhbmQgZm9yY2UgYSByZWFkIG9mIHRo
ZSBDU0Igd3JpdGUgcG9pbnRlciBmcm9tIG1lbW9yeS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWthIEt1b3BwYWxhIDxt
aWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgfCA0ICsrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCAzZDgzYzdlMGQ5
ZGUuLjYxYTM4YTRjY2JjYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4g
QEAgLTI4MzYsNiArMjgzNiwxMCBAQCBzdGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJvb2wgc3RhbGxlZCkKPiAgCXN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxOwo+ICAJdTMyICpyZWdzOwo+ICAKPiArCW1iKCk7IC8qIHBhcmFub2lhOiBy
ZWFkIHRoZSBDU0IgcG9pbnRlcnMgZnJvbSBhZnRlciB0aGUgcmVzZXQgKi8KPiArCWNsZmx1c2go
ZXhlY2xpc3RzLT5jc2Jfd3JpdGUpOwo+ICsJbWIoKTsKPiArCgpXZSBrbm93IHRoZXJlIGlzIGFs
d2F5cyBhIGNvc3QuIFdlIGRvIGludmFsaWRhdGUgdGhlIGNzYgpvbiBlYWNoIHBhc3Mgb24gcHJv
Y2Vzc19jc2IuCgpBZGQgY3NiX3dyaXRlIGluIHRvIGludmFsaWRhdGVfY3NiIGVudHJpZXMgYWxv
bmcKd2l0aCBtYnMuIFJlbmFtZSBpdCB0byBpbnZhbGlkYXRlX2NzYiBhbmQgdXNlIGl0CmFsd2F5
cz8KCkJ5IGRvaW5nIHNvLCB3ZSBjb3VsZCBwcm9sbHkgdGhyb3cgb3V0IHRoZSBybWIoKSBhdAp0
aGUgc3RhcnQgb2YgdGhlIHByb2Nlc3NfY3NiIGFzIHdlIHdvdWxkIGhhdmUgaW52YWxpZGF0ZWQK
dGhlIHdyaXRlIHBvaW50ZXIgYWxvbmcgd2l0aCB0aGUgZW50cmllcyB3ZSByZWFkLApvbiBwcmV2
aW91cyBwYXNzLgoKLU1pa2EKCgo+ICAJcHJvY2Vzc19jc2IoZW5naW5lKTsgLyogZHJhaW4gcHJl
ZW1wdGlvbiBldmVudHMgKi8KPiAgCj4gIAkvKiBGb2xsb3dpbmcgdGhlIHJlc2V0LCB3ZSBuZWVk
IHRvIHJlbG9hZCB0aGUgQ1NCIHJlYWQvd3JpdGUgcG9pbnRlcnMgKi8KPiAtLSAKPiAyLjIzLjAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
