Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB91CECE5
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 21:36:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108EF6E17E;
	Mon,  7 Oct 2019 19:36:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4AFA6E17E
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 19:36:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 12:36:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,269,1566889200"; d="scan'208";a="192374019"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by fmsmga008.fm.intel.com with ESMTP; 07 Oct 2019 12:36:47 -0700
Date: Mon, 7 Oct 2019 12:37:11 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191007193711.GH6810@mdroper-desk1.amr.corp.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
 <20191004113514.17064-4-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004113514.17064-4-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 03/24] drm/i915: Introduce and use
 intel_atomic_crtc_state_for_each_plane_state.
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

T24gRnJpLCBPY3QgMDQsIDIwMTkgYXQgMDE6MzQ6NTNQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gSW5zdGVhZCBvZiBsb29raW5nIGF0IGRybV9wbGFuZV9zdGF0ZSwgbG9vayBh
dCBpbnRlbF9wbGFuZV9zdGF0ZSBkaXJlY3RseS4KPiAKPiBUaGlzIHdpbGwgYWxsb3cgdXMgdG8g
bWFrZSB0aGUgd2F0ZXJtYXJrcyBiaWdqb2luZXIgYXdhcmUsIHdoZW4gd2UgbWFrZSBpdAo+IHdv
cmsgZm9yIGJpZ2pvaW5lciBzbGF2ZSBwaXBlcyBhcyB3ZWxsLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CgpS
ZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgIDggKysr
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgIHwgNjAgKysr
KysrKystLS0tLS0tLS0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCAz
NSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuaAo+IGluZGV4IDRkZWQ2NGZjYmM2Yy4uYmMyY2Y0YmVjMGU4IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiBAQCAtNDQwLDYg
KzQ0MCwxNCBAQCBlbnVtIHBoeV9maWEgewo+ICAJICAgICAoX19pKS0tKSBcCj4gIAkJZm9yX2Vh
Y2hfaWYoY3J0YykKPiAgCj4gKyNkZWZpbmUgaW50ZWxfYXRvbWljX2NydGNfc3RhdGVfZm9yX2Vh
Y2hfcGxhbmVfc3RhdGUoIFwKPiArCQkgIHBsYW5lLCBwbGFuZV9zdGF0ZSwgXAo+ICsJCSAgY3J0
Y19zdGF0ZSkgXAo+ICsJZm9yX2VhY2hfaW50ZWxfcGxhbmVfbWFzaygoKGNydGNfc3RhdGUpLT5i
YXNlLnN0YXRlLT5kZXYpLCAocGxhbmUpLCBcCj4gKwkJCQkoKGNydGNfc3RhdGUpLT5iYXNlLnBs
YW5lX21hc2spKSBcCj4gKwkJZm9yX2VhY2hfaWYgKChwbGFuZV9zdGF0ZSA9IFwKPiArCQkJICAg
ICAgdG9faW50ZWxfcGxhbmVfc3RhdGUoX19kcm1fYXRvbWljX2dldF9jdXJyZW50X3BsYW5lX3N0
YXRlKChjcnRjX3N0YXRlKS0+YmFzZS5zdGF0ZSwgJnBsYW5lLT5iYXNlKSkpKQo+ICsKPiAgdm9p
ZCBpbnRlbF9saW5rX2NvbXB1dGVfbV9uKHUxNiBicHAsIGludCBubGFuZXMsCj4gIAkJCSAgICBp
bnQgcGl4ZWxfY2xvY2ssIGludCBsaW5rX2Nsb2NrLAo+ICAJCQkgICAgc3RydWN0IGludGVsX2xp
bmtfbV9uICptX24sCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4gaW5kZXggYmZjZjAzYWI1MjQ1
Li42YWVhYWQ1ODdhMjAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiBAQCAtMzA4OSw4
ICszMDg5LDggQEAgc3RhdGljIGludCBpbGtfY29tcHV0ZV9waXBlX3dtKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAJc3RydWN0IGludGVsX3BpcGVfd20gKnBpcGVfd207
Cj4gIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gc3RhdGUtPmRldjsKPiAgCWNvbnN0IHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKPiAtCXN0cnVjdCBk
cm1fcGxhbmUgKnBsYW5lOwo+IC0JY29uc3Qgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqcGxhbmVf
c3RhdGU7Cj4gKwlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOwo+ICsJY29uc3Qgc3RydWN0IGlu
dGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZTsKPiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFu
ZV9zdGF0ZSAqcHJpc3RhdGUgPSBOVUxMOwo+ICAJY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpzcHJzdGF0ZSA9IE5VTEw7Cj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUg
KmN1cnN0YXRlID0gTlVMTDsKPiBAQCAtMzA5OSwxNSArMzA5OSwxMyBAQCBzdGF0aWMgaW50IGls
a19jb21wdXRlX3BpcGVfd20oc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4g
IAo+ICAJcGlwZV93bSA9ICZjcnRjX3N0YXRlLT53bS5pbGsub3B0aW1hbDsKPiAgCj4gLQlkcm1f
YXRvbWljX2NydGNfc3RhdGVfZm9yX2VhY2hfcGxhbmVfc3RhdGUocGxhbmUsIHBsYW5lX3N0YXRl
LCAmY3J0Y19zdGF0ZS0+YmFzZSkgewo+IC0JCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqcHMgPSB0b19pbnRlbF9wbGFuZV9zdGF0ZShwbGFuZV9zdGF0ZSk7Cj4gLQo+IC0JCWlmIChw
bGFuZS0+dHlwZSA9PSBEUk1fUExBTkVfVFlQRV9QUklNQVJZKQo+IC0JCQlwcmlzdGF0ZSA9IHBz
Owo+IC0JCWVsc2UgaWYgKHBsYW5lLT50eXBlID09IERSTV9QTEFORV9UWVBFX09WRVJMQVkpCj4g
LQkJCXNwcnN0YXRlID0gcHM7Cj4gLQkJZWxzZSBpZiAocGxhbmUtPnR5cGUgPT0gRFJNX1BMQU5F
X1RZUEVfQ1VSU09SKQo+IC0JCQljdXJzdGF0ZSA9IHBzOwo+ICsJaW50ZWxfYXRvbWljX2NydGNf
c3RhdGVfZm9yX2VhY2hfcGxhbmVfc3RhdGUocGxhbmUsIHBsYW5lX3N0YXRlLCBjcnRjX3N0YXRl
KSB7Cj4gKwkJaWYgKHBsYW5lLT5iYXNlLnR5cGUgPT0gRFJNX1BMQU5FX1RZUEVfUFJJTUFSWSkK
PiArCQkJcHJpc3RhdGUgPSBwbGFuZV9zdGF0ZTsKPiArCQllbHNlIGlmIChwbGFuZS0+YmFzZS50
eXBlID09IERSTV9QTEFORV9UWVBFX09WRVJMQVkpCj4gKwkJCXNwcnN0YXRlID0gcGxhbmVfc3Rh
dGU7Cj4gKwkJZWxzZSBpZiAocGxhbmUtPmJhc2UudHlwZSA9PSBEUk1fUExBTkVfVFlQRV9DVVJT
T1IpCj4gKwkJCWN1cnN0YXRlID0gcGxhbmVfc3RhdGU7Cj4gIAl9Cj4gIAo+ICAJcGlwZV93bS0+
cGlwZV9lbmFibGVkID0gY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmU7Cj4gQEAgLTQxMjQsOCArNDEy
Miw4IEBAIGludCBza2xfY2hlY2tfcGlwZV9tYXhfcGl4ZWxfcmF0ZShzdHJ1Y3QgaW50ZWxfY3J0
YyAqaW50ZWxfY3J0YywKPiAgewo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShpbnRlbF9jcnRjLT5iYXNlLmRldik7Cj4gIAlzdHJ1Y3QgZHJtX2F0b21pY19z
dGF0ZSAqc3RhdGUgPSBjcnRjX3N0YXRlLT5iYXNlLnN0YXRlOwo+IC0Jc3RydWN0IGRybV9wbGFu
ZSAqcGxhbmU7Cj4gLQljb25zdCBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpkcm1fcGxhbmVfc3Rh
dGU7Cj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlOwo+ICsJ
c3RydWN0IGludGVsX3BsYW5lICpwbGFuZTsKPiAgCWludCBjcnRjX2Nsb2NrLCBkb3RjbGs7Cj4g
IAl1MzIgcGlwZV9tYXhfcGl4ZWxfcmF0ZTsKPiAgCXVpbnRfZml4ZWRfMTZfMTZfdCBwaXBlX2Rv
d25zY2FsZTsKPiBAQCAtNDEzNCwxMiArNDEzMiwxMCBAQCBpbnQgc2tsX2NoZWNrX3BpcGVfbWF4
X3BpeGVsX3JhdGUoc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMsCj4gIAlpZiAoIWNydGNf
c3RhdGUtPmJhc2UuZW5hYmxlKQo+ICAJCXJldHVybiAwOwo+ICAKPiAtCWRybV9hdG9taWNfY3J0
Y19zdGF0ZV9mb3JfZWFjaF9wbGFuZV9zdGF0ZShwbGFuZSwgZHJtX3BsYW5lX3N0YXRlLCAmY3J0
Y19zdGF0ZS0+YmFzZSkgewo+ICsJaW50ZWxfYXRvbWljX2NydGNfc3RhdGVfZm9yX2VhY2hfcGxh
bmVfc3RhdGUocGxhbmUsIHBsYW5lX3N0YXRlLCBjcnRjX3N0YXRlKSB7Cj4gIAkJdWludF9maXhl
ZF8xNl8xNl90IHBsYW5lX2Rvd25zY2FsZTsKPiAgCQl1aW50X2ZpeGVkXzE2XzE2X3QgZnBfOV9k
aXZfOCA9IGRpdl9maXhlZDE2KDksIDgpOwo+ICAJCWludCBicHA7Cj4gLQkJY29uc3Qgc3RydWN0
IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSA9Cj4gLQkJCXRvX2ludGVsX3BsYW5lX3N0
YXRlKGRybV9wbGFuZV9zdGF0ZSk7Cj4gIAo+ICAJCWlmICghaW50ZWxfd21fcGxhbmVfdmlzaWJs
ZShjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSkpCj4gIAkJCWNvbnRpbnVlOwo+IEBAIC00MjI3LDE4
ICs0MjIzLDE2IEBAIHNrbF9nZXRfdG90YWxfcmVsYXRpdmVfZGF0YV9yYXRlKHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAJCQkJIHU2NCAqdXZfcGxhbmVfZGF0YV9yYXRl
KQo+ICB7Cj4gIAlzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPSBjcnRjX3N0YXRlLT5i
YXNlLnN0YXRlOwo+IC0Jc3RydWN0IGRybV9wbGFuZSAqcGxhbmU7Cj4gLQljb25zdCBzdHJ1Y3Qg
ZHJtX3BsYW5lX3N0YXRlICpkcm1fcGxhbmVfc3RhdGU7Cj4gKwlzdHJ1Y3QgaW50ZWxfcGxhbmUg
KnBsYW5lOwo+ICsJY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZTsK
PiAgCXU2NCB0b3RhbF9kYXRhX3JhdGUgPSAwOwo+ICAKPiAgCWlmIChXQVJOX09OKCFzdGF0ZSkp
Cj4gIAkJcmV0dXJuIDA7Cj4gIAo+ICAJLyogQ2FsY3VsYXRlIGFuZCBjYWNoZSBkYXRhIHJhdGUg
Zm9yIGVhY2ggcGxhbmUgKi8KPiAtCWRybV9hdG9taWNfY3J0Y19zdGF0ZV9mb3JfZWFjaF9wbGFu
ZV9zdGF0ZShwbGFuZSwgZHJtX3BsYW5lX3N0YXRlLCAmY3J0Y19zdGF0ZS0+YmFzZSkgewo+IC0J
CWVudW0gcGxhbmVfaWQgcGxhbmVfaWQgPSB0b19pbnRlbF9wbGFuZShwbGFuZSktPmlkOwo+IC0J
CWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUgPQo+IC0JCQl0b19p
bnRlbF9wbGFuZV9zdGF0ZShkcm1fcGxhbmVfc3RhdGUpOwo+ICsJaW50ZWxfYXRvbWljX2NydGNf
c3RhdGVfZm9yX2VhY2hfcGxhbmVfc3RhdGUocGxhbmUsIHBsYW5lX3N0YXRlLCBjcnRjX3N0YXRl
KSB7Cj4gKwkJZW51bSBwbGFuZV9pZCBwbGFuZV9pZCA9IHBsYW5lLT5pZDsKPiAgCQl1NjQgcmF0
ZTsKPiAgCj4gIAkJLyogcGFja2VkL3kgKi8KPiBAQCAtNDI1OSwxOCArNDI1MywxNiBAQCBzdGF0
aWMgdTY0Cj4gIGljbF9nZXRfdG90YWxfcmVsYXRpdmVfZGF0YV9yYXRlKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAJCQkJIHU2NCAqcGxhbmVfZGF0YV9yYXRlKQo+ICB7
Cj4gLQlzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZTsKPiAtCWNvbnN0IHN0cnVjdCBkcm1fcGxhbmVf
c3RhdGUgKmRybV9wbGFuZV9zdGF0ZTsKPiArCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7Cj4g
Kwljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlOwo+ICAJdTY0IHRv
dGFsX2RhdGFfcmF0ZSA9IDA7Cj4gIAo+ICAJaWYgKFdBUk5fT04oIWNydGNfc3RhdGUtPmJhc2Uu
c3RhdGUpKQo+ICAJCXJldHVybiAwOwo+ICAKPiAgCS8qIENhbGN1bGF0ZSBhbmQgY2FjaGUgZGF0
YSByYXRlIGZvciBlYWNoIHBsYW5lICovCj4gLQlkcm1fYXRvbWljX2NydGNfc3RhdGVfZm9yX2Vh
Y2hfcGxhbmVfc3RhdGUocGxhbmUsIGRybV9wbGFuZV9zdGF0ZSwgJmNydGNfc3RhdGUtPmJhc2Up
IHsKPiAtCQljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlID0KPiAt
CQkJdG9faW50ZWxfcGxhbmVfc3RhdGUoZHJtX3BsYW5lX3N0YXRlKTsKPiAtCQllbnVtIHBsYW5l
X2lkIHBsYW5lX2lkID0gdG9faW50ZWxfcGxhbmUocGxhbmUpLT5pZDsKPiArCWludGVsX2F0b21p
Y19jcnRjX3N0YXRlX2Zvcl9lYWNoX3BsYW5lX3N0YXRlKHBsYW5lLCBwbGFuZV9zdGF0ZSwgY3J0
Y19zdGF0ZSkgewo+ICsJCWVudW0gcGxhbmVfaWQgcGxhbmVfaWQgPSBwbGFuZS0+aWQ7Cj4gIAkJ
dTY0IHJhdGU7Cj4gIAo+ICAJCWlmICghcGxhbmVfc3RhdGUtPnBsYW5hcl9saW5rZWRfcGxhbmUp
IHsKPiBAQCAtNDI4Miw3ICs0Mjc0LDcgQEAgaWNsX2dldF90b3RhbF9yZWxhdGl2ZV9kYXRhX3Jh
dGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAo+ICAJCQkvKgo+ICAJ
CQkgKiBUaGUgc2xhdmUgcGxhbmUgbWlnaHQgbm90IGl0ZXJhdGUgaW4KPiAtCQkJICogZHJtX2F0
b21pY19jcnRjX3N0YXRlX2Zvcl9lYWNoX3BsYW5lX3N0YXRlKCksCj4gKwkJCSAqIGludGVsX2F0
b21pY19jcnRjX3N0YXRlX2Zvcl9lYWNoX3BsYW5lX3N0YXRlKCksCj4gIAkJCSAqIGFuZCBuZWVk
cyB0aGUgbWFzdGVyIHBsYW5lIHN0YXRlIHdoaWNoIG1heSBiZQo+ICAJCQkgKiBOVUxMIGlmIHdl
IHRyeSBnZXRfbmV3X3BsYW5lX3N0YXRlKCksIHNvIHdlCj4gIAkJCSAqIGFsd2F5cyBjYWxjdWxh
dGUgZnJvbSB0aGUgbWFzdGVyLgo+IEBAIC01MDY1LDggKzUwNTcsOCBAQCBzdGF0aWMgaW50IHNr
bF9idWlsZF9waXBlX3dtKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICB7
Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3Rh
dGUtPmJhc2UuY3J0Yy0+ZGV2KTsKPiAgCXN0cnVjdCBza2xfcGlwZV93bSAqcGlwZV93bSA9ICZj
cnRjX3N0YXRlLT53bS5za2wub3B0aW1hbDsKPiAtCXN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lOwo+
IC0JY29uc3Qgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqZHJtX3BsYW5lX3N0YXRlOwo+ICsJc3Ry
dWN0IGludGVsX3BsYW5lICpwbGFuZTsKPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqcGxhbmVfc3RhdGU7Cj4gIAlpbnQgcmV0Owo+ICAKPiAgCS8qCj4gQEAgLTUwNzUsMTAgKzUw
NjcsOCBAQCBzdGF0aWMgaW50IHNrbF9idWlsZF9waXBlX3dtKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQo+ICAJICovCj4gIAltZW1zZXQocGlwZV93bS0+cGxhbmVzLCAwLCBz
aXplb2YocGlwZV93bS0+cGxhbmVzKSk7Cj4gIAo+IC0JZHJtX2F0b21pY19jcnRjX3N0YXRlX2Zv
cl9lYWNoX3BsYW5lX3N0YXRlKHBsYW5lLCBkcm1fcGxhbmVfc3RhdGUsCj4gLQkJCQkJCSAgICZj
cnRjX3N0YXRlLT5iYXNlKSB7Cj4gLQkJY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpw
bGFuZV9zdGF0ZSA9Cj4gLQkJCXRvX2ludGVsX3BsYW5lX3N0YXRlKGRybV9wbGFuZV9zdGF0ZSk7
Cj4gKwlpbnRlbF9hdG9taWNfY3J0Y19zdGF0ZV9mb3JfZWFjaF9wbGFuZV9zdGF0ZShwbGFuZSwg
cGxhbmVfc3RhdGUsCj4gKwkJCQkJCSAgICAgY3J0Y19zdGF0ZSkgewo+ICAKPiAgCQlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPiAgCQkJcmV0ID0gaWNsX2J1aWxkX3BsYW5lX3dtKGNy
dGNfc3RhdGUsIHBsYW5lX3N0YXRlKTsKPiAtLSAKPiAyLjIzLjAKPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxp
c3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApNYXR0IFJvcGVyCkdy
YXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50
ZWwgQ29ycG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
