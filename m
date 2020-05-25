Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3661E11C0
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 17:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6709689B51;
	Mon, 25 May 2020 15:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D11F089C48
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 15:31:10 +0000 (UTC)
Received: by mail-ot1-x341.google.com with SMTP id g25so14022089otp.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 08:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bAUJzoc7IqUjSn+yo0peq2R8rxLuXszL8v1+SHoHNg4=;
 b=Tr5Is/tFfhBcNvoJFDbRu5Ln8A76+CnG+YDW2gJrWDvyNGkCXJ7tLlLksMoNneiC/G
 JQcpPGhoKYZL1sU8qtPMsxurg5u2WpN3lkX8GcIcMGy67IE5X9Z/KXbl7mWg/wzgEVa5
 0YNI55NOQ1RqN/Ren3NRDgb8W+ScMuN+eyqoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bAUJzoc7IqUjSn+yo0peq2R8rxLuXszL8v1+SHoHNg4=;
 b=X4eQWurm0tw1d/kGzfmxxqi68/WoqvbxkhzPAO6m/VSXGSGXqIAgCq1Df4ZHSOYasD
 h/V8zuUxbEPfw7z+Q+Jpim19iqxb+F0kkUIXRmOGq5kGg3F1xPdCUh4BqGRj2AdFc907
 TyemXLVjyCA6HxoQtXCqcNaiLrPUX5LocxUSVKJYpk7aGSA7hqgEMuosxEAwYqeD61cr
 Segnau0T/4EOzKztsqomd2uW/wspTB35+BLi1K1yJDJos2JJmWq3A2wY2fF0SB36HLbA
 iQkvDBPB0Cgm2NOAGuDULCvP8cnd7j7FCpjTW3EvfYMBLtzyGZI4pCvZsjzhr37gAV2Y
 LyPw==
X-Gm-Message-State: AOAM533jGhnsXSsYZb8OWhaVPLqB7xn+lV1kCW3VR1KF5EUMHdQ2CF/a
 MrYWk77GMdhjLmJhxzdEDrpKhXIEMFgGXFB7KNiulg==
X-Google-Smtp-Source: ABdhPJzkcrR3yAMwEAELXE9cys4iQedV/n7q7FwrzlUwqN0x19DN2aghlSLeBpaRXuxxoHbrXZYQHIFlGr+0T8f9mVM=
X-Received: by 2002:a9d:768a:: with SMTP id j10mr5068453otl.188.1590420670094; 
 Mon, 25 May 2020 08:31:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
 <20200512085944.222637-9-daniel.vetter@ffwll.ch>
In-Reply-To: <20200512085944.222637-9-daniel.vetter@ffwll.ch>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 25 May 2020 17:30:59 +0200
Message-ID: <CAKMK7uHXjFcVZuV-gF-mGYZVG8CbosoxWKN5MKV+rBXwEr3JZw@mail.gmail.com>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Lucas Stach <l.stach@pengutronix.de>, 
 Christian Gmeiner <christian.gmeiner@gmail.com>, Qiang Yu <yuq825@gmail.com>, 
 Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, 
 Steven Price <Steven.Price@arm.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 "Anholt, Eric" <eric@anholt.net>
Subject: Re: [Intel-gfx] [RFC 08/17] drm/scheduler: use dma-fence
 annotations in main thread
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgMTE6MDAgQU0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4gd3JvdGU6Cj4KPiBJZiB0aGUgc2NoZWR1bGVyIHJ0IHRocmVhZCBnZXRz
IHN0dWNrIG9uIGEgbXV0ZXggdGhhdCB3ZSdyZSBob2xkaW5nCj4gd2hpbGUgd2FpdGluZyBmb3Ig
Z3B1IHdvcmtsb2FkcyB0byBjb21wbGV0ZSwgd2UgaGF2ZSBhIHByb2JsZW0uCj4KPiBBZGQgZG1h
LWZlbmNlIGFubm90YXRpb25zIHNvIHRoYXQgbG9ja2RlcCBjYW4gY2hlY2sgdGhpcyBmb3IgdXMu
Cj4KPiBJJ3ZlIHRyaWVkIHRvIHF1aXRlIGNhcmVmdWxseSByZXZpZXcgdGhpcywgYW5kIEkgdGhp
bmsgaXQncyBhdCB0aGUKPiByaWdodCBzcG90LiBCdXQgb2J2aW9zbHkgbm8gZXhwZXJ0IG9uIGRy
bSBzY2hlZHVsZXIuCj4KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IENjOiBsaW51eC1yZG1hQHZnZXIua2VybmVs
Lm9yZwo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgo+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRl
bC5jb20+CgpBZGRpbmcgYSBidW5jaCBtb3JlIHBlb3BsZSBmcm9tIGRyaXZlcnMgdXNpbmcgdGhl
IGRybS9zY2hlZHVsZXIgKHNvCnRoYXQncyBtYWludGFpbmVycyBmb3IgZXRuYXZpdiwgbGltYSwg
cGFuZnJvc3QsIGFuZCB2M2Qgb24gdG9wIG9mCmFtZGdwdSBmb2xrcyBhcmxyZWFkeSBvbiBjYyku
IEFueSB0YWtlcyBvciB0ZXN0aW5nIG9uIHRoaXMgYW5kIHdlbGwKdGhlIGVudGlyZSBzZXJpZXMg
dmVyeSBtdWNoIGFwcHJlY2lhdGVkLCB0aGVyZSdzIGFsc28gYW5vdGhlciBwYXRjaCB0bwphbm90
YXRlIHRoZSB0ZHIgd29yayBpbiB0aGlzIHNlcmllcy4gUGx1cyBvZmMgdGhlIHByZXAgd29yay4K
ClRoYW5rcywgRGFuaWVsCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVk
X21haW4uYyB8IDYgKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCj4gaW5kZXggMmYzMTkxMDJhZTlm
Li4wNmE3MzZlNTA2YWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9z
Y2hlZF9tYWluLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4u
Ywo+IEBAIC03NjMsOSArNzYzLDEyIEBAIHN0YXRpYyBpbnQgZHJtX3NjaGVkX21haW4odm9pZCAq
cGFyYW0pCj4gICAgICAgICBzdHJ1Y3Qgc2NoZWRfcGFyYW0gc3BhcmFtID0gey5zY2hlZF9wcmlv
cml0eSA9IDF9Owo+ICAgICAgICAgc3RydWN0IGRybV9ncHVfc2NoZWR1bGVyICpzY2hlZCA9IChz
dHJ1Y3QgZHJtX2dwdV9zY2hlZHVsZXIgKilwYXJhbTsKPiAgICAgICAgIGludCByOwo+ICsgICAg
ICAgYm9vbCBmZW5jZV9jb29raWU7Cj4KPiAgICAgICAgIHNjaGVkX3NldHNjaGVkdWxlcihjdXJy
ZW50LCBTQ0hFRF9GSUZPLCAmc3BhcmFtKTsKPgo+ICsgICAgICAgZmVuY2VfY29va2llID0gZG1h
X2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsKPiArCj4gICAgICAgICB3aGlsZSAoIWt0aHJlYWRf
c2hvdWxkX3N0b3AoKSkgewo+ICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0
eSAqZW50aXR5ID0gTlVMTDsKPiAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9zY2hlZF9mZW5j
ZSAqc19mZW5jZTsKPiBAQCAtODIzLDYgKzgyNiw5IEBAIHN0YXRpYyBpbnQgZHJtX3NjaGVkX21h
aW4odm9pZCAqcGFyYW0pCj4KPiAgICAgICAgICAgICAgICAgd2FrZV91cCgmc2NoZWQtPmpvYl9z
Y2hlZHVsZWQpOwo+ICAgICAgICAgfQo+ICsKPiArICAgICAgIGRtYV9mZW5jZV9lbmRfc2lnbmFs
bGluZyhmZW5jZV9jb29raWUpOwo+ICsKPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4KPiAtLQo+
IDIuMjYuMgo+CgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
