Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 773AA337940
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0DF66EE5D;
	Thu, 11 Mar 2021 16:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3670D6EE5D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:24:51 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id z1so3658112edb.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 08:24:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BEIOimlvX5sF0clM1E/Qw8MPH7QeoZYywHpdo9zFai8=;
 b=Vplxhgogc2TEvl7jaKoBwrOLXDmSteyqKs5WNtO75b5LZvjfaMJJ2EJCgi3KBXuazg
 cFZWIWagbIM78RojNx3+lda28iwxDOdd0pyFy/YXHvF3W/Bm4BZNNY9m2jOADa4Fn8kW
 QaTnqffvY+JJbf+oSGWwtOC/ZshAnrnkL8Grwg/QVrKHDPNmw8MVhB/JR+5Bel6ifVfS
 EAg1j411wmYqehAO7lRAwFSVnJ9O2aR3OQsUYDedOODwsY5i+sjLxvPVwrLvtcUvOhZI
 D5ioRR9y3ckjc6FHygQKQCiy4phx+M4GTDasstXn7NpJCJ03ztadu031RmCI9cimY7vx
 +bzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BEIOimlvX5sF0clM1E/Qw8MPH7QeoZYywHpdo9zFai8=;
 b=UqqNFYBUdnPH09e8KWPALDCDqAIseuAw1JEsvIPKuFh8mOVcryMQDcq6CtEYVeUQu5
 NL9PvKrx8WdiEC+Hw7t9NWTPiiaxNlCb5ZIMCzMmtxik0Wol3iu8uR1nn72LJnTM8Wdz
 eQrK5nWYErZCxw6nT1LchioN0V9gS0PxsYq0/4/e/SWylWh3RHTkhA05dcbZO/QF4edn
 5WlIjxGsrP/xuyNAGBFDWaI94KzBm6qugWsQ8rBmA/ZOIjz9kkALZDivdZ450D9xZC2I
 tDw5ohAYufa9AYQk6XZuW49FjQ8HSoWa7ZdBJs1SwLJdhJb9LcbLstp1UyYYxlP2ckLZ
 fETw==
X-Gm-Message-State: AOAM530nbEoRPSTZFfU/AxMl8rY63uBwBxpRyPo8Y+y4Schrs9FMLiD/
 HVTfnJB6wXe6hQca83tg7weQS+UWRJgR4qtju6rhGQ==
X-Google-Smtp-Source: ABdhPJzH+UCVpM1atzf3MTwx8MAIxVoWVNdnS+R9FDPGB75Fop4y+/9ozAqVRBC4oF95irec1GatEEUYwoNSH3kejqA=
X-Received: by 2002:a05:6402:17d6:: with SMTP id
 s22mr9249988edy.232.1615479889762; 
 Thu, 11 Mar 2021 08:24:49 -0800 (PST)
MIME-Version: 1.0
References: <20210310212606.766121-1-jason@jlekstrand.net>
 <20210310215007.782649-1-jason@jlekstrand.net>
 <20210311114432.GB101473@zkempczy-mobl2>
 <CAOFGe94FEfM6RKf=fcDm03OW1zvJhRpvTtnQ4dXWY+pQrf-K=Q@mail.gmail.com>
 <CAKMK7uHwYczVHD7SmHAJd9niP4+aanDvEhPviofjmQiEweK3CQ@mail.gmail.com>
In-Reply-To: <CAKMK7uHwYczVHD7SmHAJd9niP4+aanDvEhPviofjmQiEweK3CQ@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 11 Mar 2021 10:24:38 -0600
Message-ID: <CAOFGe96bL1Wu2Qgie7QOhMDoY-3hFhDxhokCekyEHnAC8CgjnQ@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH] i915: Drop relocation support on all new
 hardware (v3)
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
Cc: Dave Airlie <airlied@redhat.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXIgMTEsIDIwMjEgYXQgOTo1NyBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+IHdyb3RlOgo+Cj4gT24gVGh1LCBNYXIgMTEsIDIwMjEgYXQgNDo1MCBQTSBKYXNvbiBF
a3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgTWFy
IDExLCAyMDIxIGF0IDU6NDQgQU0gWmJpZ25pZXcgS2VtcGN6ecWEc2tpCj4gPiA8emJpZ25pZXcu
a2VtcGN6eW5za2lAaW50ZWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gV2VkLCBNYXIgMTAs
IDIwMjEgYXQgMDM6NTA6MDdQTSAtMDYwMCwgSmFzb24gRWtzdHJhbmQgd3JvdGU6Cj4gPiA+ID4g
VGhlIFZ1bGthbiBkcml2ZXIgaW4gTWVzYSBmb3IgSW50ZWwgaGFyZHdhcmUgbmV2ZXIgdXNlcyBy
ZWxvY2F0aW9ucyBpZgo+ID4gPiA+IGl0J3MgcnVubmluZyBvbiBhIHZlcnNpb24gb2YgaTkxNSB0
aGF0IHN1cHBvcnRzIGF0IGxlYXN0IHNvZnRwaW4gd2hpY2gKPiA+ID4gPiBhbGwgdmVyc2lvbnMg
b2YgaTkxNSBzdXBwb3J0aW5nIEdlbjEyIGRvLiAgT24gdGhlIE9wZW5HTCBzaWRlLCBHZW4xMisg
aXMKPiA+ID4gPiBvbmx5IHN1cHBvcnRlZCBieSBpcmlzIHdoaWNoIG5ldmVyIHVzZXMgcmVsb2Nh
dGlvbnMuICBUaGUgb2xkZXIgaTk2NQo+ID4gPiA+IGRyaXZlciBpbiBNZXNhIGRvZXMgdXNlIHJl
bG9jYXRpb25zIGJ1dCBpdCBvbmx5IHN1cHBvcnRzIEludGVsIGhhcmR3YXJlCj4gPiA+ID4gdGhy
b3VnaCBHZW4xMSBhbmQgaGFzIGJlZW4gZGVwcmVjYXRlZCBmb3IgYWxsIGhhcmR3YXJlIEdlbjkr
LiAgVGhlCj4gPiA+ID4gY29tcHV0ZSBkcml2ZXIgYWxzbyBuZXZlciB1c2VzIHJlbG9jYXRpb25z
LiAgVGhpcyBvbmx5IGxlYXZlcyB0aGUgbWVkaWEKPiA+ID4gPiBkcml2ZXIgd2hpY2ggaXMgc3Vw
cG9zZWQgdG8gYmUgc3dpdGNoaW5nIHRvIHNvZnRwaW4gZ29pbmcgZm9yd2FyZC4KPiA+ID4gPiBN
YWtpbmcgc29mdHBpbiBhIHJlcXVpcmVtZW50IGZvciBhbGwgZnV0dXJlIGhhcmR3YXJlIHNlZW1z
IHJlYXNvbmFibGUuCj4gPiA+ID4KPiA+ID4gPiBSZWplY3RpbmcgcmVsb2NhdGlvbnMgc3RhcnRp
bmcgd2l0aCBHZW4xMiBoYXMgdGhlIGJlbmVmaXQgdGhhdCB3ZSBkb24ndAo+ID4gPiA+IGhhdmUg
dG8gYm90aGVyIHN1cHBvcnRpbmcgaXQgb24gcGxhdGZvcm1zIHdpdGggbG9jYWwgbWVtb3J5LiAg
R2l2ZW4gaG93Cj4gPiA+ID4gbXVjaCBDUFUgdG91Y2hpbmcgb2YgbWVtb3J5IGlzIHJlcXVpcmVk
IGZvciByZWxvY2F0aW9ucywgbm90IGhhdmluZyB0bwo+ID4gPiA+IGRvIHNvIG9uIHBsYXRmb3Jt
cyB3aGVyZSBub3QgYWxsIG1lbW9yeSBpcyBkaXJlY3RseSBDUFUtYWNjZXNzaWJsZQo+ID4gPiA+
IGNhcnJpZXMgc2lnbmlmaWNhbnQgYWR2YW50YWdlcy4KPiA+ID4gPgo+ID4gPiA+IHYyIChKYXNv
biBFa3N0cmFuZCk6Cj4gPiA+ID4gIC0gQWxsb3cgVEdMLUxQIHBsYXRmb3JtcyBhcyB0aGV5J3Zl
IGFscmVhZHkgc2hpcHBlZAo+ID4gPiA+Cj4gPiA+ID4gdjMgKEphc29uIEVrc3RyYW5kKToKPiA+
ID4gPiAgLSBXQVJOX09OIHBsYXRmb3JtcyB3aXRoIExNRU0gc3VwcG9ydCBpbiBjYXNlIHRoZSBj
aGVjayBpcyB3cm9uZwo+ID4gPgo+ID4gPiBJIHdhcyBhc2tlZCB0byByZXZpZXcgb2YgdGhpcyBw
YXRjaC4gSXQgd29ya3MgYWxvbmcgd2l0aCBleHBlY3RlZAo+ID4gPiBJR1QgY2hlY2sgaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzQyMzM2MS8/c2VyaWVzPTgyOTU0JnJl
dj0yNQo+ID4gPgo+ID4gPiBCZWZvcmUgSSdsbCBnaXZlIHlvdSByLWIgLSBpc24ndCBpOTE1X2dl
bV9leGVjYnVmZmVyMl9pb2N0bCgpIGJldHRlciBwbGFjZQo+ID4gPiB0byBkbyBmb3IgbG9vcCBq
dXN0IGFmdGVyIGNvcHlfZnJvbV91c2VyKCkgYW5kIGNoZWNrIHJlbG9jYXRpb25fY291bnQ/Cj4g
PiA+IFdlIGhhdmUgYW4gYWNjZXNzIHRvIGV4ZWMyX2xpc3QgdGhlcmUsIHdlIGtub3cgdGhlIGdl
biBzbyB3ZSdyZSBhYmxlIHRvIHNheQo+ID4gPiByZWxvY2F0aW9ucyBhcmUgbm90IHN1cHBvcnRl
ZCBpbW1lZGlhdGUsIHdpdGhvdXQgZW50ZXJpbmcgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcigpLgo+
ID4KPiA+IEkgY29uc2lkZXJlZCB0aGF0IGJ1dCBpdCBhZGRzIGFuIGV4dHJhIG9iamVjdCBsaXN0
IHdhbGsgZm9yIGEgY2FzZQo+ID4gd2hpY2ggd2UgZXhwZWN0IHRvIG5vdCBoYXBwZW4uICBJJ20g
bm90IHN1cmUgaG93IGV4cGVuc2l2ZSB0aGUgbGlzdAo+ID4gd2FsayB3b3VsZCBiZSBpZiBhbGwg
d2UgZG8gaXMgY2hlY2sgdGhlIG51bWJlciBvZiByZWxvY2F0aW9ucyBvbiBlYWNoCj4gPiBvYmpl
Y3QuICBJIGd1ZXNzLCBpZiBpdCBjb21lcyByaWdodCBhZnRlciBhIGNvcHlfZnJvbV91c2VyLCBp
dCdzIGFsbAo+ID4gaG90IGluIHRoZSBjYWNoZSBzbyBpdCBzaG91bGRuJ3QgbWF0dGVyLiAgT2su
ICBJJ3ZlIGNvbnZpbmNlZCBteXNlbGYuCj4gPiBJJ2xsIG1vdmUgaXQuCj4KPiBJIHJlYWxseSB3
b3VsZG4ndCBtb3ZlIGl0IGlmIGl0J3MgYW5vdGhlciBsaXN0IHdhbGsuIEV4ZWNidWYgaGFzIGEg
bG90Cj4gb2YgZmFzdC1wYXRocyBnb2luZyBvbiwgYW5kIHdlIGhhdmUgZXh0ZW5zaXZlIHRlc3Rz
IHRvIG1ha2Ugc3VyZSBpdAo+IHVud2luZHMgY29ycmVjdGx5IGluIGFsbCBjYXNlcy4gSXQncyBu
b3QgdmVyeSBpbnR1aXRpdmUsIGJ1dCBleGVjYnVmCj4gY29kZSBpc24ndCBzY29yaW5nIHZlcnkg
aGlnaCBvbiB0aGF0LgoKQW5kIGhlcmUgSSdkIGp1c3QgZmluaXNoZWQgZG9pbmcgdGhlIHR5cGlu
ZyB0byBtb3ZlIGl0LiAgR29vZCB0aGluZyBJCmhhZG4ndCBjbG9zZWQgdmltIHlldCBhbmQgaXQg
d2FzIHN0aWxsIGluIG15IHVuZG8gYnVmZmVyLiA6LSkKCi0tSmFzb24KCj4gLURhbmllbAo+Cj4g
Pgo+ID4gLS1KYXNvbgo+ID4KPiA+ID4gLS0KPiA+ID4gWmJpZ25pZXcKPiA+ID4KPiA+ID4gPgo+
ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5l
dD4KPiA+ID4gPiBDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KPiA+ID4gPiBD
YzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiA+ID4gLS0tCj4g
PiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgfCAx
NSArKysrKysrKysrKystLS0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCj4gPiA+ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiA+ID4gPiBpbmRleCA5OTc3MmYzN2JmZjYw
Li5iMDJkYmQxNmJmYTAzIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4gPiA+ID4gQEAgLTE3NjQsNyArMTc2NCw4
IEBAIGViX3JlbG9jYXRlX3ZtYV9zbG93KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLCBzdHJ1
Y3QgZWJfdm1hICpldikKPiA+ID4gPiAgICAgICByZXR1cm4gZXJyOwo+ID4gPiA+ICB9Cj4gPiA+
ID4KPiA+ID4gPiAtc3RhdGljIGludCBjaGVja19yZWxvY2F0aW9ucyhjb25zdCBzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqZW50cnkpCj4gPiA+ID4gK3N0YXRpYyBpbnQgY2hlY2tf
cmVsb2NhdGlvbnMoY29uc3Qgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4gPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29i
amVjdDIgKmVudHJ5KQo+ID4gPiA+ICB7Cj4gPiA+ID4gICAgICAgY29uc3QgY2hhciBfX3VzZXIg
KmFkZHIsICplbmQ7Cj4gPiA+ID4gICAgICAgdW5zaWduZWQgbG9uZyBzaXplOwo+ID4gPiA+IEBA
IC0xNzc0LDYgKzE3NzUsMTQgQEAgc3RhdGljIGludCBjaGVja19yZWxvY2F0aW9ucyhjb25zdCBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqZW50cnkpCj4gPiA+ID4gICAgICAgaWYg
KHNpemUgPT0gMCkKPiA+ID4gPiAgICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gPiA+Cj4gPiA+
ID4gKyAgICAgLyogUmVsb2NhdGlvbnMgYXJlIGRpc2FsbG93ZWQgZm9yIGFsbCBwbGF0Zm9ybXMg
YWZ0ZXIgVEdMLUxQICovCj4gPiA+ID4gKyAgICAgaWYgKElOVEVMX0dFTihlYi0+aTkxNSkgPj0g
MTIgJiYgIUlTX1RJR0VSTEFLRShlYi0+aTkxNSkpCj4gPiA+ID4gKyAgICAgICAgICAgICByZXR1
cm4gLUVJTlZBTDsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgLyogQWxsIGRpc2NyZXRlIG1lbW9y
eSBwbGF0Zm9ybXMgYXJlIEdlbjEyIG9yIGFib3ZlICovCj4gPiA+ID4gKyAgICAgaWYgKFdBUk5f
T04oSEFTX0xNRU0oZWItPmk5MTUpKSkKPiA+ID4gPiArICAgICAgICAgICAgIHJldHVybiAtRUlO
VkFMOwo+ID4gPiA+ICsKPiA+ID4gPiAgICAgICBpZiAoc2l6ZSA+IE5fUkVMT0MoVUxPTkdfTUFY
KSkKPiA+ID4gPiAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4gPiA+Cj4gPiA+ID4g
QEAgLTE4MDcsNyArMTgxNiw3IEBAIHN0YXRpYyBpbnQgZWJfY29weV9yZWxvY2F0aW9ucyhjb25z
dCBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKPiA+ID4gPiAgICAgICAgICAgICAgIGlmIChu
cmVsb2MgPT0gMCkKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gPiA+
ID4KPiA+ID4gPiAtICAgICAgICAgICAgIGVyciA9IGNoZWNrX3JlbG9jYXRpb25zKCZlYi0+ZXhl
Y1tpXSk7Cj4gPiA+ID4gKyAgICAgICAgICAgICBlcnIgPSBjaGVja19yZWxvY2F0aW9ucyhlYiwg
JmViLT5leGVjW2ldKTsKPiA+ID4gPiAgICAgICAgICAgICAgIGlmIChlcnIpCj4gPiA+ID4gICAg
ICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ID4gPiA+Cj4gPiA+ID4gQEAgLTE4ODAsNyAr
MTg4OSw3IEBAIHN0YXRpYyBpbnQgZWJfcHJlZmF1bHRfcmVsb2NhdGlvbnMoY29uc3Qgc3RydWN0
IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4gPiA+ID4gICAgICAgZm9yIChpID0gMDsgaSA8IGNvdW50
OyBpKyspIHsKPiA+ID4gPiAgICAgICAgICAgICAgIGludCBlcnI7Cj4gPiA+ID4KPiA+ID4gPiAt
ICAgICAgICAgICAgIGVyciA9IGNoZWNrX3JlbG9jYXRpb25zKCZlYi0+ZXhlY1tpXSk7Cj4gPiA+
ID4gKyAgICAgICAgICAgICBlcnIgPSBjaGVja19yZWxvY2F0aW9ucyhlYiwgJmViLT5leGVjW2ld
KTsKPiA+ID4gPiAgICAgICAgICAgICAgIGlmIChlcnIpCj4gPiA+ID4gICAgICAgICAgICAgICAg
ICAgICAgIHJldHVybiBlcnI7Cj4gPiA+ID4gICAgICAgfQo+ID4gPiA+IC0tCj4gPiA+ID4gMi4y
OS4yCj4gPiA+ID4KPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gPiA+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+ID4gPiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKPiA+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4g
PiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo+Cj4KPgo+IC0tCj4gRGFuaWVs
IFZldHRlcgo+IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+IGh0dHA6Ly9i
bG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
