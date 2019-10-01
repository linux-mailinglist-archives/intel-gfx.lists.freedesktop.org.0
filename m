Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F600C3EB7
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 19:37:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E5506E86B;
	Tue,  1 Oct 2019 17:37:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68C2F6E86B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 17:37:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18684039-1500050 for multiple; Tue, 01 Oct 2019 18:36:45 +0100
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191001172624.26479-2-ramalingam.c@intel.com>
References: <20191001172624.26479-1-ramalingam.c@intel.com>
 <20191001172624.26479-2-ramalingam.c@intel.com>
Message-ID: <156995140060.1880.8316101890209937172@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 01 Oct 2019 18:36:40 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Skip Wa_1604555607
 verification at A0
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

UXVvdGluZyBSYW1hbGluZ2FtIEMgKDIwMTktMTAtMDEgMTg6MjY6MjQpCj4gUmVhZCBvZiBGRl9N
T0RFMiByZWdpc3RlciBpcyBicm9rZW4gYXQgVEdMIEEwLiBIZW5jZSB2ZXJpZmljYXRpb24gb2Yg
dGhlCj4gV2FfMTYwNDU1NTYwNyBhc3NvY2lhdGVkIHRvIHRoYXQgcmVnaXN0ZXIgbmVlZHMgdG8g
YmUgc2tpcHBlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0u
Y0BpbnRlbC5jb20+Cj4gY2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5p
bnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMgfCAyMiArKysrKysrKysrKysrKysrKysrKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCAgICAgICAgICAgICB8ICA2ICsrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDI3
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBpbmRleCA0MDQ5Yjg3NjQ5MmEuLmM2M2Q4YzNkZjRk
MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+
IEBAIC05OTEsMTAgKzk5MSwyMSBAQCB3YV9saXN0X2FwcGx5KHN0cnVjdCBpbnRlbF91bmNvcmUg
KnVuY29yZSwgY29uc3Qgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ICAKPiAgICAgICAgIGZv
ciAoaSA9IDAsIHdhID0gd2FsLT5saXN0OyBpIDwgd2FsLT5jb3VudDsgaSsrLCB3YSsrKSB7Cj4g
ICAgICAgICAgICAgICAgIGludGVsX3VuY29yZV9ybXdfZncodW5jb3JlLCB3YS0+cmVnLCB3YS0+
bWFzaywgd2EtPnZhbCk7Cj4gLSAgICAgICAgICAgICAgIGlmIChJU19FTkFCTEVEKENPTkZJR19E
Uk1fSTkxNV9ERUJVR19HRU0pKQo+ICsgICAgICAgICAgICAgICBpZiAoSVNfRU5BQkxFRChDT05G
SUdfRFJNX0k5MTVfREVCVUdfR0VNKSkgewo+ICsKPiArICAgICAgICAgICAgICAgICAgICAgICAv
Kgo+ICsgICAgICAgICAgICAgICAgICAgICAgICAqIFJlYWQgb2YgRkZfTU9ERTIgaXMgYnJva2Vu
IG9uIFRHTCBBMC4KPiArICAgICAgICAgICAgICAgICAgICAgICAgKiBIZW5jZSBza2lwIHRoZSBj
b3JyZXNwb25kaW5nIFdBIHZlcmlmaWNhdGlvbi4KPiArICAgICAgICAgICAgICAgICAgICAgICAg
Ki8KPiArICAgICAgICAgICAgICAgICAgICAgICBpZiAoSVNfVEdMX1JFVklEKHVuY29yZS0+aTkx
NSwgMCwgVEdMX1JFVklEX0EwKSAmJgo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBpOTE1
X21taW9fcmVnX2VxdWFsKHdhLT5yZWcsIEZGX01PREUyKSAmJgo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICB3YS0+bWFzayA9PSBGRl9NT0RFMl9URFNfVElNRVJfTUFTSykKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwoKVGhpcyBkb2VzIG5vdCBzY2FsZSB2
ZXJ5IHdlbGwuIFlvdSB3aWxsIG5vdGUgdGhhdCB3YV92ZXJpZnkoKSBhbHJlYWR5CmluY2x1ZGVz
IGEgZGV0YWlsIG9uIHdoaWNoIGJpdHMgY2FuIGJlIHJlYWQgYmFjayBmcm9tIEhXLgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
