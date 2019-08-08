Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 962C9865A6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 17:24:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BBB36E870;
	Thu,  8 Aug 2019 15:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com
 [IPv6:2607:f8b0:4864:20::a41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB4C6E870
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 15:24:17 +0000 (UTC)
Received: by mail-vk1-xa41.google.com with SMTP id 9so18842661vkw.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Aug 2019 08:24:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bLp5PG4clb4t54Y6okxWX2YjewGIpGB4i5EGPH7ifG0=;
 b=Eij3nZ7opvyh4KUrhKz9kUS1WG7/8K6MtqY0uxkzhGKiO1/1CaJvZa4dgatu3fQL6I
 OGv27/N485T5WVdTWWhJRuDwbvY2lj0r+mV66vVjHA/ux5soQg8WOp/LicwHwMYo9qFo
 aqluHlYGggzAyZt3ffTP9Gx1mWa4L0+IkOiRR3OErU0GlY3+MQhZ3YI6GfnyqU1ae2Er
 15Yzt/KzgAltIwc8gbu37zGGBBAmUzTv4ziGxEKBxTf8omyy0ntgh74g5ivuAKw1EuVs
 r1za6isG1zJ+1KV2ymevUVU3mCJvER+lRvi6OQWrLyTEO64q7UXCTOx8LQvOCse5wJzw
 7GeA==
X-Gm-Message-State: APjAAAVqOcCGRnmCchS4aobg0EviRxlYGn31Jd7YOrVCdvmTFHVzxSKf
 iqZpN148QQK4eDG65F8oAQhUzKntf95UtAnLLAI=
X-Google-Smtp-Source: APXvYqyrXc6TBaMJoE4P6HBknznPcW1Mrk8NQuRlYIix4S4uHKQXcelf/TBkjp43jJLvdoC6YERpBJ349l3lYxp7HaE=
X-Received: by 2002:a1f:b48e:: with SMTP id d136mr5798976vkf.57.1565277856070; 
 Thu, 08 Aug 2019 08:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190808074207.18274-1-chris@chris-wilson.co.uk>
 <20190808074207.18274-10-chris@chris-wilson.co.uk>
In-Reply-To: <20190808074207.18274-10-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 8 Aug 2019 16:23:50 +0100
Message-ID: <CAM0jSHPNjFziKyfiJ-sbbrGtSYC4X82Hx+KjWuEEsDnC0V3dZA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=bLp5PG4clb4t54Y6okxWX2YjewGIpGB4i5EGPH7ifG0=;
 b=bK+9vTMrt8Vo80CjZ38LwRuu4nDPvYbll7wOH2/F5hTPWNGFtisjrIkqnzKQJOOZx6
 h70M6onkBe4JfZypy+4H23i+eOpQ5REHOg90i7nTQFeFy6I3qucEIx5h2kKHODkwZZOi
 I1VtRAhGKnmRWEpxR7iNpc2hdQTs/6hmaBqreLYuByvEAXTrTWjGb4xBJMR0bCdRTyrY
 qGkQ66myO8bc2D6wW5R1Y6Iyk78cRX4+koZY8KLauO88gXJ9aZHkiznjG1iyJNfcSaxE
 17gC8ka1jGjKTdeCT9Nphj9bsQL7q4vew7+AjrmuIGNebMH7RWrlE84abFmzVazWxw6x
 8lGQ==
Subject: Re: [Intel-gfx] [PATCH 10/19] drm/i915: Make debugfs/per_file_stats
 scale better
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

T24gVGh1LCA4IEF1ZyAyMDE5IGF0IDA5OjAzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBDdXJyZW50bHkgd2Ugd2FsayB0aGUgZW50aXJlIGxpc3Qg
b2Ygb2JqLT52bWEgZm9yIGVhY2ggb2JqIHdpdGhpbiBhIGZpbGUKPiB0byBmaW5kIHRoZSBtYXRj
aGluZyB2bWEgb2YgdGhpcyBjb250ZXh0LiBTaW5jZSB3ZSBrbm93IHdlIGFyZSBzZWFyY2hpbmcK
PiBmb3IgYSBwYXJ0aWN1bGFyIHZtYSBib3VuZCB0byBhIHVzZXIgY29udGV4dCwgd2UgY2FuIHVz
ZSB0aGUgcmJ0cmVlIHRvCj4gc2VhcmNoIGZvciBpdCByYXRoZXIgdGhhbiByZXBlYXRlZGx5IHdh
bGsgZXZlcnl0aGluZy4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRA
aW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
