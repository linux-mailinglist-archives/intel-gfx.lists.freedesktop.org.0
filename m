Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C3ABF315
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 14:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B4F76ECF0;
	Thu, 26 Sep 2019 12:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3857F6ECF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 12:34:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 05:34:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,551,1559545200"; d="scan'208";a="183609186"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 26 Sep 2019 05:34:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Sep 2019 15:34:35 +0300
Date: Thu, 26 Sep 2019 15:34:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: James Ausmus <james.ausmus@intel.com>
Message-ID: <20190926123435.GJ1208@intel.com>
References: <20190925203352.9827-1-james.ausmus@intel.com>
 <20190925203352.9827-4-james.ausmus@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925203352.9827-4-james.ausmus@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/tgl: Remove single pipe
 restriction from SAGV
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMjUsIDIwMTkgYXQgMDE6MzM6NTJQTSAtMDcwMCwgSmFtZXMgQXVzbXVzIHdy
b3RlOgo+IEZvciBHZW4xMiwgQlNwZWMgbm8gbG9uZ2VyIHRlbGxzIHVzIHRvIGRpc2FibGUgU0FH
ViB3aGVuID4gMSBwaXBlIGlzCj4gYWN0aXZlLiBVcGRhdGUgaW50ZWxfY2FuX2VuYWJsZV9zYWd2
IHRvIGFsbG93IHRoaXMsIGFuZCBsb29wIHRocm91Z2ggYWxsCj4gYWN0aXZlIHBsYW5lcyBvbiBh
bGwgYWN0aXZlIGNydGNzIHRvIGNoZWNrIGFnYWluc3QgdGhlIGludGVybGFjZWQgYW5kCj4gbGF0
ZW5jeSByZXN0cmljdGlvbnMuCj4gCj4gQlNwZWM6IDQ5MzI1Cj4gCj4gQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFN0YW5pc2xhdiBMaXNv
dnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgo+IENjOiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBBdXNt
dXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMgfCA2MyArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYwo+IGluZGV4IGNhMmJlYzA5ZWRiNS4uY2I1MGM2OTdhNmI4IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4gQEAgLTM3NzUsNyArMzc3NSw2IEBAIGJvb2wgaW50
ZWxfY2FuX2VuYWJsZV9zYWd2KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ICAJ
c3RydWN0IGludGVsX2NydGMgKmNydGM7Cj4gIAlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOwo+
ICAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7Cj4gLQllbnVtIHBpcGUgcGlw
ZTsKPiAgCWludCBsZXZlbCwgbGF0ZW5jeTsKPiAgCWludCBzYWd2X2Jsb2NrX3RpbWVfdXM7Cj4g
IAo+IEBAIC0zNzkxLDQ3ICszNzkwLDQ5IEBAIGJvb2wgaW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ICAJCXJldHVybiB0cnVlOwo+ICAKPiAg
CS8qCj4gLQkgKiBTS0wrIHdvcmthcm91bmQ6IGJzcGVjIHJlY29tbWVuZHMgd2UgZGlzYWJsZSBT
QUdWIHdoZW4gd2UgaGF2ZQo+ICsJICogU0tMLUlDTCB3b3JrYXJvdW5kOiBic3BlYyByZWNvbW1l
bmRzIHdlIGRpc2FibGUgU0FHViB3aGVuIHdlIGhhdmUKPiAgCSAqIG1vcmUgdGhlbiBvbmUgcGlw
ZSBlbmFibGVkCj4gIAkgKi8KPiAtCWlmIChod2VpZ2h0OChzdGF0ZS0+YWN0aXZlX3BpcGVzKSA+
IDEpCj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDEyICYmIGh3ZWlnaHQ4KHN0YXRlLT5h
Y3RpdmVfcGlwZXMpID4gMSkKPiAgCQlyZXR1cm4gZmFsc2U7Cj4gIAo+IC0JLyogU2luY2Ugd2Un
cmUgbm93IGd1YXJhbnRlZWQgdG8gb25seSBoYXZlIG9uZSBhY3RpdmUgQ1JUQy4uLiAqLwo+IC0J
cGlwZSA9IGZmcyhzdGF0ZS0+YWN0aXZlX3BpcGVzKSAtIDE7Cj4gLQljcnRjID0gaW50ZWxfZ2V0
X2NydGNfZm9yX3BpcGUoZGV2X3ByaXYsIHBpcGUpOwo+IC0JY3J0Y19zdGF0ZSA9IHRvX2ludGVs
X2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7Cj4gKwlmb3JfZWFjaF9pbnRlbF9jcnRjKCZk
ZXZfcHJpdi0+ZHJtLCBjcnRjKSB7Cj4gKwkJY3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNfc3Rh
dGUoY3J0Yy0+YmFzZS5zdGF0ZSk7Cj4gKwkJaWYgKCFjcnRjX3N0YXRlLT5iYXNlLmFjdGl2ZSkK
PiArCQkJY29udGludWU7Cj4gIAo+IC0JaWYgKGNydGMtPmJhc2Uuc3RhdGUtPmFkanVzdGVkX21v
ZGUuZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0lOVEVSTEFDRSkKPiAtCQlyZXR1cm4gZmFsc2U7Cj4g
KwkJaWYgKGNydGMtPmJhc2Uuc3RhdGUtPmFkanVzdGVkX21vZGUuZmxhZ3MgJgo+ICsJCSAgICBE
Uk1fTU9ERV9GTEFHX0lOVEVSTEFDRSkKPiArCQkJcmV0dXJuIGZhbHNlOwo+ICAKPiAtCWZvcl9l
YWNoX2ludGVsX3BsYW5lX29uX2NydGMoZGV2LCBjcnRjLCBwbGFuZSkgewo+IC0JCXN0cnVjdCBz
a2xfcGxhbmVfd20gKndtID0KPiAtCQkJJmNydGNfc3RhdGUtPndtLnNrbC5vcHRpbWFsLnBsYW5l
c1twbGFuZS0+aWRdOwo+ICsJCWZvcl9lYWNoX2ludGVsX3BsYW5lX29uX2NydGMoZGV2LCBjcnRj
LCBwbGFuZSkgewo+ICsJCQlzdHJ1Y3Qgc2tsX3BsYW5lX3dtICp3bSA9Cj4gKwkJCQkmY3J0Y19z
dGF0ZS0+d20uc2tsLm9wdGltYWwucGxhbmVzW3BsYW5lLT5pZF07CgpUaGlzIHdob2xlIGxvb3Ag
aXMgYm90aGVyaW5nIG1lLiBJJ2QgbXVjaCByYXRoZXIgd2UgbW92ZSB0byBhIHNjaGVtZQp3aGVy
ZSBlYWNoIHBsYW5lIGNvbXB1dGVzIGl0J3MgU0FHViBmcmllbmRseW5lc3Mgd2hlbiBjb21wdXRp
bmcgdGhlCndhdGVybWFya3MuIFdlJ2xsIGFueXdheSBuZWVkIHRoYXQgc2luY2Ugd2UgbmVlZCB0
byBjYWNsdWxhdGUgdGhlCndhdGVybWFya3MgZGlmZmVyZW50bHkgZm9yIHRoZSBTQUdWIG9uIHZz
LiBvZmYgY2FzZXMuCgo+ICAKPiAtCQkvKiBTa2lwIHRoaXMgcGxhbmUgaWYgaXQncyBub3QgZW5h
YmxlZCAqLwo+IC0JCWlmICghd20tPndtWzBdLnBsYW5lX2VuKQo+IC0JCQljb250aW51ZTsKPiAr
CQkJLyogU2tpcCB0aGlzIHBsYW5lIGlmIGl0J3Mgbm90IGVuYWJsZWQgKi8KPiArCQkJaWYgKCF3
bS0+d21bMF0ucGxhbmVfZW4pCj4gKwkJCQljb250aW51ZTsKPiAgCj4gLQkJLyogRmluZCB0aGUg
aGlnaGVzdCBlbmFibGVkIHdtIGxldmVsIGZvciB0aGlzIHBsYW5lICovCj4gLQkJZm9yIChsZXZl
bCA9IGlsa193bV9tYXhfbGV2ZWwoZGV2X3ByaXYpOwo+IC0JCSAgICAgIXdtLT53bVtsZXZlbF0u
cGxhbmVfZW47IC0tbGV2ZWwpCj4gLQkJICAgICB7IH0KPiArCQkJLyogRmluZCB0aGUgaGlnaGVz
dCBlbmFibGVkIHdtIGxldmVsIGZvciB0aGlzIHBsYW5lICovCj4gKwkJCWZvciAobGV2ZWwgPSBp
bGtfd21fbWF4X2xldmVsKGRldl9wcml2KTsKPiArCQkJICAgICAhd20tPndtW2xldmVsXS5wbGFu
ZV9lbjsgLS1sZXZlbCkKPiArCQkJICAgICB7IH0KPiAgCj4gLQkJbGF0ZW5jeSA9IGRldl9wcml2
LT53bS5za2xfbGF0ZW5jeVtsZXZlbF07Cj4gKwkJCWxhdGVuY3kgPSBkZXZfcHJpdi0+d20uc2ts
X2xhdGVuY3lbbGV2ZWxdOwo+ICAKPiAtCQlpZiAoc2tsX25lZWRzX21lbW9yeV9id193YShkZXZf
cHJpdikgJiYKPiAtCQkgICAgcGxhbmUtPmJhc2Uuc3RhdGUtPmZiLT5tb2RpZmllciA9PQo+IC0J
CSAgICBJOTE1X0ZPUk1BVF9NT0RfWF9USUxFRCkKPiAtCQkJbGF0ZW5jeSArPSAxNTsKPiArCQkJ
aWYgKHNrbF9uZWVkc19tZW1vcnlfYndfd2EoZGV2X3ByaXYpICYmCj4gKwkJCSAgICBwbGFuZS0+
YmFzZS5zdGF0ZS0+ZmItPm1vZGlmaWVyID09Cj4gKwkJCSAgICBJOTE1X0ZPUk1BVF9NT0RfWF9U
SUxFRCkKPiArCQkJCWxhdGVuY3kgKz0gMTU7Cj4gIAo+IC0JCS8qCj4gLQkJICogSWYgYW55IG9m
IHRoZSBwbGFuZXMgb24gdGhpcyBwaXBlIGRvbid0IGVuYWJsZSB3bSBsZXZlbHMgdGhhdAo+IC0J
CSAqIGluY3VyIG1lbW9yeSBsYXRlbmNpZXMgaGlnaGVyIHRoYW4gc2Fndl9ibG9ja190aW1lX3Vz
IHdlCj4gLQkJICogY2FuJ3QgZW5hYmxlIFNBR1YuCj4gLQkJICovCj4gLQkJaWYgKGxhdGVuY3kg
PCBzYWd2X2Jsb2NrX3RpbWVfdXMpCj4gLQkJCXJldHVybiBmYWxzZTsKPiArCQkJLyoKPiArCQkJ
ICogSWYgYW55IG9mIHRoZSBwbGFuZXMgb24gdGhpcyBwaXBlIGRvbid0IGVuYWJsZSB3bQo+ICsJ
CQkgKiBsZXZlbHMgdGhhdCBpbmN1ciBtZW1vcnkgbGF0ZW5jaWVzIGhpZ2hlciB0aGFuCj4gKwkJ
CSAqIHNhZ3ZfYmxvY2tfdGltZV91cyB3ZSBjYW4ndCBlbmFibGUgU0FHVi4KPiArCQkJICovCj4g
KwkJCWlmIChsYXRlbmN5IDwgc2Fndl9ibG9ja190aW1lX3VzKQo+ICsJCQkJcmV0dXJuIGZhbHNl
Owo+ICsJCX0KPiAgCX0KPiAgCj4gIAlyZXR1cm4gdHJ1ZTsKPiAtLSAKPiAyLjIyLjEKCi0tIApW
aWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
