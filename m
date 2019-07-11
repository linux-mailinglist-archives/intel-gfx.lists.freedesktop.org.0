Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC7D65916
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 16:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8E16E255;
	Thu, 11 Jul 2019 14:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE91D6E255;
 Thu, 11 Jul 2019 14:33:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 07:33:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,478,1557212400"; d="scan'208";a="193419867"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 11 Jul 2019 07:33:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jul 2019 17:33:10 +0300
Date: Thu, 11 Jul 2019 17:33:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190711143310.GY5942@intel.com>
References: <20190711141004.8728-1-chris@chris-wilson.co.uk>
 <20190711142750.GX5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711142750.GX5942@intel.com>
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

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDU6Mjc6NTBQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFRodSwgSnVsIDExLCAyMDE5IGF0IDAzOjEwOjA0UE0gKzAxMDAsIENocmlz
IFdpbHNvbiB3cm90ZToKPiA+IFdpdGggdGhlIGZhbmN5IHNlY29uZCBzbGljZSBvZiBIYXN3ZWxs
LCB3ZSBsb3N0IHN1cHBvcnQgZm9yIEl2eWJyaWRnZQo+ID4gd2l0aCBpdHMgcGFsdHJ5IHNpbmds
ZSBzbGljZS4KPiA+IAo+ID4gRml4ZXM6IDhkZGNmZDY4ODJhOSAoImludGVsX2wzX3Bhcml0eTog
c2xpY2Ugc3VwcG9ydCIpCj4gPiBUZXN0Y2FzZTogaWd0L3Rvb2xzX3Rlc3Qvc3lzZnNfbDNfcGFy
aXR5Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiAKPiBMb29rcyBzYW5lLgoKQXBwYXJlbnRseSBmb3Jnb3QgdG8gYWRkIHRoZQpSZXZp
ZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
Cj4gCj4gSSB3b25kZXIgaWYgYW55b25lIGV2ZXIgdXNlZCB0aGlzIGZlYXR1cmUuLi4KPiAKPiA+
IC0tLQo+ID4gIHRvb2xzL2ludGVsX2wzX3Bhcml0eS5jIHwgOSArKysrKysrKysKPiA+ICAxIGZp
bGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS90b29scy9p
bnRlbF9sM19wYXJpdHkuYyBiL3Rvb2xzL2ludGVsX2wzX3Bhcml0eS5jCj4gPiBpbmRleCBkOGM5
OTdhZjkuLmRjM2QwODA0OCAxMDA2NDQKPiA+IC0tLSBhL3Rvb2xzL2ludGVsX2wzX3Bhcml0eS5j
Cj4gPiArKysgYi90b29scy9pbnRlbF9sM19wYXJpdHkuYwo+ID4gQEAgLTE5NSw2ICsxOTUsOSBA
QCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQo+ID4gIAo+ID4gIAlmb3JfZWFjaF9z
bGljZShpKSB7Cj4gPiAgCQlmZFtpXSA9IG9wZW5hdChkaXIsIHBhdGhbaV0sIE9fUkRXUik7Cj4g
PiArCQlpZiAoZmRbaV0gPCAwKQo+ID4gKwkJCWNvbnRpbnVlOwo+ID4gKwo+ID4gIAkJaWYgKHJl
YWQoZmRbaV0sIGwzbG9nc1tpXSwgTlVNX1JFR1MgKiBzaXplb2YodWludDMyX3QpKSA8IDApIHsK
PiA+ICAJCQlwZXJyb3IocGF0aFtpXSk7Cj4gPiAgCQkJZXhpdCg3Nyk7Cj4gPiBAQCAtMzMzLDYg
KzMzNiw5IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pCj4gPiAgCj4gPiAgCS8q
IFBlciBzbGljZSBvcGVyYXRpb25zICovCj4gPiAgCWZvcl9lYWNoX3NsaWNlKGkpIHsKPiA+ICsJ
CWlmIChmZFtpXSA8IDApCj4gPiArCQkJY29udGludWU7Cj4gPiArCj4gPiAgCQlzd2l0Y2ggKGFj
dGlvbikgewo+ID4gIAkJCWNhc2UgJ2wnOgo+ID4gIAkJCQlkdW1waXQoaSk7Cj4gPiBAQCAtMzc0
LDYgKzM4MCw5IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pCj4gPiAgCQlleGl0
KEVYSVRfU1VDQ0VTUyk7Cj4gPiAgCj4gPiAgCWZvcl9lYWNoX3NsaWNlKGkpIHsKPiA+ICsJCWlm
IChmZFtpXSA8IDApCj4gPiArCQkJY29udGludWU7Cj4gPiArCj4gPiAgCQlyZXQgPSB3cml0ZShm
ZFtpXSwgbDNsb2dzW2ldLCBOVU1fUkVHUyAqIHNpemVvZih1aW50MzJfdCkpOwo+ID4gIAkJaWYg
KHJldCA9PSAtMSkgewo+ID4gIAkJCXBlcnJvcigiV3JpdGluZyBzeXNmcyIpOwo+ID4gLS0gCj4g
PiAyLjIyLjAKPiA+IAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+IEludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cj4gCj4gLS0gCj4gVmlsbGUgU3lyasOkbMOkCj4gSW50ZWwKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdm
eCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApW
aWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
