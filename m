Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 633B0A45BEE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 11:36:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F36610E269;
	Wed, 26 Feb 2025 10:36:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=163.com header.i=@163.com header.b="mvwR57Kf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.3])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5212D10E22D;
 Wed, 26 Feb 2025 10:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
 Message-ID; bh=Ehx4CcqBEdq2Of9FudkYfFmDh4IddNb/JKjOV41dWJg=; b=m
 vwR57KfxKUCI9v+2+8T84DFfVwc+/TGGkFyXdU1jjShrsDu7NH7RGENTV0vos8qo
 9Ct2DozWllaD6BPXF4nhpnvY9Z+q58puq4fb/KaM0Tb+5NokOLlsMHwsVzhBrXGM
 r9m2dPk4yaFCOuolD6Ypgn260Nb8x0hPJlvnjiCI74=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-116 (Coremail) ; Wed, 26 Feb 2025 18:36:26 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Wed, 26 Feb 2025 18:36:26 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: "Jani Nikula" <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, "Sandy Huang" <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "Andy Yan" <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, sam@ravnborg.org,
 "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re:Re: [PATCH 2/5] drm/rockchip: stop passing non struct drm_device
 to drm_err() and friends
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <21d7745d-8fcd-484f-b1f2-82fd87dc8079@suse.de>
References: <cover.1737644530.git.jani.nikula@intel.com>
 <f42da4c9943a2f2a9de4272b7849e72236d4c3f9.1737644530.git.jani.nikula@intel.com>
 <2c0a76c3.618c.19497bb4329.Coremail.andyshrk@163.com>
 <87plkcbfp0.fsf@intel.com>
 <730ee1d4.f63.1949b97fc99.Coremail.andyshrk@163.com>
 <21d7745d-8fcd-484f-b1f2-82fd87dc8079@suse.de>
X-NTES-SC: AL_Qu2fAvmduUkj4CSbZukfmkcVgOw9UcO5v/Qk3oZXOJF8jD3pyCEAX3ZKMnvX+d2KKxC1vRGeSwBs6NRYe5BmZo4hKW6u00EgW9f9TNLEr4hqCg==
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
MIME-Version: 1.0
Message-ID: <f5dc475.a51e.19541d449c5.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: dCgvCgDXP_eq7r5nrXxwAA--.47203W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkAgAXme+63FNJgABsv
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ckhp77yMCgrlnKggMjAyNS0wMi0yNiAxNjozMzoyMe+8jCJUaG9tYXMgWmltbWVybWFubiIgPHR6
aW1tZXJtYW5uQHN1c2UuZGU+IOWGmemBk++8mgo+SGkKPgo+QW0gMjUuMDEuMjUgdW0gMDQ6NTMg
c2NocmllYiBBbmR5IFlhbjoKPj4KPj4g5ZyoIDIwMjUtMDEtMjQgMTk6NDM6MDfvvIwiSmFuaSBO
aWt1bGEiIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+IOWGmemBk++8mgo+Pj4gT24gRnJpLCAyNCBK
YW4gMjAyNSwgIkFuZHkgWWFuIiA8YW5keXNocmtAMTYzLmNvbT4gd3JvdGU6Cj4+Pj4gSGnvvIwK
Pj4+Pgo+Pj4+IEF0IDIwMjUtMDEtMjMgMjM6MDk6MDksICJKYW5pIE5pa3VsYSIgPGphbmkubmlr
dWxhQGludGVsLmNvbT4gd3JvdGU6Cj4+Pj4+IFRoZSBleHBlY3RhdGlvbiBpcyB0aGF0IHRoZSBz
dHJ1Y3QgZHJtX2RldmljZSBiYXNlZCBsb2dnaW5nIGhlbHBlcnMgZ2V0Cj4+Pj4+IHBhc3NlZCBh
biBhY3R1YWwgc3RydWN0IGRybV9kZXZpY2UgcG9pbnRlciByYXRoZXIgdGhhbiBzb21lIHJhbmRv
bQo+Pj4+PiBzdHJ1Y3QgcG9pbnRlciB3aGVyZSB5b3UgY2FuIGRlcmVmZXJlbmNlIHRoZSAtPmRl
diBtZW1iZXIuCj4+Pj4+Cj4+Pj4+IENvbnZlcnQgZHJtX2VycihoZG1pLCAuLi4pIHRvIGRldl9l
cnIoaGRtaS0+ZGV2LCAuLi4pLiBUaGlzIG1hdGNoZXMKPj4+Pj4gY3VycmVudCB1c2FnZSwgYnV0
IGRyb3BzICJbZHJtXSAqRVJST1IqIiBwcmVmaXggZnJvbSBsb2dnaW5nLgo+Pj4+IEZyYW5rbHks
IEkgcHJlZmVyIHRoZSBvcmlnaW5hbCB2ZXJzaW9uIG9mIHRoZSBsb2cuCj4+Pj4gSXQgaXMgYSBw
bGF0Zm9ybSBkcml2ZXIsIHNvIGl0IHNob3VsZCB1c2UgaXRzIG93biBkZXZpY2UuCj4+Pj4gSXQg
aXMgYSBkcml2ZXIgdGhhdCB3b3JrcyBpbiBkcm0gc3Vic3lzdGVtLCBzbyBpdCdzIGJldHRlciB0
byB1c2UgIltkcm1dICpFUlJPUioiIHByZWZpeCB3aGVuIGxvZ2dpbmcKPj4+IElmIHlvdSBuZWVk
IHRvIGRvIHN0cnVjdCBkZXZpY2UgYmFzZWQgbG9nZ2luZyB0aGF0IGlzIG5vdCB0aGUgc2FtZQo+
Pj4gZGV2aWNlIGFzIHRoZSBzdHJ1Y3QgZHJtX2RldmljZSBkZXYgbWVtYmVyLCB5b3UgbmVlZCB0
byB1c2UgZGV2X2VycigpCj4+PiBhbmQgZnJpZW5kcy4gWW91IGNhbid0IGFuZCBtdXN0IG5vdCB1
c2UgZHJtX2VycigpIGFuZCBmcmllbmRzLgo+Pj4KPj4+IEl0J3MgYXMgc2ltcGxlIGFzIHRoYXQu
Cj4+Pgo+Pj4gVGhlIGN1cnJlbnQgZHJtX2VycihoZG1pLCAuLi4pIHVzYWdlIGlzIHNpbXBseSBh
YnVzZSBvZiB0aGUgbWFjcm9zLCBhbmQKPj4+IG11c3Qgc3RvcC4KPj4gUGVyaGFwcyB3aGVuIHlv
dSBpbml0aWFsbHkgZGVzaWduZWQgdGhpcyBtYWNyb3MsIHlvdSBpbnRlbmRlZCBpdCB0byBhY2Nl
cHQgb25seSBkcm1fZGV2aWNlLAo+PiBidXQgeW91ciBjb2RlIGltcGxlbWVudGF0aW9uIGRpZG4n
dCBlbmZvcmNlIHRoaXMgcmVzdHJpY3Rpb24gYXQgdGhlIGJlZ2lubmluZy4KPgo+Qydtb24uIEFy
ZSB3ZSByZWFsbHkgYXJndWluZyBhYm91dCB0eXBlIHNhZmV0eSBub3c/Cj4KPlBhdGNoIDUgYWRk
cyBhIGxpdHRsZSBnZXR0ZXIgZnVuY3Rpb24gdGhhdCBkb2VzIHRoZSB0eXBlIGNoZWNrIG9uIHRo
ZSAKPmZ1bmN0aW9uIGNhbGwncyBhcmd1bWVudC4KPgo+Cj4+IElmIHRoYXQncyB0cnVseSB3aGF0
IHlvdSBpbnRlbmRlZCwgSSBzdWdnZXN0IGp1c3QgcmV2ZXJ0aW5nIHRoaXMgY29tbWl0IHRoYXQg
Y29udmVydGluZyB0byB1c2UgdGhlc2UgbWFjcm9zWzBdLAo+PiBhcyBuZWl0aGVyIGRybV9lcnIg
bm9yIGRldl9lcnIgY2FuIG1haW50YWluIGNvbnNpc3RlbmN5IHdpdGggdGhlIG9yaWdpbmFsIGxv
ZyBvZiB0aGlzIGRyaXZlci4KPj4gQWx0ZXJuYXRpdmVseSwgYXMgc3VnZ2VzdGVkIGJ5IFNhbSAg
aW4gdGhlIGluaXRpYWwgc3VibWlzc2lvbiBvZiB5b3VyIHBhdGNoIDUgeWVhcnMgYWdvLAo+PiB0
aGVyZSBzaG91bGQgYWxzbyBiZSBhIG1hY3JvIHNpbWlsYXIgdG8gZHJtX2Rldl9pbmZvKGRldmlj
ZSAqLCAuLikuWzFdCj4KPkRSTSBjb2RlIHRlbmRzIHRvIGtlZXAgYSByZWZlcmVuY2UgdG8gdGhl
IGRybV9kZXZpY2Ugc29tZXdoZXJlIGFuZCAKPmZldGNoZXMgaXQgaWYgbmVjZXNzYXJ5LiBGb3Ig
dGhpcyBwYXRjaCwgaXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvIGZldGNoIAo+dGhlIERSTSBkZXZp
Y2UgZnJvbSBzdHJ1Y3Qgcm9ja2NoaXBfaGRtaSBlYXNpbHkuIEp1c3QgZG8KPgo+IMKgIGRybV9l
cnIocm9ja2NoaXBfaGRtaV9kcm1fZGV2KGhkbWkpLCAiLi4uIik7Cj4KPlRoaXMgd291bGQgcmVz
b2x2ZSB0aGUgcHJvYmxlbSB3aXRob3V0IG5ldyBsb2dnaW5nIGZ1bmN0aW9ucyBhbmQga2VlcCAK
PnRoZSAiW2RybV0iIHByZWZpeCB0byB0aGUgbWVzc2FnZXMuCgpZZXMsIHRoaXMga2VlcHMgdGhl
ICJbZHJtXSIgcHJlZml4IHRvIHRoZSBsb2cgbWVzc2FnZXMsIGJ1dCBpdCBhbHNvIGNoYW5nZWQg
aGRtaQpkZXZpY2UgZnJvbSBkcm0gZGV2aWNlIGluIHRoZSBsb2cgbWVzc2FnZXMuCkZvciBtb3Jl
IGVmZmljaWVudCBkZWJ1Z2dpbmcsIGl0IGlzIHByZWZlcmFibGUgZm9yIGxvZyBlbnRyaWVzIHRv
IGV4cGxpY2l0bHkgc3BlY2lmeSB3aGljaCBkZXZpY2UgZ2VuZXJhdGVkIHRoZW0sCmVzcGVjaWFs
bHkgaW4gRFJNIHN5c3RlbXMgd2hlcmUgbXVsdGlwbGUgZGV2aWNlcyhicmlkZ2UvZW5jb2Rlcikg
bWF5IGJlIHByZXNlbnQuIgoKQW5kIEknbSBvayB3aXRoIHRoaXMgUEFUQ0guIEhvd2V2ZXIsIEkg
d291bGQgYWxzbyBsaWtlIHRvIGtub3cgeW91ciBhbmQgSmFuaSdzIG9waW5pb25zIG9uIHdoZXRo
ZXIgd2UgY2FuIGNvbnNpZGVyCmFkZGluZyBhbiBBUEkgc2ltaWxhciB0byBkcm1fZGV2X2luZm/v
vIxhcyBTYW0gc3VnZ2VzdGVkIGJlZm9yZS4gT2YgY291cnNlLCB0aGlzIGNvdWxkIGJlIGxlZnQg
Zm9yIGZ1dHVyZSBpbXBsZW1lbnRhdGlvbgpieSBvdGhlcnMuCgoKCj4KPkJlc3QgcmVnYXJkcwo+
VGhvbWFzCj4KPgo+Pgo+Pgo+PiBbMF1odHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2Nr
Y2hpcC8yMDI0MDgxMy1kdy1oZG1pLXJvY2tjaGlwLWNsZWFudXAtdjEtMS1iM2U3M2I1ZjRmZDZA
Y29sbGFib3JhLmNvbS8KPj4gWzFdaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIw
MTkxMjEyMjE1MzAzLkdBMTE1MjBAcmF2bmJvcmcub3JnLwo+Pgo+Pj4KPj4+IEJSLAo+Pj4gSmFu
aS4KPj4+Cj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgo+Pj4+Pgo+Pj4+PiAtLS0KPj4+Pj4KPj4+Pj4gTG9va3MgbGlrZSBpdCdzIHBv
c3NpYmxlIHRvIGh1bnQgZG93biB0aGUgc3RydWN0IGRybV9kZXZpY2UgaW4gbW9zdCBvZgo+Pj4+
PiB0aGVzZSBjYXNlcywgaWYgdGhhdCdzIGRlc2lyZWQuIFRoaXMgd2FzIHRoZSBzaW1wbGVzdCBj
aGFuZ2UuCj4+Pj4+Cj4+Pj4+IENjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgo+
Pj4+PiBDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgo+Pj4+PiBDYzogQW5k
eSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+Pj4+PiBDYzogZHJpLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+Pj4+PiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4+Pj4+IENjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+Pj4+
IC0tLQo+Pj4+PiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jICAg
IHwgMTYgKysrKysrKystLS0tLS0tLQo+Pj4+PiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdf
aGRtaV9xcC1yb2NrY2hpcC5jIHwgMTYgKysrKysrKystLS0tLS0tLQo+Pj4+PiAyIGZpbGVzIGNo
YW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMKPj4+Pj4gaW5kZXggZTdh
NjY2OWM0NmIwLi5mNzM3ZTdkNDZlNjYgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMKPj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYwo+Pj4+PiBAQCAtMjAzLDcgKzIwMyw3IEBAIHN0
YXRpYyBpbnQgcm9ja2NoaXBfaGRtaV9wYXJzZV9kdChzdHJ1Y3Qgcm9ja2NoaXBfaGRtaSAqaGRt
aSkKPj4+Pj4KPj4+Pj4gCWhkbWktPnJlZ21hcCA9IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3Bo
YW5kbGUobnAsICJyb2NrY2hpcCxncmYiKTsKPj4+Pj4gCWlmIChJU19FUlIoaGRtaS0+cmVnbWFw
KSkgewo+Pj4+PiAtCQlkcm1fZXJyKGhkbWksICJVbmFibGUgdG8gZ2V0IHJvY2tjaGlwLGdyZlxu
Iik7Cj4+Pj4+ICsJCWRldl9lcnIoaGRtaS0+ZGV2LCAiVW5hYmxlIHRvIGdldCByb2NrY2hpcCxn
cmZcbiIpOwo+Pj4+PiAJCXJldHVybiBQVFJfRVJSKGhkbWktPnJlZ21hcCk7Cj4+Pj4+IAl9Cj4+
Pj4+Cj4+Pj4+IEBAIC0yMTQsNyArMjE0LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9oZG1pX3Bh
cnNlX2R0KHN0cnVjdCByb2NrY2hpcF9oZG1pICpoZG1pKQo+Pj4+PiAJaWYgKElTX0VSUihoZG1p
LT5yZWZfY2xrKSkgewo+Pj4+PiAJCXJldCA9IFBUUl9FUlIoaGRtaS0+cmVmX2Nsayk7Cj4+Pj4+
IAkJaWYgKHJldCAhPSAtRVBST0JFX0RFRkVSKQo+Pj4+PiAtCQkJZHJtX2VycihoZG1pLCAiZmFp
bGVkIHRvIGdldCByZWZlcmVuY2UgY2xvY2tcbiIpOwo+Pj4+PiArCQkJZGV2X2VycihoZG1pLT5k
ZXYsICJmYWlsZWQgdG8gZ2V0IHJlZmVyZW5jZSBjbG9ja1xuIik7Cj4+Pj4+IAkJcmV0dXJuIHJl
dDsKPj4+Pj4gCX0KPj4+Pj4KPj4+Pj4gQEAgLTIyMiw3ICsyMjIsNyBAQCBzdGF0aWMgaW50IHJv
Y2tjaGlwX2hkbWlfcGFyc2VfZHQoc3RydWN0IHJvY2tjaGlwX2hkbWkgKmhkbWkpCj4+Pj4+IAlp
ZiAoSVNfRVJSKGhkbWktPmdyZl9jbGspKSB7Cj4+Pj4+IAkJcmV0ID0gUFRSX0VSUihoZG1pLT5n
cmZfY2xrKTsKPj4+Pj4gCQlpZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCj4+Pj4+IC0JCQlkcm1f
ZXJyKGhkbWksICJmYWlsZWQgdG8gZ2V0IGdyZiBjbG9ja1xuIik7Cj4+Pj4+ICsJCQlkZXZfZXJy
KGhkbWktPmRldiwgImZhaWxlZCB0byBnZXQgZ3JmIGNsb2NrXG4iKTsKPj4+Pj4gCQlyZXR1cm4g
cmV0Owo+Pj4+PiAJfQo+Pj4+Pgo+Pj4+PiBAQCAtMzAyLDE2ICszMDIsMTYgQEAgc3RhdGljIHZv
aWQgZHdfaGRtaV9yb2NrY2hpcF9lbmNvZGVyX2VuYWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVu
Y29kZXIpCj4+Pj4+Cj4+Pj4+IAlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoaGRtaS0+Z3JmX2Ns
ayk7Cj4+Pj4+IAlpZiAocmV0IDwgMCkgewo+Pj4+PiAtCQlkcm1fZXJyKGhkbWksICJmYWlsZWQg
dG8gZW5hYmxlIGdyZmNsayAlZFxuIiwgcmV0KTsKPj4+Pj4gKwkJZGV2X2VycihoZG1pLT5kZXYs
ICJmYWlsZWQgdG8gZW5hYmxlIGdyZmNsayAlZFxuIiwgcmV0KTsKPj4+Pj4gCQlyZXR1cm47Cj4+
Pj4+IAl9Cj4+Pj4+Cj4+Pj4+IAlyZXQgPSByZWdtYXBfd3JpdGUoaGRtaS0+cmVnbWFwLCBoZG1p
LT5jaGlwX2RhdGEtPmxjZHNlbF9ncmZfcmVnLCB2YWwpOwo+Pj4+PiAJaWYgKHJldCAhPSAwKQo+
Pj4+PiAtCQlkcm1fZXJyKGhkbWksICJDb3VsZCBub3Qgd3JpdGUgdG8gR1JGOiAlZFxuIiwgcmV0
KTsKPj4+Pj4gKwkJZGV2X2VycihoZG1pLT5kZXYsICJDb3VsZCBub3Qgd3JpdGUgdG8gR1JGOiAl
ZFxuIiwgcmV0KTsKPj4+Pj4KPj4+Pj4gCWNsa19kaXNhYmxlX3VucHJlcGFyZShoZG1pLT5ncmZf
Y2xrKTsKPj4+Pj4gLQlkcm1fZGJnKGhkbWksICJ2b3AgJXMgb3V0cHV0IHRvIGhkbWlcbiIsIHJl
dCA/ICJMSVQiIDogIkJJRyIpOwo+Pj4+PiArCWRldl9kYmcoaGRtaS0+ZGV2LCAidm9wICVzIG91
dHB1dCB0byBoZG1pXG4iLCByZXQgPyAiTElUIiA6ICJCSUciKTsKPj4+Pj4gfQo+Pj4+Pgo+Pj4+
PiBzdGF0aWMgaW50Cj4+Pj4+IEBAIC01NzQsNyArNTc0LDcgQEAgc3RhdGljIGludCBkd19oZG1p
X3JvY2tjaGlwX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIs
Cj4+Pj4+IAlyZXQgPSByb2NrY2hpcF9oZG1pX3BhcnNlX2R0KGhkbWkpOwo+Pj4+PiAJaWYgKHJl
dCkgewo+Pj4+PiAJCWlmIChyZXQgIT0gLUVQUk9CRV9ERUZFUikKPj4+Pj4gLQkJCWRybV9lcnIo
aGRtaSwgIlVuYWJsZSB0byBwYXJzZSBPRiBkYXRhXG4iKTsKPj4+Pj4gKwkJCWRldl9lcnIoaGRt
aS0+ZGV2LCAiVW5hYmxlIHRvIHBhcnNlIE9GIGRhdGFcbiIpOwo+Pj4+PiAJCXJldHVybiByZXQ7
Cj4+Pj4+IAl9Cj4+Pj4+Cj4+Pj4+IEBAIC01ODIsNyArNTgyLDcgQEAgc3RhdGljIGludCBkd19o
ZG1pX3JvY2tjaGlwX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0
ZXIsCj4+Pj4+IAlpZiAoSVNfRVJSKGhkbWktPnBoeSkpIHsKPj4+Pj4gCQlyZXQgPSBQVFJfRVJS
KGhkbWktPnBoeSk7Cj4+Pj4+IAkJaWYgKHJldCAhPSAtRVBST0JFX0RFRkVSKQo+Pj4+PiAtCQkJ
ZHJtX2VycihoZG1pLCAiZmFpbGVkIHRvIGdldCBwaHlcbiIpOwo+Pj4+PiArCQkJZGV2X2Vyciho
ZG1pLT5kZXYsICJmYWlsZWQgdG8gZ2V0IHBoeVxuIik7Cj4+Pj4+IAkJcmV0dXJuIHJldDsKPj4+
Pj4gCX0KPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9k
d19oZG1pX3FwLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9x
cC1yb2NrY2hpcC5jCj4+Pj4+IGluZGV4IGY0MTE1MWQ0OWZjYS4uM2QxZGRkYjM0NjAzIDEwMDY0
NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hp
cC5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pX3FwLXJvY2tj
aGlwLmMKPj4+Pj4gQEAgLTI0Miw3ICsyNDIsNyBAQCBzdGF0aWMgdm9pZCBkd19oZG1pX3FwX3Jr
MzU4OF9ocGRfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4+Pj4+IAlpZiAoZHJtKSB7
Cj4+Pj4+IAkJY2hhbmdlZCA9IGRybV9oZWxwZXJfaHBkX2lycV9ldmVudChkcm0pOwo+Pj4+PiAJ
CWlmIChjaGFuZ2VkKQo+Pj4+PiAtCQkJZHJtX2RiZyhoZG1pLCAiY29ubmVjdG9yIHN0YXR1cyBj
aGFuZ2VkXG4iKTsKPj4+Pj4gKwkJCWRldl9kYmcoaGRtaS0+ZGV2LCAiY29ubmVjdG9yIHN0YXR1
cyBjaGFuZ2VkXG4iKTsKPj4+Pj4gCX0KPj4+Pj4gfQo+Pj4+Pgo+Pj4+PiBAQCAtNDcyLDcgKzQ3
Miw3IEBAIHN0YXRpYyBpbnQgZHdfaGRtaV9xcF9yb2NrY2hpcF9iaW5kKHN0cnVjdCBkZXZpY2Ug
KmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLAo+Pj4+PiAJCX0KPj4+Pj4gCX0KPj4+Pj4gCWlm
IChoZG1pLT5wb3J0X2lkIDwgMCkgewo+Pj4+PiAtCQlkcm1fZXJyKGhkbWksICJGYWlsZWQgdG8g
bWF0Y2ggSERNSSBwb3J0IElEXG4iKTsKPj4+Pj4gKwkJZGV2X2VycihoZG1pLT5kZXYsICJGYWls
ZWQgdG8gbWF0Y2ggSERNSSBwb3J0IElEXG4iKTsKPj4+Pj4gCQlyZXR1cm4gaGRtaS0+cG9ydF9p
ZDsKPj4+Pj4gCX0KPj4+Pj4KPj4+Pj4gQEAgLTQ5NiwyMCArNDk2LDIwIEBAIHN0YXRpYyBpbnQg
ZHdfaGRtaV9xcF9yb2NrY2hpcF9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmlj
ZSAqbWFzdGVyLAo+Pj4+PiAJaGRtaS0+cmVnbWFwID0gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlf
cGhhbmRsZShkZXYtPm9mX25vZGUsCj4+Pj4+IAkJCQkJCSAgICAgICAicm9ja2NoaXAsZ3JmIik7
Cj4+Pj4+IAlpZiAoSVNfRVJSKGhkbWktPnJlZ21hcCkpIHsKPj4+Pj4gLQkJZHJtX2VycihoZG1p
LCAiVW5hYmxlIHRvIGdldCByb2NrY2hpcCxncmZcbiIpOwo+Pj4+PiArCQlkZXZfZXJyKGhkbWkt
PmRldiwgIlVuYWJsZSB0byBnZXQgcm9ja2NoaXAsZ3JmXG4iKTsKPj4+Pj4gCQlyZXR1cm4gUFRS
X0VSUihoZG1pLT5yZWdtYXApOwo+Pj4+PiAJfQo+Pj4+Pgo+Pj4+PiAJaGRtaS0+dm9fcmVnbWFw
ID0gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZShkZXYtPm9mX25vZGUsCj4+Pj4+IAkJ
CQkJCQkgICJyb2NrY2hpcCx2by1ncmYiKTsKPj4+Pj4gCWlmIChJU19FUlIoaGRtaS0+dm9fcmVn
bWFwKSkgewo+Pj4+PiAtCQlkcm1fZXJyKGhkbWksICJVbmFibGUgdG8gZ2V0IHJvY2tjaGlwLHZv
LWdyZlxuIik7Cj4+Pj4+ICsJCWRldl9lcnIoaGRtaS0+ZGV2LCAiVW5hYmxlIHRvIGdldCByb2Nr
Y2hpcCx2by1ncmZcbiIpOwo+Pj4+PiAJCXJldHVybiBQVFJfRVJSKGhkbWktPnZvX3JlZ21hcCk7
Cj4+Pj4+IAl9Cj4+Pj4+Cj4+Pj4+IAlyZXQgPSBkZXZtX2Nsa19idWxrX2dldF9hbGxfZW5hYmxl
ZChoZG1pLT5kZXYsICZjbGtzKTsKPj4+Pj4gCWlmIChyZXQgPCAwKSB7Cj4+Pj4+IC0JCWRybV9l
cnIoaGRtaSwgIkZhaWxlZCB0byBnZXQgY2xvY2tzOiAlZFxuIiwgcmV0KTsKPj4+Pj4gKwkJZGV2
X2VycihoZG1pLT5kZXYsICJGYWlsZWQgdG8gZ2V0IGNsb2NrczogJWRcbiIsIHJldCk7Cj4+Pj4+
IAkJcmV0dXJuIHJldDsKPj4+Pj4gCX0KPj4+Pj4KPj4+Pj4gQEAgLTUxNyw3ICs1MTcsNyBAQCBz
dGF0aWMgaW50IGR3X2hkbWlfcXBfcm9ja2NoaXBfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0
cnVjdCBkZXZpY2UgKm1hc3RlciwKPj4+Pj4gCQkJCQkJICAgIEdQSU9EX09VVF9ISUdIKTsKPj4+
Pj4gCWlmIChJU19FUlIoaGRtaS0+ZW5hYmxlX2dwaW8pKSB7Cj4+Pj4+IAkJcmV0ID0gUFRSX0VS
UihoZG1pLT5lbmFibGVfZ3Bpbyk7Cj4+Pj4+IC0JCWRybV9lcnIoaGRtaSwgIkZhaWxlZCB0byBy
ZXF1ZXN0IGVuYWJsZSBHUElPOiAlZFxuIiwgcmV0KTsKPj4+Pj4gKwkJZGV2X2VycihoZG1pLT5k
ZXYsICJGYWlsZWQgdG8gcmVxdWVzdCBlbmFibGUgR1BJTzogJWRcbiIsIHJldCk7Cj4+Pj4+IAkJ
cmV0dXJuIHJldDsKPj4+Pj4gCX0KPj4+Pj4KPj4+Pj4gQEAgLTUyNSw3ICs1MjUsNyBAQCBzdGF0
aWMgaW50IGR3X2hkbWlfcXBfcm9ja2NoaXBfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCBkZXZpY2UgKm1hc3RlciwKPj4+Pj4gCWlmIChJU19FUlIoaGRtaS0+cGh5KSkgewo+Pj4+PiAJ
CXJldCA9IFBUUl9FUlIoaGRtaS0+cGh5KTsKPj4+Pj4gCQlpZiAocmV0ICE9IC1FUFJPQkVfREVG
RVIpCj4+Pj4+IC0JCQlkcm1fZXJyKGhkbWksICJmYWlsZWQgdG8gZ2V0IHBoeTogJWRcbiIsIHJl
dCk7Cj4+Pj4+ICsJCQlkZXZfZXJyKGhkbWktPmRldiwgImZhaWxlZCB0byBnZXQgcGh5OiAlZFxu
IiwgcmV0KTsKPj4+Pj4gCQlyZXR1cm4gcmV0Owo+Pj4+PiAJfQo+Pj4+Pgo+Pj4+PiBAQCAtNTY0
LDcgKzU2NCw3IEBAIHN0YXRpYyBpbnQgZHdfaGRtaV9xcF9yb2NrY2hpcF9iaW5kKHN0cnVjdCBk
ZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLAo+Pj4+PiAJY29ubmVjdG9yID0gZHJt
X2JyaWRnZV9jb25uZWN0b3JfaW5pdChkcm0sIGVuY29kZXIpOwo+Pj4+PiAJaWYgKElTX0VSUihj
b25uZWN0b3IpKSB7Cj4+Pj4+IAkJcmV0ID0gUFRSX0VSUihjb25uZWN0b3IpOwo+Pj4+PiAtCQlk
cm1fZXJyKGhkbWksICJmYWlsZWQgdG8gaW5pdCBicmlkZ2UgY29ubmVjdG9yOiAlZFxuIiwgcmV0
KTsKPj4+Pj4gKwkJZGV2X2VycihoZG1pLT5kZXYsICJmYWlsZWQgdG8gaW5pdCBicmlkZ2UgY29u
bmVjdG9yOiAlZFxuIiwgcmV0KTsKPj4+Pj4gCQlyZXR1cm4gcmV0Owo+Pj4+PiAJfQo+Pj4+Pgo+
Pj4+PiAtLSAKPj4+Pj4gMi4zOS41Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IExpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdAo+Pj4+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+Pj4+IGh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
Pj4+IC0tIAo+Pj4gSmFuaSBOaWt1bGEsIEludGVsCj4KPi0tIAo+LS0KPlRob21hcyBaaW1tZXJt
YW5uCj5HcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyCj5TVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBH
ZXJtYW55IEdtYkgKPkZyYW5rZW5zdHJhc3NlIDE0NiwgOTA0NjEgTnVlcm5iZXJnLCBHZXJtYW55
Cj5HRjogSXZvIFRvdGV2LCBBbmRyZXcgTXllcnMsIEFuZHJldyBNY0RvbmFsZCwgQm91ZGllbiBN
b2VybWFuCj5IUkIgMzY4MDkgKEFHIE51ZXJuYmVyZykKPgo=
