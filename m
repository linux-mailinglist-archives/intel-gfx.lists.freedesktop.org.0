Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CD23B0ACB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 18:55:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2309D6E7D1;
	Tue, 22 Jun 2021 16:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1F476E7D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 16:55:19 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id n7so24499163wri.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 09:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ofnj3zZOb6lvNBLTmLvRZ/dI7B7Qizs2A5qFqSokZMs=;
 b=PlDcLOVGiA96xcwhvZHPQlAvGMEDcBg9O6ntIM3BCh41iUZ2TDSZtrlqYDU8AaH4SW
 VDIN57zvAe9n66JyTgIQ0zKjFdNj0fhCyqYu1iSpC/6rjhGX2IkMAmVssHzRiuldBTiR
 jhp1mZSCgGKNP26cKAT1jLdUgW5uFs/CRHA+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ofnj3zZOb6lvNBLTmLvRZ/dI7B7Qizs2A5qFqSokZMs=;
 b=Tb5dCrx/lcMrq+hsHq3zBYk2F6+Cw8XnRgwXQR2BW1Mz82bE8qu2PDcwQy9o0WceL2
 l7+xwoTH6OCMnzwa0VuMTV65VL8GRvohGXT7kyDUgr605Iq4G6yCWP4+WKpmDHJwraHn
 yq5Ccp9iwwuvLXzGBFvtKA4clr6blmN2tpfCBClaxlU0eShh2TEhdc6CK9qQa/aNOhVE
 FmHx0mslvc3Nd1tEb5+FV8Gs01LDGNwKpJu53MXfz/QYXJKxewFF51CSVEQZoDJBY09n
 JfyLiGzT+d+u1X13cdxwIO0uOtbxeDI49R0SkRLPa+FffIFEm/rWw3l8SykKanph/doK
 WtkQ==
X-Gm-Message-State: AOAM531pE2xI1gxdIaU9NxF8pOJn0xCohHMiBYRoU4ZE5xanfiwtcKtE
 zNjfm5AIIkp8hcPL0ucs2VcLIA==
X-Google-Smtp-Source: ABdhPJxbm3m5AxBLJ1sntMH1y3g3e+GjtyXkKAUUh9TQfj84Nt1Ek6DhdWavkN+hSBoePr5r0dEEoQ==
X-Received: by 2002:a5d:6c65:: with SMTP id r5mr5875974wrz.339.1624380918343; 
 Tue, 22 Jun 2021 09:55:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l23sm3632342wmc.5.2021.06.22.09.55.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 09:55:17 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 22 Jun 2021 18:54:57 +0200
Message-Id: <20210622165511.3169559-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0.rc2
In-Reply-To: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/15] dma-resv: Fix kerneldoc
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
 Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3ZlcnNpZ2h0IGZyb20KCmNvbW1pdCA2ZWRiZDZhYmI3ODNkNTRmNmFjNGMzZWQ1Y2Q5ZTUwY2Zm
NmMxNWU5CkF1dGhvcjogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
PgpEYXRlOiAgIE1vbiBNYXkgMTAgMTY6MTQ6MDkgMjAyMSArMDIwMAoKICAgIGRtYS1idWY6IHJl
bmFtZSBhbmQgY2xlYW51cCBkbWFfcmVzdl9nZXRfZXhjbCB2MwoKU2lnbmVkLW9mZi1ieTogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBTdW1pdCBTZW13YWwgPHN1
bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwotLS0KIGluY2x1ZGUvbGludXgvZG1hLXJlc3YuaCB8
IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaCBiL2luY2x1ZGUvbGludXgvZG1hLXJl
c3YuaAppbmRleCA1NjJiODg1Y2Y5YzMuLmUxY2EyMDgwYTFmZiAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS9saW51eC9kbWEtcmVzdi5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaApAQCAtMjEy
LDcgKzIxMiw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBkbWFfcmVzdl91bmxvY2soc3RydWN0IGRt
YV9yZXN2ICpvYmopCiB9CiAKIC8qKgotICogZG1hX3Jlc3ZfZXhjbHVzaXZlIC0gcmV0dXJuIHRo
ZSBvYmplY3QncyBleGNsdXNpdmUgZmVuY2UKKyAqIGRtYV9yZXN2X2V4Y2xfZmVuY2UgLSByZXR1
cm4gdGhlIG9iamVjdCdzIGV4Y2x1c2l2ZSBmZW5jZQogICogQG9iajogdGhlIHJlc2VydmF0aW9u
IG9iamVjdAogICoKICAqIFJldHVybnMgdGhlIGV4Y2x1c2l2ZSBmZW5jZSAoaWYgYW55KS4gQ2Fs
bGVyIG11c3QgZWl0aGVyIGhvbGQgdGhlIG9iamVjdHMKLS0gCjIuMzIuMC5yYzIKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
