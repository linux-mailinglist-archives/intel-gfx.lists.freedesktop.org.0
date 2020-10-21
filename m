Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 031DC2950C6
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 18:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C1C6EDD3;
	Wed, 21 Oct 2020 16:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56AB6EDD3
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 16:32:49 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id h5so3787322wrv.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 09:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dWPluaY/fdJwctZMykbZWvFFDF2mR5Py4vGKTofXd+8=;
 b=Q04BouVngbRdV5wxTNhSSRkra+WMFXFg42+1lRqECLQTCZDbklwhEdm0f2rJo5CANi
 vmnguTyOeZs8XJk7LhX5VabUxiNOIISI5gaFcY4pmcBWD6lEr3FQVqWdUQX5n5zad239
 z9v+HG6iHSssDx+bxSYzpdmoxS3o9jDC/DVgo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dWPluaY/fdJwctZMykbZWvFFDF2mR5Py4vGKTofXd+8=;
 b=JVIo6GaWAHRBEWWJkrO1Gy32WOb8VUGyLXt8bVVpul+aIFYJT5F1SIzPuouc9U4Ix4
 kAyFJmoiOdDA8xVGNP+VKkIXiu0ITHg2eQgklI2aypyXJtaSzuabun5hOXnOiz9X3Vof
 uZ8rw3K4/YMmv2IcFj+Nq5W+PRJSFzukeFgGV6A5W2TbN7QQ/c2ECh7DsYKhvckWmI/n
 8zMx1FFRKsJHLsWxjV3KvuhWvr/QXvH7YYNO8A4beHJTsOw4eqZptsvpvu23/7qYTl1+
 RYU82p3i8c1QD4R6UgOKhh8wylOMXGYhpVYSeWGi6kl1HV9Ip6K4r6Y8uHEHrO2DO4M7
 huOA==
X-Gm-Message-State: AOAM532OG/bkWDA48Qv2PnM2CG+DV5SAvVGEpDLwGpsMsGpZl0qHEuOl
 fv2equnhrHODTxD7spRtvrkicJhq802U3DEB
X-Google-Smtp-Source: ABdhPJwmOTGqHFKqQUTMBuUZBxeF86lPtUg/wWEwfEhIb64Cv8KLNJhnmQddksJTzyoEd1TV0Dullw==
X-Received: by 2002:adf:f54c:: with SMTP id j12mr5802564wrp.413.1603297968501; 
 Wed, 21 Oct 2020 09:32:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v17sm5547431wrc.23.2020.10.21.09.32.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 09:32:47 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 21 Oct 2020 18:32:40 +0200
Message-Id: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/atomic-helpers: remove
 legacy_cursor_update hacks
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, mikita.lipski@amd.com,
 harry.wentland@amd.com, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHN0dWZmIG5ldmVyIHJlYWxseSB3b3JrZWQsIGFuZCBsZWFkcyB0byBsb3RzIG9mIGZ1biBi
ZWNhdXNlIGl0Cm91dC1vZi1vcmRlciBmcmVlcyBhdG9taWMgc3RhdGVzLiBXaGljaCB1cHNldHMg
S0FTQU4sIGFtb25nIG90aGVyCnRoaW5ncy4KCkZvciBhc3luYyB1cGRhdGVzIHdlIG5vdyBoYXZl
IGEgbW9yZSBzb2xpZCBzb2x1dGlvbiB3aXRoIHRoZQotPmF0b21pY19hc3luY19jaGVjayBhbmQg
LT5hdG9taWNfYXN5bmNfY29tbWl0IGhvb2tzLiBTdXBwb3J0IGZvciB0aGF0CmZvciBtc20gYW5k
IHZjNCBsYW5kZWQuIG5vdXZlYXUgYW5kIGk5MTUgaGF2ZSB0aGVpciBvd24gY29tbWl0CnJvdXRp
bmVzLCBkb2luZyBzb21ldGhpbmcgc2ltaWxhci4KCkZvciBldmVyeW9uZSBlbHNlIGl0J3MgcHJv
YmFibHkgYmV0dGVyIHRvIHJlbW92ZSB0aGUgdXNlLWFmdGVyLWZyZWUKYnVnLCBhbmQgZW5jb3Vy
YWdlIGZvbGtzIHRvIHVzZSB0aGUgYXN5bmMgc3VwcG9ydCBpbnN0ZWFkLiBUaGUKYWZmZWN0ZWQg
ZHJpdmVycyB3aGljaCByZWdpc3RlciBhIGxlZ2FjeSBjdXJzb3IgcGxhbmUgYW5kIGRvbid0IGVp
dGhlcgp1c2UgdGhlIG5ldyBhc3luYyBzdHVmZiBvciB0aGVpciBvd24gY29tbWl0IHJvdXRpbmUg
YXJlOiBhbWRncHUsCmF0bWVsLCBtZWRpYXRlaywgcXhsLCByb2NrY2hpcCwgc3RpLCBzdW40aSwg
dGVncmEsIHZpcnRpbywgYW5kIHZtd2dmeC4KCkluc3BpcmVkIGJ5IGFuIGFtZGdwdSBidWcgcmVw
b3J0LgoKdjI6IERyb3AgUkZDLCBJIHRoaW5rIHdpdGggYW1kZ3B1IGNvbnZlcnRlZCBvdmVyIHRv
IHVzZQphdG9taWNfYXN5bmNfY2hlY2svY29tbWl0IGRvbmUgaW4KCmNvbW1pdCA2NzRlNzhhY2Fl
MGRmYjRiZWI1NjEzMmU0MWNiYWU1YjYwZjdkNjYyCkF1dGhvcjogTmljaG9sYXMgS2F6bGF1c2th
cyA8bmljaG9sYXMua2F6bGF1c2thc0BhbWQuY29tPgpEYXRlOiAgIFdlZCBEZWMgNSAxNDo1OTow
NyAyMDE4IC0wNTAwCgogICAgZHJtL2FtZC9kaXNwbGF5OiBBZGQgZmFzdCBwYXRoIGZvciBjdXJz
b3IgcGxhbmUgdXBkYXRlcwoKd2UgZG9uJ3QgaGF2ZSBhbnkgZHJpdmVyIGFueW1vcmUgd2hlcmUg
d2UgaGF2ZSB1c2Vyc3BhY2UgZXhwZWN0aW5nCnNvbGlkIGxlZ2FjeSBjdXJzb3Igc3VwcG9ydCBf
YW5kXyB0aGV5IGFyZSB1c2luZyB0aGUgYXRvbWljIGhlbHBlcnMgaW4KdGhlaXIgZnVsbHkgZ2xv
cnkuIFNvIHdlIGNhbiByZXRpcmUgdGhpcy4KClJlZmVyZW5jZXM6IGh0dHBzOi8vYnVnemlsbGEu
a2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTk5NDI1CkNjOiBtaWtpdGEubGlwc2tpQGFtZC5j
b20KQ2M6IE1pY2hlbCBEw6RuemVyIDxtaWNoZWxAZGFlbnplci5uZXQ+CkNjOiBoYXJyeS53ZW50
bGFuZEBhbWQuY29tClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX2hlbHBlci5jIHwgMTMg
LS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9hdG9taWNfaGVscGVyLmMKaW5kZXggYTdiY2I0YjQ1ODZjLi41NDlhMzFlNjA0MmMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX2hlbHBlci5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9kcm1fYXRvbWljX2hlbHBlci5jCkBAIC0xNDgxLDEzICsxNDgxLDYgQEAgZHJt
X2F0b21pY19oZWxwZXJfd2FpdF9mb3JfdmJsYW5rcyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAog
CWludCBpLCByZXQ7CiAJdW5zaWduZWQgY3J0Y19tYXNrID0gMDsKIAotCSAvKgotCSAgKiBMZWdh
Y3kgY3Vyc29yIGlvY3RscyBhcmUgY29tcGxldGVseSB1bnN5bmNlZCwgYW5kIHVzZXJzcGFjZQot
CSAgKiByZWxpZXMgb24gdGhhdCAoYnkgZG9pbmcgdG9ucyBvZiBjdXJzb3IgdXBkYXRlcykuCi0J
ICAqLwotCWlmIChvbGRfc3RhdGUtPmxlZ2FjeV9jdXJzb3JfdXBkYXRlKQotCQlyZXR1cm47Ci0K
IAlmb3JfZWFjaF9vbGRuZXdfY3J0Y19pbl9zdGF0ZShvbGRfc3RhdGUsIGNydGMsIG9sZF9jcnRj
X3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwgaSkgewogCQlpZiAoIW5ld19jcnRjX3N0YXRlLT5hY3Rp
dmUpCiAJCQljb250aW51ZTsKQEAgLTIxMDYsMTIgKzIwOTksNiBAQCBpbnQgZHJtX2F0b21pY19o
ZWxwZXJfc2V0dXBfY29tbWl0KHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJCWNv
bnRpbnVlOwogCQl9CiAKLQkJLyogTGVnYWN5IGN1cnNvciB1cGRhdGVzIGFyZSBmdWxseSB1bnN5
bmNlZC4gKi8KLQkJaWYgKHN0YXRlLT5sZWdhY3lfY3Vyc29yX3VwZGF0ZSkgewotCQkJY29tcGxl
dGVfYWxsKCZjb21taXQtPmZsaXBfZG9uZSk7Ci0JCQljb250aW51ZTsKLQkJfQotCiAJCWlmICgh
bmV3X2NydGNfc3RhdGUtPmV2ZW50KSB7CiAJCQljb21taXQtPmV2ZW50ID0ga3phbGxvYyhzaXpl
b2YoKmNvbW1pdC0+ZXZlbnQpLAogCQkJCQkJR0ZQX0tFUk5FTCk7Ci0tIAoyLjI4LjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
