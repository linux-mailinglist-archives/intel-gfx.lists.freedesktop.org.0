Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EE32C217
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 11:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B232D89DF9;
	Tue, 28 May 2019 09:03:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F25889DBF
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 09:03:23 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id f37so30561486edb.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 02:03:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HZwP5CFzD06sWD0G+Fe0mAzCpHhgcMKFAUp7XhkxC/k=;
 b=KkQZ/2XFX1vXvOdUXHBCoOw8jBhDeHia/Qlo1v2f3W4F1mWn+aGdhfeybK7HOwzL0d
 CpImSGn+hfJf/T0Jb05mZDUDtva18loWRmOoVzHLdoKKpFy8SxcyW4kTUtwBzO+nDHSD
 qjz191Tr2GPQh9304zpYXGErCcB5YfWnb7/fkjTF6NCVien+l2HdqKB0/0Q12i1e0pKd
 KgFVv21bZfmbfI6gp8F+Yb6pP9vUQtGjY3KVttYgieG7+siOSBJEbAIpQ5KsILHZYiTH
 ridae2jD1WQih1wCiuMp6H44GWSYq8jO60gxue2cYEKwNm2uyCh5Z080xItTcRzovTvL
 iUHA==
X-Gm-Message-State: APjAAAUcgTXpNDPRIMtJuipHG8ZnWShi9iZb4Z8poQUdCnLAmv+ULAY2
 c4/mck3YzatcVK4z7/XRv47o4A==
X-Google-Smtp-Source: APXvYqwHlk+CTEOYRVR2n0Zwg2fJHnhIcAQkS/q4yn3g+Dr67BhbtStsBv6flBr94eYXjUxcKSAJfQ==
X-Received: by 2002:a50:bf0c:: with SMTP id
 f12mr128312359edk.181.1559034201426; 
 Tue, 28 May 2019 02:03:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x49sm4072656edm.25.2019.05.28.02.03.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 02:03:20 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Tue, 28 May 2019 11:02:38 +0200
Message-Id: <20190528090304.9388-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
References: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HZwP5CFzD06sWD0G+Fe0mAzCpHhgcMKFAUp7XhkxC/k=;
 b=eXb8rxg7fFF6/2RAfZ4NWczgflnTAPw/L+VbbIhxEioapduOh2JwUJvBTIee7RTcn8
 /AEmskfBbKkJwNvzDW7ImicadrrECvrGsi/czi03V+Fn1gADb65ZC5uqG6kdNJWkk1ve
 o3N9d6Vz76kkzKUppLsCnKwnFEu72Q0/Uz8E4=
Subject: [Intel-gfx] [PATCH 07/33] fbdev/aty128fb: Remove dead code
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, DRI Development <dri-devel@lists.freedesktop.org>,
 Paul Mackerras <paulus@samba.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW90aXZhdGVkIGJlY2F1c2UgaXQgY29udGFpbnMgYSBzdHJ1Y3QgZGlzcGxheSwgd2hpY2ggaXMg
YSBmYmNvbgppbnRlcm5hbCBkYXRhIHN0cnVjdHVyZSB0aGF0IEkgd2FudCB0byByZW5hbWUuIEl0
IHNlZW1zIHRvIGhhdmUgYmVlbgpmb3JtZXJseSB1c2VkIGluIGRyaXZlcnMsIGJ1dCB0aGF0J3Mg
dmVyeSBsb25nIHRpbWUgYWdvLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9y
Zy5vcmc+ClJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgpDYzogUGF1bCBNYWNrZXJyYXMgPHBhdWx1c0BzYW1iYS5vcmc+CkNj
OiBsaW51eC1mYmRldkB2Z2VyLmtlcm5lbC5vcmcKLS0tCiBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2F0
eS9hdHkxMjhmYi5jIHwgNjQgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNjQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9mYmRl
di9hdHkvYXR5MTI4ZmIuYyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvYXR5L2F0eTEyOGZiLmMKaW5k
ZXggNzk0NDM0ODkxMjkxLi5iMDJlNjc1MjhhOTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8v
ZmJkZXYvYXR5L2F0eTEyOGZiLmMKKysrIGIvZHJpdmVycy92aWRlby9mYmRldi9hdHkvYXR5MTI4
ZmIuYwpAQCAtMjM1MCw3MCArMjM1MCw2IEBAIHN0YXRpYyBpbnQgYXR5MTI4ZmJfaW9jdGwoc3Ry
dWN0IGZiX2luZm8gKmluZm8sIHVfaW50IGNtZCwgdV9sb25nIGFyZykKIAlyZXR1cm4gLUVJTlZB
TDsKIH0KIAotI2lmIDAKLSAgICAvKgotICAgICAqICBBY2NlbGVyYXRlZCBmdW5jdGlvbnMKLSAg
ICAgKi8KLQotc3RhdGljIGlubGluZSB2b2lkIGF0eTEyOF9yZWN0Y29weShpbnQgc3JjeCwgaW50
IHNyY3ksIGludCBkc3R4LCBpbnQgZHN0eSwKLQkJCQkgICB1X2ludCB3aWR0aCwgdV9pbnQgaGVp
Z2h0LAotCQkJCSAgIHN0cnVjdCBmYl9pbmZvX2F0eTEyOCAqcGFyKQotewotCXUzMiBzYXZlX2Rw
X2RhdGF0eXBlLCBzYXZlX2RwX2NudGwsIGRzdHZhbDsKLQotCWlmICghd2lkdGggfHwgIWhlaWdo
dCkKLQkJcmV0dXJuOwotCi0JZHN0dmFsID0gZGVwdGhfdG9fZHN0KHBhci0+Y3VycmVudF9wYXIu
Y3J0Yy5kZXB0aCk7Ci0JaWYgKGRzdHZhbCA9PSBEU1RfMjRCUFApIHsKLQkJc3JjeCAqPSAzOwot
CQlkc3R4ICo9IDM7Ci0JCXdpZHRoICo9IDM7Ci0JfSBlbHNlIGlmIChkc3R2YWwgPT0gLUVJTlZB
TCkgewotCQlwcmludGsoImF0eTEyOGZiOiBpbnZhbGlkIGRlcHRoIG9yIFJHQkFcbiIpOwotCQly
ZXR1cm47Ci0JfQotCi0Jd2FpdF9mb3JfZmlmbygyLCBwYXIpOwotCXNhdmVfZHBfZGF0YXR5cGUg
PSBhdHlfbGRfbGUzMihEUF9EQVRBVFlQRSk7Ci0Jc2F2ZV9kcF9jbnRsICAgICA9IGF0eV9sZF9s
ZTMyKERQX0NOVEwpOwotCi0Jd2FpdF9mb3JfZmlmbyg2LCBwYXIpOwotCWF0eV9zdF9sZTMyKFNS
Q19ZX1gsIChzcmN5IDw8IDE2KSB8IHNyY3gpOwotCWF0eV9zdF9sZTMyKERQX01JWCwgUk9QM19T
UkNDT1BZIHwgRFBfU1JDX1JFQ1QpOwotCWF0eV9zdF9sZTMyKERQX0NOVEwsIERTVF9YX0xFRlRf
VE9fUklHSFQgfCBEU1RfWV9UT1BfVE9fQk9UVE9NKTsKLQlhdHlfc3RfbGUzMihEUF9EQVRBVFlQ
RSwgc2F2ZV9kcF9kYXRhdHlwZSB8IGRzdHZhbCB8IFNSQ19EU1RDT0xPUik7Ci0KLQlhdHlfc3Rf
bGUzMihEU1RfWV9YLCAoZHN0eSA8PCAxNikgfCBkc3R4KTsKLQlhdHlfc3RfbGUzMihEU1RfSEVJ
R0hUX1dJRFRILCAoaGVpZ2h0IDw8IDE2KSB8IHdpZHRoKTsKLQotCXBhci0+YmxpdHRlcl9tYXlf
YmVfYnVzeSA9IDE7Ci0KLQl3YWl0X2Zvcl9maWZvKDIsIHBhcik7Ci0JYXR5X3N0X2xlMzIoRFBf
REFUQVRZUEUsIHNhdmVfZHBfZGF0YXR5cGUpOwotCWF0eV9zdF9sZTMyKERQX0NOVEwsIHNhdmVf
ZHBfY250bCk7Ci19Ci0KLQotICAgIC8qCi0gICAgICogVGV4dCBtb2RlIGFjY2VsZXJhdGVkIGZ1
bmN0aW9ucwotICAgICAqLwotCi1zdGF0aWMgdm9pZCBmYmNvbl9hdHkxMjhfYm1vdmUoc3RydWN0
IGRpc3BsYXkgKnAsIGludCBzeSwgaW50IHN4LCBpbnQgZHksCi0JCQkgICAgICAgaW50IGR4LCBp
bnQgaGVpZ2h0LCBpbnQgd2lkdGgpCi17Ci0Jc3ggICAgICo9IGZvbnR3aWR0aChwKTsKLQlzeSAg
ICAgKj0gZm9udGhlaWdodChwKTsKLQlkeCAgICAgKj0gZm9udHdpZHRoKHApOwotCWR5ICAgICAq
PSBmb250aGVpZ2h0KHApOwotCXdpZHRoICAqPSBmb250d2lkdGgocCk7Ci0JaGVpZ2h0ICo9IGZv
bnRoZWlnaHQocCk7Ci0KLQlhdHkxMjhfcmVjdGNvcHkoc3gsIHN5LCBkeCwgZHksIHdpZHRoLCBo
ZWlnaHQsCi0JCQkoc3RydWN0IGZiX2luZm9fYXR5MTI4ICopcC0+ZmJfaW5mbyk7Ci19Ci0jZW5k
aWYgLyogMCAqLwotCiBzdGF0aWMgdm9pZCBhdHkxMjhfc2V0X3N1c3BlbmQoc3RydWN0IGF0eTEy
OGZiX3BhciAqcGFyLCBpbnQgc3VzcGVuZCkKIHsKIAl1MzIJcG1ndDsKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
