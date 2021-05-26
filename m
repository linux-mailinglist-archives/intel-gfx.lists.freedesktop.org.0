Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 191BD39237B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 01:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553D86E88B;
	Wed, 26 May 2021 23:58:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC176E88B;
 Wed, 26 May 2021 23:58:05 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id k14so5198955eji.2;
 Wed, 26 May 2021 16:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Vw//m7Ix7E5DeRfJ+ysGKNt9weNBoFc1XN8VRnt8JTA=;
 b=uaQ4UQjhVXPlAIrU1lJoHQbgWwtpE+aLsqZs/mC2eXrWyr7Iy1ggEf/Dg4zIiPWPSj
 8R7PIzzFLlMO53rSbbmvQ0O01w+CygGexQ4Pco+1E9R1K1WSBHg/hMr9cxGRUs1sKYbX
 HhQH3H14kzui81qiWhLCuJ6eJ54YNgr7eI50muCD3WNw+XYTz9D3urnecGfLWPWn6Lev
 MyAShi81eOvQ1f1H2jaFQ5SGlSNymu418HOQ6dJIQuuaPe913Kp1dm7V3mU0qqTVp8O2
 rEwAMTx7G8EkegurtAfDHoQ+jJ9ZpqWur2wEsY3ZOBUyV4ebFkgptKFe8AIGo0NBW9KF
 Uohg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Vw//m7Ix7E5DeRfJ+ysGKNt9weNBoFc1XN8VRnt8JTA=;
 b=NdPPkVhF2Nlm5/ZXO7nGCZK1l9MmIKPLPcX96KckYmbDha/qqBiGBj4BEO+aMdPkws
 2kAkSiX2dQ6atOr+JnN253ebPqrjYe526WchJtP/sURIStXcFh4m3BIv9/MK3deF2T0s
 O49vqIK/cQAGAOt+e+hCbOLPuMFppQpFIRDo/Z0Ks75P16YOxaRw5aqSzvd7lvt/cnSN
 YL7z70npr/sd2iXPjtgMAtE9c3GC0pMGAPNkligPWaRjmBTBMdlb4C6Z4rUKkkIN9G0s
 jFQ1bZ1N0fCRcl5tWpeH9JNOuvnnKChZ2KvKhK2iGZC1c6VlFoR9TIHdNC2jGR9WObXG
 QyOg==
X-Gm-Message-State: AOAM531bzoHQ82Lx9R2U986UdwG60vnb19u2ELdgp0lnrjj42Ah61pTO
 kS3EcMFUZw2vb71fmmuoRWHAIuE6FhZuCmLIZ6Q=
X-Google-Smtp-Source: ABdhPJwR7+XBtCr7mkeHm/mOlfQ8MXGu/pcFbVuLPBG7JM1JFo1IdpCcrgRwd7WiFurKWAUkrGB8xASlFEufvFhQaRs=
X-Received: by 2002:a17:906:9258:: with SMTP id
 c24mr820470ejx.101.1622073483915; 
 Wed, 26 May 2021 16:58:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210526163730.3423181-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210526163730.3423181-1-daniel.vetter@ffwll.ch>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 27 May 2021 09:57:52 +1000
Message-ID: <CAPM=9tymmx=_1ukqG5x_EOQGHBo6wYNoD8KfuV+6AHBwd_XNBw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable gpu relocations
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNyBNYXkgMjAyMSBhdCAwMjozNywgRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBmZndsbC5jaD4gd3JvdGU6Cj4KPiBNZWRpYSB1c2Vyc3BhY2Ugd2FzIHRoZSBsYXN0IHVzZXJz
cGFjZSB0byBzdGlsbCB1c2UgdGhlbSwgYW5kIHRoZXkKPiBjb252ZXJ0ZWQgbm93IHRvbzoKPgo+
IGh0dHBzOi8vZ2l0aHViLmNvbS9pbnRlbC9tZWRpYS1kcml2ZXIvY29tbWl0LzE0NDAyMGMzNzc3
MDA4Mzk3NGJlZGY1OTkwMmI3MGI4ZjQ0NGM3OTkKPgo+IFRoaXMgbWVhbnMgbm8gcmVhc29uIGFu
eW1vcmUgdG8gbWFrZSByZWxvY2F0aW9ucyBmYXN0ZXIgdGhhbiB0aGV5J3ZlCj4gYmVlbiBmb3Ig
dGhlIGZpcnN0IDkgeWVhcnMgb2YgZ2VtLiBUaGlzIGNvZGUgd2FzIGFkZGVkIGluCj4KPiBjb21t
aXQgN2RkNGY2NzI5ZjkyNDNiZDcwNDZjNmYwNGMxMDdhNDU2YmRhMzhlYgo+IEF1dGhvcjogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gRGF0ZTogICBGcmkgSnVuIDE2
IDE1OjA1OjI0IDIwMTcgKzAxMDAKPgo+ICAgICBkcm0vaTkxNTogQXN5bmMgR1BVIHJlbG9jYXRp
b24gcHJvY2Vzc2luZwo+Cj4gRnVydGhlcm1vcmUgdGhlcmUncyBwcmV0dHkgc3Ryb25nIGluZGlj
YXRpb25zIGl0J3MgYnVnZ3ksIHNpbmNlIHRoZQo+IGNvZGUgdG8gdXNlIGl0IGJ5IGRlZmF1bHQg
YXMgdGhlIG9ubHkgb3B0aW9uIGhhZCB0byBiZSByZXZlcnRlZDoKPgo+IGNvbW1pdCBhZDVkOTVl
NGQ1Mzg3MzdlZDNmYTI1NDkzNzc3ZGVjZjI2NGEzMDExCj4gQXV0aG9yOiBEYXZlIEFpcmxpZSA8
YWlybGllZEByZWRoYXQuY29tPgo+IERhdGU6ICAgVHVlIFNlcCA4IDE1OjQxOjE3IDIwMjAgKzEw
MDAKPgo+ICAgICBSZXZlcnQgImRybS9pOTE1L2dlbTogQXN5bmMgR1BVIHJlbG9jYXRpb25zIG9u
bHkiCj4KPiBUaGlzIGNvZGUganVzdCBkaXNhYmxlcyBncHUgcmVsb2NhdGlvbnMsIGxlYXZpbmcg
dGhlIGdhcmJhZ2UKPiBjb2xsZWN0aW9uIGZvciBsYXRlciBwYXRjaGVzIGFuZCBtb3JlIGltcG9y
dGFudGx5LCBtdWNoIGxlc3MgY29uZnVzaW5nCj4gZGlmZi4gQWxzbyBnaXZlbiBob3cgbXVjaCBo
ZWFkYWNoZXMgdGhpcyBjb2RlIGhhcyBjYXVzZWQgaW4gdGhlIHBhc3QsCj4gbGV0dGluZyB0aGlz
IHNvYWsgZm9yIGEgYml0IHNlZW1zIGp1c3RpZmllZC4KPgo+IENjOiBKb24gQmxvb21maWVsZCA8
am9uLmJsb29tZmllbGRAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0
QGxpbnV4LmludGVsLmNvbT4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5A
bGludXguaW50ZWwuY29tPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xs
LmNoPgo+IENjOiAiVGhvbWFzIEhlbGxzdHLDtm0iIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4Lmlu
dGVsLmNvbT4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IENj
OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4gQ2M6
IERhdmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+CgpBY2tlZC1ieTogRGF2ZSBBaXJsaWUg
PGFpcmxpZWRAcmVkaGF0LmNvbT4KClRoYW5rcyBmb3IgbWFraW5nIHRoaXMgaGFwcGVuLCBob3Bl
IHRoZSBzb2Z0cGluIHdvcmxkIGlzIGEgaGFwcGllciBmdXR1cmUuCgpEYXZlLgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
