Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9931F983A3
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 20:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F4966E9B3;
	Wed, 21 Aug 2019 18:50:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5852389B67;
 Wed, 21 Aug 2019 15:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id A61313F68A;
 Wed, 21 Aug 2019 17:19:49 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hH0nG1oCclXk; Wed, 21 Aug 2019 17:19:48 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 6D2763F670;
 Wed, 21 Aug 2019 17:19:46 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id AC1F53602D6;
 Wed, 21 Aug 2019 17:19:46 +0200 (CEST)
To: Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20190820145336.15649-1-daniel.vetter@ffwll.ch>
 <20190820145336.15649-4-daniel.vetter@ffwll.ch>
 <a9190400-2414-8d83-0f37-61eb0f16504a@shipmail.org>
 <45aaf1ba-e8b8-d92e-7ae2-39ed746ffa3a@shipmail.org>
 <CAKMK7uE0Zp86jbGyWnNBOsGA=tiNAwYP8WqdH-AHEYthWPf7jw@mail.gmail.com>
 <2b1ac3ab-4a21-88cc-e518-90f675528ab4@shipmail.org>
 <CAKMK7uHEAkjneZ5k=XfuJ9hftErt7F_UOQoZaUQkpoDkBiCX+w@mail.gmail.com>
 <bdecacf3-cb28-d1a1-efb8-49d347f3ab3f@shipmail.org>
 <CAKMK7uHmN4TpksZSA-v8gsEHiwyUqTo-QOgG2gzbNhHQ01o7jA@mail.gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28VMware=29?= <thomas_os@shipmail.org>
Organization: VMware Inc.
Message-ID: <902287e9-20ad-f88f-cb1e-2cc84f45eb0e@shipmail.org>
Date: Wed, 21 Aug 2019 17:19:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKMK7uHmN4TpksZSA-v8gsEHiwyUqTo-QOgG2gzbNhHQ01o7jA@mail.gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 21 Aug 2019 18:50:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=shipmail.org; s=mail; 
 t=1566400786; bh=JAZcaOS7zPA/wnGwoe42/wlmdj5Esqyb1MDyIVc2FsY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=XHmkTdyShoCLdHlG2zEbCIjLBFKsZOgeWDeQEkJuXqG3bfpQHuYAcB71JYNqoQj/7
 JLpFrj16hTDHhKFkNDDBa3wum9n0xL2hYIwPpHX1xqBuuPgmKy6hvxWudoFlSuA80+
 b9QvaMamU75fR/yMimgVsg412pnkE6GkXoREqWhs=
X-Mailman-Original-Authentication-Results: ste-pvt-msa1.bahnhof.se;
 dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=XHmkTdyS; 
 dkim-atps=neutral
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/ttm: remove ttm_bo_wait_unreserved
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
Cc: Thomas Hellstrom <thellstrom@vmware.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Huang Rui <ray.huang@amd.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Christian Koenig <christian.koenig@amd.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gOC8yMS8xOSA1OjE0IFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IE9uIFdlZCwgQXVnIDIx
LCAyMDE5IGF0IDU6MDMgUE0gVGhvbWFzIEhlbGxzdHLDtm0gKFZNd2FyZSkKPiA8dGhvbWFzX29z
QHNoaXBtYWlsLm9yZz4gd3JvdGU6Cj4+IE9uIDgvMjEvMTkgNDo0NyBQTSwgRGFuaWVsIFZldHRl
ciB3cm90ZToKPj4+IE9uIFdlZCwgQXVnIDIxLCAyMDE5IGF0IDQ6MjcgUE0gVGhvbWFzIEhlbGxz
dHLDtm0gKFZNd2FyZSkKPj4+IDx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPj4+PiBP
biA4LzIxLzE5IDQ6MDkgUE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+Pj4+IE9uIFdlZCwgQXVn
IDIxLCAyMDE5IGF0IDI6NDcgUE0gVGhvbWFzIEhlbGxzdHLDtm0gKFZNd2FyZSkKPj4+Pj4gPHRo
b21hc19vc0BzaGlwbWFpbC5vcmc+IHdyb3RlOgo+Pj4+Pj4gT24gOC8yMS8xOSAyOjQwIFBNLCBU
aG9tYXMgSGVsbHN0csO2bSAoVk13YXJlKSB3cm90ZToKPj4+Pj4+PiBPbiA4LzIwLzE5IDQ6NTMg
UE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+Pj4+Pj4+IFdpdGggbm91dmVhdSBmaXhlZCBhbGwg
dHRtLXVzaW5nIGRyaXZlcyBoYXZlIHRoZSBjb3JyZWN0IG5lc3Rpbmcgb2YKPj4+Pj4+Pj4gbW1h
cF9zZW0gdnMgZG1hX3Jlc3YsIGFuZCB3ZSBjYW4ganVzdCBsb2NrIHRoZSBidWZmZXIuCj4+Pj4+
Pj4+Cj4+Pj4+Pj4+IEFzc3VtaW5nIEkgZGlkbid0IHNjcmV3IHVwIGFueXRoaW5nIHdpdGggbXkg
YXVkaXQgb2YgY291cnNlLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPj4+Pj4+Pj4gQ2M6IENocmlzdGlhbiBL
b2VuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4+Pj4+Pj4gQ2M6IEh1YW5nIFJ1aSA8
cmF5Lmh1YW5nQGFtZC5jb20+Cj4+Pj4+Pj4+IENjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVk
aGF0LmNvbT4KPj4+Pj4+Pj4gQ2M6ICJWTXdhcmUgR3JhcGhpY3MiIDxsaW51eC1ncmFwaGljcy1t
YWludGFpbmVyQHZtd2FyZS5jb20+Cj4+Pj4+Pj4+IENjOiBUaG9tYXMgSGVsbHN0cm9tIDx0aGVs
bHN0cm9tQHZtd2FyZS5jb20+Cj4+Pj4+Pj4+IC0tLQo+Pj4+Pj4+PiAgICAgIGRyaXZlcnMvZ3B1
L2RybS90dG0vdHRtX2JvLmMgICAgfCAzNCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KPj4+Pj4+Pj4gICAgICBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jIHwgMjYgKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4+Pj4+PiAgICAgIGluY2x1ZGUvZHJtL3R0bS90dG1f
Ym9fYXBpLmggICAgfCAgMSAtCj4+Pj4+Pj4+ICAgICAgMyBmaWxlcyBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgNjAgZGVsZXRpb25zKC0pCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8u
Ywo+Pj4+Pj4+PiBpbmRleCAyMGZmNTZmMjdhYTQuLmE5NTJkZDYyNGIwNiAxMDA2NDQKPj4+Pj4+
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+Pj4+Pj4+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4+Pj4+Pj4+IEBAIC0xOTU0LDM3ICsxOTU0LDMgQEAg
dm9pZCB0dG1fYm9fc3dhcG91dF9hbGwoc3RydWN0IHR0bV9ib19kZXZpY2UKPj4+Pj4+Pj4gKmJk
ZXYpCj4+Pj4+Pj4+ICAgICAgICAgICAgICA7Cj4+Pj4+Pj4+ICAgICAgfQo+Pj4+Pj4+PiAgICAg
IEVYUE9SVF9TWU1CT0wodHRtX2JvX3N3YXBvdXRfYWxsKTsKPj4+Pj4+Pj4gLQo+Pj4+Pj4+PiAt
LyoqCj4+Pj4+Pj4+IC0gKiB0dG1fYm9fd2FpdF91bnJlc2VydmVkIC0gaW50ZXJydXB0aWJsZSB3
YWl0IGZvciBhIGJ1ZmZlciBvYmplY3QKPj4+Pj4+Pj4gdG8gYmVjb21lCj4+Pj4+Pj4+IC0gKiB1
bnJlc2VydmVkCj4+Pj4+Pj4+IC0gKgo+Pj4+Pj4+PiAtICogQGJvOiBQb2ludGVyIHRvIGJ1ZmZl
cgo+Pj4+Pj4+PiAtICovCj4+Pj4+Pj4+IC1pbnQgdHRtX2JvX3dhaXRfdW5yZXNlcnZlZChzdHJ1
Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKQo+Pj4+Pj4+PiAtewo+Pj4+Pj4+PiAtICAgIGludCBy
ZXQ7Cj4+Pj4+Pj4+IC0KPj4+Pj4+Pj4gLSAgICAvKgo+Pj4+Pj4+PiAtICAgICAqIEluIHRoZSBh
YnNlbnNlIG9mIGEgd2FpdF91bmxvY2tlZCBBUEksCj4+Pj4+Pj4+IC0gICAgICogVXNlIHRoZSBi
bzo6d3VfbXV0ZXggdG8gYXZvaWQgdHJpZ2dlcmluZyBsaXZlbG9ja3MgZHVlIHRvCj4+Pj4+Pj4+
IC0gICAgICogY29uY3VycmVudCB1c2Ugb2YgdGhpcyBmdW5jdGlvbi4gTm90ZSB0aGF0IHRoaXMg
dXNlIG9mCj4+Pj4+Pj4+IC0gICAgICogYm86Ond1X211dGV4IGNhbiBnbyBhd2F5IGlmIHdlIGNo
YW5nZSBsb2NraW5nIG9yZGVyIHRvCj4+Pj4+Pj4+IC0gICAgICogbW1hcF9zZW0gLT4gYm86OnJl
c2VydmUuCj4+Pj4+Pj4+IC0gICAgICovCj4+Pj4+Pj4+IC0gICAgcmV0ID0gbXV0ZXhfbG9ja19p
bnRlcnJ1cHRpYmxlKCZiby0+d3VfbXV0ZXgpOwo+Pj4+Pj4+PiAtICAgIGlmICh1bmxpa2VseShy
ZXQgIT0gMCkpCj4+Pj4+Pj4+IC0gICAgICAgIHJldHVybiAtRVJFU1RBUlRTWVM7Cj4+Pj4+Pj4+
IC0gICAgaWYgKCFkbWFfcmVzdl9pc19sb2NrZWQoYm8tPmJhc2UucmVzdikpCj4+Pj4+Pj4+IC0g
ICAgICAgIGdvdG8gb3V0X3VubG9jazsKPj4+Pj4+Pj4gLSAgICByZXQgPSBkbWFfcmVzdl9sb2Nr
X2ludGVycnVwdGlibGUoYm8tPmJhc2UucmVzdiwgTlVMTCk7Cj4+Pj4+Pj4+IC0gICAgaWYgKHJl
dCA9PSAtRUlOVFIpCj4+Pj4+Pj4+IC0gICAgICAgIHJldCA9IC1FUkVTVEFSVFNZUzsKPj4+Pj4+
Pj4gLSAgICBpZiAodW5saWtlbHkocmV0ICE9IDApKQo+Pj4+Pj4+PiAtICAgICAgICBnb3RvIG91
dF91bmxvY2s7Cj4+Pj4+Pj4+IC0gICAgZG1hX3Jlc3ZfdW5sb2NrKGJvLT5iYXNlLnJlc3YpOwo+
Pj4+Pj4+PiAtCj4+Pj4+Pj4+IC1vdXRfdW5sb2NrOgo+Pj4+Pj4+PiAtICAgIG11dGV4X3VubG9j
aygmYm8tPnd1X211dGV4KTsKPj4+Pj4+Pj4gLSAgICByZXR1cm4gcmV0Owo+Pj4+Pj4+PiAtfQo+
Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYwo+Pj4+
Pj4+PiBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMKPj4+Pj4+Pj4gaW5kZXggNzZl
ZWRiOTYzNjkzLi41MDVlMTc4N2FlZWEgMTAwNjQ0Cj4+Pj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS90dG0vdHRtX2JvX3ZtLmMKPj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90
dG1fYm9fdm0uYwo+Pj4+Pj4+PiBAQCAtMTI1LDMxICsxMjUsNyBAQCBzdGF0aWMgdm1fZmF1bHRf
dCB0dG1fYm9fdm1fZmF1bHQoc3RydWN0Cj4+Pj4+Pj4+IHZtX2ZhdWx0ICp2bWYpCj4+Pj4+Pj4+
ICAgICAgICAgICAgICAmYmRldi0+bWFuW2JvLT5tZW0ubWVtX3R5cGVdOwo+Pj4+Pj4+PiAgICAg
ICAgICBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgY3ZtYTsKPj4+Pj4+Pj4gICAgICAtICAgIC8qCj4+
Pj4+Pj4+IC0gICAgICogV29yayBhcm91bmQgbG9ja2luZyBvcmRlciByZXZlcnNhbCBpbiBmYXVs
dCAvIG5vcGZuCj4+Pj4+Pj4+IC0gICAgICogYmV0d2VlbiBtbWFwX3NlbSBhbmQgYm9fcmVzZXJ2
ZTogUGVyZm9ybSBhIHRyeWxvY2sgb3BlcmF0aW9uCj4+Pj4+Pj4+IC0gICAgICogZm9yIHJlc2Vy
dmUsIGFuZCBpZiBpdCBmYWlscywgcmV0cnkgdGhlIGZhdWx0IGFmdGVyIHdhaXRpbmcKPj4+Pj4+
Pj4gLSAgICAgKiBmb3IgdGhlIGJ1ZmZlciB0byBiZWNvbWUgdW5yZXNlcnZlZC4KPj4+Pj4+Pj4g
LSAgICAgKi8KPj4+Pj4+Pj4gLSAgICBpZiAodW5saWtlbHkoIWRtYV9yZXN2X3RyeWxvY2soYm8t
PmJhc2UucmVzdikpKSB7Cj4+Pj4+Pj4+IC0gICAgICAgIGlmICh2bWYtPmZsYWdzICYgRkFVTFRf
RkxBR19BTExPV19SRVRSWSkgewo+Pj4+Pj4+PiAtICAgICAgICAgICAgaWYgKCEodm1mLT5mbGFn
cyAmIEZBVUxUX0ZMQUdfUkVUUllfTk9XQUlUKSkgewo+Pj4+Pj4+PiAtICAgICAgICAgICAgICAg
IHR0bV9ib19nZXQoYm8pOwo+Pj4+Pj4+PiAtIHVwX3JlYWQoJnZtZi0+dm1hLT52bV9tbS0+bW1h
cF9zZW0pOwo+Pj4+Pj4+PiAtICAgICAgICAgICAgICAgICh2b2lkKSB0dG1fYm9fd2FpdF91bnJl
c2VydmVkKGJvKTsKPj4+Pj4+Pj4gLSAgICAgICAgICAgICAgICB0dG1fYm9fcHV0KGJvKTsKPj4+
Pj4+Pj4gLSAgICAgICAgICAgIH0KPj4+Pj4+Pj4gLQo+Pj4+Pj4+PiAtICAgICAgICAgICAgcmV0
dXJuIFZNX0ZBVUxUX1JFVFJZOwo+Pj4+Pj4+PiAtICAgICAgICB9Cj4+Pj4+Pj4+IC0KPj4+Pj4+
Pj4gLSAgICAgICAgLyoKPj4+Pj4+Pj4gLSAgICAgICAgICogSWYgd2UnZCB3YW50IHRvIGNoYW5n
ZSBsb2NraW5nIG9yZGVyIHRvCj4+Pj4+Pj4+IC0gICAgICAgICAqIG1tYXBfc2VtIC0+IGJvOjpy
ZXNlcnZlLCB3ZSdkIHVzZSBhIGJsb2NraW5nIHJlc2VydmUgaGVyZQo+Pj4+Pj4+PiAtICAgICAg
ICAgKiBpbnN0ZWFkIG9mIHJldHJ5aW5nIHRoZSBmYXVsdC4uLgo+Pj4+Pj4+PiAtICAgICAgICAg
Ki8KPj4+Pj4+PiBJIHRoaW5rIHlvdSBzaG91bGQganVzdGlmeSB3aHkgdGhlIGFib3ZlIGNvZGUg
aXMgcmVtb3ZlZCwgc2luY2UgdGhlCj4+Pj4+Pj4gY29tbWVudHMgYWN0dWFsbHkgb3V0bGluZXMg
d2hhdCB0byBkbyBpZiB3ZSBjaGFuZ2UgbG9ja2luZyBvcmRlci4KPj4+Pj4+Pgo+Pj4+Pj4+IFRo
ZSBjb2RlIHRoYXQncyByZW1vdmVkIGFib3ZlIGlzIG5vdCBmb3IgYWRqdXN0aW5nIGxvY2tpbmcg
b3JkZXJzIGJ1dAo+Pj4+Pj4+IHRvIGRlY3JlYXNlIHRoZSBtbSBsYXRlbmN5IGJ5IHJlbGVhc2lu
ZyB0aGUgbW1hcF9zZW0gd2hpbGUgd2FpdGluZyBmb3IKPj4+Pj4+PiBibyByZXNlcnZlIHdoaWNo
IGluIHR1cm4gbWlnaHQgYmUgd2FpdGluZyBmb3IgR1BVLiBBdCBhIG1pbmltdW0gd2UKPj4+Pj4+
PiBzaG91bGQgaGF2ZSBhIHNlcGFyYXRlIHBhdGNoIHdpdGgganVzdGlmaWNhdGlvbi4KPj4+Pj4+
Pgo+Pj4+Pj4+IE5vdGUgdGhhdCB0aGUgY2FsbGVyIGhlcmUgZW5zdXJlcyBsb2NraW5nIHByb2dy
ZXNzIGJ5IGFkanVzdGluZyB0aGUKPj4+Pj4+PiBSRVRSWSBmbGFncyBhZnRlciBhIHJldHJ5Lgo+
Pj4+PiBUaGF0IHdvdWxkIGJlIHBhdGNoZXMgMSYyIGluIHRoaXMgc2VyaWVzLgo+Pj4+Pgo+Pj4+
IEhtbT8gVGhvc2Ugc2VlbSB0byB0b3VjaCBvbmx5IGRtYS1idWYgYW5kIG5vdXZlYXUgbm90IHR0
bT8gIEkgbWVhbiB0aGlzCj4+Pj4gcGF0Y2ggc2hvdWxkIGxvb2sgYWxvbmcgdGhlIGxpbmVzIG9m
IChiYXNlZCBvbiBhbiBvbGRlciB0cmVlKSB0bwo+Pj4+IGltcGxlbWVudCB0aGUgbmV3IGxvY2tp
bmctb3JkZXIgbW1hcF9zZW0tPnJlc2VydmF0aW9uLAo+Pj4gT25seSBub3V2ZWF1IHdhcyBicmVh
a2luZyB3YXMgZG9pbmcgY29weV8qX3VzZXIgb3IgZ2V0X3VzZXJfcGFnZXMKPj4+IHdoaWxlIGhv
bGRpbmcgZG1hX3Jlc3YgbG9ja3MsIG5vIG9uZSBlbHNlLiBTbyBub3RoaW5nIGVsc2UgbmVlZGVk
IHRvCj4+PiBiZSBjaGFuZ2VkLiBCdXQgcGF0Y2ggMSBjb250YWlucyB0aGUgZnVsbCBhdWRpdC4g
SSBtaWdodCBoYXZlIG1pc3NlZAo+Pj4gc29tZXRoaW5nLgo+Pj4KPj4+PiBidXQgdG8ga2VlcCB0
aGUgbW0gbGF0ZW5jeSBvcHRpbWl6YXRpb24gdXNpbmcgdGhlIFJFVFJZIGZ1bmN0aW9uYWxpdHk6
Cj4+PiBTdGlsbCBubyBpZGVhIHdoeSB0aGlzIGlzIG5lZWRlZD8gQWxsIHRoZSBjb21tZW50cyBo
ZXJlIGFuZCB0aGUgY29kZQo+Pj4gYW5kIGhpc3Rvcnkgc2VlbSBsaWtlIHRoZXkndmUgYmVlbiBh
Ym91dCB0aGUgbW1hcF9zZW0gdnMgZG1hX3Jlc3YKPj4+IGludmVyc2lvbiBiZXR3ZWVuIGRyaXZl
ciBpb2N0bHMgYW5kIGZhdWx0IGhhbmRsaW5nIGhlcmUuIE9uY2UgdGhhdCdzCj4+PiBvZmZpY2lh
bGx5IGZpeGVkIHRoZXJlJ3Mgbm8gcmVhc29uIHRvIHBsYXkgZ2FtZXMgaGVyZSBhbmQgcmV0cnkg
bG9vcHMKPj4+IC0gcHJldmlvdXNseSB0aGF0IHdhcyBuZWNlc3NhcnkgYmVjYXVzZSB0aGUgb2xk
IHR0bV9ib192bV9mYXVsdCBoYWQgYQo+Pj4gYnVzeSBzcGluIGFuZCB0aGF0J3MgZGVmaW5pdGVs
eSBub3QgbmljZS4gSWYgaXQncyBuZWVkZWQgSSB0aGluayBpdAo+Pj4gc2hvdWxkIGJlIGEgc2Vj
b25kIHBhdGNoIG9uIHRvcCwgdG8ga2VlcCB0aGlzIGFsbCBjbGVhci4gSSBoYWQgdG8KPj4+IGF1
ZGl0IGFuIGVub3Jtb3VzIGFtb3VudCBvZiBjb2RlLCBJJ2QgbGlrZSB0byBtYWtlIHN1cmUgSSBk
aWRuJ3QgbWlzcwo+Pj4gYW55dGhpbmcgYmVmb3JlIHdlIHN0YXJ0IHRvIG1ha2UgdGhpcyBzdXBl
ciBmYW5jeSBhZ2Fpbi4gRnVydGhlcgo+Pj4gcGF0Y2hlcyBvbiB0b3AgaXMgb2J2aW91c2x5IGFs
bCBmaW5lIHdpdGggbWUuCj4+PiAtRGFuaWVsCj4+IFllcywgYnV0IHRoZXJlIGFyZSB0d28gZGlm
ZmVyZW50IHRoaW5ncyB5b3UgcmVtb3ZlIGhlcmUuIE9uZSBpcyB0aGUKPj4gd29ya2Fyb3VuZCBm
b3IgdGhlIGxvY2tpbmcgcmV2ZXJzYWwsIHdoaWNoIGlzIG9idmlvdXNseSBjb3JyZWN0Lgo+Pgo+
PiBPbmUgaXMgVFRNJ3MgaW1wbGVtZW50YXRpb24gb2YgdGhlIG1tYXBfc2VtIGxhdGVuY3kgb3B0
aW1pemF0aW9uLCB3aGljaAo+PiBsb29rcyBsaWtlIGFuIG92ZXJzaWdodC4KPj4KPj4gVGhhdCBv
cHRpbWl6YXRpb24gaXMgd2h5IHRoZSBWTV9GQVVMVF9SRVRSWSBmdW5jdGlvbmFsaXR5IHdhcyBh
ZGRlZCB0bwo+PiBtbSBpbiB0aGUgZmlyc3QgcGxhY2UgYW5kIGlzIGludGVuZGVkIHRvIGJlIHVz
ZWQgd2hlbiBkcml2ZXJzIGV4cGVjdCBhCj4+IHN1YnN0YW50aWFsIHNsZWVwIHRvIGF2b2lkIGtl
ZXBpbmcgdGhlIHByZXR0eSBnbG9iYWxpc2ggbW1hcF9zZW0gaGVsZAo+PiB3aGlsZSB0aGF0IHNs
ZWVwIGlzIHRha2luZyBwbGFjZS4gV2UgZG8gZXhhY3RseSB0aGUgc2FtZSB3aGlsZSB3YWl0aW5n
Cj4+IGZvciBtb3ZlLWZlbmNlcyAodHRtX2JvX3ZtX2ZhdWx0X2lkbGUpIGFuZCBvdGhlciBkcml2
ZXJzIHRoYXQgZXhwZWN0Cj4+IGxvbmcgd2FpdHMgaW4gdGhlIGZhdWx0IGhhbmRsZXIgZG8gdGhl
IHNhbWUuCj4gSG0sIGFyZSB3ZSBndWFyYW50ZWVkIHRoYXQgY29yZSBtbSB3aWxsIG9ubHkgY2Fs
bCB1cyBvbmNlIHdpdGgKPiBBTExPV19SRVRSWT8KCkxhc3QgdGltZSBJIGxvb2tlZCBpbiB0aGUg
aW1wbGVtZW50YXRpb24sIHllcy4gVGhlIEFMTE9XX1JFVFJZIHdhcyB0aGVyZSAKdG8gc3BlY2lm
aWNhbGx5CmFsbG93IG1ha2luZyBwcm9ncmVzcyBpbiB0aGUgbG9ja2luZy4KCj4gICBKdXN0IHRv
IG1ha2Ugc3VyZSB0aGF0IHdlJ3JlIG5vdCBsaXZlLWxvY2tpbmcgaGVyZS4gSSdkCj4gYWxzbyBs
aWtlIHRvIGdldCByaWQgb2YgdGhlIHd1X211dGV4LCB0aGF0IGp1c3QgbG9va3MgcmVhbGx5IHN0
cmFuZ2UKPiAoYW5kIEkgdGhvdWdodCBpdCB3YXMgdG8gZHVjdC10YXBlIG92ZXIgdGhlIGludmVy
c2lvbiwgbm90IGFzIGFuCj4gb3B0aW1pemF0aW9uKS4gSWYgdGhlIGxpdmVsb2NrIGR1ZSB0byBs
b2NraW5nIGludmVyc2lvbiBpcyBnb25lIEkgaGF2ZQo+IG5vIGlkZWEgYW55bW9yZSB3aHkgd2Ug
ZXZlbiBuZWVkcyB0aGUgd3VfbXV0ZXguCgpZZXMsIG15IGludGVycHJldGF0aW9uIG9mIHRoaXMg
aXMgdGhhdCB3dV9tdXRleCBkZWZpbml0ZWx5IGNhbiBiZSBkaXRjaGVkLgoKL1Rob21hcwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
