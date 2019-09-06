Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE59AB70A
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 13:20:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB4789D83;
	Fri,  6 Sep 2019 11:20:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C705989D83
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 11:20:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 04:20:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,472,1559545200"; d="scan'208";a="177608913"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 06 Sep 2019 04:20:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2019 14:20:07 +0300
Date: Fri, 6 Sep 2019 14:20:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20190906112007.GP7482@intel.com>
References: <20190905213824.638-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905213824.638-1-matthew.d.roper@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Account for CD2X divider in ICL+
 vco calculation
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

T24gVGh1LCBTZXAgMDUsIDIwMTkgYXQgMDI6Mzg6MjRQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBXaGVuIGNhbGN1bGF0aW5nIHRoZSBQTEwgcmF0aW8gd2Ugd2VyZSBzdGlsbCBhc3N1bWlu
ZyB0aGF0IHRoZSBDRDJYCj4gZGl2aWRlciBpcyBhbHdheXMgLzEuICBGb3IgdGhlIG5ldyBmcmVx
dWVuY2llcyB0aGF0IHVzZSBhIC8yIGRpdmlkZXIKPiB0aGF0IG5lZWRzIHRvIGJlIGFjY291bnRl
ZCBmb3IsIG90aGVyd2lzZSBvdXIgVkNPIHJlc3VsdCB3aWxsIGJlIHR3aWNlCj4gYXMgbGFyZ2Ug
YXMgaXQgc2hvdWxkIGJlLgo+IAo+IEZpeGVzOiAzZDFkYTkyYmFmZmUgKCJkcm0vaTkxNTogQWRk
IDMyNG1oeiBhbmQgMzI2LjRtaHogY2RjbGtzIGZvciBnZW4xMSsiKQo+IENjOiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiBDYzogTHVjYXMgRGUgTWFyY2hp
IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMTcgKysrKysrKysrKysrKystLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+IGluZGV4IDEzMjlkM2U2MGUyNi4uNTU4
MDFhZWVmZDFjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYwo+IEBAIC0xNzk0LDYgKzE3OTQsNyBAQCBzdGF0aWMgaW50IGljbF9jYWxjX2NkY2xrKGlu
dCBtaW5fY2RjbGssIHVuc2lnbmVkIGludCByZWYpCj4gIAo+ICBzdGF0aWMgaW50IGljbF9jYWxj
X2NkY2xrX3BsbF92Y28oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgY2Rj
bGspCj4gIHsKPiArCWludCBjZDJ4ZGl2Owo+ICAJaW50IHJhdGlvOwo+ICAKPiAgCWlmIChjZGNs
ayA9PSBkZXZfcHJpdi0+Y2RjbGsuaHcuYnlwYXNzKQo+IEBAIC0xODA1LDI3ICsxODA2LDM3IEBA
IHN0YXRpYyBpbnQgaWNsX2NhbGNfY2RjbGtfcGxsX3ZjbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsIGludCBjZGNsaykKPiAgCQkvKiBmYWxsIHRocm91Z2ggKi8KPiAgCWNhc2Ug
MTcyODAwOgo+ICAJY2FzZSAzMDcyMDA6Cj4gLQljYXNlIDMyNjQwMDoKPiAgCWNhc2UgNTU2ODAw
Ogo+ICAJY2FzZSA2NTI4MDA6Cj4gKwkJY2QyeGRpdiA9IDE7Cj4gIAkJV0FSTl9PTihkZXZfcHJp
di0+Y2RjbGsuaHcucmVmICE9IDE5MjAwICYmCj4gIAkJCWRldl9wcml2LT5jZGNsay5ody5yZWYg
IT0gMzg0MDApOwo+ICAJCWJyZWFrOwo+ICAJY2FzZSAxODAwMDA6Cj4gIAljYXNlIDMxMjAwMDoK
PiAtCWNhc2UgMzI0MDAwOgo+ICAJY2FzZSA1NTIwMDA6Cj4gIAljYXNlIDY0ODAwMDoKPiArCQlj
ZDJ4ZGl2ID0gMTsKPiAgCQlXQVJOX09OKGRldl9wcml2LT5jZGNsay5ody5yZWYgIT0gMjQwMDAp
Owo+ICAJCWJyZWFrOwo+ICAJY2FzZSAxOTIwMDA6Cj4gKwkJY2QyeGRpdiA9IDE7Cj4gIAkJV0FS
Tl9PTihkZXZfcHJpdi0+Y2RjbGsuaHcucmVmICE9IDE5MjAwICYmCj4gIAkJCWRldl9wcml2LT5j
ZGNsay5ody5yZWYgIT0gMzg0MDAgJiYKPiAgCQkJZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiAhPSAy
NDAwMCk7Cj4gIAkJYnJlYWs7Cj4gKwljYXNlIDMyNjQwMDoKPiArCQljZDJ4ZGl2ID0gMjsKPiAr
CQlXQVJOX09OKGRldl9wcml2LT5jZGNsay5ody5yZWYgIT0gMTkyMDAgJiYKPiArCQkJZGV2X3By
aXYtPmNkY2xrLmh3LnJlZiAhPSAzODQwMCk7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIDMyNDAwMDoK
PiArCQljZDJ4ZGl2ID0gMjsKPiArCQlXQVJOX09OKGRldl9wcml2LT5jZGNsay5ody5yZWYgIT0g
MjQwMDApOwo+ICsJCWJyZWFrOwo+ICAJfQo+ICAKPiAtCXJhdGlvID0gY2RjbGsgLyAoZGV2X3By
aXYtPmNkY2xrLmh3LnJlZiAvIDIpOwo+ICsJcmF0aW8gPSBjZGNsayAvIChkZXZfcHJpdi0+Y2Rj
bGsuaHcucmVmIC8gY2QyeGRpdiAvIDIpOwo+ICAKPiAgCXJldHVybiBkZXZfcHJpdi0+Y2RjbGsu
aHcucmVmICogcmF0aW87CgpJc24ndCB0aGF0IGp1c3QgY2RjbGsqY2QyeGRpdioyID8KCkkgZG8g
a2luZGEgbGlrZSB0aGUgaWRlYSBvZiBub3QgaGFyZGNvZGluZyB0aGUgdmNvIHJhdGlvIGhlcmUu
CldlIHNob3VsZCBwcm9iYWJseSBkbyB0aGUgc2FtZSBmb3IgdGhlIG9sZGVyIHBsYXRmb3JtcyBh
cyB3ZWxsLi4uCgo+ICB9Cj4gLS0gCj4gMi4yMC4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
