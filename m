Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8CF9EF77
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 17:55:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB06C89AFF;
	Tue, 27 Aug 2019 15:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FFE589AFF
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 15:55:11 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id 62so13793973vsl.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 08:55:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6A4cR7+JzP4fJGtW4Nds2TSODF8DJGw+EqcvJujxzFM=;
 b=jpu/811sj7AwXGEA7xvNWpaq+rSFQ1FDNC22ITcmFtluO7gcshu6S5TFnucg/Te+fU
 /uxWry5sRe/LxlX1C6a+Dq2EfxA3WFY+dqRtKu8MjaG7xvGEV5VbxyzxkcW8mHqYf4KK
 lp+sCfamgLuk/tLx2rjadvmvhUiIrA9jxf24At8sc7tgdl9jhJRrBE6clEpcYY/59RFd
 hgt2akfSRrmecIbJqjQnS0rYwCBZ4bUTmEW7yFXMzKh7XqSL4MQVTRQSqhNkChQhHnlj
 +mQnDMt6Yrpyx6NXSvlbXekRl09Gtou/T+K5KTTfl/vXRWv1cEaqVQ70JhbHCSAh/XyP
 fT/w==
X-Gm-Message-State: APjAAAVwgFeqq+7Lb8RZDYuARWLSYK5bgzDCUqUNA1wQj7tlvXLoTfuz
 +8enR7Ipd9wAPaYUx2XUQNnT8V6Gq1tj7RPkkWXbgA==
X-Google-Smtp-Source: APXvYqxk8qZLY7NBh94EGYoNJasm8nMl7JJ6zgoPUp7lWKAYtVqTp7iMP5eyOQfa/Y81mw6fl5FQJScsGOOB9n75yMQ=
X-Received: by 2002:a67:1c87:: with SMTP id c129mr14649293vsc.23.1566921309977; 
 Tue, 27 Aug 2019 08:55:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190826072149.9447-1-chris@chris-wilson.co.uk>
 <20190826072149.9447-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190826072149.9447-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 27 Aug 2019 16:54:43 +0100
Message-ID: <CAM0jSHN_dF6R4tubR44hGu0DD-6cPZNS1CAmABn9m0T5Zr8EmQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=6A4cR7+JzP4fJGtW4Nds2TSODF8DJGw+EqcvJujxzFM=;
 b=tS5gW+TCckM61H2quNjvg/bClSGIvAfkKewl61MxQlYk5p5p6jrrmdj8BGEF/CFDYe
 I5w4SNP7Pz4OdSNG//cAKhbP+gXw73f+zFgP3kDSgp4JMQ6WMo3vvOZS7RfrKnXJILt/
 JdKOsh3REeKcQgg1dwq9lDhfpMFkfTqwKFgBhdt74hCaYjPe6wpQB5J7ECjVeYVFVpHS
 50q7G3QruFuXbRzWP7WxfpyeN2cb43B0qHSEocUovuq79XABgtYpsJs7hhJHwiLCSRti
 tCemfW9cXYC0akeHC/6U7xYL5SBf3//oDBb7oESvVsDWqclPQ/7Bj3DqV/zO4lYGUJlC
 nOkg==
Subject: Re: [Intel-gfx] [PATCH 02/28] drm/i915/selftests: Remove accidental
 serialization between gpu_fill
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

T24gTW9uLCAyNiBBdWcgMjAxOSBhdCAwODoyNCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gVXBvbiBvYmplY3QgY3JlYXRpb24gZm9yIGxpdmVfZ2Vt
X2NvbnRleHRzLCB3ZSBmaWxsIHRoZSBvYmplY3Qgd2l0aAo+IGtub3duIHNjcmF0Y2ggYW5kIGZs
dXNoIGl0IG91dCBvZiB0aGUgQ1BVIGNhY2hlLiBCZWZvcmUgcGVyZm9ybWluZyB0aGUKPiBHUFUg
ZmlsbCwgd2UgZG9uJ3QgbmVlZCB0byBmbHVzaCBpdCBhZ2FpbiBhbmQgc28gYXZvaWQgc2VyaWFs
aXNpbmcgd2l0aAo+IHByZXZpb3VzIGZpbGxzLgo+Cj4gSG93ZXZlciwgd2UgZG8gbmVlZCBzb21l
IHRocm90dGxpbmcgb24gdGhlIGludGVybmFsIGludGVyZmFjZXMgaWYgd2UgZG8KPiBub3Qgd2Fu
dCB0byBydW4gb3V0IG9mIG1lbW9yeSEKPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0
aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
