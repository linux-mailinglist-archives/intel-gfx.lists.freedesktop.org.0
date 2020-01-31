Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 098B314EC46
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 13:06:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3649E6FB1F;
	Fri, 31 Jan 2020 12:06:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4919D6FB1F
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 12:06:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 04:06:21 -0800
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="223123540"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.66.114.55])
 ([10.66.114.55])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 31 Jan 2020 04:06:19 -0800
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
 <db28322f94782e13905cac3ccdaaef9e3cb665b7.camel@intel.com>
 <5a7b6710-fb66-ca0e-666b-4b98c0e8052e@intel.com>
 <20200131114252.GL13686@intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <93e7f80f-7747-938b-8615-fc1cf360043d@intel.com>
Date: Fri, 31 Jan 2020 17:36:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200131114252.GL13686@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/dsb: Replace HAS_DSB check
 with dsb->cmd_buf check
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDMxLTAxLTIwMjAgMTc6MTIsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBGcmksIEph
biAzMSwgMjAyMCBhdCAwMzowNDoxN1BNICswNTMwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToKPj4g
T24gMzAtMDEtMjAyMCAyMzo0MywgU291emEsIEpvc2Ugd3JvdGU6Cj4+PiBPbiBXZWQsIDIwMjAt
MDEtMjkgYXQgMjA6MjAgKzAyMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4+Pj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4+Pgo+Pj4+IFdl
IG1heSB3YW50IHRvIG5vdCB1c2UgdGhlIERTQiBldmVuIGlmIHRoZSBwbGF0Zm9ybSBoYXMgb25l
Lgo+Pj4+IFNvIHJlcGxhY2UgdGhlIEhBU19EU0IgY2hlY2sgaW4gdGhlIF9wdXQoKSB3aXRoIGEg
Y21kX2J1ZiBjaGVjawo+Pj4+IHRoYXQgd2lsbCB3b3JrIGluIGVpdGhlciBjYXNlLgo+Pj4gUmV2
aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+
Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgo+Pj4+IC0tLQo+Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMgfCAzICstLQo+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMiBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RzYi5jCj4+Pj4gaW5kZXggOWRkMTgxNDRhNjY0Li4xMjc3NmYwOWYyMjcg
MTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
Ywo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPj4+
PiBAQCAtMTYwLDkgKzE2MCw4IEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNy
dGMpCj4+Pj4gICAgdm9pZCBpbnRlbF9kc2JfcHV0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKPj4+
PiAgICB7Cj4+Pj4gICAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gY29udGFpbmVyX29mKGRz
YiwgdHlwZW9mKCpjcnRjKSwKPj4+PiBkc2IpOwo+Pj4+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPj4+PiAgICAKPj4+PiAtCWlmICgh
SEFTX0RTQihpOTE1KSkKPj4+PiArCWlmICghZHNiLT5jbWRfYnVmKQo+PiBWaWxsZSBhbmQgSm9z
ZSwKPj4KPj4gSGF2ZSBhIGNvbmNlcm4gaGVyZS4gSW4gaW50ZWxfZHNiX2dldCgpIGlmIGdldCBm
YWlsdXJlIGR1cmluZyBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsLCBpOTE1X2dlbV9v
YmplY3RfZ2d0dF9waW4sIGk5MTVfZ2VtX29iamVjdF9waW5fbWFwIHRoZW4gd2UgbWF5IG5vdCBo
YXZlIGRzYi0+Y21kX2J1Zi4KPj4gVGhlbiByZWYtY291bnQgbWVjaGFuaXNtIHdpbGwgYnJlYWsu
Cj4gSG1tLiBZZWFoLiBUaGUgcmVmY291bnQgV0FSTiBjb3VsZCBlYXNpbHkgYmUgZml4ZWQgYnkg
ZWl0aGVyCj4gZGVjcmVtZW50dW5nIHJlZmNvdW50IG9uIGdldCgpIGZhaWwgb3IgZG9pbmcgdGhl
ICJsZXQncyBuZXZlciB1c2UKPiBEU0IiIHBhdGNoIGFmdGVyIHRoZSByZWZjb3VudCBpbmMuCgpI
bW0sIGZyb20gZGVzaWduIHBvaW50IGdldC9wdXQvcmVmLWNvdW50IG1lY2hhbmlzbSBpbnRyb2R1
Y2VkIHRvIGNoZWNrIGRzcC1hcGkgYXJlIHVzZWQgcHJvcGVybHkgb3Igbm90LgpGb3IgZXJyb25l
b3VzIGNhc2UgbWFuYWdpbmcgcmVmLWNvdW50IGluIGdldCgpIGl0c2VsZiB2b2lkIHRoZSBwdXJw
b3NlIG9mIHB1dCgpIGNhbGwuCkZvciBleGFtcGxlLAoKaW50ZWxfZHNiX2dldCgpCmdvdCBlcnJv
ciBmcm9tIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwsIGk5MTVfZ2VtX29iamVjdF9n
Z3R0X3BpbiwgaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAKaW50ZWxfZHNiX3B1dAppbnRlbF9kc2Jf
cHV0Ci4uLgoKU2hvdWxkIHRocm93IHdhcm5pbmcgYnV0IGNhbiBub3QgaWYgd2UgbWFuYWdlIGlu
IGdldCgpIGl0c2VsZi4KClJlZ2FyZHMsCkFuaW1lc2gKCj4KPj4gSSBmZWVsIEhBU19EU0IoaTkx
NSkgY2hlY2sgaXMgYmV0dGVyIHRoYW4gZHNiLT5jbWRfYnVmIG90aGVyd2lzZSBuZWVkIHRvIGRv
IHNvbWUgY2xlYW51cCBpcyBpbnRlbF9kc2JfZ2V0KCkgYXMgd2VsbC4KPj4KPj4gUmVnYXJkcywK
Pj4gQW5pbWVzaAo+Pgo+Pj4+ICAgIAkJcmV0dXJuOwo+Pj4+ICAgIAo+Pj4+ICAgIAlpZiAoV0FS
Tl9PTihkc2ItPnJlZmNvdW50ID09IDApKQo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
