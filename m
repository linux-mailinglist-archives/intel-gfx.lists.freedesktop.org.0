Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1016C122A3
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 21:42:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B650896FA;
	Thu,  2 May 2019 19:42:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0ECB896FA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 19:42:17 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id w35so1545656edd.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 May 2019 12:42:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=smxA1EiAOM4O+e+0r4yKbO7u3umfCKvxARWKKLxNbAs=;
 b=Ie7QkhE687TYBQBN/jJyCLmaJDRBP7RsTM5FBg9dRE+UiVCk/E2QZKHxyqCf9sdgEp
 tN1shzq6bGj2Rh84bOoKw4QngUMjnMYkYkOeB3UITIYmjrf5qL2pBJesR/TxLvFQ8BTl
 qyuTcrlTDAKXjf+KFQTXfSUIDJp6YDORiIXuE0dHJXALncKIE/0AKVokRP7wWRHH03m1
 rdTBIIVW/HD7jGaiGvACYDqwefMpKjepy2QPeZZdTEAlUC8xzp8WNIiqIuqij7WSRT5X
 +ngcSzC2pqR10UHrlmxF33ISe+3SWMPjazCTdK7sH++QogegP8PHv/Ill2D00IPcqyJe
 IpyA==
X-Gm-Message-State: APjAAAVsiqll11dnlIcnHOYgEPGcwHrKe8W7Uo2hz4LcNdr/JyXgTy/m
 SlQ92oY5H5aRZTi0rqMfmgdAP3nKlsg=
X-Google-Smtp-Source: APXvYqz01qHcgVvDUN8n2qr8p2sF8W0Dc4T/DUcNDX/kre6/3gWRWF6XI0ffJg/OfJ1Y4qUcg9Ju9Q==
X-Received: by 2002:a50:a3dc:: with SMTP id t28mr3740043edb.256.1556826135961; 
 Thu, 02 May 2019 12:42:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id l43sm718924eda.70.2019.05.02.12.42.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 12:42:14 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu,  2 May 2019 21:42:07 +0200
Message-Id: <20190502194208.3535-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=smxA1EiAOM4O+e+0r4yKbO7u3umfCKvxARWKKLxNbAs=;
 b=WR2z2Dg1GwCmYak4J9AuuoWcQuVQmqMjWUu+Q54hC51oh46tx59Mezt76Twu6nyOx7
 2XESGkaJ7es5OvX7Vie/S849j2NCYt1NokepSyOcg3e1lXUiuMsgqeKOwVLhEzPvBCIl
 jQ6RjVRxX2/OkIBALKfGUVaeCukWPniuFYRuQ=
Subject: [Intel-gfx] [PATCH 1/2] RFC: hung_task: taint kernel
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
Cc: "Liu, Chuansheng" <chuansheng.liu@intel.com>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUncyB0aGUgaHVuZ190YXNrX3BhbmljIHN5c2N0bCwgYnV0IHRoYXQncyBhIGJpdCBhbiBl
eHRyZW1lIG1lYXN1cmUuCkFzIGEgZmFsbGJhY2sgdGFpbnQgYXQgbGVhc3QgdGhlIG1hY2hpbmUu
CgpPdXIgQ0kgdXNlcyB0aGlzIHRvIGRlY2lkZSB3aGVuIGEgcmVib290IGlzIG5lY2Vzc2FyeSwg
cGx1cyB0byBmaWd1cmUKb3V0IHdoZXRoZXIgdGhlIGtlcm5lbCBpcyBzdGlsbCBoYXBweS4KClNp
Z25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzog
QW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz4KQ2M6IFRldHN1byBIYW5k
YSA8cGVuZ3Vpbi1rZXJuZWxASS1sb3ZlLlNBS1VSQS5uZS5qcD4KQ2M6IERtaXRyeSBWeXVrb3Yg
PGR2eXVrb3ZAZ29vZ2xlLmNvbT4KQ2M6ICJQYXVsIEUuIE1jS2VubmV5IiA8cGF1bG1ja0BsaW51
eC5pYm0uY29tPgpDYzogVmFsZGlzIEtsZXRuaWVrcyA8dmFsZGlzLmtsZXRuaWVrc0B2dC5lZHU+
CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogVml0YWx5IEt1
em5ldHNvdiA8dmt1em5ldHNAcmVkaGF0LmNvbT4KQ2M6ICJMaXUsIENodWFuc2hlbmciIDxjaHVh
bnNoZW5nLmxpdUBpbnRlbC5jb20+Ci0tLQoga2VybmVsL2h1bmdfdGFzay5jIHwgMiArKwogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2tlcm5lbC9odW5nX3Rh
c2suYyBiL2tlcm5lbC9odW5nX3Rhc2suYwppbmRleCBmMTA4YTk1ODgyYzYuLjdmYWUxNmYxYjQ5
YyAxMDA2NDQKLS0tIGEva2VybmVsL2h1bmdfdGFzay5jCisrKyBiL2tlcm5lbC9odW5nX3Rhc2su
YwpAQCAtMjAzLDYgKzIwMyw4IEBAIHN0YXRpYyB2b2lkIGNoZWNrX2h1bmdfdW5pbnRlcnJ1cHRp
YmxlX3Rhc2tzKHVuc2lnbmVkIGxvbmcgdGltZW91dCkKIAlpZiAoaHVuZ190YXNrX2NhbGxfcGFu
aWMpIHsKIAkJdHJpZ2dlcl9hbGxfY3B1X2JhY2t0cmFjZSgpOwogCQlwYW5pYygiaHVuZ190YXNr
OiBibG9ja2VkIHRhc2tzIik7CisJfSBlbHNlIHsKKwkJYWRkX3RhaW50KFRBSU5UX1dBUk4sIExP
Q0tERVBfU1RJTExfT0spOwogCX0KIH0KIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
