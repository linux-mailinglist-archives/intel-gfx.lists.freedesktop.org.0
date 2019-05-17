Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5312B21822
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 14:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60A348984E;
	Fri, 17 May 2019 12:26:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD8828984E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 12:26:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 05:26:42 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO [10.252.11.159])
 ([10.252.11.159])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2019 05:26:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190515130052.4475-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cd30ebe4-06f5-e7ba-68f2-69663a7d233e@linux.intel.com>
Date: Fri, 17 May 2019 13:26:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515130052.4475-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Mark semaphores as complete
 on unsubmit out if payload was started
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

Ck9uIDE1LzA1LzIwMTkgMTQ6MDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBdm9pZCBjaGFyZ2lu
ZyB1cyBmb3IgdGhlIHByZXN1bWVkIGJ1c3l3YWl0IGlmIHRoZSByZXF1ZXN0IHdhcyBwcmVlbXB0
ZWQKPiBhZnRlciBzdWNjZXNzZnVsbHkgdXNpbmcgc2VtYXBob3JlcyB0byByZWR1Y2UgaW50ZXIt
ZW5naW5lIGxhdGVuY3kuCj4gCj4gdjI6IEJ1bXAgdGhlIHByaW9yaXR5IHRvIHJlZmxlY3QgdGhl
IGxhY2sgb2Ygc2VtYXBob3JlcyBub3cgcmVxdWlyZWQuCj4gCj4gUmVmZXJlbmNlczogY2E2ZTU2
ZjY1NGU3ICgiZHJtL2k5MTU6IERpc2FibGUgc2VtYXBob3JlIGJ1c3l3YWl0cyBvbiBzYXR1cmF0
ZWQgc3lzdGVtcyIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDYgKysr
KysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZXF1ZXN0LmMKPiBpbmRleCBiZWQyMTMxNDhjYmIuLjExNjcwNzc0Y2QyNSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gQEAgLTUwOSw2ICs1MDksMTIgQEAg
dm9pZCBfX2k5MTVfcmVxdWVzdF91bnN1Ym1pdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0
KQo+ICAgCS8qIFRyYW5zZmVyIGJhY2sgZnJvbSB0aGUgZ2xvYmFsIHBlci1lbmdpbmUgdGltZWxp
bmUgdG8gcGVyLWNvbnRleHQgKi8KPiAgIAltb3ZlX3RvX3RpbWVsaW5lKHJlcXVlc3QsIHJlcXVl
c3QtPnRpbWVsaW5lKTsKPiAgIAo+ICsJLyogV2UndmUgYWxyZWFkeSBzcHVuLCBkb24ndCBjaGFy
Z2Ugb24gcmVzdWJtaXR0aW5nLiAqLwo+ICsJaWYgKHJlcXVlc3QtPnNjaGVkLnNlbWFwaG9yZXMg
JiYgaTkxNV9yZXF1ZXN0X3N0YXJ0ZWQocmVxdWVzdCkpIHsKPiArCQlyZXF1ZXN0LT5zY2hlZC5h
dHRyLnByaW9yaXR5IHw9IEk5MTVfUFJJT1JJVFlfTk9TRU1BUEhPUkU7Cj4gKwkJcmVxdWVzdC0+
c2NoZWQuc2VtYXBob3JlcyA9IDA7Cj4gKwl9Cj4gKwo+ICAgCS8qCj4gICAJICogV2UgZG9uJ3Qg
bmVlZCB0byB3YWtlX3VwIGFueSB3YWl0ZXJzIG9uIHJlcXVlc3QtPmV4ZWN1dGUsIHRoZXkKPiAg
IAkgKiB3aWxsIGdldCB3b2tlbiBieSBhbnkgb3RoZXIgZXZlbnQgb3IgdXMgcmUtYWRkaW5nIHRo
aXMgcmVxdWVzdAo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
