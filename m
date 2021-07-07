Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 484783BF1CF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 00:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0613D6E1E0;
	Wed,  7 Jul 2021 22:02:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94C246E1CF
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 22:02:31 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id t15so4781927wry.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Jul 2021 15:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OQ2iwYVGgrNeQxxfjE2NWqtOvDVkonAchKxAlKxB3Js=;
 b=tJgNIX2P5N8aDggORhbtAgy5kES8sTjdnONvJCWC/eG0TlXPTFQvLDjxk+N8kYOMHh
 gqNabiL/ob18aKGONGN55lQa0vD+fv7vXUsZ2Oz5nEklYxzIERZdz6E6POm9YkTix5sw
 qhXDEAAcTE6lu83EmFkDTFgXQnjymVtzw9tlrQSdTwQBY0KtKIEttEKg8HhwuJFbgPez
 4LUxMdmv8dJ4kuAz58SuQdYP12nUWL4QtLBIT6l5InQdx5OZgKnNaXJSG1erHmtDQoij
 BYEsqI7snJy8euG/3Htpj8XT38ie/Koj9xqF2hD/gn7lkO8fg1sK4X1SA3xvGhG35djH
 e20A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OQ2iwYVGgrNeQxxfjE2NWqtOvDVkonAchKxAlKxB3Js=;
 b=nnK5/DR1563xzIU0J9YgJKAvvUrVGcAOeXaPyCAh3f+VbwQxvI91SakVME72c1b2RU
 FWkqEbWjJ0YoJCyXC2E9qYstGLjQSMioPUHUMCapEJJNgbT8Ay+2DjLKu3Gb2hl9kQaX
 u5PRCcF55bPOB4jHxD9KRLPAl2Q7jTiCe2iJvsJlqh7dZyroZH6XmBozKyYHxiiaIqyB
 VsFmeuJFdDqU5Jex/TZVZQ2FAyfWS0PB/ySkix0dQXvO3WQOQgqtToTFKIpl2A78CCq6
 SLeaWjS2SvEfEoTcXcs0LoqZyWmwoYPnRGcKu1UXuOExOWVnq8hWmB4pKpCViH/Q87Oa
 w76Q==
X-Gm-Message-State: AOAM531aQWBK76d+PfSuuWQaHRjVaYyG2vxH3jsUhUbkdv13kTLXvkAc
 oaoBTjzZIOOBAaBmIAMBVULwS3WnA7qyV+d1
X-Google-Smtp-Source: ABdhPJwWFu7Y5KVTvnnab+Gw6EB6F+xzj8ykrAckgOIK8Bl39tnykIFrNsIcF1AZedtWP8UWG5EQ7g==
X-Received: by 2002:adf:d1e7:: with SMTP id g7mr30575462wrd.142.1625695349964; 
 Wed, 07 Jul 2021 15:02:29 -0700 (PDT)
Received: from gpdmax.. ([2a01:e0a:806:8950:61f0:1b3d:bc7a:1d60])
 by smtp.gmail.com with ESMTPSA id t6sm178370wru.75.2021.07.07.15.02.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Jul 2021 15:02:29 -0700 (PDT)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  8 Jul 2021 00:02:10 +0200
Message-Id: <20210707220212.4808-1-anisse@astier.eu>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH RESEND v2 0/2] GPD Win Max display fixes
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
Cc: Daniel Dadap <ddadap@nvidia.com>, Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBzZXJpZXMgaXMgZm9yIG1ha2luZyB0aGUgR1BEIFdpbiBNYXggZGlzcGxheSB1
c2FibGUgd2l0aApMaW51eC4KClRoZSBHUEQgV2luIE1heCBpcyBhIHNtYWxsIGxhcHRvcCwgYW5k
IGl0cyBlRFAgcGFuZWwgZG9lcyBub3Qgc2VuZCBhbgpFRElEIG92ZXIgRFBDRDsgdGhlIEVESUQg
aXMgaW5zdGVhZCBhdmFpbGFibGUgaW4gdGhlIGludGVsIG9wcmVnaW9uLCBpbgptYWlsYm94ICM1
IFsxXQoKVGhlIGZpcnN0IHBhdGNoIGlzIGJhc2VkIG9uIEphbmkncyBwYXRjaCBzZXJpZXMgWzJd
IGFkZGluZyBzdXBwb3J0IGZvcgp0aGUgb3ByZWdpb24sIHdpdGggY2hhbmdlcy4gSSd2ZSBjaGFu
Z2VkIGF1dGhvcnNoaXAsIGJ1dCBJJ2QgYmUgZ2xhZCB0bwpyZXZlcnQgaXQKClRoZSBzZWNvbmQg
cGF0Y2ggaXMganVzdCB0byBmaXggdGhlIG9yaWVudGF0aW9uIG9mIHRoZSBwYW5lbC4KCgpDaGFu
Z2VzIHNpbmNlIHYxOgogLSByZWJhc2VkIG9uIGRybS10aXAKIC0gc3F1YXNoZWQgcGF0Y2ggMSAm
IDIKIC0gcGlja2VkIHVwIFJldmlld2VkLWJ5IGZyb20gSGFucyBkZSBHb2VkZSAodGhhbmtzIGZv
ciB0aGUgcmV2aWV3KQoKV2hlbiB2MiB3YXMgaW5pdGlhbGx5IHNlbnQgWzNdIFZpbGxlIFN5cmrD
pGzDpCBzdWdnZXN0ZWQgdGhhdCBpdCBtaWdodCBiZQphIGdvb2QgaWRlYSB0byB1c2UgdGhlIEFD
UEkgX0REQyBtZXRob2QgaW5zdGVhZCB0byBnZXQgdGhlIEVESUQsIHRvCmNvdmVyIGEgd2lkZXIg
cmFuZ2Ugb2YgaGFyZHdhcmUuIFVuZm9ydHVuYXRlbHksIGl0IGRvZXNuJ3Qgc2VlbQphdmFpbGFi
bGUgb24gR1BEIFdpbiBNYXgsIHNvIEkgdGhpbmsgdGhpcyB3b3JrIHNob3VsZCBiZSBkb25lCmlu
ZGVwZW5kZW50bHksIGFuZCB0aGlzIHBhdGNoIHNlcmllcyBjb25zaWRlcmVkIHNlcGFyYXRlbHku
CgpbMV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMv
MzQ1NApbMl06IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9pbnRlbC1nZngv
cGF0Y2gvMjAyMDA4MjgwNjE5NDEuMTcwNTEtMS1qYW5pLm5pa3VsYUBpbnRlbC5jb20vClszXTog
aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2ludGVsLWdmeC9wYXRjaC8yMDIx
MDUzMTIwNDY0Mi40OTA3LTItYW5pc3NlQGFzdGllci5ldS8KCgpBbmlzc2UgQXN0aWVyICgyKToK
ICBkcm0vaTkxNS9vcHJlZ2lvbjogYWRkIHN1cHBvcnQgZm9yIG1haWxib3ggIzUgRURJRAogIGRy
bTogQWRkIG9yaWVudGF0aW9uIHF1aXJrIGZvciBHUEQgV2luIE1heAoKIC4uLi9ncHUvZHJtL2Ry
bV9wYW5lbF9vcmllbnRhdGlvbl9xdWlya3MuYyAgICB8ICA2ICsrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmMgfCA2OSArKysrKysrKysrKysrKysrKystCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmggfCAgOCArKysKIDQgZmls
ZXMgY2hhbmdlZCwgODUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKLS0gCjIuMzEuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
