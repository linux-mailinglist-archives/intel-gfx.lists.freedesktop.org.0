Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBF62E999
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 02:05:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22BDC6E137;
	Thu, 30 May 2019 00:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D5BC6E137
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2019 00:05:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 17:05:07 -0700
X-ExtLoop1: 1
Received: from relo-linux-2.fm.intel.com (HELO [10.1.27.125]) ([10.1.27.125])
 by fmsmga008.fm.intel.com with ESMTP; 29 May 2019 17:05:07 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190529232737.31515-1-lucas.demarchi@intel.com>
 <20190529232737.31515-4-lucas.demarchi@intel.com>
From: Antonio Argenziano <antonio.argenziano@intel.com>
Message-ID: <dd19e9c8-e00f-685e-f412-d49d659a2062@intel.com>
Date: Wed, 29 May 2019 17:05:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190529232737.31515-4-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 4/5] testdisplay: use first available
 option values
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

CgpPbiAyOS8wNS8xOSAxNjoyNywgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+IE5vdyB0aGF0IGNv
cmUgb3B0aW9ucyBhcmUgc2V0IHRvIDUwMCBhbmQgYWJvdmUsIHN0YXJ0IGZyb20gdGhlIGxvd2Vz
dAo+IHZhbHVlcyB3aXRob3V0IGNhdXNpbmcgcHJvYmxlbXMgd2l0aCBjb25mbGljdHMuIFRoaXMg
YWxzbyByZW5hbWUgdGhlCj4gY29uc3RhbnRzIHRvIGZvbGxvdyB0aGUgbmFtZXMgZnJvbSB0aGUg
Y29yZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4KCkFja2VkLWJ5OiBBbnRvbmlvIEFyZ2Vuemlhbm8gPGFudG9uaW8uYXJnZW56
aWFub0BpbnRlbC5jb20+Cgo+IC0tLQo+ICAgdGVzdHMvdGVzdGRpc3BsYXkuYyB8IDE0ICsrKysr
KysrLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy90ZXN0ZGlzcGxheS5jIGIvdGVzdHMvdGVzdGRp
c3BsYXkuYwo+IGluZGV4IGI0ZjBkNDVmLi4zMjU5MDU0NyAxMDA2NDQKPiAtLS0gYS90ZXN0cy90
ZXN0ZGlzcGxheS5jCj4gKysrIGIvdGVzdHMvdGVzdGRpc3BsYXkuYwo+IEBAIC02OSw4ICs2OSwx
MCBAQAo+ICAgI2luY2x1ZGUgPHN0ZGxpYi5oPgo+ICAgI2luY2x1ZGUgPHNpZ25hbC5oPgo+ICAg
Cj4gLSNkZWZpbmUgWWJfT1BUCQkgNQo+IC0jZGVmaW5lIFlmX09QVAkJIDYKPiArZW51bSB7Cj4g
KwlPUFRfWUIsCj4gKwlPUFRfWUYsCj4gK307Cj4gICAKPiAgIHN0YXRpYyBpbnQgdGlvX2ZkOwo+
ICAgc3RydWN0IHRlcm1pb3Mgc2F2ZWRfdGlvOwo+IEBAIC01NzMsOCArNTc1LDggQEAgc3RhdGlj
IHZvaWQgc2V0X3Rlcm1pb19tb2RlKHZvaWQpCj4gICAKPiAgIHN0YXRpYyBjaGFyIG9wdHN0cltd
ID0gIjNpYWY6czpkOnA6bXJ0bzpqOnkiOwo+ICAgc3RhdGljIHN0cnVjdCBvcHRpb24gbG9uZ19v
cHRzW10gPSB7Cj4gLQl7InliIiwgMCwgMCwgWWJfT1BUfSwKPiAtCXsieWYiLCAwLCAwLCBZZl9P
UFR9LAo+ICsJeyJ5YiIsIDAsIDAsIE9QVF9ZQn0sCj4gKwl7InlmIiwgMCwgMCwgT1BUX1lGfSwK
PiAgIAl7IDAsIDAsIDAsIDAgfQo+ICAgfTsKPiAgIAo+IEBAIC02NDgsMTAgKzY1MCwxMCBAQCBz
dGF0aWMgaW50IG9wdF9oYW5kbGVyKGludCBvcHQsIGludCBvcHRfaW5kZXgsIHZvaWQgKmRhdGEp
Cj4gICAJCXRpbGluZyA9IExPQ0FMX0k5MTVfRk9STUFUX01PRF9YX1RJTEVEOwo+ICAgCQlicmVh
azsKPiAgIAljYXNlICd5JzoKPiAtCWNhc2UgWWJfT1BUOgo+ICsJY2FzZSBPUFRfWUI6Cj4gICAJ
CXRpbGluZyA9IExPQ0FMX0k5MTVfRk9STUFUX01PRF9ZX1RJTEVEOwo+ICAgCQlicmVhazsKPiAt
CWNhc2UgWWZfT1BUOgo+ICsJY2FzZSBPUFRfWUY6Cj4gICAJCXRpbGluZyA9IExPQ0FMX0k5MTVf
Rk9STUFUX01PRF9ZZl9USUxFRDsKPiAgIAkJYnJlYWs7Cj4gICAJY2FzZSAncic6Cj4gCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
