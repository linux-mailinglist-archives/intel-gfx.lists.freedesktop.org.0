Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCC0675AF
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 22:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E71766E38A;
	Fri, 12 Jul 2019 20:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ECD46E38A
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 20:11:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 13:11:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="174540642"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.8.246])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Jul 2019 13:11:49 -0700
Date: Fri, 12 Jul 2019 13:11:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Summers, Stuart" <stuart.summers@intel.com>
Message-ID: <20190712201148.sjx74x3wxvntr7xv@ldmartin-desk1>
References: <20190712055706.12143-1-lucas.demarchi@intel.com>
 <20190712055706.12143-3-lucas.demarchi@intel.com>
 <dfce99c0fbe9b10182ac5ba1fce219502109bcfd.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dfce99c0fbe9b10182ac5ba1fce219502109bcfd.camel@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/tgl: add modular FIA to
 device info
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMTA6NDg6NDhBTSAtMDcwMCwgU3VtbWVycywgU3R1YXJ0
IHdyb3RlOgo+T24gVGh1LCAyMDE5LTA3LTExIGF0IDIyOjU3IC0wNzAwLCBMdWNhcyBEZSBNYXJj
aGkgd3JvdGU6Cj4+IFRpZ2VyIExha2UgaGFzIG1vZHVsYXIgRklBIGJpdCBpbmRpY2F0aW5nIGlm
IHdlIGFyZSB1c2luZyBpdCwgc28gYWRkCj4+IHRvCj4+IHRoZSBkZXZpY2UgaW5mby4KPj4KPj4g
U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
Cj4KPlJldmlld2VkLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29t
Pgo+CgpCb3RoIHBhdGNoZXMgYXBwbGllZCwgdGhhbmtzLgoKTHVjYXMgRGUgTWFyY2hpCgo+PiAt
LS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAxICsKPj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wY2kuYwo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPj4g
aW5kZXggZTgzYzk0Y2YyNzQ0Li43ZWM4MTcwZjE3OTQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wY2kuYwo+PiBAQCAtNzkwLDYgKzc5MCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxf
ZGV2aWNlX2luZm8KPj4gaW50ZWxfdGlnZXJsYWtlXzEyX2luZm8gPSB7Cj4+ICAJUExBVEZPUk0o
SU5URUxfVElHRVJMQUtFKSwKPj4gIAkubnVtX3BpcGVzID0gNCwKPj4gIAkucmVxdWlyZV9mb3Jj
ZV9wcm9iZSA9IDEsCj4+ICsJLmRpc3BsYXkuaGFzX21vZHVsYXJfZmlhID0gMSwKPj4gIAkuZW5n
aW5lX21hc2sgPQo+PiAgCQlCSVQoUkNTMCkgfCBCSVQoQkNTMCkgfCBCSVQoVkVDUzApIHwgQklU
KFZDUzApIHwKPj4gQklUKFZDUzIpLAo+PiAgfTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
