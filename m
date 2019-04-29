Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A914E6FD
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 17:55:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 824CB89142;
	Mon, 29 Apr 2019 15:55:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7843C89065
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 15:55:46 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 08:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,410,1549958400"; d="scan'208";a="227768903"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 29 Apr 2019 08:55:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 29 Apr 2019 18:55:41 +0300
Date: Mon, 29 Apr 2019 18:55:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20190429155541.GB24299@intel.com>
References: <20190429151023.25892-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429151023.25892-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix bug for GeminiLake
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com,
 martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBBcHIgMjksIDIwMTkgYXQgMDY6MTA6MjNQTSArMDMwMCwgU3RhbmlzbGF2IExpc292
c2tpeSB3cm90ZToKCj4gImRybS9pOTE1OiBGaXggYnVnIGZvciBHZW1pbmlMYWtlIgoKVGhlIHBh
dGNoIHN1YmplY3QgaXMgcmF0aGVyIGdlbmVyaWMuCgpXaXRoIHRoYXQgaW1wcm92ZWQKQWNrZWQt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CnNpbmNl
IHdlIGRpZG4ndCBtYW5hZ2VkIHRvIGNvbWUgdXAgd2l0aCBhIGdvb2QgZXhwbGFuYXRpb24KZm9y
IHRoZSBmYWlsdXJlLgoKUFMuIHlvdSBjYzplZCBtZSBvbiB0aGUgd3JvbmcgYWRkcmVzcwoKPiBX
aGVuIENEQ0xLIGlzIGFzIGxvdyBhcyA3OTIwMCwgcGljdHVyZSBnZXRzCj4gdW5zdGFibGUsIHdo
aWxlIERTSSBhbmQgREUgcGxsIHZhbHVlcyB3ZXJlCj4gY29uZmlybWVkIHRvIGJlIGNvcnJlY3Qu
Cj4gTGltaXRpbmcgdG8gMTU4NDAwIGFzIGFncmVlZCB3aXRoIFZpbGxlLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jIHwgOSArKysrKysr
KysKPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfY2RjbGsuYwo+IGluZGV4IGFlNDBhODY3OTMxNC4uMmIyM2Y4NTAwMzYyIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jCj4gQEAgLTIyNzcsNiArMjI3NywxNSBAQCBpbnQg
aW50ZWxfY3J0Y19jb21wdXRlX21pbl9jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKPiAgCSAgICBJU19WQUxMRVlWSUVXKGRldl9wcml2KSkKPiAgCQltaW5f
Y2RjbGsgPSBtYXgoMzIwMDAwLCBtaW5fY2RjbGspOwo+ICAKPiArCS8qCj4gKwkgKiBPbiBHZW1p
bmlsYWtlIG9uY2UgdGhlIENEQ0xLIGdldHMgYXMgbG93IGFzIDc5MjAwCj4gKwkgKiBwaWN0dXJl
IGdldHMgdW5zdGFibGUsIGRlc3BpdGUgdGhhdCB2YWx1ZXMgYXJlCj4gKwkgKiBjb3JyZWN0IGZv
ciBEU0kgUExMIGFuZCBERSBQTEwuCj4gKwkgKi8KPiArCWlmIChpbnRlbF9jcnRjX2hhc190eXBl
KGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9EU0kpICYmCj4gKwkgICAgSVNfR0VNSU5JTEFLRShk
ZXZfcHJpdikpCj4gKwkJbWluX2NkY2xrID0gbWF4KDE1ODQwMCwgbWluX2NkY2xrKTsKPiArCj4g
IAlpZiAobWluX2NkY2xrID4gZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxKSB7Cj4gIAkJRFJNX0RF
QlVHX0tNUygicmVxdWlyZWQgY2RjbGsgKCVkIGtIeikgZXhjZWVkcyBtYXggKCVkIGtIeilcbiIs
Cj4gIAkJCSAgICAgIG1pbl9jZGNsaywgZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxKTsKPiAtLSAK
PiAyLjE3LjEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
