Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 557438D655
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 16:37:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA5416E52C;
	Wed, 14 Aug 2019 14:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A2596E52C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 14:37:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 07:37:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,385,1559545200"; d="scan'208";a="205559247"
Received: from pachecof-ubuntu.fm.intel.com (HELO [10.1.27.43]) ([10.1.27.43])
 by fmsmga002.fm.intel.com with ESMTP; 14 Aug 2019 07:37:45 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190813162628.18531-1-fernando.pacheco@intel.com>
 <op.z6g9cd0pxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Fernando Pacheco <fernando.pacheco@intel.com>
Message-ID: <08a62a16-3bff-b167-a90b-6cb1d2da8a8d@intel.com>
Date: Wed, 14 Aug 2019 07:33:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <op.z6g9cd0pxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Fini hw even if GuC is not
 running
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDgvMTMvMTkgMToxOCBQTSwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPiBPbiBUdWUsIDEz
IEF1ZyAyMDE5IDE4OjI2OjI4ICswMjAwLCBGZXJuYW5kbyBQYWNoZWNvIDxmZXJuYW5kby5wYWNo
ZWNvQGludGVsLmNvbT4gd3JvdGU6Cj4KPj4gV2Ugc2hvdWxkIG5vdCBiZSBza2lwcGluZyB1Y19m
aW5pX2h3IG9uIGZpbmRpbmcgR3VDCj4+IGlzIG5vIGxvbmdlciBydW5uaW5nLiBUaGVyZSBpcyBw
bGVudHkgb2YgaHcgYW5kIGludGVybmFsCj4+IHN0YXRlIHRoYXQgY2FuIGJlIGNsZWFuZWQgdXAg
d2l0aG91dCBoYXZpbmcgdG8gY29tbXVuaWNhdGUKPj4gd2l0aCBHdUMuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEZlcm5hbmRvIFBhY2hlY28gPGZlcm5hbmRvLnBhY2hlY29AaW50ZWwuY29tPgo+PiBD
YzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNv
bT4KPj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+
PiAtLS0KPj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIHwgMiArLQo+
PiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPj4gaW5kZXggMGRjMmIwY2Y0NjA0Li5j
Njk4Y2RkYzE0ZGMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX3VjLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+
PiBAQCAtNTIxLDcgKzUyMSw3IEBAIHZvaWQgaW50ZWxfdWNfZmluaV9odyhzdHJ1Y3QgaW50ZWxf
dWMgKnVjKQo+PiDCoHsKPj4gwqDCoMKgwqAgc3RydWN0IGludGVsX2d1YyAqZ3VjID0gJnVjLT5n
dWM7Cj4+IC3CoMKgwqAgaWYgKCFpbnRlbF9ndWNfaXNfcnVubmluZyhndWMpKQo+PiArwqDCoMKg
IGlmICghaW50ZWxfdWNfc3VwcG9ydHNfZ3VjKHVjKSkKPgo+IHRoZXJlIGlzIGEgaHVnZSBkaWZm
ZXJlbmNlIGJldHdlZW4gaXNfcnVubmluZyB2cyBzdXBwb3J0c19ndWMKPiBhbmQgY2hvb3Npbmcg
c3VwcG9ydHNfZ3VjIGlzIG9wdGltaXN0IGFwcHJvYWNoIGFzIHdlIGNhbiBmYWlsCj4gdG8gZmV0
Y2ggZ3VjIGZ3IGFuZCBhYm9ydCBlYXJseSwgc28gbWF5YmUKPgo+IMKgwqDCoMKgaWYgKCFpbnRl
bF91Y19md19pc19hdmFpbGFibGUoJmd1Yy0+ZncpKQoKVGhpcyBpcyB0aGUgYmV0dGVyIGNoZWNr
LiBUaGFua3MhCgo+Cj4gd291bGQgYmUgY2xvc2VyIHRvIHJlYWxpdHkgKGFzc3VtaW5nIHdlIGRv
bid0IGZhaWwgb24gd29wY20KPiAoaG1tLCBtYXliZSB3ZSBzaG91bGQgZm9yY2UgZncgc3RhdGUg
dG8gRkFJTCBpbiBzdWNoIGNhc2U/KQoKVGhhdCB3b3VsZCBtYWtlIHNlbnNlIHRvIG1lLiBUaGUg
ZmFpbCBvbiB3b3BjbSBkaXJlY3RseQphZmZlY3RzIHRoZSBzdGF0ZSBvZiB0aGUgZncgYmVjYXVz
ZSB3ZSBhYm9ydCB0aGUgdXBsb2FkCmFzIGEgcmVzdWx0LgoKVGhhbmtzLApGZXJuYW5kbwoKPgo+
Cj4+IMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+PiDCoMKgwqDCoGlmIChpbnRlbF91Y19zdXBw
b3J0c19ndWNfc3VibWlzc2lvbih1YykpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
