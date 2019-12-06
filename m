Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C38114EEA
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 11:18:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B86176F9AA;
	Fri,  6 Dec 2019 10:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF346F9AA
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 10:18:46 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id x195so5697443oix.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2019 02:18:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wQbD0TaQnCCyjdF8tYf2x8M1VesCn+pzXeR/60dguDg=;
 b=cQKD04KAZPbLLv/C/7SXs9K0mRbJocddo9VyGYJqX2VYlmEUhb7P/h3rtgcFtxpBrH
 ir3PKMnVWg7BeXKndzDjkynfaq95hmb/ERotT/90gg0/M65SecDXqXIMhfFdJJioo2pE
 dyz5vNrgM107fXJwD8QAzFU+UujoFS2gsw2aDTpaaWmKPUdj/6kF2Bc8U04kdpOBHHvM
 a4l9gnqSzjI0DN/iq0+YFzXCmwuGJV6942hB0EwW2/TRb6fyIWbgrKbPKnLi21M3j4sB
 2LO8cP1uBFnYKNASKLT9lNbZigAM9q8aL9mFh69e+uFXQAasQbl4WoG9/jFHMJHN/XlK
 McBQ==
X-Gm-Message-State: APjAAAXxi4HmLQmg/fRcdKDt2iWRRTGr0n8zoSPVoSCNAQ5UIEQLggOn
 hAVwKI4vjz/LhtCBee8G/oWhc3TvtwLUiHPlnjZC4w==
X-Google-Smtp-Source: APXvYqySrkijux/w9xw8znz+Eu74QnKoOVApoFziVtlnvs01v7V4F/uKzjr8d+Viy7fuwMggVjIh+o9nwzMAQf5zPmQ=
X-Received: by 2002:a54:440d:: with SMTP id k13mr11773948oiw.128.1575627525771; 
 Fri, 06 Dec 2019 02:18:45 -0800 (PST)
MIME-Version: 1.0
References: <20191127092523.5620-1-kraxel@redhat.com>
 <20191127092523.5620-2-kraxel@redhat.com>
 <20191128113930.yhckvneecpvfhlls@sirius.home.kraxel.org>
 <20191205221523.GN624164@phenom.ffwll.local>
 <20191206100724.ukzdyaym3ltcyfaa@sirius.home.kraxel.org>
In-Reply-To: <20191206100724.ukzdyaym3ltcyfaa@sirius.home.kraxel.org>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 6 Dec 2019 11:18:34 +0100
Message-ID: <CAKMK7uH==kE_ViKioJgpDRqFq-ROhws7atwwxcmu=Bwt9ZF52Q@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=wQbD0TaQnCCyjdF8tYf2x8M1VesCn+pzXeR/60dguDg=;
 b=Z+tCKCo5OHTC3bBUN022In54CQxWvkmO+8Z2DhcuZjNic0NPoTnvHMsDdKVOa69cFj
 64V8mXaD0aJoVnaMUZqPi9bUdgwowDOcB6GuyzWXSAOsefH/2O6h845owjqLpIcq32Up
 +3mXqrfoWHcEy9zKltpqdfnc/r5vDrE3pMuyw=
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm: call drm_gem_object_funcs.mmap
 with fake offset
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
Cc: Rob Herring <robh@kernel.org>, David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Huang Rui <ray.huang@amd.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBEZWMgNiwgMjAxOSBhdCAxMTowNyBBTSBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIERlYyAwNSwgMjAxOSBhdCAxMToxNToyM1BNICsw
MTAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gT24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgMTI6
Mzk6MzBQTSArMDEwMCwgR2VyZCBIb2ZmbWFubiB3cm90ZToKPiA+ID4gT24gV2VkLCBOb3YgMjcs
IDIwMTkgYXQgMTA6MjU6MjJBTSArMDEwMCwgR2VyZCBIb2ZmbWFubiB3cm90ZToKPiA+ID4gPiBU
aGUgZmFrZSBvZmZzZXQgaXMgZ29pbmcgdG8gc3RheSwgc28gY2hhbmdlIHRoZSBjYWxsaW5nIGNv
bnZlbnRpb24gZm9yCj4gPiA+ID4gZHJtX2dlbV9vYmplY3RfZnVuY3MubW1hcCB0byBpbmNsdWRl
IHRoZSBmYWtlIG9mZnNldC4gIFVwZGF0ZSBhbGwgdXNlcnMKPiA+ID4gPiBhY2NvcmRpbmdseS4K
PiA+ID4gPgo+ID4gPiA+IE5vdGUgdGhhdCB0aGlzIHJldmVydHMgODNiOGE2ZjI0MmVhICgiZHJt
L2dlbTogRml4IG1tYXAgZmFrZSBvZmZzZXQKPiA+ID4gPiBoYW5kbGluZyBmb3IgZHJtX2dlbV9v
YmplY3RfZnVuY3MubW1hcCIpIGFuZCBvbiB0b3AgdGhlbiBhZGRzIHRoZSBmYWtlCj4gPiA+ID4g
b2Zmc2V0IHRvICBkcm1fZ2VtX3ByaW1lX21tYXAgdG8gbWFrZSBzdXJlIGFsbCBwYXRocyBsZWFk
aW5nIHRvCj4gPiA+ID4gb2JqLT5mdW5jcy0+bW1hcCBhcmUgY29uc2lzdGVudC4KPiA+ID4gPgo+
ID4gPiA+IHYzOiBtb3ZlIGZha2Utb2Zmc2V0IHR3ZWFrIGluIGRybV9nZW1fcHJpbWVfbW1hcCgp
IHNvIHdlIGhhdmUgdGhpcyBjb2RlCj4gPiA+ID4gICAgIG9ubHkgb25jZSBpbiB0aGUgZnVuY3Rp
b24gKFJvYiBIZXJyaW5nKS4KPiA+ID4KPiA+ID4gTm93IHRoaXMgc2VyaWVzIGZhaWxzIGluIElu
dGVsIENJLiAgQ2FuJ3Qgc2VlIHdoeSB0aG91Z2guICBUaGUKPiA+ID4gZGlmZmVyZW5jZSBiZXR3
ZWVuIHYyIGFuZCB2MyBpcyBqdXN0IHRoZSBwbGFjZSB3aGVyZSB2bWEtPnZtX3Bnb2ZmIGdldHMK
PiA+ID4gdXBkYXRlZCwgYW5kIG5vIGNvZGUgYmV0d2VlbiB0aGUgdjIgYW5kIHYzIGxvY2F0aW9u
IHRvdWNoZXMgdm1hIC4uLgo+ID4KPiA+IExvb2tzIGxpa2UgdW5yZWxhdGVkIGZsdWtlcywgdGhp
cyBoYXBwZW5zIG9jY2FzaW9uYWxseS4gSWYgeW91J3JlIHBhcmFub2lkCj4gPiBoaXQgdGhlIHJl
dGVzdCBidXR0b24gb24gcGF0Y2h3b3JrIHRvIGRvdWJsZS1jaGVjay4KPiA+IC1EYW5pZWwKPgo+
IEd1ZXNzIHlvdSBraWNrZWQgQ0k/ICBKdXN0IGdvdCBDSSBtYWlscywgbm93IHJlcG9ydGluZyBz
dWNjZXNzLCB3aXRob3V0Cj4gZG9pbmcgYW55dGhpbmcuICBTbyBJJ2xsIGdvIHB1c2ggdjMgdG8g
bWlzYy1uZXh0LgoKWWVhaCBJIGtpY2tlZCBpdCwgc2luY2UgaWlyYyB5b3UgbmVlZCB5b3VyIHBh
dGNod29yayBhY2NvdW50IHRvIGJlCnRyZWF0ZWQgd2l0aCB0aGUgcmUtcnVuIHBvd2VycyBmaXJz
dC4gTWlnaHQgd2FudCB0byBnZXQgdGhvc2Ugd2l0aCBhCnF1aWNrIHBpbmcgb24gaXJjLCBpdCdz
IHVzZWZ1bC4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50
ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5j
aApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
