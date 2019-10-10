Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B6AD2E54
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 18:07:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00CFC6E045;
	Thu, 10 Oct 2019 16:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D4386E045
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 16:07:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 09:07:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="207219234"
Received: from creinhar-mobl.ger.corp.intel.com (HELO [10.252.42.40])
 ([10.252.42.40])
 by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2019 09:07:12 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191009211947.6815-1-chris@chris-wilson.co.uk>
 <20191009211947.6815-7-chris@chris-wilson.co.uk>
 <2b005ce6-97dd-ceee-04aa-72147bfb8e74@intel.com>
 <157072228213.31038.15681586973898095047@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <8e58da7d-9ec9-4225-3e24-d7e6665d8a17@intel.com>
Date: Thu, 10 Oct 2019 19:07:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157072228213.31038.15681586973898095047@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/perf: Allow dynamic
 reconfiguration of the OA stream
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

T24gMTAvMTAvMjAxOSAxODo0NCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMTAtMTAgMTY6MjI6MjUpCj4+IE9uIDEwLzEwLzIwMTkgMDA6MTks
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IEZyb206IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwu
Zy5sYW5kd2VybGluQGludGVsLmNvbT4KPj4+Cj4+PiBJbnRyb2R1Y2UgYSBuZXcgcGVyZl9pb2N0
bCBjb21tYW5kIHRvIGNoYW5nZSB0aGUgT0EgY29uZmlndXJhdGlvbiBvZiB0aGUKPj4+IGFjdGl2
ZSBzdHJlYW0uIFRoaXMgYWxsb3dzIHRoZSBPQSBzdHJlYW0gdG8gYmUgcmVjb25maWd1cmVkIGJl
dHdlZW4KPj4+IGJhdGNoIGJ1ZmZlcnMsIGdpdmluZyBncmVhdGVyIGZsZXhpYmlsaXR5IGluIHNh
bXBsaW5nLiBXZSBpbmplY3QgYQo+Pj4gcmVxdWVzdCBpbnRvIHRoZSBPQSBjb250ZXh0IHRvIHJl
Y29uZmlndXJlIHRoZSBzdHJlYW0gYXN5bmNocm9ub3VzbHkgb24KPj4+IHRoZSBHUFUgaW4gYmV0
d2VlbiBhbmQgb3JkZXJlZCB3aXRoIGV4ZWNidWZmZXIgY2FsbHMuCj4+Pgo+Pj4gU2lnbmVkLW9m
Zi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+
Pgo+PiBTbyBtdWNoIHNpbXBsZXIgOikKPiBJbmRlZWQsIGl0IGFsbCBjYW1lIHRvZ2V0aGVyIGlu
dG8gYSBtdWNoIG1vcmUgY29oZXJlbnQgc3RvcnkuCj4KPj4+IC0tLQo+Pj4gICAgLyoqCj4+PiAg
ICAgKiBpOTE1X3BlcmZfaW9jdGwgLSBzdXBwb3J0IGlvY3RsKCkgdXNhZ2Ugd2l0aCBpOTE1IHBl
cmYgc3RyZWFtIEZEcwo+Pj4gICAgICogQHN0cmVhbTogQW4gaTkxNSBwZXJmIHN0cmVhbQo+Pj4g
QEAgLTI4NzksNiArMjkwMSw4IEBAIHN0YXRpYyBsb25nIGk5MTVfcGVyZl9pb2N0bF9sb2NrZWQo
c3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKPj4+ICAgICAgICBjYXNlIEk5MTVfUEVS
Rl9JT0NUTF9ESVNBQkxFOgo+Pj4gICAgICAgICAgICAgICAgaTkxNV9wZXJmX2Rpc2FibGVfbG9j
a2VkKHN0cmVhbSk7Cj4+PiAgICAgICAgICAgICAgICByZXR1cm4gMDsKPj4+ICsgICAgIGNhc2Ug
STkxNV9QRVJGX0lPQ1RMX0NPTkZJRzoKPj4+ICsgICAgICAgICAgICAgcmV0dXJuIGk5MTVfcGVy
Zl9jb25maWdfbG9ja2VkKHN0cmVhbSwgYXJnKTsKPj4gRm9yIFJFTU9WRV9DT05GSUcgd2UgcGFz
c2VkIGEgcG9pbnRlciB0byBhbiB1NjQsIG5vdCBzdXJlIHdoZXRoZXIgd2UKPj4gc2hvdWxkIHJl
dXNlIHRoZSBzYW1lIHBhdHRlcm4gaGVyZT8KPiBBaXVpLCB0aGUgdXNlciBjcmVhdGVzIG9hLWNv
bmZpZyBoYW5kbGVzLCBhbmQvb3IgcXVlcmllcyB0aGVtLiBJZiB3ZSBhcmUKPiBzaW1wbGVyIHRh
bGtpbmcgaGFuZGxlcyB0aGF0IGZpdCBpbnNpZGUgdW5zaWduZWQgbG9uZyAoc28gYXNzdW1lIHUz
MikKPiB0aGVuIEkgZG9uJ3Qgc2VlIHRoZSBoYXJtIGluIHBhc3NpbmcgYW4gaWQgcmF0aGVyIHRo
YW4gYSBwb2ludGVyLgo+Cj4gVGhlIGFsdGVybmF0aXZlIGlzIHRoaXMgdGFrZXMgYW4gdXVpZCBz
dHJpbmc/IE9yIHlvdSB3YW50IHRvIGFsd2F5cyB1c2UKPiB1NjQgaGFuZGxlcz8KPgo+IEkgZ3Vl
c3MgeW91IHdpbGwgaGF2ZSBhIGJldHRlciBpZGVhIHdoYXQgd29ya3MgYmV0dGVyIGFmdGVyIHBs
YXlpbmcKPiBhcm91bmQgd2l0aCB1c2Vyc3BhY2UuCj4gLUNocmlzCj4KWWVhaCwgdGhhdCdzIGEg
ZmluZSBpbnRlcmZhY2UgYWN0dWFsbHkuCgpUaGlzIHNob3VsZCByZWFsbHkgaGF2ZSB5b3UgYXMg
dGhlIGF1dGhvci4KClJldmlld2VkLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFu
ZHdlcmxpbkBpbnRlbC5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
