Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5BE32AA63
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 20:31:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 896916E24E;
	Tue,  2 Mar 2021 19:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AAE86E24E
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 19:31:34 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id 7so21137397wrz.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Mar 2021 11:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=J7f52s9d2YA/9cN5ZI2Z363Hl2kslZHhf+ehtCuXh/I=;
 b=Nfovyfi55gj/KCK7KpWj5CAotkxxSGiAXJkWnIi/Ksv3weSmgpjJBhd4jVOguKSKzF
 WgeO/dmREQquChtdfRY8qV3hxeRCNT6+8pjtSBeUYsj+pnQN5IVU7ojRbNDOkUAQj86o
 DvcQSLkDEMmUrKIb/zR/k+TJimmqM8c60w2+da80cFPYjUviKzxBZ+vQVsIWlGEiybzL
 pEW1c9KPrcDVFe3T4GyS4T3jY0E5MqQjGnE+VTADb4wqXunQ0GuiyQ81cKHfnzPBlIlW
 Wrg6Sr3Ad2X7V3PGNcTC9YLZ7sRpivysaw79vUSYsVo8+4L7hBeHEmZ9QYRkCddj4PcJ
 OdFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=J7f52s9d2YA/9cN5ZI2Z363Hl2kslZHhf+ehtCuXh/I=;
 b=YkjTWfWzBi7WaBCm62HVJBftOyhAT3wZNE/LDYqEOanCVptpeDpd9g8wGFCyxrkZjs
 YwyttUFtc2i/Q6n+Hpu7+dAB+6BYFVtTSPBI9/7uG1kX6efgiWjr0l1WCa1cS+0WcVzj
 /RyBkHSLYwpPvB6E4cmFmBjQ2cGllYbTOLpcbL3SfvsQUrrtKbkTZweSj0MZDYw/K8vb
 kEbm4tt+gKO7rZEiiBXNvzG0yJP4jnooYLIGxVP2iWH+T08Ufe04kZMIdrp/qACULYCd
 JyOye48NfkvXqoSgWRrQLqvJAOiCOeXb+T8Ckoawn8Rme1ODLLsWXPd3e+5/EH+sTtEy
 sZJw==
X-Gm-Message-State: AOAM530bDfG7nasaew0QvP7oiuJ0SR/iHGkrnLYp2PnRP99JqJYrCTNj
 cu9bSnZ2GkU+Qp68GZgdk16sXNrXUPqd4xO0Qlw=
X-Google-Smtp-Source: ABdhPJzs3L4ECrfHY1bWiya5Yt51zJt+ihLjwf2pvX8w5+LSgfnv8fz/BMIeKJNxpiVmQRwR8ReEXFnlo2+W+2eSxnY=
X-Received: by 2002:adf:e68e:: with SMTP id r14mr9629827wrm.273.1614713493144; 
 Tue, 02 Mar 2021 11:31:33 -0800 (PST)
MIME-Version: 1.0
References: <e12dfaac0aa242f4a10d8c5b920a98db@intel.com>
 <51946a94b1154605bd7dda2c77ab12fc@intel.com>
 <fb8a2d722d4b4c008eeb1ffae87233be@intel.com>
In-Reply-To: <fb8a2d722d4b4c008eeb1ffae87233be@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 3 Mar 2021 05:31:19 +1000
Message-ID: <CAPM=9tzLJAgjo=+JCNJrVaz3RY3D66tG+zdw_nCCTQGSwFbwCg@mail.gmail.com>
To: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>, 
 Linus Torvalds <torvalds@linux-foundation.org>, 
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [Intel-gfx] Public i915 CI shardruns are disabled
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAzIE1hciAyMDIxIGF0IDAzOjI3LCBTYXJ2ZWxhLCBUb21pIFAgPHRvbWkucC5zYXJ2
ZWxhQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBUaGUgcmVncmVzc2lvbiBoYXMgYmVlbiBpZGVudGlm
aWVkOyBDaHJpcyBXaWxzb24gZm91bmQgY29tbWl0cyB0b3VjaGluZwo+Cj4gc3dhcGZpbGUuYywg
YW5kIHJldmVydGluZyB0aGVtIHRoZSBpc3N1ZSBjb3VsZG7igJl0IGJlIHJlcHJvZHVjZWQgYW55
IG1vcmUuCj4KPgo+Cj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84
NzU0OS8KPgo+Cj4KPiBUaGlzIHJldmVydCB3aWxsIGJlIGFwcGxpZWQgdG8gY29yZS1mb3ItQ0kg
YnJhbmNoLiBXaGVuIG5ldyBDSV9EUk0gaGFzCj4KPiBiZWVuIGJ1aWx0LCBzaGFyZC10ZXN0aW5n
IHdpbGwgYmUgZW5hYmxlZCBhZ2Fpbi4KCkp1c3QgbWFraW5nIHN1cmUgdGhpcyBpcyBvbiB0aGUg
cmFkYXIgdXBzdHJlYW0uCgpEYXZlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
