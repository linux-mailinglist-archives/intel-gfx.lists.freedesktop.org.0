Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A3396427
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 17:21:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC0F06E827;
	Tue, 20 Aug 2019 15:21:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 292496E827
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 15:21:38 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id z17so5371060otk.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 08:21:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=veXQZJ5iBT/UMuGh5217UbGTTt+FHeCdO1yA9TG2/NE=;
 b=aNnqwfeZ2MaEUmAH2RZ4tXLxiGKbvzIRpaIglEkNHzGmHMMT7J+A6B24soWRVueqgj
 O2LzOIAIITFxxuKg0OvKANM422gI9KPznyv6CwqK8N+QpRBP+9t0ODC2/mEw9ftmeSLy
 lSp7R6ofMozqS7cMh0Ls6dfcSTPzx0QSc2GpVMaNKmEbITR0iZwlWV5fHVlYRNZ3TRvq
 3okzqx/GAGT+x9a4dYMGIf8dmRYYLovA9gkTWocuxnrQwfHDNmhYxNOTN2lG6Y3m3BBY
 M5EnWoJEdxAxSqRcQnZx7mYzJ19pOSQ1xzswxD/dOAZuC5YXBUVRGA5LLew64xQjAPZM
 Fb9Q==
X-Gm-Message-State: APjAAAXnv05CScMcfL0mr0y6Rz8BX5eor5g+yk3WeURMvzljJ5z/xorU
 tOQVWUjm+JqYWT/4U3U2oF9FVYVxv659jwWZPbc0gQ==
X-Google-Smtp-Source: APXvYqymadlp8eNbmAuYBAjS7ycLcK/gbT0fr/ZeTHbNiLVH8QTsRq4vHOzyJLrNKsqTmKaAolgpLtZi5qJCoPM767E=
X-Received: by 2002:a9d:7cc9:: with SMTP id r9mr24003419otn.188.1566314497406; 
 Tue, 20 Aug 2019 08:21:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190820145336.15649-1-daniel.vetter@ffwll.ch>
 <20190820145336.15649-4-daniel.vetter@ffwll.ch>
 <38dc4dfe-88f4-ec16-b075-4bd0566c117d@amd.com>
In-Reply-To: <38dc4dfe-88f4-ec16-b075-4bd0566c117d@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 20 Aug 2019 17:21:25 +0200
Message-ID: <CAKMK7uEgdViPJgs4Y32DwrC8-yGpPU+G=zq-T9tgnQeVOkG6mg@mail.gmail.com>
To: "Koenig, Christian" <Christian.Koenig@amd.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=veXQZJ5iBT/UMuGh5217UbGTTt+FHeCdO1yA9TG2/NE=;
 b=BrA5rZK9wClbifm6zfo93p32W5oe+GktfbqkL8ty/xHyEgFJ/1hH5GhDAxjyGynAYq
 OBfK/seLyrO7PPDXiPl7vGFsPMK7aZYgAQejywWPsUYivDkfN2aV2iNd4VMx27L8ttNI
 UmRv5t8oWDLjquaf4c1qxrl4hZYzmlUi+0ljs=
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
 DRI Development <dri-devel@lists.freedesktop.org>, "Huang,
 Ray" <Ray.Huang@amd.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgNToxNiBQTSBLb2VuaWcsIENocmlzdGlhbgo8Q2hyaXN0
aWFuLktvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IEFtIDIwLjA4LjE5IHVtIDE2OjUzIHNjaHJp
ZWIgRGFuaWVsIFZldHRlcjoKPiA+IFdpdGggbm91dmVhdSBmaXhlZCBhbGwgdHRtLXVzaW5nIGRy
aXZlcyBoYXZlIHRoZSBjb3JyZWN0IG5lc3Rpbmcgb2YKPiA+IG1tYXBfc2VtIHZzIGRtYV9yZXN2
LCBhbmQgd2UgY2FuIGp1c3QgbG9jayB0aGUgYnVmZmVyLgo+ID4KPiA+IEFzc3VtaW5nIEkgZGlk
bid0IHNjcmV3IHVwIGFueXRoaW5nIHdpdGggbXkgYXVkaXQgb2YgY291cnNlLgo+ID4KPiA+IFNp
Z25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4g
Q2M6IENocmlzdGlhbiBLb2VuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiA+IENjOiBI
dWFuZyBSdWkgPHJheS5odWFuZ0BhbWQuY29tPgo+ID4gQ2M6IEdlcmQgSG9mZm1hbm4gPGtyYXhl
bEByZWRoYXQuY29tPgo+ID4gQ2M6ICJWTXdhcmUgR3JhcGhpY3MiIDxsaW51eC1ncmFwaGljcy1t
YWludGFpbmVyQHZtd2FyZS5jb20+Cj4gPiBDYzogVGhvbWFzIEhlbGxzdHJvbSA8dGhlbGxzdHJv
bUB2bXdhcmUuY29tPgo+Cj4gWWVzLCBwbGVhc2UuIEJ1dCBvbmUgbW9yZSBwb2ludDogeW91IGNh
biBub3cgcmVtb3ZlIGJvLT53dV9tdXRleCBhcyB3ZWxsIQoKQWggcmlnaHQgdG90YWxseSBmb3Jn
b3QgYWJvdXQgdGhhdCBpbiBteSBlbnRodXNpYXNtIGFmdGVyIGFsbCB0aGUKYXVkaXRpbmcgYW5k
IGZpeGluZyBub3V2ZWF1LgoKPiBBcGFydCBmcm9tIHRoYXQgUmV2aWV3ZWQtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KClRoYW5rcywgSSBhbHJlYWR5IHJl
c3B1biB0aGUgcGF0Y2hlcywgc28gd2lsbCBiZSBpbiB0aGUgbmV4dCB2ZXJzaW9uLgpDYW4geW91
IHBscyBhbHNvIGdpdmUgdGhpcyBhIHNwaW4gb24gdGhlIGFtZGdwdSBDSSwganVzdCB0byBtYWtl
IHN1cmUKaXQncyBhbGwgZmluZT8gV2l0aCBmdWxsIGxvY2tkZXAgb2ZjLiBBbmQgdGhlbiByZXBs
eSB3aXRoIGEgdC1iLgoKVGhhbmtzLCBEYW5pZWwKPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1
L2RybS90dG0vdHRtX2JvLmMgICAgfCAzNCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYyB8IDI2ICstLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPiA+ICAgaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaCAgICB8ICAx
IC0KPiA+ICAgMyBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNjAgZGVsZXRpb25zKC0p
Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgYi9kcml2
ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4gPiBpbmRleCAyMGZmNTZmMjdhYTQuLmE5NTJkZDYy
NGIwNiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKPiA+IEBAIC0xOTU0LDM3ICsxOTU0LDMg
QEAgdm9pZCB0dG1fYm9fc3dhcG91dF9hbGwoc3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXYpCj4g
PiAgICAgICAgICAgICAgIDsKPiA+ICAgfQo+ID4gICBFWFBPUlRfU1lNQk9MKHR0bV9ib19zd2Fw
b3V0X2FsbCk7Cj4gPiAtCj4gPiAtLyoqCj4gPiAtICogdHRtX2JvX3dhaXRfdW5yZXNlcnZlZCAt
IGludGVycnVwdGlibGUgd2FpdCBmb3IgYSBidWZmZXIgb2JqZWN0IHRvIGJlY29tZQo+ID4gLSAq
IHVucmVzZXJ2ZWQKPiA+IC0gKgo+ID4gLSAqIEBibzogUG9pbnRlciB0byBidWZmZXIKPiA+IC0g
Ki8KPiA+IC1pbnQgdHRtX2JvX3dhaXRfdW5yZXNlcnZlZChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmpl
Y3QgKmJvKQo+ID4gLXsKPiA+IC0gICAgIGludCByZXQ7Cj4gPiAtCj4gPiAtICAgICAvKgo+ID4g
LSAgICAgICogSW4gdGhlIGFic2Vuc2Ugb2YgYSB3YWl0X3VubG9ja2VkIEFQSSwKPiA+IC0gICAg
ICAqIFVzZSB0aGUgYm86Ond1X211dGV4IHRvIGF2b2lkIHRyaWdnZXJpbmcgbGl2ZWxvY2tzIGR1
ZSB0bwo+ID4gLSAgICAgICogY29uY3VycmVudCB1c2Ugb2YgdGhpcyBmdW5jdGlvbi4gTm90ZSB0
aGF0IHRoaXMgdXNlIG9mCj4gPiAtICAgICAgKiBibzo6d3VfbXV0ZXggY2FuIGdvIGF3YXkgaWYg
d2UgY2hhbmdlIGxvY2tpbmcgb3JkZXIgdG8KPiA+IC0gICAgICAqIG1tYXBfc2VtIC0+IGJvOjpy
ZXNlcnZlLgo+ID4gLSAgICAgICovCj4gPiAtICAgICByZXQgPSBtdXRleF9sb2NrX2ludGVycnVw
dGlibGUoJmJvLT53dV9tdXRleCk7Cj4gPiAtICAgICBpZiAodW5saWtlbHkocmV0ICE9IDApKQo+
ID4gLSAgICAgICAgICAgICByZXR1cm4gLUVSRVNUQVJUU1lTOwo+ID4gLSAgICAgaWYgKCFkbWFf
cmVzdl9pc19sb2NrZWQoYm8tPmJhc2UucmVzdikpCj4gPiAtICAgICAgICAgICAgIGdvdG8gb3V0
X3VubG9jazsKPiA+IC0gICAgIHJldCA9IGRtYV9yZXN2X2xvY2tfaW50ZXJydXB0aWJsZShiby0+
YmFzZS5yZXN2LCBOVUxMKTsKPiA+IC0gICAgIGlmIChyZXQgPT0gLUVJTlRSKQo+ID4gLSAgICAg
ICAgICAgICByZXQgPSAtRVJFU1RBUlRTWVM7Cj4gPiAtICAgICBpZiAodW5saWtlbHkocmV0ICE9
IDApKQo+ID4gLSAgICAgICAgICAgICBnb3RvIG91dF91bmxvY2s7Cj4gPiAtICAgICBkbWFfcmVz
dl91bmxvY2soYm8tPmJhc2UucmVzdik7Cj4gPiAtCj4gPiAtb3V0X3VubG9jazoKPiA+IC0gICAg
IG11dGV4X3VubG9jaygmYm8tPnd1X211dGV4KTsKPiA+IC0gICAgIHJldHVybiByZXQ7Cj4gPiAt
fQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jCj4gPiBpbmRleCA3NmVlZGI5NjM2OTMuLjUwNWUx
Nzg3YWVlYSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMK
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMKPiA+IEBAIC0xMjUsMzEg
KzEyNSw3IEBAIHN0YXRpYyB2bV9mYXVsdF90IHR0bV9ib192bV9mYXVsdChzdHJ1Y3Qgdm1fZmF1
bHQgKnZtZikKPiA+ICAgICAgICAgICAgICAgJmJkZXYtPm1hbltiby0+bWVtLm1lbV90eXBlXTsK
PiA+ICAgICAgIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCBjdm1hOwo+ID4KPiA+IC0gICAgIC8qCj4g
PiAtICAgICAgKiBXb3JrIGFyb3VuZCBsb2NraW5nIG9yZGVyIHJldmVyc2FsIGluIGZhdWx0IC8g
bm9wZm4KPiA+IC0gICAgICAqIGJldHdlZW4gbW1hcF9zZW0gYW5kIGJvX3Jlc2VydmU6IFBlcmZv
cm0gYSB0cnlsb2NrIG9wZXJhdGlvbgo+ID4gLSAgICAgICogZm9yIHJlc2VydmUsIGFuZCBpZiBp
dCBmYWlscywgcmV0cnkgdGhlIGZhdWx0IGFmdGVyIHdhaXRpbmcKPiA+IC0gICAgICAqIGZvciB0
aGUgYnVmZmVyIHRvIGJlY29tZSB1bnJlc2VydmVkLgo+ID4gLSAgICAgICovCj4gPiAtICAgICBp
ZiAodW5saWtlbHkoIWRtYV9yZXN2X3RyeWxvY2soYm8tPmJhc2UucmVzdikpKSB7Cj4gPiAtICAg
ICAgICAgICAgIGlmICh2bWYtPmZsYWdzICYgRkFVTFRfRkxBR19BTExPV19SRVRSWSkgewo+ID4g
LSAgICAgICAgICAgICAgICAgICAgIGlmICghKHZtZi0+ZmxhZ3MgJiBGQVVMVF9GTEFHX1JFVFJZ
X05PV0FJVCkpIHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIHR0bV9ib19nZXQo
Ym8pOwo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdXBfcmVhZCgmdm1mLT52bWEt
PnZtX21tLT5tbWFwX3NlbSk7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAodm9p
ZCkgdHRtX2JvX3dhaXRfdW5yZXNlcnZlZChibyk7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB0dG1fYm9fcHV0KGJvKTsKPiA+IC0gICAgICAgICAgICAgICAgICAgICB9Cj4gPiAt
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIFZNX0ZBVUxUX1JFVFJZOwo+ID4gLSAg
ICAgICAgICAgICB9Cj4gPiAtCj4gPiAtICAgICAgICAgICAgIC8qCj4gPiAtICAgICAgICAgICAg
ICAqIElmIHdlJ2Qgd2FudCB0byBjaGFuZ2UgbG9ja2luZyBvcmRlciB0bwo+ID4gLSAgICAgICAg
ICAgICAgKiBtbWFwX3NlbSAtPiBibzo6cmVzZXJ2ZSwgd2UnZCB1c2UgYSBibG9ja2luZyByZXNl
cnZlIGhlcmUKPiA+IC0gICAgICAgICAgICAgICogaW5zdGVhZCBvZiByZXRyeWluZyB0aGUgZmF1
bHQuLi4KPiA+IC0gICAgICAgICAgICAgICovCj4gPiAtICAgICAgICAgICAgIHJldHVybiBWTV9G
QVVMVF9OT1BBR0U7Cj4gPiAtICAgICB9Cj4gPiArICAgICBkbWFfcmVzdl9sb2NrKGJvLT5iYXNl
LnJlc3YsIE5VTEwpOwo+ID4KPiA+ICAgICAgIC8qCj4gPiAgICAgICAgKiBSZWZ1c2UgdG8gZmF1
bHQgaW1wb3J0ZWQgcGFnZXMuIFRoaXMgc2hvdWxkIGJlIGhhbmRsZWQKPiA+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2RybS90dG0vdHRtX2JvX2FwaS5oIGIvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19h
cGkuaAo+ID4gaW5kZXggNDNjNDkyOWEyMTcxLi42YjUwZTYyNGUzZTIgMTAwNjQ0Cj4gPiAtLS0g
YS9pbmNsdWRlL2RybS90dG0vdHRtX2JvX2FwaS5oCj4gPiArKysgYi9pbmNsdWRlL2RybS90dG0v
dHRtX2JvX2FwaS5oCj4gPiBAQCAtNzY1LDcgKzc2NSw2IEBAIHNzaXplX3QgdHRtX2JvX2lvKHN0
cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2LCBzdHJ1Y3QgZmlsZSAqZmlscCwKPiA+ICAgaW50IHR0
bV9ib19zd2Fwb3V0KHN0cnVjdCB0dG1fYm9fZ2xvYmFsICpnbG9iLAo+ID4gICAgICAgICAgICAg
ICAgICAgICAgIHN0cnVjdCB0dG1fb3BlcmF0aW9uX2N0eCAqY3R4KTsKPiA+ICAgdm9pZCB0dG1f
Ym9fc3dhcG91dF9hbGwoc3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXYpOwo+ID4gLWludCB0dG1f
Ym9fd2FpdF91bnJlc2VydmVkKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8pOwo+ID4KPiA+
ICAgLyoqCj4gPiAgICAqIHR0bV9ib191c2VzX2VtYmVkZGVkX2dlbV9vYmplY3QgLSBjaGVjayBp
ZiB0aGUgZ2l2ZW4gYm8gdXNlcyB0aGUKPgoKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9i
bG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
