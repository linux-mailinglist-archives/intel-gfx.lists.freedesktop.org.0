Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBFDE5710
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 01:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FCC26EBCE;
	Fri, 25 Oct 2019 23:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 967216EBCE
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 23:32:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 16:32:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="201956341"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga003.jf.intel.com with ESMTP; 25 Oct 2019 16:32:35 -0700
Date: Fri, 25 Oct 2019 16:32:33 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191025233233.w25scf7lcvpavcps@ldmartin-desk1.jf.intel.com>
References: <20191025230623.27829-1-matthew.d.roper@intel.com>
 <20191025230623.27829-5-matthew.d.roper@intel.com>
 <20191025231933.xfjp6ut4p364ngjx@ldmartin-desk1.jf.intel.com>
 <20191025232547.GG18842@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025232547.GG18842@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Provide more information on
 DP AUX failures
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMjUsIDIwMTkgYXQgMDQ6MjU6NDdQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPk9uIEZyaSwgT2N0IDI1LCAyMDE5IGF0IDA0OjE5OjMzUE0gLTA3MDAsIEx1Y2FzIERlIE1h
cmNoaSB3cm90ZToKPj4gT24gRnJpLCBPY3QgMjUsIDIwMTkgYXQgMDQ6MDY6MjJQTSAtMDcwMCwg
TWF0dCBSb3BlciB3cm90ZToKPj4gPiBXZSdyZSBzZWVpbmcgc29tZSBmYWlsdXJlcyB3aGVyZSBh
biBhdXggdHJhbnNhY3Rpb24gc3RpbGwgc2hvd3MgYXMKPj4gPiAnYnVzeScgd2VsbCBhZnRlciB0
aGUgdGltZW91dCBsaW1pdCB0aGF0IHRoZSBoYXJkd2FyZSBpcyBzdXBwb3NlZCB0bwo+PiA+IGVu
Zm9yY2UuICBJbXByb3ZlIHRoZSBlcnJvciBtZXNzYWdlIHNvIHRoYXQgd2UgY2FuIHNlZSBleGFj
dGx5IHdoaWNoIGF1eAo+PiA+IGNoYW5uZWwgdGhpcyBlcnJvciBoYXBwZW5lZCBvbiBhbmQgd2hh
dCB0aGUgc3RhdHVzIGJpdHMgd2VyZSBkdXJpbmcgdGhpcwo+PiA+IGNhc2UgdGhhdCBpc24ndCBz
dXBwb3NlZCB0byBoYXBwZW4uCj4+ID4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+PiA+IC0tLQo+PiA+IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDMgKystCj4+ID4gMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYwo+PiA+IGluZGV4IDY1YmFiNDZmN2I0My4uMmI0OTE1YjVjZjUyIDEw
MDY0NAo+PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiA+IEBA
IC0xMTkwLDcgKzExOTAsOCBAQCBpbnRlbF9kcF9hdXhfd2FpdF9kb25lKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApCj4+ID4gCXRyYWNlX2k5MTVfcmVnX3J3KGZhbHNlLCBjaF9jdGwsIHN0YXR1
cywgc2l6ZW9mKHN0YXR1cyksIHRydWUpOwo+PiA+Cj4+ID4gCWlmICghZG9uZSkKPj4gPiAtCQlE
Uk1fRVJST1IoImRwIGF1eCBodyBkaWQgbm90IHNpZ25hbCB0aW1lb3V0IVxuIik7Cj4+ID4gKwkJ
RFJNX0VSUk9SKCIlcyBkaWQgbm90IGNvbXBsZXRlIG9yIHRpbWVvdXQgd2l0aGluIDEwbXMgKHN0
YXR1cyAweCUwOHgpXG4iLAo+PiA+ICsJCQkgIGludGVsX2RwLT5hdXgubmFtZSA/OiAiQVVYIiwg
c3RhdHVzKTsKPj4KPj4gbWF5YmUgYSAiY29uc3QgdGltZW91dF9tc2VjID0gMTAiIGFuZCB1c2Ug
aXQgYm90aCBoZXJlIGFuZCBhYm92ZSB0bwo+PiBhdm9pZCBtaXNtYXRjaCBpbiBmdXR1cmU/IEhv
d2V2ZXIgSSdtIG5vdCBzdXJlIGl0J3Mgd29ydGguLi4gdXAgdG8geW91Lgo+Pgo+PiBpbnRlbF9k
cF9hdXhfaW5pdCBzZXQgYXV4Lm5hbWUgdG8ga2FzcHJpbnRmKCkgYW5kIHdlIGNhbid0IHBvc3Np
Ymx5Cj4+IGluaXRpYXRlIGF1eCB0cmFuc2FjdGlvbnMgYmVmb3JlIHRoYXQgaW5pdC4KPj4gaW50
ZWxfZHBfY29ubmVjdG9yX3JlZ2lzdGVyKCkgYWxzbyBkb2Vzbid0IGhhbmRsZSBhdXgubmFtZSA9
PSBOVUxMLCBzbwo+PiB3aGF5IGFyZSB3ZSBjaGVja2luZyBpdCBoZWVyZT8KPgo+a2FzcHJpbnRm
KCkgY291bGQgdGVjaG5pY2FsbHkgZmFpbCB0byBhbGxvY2F0ZSB0aGUgc3RyaW5nIGFuZCBsZWF2
ZSB0aGUKPm5hbWUgYXMgTlVMTC4gIEJ1dCBJIGd1ZXNzIGlmIHRoYXQgaGFwcGVucyB3ZSd2ZSBw
cm9iYWJseSBnb3QgYmlnZ2VyCj5wcm9ibGVtcyBhbnl3YXkuCgphbmQgaWYgd2UgYXJlIGdvaW5n
IHRvIGNoZWNrIHRoZW4gd2Ugc2hvdWxkIGNoZWNrIGl0IHRoZXJlIHJhdGhlciB0aGFuCmluIGVh
Y2ggcGxhY2UgbWFraW5nIHVzZSBvZiBpdC4uLiB3ZSBoYXZlIGJpZ2dlciBwcm9ibGVtcyBpZiBr
YXNwcmludGYoKQpmYWlsZWQgdGhlcmUuCgpMdWNhcyBEZSBNYXJjaGkKCj4KPgo+TWF0dAo+Cj4K
Pj4KPj4gTHVjYXMgRGUgTWFyY2hpCj4+Cj4+ID4gI3VuZGVmIEMKPj4gPgo+PiA+IAlyZXR1cm4g
c3RhdHVzOwo+PiA+IC0tCj4+ID4gMi4yMS4wCj4+ID4KPj4gPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QK
Pj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+ID4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPgo+LS0gCj5NYXR0IFJv
cGVyCj5HcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgo+VlRULU9TR0MgUGxhdGZvcm0gRW5hYmxl
bWVudAo+SW50ZWwgQ29ycG9yYXRpb24KPig5MTYpIDM1Ni0yNzk1Cj5fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
