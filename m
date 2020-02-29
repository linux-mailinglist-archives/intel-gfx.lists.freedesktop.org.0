Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8D817498D
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 22:54:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E85E6E3E5;
	Sat, 29 Feb 2020 21:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 503A96E3D6
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 21:54:26 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id g19so8114221eds.11
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 13:54:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AMNxI2RKOwUcPazieul3Yy+ClQQ96T1AC7oQYhKq8LU=;
 b=ad9wtX6s4Rst8oGEGje9rkIp2jhQeFlUFKgdq2WuNz39LUJHV+sffJPpITR0VuqW7d
 T2OjLFRCiS9BshJzSSpYWywM1hW9zTUuI5BPJSJN3dl2TfZ677ZDusdpQhfTR2X5p66H
 6w3gpG4CGJr+gxVN5o0tdI+tsELJ4yKxjTDeMj6CxAx1sH7RFm4q2rmwqPO8xwxUdLjI
 IiUPVkmkfW/Kx26gczi/1Bbqm4w6aqzeJZtfvJk9VWdzr4XrW7Nj8ye8BeoueqT5+KeM
 a4Kz7ouANKNIqJQHPjZbqVfTmEr0GW231jT+D9aQAmb7kGIxeSNfwKCrTlFhHrT2pYh5
 MfrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AMNxI2RKOwUcPazieul3Yy+ClQQ96T1AC7oQYhKq8LU=;
 b=plvy/opGIvSQtV9I4ym2k2NGv54BTCqw+IMvGwNpszKNMaIQzxrxlFHFoa9rBSEs48
 FXb31JLWW5rPCMNzSxqjwVEozH4BvZCLMLoZJWw6J8A8orttz5DJcsN4wso41/5oWcp1
 aJF7JCzQUIcurtGyFGMS4b7T6VkeVHFBk/a7mnGPp2CbrtJvkMRu3+2TM7E0Eb6lbfvI
 1rP65Z+U+T6/Yi64V2FHotnpMisyuLXhsI3LBrXWCz6M3vdlteRQ01AurduS0u7gkVFX
 /W+gAUJ+hlBvY+nAjCb6ONunMeeadzNa1CFrliQ9OvQuQLB4uR/J7jk5W4SrR0yFfRXa
 2zcw==
X-Gm-Message-State: APjAAAVzPPocZ7S8BGWpXNAea6BiJyKR7SqshwbJ6sNwEZ/Ec7QOWEWF
 Q/7lKqXgUgniayYA4EwX2dS8vel9Z4sxlkNz7SJhwg==
X-Google-Smtp-Source: APXvYqwopTVexk7jLz+WFfE8EvkPjw8nA8+eVm2GLLuN9YHJ6uBTPTX058jhQBVEsmj7fIlIxY+jW/0v62K6lAEinZk=
X-Received: by 2002:a17:906:489:: with SMTP id f9mr9151025eja.27.1583013264636; 
 Sat, 29 Feb 2020 13:54:24 -0800 (PST)
MIME-Version: 1.0
References: <CAKMK7uHHK2SsCfpmZwEUyTJJHsoccKoadoko3cEBOoYDFkmeAw@mail.gmail.com>
 <CAPM=9txcGPvFdSzMtYZXyqLKnWyacSMuHdoXdV63M53fLFVFpw@mail.gmail.com>
 <b398161ff7d0268454413058dc6c194cf93f5990.camel@collabora.com>
 <ece8ebe3-40ec-2457-02da-4fef19cbe8f6@intel.com>
 <6d2ec570f957b4504fb70e0b1f0632712a99dc0c.camel@collabora.com>
 <CAPj87rO7BuKQj2Kei3T7RdkFq5=TiuShBvtrPU2sn0iqMfXSTg@mail.gmail.com>
 <59f4ea1f13a9a9d37f7801b93061b4ae7dd595e2.camel@gmail.com>
 <d0ef47e45c83b342494e6781b808b4831a008836.camel@ndufresne.ca>
 <d9dca12759fd6a549dc4cd71b5f210a4dced01cd.camel@gmail.com>
In-Reply-To: <d9dca12759fd6a549dc4cd71b5f210a4dced01cd.camel@gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Sat, 29 Feb 2020 15:54:13 -0600
Message-ID: <CAOFGe96WqRTagf=Lhp6j9aMnB6hxwog7t93t=4r6QE_4f+HpeQ@mail.gmail.com>
To: =?UTF-8?Q?Timur_Krist=C3=B3f?= <timur.kristof@gmail.com>
Subject: Re: [Intel-gfx] [Mesa-dev] gitlab.fd.o financial situation and
 impact on services
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
Cc: Erik Faye-Lund <erik.faye-lund@collabora.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "X.Org development" <xorg-devel@lists.x.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 wayland <wayland-devel@lists.freedesktop.org>,
 "X.Org Foundation Board" <board@foundation.x.org>,
 Xorg Members List <members@x.org>,
 Discussion of the development of and with GStreamer
 <gstreamer-devel@lists.freedesktop.org>,
 Mesa Dev <mesa-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBGZWIgMjksIDIwMjAgYXQgMzo0NyBQTSBUaW11ciBLcmlzdMOzZiA8dGltdXIua3Jp
c3RvZkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gU2F0LCAyMDIwLTAyLTI5IGF0IDE0OjQ2IC0w
NTAwLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+ID4gPgo+ID4gPiAxLiBJIHRoaW5rIHdlIHNo
b3VsZCBjb21wbGV0ZWx5IGRpc2FibGUgcnVubmluZyB0aGUgQ0kgb24gTVJzIHdoaWNoCj4gPiA+
IGFyZQo+ID4gPiBtYXJrZWQgV0lQLiBTcGVha2luZyBmcm9tIHBlcnNvbmFsIGV4cGVyaWVuY2Us
IEkgdXN1YWxseSBtYWtlIGEgbG90Cj4gPiA+IG9mCj4gPiA+IGNoYW5nZXMgdG8gbXkgTVJzIGJl
Zm9yZSB0aGV5IGFyZSBtZXJnZWQsIHNvIGl0IGlzIGEgd2FzdGUgb2YgQ0kKPiA+ID4gcmVzb3Vy
Y2VzLgo+ID4KPiA+IEluIHRoZSBtZWFuIHRpbWUsIHlvdSBjYW4gaGVscCBieSB0YWtpbmcgdGhl
IGhhYml0IHRvIHVzZToKPiA+Cj4gPiAgIGdpdCBwdXNoIC1vIGNpLnNraXAKPgo+IFRoYW5rcyBm
b3IgdGhlIGFkdmljZSwgSSB3YXNuJ3QgYXdhcmUgc3VjaCBhbiBvcHRpb24gZXhpc3RzLiBEb2Vz
IHRoaXMKPiBhbHNvIHdvcmsgb24gdGhlIG1lc2EgZ2l0bGFiIG9yIGlzIHRoaXMgYSBHU3RyZWFt
ZXIgb25seSB0aGluZz8KCk1lc2EgaXMgYWxyZWFkeSBzZXQgdXAgc28gdGhhdCBpdCBvbmx5IHJ1
bnMgb24gTVJzIGFuZCBicmFuY2hlcyBuYW1lZApjaS0qIChvciBtYXliZSBpdCdzIGNpLyo7IEkg
Y2FuJ3QgcmVtZW1iZXIpLgoKPiBIb3cgaGFyZCB3b3VsZCBpdCBiZSB0byBtYWtlIHRoaXMgdGhl
IGRlZmF1bHQ/CgpJIHN0cm9uZ2x5IHN1Z2dlc3QgbG9va2luZyBhdCBob3cgTWVzYSBkb2VzIGl0
IGFuZCBkb2luZyB0aGF0IGluCkdTdHJlYW1lciBpZiB5b3UgY2FuLiAgSXQgc2VlbXMgdG8gd29y
ayBwcmV0dHkgd2VsbCBpbiBNZXNhLgoKLS1KYXNvbgoKCj4gPiBUaGF0J3MgYSBtdWNoIG1vcmUg
ZGlmZmljdWx0IGdvYWwgdGhlbiBpdCBsb29rcyBsaWtlLiBMZXQgZWFjaAo+ID4gcHJvamVjdHMK
PiA+IG1hbmFnZSB0aGVpciBDSSBncmFwaCBhbmQgY29udGVudCwgYXMgZWFjaCBjYXNlIGlzIHVu
aXF1ZS4gUnVubmluZwo+ID4gbW9yZQo+ID4gdGVzdHMsIG9yIGJ1aWxkaW5nIG1vcmUgY29kZSBp
c24ndCB0aGUgbWFpbiBpc3N1ZSBhcyB0aGUgQ1BVIHRpbWUgaXMKPiA+IG1vc3RseSBzcG9uc29y
ZWQuIFRoZSBkYXRhIHRyYW5zZmVycyBiZXR3ZWVuIHRoZSBjbG91ZCBvZiBnaXRsYWIgYW5kCj4g
PiB0aGUgcnVubmVycyAod2hpY2ggYXJlIGV4dGVybmFsKSwgYWxvbmcgdG8gc2VuZGluZyBPUyBp
bWFnZSB0byBMYXZhCj4gPiBsYWJzIGlzIHdoYXQgaXMgbGlrZWx5IHRoZSBtb3N0IGV4cGVuc2l2
ZS4KPiA+Cj4gPiBBcyBpdCB3YXMgYWxyZWFkeSBtZW50aW9uIGluIHRoZSB0aHJlYWQsIHdoYXQg
d2UgYXJlIG1pc3Npbmcgbm93LCBhbmQKPiA+IGJlaW5nIHdvcmtlZCBvbiwgaXMgcGVyIGdyb3Vw
L3Byb2plY3Qgc3RhdGlzdGljcyB0aGF0IGdpdmUgdXMgdGhlCj4gPiBob3RzcG90IHNvIHdlIGNh
biBiZXR0ZXIgdGFyZ2V0IHRoZSBvcHRpbWl6YXRpb24gd29yay4KPgo+IFllcywgd291bGQgYmUg
bmljZSB0byBrbm93IHdoYXQgdGhlIGhvdHNwb3QgaXMsIGluZGVlZC4KPgo+IEFzIGZhciBhcyBJ
IHVuZGVyc3RhbmQsIHRoZSBwcm9ibGVtIGlzIG5vdCBDSSBpdHNlbGYsIGJ1dCB0aGUgYmFuZHdp
ZHRoCj4gbmVlZGVkIGJ5IHRoZSBidWlsZCBhcnRpZmFjdHMsIHJpZ2h0PyBXb3VsZCBpdCBiZSBw
b3NzaWJsZSB0byBub3QgaG9zdAo+IHRoZSBidWlsZCBhcnRpZmFjdHMgb24gdGhlIGdpdGxhYiwg
YnV0IHJhdGhlciBvbmx5IHRoZSBwbGFjZSB3aGVyZSB0aGUKPiBidWlsZCBhY3R1YWxseSBoYXBw
ZW5lZD8gT3IgYXQgbGVhc3QsIG9ubHkgdHJhbnNmZXIgdGhlIGJ1aWxkIGFydGlmYWN0cwo+IG9u
LWRlbWFuZD8KPgo+IEknbSBub3QgZXhhY3RseSBmYW1pbGlhciB3aXRoIGhvdyB0aGUgc3lzdGVt
IHdvcmtzLCBzbyBzb3JyeSBpZiB0aGlzIGlzCj4gYSBzaWxseSBxdWVzdGlvbi4KPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbWVzYS1kZXYgbWFp
bGluZyBsaXN0Cj4gbWVzYS1kZXZAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9tZXNhLWRldgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
