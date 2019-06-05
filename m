Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9194636632
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 23:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8193189664;
	Wed,  5 Jun 2019 21:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com
 [IPv6:2607:f8b0:4864:20::742])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1893D89613
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 21:03:37 +0000 (UTC)
Received: by mail-qk1-x742.google.com with SMTP id r6so166718qkc.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Jun 2019 14:03:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=2nVjWutG2MSZQNH+uvLuCSmqDRZ8+JSiUuR77+pXekQ=;
 b=mZmzMc+BQb9yvsXNSQoRB4m/DXqEynawH3nWpuhnzFjtpW64s3ajFwifbOn8CtIvJx
 BUwNRy3GdzxBm+tSkW5VyHUjZhmSwaIr1dbh/02NG+95jdGld0gJszzY41qvfNdE8iH9
 mppN+5THBEj88pb+uZj+17y8qngoh4DZeqzryyZjVgCgzu+wFQdJKj7xhhzs7/X7NmX4
 xxzsRaFAJ8rKJlqJPN0GKZUkPC4EITeUd+bmAWuj4YD4/oer0J/oy/vzR33P9TRTuiRU
 8vat1vF1gWho57Mpa+wfuzzjSub41++mGH1Itwyz2W4yITt61KkD/SQ1uFrVuNH3d/6H
 HUmQ==
X-Gm-Message-State: APjAAAXCcJdGt6+2nwVEtXKZMR7ONnPaGjNx5KXwN4FElq+QU1ud+uSk
 ZbP8gzAjpEonZtURkK4J/pApFQ==
X-Google-Smtp-Source: APXvYqy611ht/+oYN3MsMBUC/aEJagI2xykJrVJgR4eyHE377RtNXkwngf7YEi/PvYdeCmJZuC9zug==
X-Received: by 2002:a37:8d84:: with SMTP id p126mr33530498qkd.72.1559768616169; 
 Wed, 05 Jun 2019 14:03:36 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id c4sm11211215qtm.29.2019.06.05.14.03.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 14:03:35 -0700 (PDT)
Date: Wed, 5 Jun 2019 17:03:35 -0400
From: Sean Paul <sean@poorly.run>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190605210335.GA35431@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=2nVjWutG2MSZQNH+uvLuCSmqDRZ8+JSiUuR77+pXekQ=;
 b=VFgelxE2f3WsspFRvlmR/wnVv/uV295ns9gG/9mWCxlHuVBJeAENPzCMv+6OwDqQ92
 3iS0UM40b2XDnUsrMhPloTAzAb3TXSu2UHbJyPT6N+C0xFc3b+bzOobdUeduCbga5R0l
 JDdGeka8BawATmHYqVQ7nsHuBHb7DwhKe/Y3E1jfhWTDEJcYgTB90+p/HkAdyy2UGXyb
 aTIuugu0wsQMcIaILirUEvGdwsNTKt3Fzh8Cry57rEcMf0EWJl32kSOtlv0KP6un/Slo
 x5miWS1+myCQ6w2k2suV7EK18BD6zCWS2wB2dCIzHTw+G3c6I2ChOgwgGzj8xDllEQvL
 5ITg==
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
 intel-gfx@lists.freedesktop.org, Helen Koike <helen.koike@collabora.com>,
 dri-devel@lists.freedesktop.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkhpIERhLiosCk91ciBzbG93IHJlbGVhc2UgY3ljbGUgY29udGludWVzLCBvbmx5IDIgY29udHJp
YnV0b3JzIHNpbmNlIGxhc3QgdGltZSEgVGhlIHNldApmcm9tIEhlbGVuIGF2b2lkcyBibG9ja2lu
ZyBpbiBhc3luYyBjb21taXRzIGFuZCBMdWNhcyBlbnN1cmVzIHRoZSBzZyBsaXN0IGlzCnVubWFw
cGVkIHdpdGggdGhlIHVkbWFidWYuCgpkcm0tbWlzYy1maXhlcy0yMDE5LTA2LTA1OgotIEFsbG93
IGZiIGNoYW5nZXMgaW4gYXN5bmMgY29tbWl0cyAoZml4ZXMgaWd0IGZhaWx1cmVzKSAoSGVsZW4p
Ci0gQWN0dWFsbHkgdW5tYXAgdGhlIHNjYXR0ZXJsaXN0IHdoZW4gdW5tYXBwaW5nIHVkbWFidWYg
KEx1Y2FzKQoKQ2M6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgpDYzogSGVs
ZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5jb20+CgpDaGVlcnMsIFNlYW4KCgpUaGUg
Zm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDJhM2UwYjcxNjI5NmE1MDRkOWU2NWZlYTdh
Y2IzNzljODZmZTQyODM6CgogIE1lcmdlIHRhZyAnaW14LWRybS1maXhlcy0yMDE5LTA1LTI5JyBv
ZiBnaXQ6Ly9naXQucGVuZ3V0cm9uaXguZGUvZ2l0L3B6YS9saW51eCBpbnRvIGRybS1maXhlcyAo
MjAxOS0wNS0zMSAwOToxNToyNSArMTAwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBv
c2l0b3J5IGF0OgoKICBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLW1pc2Mg
dGFncy9kcm0tbWlzYy1maXhlcy0yMDE5LTA2LTA1Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMg
dXAgdG8gMjgzZjFlMzgzZTkxZDk2ZmU2NTJmYWQ1NDk1MzdhZTE1Y2YzMWQ2MDoKCiAgdWRtYWJ1
ZjogYWN0dWFsbHkgdW5tYXAgdGhlIHNjYXR0ZXJsaXN0ICgyMDE5LTA2LTA1IDEwOjQxOjE3ICsw
MjAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQotIEFsbG93IGZiIGNoYW5nZXMgaW4gYXN5bmMgY29tbWl0cyAoZml4ZXMg
aWd0IGZhaWx1cmVzKSAoSGVsZW4pCi0gQWN0dWFsbHkgdW5tYXAgdGhlIHNjYXR0ZXJsaXN0IHdo
ZW4gdW5tYXBwaW5nIHVkbWFidWYgKEx1Y2FzKQoKQ2M6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBl
bmd1dHJvbml4LmRlPgpDYzogSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5jb20+
CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCkhlbGVuIEtvaWtlICg1KToKICAgICAgZHJtL3JvY2tjaGlwOiBmaXggZmIgcmVm
ZXJlbmNlcyBpbiBhc3luYyB1cGRhdGUKICAgICAgZHJtL2FtZDogZml4IGZiIHJlZmVyZW5jZXMg
aW4gYXN5bmMgdXBkYXRlCiAgICAgIGRybS9tc206IGZpeCBmYiByZWZlcmVuY2VzIGluIGFzeW5j
IHVwZGF0ZQogICAgICBkcm0vdmM0OiBmaXggZmIgcmVmZXJlbmNlcyBpbiBhc3luYyB1cGRhdGUK
ICAgICAgZHJtOiBkb24ndCBibG9jayBmYiBjaGFuZ2VzIGZvciBhc3luYyBwbGFuZSB1cGRhdGVz
CgpMdWNhcyBTdGFjaCAoMSk6CiAgICAgIHVkbWFidWY6IGFjdHVhbGx5IHVubWFwIHRoZSBzY2F0
dGVybGlzdAoKIGRyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9k
bS5jIHwgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX2hlbHBlci5jICAgICAgICAg
ICAgICAgfCAyMiArKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvbWRwNS9tZHA1
X3BsYW5lLmMgICAgICAgIHwgIDQgKysKIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fdm9wLmMgICAgICAgfCA1MSArKysrKysrKysrKystLS0tLS0tLS0tLQogZHJpdmVycy9n
cHUvZHJtL3ZjNC92YzRfcGxhbmUuYyAgICAgICAgICAgICAgICAgICB8ICAyICstCiBpbmNsdWRl
L2RybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oICAgICAgICAgIHwgIDggKysrKwogNyBm
aWxlcyBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspLCAzOCBkZWxldGlvbnMoLSkKCi0tIApTZWFu
IFBhdWwsIFNvZnR3YXJlIEVuZ2luZWVyLCBHb29nbGUgLyBDaHJvbWl1bSBPUwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
