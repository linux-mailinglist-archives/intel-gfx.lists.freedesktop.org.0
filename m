Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDEE6306C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 08:30:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D455E89D1D;
	Tue,  9 Jul 2019 06:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C40789D1D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 06:30:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 23:30:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,469,1557212400"; d="scan'208";a="170504292"
Received: from dawalker-mobl.ger.corp.intel.com (HELO [10.251.80.131])
 ([10.251.80.131])
 by orsmga006.jf.intel.com with ESMTP; 08 Jul 2019 23:30:17 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190705124325.14270-1-chris@chris-wilson.co.uk>
 <20190705124325.14270-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8845ac78-adf2-d0a2-3f43-0b36acb061aa@linux.intel.com>
Date: Tue, 9 Jul 2019 07:30:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190705124325.14270-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Remove presumption of RCS0
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA1LzA3LzIwMTkgMTM6NDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBub3cgdHJhY2sg
ZmVhdHVyZXMgY29ycmVjdGx5IGluc3RlYWQgb2YgcHJvYmluZyBpOTE1LT5lbmdpbmVbUkNTMF0K
PiB3aGljaCBpcyBtdWNoIG1vcmUgZmxleGlibGUgYW5kIGF2b2lkcyBhbnkgbmFzdHkgc3VycHJp
c2VzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+
IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCA2IC0t
LS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiBpbmRleCBkZjU5MzJmNWY1NzguLmJkZjI3
OWZhM2IyZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfY3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5j
Cj4gQEAgLTQ0OCwxMiArNDQ4LDYgQEAgaW50IGludGVsX2VuZ2luZXNfaW5pdF9tbWlvKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgCWlmIChXQVJOX09OKG1hc2sgIT0gZW5naW5l
X21hc2spKQo+ICAgCQlkZXZpY2VfaW5mby0+ZW5naW5lX21hc2sgPSBtYXNrOwo+ICAgCj4gLQkv
KiBXZSBhbHdheXMgcHJlc3VtZSB3ZSBoYXZlIGF0IGxlYXN0IFJDUyBhdmFpbGFibGUgZm9yIGxh
dGVyIHByb2JpbmcgKi8KPiAtCWlmIChXQVJOX09OKCFIQVNfRU5HSU5FKGk5MTUsIFJDUzApKSkg
ewo+IC0JCWVyciA9IC1FTk9ERVY7Cj4gLQkJZ290byBjbGVhbnVwOwo+IC0JfQo+IC0KPiAgIAlS
VU5USU1FX0lORk8oaTkxNSktPm51bV9lbmdpbmVzID0gaHdlaWdodDMyKG1hc2spOwo+ICAgCj4g
ICAJaW50ZWxfZ3RfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cygmaTkxNS0+Z3QpOwo+IAoKUmV2aWV3
ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRz
LAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
