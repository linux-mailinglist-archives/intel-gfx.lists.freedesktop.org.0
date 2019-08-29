Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACD1A165D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 12:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3EDF6E09C;
	Thu, 29 Aug 2019 10:38:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B65CB6E09C
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 10:37:59 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 03:37:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="188509591"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 29 Aug 2019 03:37:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Aug 2019 13:37:55 +0300
Date: Thu, 29 Aug 2019 13:37:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190829103754.GN7482@intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
 <20190829092554.32198-4-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829092554.32198-4-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 3/7] drm/i915: protect access to DP_TP_*
 on non-dp
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

T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMDI6MjU6NTBBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IERQX1RQX3tDVEwsU1RBVFVTfSBzaG91bGQgb25seSBiZSBwcm9ncmFtbWVkIHdo
ZW4gdGhlIGVuY29kZXIgaXMgaW50ZWxfZHAuCj4gQ2hlY2tpbmcgaXRzIGN1cnJlbnQgdXNhZ2Vz
IGludGVsX2Rpc2FibGVfZGRpX2J1ZigpIGlzIHRoZSBvbmx5Cj4gb2ZmZW5kZXIsIHdpdGggb3Ro
ZXIgcGxhY2VzIGJlaW5nIHByb3RlY3RlZCBieSBjaGVja3MgbGlrZQo+IHBpcGVfY29uZmlnLT5m
ZWNfZW5hYmxlIHRoYXQgaXMgb25seSBzZXQgYnkgaW50ZWxfZHAuCj4gCj4gQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAxMCArKysrKystLS0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gaW5kZXggMzE4MGRhY2I1YmU0Li5k
ZjNlNGZlN2UzZTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMKPiBAQCAtMzQ2MiwxMCArMzQ2MiwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kaXNhYmxlX2Rk
aV9idWYoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAkJd2FpdCA9IHRydWU7Cj4g
IAl9Cj4gIAo+IC0JdmFsID0gSTkxNV9SRUFEKERQX1RQX0NUTChwb3J0KSk7Cj4gLQl2YWwgJj0g
fihEUF9UUF9DVExfRU5BQkxFIHwgRFBfVFBfQ1RMX0xJTktfVFJBSU5fTUFTSyk7Cj4gLQl2YWwg
fD0gRFBfVFBfQ1RMX0xJTktfVFJBSU5fUEFUMTsKPiAtCUk5MTVfV1JJVEUoRFBfVFBfQ1RMKHBv
cnQpLCB2YWwpOwo+ICsJaWYgKGludGVsX2VuY29kZXJfaXNfZHAoZW5jb2RlcikpIHsKCkRvZXNu
J3QgcmVhbGx5IG1ha2Ugc2Vuc2UgdG8gbWUuIEVpdGhlciB3ZSBqdXN0IGRvIGl0IChiZWNhdXNl
IGEgRERJIGlzCmp1c3QgYSBEREkgc28gRFBfVFBfQ1RMIGRvZXMgZXhpc3QgYWx3YXlzKSwgb3Ig
d2Ugb25seSBkbyBpdCB3aGVuIGRyaXZpbmcKRFAgYW5kIG5vdCB3aGVuIGRyaXZpbmcgSERNSS4K
CkZvciB0aGUgbGF0dGVyIEkgd291bGQgcGVyaGFwcyBzdWdnZXN0IG1vdmluZyBhbGwgdGhpcyBl
eHRyYSBqdW5rIG91dApmcm9tIGludGVsX2Rpc2FibGVfZGRpX2J1ZigpIGludG8gdGhlIERQIHNw
ZWNpZmljIGNvZGUgcGF0aHMsIGxlYXZpbmcKanVzdCB0aGUgYWN0dWFsIERESV9CVUZfQ1RMIGRp
c2FibGUgaGVyZS4KCj4gKwkJdmFsID0gSTkxNV9SRUFEKERQX1RQX0NUTChwb3J0KSk7Cj4gKwkJ
dmFsICY9IH4oRFBfVFBfQ1RMX0VOQUJMRSB8IERQX1RQX0NUTF9MSU5LX1RSQUlOX01BU0spOwo+
ICsJCXZhbCB8PSBEUF9UUF9DVExfTElOS19UUkFJTl9QQVQxOwo+ICsJCUk5MTVfV1JJVEUoRFBf
VFBfQ1RMKHBvcnQpLCB2YWwpOwo+ICsJfQo+ICAKPiAgCS8qIERpc2FibGUgRkVDIGluIERQIFNp
bmsgKi8KPiAgCWludGVsX2RkaV9kaXNhYmxlX2ZlY19zdGF0ZShlbmNvZGVyLCBjcnRjX3N0YXRl
KTsKPiAtLSAKPiAyLjIzLjAKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
