Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 943185D88E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 02:11:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C4746E0AD;
	Wed,  3 Jul 2019 00:11:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13ECC6E0A6
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 00:11:34 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 17:11:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="157802756"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga008.jf.intel.com with ESMTP; 02 Jul 2019 17:11:31 -0700
Date: Tue, 2 Jul 2019 17:13:37 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190703001337.GA3708@intel.com>
References: <20190702194205.13366-1-maarten.lankhorst@linux.intel.com>
 <20190702194205.13366-5-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702194205.13366-5-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915/dp: Allow big joiner modes in
 intel_dp_mode_valid()
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

T24gVHVlLCBKdWwgMDIsIDIwMTkgYXQgMDk6NDI6MDJQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jIHwgMTAgKysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMKPiBpbmRleCBkNWM1NmVhMDc5YTQuLmI0MWZmODhkMzI1OCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBAQCAtNTA2LDYgKzUwNiw3IEBA
IGludGVsX2RwX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiAg
CWludCBtYXhfZG90Y2xrOwo+ICAJdTE2IGRzY19tYXhfb3V0cHV0X2JwcCA9IDA7Cj4gIAl1OCBk
c2Nfc2xpY2VfY291bnQgPSAwOwo+ICsJYm9vbCBkc2M7Cj4gIAo+ICAJaWYgKG1vZGUtPmZsYWdz
ICYgRFJNX01PREVfRkxBR19EQkxTQ0FOKQo+ICAJCXJldHVybiBNT0RFX05PX0RCTEVTQ0FOOwo+
IEBAIC01NTMsOCArNTU0LDEzIEBAIGludGVsX2RwX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25u
ZWN0b3IgKmNvbm5lY3RvciwKPiAgCQl9Cj4gIAl9Cj4gIAo+IC0JaWYgKChtb2RlX3JhdGUgPiBt
YXhfcmF0ZSAmJiAhKGRzY19tYXhfb3V0cHV0X2JwcCAmJiBkc2Nfc2xpY2VfY291bnQpKSB8fAo+
IC0JICAgIHRhcmdldF9jbG9jayA+IG1heF9kb3RjbGspCj4gKwlkc2MgPSBkc2NfbWF4X291dHB1
dF9icHAgJiYgZHNjX3NsaWNlX2NvdW50Owo+ICsKPiArCS8qIEdlbjExIGhhcyBiaWcgam9pbmVy
IGZvciBoYW5kbGluZyB0aGlzICovCj4gKwlpZiAoZHNjICYmIGRzY19zbGljZV9jb3VudCA+PSAy
ICYmIElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCj4gKwkJbWF4X2RvdGNsayAqPSAyOwoKVGhp
cyBzaG91bGQgYmUgZHNjX3NsaWNlX0NvdW50ID49NCBzaW5jZSBiaWcgam9pbmVyIGNhbm5vdCBi
ZSBlbmFibGVkIGlmCnNtYWxsIGpvaW5lciBpcyBub3QgZW5hYmxlZCBhbmQgc21hbGwgam9pbmVy
IGNhbm5vdCBiZSBlbmFibGVkIGZvciBzbGljZSBjb3VudCA8IDIKCk1hbmFzaQoKPiArCj4gKwlp
ZiAoKG1vZGVfcmF0ZSA+IG1heF9yYXRlICYmICFkc2MpIHx8IHRhcmdldF9jbG9jayA+IG1heF9k
b3RjbGspCj4gIAkJcmV0dXJuIE1PREVfQ0xPQ0tfSElHSDsKPiAgCj4gIAlpZiAobW9kZS0+Y2xv
Y2sgPCAxMDAwMCkKPiAtLSAKPiAyLjIwLjEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
