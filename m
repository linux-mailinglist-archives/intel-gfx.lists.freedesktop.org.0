Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0953D7D56
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 20:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C4EC6E854;
	Tue, 27 Jul 2021 18:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A299F6EA02
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 18:25:38 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id x192so22273744ybe.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 11:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rUE7LeW2i/MXeJ7BpjRroFZaGRlXaZd9UAdi1TEb5vU=;
 b=XPQG9tQIL3bGsXLl6bVbclwtB+pR147q9OJYJ+zjBURwhwbfYIb89IZXqNitQfMlJw
 NsAc6WI7rLtpAqgQD6DVnEEYJ5IibZW3g6WgfF1W8CjOOzuj8/ZGDhp90zTavnjv/KaG
 pg5tBkRL43nqr0raUdaXwcUwFIKiz13GhMkyT7S7ikFr7FV2DPFszKCoP5uwTOgT1h2i
 veisQxhroIpWgm2QqsUg4X7EL3tLjDkj820/l3Hl1LPQ/SlIz9Pr02fBJG/aJ5YcpZ+X
 0sz0pe4puLzjXJ14y9fxxOhENsbe7hyEkiLnd7kPqdCNve7gQUAalkOH2T0RAVfbJdGr
 hONA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rUE7LeW2i/MXeJ7BpjRroFZaGRlXaZd9UAdi1TEb5vU=;
 b=TjNAT8GPPetOPrG2h7W8YHtbV1ksDcchS+aXrU0g/Ito7kBfX+I/bCFSGs8fyOI2BV
 MBoSCuM0k0/4V79z7thagUF+gRbe+lJ0X4KdFYlE7Yo7MqC9W2dKbJLxAnw7f18gu/L9
 ke5/HtBymdGVA/V1dstMj1+2o1HGzslsjjZa6SrmgfSJIljFDBNx8xSBMFBwhH0B1c5X
 8i1cWa4aErFv5d623w8Juiu1Pbxya4sY5wj5N0qyyllX3cN/CYoLN4ifq9RjSEi0pDHQ
 IHmVrH2vrluE6ul2iC8i/8EtacmS5/ueVnAMCZiOllOWq9oGkcfBYo+azZlaDg0/zwbm
 XFlA==
X-Gm-Message-State: AOAM5321L7XugKcSzszIcSEVF3U5TZJnfpRaZ/F8tLo2xNutleM9U3w4
 EGNyTq9Yba2tikEPTezLHdv577zqVrKsaZE0SfU/Dg==
X-Google-Smtp-Source: ABdhPJxtF/qqMJstgN51H+0kJbmM2b6hbXVt5OJPZJnQz2goSSS9By3iC/eFG7qBK7J2z6w9nS0vwNwHY9hRkDKKCcU=
X-Received: by 2002:a25:5584:: with SMTP id
 j126mr33410119ybb.323.1627410337518; 
 Tue, 27 Jul 2021 11:25:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
 <20210727121037.2041102-11-daniel.vetter@ffwll.ch>
 <f3b20f36-a76d-032a-3fb7-1a7c3e839478@linux.intel.com>
In-Reply-To: <f3b20f36-a76d-032a-3fb7-1a7c3e839478@linux.intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Tue, 27 Jul 2021 13:25:26 -0500
Message-ID: <CAOFGe96pq0ximhgudK4zbgK44Pp0609nUQk1aAkB=W1ZQhVxeg@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 11/11] drm/i915: Extract i915_module.c
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMjcsIDIwMjEgYXQgOTo0NCBBTSBUdnJ0a28gVXJzdWxpbgo8dHZydGtvLnVy
c3VsaW5AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+Cj4gT24gMjcvMDcvMjAyMSAxMzoxMCwg
RGFuaWVsIFZldHRlciB3cm90ZToKPiA+IFRoZSBtb2R1bGUgaW5pdCBjb2RlIGlzIHNvbWV3aGF0
IG1pc3BsYWNlZCBpbiBpOTE1X3BjaS5jLCBzaW5jZSBpdAo+ID4gbmVlZHMgdG8gcHVsbCBpbiBp
bml0L2V4aXQgZnVuY3Rpb25zIGZyb20gZXZlcnkgcGFydCBvZiB0aGUgZHJpdmVyIGFuZAo+ID4g
cG9sbHV0ZXMgdGhlIGluY2x1ZGUgbGlzdCBhIGxvdC4KPiA+Cj4gPiBFeHRyYWN0IGFuIGk5MTVf
bW9kdWxlLmMgZmlsZSB3aGljaCBwdWxscyBhbGwgdGhlIGJpdHMgdG9nZXRoZXIsIGFuZAo+ID4g
YWxsb3dzIHVzIHRvIG1hc3NpdmVseSB0cmltIHRoZSBpbmNsdWRlIGxpc3Qgb2YgaTkxNV9wY2ku
Yy4KPiA+Cj4gPiBUaGUgZG93bnNpZGUgaXMgdGhhdCBoYXZlIHRvIGRyb3AgdGhlIGVycm9yIHBh
dGggY2hlY2sgSmFzb24gYWRkZWQgdG8KPiA+IGNhdGNoIHdoZW4gd2Ugc2V0IHVwIHRoZSBwY2kg
ZHJpdmVyIHRvbyBlYXJseS4gSSB0aGluayB0aGF0IHJpc2sgaXMKPiA+IGFjY2VwdGFibGUgZm9y
IHRoaXMgcHJldHR5IG5pY2UgaW5jbHVkZS4KPgo+IGk5MTVfbW9kdWxlLmMgaXMgYW4gaW1wcm92
ZW1lbnQgYW5kIHRoZSByZXN0IGZvciBtZSBpcyBub3QgZXh0cmVtZWx5Cj4gb2JqZWN0aW9uYWJs
ZSBieSB0aGUgZW5kIG9mIHRoaXMgaW5jYXJuYXRpb24sIGJ1dCBJIGFsc28gZG8gbm90IHNlZSBp
dAo+IGFzIGFuIGltcHJvdmVtZW50IHJlYWxseS4KCkl0J3Mgbm90IGEgYmlnIGltcHJvdmVtZW50
IHRvIGJlIHN1cmUsIGJ1dCBJIHRoaW5rIHRoZXJlIGFyZSBhIGZldwp3YXlzIHRoaXMgaXMgbmlj
ZXI6CgogMS4gT25lIGxlc3MgbGV2ZWwgb2YgaW5kaXJlY3Rpb24gdG8gc29ydCB0aHJvdWdoLgog
Mi4gVGhlIGluaXQvZXhpdCB0YWJsZSBpcyBnZW5lcmFsbHkgc2ltcGxlciB0aGFuIHRoZSBpOTE1
X2dsb2JhbCBpbnRlcmZhY2UuCiAzLiBJdCdzIGVhc3kgdG8gZm9yZ2V0IGk5MTVfZ2xvYmFsX3Jl
Z2lzdGVyIGJ1dCBmb3JnZXR0aW5nIHRvIHB1dCBhbgpfZXhpdCBmdW5jdGlvbiBpbiB0aGUgbW9k
dWxlIGluaXQgdGFibGUgaXMgYSBsb3QgbW9yZSBvYnZpb3VzLgoKTm9uZSBvZiB0aG9zZSBhcmUg
ZGVhbC1icmVha2VycyBidXQgdGhleSdyZSBraW5kLW9mIG5pY2UuICBBbnl3YXksCnRoaXMgb25l
IGlzIGFsc28KClJldmlld2VkLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5u
ZXQ+CgotLUphc29uCgo+IFRoZXJlIHdhcyBhIGJ1ZyB0byBmaXggcmVsYXRpbmcgdG8gbW9jayB0
ZXN0cywgYnV0IHRoYXQgaXMgd2hlcmUgdGhlCj4gZXhlcmNpc2Ugc2hvdWxkIGhhdmUgc3RvcHBl
ZCBmb3Igbm93LiBBZnRlciB0aGF0IGl0IElNSE8gc3BpcmFsZWQgb3V0IG9mCj4gY29udHJvbCwg
bm90IGxlYXN0IHRoZSB1bmp1c3RpZmlhYmx5IGV4cGVkaXRlZCByZW1vdmFsIG9mIGNhY2hlCj4g
c2hyaW5raW5nLiBPbiBiYWxhbmNlIGZvciBtZSBpdCBpcyB0b28gY2h1cm55IGFuZCBib2lscyBk
b3duIHRvIHR3bwo+IGV4dHJlbWVseSBjYXBhYmxlIHBlb3BsZSBzcGVuZGluZyB0aW1lIG9uIGtp
bmQgb2YgcmVhbGx5IHVuaW1wb3J0YW50Cj4gc2lkZSBmaWRkbGVzLiBBbmQgSSBkbyBub3QgaW50
ZW5kIHRvIHByZXNjcmliZSB5b3Ugd2hhdCB0byBkbywganVzdAo+IGV4cHJlc3NpbmcgbXkgYmV3
aWxkZXJtZW50LiBGV0lXLi4uIEkgY2FuIG9ubHkgc2F5IG15IG9waW5pb24gYXMgaXQsIG5vdAo+
IHRoYXQgaXQgbWF0dGVycyBhIGxvdC4KPgo+IFJlZ2FyZHMsCj4KPiBUdnJ0a28KPgo+ID4gQ2M6
IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KPiA+IENjOiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICB8ICAgMSArCj4gPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfbW9kdWxlLmMgfCAxMTMgKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgIHwgMTE3ICstLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNp
LmggICAgfCAgIDggKysKPiA+ICAgNCBmaWxlcyBjaGFuZ2VkLCAxMjUgaW5zZXJ0aW9ucygrKSwg
MTE0IGRlbGV0aW9ucygtKQo+ID4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9tb2R1bGUuYwo+ID4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuaAo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gPiBpbmRleCA5
MDIyZGM2MzhlZDYuLjRlYmQ5ZjQxN2RkYiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+
ID4gQEAgLTM4LDYgKzM4LDcgQEAgaTkxNS15ICs9IGk5MTVfZHJ2Lm8gXAo+ID4gICAgICAgICBp
OTE1X2lycS5vIFwKPiA+ICAgICAgICAgaTkxNV9nZXRwYXJhbS5vIFwKPiA+ICAgICAgICAgaTkx
NV9taXRpZ2F0aW9ucy5vIFwKPiA+ICsgICAgICAgaTkxNV9tb2R1bGUubyBcCj4gPiAgICAgICAg
IGk5MTVfcGFyYW1zLm8gXAo+ID4gICAgICAgICBpOTE1X3BjaS5vIFwKPiA+ICAgICAgICAgaTkx
NV9zY2F0dGVybGlzdC5vIFwKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X21vZHVsZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9tb2R1bGUuYwo+ID4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uYzU3OGVhOGY1NmEwCj4g
PiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21vZHVs
ZS5jCj4gPiBAQCAtMCwwICsxLDExMyBAQAo+ID4gKy8qCj4gPiArICogU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IE1JVAo+ID4gKyAqCj4gPiArICogQ29weXJpZ2h0IMKpIDIwMjEgSW50ZWwgQ29y
cG9yYXRpb24KPiA+ICsgKi8KPiA+ICsKPiA+ICsjaW5jbHVkZSA8bGludXgvY29uc29sZS5oPgo+
ID4gKwo+ID4gKyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fY29udGV4dC5oIgo+ID4gKyNpbmNsdWRl
ICJnZW0vaTkxNV9nZW1fb2JqZWN0LmgiCj4gPiArI2luY2x1ZGUgImk5MTVfYWN0aXZlLmgiCj4g
PiArI2luY2x1ZGUgImk5MTVfYnVkZHkuaCIKPiA+ICsjaW5jbHVkZSAiaTkxNV9wYXJhbXMuaCIK
PiA+ICsjaW5jbHVkZSAiaTkxNV9wY2kuaCIKPiA+ICsjaW5jbHVkZSAiaTkxNV9wZXJmLmgiCj4g
PiArI2luY2x1ZGUgImk5MTVfcmVxdWVzdC5oIgo+ID4gKyNpbmNsdWRlICJpOTE1X3NjaGVkdWxl
ci5oIgo+ID4gKyNpbmNsdWRlICJpOTE1X3NlbGZ0ZXN0LmgiCj4gPiArI2luY2x1ZGUgImk5MTVf
dm1hLmgiCj4gPiArCj4gPiArc3RhdGljIGludCBpOTE1X2NoZWNrX25vbW9kZXNldCh2b2lkKQo+
ID4gK3sKPiA+ICsgICAgIGJvb2wgdXNlX2ttcyA9IHRydWU7Cj4gPiArCj4gPiArICAgICAvKgo+
ID4gKyAgICAgICogRW5hYmxlIEtNUyBieSBkZWZhdWx0LCB1bmxlc3MgZXhwbGljaXRseSBvdmVy
cmlkZW4gYnkKPiA+ICsgICAgICAqIGVpdGhlciB0aGUgaTkxNS5tb2Rlc2V0IHByYXJhbWV0ZXIg
b3IgYnkgdGhlCj4gPiArICAgICAgKiB2Z2FfdGV4dF9tb2RlX2ZvcmNlIGJvb3Qgb3B0aW9uLgo+
ID4gKyAgICAgICovCj4gPiArCj4gPiArICAgICBpZiAoaTkxNV9tb2RwYXJhbXMubW9kZXNldCA9
PSAwKQo+ID4gKyAgICAgICAgICAgICB1c2Vfa21zID0gZmFsc2U7Cj4gPiArCj4gPiArICAgICBp
ZiAodmdhY29uX3RleHRfZm9yY2UoKSAmJiBpOTE1X21vZHBhcmFtcy5tb2Rlc2V0ID09IC0xKQo+
ID4gKyAgICAgICAgICAgICB1c2Vfa21zID0gZmFsc2U7Cj4gPiArCj4gPiArICAgICBpZiAoIXVz
ZV9rbXMpIHsKPiA+ICsgICAgICAgICAgICAgLyogU2lsZW50bHkgZmFpbCBsb2FkaW5nIHRvIG5v
dCB1cHNldCB1c2Vyc3BhY2UuICovCj4gPiArICAgICAgICAgICAgIERSTV9ERUJVR19EUklWRVIo
IktNUyBkaXNhYmxlZC5cbiIpOwo+ID4gKyAgICAgICAgICAgICByZXR1cm4gMTsKPiA+ICsgICAg
IH0KPiA+ICsKPiA+ICsgICAgIHJldHVybiAwOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgY29u
c3Qgc3RydWN0IHsKPiA+ICsgICBpbnQgKCppbml0KSh2b2lkKTsKPiA+ICsgICB2b2lkICgqZXhp
dCkodm9pZCk7Cj4gPiArfSBpbml0X2Z1bmNzW10gPSB7Cj4gPiArICAgICB7IGk5MTVfY2hlY2tf
bm9tb2Rlc2V0LCBOVUxMIH0sCj4gPiArICAgICB7IGk5MTVfYWN0aXZlX21vZHVsZV9pbml0LCBp
OTE1X2FjdGl2ZV9tb2R1bGVfZXhpdCB9LAo+ID4gKyAgICAgeyBpOTE1X2J1ZGR5X21vZHVsZV9p
bml0LCBpOTE1X2J1ZGR5X21vZHVsZV9leGl0IH0sCj4gPiArICAgICB7IGk5MTVfY29udGV4dF9t
b2R1bGVfaW5pdCwgaTkxNV9jb250ZXh0X21vZHVsZV9leGl0IH0sCj4gPiArICAgICB7IGk5MTVf
Z2VtX2NvbnRleHRfbW9kdWxlX2luaXQsIGk5MTVfZ2VtX2NvbnRleHRfbW9kdWxlX2V4aXQgfSwK
PiA+ICsgICAgIHsgaTkxNV9vYmplY3RzX21vZHVsZV9pbml0LCBpOTE1X29iamVjdHNfbW9kdWxl
X2V4aXQgfSwKPiA+ICsgICAgIHsgaTkxNV9yZXF1ZXN0X21vZHVsZV9pbml0LCBpOTE1X3JlcXVl
c3RfbW9kdWxlX2V4aXQgfSwKPiA+ICsgICAgIHsgaTkxNV9zY2hlZHVsZXJfbW9kdWxlX2luaXQs
IGk5MTVfc2NoZWR1bGVyX21vZHVsZV9leGl0IH0sCj4gPiArICAgICB7IGk5MTVfdm1hX21vZHVs
ZV9pbml0LCBpOTE1X3ZtYV9tb2R1bGVfZXhpdCB9LAo+ID4gKyAgICAgeyBpOTE1X21vY2tfc2Vs
ZnRlc3RzLCBOVUxMIH0sCj4gPiArICAgICB7IGk5MTVfcG11X2luaXQsIGk5MTVfcG11X2V4aXQg
fSwKPiA+ICsgICAgIHsgaTkxNV9yZWdpc3Rlcl9wY2lfZHJpdmVyLCBpOTE1X3VucmVnaXN0ZXJf
cGNpX2RyaXZlciB9LAo+ID4gKyAgICAgeyBpOTE1X3BlcmZfc3lzY3RsX3JlZ2lzdGVyLCBpOTE1
X3BlcmZfc3lzY3RsX3VucmVnaXN0ZXIgfSwKPiA+ICt9Owo+ID4gK3N0YXRpYyBpbnQgaW5pdF9w
cm9ncmVzczsKPiA+ICsKPiA+ICtzdGF0aWMgaW50IF9faW5pdCBpOTE1X2luaXQodm9pZCkKPiA+
ICt7Cj4gPiArICAgICBpbnQgZXJyLCBpOwo+ID4gKwo+ID4gKyAgICAgZm9yIChpID0gMDsgaSA8
IEFSUkFZX1NJWkUoaW5pdF9mdW5jcyk7IGkrKykgewo+ID4gKyAgICAgICAgICAgICBlcnIgPSBp
bml0X2Z1bmNzW2ldLmluaXQoKTsKPiA+ICsgICAgICAgICAgICAgaWYgKGVyciA8IDApIHsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICB3aGlsZSAoaS0tKSB7Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBpZiAoaW5pdF9mdW5jc1tpXS5leGl0KQo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBpbml0X2Z1bmNzW2ldLmV4aXQoKTsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICB9Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPiA+
ICsgICAgICAgICAgICAgfSBlbHNlIGlmIChlcnIgPiAwKSB7Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgLyoKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgKiBFYXJseS1leGl0IHN1Y2Nlc3Mg
aXMgcmVzZXJ2ZWQgZm9yIHRoaW5ncyB3aGljaAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAq
IGRvbid0IGhhdmUgYW4gZXhpdCgpIGZ1bmN0aW9uIGJlY2F1c2Ugd2UgaGF2ZSBubwo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAqIGlkZWEgaG93IGZhciB0aGV5IGdvdCBvciBob3cgdG8gcGFy
dGlhbGx5IHRlYXIKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgKiB0aGVtIGRvd24uCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICovCj4gPiArICAgICAgICAgICAgICAgICAgICAgV0FSTl9P
Tihpbml0X2Z1bmNzW2ldLmV4aXQpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+
ID4gKyAgICAgICAgICAgICB9Cj4gPiArICAgICB9Cj4gPiArCj4gPiArICAgICBpbml0X3Byb2dy
ZXNzID0gaTsKPiA+ICsKPiA+ICsgICAgIHJldHVybiAwOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0
aWMgdm9pZCBfX2V4aXQgaTkxNV9leGl0KHZvaWQpCj4gPiArewo+ID4gKyAgICAgaW50IGk7Cj4g
PiArCj4gPiArICAgICBmb3IgKGkgPSBpbml0X3Byb2dyZXNzIC0gMTsgaSA+PSAwOyBpLS0pIHsK
PiA+ICsgICAgICAgICAgICAgR0VNX0JVR19PTihpID49IEFSUkFZX1NJWkUoaW5pdF9mdW5jcykp
Owo+ID4gKyAgICAgICAgICAgICBpZiAoaW5pdF9mdW5jc1tpXS5leGl0KQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIGluaXRfZnVuY3NbaV0uZXhpdCgpOwo+ID4gKyAgICAgfQo+ID4gK30KPiA+
ICsKPiA+ICttb2R1bGVfaW5pdChpOTE1X2luaXQpOwo+ID4gK21vZHVsZV9leGl0KGk5MTVfZXhp
dCk7Cj4gPiArCj4gPiArTU9EVUxFX0FVVEhPUigiVHVuZ3N0ZW4gR3JhcGhpY3MsIEluYy4iKTsK
PiA+ICtNT0RVTEVfQVVUSE9SKCJJbnRlbCBDb3Jwb3JhdGlvbiIpOwo+ID4gKwo+ID4gK01PRFVM
RV9ERVNDUklQVElPTihEUklWRVJfREVTQyk7Cj4gPiArTU9EVUxFX0xJQ0VOU0UoIkdQTCBhbmQg
YWRkaXRpb25hbCByaWdodHMiKTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+ID4gaW5kZXgg
YjRmNWU4OGFhYWU2Li4wODY1MWNhMDM0NzggMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BjaS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bj
aS5jCj4gPiBAQCAtMjIsMjQgKzIyLDEzIEBACj4gPiAgICAqCj4gPiAgICAqLwo+ID4KPiA+IC0j
aW5jbHVkZSA8bGludXgvY29uc29sZS5oPgo+ID4gICAjaW5jbHVkZSA8bGludXgvdmdhX3N3aXRj
aGVyb28uaD4KPiA+Cj4gPiAgICNpbmNsdWRlIDxkcm0vZHJtX2Rydi5oPgo+ID4gICAjaW5jbHVk
ZSA8ZHJtL2k5MTVfcGNpaWRzLmg+Cj4gPgo+ID4gLSNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Zi
ZGV2LmgiCj4gPiAtCj4gPiAtI2luY2x1ZGUgImk5MTVfYWN0aXZlLmgiCj4gPiAtI2luY2x1ZGUg
Imk5MTVfYnVkZHkuaCIKPiA+ICAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4gPiAtI2luY2x1ZGUg
ImdlbS9pOTE1X2dlbV9jb250ZXh0LmgiCj4gPiAtI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9vYmpl
Y3QuaCIKPiA+IC0jaW5jbHVkZSAiaTkxNV9yZXF1ZXN0LmgiCj4gPiAtI2luY2x1ZGUgImk5MTVf
cGVyZi5oIgo+ID4gLSNpbmNsdWRlICJpOTE1X3NlbGZ0ZXN0LmgiCj4gPiAtI2luY2x1ZGUgImk5
MTVfc2NoZWR1bGVyLmgiCj4gPiAtI2luY2x1ZGUgImk5MTVfdm1hLmgiCj4gPiArI2luY2x1ZGUg
Imk5MTVfcGNpLmgiCj4gPgo+ID4gICAjZGVmaW5lIFBMQVRGT1JNKHgpIC5wbGF0Zm9ybSA9ICh4
KQo+ID4gICAjZGVmaW5lIEdFTih4KSBcCj4gPiBAQCAtMTI1MSwzMSArMTI0MCw2IEBAIHN0YXRp
YyB2b2lkIGk5MTVfcGNpX3NodXRkb3duKHN0cnVjdCBwY2lfZGV2ICpwZGV2KQo+ID4gICAgICAg
aTkxNV9kcml2ZXJfc2h1dGRvd24oaTkxNSk7Cj4gPiAgIH0KPiA+Cj4gPiAtc3RhdGljIGludCBp
OTE1X2NoZWNrX25vbW9kZXNldCh2b2lkKQo+ID4gLXsKPiA+IC0gICAgIGJvb2wgdXNlX2ttcyA9
IHRydWU7Cj4gPiAtCj4gPiAtICAgICAvKgo+ID4gLSAgICAgICogRW5hYmxlIEtNUyBieSBkZWZh
dWx0LCB1bmxlc3MgZXhwbGljaXRseSBvdmVycmlkZW4gYnkKPiA+IC0gICAgICAqIGVpdGhlciB0
aGUgaTkxNS5tb2Rlc2V0IHByYXJhbWV0ZXIgb3IgYnkgdGhlCj4gPiAtICAgICAgKiB2Z2FfdGV4
dF9tb2RlX2ZvcmNlIGJvb3Qgb3B0aW9uLgo+ID4gLSAgICAgICovCj4gPiAtCj4gPiAtICAgICBp
ZiAoaTkxNV9tb2RwYXJhbXMubW9kZXNldCA9PSAwKQo+ID4gLSAgICAgICAgICAgICB1c2Vfa21z
ID0gZmFsc2U7Cj4gPiAtCj4gPiAtICAgICBpZiAodmdhY29uX3RleHRfZm9yY2UoKSAmJiBpOTE1
X21vZHBhcmFtcy5tb2Rlc2V0ID09IC0xKQo+ID4gLSAgICAgICAgICAgICB1c2Vfa21zID0gZmFs
c2U7Cj4gPiAtCj4gPiAtICAgICBpZiAoIXVzZV9rbXMpIHsKPiA+IC0gICAgICAgICAgICAgLyog
U2lsZW50bHkgZmFpbCBsb2FkaW5nIHRvIG5vdCB1cHNldCB1c2Vyc3BhY2UuICovCj4gPiAtICAg
ICAgICAgICAgIERSTV9ERUJVR19EUklWRVIoIktNUyBkaXNhYmxlZC5cbiIpOwo+ID4gLSAgICAg
ICAgICAgICByZXR1cm4gMTsKPiA+IC0gICAgIH0KPiA+IC0KPiA+IC0gICAgIHJldHVybiAwOwo+
ID4gLX0KPiA+IC0KPiA+ICAgc3RhdGljIHN0cnVjdCBwY2lfZHJpdmVyIGk5MTVfcGNpX2RyaXZl
ciA9IHsKPiA+ICAgICAgIC5uYW1lID0gRFJJVkVSX05BTUUsCj4gPiAgICAgICAuaWRfdGFibGUg
PSBwY2lpZGxpc3QsCj4gPiBAQCAtMTI4NSw4NyArMTI0OSwxMiBAQCBzdGF0aWMgc3RydWN0IHBj
aV9kcml2ZXIgaTkxNV9wY2lfZHJpdmVyID0gewo+ID4gICAgICAgLmRyaXZlci5wbSA9ICZpOTE1
X3BtX29wcywKPiA+ICAgfTsKPiA+Cj4gPiAtc3RhdGljIGludCBpOTE1X3JlZ2lzdGVyX3BjaV9k
cml2ZXIodm9pZCkKPiA+ICtpbnQgaTkxNV9yZWdpc3Rlcl9wY2lfZHJpdmVyKHZvaWQpCj4gPiAg
IHsKPiA+ICAgICAgIHJldHVybiBwY2lfcmVnaXN0ZXJfZHJpdmVyKCZpOTE1X3BjaV9kcml2ZXIp
Owo+ID4gICB9Cj4gPgo+ID4gLXN0YXRpYyB2b2lkIGk5MTVfdW5yZWdpc3Rlcl9wY2lfZHJpdmVy
KHZvaWQpCj4gPiArdm9pZCBpOTE1X3VucmVnaXN0ZXJfcGNpX2RyaXZlcih2b2lkKQo+ID4gICB7
Cj4gPiAgICAgICBwY2lfdW5yZWdpc3Rlcl9kcml2ZXIoJmk5MTVfcGNpX2RyaXZlcik7Cj4gPiAg
IH0KPiA+IC0KPiA+IC1zdGF0aWMgY29uc3Qgc3RydWN0IHsKPiA+IC0gICBpbnQgKCppbml0KSh2
b2lkKTsKPiA+IC0gICB2b2lkICgqZXhpdCkodm9pZCk7Cj4gPiAtfSBpbml0X2Z1bmNzW10gPSB7
Cj4gPiAtICAgICB7IGk5MTVfY2hlY2tfbm9tb2Rlc2V0LCBOVUxMIH0sCj4gPiAtICAgICB7IGk5
MTVfYWN0aXZlX21vZHVsZV9pbml0LCBpOTE1X2FjdGl2ZV9tb2R1bGVfZXhpdCB9LAo+ID4gLSAg
ICAgeyBpOTE1X2J1ZGR5X21vZHVsZV9pbml0LCBpOTE1X2J1ZGR5X21vZHVsZV9leGl0IH0sCj4g
PiAtICAgICB7IGk5MTVfY29udGV4dF9tb2R1bGVfaW5pdCwgaTkxNV9jb250ZXh0X21vZHVsZV9l
eGl0IH0sCj4gPiAtICAgICB7IGk5MTVfZ2VtX2NvbnRleHRfbW9kdWxlX2luaXQsIGk5MTVfZ2Vt
X2NvbnRleHRfbW9kdWxlX2V4aXQgfSwKPiA+IC0gICAgIHsgaTkxNV9vYmplY3RzX21vZHVsZV9p
bml0LCBpOTE1X29iamVjdHNfbW9kdWxlX2V4aXQgfSwKPiA+IC0gICAgIHsgaTkxNV9yZXF1ZXN0
X21vZHVsZV9pbml0LCBpOTE1X3JlcXVlc3RfbW9kdWxlX2V4aXQgfSwKPiA+IC0gICAgIHsgaTkx
NV9zY2hlZHVsZXJfbW9kdWxlX2luaXQsIGk5MTVfc2NoZWR1bGVyX21vZHVsZV9leGl0IH0sCj4g
PiAtICAgICB7IGk5MTVfdm1hX21vZHVsZV9pbml0LCBpOTE1X3ZtYV9tb2R1bGVfZXhpdCB9LAo+
ID4gLSAgICAgeyBpOTE1X21vY2tfc2VsZnRlc3RzLCBOVUxMIH0sCj4gPiAtICAgICB7IGk5MTVf
cG11X2luaXQsIGk5MTVfcG11X2V4aXQgfSwKPiA+IC0gICAgIHsgaTkxNV9yZWdpc3Rlcl9wY2lf
ZHJpdmVyLCBpOTE1X3VucmVnaXN0ZXJfcGNpX2RyaXZlciB9LAo+ID4gLSAgICAgeyBpOTE1X3Bl
cmZfc3lzY3RsX3JlZ2lzdGVyLCBpOTE1X3BlcmZfc3lzY3RsX3VucmVnaXN0ZXIgfSwKPiA+IC19
Owo+ID4gLXN0YXRpYyBpbnQgaW5pdF9wcm9ncmVzczsKPiA+IC0KPiA+IC1zdGF0aWMgaW50IF9f
aW5pdCBpOTE1X2luaXQodm9pZCkKPiA+IC17Cj4gPiAtICAgICBpbnQgZXJyLCBpOwo+ID4gLQo+
ID4gLSAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoaW5pdF9mdW5jcyk7IGkrKykgewo+
ID4gLSAgICAgICAgICAgICBlcnIgPSBpbml0X2Z1bmNzW2ldLmluaXQoKTsKPiA+IC0gICAgICAg
ICAgICAgaWYgKGVyciA8IDApIHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICB3aGlsZSAoaS0t
KSB7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAoaW5pdF9mdW5jc1tpXS5l
eGl0KQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbml0X2Z1bmNz
W2ldLmV4aXQoKTsKPiA+IC0gICAgICAgICAgICAgICAgICAgICB9Cj4gPiAtICAgICAgICAgICAg
ICAgICAgICAgcmV0dXJuIGVycjsKPiA+IC0gICAgICAgICAgICAgfSBlbHNlIGlmIChlcnIgPiAw
KSB7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgLyoKPiA+IC0gICAgICAgICAgICAgICAgICAg
ICAgKiBFYXJseS1leGl0IHN1Y2Nlc3MgaXMgcmVzZXJ2ZWQgZm9yIHRoaW5ncyB3aGljaAo+ID4g
LSAgICAgICAgICAgICAgICAgICAgICAqIGRvbid0IGhhdmUgYW4gZXhpdCgpIGZ1bmN0aW9uIGJl
Y2F1c2Ugd2UgaGF2ZSBubwo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAqIGlkZWEgaG93IGZh
ciB0aGV5IGdvdCBvciBob3cgdG8gcGFydGlhbGx5IHRlYXIKPiA+IC0gICAgICAgICAgICAgICAg
ICAgICAgKiB0aGVtIGRvd24uCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICovCj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgV0FSTl9PTihpbml0X2Z1bmNzW2ldLmV4aXQpOwo+ID4gLQo+ID4g
LSAgICAgICAgICAgICAgICAgICAgIC8qCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICogV2Ug
ZG9uJ3Qgd2FudCB0byBhZHZlcnRpc2UgZGV2aWNlcyB3aXRoIGFuIG9ubHkKPiA+IC0gICAgICAg
ICAgICAgICAgICAgICAgKiBwYXJ0aWFsbHkgaW5pdGlhbGl6ZWQgZHJpdmVyLgo+ID4gLSAgICAg
ICAgICAgICAgICAgICAgICAqLwo+ID4gLSAgICAgICAgICAgICAgICAgICAgIFdBUk5fT04oaTkx
NV9wY2lfZHJpdmVyLmRyaXZlci5vd25lcik7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgYnJl
YWs7Cj4gPiAtICAgICAgICAgICAgIH0KPiA+IC0gICAgIH0KPiA+IC0KPiA+IC0gICAgIGluaXRf
cHJvZ3Jlc3MgPSBpOwo+ID4gLQo+ID4gLSAgICAgcmV0dXJuIDA7Cj4gPiAtfQo+ID4gLQo+ID4g
LXN0YXRpYyB2b2lkIF9fZXhpdCBpOTE1X2V4aXQodm9pZCkKPiA+IC17Cj4gPiAtICAgICBpbnQg
aTsKPiA+IC0KPiA+IC0gICAgIGZvciAoaSA9IGluaXRfcHJvZ3Jlc3MgLSAxOyBpID49IDA7IGkt
LSkgewo+ID4gLSAgICAgICAgICAgICBHRU1fQlVHX09OKGkgPj0gQVJSQVlfU0laRShpbml0X2Z1
bmNzKSk7Cj4gPiAtICAgICAgICAgICAgIGlmIChpbml0X2Z1bmNzW2ldLmV4aXQpCj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgaW5pdF9mdW5jc1tpXS5leGl0KCk7Cj4gPiAtICAgICB9Cj4gPiAt
fQo+ID4gLQo+ID4gLW1vZHVsZV9pbml0KGk5MTVfaW5pdCk7Cj4gPiAtbW9kdWxlX2V4aXQoaTkx
NV9leGl0KTsKPiA+IC0KPiA+IC1NT0RVTEVfQVVUSE9SKCJUdW5nc3RlbiBHcmFwaGljcywgSW5j
LiIpOwo+ID4gLU1PRFVMRV9BVVRIT1IoIkludGVsIENvcnBvcmF0aW9uIik7Cj4gPiAtCj4gPiAt
TU9EVUxFX0RFU0NSSVBUSU9OKERSSVZFUl9ERVNDKTsKPiA+IC1NT0RVTEVfTElDRU5TRSgiR1BM
IGFuZCBhZGRpdGlvbmFsIHJpZ2h0cyIpOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGNpLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5oCj4gPiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5iMzg2ZjMxOWY1MmUK
PiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNp
LmgKPiA+IEBAIC0wLDAgKzEsOCBAQAo+ID4gKy8qCj4gPiArICogU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IE1JVAo+ID4gKyAqCj4gPiArICogQ29weXJpZ2h0IMKpIDIwMjEgSW50ZWwgQ29ycG9y
YXRpb24KPiA+ICsgKi8KPiA+ICsKPiA+ICtpbnQgaTkxNV9yZWdpc3Rlcl9wY2lfZHJpdmVyKHZv
aWQpOwo+ID4gK3ZvaWQgaTkxNV91bnJlZ2lzdGVyX3BjaV9kcml2ZXIodm9pZCk7Cj4gPgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
