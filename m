Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E22855863
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 22:06:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E8656E0AF;
	Tue, 25 Jun 2019 20:06:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD4526E0AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 20:06:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 13:06:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,417,1557212400"; d="scan'208";a="313192701"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 25 Jun 2019 13:06:22 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190625174547.22164-1-chris@chris-wilson.co.uk>
 <op.z3ydosirxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <156148843527.2637.1647850966438714639@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <50e16efa-e399-e9ca-7053-81400ff12083@intel.com>
Date: Tue, 25 Jun 2019 13:06:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <156148843527.2637.1647850966438714639@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Compact init params debug to
 a single line
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

CgpPbiA2LzI1LzE5IDExOjQ3IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBNaWNo
YWwgV2FqZGVjemtvICgyMDE5LTA2LTI1IDE5OjMwOjE4KQo+PiBPbiBUdWUsIDI1IEp1biAyMDE5
IDE5OjQ1OjQ3ICswMjAwLCBDaHJpcyBXaWxzb24KPj4gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4gd3JvdGU6Cj4+Cj4+PiBVc2UgaGV4X2R1bXBfdG9fYnVmZmVyKCkgdG8gY29tcHJlc3MgdGhl
IHBhcmFtZXRlciBkZWJ1ZyBpbnRvIGEgc2luZ2xlCj4+PiBsaW5lIGZvciBsZXNzIHZlcmJvc2Ug
ZGVidWcgbG9ncy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPj4+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVj
emtvQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9n
dWMuYyB8IDYgKysrKy0tCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2d1Yy5jCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Yy5jCj4+PiBpbmRl
eCBjNDBhNmVmZGQzM2EuLjQ0N2YxZGUxNTI4OSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2d1Yy5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9ndWMuYwo+Pj4gQEAgLTM2Nyw2ICszNjcsNyBAQCBzdGF0aWMgdTMyIGd1Y19jdGxfYWRzX2Zs
YWdzKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPj4+ICAgdm9pZCBpbnRlbF9ndWNfaW5pdF9wYXJh
bXMoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+Pj4gICB7Cj4+PiAgICAgICAgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZ3VjX3RvX2k5MTUoZ3VjKTsKPj4+ICsgICAgIGNoYXIg
YnVmW0dVQ19DVExfTUFYX0RXT1JEUyAqIDEwXTsKPj4+ICAgICAgICB1MzIgcGFyYW1zW0dVQ19D
VExfTUFYX0RXT1JEU107Cj4+PiAgICAgICAgaW50IGk7Cj4+PiBAQCAtMzc4LDggKzM3OSw5IEBA
IHZvaWQgaW50ZWxfZ3VjX2luaXRfcGFyYW1zKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPj4+ICAg
ICAgICBwYXJhbXNbR1VDX0NUTF9ERUJVR10gPSBndWNfY3RsX2RlYnVnX2ZsYWdzKGd1Yyk7Cj4+
PiAgICAgICAgcGFyYW1zW0dVQ19DVExfQURTXSA9IGd1Y19jdGxfYWRzX2ZsYWdzKGd1Yyk7Cj4+
PiAtICAgICBmb3IgKGkgPSAwOyBpIDwgR1VDX0NUTF9NQVhfRFdPUkRTOyBpKyspCj4+PiAtICAg
ICAgICAgICAgIERSTV9ERUJVR19EUklWRVIoInBhcmFtWyUyZF0gPSAlI3hcbiIsIGksIHBhcmFt
c1tpXSk7Cj4+PiArICAgICBoZXhfZHVtcF90b19idWZmZXIocGFyYW1zLCBzaXplb2YocGFyYW1z
KSwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAzMiwgNCwgYnVmLCBzaXplb2YoYnVmKSwg
ZmFsc2UpOwo+Pgo+PiBobW0sIEdVQ19DVExfTUFYX0RXT1JEUyBpcyAxNCwgc28gaXQgd2lsbCBi
ZSA1NiBieXRlcyBpbiB0b3RhbCwKPj4gYnV0IGhleF9kdW1wX3RvX2J1ZmZlciB3aWxsIGR1bXAg
b25seSAzMiBieXRlcyAuLi4gdW5sZXNzCj4+IHdlIGV4cGxpY2l0bHkgbGltaXQgb3VyIGR1bXAg
dG8gY3VycmVudGx5IHVzZWQganVzdCA1IGVudHJpZXMKClRvIGJlIHBlZGFudGljIHdlIHVzZSA2
IGVudHJpZXMgKDAuLjUpLCBidXQgZG9lc24ndCByZWFsbHkgY2hhbmdlIHRoZSAKcG9pbnQgOikK
Cj4+ICgyMCBieXRlcykgYnV0IHRoZW4gdGhpcyBtaWdodCBiZSBub3QgZnV0dXJlIHByb29mIGlm
IG5ldyBmdwo+PiB3aWxsIHJlcXVpcmUvdXNlIG1vcmUgdGhlbiA4IHBhcmFtZXRlcnMKPiAKPiBB
aCwgaXQgb25seSBkb2VzIG9uZSBsaW5lLiBJIGNvbXBsZXRlbHkgZm9yZ290IGFib3V0IHRoYXQu
Cj4gCj4+PiArICAgICBEUk1fREVCVUdfRFJJVkVSKCJwYXJhbXNbJXNdXG4iLCBidWYpOwo+Pgo+
PiB1c2Ugb2YgWyVzXSBtYXkgbWFrZSB0aGlzIGxlc3MgcmVhZGFibGUsIHNvIG1heWJlOgo+Pgo+
PiAgICAgICAgICBEUk1fREVCVUdfRFJJVkVSKCJHdUMgcGFyYW1zICVzXG4iLCBidWYpOwo+Pgo+
PiBidXQgSSdtIHN0aWxsIG5vdCBzdXJlIGlmIHdlIHNob3VsZCBnbyB0aGF0IHBhcnRpYWwgd2F5
LCBEYW5pZWxlID8KPiAKPiBIb3cgYWJvdXQsCj4gCj4gaWYgKGRybV9kZWJ1ZyAmIERSTV9VVF9E
UklWRVIpCj4gCXByaW50X2hleF9kdW1wKEtFUk5fREVCVUcsICJndWMgaW5pdCBwYXJhbXM6ICIs
IDAsIDE2LCA0LAo+IAkJICAgICAgIHBhcmFtcywgc2l6ZW9mKHBhcmFtcyksIGZhbHNlKTsKPiAK
Pj4gcHMuIHdlIGNhbiBhc2xvIHVzZSB0d28gbGluZXMgb3IgdHdvIGJ1ZnMgZm9yIDAuLjcgYW5k
IDguLjEzIHBhcmFtcwo+IAo+IFdvdWxkIGFsc28gYmUgYW4gaW1wcm92ZW1lbnQgb3ZlciAxNCA6
KQo+IAo+IERvIHdlIGV2ZW4gbmVlZCB0byBkdW1wIHRoZW0/IFRoZXkgYXJlIGFsbW9zdCBhbGwg
c3RhdGljLCB3aXRoIHRoZQo+IGV4Y2VwdGlvbiBvZiBkZWJ1ZyBsZXZlbCBhbmQgYWRzIGFkZHJl
c3M/IElzIGl0IHVzZWZ1bD8KCkluIG15IGV4cGVyaWVuY2UgaXQgY2FuIGJlIHVzZWZ1bCB3aGVu
IHdlIGdldCBhIGJ1ZyByZXBvcnQgd2hlcmUgZ3VjIApmYWlsZWQgdG8gbG9hZCBvciB3aGVuIHdl
J3JlIHRlc3RpbmcgYW4gaW50ZXJmYWNlIGNoYW5nZSB0byBkb3VibGUtY2hlY2sgCnRoYXQgdGhl
IHBhcmFtZXRlcnMgYXJlIHNldCBhcyBleHBlY3RlZC4gQnV0IEkgYWdyZWUgdGhlcmUgaXMgbm8g
bmVlZCB0byAKZHVtcCBhbGwgdGhlIGR3b3JkcyB3ZSBkb24ndCBzZXQuIE1heWJlIHdlIGNhbiBy
ZWR1Y2UgR1VDX0NUTF9NQVhfRFdPUkRTIAp0byB0aGUgbnVtYmVyIG9mIHVzZWQgZHdvcmRzLCBv
ciBhZGQgYSBuZXcgZGVmaW5lIHNldCB0byB0aGF0IGFuZCB1c2UgaXQgCmZvciBidWYgc2l6ZT8K
CkRhbmllbGUKCj4gLUNocmlzCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
