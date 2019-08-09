Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1154883AF
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 22:11:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA936EE91;
	Fri,  9 Aug 2019 20:11:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979AF6EE91
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 20:11:45 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id r1so207323wrl.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Aug 2019 13:11:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=33J6hcH2HYc/2SD598sQ3T89Yhn76Qy1ADbBG1GDC0o=;
 b=TxXCacEpOTV2WAfOR78yCZp0ah6hDXXIux877pmcFyTrjqO1XCA4wK88a7ddYriu7j
 h0xyCcHs7cqXzKwFB/BhWYWScC/o9yAUFdokJr1lJ183PcyUplys0twFk/VqfjE+XVDX
 68dj7npRHd2YtlK2cpyYEcKvT2/yWSZhgCQepleFsRn5VRw603ldwKx/VhKe/n21J0WA
 PFrX8PIPB9rDBfBzVJOf07Q9IwZKmlIrFPkfqrkh013GDRimBu6QCwgJ72WZ8iFg9cD4
 2FliTb5C5Uy7zzbw4IV1TAmR3PuztGxs7+v0/kgL+se/rIGc2BcgQ3R0fhRviCM8b9dd
 am8Q==
X-Gm-Message-State: APjAAAXb300VER/l7tfeP1vDLkBNdprtKH7g7L3VV2/ov4yPXE7NV5hg
 dGBRqR3cR4Qvd5hUx/hDA+MnjGAtJ2bCaxbPvUA=
X-Google-Smtp-Source: APXvYqz0exDywPgcVRqLNQZMypGQRjFJA/Zqg/3boLLQ4hSQlQ0sb7OyAOqZivtVWIt3mA2nHUaqta2NqrbHO7maF+o=
X-Received: by 2002:adf:f54a:: with SMTP id j10mr7271950wrp.220.1565381504029; 
 Fri, 09 Aug 2019 13:11:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190808172226.18306-1-chris@chris-wilson.co.uk>
 <CAM0jSHP0BZJyJO3JeMqPDK=eYhS-Az6i6fGFz1tUQgaErA7mfA@mail.gmail.com>
 <156537674371.32306.7527004745489566049@skylake-alporthouse-com>
In-Reply-To: <156537674371.32306.7527004745489566049@skylake-alporthouse-com>
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 9 Aug 2019 22:11:30 +0200
Message-ID: <CA+icZUVy2P6jm-36jWErJA9q=SX3ORyKnoxhKGB5qz=xZkPrUw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=33J6hcH2HYc/2SD598sQ3T89Yhn76Qy1ADbBG1GDC0o=;
 b=DnfnsGgcPMmRHKwXnNaf58qgyjzoIuiCLIfMUs66yGXQt8yAQXsUjwGlY/hw/sUMsf
 gygQBRnWCF3QUO/l+3mSuyoDBSG0YdCDL3guXxi3aG4nybUoQz+dt/NPDLthm/dBAt8q
 ARPR12Krx0rcGrElO0Z4WN5p0xT/oBn1dGfALlQiYuCpkFnc95SOUDtIrnYLey4Dqc9h
 14DkLmcnQKFrwsiehpWYujU3Uv/LBSbBDutcQk/AsOwlXyHW8GmmoK8jK5QQ6BywfLec
 hp4zA+4eZXX3GHutPNLO7q1SodMx4QAZQNg3mc8p073+mT0XiiVERMCHuHdBBEfKLXt0
 lSrA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop reconfiguring our shmemfs
 mountpoint
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
Reply-To: sedat.dilek@gmail.com
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Hugh Dickins <hughd@google.com>, kernel list <linux-kernel@vger.kernel.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>, linux-fsdevel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgOSwgMjAxOSBhdCA4OjUyIFBNIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPiB3cm90ZToKPgo+IFF1b3RpbmcgTWF0dGhldyBBdWxkICgyMDE5LTA4LTA5
IDE5OjQ3OjAyKQo+ID4gT24gVGh1LCA4IEF1ZyAyMDE5IGF0IDE4OjIzLCBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4gPiA+Cj4gPiA+IFRoZSBmaWxlc3lz
dGVtIHJlY29uZmlndXJlIEFQSSBpcyB1bmRlcmdvaW5nIGEgdHJhbnNpdGlvbiwgYnJlYWtpbmcg
b3VyCj4gPiA+IGN1cnJlbnQgY29kZS4gQXMgd2Ugb25seSBzZXQgdGhlIGRlZmF1bHQgb3B0aW9u
cywgd2UgY2FuIHNpbXBseSByZW1vdmUKPiA+ID4gdGhlIGNhbGwgdG8gc19vcC0+cmVtb3VudF9m
cygpLiBJbiB0aGUgZnV0dXJlLCB3aGVuIEhXIHBlcm1pdHMsIHdlIGNhbgo+ID4gPiB0cnkgcmUt
ZW5hYmxpbmcgaHVnZSBwYWdlIHN1cHBvcnQsIGFsYmVpdCBhcyBzdWdnZXN0ZWQgd2l0aCBuZXcg
cGVyLWZpbGUKPiA+ID4gY29udHJvbHMuCj4gPiA+Cj4gPiA+IFJlcG9ydGVkLWJ5OiBTZXJnZXkg
U2Vub3poYXRza3kgPHNlcmdleS5zZW5vemhhdHNreUBnbWFpbC5jb20+Cj4gPiA+IFJlcG9ydGVk
LWJ5OiBTZWRhdCBEaWxlayA8c2VkYXQuZGlsZWtAZ21haWwuY29tPgo+ID4gPiBTdWdnZXN0ZWQt
Ynk6IEh1Z2ggRGlja2lucyA8aHVnaGRAZ29vZ2xlLmNvbT4KPiA+ID4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiA+IENjOiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gPiA+IENjOiBIdWdoIERpY2tpbnMgPGh1
Z2hkQGdvb2dsZS5jb20+Cj4gPiA+IENjOiBBbCBWaXJvIDx2aXJvQHplbml2LmxpbnV4Lm9yZy51
az4KPiA+ID4gQ2M6IFNlcmdleSBTZW5vemhhdHNreSA8c2VyZ2V5LnNlbm96aGF0c2t5QGdtYWls
LmNvbT4KPiA+IFJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5j
b20+Cj4KPiBUaGFua3MsIHBpY2tlZCB1cCB3aXRoIHRoZSBzL3dpdGhpbi93aXRoaW5fc2l6ZS8g
Zml4Lgo+IC1DaHJpcwoKRm9yIHRoZSByZWNvcmRzIGFuZCBmb2xsb3dlcnM6CgpbMV0gaHR0cHM6
Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0taW50ZWwvY29tbWl0Lz9oPWZvci1saW51eC1uZXh0
JmlkPTcyZTY3ZjA0NjM3NDMyZjkxZTRjYzVlOGU0ZjdlYjRlMzg0NjFlOGUKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
