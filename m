Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1954E8DF46
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 22:49:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A5F893EC;
	Wed, 14 Aug 2019 20:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com
 [IPv6:2607:f8b0:4864:20::74a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7DE76E4D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 10:45:31 +0000 (UTC)
Received: by mail-qk1-x74a.google.com with SMTP id r200so99327688qke.19
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 03:45:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=GWyXBGwmHFcGXlg8sYWmi9ISwiX/TjDTxXNJrsxIlo0=;
 b=jPP/B87Rv+HglUk5jXF7qsIs40BfjJuoDV+vg4VypvOOfvw3ST1OYvUI+voBHnE47p
 O3KfeFHHTG5USpOCDvrEqTDEjF3Fdbkz2Vlq9fOP/bVHXVkBXSXiwVct//d2YLt1xDtv
 mJO+kUgOesDqlBZp4rXjn6g/zxagpZc+gqFtYmRzuDuV9cKKfJQ6KUFk65iObkeESbMC
 xlaC8MsFHu5XZLdX1GCPx7+s7X+8MYfoL5fBbqpmUGkwcVFV8IM7BYiWPPFWAY/pvMuo
 Tq/UTKcxts7M2vD7UAqNbnhJVSAbcXzreGOxVHCsehi3OHEwCaJr3422/mTUvl9gOUnU
 yRig==
X-Gm-Message-State: APjAAAXjf5to1vfzVL5+P5WDrZcTIyLN3qKaUo5ozbKaxMloWPTfBC8Z
 n1KYfrhQGS2351I6NMfCBPYYkp9f7II=
X-Google-Smtp-Source: APXvYqwhM4JMovHg2xzCJqqYJ3hsrqpakcRk8IC6SFMlsdE9qbu+1Sj05yHDBXOw9hQhCX71VwS62n5KfcM=
X-Received: by 2002:ac8:748a:: with SMTP id v10mr16346695qtq.386.1565779530315; 
 Wed, 14 Aug 2019 03:45:30 -0700 (PDT)
Date: Wed, 14 Aug 2019 12:44:58 +0200
Message-Id: <20190814104520.6001-1-darekm@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
From: Dariusz Marcinkiewicz <darekm@google.com>
To: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, 
 hverkuil-cisco@xs4all.nl
X-Mailman-Approved-At: Wed, 14 Aug 2019 20:49:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=GWyXBGwmHFcGXlg8sYWmi9ISwiX/TjDTxXNJrsxIlo0=;
 b=SO9w2qWfA9s7es8tmXD3wqbpTBgbgE1DHH1ERM7v7ptLx8iAJ95y8N4Tw+xRfTgVDo
 13xnwEMU6xzG5TpnrwEkbvb8IB4VVAMk6MolT2ZOkf2TYbkpgela2WK1udMqSYuSSak5
 Q8LdwxwSdNmbsCfPqW/1A50L/ApA7o7dCxHQL6Y2ilUQe/pD/9Nn91c3LpVJIKbuVG3f
 htMPgcJTD+HpBw3QVSvs7B1iIa/DvtlWekME6zM0+MAhwABxQrewkKFJVJq3adx9qDVe
 C1f+Ddir0Bz1vfsh4GwublcxERGy6vsW5i3k2OyP6w/YcY/Yuy9icYHfcvFqq2wGVRrR
 +BXg==
Subject: [Intel-gfx] [PATCH v7 0/9] drm: cec: convert DRM drivers to the new
 notifier API
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-samsung-soc@vger.kernel.org,
 David Francis <David.Francis@amd.com>, amd-gfx@lists.freedesktop.org,
 Leo Li <sunpeng.li@amd.com>, "Jerry \(Fangzhi\) Zuo" <Jerry.Zuo@amd.com>,
 linux-arm-kernel@lists.infradead.org, nouveau@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Russell King <rmk+kernel@armlinux.org.uk>, Sean Paul <seanpaul@chromium.org>,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Thomas Lim <Thomas.Lim@amd.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Alex Deucher <alexander.deucher@amd.com>,
 Colin Ian King <colin.king@canonical.com>,
 Dariusz Marcinkiewicz <darekm@google.com>, Enrico Weigelt <info@metux.net>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBzZXJpZXMgdXBkYXRlcyBEUk0gZHJpdmVycyB0byB1c2UgbmV3IENFQyBub3RpZmllciBB
UEkuCgpDaGFuZ2VzIHNpbmNlIHY2OgoJTWFkZSBDRUMgbm90aWZpZXJzJyByZWdpc3RyYXRpb24g
YW5kIGRlLXJlZ2lzdHJhdGlvbiBzeW1tZXRyaWMKCWluIHRkYTk5OHggYW5kIGR3LWhkbWkgZHJp
dmVycy4gQWxzbywgYWNjaWRlbnRhbGx5IGRyb3BwZWQgb25lCglwYXRjaCBpbiB2NiAoY2hhbmdl
IHRvIGRybV9kcF9jZWMpLCBicm91Z2h0IGl0IGJhY2sgbm93LgpDaGFuZ2VzIHNpbmNlIHY1Ogog
ICAgICAgIEZpeGVkIGEgd2FybmluZyBhYm91dCBhIG1pc3NpbmcgY29tbWVudCBmb3IgYSBuZXcg
bWVtYmVyIG9mCglkcm1fZHBfYXV4X2NlYyBzdHJ1Y3QuIFNlbmRpbmcgdG8gYSB3aWRlciBhdWRp
ZW5jZSwKCWluY2x1ZGluZyBtYWludGFpbmVycyBvZiByZXNwZWN0aXZlIGRyaXZlcnMuCkNoYW5n
ZXMgc2luY2UgdjQ6CglBZGRyZXNzaW5nIHJldmlldyBjb21tZW50cy4KQ2hhbmdlcyBzaW5jZSB2
MzoKICAgICAgICBVcGRhdGVkIGFkYXB0ZXIgZmxhZ3MgaW4gZHctaGRtaS1jZWMuCkNoYW5nZXMg
c2luY2UgdjI6CglJbmNsdWRlIGFsbCBEUk0gcGF0Y2hlcyBmcm9tICJjZWM6IGltcHJvdmUgbm90
aWZpZXIgc3VwcG9ydCwKCWFkZCBjb25uZWN0b3IgaW5mbyBjb25uZWN0b3IgaW5mbyIgc2VyaWVz
LgpDaGFuZ2VzIHNpbmNlIHYxOgoJVGhvc2UgcGF0Y2hlcyBkZWxheSBjcmVhdGlvbiBvZiBub3Rp
ZmllcnMgdW50aWwgcmVzcGVjdGl2ZQoJY29ubmVjdG9ycyBhcmUgY29uc3RydWN0ZWQuIEl0IHNl
ZW1zIHRoYXQgdGhvc2UgcGF0Y2hlcywgZm9yIGEKCWNvdXBsZSBvZiBkcml2ZXJzLCBieSBhZGRp
bmcgdGhlIGRlbGF5LCBpbnRyb2R1Y2UgYSByYWNlIGJldHdlZW4KCW5vdGlmaWVycycgY3JlYXRp
b24gYW5kIHRoZSBJUlFzIGhhbmRsaW5nIHRocmVhZHMgLSBhdCBsZWFzdCBJCglkb24ndCBzZWUg
YW55dGhpbmcgb2J2aW91cyBpbiB0aGVyZSB0aGF0IHdvdWxkIGV4cGxpY2l0bHkgZm9yYmlkCglz
dWNoIHJhY2VzIHRvIG9jY3VyLiB2MiBhZGRzIGEgd3JpdGUgYmFycmllciB0byBtYWtlIHN1cmUg
SVJRCgl0aHJlYWRzIHNlZSB0aGUgbm90aWZpZXIgb25jZSBpdCBpcyBjcmVhdGVkIChyZXBsYWNp
bmcgdGhlCglXUklURV9PTkNFIEkgcHV0IGluIHYxKS4gVGhlIGJlc3QgdGhpbmcgdG8gZG8gaGVy
ZSwgSSBiZWxpZXZlLAoJd291bGQgYmUgbm90IHRvIGhhdmUgYW55IHN5bmNocm9uaXphdGlvbiBh
bmQgbWFrZSBzdXJlIHRoYXQgYW4gSVJRCglvbmx5IGdldHMgZW5hYmxlZCBhZnRlciB0aGUgbm90
aWZpZXIgaXMgY3JlYXRlZC4KRGFyaXVzeiBNYXJjaW5raWV3aWN6ICg5KToKICBkcm1fZHBfY2Vj
OiBhZGQgY29ubmVjdG9yIGluZm8gc3VwcG9ydC4KICBkcm0vaTkxNS9pbnRlbF9oZG1pOiB1c2Ug
Y2VjX25vdGlmaWVyX2Nvbm5fKHVuKXJlZ2lzdGVyCiAgZHctaGRtaS1jZWM6IHVzZSBjZWNfbm90
aWZpZXJfY2VjX2FkYXBfKHVuKXJlZ2lzdGVyCiAgdGRhOTk1MDogdXNlIGNlY19ub3RpZmllcl9j
ZWNfYWRhcF8odW4pcmVnaXN0ZXIKICBkcm06IHRkYTk5OHg6IHVzZSBjZWNfbm90aWZpZXJfY29u
bl8odW4pcmVnaXN0ZXIKICBkcm06IHN0aTogdXNlIGNlY19ub3RpZmllcl9jb25uXyh1bilyZWdp
c3RlcgogIGRybTogdGVncmE6IHVzZSBjZWNfbm90aWZpZXJfY29ubl8odW4pcmVnaXN0ZXIKICBk
cm06IGR3LWhkbWk6IHVzZSBjZWNfbm90aWZpZXJfY29ubl8odW4pcmVnaXN0ZXIKICBkcm06IGV4
eW5vczogZXh5bm9zX2hkbWk6IHVzZSBjZWNfbm90aWZpZXJfY29ubl8odW4pcmVnaXN0ZXIKCiAu
Li4vZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtX21zdF90eXBlcy5jICAgfCAgMiArLQogZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLWNlYy5jIHwgMTMgKysrLS0tCiBk
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYyAgICAgfCA0NiArKysrKysr
KysrKysrLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2NlYy5jICAgICAgICAgICAgICAg
ICAgfCAyNSArKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19oZG1pLmMg
ICAgICAgICAgfCAzMSArKysrKysrLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTJjL3RkYTk5NTAu
YyAgICAgICAgICAgICAgICAgfCAxMiArKy0tLQogZHJpdmVycy9ncHUvZHJtL2kyYy90ZGE5OTh4
X2Rydi5jICAgICAgICAgICAgIHwgMzYgKysrKysrKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgICAgIHwgMTMgKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0v
bm91dmVhdS9ub3V2ZWF1X2Nvbm5lY3Rvci5jICAgfCAgMyArLQogZHJpdmVycy9ncHUvZHJtL3N0
aS9zdGlfaGRtaS5jICAgICAgICAgICAgICAgIHwgMTkgKysrKystLS0KIGRyaXZlcnMvZ3B1L2Ry
bS90ZWdyYS9vdXRwdXQuYyAgICAgICAgICAgICAgICB8IDI4ICsrKysrKysrLS0tCiBpbmNsdWRl
L2RybS9kcm1fZHBfaGVscGVyLmggICAgICAgICAgICAgICAgICAgfCAxNyArKysrLS0tCiAxMyBm
aWxlcyBjaGFuZ2VkLCAxNTUgaW5zZXJ0aW9ucygrKSwgOTQgZGVsZXRpb25zKC0pCgotLSAKMi4y
My4wLnJjMS4xNTMuZ2RlZWQ4MDMzMGYtZ29vZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
