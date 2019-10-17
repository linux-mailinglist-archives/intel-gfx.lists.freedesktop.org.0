Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37692DABC5
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 14:12:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7554489F89;
	Thu, 17 Oct 2019 12:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C945B89F89
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 12:12:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 05:12:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,307,1566889200"; d="scan'208";a="208671546"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 17 Oct 2019 05:12:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Oct 2019 15:12:06 +0300
Date: Thu, 17 Oct 2019 15:12:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20191017121206.GR1208@intel.com>
References: <20191015190538.27539-1-ville.syrjala@linux.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F822746B1@BGSMSX104.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F822746B1@BGSMSX104.gar.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix MST oops due to MSA changes
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMTYsIDIwMTkgYXQgMDI6NTk6NDVQTSArMDAwMCwgU2hhbmthciwgVW1hIHdy
b3RlOgo+IAo+IAo+ID4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID5Gcm9tOiBWaWxsZSBT
eXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+U2VudDogV2VkbmVzZGF5
LCBPY3RvYmVyIDE2LCAyMDE5IDEyOjM2IEFNCj4gPlRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gPkNjOiBNdW4sIEd3YW4tZ3llb25nIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwu
Y29tPjsgU2hhbmthciwgVW1hCj4gPjx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4gPlN1YmplY3Q6
IFtQQVRDSF0gZHJtL2k5MTU6IEZpeCBNU1Qgb29wcyBkdWUgdG8gTVNBIGNoYW5nZXMKPiA+Cj4g
PkZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Pgo+ID5UaGUgTVNBIE1JU0MgY29tcHV0YXRpb24gbm93IGRlcGVuZHMgb24gdGhlIGNvbm5lY3Rv
ciBzdGF0ZSwgYW5kIHdlIGRvIGl0IGZyb20KPiA+dGhlIERESSAucHJlX2VuYWJsZSgpIGhvb2su
IEFsbCB0aGF0IGlzIGZpbmUgZm9yIERQIFNTVCBidXQgd2l0aCBNU1Qgd2UgZG9uJ3QgYWN0dWFs
bHkKPiA+cGFzcyB0aGUgY29ubmVjdG9yIHN0YXRlIHRvIHRoZSBkaWcgcG9ydCdzIC5wcmVfZW5h
YmxlKCkgaG9vayB3aGljaCBsZWFkcyB0byBhbiBvb3BzLgo+ID4KPiA+TmVlZCB0byB0aGluayBt
b3JlIGhvdyB0byBzb2x2ZSB0aGlzIGluIGEgY2xlYW5lciBmYXNoaW9uLCBidXQgZm9yIG5vdyBs
ZXQncyBqdXN0IGFkZCBhCj4gPk5VTEwgY2hlY2sgdG8gc3RvcCB0aGUgb29wc2luZy4KPiAKPiBM
b29rcyBnb29kIHRvIG1lLiBXZSB3aWxsIGhhdmUgdG8gaGFuZGxlIGNvbG9yc3BhY2VzIGZvciBN
U1QgcHJvcGVybHkuCgpZZWFoLCBpbiBmYWN0IGp1c3QgcmVhbGl6ZWQgdGhhdCB0aGlzIGlzIGEg
dHJhbnNjb2RlciByZWdpc3RlciBzbyB3ZSdyZQpubyBsb25nZXIgY29uZmlndXJpbmcgTVNBIE1J
U0MgZm9yIGFueXRoaW5nIGJ1dCB0aGUgZmlyc3QgTVNUIHN0cmVhbS4KVGhlIG90aGVyIHN0cmVh
bXMgd2lsbCBsZWF2ZSBUUkFOU19NU0FfTUlTQyB1bnRvdWNoZWQuIFNvIEkgZ3Vlc3Mgd2UKbmVl
ZCB0byBtb3ZlIHRoaXMgaW50byB0aGUgTVNUIGNvZGUgcHJvcGVyLCBhbmQgaWYgaXQgbmVlZHMg
dG8gYmUgbGVmdAppbiBkZGlfcHJlX2VuYWJsZSgpIGZvciBTU1Qgd2UgcHJvYmFibHkgd2FudCB0
byBleGNsdWRlIGl0IGdldHRpbmcKcHJvZ3JhbW1pbmcgdGhlcmUgZm9yIE1TVCB0aGVyZS4gQW55
IHZvbHVudGVlcnM/CgpQdXNoZWQuIFRoYW5rcyBmb3IgdGhlIHJldmlld3MuCgo+IEJ1dCB0aGF0
IGNhbiBiZQo+IGRvbmUgbGF0ZXIuIFRoYW5rcyBmb3IgaWRlbnRpZnlpbmcgYW5kIGZpeGluZyB0
aGlzLgo+IFJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgo+
IAo+ID5DYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgo+ID5D
YzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KPiA+Rml4ZXM6IDBjMDZmYTE1
NjAwNiAoImRybS9pOTE1L2RwOiBBZGQgc3VwcG9ydCBvZiBCVC4yMDIwIENvbG9yaW1ldHJ5IHRv
IERQIE1TQSIpCj4gPlNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Cj4gPi0tLQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYyB8IDQgKysrLQo+ID4gMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+ID4KPiA+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiA+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jCj4gPmluZGV4IDgwZjhlMjY5OGJlMC4uNGM4MTQ0OWVjMTQ0IDEwMDY0NAo+ID4t
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gPisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiA+QEAgLTE3OTQsOCArMTc5
NCwxMCBAQCB2b2lkIGludGVsX2RkaV9zZXRfZHBfbXNhKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlCj4gPipjcnRjX3N0YXRlLAo+ID4gCSAqIG9mIENvbG9yIEVuY29kaW5nIEZvcm1hdCBh
bmQgQ29udGVudCBDb2xvciBHYW11dF0gd2hpbGUgc2VuZGluZwo+ID4gCSAqIFlDQkNSIDQyMCwg
SERSIEJULjIwMjAgc2lnbmFscyB3ZSBzaG91bGQgcHJvZ3JhbSBNU0EgTUlTQzEgZmllbGRzCj4g
PiAJICogd2hpY2ggaW5kaWNhdGUgVlNDIFNEUCBmb3IgdGhlIFBpeGVsIEVuY29kaW5nL0NvbG9y
aW1ldHJ5IEZvcm1hdC4KPiA+KwkgKgo+ID4rCSAqIEZJWE1FIE1TVCBkb2Vzbid0IHBhc3MgaW4g
dGhlIGNvbm5fc3RhdGUKPiA+IAkgKi8KPiA+LQlpZiAoaW50ZWxfZHBfbmVlZHNfdnNjX3NkcChj
cnRjX3N0YXRlLCBjb25uX3N0YXRlKSkKPiA+KwlpZiAoY29ubl9zdGF0ZSAmJiBpbnRlbF9kcF9u
ZWVkc192c2Nfc2RwKGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpKQo+ID4gCQl0ZW1wIHw9IERQX01T
QV9NSVNDX0NPTE9SX1ZTQ19TRFA7Cj4gPgo+ID4gCUk5MTVfV1JJVEUoVFJBTlNfTVNBX01JU0Mo
Y3B1X3RyYW5zY29kZXIpLCB0ZW1wKTsKPiA+LS0KPiA+Mi4yMS4wCj4gCgotLSAKVmlsbGUgU3ly
asOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
