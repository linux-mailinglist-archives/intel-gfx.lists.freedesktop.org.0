Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF574B7A8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 14:09:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 573206E132;
	Wed, 19 Jun 2019 12:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB0156E132;
 Wed, 19 Jun 2019 12:09:14 +0000 (UTC)
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:54448
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hdZOq-00021F-Pw; Wed, 19 Jun 2019 14:09:12 +0200
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20190614203615.12639-4-daniel.vetter@ffwll.ch>
 <20190618092038.17929-1-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <8989e3a6-829e-9d49-b34e-90a15097fa18@tronnes.org>
Date: Wed, 19 Jun 2019 14:09:08 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618092038.17929-1-daniel.vetter@ffwll.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=tronnes.org; s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=99xUTfjCRRcncvYd+g4tl4+JArp37Al2WVPmie3iv9o=; 
 b=V//aIh4xkAhWXOWawIGcrJWdHT/yrXW1q8ZxLaYunjXSg4ca7J8VGJTuFXwF1MXuTL+TSNgpWAXPMd/FtH69fzIPGiMtISONpdkNQkXhbMGmFQy6/638PQzpc+kdOEcS5DhK8inNp0XdBQw2keSpqkBOEfX6lHLhgcFKdFSMDQXE+awY5ArzeeMHj8/kCcOP5EWvmkJehpVUjWQ42ddzy59WNu0Qhz1jcqiFesCFTVHBL4rynD5DmQbidH5Z7nlwxBj6NdaRyzF9ed+JYxPoCF1uItoNO4J5Rw9YXVpIZUQt1j8RTG3xKtTGirUR/IgKUCIytZ8Pp8vPH7U14hO4cA==;
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/prime: Shuffle functions.
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpEZW4gMTguMDYuMjAxOSAxMS4yMCwgc2tyZXYgRGFuaWVsIFZldHRlcjoKPiBSZW9yZGVyIGFs
bCB0aGUgZnVuY3Rpb25zIGluIGRybV9wcmltZS5baGNdIGludG8gdGhyZWUgZ3JvdXBzOiBjb3Jl
LAo+IGV4cG9ydCBoZWxwZXJzLCBpbXBvcnQgaGVscGVycy4KPiAKPiBOb3Qgb3RoZXIgY2hhbmdl
cyBiZXlvbmQgbW92aW5nIHRoZSBmdW5jdGlvbnMgYW5kIHRoZWlyIHVuY2hhbmdlZAo+IGtlcm5l
bGRvYyBhcm91bmQgaW4gaGVyZS4KPiAKPiBDYzogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcu
b3JnPgo+IENjOiBFcmljIEFuaG9sdCA8ZXJpY0BhbmhvbHQubmV0Pgo+IENjOiBFbWlsIFZlbGlr
b3YgPGVtaWwubC52ZWxpa292QGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiAtLS0KCkFja2VkLWJ5OiBOb3JhbGYgVHLD
uG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
