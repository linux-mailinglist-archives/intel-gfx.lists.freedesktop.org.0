Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 006F03CB0B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 14:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2100489129;
	Tue, 11 Jun 2019 12:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4924289129
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 12:21:46 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 05:21:45 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 11 Jun 2019 05:21:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2019 15:21:43 +0300
Date: Tue, 11 Jun 2019 15:21:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190611122143.GD5942@intel.com>
References: <20190610194515.7030-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610194515.7030-1-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [REBASED PATCH 1/2] drm/i915: Move
 intel_add_dsi_properties to intel_dsi
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

T24gTW9uLCBKdW4gMTAsIDIwMTkgYXQgMTA6NDU6MTRQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gRnJvbTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+
Cj4gCj4gU2luY2UgaW50ZWxfYWRkX2RzaV9wcm9wZXJ0aWVzIHdpbGwgYmUgdXNlZCBieSBvdGhl
cgo+IHBsYXRmb3JtcyB0b28gbW92ZSBpdCBvdXQgb2YgcGxhdGZvcm0gc3BlY2lmaWMgZmlsZS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGlu
dGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2kuYyB8IDMyICsrKysr
KysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2kuaCB8
ICAzICsrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS92bHZfZHNpLmMgICB8IDQyICstLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDMgZmlsZXMgY2hhbmdlZCwgMzYgaW5zZXJ0aW9u
cygrKSwgNDEgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNpLmMKPiBpbmRl
eCA1ZmVjMDJhY2VhZWQuLjI2MTI0YThmZTUzMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kc2kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rz
aS5jCj4gQEAgLTExNiw2ICsxMTYsMTIgQEAgaW50ZWxfZHNpX2dldF9wYW5lbF9vcmllbnRhdGlv
bihzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCj4gIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYpOwo+ICAJZW51
bSBkcm1fcGFuZWxfb3JpZW50YXRpb24gb3JpZW50YXRpb247Cj4gIAo+ICsJaWYgKElTX1ZBTExF
WVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKSB7Cj4gKwkJb3JpZW50
YXRpb24gPSB2bHZfZHNpX2dldF9od19wYW5lbF9vcmllbnRhdGlvbihjb25uZWN0b3IpOwo+ICsJ
CWlmIChvcmllbnRhdGlvbiAhPSBEUk1fTU9ERV9QQU5FTF9PUklFTlRBVElPTl9VTktOT1dOKQo+
ICsJCQlyZXR1cm4gb3JpZW50YXRpb247Cj4gKwl9Cj4gKwo+ICAJb3JpZW50YXRpb24gPSBkZXZf
cHJpdi0+dmJ0LmRzaS5vcmllbnRhdGlvbjsKPiAgCWlmIChvcmllbnRhdGlvbiAhPSBEUk1fTU9E
RV9QQU5FTF9PUklFTlRBVElPTl9VTktOT1dOKQo+ICAJCXJldHVybiBvcmllbnRhdGlvbjsKPiBA
QCAtMTI2LDMgKzEzMiwyOSBAQCBpbnRlbF9kc2lfZ2V0X3BhbmVsX29yaWVudGF0aW9uKHN0cnVj
dCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiAgCj4gIAlyZXR1cm4gRFJNX01PREVfUEFO
RUxfT1JJRU5UQVRJT05fTk9STUFMOwo+ICB9Cj4gKwo+ICt2b2lkIGludGVsX2RzaV9hZGRfcHJv
cGVydGllcyhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCj4gK3sKPiArCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY29ubmVjdG9yLT5iYXNlLmRl
dik7Cj4gKwo+ICsJaWYgKGNvbm5lY3Rvci0+cGFuZWwuZml4ZWRfbW9kZSkgewo+ICsJCXUzMiBh
bGxvd2VkX3NjYWxlcnM7Cj4gKwo+ICsJCWFsbG93ZWRfc2NhbGVycyA9IEJJVChEUk1fTU9ERV9T
Q0FMRV9BU1BFQ1QpIHwKPiArCQkJCQlCSVQoRFJNX01PREVfU0NBTEVfRlVMTFNDUkVFTik7Cj4g
KwkJaWYgKCFIQVNfR01DSChkZXZfcHJpdikpCj4gKwkJCWFsbG93ZWRfc2NhbGVycyB8PSBCSVQo
RFJNX01PREVfU0NBTEVfQ0VOVEVSKTsKPiArCj4gKwkJZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfc2Nh
bGluZ19tb2RlX3Byb3BlcnR5KCZjb25uZWN0b3ItPmJhc2UsCj4gKwkJCQkJCQkJYWxsb3dlZF9z
Y2FsZXJzKTsKPiArCj4gKwkJY29ubmVjdG9yLT5iYXNlLnN0YXRlLT5zY2FsaW5nX21vZGUgPSBE
Uk1fTU9ERV9TQ0FMRV9BU1BFQ1Q7Cj4gKwo+ICsJCWNvbm5lY3Rvci0+YmFzZS5kaXNwbGF5X2lu
Zm8ucGFuZWxfb3JpZW50YXRpb24gPQo+ICsJCQlpbnRlbF9kc2lfZ2V0X3BhbmVsX29yaWVudGF0
aW9uKGNvbm5lY3Rvcik7Cj4gKwkJZHJtX2Nvbm5lY3Rvcl9pbml0X3BhbmVsX29yaWVudGF0aW9u
X3Byb3BlcnR5KAo+ICsJCQkJJmNvbm5lY3Rvci0+YmFzZSwKPiArCQkJCWNvbm5lY3Rvci0+cGFu
ZWwuZml4ZWRfbW9kZS0+aGRpc3BsYXksCj4gKwkJCQljb25uZWN0b3ItPnBhbmVsLmZpeGVkX21v
ZGUtPnZkaXNwbGF5KTsKCkkgdGhpbmsgSSdkIHJhdGhlciBqdXN0IGR1cGxpY2F0ZSB0aGUgcmVx
dWlyZWQgcGFydHMgaW4gdGhlIGljbCBjb2RlLgpUaGF0IHdheSB3ZSBkb24ndCBoYXZlIHRvIGhh
dmUgVkxWL0NIViBzcGVjaWZpYyBzdHVmZiBpbiB0aGUgZ2VuZXJpYwpjb2RlLgoKPiArCX0KPiAr
fQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2kuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzaS5oCj4gaW5kZXggNmQyMDQzNDYzNmNkLi4xMWY3YmZi
MjgyOTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNpLmgKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2kuaAo+IEBAIC0xNjIsNiArMTYyLDcg
QEAgaW50IGludGVsX2RzaV9iaXRyYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2Rz
aSk7Cj4gIGludCBpbnRlbF9kc2lfdGxweF9ucyhjb25zdCBzdHJ1Y3QgaW50ZWxfZHNpICppbnRl
bF9kc2kpOwo+ICBlbnVtIGRybV9wYW5lbF9vcmllbnRhdGlvbgo+ICBpbnRlbF9kc2lfZ2V0X3Bh
bmVsX29yaWVudGF0aW9uKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvcik7Cj4gK3Zv
aWQgaW50ZWxfZHNpX2FkZF9wcm9wZXJ0aWVzKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5l
Y3Rvcik7Cj4gIAo+ICAvKiB2bHZfZHNpLmMgKi8KPiAgdm9pZCB2bHZfZHNpX3dhaXRfZm9yX2Zp
Zm9fZW1wdHkoc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpLCBlbnVtIHBvcnQgcG9ydCk7Cj4g
QEAgLTE3Myw2ICsxNzQsOCBAQCBzdHJ1Y3QgaW50ZWxfZHNpX2hvc3QgKmludGVsX2RzaV9ob3N0
X2luaXQoc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpLAo+ICAJCQkJCSAgIGNvbnN0IHN0cnVj
dCBtaXBpX2RzaV9ob3N0X29wcyAqZnVuY3MsCj4gIAkJCQkJICAgZW51bSBwb3J0IHBvcnQpOwo+
ICB2b2lkIHZsdl9kc2lfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwo+
ICtlbnVtIGRybV9wYW5lbF9vcmllbnRhdGlvbgo+ICt2bHZfZHNpX2dldF9od19wYW5lbF9vcmll
bnRhdGlvbihzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpOwo+ICAKPiAgLyogdmx2
X2RzaV9wbGwuYyAqLwo+ICBpbnQgdmx2X2RzaV9wbGxfY29tcHV0ZShzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2Rz
aS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jCj4gaW5kZXggZTI3MmQ4MjYyMTBh
Li45ZjkxMTYyM2Q2ODUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2Rz
aS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jCj4gQEAgLTE1OTEsNyAr
MTU5MSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9mdW5jcyBpbnRlbF9k
c2lfY29ubmVjdG9yX2Z1bmNzID0gewo+ICAJLmF0b21pY19kdXBsaWNhdGVfc3RhdGUgPSBpbnRl
bF9kaWdpdGFsX2Nvbm5lY3Rvcl9kdXBsaWNhdGVfc3RhdGUsCj4gIH07Cj4gIAo+IC1zdGF0aWMg
ZW51bSBkcm1fcGFuZWxfb3JpZW50YXRpb24KPiArZW51bSBkcm1fcGFuZWxfb3JpZW50YXRpb24K
PiAgdmx2X2RzaV9nZXRfaHdfcGFuZWxfb3JpZW50YXRpb24oc3RydWN0IGludGVsX2Nvbm5lY3Rv
ciAqY29ubmVjdG9yKQo+ICB7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYpOwo+IEBAIC0xNjI5LDQ2ICsxNjI5LDYgQEAg
dmx2X2RzaV9nZXRfaHdfcGFuZWxfb3JpZW50YXRpb24oc3RydWN0IGludGVsX2Nvbm5lY3RvciAq
Y29ubmVjdG9yKQo+ICAJcmV0dXJuIG9yaWVudGF0aW9uOwo+ICB9Cj4gIAo+IC1zdGF0aWMgZW51
bSBkcm1fcGFuZWxfb3JpZW50YXRpb24KPiAtdmx2X2RzaV9nZXRfcGFuZWxfb3JpZW50YXRpb24o
c3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+IC17Cj4gLQlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYpOwo+IC0J
ZW51bSBkcm1fcGFuZWxfb3JpZW50YXRpb24gb3JpZW50YXRpb247Cj4gLQo+IC0JaWYgKElTX1ZB
TExFWVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKSB7Cj4gLQkJb3Jp
ZW50YXRpb24gPSB2bHZfZHNpX2dldF9od19wYW5lbF9vcmllbnRhdGlvbihjb25uZWN0b3IpOwo+
IC0JCWlmIChvcmllbnRhdGlvbiAhPSBEUk1fTU9ERV9QQU5FTF9PUklFTlRBVElPTl9VTktOT1dO
KQo+IC0JCQlyZXR1cm4gb3JpZW50YXRpb247Cj4gLQl9Cj4gLQo+IC0JcmV0dXJuIGludGVsX2Rz
aV9nZXRfcGFuZWxfb3JpZW50YXRpb24oY29ubmVjdG9yKTsKPiAtfQo+IC0KPiAtc3RhdGljIHZv
aWQgaW50ZWxfZHNpX2FkZF9wcm9wZXJ0aWVzKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5l
Y3RvcikKPiAtewo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkx
NShjb25uZWN0b3ItPmJhc2UuZGV2KTsKPiAtCj4gLQlpZiAoY29ubmVjdG9yLT5wYW5lbC5maXhl
ZF9tb2RlKSB7Cj4gLQkJdTMyIGFsbG93ZWRfc2NhbGVyczsKPiAtCj4gLQkJYWxsb3dlZF9zY2Fs
ZXJzID0gQklUKERSTV9NT0RFX1NDQUxFX0FTUEVDVCkgfCBCSVQoRFJNX01PREVfU0NBTEVfRlVM
TFNDUkVFTik7Cj4gLQkJaWYgKCFIQVNfR01DSChkZXZfcHJpdikpCj4gLQkJCWFsbG93ZWRfc2Nh
bGVycyB8PSBCSVQoRFJNX01PREVfU0NBTEVfQ0VOVEVSKTsKPiAtCj4gLQkJZHJtX2Nvbm5lY3Rv
cl9hdHRhY2hfc2NhbGluZ19tb2RlX3Byb3BlcnR5KCZjb25uZWN0b3ItPmJhc2UsCj4gLQkJCQkJ
CQkJYWxsb3dlZF9zY2FsZXJzKTsKPiAtCj4gLQkJY29ubmVjdG9yLT5iYXNlLnN0YXRlLT5zY2Fs
aW5nX21vZGUgPSBEUk1fTU9ERV9TQ0FMRV9BU1BFQ1Q7Cj4gLQo+IC0JCWNvbm5lY3Rvci0+YmFz
ZS5kaXNwbGF5X2luZm8ucGFuZWxfb3JpZW50YXRpb24gPQo+IC0JCQl2bHZfZHNpX2dldF9wYW5l
bF9vcmllbnRhdGlvbihjb25uZWN0b3IpOwo+IC0JCWRybV9jb25uZWN0b3JfaW5pdF9wYW5lbF9v
cmllbnRhdGlvbl9wcm9wZXJ0eSgKPiAtCQkJCSZjb25uZWN0b3ItPmJhc2UsCj4gLQkJCQljb25u
ZWN0b3ItPnBhbmVsLmZpeGVkX21vZGUtPmhkaXNwbGF5LAo+IC0JCQkJY29ubmVjdG9yLT5wYW5l
bC5maXhlZF9tb2RlLT52ZGlzcGxheSk7Cj4gLQl9Cj4gLX0KPiAtCj4gICNkZWZpbmUgTlNfS0ha
X1JBVElPCQkxMDAwMDAwCj4gIAo+ICAjZGVmaW5lIFBSRVBBUkVfQ05UX01BWAkJMHgzRgo+IC0t
IAo+IDIuMjAuMQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
