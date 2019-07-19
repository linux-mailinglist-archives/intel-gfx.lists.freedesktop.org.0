Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 845E76E37D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 11:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85FAF6E7EA;
	Fri, 19 Jul 2019 09:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BDDA6E7EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 09:31:49 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id i11so33898713edq.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 02:31:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=kteM3aG52Jjxha45cWbEoqCb+s1gbJyrQ+iu7hlJ9Ag=;
 b=eDHjBjtP6vo9wyBx/sOAka76v6Aaeu7SmVsqkXL6UZlkRa+EYQ21kfjL7rai2pqFMS
 Ssm7I1GjSjcJUwqB5Ngj0Y9bmRT/hZdlzzND7KIplgZKtUXn8XAUyZQHe2CjTYjawbJ3
 qDix8kiobaBpq8CzAKfhYeSEkZZYxxuk+rpBXDREpEp2fBpPIQrslbrpYoPd6FEfHKOi
 5T0jb2zb9TgWYuB4qy/jkVq+pzzLPwrNSPDF6cIoT6ozVHcfzJiQDDyF+E1Ilzfuxpio
 pu5kb/FN7ezZyABlDvt3X6iYnvO0lOp3Ch1OjKJq3HyvFqjJ8DA2EMgBPDz6nUrg2+4x
 bbJw==
X-Gm-Message-State: APjAAAXdkMr1OdjIIi6FBigA5mpBPX7dGqEug/JaPEsyt3JNUZ+SR91l
 J7DSs28CsCCkvE+kqhFaM+Q=
X-Google-Smtp-Source: APXvYqy8le9dD3KoBaVHg1HbVAGOrnfZbuOsGixXupACOiq3tltiJ539Pw02/WGAKlmffVRVV5taHQ==
X-Received: by 2002:a17:907:374:: with SMTP id
 rs20mr18529859ejb.36.1563528708127; 
 Fri, 19 Jul 2019 02:31:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id c24sm6088739ejb.33.2019.07.19.02.31.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 02:31:46 -0700 (PDT)
Date: Fri, 19 Jul 2019 11:31:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Koenig, Christian" <Christian.Koenig@amd.com>
Message-ID: <20190719093144.GK15868@phenom.ffwll.local>
References: <20190626122310.1498-1-christian.koenig@amd.com>
 <20190626122933.GK12905@phenom.ffwll.local>
 <ef70981d-3d52-b339-b3f5-190635969621@gmail.com>
 <20190719085757.GD15868@phenom.ffwll.local>
 <4704d3c5-894d-6ac1-4afb-06c275700bac@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4704d3c5-894d-6ac1-4afb-06c275700bac@amd.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=kteM3aG52Jjxha45cWbEoqCb+s1gbJyrQ+iu7hlJ9Ag=;
 b=Qa+8wAZjCwEcBk5C3ZD7N2liE7CH4hbhpdc3JmySwMOjsXmu5TLFAZpfw9qWoKIaWU
 5kW7j2/dH2yJ1UBQ71lycMi9DB1pu205gAT4O7a1ngoGfm5i3RV8dFfQ3z4tasD8sJUt
 3ZqXFDHI4zObmCcQv+k3WY2pYi5ADooSpAoXE=
Subject: Re: [Intel-gfx] [PATCH 1/6] dma-buf: add dynamic DMA-buf handling
 v13
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMTksIDIwMTkgYXQgMDk6MTQ6MDVBTSArMDAwMCwgS29lbmlnLCBDaHJpc3Rp
YW4gd3JvdGU6Cj4gQW0gMTkuMDcuMTkgdW0gMTA6NTcgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+
ID4gT24gVHVlLCBKdWwgMTYsIDIwMTkgYXQgMDQ6MjE6NTNQTSArMDIwMCwgQ2hyaXN0aWFuIEvD
tm5pZyB3cm90ZToKPiA+PiBBbSAyNi4wNi4xOSB1bSAxNDoyOSBzY2hyaWViIERhbmllbCBWZXR0
ZXI6Cj4gPj4+IE9uIFdlZCwgSnVuIDI2LCAyMDE5IGF0IDAyOjIzOjA1UE0gKzAyMDAsIENocmlz
dGlhbiBLw7ZuaWcgd3JvdGU6Cj4gPj4+IFtTTklQXQo+ID4+PiBBbHNvIEkgbG9va2VkIGF0IENJ
IHJlc3VsdHMgYW5kIHN0dWZmLCBJIGd1ZXNzIHlvdSBpbmRlZWQgZGlkbid0IGJyZWFrIHRoZQo+
ID4+PiB3b3JsZCBiZWNhdXNlIENocmlzIFdpbHNvbiBoYXMgZmF1Z2h0IGJhY2sgc3RydWN0X211
dGV4IGZhciBlbm91Z2ggYnkgbm93Lgo+ID4+Pgo+ID4+PiBPdGhlciBpc3N1ZSBpcyB0aGF0IHNp
bmNlIDIgd2Vla3Mgb3Igc28gb3VyIENJIHN0YXJ0ZWQgZmlsdGVyaW5nIGFsbAo+ID4+PiBsb2Nr
ZGVwIHNwbGF0cywgc28geW91IG5lZWQgdG8gZGlnIGludG8gcmVzdWx0cyB5b3Vyc2VsZi4KPiA+
Pj4KPiA+Pj4gYnR3IG9uIHRoYXQsIEkgdGhpbmsgaW4gdGhlIGVuZCB0aGUgcmVzZXJ2YXRpb25f
b2JqIGxvY2tpbmcgd2lsbCBhdCBiZXN0Cj4gPj4+IGJlIGNvbnNpc3RlbnQgYmV0d2VlbiBhbWRn
cHUgYW5kIGk5MTU6IEkganVzdCByZW1lbWJlcmVkIHRoYXQgYWxsIG90aGVyCj4gPj4+IHR0bSBk
cml2ZXJzIGhhdmUgdGhlIG1tYXBfc2VtIHZzIHJlc3Zfb2JqIGxvY2tpbmcgdGhlIHdyb25nIHdh
eSByb3VuZCwgYW5kCj4gPj4+IHRoZSB0cnlsb2NrIGluIHR0bV9ib19mYXVsdC4gU28gdGhhdCBw
YXJ0IGFsb25lIGlzIGhvcGVsZXNzLCBidXQgSSBndWVzcwo+ID4+PiBzaW5jZSByYWRlb24ua28g
aXMgYWJhbmRvbndhcmUgbm8gb25lIHdpbGwgZXZlciBmaXggdGhhdC4KPiA+Pj4KPiA+Pj4gU28g
SSB0aGluayBpbiB0aGUgZW5kIGl0IGJvaWxzIGRvd24gdG8gd2hldGhlciB0aGF0J3MgZ29vZCBl
bm91Z2ggdG8gbGFuZAo+ID4+PiBpdCwgb3Igbm90Lgo+ID4+IFdlbGwgY2FuIHlvdSBnaXZlIG1l
IGFuIHJiIHRoZW4/IEkgbWVhbiBhdCBzb21lIHBvaW50IEkgaGF2ZSB0byBwdXNoIGl0IHRvCj4g
Pj4gZHJtLW1pc2MtbmV4dC4KPiA+IFdlbGwgbXkgbWFpbCBoZXJlIHByZWNlZWRlZCB0aGUgZW50
aXJlIGFtZGtmZCBldmljdGlvbl9mZW5jZSBkaXNjdXNzaW9uLgo+ID4gV2l0aCB0aGF0IEknbSBu
b3Qgc3VyZSBhbnltb3JlLCBzaW5jZSB3ZSBkb24ndCByZWFsbHkgbmVlZCB0d28gYXBwcm9hY2hl
cwo+ID4gb2YgdGhlIHNhbWUgdGhpbmcuIEFuZCBpZiB0aGUgcGxhbiBpcyB0byBtb3ZlIGFtZGtm
ZCBvdmVyIGZyb20gdGhlCj4gPiBldmljdGlvbl9mZW5jZSB0cmljayB0byB1c2luZyB0aGUgaW52
YWxpZGF0ZSBjYWxsYmFjayBoZXJlLCB0aGVuIEkgdGhpbmsKPiA+IHdlIG1pZ2h0IG5lZWQgc29t
ZSBjbGFyaWZpY2F0aW9ucyBvbiB3aGF0IGV4YWN0bHkgdGhhdCBtZWFucy4KPiAKPiBNaG0sIEkg
dGhvdWdodCB0aGF0IHRoaXMgd2FzIG9ydGhvZ29uYWwuIEkgbWVhbiB0aGUgaW52YWxpZGF0aW9u
IAo+IGNhbGxiYWNrIGZvciBhIGJ1ZmZlciBhcmUgaW5kZXBlbmRlbnQgZnJvbSBob3cgdGhlIGRy
aXZlciBpcyBnb2luZyB0byAKPiB1c2UgaXQgaW4gdGhlIGVuZC4KPiAKPiBPciBkbyB5b3UgbWVh
biB0aGF0IHdlIGNvdWxkIHVzZSBmZW5jZXMgYW5kIHNhdmUgdXMgZnJvbSBhZGRpbmcganVzdCAK
PiBhbm90aGVyIG1lY2hhbmlzbSBmb3IgdGhlIHNhbWUgc2lnbmFsaW5nIHRoaW5nPwo+IAo+IFRo
YXQgY291bGQgb2YgY291cnNlIHdvcmssIGJ1dCBJIGhhZCB0aGUgaW1wcmVzc2lvbiB0aGF0IHlv
dSBhcmUgbm90IAo+IHZlcnkgaW4gZmF2b3Igb2YgdGhhdC4KCkl0IHdvbid0LCBzaW5jZSB5b3Ug
Y2FuIGVpdGhlciB1c2UgdGhlIGZlbmNlIGFzIHRoZSBpbnZhbGlkYXRlIGNhbGxiYWNrLApvciBh
cyBhIGZlbmNlIChmb3IgaW1wbGljaXQgc3luYykuIEJ1dCBub3QgYm90aC4KCkJ1dCBJIGFsc28g
ZG9uJ3QgdGhpbmsgaXQncyBhIGdvb2QgaWRlYSB0byBoYXZlIDIgaW52YWxpZGF0aW9uIG1lY2hh
bmlzbXMsCmFuZCBzaW5jZSB3ZSBkbyBoYXZlIG9uZSBtZXJnZWQgaW4tdHJlZSBhbHJlYWR5IHdv
dWxkIGJlIGdvb2QgdG8gcHJvb2YKdGhhdCB0aGUgbmV3IG9uZSBpcyB1cCB0byB0aGUgZXhpc3Rp
bmcgY2hhbGxlbmdlLgoKRm9yIGNvbnRleHQ6IEkgc3BlbmQgd2F5IHRvbyBtdWNoIHRpbWUgcmVh
ZGluZyB0dG0sIGFtZGdwdS9rZmQgYW5kIGk5MTUtZ2VtCmNvZGUgYW5kIG15IG92ZXJhbGwgaW1w
cmVzc2lvbiBpcyB0aGF0IGV2ZXJ5b25lJ3MganVzdCBydW5uaW5nIGFyb3VuZCBpbgpvcHBvc2l0
ZSBkaXJlY3Rpb25zIGFuZCBpdCdzIG9uZSBodWdlIGhhaXJiYWxsIG9mIGEgbWVzcy4gV2l0aCBh
IHByZXR0eQpldmVuIGRpc3RyaWJ1dGlvbiBvZiBlcXVhbGx5ICJlZWsgdGhpcyBpcyBob3JyaWJs
ZSIgYnV0IGFsc28gIndvdyB0aGlzIGlzCm11Y2ggYmV0dGVyIHRoYW4gd2hhdCB0aGUgb3RoZXIg
ZHJpdmVyIGRvZXMiLiBTbyB0aGF0J3Mgd2h5IEknbSBldmVuIG1vcmUKb24gdGhlICJhcmUgd2Ug
c3VyZSB0aGlzIGlzIHRoZSByaWdodCB0aGluZyIgdHJhaW4uCi1EYW5pZWwKLS0gCkRhbmllbCBW
ZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZm
d2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
