Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1014A130E1
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 17:06:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898B06E7E5;
	Fri,  3 May 2019 15:06:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41BA06E7E5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 15:06:45 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 08:06:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,426,1549958400"; d="scan'208";a="140989886"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 03 May 2019 08:06:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2019 18:06:41 +0300
Date: Fri, 3 May 2019 18:06:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Shashank Sharma <shashank.sharma@intel.com>
Message-ID: <20190503150641.GR24299@intel.com>
References: <20190430152108.31814-1-shashank.sharma@intel.com>
 <20190430152108.31814-4-shashank.sharma@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430152108.31814-4-shashank.sharma@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915: Rename ivb_load_lut_10_max
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

T24gVHVlLCBBcHIgMzAsIDIwMTkgYXQgMDg6NTE6MDdQTSArMDUzMCwgU2hhc2hhbmsgU2hhcm1h
IHdyb3RlOgo+IFRoaXMgcGF0Y2ggcmVuYW1lcyBmdW5jdGlvbiBpdmJfbG9hZF9sdXRfMTBfbWF4
IHRvCj4gaXZiX2xvYWRfbHV0X2V4dF9tYXguCj4gCj4gQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hh
bmthckBpbnRlbC5jb20+Cj4gU3VnZ2VzdGVkLWJ5OiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTaGFzaGFuayBTaGFybWEgPHNo
YXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2NvbG9yLmMgfCAxNCArKysrKysrLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Y29sb3IuYwo+IGluZGV4IDk2MmRiMTIzNjk3MC4uNmMzNDFiZWE1MTRjIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jb2xvci5jCj4gQEAgLTYwNyw3ICs2MDcsNyBAQCBzdGF0aWMgdm9pZCBi
ZHdfbG9hZF9sdXRfMTAoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4gIAlJOTE1X1dSSVRFKFBS
RUNfUEFMX0lOREVYKHBpcGUpLCAwKTsKPiAgfQo+ICAKPiAtc3RhdGljIHZvaWQgaXZiX2xvYWRf
bHV0XzEwX21heChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiArc3RhdGljIHZvaWQgaXZiX2xv
YWRfbHV0X2V4dF9tYXgoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4gIHsKPiAgCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+ICAJ
ZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwo+IEBAIC02NDAsNyArNjQwLDcgQEAgc3RhdGlj
IHZvaWQgaXZiX2xvYWRfbHV0cyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKPiAgCX0gZWxzZSBpZiAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSA9PSBHQU1NQV9NT0RF
X01PREVfU1BMSVQpIHsKPiAgCQlpdmJfbG9hZF9sdXRfMTAoY3J0YywgZGVnYW1tYV9sdXQsIFBB
TF9QUkVDX1NQTElUX01PREUgfAo+ICAJCQkJUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOwo+IC0J
CWl2Yl9sb2FkX2x1dF8xMF9tYXgoY3J0Yyk7Cj4gKwkJaXZiX2xvYWRfbHV0X2V4dF9tYXgoY3J0
Yyk7Cj4gIAkJaXZiX2xvYWRfbHV0XzEwKGNydGMsIGdhbW1hX2x1dCwgUEFMX1BSRUNfU1BMSVRf
TU9ERSB8Cj4gIAkJCQlQQUxfUFJFQ19JTkRFWF9WQUxVRSg1MTIpKTsKPiAgCX0gZWxzZSB7Cj4g
QEAgLTY0OCw3ICs2NDgsNyBAQCBzdGF0aWMgdm9pZCBpdmJfbG9hZF9sdXRzKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAKPiAgCQlpdmJfbG9hZF9sdXRfMTAo
Y3J0YywgYmxvYiwKPiAgCQkJCVBBTF9QUkVDX0lOREVYX1ZBTFVFKDApKTsKPiAtCQlpdmJfbG9h
ZF9sdXRfMTBfbWF4KGNydGMpOwo+ICsJCWl2Yl9sb2FkX2x1dF9leHRfbWF4KGNydGMpOwo+ICAJ
fQo+ICB9Cj4gIAo+IEBAIC02NjMsNyArNjYzLDcgQEAgc3RhdGljIHZvaWQgYmR3X2xvYWRfbHV0
cyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgCX0gZWxzZSBp
ZiAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSA9PSBHQU1NQV9NT0RFX01PREVfU1BMSVQpIHsKPiAg
CQliZHdfbG9hZF9sdXRfMTAoY3J0YywgZGVnYW1tYV9sdXQsIFBBTF9QUkVDX1NQTElUX01PREUg
fAo+ICAJCQkJUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOwo+IC0JCWl2Yl9sb2FkX2x1dF8xMF9t
YXgoY3J0Yyk7Cj4gKwkJaXZiX2xvYWRfbHV0X2V4dF9tYXgoY3J0Yyk7Cj4gIAkJYmR3X2xvYWRf
bHV0XzEwKGNydGMsIGdhbW1hX2x1dCwgUEFMX1BSRUNfU1BMSVRfTU9ERSB8Cj4gIAkJCQlQQUxf
UFJFQ19JTkRFWF9WQUxVRSg1MTIpKTsKPiAgCX0gZWxzZSB7Cj4gQEAgLTY3MSw3ICs2NzEsNyBA
QCBzdGF0aWMgdm9pZCBiZHdfbG9hZF9sdXRzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQo+ICAKPiAgCQliZHdfbG9hZF9sdXRfMTAoY3J0YywgYmxvYiwKPiAgCQkJ
CVBBTF9QUkVDX0lOREVYX1ZBTFVFKDApKTsKPiAtCQlpdmJfbG9hZF9sdXRfMTBfbWF4KGNydGMp
Owo+ICsJCWl2Yl9sb2FkX2x1dF9leHRfbWF4KGNydGMpOwo+ICAJfQo+ICB9Cj4gIAo+IEBAIC03
NjMsNyArNzYzLDcgQEAgc3RhdGljIHZvaWQgZ2xrX2xvYWRfbHV0cyhjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgCQlpOXh4X2xvYWRfbHV0cyhjcnRjX3N0YXRl
KTsKPiAgCX0gZWxzZSB7Cj4gIAkJYmR3X2xvYWRfbHV0XzEwKGNydGMsIGdhbW1hX2x1dCwgUEFM
X1BSRUNfSU5ERVhfVkFMVUUoMCkpOwo+IC0JCWl2Yl9sb2FkX2x1dF8xMF9tYXgoY3J0Yyk7Cj4g
KwkJaXZiX2xvYWRfbHV0X2V4dF9tYXgoY3J0Yyk7Cj4gIAl9Cj4gIH0KPiAgCj4gQEAgLTc4MCw3
ICs3ODAsNyBAQCBzdGF0aWMgdm9pZCBpY2xfbG9hZF9sdXRzKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAJCWk5eHhfbG9hZF9sdXRzKGNydGNfc3RhdGUpOwo+
ICAJfSBlbHNlIHsKPiAgCQliZHdfbG9hZF9sdXRfMTAoY3J0YywgZ2FtbWFfbHV0LCBQQUxfUFJF
Q19JTkRFWF9WQUxVRSgwKSk7Cj4gLQkJaXZiX2xvYWRfbHV0XzEwX21heChjcnRjKTsKPiArCQlp
dmJfbG9hZF9sdXRfZXh0X21heChjcnRjKTsKPiAgCX0KPiAgfQo+ICAKPiAtLSAKPiAyLjE3LjEK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
Ci0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
