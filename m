Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B9CAEA8A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 14:37:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13CF66E8C8;
	Tue, 10 Sep 2019 12:37:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAA5D6E8C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 12:37:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 05:37:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="196536191"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 10 Sep 2019 05:37:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2019 15:37:11 +0300
Date: Tue, 10 Sep 2019 15:37:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20190910123711.GJ7482@intel.com>
References: <20190907002143.22591-1-matthew.d.roper@intel.com>
 <20190907002143.22591-5-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907002143.22591-5-matthew.d.roper@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915: Kill cnl_sanitize_cdclk()
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

T24gRnJpLCBTZXAgMDYsIDIwMTkgYXQgMDU6MjE6MzlQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBUaGUgQ05MIHZhcmlhbnQgb2YgdGhpcyBmdW5jdGlvbiBpcyBpZGVudGljYWwgdG8gdGhl
IEJYVCB2YXJpYW50IGFzaWRlCj4gZnJvbSBub3QgbmVlZGluZyB0byBoYW5kbGUgU1NBIHByZWNo
YXJnZS4KPiAKPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwu
Y29tPgoKUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nk
Y2xrLmMgfCA0NiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDQ0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmMKPiBpbmRleCA2YjViMTMyOGEzZmEuLmY4YzJhNzA2OTkwYiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiBAQCAt
MTY0NSw3ICsxNjQ1LDcgQEAgc3RhdGljIHZvaWQgYnh0X3Nhbml0aXplX2NkY2xrKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCSAqIERpc2FibGUgU1NBIFByZWNoYXJnZSB3
aGVuIENEIGNsb2NrIGZyZXF1ZW5jeSA8IDUwMCBNSHosCj4gIAkgKiBlbmFibGUgb3RoZXJ3aXNl
Lgo+ICAJICovCj4gLQlpZiAoZGV2X3ByaXYtPmNkY2xrLmh3LmNkY2xrID49IDUwMDAwMCkKPiAr
CWlmIChJU19HRU45X0xQKGRldl9wcml2KSAmJiBkZXZfcHJpdi0+Y2RjbGsuaHcuY2RjbGsgPj0g
NTAwMDAwKQo+ICAJCWV4cGVjdGVkIHw9IEJYVF9DRENMS19TU0FfUFJFQ0hBUkdFX0VOQUJMRTsK
PiAgCj4gIAlpZiAoY2RjdGwgPT0gZXhwZWN0ZWQpCj4gQEAgLTE2OTcsNDggKzE2OTcsNiBAQCBz
dGF0aWMgdm9pZCBieHRfdW5pbml0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKPiAgCWJ4dF9zZXRfY2RjbGsoZGV2X3ByaXYsICZjZGNsa19zdGF0ZSwgSU5WQUxJRF9Q
SVBFKTsKPiAgfQo+ICAKPiAtc3RhdGljIHZvaWQgY25sX3Nhbml0aXplX2NkY2xrKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAtewo+IC0JdTMyIGNkY3RsLCBleHBlY3RlZDsK
PiAtCj4gLQlpbnRlbF91cGRhdGVfY2RjbGsoZGV2X3ByaXYpOwo+IC0JaW50ZWxfZHVtcF9jZGNs
a19zdGF0ZSgmZGV2X3ByaXYtPmNkY2xrLmh3LCAiQ3VycmVudCBDRENMSyIpOwo+IC0KPiAtCWlm
IChkZXZfcHJpdi0+Y2RjbGsuaHcudmNvID09IDAgfHwKPiAtCSAgICBkZXZfcHJpdi0+Y2RjbGsu
aHcuY2RjbGsgPT0gZGV2X3ByaXYtPmNkY2xrLmh3LmJ5cGFzcykKPiAtCQlnb3RvIHNhbml0aXpl
Owo+IC0KPiAtCS8qIERQTEwgb2theTsgdmVyaWZ5IHRoZSBjZGNsb2NrCj4gLQkgKgo+IC0JICog
U29tZSBCSU9TIHZlcnNpb25zIGxlYXZlIGFuIGluY29ycmVjdCBkZWNpbWFsIGZyZXF1ZW5jeSB2
YWx1ZSBhbmQKPiAtCSAqIHNldCByZXNlcnZlZCBNQlogYml0cyBpbiBDRENMS19DVEwgYXQgbGVh
c3QgZHVyaW5nIGV4aXRpbmcgZnJvbSBTNCwKPiAtCSAqIHNvIHNhbml0aXplIHRoaXMgcmVnaXN0
ZXIuCj4gLQkgKi8KPiAtCWNkY3RsID0gSTkxNV9SRUFEKENEQ0xLX0NUTCk7Cj4gLQkvKgo+IC0J
ICogTGV0J3MgaWdub3JlIHRoZSBwaXBlIGZpZWxkLCBzaW5jZSBCSU9TIGNvdWxkIGhhdmUgY29u
ZmlndXJlZCB0aGUKPiAtCSAqIGRpdmlkZXJzIGJvdGggc3luY2hpbmcgdG8gYW4gYWN0aXZlIHBp
cGUsIG9yIGFzeW5jaHJvbm91c2x5Cj4gLQkgKiAoUElQRV9OT05FKS4KPiAtCSAqLwo+IC0JY2Rj
dGwgJj0gfkJYVF9DRENMS19DRDJYX1BJUEVfTk9ORTsKPiAtCj4gLQlleHBlY3RlZCA9IChjZGN0
bCAmIEJYVF9DRENMS19DRDJYX0RJVl9TRUxfTUFTSykgfAo+IC0JCSAgIHNrbF9jZGNsa19kZWNp
bWFsKGRldl9wcml2LT5jZGNsay5ody5jZGNsayk7Cj4gLQo+IC0JaWYgKGNkY3RsID09IGV4cGVj
dGVkKQo+IC0JCS8qIEFsbCB3ZWxsOyBub3RoaW5nIHRvIHNhbml0aXplICovCj4gLQkJcmV0dXJu
Owo+IC0KPiAtc2FuaXRpemU6Cj4gLQlEUk1fREVCVUdfS01TKCJTYW5pdGl6aW5nIGNkY2xrIHBy
b2dyYW1tZWQgYnkgcHJlLW9zXG4iKTsKPiAtCj4gLQkvKiBmb3JjZSBjZGNsayBwcm9ncmFtbWlu
ZyAqLwo+IC0JZGV2X3ByaXYtPmNkY2xrLmh3LmNkY2xrID0gMDsKPiAtCj4gLQkvKiBmb3JjZSBm
dWxsIFBMTCBkaXNhYmxlICsgZW5hYmxlICovCj4gLQlkZXZfcHJpdi0+Y2RjbGsuaHcudmNvID0g
LTE7Cj4gLX0KPiAtCj4gIHN0YXRpYyB2b2lkIGljbF9pbml0X2NkY2xrKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKPiAgewo+ICAJc3RydWN0IGludGVsX2NkY2xrX3N0YXRlIHNh
bml0aXplZF9zdGF0ZTsKPiBAQCAtMTgwMCw3ICsxNzU4LDcgQEAgc3RhdGljIHZvaWQgY25sX2lu
aXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICB7Cj4gIAlzdHJ1
Y3QgaW50ZWxfY2RjbGtfc3RhdGUgY2RjbGtfc3RhdGU7Cj4gIAo+IC0JY25sX3Nhbml0aXplX2Nk
Y2xrKGRldl9wcml2KTsKPiArCWJ4dF9zYW5pdGl6ZV9jZGNsayhkZXZfcHJpdik7Cj4gIAo+ICAJ
aWYgKGRldl9wcml2LT5jZGNsay5ody5jZGNsayAhPSAwICYmCj4gIAkgICAgZGV2X3ByaXYtPmNk
Y2xrLmh3LnZjbyAhPSAwKQo+IC0tIAo+IDIuMjAuMQoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRl
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
