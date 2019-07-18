Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5786D1B1
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 18:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13F0B6E43A;
	Thu, 18 Jul 2019 16:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D23646E43A;
 Thu, 18 Jul 2019 16:15:35 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id r9so27931002ljg.5;
 Thu, 18 Jul 2019 09:15:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=frt3PhKQBylKx3tn0yMJrH+277gjX7vmRE3rzWAOnE8=;
 b=VhAXbxaDLNzjSxSYzHjgfN3/Y4o+5VMu60GRJN6q6wraWbCIWZYt4/8BRpdTFDTx8F
 gwJqjODKTenI1YVWh82433uDTHenqT4LYOKylmKJB0zsiWCiOU0WRHvxjb2Unn8U5hOK
 twY5CHF/ShaFc/LtZu+uh8DLwDKyHwonwBrmaC+mGXF6HZeFlXTzCgqedNWRLf1r/oUh
 jai/iKW0AadXi3WrKGT8Xaa1zy5AW1LM7ohLtdlFDheBZrWdvhnrH9CghhJGd0M2OIBV
 r20Nubsi+uS8vft0ZgLwYGMXu9abUZIM1YUL76GLCvMLkReRg7w6/iaChL+pizPpGLJl
 mw2w==
X-Gm-Message-State: APjAAAV09PCnBRtxTcnxKYqf+IgLQK6VRTf7TlKAjE+x4bhm4TWNdRKB
 v+Pqueaan1SLosviByBMSHTfN+4dTkf9Vw==
X-Google-Smtp-Source: APXvYqz/RnnkqyLtk3obXJqtNg+i+wdOYBauoGyguf1eiAnrv5wKKJGQGPe8OZoel1lFzRD+6rhT2g==
X-Received: by 2002:a2e:3807:: with SMTP id f7mr11394109lja.87.1563466533469; 
 Thu, 18 Jul 2019 09:15:33 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:33 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu, 18 Jul 2019 18:15:02 +0200
Message-Id: <20190718161507.2047-7-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=frt3PhKQBylKx3tn0yMJrH+277gjX7vmRE3rzWAOnE8=;
 b=sor6nM1ennhFjpJNXT+dUZW2uvyNCzkQJQRqB632N4GQ876fQQFM/wgqZsa1bMU6B3
 M/KjIDrmU8AGE+Oe9pZMW6fBGZKFarfZ/nqedHcps4Zy/nfngrk4qOQil2ISENMPYqJe
 vNzgB+H/7gRCrZfLczjmymi0WS+3so2KJaOqwVA3DYOdCDMRZIAL7DlQAEJVdLOTLLcR
 vPl05yR+hc+5wI7LGtSJURbTpSSaqGGQZB5W1jFB2caPRc4o9WxyKS+vJ68YDkqd0J7o
 TiNzz1ZT1MG7h+Id5PVwEQmix9WnOtmMplqQX30/Okmk/+DRu755WLWbnSTNnRh7y/LT
 cyFQ==
Subject: [Intel-gfx] [PATCH v1 06/11] drm: direct include of drm.h in
 drm_gem.c
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
Cc: David Airlie <airlied@linux.ie>, Sam Ravnborg <sam@ravnborg.org>,
 Rob Herring <robh@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Chunming Zhou <david1.zhou@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 linux-mediatek@lists.infradead.org, Stefan Agner <stefan@agner.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RG8gbm90IHJlbHkgb24gaW5jbHVkaW5nIGRybS5oIGZyb20gZHJtX2ZpbGUuaCwKYXMgdGhlIGlu
Y2x1ZGUgaW4gZHJtX2ZpbGUuaCB3aWxsIGJlIGRyb3BwZWQuCgpTaWduZWQtb2ZmLWJ5OiBTYW0g
UmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJp
cGFyZEBib290bGluLmNvbT4KQ2M6IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgpDYzogRGF2
aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPgpDYzogRXJpYyBBbmhvbHQgPGVyaWNAYW5ob2x0Lm5ldD4KQ2M6IFRob21hcyBaaW1t
ZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jIHwgMSArCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5j
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYwppbmRleCBlNmMxMmM2ZWM3MjguLjI0M2Y0M2Q3
MGY0MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX2dlbS5jCkBAIC0zOSw2ICszOSw3IEBACiAjaW5jbHVkZSA8bGludXgvbWVt
X2VuY3J5cHQuaD4KICNpbmNsdWRlIDxsaW51eC9wYWdldmVjLmg+CiAKKyNpbmNsdWRlIDxkcm0v
ZHJtLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9kZXZpY2UuaD4KICNpbmNsdWRlIDxkcm0vZHJtX2Ry
di5oPgogI2luY2x1ZGUgPGRybS9kcm1fZmlsZS5oPgotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
