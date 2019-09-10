Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A464AE83D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 12:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7760F89070;
	Tue, 10 Sep 2019 10:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 704FC88A23
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 10:34:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 03:34:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="335877992"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 10 Sep 2019 03:34:36 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D55865C1E43; Tue, 10 Sep 2019 13:34:23 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190909113018.13300-1-chris@chris-wilson.co.uk>
References: <20190909113018.13300-1-chris@chris-wilson.co.uk>
Date: Tue, 10 Sep 2019 13:34:23 +0300
Message-ID: <871rwotp74.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ringbuffer: Flush writes before
 RING_TAIL update
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQmUgcGFy
YW5vaWQgYW5kIG1ha2Ugc3VyZSB3ZSBmbHVzaCBhbnkgYW5kIGFsbCB3cml0ZXMgb3V0IG9mIHRo
ZSBXQ0IKPiBiZWZvcmUgcGVyZm9ybWluZyB0aGUgVUMgbW1pbyB0byB1cGRhdGUgdGhlIFJJTkdf
VEFJTC4gKEFuIFVDIHdyaXRlCj4gc2hvdWxkIGl0c2VsZiBiZSBlbm91Z2ggdG8gZG8gdGhlIGZs
dXNoLCBoZW5jZSB0aGUgcGFyYW5vaWEgaGVyZS4pIFF1aXRlCj4gaW5mcmVxdWVudGx5LCB3ZSBz
ZWUgcHJvYmxlbXMgd2hlcmUgdGhlIEdQVSBzZWVtcyB0byBvdmVyc2hvb3QgdGhlCj4gUklOR19U
QUlMIGFuZCBzbyBleGVjdXRlcyBnYXJiYWdlIGhlbmNlIHRoZSBzcGVjdWxhdGlvbi4KPgo+IFJl
ZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTU5OAo+IFJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMTQxNwo+IFJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMTAzNAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKSXQgY291bGQgYmUgZXZlbiB0aGF0IHRoZSBjb3N0IGlz
IGFtZWxpb3JhdGVkIHdpdGggdGhlIHVjIHdyaXRlLAppZiB0aGUgaHcgaXMgY2xldmVyIGVub3Vn
aC4gUmVnYXJkbGVzcywgd2UgZ2FpbiBhIGRhdGFwb2ludAp3aXRoIG1hcmdpbmFsIGNvc3QuCgpS
ZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+
Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgfCAx
ICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCj4gaW5kZXggYmJkYTg1ZGNhYTQyLi43M2MzZmZj
ODAyMTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1
ZmZlci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5j
Cj4gQEAgLTkzMCw2ICs5MzAsNyBAQCBzdGF0aWMgdm9pZCBjYW5jZWxfcmVxdWVzdHMoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICBzdGF0aWMgdm9pZCBpOXh4X3N1Ym1pdF9yZXF1
ZXN0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCj4gIHsKPiAgCWk5MTVfcmVxdWVzdF9z
dWJtaXQocmVxdWVzdCk7Cj4gKwl3bWIoKTsgLyogcGFyYW5vaWQgZmx1c2ggd3JpdGVzIG91dCBv
ZiB0aGUgV0NCIGJlZm9yZSBtbWlvICovCj4gIAo+ICAJRU5HSU5FX1dSSVRFKHJlcXVlc3QtPmVu
Z2luZSwgUklOR19UQUlMLAo+ICAJCSAgICAgaW50ZWxfcmluZ19zZXRfdGFpbChyZXF1ZXN0LT5y
aW5nLCByZXF1ZXN0LT50YWlsKSk7Cj4gLS0gCj4gMi4yMy4wCj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QK
PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
