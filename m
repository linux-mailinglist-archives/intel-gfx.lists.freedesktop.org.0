Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B97B27DC0
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 15:11:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD5A89E14;
	Thu, 23 May 2019 13:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67A7089E11
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 13:11:28 +0000 (UTC)
Received: by mail-ot1-x341.google.com with SMTP id t24so5308450otl.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 06:11:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2NQoQ/laq1oYfg4OPGpMMgUuGm2m5zflmCWAX0cf5lI=;
 b=sOahtJx7zNEoDSExfmCIqdCrAtzbTxPsuEB+zJt0M8hzgzp9mNaqqrD1XaPVORGyAi
 x1wcCZCdeDlxUbRAbCu6q9xDneIhMLoiiSh8HLjwKHSXI2Swu4/Bu83I3tUdCJcwbzw4
 WDj/rkNWh5iEN4qqovTLcBpQ5hkV1eQ9YYy5mVUbFoczRc0xdlpMFPptKNUE8bhW7ffx
 B4MzINgikrjta4rFAO+/HrP2HV/Kn8hp4DM4MIbDMtVjHuroe+ClsopVMIeejzFgLstq
 ZN9M8crZDjqKJ3ebKwizI0Jy96OjQ3hKvedM4clBVUI6Yx7EE9QsXABCJe3yNOK7W33X
 0L6A==
X-Gm-Message-State: APjAAAU9Z+q4eLyV/RSx7BDW99u3R1/QU1/JmANGJFg/arglEpQX1PkI
 jJuYU6N+U42bd1JTqdvvWfqrEWYeJG/ZhnaIJNy/ng==
X-Google-Smtp-Source: APXvYqxgNgKbbCitW3Ugw4bFFPH6+OTbWM7dO+fzhxCE451+DtNbDtUKJoByZC2Umozp0zdgCnY8j7F2+VioH+/8mMU=
X-Received: by 2002:a05:6830:16d2:: with SMTP id
 l18mr24911325otr.303.1558617087702; 
 Thu, 23 May 2019 06:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190521105151.51ffa942@canb.auug.org.au>
 <20190523115355.joyeqlmbjkufueyn@flea>
 <20190523230409.31da92b9@canb.auug.org.au>
In-Reply-To: <20190523230409.31da92b9@canb.auug.org.au>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 23 May 2019 15:11:15 +0200
Message-ID: <CAKMK7uHvUFtRNn5j6TnmBrs5ndkSuNwJWzB026j2zczaV9O_Tg@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=2NQoQ/laq1oYfg4OPGpMMgUuGm2m5zflmCWAX0cf5lI=;
 b=BLXPB4DCl41HOQ1mf12XPci8Inwo2NGNn83mwHy63yYcRGpk3jGl+Gpy04h6PXXBSI
 F93f4WfGJQd0hNostZDzlKKtImjU9WJerCK9kY/88Ob2luPK+3+A6tlCt4DcdH1BMiTF
 QsNVB0p0EM1m2Srhnl46IU3Xzdax90S8M1Trg=
Subject: Re: [Intel-gfx] linux-next: manual merge of the drm-misc tree with
 Linus' tree
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jyri Sarha <jsarha@ti.com>, Marco Felsch <m.felsch@pengutronix.de>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Sean Paul <seanpaul@chromium.org>, DRI <dri-devel@lists.freedesktop.org>,
 Thierry Reding <treding@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMzowNCBQTSBTdGVwaGVuIFJvdGh3ZWxsIDxzZnJAY2Fu
Yi5hdXVnLm9yZy5hdT4gd3JvdGU6Cj4KPiBIaSBNYXhpbWUsCj4KPiBPbiBUaHUsIDIzIE1heSAy
MDE5IDEzOjUzOjU1ICswMjAwIE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5j
b20+IHdyb3RlOgo+ID4KPiA+IE9uIFR1ZSwgTWF5IDIxLCAyMDE5IGF0IDEwOjUxOjUxQU0gKzEw
MDAsIFN0ZXBoZW4gUm90aHdlbGwgd3JvdGU6Cj4gPiA+Cj4gPiA+IFRvZGF5J3MgbGludXgtbmV4
dCBtZXJnZSBvZiB0aGUgZHJtLW1pc2MgdHJlZSBnb3QgYSBjb25mbGljdCBpbjoKPiA+ID4KPiA+
ID4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnR4
dAo+ID4gPgo+ID4gPiBiZXR3ZWVuIGNvbW1pdDoKPiA+ID4KPiA+ID4gICA4MTIyZGU1NDYwMmUg
KCJkdC1iaW5kaW5nczogQ29udmVydCB2ZW5kb3IgcHJlZml4ZXMgdG8ganNvbi1zY2hlbWEiKQo+
ID4gPgo+ID4gPiBmcm9tIExpbnVzJyB0cmVlIGFuZCBjb21taXRzOgo+ID4gPgo+ID4gPiAgIGI0
YTJjMDA1NWE0ZiAoImR0LWJpbmRpbmdzOiBBZGQgdmVuZG9yIHByZWZpeCBmb3IgVlhUIEx0ZCIp
Cj4gPiA+ICAgYjFiMGQzNmJkYjE1ICgiZHQtYmluZGluZ3M6IGRybS9wYW5lbDogc2ltcGxlOiBB
ZGQgYmluZGluZyBmb3IgVEZDIFM5NzAwUlRXVjQzVFItMDFCIikKPiA+ID4gICBmYmQ4YjY5YWI2
MTYgKCJkdC1iaW5kaW5nczogQWRkIHZlbmRvciBwcmVmaXggZm9yIEV2ZXJ2aXNpb24gRWxlY3Ry
b25pY3MiKQo+ID4gPgo+ID4gPiBmcm9tIHRoZSBkcm0tbWlzYyB0cmVlLgo+ID4KPiA+IEkganVz
dCB0b29rIHlvdXIgcGF0Y2ggYW5kIHB1c2hlZCBhIHRlbXAgYnJhbmNoIHRoZXJlOgo+ID4gaHR0
cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbXJpcGFyZC9saW51
eC5naXQvY29tbWl0Lz9oPWRybS1taXNjLW5leHQmaWQ9MzgzMmYyY2FkNTMwN2ViY2VkZWVhZDEz
ZmJkOGQzY2YwNmJhNWU5MAo+ID4KPiA+IFJvYiwgU3RlcGhlbiwgYXJlIHlvdSBvayB3aXRoIHRo
ZSBjaGFuZ2U/IElmIHNvLCBJJ2xsIHB1c2ggaXQuCj4KPiBBbGwgdGhhdCBuZWVkcyB0byBiZSBk
b25lIGlzIGZvciBteSBwYXRjaCAoc2xpZ2h0bHkgY29ycmVjdGVkKSBuZWVkcyB0bwo+IGJlIGFw
cGxpZWQgdG8gdGhlIGRybS1taXNjIHRyZWUuICBUaGF0IHRyZWUgYWxyZWFkeSBoYXMgdGhlIGJh
Y2sgbWVyZ2UKPiBvZiBMaW51cycgdHJlZSBhbmQgdGhlIHR4dCBmaWxlIGhhcyBiZWVuIHJlbW92
ZWQgKG15IHBhdGNoIHNob3VsZCBoYXZlCj4gYmVlbiBhcHBsaWVkIGFzIHBhcnQgb2YgdGhlIG1l
cmdlIHJlc29sdXRpb24gYnV0IGRvaW5nIGl0IGxhdGVyIGlzIGZpbmUpLgoKVGhhdCBjb21taXQg
aXMgb24gdG9wIG9mIGRybS1taXNjLCBhbmQgc29tZWhvdyB0aGUgLnR4dCB2ZXJzaW9uIGhhcwpi
ZWVuIHJlc3VycmVjdCBpbiBkcm0tbWlzYy1uZXh0IChzbyBuZWVkcyB0byBiZSByZS1kZWxldGVk
IHRvbykuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVs
IENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
