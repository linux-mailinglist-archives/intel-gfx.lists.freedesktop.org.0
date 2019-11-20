Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CDF1037A4
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 11:34:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F61F6E203;
	Wed, 20 Nov 2019 10:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com
 [IPv6:2607:f8b0:4864:20::a41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF3F26E1BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 10:34:54 +0000 (UTC)
Received: by mail-vk1-xa41.google.com with SMTP id s4so3745491vkk.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 02:34:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gi6PEodcWJ+oAzKkqgi5/BeYR4D5IxvWlDsQE9j1GDw=;
 b=bnCgqUMyLF6c0ndgIUt5sGfO9xaEnp8qs67Q5/K3mMPJeHSqSuosZqszH/knuXnAj8
 nPzeNtHzIUe+nAwBS/IdFNrDjfaO1VsG68IVZkYht8LNRtT8+/sz7iwyZGPeDmsXKFJb
 +r/vzPjwpvDUKV8p1beW8JHrgyZNwUgzsAn+jq+SFaHGJW0OloijD/GC5w2WgJTbdUmm
 vpg+ddqg1gHGieiyf8oqcdaowAFsWWkLrbG0kkrbHXgr1a2a1Tm6A8r6cdrfgQknvEfK
 0h08zb9w+RliWlDcwFtiIJdf0vI9NOF5Y7r58MlmbmbMjixu1ywskNK/N6HCQ/3YGoU1
 QvaA==
X-Gm-Message-State: APjAAAVRRKBT2uLicpr2C/5zYTugIxihPRDghO2Yhon2RuTB6c3WjiSj
 yNWziKDAS7eZ3DscbQKCs9isH0qytOEj6+8NC0FGGwF1
X-Google-Smtp-Source: APXvYqw07lhK2iGeAPwev8chPgfCrLPHbJJyqrEFFXNNf4faTwUxeDO+cec9+WrUZCAY3jUc2WTsH3k7W8pCT5mCtmE=
X-Received: by 2002:ac5:cddc:: with SMTP id u28mr758778vkn.12.1574246093847;
 Wed, 20 Nov 2019 02:34:53 -0800 (PST)
MIME-Version: 1.0
References: <20191120093302.3723715-1-chris@chris-wilson.co.uk>
 <20191120102741.3734346-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191120102741.3734346-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 20 Nov 2019 10:34:27 +0000
Message-ID: <CAM0jSHOCxtNXVjWOec_hcNx=LCKgWvmR2BiJNdLMvXz3pZUhXg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Gi6PEodcWJ+oAzKkqgi5/BeYR4D5IxvWlDsQE9j1GDw=;
 b=ev18AsbXQklfUfUX2ft2mWjHkRE0/0G8HArc6zHP548biRMtsnts8nf6nUCLEWLuJH
 ULo09tznK5+CSCofQVIEypWAJvEO+vOJpgUzk/23K25BXRderF791lRdO6t3FGR5Kps9
 QLl5z5NjkW9kDXMKmlA7oOkThUoGLeSbT6fsURSBtbzSilReu+H7OQO+/E3R0lMF465A
 66ciiyrNFJR6I6nezISF/cde+qrm8t0uulRph0sBGMsq1e7Qe41/cPk9zkDtyvIJsssI
 r+5imvw4qrgm2H7HnKTcSA+6IRjsWto7Tkx91pmGKFQk1qh2a2GEbYuEK8UGMYhbKPEk
 xfUg==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Take a ref to the
 request we wait upon
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

T24gV2VkLCAyMCBOb3YgMjAxOSBhdCAxMDoyOCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gaTkxNV9yZXF1ZXN0X2FkZCgpIGNvbnN1bWVzIHRoZSBw
YXNzZWQgaW4gcmVmZXJlbmNlIHRvIHRoZSBpOTE1X3JlcXVlc3QsCj4gc28gaWYgdGhlIHNlbGZ0
ZXN0IGNhbGxlciB3aXNoZXMgdG8gd2FpdCB1cG9uIGl0IGFmdGVyd2FyZHMsIGl0IG5lZWRzIHRv
Cj4gdGFrZSBhIHJlZmVyZW5jZSBmb3IgaXRzZWxmLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0
dGhldy5hdWxkQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5h
dWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
