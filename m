Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B45CECE6
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 21:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C0E16E17F;
	Mon,  7 Oct 2019 19:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32BA56E17F
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 19:36:53 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 12:36:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,269,1566889200"; d="scan'208";a="393131168"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by fmsmga005.fm.intel.com with ESMTP; 07 Oct 2019 12:36:52 -0700
Date: Mon, 7 Oct 2019 12:37:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191007193717.GI6810@mdroper-desk1.amr.corp.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
 <20191004113514.17064-5-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004113514.17064-5-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 04/24] drm/i915: Remove cursor use of
 properties for coordinates
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

T24gRnJpLCBPY3QgMDQsIDIwMTkgYXQgMDE6MzQ6NTRQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gV2UgaGF2ZSBhIHNyYyBhbmQgZGVjdCByZWN0YW5nbGUsIHVzZSBpdCBpbnN0
ZWFkIG9mIHJlbHlpbmcgb24KPiB0aGUgY29yZSBkcm0gcHJvcGVydGllcy4KPiAKPiBUaGlzIHJl
bW92ZXMgdGhlIHNwZWNpYWwgY2FzZSBpbiB0aGUgd2F0ZXJtYXJrIGNvZGUgZm9yIGN1cnNvciB3
L2guCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KCkkgdGhpbmsgeW91IHNob3VsZCBtYWtlIGl0IG1vcmUgY2xl
YXIgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIGhlcmUgdGhhdAp5b3UncmUgYWN0dWFsbHkgb3Zlcndy
aXRpbmcgdGhlIGNsaXBwZWQgY29vcmRpbmF0ZXMgaW4gc3JjL2RzdCB3aXRoIHRoZQp1bmNsaXBw
ZWQgY29vcmRpbmF0ZXMgdGhhdCB3ZSBwcm9ncmFtIGludG8gb3VyIGhhcmR3YXJlLiAgSSBtaXNz
ZWQgdGhhdAp0aGUgZmlyc3QgdGltZSByZWFkaW5nIHRocm91Z2ggdGhlIHBhdGNoOyB1c2luZyBj
bGlwcGVkIGNvb3JkaW5hdGVzCndvdWxkIG9idmlvdXNseSBjYXVzZSBsb3RzIG9mIGZhaWx1cmVz
LgoKQWN0dWFsbHksIGV2ZW4gaWYgdGhpcyBpcyBzYWZlIGF0IHRoZSBtb21lbnQsIHdlJ3JlIHZp
b2xhdGluZyB0aGUKZG9jdW1lbnRlZCBleHBlY3RhdGlvbnMgb2YgdGhlIERSTSBjb3JlLiAgSSdk
IHN1Z2dlc3QgYWxzbyBhZGRpbmcgYSBkcm0KY29yZSBwYXRjaCB0aGF0IHVwZGF0ZXMgdGhlIGNv
bW1lbnQgb24gZHJtX3BsYW5lX3N0YXRlIHRvIGluZGljYXRlIHRoYXQKdGhlIGNvbnRlbnRzIG1h
eSBvciBtYXkgbm90IGJlIGNsaXBwZWQgKGRyaXZlci1zcGVjaWZpYykgYW5kIHRoYXQgdGhlCmNv
cmUgc2hvdWxkbid0IGFzc3VtZSBlaXRoZXIgd2F5LgoKCk1hdHQKCj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNTcgKysrKysrKysrKystLS0t
LS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICB8IDU4
ICsrKysrKystLS0tLS0tLS0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygr
KSwgNjIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiBpbmRleCBjM2FjNWE1YzUxODUuLjllMzRiZTQ4Yzc3MCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTEw
NTkxLDE2ICsxMDU5MSwxNiBAQCBzdGF0aWMgdTMyIGludGVsX2N1cnNvcl9iYXNlKGNvbnN0IHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gIAkvKiBJTEsrIGRvIHRoaXMg
YXV0b21hZ2ljYWxseSAqLwo+ICAJaWYgKEhBU19HTUNIKGRldl9wcml2KSAmJgo+ICAJICAgIHBs
YW5lX3N0YXRlLT5iYXNlLnJvdGF0aW9uICYgRFJNX01PREVfUk9UQVRFXzE4MCkKPiAtCQliYXNl
ICs9IChwbGFuZV9zdGF0ZS0+YmFzZS5jcnRjX2ggKgo+IC0JCQkgcGxhbmVfc3RhdGUtPmJhc2Uu
Y3J0Y193IC0gMSkgKiBmYi0+Zm9ybWF0LT5jcHBbMF07Cj4gKwkJYmFzZSArPSAoZHJtX3JlY3Rf
aGVpZ2h0KCZwbGFuZV9zdGF0ZS0+YmFzZS5kc3QpICoKPiArCQkJIGRybV9yZWN0X3dpZHRoKCZw
bGFuZV9zdGF0ZS0+YmFzZS5kc3QpIC0gMSkgKiBmYi0+Zm9ybWF0LT5jcHBbMF07Cj4gIAo+ICAJ
cmV0dXJuIGJhc2U7Cj4gIH0KPiAgCj4gIHN0YXRpYyB1MzIgaW50ZWxfY3Vyc29yX3Bvc2l0aW9u
KGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gIHsKPiAtCWlu
dCB4ID0gcGxhbmVfc3RhdGUtPmJhc2UuY3J0Y194Owo+IC0JaW50IHkgPSBwbGFuZV9zdGF0ZS0+
YmFzZS5jcnRjX3k7Cj4gKwlpbnQgeCA9IHBsYW5lX3N0YXRlLT5iYXNlLmRzdC54MTsKPiArCWlu
dCB5ID0gcGxhbmVfc3RhdGUtPmJhc2UuZHN0LnkxOwo+ICAJdTMyIHBvcyA9IDA7Cj4gIAo+ICAJ
aWYgKHggPCAwKSB7Cj4gQEAgLTEwNjIyLDggKzEwNjIyLDggQEAgc3RhdGljIGJvb2wgaW50ZWxf
Y3Vyc29yX3NpemVfb2soY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0
ZSkKPiAgewo+ICAJY29uc3Qgc3RydWN0IGRybV9tb2RlX2NvbmZpZyAqY29uZmlnID0KPiAgCQkm
cGxhbmVfc3RhdGUtPmJhc2UucGxhbmUtPmRldi0+bW9kZV9jb25maWc7Cj4gLQlpbnQgd2lkdGgg
PSBwbGFuZV9zdGF0ZS0+YmFzZS5jcnRjX3c7Cj4gLQlpbnQgaGVpZ2h0ID0gcGxhbmVfc3RhdGUt
PmJhc2UuY3J0Y19oOwo+ICsJaW50IHdpZHRoID0gZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRl
LT5iYXNlLmRzdCk7Cj4gKwlpbnQgaGVpZ2h0ID0gZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0
ZS0+YmFzZS5kc3QpOwo+ICAKPiAgCXJldHVybiB3aWR0aCA+IDAgJiYgd2lkdGggPD0gY29uZmln
LT5jdXJzb3Jfd2lkdGggJiYKPiAgCQloZWlnaHQgPiAwICYmIGhlaWdodCA8PSBjb25maWctPmN1
cnNvcl9oZWlnaHQ7Cj4gQEAgLTEwNjQyLDggKzEwNjQyLDggQEAgc3RhdGljIGludCBpbnRlbF9j
dXJzb3JfY2hlY2tfc3VyZmFjZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRl
KQo+ICAJaWYgKCFwbGFuZV9zdGF0ZS0+YmFzZS52aXNpYmxlKQo+ICAJCXJldHVybiAwOwo+ICAK
PiAtCXNyY194ID0gcGxhbmVfc3RhdGUtPmJhc2Uuc3JjX3ggPj4gMTY7Cj4gLQlzcmNfeSA9IHBs
YW5lX3N0YXRlLT5iYXNlLnNyY195ID4+IDE2Owo+ICsJc3JjX3ggPSBwbGFuZV9zdGF0ZS0+YmFz
ZS5zcmMueDEgPj4gMTY7Cj4gKwlzcmNfeSA9IHBsYW5lX3N0YXRlLT5iYXNlLnNyYy55MSA+PiAx
NjsKPiAgCj4gIAlpbnRlbF9hZGRfZmJfb2Zmc2V0cygmc3JjX3gsICZzcmNfeSwgcGxhbmVfc3Rh
dGUsIDApOwo+ICAJb2Zmc2V0ID0gaW50ZWxfcGxhbmVfY29tcHV0ZV9hbGlnbmVkX29mZnNldCgm
c3JjX3gsICZzcmNfeSwKPiBAQCAtMTA2NzgsNiArMTA2NzgsMTAgQEAgc3RhdGljIGludCBpbnRl
bF9jaGVja19jdXJzb3Ioc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAlp
ZiAocmV0KQo+ICAJCXJldHVybiByZXQ7Cj4gIAo+ICsJLyogVXNlIHRoZSB1bmNsaXBwZWQgc3Jj
L2RzdCByZWN0YW5nbGVzLCB3aGljaCB3ZSBwcm9ncmFtIHRvIGh3ICovCj4gKwlwbGFuZV9zdGF0
ZS0+YmFzZS5zcmMgPSBkcm1fcGxhbmVfc3RhdGVfc3JjKCZwbGFuZV9zdGF0ZS0+YmFzZSk7Cj4g
KwlwbGFuZV9zdGF0ZS0+YmFzZS5kc3QgPSBkcm1fcGxhbmVfc3RhdGVfZGVzdCgmcGxhbmVfc3Rh
dGUtPmJhc2UpOwo+ICsKPiAgCXJldCA9IGludGVsX2N1cnNvcl9jaGVja19zdXJmYWNlKHBsYW5l
X3N0YXRlKTsKPiAgCWlmIChyZXQpCj4gIAkJcmV0dXJuIHJldDsKPiBAQCAtMTA3MjAsNyArMTA3
MjQsNyBAQCBzdGF0aWMgdTMyIGk4NDVfY3Vyc29yX2N0bChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCj4gIHN0YXRpYyBib29sIGk4NDVfY3Vyc29yX3NpemVf
b2soY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKPiAgewo+IC0J
aW50IHdpZHRoID0gcGxhbmVfc3RhdGUtPmJhc2UuY3J0Y193Owo+ICsJaW50IHdpZHRoID0gZHJt
X3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT5iYXNlLmRzdCk7Cj4gIAo+ICAJLyoKPiAgCSAqIDg0
NWcvODY1ZyBhcmUgb25seSBsaW1pdGVkIGJ5IHRoZSB3aWR0aCBvZiB0aGVpciBjdXJzb3JzLAo+
IEBAIC0xMDc0Niw4ICsxMDc1MCw4IEBAIHN0YXRpYyBpbnQgaTg0NV9jaGVja19jdXJzb3Ioc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAkvKiBDaGVjayBmb3Igd2hpY2gg
Y3Vyc29yIHR5cGVzIHdlIHN1cHBvcnQgKi8KPiAgCWlmICghaTg0NV9jdXJzb3Jfc2l6ZV9vayhw
bGFuZV9zdGF0ZSkpIHsKPiAgCQlEUk1fREVCVUcoIkN1cnNvciBkaW1lbnNpb24gJWR4JWQgbm90
IHN1cHBvcnRlZFxuIiwKPiAtCQkJICBwbGFuZV9zdGF0ZS0+YmFzZS5jcnRjX3csCj4gLQkJCSAg
cGxhbmVfc3RhdGUtPmJhc2UuY3J0Y19oKTsKPiArCQkJICBkcm1fcmVjdF93aWR0aCgmcGxhbmVf
c3RhdGUtPmJhc2UuZHN0KSwKPiArCQkJICBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT5i
YXNlLmRzdCkpOwo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAJfQo+ICAKPiBAQCAtMTA3ODAsOCAr
MTA3ODQsOCBAQCBzdGF0aWMgdm9pZCBpODQ1X3VwZGF0ZV9jdXJzb3Ioc3RydWN0IGludGVsX3Bs
YW5lICpwbGFuZSwKPiAgCXVuc2lnbmVkIGxvbmcgaXJxZmxhZ3M7Cj4gIAo+ICAJaWYgKHBsYW5l
X3N0YXRlICYmIHBsYW5lX3N0YXRlLT5iYXNlLnZpc2libGUpIHsKPiAtCQl1bnNpZ25lZCBpbnQg
d2lkdGggPSBwbGFuZV9zdGF0ZS0+YmFzZS5jcnRjX3c7Cj4gLQkJdW5zaWduZWQgaW50IGhlaWdo
dCA9IHBsYW5lX3N0YXRlLT5iYXNlLmNydGNfaDsKPiArCQl1bnNpZ25lZCBpbnQgd2lkdGggPSBk
cm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPmJhc2Uuc3JjKTsKPiArCQl1bnNpZ25lZCBpbnQg
aGVpZ2h0ID0gZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+YmFzZS5kc3QpOwo+ICAKPiAg
CQljbnRsID0gcGxhbmVfc3RhdGUtPmN0bCB8Cj4gIAkJCWk4NDVfY3Vyc29yX2N0bF9jcnRjKGNy
dGNfc3RhdGUpOwo+IEBAIC0xMDg4Myw3ICsxMDg4Nyw3IEBAIHN0YXRpYyB1MzIgaTl4eF9jdXJz
b3JfY3RsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAJaWYg
KElTX0dFTihkZXZfcHJpdiwgNikgfHwgSVNfSVZZQlJJREdFKGRldl9wcml2KSkKPiAgCQljbnRs
IHw9IE1DVVJTT1JfVFJJQ0tMRV9GRUVEX0RJU0FCTEU7Cj4gIAo+IC0Jc3dpdGNoIChwbGFuZV9z
dGF0ZS0+YmFzZS5jcnRjX3cpIHsKPiArCXN3aXRjaCAoZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0
YXRlLT5iYXNlLmRzdCkpIHsKPiAgCWNhc2UgNjQ6Cj4gIAkJY250bCB8PSBNQ1VSU09SX01PREVf
NjRfQVJHQl9BWDsKPiAgCQlicmVhazsKPiBAQCAtMTA4OTQsNyArMTA4OTgsNyBAQCBzdGF0aWMg
dTMyIGk5eHhfY3Vyc29yX2N0bChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwKPiAgCQljbnRsIHw9IE1DVVJTT1JfTU9ERV8yNTZfQVJHQl9BWDsKPiAgCQlicmVhazsK
PiAgCWRlZmF1bHQ6Cj4gLQkJTUlTU0lOR19DQVNFKHBsYW5lX3N0YXRlLT5iYXNlLmNydGNfdyk7
Cj4gKwkJTUlTU0lOR19DQVNFKGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+YmFzZS5kc3Qp
KTsKPiAgCQlyZXR1cm4gMDsKPiAgCX0KPiAgCj4gQEAgLTEwOTA4LDggKzEwOTEyLDggQEAgc3Rh
dGljIGJvb2wgaTl4eF9jdXJzb3Jfc2l6ZV9vayhjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgKnBsYW5lX3N0YXRlKQo+ICB7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPQo+ICAJCXRvX2k5MTUocGxhbmVfc3RhdGUtPmJhc2UucGxhbmUtPmRldik7Cj4gLQlpbnQg
d2lkdGggPSBwbGFuZV9zdGF0ZS0+YmFzZS5jcnRjX3c7Cj4gLQlpbnQgaGVpZ2h0ID0gcGxhbmVf
c3RhdGUtPmJhc2UuY3J0Y19oOwo+ICsJaW50IHdpZHRoID0gZHJtX3JlY3Rfd2lkdGgoJnBsYW5l
X3N0YXRlLT5iYXNlLmRzdCk7Cj4gKwlpbnQgaGVpZ2h0ID0gZHJtX3JlY3RfaGVpZ2h0KCZwbGFu
ZV9zdGF0ZS0+YmFzZS5kc3QpOwo+ICAKPiAgCWlmICghaW50ZWxfY3Vyc29yX3NpemVfb2socGxh
bmVfc3RhdGUpKQo+ICAJCXJldHVybiBmYWxzZTsKPiBAQCAtMTA5NjIsMTcgKzEwOTY2LDE5IEBA
IHN0YXRpYyBpbnQgaTl4eF9jaGVja19jdXJzb3Ioc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCj4gIAkvKiBDaGVjayBmb3Igd2hpY2ggY3Vyc29yIHR5cGVzIHdlIHN1cHBvcnQg
Ki8KPiAgCWlmICghaTl4eF9jdXJzb3Jfc2l6ZV9vayhwbGFuZV9zdGF0ZSkpIHsKPiAgCQlEUk1f
REVCVUcoIkN1cnNvciBkaW1lbnNpb24gJWR4JWQgbm90IHN1cHBvcnRlZFxuIiwKPiAtCQkJICBw
bGFuZV9zdGF0ZS0+YmFzZS5jcnRjX3csCj4gLQkJCSAgcGxhbmVfc3RhdGUtPmJhc2UuY3J0Y19o
KTsKPiArCQkJICBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPmJhc2UuZHN0KSwKPiArCQkJ
ICBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT5iYXNlLmRzdCkpOwo+ICAJCXJldHVybiAt
RUlOVkFMOwo+ICAJfQo+ICAKPiAgCVdBUk5fT04ocGxhbmVfc3RhdGUtPmJhc2UudmlzaWJsZSAm
Jgo+ICAJCXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVswXS5zdHJpZGUgIT0gZmItPnBpdGNoZXNb
MF0pOwo+ICAKPiAtCWlmIChmYi0+cGl0Y2hlc1swXSAhPSBwbGFuZV9zdGF0ZS0+YmFzZS5jcnRj
X3cgKiBmYi0+Zm9ybWF0LT5jcHBbMF0pIHsKPiArCWlmIChmYi0+cGl0Y2hlc1swXSAhPQo+ICsJ
ICAgIGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+YmFzZS5kc3QpICogZmItPmZvcm1hdC0+
Y3BwWzBdKSB7Cj4gIAkJRFJNX0RFQlVHX0tNUygiSW52YWxpZCBjdXJzb3Igc3RyaWRlICgldSkg
KGN1cnNvciB3aWR0aCAlZClcbiIsCj4gLQkJCSAgICAgIGZiLT5waXRjaGVzWzBdLCBwbGFuZV9z
dGF0ZS0+YmFzZS5jcnRjX3cpOwo+ICsJCQkgICAgICBmYi0+cGl0Y2hlc1swXSwKPiArCQkJICAg
ICAgZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT5iYXNlLmRzdCkpOwo+ICAJCXJldHVybiAt
RUlOVkFMOwo+ICAJfQo+ICAKPiBAQCAtMTA5ODcsNyArMTA5OTMsNyBAQCBzdGF0aWMgaW50IGk5
eHhfY2hlY2tfY3Vyc29yKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAJ
ICogUmVmdXNlIHRoZSBwdXQgdGhlIGN1cnNvciBpbnRvIHRoYXQgY29tcHJvbWlzZWQgcG9zaXRp
b24uCj4gIAkgKi8KPiAgCWlmIChJU19DSEVSUllWSUVXKGRldl9wcml2KSAmJiBwaXBlID09IFBJ
UEVfQyAmJgo+IC0JICAgIHBsYW5lX3N0YXRlLT5iYXNlLnZpc2libGUgJiYgcGxhbmVfc3RhdGUt
PmJhc2UuY3J0Y194IDwgMCkgewo+ICsJICAgIHBsYW5lX3N0YXRlLT5iYXNlLnZpc2libGUgJiYg
cGxhbmVfc3RhdGUtPmJhc2UuZHN0LngxIDwgMCkgewo+ICAJCURSTV9ERUJVR19LTVMoIkNIViBj
dXJzb3IgQyBub3QgYWxsb3dlZCB0byBzdHJhZGRsZSB0aGUgbGVmdCBzY3JlZW4gZWRnZVxuIik7
Cj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAl9Cj4gQEAgLTExMDA3LDExICsxMTAxMywxNCBAQCBz
dGF0aWMgdm9pZCBpOXh4X3VwZGF0ZV9jdXJzb3Ioc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwK
PiAgCXVuc2lnbmVkIGxvbmcgaXJxZmxhZ3M7Cj4gIAo+ICAJaWYgKHBsYW5lX3N0YXRlICYmIHBs
YW5lX3N0YXRlLT5iYXNlLnZpc2libGUpIHsKPiArCQl1bnNpZ25lZCB3aWR0aCA9IGRybV9yZWN0
X3dpZHRoKCZwbGFuZV9zdGF0ZS0+YmFzZS5kc3QpOwo+ICsJCXVuc2lnbmVkIGhlaWdodCA9IGRy
bV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPmJhc2UuZHN0KTsKPiArCj4gIAkJY250bCA9IHBs
YW5lX3N0YXRlLT5jdGwgfAo+ICAJCQlpOXh4X2N1cnNvcl9jdGxfY3J0YyhjcnRjX3N0YXRlKTsK
PiAgCj4gLQkJaWYgKHBsYW5lX3N0YXRlLT5iYXNlLmNydGNfaCAhPSBwbGFuZV9zdGF0ZS0+YmFz
ZS5jcnRjX3cpCj4gLQkJCWZiY19jdGwgPSBDVVJfRkJDX0NUTF9FTiB8IChwbGFuZV9zdGF0ZS0+
YmFzZS5jcnRjX2ggLSAxKTsKPiArCQlpZiAod2lkdGggIT0gaGVpZ2h0KQo+ICsJCQlmYmNfY3Rs
ID0gQ1VSX0ZCQ19DVExfRU4gfCAoaGVpZ2h0IC0gMSk7Cj4gIAo+ICAJCWJhc2UgPSBpbnRlbF9j
dXJzb3JfYmFzZShwbGFuZV9zdGF0ZSk7Cj4gIAkJcG9zID0gaW50ZWxfY3Vyc29yX3Bvc2l0aW9u
KHBsYW5lX3N0YXRlKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiBpbmRleCA2YWVhYWQ1ODdh
MjAuLjUzMzU4ZTMzZGYxYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwo+IEBAIC0xMTE3
LDEwICsxMTE3LDcgQEAgc3RhdGljIHUxNiBnNHhfY29tcHV0ZV93bShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCWNsb2NrID0gYWRqdXN0ZWRfbW9kZS0+Y3J0
Y19jbG9jazsKPiAgCWh0b3RhbCA9IGFkanVzdGVkX21vZGUtPmNydGNfaHRvdGFsOwo+ICAKPiAt
CWlmIChwbGFuZS0+aWQgPT0gUExBTkVfQ1VSU09SKQo+IC0JCXdpZHRoID0gcGxhbmVfc3RhdGUt
PmJhc2UuY3J0Y193Owo+IC0JZWxzZQo+IC0JCXdpZHRoID0gZHJtX3JlY3Rfd2lkdGgoJnBsYW5l
X3N0YXRlLT5iYXNlLmRzdCk7Cj4gKwl3aWR0aCA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0
ZS0+YmFzZS5kc3QpOwo+ICAKPiAgCWlmIChwbGFuZS0+aWQgPT0gUExBTkVfQ1VSU09SKSB7Cj4g
IAkJd20gPSBpbnRlbF93bV9tZXRob2QyKGNsb2NrLCBodG90YWwsIHdpZHRoLCBjcHAsIGxhdGVu
Y3kpOwo+IEBAIC0yNTQ5LDcgKzI1NDYsOCBAQCBzdGF0aWMgdTMyIGlsa19jb21wdXRlX2N1cl93
bShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCj4gIAlyZXR1
cm4gaWxrX3dtX21ldGhvZDIoY3J0Y19zdGF0ZS0+cGl4ZWxfcmF0ZSwKPiAgCQkJICAgICAgY3J0
Y19zdGF0ZS0+YmFzZS5hZGp1c3RlZF9tb2RlLmNydGNfaHRvdGFsLAo+IC0JCQkgICAgICBwbGFu
ZV9zdGF0ZS0+YmFzZS5jcnRjX3csIGNwcCwgbWVtX3ZhbHVlKTsKPiArCQkJICAgICAgZHJtX3Jl
Y3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT5iYXNlLmRzdCksCj4gKwkJCSAgICAgIGNwcCwgbWVtX3Zh
bHVlKTsKPiAgfQo+ICAKPiAgLyogT25seSBmb3IgV01fTFAuICovCj4gQEAgLTQwNDYsNyArNDA0
NCw2IEBAIHN0YXRpYyB1aW50X2ZpeGVkXzE2XzE2X3QKPiAgc2tsX3BsYW5lX2Rvd25zY2FsZV9h
bW91bnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAkJCSAg
IGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gIHsKPiAtCXN0
cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUgPSB0b19pbnRlbF9wbGFuZShwbGFuZV9zdGF0ZS0+YmFz
ZS5wbGFuZSk7Cj4gIAl1MzIgc3JjX3csIHNyY19oLCBkc3RfdywgZHN0X2g7Cj4gIAl1aW50X2Zp
eGVkXzE2XzE2X3QgZnBfd19yYXRpbywgZnBfaF9yYXRpbzsKPiAgCXVpbnRfZml4ZWRfMTZfMTZf
dCBkb3duc2NhbGVfaCwgZG93bnNjYWxlX3c7Cj4gQEAgLTQwNTQsMjcgKzQwNTEsMTcgQEAgc2ts
X3BsYW5lX2Rvd25zY2FsZV9hbW91bnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCj4gIAlpZiAoV0FSTl9PTighaW50ZWxfd21fcGxhbmVfdmlzaWJsZShjcnRjX3N0
YXRlLCBwbGFuZV9zdGF0ZSkpKQo+ICAJCXJldHVybiB1MzJfdG9fZml4ZWQxNigwKTsKPiAgCj4g
LQkvKiBuLmIuLCBzcmMgaXMgMTYuMTYgZml4ZWQgcG9pbnQsIGRzdCBpcyB3aG9sZSBpbnRlZ2Vy
ICovCj4gLQlpZiAocGxhbmUtPmlkID09IFBMQU5FX0NVUlNPUikgewo+IC0JCS8qCj4gLQkJICog
Q3Vyc29ycyBvbmx5IHN1cHBvcnQgMC8xODAgZGVncmVlIHJvdGF0aW9uLAo+IC0JCSAqIGhlbmNl
IG5vIG5lZWQgdG8gYWNjb3VudCBmb3Igcm90YXRpb24gaGVyZS4KPiAtCQkgKi8KPiAtCQlzcmNf
dyA9IHBsYW5lX3N0YXRlLT5iYXNlLnNyY193ID4+IDE2Owo+IC0JCXNyY19oID0gcGxhbmVfc3Rh
dGUtPmJhc2Uuc3JjX2ggPj4gMTY7Cj4gLQkJZHN0X3cgPSBwbGFuZV9zdGF0ZS0+YmFzZS5jcnRj
X3c7Cj4gLQkJZHN0X2ggPSBwbGFuZV9zdGF0ZS0+YmFzZS5jcnRjX2g7Cj4gLQl9IGVsc2Ugewo+
IC0JCS8qCj4gLQkJICogU3JjIGNvb3JkaW5hdGVzIGFyZSBhbHJlYWR5IHJvdGF0ZWQgYnkgMjcw
IGRlZ3JlZXMgZm9yCj4gLQkJICogdGhlIDkwLzI3MCBkZWdyZWUgcGxhbmUgcm90YXRpb24gY2Fz
ZXMgKHRvIG1hdGNoIHRoZQo+IC0JCSAqIEdUVCBtYXBwaW5nKSwgaGVuY2Ugbm8gbmVlZCB0byBh
Y2NvdW50IGZvciByb3RhdGlvbiBoZXJlLgo+IC0JCSAqLwo+IC0JCXNyY193ID0gZHJtX3JlY3Rf
d2lkdGgoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7Cj4gLQkJc3JjX2ggPSBkcm1fcmVj
dF9oZWlnaHQoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7Cj4gLQkJZHN0X3cgPSBkcm1f
cmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPmJhc2UuZHN0KTsKPiAtCQlkc3RfaCA9IGRybV9yZWN0
X2hlaWdodCgmcGxhbmVfc3RhdGUtPmJhc2UuZHN0KTsKPiAtCX0KPiArCS8qCj4gKwkgKiBTcmMg
Y29vcmRpbmF0ZXMgYXJlIGFscmVhZHkgcm90YXRlZCBieSAyNzAgZGVncmVlcyBmb3IKPiArCSAq
IHRoZSA5MC8yNzAgZGVncmVlIHBsYW5lIHJvdGF0aW9uIGNhc2VzICh0byBtYXRjaCB0aGUKPiAr
CSAqIEdUVCBtYXBwaW5nKSwgaGVuY2Ugbm8gbmVlZCB0byBhY2NvdW50IGZvciByb3RhdGlvbiBo
ZXJlLgo+ICsJICoKPiArCSAqIG4uYi4sIHNyYyBpcyAxNi4xNiBmaXhlZCBwb2ludCwgZHN0IGlz
IHdob2xlIGludGVnZXIuCj4gKwkgKi8KPiArCXNyY193ID0gZHJtX3JlY3Rfd2lkdGgoJnBsYW5l
X3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7Cj4gKwlzcmNfaCA9IGRybV9yZWN0X2hlaWdodCgmcGxh
bmVfc3RhdGUtPmJhc2Uuc3JjKSA+PiAxNjsKPiArCWRzdF93ID0gZHJtX3JlY3Rfd2lkdGgoJnBs
YW5lX3N0YXRlLT5iYXNlLmRzdCk7Cj4gKwlkc3RfaCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVf
c3RhdGUtPmJhc2UuZHN0KTsKPiAgCj4gIAlmcF93X3JhdGlvID0gZGl2X2ZpeGVkMTYoc3JjX3cs
IGRzdF93KTsKPiAgCWZwX2hfcmF0aW8gPSBkaXZfZml4ZWQxNihzcmNfaCwgZHN0X2gpOwo+IEBA
IC00Njk4LDIwICs0Njg1LDE1IEBAIHNrbF9jb21wdXRlX3BsYW5lX3dtX3BhcmFtcyhjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCQkJICAgIGNvbnN0IHN0cnVj
dCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsCj4gIAkJCSAgICBzdHJ1Y3Qgc2tsX3dt
X3BhcmFtcyAqd3AsIGludCBjb2xvcl9wbGFuZSkKPiAgewo+IC0Jc3RydWN0IGludGVsX3BsYW5l
ICpwbGFuZSA9IHRvX2ludGVsX3BsYW5lKHBsYW5lX3N0YXRlLT5iYXNlLnBsYW5lKTsKPiAgCWNv
bnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0gcGxhbmVfc3RhdGUtPmJhc2UuZmI7Cj4g
IAlpbnQgd2lkdGg7Cj4gIAo+IC0JaWYgKHBsYW5lLT5pZCA9PSBQTEFORV9DVVJTT1IpIHsKPiAt
CQl3aWR0aCA9IHBsYW5lX3N0YXRlLT5iYXNlLmNydGNfdzsKPiAtCX0gZWxzZSB7Cj4gLQkJLyoK
PiAtCQkgKiBTcmMgY29vcmRpbmF0ZXMgYXJlIGFscmVhZHkgcm90YXRlZCBieSAyNzAgZGVncmVl
cyBmb3IKPiAtCQkgKiB0aGUgOTAvMjcwIGRlZ3JlZSBwbGFuZSByb3RhdGlvbiBjYXNlcyAodG8g
bWF0Y2ggdGhlCj4gLQkJICogR1RUIG1hcHBpbmcpLCBoZW5jZSBubyBuZWVkIHRvIGFjY291bnQg
Zm9yIHJvdGF0aW9uIGhlcmUuCj4gLQkJICovCj4gLQkJd2lkdGggPSBkcm1fcmVjdF93aWR0aCgm
cGxhbmVfc3RhdGUtPmJhc2Uuc3JjKSA+PiAxNjsKPiAtCX0KPiArCS8qCj4gKwkgKiBTcmMgY29v
cmRpbmF0ZXMgYXJlIGFscmVhZHkgcm90YXRlZCBieSAyNzAgZGVncmVlcyBmb3IKPiArCSAqIHRo
ZSA5MC8yNzAgZGVncmVlIHBsYW5lIHJvdGF0aW9uIGNhc2VzICh0byBtYXRjaCB0aGUKPiArCSAq
IEdUVCBtYXBwaW5nKSwgaGVuY2Ugbm8gbmVlZCB0byBhY2NvdW50IGZvciByb3RhdGlvbiBoZXJl
Lgo+ICsJICovCj4gKwl3aWR0aCA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+YmFzZS5z
cmMpID4+IDE2Owo+ICAKPiAgCXJldHVybiBza2xfY29tcHV0ZV93bV9wYXJhbXMoY3J0Y19zdGF0
ZSwgd2lkdGgsCj4gIAkJCQkgICAgIGZiLT5mb3JtYXQsIGZiLT5tb2RpZmllciwKPiAtLSAKPiAy
LjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyClZUVC1PU0dD
IFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
