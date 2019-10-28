Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1121BE7026
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 12:11:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EDB86E5AB;
	Mon, 28 Oct 2019 11:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7B046E5BF
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 11:10:59 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id o21so1837857vsq.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 04:10:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZGdbMQM0qVFmNbjcwBirlmbOHH8U+djG6sRsxB9H6bo=;
 b=PF9TfuVGNnv+0Y6yfd/YjXZ7t90etFU4K7L1prMHbBRKv+jZxUm9T/wYFqfwwMSvg7
 mTvCjbGbYsPAi84XpLrzS8WmKMX2s4XQ172vCAeGlVVKYjmoPI3NOl6n/23/ieHDNJ82
 9SQG8j8aX4s/F1CCty1rTjYKzs7ZBecz8WYhaiigLMqGYIxDZ93VGef4sKgj15C2+0mc
 tdq0iMSqTJuxckEylXhSLDxXY5D13Uvtp3Q9TcVnWnTK1ULdNZocHof21krGeTBoxPye
 IGqDFZiO7kfyWP1IyNgN8HHiAIOi/Mxrefoj7gkXCx3v/LtaiOzQuag5v0+qjPeRs2Rr
 PIIQ==
X-Gm-Message-State: APjAAAWRkDhWCccG64P4NHGNh1KpBG3XUmMu5J36Nl7Tp771cZ1o29JX
 6dqhMgeGmr5fQUdei2yiFVQB6UG5XbfoLDKsQiA=
X-Google-Smtp-Source: APXvYqzlF39rnqZRUkTKnnYWE1qmE7fxIPIyvo1TuBW2O06Da8JUtA+Srs/WMXmFtyEnABVArZQoOC/JEl2OyuSmjns=
X-Received: by 2002:a67:f401:: with SMTP id p1mr8850676vsn.178.1572261058688; 
 Mon, 28 Oct 2019 04:10:58 -0700 (PDT)
MIME-Version: 1.0
References: <20191027143619.18296-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191027143619.18296-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 28 Oct 2019 11:10:29 +0000
Message-ID: <CAM0jSHOrNu2rh=tYPuUSx2SL=Xwoci+odjto2pU08npLeNG_Cg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=ZGdbMQM0qVFmNbjcwBirlmbOHH8U+djG6sRsxB9H6bo=;
 b=DZf5ZwKSuc6HhcONav8nahDxmJzfUFrIIUkIYA0nT2hL63pKvnl7ca9wDVK3aNNI1I
 U16tYfg6vrXO/etjBHc9lRbx6YTnl4ThLmGxWZdL/8i5kzPUdI9kRXyGdz+QASacKeAH
 rXfm6DP+9K2ZwkKLdFe4vM3+65Q+BwWByyvL0oMZI9Ewlc3Rh/Dk2ZroW/q56ULxW32Q
 /WCOh/1mNpRV2V6gpXPweORozV7n2AKlBGuNC3mE5W/7NGeDHQJs/yeOiwTB6XNll0mJ
 A1accaDpfYRbxYsD2p+ZlZ5R7Z1ETVvBCAcmGmEt7ZuINqCeL2V9lsnU1jRXjCv4CB6J
 CqKw==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Measure basic
 throughput of blit routines
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

T24gU3VuLCAyNyBPY3QgMjAxOSBhdCAxNDozNiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gV2UgbmVlZCB0byB2ZXJpZnkgdGhhdCBvdXIgYmxpdHRl
ciByb3V0aW5lcyBwZXJmb3JtIGFzIGV4cGVjdGVkLCBzbwo+IG1lYXN1cmUgaXQuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
