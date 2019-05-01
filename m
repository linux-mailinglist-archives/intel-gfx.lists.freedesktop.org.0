Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDD610D0B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 21:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D936F89254;
	Wed,  1 May 2019 19:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE080892C1
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 19:09:23 +0000 (UTC)
Received: by mail-qt1-x842.google.com with SMTP id i31so12294915qti.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 May 2019 12:09:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=A8ekHoZzNtikEQk+7DGoOR8lW0ADGu9tUhOQO4eJXlQ=;
 b=twzR6ryRHQt0kpk+TZhN9n9I9sUY+YG32DIH8/a+NST1YEb0jydGpZbpGxd8IR0+11
 8LUGkCWg2GgyEoOZIH9Db5XWfM359qQfd1pjeGt0Zq6kG47P12b5O8ljUPn96Y5kDBwS
 a26XFomUW/mGo64YRJZJMGdHtgxN2PlrM/UuibjEuVrVVa9ezyXg1Qup/ziAXGp6EZQD
 rsKCQvrv3vZun/cWUe2wDPu9FQ4amYuLX79D1sGb9vE9PfKPod6myw7De2+udBZTIsVc
 ZdcvnmMLWXD8UlaOi4r1vifztLnx/JF1DS179CDETYpREYE99LY5j8N9mtQUkDV/T3R/
 iwAw==
X-Gm-Message-State: APjAAAUGftGDJTfGGcxyrVHRzhjPegbJOq6AkxvdWWARGJ1lqANa5DKh
 KaIzFIGg/rcKu1l2JuDBFlG2AA==
X-Google-Smtp-Source: APXvYqxZmYKDhwPB8Jo2bT5iVZERa6msTGD9UHq8HGaeLrUTnimIiL9nt9+6WT2xr1E7t9nvmgkeKA==
X-Received: by 2002:aed:3b33:: with SMTP id p48mr61752528qte.180.1556737762878; 
 Wed, 01 May 2019 12:09:22 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id a57sm8723497qtk.63.2019.05.01.12.09.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 12:09:22 -0700 (PDT)
Date: Wed, 1 May 2019 15:09:21 -0400
From: Sean Paul <sean@poorly.run>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190501190921.GA120430@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=A8ekHoZzNtikEQk+7DGoOR8lW0ADGu9tUhOQO4eJXlQ=;
 b=DRtAaJAuyw4oGuNr/JILi3JHJsEUlt0G/6JtRDewOjUtw4j+9rFEqb07NG/i7JBx6q
 5rBCZ7/SCTne6WoYeXF52rQDjKYr/D8UbHkiSnT+kkY9F4Jv3JsjUwnMMx2eCU1uRq11
 0qc1v/soH0zyB2Co3HuXjB4QKM1ATxnBatn4JLqVJwCj8XkGcIE4FCpFKyN/Nh7Keaf7
 v+a7VPIuHo1QQ8UMKEOyHPZMp3vGvik4jV3DgDRsX4L0Pv6izeD+a5WiwGdbwZi97/YJ
 GsqQ9EQj6D62L63VEYLobjVzjeqUr6pcAoGptfXqWvY3yAV5agZMAOmZypmgmu9FmWhR
 IDxw==
Subject: [Intel-gfx] [PULL] drm-misc-next-fixes
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
Cc: Philip Yang <Philip.Yang@amd.com>, dim-tools@lists.freedesktop.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, intel-gfx@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkhpIERhLiosClF1aWV0IHdlZWsgc2luY2UgdGhlIGxhc3QgUFIsIEknZCBzYXkgd2UncmUgcmVh
ZHkgZm9yIHRoZSBtZXJnZSB3aW5kb3chCgoKZHJtLW1pc2MtbmV4dC1maXhlcy0yMDE5LTA1LTAx
Ogpjb3JlOiByZXN0b3JlIGRybSBtbWFwX3JhbmdlIHNpemUgYmFjayB0byAxVEIgKFBoaWxpcCkK
c3BoaW54OiBzcXVhc2ggd2FybmluZyAoU2VhbikKCkNjOiBQaGlsaXAgWWFuZyA8UGhpbGlwLllh
bmdAYW1kLmNvbT4KQ2M6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgoKQ2hlZXJz
LCBTZWFuCgoKVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCAxZGU3MjU5Mjc1Y2E0
ZWJjNjY0NTlkZTY2MjA1NThkM2UzOGQ0MTQyOgoKICBkcm0vZmItaGVscGVyOiBGaXggZHJtX2Zi
X2hlbHBlcl9maXJtd2FyZV9jb25maWcoKSBOVUxMIHBvaW50ZXIgZGVyZWYgKDIwMTktMDQtMjQg
MTU6NTc6NDMgKzAyMDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoK
CiAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZHJtL2RybS1taXNjIHRhZ3MvZHJtLW1p
c2MtbmV4dC1maXhlcy0yMDE5LTA1LTAxCgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8g
NzYxZTQ3M2Y2YjIzZjIwNjg2MmQ5MDRhMWE1ZmNiYzAxMjY1NmI0NzoKCiAgZHJtL2dlbTogRml4
IHNwaGlueCB3YXJuaW5ncyAoMjAxOS0wNC0yNSAxMDowMjoxMCAtMDQwMCkKCi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KY29y
ZTogcmVzdG9yZSBkcm0gbW1hcF9yYW5nZSBzaXplIGJhY2sgdG8gMVRCIChQaGlsaXApCnNwaGlu
eDogc3F1YXNoIHdhcm5pbmcgKFNlYW4pCgpDYzogUGhpbGlwIFlhbmcgPFBoaWxpcC5ZYW5nQGFt
ZC5jb20+CkNjOiBTZWFuIFBhdWwgPHNlYW5wYXVsQGNocm9taXVtLm9yZz4KCi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KUGhp
bGlwIFlhbmcgKDEpOgogICAgICBkcm06IGluY3JlYXNlIGRybSBtbWFwX3JhbmdlIHNpemUgdG8g
MVRCCgpTZWFuIFBhdWwgKDEpOgogICAgICBkcm0vZ2VtOiBGaXggc3BoaW54IHdhcm5pbmdzCgog
ZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyAgICAgfCAxMCArKysrKy0tLS0tCiBpbmNsdWRlL2Ry
bS9kcm1fdm1hX21hbmFnZXIuaCB8ICAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKCi0tIApTZWFuIFBhdWwsIFNvZnR3YXJlIEVuZ2luZWVyLCBH
b29nbGUgLyBDaHJvbWl1bSBPUwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
