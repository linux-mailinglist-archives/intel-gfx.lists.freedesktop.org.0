Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 420AB32792D
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 09:28:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 723CF6E4FE;
	Mon,  1 Mar 2021 08:28:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com
 [IPv6:2607:f8b0:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1CFF6E4FE
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 08:28:35 +0000 (UTC)
Received: by mail-ot1-x32c.google.com with SMTP id g8so12041069otk.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Mar 2021 00:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Po0BcOHVOJTG0hvFYjPlIwmZEd13oK67+UakEhu7B6Q=;
 b=YfA/r0mER8n6UfMIfPlTKU0tRsfBtD2fSPCMtOkQ8qPbEjf0wZj6SbP66leHhGrHh+
 Hefkni+38PRa4KEDwHN6qnHZRU5pOke97rViY26d9G2cKSpStSv9bG/3mRknk5+4smVr
 eJo5XoeUTuVG3dYspWAIHl+D7uvwXlei75bAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Po0BcOHVOJTG0hvFYjPlIwmZEd13oK67+UakEhu7B6Q=;
 b=Cplpb1w1IfAPU4CtUuVWQxSgjaG+07TzOU1fxwP+Umu6uNT4bTUzwjQm5K17O96xr1
 aOqIWtuAo6aStgJgw7YukLMPKH7pFs/1ITOfXbsGA/0p3vDQuujl77WD1Tbvhw7dlExB
 aCm6VWLbmE3zKEpXBz+mIVAHC8KlFPIftUhSfuc/2LUjKxE6mIqG+mwj2WcldRGRypYH
 3ycCRlRm1bdoliDlPDtdQ1lIzLUXgOwQ2trpLJrBWfMGax44SW+vgoXgX2H5V/K1uF/k
 aYf0kXxYIgNmJvdQQFwOdsvJiglA3JFRTt4TOx7N5m8jScHea2h2JFP0BFEu92i4v9r6
 RpNw==
X-Gm-Message-State: AOAM5302fkPJ3lHVDlEVsibs/Xrsxdxu6CDOdn91SrZkLEq++46nKd2O
 XwFJXm2eupDez6xgCcrw/hwOtI45jVeSqUP6MDKZAooXcHY=
X-Google-Smtp-Source: ABdhPJympOz7bwbjwQR+/YqRgluV9bZ9F2UL/K13jiisJVkY2GNo/v3HZSpiXQHFFJMtqZ1UFhbbahYsC9DYYMGGasg=
X-Received: by 2002:a9d:6481:: with SMTP id g1mr2759310otl.303.1614587314867; 
 Mon, 01 Mar 2021 00:28:34 -0800 (PST)
MIME-Version: 1.0
References: <20210223105951.912577-1-daniel.vetter@ffwll.ch>
 <1a7c2295-6241-f2bf-4a78-6cadd43bc248@shipmail.org>
 <CAKMK7uHzRb6Q_LgPUrrHn18sorYo7ysTgB+PNE36LDUUsJpHDg@mail.gmail.com>
 <f43311c8-a02a-1a29-a53b-88e599c92187@shipmail.org>
 <CAKMK7uE2UrOruQPWG9KPBQ781f9Bq9xpVRNserAC9BZ2VzDutQ@mail.gmail.com>
 <b30dacb0-edea-0a3c-6163-0f329e58ba61@gmail.com>
 <YDd/hlf8uM3+lxhr@phenom.ffwll.local>
 <CAKMK7uFezcV52oTZbHeve2HFFATeCGyK6zTT6nE1KVP69QRr0A@mail.gmail.com>
 <61c5c371-debe-4ca0-a067-ce306e51ef88@shipmail.org>
 <CAKMK7uFUiJyMP0E5JUzMOx=NyMW+ZObGsaFOh409x0LOvGbnzg@mail.gmail.com>
 <0d69bd00-e673-17cf-c9e3-ccbcd52649a6@shipmail.org>
In-Reply-To: <0d69bd00-e673-17cf-c9e3-ccbcd52649a6@shipmail.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 1 Mar 2021 09:28:23 +0100
Message-ID: <CAKMK7uE=8+hj-MUFXHFoG_hAbz_Obi8a99+DE5_d1K+KZaG+tQ@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH 1/2] dma-buf: Require
 VM_PFNMAP vma for mmap
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
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBGZWIgMjcsIDIwMjEgYXQgOTowNiBBTSBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwp
Cjx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPiBPbiAyLzI2LzIxIDI6MjggUE0sIERh
bmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBTbyBJIHRoaW5rIGl0IHN0b3BzIGd1cC4gQnV0IEkgaGF2
ZW4ndCB2ZXJpZmllZCBhdCBhbGwuIFdvdWxkIGJlIGdvb2QKPiA+IGlmIENocmlzdGlhbiBjYW4g
Y2hlY2sgdGhpcyB3aXRoIHNvbWUgZGlyZWN0IGlvIHRvIGEgYnVmZmVyIGluIHN5c3RlbQo+ID4g
bWVtb3J5Lgo+Cj4gSG1tLAo+Cj4gRG9jcyAoYWdhaW4gdm1fbm9ybWFsX3BhZ2UoKSBzYXkpCj4K
PiAgICogVk1fTUlYRURNQVAgbWFwcGluZ3MgY2FuIGxpa2V3aXNlIGNvbnRhaW4gbWVtb3J5IHdp
dGggb3Igd2l0aG91dCAic3RydWN0Cj4gICAqIHBhZ2UiIGJhY2tpbmcsIGhvd2V2ZXIgdGhlIGRp
ZmZlcmVuY2UgaXMgdGhhdCBfYWxsXyBwYWdlcyB3aXRoIGEgc3RydWN0Cj4gICAqIHBhZ2UgKHRo
YXQgaXMsIHRob3NlIHdoZXJlIHBmbl92YWxpZCBpcyB0cnVlKSBhcmUgcmVmY291bnRlZCBhbmQK
PiBjb25zaWRlcmVkCj4gICAqIG5vcm1hbCBwYWdlcyBieSB0aGUgVk0uIFRoZSBkaXNhZHZhbnRh
Z2UgaXMgdGhhdCBwYWdlcyBhcmUgcmVmY291bnRlZAo+ICAgKiAod2hpY2ggY2FuIGJlIHNsb3dl
ciBhbmQgc2ltcGx5IG5vdCBhbiBvcHRpb24gZm9yIHNvbWUgUEZOTUFQCj4gdXNlcnMpLiBUaGUK
PiAgICogYWR2YW50YWdlIGlzIHRoYXQgd2UgZG9uJ3QgaGF2ZSB0byBmb2xsb3cgdGhlIHN0cmlj
dCBsaW5lYXJpdHkgcnVsZSBvZgo+ICAgKiBQRk5NQVAgbWFwcGluZ3MgaW4gb3JkZXIgdG8gc3Vw
cG9ydCBDT1dhYmxlIG1hcHBpbmdzLgo+Cj4gYnV0IGl0J3MgdHJ1ZSBfX3ZtX2luc2VydF9taXhl
ZCgpIGVuZHMgdXAgaW4gdGhlIGluc2VydF9wZm4oKSBwYXRoLCBzbwo+IHRoZSBhYm92ZSBpc24n
dCByZWFsbHkgdHJ1ZSwgd2hpY2ggbWFrZXMgbWUgd29uZGVyIGlmIGFuZCBpbiB0aGF0IGNhc2UK
PiB3aHkgdGhlcmUgY291bGQgYW55IGxvbmdlciBldmVyIGJlIGEgc2lnbmlmaWNhbnQgcGVyZm9y
bWFuY2UgZGlmZmVyZW5jZQo+IGJldHdlZW4gTUlYRURNQVAgYW5kIFBGTk1BUC4KClllYWggaXQn
cyBkZWZpbml0ZWx5IGNvbmZ1c2luZy4gSSBndWVzcyBJJ2xsIGhhY2sgdXAgYSBwYXRjaCBhbmQg
c2VlCndoYXQgc3RpY2tzLgoKPiBCVFcgcmVnYXJkaW5nIHRoZSBUVE0gaHVnZXB0ZXMsIEkgZG9u
J3QgdGhpbmsgd2UgZXZlciBsYW5kZWQgdGhhdCBkZXZtYXAKPiBoYWNrLCBzbyB0aGV5IGFyZSAo
Zm9yIHRoZSBub24tZ3VwIGNhc2UpIHJlbHlpbmcgb24KPiB2bWFfaXNfc3BlY2lhbF9odWdlKCku
IEZvciB0aGUgZ3VwIGNhc2UsIEkgdGhpbmsgdGhlIGJ1ZyBpcyBzdGlsbCB0aGVyZS4KCk1heWJl
IHRoZXJlJ3MgYW5vdGhlciBkZXZtYXAgaGFjaywgYnV0IHRoZSB0dG1fdm1faW5zZXJ0IGZ1bmN0
aW9ucyBkbwp1c2UgUEZOX0RFViBhbmQgYWxsIHRoYXQuIEFuZCBJIHRoaW5rIHRoYXQgc3RvcHMg
Z3VwX2Zhc3QgZnJvbSB0cnlpbmcKdG8gZmluZCB0aGUgdW5kZXJseWluZyBwYWdlLgotRGFuaWVs
Ci0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpo
dHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
