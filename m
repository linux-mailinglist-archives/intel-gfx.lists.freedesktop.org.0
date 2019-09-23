Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F61BB715
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 16:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B3FB6E328;
	Mon, 23 Sep 2019 14:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C99356E328;
 Mon, 23 Sep 2019 14:48:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 07:48:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,540,1559545200"; d="scan'208";a="189080612"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 23 Sep 2019 07:48:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2019 17:48:31 +0300
Date: Mon, 23 Sep 2019 17:48:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190923144831.GL1208@intel.com>
References: <20190923092432.14793-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923092432.14793-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_render_copy: Add
 hang detector
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgMTA6MjQ6MzJBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IERpZSBlYXJseSBpZiB0aGUgR1BVIGhhbmdzIGR1cmluZyBvdXIgYmFzaWMgcmVuZGVy
IGNvcHkgdGVzdGluZywgYW5kCj4gY2xlYW4gdXAgcmF0aGVyIHRoYW4gd2FpdGluZyBmb3IgbXVs
dGlwbGUgZGlmZmVyZW50IGZhaWxpbmcgYmF0Y2hlcwo+IGJlZm9yZSBkZXRlY3Rpbmcgb3VyIGZh
aWx1cmUuCgpTZWVtcyBzZW5zaWJsZS4KClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgdGVzdHMvaTkxNS9nZW1f
cmVuZGVyX2NvcHkuYyB8IDMgKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykK
PiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fcmVuZGVyX2NvcHkuYyBiL3Rlc3RzL2k5
MTUvZ2VtX3JlbmRlcl9jb3B5LmMKPiBpbmRleCBiODE0OTQ4M2MuLjI2MTgzM2QyNCAxMDA2NDQK
PiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9yZW5kZXJfY29weS5jCj4gKysrIGIvdGVzdHMvaTkxNS9n
ZW1fcmVuZGVyX2NvcHkuYwo+IEBAIC03MTUsNiArNzE1LDggQEAgaWd0X21haW5fYXJncygiZGEi
LCBOVUxMLCBoZWxwX3N0ciwgb3B0X2hhbmRsZXIsIE5VTEwpCj4gIAo+ICAJCWRhdGEuYmF0Y2gg
PSBpbnRlbF9iYXRjaGJ1ZmZlcl9hbGxvYyhkYXRhLmJ1Zm1nciwgZGF0YS5kZXZpZCk7Cj4gIAkJ
aWd0X2Fzc2VydChkYXRhLmJhdGNoKTsKPiArCj4gKwkJaWd0X2ZvcmtfaGFuZ19kZXRlY3Rvcihk
YXRhLmRybV9mZCk7Cj4gIAl9Cj4gIAo+ICAJaWd0X3N1YnRlc3QoImxpbmVhciIpCj4gQEAgLTc0
NSw2ICs3NDcsNyBAQCBpZ3RfbWFpbl9hcmdzKCJkYSIsIE5VTEwsIGhlbHBfc3RyLCBvcHRfaGFu
ZGxlciwgTlVMTCkKPiAgCQl0ZXN0KCZkYXRhLCBJOTE1X1RJTElOR19ZZiwgSTkxNV9USUxJTkdf
WWYpOwo+ICAKPiAgCWlndF9maXh0dXJlIHsKPiArCQlpZ3Rfc3RvcF9oYW5nX2RldGVjdG9yKCk7
Cj4gIAkJaW50ZWxfYmF0Y2hidWZmZXJfZnJlZShkYXRhLmJhdGNoKTsKPiAgCQlkcm1faW50ZWxf
YnVmbWdyX2Rlc3Ryb3koZGF0YS5idWZtZ3IpOwo+ICAJfQo+IC0tIAo+IDIuMjMuMAo+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gaWd0LWRldiBt
YWlsaW5nIGxpc3QKPiBpZ3QtZGV2QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaWd0LWRldgoKLS0gClZpbGxlIFN5
cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
