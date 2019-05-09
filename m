Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A9B192E0
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 21:24:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51DBD89E35;
	Thu,  9 May 2019 19:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8645E89E35
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 19:24:06 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 12:24:05 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 09 May 2019 12:24:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 May 2019 22:24:02 +0300
Date: Thu, 9 May 2019 22:24:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20190509192402.GK24299@intel.com>
References: <1557429108-8004-1-git-send-email-uma.shankar@intel.com>
 <1557429108-8004-4-git-send-email-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557429108-8004-4-git-send-email-uma.shankar@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/icl: Fixed Input CSC
 Co-efficients for BT601/709
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

T24gRnJpLCBNYXkgMTAsIDIwMTkgYXQgMTI6NDE6NDhBTSArMDUzMCwgVW1hIFNoYW5rYXIgd3Jv
dGU6Cj4gSW5wdXQgQ1NDIENvLWVmZmljaWVudHMgZm9yIEJUNjAxIGFuZCBCVDcwOSBZQ2JDUiB0
byBSR0IKPiBjb252ZXJzaW9uIHdlcmUgc2xpZ2h0bHkgb2ZmLiBGaXhlZCB0aGUgc2FtZS4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYyB8IDI0ICsrKysrKysrKysr
Ky0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTIgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nw
cml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKPiBpbmRleCBjOWM5
NzBmLi4xMjM5NDU3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nw
cml0ZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKPiBAQCAt
NDMwLDcgKzQzMCw3IEBAIGludCBpbnRlbF9wbGFuZV9jaGVja19zcmNfY29vcmRpbmF0ZXMoc3Ry
dWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKPiAgCQkgKi8KPiAgCQlbRFJNX0NP
TE9SX1lDQkNSX0JUNzA5XSA9IHsKPiAgCQkJMHg3Qzk4LCAweDc4MDAsIDB4MCwKPiAtCQkJMHg5
RUY4LCAweDc4MDAsIDB4QUJGOCwKPiArCQkJMHg5RUY4LCAweDc4MDAsIDB4QUMwMCwKPiAgCQkJ
MHgwLCAweDc4MDAsICAweDdFRDgsCj4gIAkJfSwKPiAgCQkvKgo+IEBAIC00NTMsMjUgKzQ1Mywy
NSBAQCBpbnQgaW50ZWxfcGxhbmVfY2hlY2tfc3JjX2Nvb3JkaW5hdGVzKHN0cnVjdCBpbnRlbF9w
bGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gIAkJICogQlQuNjAxIExpbXRlZCByYW5nZSBZQ2JD
ciAtPiBmdWxsIHJhbmdlIFJHQgo+ICAJCSAqIFRoZSBtYXRyaXggcmVxdWlyZWQgaXMgOgo+ICAJ
CSAqIFsxLjE2NDM4NCwgMC4wMDAsIDEuNTk2MzcwLAo+IC0JCSAqICAxLjEzODM5MywgLTAuMzgy
NTAwLCAtMC43OTQ1OTgsCj4gLQkJICogIDEuMTM4MzkzLCAxLjk3MTY5NiwgMC4wMDAwXQo+ICsJ
CSAqICAxLjE2NDM4NCwgLTAuMzgyNTAwLCAtMC43OTQ1OTgsCj4gKwkJICogIDEuMTY0Mzg0LCAx
Ljk3MTY5NiwgMC4wMDAwXQoKU3RpbGwgbm90IHF1aXRlIHdoYXQgSSdtIGdldHRpbmcgaGVyZToK
MS4xNjQzODQgIDAuMDAwMDAwICAxLjU5NjAyNwoxLjE2NDM4NCAtMC4zOTE3NjIgLTAuODEyOTY4
CjEuMTY0Mzg0ICAyLjAxNzIzMiAgMC4wMDAwMDAKCj4gIAkJICovCj4gIAkJW0RSTV9DT0xPUl9Z
Q0JDUl9CVDYwMV0gPSB7Cj4gLQkJCTB4N0NDOCwgMHg3OTUwLCAweDAsCj4gLQkJCTB4OENCOCwg
MHg3OTE4LCAweDlDNDAsCj4gLQkJCTB4MCwgMHg3OTE4LCAweDdGQzgsCj4gKwkJCTB4N0M4MCwg
MHg3OTUwLCAweDAsCj4gKwkJCTB4OENCOCwgMHg3OTUwLCAweDlDNDAsCj4gKwkJCTB4MCwgMHg3
OTUwLCAweDdGQzgsCj4gIAkJfSwKPiAgCQkvKgo+ICAJCSAqIEJULjcwOSBMaW1pdGVkIHJhbmdl
IFlDYkNyIC0+IGZ1bGwgcmFuZ2UgUkdCCj4gIAkJICogVGhlIG1hdHJpeCByZXF1aXJlZCBpcyA6
Cj4gLQkJICogWzEuMTY0LCAwLjAwMCwgMS44MzM2NzEsCj4gLQkJICogIDEuMTM4MzkzLCAtMC4y
MTMyNDksIC0wLjUzMjkwOSwKPiAtCQkgKiAgMS4xMzgzOTMsIDIuMTEyNDAyLCAwLjAwMDBdCj4g
KwkJICogWzEuMTY0Mzg0LCAwLjAwMCwgMS43OTI3NDEsCj4gKwkJICogIDEuMTY0Mzg0LCAtMC4y
MTMyNDksIC0wLjUzMjkwOSwKPiArCQkgKiAgMS4xNjQzODQsIDIuMTEyNDAyLCAwLjAwMDBdCj4g
IAkJICovCgpUaGlzIG9uZSBtYXRjaGVzIHdoYXQgSSdtIGdldHRpbmcuCgo+ICAJCVtEUk1fQ09M
T1JfWUNCQ1JfQlQ3MDldID0gewo+IC0JCQkweDdFQTgsIDB4Nzk1MCwgMHgwLAo+IC0JCQkweDg4
ODgsIDB4NzkxOCwgMHhBREE4LAo+IC0JCQkweDAsIDB4NzkxOCwgIDB4Njg3MCwKPiArCQkJMHg3
RTU4LCAweDc5NTAsIDB4MCwKPiArCQkJMHg4ODg4LCAweDc5NTAsIDB4QURBOCwKPiArCQkJMHgw
LCAweDc5NTAsICAweDY4NzAsCj4gIAkJfSwKPiAgCQkvKgo+ICAJCSAqIEJULjIwMjAgTGltaXRl
ZCByYW5nZSBZQ2JDciAtPiBmdWxsIHJhbmdlIFJHQgo+IC0tIAo+IDEuOS4xCgotLSAKVmlsbGUg
U3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
