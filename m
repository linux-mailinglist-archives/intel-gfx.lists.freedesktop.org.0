Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 270DC31C125
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Feb 2021 19:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 405D089C93;
	Mon, 15 Feb 2021 18:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AACA89C93
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Feb 2021 18:07:51 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id h8so7161958qkk.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Feb 2021 10:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1dShynOwpBLhTA2PPtO/qMOpTtdarYISwicXnE/Bl7A=;
 b=ZnSn6L4DBZGMGaMj1/ou5wOJbtt9rHmtmNztVe2d+LKLixYULnMQiMJtgaV/jjhA/z
 Oa0+2JmozKZm6Qm3FoAwIJ07coeWeF9AQLmBGN10Zg/Pt+YQeWoxRAnMgqa2cWfiZHys
 HdRmMav9o1Lnvhc4FEJNCKkKFJrDFCNcbKD4qwBre3hIbWpBsIfTNpfow27EFZoMXNxG
 yKymkY8CCTiuUfvV0+Wo3IpKj8kAa+/tpzGgNHYFqiRvIF7Q9xfIXGljvcl7BZCnVnZc
 4j83R4bUVGAqRm/RB2UmFA8hggAf6sEA9J7PfR8JF6PsKllm0eSkkih4dpM/5vuLYx9D
 n/BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1dShynOwpBLhTA2PPtO/qMOpTtdarYISwicXnE/Bl7A=;
 b=fxM27sMrdtjkwi3q/P/fPUrN5OXeypf7jNN81x2mX26ilZBrzNv9KLJ1z9Nc6KoYpA
 TiBdnM9mfJ+5JtGcdDBuOaLHmwU2S1IKBHlnQ33P3kMhC1m5953U6yxwB+JazFQqniZv
 s/Syv+mOMNRevylhruz8F3EL7bIft0Z0ah8Q1pZOsuHmBKSAyqmdjxlGap//ZNfhWDeI
 vC0aHDdX9kmFLk96C6XVrBojz7Vtzudfrktti5O2bbGDmbj05YyOHexAZ2bQiHDOySnG
 FubMHJ7li+M8nvBEaOrJjHvvSaWFAxZny+gIvQnFFOhMiEyQPiMxbmjKtqN9hrbxoejs
 8CUg==
X-Gm-Message-State: AOAM533MJL8StpI//QrRBDzKuFr8ij6vWleQVzurLR4sj5IixiG2crl1
 QEUx/GlyoAGB0BH3n7HX0jaCBQvtcB6nYHBlPR4=
X-Google-Smtp-Source: ABdhPJzoKtn6a355RuFhSeSyrrP7lKcLIlPGaOsZ13FvhlOAeDo1GqRTnPQ1WcNpOC+QQmw2Mk1Y2TxsJKFo/FcFmHE=
X-Received: by 2002:a05:620a:12f2:: with SMTP id
 f18mr16343661qkl.17.1613412470529; 
 Mon, 15 Feb 2021 10:07:50 -0800 (PST)
MIME-Version: 1.0
References: <20210215155616.26330-1-chris@chris-wilson.co.uk>
 <20210215155616.26330-3-chris@chris-wilson.co.uk>
In-Reply-To: <20210215155616.26330-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 15 Feb 2021 18:07:24 +0000
Message-ID: <CAM0jSHPm5gY1VTT256+59T0aTxNyF39qWmG1SoJPjRJCM0=Wkw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Refine VT-d scanout workaround
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxNSBGZWIgMjAyMSBhdCAxNTo1NiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gVlQtZCBtYXkgY2F1c2Ugb3ZlcmZldGNoIG9mIHRoZSBz
Y2Fub3V0IFBURSwgYm90aCBiZWZvcmUgYW5kIGFmdGVyIHRoZQo+IHZtYSAoZGVwZW5kaW5nIG9u
IHRoZSBzY2Fub3V0IG9yaWVudGF0aW9uKS4gYnNwZWMgcmVjb21tZW5kcyB0aGF0IHdlCj4gcHJv
dmlkZSBhIHRpbGUtcm93IGluIGVpdGhlciBkaXJlY3Rpb25zLCBhbmQgc3VnZ2VzdHMgdXNpbmcg
MTYwIFBURSwKPiB3YXJuaW5nIHRoYXQgdGhlIGFjY2Vzc2VzIHdpbGwgd3JhcCBhcm91bmQgdGhl
IGVuZHMgb2YgdGhlIEdHVFQuCj4gQ3VycmVudGx5LCB3ZSBmaWxsIHRoZSBlbnRpcmUgR0dUVCB3
aXRoIHNjcmF0Y2ggcGFnZXMgd2hlbiB1c2luZyBWVC1kIHRvCj4gYWx3YXlzIGVuc3VyZSB0aGVy
ZSBhcmUgdmFsaWQgZW50cmllcyBhcm91bmQgZXZlcnkgdm1hLCBpbmNsdWRpbmcKPiBzY2Fub3V0
LiBIb3dldmVyLCB3cml0aW5nIGV2ZXJ5IFBURSBpcyBzbG93IGFzIG9uIHJlY2VudCBkZXZpY2Vz
IHdlCj4gcGVyZm9ybSA4TWlCIG9mIHVuY2FjaGVkIHdyaXRlcywgaW5jdXJyaW5nIGFuIGV4dHJh
IDEwMG1zIGR1cmluZyByZXN1bWUuCj4KPiBJZiBpbnN0ZWFkIHdlIGZvY3VzIG9uIG9ubHkgcHV0
dGluZyBndWFyZCBwYWdlcyBhcm91bmQgc2Nhbm91dCwgd2UgY2FuCj4gYXZvaWQgdG91Y2hpbmcg
dGhlIHdob2xlIEdHVFQuIFRvIGF2b2lkIGhhdmluZyB0byBpbnRyb2R1Y2UgZXh0cmEgbm9kZXMK
PiBhcm91bmQgZWFjaCBzY2Fub3V0IHZtYSwgd2UgYWRqdXN0IHRoZSBzY2Fub3V0IGRybV9tbV9u
b2RlIHRvIGJlIHNtYWxsZXIKPiB0aGFuIHRoZSBhbGxvY2F0ZWQgc3BhY2UsIGFuZCBmaXh1cCB0
aGUgZXh0cmEgUFRFIGR1cmluZyBkbWEgYmluZGluZy4KPgo+IHYyOiBNb3ZlIHRoZSBndWFyZCBm
cm9tIG1vZGlmeWluZyBkcm1fbW1fbm9kZS5zdGFydCB3aGljaCBpcyBzdGlsbCB1c2VkCj4gYnkg
dGhlIGRybV9tbSBpdHNlbGYsIGludG8gYW4gYWRqdXN0bWVudCBvZiBub2RlLnN0YXJ0IGF0IHRo
ZSBwb2ludCBvZgo+IHVzZS4KPgo+IHYzOiBQYXNzIHRoZSByZXF1ZXN0ZWQgZ3VhcmQgcGFkZGlu
ZyBmcm9tIHRoZSBjYWxsZXIsIHNvIHdlIGNhbiBkcm9wIHRoZQo+IFZULWQgdy9hIGtub3dsZWRn
ZSBmcm9tIHRoZSBpOTE1X3ZtYSBhbGxvY2F0b3IuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVs
ZEBpbnRlbC5jb20+ICMgdjIKCkxvb2tzIGdvb2QsClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQg
PG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
