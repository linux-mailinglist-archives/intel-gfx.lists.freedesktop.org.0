Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D2DEFC8
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 06:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E26A89385;
	Tue, 30 Apr 2019 04:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C36D789385
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 04:52:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 21:52:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,412,1549958400"; d="scan'208";a="135544290"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.252.151.218])
 ([10.252.151.218])
 by orsmga007.jf.intel.com with ESMTP; 29 Apr 2019 21:52:43 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190412183009.8237-1-ville.syrjala@linux.intel.com>
 <20190412183009.8237-2-ville.syrjala@linux.intel.com>
 <0a2a7f7d-7799-8b22-db7e-db73418a95c6@intel.com>
 <20190426143715.GP24299@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <1b775593-5259-70b8-84da-9a3dee237f64@intel.com>
Date: Tue, 30 Apr 2019 10:22:40 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190426143715.GP24299@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Enable pipe HDR mode on ICL
 if only HDR planes are used
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

Ck9uIDQvMjYvMjAxOSA4OjA3IFBNLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gT24gRnJpLCBB
cHIgMjYsIDIwMTkgYXQgMDY6NDA6MTFQTSArMDUzMCwgU2hhcm1hLCBTaGFzaGFuayB3cm90ZToK
Pj4gT24gNC8xMy8yMDE5IDEyOjAwIEFNLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+Pj4gRnJvbTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4+Cj4+PiBU
aGUgcGlwZSBoYXMgYSBzcGVjaWFsIEhEUiBtb2RlIHdpdGggaGlnaGVyIHByZWNpc2lvbiB3aGVu
IG9ubHkKPj4+IEhEUiBwbGFuZXMgYXJlIGFjdGl2ZS4gTGV0J3MgdXNlIGl0Lgo+Pj4KPj4+IEN1
cmlvdXNseSB0aGlzIGZpeGVzIHRoZSBrbXNfY29sb3IgZ2FtbWEvZGVnYW1tYSB0ZXN0cyB3aGVu
Cj4+PiB1c2luZyBhIEhEUiBwbGFuZSwgd2hpY2ggaXMgYWx3YXlzIHRoZSBjYXNlIHVubGVzcyBv
bmUgaGFja3MKPj4+IHRoZSB0ZXN0IHRvIHVzZSBhbiBTRFIgcGxhbmUuIElmIG9uZSBkb2VzIGhh
Y2sgdGhlIHRlc3QgdG8gdXNlCj4+PiBhbiBTRFIgcGxhbmUgaXQgZG9lcyBwYXNzIGFscmVhZHku
Cj4+Pgo+Pj4gSSBoYXZlIG5vIGFjdHVhbCBleHBsYW5hdGlvbiBob3cgdGhlIG91dHB1dCBhZnRl
ciB0aGUgZ2FtbWEKPj4+IExVVCBjYW4gYmUgZGlmZmVyZW50IGJldHdlZW4gdGhlIHR3byBtb2Rl
cy4gVGhlIHdheSB0aGUgdGVzdHMKPj4+IGFyZSB3cml0dGVuIHNob3VsZCBtZWFuIHRoYXQgdGhl
IG91dHB1dCBzaG91bGQgYmUgaWRlbnRpY2FsCj4+PiBiZXR3ZWVuIHRoZSBzb2xpZCBjb2xvciB2
cy4gdGhlIGdyYWRpZW50LiBCdXQgY2xlYXJseSB0aGF0Cj4+PiBzb21laG93IGRvZXNuJ3QgaG9s
ZCB0cnVlIGZvciB0aGUgSERSIHBsYW5lcyBpbiBub24tSERSIHBpcGUKPj4+IG1vZGUuIEFueXdh
eXMsIGFzIGxvbmcgYXMgd2Ugc3RpY2sgdG8gb25lIHR5cGUgb2YgcGxhbmUgdGhlCj4+PiB0ZXN0
IHNob3VsZCBwcm9kdWNlIHNlbnNpYmxlIHJlc3VsdHMgbm93Lgo+Pj4KPj4+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+PiAt
LS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICB8ICAxICsKPj4+
ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyB8ICA3ICsrKysrKysKPj4+
ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5oICB8IDEyICsrKysrKysrLS0t
LQo+Pj4gICAgMyBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+Pj4gaW5kZXggOGFkMmYwYTAzZjI4Li45
MGQ2MGVjZDMzMTcgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4+PiBAQCAtNTc2
Nyw2ICs1NzY3LDcgQEAgZW51bSB7Cj4+PiAgICAjZGVmaW5lIF9QSVBFX01JU0NfQgkJCTB4NzEw
MzAKPj4+ICAgICNkZWZpbmUgICBQSVBFTUlTQ19ZVVY0MjBfRU5BQkxFCSgxIDw8IDI3KQo+Pj4g
ICAgI2RlZmluZSAgIFBJUEVNSVNDX1lVVjQyMF9NT0RFX0ZVTExfQkxFTkQgKDEgPDwgMjYpCj4+
PiArI2RlZmluZSAgIFBJUEVNSVNDX0hEUl9NT0RFCQkoMSA8PCAyMykgLyogaWNsKyAqLwo+Pj4g
ICAgI2RlZmluZSAgIFBJUEVNSVNDX09VVFBVVF9DT0xPUlNQQUNFX1lVViAgKDEgPDwgMTEpCj4+
PiAgICAjZGVmaW5lICAgUElQRU1JU0NfRElUSEVSX0JQQ19NQVNLCSg3IDw8IDUpCj4+PiAgICAj
ZGVmaW5lICAgUElQRU1JU0NfRElUSEVSXzhfQlBDCQkoMCA8PCA1KQo+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2Rpc3BsYXkuYwo+Pj4gaW5kZXggNDkwYmQ0OWZmNDJhLi5kMGRiZGJkNWRiM2Yg
MTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKPj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwo+Pj4gQEAgLTQwNTUs
NiArNDA1NSw5IEBAIHN0YXRpYyB2b2lkIGludGVsX3VwZGF0ZV9waXBlX2NvbmZpZyhjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhCj4+PiAgICAJCQlpcm9ubGFrZV9w
Zml0X2Rpc2FibGUob2xkX2NydGNfc3RhdGUpOwo+Pj4gICAgCX0KPj4+ICAgIAo+Pj4gKwlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSA5IHx8IElTX0JST0FEV0VMTChkZXZfcHJpdikpCj4+PiAr
CQliZHdfc2V0X3BpcGVtaXNjKG5ld19jcnRjX3N0YXRlKTsKPj4+ICsKPj4+ICAgIAlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPj4+ICAgIAkJaWNsX3NldF9waXBlX2NoaWNrZW4oY3J0
Yyk7Cj4+PiAgICB9Cj4+PiBAQCAtODg2OSw2ICs4ODcyLDEwIEBAIHN0YXRpYyB2b2lkIGJkd19z
ZXRfcGlwZW1pc2MoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4+
PiAgICAJCXZhbCB8PSBQSVBFTUlTQ19ZVVY0MjBfRU5BQkxFIHwKPj4+ICAgIAkJCVBJUEVNSVND
X1lVVjQyMF9NT0RFX0ZVTExfQkxFTkQ7Cj4+PiAgICAKPj4+ICsJaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gMTEgJiYKPj4+ICsJICAgIChjcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzICYgfmlj
bF9oZHJfcGxhbmVfbWFzaygpKSA9PSAwKQo+Pj4gKwkJdmFsIHw9IFBJUEVNSVNDX0hEUl9NT0RF
Owo+Pj4gKwo+PiBTaG91bGRuJ3Qgd2UgY2hlY2sgaWYgdGhlIGNvbnRlbnQgYmVpbmcgcGxheWVk
IG9uIHBsYW5lIGlzIEhEUiBiZWZvcmUKPj4gZW5hYmxpbmcgdGhpcyBiaXQgKGV2ZW4gdGhvdWdo
IEkgYW0gbm90IHN1cmUgaWYgdGhlcmUgaXMgYW55IGhhcm0gaW4KPj4gZG9pbmcgdGhhdCk/IE9y
IG1heWJlIGNoZWNrIHRoZSBjb25uZWN0b3ItPm91dHB1dF9oZHJfbWV0YWRhdGEgPyBNb3N0IG9m
Cj4+IHRoZSB0aW1lcyB3ZSB3b3VsZCBiZSBzZW5kaW5nIFNEUiBidWZmZXJzIG9uIHRoaXMgcGxh
bmUuIFdoYXQgaGFwcGVucwo+PiBleGFjdGx5IHdoZW4gd2Ugc2V0IHRoaXMgYml0ID8gVGhlIGJz
cGVjIHNheXM6Cj4+Cj4+ICJUaGlzIGZpZWxkIGVuYWJsZXMgdGhlIEhEUiBtb2RlLCBhbGxvd2lu
ZyBmb3IgaGlnaGVyIHByZWNpc2lvbiBvdXRwdXQKPj4gZnJvbSB0aGUgSERSIHN1cHBvcnRpbmcg
cGxhbmVzIGFuZCBieXBhc3NpbmcgdGhlIFNEUiBwbGFuZXMgaW4gYmxlbmRpbmcuICIKPiBJIHRo
aW5rIHRoZSBiaXQgaXMganVzdCBtaXNuYW1lZCAobGlrZSBtb3N0IHRoaW5ncyB3aXRoICJIRFIi
IGluIHRoZWlyCj4gbmFtZSkuIEl0J3MganVzdCBhICJnaW1tZSBtb2FyIHByZWNpc2lvbiIgYml0
LgoKTGV0cyBtYWtlIHRoaXMgYSBiaXQgbW9yZSBjbGVhciwgbWF5IGJlIHJlbmFtZSB0aGUgYml0
IHRvIApQSVBFTUlTQ19IRFJfUFJFQ0lTSU9OX01PREUgaW5zdGVhZD8KCldpdGggdGhhdCBjaGFu
Z2UsIHRoaXMgcGF0Y2ggaXMKClJldmlld2VkLWJ5OiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5r
LnNoYXJtYUBpbnRlbC5jb20+Cgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
