Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DCA14D924
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 11:37:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1373A6E5AE;
	Thu, 30 Jan 2020 10:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58B916E5AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 10:37:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 02:37:33 -0800
X-IronPort-AV: E=Sophos;i="5.70,381,1574150400"; d="scan'208";a="222758364"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 02:37:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200129224729.4684-1-vivek.kasireddy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200129224729.4684-1-vivek.kasireddy@intel.com>
Date: Thu, 30 Jan 2020 12:37:29 +0200
Message-ID: <87wo999qmu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hotplug: Use phy to get the
 hpd_pin instead of the port
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

T24gV2VkLCAyOSBKYW4gMjAyMCwgVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50
ZWwuY29tPiB3cm90ZToKPiBPbiBzb21lIHBsYXRmb3JtcyBzdWNoIGFzIEVsa2hhcnQgTGFrZSwg
YWx0aG91Z2ggd2UgbWF5IHVzZSBEREkgRAo+IHRvIGRyaXZlIGEgY29ubmVjdG9yLCB3ZSBoYXZl
IHRvIHVzZSBQSFkgQSAoQ29tYm8gUGh5IFBPUlQgQSkgdG8KPiBkZXRlY3QgdGhlIGhvdHBsdWcg
aW50ZXJydXB0cyBhcyBwZXIgdGhlIHNwZWMgYmVjYXVzZSB0aGVyZSBpcyBubwo+IG9uZS10by1v
bmUgbWFwcGluZyBiZXR3ZWVuIERESXMgYW5kIFBIWXMuIFRoZXJlZm9yZSwgdXNlIHRoZQo+IGZ1
bmN0aW9uIGludGVsX3BvcnRfdG9fcGh5KCkgd2hpY2ggY29udGFpbnMgdGhlIGxvZ2ljIGZvciBz
dWNoCj4gbWFwcGluZyhzKSB0byBmaW5kIHRoZSBjb3JyZWN0IGhwZF9waW4uCj4KPiBUaGlzIGNo
YW5nZSBzaG91bGQgbm90IGFmZmVjdCBvdGhlciBwbGF0Zm9ybXMgYXMgdGhlcmUgaXMgYWx3YXlz
Cj4gYSBvbmUtdG8tb25lIG1hcHBpbmcgYmV0d2VlbiBERElzIGFuZCBQSFlzLgo+Cj4gQ2M6IE1h
dHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gQ2M6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFZpdmVrIEth
c2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgfCA1ICsrKy0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwo+IGluZGV4IDA0MmQ5OGJhZTFlYS4uNDkx
ZjZiNmY5MjBkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaG90cGx1Zy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
b3RwbHVnLmMKPiBAQCAtODksNyArODksOCBAQAo+ICBlbnVtIGhwZF9waW4gaW50ZWxfaHBkX3Bp
bl9kZWZhdWx0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCQkJCSAgIGVu
dW0gcG9ydCBwb3J0KQo+ICB7Cj4gLQlzd2l0Y2ggKHBvcnQpIHsKPiArCWVudW0gcGh5IHBoeSA9
IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBwb3J0KTsKPiArCXN3aXRjaCAocGh5KSB7Cj4g
IAljYXNlIFBPUlRfQToKCklmIHlvdSBzd2l0Y2ggb24gZW51bSBwaHksIHRoZW4gdGhlIGNhc2Vz
IHNob3VsZCBiZSBwaHlzIGFsc28uCgpCUiwKSmFuaS4KCj4gIAkJcmV0dXJuIEhQRF9QT1JUX0E7
Cj4gIAljYXNlIFBPUlRfQjoKPiBAQCAtMTExLDcgKzExMiw3IEBAIGVudW0gaHBkX3BpbiBpbnRl
bF9ocGRfcGluX2RlZmF1bHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJ
Y2FzZSBQT1JUX0k6Cj4gIAkJcmV0dXJuIEhQRF9QT1JUX0k7Cj4gIAlkZWZhdWx0Ogo+IC0JCU1J
U1NJTkdfQ0FTRShwb3J0KTsKPiArCQlNSVNTSU5HX0NBU0UocGh5KTsKPiAgCQlyZXR1cm4gSFBE
X05PTkU7Cj4gIAl9Cj4gIH0KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3Jh
cGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
