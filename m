Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6C7D473B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 20:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6E9B6E425;
	Fri, 11 Oct 2019 18:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 085766E425
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 18:11:13 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id m22so6800873vsl.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 11:11:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6+ICOhbPHe2TH9vz+ANnb6Uq5Oc0EC2zTzDxJMIqgOw=;
 b=AfAXuWQYD4EoLflaRFPQeXrxZJsO4G1AZC9C8fW+nwNzGeZ43M0HPZnLYfBb8CHP7g
 /1U8K1FZOKCuXu/PFcRKRrefzOLAOVZ320g1L/bpK6S32E9KHQhyi+k4ydVA4pns/vCW
 n5rkttUUOihVwZHMrSPdgRg63ywNqJpGfXfW7GlEncXH3TToE5c2efIbN9zLbnPU01e8
 pnjVaWVF6lN/bO4evcPhkpkYc8ihnd7EKio6GWXZqiqaIsW7jWWpCBzXaR3xryuPsrvL
 hZJCT30J+Xr7nx5hMQzW6v14oEUrKmuNclSymfpG6wzvr4/Bkcz2tvs2DrJOQ53HigA0
 9KTw==
X-Gm-Message-State: APjAAAWyWN/Z/F2i1eMdCvkH7l4NreGmKr6C8BDl08Axdhp3UTXzQL5l
 xYokfoC/wVxcF+c/uii48HGZO4ET0eYJZOM7ljM=
X-Google-Smtp-Source: APXvYqxEeeknTAA9txb8mUuJ/re/z5/7QfIfHIQ8pISke7Sd2Q6+gib3Y+y6PdBMDzjPPqyDFlIPS2zVVpOsiX4gtpU=
X-Received: by 2002:a05:6102:227c:: with SMTP id
 v28mr10102098vsd.119.1570817471967; 
 Fri, 11 Oct 2019 11:11:11 -0700 (PDT)
MIME-Version: 1.0
References: <20191011173823.20432-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191011173823.20432-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 11 Oct 2019 19:10:45 +0100
Message-ID: <CAM0jSHP75fVMLJhcBwVXaQe2oD6bXUVbbRH9NmUoNFHQ6j8QZg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=6+ICOhbPHe2TH9vz+ANnb6Uq5Oc0EC2zTzDxJMIqgOw=;
 b=o6Y/3J0h04RBj7kvveiP+CprEBK/zi70DiJ/2xj5hDqXjYBj5RmXZCPmiLZiC7rFnT
 kwIP6V5QRgQxM+uVmBdbzjC0CjUi98dfDwPi3BzpvxfZfduRAT8JfweVGmUXozjCBGm3
 zD/yIj0Uh0W45AU+NFR/+RcITXPMBmvRj6Qw4p5jW9pl7l6wn4URiLgsA+mt5OxindVZ
 TUMquRAL3faTTU+s44cDi+MwHDcwBOgmiY/bZ18uw3iEkZgbDWBJVw44HvViBtT/AGnf
 rObTNDFNib29WUAE8a+VWkibZJvLL8vGL9fH/wP1NzvxujYbNV9w2jU904JM9TQG7ero
 fjow==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add an rcu_barrier option to
 i915_drop_caches
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

T24gRnJpLCAxMSBPY3QgMjAxOSBhdCAxODozOCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gU29tZXRpbWVzIGEgdGVzdCBoYXMgdG8gd2FpdCBmb3Ig
UkNVIHRvIGNvbXBsZXRlIGEgZ3JhY2UgcGVyaW9kIGFuZAo+IHBlcmZvcm0gaXRzIGNhbGxiYWNr
cywgZm9yIGV4YW1wbGUgd2FpdGluZyBmb3IgYSBjbG9zZShmZCkgdG8gYWN0dWFsbHkKPiBwZXJm
b3JtIHRoZSBmcHV0KGZpbHApIGFuZCBzbyB0cmlnZ2VyIGFsbCB0aGUgY2FsbGJhY2tzIHN1Y2gg
YXMgY2xvc2luZwo+IEdFTSBjb250ZXh0cy4gVGhlcmUgaXMgbm8gdHJpdmlhbCBtZWFucyBvZiB0
cmlnZ2VyaW5nIGFuIFJDVSBiYXJyaWVyCj4gZnJvbSB1c2Vyc3BhY2UsIHNvIGFkZCBvbmUgZm9y
IG91ciBjb252ZW5pZW5jZSBpbgo+IGRlYnVnZnMvaTkxNV9kcm9wX2NhY2hlcwo+Cj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1h
dHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRAZ21haWwuY29tPgpSZXZpZXdlZC1ieTog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LndpbGxpYW0uYXVsZEBnbWFpbC5jb20+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
