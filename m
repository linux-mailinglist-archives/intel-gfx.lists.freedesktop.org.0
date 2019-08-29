Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C0AA1215
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 08:50:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B9368920C;
	Thu, 29 Aug 2019 06:50:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EADA28920C
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 06:50:08 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id z51so2742577edz.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 23:50:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=AzqcizGtkwHAn+Timx3Y5+I86olGckkzJOi13AbJyLY=;
 b=lHLkJe+zS46z250yR45lSCuyG3UxPJd3M5SX8sK8yjr9vcSSUo2PiZHs7IntrFVavv
 UBhwCetU+R0YkHiG80qPFOPZuCJUARCClGA1TCOA1koQ+3vOQOLNGkqnsQ6o645tTD/x
 nhc+tSmD4mQg60UaQwzQkx4qwIYwe4wdXgEVIbOQMBTnHwRZRaj6BhHsfUiStQttUDy/
 lRAzfRuHHP5nBEhyIOk1JUrjZF/iAVi5GcXFgHyL9+jHv4fzSwyHQJ5VABeH5DxLDHS6
 PHcjyNiqfnVSIAcexCtojzQCuH6RbFZ0/oUWr8i+WvoKNmn0x6PSTACMkwTvXGpEChPG
 VP/Q==
X-Gm-Message-State: APjAAAW2/jC7nnvzs9gcHqcvg6JUdtD9ufEjl/lG4wzBYURFSSimw6gt
 MO8OVefoi6oLdalVzGZdXqkbrA==
X-Google-Smtp-Source: APXvYqzPa13rajkxd4kRy1RBMrSoqRvoL0K8pUnSxOJpaXsXWDQK02rbk2cnWV4mCd/WiF7W1jNVVQ==
X-Received: by 2002:a17:906:2294:: with SMTP id
 p20mr6568256eja.285.1567061407494; 
 Wed, 28 Aug 2019 23:50:07 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id y30sm267355edi.95.2019.08.28.23.50.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 23:50:06 -0700 (PDT)
Date: Thu, 29 Aug 2019 08:50:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190829065004.GG2112@phenom.ffwll.local>
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
 <20190820195451.15671-1-daniel.vetter@ffwll.ch>
 <055acb8e-8ba4-52b7-8cba-a5fef504e95e@intel.com>
 <20190821135537.GI5942@intel.com>
 <CAKMK7uFBXmDXA32dUhfvkxqxYDidbt0R6rowXBk7BwUBMU9qqA@mail.gmail.com>
 <CAOFGe97==LTH0pUh2idtA0SqQLf=+Tq90h0cBVwhv4gkHLq-7Q@mail.gmail.com>
 <e01a7b6890346444f3fa3f78cca1a2315412a37a.camel@intel.com>
 <156702323116.15406.18211831116094527542@skylake-alporthouse-com>
 <6c22439c4f38d0be6f8183bbe279c9e0f3db983b.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6c22439c4f38d0be6f8183bbe279c9e0f3db983b.camel@intel.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=AzqcizGtkwHAn+Timx3Y5+I86olGckkzJOi13AbJyLY=;
 b=F1eAV6tFLYNkEvwPt8RIs2pNPpotViJYYs+NtwFMnZG5uy0NwMNZlkY9uSz0WU79FD
 rE89xczY7lNINoxsOGK4ah8sKB6kWSl/3FpVHlnZHMKZ+3lq2t4BWjjfeI8kTP95F+YJ
 Z4/C2N2U384pwAKP9k8u1wrdfjXbb6phdkSY4=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
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
Cc: "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "kenneth@whitecape.org" <kenneth@whitecape.org>, "Auld,
 Matthew" <matthew.auld@intel.com>, "Vetter, Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMjgsIDIwMTkgYXQgMDg6MzE6MjdQTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gV2VkLCAyMDE5LTA4LTI4IGF0IDIxOjEzICswMTAwLCBDaHJpcyBXaWxzb24gd3Jv
dGU6Cj4gPiBRdW90aW5nIFNvdXphLCBKb3NlICgyMDE5LTA4LTI4IDIxOjExOjUzKQo+ID4gPiBS
ZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
Cj4gPiAKPiA+IEl0J3MgdXNpbmcgYSBub24tc3RhbmRhcmQgZm9yIGk5MTUgZXJyb3IgY29kZSwg
YW5kIGdldF90aWxpbmcgaXMgbm90Cj4gCj4gSHV1bSBzaG91bGQgaXQgdXNlIEVOT1RTVVBQIHRo
ZW4/IQoKaHR0cHM6Ly9kcmkuZnJlZWRlc2t0b3Aub3JnL2RvY3MvZHJtL2dwdS9kcm0tdWFwaS5o
dG1sI3JlY29tbWVuZGVkLWlvY3RsLXJldHVybi12YWx1ZXMKClBlciBhYm92ZSAiZmVhdHVyZSBu
b3Qgc3VwcG9ydGVkIiAtPiBFT1BOT1RTVVBQLgoKPiA+IGFmZmVjdGVkLCBpdCB3aWxsIGFsd2F5
cyByZXR1cm4gTElORUFSLiBZb3UgY2Fubm90IHNldCB0aWxpbmcgYXMgCj4gCj4gRm9sbG93aW5n
IHRoaXMgc2V0X3RpbGluZygpIExJTkVBUiBzaG91bGQgYmUgYWxsb3dlZCB0b28uCj4gSSBwcmVm
ZXIgdGhlIGN1cnJlbnQgYXBwcm9hY2ggb2YgcmV0dXJuaW5nIGVycm9yLgoKSSdtIG5vdCBzZWVp
bmcgdGhlIHZhbHVlIGluIGtlZXBpbmcgZ2V0X3RpbGluZyBzdXBwb3J0ZWQuIEVpdGhlciB1c2Vy
c3BhY2UKc3RpbGwgdXNlcyB0aGUgbGVnYWN5IGJhY2toYW5uZWwgYW5kIGRyaTIsIGluIHdoaWNo
IGNhc2UgaXQgbmVlZHMgdG8gYmUKZml4ZWQgbm8gbWF0dGVyIHdoYXQuIE9yIGl0J3MgdXNpbmcg
bW9kaWZpZXJzLCBpbiB3aGljaCBjYXNlIHRoaXMgaXMgZGVhZApjb2RlLiBPbmx5IG90aGVyIHVz
ZXIgSSBjYW4gdGhpbmsgb2YgaXMgdGFrZW92ZXIgZm9yIGZhc3Rib290LCBidXQgaWYgeW91Cmdl
dCBhbnl0aGluZyBlbHNlIHRoYW4gdW50aWxlZCBpdCdzIGFsc28gYnJva2VuICh3ZSBkb24ndCBo
YXZlIGFuIGlvY3RsIHRvCnJlYWQgb3V0IHRoZSBtb2RpZmllcnMsIGhlY2sgZXZlbiBhbGwgdGhl
IHBsYW5lcywgdGhlcmUncyBubyBnZXRmYjIpLgoKU28gcmVhbGx5IG5vdCBzZWVpbmcgdGhlIHBv
aW50IGluIGtlZXBpbmcgdGhhdCB3b3JraW5nLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNv
ZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
