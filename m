Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D533A8F3BA
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 20:40:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2335A6E456;
	Thu, 15 Aug 2019 18:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBF836E456
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 18:40:50 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id a97so1150574uaa.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 11:40:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QxgVgLmqOsaCAPG204QvSjLCWwButz/tlVEoZkHZ1GI=;
 b=EIP2UzdkIVSYTLVfQLbV8OU3greq5bvAyzyG/Zhy6gfZUtRLOyuKtav2Ctmb9ztVCu
 ZMf7HBBz7CYbdD0IR3MDJF/1ydnxFnUNYJ8+7dUnJBOa+yrx9yxgC0C5/8wuSCNX1r6C
 yG4vxJ5+khDMyzi9hgwfwOj59oahAT5MTPSNRiUwZtTxaHHs1HpNn+CiHkRIg4MqmPr6
 9ziL9EzuiamQhOXn4W/c+E7VNiLxJd7yU20aAkR8ftpSydM5m4b64MZfHQlCOZssBhFG
 IDZRgAN5Z8o5Fw1b2W43e8owYgvgXm7WKOQfz6vNA3hqTeveXukvJbxhQAG24aYrwZVV
 OzJQ==
X-Gm-Message-State: APjAAAW9oLtt/o9vXstyaGUpG8u078b83NIWd2sV8UDpaAq7rl2gSPC6
 IP2J4dOIbQtzJaxAEjG4GZIc9jO1SMIxshssrac=
X-Google-Smtp-Source: APXvYqwvQN6xem+TPqPg0sqvrVSqGo1oPsXmLhid1zyiheScUzf2d2Xry05R4Nv4AXU33TdqIRZbODTIF3lR9G20ihM=
X-Received: by 2002:a9f:25e9:: with SMTP id 96mr4169871uaf.95.1565894449865;
 Thu, 15 Aug 2019 11:40:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190814092643.1908-1-chris@chris-wilson.co.uk>
 <20190814092643.1908-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190814092643.1908-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 15 Aug 2019 19:40:23 +0100
Message-ID: <CAM0jSHO+nKcM8A9E9Xqeo4w5jMDV50qSKLEW5UydYBzEi0qfMg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=QxgVgLmqOsaCAPG204QvSjLCWwButz/tlVEoZkHZ1GI=;
 b=KqxrPA3Kxkf3P4JmaKGBquX1b88fmPRjf+zsaIdid/jjyQRM8sYECu+Pj0gaa52K/1
 8zsPTPsBCu13W2g+o76BfckwFuxWXuTQFpDvWECfVW5FRXE1mjWrcL1MMectzPk8qt7H
 yxJPfvTCBHxXFZb1i6GT69BkNuC3Aqomluvp5EY85puXGvGlyPfiaML/YkwCWByfZEPF
 X2cZ9EYdPT1gsMAwCewiZXET4FOX6N3w4Z6zGlnX6hOaf/P+OHlsim3SBDfWdU6LMZR9
 soJivH63qeQsGpJysnx3WHcNEqkPCGryx/xX+9uZY4nZj/9Q24Ih1RDon5RmwFaTEmvr
 JOqg==
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/gt: Track timeline activeness
 in enter/exit
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

T24gV2VkLCAxNCBBdWcgMjAxOSBhdCAxMDo0NCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gTGlmdCBtb3ZpbmcgdGhlIHRpbWVsaW5lIHRvL2Zyb20g
dGhlIGFjdGl2ZV9saXN0IG9uIGVudGVyL2V4aXQgaW4gb3JkZXIKPiB0byBzaG9ydGVuIHRoZSBh
Y3RpdmUgdHJhY2tpbmcgc3BhbiBpbiBjb21wYXJpc29uIHRvIHRoZSBleGlzdGluZwo+IHBpbi91
bnBpbi4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29t
PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
