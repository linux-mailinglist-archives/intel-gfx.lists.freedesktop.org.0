Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43805D931F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 15:56:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAAB66E983;
	Wed, 16 Oct 2019 13:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A57D76E983
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 13:56:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 06:56:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,304,1566889200"; d="scan'208";a="189684383"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 16 Oct 2019 06:56:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Oct 2019 16:56:00 +0300
Date: Wed, 16 Oct 2019 16:56:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20191016135600.GP1208@intel.com>
References: <20191016103249.32121-1-uma.shankar@intel.com>
 <20191016103249.32121-7-uma.shankar@intel.com>
 <20191016131336.GM1208@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F822744FC@BGSMSX104.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F822744FC@BGSMSX104.gar.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v1 6/6] drm/i915/display: Reduce blanking to
 support 4k60@10bpp for LSPCON
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

T24gV2VkLCBPY3QgMTYsIDIwMTkgYXQgMDE6NDY6MjRQTSArMDAwMCwgU2hhbmthciwgVW1hIHdy
b3RlOgo+IAo+IAo+ID4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID5Gcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID5TZW50OiBXZWRuZXNk
YXksIE9jdG9iZXIgMTYsIDIwMTkgNjo0NCBQTQo+ID5UbzogU2hhbmthciwgVW1hIDx1bWEuc2hh
bmthckBpbnRlbC5jb20+Cj4gPkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBN
dW4sIEd3YW4tZ3llb25nIDxnd2FuLQo+ID5neWVvbmcubXVuQGludGVsLmNvbT47IFNoYXJtYSwg
U2hhc2hhbmsgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+Cj4gPlN1YmplY3Q6IFJlOiBbdjEg
Ni82XSBkcm0vaTkxNS9kaXNwbGF5OiBSZWR1Y2UgYmxhbmtpbmcgdG8gc3VwcG9ydCA0azYwQDEw
YnBwIGZvcgo+ID5MU1BDT04KPiA+Cj4gPk9uIFdlZCwgT2N0IDE2LCAyMDE5IGF0IDA0OjAyOjQ5
UE0gKzA1MzAsIFVtYSBTaGFua2FyIHdyb3RlOgo+ID4+IEJsYW5raW5nIG5lZWRzIHRvIGJlIHJl
ZHVjZWQgdG8gaW5jb3Jwb3JhdGUgRFAgYW5kIEhETUkgdGltaW5nL2xpbmsKPiA+PiBiYW5kd2lk
dGggbGltaXRhdGlvbnMgZm9yIENFQSBtb2RlcyAoNGtANjAgYXQgMTAgYnBwKS4gRFAgY2FuIGRy
aXZlCj4gPj4gMTcuMjhHYnMgd2hpbGUgNGsgbW9kZXMgKFZJQzk3IGV0YykgYXQgMTAgYnBwIHJl
cXVpcmVkIDE3LjggR2Jwcy4KPiA+PiBUaGlzIHdpbGwgY2F1c2UgbW9kZSB0byBibGFuayBvdXQu
IFJlZHVjZWQgSHRvdGFsIGJ5IHNob3J0ZW5pbmcgdGhlCj4gPj4gYmFjayBwb3JjaCBhbmQgZnJv
bnQgcG9yY2ggd2l0aGluIHBlcm1pc3NpYmxlIGxpbWl0cy4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYt
Ynk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4gPj4gLS0tCj4gPj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDE3ICsrKysrKysrKysrKysr
KysrCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4gPj4KPiA+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gPj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiA+PiBpbmRleCBkOTI3Nzdi
ZDNiZWQuLmExMmI2OTE2MDIzZCAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKPiA+PiBAQCAtNTk3LDggKzU5NywxMCBAQCBpbnRlbF9kcF9tb2RlX3Zh
bGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yCj4gPj4gKmNvbm5lY3RvciwgIHsKPiA+PiAgCXN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBpbnRlbF9hdHRhY2hlZF9kcChjb25uZWN0b3IpOwo+ID4+
ICAJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yID0KPiA+PiB0b19pbnRl
bF9jb25uZWN0b3IoY29ubmVjdG9yKTsKPiA+PiArCXN0cnVjdCBpbnRlbF9lbmNvZGVyICppbnRl
bF9lbmNvZGVyID0KPiA+PiAraW50ZWxfYXR0YWNoZWRfZW5jb2Rlcihjb25uZWN0b3IpOwo+ID4+
ICAJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmZpeGVkX21vZGUgPSBpbnRlbF9jb25uZWN0b3It
Cj4gPj5wYW5lbC5maXhlZF9tb2RlOwo+ID4+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmRldik7Cj4gPj4gKwlzdHJ1Y3QgaW50ZWxfbHNw
Y29uICpsc3Bjb24gPQo+ID4+ICtlbmNfdG9faW50ZWxfbHNwY29uKCZpbnRlbF9lbmNvZGVyLT5i
YXNlKTsKPiA+PiAgCWludCB0YXJnZXRfY2xvY2sgPSBtb2RlLT5jbG9jazsKPiA+PiAgCWludCBt
YXhfcmF0ZSwgbW9kZV9yYXRlLCBtYXhfbGFuZXMsIG1heF9saW5rX2Nsb2NrOwo+ID4+ICAJaW50
IG1heF9kb3RjbGs7Cj4gPj4gQEAgLTYyMCw2ICs2MjIsMjEgQEAgaW50ZWxfZHBfbW9kZV92YWxp
ZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+ID4+ICAJCXRhcmdldF9jbG9jayA9
IGZpeGVkX21vZGUtPmNsb2NrOwo+ID4+ICAJfQo+ID4+Cj4gPj4gKwkvKgo+ID4+ICsJICogUmVk
dWNpbmcgQmxhbmtpbmcgdG8gaW5jb3Jwb3JhdGUgRFAgYW5kIEhETUkgdGltaW5nL2xpbmsgYmFu
ZHdpZHRoCj4gPj4gKwkgKiBsaW1pdGF0aW9ucyBmb3IgQ0VBIG1vZGVzICg0a0A2MCBhdCAxMCBi
cHApLiBEUCBjYW4gZHJpdmUgMTcuMjhHYnMKPiA+PiArCSAqIHdoaWxlIDRrIG1vZGVzIChWSUM5
NyBldGMpIGF0IDEwIGJwcCByZXF1aXJlZCAxNy44IEdicHMuIFRoaXMgd2lsbAo+ID4+ICsJICog
Y2F1c2UgbW9kZSB0byBibGFuayBvdXQuIFJlZHVjZWQgSHRvdGFsIGJ5IHNob3J0ZW5pbmcgdGhl
IGJhY2sgcG9yY2gKPiA+PiArCSAqIGFuZCBmcm9udCBwb3JjaCB3aXRoaW4gcGVybWlzc2libGUg
bGltaXRzLgo+ID4+ICsJICovCj4gPj4gKwlpZiAobHNwY29uLT5hY3RpdmUgJiYgbHNwY29uLT5o
ZHJfc3VwcG9ydGVkICYmCj4gPj4gKwkgICAgbW9kZS0+Y2xvY2sgPiA1NzAwMDApIHsKPiA+PiAr
CQltb2RlLT5jbG9jayA9IDU3MDAwMDsKPiA+PiArCQltb2RlLT5odG90YWwgLT0gMTgwOwo+ID4+
ICsJCW1vZGUtPmhzeW5jX3N0YXJ0IC09IDcyOwo+ID4+ICsJCW1vZGUtPmhzeW5jX2VuZCAtPSA3
MjsKPiA+PiArCX0KPiA+Cj4gPkkgZG9uJ3QgdGhpbmsgd2Ugd2FudCB0aGVzZSBraW5kIG9mIGhh
Y2tzLiBFaXRoZXIgdGhlIG1vZGUgd29ya3Mgb3IgaXQgZG9lc24ndC4KPiAKPiBIaSBWaWxsZSwK
PiBZZWFoIHRoaXMgaXMgbm90IGlkZWFsLiBCdXQgaW4gb3JkZXIgdG8gZW5hYmxlIEhEUiB3aGlj
aCBpcyBtb3N0bHkgMTBiaXQgY29udGVudCBvbiBMc3Bjb24gYmFzZWQKPiBHZW45IGRldmljZXMg
dGhlcmUgYXJlIGxpbWl0YXRpb25zIG9uIGJhbmR3aWR0aCBzaWRlIG9uIERQLiBTbyB3aXRoIHRo
YXQgbGltaXQsIHdlIGNhbm5vdCBkcml2ZQo+IDEwYml0IGNvbnRlbnQgYXQgNGtANjAuIEJ1dCBw
cmFjdGljYWxseSB3ZSBjYW4gZ2V0IHRoaXMgd29ya2luZyBhbmQgYWJsZSB0byBkcml2ZSB0aGUg
c2luayB3aXRob3V0Cj4gYW55IHJlYWwgaXNzdWVzIHdpdGggYWJvdmUgdGltaW5nIGFkanVzdG1l
bnRzLiBUaGlzIGdldHMgZW5hYmxlZCBpZiBmaXJtd2FyZSBhZHZlcnRpc2UgSERSIGNhcGFiaWxp
dGllcywKPiAgc28gaW4gY2FzZSBhIHZlbmRvciBkb2Vzbid0IHdhbnQgdGhpcywgaXQgY2FuIGJl
IGRpc2FibGVkIGluIHRoZSBMU1BDT04gZmlybXdhcmUuCj4gCj4gSSB0ZXN0ZWQgb24gSERNSSBh
bmFseXplciBhbmQgbXVsdGlwbGUgc2lua3MgYW5kIGFsc28gZGF0YSBmcm9tIG90aGVyIE9TIHRl
YW1zIHN1Z2dlc3QgdGhhdCB0aGlzCj4gY29uZmlndXJhdGlvbiB3b3JrcyBhbmQgaXMgZW5hYmxl
ZCBpbiBzb21lIG9mIHRoZSBwcm9kdWN0cyBhcyB3ZWxsLgo+IAo+IERlZmluaXRlbHkgbm90IGlk
ZWFsLCBidXQgYXQgbGVhc3Qgd2UgZ2V0IEhEUiB3b3JraW5nIG9uIEdlbjkgZGV2aWNlcyB3aXRo
IHRoaXMsIHdpdGggYW4gb3B0aW9uCj4gb2YgZGlzYWJsaW5nIGlmIG5vdCByZXF1aXJlZC4gVGhp
cyBjYW4gYmUgbW9yZSBvZiBxdWlyayBraW5kIG9mIHRoaW5nLgo+IAo+IFdoYXQgZG8geW91IHN1
Z2dlc3QuCgpJZiB1c2VyIHdhbnRzIEhEUiB1c2VyIG92ZXJyaWRlcyB0aGUgbW9kZSBtYW51YWxs
eS4KCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
