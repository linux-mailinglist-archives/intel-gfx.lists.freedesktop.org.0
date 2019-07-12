Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DF9675C9
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 22:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53EAD6E393;
	Fri, 12 Jul 2019 20:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E39D56E391
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 20:16:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 13:16:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="166769276"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 12 Jul 2019 13:16:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Jul 2019 23:16:32 +0300
Date: Fri, 12 Jul 2019 23:16:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20190712201632.GP5942@intel.com>
References: <20190710213951.517-1-manasi.d.navare@intel.com>
 <20190710213951.517-2-manasi.d.navare@intel.com>
 <20190711103816.GR5942@intel.com> <20190712201552.GA3003@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712201552.GA3003@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/display/icl: Bump up the
 plane/fb height
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

T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMDE6MTU6NTNQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBPbiBUaHUsIEp1bCAxMSwgMjAxOSBhdCAwMTozODoxNlBNICswMzAwLCBWaWxsZSBT
eXJqw6Rsw6Qgd3JvdGU6Cj4gPiBPbiBXZWQsIEp1bCAxMCwgMjAxOSBhdCAwMjozOTo1MVBNIC0w
NzAwLCBNYW5hc2kgTmF2YXJlIHdyb3RlOgo+ID4gPiBPbiBJQ0wrLCB0aGUgbWF4IHN1cHBvcnRl
ZCBwbGFuZSBoZWlnaHQgaXMgNDMyMCwgc28gYnVtcCBpdCB1cAo+ID4gPiBUbyBzdXBwb3J0IDQz
MjAsIHdlIG5lZWQgdG8gaW5jcmVhc2UgdGhlIG51bWJlciBvZiBiaXRzIHVzZWQgdG8KPiA+ID4g
cmVhZCBwbGFuZV9oZWlnaHQgdG8gMTMgYXMgb3Bwb3NlZCB0byBvbGRlciAxMiBiaXRzLgo+ID4g
PiAKPiA+ID4gdjI6Cj4gPiA+ICogSUNMIHBsYW5lIGhlaWdodCBzdXBwb3J0ZWQgaXMgNDMyMCAo
VmlsbGUpCj4gPiA+ICogQWRkIGEgbmV3IGxpbmUgYmV0d2VlbiBtYXggd2lkdGggYW5kIG1heCBo
ZWlnaHQgKEpvc2UpCj4gPiA+IAo+ID4gPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4u
bGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hbmFzaSBO
YXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyMiArKysrKysrKysrKysr
KysrKystLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+ID4gPiBpbmRleCA5ODgzZjYwN2JiODguLmU0OTE1ZDY4MTQ3YSAxMDA2NDQK
PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
PiA+ID4gQEAgLTMzNDMsNiArMzM0MywxNiBAQCBzdGF0aWMgaW50IGljbF9tYXhfcGxhbmVfd2lk
dGgoY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsCj4gPiA+ICAJcmV0dXJuIDUxMjA7
Cj4gPiA+ICB9Cj4gPiA+ICAKPiA+ID4gK3N0YXRpYyBpbnQgc2tsX21heF9wbGFuZV9oZWlnaHQo
dm9pZCkKPiA+ID4gK3sKPiA+ID4gKwlyZXR1cm4gNDA5NjsKPiA+ID4gK30KPiA+ID4gKwo+ID4g
PiArc3RhdGljIGludCBpY2xfbWF4X3BsYW5lX2hlaWdodCh2b2lkKQo+ID4gPiArewo+ID4gPiAr
CXJldHVybiA0MzIwOwo+ID4gPiArfQo+ID4gPiArCj4gPiA+ICBzdGF0aWMgYm9vbCBza2xfY2hl
Y2tfbWFpbl9jY3NfY29vcmRpbmF0ZXMoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9z
dGF0ZSwKPiA+ID4gIAkJCQkJICAgaW50IG1haW5feCwgaW50IG1haW5feSwgdTMyIG1haW5fb2Zm
c2V0KQo+ID4gPiAgewo+ID4gPiBAQCAtMzM5MSw3ICszNDAxLDcgQEAgc3RhdGljIGludCBza2xf
Y2hlY2tfbWFpbl9zdXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUp
Cj4gPiA+ICAJaW50IHcgPSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPmJhc2Uuc3JjKSA+
PiAxNjsKPiA+ID4gIAlpbnQgaCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPmJhc2Uu
c3JjKSA+PiAxNjsKPiA+ID4gIAlpbnQgbWF4X3dpZHRoOwo+ID4gPiAtCWludCBtYXhfaGVpZ2h0
ID0gNDA5NjsKPiA+ID4gKwlpbnQgbWF4X2hlaWdodDsKPiA+ID4gIAl1MzIgYWxpZ25tZW50LCBv
ZmZzZXQsIGF1eF9vZmZzZXQgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMV0ub2Zmc2V0Owo+
ID4gPiAgCj4gPiA+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCj4gPiA+IEBAIC0z
NDAxLDYgKzM0MTEsMTEgQEAgc3RhdGljIGludCBza2xfY2hlY2tfbWFpbl9zdXJmYWNlKHN0cnVj
dCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gPiA+ICAJZWxzZQo+ID4gPiAgCQlt
YXhfd2lkdGggPSBza2xfbWF4X3BsYW5lX3dpZHRoKGZiLCAwLCByb3RhdGlvbik7Cj4gPiA+ICAK
PiA+ID4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPiA+ID4gKwkJbWF4X2hlaWdo
dCA9IGljbF9tYXhfcGxhbmVfaGVpZ2h0KCk7Cj4gPiA+ICsJZWxzZQo+ID4gPiArCQltYXhfaGVp
Z2h0ID0gc2tsX21heF9wbGFuZV9oZWlnaHQoKTsKPiA+ID4gKwo+ID4gPiAgCWlmICh3ID4gbWF4
X3dpZHRoIHx8IGggPiBtYXhfaGVpZ2h0KSB7Cj4gPiA+ICAJCURSTV9ERUJVR19LTVMoInJlcXVl
c3RlZCBZL1JHQiBzb3VyY2Ugc2l6ZSAlZHglZCB0b28gYmlnIChsaW1pdCAlZHglZClcbiIsCj4g
PiA+ICAJCQkgICAgICB3LCBoLCBtYXhfd2lkdGgsIG1heF9oZWlnaHQpOwo+ID4gPiBAQCAtOTg2
NSw3ICs5ODgwLDEwIEBAIHNreWxha2VfZ2V0X2luaXRpYWxfcGxhbmVfY29uZmlnKHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjLAo+ID4gPiAgCW9mZnNldCA9IEk5MTVfUkVBRChQTEFORV9PRkZTRVQo
cGlwZSwgcGxhbmVfaWQpKTsKPiA+ID4gIAo+ID4gPiAgCXZhbCA9IEk5MTVfUkVBRChQTEFORV9T
SVpFKHBpcGUsIHBsYW5lX2lkKSk7Cj4gPiA+IC0JZmItPmhlaWdodCA9ICgodmFsID4+IDE2KSAm
IDB4ZmZmKSArIDE7Cj4gPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCj4gPiA+
ICsJCWZiLT5oZWlnaHQgPSAoKHZhbCA+PiAxNikgJiAweDFmZmYpICsgMTsKPiA+ID4gKwllbHNl
Cj4gPiA+ICsJCWZiLT5oZWlnaHQgPSAoKHZhbCA+PiAxNikgJiAweGZmZikgKyAxOwo+ID4gPiAg
CWZiLT53aWR0aCA9ICgodmFsID4+IDApICYgMHgxZmZmKSArIDE7Cj4gPiAKPiA+IFRoZSBleHRy
YSBiaXRzIHNob3VsZCBiZSBtYnogSSB0aGluaywgc28gbm8gbmVlZCBmb3IgdGhlICdpZicuCj4g
PiBKdXN0IHVzZSAweDFmZmYgYWx3YXlzLCBvciBldmVuIGV4dGVuZCBib3RoIG1hc2tzIHRvIDB4
ZmZmZi4KPiAKPiBZZXMgSSBkb3VibGUgY2hlY2tlZCwgYWxsIHRoZSBleHRyYSBiaXRzICgzMToy
OCkgZm9yIG9sZGVyIHBsYXRmb3Jtcwo+IGFyZSBNQlogc28geWVzIEkgd2lsbCBqdXN0IHVzZSAw
eGZmZmYgYXMgdGhlIG1hc2sgdGhlbgo+IAo+ID4gCj4gPiBMb29rcyBsaWtlIGk5eHhfZ2V0X2lu
aXRpYWxfcGxhbmVfY29uZmlnKCkgaXMgYWxzbyBtaXNzaW5nIGEgYml0IG9yIHR3bywKPiA+IHdo
aWNoIHNob3VsZCBiZSBmaXhlZCB3aXRoIGEgc2VwYXJhdGUgcGF0Y2guCj4gCj4gQnV0IGlzbnQg
dGhhdCBob29rIGZvciBvbGRlciBwbGF0Zm9ybXM/CgpZZXMgaXQgaXMuCgotLSAKVmlsbGUgU3ly
asOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
