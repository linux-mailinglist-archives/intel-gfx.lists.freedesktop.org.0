Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 490F11760CC
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 18:13:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F9C6E5B9;
	Mon,  2 Mar 2020 17:13:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A7E6E519
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Mar 2020 20:49:35 +0000 (UTC)
Received: by mail-qk1-x72f.google.com with SMTP id q18so8192318qki.10
 for <intel-gfx@lists.freedesktop.org>; Sun, 01 Mar 2020 12:49:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=ctFlYZc6HUHPkZ/PoqBtjrj2bR26eaTaWv+grqAIqME=;
 b=z0bos5A6Msz2YvKAuezVAuk6jrgdlzUWzFDwyz1soc8CjaSlCMZ4XC3+yPy5uYEKzL
 0fRD8aJ3k4PqwNF9ruSnTQHK/ykquo9OWKiU1IjUTK2NhxvQZJo3Z9xJ+ZPDdLuOWNIj
 /gMX2sUzL0SVGbytwwNfjYVHqKA97PVdPmsrLI3pKPWkihl0tTrPth8y+cyE+a6V6+bV
 2diQiWNCKZcRiCAOqQpw66ekavENlq2qT2nGdhgTvy7SyGNfhpKAMPG4DiGMmvaERG6K
 3A9OQl8PlhUsV8REd3IBNu20HSLRxjLEXOCM+1VblqGpHnKx4K78q0xHFs+WmNxFWoVL
 j4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=ctFlYZc6HUHPkZ/PoqBtjrj2bR26eaTaWv+grqAIqME=;
 b=dSzuZxsQCBFvFv2K4ehJ2+0ezi8fFWKWOEdShoJRQwHhSfpqOddK83NUDe+DgNwhpG
 hwWd/QCQpKDDkHrPBXJ0Lbm6clyJgRvgQKEUQWPAXjL7mgAhYGLUrTRvGiWOQFLPPow8
 Hfn2NuPEknmDXaho57FvE5Oj6jLCAHgfqotb5+y+Jmxm4wjIKVg7UHGWIwoqIgSCpgoR
 GDCacwEn3mDbkeS2PKLbrXISziNzjcA2/sAX/61uWo15xssez/zEiwN0UGVHBNtWAC60
 cD4db+vkF1SUlcZW0C9ZjQO7tFLEaN6alpq4n6AKAAaO/ukn4mR7mizxOps7VwPG1R0e
 2xjw==
X-Gm-Message-State: APjAAAWMxLwTFBeKfeTYpqt8gwlWdSoK+qy43Gvrz9vNfuANwm0KrbCF
 rHk2s9sOhTndlVh7VAaWVUrFww==
X-Google-Smtp-Source: APXvYqyHXiNDDPeGGgLKzed5loN1pnVnysRrcmUtUrOaiY4xE2Uq4stkKT0fkuYEokIHWUMvha7+AA==
X-Received: by 2002:a05:620a:1364:: with SMTP id
 d4mr13441999qkl.391.1583095774854; 
 Sun, 01 Mar 2020 12:49:34 -0800 (PST)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id o4sm8815682qki.26.2020.03.01.12.49.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 12:49:34 -0800 (PST)
Message-ID: <8249d1d87a990d63a2743ecf2acb910e5992478a.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jason Ekstrand <jason@jlekstrand.net>, Jacob Lifshay
 <programmerjake@gmail.com>
Date: Sun, 01 Mar 2020 15:49:32 -0500
In-Reply-To: <17097bfa848.27ad.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
References: <CAKMK7uHHK2SsCfpmZwEUyTJJHsoccKoadoko3cEBOoYDFkmeAw@mail.gmail.com>
 <CAPM=9txcGPvFdSzMtYZXyqLKnWyacSMuHdoXdV63M53fLFVFpw@mail.gmail.com>
 <b398161ff7d0268454413058dc6c194cf93f5990.camel@collabora.com>
 <ece8ebe3-40ec-2457-02da-4fef19cbe8f6@intel.com>
 <6d2ec570f957b4504fb70e0b1f0632712a99dc0c.camel@collabora.com>
 <CAPj87rO7BuKQj2Kei3T7RdkFq5=TiuShBvtrPU2sn0iqMfXSTg@mail.gmail.com>
 <59f4ea1f13a9a9d37f7801b93061b4ae7dd595e2.camel@gmail.com>
 <d0ef47e45c83b342494e6781b808b4831a008836.camel@ndufresne.ca>
 <9b0b31b8-7610-d5c5-790a-617178cc8c1e@daenzer.net>
 <93d7158b1ab49e51d14d991d5bdb2dba38ad6025.camel@ndufresne.ca>
 <CAC2bXD5OzDYtAcWAhpM_7Wwkbp2hpRszejjA7d0rqoypVdyDvA@mail.gmail.com>
 <17097bfa848.27ad.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 02 Mar 2020 17:13:41 +0000
Subject: Re: [Intel-gfx] [Mesa-dev] gitlab.fd.o financial situation and
 impact on services
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
Cc: Erik Faye-Lund <erik.faye-lund@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Michel =?ISO-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 "X.Org development" <xorg-devel@lists.x.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 wayland <wayland-devel@lists.freedesktop.org>,
 "X.Org Foundation Board" <board@foundation.x.org>,
 Xorg Members List <members@x.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Mesa Dev <mesa-dev@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Discussion of the development of and with GStreamer
 <gstreamer-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFzb24sCgpJIHBlcnNvbmFsbHkgdGhpbmsgdGhlIHN1Z2dlc3Rpb24gYXJlIHN0aWxsIGEg
cmVsYXRpdmVseSBnb29kCmJyYWluc3Rvcm0gZGF0YSBmb3IgdGhvc2UgaW1wbGljYXRlZC4gT2Yg
Y291cnNlLCB0aG9zZSBub3QgaW1wbGljYXRlZAppbiB0aGUgQ0kgc2NyaXB0aW5nIGl0c2VsZiwg
SSdkIHNheSBqdXN0IGtlZXAgaW4gbWluZCB0aGF0IG5vdGhpbmcgaXMKYmxhY2sgYW5kIHdoaXRl
IGFuZCBldmVyeSBjaGFuZ2VzIGVuZC11cCBiZWluZyB0aW1lIGNvbnN1bWluZy4KCkxlIGRpbWFu
Y2hlIDAxIG1hcnMgMjAyMCDDoCAxNDoxOCAtMDYwMCwgSmFzb24gRWtzdHJhbmQgYSDDqWNyaXQg
Ogo+IEkndmUgc2VlbiBhIG51bWJlciBvZiBzdWdnZXN0aW9ucyB3aGljaCB3aWxsIGRvIG9uZSBv
ciBib3RoIG9mIHRob3NlIHRoaW5ncyBpbmNsdWRpbmc6Cj4gCj4gIC0gQmF0Y2hpbmcgbWVyZ2Ug
cmVxdWVzdHMKCkFncmVlZC4gT3IgYXQgbGVhc3QgSSBmb3Jlc2VlIHF1aXRlIGNvbXBsaWNhdGVk
IGNvZGUgdG8gaGFuZGxlIHRoZSBjYXNlCm9mIG9uZSBiYXRjaGVkIG1lcmdlIGZhaWxpbmcgdGhl
IHRlc3RzLCBvciB3b3JzdCwgd2l0aCBmbGlja3kgdGVzdHMuCgo+ICAtIE5vdCBydW5uaW5nIENJ
IG9uIHRoZSBtYXN0ZXIgYnJhbmNoCgpBIHNtYWxsIGNsYXJpZmljYXRpb24sIHRoaXMgZGVwZW5k
cyBvbiB0aGUgY2hvc2VuIHdvcmstZmxvdy4gSW4KR1N0cmVhbWVyLCB3ZSB1c2UgYSByZWJhc2Ug
Zmxvdywgc28gIm1lcmdlIiBidXR0b24gaXNuJ3QgcmVhbGx5Cm1lcmdpbmcuIEl0IG1lYW5zIHRo
YXQgdG8gbWVyZ2UgeW91IG5lZWQgeW91ciBicmFuY2ggdG8gYmUgcmViYXNlZCBvbgp0b3Agb2Yg
dGhlIGxhdGVzdC4gQXMgaXQgaXMgbXVsdGktcmVwbywgdGhlcmUgaXMgYWx3YXlzIGEgdGlueSBj
aGFuY2UKb2YgYnJlYWthZ2UgZHVlIHRvIG1pZC1haXIgY29sbGlzaW9uIGluIGNoYW5nZXMgaW4g
b3RoZXIgcmVwb3MuIFdoYXQgd2UKc2VlIGlzIHRoYXQgdGhlIHBvc3QgIm1lcmdlIiBjYW5ub3Qg
ZXZlbiBjYXRjaCB0aGVtIGFsbCAoYXMgd2UgYWxyZWFkeQpvYnNlcnZlZCBvbmNlKS4gSW4gZmFj
dCwgaXQgdXN1YWxseSBkb2VzIG5vdCBjYXRjaCBhbnl0aGluZy4gT3IgZWFjaAp0aW1lIGl0IGNh
Y2hlZCBzb21ldGhpbmcsIHdlIG9ubHkgbm90aWNlIG9uIHRoZSBuZXh0IE1SLjAgU28gd2UgYXJl
CnJlYWxseSBjb25zaWRlcmluZyBkb2luZyB0aGlzIGFzIGZvciB0aGlzIHNwZWNpZmljIHdvcmtm
bG93L3Byb2plY3QsIHdlCmZvdW5kIHZlcnkgbGl0dGxlIGdhaW4gb2YgaGF2aW5nIGl0LgoKV2l0
aCByZWFsIG1lcmdlLCB0aGUgY29kZSBiZWluZyB0ZXN0ZWQgYmVmb3JlL2FmdGVyIHRoZSBtZXJn
ZSBpcwpkaWZmZXJlbnQsIGFuZCBmb3IgdGhhdCBJIGFncmVlIHdpdGggeW91LgoKPiAgLSBTaHV0
dGluZyBvZmYgQ0kKCk9mIGNvdXJzZSA6LSksIHNwZWNpYWxseSB0aGF0IHdlIGhhZCBDSSBiZWZv
cmUgZ2l0bGFiIGluIEdTdHJlYW1lcgooanVzdCBub3QgcHJlLWNvbW1pdCksIHdlIGRvbid0IHdh
bnQgYSByZWdyZXNzIHRoYXQgZmFyIGluIHRoZSBwYXN0LgoKPiAgLSBQcmV2ZW50aW5nIENJIG9u
IG90aGVyIG5vbi1NUiBicmFuY2hlcwoKQW5vdGhlciBzbWFsbCBudWFuY2UsIG1lc2EgZG9lcyBu
b3QgcHJldmVudCBDSSwgaXQgb25seSBtYWtlcyBpdCBtYW51YWwKb24gbm9uLU1SLiBVc2VycyBj
YW4gZ28gY2xpY2sgcnVuIHRvIGdldCBDSSByZXN1bHRzLiBXZSBjb3VsZCBhbHNvIGhhdmUKb3B0
aW9uIHRvIHRyaWdnZXIgdGhlIGNpICh0aGUgb3Bwb3NpdGUgb2YgY2kuc2tpcCkgZnJvbSBnaXQg
Y29tbWFuZApsaW5lLgoKPiAgLSBEaXNhYmxpbmcgQ0kgb24gV0lQIE1ScwoKVGhhdCBJJ20gYWxz
byBtaXRpZ2F0ZWQgYWJvdXQuCgo+ICAtIEknbSBzdXJlIHRoZXJlIGFyZSBtb3JlLi4uCgoKcmVn
YXJkcywKTmljb2xhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
