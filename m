Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E478134058A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 13:31:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EB526E134;
	Thu, 18 Mar 2021 12:31:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70E506E139
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 12:31:41 +0000 (UTC)
Received: by mail-oi1-x235.google.com with SMTP id n8so1068572oie.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 05:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pfwudtASQ7S/Y4s1aGlSwYMT+q/ORmzGSsukBLuRWSs=;
 b=IsRBSqA1bPh+nuuxnrxdOxbDDR0knr2dinvE8NWdzFWqYL58aZdcMFAWXxoDRopwui
 6pbru0laThJxU2XcrapSCuZxC8b5lC8ExS6yvQeK0pvF+mnYWTy2q5A9XGqds5weyzJG
 sIobs52NzzYn39guyVOXWL+vFQNZBvPtuPBRA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pfwudtASQ7S/Y4s1aGlSwYMT+q/ORmzGSsukBLuRWSs=;
 b=ZaZqY+dAJfAWU+SWWkcXsOQU0r5swPPSFFl7UkSmbfGHsFsYY31KS2Bn+3u1gdXDXp
 MxVo4j6SXNCE9jCRbPKYU7NI5EHfIXSNDWJtHn5Am/eADfifRH84DCp30BsTzPlQ9VXB
 mStKqc/SZUg7JVDI1g5ihhMWW1atYSNLrAsZmMRKYHnQTtGiGjx09+Fct3Xf0fDEKFrV
 eCIjTb/16l2AfPq/LykNQgZuQ/e9n520vgi2VU1edTztheuDWB/cKcqwIXh+VA7ldVz9
 asXOLy9SuQinEsLDhDC9Xlf0dZf8KvBV3Mz8B9w3lLK8GpK191iCcxC87ngp4NgwuJQv
 t+CA==
X-Gm-Message-State: AOAM530Yl/SYMKgFvE6oJefZzYDC+xw5n4i3tmPIR0nqpgURYM4hkjyA
 B3niZfOIK1nEvamDSlT5cNifPmRM7MHKu45jcr5K9Q==
X-Google-Smtp-Source: ABdhPJxPkN+n8nLvmUggiRCg0P510YiszZGjT4aOgXSi0xvKAZHRLTnQorebXVPb6EcbQ7gEEbB5FDBHHE+noQtPckE=
X-Received: by 2002:aca:170a:: with SMTP id j10mr2871425oii.128.1616070700762; 
 Thu, 18 Mar 2021 05:31:40 -0700 (PDT)
MIME-Version: 1.0
References: <a0e13bbb-6ba6-ff24-4db8-0e02e605de18@linux.intel.com>
In-Reply-To: <a0e13bbb-6ba6-ff24-4db8-0e02e605de18@linux.intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 18 Mar 2021 13:31:29 +0100
Message-ID: <CAKMK7uE_e5YqOUGfM4nvpRZTRnxBnyu-vCHveyDHCWBzqqmWfQ@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: "DRM maintainer tools announcements, discussion,
 and development" <dim-tools@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXIgMTgsIDIwMjEgYXQgMTI6MzMgUE0gTWFhcnRlbiBMYW5raG9yc3QKPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBkcm0tbWlzYy1maXhlcy0y
MDIxLTAzLTE4Ogo+IGRybS1taXNjLWZpeGVzIGZvciB2NS4xMi1yYzQ6Cj4gLSBNYWtlIHR0bV9i
b191bnBpbigpIG5vdCB3cmFwYXJvdW5kIG9uIHRvbyBtYW55IHVucGlucy4KPiAtIEZpeCBjb2Nj
aWNoZWNrIHdhcm5pbmcgaW4gb21hcC4KClN0aWxsIG1pc3NpbmcgdGhlIDIgcGF0Y2hlcyBmcm9t
IGRybS1taXNjLW5leHQtZml4ZXMsIGFuZCB0aG9zZSBiZWluZwpsZWZ0IG91dCBhbHNvIG1lYW5z
IGRybS1taXNjLW5leHQgaXNuJ3QgcHVzaGVkIHRvIGZvci1saW51eC1uZXh0CmJyYW5jaCwgd2hp
Y2ggaXMgY2F1c2luZyBhIHRvbiBvZiBjb25mdXNpb24gaXRzZWxmLgotRGFuaWVsCgo+IFRoZSBm
b2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgZGUwNjZlMTE2MzA2YmFmM2E2YTYyNjkxYWM2
M2NmYzBiMWRhYmRkYjoKPgo+ICAgZHJtL2NvbXBhdDogQ2xlYXIgYm91bmNlIHN0cnVjdHVyZXMg
KDIwMjEtMDMtMTEgMTE6MTE6MzMgKzAxMDApCj4KPiBhcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQg
cmVwb3NpdG9yeSBhdDoKPgo+ICAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZHJtL2Ry
bS1taXNjIHRhZ3MvZHJtLW1pc2MtZml4ZXMtMjAyMS0wMy0xOAo+Cj4gZm9yIHlvdSB0byBmZXRj
aCBjaGFuZ2VzIHVwIHRvIDY5MDkxMTU0NDI3NTllZmVmM2Q0YmM1ZDljNTRkNzk0M2YxYWZjMTQ6
Cj4KPiAgIGRybS9vbWFwOiBkc2k6IGZpeCB1bnNpZ25lZCBleHByZXNzaW9uIGNvbXBhcmVkIHdp
dGggemVybyAoMjAyMS0wMy0xNyAxMzo1OToyMyArMDIwMCkKPgo+IC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiBkcm0tbWlz
Yy1maXhlcyBmb3IgdjUuMTItcmM0Ogo+IC0gTWFrZSB0dG1fYm9fdW5waW4oKSBub3Qgd3JhcGFy
b3VuZCBvbiB0b28gbWFueSB1bnBpbnMuCj4gLSBGaXggY29jY2ljaGVjayB3YXJuaW5nIGluIG9t
YXAuCj4KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4gQ2hyaXN0aWFuIEvDtm5pZyAoMSk6Cj4gICAgICAgZHJtL3R0bTog
bWFrZSB0dG1fYm9fdW5waW4gbW9yZSBkZWZlbnNpdmUKPgo+IEp1bmxpbiBZYW5nICgxKToKPiAg
ICAgICBkcm0vb21hcDogZHNpOiBmaXggdW5zaWduZWQgZXhwcmVzc2lvbiBjb21wYXJlZCB3aXRo
IHplcm8KPgo+ICBkcml2ZXJzL2dwdS9kcm0vb21hcGRybS9kc3MvZHNpLmMgfCA3ICsrKystLS0K
PiAgaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaCAgICAgIHwgNiArKysrLS0KPiAgMiBmaWxl
cyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgoKCi0tIApEYW5pZWwg
VmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5m
ZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
