Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48032E7091
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 12:39:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31C06E5F9;
	Mon, 28 Oct 2019 11:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com
 [IPv6:2607:f8b0:4864:20::943])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFF5E6E5F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 11:39:50 +0000 (UTC)
Received: by mail-ua1-x943.google.com with SMTP id n41so2581291uae.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 04:39:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=37sS7AUojS1NfWiVMgLyWpPCmsOu0FLCy5I2O9SoA90=;
 b=YrInd85o79S26RfqbGMTluB+SKCYBIash4kCUwANtI2Q9RZo5/QUp3H+8lX6ki8aHg
 GXolrZxuuIgBAml+sDWfm0xn3xLry1ICuTvf9vIuJEtHwE+Oc1iXHpNsyuPMKeEriqXG
 z44S7nVELpcn4KdKoJh1AjlqjbR7Z6HWN5YDwZ1xs2awj0V7z6V2xukH2Ic9DW3pHtrh
 dP7eJaNM8aDiqrFsVXQGGzyiC4Tx3hBzYPhfRxV7iJ6xW2IrSZRjt1AJH+Z7e0xd4dhI
 ePKR2dmp6LzKLQazVl2aqpgAKkhpfILyCTVZZrbN/2cxESc3dcTE0HSAx+P7FHwkj5/T
 ozDQ==
X-Gm-Message-State: APjAAAVyrMUwYYPfgFImOgmMEO2E3bCYt4maVt3/KIROqtCeRJFmbg7p
 oOsS5x1D5ifStrJE7dZagp0g4dCekp3dCdpDZlU=
X-Google-Smtp-Source: APXvYqykCiRP8IISEfdP6Vq1jhs1UDEz2EexW9RmFUO/HOuq1e1yNFhEOQ/75zbilLyIOq3sHObXxOy9ZZcn1y09gaM=
X-Received: by 2002:a9f:3c2c:: with SMTP id u44mr8254273uah.2.1572262789631;
 Mon, 28 Oct 2019 04:39:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191027225808.19437-1-chris@chris-wilson.co.uk>
 <20191027225808.19437-5-chris@chris-wilson.co.uk>
In-Reply-To: <20191027225808.19437-5-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 28 Oct 2019 11:39:20 +0000
Message-ID: <CAM0jSHPL2gsGLVYx7JbhM4=bH0dwR4TBcXpRZ-NC9qhsm4e=Gg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=37sS7AUojS1NfWiVMgLyWpPCmsOu0FLCy5I2O9SoA90=;
 b=nRFwO1rgvemdXI9MsNSeRVcsyItgCne1won8uH/yP61yoSRSI7hET+SGxXrRpYM7CM
 ZL1mtgxC7s8nkFTVBXxeg7o5jhL0lmJSbQHlxYmNU8dTeaH9ppotAfwrM6KeowbSzzNd
 UaVVMStMgFB+YQXK4zR/r0kgqBz/JSQw6b275sfFaa1/tE4zWwhYEvAIndm0lU2xsS2R
 qoJCL5Wx19ZmCcm2coQ4nSoEyJHGah2jU06+4VViY3zoLhFDgUwSjUMB3bm0oHQmQk0L
 r+VOtDJ1q/c259DN9NQl5LRokfv+JQzzfxZq/MEUogGPJiM8PXeSrBYWSe/FjwHztpJi
 TAWA==
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/selftests: Select a random
 engine for testing memory regions
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCAyNyBPY3QgMjAxOSBhdCAyMjo1OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gVXNlIGFueSBibGl0dGVyIGVuZ2luZSBhdCByYW5kb20g
Zm9yIHByZWZpbGxpbmcgdGhlIG1lbW9yeSByZWdpb24uCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
