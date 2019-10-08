Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A222CF5C4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 11:13:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56CE66E2B1;
	Tue,  8 Oct 2019 09:13:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A8EF6E2B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 09:13:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 02:13:26 -0700
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="344986286"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 08 Oct 2019 02:13:25 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191008070342.4045-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3baadc0e-b0ce-e4ca-eb4a-3695d90da1db@linux.intel.com>
Date: Tue, 8 Oct 2019 10:13:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191008070342.4045-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Assign
 virtual_engine->uncore from first sibling
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

Ck9uIDA4LzEwLzIwMTkgMDg6MDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBDb3B5IGFjcm9zcyB0
aGUgZW5naW5lLT51bmNvcmUgc2hvcnRjdXQgdG8gdGhlIHZpcnR1YWxfZW5naW5lIGZyb20gaXRz
Cj4gZmlyc3QgcGh5c2ljYWwgZW5naW5lLCBzaW1pbGFyIHRvIHRoZSBoYW5kbGluZyBvZiB0aGUg
ZW5naW5lLT5ndAo+IGJhY2twb2ludGVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgfCAxICsKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggNDMyYjhiNjBjNGMw
Li42ZGI3NjJjNTA5YjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBA
IC00MTcwLDYgKzQxNzAsNyBAQCBpbnRlbF9leGVjbGlzdHNfY3JlYXRlX3ZpcnR1YWwoc3RydWN0
IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKPiAgIAo+ICAgCXZlLT5iYXNlLmk5MTUgPSBjdHgtPmk5
MTU7Cj4gICAJdmUtPmJhc2UuZ3QgPSBzaWJsaW5nc1swXS0+Z3Q7Cj4gKwl2ZS0+YmFzZS51bmNv
cmUgPSBzaWJsaW5nc1swXS0+dW5jb3JlOwo+ICAgCXZlLT5iYXNlLmlkID0gLTE7Cj4gICAJdmUt
PmJhc2UuY2xhc3MgPSBPVEhFUl9DTEFTUzsKPiAgIAl2ZS0+YmFzZS51YWJpX2NsYXNzID0gSTkx
NV9FTkdJTkVfQ0xBU1NfSU5WQUxJRDsKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
