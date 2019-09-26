Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D675ABF9B0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 20:57:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C47116EDDC;
	Thu, 26 Sep 2019 18:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 824DC6EDDC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 18:57:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 11:57:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,553,1559545200"; d="scan'208";a="190089627"
Received: from brianwel-mobl1.amr.corp.intel.com (HELO [10.254.185.28])
 ([10.254.185.28])
 by fmsmga007.fm.intel.com with ESMTP; 26 Sep 2019 11:57:17 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190926142538.9386-1-chris@chris-wilson.co.uk>
From: Brian Welty <brian.welty@intel.com>
Message-ID: <eefc229a-107c-2025-c1c0-3e7af20b6738@intel.com>
Date: Thu, 26 Sep 2019 11:57:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.3
MIME-Version: 1.0
In-Reply-To: <20190926142538.9386-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Delegate our irq handler to a
 thread
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
Cc: Clark Williams <williams@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDkvMjYvMjAxOSA3OjI1IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gTW92aW5nIG91ciBw
cmltYXJ5IGlycSBoYW5kbGVyIHRvIGEgUlQgdGhyZWFkIGluY3VycyBhbiBleHRyYSAxdXMgZGVs
YXkKPiBpbiBwcm9jZXNzIGludGVycnVwdHMuIFRoaXMgaXMgbW9zdCBub3RpY2UgaW4gd2FraW5n
IHVwIGNsaWVudCB0aHJlYWRzLAo+IHdoZXJlIGl0IGFkZHMgYWJvdXQgMjAlIG9mIGV4dHJhIGxh
dGVuY3kuIEl0IGFsc28gaW1wb3NlcyBhIGRlbGF5IGluCj4gZmVlZGluZyB0aGUgR1BVLCBhbiBl
eHRyYSAxdXMgYmVmb3JlIHNpZ25hbGluZyBzZWNvbmRhcnkgZW5naW5lcyBhbmQKPiBleHRyYSBs
YXRlbmN5IGluIHJlc3VibWl0dGluZyB3b3JrIHRvIGtlZXAgdGhlIEdQVSBidXN5LiBUaGUgbGF0
dGVyIGNhc2UKPiBpcyBpbnNpZ25pZmljYW50IGFzIHRoZSBsYXRlbmN5IGhpZGRlbiBieSB0aGUg
YWN0aXZlIEdQVSwgYW5kCj4gcHJlZW1wdC10by1idXN5IGVuc3VyZXMgdGhhdCBubyBleHRyYSBs
YXRlbmN5IGlzIGluY3VycmVkIGZvcgo+IHByZWVtcHRpb24uCj4gCj4gVGhlIGJlbmVmaXQgaXMg
dGhhdCB3ZSByZWR1Y2VkIHRoZSBpbXBhY3Qgb24gdGhlIHJlc3Qgb2YgdGhlIHN5c3RlbSwgdGhl
Cj4gY3ljbGV0ZXN0IHNob3dzIGEgcmVkdWN0aW9uIGZyb20gNXVzIG1lYW4gbGF0ZW5jeSB0byAy
dXMsIHdpdGggdGhlCj4gbWF4aW11bSBvYnNlcnZlZCBsYXRlbmN5IChpbiBhIDIgbWludXRlIHdp
bmRvdykgcmVkdWNlZCBieSBvdmVyIDE2MHVzLgoKSGkgQ2hyaXMsCgpJJ20gY3VyaW91cyB0byB1
bmRlcnN0YW5kIHRoaXMgYSBsaXR0bGUgYmV0dGVyLgpJZiBvbmx5IGJlbmVmaXQgb2YgdGhpcyBw
YXRjaCBpcyBpbXByb3Zpbmcgb3ZlcmFsbCBzeXN0ZW0gcGVyZm9ybWFuY2UsIHRoZW4KY2FuIHlv
dSBzYXkgd2h5IGk5MTUgaW50ZXJydXB0IGhhbmRsaW5nIGRvZXNuJ3QgZml0IGludG8gd2hhdCBJ
IHRob3VnaHQgd2FzCnRoZSBjb21tb24gdXNhZ2Ugb2YgdGhyZWFkZWQgaW50ZXJydXB0cy4uLgoK
VXN1YWxseSB3aXRoIHJlcXVlc3RfdGhyZWFkZWRfaXJxKCksIEkgdGhvdWdodCB0eXBpY2FsbHkg
Ym90aCBoYW5kbGVycwphcmUgc3BlY2lmaWVkIGFuZCBzbyB5b3UnZCBvbmx5IGZhbGxiYWNrIHRv
IHRoZSB0aHJlYWRlZCBoYW5kbGVyIHdoZW4gdGhlCmludGVycnVwdCBjb250ZXh0IGhhbmRsZXIg
aXMgb3ZlcndoZWxtZWQ/Ckxpa2Ugc286Cgl3aGlsZSAoSFcgZXZlbnRzIG5lZWQgc29tZSBhY3Rp
b24pIHsKCQkuLi4uIGRvIHNvbWV0aGluZyAuLi4KCQlpZiAodG9vIG92ZXJ3aGVsbWVkKSAgLyog
aWUuIHJlZHVjZSBsb2FkIG9uIHN5c3RlbSAqLwoJCQlyZXR1cm4gSVJRX1dBS0VfVEhSRUFEOwoJ
fQoJcmV0dXJuIElSUV9IQU5ETEVEOwoKTGlrZWx5IHlvdSBjb25zaWRlcmVkIHNvbWV0aGluZyBs
aWtlIGFib3ZlLgpJJ20ganVzdCBsb29raW5nIHRvIHVuZGVyc3RhbmQgd2h5IHVzaW5nIG9ubHkg
dGhyZWFkZWQgaW50ZXJydXB0IGhhbmRsZXIgaXMgYmVzdCBpbiB0aGlzIGNhc2UuCihBbHNvIG1h
eWJlIGRpc2N1c3MgdGhpcyBhIGxpdHRsZSBiaXQgZnVydGhlciBpbiBjb21taXQgbWVzc2FnZS4u
Lj8pCgpTb3JyeSBpZiB0aGlzIHdhcyBwZXJoYXBzIGRpc2N1c3NlZCBpbiByZXNwb25zZSB0byBU
dnJ0a28ncyBxdWVzdGlvbi4KSSBkaWRuJ3QgcXVpdGUgZm9sbG93IHRoZSBmYXN0L3Nsb3cgc2Vw
YXJhdGlvbiBtZW50aW9uZWQgaW4gdGhhdCB0aHJlYWQuCgpUaGFua3MsCi1CcmlhbgoKCj4gCj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4g
Q2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBD
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBDYzogQ2xhcmsg
V2lsbGlhbXMgPHdpbGxpYW1zQHJlZGhhdC5jb20+Cj4gQ2M6IFNlYmFzdGlhbiBBbmRyemVqIFNp
ZXdpb3IgPGJpZ2Vhc3lAbGludXRyb25peC5kZT4KPiAtLS0KPiBOb3RlIHRoaXMgc2hvdWxkIG5l
ZWQgdGhlIGZpeGVzIGluCj4gMjAxOTA5MjYxMDU2NDQuMTY3MDMtMi1iaWdlYXN5QGxpbnV0cm9u
aXguZGUsIGJ5IGl0c2VsZiB0aGlzIHNob3VsZCBiZSBhCj4gdGVzdCB2ZWhpY2xlIHRvIGV4ZXJj
aXNlIHRoYXQgcGF0Y2ghCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMg
fCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiBpbmRleCBiYzgzZjA5NDA2NWEuLmYzZGY3
NzE0YTNmMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+IEBAIC00NDkxLDggKzQ0OTEs
OCBAQCBpbnQgaW50ZWxfaXJxX2luc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQo+ICAKPiAgCWludGVsX2lycV9yZXNldChkZXZfcHJpdik7Cj4gIAo+IC0JcmV0ID0gcmVx
dWVzdF9pcnEoaXJxLCBpbnRlbF9pcnFfaGFuZGxlcihkZXZfcHJpdiksCj4gLQkJCSAgSVJRRl9T
SEFSRUQsIERSSVZFUl9OQU1FLCBkZXZfcHJpdik7Cj4gKwlyZXQgPSByZXF1ZXN0X3RocmVhZGVk
X2lycShpcnEsIE5VTEwsIGludGVsX2lycV9oYW5kbGVyKGRldl9wcml2KSwKPiArCQkJCSAgIElS
UUZfU0hBUkVELCBEUklWRVJfTkFNRSwgZGV2X3ByaXYpOwo+ICAJaWYgKHJldCA8IDApIHsKPiAg
CQlkZXZfcHJpdi0+ZHJtLmlycV9lbmFibGVkID0gZmFsc2U7Cj4gIAkJcmV0dXJuIHJldDsKPiAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
