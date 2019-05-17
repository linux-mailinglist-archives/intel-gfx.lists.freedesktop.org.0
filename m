Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 929862189E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 14:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE0128986D;
	Fri, 17 May 2019 12:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3360A8986D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 12:52:58 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 05:52:57 -0700
X-ExtLoop1: 1
Received: from nuc.iind.intel.com (HELO intel.com) ([10.99.66.149])
 by orsmga004.jf.intel.com with ESMTP; 17 May 2019 05:52:56 -0700
Date: Fri, 17 May 2019 18:25:21 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190517125521.GA4714@intel.com>
References: <20190517102225.3069-1-chris@chris-wilson.co.uk>
 <20190517102225.3069-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517102225.3069-3-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/hdcp: Use both bits for
 device_count
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

T24gMjAxOS0wNS0xNyBhdCAxMToyMjoyNSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFNt
YXRjaCBzcG90dGVkOgo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1Ly9pbnRlbF9oZGNwLmM6MTQwNiBo
ZGNwMl9hdXRoZW50aWNhdGVfcmVwZWF0ZXJfdG9wb2xvZ3koKSB3YXJuOiBzaG91bGQgdGhpcyBi
ZSBhIGJpdHdpc2Ugb3A/Cj4gCj4gYW5kIGluZGVlZCBsb29rcyB0byBiZSBzdXNwZWN0IHRoYXQg
d2UgZG8gbmVlZCB0byB1c2UgYSBiaXR3aXNlIG9yIHRvCj4gY29tYmluZSB0aGUgdHdvIHJlZ2lz
dGVyIGZpZWxkcyBpbnRvIG9uZSBjb3VudGVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBSYW1hbGluZ2FtIEMgPHJhbWFs
aW5nYW0uY0BpbnRlbC5jb20+ClRoYW5rcyBmb3IgZml4aW5nIGl0LgoKUmV2aWV3ZWQtYnk6IFJh
bWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KCi1SYW0KPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRjcC5jIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2hkY3AuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hk
Y3AuYwo+IGluZGV4IDUzZGYyZjIzNzZlOC4uYmMzYTk0ZDQ5MWM0IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkY3AuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2hkY3AuYwo+IEBAIC0xNDAyLDggKzE0MDIsOCBAQCBpbnQgaGRjcDJfYXV0aGVu
dGljYXRlX3JlcGVhdGVyX3RvcG9sb2d5KHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rv
cikKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCX0KPiAgCj4gLQlkZXZpY2VfY250ID0gSERDUF8y
XzJfREVWX0NPVU5UX0hJKHJ4X2luZm9bMF0pIDw8IDQgfHwKPiAtCQkJSERDUF8yXzJfREVWX0NP
VU5UX0xPKHJ4X2luZm9bMV0pOwo+ICsJZGV2aWNlX2NudCA9IChIRENQXzJfMl9ERVZfQ09VTlRf
SEkocnhfaW5mb1swXSkgPDwgNCB8Cj4gKwkJICAgICAgSERDUF8yXzJfREVWX0NPVU5UX0xPKHJ4
X2luZm9bMV0pKTsKPiAgCWlmIChkcm1faGRjcF9jaGVja19rc3ZzX3Jldm9rZWQoZGV2LCBtc2dz
LnJlY3ZpZF9saXN0LnJlY2VpdmVyX2lkcywKPiAgCQkJCQlkZXZpY2VfY250KSkgewo+ICAJCURS
TV9FUlJPUigiUmV2b2tlZCByZWNlaXZlciBJRChzKSBpcyBpbiBsaXN0XG4iKTsKPiAtLSAKPiAy
LjIwLjEKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
