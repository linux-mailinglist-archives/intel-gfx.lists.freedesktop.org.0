Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 411DE3C2152
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 11:15:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED29F6E9F6;
	Fri,  9 Jul 2021 09:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com
 [IPv6:2607:f8b0:4864:20::232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00CB86E9F4
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 09:15:51 +0000 (UTC)
Received: by mail-oi1-x232.google.com with SMTP id u66so5645310oif.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Jul 2021 02:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jaix3U7G/PB87Ay07enXH/OSVYtCPLdi40u5BPIOv1s=;
 b=TwhB3mut8U7oIcVxsmZ6E535sHZwGLthPxsFmOOVY+1LchLYvrr58HnWTpEwBqLMZu
 zcADVGUGUSehj1h9D6GEHNW6QzTlHjuAQc5K2jQ8zGImBrn1Y3qZD5irpgvPo9f9ZD9F
 9yoeEfsfKgt0ewtqZ1Nndga3l/2KHdcTQRf1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jaix3U7G/PB87Ay07enXH/OSVYtCPLdi40u5BPIOv1s=;
 b=oa2MVelRxpFgPNMfo/Cn8DxBtOdPORG5F/ElRc1PccyKhmDPJK2d5xLVlbm/bo9Tqw
 J26Fi7m1jEwctRJlYkhlaEEtGM+E8Lfn3aCEvPsOl5nervMrovbV4JDLCVD84wXaYTRu
 soAHPm92X+/FBTSudFEmADVqiRLXy0wRcqRa+nV6ju4DniQ2BuXqT26v/SU0rcJo58Lh
 tTuPP+HKCaAeMEYgVaW1WFwWiZa9EVOaevK0YxY8wPJT+dXkd9TUWsIHhOJzrDqo6M/9
 ETQ2lLEfHmND4jaiHEng+/PPHnvFwhiLbvtFwUNwRO49YK90iJI+2s1BB8H4YHY8X3un
 uo2A==
X-Gm-Message-State: AOAM530pTW/XPY/VXqjYk+DydqumWOnP+ybWUwLLS5kKPWKTbtdCJynl
 fAlgd4nyROaGvOdsV4LxppdyiyGh2moK9ko6VoUmv/znCQ8=
X-Google-Smtp-Source: ABdhPJzdY5JqorO3ZHqZxNzPMPfbxu3TUa15r/b5G4RPJXaiHeVYNoRHYk7zvU/nMnz2sOTggwkJa6qMTzOHwoVFhfY=
X-Received: by 2002:aca:eb43:: with SMTP id j64mr7192215oih.101.1625822151219; 
 Fri, 09 Jul 2021 02:15:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
 <20210708173754.3877540-17-daniel.vetter@ffwll.ch>
 <2582129c-b0c3-831c-a3b4-caa51be95095@gmail.com>
In-Reply-To: <2582129c-b0c3-831c-a3b4-caa51be95095@gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 9 Jul 2021 11:15:40 +0200
Message-ID: <CAKMK7uGGv+6B9642XX1WordAkan7XbMyGCumaJGsQYxb+qQWfQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Subject: Re: [Intel-gfx] [PATCH v3 16/20] drm/msm: always wait for the
 exclusive fence
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
Cc: freedreno <freedreno@lists.freedesktop.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgOSwgMjAyMSBhdCAxMDo0OCBBTSBDaHJpc3RpYW4gS8O2bmlnCjxja29lbmln
LmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4gQW0gMDguMDcuMjEgdW0gMTk6Mzcg
c2NocmllYiBEYW5pZWwgVmV0dGVyOgo+ID4gRnJvbTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5p
Zy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+Cj4gPgo+ID4gRHJpdmVycyBhbHNvIG5lZWQgdG8g
dG8gc3luYyB0byB0aGUgZXhjbHVzaXZlIGZlbmNlIHdoZW4KPiA+IGEgc2hhcmVkIG9uZSBpcyBw
cmVzZW50Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4KPiA+IFtkYW52ZXQ6IE5vdCB0aGF0IGhhcmQgdG8gY29tcGlsZS10
ZXN0IG9uIGFybSAuLi5dCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwu
dmV0dGVyQGZmd2xsLmNoPgo+ID4gQ2M6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4K
PiA+IENjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KPiA+IENjOiBsaW51eC1hcm0tbXNt
QHZnZXIua2VybmVsLm9yZwo+ID4gQ2M6IGZyZWVkcmVub0BsaXN0cy5mcmVlZGVza3RvcC5vcmcK
Pgo+IFdvbmRlcmluZyBhIGJpdCB3aHkgeW91IGhhdmUgdGhhdCBpbiB0aGlzIHBhdGNoIHNldCBu
b3cuCj4KPiBCdXQgYW55IG9iamVjdGlvbnMgdGhhdCB3ZSBwdXNoIHRoaXMgbm93PwoKQ292ZXIg
bGV0dGVyIG9mIHRoZSBmaXJzdCBvbmUgdmVyc2lvbiBleHBsYWluZWQgdGhhdCBJIGp1c3Qgd2Fu
dGVkIHRvCmhhdmUgYWxsIHRoZSBtc20gZml4ZXMgaW4gdGhpcyBzZXJpZXMsIGZvciBjb21wbGV0
ZW5lc3MuIEJ1dCB5ZWFoIEkKdGhvdWdodCBJIHB1dCBhbiByLWIgb24geW91ciBzZXJpZXMgZm9y
IHRoaXM/IFRoZXJlIHdhcyBvbmUgcGF0Y2gKd2hlcmUgSSB3YXMgdW5oYXBweSB3aXRoIHRoZSBk
b2NzLCBidXQgdGhlcmUncyBhIG5ldyBwYXRjaCBmb3IgdGhhdApub3cgaGVyZS4KLURhbmllbAoK
PiBUaGFua3MsCj4gQ2hyaXN0aWFuLgo+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL21z
bS9tc21fZ2VtLmMgfCAxNiArKysrKysrLS0tLS0tLS0tCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMK
PiA+IGluZGV4IDE0MTE3ODc1NDIzMS4uZDljNGYxZGVlYWZiIDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20v
bXNtX2dlbS5jCj4gPiBAQCAtODEyLDE3ICs4MTIsMTUgQEAgaW50IG1zbV9nZW1fc3luY19vYmpl
Y3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosCj4gPiAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZTsKPiA+ICAgICAgIGludCBpLCByZXQ7Cj4gPgo+ID4gLSAgICAgZm9iaiA9IGRtYV9y
ZXN2X3NoYXJlZF9saXN0KG9iai0+cmVzdik7Cj4gPiAtICAgICBpZiAoIWZvYmogfHwgKGZvYmot
PnNoYXJlZF9jb3VudCA9PSAwKSkgewo+ID4gLSAgICAgICAgICAgICBmZW5jZSA9IGRtYV9yZXN2
X2V4Y2xfZmVuY2Uob2JqLT5yZXN2KTsKPiA+IC0gICAgICAgICAgICAgLyogZG9uJ3QgbmVlZCB0
byB3YWl0IG9uIG91ciBvd24gZmVuY2VzLCBzaW5jZSByaW5nIGlzIGZpZm8gKi8KPiA+IC0gICAg
ICAgICAgICAgaWYgKGZlbmNlICYmIChmZW5jZS0+Y29udGV4dCAhPSBmY3R4LT5jb250ZXh0KSkg
ewo+ID4gLSAgICAgICAgICAgICAgICAgICAgIHJldCA9IGRtYV9mZW5jZV93YWl0KGZlbmNlLCB0
cnVlKTsKPiA+IC0gICAgICAgICAgICAgICAgICAgICBpZiAocmV0KQo+ID4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+IC0gICAgICAgICAgICAgfQo+ID4gKyAg
ICAgZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKG9iai0+cmVzdik7Cj4gPiArICAgICAvKiBk
b24ndCBuZWVkIHRvIHdhaXQgb24gb3VyIG93biBmZW5jZXMsIHNpbmNlIHJpbmcgaXMgZmlmbyAq
Lwo+ID4gKyAgICAgaWYgKGZlbmNlICYmIChmZW5jZS0+Y29udGV4dCAhPSBmY3R4LT5jb250ZXh0
KSkgewo+ID4gKyAgICAgICAgICAgICByZXQgPSBkbWFfZmVuY2Vfd2FpdChmZW5jZSwgdHJ1ZSk7
Cj4gPiArICAgICAgICAgICAgIGlmIChyZXQpCj4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0
dXJuIHJldDsKPiA+ICAgICAgIH0KPiA+Cj4gPiArICAgICBmb2JqID0gZG1hX3Jlc3Zfc2hhcmVk
X2xpc3Qob2JqLT5yZXN2KTsKPiA+ICAgICAgIGlmICghZXhjbHVzaXZlIHx8ICFmb2JqKQo+ID4g
ICAgICAgICAgICAgICByZXR1cm4gMDsKPiA+Cj4KCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2Fy
ZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
