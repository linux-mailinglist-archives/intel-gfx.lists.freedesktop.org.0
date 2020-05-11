Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A8D1CD554
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:36:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77B296E41D;
	Mon, 11 May 2020 09:36:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA9646E40B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 09:36:08 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id f134so5127918wmf.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 02:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2cjd039my7SPkC8EPqo5VDZ4m3B+J5XsHlv9Dpzoesg=;
 b=Qna7Z2CigyjThsCHuZ/X3cRbURDuDQpqImnSRo6nIzmW8iaexs5F5iK4B/2Fzm5CAC
 mNcgoPNwbfhkCykh5/lQt3GhiJyHDLdWssZt4oQsoV3Ipv/FYkWGq9xXAFZUShCQqJL7
 8KXUXhEWtOWrE2OPwrsc1BFTa4DWsVRRP5HVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2cjd039my7SPkC8EPqo5VDZ4m3B+J5XsHlv9Dpzoesg=;
 b=Ogzoif2zZZ6A767ot3kiwEw6GZ2lETRZGGbB4YtW6dZaX1lrwveaffT/nEtr32kwyj
 +WHivDbJ6i+7CmMpDytY8PbYcrRKEAN8cVGXKEA1zGfKxRwQuiYt4/oMOzw7ZU+IzFJ9
 TI7kJOiqSLO+jZDfYuKQRycfXrjatCNgK1FSoF16Y62D0Jqy72VkdI2+ZuRuFL8EdXhg
 oao7pXalMoLuYaXTInBDrAv0hClVjC0sRHs0qmNWQkOOWs5xIAgjCj3guJvk3lGdA5bH
 o2pJLolOUFeZWDSX7yh2AwD2GJp7N7rtcciDF8+58RgvRlEyzHEMYk/YDZ1kAp/JR7RK
 4mSQ==
X-Gm-Message-State: AGi0PuZy622UVnhIlwbHRCQSgGheSfIINxDpc9xzHyrjthlXUXAvfNyR
 1hSWOIxk7rmDn/UuKYwo4pWWXQ==
X-Google-Smtp-Source: APiQypKJePbl+7tEgq6xud45uZ8qJrAJXUQHVS2aS6RjMTWfZ3J+Iapb0rNYPqFZfpdBUG2iZtcX3w==
X-Received: by 2002:a1c:19c1:: with SMTP id 184mr15666940wmz.29.1589189767537; 
 Mon, 11 May 2020 02:36:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q17sm9013945wmk.36.2020.05.11.02.36.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 02:36:06 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 11 May 2020 11:35:52 +0200
Message-Id: <20200511093554.211493-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
References: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/9] drm/shmem-helpers: Redirect mmap for
 imported dma-buf
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
Cc: Rob Herring <robh@kernel.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5IHRoaXMgc2VlbXMgdG8gd29yayBieSBjb252ZXJ0aW5nIHRoZSBzZ3QgaW50byBh
IHBhZ2VzIGFycmF5LAphbmQgdGhlbiB0cmVhdGluZyBpdCBsaWtlIGEgbmF0aXZlIG9iamVjdC4g
RG8gdGhlIHJpZ2h0IHRoaW5nIGFuZApyZWRpcmVjdCBtbWFwIHRvIHRoZSBleHBvcnRlci4KCldp
dGggdGhpcyBub3RoaW5nIGlzIGNhbGxpbmcgZ2V0X3BhZ2VzIGFueW1vcmUgb24gaW1wb3J0ZWQg
ZG1hLWJ1ZiwKYW5kIHdlIGNhbiBzdGFydCB0byByZW1vdmUgdGhlIHVzZSBvZiB0aGUgLT5wYWdl
cyBhcnJheSBmb3IgdGhhdCBjYXNlLgoKdjI6IFJlYmFzZQoKQ2M6IEdlcmQgSG9mZm1hbm4gPGty
YXhlbEByZWRoYXQuY29tPgpDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KQ2M6IE5v
cmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJt
X2dlbV9zaG1lbV9oZWxwZXIuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwppbmRleCBiOWNiYTVjYzYx
YzMuLjExN2E3ODQxZTI4NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2ht
ZW1faGVscGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMK
QEAgLTU1MSw2ICs1NTEsOSBAQCBpbnQgZHJtX2dlbV9zaG1lbV9tbWFwKHN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb2JqLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKIAkvKiBSZW1vdmUgdGhl
IGZha2Ugb2Zmc2V0ICovCiAJdm1hLT52bV9wZ29mZiAtPSBkcm1fdm1hX25vZGVfc3RhcnQoJm9i
ai0+dm1hX25vZGUpOwogCisJaWYgKG9iai0+aW1wb3J0X2F0dGFjaCkKKwkJcmV0dXJuIGRtYV9i
dWZfbW1hcChvYmotPmRtYV9idWYsIHZtYSwgMCk7CisKIAlzaG1lbSA9IHRvX2RybV9nZW1fc2ht
ZW1fb2JqKG9iaik7CiAKIAlyZXQgPSBkcm1fZ2VtX3NobWVtX2dldF9wYWdlcyhzaG1lbSk7Ci0t
IAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
