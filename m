Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 809D9658C2
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 16:27:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DBC06E252;
	Thu, 11 Jul 2019 14:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65DD66E252;
 Thu, 11 Jul 2019 14:27:54 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 07:27:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,478,1557212400"; d="scan'208";a="171246090"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 11 Jul 2019 07:27:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jul 2019 17:27:50 +0300
Date: Thu, 11 Jul 2019 17:27:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190711142750.GX5942@intel.com>
References: <20190711141004.8728-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711141004.8728-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_l3_parity: Restore support for
 Ivybridge
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

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDM6MTA6MDRQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFdpdGggdGhlIGZhbmN5IHNlY29uZCBzbGljZSBvZiBIYXN3ZWxsLCB3ZSBsb3N0IHN1
cHBvcnQgZm9yIEl2eWJyaWRnZQo+IHdpdGggaXRzIHBhbHRyeSBzaW5nbGUgc2xpY2UuCj4gCj4g
Rml4ZXM6IDhkZGNmZDY4ODJhOSAoImludGVsX2wzX3Bhcml0eTogc2xpY2Ugc3VwcG9ydCIpCj4g
VGVzdGNhc2U6IGlndC90b29sc190ZXN0L3N5c2ZzX2wzX3Bhcml0eQo+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKTG9va3Mgc2FuZS4KCkkg
d29uZGVyIGlmIGFueW9uZSBldmVyIHVzZWQgdGhpcyBmZWF0dXJlLi4uCgo+IC0tLQo+ICB0b29s
cy9pbnRlbF9sM19wYXJpdHkuYyB8IDkgKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvdG9vbHMvaW50ZWxfbDNfcGFyaXR5LmMgYi90
b29scy9pbnRlbF9sM19wYXJpdHkuYwo+IGluZGV4IGQ4Yzk5N2FmOS4uZGMzZDA4MDQ4IDEwMDY0
NAo+IC0tLSBhL3Rvb2xzL2ludGVsX2wzX3Bhcml0eS5jCj4gKysrIGIvdG9vbHMvaW50ZWxfbDNf
cGFyaXR5LmMKPiBAQCAtMTk1LDYgKzE5NSw5IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICph
cmd2W10pCj4gIAo+ICAJZm9yX2VhY2hfc2xpY2UoaSkgewo+ICAJCWZkW2ldID0gb3BlbmF0KGRp
ciwgcGF0aFtpXSwgT19SRFdSKTsKPiArCQlpZiAoZmRbaV0gPCAwKQo+ICsJCQljb250aW51ZTsK
PiArCj4gIAkJaWYgKHJlYWQoZmRbaV0sIGwzbG9nc1tpXSwgTlVNX1JFR1MgKiBzaXplb2YodWlu
dDMyX3QpKSA8IDApIHsKPiAgCQkJcGVycm9yKHBhdGhbaV0pOwo+ICAJCQlleGl0KDc3KTsKPiBA
QCAtMzMzLDYgKzMzNiw5IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pCj4gIAo+
ICAJLyogUGVyIHNsaWNlIG9wZXJhdGlvbnMgKi8KPiAgCWZvcl9lYWNoX3NsaWNlKGkpIHsKPiAr
CQlpZiAoZmRbaV0gPCAwKQo+ICsJCQljb250aW51ZTsKPiArCj4gIAkJc3dpdGNoIChhY3Rpb24p
IHsKPiAgCQkJY2FzZSAnbCc6Cj4gIAkJCQlkdW1waXQoaSk7Cj4gQEAgLTM3NCw2ICszODAsOSBA
QCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQo+ICAJCWV4aXQoRVhJVF9TVUNDRVNT
KTsKPiAgCj4gIAlmb3JfZWFjaF9zbGljZShpKSB7Cj4gKwkJaWYgKGZkW2ldIDwgMCkKPiArCQkJ
Y29udGludWU7Cj4gKwo+ICAJCXJldCA9IHdyaXRlKGZkW2ldLCBsM2xvZ3NbaV0sIE5VTV9SRUdT
ICogc2l6ZW9mKHVpbnQzMl90KSk7Cj4gIAkJaWYgKHJldCA9PSAtMSkgewo+ICAJCQlwZXJyb3Io
IldyaXRpbmcgc3lzZnMiKTsKPiAtLSAKPiAyLjIyLjAKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50
ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
