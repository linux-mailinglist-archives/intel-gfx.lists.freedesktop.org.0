Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35557524FC
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 09:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1DF6E047;
	Tue, 25 Jun 2019 07:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E27226E047
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 07:40:32 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id d4so25614482edr.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 00:40:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=hKQsdFGWSwS+d/b/lKUtunuqgqCB/fjCfLAnHSo4Abs=;
 b=QokWSUjh4OLru2ZibguQw787QYYDZM4o0m3TOOLWVn9K/Pnt5Be4qLV+s6OMhvyaSn
 B/HEcIlCXXiuDQLxRbpbeutiXS6LvYqUQpwJg9uVORlX6l8iFs/GjsattGSF/0jaEqB/
 huos5/2DHS9vTeGblztahpoOciYM/4+ueK34F+3M8fv6ZYm+MLstGNiRAKKAyWXlH2H4
 0H2HVm2PhyjE4pqaUVIZZns54JOP21vR21rMc8p6lhZtJmfHFAX0UC6OuC2khSAwSj6i
 AUqwDdlv5fwXzBlVzQ6Ww6SpIODgkOMAP5n12KUouJQL1McHiDqGBMxtMgCzb5HI5dqh
 +W3g==
X-Gm-Message-State: APjAAAUnV/V8Orywct+DlKgU5vhxpFxaj7X3QGZ/Mo/XKmlu/GCRn4U2
 9wFj4JNB9+eOTZdP7xFg1RxGww==
X-Google-Smtp-Source: APXvYqyAzFtRhlprV5+9kQxh7dQJV1cBTVBtTdBjNDViwrcBDRaNA43icdlm2Jt88oopkppl+Ze6ig==
X-Received: by 2002:a17:906:43c9:: with SMTP id
 j9mr12304230ejn.248.1561448431473; 
 Tue, 25 Jun 2019 00:40:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id k10sm3432687eda.9.2019.06.25.00.40.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 00:40:29 -0700 (PDT)
Date: Tue, 25 Jun 2019 09:40:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Koenig, Christian" <Christian.Koenig@amd.com>
Message-ID: <20190625074027.GS12905@phenom.ffwll.local>
References: <20190618115455.1253-1-christian.koenig@amd.com>
 <20190621092022.GB12905@phenom.ffwll.local>
 <46bc08a3-1b84-c819-dbb5-882e95ab23e5@gmail.com>
 <CAKMK7uE6NUujY0ubOYkux-StOxMT-hYhBdAnQJkDsgEkuDjH9g@mail.gmail.com>
 <78db8951-2e62-2a9d-3d87-3b458fbba880@gmail.com>
 <20190621162753.GI12905@phenom.ffwll.local>
 <4d868c4c-cc00-bfa9-b6f5-969b76497cab@amd.com>
 <1d4f3779-8dc8-14ad-4d20-f7ccee7cea53@gmail.com>
 <20190624144105.GR12905@phenom.ffwll.local>
 <d2933e7a-5dd1-70af-cbb6-69755fcbbc5e@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d2933e7a-5dd1-70af-cbb6-69755fcbbc5e@amd.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=hKQsdFGWSwS+d/b/lKUtunuqgqCB/fjCfLAnHSo4Abs=;
 b=Fan3kCY4Lvaazl1xwNrzdL34VSqH7abNKTjQeSDXLi7Kr8fHTs7/4FXLMAV28TtTMw
 SfVH45HGG81xkp3q5M4kuOlbh2nxOBtQ7HXMxwSPsRDEQ/LpK+y6c02Twu1/fD6rGzBJ
 SvuAJROAXosygnmgFcSRljqKzIvETKGzkw7Dc=
Subject: Re: [Intel-gfx] [PATCH 1/6] dma-buf: add dynamic DMA-buf handling
 v10
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMjUsIDIwMTkgYXQgMDc6MjA6MTJBTSArMDAwMCwgS29lbmlnLCBDaHJpc3Rp
YW4gd3JvdGU6Cj4gQW0gMjQuMDYuMTkgdW0gMTY6NDEgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+
ID4gT24gTW9uLCBKdW4gMjQsIDIwMTkgYXQgMDM6NTg6MDBQTSArMDIwMCwgQ2hyaXN0aWFuIEvD
tm5pZyB3cm90ZToKPiA+PiBBbSAyNC4wNi4xOSB1bSAxMzoyMyBzY2hyaWViIEtvZW5pZywgQ2hy
aXN0aWFuOgo+ID4+PiBBbSAyMS4wNi4xOSB1bSAxODoyNyBzY2hyaWViIERhbmllbCBWZXR0ZXI6
Cj4gPj4+Cj4gPj4+PiBTbyBJIHBvbmRlcmVkIGEgZmV3IGlkZWFzIHdoaWxlIHdvcmtpbmcgb3V0
Ogo+ID4+Pj4KPiA+Pj4+IDEpIFdlIGRyb3AgdGhpcyBmaWx0ZXJpbmcuIEltcG9ydGVyIG5lZWRz
IHRvIGtlZXAgdHJhY2sgb2YgYWxsIGl0cwo+ID4+Pj4gbWFwcGluZ3MgYW5kIGZpbHRlciBvdXQg
aW52YWxpZGF0ZXMgdGhhdCBhcmVuJ3QgZm9yIHRoYXQgc3BlY2lmaWMgaW1wb3J0ZXIKPiA+Pj4+
IChlaXRoZXIgYmVjYXVzZSBhbHJlYWR5IGludmFsaWRhdGVkLCBvciBub3QgeWV0IG1hcHBlZCwg
b3Igd2hhdGV2ZXIpLgo+ID4+Pj4gRmVlbHMgZnJhZ2lsZS4KPiA+Pj4+Cj4gPj4+PiBbU05JUF0K
PiA+Pj4gW1NOSVBdCj4gPj4+Cj4gPj4+IEkgd2lsbCB0YWtlIGEgbW9tZW50IGFuZCBsb29rIGlu
dG8gIzEgYXMgd2VsbCwgYnV0IEkgc3RpbGwgZG9uJ3Qgc2VlIHRoZQo+ID4+PiBuZWVkIHRvIGNo
YW5nZSBhbnl0aGluZy4KPiA+PiBUaGF0IHR1cm5lZCBvdXQgbXVjaCBjbGVhbmVyIHRoYW4gSSB0
aG91Z2h0IGl0IHdvdWxkIGJlLiBFc3NlbnRpYWxseSBpdCBpcwo+ID4+IG9ubHkgYSBzaW5nbGUg
ZXh0cmEgbGluZSBvZiBjb2RlIGluIGFtZGdwdS4KPiA+Pgo+ID4+IEdvaW5nIHRvIHNlbmQgdGhh
dCBvdXQgYXMgYSBwYXRjaCBzZXQgaW4gYSBtaW51dGUuCj4gPiBZZWFoIEkgbWVhbiBraW5kYSBl
eHBlY3RlZCB0aGF0IGJlY2F1c2U6Cj4gPiAtIGV2ZXJ5dGhpbmcncyBwcm90ZWN0ZWQgd2l0aCB3
d19tdXRleCBhbnl3YXkKPiA+IC0gaW1wb3J0ZXIgbmVlZHMgdG8ga2VlcCB0cmFjayBvZiBtYXBw
aW5ncyBhbndheXMKPiA+IFNvIHJlYWxseSBhbGwgaXQgbmVlZHMgdG8gZG8gaXMgbm90IGJlIHN0
dXBpZCBhbmQgYWRkIHRoZSBtYXBwaW5nIGl0IGp1c3QKPiA+IGNyZWF0ZWQgdG8gaXRzIHRyYWNr
aW5nIHdoaWxlIHN0aWxsIGhvbGRpbmcgdGhlIHd3X211dGV4LiBTaW1pbGFyIG9uCj4gPiBpbnZh
bGlkYXRlL3VubWFwLgo+ID4KPiA+IFdpdGggdGhhdCBhbGwgd2UgbmVlZCBpcyBhIGh1Z2Ugbm90
ZSBpbiB0aGUgZG9jcyB0aGF0IGltcG9ydGVycyBuZWVkIHRvCj4gPiBrZWVwIHRyYWNrIG9mIHRo
ZWlyIG1hcHBpbmdzIGFuZCBkdHJ0ICh3aXRoIGFsbCB0aGUgZXhhbXBsZXMgaGVyZSBzcGVsbGVk
Cj4gPiBvdXQgaW4gdGhlIGFwcHJvcHJpYXRlIGtlcm5lbGRvYykuIEFuZCB0aGVuIEknbSBoYXBw
eSA6LSkKPiAKPiBTaG91bGQgSSBhbHNvIHJlbmFtZSB0aGUgaW52YWxpZGF0ZSBjYWxsYmFjayBp
bnRvIG1vdmVfbm90aWZ5PyBXb3VsZCAKPiBraW5kIG9mIG1ha2Ugc2Vuc2Ugc2luY2Ugd2UgYXJl
IG5vdCBuZWNlc3NhcnkgZGlyZWN0bHkgaW52YWxpZGF0aW5nIAo+IG1hcHBpbmdzLgoKSG0gbWF5
YmUuIEknbGwgcmV2aWV3IHRoZSBlbnRpcmUgcGlsZSBhbmQgcHJvYmFibHkgcmVwbHkgd2l0aCBh
IGRvY3MgcGF0Y2gKYW55d2F5LiBJdCB3b3VsZCBoZWxwIGluIG1ha2luZyBpdCBjbGVhciB5b3Ug
Z2V0IHRoZSBjYWxsYmFjayBldmVuIHdoZW4KdGhlcmUncyBubyBtYXBwaW5nIHRvIGludmFsaWRh
dGUgZm9yIHlvdSAuLi4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVl
ciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
