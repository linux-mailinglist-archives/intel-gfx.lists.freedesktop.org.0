Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F34E62FA68
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 12:40:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DF56E152;
	Thu, 30 May 2019 10:40:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73AC86E152;
 Thu, 30 May 2019 10:39:59 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id l125so4014757vsl.13;
 Thu, 30 May 2019 03:39:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xs3mLbVUjkO99vkakI5J6Rjx1hK0OEVR+SnXJYaJp8s=;
 b=E7i7EupSlGaqjKGjlixB9PNoJQVfPimq1iTWH4r+FJPKmLnKmDtdqkSYWQtkNRZf6B
 V2CdSvIRhVhQo+Gr/szHs/5B5UpYA1wCSFepsAVi/1BHKpdB1ZZEP+gRi0IC2R5LKz5G
 hlcXnDcJZ0zDYotKbUd71zxbJYUileJk+Q4qX24vKStpRzo1vaftnbozWae5+Oi6q+0r
 FPP1anI3LRxDQKUQuTd46WdJMLkdNASNfO7JIqE9BK1DVHPBhrSGlm/6TitzQq7cF39i
 INr866HRCSu99FZBEkNZIchqpc2D5KBq7Lv70ZIRba0DiWhsNbJZlGSjqKC1aAxIjg5j
 5+Cw==
X-Gm-Message-State: APjAAAXYF3tvlRblWtezRgJPBE9VZWfxYyfT79c9sYKQt+BynxirmECi
 oRN409/2MVf0Mz7lcdjOUSIOOT+dF2UgB5AleMTUG8a6tgU=
X-Google-Smtp-Source: APXvYqxtBEFyheXEWhX+zKABT+HC553DJv1gbmlL1hLrAyuvwyTBzHR2f4sRZ+SXWZNx3CeQdCeu6svNDn/EryO5rEw=
X-Received: by 2002:a67:c84:: with SMTP id 126mr1557034vsm.178.1559212798471; 
 Thu, 30 May 2019 03:39:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190529211354.16007-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190529211354.16007-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 30 May 2019 11:39:32 +0100
Message-ID: <CAM0jSHNFg1wsiiQdRfH-=ZFsRLy-31btuGSwCyO_BzQoKjrSsQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=xs3mLbVUjkO99vkakI5J6Rjx1hK0OEVR+SnXJYaJp8s=;
 b=vCOaF+p4T/00+GaJ/A3h4U0oumw+3wGO0Y/4bOyquCA4MwJxXO5KfFHUUbUad4UATg
 ZTJkrWxoGO8XLjcD7GAjxRdUcaFn8H+Efze6bwaJpAU/QwYzXxwt4G53WkfZ6VTHoajQ
 hp15cNErRxMsuy6dMINoR8rTX1z/hYlJcw9gI+PPL2FeKkBBqB3NWPSv1oWtCDriGiOf
 BZhbMI37vpezAZ8f4YS1s10Zu3ChRiX7zHqd/cYCznDppWK3YGiUROzmBgbbe5Z97ZK9
 RA7Ri+KShjsFHZ0YPVu1mGkV6EqAgoxjARhpsfpgqMPm3qOA4UbkJijcKrUyehEvGzLu
 34AA==
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_workarounds: Mix and match
 SRM with mmio reads
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyOSBNYXkgMjAxOSBhdCAyMjoxNCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gT24gYXBsLCBtbWlvIHJlYWRzIGZhaWwsIHJlYWRpbmcg
MC4KPiBPbiBjbWwsIFNSTSByZWFkcyBmYWlsLCByZWFkaW5nIDAuCj4KPiBDb21iaW5lIGJvdGgg
YXBwcm9hY2hlcywgc3RhcnRpbmcgd2l0aCBTUk0gYW5kIGZpeGluZyBpbiB0aGUgYmxhbmtzIHdp
dGgKPiBtbWlvIHJlYWRzLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1
bGRAZ21haWwuY29tPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRA
Z21haWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
