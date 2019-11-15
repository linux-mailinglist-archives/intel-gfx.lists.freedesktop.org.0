Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C25FDCFC
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 13:04:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738FE89BB0;
	Fri, 15 Nov 2019 12:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0319A89BB0
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 12:04:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 04:04:42 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199181423"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Nov 2019 04:04:41 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191115114800.725061-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c788e0ea-ce08-a97d-fbf9-dd0d9a298052@linux.intel.com>
Date: Fri, 15 Nov 2019 12:04:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191115114800.725061-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Use gt locals for accessing rc6
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

Ck9uIDE1LzExLzIwMTkgMTE6NDgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBSQzYgaXMgdHJhY2tl
ZCB1bmRlcm5lYXRoIHRoZSBpbnRlbF9ndCwgc28gdXNlIG91ciBsb2NhbCBwb2ludGVycy4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4KPiBD
YzogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jIHwgNiArKystLS0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndF9wbS5jCj4gaW5kZXggNjE4N2NkZDA2NjQ2Li5lNjFmNzUyYTNjZDUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKPiBAQCAtNjIsNyArNjIsNyBAQCBz
dGF0aWMgaW50IF9fZ3RfdW5wYXJrKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKPiAgIAlHRU1f
QlVHX09OKCFndC0+YXdha2UpOwo+ICAgCj4gICAJaWYgKE5FRURTX1JDNl9DVFhfQ09SUlVQVElP
Tl9XQShpOTE1KSkKPiAtCQlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldCgmaTkxNS0+dW5jb3Jl
LCBGT1JDRVdBS0VfQUxMKTsKPiArCQlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldChndC0+dW5j
b3JlLCBGT1JDRVdBS0VfQUxMKTsKPiAgIAo+ICAgCWludGVsX3Jwc191bnBhcmsoJmd0LT5ycHMp
Owo+ICAgCWk5MTVfcG11X2d0X3VucGFya2VkKGk5MTUpOwo+IEBAIC05MCw4ICs5MCw4IEBAIHN0
YXRpYyBpbnQgX19ndF9wYXJrKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKPiAgIAlpbnRlbF9z
eW5jaHJvbml6ZV9pcnEoaTkxNSk7Cj4gICAKPiAgIAlpZiAoTkVFRFNfUkM2X0NUWF9DT1JSVVBU
SU9OX1dBKGk5MTUpKSB7Cj4gLQkJaW50ZWxfcmM2X2N0eF93YV9jaGVjaygmaTkxNS0+Z3QucmM2
KTsKPiAtCQlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1dCgmaTkxNS0+dW5jb3JlLCBGT1JDRVdB
S0VfQUxMKTsKPiArCQlpbnRlbF9yYzZfY3R4X3dhX2NoZWNrKCZndC0+cmM2KTsKPiArCQlpbnRl
bF91bmNvcmVfZm9yY2V3YWtlX3B1dChndC0+dW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKPiAgIAl9
Cj4gICAKPiAgIAlHRU1fQlVHX09OKCF3YWtlcmVmKTsKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
