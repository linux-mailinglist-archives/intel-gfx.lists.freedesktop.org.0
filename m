Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 075BAEA19F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 17:19:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEA586EAA2;
	Wed, 30 Oct 2019 16:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9F7E6EAA2
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 16:19:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 09:19:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,247,1569308400"; d="scan'208";a="190327519"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 30 Oct 2019 09:19:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Oct 2019 18:19:16 +0200
Date: Wed, 30 Oct 2019 18:19:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191030161916.GM1208@intel.com>
References: <20191030142657.22405-1-maarten.lankhorst@linux.intel.com>
 <20191030142657.22405-8-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030142657.22405-8-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [CI 08/12] drm/i915: Perform manual conversions for
 plane uapi/hw split, v2.
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

T24gV2VkLCBPY3QgMzAsIDIwMTkgYXQgMDM6MjY6NTNQTSArMDEwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gZ2V0X2NydGNfZnJvbV9zdGF0ZXMoKSBpcyBjYWxsZWQgYmVmb3JlIHBsYW5l
X3N0YXRlIGlzIGNvcGllZCB0byB1YXBpLAo+IHNvIHVzZSB0aGUgdWFwaSBzdGF0ZSB0aGVyZS4K
PiAKPiBpbnRlbF9sZWdhY3lfY3Vyc29yX3VwZGF0ZSgpIGNvdWxkIHByb2JhYmx5IGdldCBhd2F5
IHdpdGggbG9va2luZyBhdAo+IHRoZSBodyBzdGF0ZSwgYnV0IGZvciBjbGFyaXR5IGFsd2F5cyBs
b29rIGF0IHRoZSB1YXBpIHN0YXRlLgo+IAo+IENoYW5nZXMgc2luY2UgdjE6Cj4gLSBDb252ZXJ0
IGVudGlyZXR5IG9mIGludGVsX2xlZ2FjeV9jdXJzb3JfdXBkYXRlIChWaWxsZSkuCj4gCj4gU2ln
bmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4Lmlu
dGVsLmNvbT4KPiAtLS0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19w
bGFuZS5jIHwgIDggKystLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyAgfCA0NSArKysrKysrKysrLS0tLS0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjcg
aW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCj4gaW5kZXggMzkzZmI5N2EzZGNh
Li40MTZjZmE0MzlmMzMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPiBAQCAtMjI1LDExICsyMjUsMTEgQEAgc3RhdGljIHN0
cnVjdCBpbnRlbF9jcnRjICoKPiAgZ2V0X2NydGNfZnJvbV9zdGF0ZXMoY29uc3Qgc3RydWN0IGlu
dGVsX3BsYW5lX3N0YXRlICpvbGRfcGxhbmVfc3RhdGUsCj4gIAkJICAgICBjb25zdCBzdHJ1Y3Qg
aW50ZWxfcGxhbmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0ZSkKPiAgewo+IC0JaWYgKG5ld19wbGFu
ZV9zdGF0ZS0+YmFzZS5jcnRjKQo+IC0JCXJldHVybiB0b19pbnRlbF9jcnRjKG5ld19wbGFuZV9z
dGF0ZS0+YmFzZS5jcnRjKTsKPiArCWlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkuY3J0YykKPiAr
CQlyZXR1cm4gdG9faW50ZWxfY3J0YyhuZXdfcGxhbmVfc3RhdGUtPnVhcGkuY3J0Yyk7Cj4gIAo+
IC0JaWYgKG9sZF9wbGFuZV9zdGF0ZS0+YmFzZS5jcnRjKQo+IC0JCXJldHVybiB0b19pbnRlbF9j
cnRjKG9sZF9wbGFuZV9zdGF0ZS0+YmFzZS5jcnRjKTsKPiArCWlmIChvbGRfcGxhbmVfc3RhdGUt
PnVhcGkuY3J0YykKPiArCQlyZXR1cm4gdG9faW50ZWxfY3J0YyhvbGRfcGxhbmVfc3RhdGUtPnVh
cGkuY3J0Yyk7Cj4gIAo+ICAJcmV0dXJuIE5VTEw7Cj4gIH0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IGUzMGY0NjdlZWM2Ny4uYjBiMmM0
NmU0YzBhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKPiBAQCAtMTUzNTcsMTIgKzE1MzU3LDEyIEBAIGludGVsX2xlZ2FjeV9jdXJzb3JfdXBk
YXRlKHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwKPiAgCSAqIHRha2UgdGhlIHNsb3dwYXRoLiBP
bmx5IGNoYW5naW5nIGZiIG9yIHBvc2l0aW9uIHNob3VsZCBiZQo+ICAJICogaW4gdGhlIGZhc3Rw
YXRoLgo+ICAJICovCj4gLQlpZiAob2xkX3BsYW5lX3N0YXRlLT5iYXNlLmNydGMgIT0gJmNydGMt
PmJhc2UgfHwKPiAtCSAgICBvbGRfcGxhbmVfc3RhdGUtPmJhc2Uuc3JjX3cgIT0gc3JjX3cgfHwK
PiAtCSAgICBvbGRfcGxhbmVfc3RhdGUtPmJhc2Uuc3JjX2ggIT0gc3JjX2ggfHwKPiAtCSAgICBv
bGRfcGxhbmVfc3RhdGUtPmJhc2UuY3J0Y193ICE9IGNydGNfdyB8fAo+IC0JICAgIG9sZF9wbGFu
ZV9zdGF0ZS0+YmFzZS5jcnRjX2ggIT0gY3J0Y19oIHx8Cj4gLQkgICAgIW9sZF9wbGFuZV9zdGF0
ZS0+YmFzZS5mYiAhPSAhZmIpCj4gKwlpZiAob2xkX3BsYW5lX3N0YXRlLT51YXBpLmNydGMgIT0g
JmNydGMtPmJhc2UgfHwKPiArCSAgICBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuc3JjX3cgIT0gc3Jj
X3cgfHwKPiArCSAgICBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuc3JjX2ggIT0gc3JjX2ggfHwKPiAr
CSAgICBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuY3J0Y193ICE9IGNydGNfdyB8fAo+ICsJICAgIG9s
ZF9wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjX2ggIT0gY3J0Y19oIHx8Cj4gKwkgICAgIW9sZF9wbGFu
ZV9zdGF0ZS0+dWFwaS5mYiAhPSAhZmIpCj4gIAkJZ290byBzbG93Owo+ICAKPiAgCW5ld19wbGFu
ZV9zdGF0ZSA9IHRvX2ludGVsX3BsYW5lX3N0YXRlKGludGVsX3BsYW5lX2R1cGxpY2F0ZV9zdGF0
ZSgmcGxhbmUtPmJhc2UpKTsKPiBAQCAtMTUzNzUsMTYgKzE1Mzc1LDE2IEBAIGludGVsX2xlZ2Fj
eV9jdXJzb3JfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwKPiAgCQlnb3RvIG91dF9m
cmVlOwo+ICAJfQo+ICAKPiAtCWRybV9hdG9taWNfc2V0X2ZiX2Zvcl9wbGFuZSgmbmV3X3BsYW5l
X3N0YXRlLT5iYXNlLCBmYik7Cj4gKwlkcm1fYXRvbWljX3NldF9mYl9mb3JfcGxhbmUoJm5ld19w
bGFuZV9zdGF0ZS0+dWFwaSwgZmIpOwo+ICAKPiAtCW5ld19wbGFuZV9zdGF0ZS0+YmFzZS5zcmNf
eCA9IHNyY194Owo+IC0JbmV3X3BsYW5lX3N0YXRlLT5iYXNlLnNyY195ID0gc3JjX3k7Cj4gLQlu
ZXdfcGxhbmVfc3RhdGUtPmJhc2Uuc3JjX3cgPSBzcmNfdzsKPiAtCW5ld19wbGFuZV9zdGF0ZS0+
YmFzZS5zcmNfaCA9IHNyY19oOwo+IC0JbmV3X3BsYW5lX3N0YXRlLT5iYXNlLmNydGNfeCA9IGNy
dGNfeDsKPiAtCW5ld19wbGFuZV9zdGF0ZS0+YmFzZS5jcnRjX3kgPSBjcnRjX3k7Cj4gLQluZXdf
cGxhbmVfc3RhdGUtPmJhc2UuY3J0Y193ID0gY3J0Y193Owo+IC0JbmV3X3BsYW5lX3N0YXRlLT5i
YXNlLmNydGNfaCA9IGNydGNfaDsKPiArCW5ld19wbGFuZV9zdGF0ZS0+dWFwaS5zcmNfeCA9IHNy
Y194Owo+ICsJbmV3X3BsYW5lX3N0YXRlLT51YXBpLnNyY195ID0gc3JjX3k7Cj4gKwluZXdfcGxh
bmVfc3RhdGUtPnVhcGkuc3JjX3cgPSBzcmNfdzsKPiArCW5ld19wbGFuZV9zdGF0ZS0+dWFwaS5z
cmNfaCA9IHNyY19oOwo+ICsJbmV3X3BsYW5lX3N0YXRlLT51YXBpLmNydGNfeCA9IGNydGNfeDsK
PiArCW5ld19wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjX3kgPSBjcnRjX3k7Cj4gKwluZXdfcGxhbmVf
c3RhdGUtPnVhcGkuY3J0Y193ID0gY3J0Y193Owo+ICsJbmV3X3BsYW5lX3N0YXRlLT51YXBpLmNy
dGNfaCA9IGNydGNfaDsKPiAgCj4gIAlyZXQgPSBpbnRlbF9wbGFuZV9hdG9taWNfY2hlY2tfd2l0
aF9zdGF0ZShjcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwKPiAgCQkJCQkJICBvbGRfcGxhbmVf
c3RhdGUsIG5ld19wbGFuZV9zdGF0ZSk7Cj4gQEAgLTE1Mzk1LDEzICsxNTM5NSwxNCBAQCBpbnRl
bF9sZWdhY3lfY3Vyc29yX3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCj4gIAlpZiAo
cmV0KQo+ICAJCWdvdG8gb3V0X2ZyZWU7Cj4gIAo+IC0JaW50ZWxfZnJvbnRidWZmZXJfZmx1c2go
dG9faW50ZWxfZnJvbnRidWZmZXIobmV3X3BsYW5lX3N0YXRlLT5iYXNlLmZiKSwgT1JJR0lOX0ZM
SVApOwo+IC0JaW50ZWxfZnJvbnRidWZmZXJfdHJhY2sodG9faW50ZWxfZnJvbnRidWZmZXIob2xk
X3BsYW5lX3N0YXRlLT5iYXNlLmZiKSwKPiAtCQkJCXRvX2ludGVsX2Zyb250YnVmZmVyKG5ld19w
bGFuZV9zdGF0ZS0+YmFzZS5mYiksCj4gKwlpbnRlbF9mcm9udGJ1ZmZlcl9mbHVzaCh0b19pbnRl
bF9mcm9udGJ1ZmZlcihuZXdfcGxhbmVfc3RhdGUtPmh3LmZiKSwKPiArCQkJCU9SSUdJTl9GTElQ
KTsKPiArCWludGVsX2Zyb250YnVmZmVyX3RyYWNrKHRvX2ludGVsX2Zyb250YnVmZmVyKG9sZF9w
bGFuZV9zdGF0ZS0+aHcuZmIpLAo+ICsJCQkJdG9faW50ZWxfZnJvbnRidWZmZXIobmV3X3BsYW5l
X3N0YXRlLT5ody5mYiksCj4gIAkJCQlwbGFuZS0+ZnJvbnRidWZmZXJfYml0KTsKPiAgCj4gIAkv
KiBTd2FwIHBsYW5lIHN0YXRlICovCj4gLQlwbGFuZS0+YmFzZS5zdGF0ZSA9ICZuZXdfcGxhbmVf
c3RhdGUtPmJhc2U7Cj4gKwlwbGFuZS0+YmFzZS5zdGF0ZSA9ICZuZXdfcGxhbmVfc3RhdGUtPnVh
cGk7Cj4gIAo+ICAJLyoKPiAgCSAqIFdlIGNhbm5vdCBzd2FwIGNydGNfc3RhdGUgYXMgaXQgbWF5
IGJlIGluIHVzZSBieSBhbiBhdG9taWMgY29tbWl0IG9yCj4gQEAgLTE1NDE1LDcgKzE1NDE2LDcg
QEAgaW50ZWxfbGVnYWN5X2N1cnNvcl91cGRhdGUoc3RydWN0IGRybV9wbGFuZSAqX3BsYW5lLAo+
ICAJICovCj4gIAljcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzID0gbmV3X2NydGNfc3RhdGUtPmFj
dGl2ZV9wbGFuZXM7Cj4gIAo+IC0JaWYgKG5ld19wbGFuZV9zdGF0ZS0+YmFzZS52aXNpYmxlKQo+
ICsJaWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlKQoKU2hvdWxkIGJlIGh3IGhlcmU/
CgpPdGhlcndpc2UgbGd0bQpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KCj4gIAkJaW50ZWxfdXBkYXRlX3BsYW5lKHBsYW5lLCBjcnRj
X3N0YXRlLCBuZXdfcGxhbmVfc3RhdGUpOwo+ICAJZWxzZQo+ICAJCWludGVsX2Rpc2FibGVfcGxh
bmUocGxhbmUsIGNydGNfc3RhdGUpOwo+IEBAIC0xNTQyNiw5ICsxNTQyNyw5IEBAIGludGVsX2xl
Z2FjeV9jdXJzb3JfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwKPiAgCWlmIChuZXdf
Y3J0Y19zdGF0ZSkKPiAgCQlpbnRlbF9jcnRjX2Rlc3Ryb3lfc3RhdGUoJmNydGMtPmJhc2UsICZu
ZXdfY3J0Y19zdGF0ZS0+dWFwaSk7Cj4gIAlpZiAocmV0KQo+IC0JCWludGVsX3BsYW5lX2Rlc3Ry
b3lfc3RhdGUoJnBsYW5lLT5iYXNlLCAmbmV3X3BsYW5lX3N0YXRlLT5iYXNlKTsKPiArCQlpbnRl
bF9wbGFuZV9kZXN0cm95X3N0YXRlKCZwbGFuZS0+YmFzZSwgJm5ld19wbGFuZV9zdGF0ZS0+dWFw
aSk7Cj4gIAllbHNlCj4gLQkJaW50ZWxfcGxhbmVfZGVzdHJveV9zdGF0ZSgmcGxhbmUtPmJhc2Us
ICZvbGRfcGxhbmVfc3RhdGUtPmJhc2UpOwo+ICsJCWludGVsX3BsYW5lX2Rlc3Ryb3lfc3RhdGUo
JnBsYW5lLT5iYXNlLCAmb2xkX3BsYW5lX3N0YXRlLT51YXBpKTsKPiAgCXJldHVybiByZXQ7Cj4g
IAo+ICBzbG93Ogo+IC0tIAo+IDIuMjMuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
