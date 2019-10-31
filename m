Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1775EB187
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 14:50:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DBB46E077;
	Thu, 31 Oct 2019 13:49:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7FCD6E077
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 13:49:58 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id q16so1887153uao.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 06:49:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9fLAZgSmGZ9qHyv9fVUQW/QN/yPZGDE5CgRrgT3nHvc=;
 b=b+rVvwZXE87MFm7Fn3Z/BXyk7uuCmuhkr5uOtMAeeL1C+h0gpow2y9GECOsvORtxB8
 QkvSV8+g7qHD2bQJe4M3cb/0gshx94VchowXqBzAs6zrmSLubDReOHQQZAljVmy7gr/f
 ixOwAXzdUxzf1dPonV+dtUJyVJ/CVA5pFD5my7jpCebpEmmLxeOWZ3WY1Qdo/dHIG2Nh
 bXXY9fi2jOXOdkR0Kh+2n2UbSSUhrXy/qSyP7KffEL/n/+ABWCUljkdLg0uhD9QidiZH
 x4S+z1DeRD3Jjb4u4bOzF8x6u8MQVE0R3BL3exgfjXL3CYeSM5m1ifj3qu1KMPq1YIwV
 FyzA==
X-Gm-Message-State: APjAAAVfwGkzNh078PYYSlDpgjUnyZSOopHi0s0Uqs/FWLXD2gar5BDG
 1BOIFgnSACJH6JXdk5cbSzL0Am2DsgRoVEwNr14=
X-Google-Smtp-Source: APXvYqwDDlX3pxaqWFo4Abr/cNddIZxywyWIId2uNaO9ExfCCZ/GnZQDzTxXCwhQzlbPuNoiVluFwGgfbbKHJ0RrEH4=
X-Received: by 2002:ab0:331a:: with SMTP id r26mr2851559uao.104.1572529797669; 
 Thu, 31 Oct 2019 06:49:57 -0700 (PDT)
MIME-Version: 1.0
References: <20191030192159.18404-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191030192159.18404-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 31 Oct 2019 13:49:31 +0000
Message-ID: <CAM0jSHMRCXAEDXyTtthThccTdW28C6odjGu9Y4SKyqVqVt6Oew@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=9fLAZgSmGZ9qHyv9fVUQW/QN/yPZGDE5CgRrgT3nHvc=;
 b=cer3WYepyCWUZ4HYA8eN/t2aj5cnMv4biOr86T9wkn1E3+Yw2Vqv+OFbO2e8I33pSQ
 o8RiAlQ19qWAHjb0HtnCSXM2HnA80PB7/vIyIMBD228EaTR6e9mi9sNqbOqR/qPxcL3Y
 z+9HJbpU6+I9OsnhTmm2maGbNbg/cNYeb4kC3fnwhsUZL0yZfN7cEsG7Dk+qCewdT9dS
 H2VT4unlv9SYzgS8z6/nJzxuivCVtZDJ34CMXUlgxAYXw5FyjGHnOCkL32eNJSqEsP3/
 3Xiy9j9ZaRym73oG8n1XPko+fvrEGFdQeS60XPxODlhqoQSMh/sXieMwBR7GXPqTJx3B
 +35g==
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915: Split detaching and
 removing the vma
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

T24gV2VkLCAzMCBPY3QgMjAxOSBhdCAxOToyMiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gSW4gb3JkZXIgdG8ga2VlcCB0aGUgYXNzZXJ0X2JpbmRf
Y291bnQoKSB2YWxpZCwgd2UgbmVlZCB0byBob2xkIHRoZSB2bWEKPiBwYWdlIHJlZmVyZW5jZSB1
bnRpbCBhZnRlciB3ZSBkcm9wIHRoZSBiaW5kIGNvdW50LiBIb3dldmVyLCB3ZSBtdXN0IGFsc28K
PiBrZWVwIHRoZSBkcm1fbW1fcmVtb3ZlX25vZGUoKSBhcyB0aGUgbGFzdCBhY3Rpb24gb2YgaTkx
NV92bWFfdW5iaW5kKCkgc28KPiB0aGF0IGl0IHNlcmlhbGlzZXMgd2l0aCB0aGUgdW5sb2NrZWQg
Y2hlY2sgaW5zaWRlIGk5MTVfdm1hX2Rlc3Ryb3koKS4gU28KPiB3ZSBuZWVkIHRvIHNwbGl0IHVw
IGk5MTVfdm1hX3JlbW92ZSgpIHNvIHRoYXQgd2Ugb3JkZXIgdGhlIGRldGFjaCwgZHJvcAo+IHBh
Z2VzIGFuZCByZW1vdmUgYXMgcmVxdWlyZWQgZHVyaW5nIHVuYmluZC4KPgo+IEJ1Z3ppbGxhOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIwNjcKPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
