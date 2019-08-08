Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 260C886111
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 13:45:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D6D06E4A0;
	Thu,  8 Aug 2019 11:45:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7B686E823
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 11:45:01 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id b64so18681945vke.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Aug 2019 04:45:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ICwD9Qup7d/UDXd4osHMbVA54rkX3xZY0QkIi9UJu+A=;
 b=qpw/CMzoriSE+ZsvVRzjjvOJwUdvvtu4THJTBYZr2RyAo7rtUnsJvNFdw8zBJTQaND
 ltTD7CuJhqBRRTQ9Blhvn/Dm6N24t/KTd+omCRnY73NWeGiCSHeZB8owCbe5C+q/U+EO
 YIUxE4vDtc2OBjM0gJek2FtA3M1jhKAkrsaHa4gXXNgO/fLE2b4Z+0/w118+AZG+T03k
 z5jmXUZRubUqvRcszTlb5EdBk9RscO9YGMNfW+80IbD1J9eyFLBc6QLF9gKePzAa/P43
 pNN9ztjFQ6C9qhA42o+CMZEWGmjhgQ/Qnmrs0WC2HGZq4Lq/yHP9eFWNr7c5h9ifeGlQ
 cUww==
X-Gm-Message-State: APjAAAUVLy8qa0zEw5au5iQap//HhbG+lm1htF9VBeyhc1DkG+c49lS8
 USpPSxUp1r/RmxuHBLDqm/ifYLjtC7U20napGtih3g==
X-Google-Smtp-Source: APXvYqzYKJGu7+aYHuT0EM33w/OndmtAtRp/8/Mz/NxJuyk/PvUhiMLLElahce0Io9uTspbwfYVsBb29cvPcRBWoQWI=
X-Received: by 2002:a1f:8641:: with SMTP id i62mr5491009vkd.79.1565264700680; 
 Thu, 08 Aug 2019 04:45:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190808074207.18274-1-chris@chris-wilson.co.uk>
 <20190808074207.18274-5-chris@chris-wilson.co.uk>
In-Reply-To: <20190808074207.18274-5-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 8 Aug 2019 12:44:34 +0100
Message-ID: <CAM0jSHNoN4FWuJRSEMbECrfHRFQPUZ5UEPN42B5mhG1twXEjuw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=ICwD9Qup7d/UDXd4osHMbVA54rkX3xZY0QkIi9UJu+A=;
 b=Rn5cI5mo61FCW7HcynGeKpyELGUhBlX9VOw/pbjGSeV2cN0dk5gvNBLHEAwCipj2Gi
 KNyndsiruTxOB2CClKEWIRkLw/92ZrQt3iOqq36Uo7qW3VIIdF8HXofM8HMnLnN+Ggvr
 rGfW+s+mSeCWCUOAbtqPfAzO+ZTjMTCI95CCfH/1C5PINGttlaNmof2JvaNJsBtZF6NF
 yOg2bISWz+bHHUjMJbqY2hTweiNHQmvWPUrstrtVWF68uBKti3RDLlGHVJbAmo3Zs04I
 PPnb3YgLlSEj40pIx2hQBW3GBSsBXYYubuJTMUyDpGMN34Oc3wXhUfo6zA55lnUfDZnd
 BX1g==
Subject: Re: [Intel-gfx] [PATCH 05/19] drm/i915/selftests: Pass
 intel_context to mock_request
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
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBNb2Rlcm5pc2UgdGhlIG1vY2tfcmVxdWVzdCBmYWN0b3J5
IHRvIHRha2UgaW50ZWxfY29udGV4dCBub3QgYSAoR0VNCj4gY29udGV4dCwgaW50ZWxfZW5naW5l
X2NzKSB0dXBsZS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50
ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
