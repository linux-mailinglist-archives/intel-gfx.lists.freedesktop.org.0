Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FADE10C670
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 11:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1D086E791;
	Thu, 28 Nov 2019 10:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D339F6E789
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 10:11:20 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id l1so10336284wme.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 02:11:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sISXPTjlwJ7V4ITzTlJun09VzrXW1uLl32xxBS1VK28=;
 b=cS5j18wEw2b3gEkIJ/+KeMWtgSzFJKt9pdjRAT1XRUAWQR6yIaY199bcL42P8nYuNv
 hxQkpnG/uP0vnLSag25WJk9/SZQIAOBZA03OgzvP/8CdMFWpWF6AwMJBbr4/CIop5o8n
 m3ORSyuj+f9fGF3R1m+y6qxm8aCO9EEbftAZlT710TlhpfBqSphwU7IwGEXwqQ/m/c7+
 VNu4C4t98Zkg4OYIQ9gv/JCN7AAsZTFZ0FY0kbXKhagoyJTRCMuSuUXs9XuCiBf4jEdc
 aPCXhtiOewYb/cLid6UjjA41ZwhIB0KLb3dslpaHXKuZZHd5o8T0b9g9ltuGR8i//xjX
 DZGw==
X-Gm-Message-State: APjAAAW6mNds5ygeB0q/OAgdpUSQ160g4C69w982dJzpQSzcqW/aPYux
 KgJ24qRdb3weoeiPnCrS2TW3alEUEeM=
X-Google-Smtp-Source: APXvYqwnNrI49aZ2W2YOZm0w5C0k/FdmQqHJgDY8+tOWqD4ok/grJ1NwsYJD988O1lFJnK/fDsmZBg==
X-Received: by 2002:a7b:cb02:: with SMTP id u2mr9058232wmj.142.1574935879478; 
 Thu, 28 Nov 2019 02:11:19 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id s8sm22418162wrt.57.2019.11.28.02.11.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 02:11:18 -0800 (PST)
Date: Thu, 28 Nov 2019 11:11:16 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191128101116.GQ406127@phenom.ffwll.local>
References: <cover.1574871797.git.jani.nikula@intel.com>
 <fc8342eef9fcd2f55c86fcd78f7df52f7c76fa87.1574871797.git.jani.nikula@intel.com>
 <20191127182940.GM406127@phenom.ffwll.local>
 <87d0dcnynk.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d0dcnynk.fsf@intel.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sISXPTjlwJ7V4ITzTlJun09VzrXW1uLl32xxBS1VK28=;
 b=klzHbCkoQlkg81BbUL+EwHZ6p0WS/SQgfNh6KC2POoVTgHs2znnPxgYJm0K5b2ECIX
 hMpCOOixeQHlahZM1wGlahTd7uwQOxI15aS7DpKxKriCVt6j6Krp4fR5eNJ+6CJ1hqZj
 3miAgkLmwqgjTWpsx+3/GKiitbN+RJhcpIJJA=
Subject: Re: [Intel-gfx] [PATCH 13/13] samples: vfio-mdev: constify fb ops
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
Cc: linux-fbdev@vger.kernel.org, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Kirti Wankhede <kwankhede@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgMTE6MjI6MjNBTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gV2VkLCAyNyBOb3YgMjAxOSwgRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNo
PiB3cm90ZToKPiA+IE9uIFdlZCwgTm92IDI3LCAyMDE5IGF0IDA2OjMyOjA5UE0gKzAyMDAsIEph
bmkgTmlrdWxhIHdyb3RlOgo+ID4+IE5vdyB0aGF0IHRoZSBmYm9wcyBtZW1iZXIgb2Ygc3RydWN0
IGZiX2luZm8gaXMgY29uc3QsIHdlIGNhbiBzdGFyIG1ha2luZwo+ID4+IHRoZSBvcHMgY29uc3Qg
YXMgd2VsbC4KPiA+PiAKPiA+PiBDYzogS2lydGkgV2Fua2hlZGUgPGt3YW5raGVkZUBudmlkaWEu
Y29tPgo+ID4+IENjOiBrdm1Admdlci5rZXJuZWwub3JnCj4gPj4gU2lnbmVkLW9mZi1ieTogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiA+Cj4gPiBZb3UndmUgbWlzc2VkIGF0
IGxlYXN0IGRyaXZlcnMvc3RhZ2luZy9mYnRmdCBpbiB5b3VyIHNlYXJjaC4gSSBndWVzcyB5b3UK
PiA+IG5lZWQgdG8gZG8gYSBmdWxsIG1ha2UgYWxseWVzY29uZmlnIG9uIHg4Ni9hcm0gYW5kIGFy
bTY0ICh0aGUgbGF0dGVyCj4gPiBiZWNhdXNlIHNvbWUgc3R1cGlkIGRyaXZlcnMgb25seSBjb21w
aWxlIHRoZXJlLCBub3Qgb24gYXJtLCBkb24ndCBhc2spLgo+ID4gU3RpbGwgbWlzc2VzIGEgcGls
ZSBvZiBtaXBzL3BwYyBvbmx5IHN0dWZmIGFuZCBtYXliZSB0aGUgc3BhcmNzIGFuZAo+ID4gYWxw
aGFzLCBidXQgc2hvdWxkIGJlIGdvb2QgZW5vdWdoLgo+IAo+IGZidGZ0IGR5bmFtaWNhbGx5IGFs
bG9jYXRlcyB0aGUgZmJvcHMsIGZvciB3aGF0ZXZlciByZWFzb24uIFRoZXJlIHdlcmUKPiBvdGhl
cnMgbGlrZSB0aGF0IHRvby4gU29tZSBvZiB0aGUgZHJpdmVycyBtb2RpZnkgdGhlIGZib3BzIHJ1
bnRpbWUgdG8KPiBjaG9vc2UgZGlmZmVyZW50IGhvb2tzIGZvciBkaWZmZXJlbnQgY29uZmlndXJh
dGlvbnMuIENhbid0IGNoYW5nZSB0aGVtCj4gYWxsIGFueXdheS4KPiAKPiBGYWNpbGl0YXRpbmcg
bWFraW5nIHRoZSBmYm9wcyBjb25zdCBpcyBvbmUgdGhpbmcgKHBhdGNoZXMgMS04KSwgYnV0IEkn
bQo+IG5vdCByZWFsbHkgc3VyZSBJIHdhbnQgdG8gc2lnbiB1cCBmb3IgZXhoYXVzdGl2ZWx5IG1v
dmluZyBmYm9wcyB0bwo+IHJvZGF0YSBvbiBhbnl0aGluZyBiZXlvbmQgZHJpdmVycy9ncHUvZHJt
LiBJdCdzIG5vdCBsaWtlIEkgbGVhdmUgc3R1ZmYKPiBicm9rZW4uIEJlc2lkZXMgSSBhbSB0cnlp
bmcgdG8gY292ZXIgYWxsIHRoZSBsb3cgaGFuZ2luZyBmcnVpdCB3aGVyZSBJCj4gY2FuIHNpbXBs
eSBhZGQgdGhlICJjb25zdCIgYW5kIGJlIGRvbmUgd2l0aCBpdC4KClVoIGluZGVlZCwgSSBkaWRu
J3QgY2hlY2sgdGhlIG91dHB1dCBvZiBteSBncmVwIHdpdGggc3VmZmljaWVudCBmaW5lc3Nlcy4K
ci1iIGFzLWlzIG9uIHRoYXQgcGlsZS4KClNpbmNlIGZiZGV2IGlzIG9mZmljaWFsbHkgaW4gZHJt
LW1pc2MgeW91IGNhbiBqdXN0IG1lcmdlIGl0IGFsbCBvbmNlIHRoZQpwcmVwIGlzIGRvbmUgLSBm
ZWVscyBzaWxseSBub3QgdG8gd2hlbiB5b3UndmUgZG9uZSB0aGUgd29yayBhbHJlYWR5LgotRGFu
aWVsCgo+IAo+IEJSLAo+IEphbmkuCj4gCj4gPgo+ID4gV2l0aCB0aGF0IGRvbmUsIG9uIHRoZSBy
ZW1haW5pbmcgcGF0Y2hlczoKPiA+Cj4gPiBSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4KPiA+Cj4gPj4gLS0tCj4gPj4gIHNhbXBsZXMvdmZpby1tZGV2
L21kcHktZmIuYyB8IDIgKy0KPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4gPj4gCj4gPj4gZGlmZiAtLWdpdCBhL3NhbXBsZXMvdmZpby1tZGV2L21k
cHktZmIuYyBiL3NhbXBsZXMvdmZpby1tZGV2L21kcHktZmIuYwo+ID4+IGluZGV4IDI3MTliYjI1
OTY1My4uMjFkYmY2M2Q2ZTQxIDEwMDY0NAo+ID4+IC0tLSBhL3NhbXBsZXMvdmZpby1tZGV2L21k
cHktZmIuYwo+ID4+ICsrKyBiL3NhbXBsZXMvdmZpby1tZGV2L21kcHktZmIuYwo+ID4+IEBAIC04
Niw3ICs4Niw3IEBAIHN0YXRpYyB2b2lkIG1kcHlfZmJfZGVzdHJveShzdHJ1Y3QgZmJfaW5mbyAq
aW5mbykKPiA+PiAgCQlpb3VubWFwKGluZm8tPnNjcmVlbl9iYXNlKTsKPiA+PiAgfQo+ID4+ICAK
PiA+PiAtc3RhdGljIHN0cnVjdCBmYl9vcHMgbWRweV9mYl9vcHMgPSB7Cj4gPj4gK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgZmJfb3BzIG1kcHlfZmJfb3BzID0gewo+ID4+ICAJLm93bmVyCQk9IFRISVNf
TU9EVUxFLAo+ID4+ICAJLmZiX2Rlc3Ryb3kJPSBtZHB5X2ZiX2Rlc3Ryb3ksCj4gPj4gIAkuZmJf
c2V0Y29scmVnCT0gbWRweV9mYl9zZXRjb2xyZWcsCj4gPj4gLS0gCj4gPj4gMi4yMC4xCj4gPj4g
Cj4gPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+
PiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gPj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+ID4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpLWRldmVsCj4gCj4gLS0gCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBo
aWNzIENlbnRlcgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
