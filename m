Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E618075390
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 18:09:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB3A86E78A;
	Thu, 25 Jul 2019 16:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com
 [IPv6:2607:f8b0:4864:20::b41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25B316E78F
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 16:09:11 +0000 (UTC)
Received: by mail-yb1-xb41.google.com with SMTP id i1so11336082ybo.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 09:09:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=HUx8lU4T5ViTXPoFsx/d4wDW5Gp6q93Ex1yqRITW1yI=;
 b=j/gTsT1fJlAOE0be5fxa2ndzrtASL3MuhCll2uCtunLvR0bFHfvNzUazQeA1rMZzpv
 jqooFGwMhMyBc9oMurYKz08uQNdJcMEaLNqlOYBurDNaWpy09laq7Ezc2i69euEO+Abz
 XNnXBXvrqB60SbFAm26cLxZjiqg48iUWrYQyMp0E4qy8uIIXD7/kT+Or1yWX+UjjFGYb
 DAymoFthHccF9+QKQ1DXi3CFCTtv2Zsf/EqsJ/4yk63J8HcUPw809pFJ8KsW+eqL+yW7
 vD8hc9TkgPz2BNh04glFAejVIQULUQz4U/KozMkAHcfCF04XSjumug9b8WnSw7Xsdyve
 ZXEw==
X-Gm-Message-State: APjAAAXdump3td6VeDcStMJfR0F8ywfqe2khSR12/d9UOZpekdxhGULA
 qRyTml8ys+T67Zpx3rcDopePnQ==
X-Google-Smtp-Source: APXvYqxsLU8bUE/XvGFE+jzO+8m+SMvUDoemEgO3MFCvxogT7ssygNU2PbS+nMkuBE+Aihv8fyaiPg==
X-Received: by 2002:a25:2cd1:: with SMTP id
 s200mr51443276ybs.453.1564070950148; 
 Thu, 25 Jul 2019 09:09:10 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id z9sm11725278ywj.84.2019.07.25.09.09.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 09:09:09 -0700 (PDT)
Date: Thu, 25 Jul 2019 12:09:09 -0400
From: Sean Paul <sean@poorly.run>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190725160909.GA106249@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=HUx8lU4T5ViTXPoFsx/d4wDW5Gp6q93Ex1yqRITW1yI=;
 b=UVL572FOIhK4PA+pnTHJQsiyJpbGwRMr61kzKwy+82ejcEkuHej+gWKj4fSZposTs7
 cX2cdpGwCHgNT243ZFWojYNk9x0P0GN0yhX7SORC2nS1yCHyqHLaenqonO7v6p/+oBbf
 NHt6p+jZDXXT7AqhNd9qjiXpYO84SZmN0Uo2HWJ1Oq7y05mQ3I0SMgR5SHGspe9P2ha2
 9aMvd1I/ZL5YUEbouR2wJWqCyz1O9zIQcjawOHlSPGnXjTzA7Z5TKGcJvSbo0RG0Qsnr
 GdTimCI2EbqncgrNtm1LWSRKyr3hdoowB60hDXyczhVjRtCGLPmZbQl6ajy7xasLWA7d
 FKdw==
Subject: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: dim-tools@lists.freedesktop.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 intel-gfx@lists.freedesktop.org, Qian Cai <cai@lca.pw>,
 dri-devel@lists.freedesktop.org, Dmitry Osipenko <digetx@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkhpIGFsbCwKU3Vic3RpdHV0ZS1NYWFydGVuIGhlcmUgZm9yIGFub3RoZXIgcHVsbCByZXF1ZXN0
LiBUaGlzIHdlZWsgaXMgcHJldHR5IGxpZ2h0LCBhcwp5b3Ugd291bGQgZXhwZWN0LiBJIG1lcmdl
ZCBhIGxlZnRvdmVyIG51Z2dldCBmcm9tIGRybS1taXNjLW5leHQgdGhhdCBkaWRuJ3QgbWFrZQot
cmMxIGFuZCBhbSBhYnVzaW5nIGNvdmVyaW5nIGZvciBNYWFydGVuIGJ5IHNuZWFraW5nIGluIGEg
aGFuZGZ1bCBvZiBtc20KY2hhbmdlcyB0byBhdm9pZCBoYXZpbmcgdG8gc2VuZCAyIHB1bGxzLgoK
CmRybS1taXNjLWZpeGVzLTIwMTktMDctMjU6Ci0gcGljayB1cCB0aGUgY21kbGluZSBmaXggd2hp
Y2ggbWlzc2VkIHRoZSBtZXJnZSB3aW5kb3cgKERtaXRyeSkKLSBhIGhhbmRmdWwgb2YgbXNtIGZp
eGVzIHNvIGkgZG9uJ3QgaGF2ZSB0byBzcGluIHVwIG1zbS1maXhlcyAoVmFyaW91cykKLSBmaXgg
LVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZSB3YXJuaW5nIGluIGRybV9mcmFtZWJ1ZmZlciAoUWlh
bikKCkNjOiBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+CkNjOiBSb2IgQ2xhcmsg
PHJvYmRjbGFya0BnbWFpbC5jb20+CkNjOiBRaWFuIENhaSA8Y2FpQGxjYS5wdz4KCkNoZWVycywg
U2VhbgoKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgNWY5ZTgzMmMxMzcwNzUw
NDVkMTVjZDY4OTlhYjA1MDVjZmIyY2E0YjoKCiAgTGludXMgNS4zLXJjMSAoMjAxOS0wNy0yMSAx
NDowNTozOCAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoK
ICBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLW1pc2MgdGFncy9kcm0tbWlz
Yy1maXhlcy0yMDE5LTA3LTI1Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gYmJiNmZj
NDNmMTMxZjc3ZmNiN2FlODA4MWY2ZDdjNTEzOTZhMjEyMDoKCiAgZHJtOiBzaWxlbmNlIHZhcmlh
YmxlICdjb25uJyBzZXQgYnV0IG5vdCB1c2VkICgyMDE5LTA3LTIyIDE2OjA0OjUzIC0wNDAwKQoK
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQotIHBpY2sgdXAgdGhlIGNtZGxpbmUgZml4IHdoaWNoIG1pc3NlZCB0aGUgbWVyZ2Ug
d2luZG93IChEbWl0cnkpCi0gYSBoYW5kZnVsIG9mIG1zbSBmaXhlcyBzbyBpIGRvbid0IGhhdmUg
dG8gc3BpbiB1cCBtc20tZml4ZXMgKFZhcmlvdXMpCi0gZml4IC1XdW51c2VkLWJ1dC1zZXQtdmFy
aWFibGUgd2FybmluZyBpbiBkcm1fZnJhbWVidWZmZXIgKFFpYW4pCgpDYzogRG1pdHJ5IE9zaXBl
bmtvIDxkaWdldHhAZ21haWwuY29tPgpDYzogUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29t
PgpDYzogUWlhbiBDYWkgPGNhaUBsY2EucHc+CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkJyaWFuIE1hc25leSAoMSk6CiAg
ICAgIGRybS9tc206IGNvcnJlY3QgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIGNvbnRleHRf
aW5pdAoKRG1pdHJ5IE9zaXBlbmtvICgxKToKICAgICAgZHJtL21vZGVzOiBEb24ndCBhcHBseSBj
bWRsaW5lJ3Mgcm90YXRpb24gaWYgaXQgd2Fzbid0IHNwZWNpZmllZAoKUWlhbiBDYWkgKDEpOgog
ICAgICBkcm06IHNpbGVuY2UgdmFyaWFibGUgJ2Nvbm4nIHNldCBidXQgbm90IHVzZWQKClJvYiBD
bGFyayAoMSk6CiAgICAgIGRybS9tc206IHN0b3AgYWJ1c2luZyBkbWFfbWFwL3VubWFwIGZvciBj
YWNoZQoKU2VhbiBQYXVsICgxKToKICAgICAgTWVyZ2UgZHJtLW1pc2MtbmV4dC1maXhlcy0yMDE5
LTA3LTE4IGludG8gZHJtLW1pc2MtZml4ZXMKClNodWJoYXNocmVlIERoYXIgKDEpOgogICAgICBk
cm0vbXNtL2RwdTogQ29ycmVjdCBkcHUgZW5jb2RlciBzcGlubG9jayBpbml0aWFsaXphdGlvbgoK
IGRyaXZlcnMvZ3B1L2RybS9kcm1fY2xpZW50X21vZGVzZXQuYyAgICAgICAgfCAyICstCiBkcml2
ZXJzL2dwdS9kcm0vZHJtX2ZyYW1lYnVmZmVyLmMgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9n
cHUvZHJtL21zbS9kaXNwL2RwdTEvZHB1X2VuY29kZXIuYyB8IDMgKy0tCiBkcml2ZXJzL2dwdS9k
cm0vbXNtL21zbV9kcnYuYyAgICAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL21z
bS9tc21fZ2VtLmMgICAgICAgICAgICAgICB8IDQgKystLQogNSBmaWxlcyBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgotLSAKU2VhbiBQYXVsLCBTb2Z0d2FyZSBFbmdp
bmVlciwgR29vZ2xlIC8gQ2hyb21pdW0gT1MKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
