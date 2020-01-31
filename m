Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D3814EA22
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 10:35:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79BB86E200;
	Fri, 31 Jan 2020 09:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C3406E200
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 09:35:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 01:35:29 -0800
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="223087589"
Received: from bbiernac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.157])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 01:35:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200131001816.32741-1-vivek.kasireddy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <0b0038baaa75ed086bf8ba27d126136f601d6bce.camel@intel.com>
 <20200131001816.32741-1-vivek.kasireddy@intel.com>
Date: Fri, 31 Jan 2020 11:35:35 +0200
Message-ID: <87y2to7yu0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hotplug: Use phy to get the
 hpd_pin instead of the port (v3)
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAzMCBKYW4gMjAyMCwgVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50
ZWwuY29tPiB3cm90ZToKPiBPbiBzb21lIHBsYXRmb3JtcyBzdWNoIGFzIEVsa2hhcnQgTGFrZSwg
YWx0aG91Z2ggd2UgbWF5IHVzZSBEREkgRAo+IHRvIGRyaXZlIGEgY29ubmVjdG9yLCB3ZSBoYXZl
IHRvIHVzZSBQSFkgQSAoQ29tYm8gUGh5IFBPUlQgQSkgdG8KPiBkZXRlY3QgdGhlIGhvdHBsdWcg
aW50ZXJydXB0cyBhcyBwZXIgdGhlIHNwZWMgYmVjYXVzZSB0aGVyZSBpcyBubwo+IG9uZS10by1v
bmUgbWFwcGluZyBiZXR3ZWVuIERESXMgYW5kIFBIWXMuIFRoZXJlZm9yZSwgdXNlIHRoZQo+IGZ1
bmN0aW9uIGludGVsX3BvcnRfdG9fcGh5KCkgd2hpY2ggY29udGFpbnMgdGhlIGxvZ2ljIGZvciBz
dWNoCj4gbWFwcGluZyhzKSB0byBmaW5kIHRoZSBjb3JyZWN0IGhwZF9waW4uCj4KPiBUaGlzIGNo
YW5nZSBzaG91bGQgbm90IGFmZmVjdCBvdGhlciBwbGF0Zm9ybXMgYXMgdGhlcmUgaXMgYWx3YXlz
Cj4gYSBvbmUtdG8tb25lIG1hcHBpbmcgYmV0d2VlbiBERElzIGFuZCBQSFlzLgo+Cj4gdjI6Cj4g
LSBDb252ZXJ0IHRoZSBjYXNlIHN0YXRlbWVudHMgdG8gdXNlIFBIWXMgaW5zdGVhZCBvZiBQT1JU
cyAoSmFuaSkKPgo+IHYzOgo+IC0gUmVmYWN0b3IgdGhlIGZ1bmN0aW9uIHRvIHJlZHVjZSB0aGUg
bnVtYmVyIG9mIHJldHVybiBzdGF0ZW1lbnRzIGJ5Cj4gICBsdW1waW5nIGFsbCB0aGUgY2FzZSBz
dGF0ZW1lbnRzIHRvZ2V0aGVyIGV4Y2VwdCBQSFlfRiB3aGljaCBuZWVkcwo+ICAgc3BlY2lhbCBo
YW5kbGluZyAoSm9zZSkKPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
Pgo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IENjOiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jIHwgMzcgKysrKysrKyst
LS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDIyIGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaG90cGx1Zy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVn
LmMKPiBpbmRleCAwNDJkOThiYWUxZWEuLjI3ZTMwMzMyNzhhMCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jCj4gQEAgLTg5LDI5ICs4OSwyMiBA
QAo+ICBlbnVtIGhwZF9waW4gaW50ZWxfaHBkX3Bpbl9kZWZhdWx0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKPiAgCQkJCSAgIGVudW0gcG9ydCBwb3J0KQo+ICB7Cj4gLQlzd2l0
Y2ggKHBvcnQpIHsKPiAtCWNhc2UgUE9SVF9BOgo+IC0JCXJldHVybiBIUERfUE9SVF9BOwo+IC0J
Y2FzZSBQT1JUX0I6Cj4gLQkJcmV0dXJuIEhQRF9QT1JUX0I7Cj4gLQljYXNlIFBPUlRfQzoKPiAt
CQlyZXR1cm4gSFBEX1BPUlRfQzsKPiAtCWNhc2UgUE9SVF9EOgo+IC0JCXJldHVybiBIUERfUE9S
VF9EOwo+IC0JY2FzZSBQT1JUX0U6Cj4gLQkJcmV0dXJuIEhQRF9QT1JUX0U7Cj4gLQljYXNlIFBP
UlRfRjoKPiAtCQlpZiAoSVNfQ05MX1dJVEhfUE9SVF9GKGRldl9wcml2KSkKPiAtCQkJcmV0dXJu
IEhQRF9QT1JUX0U7Cj4gLQkJcmV0dXJuIEhQRF9QT1JUX0Y7Cj4gLQljYXNlIFBPUlRfRzoKPiAt
CQlyZXR1cm4gSFBEX1BPUlRfRzsKPiAtCWNhc2UgUE9SVF9IOgo+IC0JCXJldHVybiBIUERfUE9S
VF9IOwo+IC0JY2FzZSBQT1JUX0k6Cj4gLQkJcmV0dXJuIEhQRF9QT1JUX0k7Cj4gKwllbnVtIHBo
eSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7Cj4gKwo+ICsJc3dpdGNo
IChwaHkpIHsKPiArCWNhc2UgUEhZX0Y6Cj4gKwkJcmV0dXJuIElTX0NOTF9XSVRIX1BPUlRfRihk
ZXZfcHJpdikgPyBIUERfUE9SVF9FIDogSFBEX1BPUlRfRjsKPiArCWNhc2UgUEhZX0E6Cj4gKwlj
YXNlIFBIWV9COgo+ICsJY2FzZSBQSFlfQzoKPiArCWNhc2UgUEhZX0Q6Cj4gKwljYXNlIFBIWV9F
Ogo+ICsJY2FzZSBQSFlfRzoKPiArCWNhc2UgUEhZX0g6Cj4gKwljYXNlIFBIWV9JOgo+ICsJCXJl
dHVybiBIUERfUE9SVF9BICsgcGh5OwoKSSBrbm93IEpvc8OpIGFza2VkIHlvdSB0byBkbyB0aGlz
LCBidXQgbm93IHlvdSd2ZSB0aWVkIHR3byBlbnVtIHNlcXVlbmNlcwp0b2dldGhlciB3aXRob3V0
IGV4cGxhaW5pbmcgaXQgYW55d2hlcmUuIEJlZm9yZSB0aGlzLCBBRkFJQ1QsIGVudW0KaHBkX3Bp
biB3YXMganVzdCBhbiBhYnN0cmFjdCBlbnVtZXJhdGlvbiB3aGVyZSB0aGUgYWN0dWFsIHZhbHVl
cyBvZiB0aGUKZW51bXMgZGlkbid0IG1lYW4gYSB0aGluZywgYXBhcnQgZnJvbSAwIGZvciBIUERf
Tk9ORS4KCk1heWJlIHRoaXMgaXMgd2hhdCB3ZSB3YW50IHRvIGRvLCBidXQgd2Ugc2hvdWxkIG5l
dmVyIGJlIHNvIGNhc3VhbCBhYm91dAppdC4KCgpCUiwKSmFuaS4KCgo+ICAJZGVmYXVsdDoKPiAt
CQlNSVNTSU5HX0NBU0UocG9ydCk7Cj4gKwkJTUlTU0lOR19DQVNFKHBoeSk7Cj4gIAkJcmV0dXJu
IEhQRF9OT05FOwo+ICAJfQo+ICB9CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNl
IEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
