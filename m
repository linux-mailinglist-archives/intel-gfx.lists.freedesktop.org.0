Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 668AC3C184C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 19:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A14E6E950;
	Thu,  8 Jul 2021 17:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 504E96E948
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 17:38:08 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id r11so3268357wro.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 10:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aF+7eqin7S19iz1UaMS7J3yDc/1YnzVl0I5fw9EWIlI=;
 b=bO/n1Zkb675oqo0/mqmxMsZGEJK5fHx8vO2Qdp6XWQ13sNT986eieB+8HgrxFISvmn
 w1Rg2Av3kA57wfsywQwdtHolMQMPVlv13pjJaqC/naOXaX43wj/vMN5FQNr36btAD5CL
 OdZWTJTB2cD03BzImT/2/TGvok0NVl7zi+XOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aF+7eqin7S19iz1UaMS7J3yDc/1YnzVl0I5fw9EWIlI=;
 b=CFpmd+nAMgkymX7XAn+pDKN243Me/fdk2PlckmJg1HrEEycTCkcIhwbR6zur75ThIL
 hV444bDfcojFcAmJQ0KfoY8ek3uN7ldnfRkTn5/C4PJgTQEPy+HFbRGFaTrL5wJw00YA
 pFRAmrYSPomW4oI+M+Eild8axz3Rtk2jjseb4ImsXHuKh9+SeOAkskTZy3+bM3tQCtpK
 sp5UMPua/Fp7WDZ9vbFaNEW2yJ8xnDec+7JKc0qHQYm8YO8AxrvFlJwFZ75cck7oYlo7
 bU7K17zWyv7slwQAD/6Qhu3nC9VfkKnBb/1x4tMlrx48EqoZ/WHCH+1aIHdJhjnR4X4I
 4R2Q==
X-Gm-Message-State: AOAM533pA/zii45z55ZYhYmZVNFY9xhG+EUFJZA0xWQdLLbojtg/xq06
 lA5P52x9HwSItZNqngEcsfu52g==
X-Google-Smtp-Source: ABdhPJwb5BeLFRcg8K4BNw7pXlR3MfrHpXzNoWjZEF/8JFh241KqjnY9I8YmGDoEPgePmuWZETl0ew==
X-Received: by 2002:a5d:6ac4:: with SMTP id u4mr17670499wrw.166.1625765886972; 
 Thu, 08 Jul 2021 10:38:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l4sm2521853wme.26.2021.07.08.10.38.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 10:38:06 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  8 Jul 2021 19:37:35 +0200
Message-Id: <20210708173754.3877540-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 01/20] drm/sched: entity->rq selection cannot
 fail
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
Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Jack Zhang <Jack.Zhang1@amd.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Luben Tuikov <luben.tuikov@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgaXQgZG9lcywgc29tZW9uZSBtYW5hZ2VkIHRvIHNldCB1cCBhIHNjaGVkX2VudGl0eSB3aXRo
b3V0CnNjaGVkdWxlcnMsIHdoaWNoIGlzIGp1c3QgYSBkcml2ZXIgYnVnLgoKV2UgQlVHX09OKCkg
aGVyZSBiZWNhdXNlIGluIHRoZSBuZXh0IHBhdGNoIGRybV9zY2hlZF9qb2JfaW5pdCgpIHdpbGwK
YmUgc3BsaXQgdXAsIHdpdGggZHJtX3NjaGVkX2pvYl9hcm0oKSBuZXZlciBmYWlsaW5nLiBBbmQg
dGhhdCdzIHRoZQpwYXJ0IHdoZXJlIHRoZSBycSBzZWxlY3Rpb24gd2lsbCBlbmQgdXAgaW4uCgpO
b3RlIHRoYXQgaWYgaGF2aW5nIGFuIGVtcHR5IHNjaGVkX2xpc3Qgc2V0IG9uIGFuIGVudGl0eSBp
cyBpbmRlZWQgYQp2YWxpZCB1c2UtY2FzZSwgd2UgY2FuIGtlZXAgdGhhdCBjaGVjayBpbiBqb2Jf
aW5pdCBldmVuIGFmdGVyIHRoZSBzcGxpdAppbnRvIGpvYl9pbml0L2FybS4KClNpZ25lZC1vZmYt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogIkNocmlzdGlh
biBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBMdWJlbiBUdWlrb3YgPGx1
YmVuLnR1aWtvdkBhbWQuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZnds
bC5jaD4KQ2M6IFN0ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5jb20+CkNjOiBBbmRyZXkg
R3JvZHpvdnNreSA8YW5kcmV5Lmdyb2R6b3Zza3lAYW1kLmNvbT4KQ2M6IEJvcmlzIEJyZXppbGxv
biA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+CkNjOiBKYWNrIFpoYW5nIDxKYWNrLlpo
YW5nMUBhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5
LmMgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyAgIHwgMyAr
LS0KIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jCmluZGV4IDc5NTU0YWE0ZGJiMS4u
NmZjMTE2ZWU3MzAyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVk
X2VudGl0eS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMK
QEAgLTQ1LDcgKzQ1LDcgQEAKICAqIEBndWlsdHk6IGF0b21pY190IHNldCB0byAxIHdoZW4gYSBq
b2Igb24gdGhpcyBxdWV1ZQogICogICAgICAgICAgaXMgZm91bmQgdG8gYmUgZ3VpbHR5IGNhdXNp
bmcgYSB0aW1lb3V0CiAgKgotICogTm90ZTogdGhlIHNjaGVkX2xpc3Qgc2hvdWxkIGhhdmUgYXQg
bGVhc3Qgb25lIGVsZW1lbnQgdG8gc2NoZWR1bGUKKyAqIE5vdGU6IHRoZSBzY2hlZF9saXN0IG11
c3QgaGF2ZSBhdCBsZWFzdCBvbmUgZWxlbWVudCB0byBzY2hlZHVsZQogICogICAgICAgdGhlIGVu
dGl0eQogICoKICAqIFJldHVybnMgMCBvbiBzdWNjZXNzIG9yIGEgbmVnYXRpdmUgZXJyb3IgY29k
ZSBvbiBmYWlsdXJlLgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hl
ZF9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYwppbmRleCAz
M2M0MTRkNTVmYWIuLjAxZGQ0NzE1NDE4MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Nj
aGVkdWxlci9zY2hlZF9tYWluLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hl
ZF9tYWluLmMKQEAgLTU4Niw4ICs1ODYsNyBAQCBpbnQgZHJtX3NjaGVkX2pvYl9pbml0KHN0cnVj
dCBkcm1fc2NoZWRfam9iICpqb2IsCiAJc3RydWN0IGRybV9ncHVfc2NoZWR1bGVyICpzY2hlZDsK
IAogCWRybV9zY2hlZF9lbnRpdHlfc2VsZWN0X3JxKGVudGl0eSk7Ci0JaWYgKCFlbnRpdHktPnJx
KQotCQlyZXR1cm4gLUVOT0VOVDsKKwlCVUdfT04oIWVudGl0eS0+cnEpOwogCiAJc2NoZWQgPSBl
bnRpdHktPnJxLT5zY2hlZDsKIAotLSAKMi4zMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
