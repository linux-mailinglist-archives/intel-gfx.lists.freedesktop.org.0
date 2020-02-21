Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2524E1688CF
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEAE46F556;
	Fri, 21 Feb 2020 21:04:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE63A6F550
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:04:32 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id s10so3168290wmh.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7DVm6TIJ9a18o65ycFhz83YLP09VvObbV8g80pzqG+Y=;
 b=LpplWNNAGR2iWqz3X4yZrKhMdaza60nTBuY6AHpk2NigPwNagFUxUwbtU0widZZoQ9
 fQ4ActdQqLtopFzwukMNN9/vflaIQPBHjMYukYgKgDy8Mdbg2OIYz0NZ7rCeV1Q3Juca
 uU9mZvDsbaTpo4Tp2xB9XFTwjPUnD0Z1EdLkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7DVm6TIJ9a18o65ycFhz83YLP09VvObbV8g80pzqG+Y=;
 b=J4eUtsCyIGuVSSI/jlR4YgjCp0/VIA1mjJrOTy6NLX0erh+ocXnPHZVYY3VEUJXPwe
 nFgKxmqgf3NS4vlt2Gre4MPoQZzVES5lRKk9qyI7KIiRiWwBrvBEfQmRJCLwXx0z0Gyc
 b2ey/uTfL4Q8p21wVCroL7a6fF1c8pAxAfZh5c3lqi1dNYDBoQMz6RBrWmKr3XUDOWPd
 GpimTuGsRYxz1Fa41LPicz6CdeSO+dQtz6IqspeLGWrL0z3tWqCcP8VVC7GlAsZR2uSE
 DSbyx2wG7SudP3884wUN43vkpC5CdCnm+lNzXD46SxAxYIgI3YYK/HhB+ZRryln80qe1
 c6cw==
X-Gm-Message-State: APjAAAV5oN57mErgokAWtm4lALtmdTO457sEmNTsGZ3m1fYB2pG4fxHk
 L+lLQCWsOY8yZEXKSKlup0b3mA==
X-Google-Smtp-Source: APXvYqw05XZsFlWbjkTQ1OpRUQ0+zI9jVgSrD2l94K5iDzt3LdJBvCNFQ71KMIGN+O+m6TKE4Suw0Q==
X-Received: by 2002:a1c:e388:: with SMTP id a130mr5608895wmh.176.1582319071555; 
 Fri, 21 Feb 2020 13:04:31 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.04.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:04:31 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:03:17 +0100
Message-Id: <20200221210319.2245170-50-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 49/51] drm/udl: Drop explicit
 drm_mode_config_cleanup call
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
Cc: Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyByaWdodCBhYm92ZSB0aGUgZHJtX2Rldl9wdXQoKS4KClRoaXMgYWxsb3dzIHVzIHRvIGRl
bGV0ZSBhIGJpdCBvZiBvbmlvbiB1bndpbmRpbmcgaW4KdWRsX21vZGVzZXRfaW5pdCgpLgoKVGhp
cyBpcyBtYWRlIHBvc3NpYmxlIGJ5IGEgcHJlY2VlZGluZyBwYXRjaCB3aGljaCBhZGRlZCBhIGRy
bW1fCmNsZWFudXAgYWN0aW9uIHRvIGRybV9tb2RlX2NvbmZpZ19pbml0KCksIGhlbmNlIGFsbCB3
ZSBuZWVkIHRvIGRvIHRvCmVuc3VyZSB0aGF0IGRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKCkgaXMg
cnVuIG9uIGZpbmFsIGRybV9kZXZpY2UKY2xlYW51cCBpcyBjaGVjayB0aGUgbmV3IGVycm9yIGNv
ZGUgZm9yIF9pbml0KCkuCgp2MjogRXhwbGFpbiB3aHkgdGhpcyBjbGVhbnVwIGlzIHBvc3NpYmxl
IChMYXVyZW50KS4KCkNjOiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFz
b25ib2FyZC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
aW50ZWwuY29tPgpDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KQ2M6IFNlYW4g
UGF1bCA8c2VhbkBwb29ybHkucnVuPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBm
ZndsbC5jaD4KQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzog
RW1pbCBWZWxpa292IDxlbWlsLmwudmVsaWtvdkBnbWFpbC5jb20+CkNjOiBHZXJkIEhvZmZtYW5u
IDxrcmF4ZWxAcmVkaGF0LmNvbT4KQ2M6ICJOb3JhbGYgVHLDuG5uZXMiIDxub3JhbGZAdHJvbm5l
cy5vcmc+CkNjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KQ2M6IFNhbSBS
YXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9k
cnYuYyAgICAgfCAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9kcnYuaCAgICAgfCAgMSAt
CiBkcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9tb2Rlc2V0LmMgfCAyMSArKysrKystLS0tLS0tLS0t
LS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9kcnYuYyBiL2RyaXZlcnMvZ3B1
L2RybS91ZGwvdWRsX2Rydi5jCmluZGV4IDhiNzhjMzU2YmViNS4uYjQ0N2ZiMDUzZTc4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vdWRsL3VkbF9kcnYuYwpAQCAtMzcsNyArMzcsNiBAQCBERUZJTkVfRFJNX0dFTV9GT1BTKHVk
bF9kcml2ZXJfZm9wcyk7CiBzdGF0aWMgdm9pZCB1ZGxfZHJpdmVyX3JlbGVhc2Uoc3RydWN0IGRy
bV9kZXZpY2UgKmRldikKIHsKIAl1ZGxfZmluaShkZXYpOwotCXVkbF9tb2Rlc2V0X2NsZWFudXAo
ZGV2KTsKIH0KIAogc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIGRyaXZlciA9IHsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL3VkbC91
ZGxfZHJ2LmgKaW5kZXggZTY3MjI3YzQ0Y2M0Li4xZGU3ZWIxYjZhYWMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRs
X2Rydi5oCkBAIC02OCw3ICs2OCw2IEBAIHN0cnVjdCB1ZGxfZGV2aWNlIHsKIAogLyogbW9kZXNl
dCAqLwogaW50IHVkbF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldik7Ci12b2lk
IHVkbF9tb2Rlc2V0X2NsZWFudXAoc3RydWN0IGRybV9kZXZpY2UgKmRldik7CiBzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqdWRsX2Nvbm5lY3Rvcl9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpOwog
CiBzdHJ1Y3QgdXJiICp1ZGxfZ2V0X3VyYihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX21vZGVzZXQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS91ZGwvdWRsX21vZGVzZXQuYwppbmRleCBkNTllYmFjNzBiMTUuLmNhZDBjODdmOGRlNiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxfbW9kZXNldC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS91ZGwvdWRsX21vZGVzZXQuYwpAQCAtNDY4LDcgKzQ2OCw5IEBAIGludCB1ZGxfbW9k
ZXNldF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJc3RydWN0IGRybV9jb25uZWN0b3Ig
KmNvbm5lY3RvcjsKIAlpbnQgcmV0OwogCi0JZHJtX21vZGVfY29uZmlnX2luaXQoZGV2KTsKKwly
ZXQgPSBkcm1fbW9kZV9jb25maWdfaW5pdChkZXYpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7
CiAKIAlkZXYtPm1vZGVfY29uZmlnLm1pbl93aWR0aCA9IDY0MDsKIAlkZXYtPm1vZGVfY29uZmln
Lm1pbl9oZWlnaHQgPSA0ODA7CkBAIC00ODIsMTAgKzQ4NCw4IEBAIGludCB1ZGxfbW9kZXNldF9p
bml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJZGV2LT5tb2RlX2NvbmZpZy5mdW5jcyA9ICZ1
ZGxfbW9kZV9mdW5jczsKIAogCWNvbm5lY3RvciA9IHVkbF9jb25uZWN0b3JfaW5pdChkZXYpOwot
CWlmIChJU19FUlIoY29ubmVjdG9yKSkgewotCQlyZXQgPSBQVFJfRVJSKGNvbm5lY3Rvcik7Ci0J
CWdvdG8gZXJyX2RybV9tb2RlX2NvbmZpZ19jbGVhbnVwOwotCX0KKwlpZiAoSVNfRVJSKGNvbm5l
Y3RvcikpCisJCXJldHVybiBQVFJfRVJSKGNvbm5lY3Rvcik7CiAKIAlmb3JtYXRfY291bnQgPSBB
UlJBWV9TSVpFKHVkbF9zaW1wbGVfZGlzcGxheV9waXBlX2Zvcm1hdHMpOwogCkBAIC00OTQsMTgg
KzQ5NCw5IEBAIGludCB1ZGxfbW9kZXNldF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJ
CQkJCSAgIHVkbF9zaW1wbGVfZGlzcGxheV9waXBlX2Zvcm1hdHMsCiAJCQkJCSAgIGZvcm1hdF9j
b3VudCwgTlVMTCwgY29ubmVjdG9yKTsKIAlpZiAocmV0KQotCQlnb3RvIGVycl9kcm1fbW9kZV9j
b25maWdfY2xlYW51cDsKKwkJcmV0dXJuIHJldDsKIAogCWRybV9tb2RlX2NvbmZpZ19yZXNldChk
ZXYpOwogCiAJcmV0dXJuIDA7Ci0KLWVycl9kcm1fbW9kZV9jb25maWdfY2xlYW51cDoKLQlkcm1f
bW9kZV9jb25maWdfY2xlYW51cChkZXYpOwotCXJldHVybiByZXQ7Ci19Ci0KLXZvaWQgdWRsX21v
ZGVzZXRfY2xlYW51cChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQotewotCWRybV9tb2RlX2NvbmZp
Z19jbGVhbnVwKGRldik7CiB9Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
