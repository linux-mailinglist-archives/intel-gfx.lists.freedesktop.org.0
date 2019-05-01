Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CDE10BDC
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 19:16:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BDC18925F;
	Wed,  1 May 2019 17:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 688DB8925F
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 17:16:05 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id y196so4098418vsc.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 May 2019 10:16:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m4vl287sJKWztZnUFx2XA+/FvvM7akKQjuxTwAsXELY=;
 b=fG/wj2nYGTE7ITM2/npPJ8QUDrHVisMjmLlGJSnn+bbt40xP0gHcs3Bv9hHNRxhi6S
 EGnhfI6+3dHNE8VBdCRPaSnhfxCLwRISQ7+VmoMKvz2CFOy6OP00viO5Kg1l0yE92hEc
 IMQN6OybivzDMQ9lsx0aZulpIjrCY2z8AwzzM5kdbY2pRO0HuGWDLED+e76yvkJZT0q4
 XFcwaiOb2VPVOFS8ICOEMHukdnZjPu1KEuInG9ep6NsJc+0pOwVymt26WMBiVPoYPLCN
 oHblsOmclOvDtB6a0lkS78A9zcAry6L6jhz1xfrzb7pzcCKzqPOdy6w96/V8Cy3g1Wtx
 WNMg==
X-Gm-Message-State: APjAAAVGBB2L79UZCyVTRxvHvvQrug6IEImhQmsVTiBAmcIRg6h93saW
 gwPPqpsgAef0fPSpD4XbHhfGcweZE2PNjwyEDG4bbA==
X-Google-Smtp-Source: APXvYqwKOY7yaWZ+oySTPvHms9Amd5k1n54SW71RWrSqbifNqgxOc0iKWVx1M555jAfKrWGQNbjZbcRcgzKo6WSKLrQ=
X-Received: by 2002:a67:fb89:: with SMTP id n9mr41794125vsr.119.1556730964509; 
 Wed, 01 May 2019 10:16:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190501135753.8711-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190501135753.8711-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 1 May 2019 18:15:38 +0100
Message-ID: <CAM0jSHOso2VUpww+pogXiAqJ+rCOL_ec6e0Cwy=0b8NhRGRk7g@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=m4vl287sJKWztZnUFx2XA+/FvvM7akKQjuxTwAsXELY=;
 b=KsmLdYemWwlKDqm4oGlh7xHSg1S0ipyX4F8wVSV0NXM/w3gxcLmK8pXbSf83O6YfZ5
 AUqMh/aUW4Fwp7qv/lGBXY/Sjegg1pz7MmUwq0fLbks142A8jw0uGAc9MwetPh54oGY0
 /BCXZEStB4xFN/DtTah6L+QSZnRKLqZmj1egZXOWveRBt7c+eEWXqsxKdQ8IrsnKnl+2
 Tnv4zp4GEzLbIS4Vhgrmv8Db33zQlOaG5R4IFMDvrbx/4KdO+nnV6id3HWW+VXATBGW/
 tndceHuqzeuSyaZXkuRtkCiNgy64r4ylmzq/wgSiYjF0SSlBkG58wufQXIifXqczcuLa
 NH9w==
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Complete both freed-object
 passes before draining the workqueue
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxIE1heSAyMDE5IGF0IDE0OjU4LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBUaGUgd29ya3F1ZXVlIGNvZGUgY29tcGxhaW5zIHZpY2lv
dXNseSBpZiB3ZSB0cnkgdG8gcXVldWUgbW9yZSB3b3JrIG9udG8KPiB0aGUgcXVldWUgd2hpbGUg
YXR0YW1wdGluZyB0byBkcmFpbiBpdC4gQXMgd2UgYXN5bmNocm9ub3VzbHkgZnJlZQo+IG9iamVj
dHMgYW5kIGRlZmVyIHRoZWlyIGVucXVldWluZyB3aXRoIFJDVSwgaXQgaXMgcXVpdGUgdHJpY2t5
IHRvCj4gcXVpZXNjZSB0aGUgc3lzdGVtIGJlZm9yZSBhdHRlbXB0aW5nIHRvIGRyYWluIHRoZSB3
b3JrcXVldWUuIFlldCBkcmFpbgo+IHdlIG11c3QgdG8gZW5zdXJlIHRoYXQgdGhlIHdvcmtlciBp
cyBpZGxlIGJlZm9yZSB1bmxvYWRpbmcgdGhlIG1vZHVsZS4KPgo+IEdpdmUgdGhlIGZyZWVkIG9i
amVjdCBkcmFpbiAzIHdob2xlIHBhc3NlcyB3aXRoIG11bHRpcGxlIHJjdV9iYXJyaWVyKCkKPiB0
byBnaXZlIHRoZSBkZWZlciBmcmVlaW5nIG9mIHNldmVyYWwgbGV2ZWxzIGVhY2ggcHJvdGVjdGVk
IGJ5IFJDVSBhbmQKPiBuZWVkaW5nIGEgZ3JhY2UgcGVyaW9kIGJlZm9yZSBpdHMgcGFyZW50IGNh
biBiZSBmcmVlZCwgdWx0aW1hdGVseQo+IHJlc3VsdGluZyBpbiBhIEdFTSBvYmplY3QgYmVpbmcg
ZnJlZWQgYWZ0ZXIgYW5vdGhlciBSQ1UgcGVyaW9kLgo+Cj4gQSBjb25zZXF1ZW5jZSBpcyB0aGF0
IGl0IHdpbGwgbWFrZSBtb2R1bGUgdW5sb2FkIGV2ZW4gc2xvd2VyLgo+Cj4gQnVnemlsbGE6IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDU1MAo+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdl
ZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
