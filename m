Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17911387727
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 13:10:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F10B16E872;
	Tue, 18 May 2021 11:10:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com
 [IPv6:2607:f8b0:4864:20::932])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD006E870;
 Tue, 18 May 2021 11:10:08 +0000 (UTC)
Received: by mail-ua1-x932.google.com with SMTP id 20so3095854uaf.12;
 Tue, 18 May 2021 04:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Mwu5JNJHqBy2J4pl0vbVezQTh0b981uCtZz9YlSG8b8=;
 b=vWgOmCD1cvMJZIIA3gcuyktC6Z2qjElSlS1a85vG39qKZU2NZ2oXGrwJ+PMr48nqps
 ot3Pt8QwRz3Uysmihnz21c5BGvVwar/aORC/m4EeG5BvmOKHvzAanq30hTOiYOVZtPox
 ckt6ojiXwGwSP7ljOhYF6o2ogf76m2UuWvsYZIPaGnnFuUYI0ja7arQFXOSC07zK4jAE
 drUNFkWBUuHMvgPWm3+aZQVKW5vP4GSPvRXRbypeMjO9ooQZkP147deL7M+KEXKGdE0g
 C/1fE9CBp+k3S1d7/F8lb5+bDp1nYesbzkiw52YaMTy5F2TSM8ZwBD8wcC9TTixk5/dw
 GK8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Mwu5JNJHqBy2J4pl0vbVezQTh0b981uCtZz9YlSG8b8=;
 b=qaBAy7MjD0Z4SYZEfTwt49BDdYh+LdymDGmEM2ZIwTlMyzg3S6Bgyauz4RSaWUyQHc
 ZPL78aTEpi6KJeA9VpaxbpE9CL21DRuQ6QXTsF8nENNpYeTgdh8BHdZSaYws9ubYQxpN
 6lA7dI4R7ntb7xZ74N0GTnOs3ieMDoutqU6T8Gbhx2kuCNlE3Amlob4J9E8RZ/jl/JiM
 LAfEpWlXFNKilYyHLM3LZ1BVKbxIcLPQAj79RYVVvWMdLF8ur32YUeEZL3bQ4tWKHkuX
 DEPp4BjAm5nREop7vcflCQA7dJdWT9+SFdhSmoqvXmmCqFQ7NJgVJCdLBmB8jLPLQyKk
 6Hdg==
X-Gm-Message-State: AOAM533391gH+lndc1qz8F9rotlMLKJbS+uWvehLA+gUKEyPk6P227kJ
 XNyoWxBM79gyd+6RQOeBvvjwrVDiP4Hi1uL8D/0=
X-Google-Smtp-Source: ABdhPJx8f7Xxd6YrHmjlVSCW9LNRDeWY4Cm9dE5A8s601Zx5cTaMMTk2zheoDWHRX5m9q3pHijdirQVz0u9zkSallUI=
X-Received: by 2002:ab0:3811:: with SMTP id x17mr5597871uav.69.1621336207823; 
 Tue, 18 May 2021 04:10:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210516171432.1734268-1-emil.l.velikov@gmail.com>
 <YKKmsbvTZBwCUiRu@intel.com>
In-Reply-To: <YKKmsbvTZBwCUiRu@intel.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Tue, 18 May 2021 12:09:56 +0100
Message-ID: <CACvgo53H7GAjN_aFsCBOw+xtVbjcbR1q-U3vdgjT1KUPKoMkkg@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: only disable default vga device
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
 ML dri-devel <dri-devel@lists.freedesktop.org>, kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVmlsbGUsCgpPbiBNb24sIDE3IE1heSAyMDIxIGF0IDE4OjI0LCBWaWxsZSBTeXJqw6Rsw6QK
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIFN1biwgTWF5IDE2
LCAyMDIxIGF0IDA2OjE0OjMyUE0gKzAxMDAsIEVtaWwgVmVsaWtvdiB3cm90ZToKPiA+IEZyb206
IFZpdmVrIERhcyBNb2hhcGF0cmEgPHZpdmVrQGNvbGxhYm9yYS5jb20+Cj4gPgo+ID4gVGhpcyBw
YXRjaCBpcyB0byBkbyB3aXRoIHNlYW1sZXNzIGhhbmRvdmVyLCBlZyB3aGVuIHRoZSBzZXF1ZW5j
ZSBpcwo+ID4gYm9vdGxvYWRlciDihpIgcGx5bW91dGgg4oaSIGRlc2t0b3AuCj4gPgo+ID4gSXQg
c3dpdGNoZXMgdGhlIHZnYSBhcmJpdGVyIGZyb20gdGhlICJvdGhlciIgR1BVIHRvIHRoZSBkZWZh
dWx0IG9uZQo+ID4gKGludGVsIGluIHRoaXMgY2FzZSksIHNvIHRoZSBkcml2ZXIgY2FuIGlzc3Vl
IHNvbWUgaW8oKS4KPgo+IEkgZG9uJ3QgdW5kZXJzdGFuZCB3aGF0IHRoaXMgY29tbWl0IG1lc3Nh
Z2UgaXMgdHJ5aW5nIHRvIHNheS4KPgpCdW5jaCBvZiBjb250ZXh0IGlzIGxvc3QgZHVlIHRvIHRo
ZSBwYXRjaCBhZ2UsIHNvIEknbSBub3QgMTAwJSBzdXJlIG9mCnRoZSBhY3R1YWwgaGFyZHdhcmUg
c2V0dXAgd2hlcmUgdGhpcyBvY2N1cnMuCkRvZXMgdGhlIGZvbGxvd2luZyBtYWtlIHNlbnNlPwoK
Q3VycmVudGx5IG9uIGR1YWwgR1BVIHN5c3RlbXMsIHdlIGRvIG5vdCBnZXQgc2VhbWxlc3MgaGFu
ZG92ZXIgYXMgdGhlCm91dHB1dCBmbGlja2VycyBkdXJpbmcgdGhlIHRyYW5zaXRpb24gYm9vdGxv
YWRlciAtPiBwbHltb3V0aCAtPgpkZXNrdG9wLgpUaGlzIGhhcHBlbnMgYXMgYSByZXN1bHQgb2Yg
c3dpdGNoaW5nICh2aWEgdGhlIFZHQSBhcmJpdGVyKSBmcm9tIHRoZQoib3RoZXIiIEdQVSBiYWNr
IHRvIHRoZSBkZWZhdWx0IGk5MTUgb25lIGFuZCBpc3N1aW5nIGlvKCkgY29tbWFuZHMuCgotRW1p
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
