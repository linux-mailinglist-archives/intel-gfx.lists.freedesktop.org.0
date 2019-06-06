Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C460837F52
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 23:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 282AC897F0;
	Thu,  6 Jun 2019 21:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09C70897F0
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 21:15:51 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id p15so5294392eds.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Jun 2019 14:15:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AvxQASCBsC5atD2r+eEtLSGh4Ly5gAtj0IWdStXo5q0=;
 b=s8dMZWcmKNcdscqP4k9qTMoJzDuUhmjrg9UiDXBeA4mRITmyMDPM8AcV9iPGJnk4XR
 9tmSpJPVYj5r+ZAn0duc9zJFEf4qAs8oZQCr8WvtRuPW/C+Wpau3dhJhdpF07708ejiM
 mwoOztsWDl3R2ydHsUV4oY19Vp8QW0JWRwrgkeQvwDuqOjL5DiEyIPIUBDWxUHPFgv1X
 EM9427Jvk/XCQ0JL9+keqs+h/o+doNwNFjxe0Dbm2WGkYbFSTMpusYCZmXPVcuQibfL8
 2rsCyUxXuNYuU+nnPCLisg4PVgUerOSVR2TbHnIB7BzZNsGuhzv1yfFfzgwQ0nlMSYGL
 XRCg==
X-Gm-Message-State: APjAAAV0+Hs20KbG9PSnA1RdRqb5fTFiympaUeHNE9HSyInMyBGwX9u2
 kZyYI7GJ/M/9k7p4PHLxFZ4knQ==
X-Google-Smtp-Source: APXvYqwf8zDtG4H9+0a6igXN7+Jc9fn/KRbTVx9a2kjLqwbkjJYr0ufe6lOmdXIIJAMPyIOvUMHsyA==
X-Received: by 2002:a50:972a:: with SMTP id c39mr17712634edb.46.1559855749653; 
 Thu, 06 Jun 2019 14:15:49 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id y42sm12084ede.86.2019.06.06.14.15.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 14:15:48 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  6 Jun 2019 23:15:44 +0200
Message-Id: <20190606211544.5389-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AvxQASCBsC5atD2r+eEtLSGh4Ly5gAtj0IWdStXo5q0=;
 b=Df9o85k1SQVivuewhgIh/5VzCQp2pFngZC7E+y2P2wiVOt1uSourLAjkyKPF7Agoyd
 Ue9QRorngcF0Sq6i2qBsIGo+8g4nOaWUmoLohOpaV0CsbUoDpVRkXk35S5vogisyK+Jf
 WcQstYlQuou1DIV4NSQ7omvrbbPEPm5ywfTk0=
Subject: [Intel-gfx] [PATCH] drm/crc-debugfs: Also sprinkle irqrestore over
 early exits
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
Cc: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SS4gd2FzLiBibGluZC4KCkNhdWdodCB3aXRoIHZrbXMsIHdoaWNoIGhhcyBzb21lIHJlYWxseSBz
bG93IGNyYyBjb21wdXRhdGlvbiBmdW5jdGlvbi4KCkZpeGVzOiAxODgyMDE4YTcwZTAgKCJkcm0v
Y3JjLWRlYnVnZnM6IFVzZXIgaXJxc2FmZSBzcGlubG9jayBpbiBkcm1fY3J0Y19hZGRfY3JjX2Vu
dHJ5IikKQ2M6IFJvZHJpZ28gU2lxdWVpcmEgPHJvZHJpZ29zaXF1ZWlyYW1lbG9AZ21haWwuY29t
PgpDYzogVG9tZXUgVml6b3NvIDx0b21ldS52aXpvc29AY29sbGFib3JhLmNvbT4KQ2M6IEVtaWwg
VmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+CkNjOiBCZW5qYW1pbiBHYWlnbmFy
ZCA8YmVuamFtaW4uZ2FpZ25hcmRAbGluYXJvLm9yZz4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZGVidWdm
c19jcmMuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RlYnVnZnNfY3JjLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RlYnVnZnNfY3JjLmMKaW5kZXggN2YzNWI1YmExOTI0Li5k
MmYxMDJmMDE1MTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZGVidWdmc19jcmMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RlYnVnZnNfY3JjLmMKQEAgLTQwMiw3ICs0MDIs
NyBAQCBpbnQgZHJtX2NydGNfYWRkX2NyY19lbnRyeShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsIGJv
b2wgaGFzX2ZyYW1lLAogCiAJLyogQ2FsbGVyIG1heSBub3QgaGF2ZSBub3RpY2VkIHlldCB0aGF0
IHVzZXJzcGFjZSBoYXMgc3RvcHBlZCByZWFkaW5nICovCiAJaWYgKCFjcmMtPmVudHJpZXMpIHsK
LQkJc3Bpbl91bmxvY2soJmNyYy0+bG9jayk7CisJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmNy
Yy0+bG9jaywgZmxhZ3MpOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKQEAgLTQxMyw3ICs0MTMs
NyBAQCBpbnQgZHJtX2NydGNfYWRkX2NyY19lbnRyeShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsIGJv
b2wgaGFzX2ZyYW1lLAogCQlib29sIHdhc19vdmVyZmxvdyA9IGNyYy0+b3ZlcmZsb3c7CiAKIAkJ
Y3JjLT5vdmVyZmxvdyA9IHRydWU7Ci0JCXNwaW5fdW5sb2NrKCZjcmMtPmxvY2spOworCQlzcGlu
X3VubG9ja19pcnFyZXN0b3JlKCZjcmMtPmxvY2ssIGZsYWdzKTsKIAogCQlpZiAoIXdhc19vdmVy
ZmxvdykKIAkJCURSTV9FUlJPUigiT3ZlcmZsb3cgb2YgQ1JDIGJ1ZmZlciwgdXNlcnNwYWNlIHJl
YWRzIHRvbyBzbG93LlxuIik7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
