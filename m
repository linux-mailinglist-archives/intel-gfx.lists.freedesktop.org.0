Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D71096D1A4
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 18:15:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E1E36E42E;
	Thu, 18 Jul 2019 16:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0509D6E42E;
 Thu, 18 Jul 2019 16:15:26 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id x25so27968856ljh.2;
 Thu, 18 Jul 2019 09:15:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=EY90CNEDdHNbOElz8YZpDtXjzPT/Q84D5PZmTmIpGX8=;
 b=jnAcu2OoKt7+Cik3fr8EAFFbLiiSUe4GkNqg/aQlWdwW83A98vrylFIPq7UBG9xWfZ
 NVWVMKFnegRK/+ZtsAP2vqrcmNN46ob6ZlWZmz9yQ+sdymZeTfcXzeZsPhqB+7M+LZl4
 VvMcPkaohdkaW4+Qxrq+VvHxiA+veGV0g0OT6bVOTmFqVc+SyU/SUQ3WRhVBgjB5ayW/
 iGXPK8nY9PHyD7MWYA5VuPhZWF3/DX+RzRgLwwzjPDOzHfxbfvqshkggfiJi3HcJXent
 tZwTqa7Kgkjt+O/ILTMYC0FUAM2nF0KVyB+VUHRkA2mtILzk3CuI4Ds6phnD0wjmXW8F
 2N8w==
X-Gm-Message-State: APjAAAUEXBdnedlTdtH06l6dt6DZJXgkkXE8h6mKVwl4HxfUcGGtAPXd
 yvaF0diYB+WNHdc1NyDvyDOa9tNxcxce8A==
X-Google-Smtp-Source: APXvYqzVjo2ZCjNil0fwN9rUrxtrZjDevN1yhDPv0wEE2mg0vhc7qvUO5C/iYAPZpjsQ0AAV3icYmA==
X-Received: by 2002:a2e:8741:: with SMTP id q1mr24568969ljj.144.1563466524176; 
 Thu, 18 Jul 2019 09:15:24 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:23 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu, 18 Jul 2019 18:14:56 +0200
Message-Id: <20190718161507.2047-1-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EY90CNEDdHNbOElz8YZpDtXjzPT/Q84D5PZmTmIpGX8=;
 b=itZM25Ur2DNSgdCPTYxc1+6AWdelUsfTCuPKiH4yU0Vxvl/HFKVUgLIbY0oYYwPT4n
 5xegi+nIKfQQDNCkDw5ccvNyOYjupF/8DHrwJSYqXf+M3AqvdYj7L2O1E/y/QZc3jiL7
 USryYEk/mVNS/AjvpUEKhtWHJB7WekMcwvrx0Yjy5ispcLeDsDGH7iwm2OaUZWrHN5ln
 m+Qz2ysC2BChEippJPXiRw4C3gld6ecmxppxIrOJ5rTT2B4uZH4qttge580bz4xXgQv1
 71M/11WaguMQMZi6Xj8bdlbWW3UVQEiMmIjy6JWDnWYeBLMkspFvdfzw/EtNtJ973MH9
 Ox9w==
Subject: [Intel-gfx] [PATCH v1 0/11] drm: header maintenance
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
Cc: David Airlie <airlied@linux.ie>, Rob Herring <robh@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Chunming Zhou <david1.zhou@amd.com>,
 Jani Nikula <jani.nikula@intel.com>, linux-mediatek@lists.infradead.org,
 Stefan Agner <stefan@agner.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rmlyc3QgcGF0Y2ggZnJvbSBKYW5pIGZpeGVzIHNvIGRybV9wcmludC5oIGlzIHNlbGYtY29udGFp
bmVkLgpOZXh0IHR3byBwYXRjaGVzIGFyZSB0cml2aWFsIHJlbW92YWwgb2YgdWFwaSBkZXBlbmRl
bmNpZXMuCgphdGlfcGNpZ2FydCBpcyBmaXhlZCB0byBkcm9wIHVzZSBvZiBkcm1fb3NfbGludXgu
aAoKZHJtX3ZibGFuayBpcyBsaWtld2lzZSBmaXhlZCB0byBkcm9wIHVzZSBvZiBkcm1fb3NfbGlu
dXguaApUaGlzIHdhcyBhIG5vbi10cml2aWFsIGNvbnZlcnNpb24sICpyZXZpZXcgcmVxdWVzdGVk
ISoKClRoZSByZW1haW5pbmcgcGF0Y2hlcyBhcmUgcHJlcGFyYXRpb24gZm9yIGFuZCByZW1vdmFs
IG9mCnVhcGkvZHJtL2RybWggZnJvbSBkcm1fZmlsZS5oLgpUaGVyZSB3ZXJlIGEgZmV3IGZpbGVz
IHdoZXJlIHdlIGhhZCB0byBwdXNoIGluY2x1ZGUKb2YgZHJtL2RybS5oIG91dCB0byB0byBoYXZl
IGEgY2xlYW4gYnVpbGQuCgpDSyBIdSAtIHBsZWFzZSBsZXQgbWUgYXBwbHkgdGhlIG1lZGlhdGVr
IHBhdGNoIHRvCmRybS1taXNjLW5leHQsIGFzIGl0IGlzIHJlcXVpcmVkIGZvciB0aGUgZmluYWwg
cGF0Y2guCk9yIHB1c2ggaXQgdG8gZHJtLW1pc2MtbmV4dCB5b3Vyc2VsZi4KCglTYW0KCkphbmkg
TmlrdWxhICgxKToKICAgICAgZHJtL3BhbmVsOiBtYWtlIGRybV9wYW5lbC5oIHNlbGYtY29udGFp
bmVkCgpTYW0gUmF2bmJvcmcgKDEwKToKICAgICAgZHJtOiBkcm9wIHVhcGkgZGVwZW5kZW5jeSBm
cm9tIGRybV9wcmludC5oCiAgICAgIGRybTogZHJvcCB1YXBpIGRlcGVuZGVuY3kgZnJvbSBkcm1f
dmJsYW5rLmgKICAgICAgZHJtL2F0aV9wY2lnYXJ0OiBkcm9wIGRlcGVuZGVuY3kgb24gZHJtX29z
X2xpbnV4LmgKICAgICAgZHJtL3ZibGFuazogZHJvcCB1c2Ugb2YgRFJNX1dBSVRfT04oKQogICAg
ICBkcm06IGRpcmVjdCBpbmNsdWRlIG9mIGRybS5oIGluIGRybV9nZW0uYwogICAgICBkcm06IGRp
cmVjdCBpbmNsdWRlIG9mIGRybS5oIGluIGRybV9nZW1fc2htZW1faGVscGVyLmMKICAgICAgZHJt
OiBkaXJlY3QgaW5jbHVkZSBvZiBkcm0uaCBpbiBkcm1fcHJpbWUuYwogICAgICBkcm06IGRpcmVj
dCBpbmNsdWRlIG9mIGRybS5oIGluIGRybV9zeW5jb2JqLmMKICAgICAgZHJtL21lZGlhdGVrOiBk
aXJlY3QgaW5jbHVkZSBvZiBkcm0uaCBpbiBtdGtfZHJtX2dlbS5jCiAgICAgIGRybTogZHJvcCB1
YXBpIGRlcGVuZGVuY3kgZnJvbSBkcm1fZmlsZS5oCgogZHJpdmVycy9ncHUvZHJtL2F0aV9wY2ln
YXJ0LmMgICAgICAgICAgfCAxMCArKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5j
ICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBl
ci5jIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jICAgICAgICAgICAgfCAgMSAr
CiBkcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYyAgICAgICAgICB8ICAxICsKIGRyaXZlcnMv
Z3B1L2RybS9kcm1fdmJsYW5rLmMgICAgICAgICAgIHwgMjkgKysrKysrKysrKysrKysrKysrKyst
LS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jIHwgIDEgKwog
aW5jbHVkZS9kcm0vZHJtX2ZpbGUuaCAgICAgICAgICAgICAgICAgfCAgNCArLS0tCiBpbmNsdWRl
L2RybS9kcm1fcGFuZWwuaCAgICAgICAgICAgICAgICB8ICAxICsKIGluY2x1ZGUvZHJtL2RybV9w
cmludC5oICAgICAgICAgICAgICAgIHwgIDQgKy0tLQogaW5jbHVkZS9kcm0vZHJtX3ZibGFuay5o
ICAgICAgICAgICAgICAgfCAgMSAtCiAxMSBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCsp
LCAyMCBkZWxldGlvbnMoLSkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
