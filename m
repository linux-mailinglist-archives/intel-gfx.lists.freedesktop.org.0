Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CE8102901
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 17:12:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D135D6E2B1;
	Tue, 19 Nov 2019 16:12:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F81D6E2B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:12:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 08:12:21 -0800
X-IronPort-AV: E=Sophos;i="5.69,218,1571727600"; d="scan'208";a="200399641"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 19 Nov 2019 08:12:20 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
 <20191118230254.2615942-16-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1c494a5a-f717-caa8-3732-3b5f87344f8a@linux.intel.com>
Date: Tue, 19 Nov 2019 16:12:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118230254.2615942-16-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 15/19] drm/i915/gt: Flush the requests after
 wedging on suspend
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

Ck9uIDE4LzExLzIwMTkgMjM6MDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBSZXRpcmUgYWxsIHJl
cXVlc3RzIGlmIHdlIHJlc29ydCB0byB3ZWRnZWQgdGhlIGRyaXZlciBvbiBzdXNwZW5kLiBUaGV5
Cj4gd2lsbCBub3cgYmUgaWRsZSwgc28gd2UgbWlnaHQgYXMgd2UgZnJlZSB0aGVtIGJlZm9yZSBz
aHV0dGluZyBkb3duLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfcG0uYyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCj4gaW5kZXggN2E5MDQ0YWM0Yjc1Li5mNmI1
MTY5ZDYyM2YgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3Rf
cG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKPiBAQCAt
MjU2LDYgKzI1Niw3IEBAIHN0YXRpYyB2b2lkIHdhaXRfZm9yX3N1c3BlbmQoc3RydWN0IGludGVs
X2d0ICpndCkKPiAgIAkJICogdGhlIGdwdSBxdWlldC4KPiAgIAkJICovCj4gICAJCWludGVsX2d0
X3NldF93ZWRnZWQoZ3QpOwo+ICsJCWludGVsX2d0X3JldGlyZV9yZXF1ZXN0cyhndCk7Cj4gICAJ
fQo+ICAgCj4gICAJaW50ZWxfZ3RfcG1fd2FpdF9mb3JfaWRsZShndCk7Cj4gCgpSZXZpZXdlZC1i
eTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk9yIGdpdmVuIHRo
YXQgcGFya2luZyBpcyBub3cgc3luYyBpdCBjb3VsZCB3b3JrIHRvIG1ha2UgCmludGVsX2d0X3Bh
cmtfcmVxdWVzdHMgZmx1c2ggYW5kIHRoZW4gaW50ZWxfZ3RfcG1fd2FpdF9mb3JfaWRsZSB3b3Vs
ZCAKaGFuZGxlIGl0LiBCdXQgdGhhdCB3b3VsZCBrZWVwIHRoZSBHUFUgYWxpdmUgZm9yIHRvbyBs
b25nLCBnaXZlbiB0aGF0IApyZXF1ZXN0IHJldGlyZSBjYW4gcnVuIGluZGVwZW5kZW50bHkuIFNv
IHBlcmhhcHMgdGhpcyBpcyBiZXR0ZXIuCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
