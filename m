Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8782DC7F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 14:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9854B6E0FC;
	Wed, 29 May 2019 12:13:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C6E76E0FC
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 12:13:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 05:13:28 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by orsmga008.jf.intel.com with ESMTP; 29 May 2019 05:13:27 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 713CD5C1135; Wed, 29 May 2019 15:13:25 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190528154053.22004-1-chris@chris-wilson.co.uk>
References: <20190528154053.22004-1-chris@chris-wilson.co.uk>
Date: Wed, 29 May 2019 15:13:25 +0300
Message-ID: <87imttsbkq.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Avoid refcount_inc on known zero
 count
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSW4gaW50
ZWxfd2FrZXJlZl9hdXRvLCB3ZSB1c2UgcmVmY291bnRfaW5jX25vdF96ZXJvIHRvIGRldGVjdCB0
aGUgZmlyc3QKPiB1c2UgYW5kIGluaXRpYWxpc2UgdGhlIHRpbWVyLiBPbiBkb2luZyBzbywgd2Ug
aGF2ZSB0byBhdm9pZCB1c2luZwo+IHJlZmNvdW50X2luYyBvbiB0aGF0IHplcm8gY291bnQgYXMg
dGhlIGRlYnVnIGNvZGUgZmxhZ3MgdGhhdCBhcyBhbgo+IGVycm9yOgo+IAlyZWZjb3VudF90OiBp
bmNyZW1lbnQgb24gMDsgdXNlLWFmdGVyLWZyZWUuCj4KClllYWggdGhlcmUgYXJlIHJlaW5mb3Jj
ZWQgdmVyc2lvbjogcmVmY291bnRfaW5jX2NoZWNrZWQsIHdoaWNoCkkgZmFpbGVkIHRvIG5vdGlj
ZS4KCkkgZ3Vlc3MgdGhlIGdvb2QgbmV3cyBpcyB0aGF0IG5vdyB3ZSBoYXZlIHByb29mIHRoYXQg
dGhlcmUgaXMKc29tZW9uZSB3YXRjaGluZyBvdXIgc2l4LgoKPiBSZWFycmFuZ2UgdGhlIGNvZGUg
c28gdGhhdCBpZiB3ZSBrbm93IHRoZSBjb3VudCBpcyAwIGFuZCB3ZSBhcmUKPiBpbml0aWFsaXNp
bmcsIHdlIGV4cGxpY2l0bHkgc2V0IGl0IHRvIDEuCj4KPiBGaXhlczogYjI3ZTM1YWU1YjE4ICgi
ZHJtL2k5MTU6IEtlZXAgdXNlciBHR1RUIGFsaXZlIGZvciBhIG1pbmltdW0gb2YgMjUwbXMiKQo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYyB8IDQgKystLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3dha2VyZWYuYwo+IGluZGV4IGMyZGRhNWEzNzVmMC4uYzI1YmExYjVlOGJh
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYwo+IEBAIC0xMTQsMTEgKzEx
NCwxMSBAQCB2b2lkIGludGVsX3dha2VyZWZfYXV0byhzdHJ1Y3QgaW50ZWxfd2FrZXJlZl9hdXRv
ICp3ZiwgdW5zaWduZWQgbG9uZyB0aW1lb3V0KQo+ICAKPiAgCWlmICghcmVmY291bnRfaW5jX25v
dF96ZXJvKCZ3Zi0+Y291bnQpKSB7Cj4gIAkJc3Bpbl9sb2NrX2lycXNhdmUoJndmLT5sb2NrLCBm
bGFncyk7Cj4gLQkJaWYgKCFyZWZjb3VudF9yZWFkKCZ3Zi0+Y291bnQpKSB7Cj4gKwkJaWYgKCFy
ZWZjb3VudF9pbmNfbm90X3plcm8oJndmLT5jb3VudCkpIHsKCk9rLCBvdmVyZmxvdyBpcyBjaGVj
a2VkIHdpdGggdGhpcy4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxh
QGxpbnV4LmludGVsLmNvbT4KCgo+ICAJCQlHRU1fQlVHX09OKHdmLT53YWtlcmVmKTsKPiAgCQkJ
d2YtPndha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldF9pZl9pbl91c2Uod2YtPmk5MTUpOwo+
ICsJCQlyZWZjb3VudF9zZXQoJndmLT5jb3VudCwgMSk7Cj4gIAkJfQo+IC0JCXJlZmNvdW50X2lu
Yygmd2YtPmNvdW50KTsKPiAgCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZ3Zi0+bG9jaywgZmxh
Z3MpOwo+ICAJfQo+ICAKPiAtLSAKPiAyLjIwLjEKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
