Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 219237CC0C
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 20:36:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0B996E2EF;
	Wed, 31 Jul 2019 18:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66C4B6E2EC;
 Wed, 31 Jul 2019 18:36:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 11:36:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; d="scan'208";a="323844039"
Received: from vinaysim-desktop.fm.intel.com (HELO [10.1.27.45]) ([10.1.27.45])
 by orsmga004.jf.intel.com with ESMTP; 31 Jul 2019 11:36:33 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190729191955.24544-1-chris@chris-wilson.co.uk>
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Message-ID: <2ebddb86-a072-45f7-b64c-26e296d3ba0e@intel.com>
Date: Wed, 31 Jul 2019 11:31:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190729191955.24544-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_exec_schedule:
 Avoid using borked engines
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

CgpPbiAwNy8yOS8yMDE5IDEyOjE5IFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gQ2hlY2sgZm9y
IHZpYWJpbGl0eSBvZiBzdG9yZS1kd29yZCBiZWZvcmUgdXNlLgo+Cj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICB0ZXN0cy9p
OTE1L2dlbV9leGVjX3NjaGVkdWxlLmMgfCA2ICsrKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1
L2dlbV9leGVjX3NjaGVkdWxlLmMgYi90ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMKPiBp
bmRleCA0Y2NhY2JhNDEuLjZlODQ2NjI5OSAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9l
eGVjX3NjaGVkdWxlLmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMKPiBA
QCAtMjgyLDkgKzI4MiwxMSBAQCBzdGF0aWMgdm9pZCBzbW9rZXRlc3QoaW50IGZkLCB1bnNpZ25l
ZCByaW5nLCB1bnNpZ25lZCB0aW1lb3V0KQo+ICAgCW5lbmdpbmUgPSAwOwo+ICAgCWlmIChyaW5n
ID09IEFMTF9FTkdJTkVTKSB7Cj4gICAJCWZvcl9lYWNoX3BoeXNpY2FsX2VuZ2luZShmZCwgZW5n
aW5lKQo+IC0JCQllbmdpbmVzW25lbmdpbmUrK10gPSBlbmdpbmU7Cj4gKwkJCWlmIChnZW1fY2Fu
X3N0b3JlX2R3b3JkKGZkLCBlbmdpbmUpKQo+ICsJCQkJZW5naW5lc1tuZW5naW5lKytdID0gZW5n
aW5lOwo+ICAgCX0gZWxzZSB7CgpUaGUgZ2VtX2Nhbl9zdG9yZV9kd29yZCgpIGNoZWNrIGlzIGFs
cmVhZHkgZXhlY3V0ZWQgaW4gdGhlIGZpeHR1cmUgZm9yIApwZXIgZW5naW5lIHNtb2tldGVzdCwg
cmlnaHQ/CldlIG9ubHkgbmVlZCBpdCBmb3IgdGhlIHNtb2tldGVzdC1hbGwgY2FzZT8KClRoYW5r
cywKVmluYXkuCgo+IC0JCWVuZ2luZXNbbmVuZ2luZSsrXSA9IHJpbmc7Cj4gKwkJaWYgKGdlbV9j
YW5fc3RvcmVfZHdvcmQoZmQsIHJpbmcpKQo+ICsJCQllbmdpbmVzW25lbmdpbmUrK10gPSByaW5n
Owo+ICAgCX0KPiAgIAlpZ3RfcmVxdWlyZShuZW5naW5lKTsKPiAgIAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
