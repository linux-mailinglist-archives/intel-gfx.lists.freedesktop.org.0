Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F375894E9D
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 21:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB31E6E285;
	Mon, 19 Aug 2019 19:57:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com
 [IPv6:2607:f8b0:4864:20::a42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C07C46E285
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 19:57:52 +0000 (UTC)
Received: by mail-vk1-xa42.google.com with SMTP id b204so734616vka.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 12:57:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gzJymrR2BF9Vor4jfrKiVc+sWlZEOmFbz06NqOWxeSo=;
 b=CdLpM10uwTeaFfBPWiToc9zchrl+BXmhhiOfgKExYp0TKc2O4yG/QgJYCSatVECjJb
 vS9DfofBktN6Kj+3TLLw/pr7k9d2pBDDj3lVR5wOGEb61VEkcU5dcHvmVmsHmTb/yiKN
 RlTuQsxJKxfAJAFbs9f2Ub+Ok1rQyjqbJ/pqHIuiPx59t1dYjC9mTwbbwpdxq0RN1Sxz
 g7f3cGz3wVah5L3PdbFWeOcrtrlTx0mFOWGxIwoT0SX7ufJWuOxylMm6BF7xT6aM7hUW
 RBu6ZsFZTkzrxAzBIMUcZBEzE+f9G2iWivrU1Aii6fisZ21Zw9tS54sD24Pkzf5UY/Bi
 ulNw==
X-Gm-Message-State: APjAAAUmTQeQ9gVa/kMVDdVHjsR2eD0eLNBo8ZmSmGe5Ei/lzTRijNwU
 OS5kB7Em+uyZasd+v14MMJ1J6niIvHW9UJ7+NBk=
X-Google-Smtp-Source: APXvYqx3JQK1EFe3ddui/GVIXZugMnVLuOZ612iSQLvaedlydjK0iEosxVyMExfX+ftIhURuiGT12OypmLRIYXNaOMo=
X-Received: by 2002:a1f:f48f:: with SMTP id s137mr8993173vkh.10.1566244671602; 
 Mon, 19 Aug 2019 12:57:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190819164448.22132-1-chris@chris-wilson.co.uk>
 <20190819164448.22132-3-chris@chris-wilson.co.uk>
In-Reply-To: <20190819164448.22132-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 19 Aug 2019 20:57:25 +0100
Message-ID: <CAM0jSHPhWyxu6GFwce++cykA8KGhxqMq1ZX-Ghd66bstZfjqhA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=gzJymrR2BF9Vor4jfrKiVc+sWlZEOmFbz06NqOWxeSo=;
 b=K0AC5s+G54uJrLeM57EW7JKeAEoR5PQSrG6bqnLfAOCkUT9+Cm+FjT10az+W97cLhe
 VCIVKxWWb7bWo8SDmHcLskEtEzHZl7y1zyFYPMN0ykS9518UK4JE1TvPaKxkRZ+LOCKW
 puCn2b09bHs63KObcU/xeZn32LhcaHc2pqFid21p7OZ+cuWGFW1YqAMQxGywB/F0qyYJ
 gIelIOUb+2rAQz4yXWd7cq0wFYg9z+2d9JIT2uPKG00P9gxtse/g+TTA13VWHJUE+aJF
 sk22npBrJfL/YE6I/PQmNGOln0pyJ2tupGisQsCfI65aABx9NSktc6n4NO7r05kT0o0m
 rouQ==
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915: Assume exclusive access to
 objects inside resume
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

T24gTW9uLCAxOSBBdWcgMjAxOSBhdCAxNzo0NSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gSW5zaWRlIGd0dF9yZXN0b3JlX21hcHBpbmdzKCkgd2Ug
Y3VycmVudGx5IHRha2UgdGhlIG9iai0+cmVzdi0+bG9jaywgYnV0Cj4gaW4gdGhlIGZ1dHVyZSB3
ZSBuZWVkIHRvIGF2b2lkIHRha2luZyB0aGlzIGZzLXJlY2xhaW0gdGFpbnRlZCBsb2NrIGFzIHdl
Cj4gbmVlZCB0byBleHRlbmQgdGhlIGNvdmVyYWdlIG9mIHRoZSB2bS0+bXV0ZXguIFRha2UgYWR2
YW50YWdlIG9mIHRoZQo+IHNpbmdsZS10aHJlYWRlZCBuYXR1cmUgb2YgdGhlIGVhcmx5IHJlc3Vt
ZSBwaGFzZSwgYW5kIGRvIGEgc2luZ2xlCj4gd2JpbnZkKCkgdG8gZmx1c2ggYWxsIHRoZSBHVFQg
b2JqZWN0cyBlbiBtYXNzZS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1
bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
