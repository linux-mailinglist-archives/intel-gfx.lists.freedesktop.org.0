Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A63EE7AC1C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 17:18:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9A76E58F;
	Tue, 30 Jul 2019 15:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85AAA6E58F
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 15:18:34 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 08:18:33 -0700
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="183161839"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga002-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Jul 2019 08:18:33 -0700
Date: Tue, 30 Jul 2019 08:19:08 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20190730151908.GA21970@intel.com>
References: <20190719004526.B0CC521850@mail.kernel.org>
 <20190722231325.16615-1-dhinakaran.pandiyan@intel.com>
 <20190724120657.GG3244@kroah.com>
 <05339e812e35a4cf1811f26a06bd5a4d1d652407.camel@intel.com>
 <20190724174029.GC30776@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724174029.GC30776@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH stable v5.2] drm/i915/vbt: Fix VBT parsing
 for the PSR section
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
Cc: "sashal@kernel.org" <sashal@kernel.org>,
 Jani Nikula <jani.nikula@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgR3JlZywKCk9uIFdlZCwgSnVsIDI0LCAyMDE5IGF0IDEwOjQwOjI5QU0gLTA3MDAsIFJvZHJp
Z28gVml2aSB3cm90ZToKPiBPbiBXZWQsIEp1bCAyNCwgMjAxOSBhdCAwNToyNzo0MlBNICswMDAw
LCBTb3V6YSwgSm9zZSB3cm90ZToKPiA+IE9uIFdlZCwgMjAxOS0wNy0yNCBhdCAxNDowNiArMDIw
MCwgR3JlZyBLSCB3cm90ZToKPiA+ID4gT24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDQ6MTM6MjVQ
TSAtMDcwMCwgRGhpbmFrYXJhbiBQYW5kaXlhbiB3cm90ZToKPiA+ID4gPiBBIHNpbmdsZSAzMi1i
aXQgUFNSMiB0cmFpbmluZyBwYXR0ZXJuIGZpZWxkIGZvbGxvd3MgdGhlIHNpeHRlZW4KPiA+ID4g
PiBlbGVtZW50Cj4gPiA+ID4gYXJyYXkgb2YgUFNSIHRhYmxlIGVudHJpZXMgaW4gdGhlIFZCVCBz
cGVjLiBCdXQsIHdlIGluY29ycmVjdGx5Cj4gPiA+ID4gZGVmaW5lCj4gPiA+ID4gdGhpcyBQU1Iy
IGZpZWxkIGZvciBlYWNoIG9mIHRoZSBQU1IgdGFibGUgZW50cmllcy4gQXMgYSByZXN1bHQsIHRo
ZQo+ID4gPiA+IFBTUjEKPiA+ID4gPiB0cmFpbmluZyBwYXR0ZXJuIGR1cmF0aW9uIGZvciBhbnkg
cGFuZWxfdHlwZSAhPSAwIHdpbGwgYmUgcGFyc2VkCj4gPiA+ID4gaW5jb3JyZWN0bHkuIFNlY29u
ZGx5LCBQU1IyIHRyYWluaW5nIHBhdHRlcm4gZHVyYXRpb25zIGZvciBWQlRzCj4gPiA+ID4gd2l0
aCBiZGIKPiA+ID4gPiB2ZXJzaW9uID49IDIyNiB3aWxsIGFsc28gYmUgd3JvbmcuCj4gPiA+ID4g
Cj4gPiA+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiA+ID4g
PiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gPiA+
ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gPiBDYzogc3RhYmxlQHZnZXIua2Vy
bmVsLm9yZyAjdjUuMgo+ID4gPiA+IEZpeGVzOiA4OGEwZDk2MDZhZmYgKCJkcm0vaTkxNS92YnQ6
IFBhcnNlIGFuZCB1c2UgdGhlIG5ldyBmaWVsZAo+ID4gPiA+IHdpdGggUFNSMiBUUDIvMyB3YWtl
dXAgdGltZSIpCj4gPiA+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMTA4OAo+ID4gPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3ppbGxh
Lmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIwNDE4Mwo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgo+ID4g
PiA+IFJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgo+ID4gPiA+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4KPiA+ID4gPiBBY2tlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdv
LnZpdmlAaW50ZWwuY29tPgo+ID4gPiA+IFRlc3RlZC1ieTogRnJhbsOnb2lzIEd1ZXJyYXogPGt1
YnJpY2tAZmd2Ni5uZXQ+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogUm9kcmlnbyBWaXZpIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPgo+ID4gPiA+IExpbms6IAo+ID4gPiA+IGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MDcxNzIyMzQ1MS4yNTk1LTEtZGhp
bmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20KPiA+ID4gPiAoY2hlcnJ5IHBpY2tlZCBmcm9tIGNv
bW1pdAo+ID4gPiA+IGI1ZWE5YzkzMzcwMDdkNmU3MDAyODBjOGE2MGI0ZTEwZDA3MGZiNTMpCj4g
PiA+IAo+ID4gPiBUaGVyZSBpcyBubyBzdWNoIGNvbW1pdCBpbiBMaW51cydzIGtlcm5lbCB0cmVl
IDooCj4gCj4gbm90IHlldC4uLiBJdCBpcyBxdWV1ZWQgZm9yIDUuMyBvbiBkcm0taW50ZWwtbmV4
dC1xdWV1ZWQuCj4gCj4gVGhpcyBsaW5lIGlzIGF1dG9tYXRpY2FsbHkgYWRkZWQgYnkgImRpbSIg
dG9vbCB3aGVuCj4gY2hlcnJ5LXBpY2tpbmcgcXVldWVkIHN0dWZmIGZvciBvdXIgZHJtLWludGVs
IGZpeGVzIGJyYW5jaGVzLgoKV2hhdCBkbyB5b3UgbmVlZCBoZXIgZnJvbSB1cyB0byBhY2NlcHQg
dGhpcyBwYXRjaD8KCj4gCj4gPiA+IAo+ID4gCj4gPiBJdCBpcyBzdGlsbCBvbiBkcm0taW50ZWwv
ZHJtLWludGVsLW5leHQtcXVldWVkIC0KPiA+IHNzaDovL2dpdC5mcmVlZGVza3RvcC5vcmcvZ2l0
L2RybS1pbnRlbAo+ID4gCj4gPiBSb2RyaWdvIGRvIHlvdSBrbm93IHdoZW4gaXMgdGhlIG5leHQg
cHVsbC1yZXF1ZXN0IHRvIExpbnVzPwo+IAo+IEkgd2lsbCBzdGFydCBkb2luZyB0aGUgcHVsbCBy
ZXF1ZXN0cyB0byBEYXZlIGFuZCBEYW5pZWwgc29vbiwKPiBidXQgdGhpcyBkb2Vzbid0IHJlYWNo
IExpbnVzIHRyZWUgYmVmb3JlIG5leHQgbWVyZ2Ugd2luZG93Lgo+IAo+IEV2ZW50dWFsbHkgaXQg
d2lsbCBiZSB0aGVyZS4KPiAKPiBJZiB0aGlzIGlzIGEgYmxvY2tlciBmZWxsIGZyZWUgdG8gcmVt
b3ZlIHRoZSBsaW5lIGFuZCBtZXJnZSB0aGUKPiBwYXRjaCBwbGVhc2UsIGJlY2F1c2UgdGhpcyBm
aXggdmVyeSBjcml0aWNhbCBpc3N1ZSB0aGF0IGltcGFjdCB1c2Vycy4KPiBTbyB3ZSBjYW4gY29u
dGludWUgdGhlIGRpc2N1c3Npb24gaW4gcGFyYWxsZWwgb24gaG93IHRvIGhhbmRsZQo+IGNvbW1p
dCBsaW5rcyBsaWtlIHRoaXMgaW4gYSBiZXR0ZXIgd2F5Lgo+IAo+IFRoYW5rcywKPiBSb2RyaWdv
Lgo+IAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
