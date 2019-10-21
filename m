Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66605DF014
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 16:39:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEC4F6E130;
	Mon, 21 Oct 2019 14:39:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9CFF6E130;
 Mon, 21 Oct 2019 14:39:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 07:39:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,323,1566889200"; d="scan'208";a="196124566"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 21 Oct 2019 07:39:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 21 Oct 2019 17:39:48 +0300
Date: Mon, 21 Oct 2019 17:39:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20191021143948.GI1208@intel.com>
References: <20191020181933.54829-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191020181933.54829-1-hdegoede@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Program LUT before
 intel_color_commit() if LUT was not previously set
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCBPY3QgMjAsIDIwMTkgYXQgMDg6MTk6MzNQTSArMDIwMCwgSGFucyBkZSBHb2VkZSB3
cm90ZToKPiBTaW5jZSBjb21taXQgMDUxYTZkOGQzY2EwICgiZHJtL2k5MTU6IE1vdmUgTFVUIHBy
b2dyYW1taW5nIHRvIGhhcHBlbiBhZnRlcgo+IHZibGFuayB3YWl0cyIpLCBJIGFtIHNlZWluZyBh
biB1Z2x5IGNvbG9yZWQgZmxhc2ggb2YgdGhlIGZpcnN0IGZldyBkaXNwbGF5Cj4gbGluZXMgb24g
MiBDaGVycnkgVHJhaWwgZGV2aWNlcyB3aGVuIHRoZSBnYW1tYSB0YWJsZSBnZXRzIHNldCBmb3Ig
dGhlIGZpcnN0Cj4gdGltZS4gQSBibHVlIGZsYXNoIG9uIGEgR1BEIHdpbiBhbmQgYSB5ZWxsb3cg
Zmxhc2ggb24gYW4gQXN1cyBUMTAwSEEuCj4gCj4gVGhlIHByb2JsZW0gaXMgdGhhdCBzaW5jZSB0
aGlzIGNoYW5nZSwgdGhlIExVVCBpcyBwcm9ncmFtbWVkIGFmdGVyIHRoZQo+IHdyaXRlICphbmQg
bGF0Y2hpbmcqIG9mIHRoZSBkb3VibGUtYnVmZmVyZWQgcmVnaXN0ZXIgd2hpY2ggY2F1c2VzIHRo
ZSBMVVQKPiB0byBiZSB1c2VkIHN0YXJ0aW5nIGF0IHRoZSBuZXh0IGZyYW1lLiBUaGlzIG1lYW5z
IHRoYXQgdGhlIG9sZCBMVVQgaXMgc3RpbGwKPiB1c2VkIGZvciB0aGUgZmlyc3QgY291cGxlIG9m
IGxpbmVzIG9mIHRoZSBkaXNwbGF5LiBJZiBubyBMVVQgd2FzIGluIHVzZQo+IGJlZm9yZSB0aGVu
IHRoZSBMVVQgcmVnaXN0ZXJzIG1heSBjb250YWluIGJvZ3VzIHZhbHVlcy4gVGhpcyBsZWFkcyB0
bwo+IG1lc3NlZCB1cCBjb2xvcnMgdW50aWwgdGhlIG5ldyBMVVQgdmFsdWVzIGFyZSB3cml0dGVu
LiBBdCBsZWFzdCBvbiBDSFQgRFNJCj4gcGFuZWxzIHRoaXMgY2F1c2VzIG1lc3NlZCB1cCBjb2xv
cnMgb24gdGhlIGZpcnN0IGZldyBsaW5lcy4KPiAKPiBUaGlzIGNvbW1pdCBmaXhlcyB0aGlzIGJ5
IGFkZGluZyBhIGxvYWRfbHV0X2JlZm9yZV9jb21taXQgYm9vbGVhbiwKPiBtb2RpZnlpbmcgaW50
ZWxfYmVnaW5fY3J0Y19jb21taXQgdG8gbG9hZCB0aGUgbHV0cyBlYXJsaWVyIGlmIHRoaXMgaXMg
c2V0LAo+IGFuZCBzZXR0aW5nIHRoaXMgZnJvbSBpbnRlbF9jb2xvcl9jaGVjayB3aGVuIGEgTFVU
IHRhYmxlIHdhcyBub3QgaW4gdXNlCj4gYmVmb3JlIChhbmQgdGh1cyBtYXkgY29udGFpbiBib2d1
cyB2YWx1ZXMpLCBvciB3aGVuIHRoZSB0YWJsZSBzaXplCj4gY2hhbmdlcy4KClRoZSByZWFsIHNv
bHV0aW9uIGlzIHZibGFuayB3b3JrZXJzLCB3aGljaCBJIGhhdmUgc29tZXdoYXQgaW1wbGVtZW50
ZWQKaGVyZToKZ2l0Oi8vZ2l0aHViLmNvbS92c3lyamFsYS9saW51eC5naXQgdmJsYW5rX3dvcmtl
cl84X2t0aHJlYWQKClRob3VnaCBldmVuIHdpdGggdGhlIHFvcyB0cmlja3MgdGhlcmUgd2Ugc3Rp
bGwgcHJvYmFibHkgY2FuJ3QgcXVpdGUgbWFrZQppdCBpbiB0aW1lLiBFc3NlbnRpYWxseSB3ZSBo
YXZlIGEgYml0IGxlc3MgdGhhbiBvbmUgc2NhbmxpbmUgYWZ0ZXIgc3RhcnQKb2YgdmJsYW5rIHRv
IGRvIHRoZSB3b3JrIGJlZm9yZSBwaXhlbHMgc3RhcnQgdG8gZmxvdyB0aHJvdWdoIHRoZSBwaXBl
LgpXZSBtaWdodCBiZSBleHRlbmQgdGhhdCB0byBhbG1vc3QgZm91ciBzY2FubGluZXMgYnV0IHRo
YXQgcGFydG9jdWxhcgp0aGluZyBpcyBkb2N1bWV0ZWQgYXMgZGVidWcgZmVhdHVyZSBzbyBub3Qg
c3VyZSB3ZSBzaG91bGQgcmVhbGx5IHVzZSBpdC4KQWxzbyBJIGRvbid0IHRoaW5rIGZvdXIgc2Nh
bmxpbmVzIGlzIGFsd2F5cyBlbm91Z2ggZWl0aGVyLiBTbyBpdCdzIHN0aWxsCnZlcnkgbXVjaCBw
b3NzaWJsZSB0aGF0IHdlIGdldCB0aGUgZmlyc3QgMTAwIG9yIHNvIHBpeGVscyB3aXRoIHRoZSBv
bGQgTFVULgoKPiAKPiBGaXhlczogMDUxYTZkOGQzY2EwICgiZHJtL2k5MTU6IE1vdmUgTFVUIHBy
b2dyYW1taW5nIHRvIGhhcHBlbiBhZnRlciB2Ymxhbmsgd2FpdHMiKQo+IFNpZ25lZC1vZmYtYnk6
IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyAgICB8IDI2ICsrKysrKysrKysrKysrKysr
KysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDcg
KysrKysKPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwg
IDMgKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKPiBpbmRleCA3MWEwMjAxNDM3YTku
LjBkYTZkY2M1YmViZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NvbG9yLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NvbG9yLmMKPiBAQCAtMTA1Miw2ICsxMDUyLDMyIEBAIGludGVsX2NvbG9yX2FkZF9hZmZlY3Rl
ZF9wbGFuZXMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQo+ICAJCW5l
d19jcnRjX3N0YXRlLT51cGRhdGVfcGxhbmVzIHw9IEJJVChwbGFuZS0+aWQpOwo+ICAJfQo+ICAK
PiArCS8qCj4gKwkgKiBOb3JtYWxseSB3ZSBsb2FkIHRoZSBMVVRzIGFmdGVyIHZibGFuayAvIGFm
dGVyIHRoZSBkb3VibGUtYnVmZmVyCj4gKwkgKiByZWdpc3RlcnMgd3JpdHRlbiBieSBjb21taXQg
aGF2ZSBiZWVuIGxhdGNoZWQsIHRoaXMgYXZvaWRzIGEKPiArCSAqIGdhbW1hIGNoYW5nZSBtaWQt
d2F5IHRoZSBzY3JlZW4uIFRoaXMgZG9lcyBtZWFuIHRoYXQgdGhlIGZpcnN0Cj4gKwkgKiBmZXcg
bGluZXMgb2YgdGhlIGRpc3BsYXkgd2lsbCAoc29tZXRpbWVzKSBzdGlsbCB1c2UgdGhlIG9sZAo+
ICsJICogdGFibGUuIFRoaXMgaXMgZmluZSB3aGVuIGNoYW5naW5nIGFuIGV4aXN0aW5nIExVVCwg
YnV0IGlmIHRoaXMKPiArCSAqIGlzIHRoZSBmaXJzdCB0aW1lIHRoZSBMVVQgZ2V0cyBsb2FkZWQs
IHRoZW4gdGhlIGh3IG1heSBjb250YWluCj4gKwkgKiByYW5kb20gdmFsdWVzLCBjYXVzaW5nIHRo
ZSBmaXJzdCBsaW5lcyB0byBoYXZlIGZ1bmt5IGNvbG9ycy4KPiArCSAqCj4gKwkgKiBTbyBpZiB3
ZXJlIGVuYWJsaW5nIGEgTFVUIGZvciB0aGUgZmlyc3QgdGltZSBvciBjaGFuZ2luZyB0aGUgdGFi
bGUKPiArCSAqIHNpemUsIHRoZW4gd2UgbXVzdCBkbyB0aGlzIGJlZm9yZSB0aGUgY29tbWl0IHRv
IGF2b2lkIGNvcnJ1cHRpbmcKPiArCSAqIHRoZSBmaXJzdCBsaW5lcyBvZiB0aGUgZGlzcGxheS4K
PiArCSAqLwo+ICsJaWYgKCFvbGRfY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgJiYgbmV3X2Ny
dGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0KQo+ICsJCW5ld19jcnRjX3N0YXRlLT5sb2FkX2x1dF9i
ZWZvcmVfY29tbWl0ID0gdHJ1ZTsKPiArCWVsc2UgaWYgKCFvbGRfY3J0Y19zdGF0ZS0+YmFzZS5k
ZWdhbW1hX2x1dCAmJgo+ICsJCSBuZXdfY3J0Y19zdGF0ZS0+YmFzZS5kZWdhbW1hX2x1dCkKPiAr
CQluZXdfY3J0Y19zdGF0ZS0+bG9hZF9sdXRfYmVmb3JlX2NvbW1pdCA9IHRydWU7Cj4gKwllbHNl
IGlmIChvbGRfY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgJiYKPiArCQkgbmV3X2NydGNfc3Rh
dGUtPmJhc2UuZ2FtbWFfbHV0ICYmCj4gKwkJIGx1dF9pc19sZWdhY3kob2xkX2NydGNfc3RhdGUt
PmJhc2UuZ2FtbWFfbHV0KSAhPQo+ICsJCQlsdXRfaXNfbGVnYWN5KG5ld19jcnRjX3N0YXRlLT5i
YXNlLmdhbW1hX2x1dCkpCj4gKwkJbmV3X2NydGNfc3RhdGUtPmxvYWRfbHV0X2JlZm9yZV9jb21t
aXQgPSB0cnVlOwo+ICsJZWxzZQo+ICsJCW5ld19jcnRjX3N0YXRlLT5sb2FkX2x1dF9iZWZvcmVf
Y29tbWl0ID0gZmFsc2U7CgpUaGUgJ25vIGdhbW1hIC0+IHllcyBnYW1tYScgdGhpbmcgSSBtaWdo
dCBiZSB3aWxsaW5nIHRvIGFjY2VwdC4gVGhlIHJlc3QKbm90IHNvIG11Y2guIEkgd2FzIGFscmVh
ZHkgcG9uZGVyaW5nIGFib3V0IHN1Y2ggb3B0aW1pemF0aW9ucyBmb3IgdGhlCnBsYW5lIGdhbW1h
L2NzYyBzdHVmZiBpbiBteSB2YmxhbmsgYnJhbmNoLgoKQnV0IGZvciB0aGUgZmFzdGJvb3QgY2Fz
ZSBJIHRoaW5rIHdoYXQgd2UgY291bGQgZG8gaXMganVzdCBzYW5pdGl6ZQp0aGUgTFVUKHMpIGFm
dGVyIHJlYWRvdXQgaWYgZ2FtbWEgd2Fzbid0IGVuYWJsZWQgYnkgdGhlIEJJT1MuCgo+ICsKPiAg
CXJldHVybiAwOwo+ICB9Cj4gIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCj4gaW5kZXggYWE1NGJiMjI3OTZkLi4yMTQ0MmIwZGQxMzQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xNDAz
Myw2ICsxNDAzMyw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKPiAgCWZvcl9lYWNoX25ld19pbnRlbF9jcnRj
X2luX3N0YXRlKHN0YXRlLCBjcnRjLCBuZXdfY3J0Y19zdGF0ZSwgaSkgewo+ICAJCWlmIChuZXdf
Y3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmUgJiYKPiAgCQkgICAgIW5lZWRzX21vZGVzZXQobmV3X2Ny
dGNfc3RhdGUpICYmCj4gKwkJICAgICFuZXdfY3J0Y19zdGF0ZS0+bG9hZF9sdXRfYmVmb3JlX2Nv
bW1pdCAmJgo+ICAJCSAgICAobmV3X2NydGNfc3RhdGUtPmJhc2UuY29sb3JfbWdtdF9jaGFuZ2Vk
IHx8Cj4gIAkJICAgICBuZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3BpcGUpKQo+ICAJCQlpbnRlbF9j
b2xvcl9sb2FkX2x1dHMobmV3X2NydGNfc3RhdGUpOwo+IEBAIC0xNDUyOSw2ICsxNDUzMCwxMiBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9iZWdpbl9jcnRjX2NvbW1pdChzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwKPiAgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRl
LCBjcnRjKTsKPiAgCWJvb2wgbW9kZXNldCA9IG5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUp
Owo+ICAKPiArCWlmICghbW9kZXNldCAmJgo+ICsJICAgIG5ld19jcnRjX3N0YXRlLT5sb2FkX2x1
dF9iZWZvcmVfY29tbWl0ICYmCj4gKwkgICAgKG5ld19jcnRjX3N0YXRlLT5iYXNlLmNvbG9yX21n
bXRfY2hhbmdlZCB8fAo+ICsJICAgICBuZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3BpcGUpKQo+ICsJ
CWludGVsX2NvbG9yX2xvYWRfbHV0cyhuZXdfY3J0Y19zdGF0ZSk7Cj4gKwo+ICAJLyogUGVyZm9y
bSB2YmxhbmsgZXZhc2lvbiBhcm91bmQgY29tbWl0IG9wZXJhdGlvbiAqLwo+ICAJaW50ZWxfcGlw
ZV91cGRhdGVfc3RhcnQobmV3X2NydGNfc3RhdGUpOwo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+IGluZGV4IDQ0OWFiYWVh
NjE5Zi4uYmJkZWIzYmU2NGU2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBAQCAtOTczLDYgKzk3Myw5IEBAIHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlIHsKPiAgCS8qIGVuYWJsZSBwaXBlIGNzYz8gKi8KPiAgCWJvb2wg
Y3NjX2VuYWJsZTsKPiAgCj4gKwkvKiBsb2FkIGx1dHMgYmVmb3JlIGNvbG9yIHNldHRpbmdzIGNv
bW1pdCAqLwo+ICsJYm9vbCBsb2FkX2x1dF9iZWZvcmVfY29tbWl0Owo+ICsKPiAgCS8qIERpc3Bs
YXkgU3RyZWFtIGNvbXByZXNzaW9uIHN0YXRlICovCj4gIAlzdHJ1Y3Qgewo+ICAJCWJvb2wgY29t
cHJlc3Npb25fZW5hYmxlOwo+IC0tIAo+IDIuMjMuMAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRl
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
