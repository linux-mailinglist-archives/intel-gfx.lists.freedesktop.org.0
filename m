Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5356595C99
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 12:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC8576E784;
	Tue, 20 Aug 2019 10:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4384B6E77F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 10:51:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18200418-1500050 for multiple; Tue, 20 Aug 2019 11:51:37 +0100
MIME-Version: 1.0
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190819215003.48305-6-stuart.summers@intel.com>
References: <20190819215003.48305-1-stuart.summers@intel.com>
 <20190819215003.48305-6-stuart.summers@intel.com>
Message-ID: <156629829520.1374.3221723245199113812@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 20 Aug 2019 11:51:35 +0100
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: Add function to set subslices
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0xOSAyMjo0OTo1OSkKPiBBZGQgYSBuZXcg
ZnVuY3Rpb24gdG8gc2V0IGEgcmFuZ2Ugb2Ygc3Vic2xpY2VzIGZvciBhCj4gc3BlY2lmaWVkIHNs
aWNlIGJhc2VkIG9uIGEgZ2l2ZW4gbWFzay4KPiAKPiB2MjogVXNlIGxvY2FsIHZhcmlhYmxlIGZv
ciBzdWJzbGljZV9tYXNrIG9uIEhTVyBhbmQKPiAgICAgY2xlYW4gdXAgYSBmZXcgb3RoZXIgc3Vi
c2xpY2VfbWFzayBsb2NhbCB2YXJpYWJsZQo+ICAgICBjaGFuZ2VzCj4gCj4gU2lnbmVkLW9mZi1i
eTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jICAgICB8IDEwICsrKysKPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oICAgICB8ICAzICsrCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgfCA1OSArKysrKysrKysrKysrLS0tLS0tLS0t
LS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jCj4gaW5kZXggM2E1YzBmN2I1YTA4
Li5mNWVlNDNhMDM0YmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfc3NldS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jCj4g
QEAgLTMwLDYgKzMwLDE2IEBAIGludGVsX3NzZXVfc3Vic2xpY2VfdG90YWwoY29uc3Qgc3RydWN0
IHNzZXVfZGV2X2luZm8gKnNzZXUpCj4gICAgICAgICByZXR1cm4gdG90YWw7Cj4gIH0KPiAgCj4g
K3ZvaWQgaW50ZWxfc3NldV9zZXRfc3Vic2xpY2VzKHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1
LCBpbnQgc2xpY2UsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdTMyIHNzX21hc2sp
Cj4gK3sKPiArICAgICAgIGludCBpLCBvZmZzZXQgPSBzbGljZSAqIHNzZXUtPnNzX3N0cmlkZTsK
PiArCgpTb21lIHNvcnQgb2YKCUdFTV9CVUdfT04oc3NldS0+c3Nfc3RyaWRlID4gMzIpOwp0byBk
ZXRlY3QgVUIgPwoKPiArICAgICAgIGZvciAoaSA9IDA7IGkgPCBzc2V1LT5zc19zdHJpZGU7IGkr
KykKPiArICAgICAgICAgICAgICAgc3NldS0+c3Vic2xpY2VfbWFza1tvZmZzZXQgKyBpXSA9Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgKHNzX21hc2sgPj4gKEJJVFNfUEVSX0JZVEUgKiBpKSkg
JiAweGZmOwoKVGhpcyBpcyBhIG5vbi10cml2aWFsIHRyYW5zZm9ybWF0aW9uIDp8Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
