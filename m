Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5A6A3CDC
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 19:18:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 816F36E386;
	Fri, 30 Aug 2019 17:18:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 873AB6E386
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 17:18:40 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id n13so2536941uap.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 10:18:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YWZunThBJyBIA1CoCLEte0VAJjYxORC/pPNZOjX/FQk=;
 b=QdqGKAuGmwK2OKlS+9znS4sgwcOycwhIPruJ1nvz9/rt8oilpzXN4d24WU2rJ1ia30
 M+AFd8bfULHFaJRV4qSBDdIPO445Ut+h5PbuX86N+pBoCsQGTJa82wDQsFG/FBS/M7q/
 ekW+j9IYNhW0jhw6xAZh51NbVoa6ONYVzGG29H6GGeo224g3SckV1ckGlx2ADJ5Cc5Zq
 2lqQLrs7Pza6BdC5QexaTXC5MWVgWMfc6YBseeH00SN0btUZSuAJqC38VsJqhDT+vL1q
 LvHO9aJbTdMltM5+DJr534AX9Z8gco3nknidVUv/Msfb59rNDn9pASyJ9iLdimI7/Pj4
 FRuA==
X-Gm-Message-State: APjAAAWF+yH2lucicTb4psxa8kWF1VLRqLkJvwld8fA6lHbUFNLtclkW
 QqBG0ryRRiCr75dnPc+wzh2bbWdXqhfbhtJAwcQ=
X-Google-Smtp-Source: APXvYqwhq9eCqofuu570f/wimXfJPNrmSfi+RxLQO8oERa2edjF7lgI0dANOoAjnX1BqZ33Jq/RnfP+Lh/yEQaRc/Cw=
X-Received: by 2002:ab0:4261:: with SMTP id i88mr8355104uai.95.1567185519412; 
 Fri, 30 Aug 2019 10:18:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190830061204.21206-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190830061204.21206-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 30 Aug 2019 18:18:12 +0100
Message-ID: <CAM0jSHM3pqbit5OtKaG58Hq5pQNyP7x_YeZ1gAXpK8CU9sKykA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=YWZunThBJyBIA1CoCLEte0VAJjYxORC/pPNZOjX/FQk=;
 b=nixB7BACwgNK0/HsEF8w5C6RUryTRZXuP0zm5HBPVEypvZ1bI2w994/u5nQl2XUS59
 61FvmXtGwdMKuHV6rvlSS7q3bsuibdP/lgqWHak6SXLrfJXY/aiotB9as/LrB4Si1pu9
 E4ZtSnNwY9EU0xoK6cQI8FM9d+xrTjCdtf0ZofDxcMJa6sBOn88Z28euMlgawrYuMkFW
 V+ztPunrjJQ+wj6YUvD18XmtXwXzX8wq/O+pKrJAntwcfRle4NHVi2xqv13ib0pZ8PhF
 kUj2rDylTPNwOPTsnhpsDQ7IkemJ1twuFOCLPJL2CMX6gefGw85knbh2Zcn9l0/07Hi3
 BXAw==
Subject: Re: [Intel-gfx] [PATCH 01/21] drm/i915/gtt: Downgrade Baytrail back
 to aliasing-ppgtt
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

T24gRnJpLCAzMCBBdWcgMjAxOSBhdCAwNzoxMiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gV2l0aCB0aGUgdXBjb21pbmcgY2hhbmdlIGluIHRpbWlu
ZyAoZHJhbWF0aWNhbGx5IHJlZHVjaW5nIHRoZSBsYXRlbmN5Cj4gYmV0d2VlbiBtYW5pcHVsYXRp
bmcgdGhlIHBwR1RUIGFuZCBleGVjdXRpb24pLCBubyBhbW91bnQgb2YgdHdlYWtpbmcKPiBjb3Vs
ZCBzYXZlIEJheXRyYWlsLCBpdCB3b3VsZCBhbHdheXMgZmFpbCB0byBpbnZhbGlkYXRlIGl0cyBU
TEIuIFZpbGxlCj4gd2FzIHJpZ2h0LCBCYXl0cmFpbCBpcyBiZXlvbmQgaG9wZS4KPgo+IHYyOiBS
b2xsYmFjayBvbiBhbGwgZ2VuNzsgc2FtZSB0aW1pbmcgaW5zdGFiaWxpdHkgb24gVExCIGludmFs
aWRhdGlvbi4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgoKSSBndWVzcyB0aGUgY29tbWl0IHRpdGxlL21lc3NhZ2UgaXMgYSBsaXR0bGUg
c3RhbGUgbm93LgpBY2tlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29t
PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
