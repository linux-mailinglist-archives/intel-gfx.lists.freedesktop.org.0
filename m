Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA8E166770
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 20:46:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25E066EE33;
	Thu, 20 Feb 2020 19:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa1.bahnhof.se (pio-pvt-msa1.bahnhof.se [79.136.2.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB8796EE33;
 Thu, 20 Feb 2020 19:46:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 3B30F3F5BB;
 Thu, 20 Feb 2020 20:46:32 +0100 (CET)
Authentication-Results: pio-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="izcx6XL5";
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from pio-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OglSPp781W3j; Thu, 20 Feb 2020 20:46:30 +0100 (CET)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 044C93F240;
 Thu, 20 Feb 2020 20:46:28 +0100 (CET)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 3BB9936016C;
 Thu, 20 Feb 2020 20:46:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1582227988; bh=2Rv+6NWKT0WtijEuV8W/K/3dFlXEglEJrvWOq2eLpPQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=izcx6XL5jSgB03MGGSWBnIz6fm0Dj86c79MS5WJXhoJ+jAxCmjP2LNh2JMtoVou8U
 MmTicXwd7T94QRRZ0kbfarM8bWdsItyiHIDrP1if9VDLCHysnWKLQrtXMniEjB80OM
 fL/DeFSa29HkxgkiTt1flCkg1aoJ6cKw8MIXreVo=
To: Daniel Vetter <daniel@ffwll.ch>
References: <20200217154509.2265-1-christian.koenig@amd.com>
 <20200217154509.2265-6-christian.koenig@amd.com>
 <20200217175518.GL2363188@phenom.ffwll.local>
 <f8ac7cbc-7c90-7119-735c-9f55adb6fa7f@shipmail.org>
 <CAKMK7uHG3EkEPbAQ3UEHHLcfmR+0NPq0wZuBX+s2-WCFdso8ew@mail.gmail.com>
 <79a0d79f-91bd-2481-740c-20e6c819c7c9@shipmail.org>
 <ee929c93-c9d7-7243-810e-94c6f0fc64b0@shipmail.org>
 <20200220180459.GS2363188@phenom.ffwll.local>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28VMware=29?= <thomas_os@shipmail.org>
Organization: VMware Inc.
Message-ID: <d1c37ec4-b63e-437a-a2be-80ba5192e048@shipmail.org>
Date: Thu, 20 Feb 2020 20:46:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200220180459.GS2363188@phenom.ffwll.local>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/amdgpu: implement
 amdgpu_gem_prime_move_notify v2
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
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMi8yMC8yMCA3OjA0IFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IE9uIFRodSwgRmViIDIw
LCAyMDIwIGF0IDEwOjM5OjA2QU0gKzAxMDAsIFRob21hcyBIZWxsc3Ryw7ZtIChWTXdhcmUpIHdy
b3RlOgo+PiBPbiAyLzE5LzIwIDc6NDIgQU0sIFRob21hcyBIZWxsc3Ryw7ZtIChWTXdhcmUpIHdy
b3RlOgo+Pj4gT24gMi8xOC8yMCAxMDowMSBQTSwgRGFuaWVsIFZldHRlciB3cm90ZToKPj4+PiBP
biBUdWUsIEZlYiAxOCwgMjAyMCBhdCA5OjE3IFBNIFRob21hcyBIZWxsc3Ryw7ZtIChWTXdhcmUp
Cj4+Pj4gPHRob21hc19vc0BzaGlwbWFpbC5vcmc+IHdyb3RlOgo+Pj4+PiBPbiAyLzE3LzIwIDY6
NTUgUE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+Pj4+PiBPbiBNb24sIEZlYiAxNywgMjAyMCBh
dCAwNDo0NTowOVBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+Pj4+IEltcGxl
bWVudCB0aGUgaW1wb3J0ZXIgc2lkZSBvZiB1bnBpbm5lZCBETUEtYnVmIGhhbmRsaW5nLgo+Pj4+
Pj4+Cj4+Pj4+Pj4gdjI6IHVwZGF0ZSBwYWdlIHRhYmxlcyBpbW1lZGlhdGVseQo+Pj4+Pj4+Cj4+
Pj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgo+Pj4+Pj4+IC0tLQo+Pj4+Pj4+ICDCoMKgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kbWFfYnVmLmMgfCA2Ngo+Pj4+Pj4+ICsrKysrKysrKysrKysrKysrKysrLQo+
Pj4+Pj4+ICDCoMKgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuY8Kg
IHzCoCA2ICsrCj4+Pj4+Pj4gIMKgwqAgMiBmaWxlcyBjaGFuZ2VkLCA3MSBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4+Pj4+Pj4KPj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYwo+Pj4+Pj4+IGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYwo+Pj4+Pj4+IGluZGV4IDc3MGJhYmE2MjFiMy4u
NDhkZTc2MjRkNDljIDEwMDY0NAo+Pj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kbWFfYnVmLmMKPj4+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfZG1hX2J1Zi5jCj4+Pj4+Pj4gQEAgLTQ1Myw3ICs0NTMsNzEgQEAgYW1kZ3B1
X2RtYV9idWZfY3JlYXRlX29iaihzdHJ1Y3QKPj4+Pj4+PiBkcm1fZGV2aWNlICpkZXYsIHN0cnVj
dCBkbWFfYnVmICpkbWFfYnVmKQo+Pj4+Pj4+ICDCoMKgwqDCoMKgIHJldHVybiBFUlJfUFRSKHJl
dCk7Cj4+Pj4+Pj4gIMKgwqAgfQo+Pj4+Pj4+Cj4+Pj4+Pj4gKy8qKgo+Pj4+Pj4+ICsgKiBhbWRn
cHVfZG1hX2J1Zl9tb3ZlX25vdGlmeSAtICZhdHRhY2gubW92ZV9ub3RpZnkgaW1wbGVtZW50YXRp
b24KPj4+Pj4+PiArICoKPj4+Pj4+PiArICogQGF0dGFjaDogdGhlIERNQS1idWYgYXR0YWNobWVu
dAo+Pj4+Pj4+ICsgKgo+Pj4+Pj4+ICsgKiBJbnZhbGlkYXRlIHRoZSBETUEtYnVmIGF0dGFjaG1l
bnQsIG1ha2luZyBzdXJlIHRoYXQKPj4+Pj4+PiB0aGUgd2UgcmUtY3JlYXRlIHRoZQo+Pj4+Pj4+
ICsgKiBtYXBwaW5nIGJlZm9yZSB0aGUgbmV4dCB1c2UuCj4+Pj4+Pj4gKyAqLwo+Pj4+Pj4+ICtz
dGF0aWMgdm9pZAo+Pj4+Pj4+ICthbWRncHVfZG1hX2J1Zl9tb3ZlX25vdGlmeShzdHJ1Y3QgZG1h
X2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCj4+Pj4+Pj4gK3sKPj4+Pj4+PiArwqDCoMKgIHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqID0gYXR0YWNoLT5pbXBvcnRlcl9wcml2Owo+Pj4+Pj4+ICvC
oMKgwqAgc3RydWN0IHd3X2FjcXVpcmVfY3R4ICp0aWNrZXQgPSBkbWFfcmVzdl9sb2NraW5nX2N0
eChvYmotPnJlc3YpOwo+Pj4+Pj4+ICvCoMKgwqAgc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1f
dG9fYW1kZ3B1X2JvKG9iaik7Cj4+Pj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgYW1kZ3B1X2RldmljZSAq
YWRldiA9IGFtZGdwdV90dG1fYWRldihiby0+dGJvLmJkZXYpOwo+Pj4+Pj4+ICvCoMKgwqAgc3Ry
dWN0IHR0bV9vcGVyYXRpb25fY3R4IGN0eCA9IHsgZmFsc2UsIGZhbHNlIH07Cj4+Pj4+Pj4gK8Kg
wqDCoCBzdHJ1Y3QgdHRtX3BsYWNlbWVudCBwbGFjZW1lbnQgPSB7fTsKPj4+Pj4+PiArwqDCoMKg
IHN0cnVjdCBhbWRncHVfdm1fYm9fYmFzZSAqYm9fYmFzZTsKPj4+Pj4+PiArwqDCoMKgIGludCBy
Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArwqDCoMKgIGlmIChiby0+dGJvLm1lbS5tZW1fdHlwZSA9PSBU
VE1fUExfU1lTVEVNKQo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4+
Pj4+PiArCj4+Pj4+Pj4gK8KgwqDCoCByID0gdHRtX2JvX3ZhbGlkYXRlKCZiby0+dGJvLCAmcGxh
Y2VtZW50LCAmY3R4KTsKPj4+Pj4+PiArwqDCoMKgIGlmIChyKSB7Cj4+Pj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgRFJNX0VSUk9SKCJGYWlsZWQgdG8gaW52YWxpZGF0ZSBETUEtYnVmCj4+
Pj4+Pj4gaW1wb3J0ICglZCkpXG4iLCByKTsKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCByZXR1cm47Cj4+Pj4+Pj4gK8KgwqDCoCB9Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICvCoMKgwqAgZm9y
IChib19iYXNlID0gYm8tPnZtX2JvOyBib19iYXNlOyBib19iYXNlID0gYm9fYmFzZS0+bmV4dCkg
ewo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBhbWRncHVfdm0gKnZtID0g
Ym9fYmFzZS0+dm07Cj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRtYV9y
ZXN2ICpyZXN2ID0gdm0tPnJvb3QuYmFzZS5iby0+dGJvLmJhc2UucmVzdjsKPj4+Pj4+PiArCj4+
Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHRpY2tldCkgewo+Pj4+Pj4gWWVhaCBz
byB0aGlzIGlzIGtpbmRhIHdoeSBJJ3ZlIGJlZW4gYSB0b3RhbCBwYWluIGFib3V0IHRoZQo+Pj4+
Pj4gZXhhY3Qgc2VtYW50aWNzCj4+Pj4+PiBvZiB0aGUgbW92ZV9ub3RpZnkgaG9vay4gSSB0aGlu
ayB3ZSBzaG91bGQgZmxhdC1vdXQgcmVxdWlyZQo+Pj4+Pj4gdGhhdCBpbXBvcnRlcnMKPj4+Pj4+
IF9hbHdheXNfIGhhdmUgYSB0aWNrZXQgYXR0YWNoIHdoZW4gdGhleSBjYWxsIHRoaXMsIGFuZCB0
aGF0Cj4+Pj4+PiB0aGV5IGNhbiBjb3BlCj4+Pj4+PiB3aXRoIGFkZGl0aW9uYWwgbG9ja3MgYmVp
bmcgdGFrZW4gKGkuZS4gZnVsbCBFREVBRExDSykgaGFuZGxpbmcuCj4+Pj4+Pgo+Pj4+Pj4gU2lt
cGxlc3Qgd2F5IHRvIGZvcmNlIHRoYXQgY29udHJhY3QgaXMgdG8gYWRkIGEgZHVtbXkgMm5kCj4+
Pj4+PiB3d19tdXRleCBsb2NrIHRvCj4+Pj4+PiB0aGUgZG1hX3Jlc3Ygb2JqZWN0LCB3aGljaCB3
ZSB0aGVuIGNhbiB0YWtlICNpZmRlZgo+Pj4+Pj4gQ09ORklHX1dXX01VVEVYX1NMT1dQQVRIX0RF
QlVHLiBQbHVzIG1hYnllIGEgV0FSTl9PTighdGlja2V0KS4KPj4+Pj4+Cj4+Pj4+PiBOb3cgdGhl
IHJlYWwgZGlzYXN0ZXIgaXMgaG93IHdlIGhhbmRsZSBkZWFkbG9ja3MuIFR3byBpc3N1ZXM6Cj4+
Pj4+Pgo+Pj4+Pj4gLSBJZGVhbGx5IHdlJ2Qga2VlcCBhbnkgbG9jayB3ZSd2ZSB0YWtlbiBsb2Nr
ZWQgdW50aWwgdGhlCj4+Pj4+PiBlbmQsIGl0IGhlbHBzCj4+Pj4+PiAgwqDCoMKgIG5lZWRsZXNz
IGJhY2tvZmZzLiBJJ3ZlIHBsYXllZCBhcm91bmQgYSBiaXQgd2l0aCB0aGF0Cj4+Pj4+PiBidXQg
bm90IGV2ZW4gcG9jCj4+Pj4+PiAgwqDCoMKgIGxldmVsLCBqdXN0IGFuIGlkZWE6Cj4+Pj4+Pgo+
Pj4+Pj4gaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9+ZGFudmV0L2RybS9jb21taXQvP2lk
PWIxNzk5YzVhMGYwMmRmOWUxYmIwOGQyN2JlMzczMzEyNTVhYjc1ODIKPj4+Pj4+Cj4+Pj4+Pgo+
Pj4+Pj4gIMKgwqDCoCBJZGVhIGlzIGVzc2VudGlhbGx5IHRvIHRyYWNrIGEgbGlzdCBvZiBvYmpl
Y3RzIHdlIGhhZCB0bwo+Pj4+Pj4gbG9jayBhcyBwYXJ0IG9mCj4+Pj4+PiAgwqDCoMKgIHRoZSB0
dG1fYm9fdmFsaWRhdGUgb2YgdGhlIG1haW4gb2JqZWN0Lgo+Pj4+Pj4KPj4+Pj4+IC0gU2Vjb25k
IG9uZSBpcyBpZiB3ZSBnZXQgYSBFREVBRExDSyBvbiBvbmUgb2YgdGhlc2UKPj4+Pj4+IHN1Ymxv
Y2tzIChsaWtlIHRoZQo+Pj4+Pj4gIMKgwqDCoCBvbmUgaGVyZSkuIFdlIG5lZWQgdG8gcGFzcyB0
aGF0IHVwIHRoZSBlbnRpcmUgY2FsbGNoYWluLAo+Pj4+Pj4gaW5jbHVkaW5nIGEKPj4+Pj4+ICDC
oMKgwqAgdGVtcG9yYXJ5IHJlZmVyZW5jZSAod2UgaGF2ZSB0byBkcm9wIGxvY2tzIHRvIGRvIHRo
ZQo+Pj4+Pj4gd3dfbXV0ZXhfbG9ja19zbG93Cj4+Pj4+PiAgwqDCoMKgIGNhbGwpLCBhbmQgbmVl
ZCBhIGN1c3RvbSBjYWxsYmFjayB0byBkcm9wIHRoYXQgdGVtcG9yYXJ5IHJlZmVyZW5jZQo+Pj4+
Pj4gIMKgwqDCoCAoc2luY2UgdGhhdCdzIGFsbCBkcml2ZXIgc3BlY2lmaWMsIG1pZ2h0IGV2ZW4g
YmUKPj4+Pj4+IGludGVybmFsIHd3X211dGV4IGFuZAo+Pj4+Pj4gIMKgwqDCoCBub3QgYW55dGhp
bmcgcmVtb3RlbHkgbG9va2luZyBsaWtlIGEgbm9ybWFsIGRtYV9idWYpLgo+Pj4+Pj4gVGhpcyBw
cm9iYWJseQo+Pj4+Pj4gIMKgwqDCoCBuZWVkcyB0aGUgZXhlYyB1dGlsIGhlbHBlcnMgZnJvbSB0
dG0sIGJ1dCBhdCB0aGUKPj4+Pj4+IGRtYV9yZXN2IGxldmVsLCBzbyB0aGF0Cj4+Pj4+PiAgwqDC
oMKgIHdlIGNhbiBkbyBzb21ldGhpbmcgbGlrZSB0aGlzOgo+Pj4+Pj4KPj4+Pj4+IHN0cnVjdCBk
bWFfcmVzdl90aWNrZXQgewo+Pj4+Pj4gIMKgwqDCoMKgwqDCoCBzdHJ1Y3Qgd3dfYWNxdWlyZV9j
dHggYmFzZTsKPj4+Pj4+Cj4+Pj4+PiAgwqDCoMKgwqDCoMKgIC8qIGNhbiBiZSBzZXQgYnkgYW55
b25lIChpbmNsdWRpbmcgb3RoZXIgZHJpdmVycykKPj4+Pj4+IHRoYXQgZ290IGhvbGQgb2YKPj4+
Pj4+ICDCoMKgwqDCoMKgwqDCoCAqIHRoaXMgdGlja2V0IGFuZCBoYWQgdG8gYWNxdWlyZSBzb21l
IG5ldyBsb2NrLiBUaGlzCj4+Pj4+PiBsb2NrIG1pZ2h0Cj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqAg
KiBwcm90ZWN0IGFueXRoaW5nLCBpbmNsdWRpbmcgZHJpdmVyLWludGVybmFsIHN0dWZmLCBhbmQg
aXNuJ3QKPj4+Pj4+ICDCoMKgwqDCoMKgwqDCoCAqIHJlcXVpcmVkIHRvIGJlIGEgZG1hX2J1ZiBv
ciBldmVuIGp1c3QgYSBkbWFfcmVzdi4gKi8KPj4+Pj4+ICDCoMKgwqDCoMKgwqAgc3RydWN0IHd3
X211dGV4ICpjb250ZW5kZWRfbG9jazsKPj4+Pj4+Cj4+Pj4+PiAgwqDCoMKgwqDCoMKgIC8qIGNh
bGxiYWNrIHdoaWNoIHRoZSBkcml2ZXIgKHdoaWNoIG1pZ2h0IGJlIGEgZG1hLWJ1ZiBleHBvcnRl
cgo+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgICogYW5kIG5vdCBtYXRjaGluZyB0aGUgZHJpdmVyIHRo
YXQgc3RhcnRlZCB0aGlzCj4+Pj4+PiBsb2NraW5nIHRpY2tldCkKPj4+Pj4+ICDCoMKgwqDCoMKg
wqDCoCAqIHNldHMgdG9nZXRoZXIgd2l0aCBAY29udGVuZGVkX2xvY2ssIGZvciB0aGUgbWFpbgo+
Pj4+Pj4gZHJpdmVyIHRvIGRyb3AKPj4+Pj4+ICDCoMKgwqDCoMKgwqDCoCAqIHdoZW4gaXQgY2Fs
bHMgZG1hX3Jlc3ZfdW5sb2NrIG9uIHRoZSBjb250ZW5kZWRfbG9jay4gKi8KPj4+Pj4+ICDCoMKg
wqDCoMKgwqAgdm9pZCAoZHJvcF9yZWYqKShzdHJ1Y3Qgd3dfbXV0ZXggKmNvbnRlbmRlZF9sb2Nr
KTsKPj4+Pj4+IH07Cj4+Pj4+Pgo+Pj4+Pj4gVGhpcyBpcyBhbGwgc3VwcmVtZWx5IG5hc3R5IChh
bHNvIHR0bV9ib192YWxpZGF0ZSB3b3VsZCBuZWVkIHRvIGJlCj4+Pj4+PiBpbXByb3ZlZCB0byBo
YW5kbGUgdGhlc2Ugc3VibG9ja3MgYW5kIHJhbmRvbSBuZXcgb2JqZWN0cwo+Pj4+Pj4gdGhhdCBj
b3VsZCBmb3JjZQo+Pj4+Pj4gYSB3d19tdXRleF9sb2NrX3Nsb3cpLgo+Pj4+Pj4KPj4+Pj4gSnVz
dCBhIHNob3J0IGNvbW1lbnQgb24gdGhpczoKPj4+Pj4KPj4+Pj4gTmVpdGhlciB0aGUgY3VycmVu
dGx5IHVzZWQgd2FpdC1kaWUgb3IgdGhlIHdvdW5kLXdhaXQgYWxnb3JpdGhtCj4+Pj4+ICpzdHJp
Y3RseSogcmVxdWlyZXMgYSBzbG93IGxvY2sgb24gdGhlIGNvbnRlbmRlZCBsb2NrLiBGb3IKPj4+
Pj4gd2FpdC1kaWUgaXQncwo+Pj4+PiBqdXN0IHZlcnkgY29udmVuaWVudCBzaW5jZSBpdCBtYWtl
cyB1cyBzbGVlcCBpbnN0ZWFkIG9mIHNwaW5uaW5nIHdpdGgKPj4+Pj4gLUVERUFETEsgb24gdGhl
IGNvbnRlbmRlZCBsb2NrLiBGb3Igd291bmQtd2FpdCBJSVJDIG9uZSBjb3VsZCBqdXN0Cj4+Pj4+
IGltbWVkaWF0ZWx5IHJlc3RhcnQgdGhlIHdob2xlIGxvY2tpbmcgdHJhbnNhY3Rpb24gYWZ0ZXIg
YW4KPj4+Pj4gLUVERUFETEssIGFuZAo+Pj4+PiB0aGUgdHJhbnNhY3Rpb24gd291bGQgYXV0b21h
dGljYWxseSBlbmQgdXAgd2FpdGluZyBvbiB0aGUgY29udGVuZGVkCj4+Pj4+IGxvY2ssIHByb3Zp
ZGVkIHRoZSBtdXRleCBsb2NrIHN0ZWFsaW5nIGlzIG5vdCBhbGxvd2VkLiBUaGVyZSBpcyBob3dl
dmVyCj4+Pj4+IGEgcG9zc2liaWxpdHkgdGhhdCB0aGUgdHJhbnNhY3Rpb24gd2lsbCBiZSB3b3Vu
ZGVkIGFnYWluIG9uIGFub3RoZXIKPj4+Pj4gbG9jaywgdGFrZW4gYmVmb3JlIHRoZSBjb250ZW5k
ZWQgbG9jaywgYnV0IEkgdGhpbmsgdGhlcmUgYXJlIHdheXMgdG8KPj4+Pj4gaW1wcm92ZSB0aGUg
d291bmQtd2FpdCBhbGdvcml0aG0gdG8gcmVkdWNlIHRoYXQgcHJvYmFiaWxpdHkuCj4+Pj4+Cj4+
Pj4+IFNvIGluIHNob3J0LCBjaG9vc2luZyB0aGUgd291bmQtd2FpdCBhbGdvcml0aG0gaW5zdGVh
ZCBvZiB3YWl0LWRpZSBhbmQKPj4+Pj4gcGVyaGFwcyBtb2RpZnlpbmcgdGhlIHd3IG11dGV4IGNv
ZGUgc29tZXdoYXQgd291bGQgcHJvYmFibHkgaGVscAo+Pj4+PiBwYXNzaW5nCj4+Pj4+IGFuIC1F
REVBRExLIHVwIHRoZSBjYWxsIGNoYWluIHdpdGhvdXQgcmVxdWlyaW5nIHBhc3NpbmcgdGhlIGNv
bnRlbmRlZAo+Pj4+PiBsb2NrLCBhcyBsb25nIGFzIGVhY2ggbG9ja2VyIHJlbGVhc2VzIGl0cyBv
d24gbG9ja3Mgd2hlbiByZWNlaXZpbmcgYW4KPj4+Pj4gLUVERUFETEsuCj4+Pj4gSG0gdGhpcyBp
cyBraW5kYSB0ZW1wdGluZywgc2luY2Ugcm9sbGluZyBvdXQgdGhlIGZ1bGwgYmFja29mZiB0cmlj
a2VyCj4+Pj4gYWNyb3NzIGRyaXZlciBib3VuZGFyaWVzIGlzIGdvaW5nIHRvIGJlIHJlYWwgcGFp
bmZ1bC4KPj4+Pgo+Pj4+IFdoYXQgSSdtIGtpbmRhIHdvcnJpZWQgYWJvdXQgaXMgdGhlIGRlYnVn
L3ZhbGlkYXRpb24gY2hlY2tzIHdlJ3JlCj4+Pj4gbG9zaW5nIHdpdGggdGhpcy4gVGhlIHJlcXVp
cmVkIGJhY2tvZmYgaGFzIHRoaXMgbmljZSBwcm9wZXJ0eSB0aGF0Cj4+Pj4gd3dfbXV0ZXggZGVi
dWcgY29kZSBjYW4gY2hlY2sgdGhhdCB3ZSd2ZSBmdWxseSB1bndvdW5kIGV2ZXJ5dGhpbmcgd2hl
bgo+Pj4+IHdlIHNob3VsZCwgdGhhdCB3ZSd2ZSBibG9ja2VkIG9uIHRoZSByaWdodCBsb2NrLCBh
bmQgdGhhdCB3ZSdyZQo+Pj4+IHJlc3RhcnRpbmcgZXZlcnl0aGluZyB3aXRob3V0IGtlZWxpbmcg
b3Zlci4gV2l0aG91dCB0aGF0IEkgdGhpbmsgd2UKPj4+PiBjb3VsZCBlbmQgdXAgd2l0aCBzaXR1
YXRpb25zIHdoZXJlIGEgZHJpdmVyIGluIHRoZSBtaWRkbGUgZmVlbHMgbGlrZQo+Pj4+IGhhbmRs
aW5nIHRoZSBFREVBRExDSywgd2hpY2ggbWlnaHQgZ28gd2VsbCBtb3N0IG9mIHRoZSB0aW1lcyAo
dGhlCj4+Pj4gZGVhZGxvY2sgd2lsbCBwcm9iYWJseSBiZSBtb3N0bHkgd2l0aGluIGEgZ2l2ZW4g
ZHJpdmVyLCBub3QgYWNyb3NzKS4KPj4+PiBSaWdodCB1cCB0byB0aGUgcG9pbnQgd2hlcmUgc29t
ZW9uZSBjcmVhdGVzIGEgZGVhZGxvY2sgYWNyb3NzIGRyaXZlcnMsCj4+Pj4gYW5kIHRoZSBsYWNr
IG9mIGZ1bGwgcm9sbGJhY2sgd2lsbCBiZSBmZWx0Lgo+Pj4+Cj4+Pj4gU28gbm90IHN1cmUgd2hl
dGhlciB3ZSBjYW4gc3RpbGwga2VlcCBhbGwgdGhlc2UgZGVidWcvdmFsaWRhdGlvbgo+Pj4+IGNo
ZWNrcywgb3Igd2hldGhlciB0aGlzIGlzIGEgc3RlcCB0b28gZmFyIHRvd2FyZHMgY2xldmVyIHRy
aWNrcy4KPj4+IEkgdGhpbmsgd2UgY291bGQgZGVmaW5pdGVseSBmaW5kIGEgd2F5IHRvIGtlZXAg
ZGVidWdnaW5nIHRvIG1ha2Ugc3VyZQo+Pj4gZXZlcnl0aGluZyBpcyB1bndvdW5kIGJlZm9yZSBh
dHRlbXB0aW5nIHRvIHJlc3RhcnQgdGhlIGxvY2tpbmcKPj4+IHRyYW5zYWN0aW9uLiBCdXQgdGhl
IGRlYnVnIGNoZWNrIHRoYXQgd2UncmUgcmVzdGFydGluZyBvbiB0aGUgY29udGVuZGVkCj4+PiBs
b2NrIG9ubHkgcmVhbGx5IG1ha2VzIHNlbnNlIGZvciB3YWl0LWRpZSwgKGFuZCB3ZSBjb3VsZCBl
YXNpbHkga2VlcCBpdAo+Pj4gZm9yIHdhaXQtZGllKS4gVGhlIGxvY2sgcmV0dXJuaW5nIC1FREVB
RExLIGZvciB3b3VuZC13YWl0IG1heSBhY3R1YWxseQo+Pj4gbm90IGJlIHRoZSBjb250ZW5kaW5n
IGxvY2sgYnV0IGFuIGFyYml0cmFyeSBsb2NrIHRoYXQgdGhlIHdvdW5kZWQKPj4+IHRyYW5zYWN0
aW9uIGF0dGVtcHRzIHRvIHRha2UgYWZ0ZXIgaXQgaXMgd291bmRlZC4KPj4+Cj4+PiBTbyBpbiB0
aGUgZW5kIElNTyB0aGlzIGlzIGEgdHJhZGVvZmYgYmV0d2VlbiBhZGRlZCAocG9zc2libHkgc2V2
ZXJlKQo+Pj4gbG9ja2luZyBjb21wbGV4aXR5IGludG8gZG1hLWJ1ZiBhbmQgbm90IGJlaW5nIGFi
bGUgdG8gc3dpdGNoIGJhY2sgdG8KPj4+IHdhaXQtZGllIGVmZmljaWVudGx5IGlmIHdlIG5lZWQg
LyB3YW50IHRvIGRvIHRoYXQuCj4+Pgo+Pj4gL1Rob21hcwo+PiBBbmQgYXMgYSBjb25zZXF1ZW5j
ZSBhbiBpbnRlcmZhY2UgKmNvdWxkKiBiZToKPj4KPj4gKikgV2UgaW50cm9kdWNlIGZ1bmN0aW9u
cwo+Pgo+PiB2b2lkIHd3X2FjcXVpcmVfcmVsYXgoc3RydWN0IHd3X2FjcXVpcmVfY3R4ICpjdHgp
Owo+PiBpbnQgd3dfYWNxdWlyZV9yZWxheF9pbnRlcnJ1cHRpYmxlKHN0cnVjdCB3d19hY3F1aXJl
X2N0eCAqY3R4KTsKPj4KPj4gdGhhdCBjYW4gYmUgdXNlZCBpbnN0ZWFkIG9mIHd3X211dGV4X2xv
Y2tfc2xvdygpIGluIHRoZSBhYnNlbmNlIG9mIGEKPj4gY29udGVuZGluZyBsb2NrIHRvIGF2b2lk
IHNwaW5uaW5nIG9uIC1FREVBRExLLiBXaGlsZSB0cnlpbmcgdG8gdGFrZSB0aGUKPj4gY29udGVu
ZGluZyBsb2NrIGlzIHByb2JhYmx5IHRoZSBiZXN0IGNob2ljZSB0aGVyZSBhcmUgdmFyaW91cyBz
ZWNvbmQgYmVzdAo+PiBhcHByb2FjaGVzIHRoYXQgY2FuIGJlIGV4cGxvcmVkLCBmb3IgZXhhbXBs
ZSB3YWl0aW5nIG9uIHRoZSBjb250ZW5kaW5nCj4+IGFjcXVpcmUgdG8gZmluaXNoIG9yIGluIHRo
ZSB3b3VuZC13YWl0IGNhc2UsIHBlcmhhcHMgZG8gbm90aGluZy4gVGhlc2UKPj4gZnVuY3Rpb25z
IHdpbGwgYWxzbyBoZWxwIHVzIGtlZXAgdGhlIGRlYnVnZ2luZy4KPiBIbSAuLi4gSSBndWVzcyB0
aGlzIGNvdWxkIHdvcmsuIFRyb3VibGUgaXMsIGl0IG9ubHkgZ2V0cyByaWQgb2YgdGhlCj4gc2xv
d3BhdGggbG9ja2luZyBib29rLWtlZXBpbmcgaGVhZGFjaGVzLCB3ZSBzdGlsbCBoYXZlIHF1aXRl
IGEgZmV3IG90aGVycy4KPgo+PiAqKSBBIGZ1bmN0aW9uIHJldHVybmluZyAtRURFQURMSyB0byBh
IGNhbGxlciAqbXVzdCogaGF2ZSBhbHJlYWR5IHJlbGVhc2VkCj4+IGl0cyBvd24gbG9ja3MuCj4g
U28gdGhpcyB0aWVzIHRvIGFub3RoZXIgcXVlc3Rpb24sIGFzIGluIHNob3VsZCB0aGVzZSBjYWxs
YmFja3MgaGF2ZSB0bwo+IGRyb3BzIHRoZSBsb2NrcyB0aGVpIGFjcXVpcmUgKG11Y2ggc2ltcGxl
ciBjb2RlKSBvciBub3QgKGxlc3MgdGhyYXNoaW5nLAo+IGlmIHdlIGRyb3AgbG9ja3Mgd2UgbWln
aHQgZW5kIHVwIGluIGEgc2l0dWF0aW9uIHdoZXJlIHRocmVhZHMgdGhyYXNoCj4gYXJvdW5kIGlu
c3RlYWQgb2YgcmVhbGl6aW5nIHF1aWNrZXIgdGhhdCB0aGV5J3JlIGFjdHVhbGx5IGRlYWRsb2Nr
aW5nIGFuZAo+IG9uZSBvZiB0aGVtIHNob3VsZCBzdG9wIGFuZCBiYWNrIG9mZikuCgpIbW0uLiBD
b3VsZCB5b3UgZGVzY3JpYmUgc3VjaCBhIHRocmFzaGluZyBjYXNlIHdpdGggYW4gZXhhbXBsZT8K
CgovVGhvbWFzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
