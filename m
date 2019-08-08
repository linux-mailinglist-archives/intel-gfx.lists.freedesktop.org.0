Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1326886492
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 16:41:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70361897F5;
	Thu,  8 Aug 2019 14:41:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82E0F897F5
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 14:41:22 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id u124so63229796vsu.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Aug 2019 07:41:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YxrFiV5mhymijK6SRlYxr8NR7EB8LmE2tW9JIxtkcJ8=;
 b=Szho/Uo3J3i9oeZmSlkbNeh62yow87Fwxrb4PcfhOWAyysZohn9RqrpTovNfDiGN58
 u229rIYwquNhq9i9Rue1TlgQ+YWiZaAQCAdln2lP7xI5P+n2zPhIFhvmRLm4MWAVCNZJ
 V9RErwr9MH4Kr5SweIAm6uhtVUbe5RxbkLWiPc5cIaR8Hl3JzrUHOci9vqyXrB68Zyn5
 doMKFTblUeZ70G3qKHzI+FDJYQX7JAOXMlfPnipsIfN/VK/eDRnhNAXiystQgCapp25/
 xcPc6XEXduhar9l+3chLCfWgk7loHgO0CCbidHsX9yF2TY58LGbff/TI+jztWqubtU4l
 kbuw==
X-Gm-Message-State: APjAAAV6dM9WmmZ87ucY6yhhZw84x/0fM70YYDoimhMRCEQLXDhFQ2KF
 cLHfhfvOdJr5WXr32vXaHn4m1fYXdhmxSzu/tL8=
X-Google-Smtp-Source: APXvYqzJwDhR4eowz7g3xviUYGk2EfFADygZoRdSEd+AOCR+fagUQaJt27Cq+BKW/6DAREHU4gxCHE6+49IlUiAFGsc=
X-Received: by 2002:a67:e454:: with SMTP id n20mr10438883vsm.34.1565275281637; 
 Thu, 08 Aug 2019 07:41:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190808074207.18274-1-chris@chris-wilson.co.uk>
 <20190808074207.18274-9-chris@chris-wilson.co.uk>
In-Reply-To: <20190808074207.18274-9-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 8 Aug 2019 15:40:55 +0100
Message-ID: <CAM0jSHO9R4r+Y_=DPToQzZRmrVUrHzu1pOVMHh35-UMjaY4Lyg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=YxrFiV5mhymijK6SRlYxr8NR7EB8LmE2tW9JIxtkcJ8=;
 b=FY0AOITE3iRBNTGlU7G1BWuEpy070NLFOQhtS6vdfTeAyC/6tGj54k3AAmuzvN6mHX
 8syzklUaVPg3Z4c4jKkMMc0sxShA30xRqnRvvz/FDUwa4ENNzvhhwVa/oL4zU2L4LX+C
 pCSWN8Tj7QDPicGdBitOKNZrG13l7gTqpA9ciYH2yqaZvabZjD+58BU9J/RF88a0SIY+
 k0QFEm90VDYZMReiUwFShNOzKIOrhQZ0DD3IpOuxiPDKxC5X9fqXCPmzTsq8hfNFwirR
 kmNEVaBwq9YFUZErtcwIDda5mo0Zp0Zx/JtA2HVIxteg2cyTSG/0lhJBP1OjS0lVhP6Q
 dORQ==
Subject: Re: [Intel-gfx] [PATCH 09/19] drm/i915: Only include active engines
 in the capture state
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

T24gVGh1LCA4IEF1ZyAyMDE5IGF0IDA5OjA0LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBTa2lwIHByaW50aW5nIG91dCBpZGxlIGVuZ2luZXMgdGhh
dCBkaWQgbm90IGNvbnRyaWJ1dGUgdG8gdGhlIEdQVSBoYW5nLgo+IEFzIHRoZSBudW1iZXIgb2Yg
ZW5naW5lcyBnZXRzIGV2ZXIgbGFyZ2VyLCB3ZSBoYXZlIGluY3JlYXNpbmcgbm9pc2UgaW4KPiB0
aGUgZXJyb3Igc3RhdGUgd2hlcmUgdHlwaWNhbGx5IHRoZXJlIGlzIG9ubHkgb25lIGd1aWx0eSBy
ZXF1ZXN0IG9uIG9uZQo+IGVuZ2luZSB0aGF0IHdlIG5lZWQgdG8gaW5zcGVjdC4KPgo+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdl
ZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
