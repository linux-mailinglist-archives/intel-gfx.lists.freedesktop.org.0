Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B728CF5C2
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 11:12:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECE016E2A8;
	Tue,  8 Oct 2019 09:12:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE7BC6E2A8
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 09:12:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 02:12:51 -0700
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="344986126"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 08 Oct 2019 02:12:50 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191008071121.25088-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2b9476eb-4ca3-ac39-cbb9-bade9b5a41eb@linux.intel.com>
Date: Tue, 8 Oct 2019 10:12:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191008071121.25088-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Assign the
 engine->uncore shortcut
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

Ck9uIDA4LzEwLzIwMTkgMDg6MTEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTZXQgdXAgdGhlIGVu
Z2luZS0+dW5jb3JlIHNob3J0Y3V0IG9uIG1vY2tfZW5naW5lIGNyZWF0aW9uLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYyB8IDEgKwo+ICAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L21vY2tfZW5naW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2Vu
Z2luZS5jCj4gaW5kZXggNWQ0M2NiYzNmMzQ1Li4zZDg4Mzk3YzBkYmIgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMKPiBAQCAtMjQ4LDYgKzI0OCw3IEBAIHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKm1vY2tfZW5naW5lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LAo+ICAgCS8qIG1pbmltYWwgZW5naW5lIHNldHVwIGZvciByZXF1ZXN0cyAqLwo+ICAgCWVuZ2lu
ZS0+YmFzZS5pOTE1ID0gaTkxNTsKPiAgIAllbmdpbmUtPmJhc2UuZ3QgPSAmaTkxNS0+Z3Q7Cj4g
KwllbmdpbmUtPmJhc2UudW5jb3JlID0gaTkxNS0+Z3QudW5jb3JlOwo+ICAgCXNucHJpbnRmKGVu
Z2luZS0+YmFzZS5uYW1lLCBzaXplb2YoZW5naW5lLT5iYXNlLm5hbWUpLCAiJXMiLCBuYW1lKTsK
PiAgIAllbmdpbmUtPmJhc2UuaWQgPSBpZDsKPiAgIAllbmdpbmUtPmJhc2UubWFzayA9IEJJVChp
ZCk7Cj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
