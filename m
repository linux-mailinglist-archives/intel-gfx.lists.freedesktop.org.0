Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDA5983A0
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 20:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C37256E9C4;
	Wed, 21 Aug 2019 18:50:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 831436E971;
 Wed, 21 Aug 2019 15:34:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id BD08B3F5A1;
 Wed, 21 Aug 2019 17:34:46 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R0rmstNrcTWu; Wed, 21 Aug 2019 17:34:45 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 86BFC3F59A;
 Wed, 21 Aug 2019 17:34:44 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id BDD223602D6;
 Wed, 21 Aug 2019 17:34:43 +0200 (CEST)
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
 <902287e9-20ad-f88f-cb1e-2cc84f45eb0e@shipmail.org>
 <CAKMK7uHW0s4j787BkVB6mn0ANaJNZWLG=KBZErgiTnEXcEwP9Q@mail.gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28VMware=29?= <thomas_os@shipmail.org>
Organization: VMware Inc.
Message-ID: <7fb50133-6855-f350-e946-9d257f81c228@shipmail.org>
Date: Wed, 21 Aug 2019 17:34:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKMK7uHW0s4j787BkVB6mn0ANaJNZWLG=KBZErgiTnEXcEwP9Q@mail.gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 21 Aug 2019 18:50:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=shipmail.org; s=mail; 
 t=1566401683; bh=PhOqgPwZkIy0RW857MbmpZ2FMN1QJoAf4fqU+DeopFs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=BqkQCpgs5SGWUMmpYN5o9AtgVGnW3AVt4+fki3byD8BcEiFoDealYoddNHECrl5+J
 2M9A8IrrdWErJ8lCc5KQeS7pKNBSUuifQd4iVw4bY8jAuZrq5T+P15ETp5+QWXfPOU
 8jQ2xmIKq4GZLASlzArrDyBGVw6P1fiWVwsKB5Ng=
X-Mailman-Original-Authentication-Results: pio-pvt-msa2.bahnhof.se;
 dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=BqkQCpgs; 
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

T24gOC8yMS8xOSA1OjIyIFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IE9uIFdlZCwgQXVnIDIx
LCAyMDE5IGF0IDU6MTkgUE0gVGhvbWFzIEhlbGxzdHLDtm0gKFZNd2FyZSkKPiA8dGhvbWFzX29z
QHNoaXBtYWlsLm9yZz4gd3JvdGU6Cj4+IE9uIDgvMjEvMTkgNToxNCBQTSwgRGFuaWVsIFZldHRl
ciB3cm90ZToKPj4+IE9uIFdlZCwgQXVnIDIxLCAyMDE5IGF0IDU6MDMgUE0gVGhvbWFzIEhlbGxz
dHLDtm0gKFZNd2FyZSkKPj4+IDx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPj4+PiBP
biA4LzIxLzE5IDQ6NDcgUE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+Pj4+IE9uIFdlZCwgQXVn
IDIxLCAyMDE5IGF0IDQ6MjcgUE0gVGhvbWFzIEhlbGxzdHLDtm0gKFZNd2FyZSkKPj4+Pj4gPHRo
b21hc19vc0BzaGlwbWFpbC5vcmc+IHdyb3RlOgo+Pj4+Pj4gT24gOC8yMS8xOSA0OjA5IFBNLCBE
YW5pZWwgVmV0dGVyIHdyb3RlOgo+Pj4+Pj4+IE9uIFdlZCwgQXVnIDIxLCAyMDE5IGF0IDI6NDcg
UE0gVGhvbWFzIEhlbGxzdHLDtm0gKFZNd2FyZSkKPj4+Pj4+PiA8dGhvbWFzX29zQHNoaXBtYWls
Lm9yZz4gd3JvdGU6Cj4+Pj4+Pj4+IE9uIDgvMjEvMTkgMjo0MCBQTSwgVGhvbWFzIEhlbGxzdHLD
tm0gKFZNd2FyZSkgd3JvdGU6Cj4+Pj4+Pj4+PiBPbiA4LzIwLzE5IDQ6NTMgUE0sIERhbmllbCBW
ZXR0ZXIgd3JvdGU6Cj4+Pj4+Pj4+Pj4gV2l0aCBub3V2ZWF1IGZpeGVkIGFsbCB0dG0tdXNpbmcg
ZHJpdmVzIGhhdmUgdGhlIGNvcnJlY3QgbmVzdGluZyBvZgo+Pj4+Pj4+Pj4+IG1tYXBfc2VtIHZz
IGRtYV9yZXN2LCBhbmQgd2UgY2FuIGp1c3QgbG9jayB0aGUgYnVmZmVyLgo+Pj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Pj4gQXNzdW1pbmcgSSBkaWRuJ3Qgc2NyZXcgdXAgYW55dGhpbmcgd2l0aCBteSBhdWRp
dCBvZiBjb3Vyc2UuCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPj4+Pj4+Pj4+PiBDYzogQ2hyaXN0aWFu
IEtvZW5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4+Pj4+Pj4+IENjOiBIdWFuZyBS
dWkgPHJheS5odWFuZ0BhbWQuY29tPgo+Pj4+Pj4+Pj4+IENjOiBHZXJkIEhvZmZtYW5uIDxrcmF4
ZWxAcmVkaGF0LmNvbT4KPj4+Pj4+Pj4+PiBDYzogIlZNd2FyZSBHcmFwaGljcyIgPGxpbnV4LWdy
YXBoaWNzLW1haW50YWluZXJAdm13YXJlLmNvbT4KPj4+Pj4+Pj4+PiBDYzogVGhvbWFzIEhlbGxz
dHJvbSA8dGhlbGxzdHJvbUB2bXdhcmUuY29tPgo+Pj4+Pj4+Pj4+IC0tLQo+Pj4+Pj4+Pj4+ICAg
ICAgIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgICAgfCAzNCAtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KPj4+Pj4+Pj4+PiAgICAgICBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0
bV9ib192bS5jIHwgMjYgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4+Pj4+Pj4+ICAgICAg
IGluY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmggICAgfCAgMSAtCj4+Pj4+Pj4+Pj4gICAgICAg
MyBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNjAgZGVsZXRpb25zKC0pCj4+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyBi
L2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKPj4+Pj4+Pj4+PiBpbmRleCAyMGZmNTZmMjdh
YTQuLmE5NTJkZDYyNGIwNiAxMDA2NDQKPj4+Pj4+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
dHRtL3R0bV9iby5jCj4+Pj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8u
Ywo+Pj4+Pj4+Pj4+IEBAIC0xOTU0LDM3ICsxOTU0LDMgQEAgdm9pZCB0dG1fYm9fc3dhcG91dF9h
bGwoc3RydWN0IHR0bV9ib19kZXZpY2UKPj4+Pj4+Pj4+PiAqYmRldikKPj4+Pj4+Pj4+PiAgICAg
ICAgICAgICAgIDsKPj4+Pj4+Pj4+PiAgICAgICB9Cj4+Pj4+Pj4+Pj4gICAgICAgRVhQT1JUX1NZ
TUJPTCh0dG1fYm9fc3dhcG91dF9hbGwpOwo+Pj4+Pj4+Pj4+IC0KPj4+Pj4+Pj4+PiAtLyoqCj4+
Pj4+Pj4+Pj4gLSAqIHR0bV9ib193YWl0X3VucmVzZXJ2ZWQgLSBpbnRlcnJ1cHRpYmxlIHdhaXQg
Zm9yIGEgYnVmZmVyIG9iamVjdAo+Pj4+Pj4+Pj4+IHRvIGJlY29tZQo+Pj4+Pj4+Pj4+IC0gKiB1
bnJlc2VydmVkCj4+Pj4+Pj4+Pj4gLSAqCj4+Pj4+Pj4+Pj4gLSAqIEBibzogUG9pbnRlciB0byBi
dWZmZXIKPj4+Pj4+Pj4+PiAtICovCj4+Pj4+Pj4+Pj4gLWludCB0dG1fYm9fd2FpdF91bnJlc2Vy
dmVkKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8pCj4+Pj4+Pj4+Pj4gLXsKPj4+Pj4+Pj4+
PiAtICAgIGludCByZXQ7Cj4+Pj4+Pj4+Pj4gLQo+Pj4+Pj4+Pj4+IC0gICAgLyoKPj4+Pj4+Pj4+
PiAtICAgICAqIEluIHRoZSBhYnNlbnNlIG9mIGEgd2FpdF91bmxvY2tlZCBBUEksCj4+Pj4+Pj4+
Pj4gLSAgICAgKiBVc2UgdGhlIGJvOjp3dV9tdXRleCB0byBhdm9pZCB0cmlnZ2VyaW5nIGxpdmVs
b2NrcyBkdWUgdG8KPj4+Pj4+Pj4+PiAtICAgICAqIGNvbmN1cnJlbnQgdXNlIG9mIHRoaXMgZnVu
Y3Rpb24uIE5vdGUgdGhhdCB0aGlzIHVzZSBvZgo+Pj4+Pj4+Pj4+IC0gICAgICogYm86Ond1X211
dGV4IGNhbiBnbyBhd2F5IGlmIHdlIGNoYW5nZSBsb2NraW5nIG9yZGVyIHRvCj4+Pj4+Pj4+Pj4g
LSAgICAgKiBtbWFwX3NlbSAtPiBibzo6cmVzZXJ2ZS4KPj4+Pj4+Pj4+PiAtICAgICAqLwo+Pj4+
Pj4+Pj4+IC0gICAgcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZiby0+d3VfbXV0ZXgp
Owo+Pj4+Pj4+Pj4+IC0gICAgaWYgKHVubGlrZWx5KHJldCAhPSAwKSkKPj4+Pj4+Pj4+PiAtICAg
ICAgICByZXR1cm4gLUVSRVNUQVJUU1lTOwo+Pj4+Pj4+Pj4+IC0gICAgaWYgKCFkbWFfcmVzdl9p
c19sb2NrZWQoYm8tPmJhc2UucmVzdikpCj4+Pj4+Pj4+Pj4gLSAgICAgICAgZ290byBvdXRfdW5s
b2NrOwo+Pj4+Pj4+Pj4+IC0gICAgcmV0ID0gZG1hX3Jlc3ZfbG9ja19pbnRlcnJ1cHRpYmxlKGJv
LT5iYXNlLnJlc3YsIE5VTEwpOwo+Pj4+Pj4+Pj4+IC0gICAgaWYgKHJldCA9PSAtRUlOVFIpCj4+
Pj4+Pj4+Pj4gLSAgICAgICAgcmV0ID0gLUVSRVNUQVJUU1lTOwo+Pj4+Pj4+Pj4+IC0gICAgaWYg
KHVubGlrZWx5KHJldCAhPSAwKSkKPj4+Pj4+Pj4+PiAtICAgICAgICBnb3RvIG91dF91bmxvY2s7
Cj4+Pj4+Pj4+Pj4gLSAgICBkbWFfcmVzdl91bmxvY2soYm8tPmJhc2UucmVzdik7Cj4+Pj4+Pj4+
Pj4gLQo+Pj4+Pj4+Pj4+IC1vdXRfdW5sb2NrOgo+Pj4+Pj4+Pj4+IC0gICAgbXV0ZXhfdW5sb2Nr
KCZiby0+d3VfbXV0ZXgpOwo+Pj4+Pj4+Pj4+IC0gICAgcmV0dXJuIHJldDsKPj4+Pj4+Pj4+PiAt
fQo+Pj4+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5j
Cj4+Pj4+Pj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jCj4+Pj4+Pj4+Pj4g
aW5kZXggNzZlZWRiOTYzNjkzLi41MDVlMTc4N2FlZWEgMTAwNjQ0Cj4+Pj4+Pj4+Pj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYwo+Pj4+Pj4+Pj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS90dG0vdHRtX2JvX3ZtLmMKPj4+Pj4+Pj4+PiBAQCAtMTI1LDMxICsxMjUsNyBAQCBz
dGF0aWMgdm1fZmF1bHRfdCB0dG1fYm9fdm1fZmF1bHQoc3RydWN0Cj4+Pj4+Pj4+Pj4gdm1fZmF1
bHQgKnZtZikKPj4+Pj4+Pj4+PiAgICAgICAgICAgICAgICZiZGV2LT5tYW5bYm8tPm1lbS5tZW1f
dHlwZV07Cj4+Pj4+Pj4+Pj4gICAgICAgICAgIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCBjdm1hOwo+
Pj4+Pj4+Pj4+ICAgICAgIC0gICAgLyoKPj4+Pj4+Pj4+PiAtICAgICAqIFdvcmsgYXJvdW5kIGxv
Y2tpbmcgb3JkZXIgcmV2ZXJzYWwgaW4gZmF1bHQgLyBub3Bmbgo+Pj4+Pj4+Pj4+IC0gICAgICog
YmV0d2VlbiBtbWFwX3NlbSBhbmQgYm9fcmVzZXJ2ZTogUGVyZm9ybSBhIHRyeWxvY2sgb3BlcmF0
aW9uCj4+Pj4+Pj4+Pj4gLSAgICAgKiBmb3IgcmVzZXJ2ZSwgYW5kIGlmIGl0IGZhaWxzLCByZXRy
eSB0aGUgZmF1bHQgYWZ0ZXIgd2FpdGluZwo+Pj4+Pj4+Pj4+IC0gICAgICogZm9yIHRoZSBidWZm
ZXIgdG8gYmVjb21lIHVucmVzZXJ2ZWQuCj4+Pj4+Pj4+Pj4gLSAgICAgKi8KPj4+Pj4+Pj4+PiAt
ICAgIGlmICh1bmxpa2VseSghZG1hX3Jlc3ZfdHJ5bG9jayhiby0+YmFzZS5yZXN2KSkpIHsKPj4+
Pj4+Pj4+PiAtICAgICAgICBpZiAodm1mLT5mbGFncyAmIEZBVUxUX0ZMQUdfQUxMT1dfUkVUUlkp
IHsKPj4+Pj4+Pj4+PiAtICAgICAgICAgICAgaWYgKCEodm1mLT5mbGFncyAmIEZBVUxUX0ZMQUdf
UkVUUllfTk9XQUlUKSkgewo+Pj4+Pj4+Pj4+IC0gICAgICAgICAgICAgICAgdHRtX2JvX2dldChi
byk7Cj4+Pj4+Pj4+Pj4gLSB1cF9yZWFkKCZ2bWYtPnZtYS0+dm1fbW0tPm1tYXBfc2VtKTsKPj4+
Pj4+Pj4+PiAtICAgICAgICAgICAgICAgICh2b2lkKSB0dG1fYm9fd2FpdF91bnJlc2VydmVkKGJv
KTsKPj4+Pj4+Pj4+PiAtICAgICAgICAgICAgICAgIHR0bV9ib19wdXQoYm8pOwo+Pj4+Pj4+Pj4+
IC0gICAgICAgICAgICB9Cj4+Pj4+Pj4+Pj4gLQo+Pj4+Pj4+Pj4+IC0gICAgICAgICAgICByZXR1
cm4gVk1fRkFVTFRfUkVUUlk7Cj4+Pj4+Pj4+Pj4gLSAgICAgICAgfQo+Pj4+Pj4+Pj4+IC0KPj4+
Pj4+Pj4+PiAtICAgICAgICAvKgo+Pj4+Pj4+Pj4+IC0gICAgICAgICAqIElmIHdlJ2Qgd2FudCB0
byBjaGFuZ2UgbG9ja2luZyBvcmRlciB0bwo+Pj4+Pj4+Pj4+IC0gICAgICAgICAqIG1tYXBfc2Vt
IC0+IGJvOjpyZXNlcnZlLCB3ZSdkIHVzZSBhIGJsb2NraW5nIHJlc2VydmUgaGVyZQo+Pj4+Pj4+
Pj4+IC0gICAgICAgICAqIGluc3RlYWQgb2YgcmV0cnlpbmcgdGhlIGZhdWx0Li4uCj4+Pj4+Pj4+
Pj4gLSAgICAgICAgICovCj4+Pj4+Pj4+PiBJIHRoaW5rIHlvdSBzaG91bGQganVzdGlmeSB3aHkg
dGhlIGFib3ZlIGNvZGUgaXMgcmVtb3ZlZCwgc2luY2UgdGhlCj4+Pj4+Pj4+PiBjb21tZW50cyBh
Y3R1YWxseSBvdXRsaW5lcyB3aGF0IHRvIGRvIGlmIHdlIGNoYW5nZSBsb2NraW5nIG9yZGVyLgo+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFRoZSBjb2RlIHRoYXQncyByZW1vdmVkIGFib3ZlIGlzIG5vdCBm
b3IgYWRqdXN0aW5nIGxvY2tpbmcgb3JkZXJzIGJ1dAo+Pj4+Pj4+Pj4gdG8gZGVjcmVhc2UgdGhl
IG1tIGxhdGVuY3kgYnkgcmVsZWFzaW5nIHRoZSBtbWFwX3NlbSB3aGlsZSB3YWl0aW5nIGZvcgo+
Pj4+Pj4+Pj4gYm8gcmVzZXJ2ZSB3aGljaCBpbiB0dXJuIG1pZ2h0IGJlIHdhaXRpbmcgZm9yIEdQ
VS4gQXQgYSBtaW5pbXVtIHdlCj4+Pj4+Pj4+PiBzaG91bGQgaGF2ZSBhIHNlcGFyYXRlIHBhdGNo
IHdpdGgganVzdGlmaWNhdGlvbi4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBOb3RlIHRoYXQgdGhlIGNh
bGxlciBoZXJlIGVuc3VyZXMgbG9ja2luZyBwcm9ncmVzcyBieSBhZGp1c3RpbmcgdGhlCj4+Pj4+
Pj4+PiBSRVRSWSBmbGFncyBhZnRlciBhIHJldHJ5Lgo+Pj4+Pj4+IFRoYXQgd291bGQgYmUgcGF0
Y2hlcyAxJjIgaW4gdGhpcyBzZXJpZXMuCj4+Pj4+Pj4KPj4+Pj4+IEhtbT8gVGhvc2Ugc2VlbSB0
byB0b3VjaCBvbmx5IGRtYS1idWYgYW5kIG5vdXZlYXUgbm90IHR0bT8gIEkgbWVhbiB0aGlzCj4+
Pj4+PiBwYXRjaCBzaG91bGQgbG9vayBhbG9uZyB0aGUgbGluZXMgb2YgKGJhc2VkIG9uIGFuIG9s
ZGVyIHRyZWUpIHRvCj4+Pj4+PiBpbXBsZW1lbnQgdGhlIG5ldyBsb2NraW5nLW9yZGVyIG1tYXBf
c2VtLT5yZXNlcnZhdGlvbiwKPj4+Pj4gT25seSBub3V2ZWF1IHdhcyBicmVha2luZyB3YXMgZG9p
bmcgY29weV8qX3VzZXIgb3IgZ2V0X3VzZXJfcGFnZXMKPj4+Pj4gd2hpbGUgaG9sZGluZyBkbWFf
cmVzdiBsb2Nrcywgbm8gb25lIGVsc2UuIFNvIG5vdGhpbmcgZWxzZSBuZWVkZWQgdG8KPj4+Pj4g
YmUgY2hhbmdlZC4gQnV0IHBhdGNoIDEgY29udGFpbnMgdGhlIGZ1bGwgYXVkaXQuIEkgbWlnaHQg
aGF2ZSBtaXNzZWQKPj4+Pj4gc29tZXRoaW5nLgo+Pj4+Pgo+Pj4+Pj4gYnV0IHRvIGtlZXAgdGhl
IG1tIGxhdGVuY3kgb3B0aW1pemF0aW9uIHVzaW5nIHRoZSBSRVRSWSBmdW5jdGlvbmFsaXR5Ogo+
Pj4+PiBTdGlsbCBubyBpZGVhIHdoeSB0aGlzIGlzIG5lZWRlZD8gQWxsIHRoZSBjb21tZW50cyBo
ZXJlIGFuZCB0aGUgY29kZQo+Pj4+PiBhbmQgaGlzdG9yeSBzZWVtIGxpa2UgdGhleSd2ZSBiZWVu
IGFib3V0IHRoZSBtbWFwX3NlbSB2cyBkbWFfcmVzdgo+Pj4+PiBpbnZlcnNpb24gYmV0d2VlbiBk
cml2ZXIgaW9jdGxzIGFuZCBmYXVsdCBoYW5kbGluZyBoZXJlLiBPbmNlIHRoYXQncwo+Pj4+PiBv
ZmZpY2lhbGx5IGZpeGVkIHRoZXJlJ3Mgbm8gcmVhc29uIHRvIHBsYXkgZ2FtZXMgaGVyZSBhbmQg
cmV0cnkgbG9vcHMKPj4+Pj4gLSBwcmV2aW91c2x5IHRoYXQgd2FzIG5lY2Vzc2FyeSBiZWNhdXNl
IHRoZSBvbGQgdHRtX2JvX3ZtX2ZhdWx0IGhhZCBhCj4+Pj4+IGJ1c3kgc3BpbiBhbmQgdGhhdCdz
IGRlZmluaXRlbHkgbm90IG5pY2UuIElmIGl0J3MgbmVlZGVkIEkgdGhpbmsgaXQKPj4+Pj4gc2hv
dWxkIGJlIGEgc2Vjb25kIHBhdGNoIG9uIHRvcCwgdG8ga2VlcCB0aGlzIGFsbCBjbGVhci4gSSBo
YWQgdG8KPj4+Pj4gYXVkaXQgYW4gZW5vcm1vdXMgYW1vdW50IG9mIGNvZGUsIEknZCBsaWtlIHRv
IG1ha2Ugc3VyZSBJIGRpZG4ndCBtaXNzCj4+Pj4+IGFueXRoaW5nIGJlZm9yZSB3ZSBzdGFydCB0
byBtYWtlIHRoaXMgc3VwZXIgZmFuY3kgYWdhaW4uIEZ1cnRoZXIKPj4+Pj4gcGF0Y2hlcyBvbiB0
b3AgaXMgb2J2aW91c2x5IGFsbCBmaW5lIHdpdGggbWUuCj4+Pj4+IC1EYW5pZWwKPj4+PiBZZXMs
IGJ1dCB0aGVyZSBhcmUgdHdvIGRpZmZlcmVudCB0aGluZ3MgeW91IHJlbW92ZSBoZXJlLiBPbmUg
aXMgdGhlCj4+Pj4gd29ya2Fyb3VuZCBmb3IgdGhlIGxvY2tpbmcgcmV2ZXJzYWwsIHdoaWNoIGlz
IG9idmlvdXNseSBjb3JyZWN0Lgo+Pj4+Cj4+Pj4gT25lIGlzIFRUTSdzIGltcGxlbWVudGF0aW9u
IG9mIHRoZSBtbWFwX3NlbSBsYXRlbmN5IG9wdGltaXphdGlvbiwgd2hpY2gKPj4+PiBsb29rcyBs
aWtlIGFuIG92ZXJzaWdodC4KPj4+Pgo+Pj4+IFRoYXQgb3B0aW1pemF0aW9uIGlzIHdoeSB0aGUg
Vk1fRkFVTFRfUkVUUlkgZnVuY3Rpb25hbGl0eSB3YXMgYWRkZWQgdG8KPj4+PiBtbSBpbiB0aGUg
Zmlyc3QgcGxhY2UgYW5kIGlzIGludGVuZGVkIHRvIGJlIHVzZWQgd2hlbiBkcml2ZXJzIGV4cGVj
dCBhCj4+Pj4gc3Vic3RhbnRpYWwgc2xlZXAgdG8gYXZvaWQga2VlcGluZyB0aGUgcHJldHR5IGds
b2JhbGlzaCBtbWFwX3NlbSBoZWxkCj4+Pj4gd2hpbGUgdGhhdCBzbGVlcCBpcyB0YWtpbmcgcGxh
Y2UuIFdlIGRvIGV4YWN0bHkgdGhlIHNhbWUgd2hpbGUgd2FpdGluZwo+Pj4+IGZvciBtb3ZlLWZl
bmNlcyAodHRtX2JvX3ZtX2ZhdWx0X2lkbGUpIGFuZCBvdGhlciBkcml2ZXJzIHRoYXQgZXhwZWN0
Cj4+Pj4gbG9uZyB3YWl0cyBpbiB0aGUgZmF1bHQgaGFuZGxlciBkbyB0aGUgc2FtZS4KPj4+IEht
LCBhcmUgd2UgZ3VhcmFudGVlZCB0aGF0IGNvcmUgbW0gd2lsbCBvbmx5IGNhbGwgdXMgb25jZSB3
aXRoCj4+PiBBTExPV19SRVRSWT8KPj4gTGFzdCB0aW1lIEkgbG9va2VkIGluIHRoZSBpbXBsZW1l
bnRhdGlvbiwgeWVzLiBUaGUgQUxMT1dfUkVUUlkgd2FzIHRoZXJlCj4+IHRvIHNwZWNpZmljYWxs
eQo+PiBhbGxvdyBtYWtpbmcgcHJvZ3Jlc3MgaW4gdGhlIGxvY2tpbmcuCj4+Cj4+PiAgICBKdXN0
IHRvIG1ha2Ugc3VyZSB0aGF0IHdlJ3JlIG5vdCBsaXZlLWxvY2tpbmcgaGVyZS4gSSdkCj4+PiBh
bHNvIGxpa2UgdG8gZ2V0IHJpZCBvZiB0aGUgd3VfbXV0ZXgsIHRoYXQganVzdCBsb29rcyByZWFs
bHkgc3RyYW5nZQo+Pj4gKGFuZCBJIHRob3VnaHQgaXQgd2FzIHRvIGR1Y3QtdGFwZSBvdmVyIHRo
ZSBpbnZlcnNpb24sIG5vdCBhcyBhbgo+Pj4gb3B0aW1pemF0aW9uKS4gSWYgdGhlIGxpdmVsb2Nr
IGR1ZSB0byBsb2NraW5nIGludmVyc2lvbiBpcyBnb25lIEkgaGF2ZQo+Pj4gbm8gaWRlYSBhbnlt
b3JlIHdoeSB3ZSBldmVuIG5lZWRzIHRoZSB3dV9tdXRleC4KPj4gWWVzLCBteSBpbnRlcnByZXRh
dGlvbiBvZiB0aGlzIGlzIHRoYXQgd3VfbXV0ZXggZGVmaW5pdGVseSBjYW4gYmUgZGl0Y2hlZC4K
PiBPayBJJ2xsIHJlc3BpbiBhbmQganVzdCBkbyBub3JtYWwgaW50ZXJydXB0aWJsZSBsb2Nrcywg
a2VlcGluZyB0aGUKPiBtbWFwX3NlbS1sZXNzIHBhdGguIEkgdGhpbmsgcGVyZmVjdGx5IG9rIHRv
IGxlYXZlIHRoZSBvcHRpbWl6YXRpb24gaW4sCj4gYXMgbG9uZyBhcyB3ZSBjYW4gcmVtb3ZlIHRo
ZSB3dV9tdXRleC4KPgo+IGJ0dyByLWIvdC1iIG9uIHBhdGNoIDEgZnJvbSB2bXdnZnggd291bGQg
YmUgdmVyeSBtdWNoIGFwcHJlY2lhdGVkLgo+IFRoYXQgb25lIGlzIHRoZSByZWFsIHRyaWNrIGlu
IHRoaXMgc2VyaWVzIGhlcmUgSSB0aGluay4KClRoYW5rcyEKCkknbGwgbG9vayBpbnRvIHBhdGNo
IDEgYXMgd2VsbC4KCi9UaG9tYXMKCgoKPiAtRGFuaWVsCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
