Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C57E225C0C1
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 14:08:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03246E9DD;
	Thu,  3 Sep 2020 12:08:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2CD16E9DD
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 12:08:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 1390441B31;
 Thu,  3 Sep 2020 14:08:50 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=ZBTIEnQT; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -4.502
X-Spam-Level: 
X-Spam-Status: No, score=-4.502 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-2.403,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AYMBUHyVH2i7; Thu,  3 Sep 2020 14:08:49 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 6B8DF41AB2;
 Thu,  3 Sep 2020 14:08:46 +0200 (CEST)
Received: from Win10-1tb-87.SSPE.ch.intel.com (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 1186D36035C;
 Thu,  3 Sep 2020 14:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1599134926; bh=NjEUrJFx+5KOTrOx0UiRIFIL7mJGnBE8KnyRfcMxLNM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=ZBTIEnQTrRas5sTrMU+/ZxYTP7R/GucsirY5FV75C+v1XVlew4EZ5mr3YNzbMtVyR
 tMYVAR5Rn7QPmTCd1kaAQ/bIAIQBKScP0yEtZ+oOVlK5vp9ACruHJZegSZyUCwKc2E
 pdlmWyU3GO+N1RpwYKmbcEA8cYtjS16rTI/b32HY=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
 <20200826132811.17577-35-chris@chris-wilson.co.uk>
 <b2ebd7c1-733f-04aa-78cd-f05e5ff5438a@shipmail.org>
 <ca140ae5-96be-e72c-662d-64a0d8ad9689@shipmail.org>
 <159913276436.16735.6772809621876628533@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <e174a861-c531-f9e3-0b97-6002767af331@shipmail.org>
Date: Thu, 3 Sep 2020 14:08:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <159913276436.16735.6772809621876628533@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 35/39] drm/i915: Encode fence specific
 waitqueue behaviour into the wait.flags
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDkvMy8yMCAxOjMyIFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBUaG9tYXMg
SGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA5LTAzIDEwOjUwOjQ1KQo+PiBPbiA5LzIvMjAgNDow
MiBQTSwgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKSB3cm90ZToKPj4+IEhpLCBDaHJpcywKPj4+
Cj4+PiBPbiA4LzI2LzIwIDM6MjggUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPj4+PiBVc2UgdGhl
IHdhaXRfcXVldWVfZW50cnkuZmxhZ3MgdG8gZGVub3RlIHRoZSBzcGVjaWFsIGZlbmNlIGJlaGF2
aW91cgo+Pj4+IChmbGF0dGVuaW5nIGNvbnRpbnVhdGlvbnMgYWxvbmcgZmVuY2UgY2hhaW5zLCBh
bmQgZm9yIHByb3BhZ2F0aW5nCj4+Pj4gZXJyb3JzKSByYXRoZXIgdGhhbiB0cnlpbmcgdG8gZGV0
ZWN0IG9yZGluYXJ5IHdhaXRlcnMgYnkgdGhlaXIKPj4+PiBmdW5jdGlvbnMuCj4+Pj4KPj4+PiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4+
PiAtLS0KPj4+PiAgwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jIHwgMjUg
KysrKysrKysrKysrKysrLS0tLS0tLS0tLQo+Pj4+ICDCoCAxIGZpbGUgY2hhbmdlZCwgMTUgaW5z
ZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jCj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3N3X2ZlbmNlLmMKPj4+PiBpbmRleCA0Y2QyMDM4Y2JlMzUuLjRlNTU3ZDFjNDY0NCAx
MDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMKPj4+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMKPj4+PiBAQCAtMTgs
MTAgKzE4LDE1IEBACj4+Pj4gIMKgICNkZWZpbmUgSTkxNV9TV19GRU5DRV9CVUdfT04oZXhwcikg
QlVJTERfQlVHX09OX0lOVkFMSUQoZXhwcikKPj4+PiAgwqAgI2VuZGlmCj4+Pj4gIMKgIC0jZGVm
aW5lIEk5MTVfU1dfRkVOQ0VfRkxBR19BTExPQyBCSVQoMykgLyogYWZ0ZXIgV1FfRkxBR18qIGZv
cgo+Pj4+IHNhZmV0eSAqLwo+Pj4+IC0KPj4+PiAgwqAgc3RhdGljIERFRklORV9TUElOTE9DSyhp
OTE1X3N3X2ZlbmNlX2xvY2spOwo+Pj4+ICDCoCArI2RlZmluZSBXUV9GTEFHX0JJVFMgXAo+Pj4+
ICvCoMKgwqAgQklUU19QRVJfVFlQRSh0eXBlb2ZfbWVtYmVyKHN0cnVjdCB3YWl0X3F1ZXVlX2Vu
dHJ5LCBmbGFncykpCj4+Pj4gKwo+Pj4+ICsvKiBhZnRlciBXUV9GTEFHXyogZm9yIHNhZmV0eSAq
Lwo+Pj4+ICsjZGVmaW5lIEk5MTVfU1dfRkVOQ0VfRkxBR19GRU5DRSBCSVQoV1FfRkxBR19CSVRT
IC0gMSkKPj4+PiArI2RlZmluZSBJOTE1X1NXX0ZFTkNFX0ZMQUdfQUxMT0MgQklUKFdRX0ZMQUdf
QklUUyAtIDIpCj4+PiBOb3Qgc3VyZSBpZiBzaGFyaW5nIHRoZSBmbGFncyBmaWVsZCB3aXRoIHRo
ZSB3YWl0LmMgaW1wbGVtZW50YXRpb24gaXMKPj4+IGZ1bGx5IE9LIGVpdGhlci4gSXMgdGhlIEBr
ZXkgcGFyYW1ldGVyIHRvIHRoZSB3YWtlIGZ1bmN0aW9uIHVzZWFibGU/IEkKPj4+IG1lYW4gcmF0
aGVyIHRoYW4gcGFzc2luZyBqdXN0IGEgbGlzdCBoZWFkIGNvdWxkIHdlIHBhc3Mgc29tZXRoaW5n
IGxpa2UKPj4+Cj4+PiBzdHJ1Y3QgaTkxNV9zd19mZW5jZV9rZXkgewo+Pj4gIMKgwqDCoCBib29s
IG5vX3JlY3Vyc2lvbjsgLyogTWFrZXMgdGhlIHdhaXQgZnVuY3Rpb24ganVzdCBwdXQgaXRzIGVu
dHJ5Cj4+PiBvbiBAY29udGludWF0aW9uIGFuZCByZXR1cm4gKi8KPj4+ICDCoMKgwqAgaW50IGVy
cm9yOwo+Pj4gIMKgwqDCoCBzdHJ1Y3QgbGlzdF9oZWFkIGNvbnRpbnVhdGlvbjsKPj4+IH0KPiBU
aGF0IHdvdWxkIG1lYW4gd2FpdF9ldmVudC1lc3F1ZSByb3V0aW5lcyBkbyBub3Qgd29yayBvbiBh
IGZlbmNlLgoKT0ssIHRoYXQgaXMgYSBuby1nbyB0aGVuLgoKPgo+PiBpbnRlcm5hbCB3YWtlIGZ1
bmN0aW9uIGluc3RlYWQgb2YgdGhlIGF1dG9yZW1vdmVfd2FrZV9mdW5jdGlvbiByZW1vdmUKPj4g
dGhlIGZyYWdpbGl0eS4gV291bGQgdGhhdCBiZSBwb3NzaWJsZT8KPiBhdXRvcmVtb3ZlIGlzIHRo
ZSBmdW5jdGlvbiB1c2VkIGJ5IGRpc3BsYXkgZm9yIGl0cyB3YWl0X2V2ZW50IGxvb3Agb3Zlcgo+
IG11bHRpcGxlIHNvdXJjZXMuCgpIbW0uIEkgZG9uJ3QgdGhpbmsgSSBmb2xsb3cuIEkgbWVhbnQg
aW5zdGVhZCBvZgoKaWYgKHBvcy0+ZnVuYyA9PSBhdXRvcmVtb3ZlX3dha2VfZnVuY3Rpb24pCiDC
oMKgIC4uLgplbHNlCiDCoMKgIGRvX2k5MTVfc3BlY2lmaWNfc3R1ZmY7Cgp3ZSB1c2UKCmlmIChw
b3MtPmZ1bmMgIT0gaTkxNV9zd19mZW5jZV93YWtlKQogwqDCoMKgIC4uLgplbHNlCiDCoMKgIGRv
X2k5MTVfc3BlY2lmaWNfc3R1ZmY7CgovVGhvbWFzCgoKCgo+IC1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
