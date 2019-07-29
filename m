Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1039786C0
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 09:54:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09EC78982F;
	Mon, 29 Jul 2019 07:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02BBA8982C;
 Mon, 29 Jul 2019 07:54:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 00:54:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,321,1559545200"; d="scan'208";a="346517689"
Received: from hinestho-mobl1.amr.corp.intel.com (HELO [10.252.1.47])
 ([10.252.1.47])
 by orsmga005.jf.intel.com with ESMTP; 29 Jul 2019 00:54:33 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190728092322.23239-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <de5557ea-f094-dd38-c823-6bfee1a13274@linux.intel.com>
Date: Mon, 29 Jul 2019 08:54:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190728092322.23239-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_schedule: Only require
 the scheduler
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI4LzA3LzIwMTkgMTA6MjMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJZiB0aGUgbGVnYWN5
IHJpbmdidWZmZXIgZG9lc24ndCBzdXBwb3J0IHNjaGVkdWxpbmcsIGl0IGRvZXNuJ3Qgc2V0IHRo
ZQo+IGNhcCEgSHlwb3RoZXRpY2FsbHkgaWYgb25lIHdlcmUgdG8gZW5hYmxlIHJpbmdidWZmZXIg
c2NoZWR1bGluZywgdGhpcyBpcwo+IHBhcnQgb2YgaXRzIHRlc3Rpbmcgc3VpdGUuCj4gCj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0t
Cj4gICB0ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMgfCAzIC0tLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4
ZWNfc2NoZWR1bGUuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2NoZWR1bGUuYwo+IGluZGV4IDdi
NDE4NjIyOC4uNGNjYWNiYTQxIDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2No
ZWR1bGUuYwo+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2NoZWR1bGUuYwo+IEBAIC0xNzc0
LDkgKzE3NzQsNiBAQCBpZ3RfbWFpbgo+ICAgCQlpZ3RfZml4dHVyZSB7Cj4gICAJCQlpZ3RfcmVx
dWlyZShnZW1fc2NoZWR1bGVyX2VuYWJsZWQoZmQpKTsKPiAgIAkJCWlndF9yZXF1aXJlKGdlbV9z
Y2hlZHVsZXJfaGFzX2N0eF9wcmlvcml0eShmZCkpOwo+IC0KPiAtCQkJLyogbmVlZCBzZXBhcmF0
ZSByaW5ncyAqLwo+IC0JCQlpZ3RfcmVxdWlyZShnZW1faGFzX2V4ZWNsaXN0cyhmZCkpOwo+ICAg
CQl9Cj4gICAKPiAgIAkJZm9yIChlID0gaW50ZWxfZXhlY3V0aW9uX2VuZ2luZXM7IGUtPm5hbWU7
IGUrKykgewo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
