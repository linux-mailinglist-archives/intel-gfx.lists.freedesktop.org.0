Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E571F4195E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 02:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10AB589221;
	Wed, 12 Jun 2019 00:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 567BA89221
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 00:16:52 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id a186so7230798vsd.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 17:16:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SfO9F8KZrr8f2zYzYCRkN8MSxrGxIaN330Tf5LK87fo=;
 b=VyrqPyuMFba8HeABCqvSwxC9qZkSXowpqiuSPI6T7VRM0Zljuj6orxwuq5mOicZRtN
 csTORlkP7MLoip+Z39fBxMjhGX8OzSVCReUZZ3opNmtQ/BlwEHQDcfYbc9Qr1BcQ61xq
 5cdYOEltDePZOI5scT2DEi8VYhdmAYeOCIeoyKiS3y/tuSUYY8ayw9OrBIMY4d90fe+m
 M7IHvQETnvD2c77w1we7XMzKUtPkTOkEaY72V3qxDwz6qN4apqVZhoE8uUTf7207JFtB
 g/1Jw11JqqKwspI+0/lyY1ezbLHTqnXYoTlMVmLIZrze5haCl/edaKMjt5Ezp+5YoTiV
 vNyg==
X-Gm-Message-State: APjAAAUHdkz3kvsPlp5NAOQbXtGyGhL0Vtw9aMaWWEUaxoPUScfZ50pr
 lDuiyy9dRaXbCPBE/L91EP3po4Y+rcszw7NzCZZ9KA==
X-Google-Smtp-Source: APXvYqxUOzD8AqvvcWDf7lhY9Uveg285+W4sY5GBDN/I9hYwTGaKY8nKDHt/xqKW6AbgISVYKcf5oBcbdbGd+wCWdEY=
X-Received: by 2002:a67:8e01:: with SMTP id q1mr44148432vsd.1.1560298611160;
 Tue, 11 Jun 2019 17:16:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-5-dbasehore@chromium.org> <87zhmoy270.fsf@intel.com>
 <01636500-0be5-acf8-5f93-a57383bf4b20@redhat.com>
In-Reply-To: <01636500-0be5-acf8-5f93-a57383bf4b20@redhat.com>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Tue, 11 Jun 2019 17:16:40 -0700
Message-ID: <CAGAzgsoxpsft-vmVOuKSAbLJqR-EZvcceLpMeWkz6ikJEKGJHg@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=SfO9F8KZrr8f2zYzYCRkN8MSxrGxIaN330Tf5LK87fo=;
 b=bz8o81L6+cYm2ngvHqapE8gu1XLoSuCnuYhH0SUdUtpksRCuF2SsLGGes/2mwR9s2S
 RM6CKjQmDnezF8ApAw0fUBxHfpZUgPHC2pLNBvJvyZMVy7pv167DASrNvojG8XTA8BZy
 F4JG4+AytDmmTtNdNUxLuH24pkHO8bPHRfy5o=
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/connector: Split out orientation
 quirk detection
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, CK Hu <ck.hu@mediatek.com>,
 devicetree@vger.kernel.org, Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgMTo1NCBBTSBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUBy
ZWRoYXQuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gMTEtMDYtMTkgMTA6MDgsIEphbmkgTmlr
dWxhIHdyb3RlOgo+ID4gT24gTW9uLCAxMCBKdW4gMjAxOSwgRGVyZWsgQmFzZWhvcmUgPGRiYXNl
aG9yZUBjaHJvbWl1bS5vcmc+IHdyb3RlOgo+ID4+IFRoaXMgcmVtb3ZlcyB0aGUgb3JpZW50YXRp
b24gcXVpcmsgZGV0ZWN0aW9uIGZyb20gdGhlIGNvZGUgdG8gYWRkCj4gPj4gYW4gb3JpZW50YXRp
b24gcHJvcGVydHkgdG8gYSBwYW5lbC4gVGhpcyBpcyB1c2VkIG9ubHkgZm9yIGxlZ2FjeSB4ODYK
PiA+PiBzeXN0ZW1zLCB5ZXQgd2UnZCBsaWtlIHRvIHN0YXJ0IHVzaW5nIHRoaXMgb24gZGV2aWNl
dHJlZSBzeXN0ZW1zIHdoZXJlCj4gPj4gcXVpcmsgZGV0ZWN0aW9uIGxpa2UgdGhpcyBpcyBub3Qg
bmVlZGVkLgo+ID4KPiA+IE5vdCBuZWVkZWQsIGJ1dCBubyBoYXJtIGRvbmUgZWl0aGVyLCByaWdo
dD8KPiA+Cj4gPiBJIGd1ZXNzIEknbGwgZGVmZXIganVkZ2VtZW50IG9uIHRoaXMgdG8gSGFucyBh
bmQgVmlsbGUgKENjJ2QpLgo+Cj4gSG1tLCBJJ20gbm90IGJpZyBmYW4gb2YgdGhpcyBjaGFuZ2Uu
IEl0IGFkZHMgY29kZSBkdXBsaWNhdGlvbiBhbmQgYXMKPiBvdGhlciBtb2RlbHMgd2l0aCB0aGUg
c2FtZSBpc3N1ZSB1c2luZyBhIGRpZmZlcmVudCBkcml2ZXIgb3IgcGFuZWwtdHlwZQo+IHNob3cg
dXAgd2Ugd2lsbCBnZXQgbW9yZSBjb2RlIGR1cGxpY2F0aW9uLgo+Cj4gQWxzbyBJJ20gbm90IGNv
bnZpbmNlZCB0aGF0IGRldmljZXRyZWUgYmFzZWQgcGxhdGZvcm1zIHdpbGwgbm90IG5lZWQKPiB0
aGlzLiBUaGUgd2hvbGUgZGV2aWNldHJlZSBhcyBhbiBBQkkgdGhpbmcsIHdoaWNoIG1lYW5zIHRo
YXQgYWxsCj4gZGV2aWNldHJlZSBiaW5kaW5ncyBuZWVkIHRvIGJlIHNldCBpbiBzdG9uZSBiZWZv
cmUgdGhpbmdzIGFyZSBtZXJnZWQKPiBpbnRvIHRoZSBtYWlubGluZSwgaXMgZG9uZSBzb2xlbHkg
c28gdGhhdCB3ZSBjYW4gZ2V0IHZlbmRvcnMgdG8gc2hpcAo+IGhhcmR3YXJlIHdpdGggdGhlIGR0
YiBmaWxlcyBpbmNsdWRlZCBpbiB0aGUgZmlybXdhcmUuCgpXZSd2ZSBwb3N0ZWQgZml4ZXMgdG8g
dGhlIGRldmljZXRyZWUgd2VsbCBhZnRlciB0aGUgaW5pdGlhbCBtZXJnZSBpbnRvCm1haW5saW5l
IGJlZm9yZSwgc28gSSBkb24ndCBzZWUgd2hhdCB5b3UgbWVhbiBhYm91dCB0aGUgYmluZGluZ3Mg
YmVpbmcKc2V0IGluIHN0b25lLiBJIGFsc28gZG9uJ3QgcmVhbGx5IHNlZSB0aGUgcG9pbnQuIFRo
ZSBkZXZpY2V0cmVlIGlzIGluCnRoZSBrZXJuZWwuIElmIHRoZXJlJ3Mgc29tZSBzZXR0aW5nIGlu
IHRoZSBkZXZpY2V0cmVlIHRoYXQgd2Ugd2FudCB0bwpjaGFuZ2UsIGl0J3MgZWZmZWN0aXZlbHkg
dGhlIHNhbWUgdG8gbWFrZSB0aGUgY2hhbmdlIGluIHRoZSBkZXZpY2V0cmVlCnZlcnN1cyBzb21l
IHF1aXJrIHNldHRpbmcuIFRoZSBvbmx5IGRpZmZlcmVuY2Ugc2VlbXMgdG8gYmUgdGhhdCBtYWtp
bmcKdGhlIGNoYW5nZSBpbiB0aGUgZGV2aWNldHJlZSBpcyBjbGVhbmVyLgoKPgo+IEknbSAxMDAl
IHN1cmUgdGhhdCB0aGVyZSBpcyBlLmcuIEFSTSBoYXJkd2FyZSBvdXQgdGhlcmUgd2hpY2ggdXNl
cwo+IG5vbiB1cHJpZ2h0IG1vdW50ZWQgTENEIHBhbmVscyAoSSB1c2VkIHRvIGhhdmUgYSBmZXcg
QWxsd2lubmVyCj4gdGFibGV0cyB3aGljaCBkaWQgdGhpcykuIEFuZCBnaXZlbiBteSBleHBlcmll
bmNlIHdpdGggdGhlIHF1YWxpdHkKPiBvZiBmaXJtd2FyZSBidW5kbGVkIHRhYmxlcyBsaWtlIEFD
UEkgdGFibGVzIEknbSBxdWl0ZSBzdXJlIHRoYXQKPiBpZiB3ZSBldmVyIG1vdmUgdG8gZmlybXdh
cmUgaW5jbHVkZWQgZHRiIGZpbGVzIHRoYXQgd2Ugd2lsbCBuZWVkCj4gcXVpcmtzIGZvciB0aG9z
ZSB0b28uCgpJcyB0aGVyZSBhIHRpbWVsaW5lIHRvIHN0YXJ0IHVzaW5nIGZpcm13YXJlIGJ1bmRs
ZWQgdGFibGVzPyBTaW5jZSB0aGUKcXVpcmsgY29kZSBvbmx5IHVzZXMgRE1JLCBpdCB3aWxsIG5l
ZWQgdG8gYmUgY2hhbmdlZCBhbnl3YXlzIGZvcgpmaXJtd2FyZSBidW5kbGVkIGRldmljZXRyZWUg
ZmlsZXMgYW55d2F5cy4KCldlIGNvdWxkIGNvbnNvbGlkYXRlIHRoZSBkdXBsaWNhdGVkIGNvZGUg
aW50byBhbm90aGVyIGZ1bmN0aW9uIHRoYXQKY2FsbHMgZHJtX2dldF9wYW5lbF9vcmllbnRhdGlv
bl9xdWlya3MgdG9vLiBUaGUgb25seSByZWFzb24gaXQncyBsaWtlCml0IGlzIGlzIGJlY2F1c2Ug
SSBpbml0aWFsbHkgb25seSBoYWQgdGhlIGNhbGwgdG8KZHJtX2dldF9wYW5lbF9vcmllbnRhdGlv
bl9xdWlyayBvbmNlIGluIHRoZSBjb2RlLgoKCj4KPiBBbHNvIGNhbGxpbmcgdGhpcyAidXNlZCBv
bmx5IGZvciBsZWdhY3kgeDg2IHN5c3RlbXMiIGlzIGEgYml0Cj4gdW5mYWlyIElNSE8sIG5ldyBV
RUZJIG1vZGVscyBhcmUgc3RpbGwgYmVpbmcgYWRkZWQgdG8gdGhlIHF1aXJrIGxpc3QKPiB0b2Rh
eSwgZm9yIGhhcmR3YXJlIHdoaWNoIGRvZXMgbm90IGV2ZW4gc2hpcCB5ZXQuIEFjdHVhbGx5IDk5
JQo+IG9mIHRoZSBtb2RlbHMgaW4gdGhlIHF1aXJrIGxpc3QgYXJlIFVFRkkgb25seSBtb2RlbHMs
IHdoaWNoIGRvCj4gbm90IGV2ZW4gc3VwcG9ydCBjbGFzc2ljIFBDIEJJT1MgYm9vdGluZywgc28g
dGhvc2Ugc3lzdGVtcyBhcmUKPiBhbnl0aGluZyBidXQgbGVnYWN5Lgo+Cj4gSSBiZWxpZXZlIHRo
ZSBvbmx5IHJlYXNvbiB3ZSBoYXZlIG9ubHkgaGFkIHRvIGRlYWwgd2l0aCB0aGlzIG9uIHg4Ngo+
IHNvIGZhciBpcyBiZWNhdXNlIHRoZSBPT1RCIHN1cHBvcnQgZm9yIG1vc3QgQVJNIHN5c3RlbXMg
aXMgbGVzcyBwb2xpc2hlZAo+IHRoZW4gdGhhdCBmb3IgeDg2IHN5c3RlbXMgYW5kIG9uIEFSTSBz
eXN0ZW1zIHRoZXJlIGFyZSBzdGlsbCBtb3JlCj4gaW1wb3J0YW50IGlzc3VlcyB0byB0YWNrbGUg
Zmlyc3QuCgpBUk0ganVzdCBoYW5kbGVzIGl0IGluIGEgZGlmZmVyZW50IHdheS4gSSdtIG5vdCBl
eGFjdGx5IHN1cmUgaG93IG1vcmUKb2YgdGhlIEFuZHJvaWQgdGFibGV0cyBkbyB0aGlzLCBidXQg
aXQgbWlnaHQganVzdCBiZSBoYW5kbGVkIGVudGlyZWx5CmluIHVzZXJzcGFjZSB3aXRoIHJvdGF0
ZWQgc3BsYXNoIHNjcmVlbnMgb24gYm9vdCAoc28gYSBkZXZpY2Ugd2l0aCBhCjE4MCBkZWdyZWUg
cGFuZWwgaGFzIGFuIHVwc2lkZSBkb3duIHNwbGFzaCBzY3JlZW4pLgoKPgo+IFJlZ2FyZHMsCj4K
PiBIYW5zCj4KPgo+Cj4KPgo+Cj4gPgo+ID4gU2lkZSBub3RlLCBJJ20gYWJvdXQgdG8gYXBwbHkg
c29tZSAobWlub3IpIGNvbmZsaWN0aW5nIGNoYW5nZXMgaW4gb3VyCj4gPiAtbmV4dCBhcyBzb29u
IGFzIEkgZ2V0IENJIHJlc3VsdHMgb24gaXQuCj4gPgo+ID4KPiA+IEJSLAo+ID4gSmFuaS4KPiA+
Cj4gPgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogRGVyZWsgQmFzZWhvcmUgPGRiYXNlaG9yZUBj
aHJvbWl1bS5vcmc+Cj4gPj4gLS0tCj4gPj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rv
ci5jIHwgMTYgKysrKy0tLS0tLS0tLS0tLQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHAuYyB8IDE0ICsrKysrKysrKysrLS0tCj4gPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS92
bHZfZHNpLmMgIHwgMTQgKysrKysrKysrKy0tLS0KPiA+PiAgIGluY2x1ZGUvZHJtL2RybV9jb25u
ZWN0b3IuaCAgICAgfCAgMiArLQo+ID4+ICAgNCBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25z
KCspLCAyMCBkZWxldGlvbnMoLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX2Nvbm5lY3Rvci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYwo+ID4+
IGluZGV4IGUxNzU4NmFhYTgwZi4uNThhMDliNjUwMjhiIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X2Nvbm5lY3Rvci5jCj4gPj4gQEAgLTE4OTQsMzEgKzE4OTQsMjMgQEAgRVhQT1JUX1NZTUJPTChk
cm1fY29ubmVjdG9yX3NldF92cnJfY2FwYWJsZV9wcm9wZXJ0eSk7Cj4gPj4gICAgKiBkcm1fY29u
bmVjdG9yX2luaXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVydHkgLQo+ID4+ICAgICogaW5pdGlh
bGl6ZSB0aGUgY29ubmVjdGVycyBwYW5lbF9vcmllbnRhdGlvbiBwcm9wZXJ0eQo+ID4+ICAgICog
QGNvbm5lY3RvcjogY29ubmVjdG9yIGZvciB3aGljaCB0byBpbml0IHRoZSBwYW5lbC1vcmllbnRh
dGlvbiBwcm9wZXJ0eS4KPiA+PiAtICogQHdpZHRoOiB3aWR0aCBpbiBwaXhlbHMgb2YgdGhlIHBh
bmVsLCB1c2VkIGZvciBwYW5lbCBxdWlyayBkZXRlY3Rpb24KPiA+PiAtICogQGhlaWdodDogaGVp
Z2h0IGluIHBpeGVscyBvZiB0aGUgcGFuZWwsIHVzZWQgZm9yIHBhbmVsIHF1aXJrIGRldGVjdGlv
bgo+ID4+ICAgICoKPiA+PiAgICAqIFRoaXMgZnVuY3Rpb24gc2hvdWxkIG9ubHkgYmUgY2FsbGVk
IGZvciBidWlsdC1pbiBwYW5lbHMsIGFmdGVyIHNldHRpbmcKPiA+PiAgICAqIGNvbm5lY3Rvci0+
ZGlzcGxheV9pbmZvLnBhbmVsX29yaWVudGF0aW9uIGZpcnN0IChpZiBrbm93bikuCj4gPj4gICAg
Kgo+ID4+IC0gKiBUaGlzIGZ1bmN0aW9uIHdpbGwgY2hlY2sgZm9yIHBsYXRmb3JtIHNwZWNpZmlj
IChlLmcuIERNSSBiYXNlZCkgcXVpcmtzCj4gPj4gLSAqIG92ZXJyaWRpbmcgZGlzcGxheV9pbmZv
LnBhbmVsX29yaWVudGF0aW9uIGZpcnN0LCB0aGVuIGlmIHBhbmVsX29yaWVudGF0aW9uCj4gPj4g
LSAqIGlzIG5vdCBEUk1fTU9ERV9QQU5FTF9PUklFTlRBVElPTl9VTktOT1dOIGl0IHdpbGwgYXR0
YWNoIHRoZQo+ID4+IC0gKiAicGFuZWwgb3JpZW50YXRpb24iIHByb3BlcnR5IHRvIHRoZSBjb25u
ZWN0b3IuCj4gPj4gKyAqIFRoaXMgZnVuY3Rpb24gd2lsbCBjaGVjayBpZiB0aGUgcGFuZWxfb3Jp
ZW50YXRpb24gaXMgbm90Cj4gPj4gKyAqIERSTV9NT0RFX1BBTkVMX09SSUVOVEFUSU9OX1VOS05P
V04uIElmIG5vdCwgaXQgd2lsbCBhdHRhY2ggdGhlICJwYW5lbAo+ID4+ICsgKiBvcmllbnRhdGlv
biIgcHJvcGVydHkgdG8gdGhlIGNvbm5lY3Rvci4KPiA+PiAgICAqCj4gPj4gICAgKiBSZXR1cm5z
Ogo+ID4+ICAgICogWmVybyBvbiBzdWNjZXNzLCBuZWdhdGl2ZSBlcnJubyBvbiBmYWlsdXJlLgo+
ID4+ICAgICovCj4gPj4gICBpbnQgZHJtX2Nvbm5lY3Rvcl9pbml0X3BhbmVsX29yaWVudGF0aW9u
X3Byb3BlcnR5KAo+ID4+IC0gICAgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgaW50
IHdpZHRoLCBpbnQgaGVpZ2h0KQo+ID4+ICsgICAgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5l
Y3RvcikKPiA+PiAgIHsKPiA+PiAgICAgIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjb25uZWN0
b3ItPmRldjsKPiA+PiAgICAgIHN0cnVjdCBkcm1fZGlzcGxheV9pbmZvICppbmZvID0gJmNvbm5l
Y3Rvci0+ZGlzcGxheV9pbmZvOwo+ID4+ICAgICAgc3RydWN0IGRybV9wcm9wZXJ0eSAqcHJvcDsK
PiA+PiAtICAgIGludCBvcmllbnRhdGlvbl9xdWlyazsKPiA+PiAtCj4gPj4gLSAgICBvcmllbnRh
dGlvbl9xdWlyayA9IGRybV9nZXRfcGFuZWxfb3JpZW50YXRpb25fcXVpcmsod2lkdGgsIGhlaWdo
dCk7Cj4gPj4gLSAgICBpZiAob3JpZW50YXRpb25fcXVpcmsgIT0gRFJNX01PREVfUEFORUxfT1JJ
RU5UQVRJT05fVU5LTk9XTikKPiA+PiAtICAgICAgICAgICAgaW5mby0+cGFuZWxfb3JpZW50YXRp
b24gPSBvcmllbnRhdGlvbl9xdWlyazsKPiA+Pgo+ID4+ICAgICAgaWYgKGluZm8tPnBhbmVsX29y
aWVudGF0aW9uID09IERSTV9NT0RFX1BBTkVMX09SSUVOVEFUSU9OX1VOS05PV04pCj4gPj4gICAg
ICAgICAgICAgIHJldHVybiAwOwo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ID4+IGluZGV4
IGIwOTlhOWRjMjhmZC4uNzJhYjA5MGVhOTdhIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RwLmMKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kcC5jCj4gPj4gQEAgLTQwLDYgKzQwLDcgQEAKPiA+PiAgICNpbmNsdWRlIDxkcm0vZHJtX2Vk
aWQuaD4KPiA+PiAgICNpbmNsdWRlIDxkcm0vZHJtX2hkY3AuaD4KPiA+PiAgICNpbmNsdWRlIDxk
cm0vZHJtX3Byb2JlX2hlbHBlci5oPgo+ID4+ICsjaW5jbHVkZSA8ZHJtL2RybV91dGlscy5oPgo+
ID4+ICAgI2luY2x1ZGUgPGRybS9pOTE1X2RybS5oPgo+ID4+Cj4gPj4gICAjaW5jbHVkZSAiaTkx
NV9kZWJ1Z2ZzLmgiCj4gPj4gQEAgLTcyODEsOSArNzI4MiwxNiBAQCBzdGF0aWMgYm9vbCBpbnRl
bF9lZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiA+PiAgICAg
IGludGVsX2Nvbm5lY3Rvci0+cGFuZWwuYmFja2xpZ2h0LnBvd2VyID0gaW50ZWxfZWRwX2JhY2ts
aWdodF9wb3dlcjsKPiA+PiAgICAgIGludGVsX3BhbmVsX3NldHVwX2JhY2tsaWdodChjb25uZWN0
b3IsIHBpcGUpOwo+ID4+Cj4gPj4gLSAgICBpZiAoZml4ZWRfbW9kZSkKPiA+PiAtICAgICAgICAg
ICAgZHJtX2Nvbm5lY3Rvcl9pbml0X3BhbmVsX29yaWVudGF0aW9uX3Byb3BlcnR5KAo+ID4+IC0g
ICAgICAgICAgICAgICAgICAgIGNvbm5lY3RvciwgZml4ZWRfbW9kZS0+aGRpc3BsYXksIGZpeGVk
X21vZGUtPnZkaXNwbGF5KTsKPiA+PiArICAgIGlmIChmaXhlZF9tb2RlKSB7Cj4gPj4gKyAgICAg
ICAgICAgIGludCBvcmllbnRhdGlvbiA9IGRybV9nZXRfcGFuZWxfb3JpZW50YXRpb25fcXVpcmso
Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICBmaXhlZF9tb2RlLT5oZGlzcGxheSwg
Zml4ZWRfbW9kZS0+dmRpc3BsYXkpOwo+ID4+ICsKPiA+PiArICAgICAgICAgICAgaWYgKG9yaWVu
dGF0aW9uICE9IERSTV9NT0RFX1BBTkVMX09SSUVOVEFUSU9OX1VOS05PV04pCj4gPj4gKyAgICAg
ICAgICAgICAgICAgICAgY29ubmVjdG9yLT5kaXNwbGF5X2luZm8ucGFuZWxfb3JpZW50YXRpb24g
PQo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgb3JpZW50YXRpb247Cj4gPj4gKwo+
ID4+ICsgICAgICAgICAgICBkcm1fY29ubmVjdG9yX2luaXRfcGFuZWxfb3JpZW50YXRpb25fcHJv
cGVydHkoY29ubmVjdG9yKTsKPiA+PiArICAgIH0KPiA+Pgo+ID4+ICAgICAgcmV0dXJuIHRydWU7
Cj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jCj4gPj4gaW5kZXggYmZlMjg5MWVhYzM3Li4y
N2Y4NmE3ODdmNjAgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2Rz
aS5jCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jCj4gPj4gQEAgLTMw
LDYgKzMwLDcgQEAKPiA+PiAgICNpbmNsdWRlIDxkcm0vZHJtX2NydGMuaD4KPiA+PiAgICNpbmNs
dWRlIDxkcm0vZHJtX2VkaWQuaD4KPiA+PiAgICNpbmNsdWRlIDxkcm0vZHJtX21pcGlfZHNpLmg+
Cj4gPj4gKyNpbmNsdWRlIDxkcm0vZHJtX3V0aWxzLmg+Cj4gPj4KPiA+PiAgICNpbmNsdWRlICJp
OTE1X2Rydi5oIgo+ID4+ICAgI2luY2x1ZGUgImludGVsX2F0b21pYy5oIgo+ID4+IEBAIC0xNjUw
LDYgKzE2NTEsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kc2lfYWRkX3Byb3BlcnRpZXMoc3RydWN0
IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ID4+Cj4gPj4gICAgICBpZiAoY29ubmVjdG9y
LT5wYW5lbC5maXhlZF9tb2RlKSB7Cj4gPj4gICAgICAgICAgICAgIHUzMiBhbGxvd2VkX3NjYWxl
cnM7Cj4gPj4gKyAgICAgICAgICAgIGludCBvcmllbnRhdGlvbjsKPiA+Pgo+ID4+ICAgICAgICAg
ICAgICBhbGxvd2VkX3NjYWxlcnMgPSBCSVQoRFJNX01PREVfU0NBTEVfQVNQRUNUKSB8IEJJVChE
Uk1fTU9ERV9TQ0FMRV9GVUxMU0NSRUVOKTsKPiA+PiAgICAgICAgICAgICAgaWYgKCFIQVNfR01D
SChkZXZfcHJpdikpCj4gPj4gQEAgLTE2NjAsMTIgKzE2NjIsMTYgQEAgc3RhdGljIHZvaWQgaW50
ZWxfZHNpX2FkZF9wcm9wZXJ0aWVzKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikK
PiA+Pgo+ID4+ICAgICAgICAgICAgICBjb25uZWN0b3ItPmJhc2Uuc3RhdGUtPnNjYWxpbmdfbW9k
ZSA9IERSTV9NT0RFX1NDQUxFX0FTUEVDVDsKPiA+Pgo+ID4+IC0gICAgICAgICAgICBjb25uZWN0
b3ItPmJhc2UuZGlzcGxheV9pbmZvLnBhbmVsX29yaWVudGF0aW9uID0KPiA+PiAtICAgICAgICAg
ICAgICAgICAgICB2bHZfZHNpX2dldF9wYW5lbF9vcmllbnRhdGlvbihjb25uZWN0b3IpOwo+ID4+
IC0gICAgICAgICAgICBkcm1fY29ubmVjdG9yX2luaXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVy
dHkoCj4gPj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAmY29ubmVjdG9yLT5iYXNlLAo+
ID4+ICsgICAgICAgICAgICBvcmllbnRhdGlvbiA9IGRybV9nZXRfcGFuZWxfb3JpZW50YXRpb25f
cXVpcmsoCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25uZWN0b3ItPnBhbmVs
LmZpeGVkX21vZGUtPmhkaXNwbGF5LAo+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Y29ubmVjdG9yLT5wYW5lbC5maXhlZF9tb2RlLT52ZGlzcGxheSk7Cj4gPj4gKyAgICAgICAgICAg
IGlmIChvcmllbnRhdGlvbiAhPSBEUk1fTU9ERV9QQU5FTF9PUklFTlRBVElPTl9VTktOT1dOKQo+
ID4+ICsgICAgICAgICAgICAgICAgICAgIGNvbm5lY3Rvci0+YmFzZS5kaXNwbGF5X2luZm8ucGFu
ZWxfb3JpZW50YXRpb24gPSBvcmllbnRhdGlvbjsKPiA+PiArICAgICAgICAgICAgZWxzZQo+ID4+
ICsgICAgICAgICAgICAgICAgICAgIGNvbm5lY3Rvci0+YmFzZS5kaXNwbGF5X2luZm8ucGFuZWxf
b3JpZW50YXRpb24gPQo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmx2X2RzaV9n
ZXRfcGFuZWxfb3JpZW50YXRpb24oY29ubmVjdG9yKTsKPiA+PiArCj4gPj4gKyAgICAgICAgICAg
IGRybV9jb25uZWN0b3JfaW5pdF9wYW5lbF9vcmllbnRhdGlvbl9wcm9wZXJ0eSgmY29ubmVjdG9y
LT5iYXNlKTsKPiA+PiAgICAgIH0KPiA+PiAgIH0KPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL2RybS9kcm1fY29ubmVjdG9yLmggYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiA+
PiBpbmRleCA0N2U3NDliNzRlNWYuLmMyOTkyZjdhMGRkNSAxMDA2NDQKPiA+PiAtLS0gYS9pbmNs
dWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiA+PiArKysgYi9pbmNsdWRlL2RybS9kcm1fY29ubmVj
dG9yLmgKPiA+PiBAQCAtMTM3MCw3ICsxMzcwLDcgQEAgdm9pZCBkcm1fY29ubmVjdG9yX3NldF9s
aW5rX3N0YXR1c19wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+ID4+
ICAgdm9pZCBkcm1fY29ubmVjdG9yX3NldF92cnJfY2FwYWJsZV9wcm9wZXJ0eSgKPiA+PiAgICAg
ICAgICAgICAgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgYm9vbCBjYXBhYmxlKTsK
PiA+PiAgIGludCBkcm1fY29ubmVjdG9yX2luaXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVydHko
Cj4gPj4gLSAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLCBpbnQgd2lkdGgsIGlu
dCBoZWlnaHQpOwo+ID4+ICsgICAgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7Cj4g
Pj4gICBpbnQgZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfbWF4X2JwY19wcm9wZXJ0eShzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGludCBtaW4sIGludCBtYXgpOwo+ID4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
