Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 230441FB6A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 22:17:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78B6289258;
	Wed, 15 May 2019 20:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com
 [IPv6:2607:f8b0:4864:20::744])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60BAD89254
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2019 20:17:31 +0000 (UTC)
Received: by mail-qk1-x744.google.com with SMTP id w25so816371qkj.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2019 13:17:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=x2min3WzAuWH1T3juyqo5OXy6ChONQFHT5w12lFV7K8=;
 b=QxIFiyIrz9XCZkwRl8etnDNxCj7iOM2OA+bwSwpDk+br935jmnviZz/e2IuVm4wiXh
 PJHAV7HvjaZgwOtpTYg0Trekkvv4LO5HG3BK3ZW1SDvDaGEgwYNLV/Ba2HX+4WY+zkdn
 BwttpzC/l3qpBm9s05Tl5yBWzUlmNLhi3W0fGfDCv5zfNkvNFA2SABprWysZRUzWAdBf
 zeQCHX5bsY6ohJKyepNTs4eSmkC/rur59La1Hr40FHh2jPq2u3ivLCSFwxWHuvMD6afs
 UBn+Kn5kNwj+Y4F1nq2GQlZOwHrFwUWybF8b6YKQ6e1pbH7AQZZPMN9zNwsa7zWEkyr4
 AMcA==
X-Gm-Message-State: APjAAAVptcjAHz/DFuzEj+5Xd6tRc1YY1DSoV5g27+0CJPoeOm1dk2zt
 uGWS+6Ky1HMdCTkfrGkPxRPufw==
X-Google-Smtp-Source: APXvYqwokjHuMt6lT2FcVYBYr9fVnA7V0GWtXVeUyEv4dO9XAczx7Cp8rnbm6C96VoGBwCIP6d5kxw==
X-Received: by 2002:a05:620a:1206:: with SMTP id
 u6mr13215974qkj.88.1557951450455; 
 Wed, 15 May 2019 13:17:30 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id y18sm1789617qty.78.2019.05.15.13.17.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 13:17:29 -0700 (PDT)
Date: Wed, 15 May 2019 16:17:29 -0400
From: Sean Paul <sean@poorly.run>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190515201729.GA89093@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=x2min3WzAuWH1T3juyqo5OXy6ChONQFHT5w12lFV7K8=;
 b=ZQT05UBQeCHcKovZlcoxwdAAP2XZyzmWrBQgj3/KLqDF1NFMmxn8lOPkJ0j/HjFQnq
 h41xiF0kUc/OFh3akVptGvESKE3C/O69b3Obe6RkmthAXSmclrT6ojl9wDtYtWs+E1Xl
 3rrmLhpYFhrPx21/oq96oYEZYEhLuC3r4JFJ4B2hhKfWpVDwz51Uev0JrzPVJFW040s8
 uIazcgMam0SCG8sKXv6yU1hes5hkGJjBhQjLDunpF7Ve2+m06Qqx0NCU3o2w6Bxpz3g4
 MjgKYROPHsMGVGQx0OcnYjWpFvPo5bIvK30nNDSiDt54NUd7Nv6uGVlGlinYOaIIcHk9
 DsNA==
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
Cc: robdclark@chromium.org, dim-tools@lists.freedesktop.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkhpIERhLiosClNvbWUgbW9yZSBmaXhlcyBmb3IgLW5leHQuIEFzIHByZWRpY3RlZCBtb3JlIHBh
bmZyb3N0IGNsZWFudXAuCgpXZSBhbHNvIGhhdmUgNCBtc20gcGF0Y2hlcyB0aGF0IFJvYiBhbmQg
SSBmaWd1cmVkIHNob3VsZCBqdXN0IGdvIHRocm91Z2ggLW1pc2MKaW5zdGVhZCBvZiBzcGlubmlu
ZyB1cCBhbiBtc20tZml4ZXMgYnJhbmNoLiBJZiB3ZSBwb29sZWQgdG9nZXRoZXIgYWxsIG1zbSBm
aXhlcwpmb3IgNS4yLCBtYXliZSB0aGUgLWZpeGVzIGJyYW5jaCB3b3VsZCBoYXZlIGJlZW4gd2Fy
cmFudGVkLCBidXQgd2UndmUgYmVlbgpib2lsaW5nIHRoaXMgZnJvZyBmb3IgYSB3aGlsZSBzbyB3
aHkgbm90IGNvbnRpbnVlLgoKQW55d2F5cywgaG9wZWZ1bGx5IHRoaXMgaXMgaXQgdW50aWwgd2Ug
bW92ZSBiYWNrIHRvIC1taXNjLWZpeGVzLgoKCmRybS1taXNjLW5leHQtZml4ZXMtMjAxOS0wNS0x
NToKLSBBIGNvdXBsZSBuZXcgcGFuZnJvc3QgZml4ZXMKLSBGaXggdGhlIGxvdyByZWZyZXNoIHJh
dGUgcmVnaXN0ZXIgaW4gYWR2NzUxMQotIEEgaGFuZGZ1bCBvZiBtc20gZml4ZXMgdGhhdCBmZWxs
IG91dCBvZiA1LjEgYnJpbmd1cCBvbiBTRE04NDUKLSBGaXggc3BpbmxvY2sgaW5pdGlhbGl6YXRp
b24gaW4gcGwxMTEKCkNoZWVycywgU2VhbgoKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBj
b21taXQgZWI4NWQwM2UwMWMzZTlmM2IwYmE3MjgyYjJlMzUxNWE2MzVkZWNiMjoKCiAgTWVyZ2Ug
dGFnICdkcm0tbWlzYy1uZXh0LWZpeGVzLTIwMTktMDUtMDgnIG9mIGdpdDovL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnL2RybS9kcm0tbWlzYyBpbnRvIGRybS1uZXh0ICgyMDE5LTA1LTA5IDExOjA0
OjAwICsxMDAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdp
dDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0tbWlzYyB0YWdzL2RybS1taXNjLW5l
eHQtZml4ZXMtMjAxOS0wNS0xNQoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDJiMTE3
NDUxMjc3MTQwYjc4MmYzZTRlNTZhNDI5NmMwYTE2NWU3YWU6CgogIGRybS9tc206IFVwZ3JhZGUg
Z3hwZCBjaGVja3MgdG8gSVNfRVJSX09SX05VTEwgKDIwMTktMDUtMTUgMTY6MDM6MDggLTA0MDAp
CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCi0gQSBjb3VwbGUgbmV3IHBhbmZyb3N0IGZpeGVzCi0gRml4IHRoZSBsb3cgcmVm
cmVzaCByYXRlIHJlZ2lzdGVyIGluIGFkdjc1MTEKLSBBIGhhbmRmdWwgb2YgbXNtIGZpeGVzIHRo
YXQgZmVsbCBvdXQgb2YgNS4xIGJyaW5ndXAgb24gU0RNODQ1Ci0gRml4IHNwaW5sb2NrIGluaXRp
YWxpemF0aW9uIGluIHBsMTExCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkJvcmlzIEJyZXppbGxvbiAoMSk6CiAgICAgIGRy
bS9wYW5mcm9zdDogQWRkIG1pc3NpbmcgX2ZpbmkoKSBjYWxscyBpbiBwYW5mcm9zdF9kZXZpY2Vf
ZmluaSgpCgpCcmlhbiBNYXNuZXkgKDIpOgogICAgICBkcm0vbXNtOiByZW1vdmUgcmVzdiBmaWVs
ZHMgZnJvbSBtc21fZ2VtX29iamVjdCBzdHJ1Y3QKICAgICAgZHJtL21zbTogY29ycmVjdCBhdHRl
bXB0ZWQgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIGRlYnVnZnMKCkd1ZW50ZXIgUm9lY2sg
KDEpOgogICAgICBkcm0vcGwxMTE6IEluaXRpYWxpemUgY2xvY2sgc3BpbmxvY2sgZWFybHkKCk1h
dHQgUmVkZmVhcm4gKDEpOgogICAgICBkcm0vYnJpZGdlOiBhZHY3NTExOiBGaXggbG93IHJlZnJl
c2ggcmF0ZSBzZWxlY3Rpb24KClNhYnlhc2FjaGkgR3VwdGEgKDEpOgogICAgICBkcm0vbXNtL2Rw
dTogUmVtb3ZlIGR1cGxpY2F0ZSBoZWFkZXIKClNlYW4gUGF1bCAoMSk6CiAgICAgIGRybS9tc206
IFVwZ3JhZGUgZ3hwZCBjaGVja3MgdG8gSVNfRVJSX09SX05VTEwKClRvbWV1IFZpem9zbyAoMSk6
CiAgICAgIGRybS9wYW5mcm9zdDogT25seSBwdXQgc3luY19vdXQgaWYgbm9uLU5VTEwKCiBkcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL2Fkdjc1MTEvYWR2NzUxMV9kcnYuYyB8IDYgKysrLS0tCiBkcml2
ZXJzL2dwdS9kcm0vbXNtL2FkcmVuby9hNnh4X2dtdS5jICAgICAgICB8IDYgKysrLS0tCiBkcml2
ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVfaHdfbG0uYyAgICB8IDEgLQogZHJpdmVycy9n
cHUvZHJtL21zbS9kaXNwL2RwdTEvZHB1X3BsYW5lLmMgICAgfCA0ICstLS0KIGRyaXZlcnMvZ3B1
L2RybS9tc20vbXNtX2F0b21pYy5jICAgICAgICAgICAgIHwgNCArLS0tCiBkcml2ZXJzL2dwdS9k
cm0vbXNtL21zbV9nZW0uYyAgICAgICAgICAgICAgICB8IDMgKystCiBkcml2ZXJzL2dwdS9kcm0v
bXNtL21zbV9nZW0uaCAgICAgICAgICAgICAgICB8IDQgLS0tLQogZHJpdmVycy9ncHUvZHJtL3Bh
bmZyb3N0L3BhbmZyb3N0X2RldmljZS5jICAgfCA0ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9wYW5m
cm9zdC9wYW5mcm9zdF9kcnYuYyAgICAgIHwgMyArKy0KIGRyaXZlcnMvZ3B1L2RybS9wbDExMS9w
bDExMV9kaXNwbGF5LmMgICAgICAgIHwgNSArKystLQogMTAgZmlsZXMgY2hhbmdlZCwgMTkgaW5z
ZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCgotLSAKU2VhbiBQYXVsLCBTb2Z0d2FyZSBFbmdp
bmVlciwgR29vZ2xlIC8gQ2hyb21pdW0gT1MKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
