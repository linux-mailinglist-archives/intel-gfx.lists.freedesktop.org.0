Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC1D3114D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 17:29:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01D73895B4;
	Fri, 31 May 2019 15:29:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781CD895B4
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 15:28:59 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 08:28:57 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 31 May 2019 08:28:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2019 18:28:55 +0300
Date: Fri, 31 May 2019 18:28:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Swati Sharma <swati2.sharma@intel.com>
Message-ID: <20190531152855.GW5942@intel.com>
References: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
 <1559123462-7343-4-git-send-email-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559123462-7343-4-git-send-email-swati2.sharma@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v7][PATCH 03/12] drm/i915: Add func to compare
 hw/sw gamma lut
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgMjksIDIwMTkgYXQgMDM6MjA6NTNQTSArMDUzMCwgU3dhdGkgU2hhcm1hIHdy
b3RlOgo+IHYzOiAtUmViYXNlCj4gdjQ6IC1SZW5hbWVkIGludGVsX2NvbXBhcmVfY29sb3JfbHV0
KCkgdG8gaW50ZWxfY29sb3JfbHV0X2VxdWFsKCkgW0phbmldCj4gICAgIC1BZGRlZCB0aGUgZGVm
YXVsdCBsYWJlbCBhYm92ZSB0aGUgY29ycmVjdCBsYWJlbCBbSmFuaV0KPiAgICAgLUNvcnJlY3Rl
ZCBzbWF0Y2ggd2FybiAidmFyaWFibGUgZGVyZWZlcmVuY2VkIGJlZm9yZSBjaGVjayIKPiAgICAg
IFtEYW4gQ2FycGVudGVyXQo+IHY1OiAtQWRkZWQgY29uZGl0aW9uICghYmxvYjEgJiYgIWJsb2Iy
KSByZXR1cm4gdHJ1ZSBbSmFuaV0KPiAgICAgLUNhbGxlZCBQSVBFX0NPTkZfQ0hFQ0tfQ09MT1Jf
TFVUIGluc2lkZSBpZiAoIWFkanVzdCkgW0phbmldCj4gICAgIC1BZGRlZCAjdW5kZWYgUElQRV9D
T05GX0NIRUNLX0NPTE9SX0xVVCBbSmFuaV0KPiB2NjogLUFkZGVkIGZ1bmMgaW50ZWxfY29sb3Jf
Z2V0X2JpdF9wcmVjaXNpb24oKSB0byBnZXQgYml0IHByZWNpc2lvbiBmb3IKPiAgICAgIGdhbW1h
IGFuZCBkZWdhbW1hIGx1dCByZWFkb3V0IGRlcGVuZGluZyB1cG9uIHBsYXRmb3JtIGFuZAo+ICAg
ICAgY29ycmVzcG9uZGluZyB0byBsb2FkX2x1dHMoKSBbQW5raXRdCj4gICAgIC1BZGRlZCBkZWJ1
ZyBsb2cgZm9yIGNvbG9yIHBhcmEgaW4gaW50ZWxfZHVtcF9waXBlX2NvbmZpZyBbSmFuaV0KPiAg
ICAgLU1hZGUgcGF0Y2gxMSBhcyBwYXRjaDMgW0phbmldCj4gdjc6IC1SZW5hbWVkIGZ1bmMgaW50
ZWxfY29sb3JfZ2V0X2JpdF9wcmVjaXNpb24oKSB0bwo+ICAgICAgaW50ZWxfY29sb3JfZ2V0X2dh
bW1hX2JpdF9wcmVjaXNpb24oKQo+ICAgICAtQWRkZWQgc2VwYXJhdGUgZnVuY3Rpb24vcGxhdGZv
cm0gZm9yIGdhbW1hIGJpdCBwcmVjaXNpb24gW1ZpbGxlXQo+ICAgICAtQ29ycmVjdGVkIGNoZWNr
cGF0Y2ggd2FybmluZ3MKPiAKPiBTaWduZWQtb2ZmLWJ5OiBTd2F0aSBTaGFybWEgPHN3YXRpMi5z
aGFybWFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xv
ci5jICAgfCAxNjYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaCAgIHwgICA3ICsrCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Rpc3BsYXkuYyB8ICAyNCArKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDE5
NyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2NvbG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jCj4gaW5kZXgg
NTBiOThlZS4uYjIwYTJjNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jb2xvci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwo+IEBA
IC0xMjUxLDYgKzEyNTEsMTcyIEBAIHN0YXRpYyBpbnQgaWNsX2NvbG9yX2NoZWNrKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0
YXRpYyBpbnQgaTl4eF9nYW1tYV9wcmVjaXNpb24oc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpCj4gK3sKPiArCWlmICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlKQo+ICsJCXJl
dHVybiAwOwo+ICsKPiArCXN3aXRjaCAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSkgewo+ICsJY2Fz
ZSBHQU1NQV9NT0RFX01PREVfOEJJVDoKPiArCQlyZXR1cm4gODsKPiArCWNhc2UgR0FNTUFfTU9E
RV9NT0RFXzEwQklUOgo+ICsJCXJldHVybiAxNjsKPiArCWRlZmF1bHQ6Cj4gKwkJTUlTU0lOR19D
QVNFKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpOwo+ICsJCXJldHVybiAwOwo+ICsJfQo+ICt9Cj4g
Kwo+ICtzdGF0aWMgaW50IGNodl9nYW1tYV9wcmVjaXNpb24oc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpCj4gK3sKPiArCWlmIChjcnRjX3N0YXRlLT5jZ21fbW9kZSAmIENHTV9Q
SVBFX01PREVfR0FNTUEpCj4gKwkJcmV0dXJuIDEwOwo+ICsJZWxzZQo+ICsJCXJldHVybiBpOXh4
X2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsKPiArfQo+ICsKPiArc3RhdGljIGludCBpbGtf
Z2FtbWFfcHJlY2lzaW9uKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICt7
Cj4gKwlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKPiArCQlyZXR1cm4gMDsKPiArCj4g
KwlpZiAoKGNydGNfc3RhdGUtPmNzY19tb2RlICYgQ1NDX1BPU0lUSU9OX0JFRk9SRV9HQU1NQSkg
PT0gMCkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21v
ZGUpIHsKPiArCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzhCSVQ6Cj4gKwkJcmV0dXJuIDg7Cj4gKwlj
YXNlIEdBTU1BX01PREVfTU9ERV8xMEJJVDoKPiArCQlyZXR1cm4gMTA7Cj4gKwlkZWZhdWx0Ogo+
ICsJCU1JU1NJTkdfQ0FTRShjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKTsKPiArCQlyZXR1cm4gMDsK
PiArCX0KPiArfQo+ICsKPiArc3RhdGljIGludCBpdmJfZ2FtbWFfcHJlY2lzaW9uKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICt7Cj4gKwlpZiAoIWNydGNfc3RhdGUtPmdh
bW1hX2VuYWJsZSkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwlpZiAoKGNydGNfc3RhdGUtPmNzY19t
b2RlICYgQ1NDX1BPU0lUSU9OX0JFRk9SRV9HQU1NQSkgPT0gMCkKPiArCQlyZXR1cm4gMDsKPiAr
Cj4gKwlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpIHsKPiArCWNhc2UgR0FNTUFfTU9E
RV9NT0RFXzhCSVQ6Cj4gKwkJcmV0dXJuIDg7Cj4gKwljYXNlIEdBTU1BX01PREVfTU9ERV9TUExJ
VDoKPiArCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzEwQklUOgo+ICsJCXJldHVybiAxMDsKPiArCWRl
ZmF1bHQ6Cj4gKwkJTUlTU0lOR19DQVNFKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpOwo+ICsJCXJl
dHVybiAwOwo+ICsJfQo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGdsa19nYW1tYV9wcmVjaXNpb24o
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gK3sKPiArCWlmICghY3J0Y19z
dGF0ZS0+Z2FtbWFfZW5hYmxlKQo+ICsJCXJldHVybiAwOwo+ICsKPiArCWlmICgoY3J0Y19zdGF0
ZS0+Y3NjX21vZGUgJiBDU0NfUE9TSVRJT05fQkVGT1JFX0dBTU1BKSA9PSAwKQo+ICsJCXJldHVy
biAwOwoKZ2xrIGRvZW5zJ3QgaGF2ZSB0aGF0IGJpdC4KCj4gKwo+ICsJc3dpdGNoIChjcnRjX3N0
YXRlLT5nYW1tYV9tb2RlKSB7Cj4gKwljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOgo+ICsJCXJl
dHVybiA4Owo+ICsJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6Cj4gKwkJcmV0dXJuIDEwOwo+
ICsJZGVmYXVsdDoKPiArCQlNSVNTSU5HX0NBU0UoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSk7Cj4g
KwkJcmV0dXJuIDA7Cj4gKwl9Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaWNsX2dhbW1hX3ByZWNp
c2lvbihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiArewo+ICsJaWYgKChj
cnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgUFJFX0NTQ19HQU1NQV9FTkFCTEUpID09IDApCj4gKwkJ
cmV0dXJuIDA7CgpQT1NUX0NTQ19HQU1NQQoKPiArCj4gKwlzd2l0Y2ggKGNydGNfc3RhdGUtPmdh
bW1hX21vZGUgJiBHQU1NQV9NT0RFX01PREVfTUFTSykgewo+ICsJY2FzZSBHQU1NQV9NT0RFX01P
REVfOEJJVDoKPiArCQlyZXR1cm4gODsKPiArCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzEwQklUOgo+
ICsJCXJldHVybiAxMDsKPiArCWRlZmF1bHQ6Cj4gKwkJTUlTU0lOR19DQVNFKGNydGNfc3RhdGUt
PmdhbW1hX21vZGUpOwo+ICsJCXJldHVybiAwOwo+ICsJfQo+ICt9Cj4gKwo+ICtpbnQgaW50ZWxf
Y29sb3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNpb24oc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpCj4gK3sKPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0
YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOwo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gKwo+ICsJaWYgKEhBU19HTUNIKGRl
dl9wcml2KSkgewo+ICsJCWlmIChJU19DSEVSUllWSUVXKGRldl9wcml2KSkKPiArCQkJcmV0dXJu
IGNodl9nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7Cj4gKwkJZWxzZQo+ICsJCQlyZXR1cm4g
aTl4eF9nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7Cj4gKwl9IGVsc2Ugewo+ICsJCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+ICsJCQlyZXR1cm4gaWNsX2dhbW1hX3ByZWNpc2lv
bihjcnRjX3N0YXRlKTsKPiArCQllbHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSB8fCBJ
U19HRU1JTklMQUtFKGRldl9wcml2KSkKPiArCQkJcmV0dXJuIGdsa19nYW1tYV9wcmVjaXNpb24o
Y3J0Y19zdGF0ZSk7Cj4gKwkJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA3KQo+ICsJ
CQlyZXR1cm4gaXZiX2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsKPiArCQllbHNlCj4gKwkJ
CXJldHVybiBpbGtfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOwo+ICsJfQo+ICsKPiArCXJl
dHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW5saW5lIGJvb2wgZXJyX2NoZWNrKHN0cnVjdCBk
cm1fY29sb3JfbHV0ICpzd19sdXQsCj4gKwkJCSAgICAgc3RydWN0IGRybV9jb2xvcl9sdXQgKmh3
X2x1dCwgdTMyIGVycikKPiArewo+ICsJcmV0dXJuICgoYWJzKChsb25nKWh3X2x1dC0+cmVkIC0g
c3dfbHV0LT5yZWQpKSA8PSBlcnIpICYmCj4gKwkJKChhYnMoKGxvbmcpaHdfbHV0LT5ibHVlIC0g
c3dfbHV0LT5ibHVlKSkgPD0gZXJyKSAmJgo+ICsJCSgoYWJzKChsb25nKWh3X2x1dC0+Z3JlZW4g
LSBzd19sdXQtPmdyZWVuKSkgPD0gZXJyKTsKPiArfQo+ICsKPiArYm9vbCBpbnRlbF9jb2xvcl9s
dXRfZXF1YWwoc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iMSwKPiArCQkJICAgc3RydWN0
IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iMiwKPiArCQkJICAgdTMyIGJpdF9wcmVjaXNpb24pCj4g
K3sKPiArCXN0cnVjdCBkcm1fY29sb3JfbHV0ICpzd19sdXQsICpod19sdXQ7Cj4gKwlpbnQgc3df
bHV0X3NpemUsIGh3X2x1dF9zaXplLCBpOwo+ICsJdTMyIGVycjsKPiArCj4gKwlpZiAoIWJsb2Ix
ICYmICFibG9iMikKPiArCQlyZXR1cm4gdHJ1ZTsKPiArCj4gKwlpZiAoIWJsb2IxKQo+ICsJCXJl
dHVybiB0cnVlOwo+ICsKPiArCWlmICghYmxvYjIpCj4gKwkJcmV0dXJuIGZhbHNlOwoKV2hhdCBp
cyB0aGlzIGxvZ2ljIHRyeWluZyB0byBkbz8KClNvbWV0aGluZyBsaWtlPwoKaWYgKCFibG9iMSAh
PSAhYmxvYjIpCglyZXR1cm4gZmFsc2U7CmlmICghYmxvYjEpCglyZXR1cm4gdHJ1ZTsKCgo+ICsK
PiArCXN3X2x1dF9zaXplID0gZHJtX2NvbG9yX2x1dF9zaXplKGJsb2IxKTsKPiArCWh3X2x1dF9z
aXplID0gZHJtX2NvbG9yX2x1dF9zaXplKGJsb2IyKTsKPiArCj4gKwlpZiAoc3dfbHV0X3NpemUg
IT0gaHdfbHV0X3NpemUpCj4gKwkJcmV0dXJuIGZhbHNlOwoKVGhpcyBpcyBnb2luZyB0byB0cmln
Z2VyIHdpdGggdGhlIHNwbGl0IGdhbW1hIG1vZGUuIFdlJ2xsIG5lZWQgdG8gYmUKbW9yZSBjbGV2
ZXIgd2hlbiBjb21wYXJpbmcgdGhlIHR3by4KCj4gKwo+ICsJc3dfbHV0ID0gYmxvYjEtPmRhdGE7
Cj4gKwlod19sdXQgPSBibG9iMi0+ZGF0YTsKPiArCj4gKwllcnIgPSAweGZmZmYgPj4gYml0X3By
ZWNpc2lvbjsKPiArCj4gKwlmb3IgKGkgPSAwOyBpIDwgc3dfbHV0X3NpemU7IGkrKykgewo+ICsJ
CWlmICghZXJyX2NoZWNrKCZod19sdXRbaV0sICZzd19sdXRbaV0sIGVycikpCj4gKwkJCXJldHVy
biBmYWxzZTsKPiArCX0KPiArCj4gKwlyZXR1cm4gdHJ1ZTsKPiArfQo+ICsKPiAgdm9pZCBpbnRl
bF9jb2xvcl9pbml0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ICB7Cj4gIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2NvbG9yLmgKPiBpbmRleCAwNTdlOGFjLi4wMmVhMWJjIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmgKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5oCj4gQEAgLTYsMTMgKzYsMjAgQEAKPiAgI2lmbmRl
ZiBfX0lOVEVMX0NPTE9SX0hfXwo+ICAjZGVmaW5lIF9fSU5URUxfQ09MT1JfSF9fCj4gIAo+ICsj
aW5jbHVkZSA8bGludXgvdHlwZXMuaD4KPiArCj4gIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOwo+
ICBzdHJ1Y3QgaW50ZWxfY3J0YzsKPiArc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iOwo+ICAKPiAg
dm9pZCBpbnRlbF9jb2xvcl9pbml0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKPiAgaW50IGlu
dGVsX2NvbG9yX2NoZWNrKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKPiAg
dm9pZCBpbnRlbF9jb2xvcl9jb21taXQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpOwo+ICB2b2lkIGludGVsX2NvbG9yX2xvYWRfbHV0cyhjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gIHZvaWQgaW50ZWxfY29sb3JfZ2V0X2NvbmZp
ZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gK2Jvb2wgaW50ZWxfY29s
b3JfbHV0X2VxdWFsKHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsCj4gKwkJCSAgIHN0
cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjIsCj4gKwkJCSAgIHUzMiBiaXRfcHJlY2lzaW9u
KTsKPiAraW50IGludGVsX2NvbG9yX2dldF9nYW1tYV9iaXRfcHJlY2lzaW9uKHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKPiAgCj4gICNlbmRpZiAvKiBfX0lOVEVMX0NPTE9S
X0hfXyAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCAzZTAxMDI4
Li5iOGZmM2Y0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3Bs
YXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0x
MTU3MCw2ICsxMTU3MCwxNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kdW1wX3BpcGVfY29uZmlnKHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ICAJCQkJICAgICAgZHJtX3JlY3Rfd2lkdGgoJnN0YXRl
LT5iYXNlLmRzdCksCj4gIAkJCQkgICAgICBkcm1fcmVjdF9oZWlnaHQoJnN0YXRlLT5iYXNlLmRz
dCkpOwo+ICAJfQo+ICsKPiArCWlmIChJU19DSEVSUllWSUVXKGRldl9wcml2KSkKPiArCQlEUk1f
REVCVUdfS01TKCJjZ21fbW9kZTolZCBnYW1tYV9tb2RlOiVkIGdhbW1hX2VuYWJsZTolZCBjc2Nf
ZW5hYmxlOiVkXG4iLAo+ICsJCQkgICAgICAgcGlwZV9jb25maWctPmNnbV9tb2RlLCBwaXBlX2Nv
bmZpZy0+Z2FtbWFfbW9kZSwKPiArCQkJICAgICAgIHBpcGVfY29uZmlnLT5nYW1tYV9lbmFibGUs
IHBpcGVfY29uZmlnLT5jc2NfZW5hYmxlKTsKPiArCWVsc2UKPiArCQlEUk1fREVCVUdfS01TKCJj
c2NfbW9kZTolZCBnYW1tYV9tb2RlOiVkIGdhbW1hX2VuYWJsZTolZCBjc2NfZW5hYmxlOiVkXG4i
LAo+ICsJCQkgICAgICAgcGlwZV9jb25maWctPmNzY19tb2RlLCBwaXBlX2NvbmZpZy0+Z2FtbWFf
bW9kZSwKPiArCQkJICAgICAgIHBpcGVfY29uZmlnLT5nYW1tYV9lbmFibGUsIHBpcGVfY29uZmln
LT5jc2NfZW5hYmxlKTsKPiAgfQo+ICAKPiAgc3RhdGljIGJvb2wgY2hlY2tfZGlnaXRhbF9wb3J0
X2NvbmZsaWN0cyhzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gQEAgLTExOTQ3LDYg
KzExOTU2LDcgQEAgc3RhdGljIGJvb2wgZmFzdGJvb3RfZW5hYmxlZChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAkJCSAgYm9vbCBhZGp1c3QpCj4gIHsKPiAgCWJvb2wgcmV0
ID0gdHJ1ZTsKPiArCXUzMiBicF9nYW1tYSA9IDA7Cj4gIAlib29sIGZpeHVwX2luaGVyaXRlZCA9
IGFkanVzdCAmJgo+ICAJCShjdXJyZW50X2NvbmZpZy0+YmFzZS5tb2RlLnByaXZhdGVfZmxhZ3Mg
JiBJOTE1X01PREVfRkxBR19JTkhFUklURUQpICYmCj4gIAkJIShwaXBlX2NvbmZpZy0+YmFzZS5t
b2RlLnByaXZhdGVfZmxhZ3MgJiBJOTE1X01PREVfRkxBR19JTkhFUklURUQpOwo+IEBAIC0xMjA5
OCw2ICsxMjEwOCwxNSBAQCBzdGF0aWMgYm9vbCBmYXN0Ym9vdF9lbmFibGVkKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCX0gXAo+ICB9IHdoaWxlICgwKQo+ICAKPiArI2Rl
ZmluZSBQSVBFX0NPTkZfQ0hFQ0tfQ09MT1JfTFVUKG5hbWUsIGJpdF9wcmVjaXNpb24pIGRvIHsg
XAo+ICsJaWYgKCFpbnRlbF9jb2xvcl9sdXRfZXF1YWwoY3VycmVudF9jb25maWctPm5hbWUsIFwK
PiArCQkJCSAgIHBpcGVfY29uZmlnLT5uYW1lLCBiaXRfcHJlY2lzaW9uKSkgeyBcCj4gKwkJcGlw
ZV9jb25maWdfZXJyKGFkanVzdCwgX19zdHJpbmdpZnkobmFtZSksIFwKPiArCQkJCSJod19zdGF0
ZSBkb2Vzbid0IG1hdGNoIHN3X3N0YXRlXG4iKTsgXAo+ICsJCXJldCA9IGZhbHNlOyBcCj4gKwl9
IFwKPiArfSB3aGlsZSAoMCkKPiArCj4gICNkZWZpbmUgUElQRV9DT05GX1FVSVJLKHF1aXJrKSBc
Cj4gIAkoKGN1cnJlbnRfY29uZmlnLT5xdWlya3MgfCBwaXBlX2NvbmZpZy0+cXVpcmtzKSAmIChx
dWlyaykpCj4gIAo+IEBAIC0xMjE5Myw2ICsxMjIxMiwxMCBAQCBzdGF0aWMgYm9vbCBmYXN0Ym9v
dF9lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCQkJUElQRV9D
T05GX0NIRUNLX1goY3NjX21vZGUpOwo+ICAJCVBJUEVfQ09ORl9DSEVDS19CT09MKGdhbW1hX2Vu
YWJsZSk7Cj4gIAkJUElQRV9DT05GX0NIRUNLX0JPT0woY3NjX2VuYWJsZSk7Cj4gKwo+ICsJCWJw
X2dhbW1hID0gaW50ZWxfY29sb3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNpb24ocGlwZV9jb25maWcp
Owo+ICsJCWlmIChicF9nYW1tYSkKPiArCQkJUElQRV9DT05GX0NIRUNLX0NPTE9SX0xVVChiYXNl
LmdhbW1hX2x1dCwgYnBfZ2FtbWEpOwoKU29tZXRpbWVzIHRoZSBzdyBnYW1tYSBnZXRzIHByb2dy
YW1tZWQgaW4gdGhlIGh3IGRlZ2FtbWEsIHNvIHdlIGRvIG5lZWQKZGVnYW1tYSByZWFkb3V0LCBh
bmQgd2UnbGwgbmVlZCB0byBzb21laG93IGZpZ3VyZSBvdXQgd2hpY2ggaHcgdGhpbmcKaXMgd2hp
Y2ggc3cgdGhpbmcuCgpJJ20gdGhpbmtpbmcgdGhlIGZvbGxvd2luZyBzb3J0IG9mIGxvZ2ljIHNo
b3VsZCB3b3JrIHNpbmNlIHNvCmZhciBpdCBzaG91bGQgYmUganVzdCB0aGUgdGhlIHN3LmdhbW1h
IHRoYXQgY2FuIGVuZCB1cCBpbiAKaHcuZGVnYW1tYToKCmlmIChzdy5nYW1tYSAmJiAhaHcuZ2Ft
bWEpIHsKCUNIRUNLKHN3LmdhbW1hLCBody5kZWdhbW1hKTsKCUNIRUNLKHN3LmRlZ2FtbWEsIGh3
LmdhbW1hKTsKfSBlbHNlIHsKCUNIRUNLKHN3LmdhbW1hLCBody5nYW1tYSk7CglDSEVDSyhzdy5k
ZWdhbW1hLCBody5kZWdhbW1hKTsKfQoKPiAgCX0KPiAgCj4gIAlQSVBFX0NPTkZfQ0hFQ0tfQk9P
TChkb3VibGVfd2lkZSk7Cj4gQEAgLTEyMjU1LDYgKzEyMjc4LDcgQEAgc3RhdGljIGJvb2wgZmFz
dGJvb3RfZW5hYmxlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICN1bmRl
ZiBQSVBFX0NPTkZfQ0hFQ0tfRkxBR1MKPiAgI3VuZGVmIFBJUEVfQ09ORl9DSEVDS19DTE9DS19G
VVpaWQo+ICAjdW5kZWYgUElQRV9DT05GX1FVSVJLCj4gKyN1bmRlZiBQSVBFX0NPTkZfQ0hFQ0tf
Q09MT1JfTFVUCj4gIAo+ICAJcmV0dXJuIHJldDsKPiAgfQo+IC0tIAo+IDEuOS4xCj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZngg
bWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKVmls
bGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
