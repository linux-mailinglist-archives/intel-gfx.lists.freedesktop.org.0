Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 857A9827C7
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 00:57:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62CA76E1BB;
	Mon,  5 Aug 2019 22:57:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08C966E1BB
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 22:57:43 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 15:57:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,350,1559545200"; d="scan'208";a="164795706"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.9.111])
 by orsmga007.jf.intel.com with ESMTP; 05 Aug 2019 15:57:41 -0700
Date: Mon, 5 Aug 2019 15:57:39 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190805225739.7ioh7lxaysgww4cv@ldmartin-desk1>
References: <20190802215356.13563-2-jose.souza@intel.com>
 <20190802215903.14020-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802215903.14020-2-jose.souza@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/tgl: Fix the read of the
 DDI that transcoder is attached to
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMDIsIDIwMTkgYXQgMDI6NTk6MDNQTSAtMDcwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPk9uIFRHTCB0aGlzIHJlZ2lzdGVyIGRvIG5vdCBtYXAgZGlyZWN0bHkgdG8gcG9ydCwgaXQg
d2FzIGFscmVhZHkKPmhhbmRsZWQgd2hlbiBzZXR0aW5nIGl0KFRHTF9UUkFOU19ERElfU0VMRUNU
X1BPUlQoKSkgYnV0IG5vdCB3aGVuCj5yZWFkaW5nIGl0Lgo+Cj52MjoKPkFkZGluZyBUR0xfUE9S
VF9UUkFOU19ERElfU0VMRUNUKCkgc28gYWxsIGZ1dHVyZSB1c2VycyBjYW4gcmV1c2UgaXQKPihM
dWNhcykKPgo+djM6IE1pc3NlZCBwYXJlbnRoZXNlcyBhcnJvdW5kIHZhbCAoSm9zZSkKPgo+Q2M6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+U2lnbmVkLW9mZi1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4tLS0KPiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDMgKy0tCj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAxICsKPiAyIGZpbGVz
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+ZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPmluZGV4IDllNGVlMjlmZDBmYy4u
NjhlNWQ4YTljMjNkIDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCj5AQCAtMTAzNTQsOCArMTAzNTQsNyBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2dl
dF9kZGlfcG9ydF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiAJdG1wID0gSTkxNV9S
RUFEKFRSQU5TX0RESV9GVU5DX0NUTChwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIpKTsKPgo+
IAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKPi0JCXBvcnQgPSAodG1wICYgVEdMX1RS
QU5TX0RESV9QT1JUX01BU0spID4+Cj4tCQkJVEdMX1RSQU5TX0RESV9QT1JUX1NISUZUOwo+KwkJ
cG9ydCA9IFRHTF9QT1JUX1RSQU5TX0RESV9TRUxFQ1QodG1wKTsKPiAJZWxzZQo+IAkJcG9ydCA9
ICh0bXAgJiBUUkFOU19ERElfUE9SVF9NQVNLKSA+PiBUUkFOU19ERElfUE9SVF9TSElGVDsKCkkg
dGhpbmsgd2UgYWN0dWFsbHkgbmVlZCBhIG1hY3JvIHRvIGRvIG9uID49IDEyIGFuZCBhbm90aGVy
IHRvIGRvIGl0CmJlZm9yZS4gQW5kIHJlYWRpbmcgaXQgYWdhaW4sIEkgYWdyZWUgbXkgc3VnZ2Vz
dGlvbiBvZgpUR0xfUE9SVF9UUkFOU19ERElfU0VMRUNUIHdhcyBub3Qgc28gZ29vZC4KCgo+Cj5k
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKPmluZGV4IGQ3NjA4MzBjZmQ3Yi4uOTVlMmNmZGQ0MWI5IDEw
MDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+KysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+QEAgLTk0MzIsNiArOTQzMiw3IEBAIGVudW0gc2ts
X3Bvd2VyX2dhdGUgewo+ICNkZWZpbmUgIFRHTF9UUkFOU19ERElfUE9SVF9NQVNLCSgweGYgPDwg
VEdMX1RSQU5TX0RESV9QT1JUX1NISUZUKQo+ICNkZWZpbmUgIFRSQU5TX0RESV9TRUxFQ1RfUE9S
VCh4KQkoKHgpIDw8IFRSQU5TX0RESV9QT1JUX1NISUZUKQo+ICNkZWZpbmUgIFRHTF9UUkFOU19E
RElfU0VMRUNUX1BPUlQoeCkJKCgoeCkgKyAxKSA8PCBUR0xfVFJBTlNfRERJX1BPUlRfU0hJRlQp
Cj4rI2RlZmluZSAgVEdMX1BPUlRfVFJBTlNfRERJX1NFTEVDVCh2YWwpICgoKHZhbCkgJiBUR0xf
VFJBTlNfRERJX1BPUlRfTUFTSyA+PiBUR0xfVFJBTlNfRERJX1BPUlRfU0hJRlQpIC0gMSkKClRS
QU5TX0RESV9GVU5DX0NUTF9WQUxfVE9fUE9SVCh2YWwpClRSQU5TX0RESV9GVU5DX0NUTF9QT1JU
X1RPX1ZBTChwb3J0KQoKYW5kIHRoZW4gdGhlIFRHTF8qIHZhcmlhbnRzLi4uID8KCk9yICJUUkFO
U19ERElfU0VMRUNUXyoiIGFzIHByZWZpeC4uLgoKCkx1Y2FzIERlIE1hcmNoaQoKCj4gI2RlZmlu
ZSAgVFJBTlNfRERJX01PREVfU0VMRUNUX01BU0sJKDcgPDwgMjQpCj4gI2RlZmluZSAgVFJBTlNf
RERJX01PREVfU0VMRUNUX0hETUkJKDAgPDwgMjQpCj4gI2RlZmluZSAgVFJBTlNfRERJX01PREVf
U0VMRUNUX0RWSQkoMSA8PCAyNCkKPi0tIAo+Mi4yMi4wCj4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
