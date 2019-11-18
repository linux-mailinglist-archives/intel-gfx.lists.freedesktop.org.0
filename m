Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1799B100286
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 11:36:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6175389FD4;
	Mon, 18 Nov 2019 10:35:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F4F089DA3
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 10:35:49 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id w9so18823556wrr.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 02:35:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zrkZzi6xJZH0ir+v9sQYIFLS7Cjay4SqxxYFpecXTc4=;
 b=JSaT7Zlr2FQ3VT7Sl/Xso0oBVrfGquKGrfjuky5i+CjpDqouniL52CxuBcE0LZ+PYo
 5pX6LepVMNyP96XEZoBvpFfx9TVEg4vNy7LmwAnQJAUm8X0thVZR8eN1KiTEpa5Npk3F
 3ZT9q7x8DoM78444jh/sGcJ9a4sRX7LSxt62sJPhWMHYVbHMVvbpcDFUBvrydLiZXMYM
 puh4wm6/gwW/gAny3r8DMmNiqM5fMW2sLhAKBFkPf0mZ2JU1S5YYuSSUVXWl+/14RVWW
 JsWtzX1UQWiwOM5uNujK9AgY4esQIM2o2y+HrbJiclJQnBDmA1rEZbm8dbVto9Xm/IR6
 rQaA==
X-Gm-Message-State: APjAAAUMLGybesWvuVXbQkCrlmnuIQwgaM2FtLARis/yFDcFTe+9EDOI
 +6I4NFncjN8JSZA3JEtlivK//w==
X-Google-Smtp-Source: APXvYqzI/YjzhTbWzi6ciucIdm8C7vWezG/8QWxens/pBTDSA4sreEr++yzgVhnRd33mMZNdnAbvBA==
X-Received: by 2002:a5d:484f:: with SMTP id n15mr11212226wrs.112.1574073348186; 
 Mon, 18 Nov 2019 02:35:48 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id j2sm22749200wrt.61.2019.11.18.02.35.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:35:47 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 18 Nov 2019 11:35:25 +0100
Message-Id: <20191118103536.17675-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zrkZzi6xJZH0ir+v9sQYIFLS7Cjay4SqxxYFpecXTc4=;
 b=HUUjPlDf/7REWOmOIC/TSGb4uoOHNXPFE6noEEwpSESnIUvoPs/No8EZbDpIAmHPq2
 PYW/aO/SMcNUzsmyVKPJDpjFQZgD0rxGnGChrOz/1PkWF4NYSB1awoKnGAiDY0Hz49Yn
 oa/k62j8e1twHYqHm2dARgS0una/N7QVx4E54=
Subject: [Intel-gfx] [PATCH 04/15] staging/android/ion: delete
 dma_buf->kmap/unmap implemenation
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
Cc: devel@driverdev.osuosl.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 Laura Abbott <labbott@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUncyBubyBjYWxsZXJzIGluLXRyZWUgYW55bW9yZS4KCkZvciBtZXJnaW5nIHByb2JhYmx5
IGJlc3QgdG8gc3R1ZmYgdGhpcyBpbnRvIGRybS1taXNjLCBzaW5jZSB0aGF0J3MKd2hlcmUgdGhl
IGRtYS1idWYgaGVhcHMgd2lsbCBsYW5kIHRvby4gQW5kIHRoZSByZXN1bHRpbmcgY29uZmxpY3QK
aG9wZWZ1bGx5IGVuc3VyZXMgdGhhdCBkbWEtYnVmIGhlYXBzIHdvbnQgaGF2ZSBhIG5ldyAtPmtt
YXAvdW5tYXAKaW1wbGVtZW5hdGlvbi4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogTGF1cmEgQWJib3R0IDxsYWJib3R0QHJlZGhhdC5j
b20+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogZGV2ZWxA
ZHJpdmVyZGV2Lm9zdW9zbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwot
LS0KIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyB8IDE0IC0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
dGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jIGIvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lv
bi5jCmluZGV4IGU2YjFjYTE0MWI5My4uYmI0ZWRlZGMxMTUwIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQv
aW9uL2lvbi5jCkBAIC0yNzQsMTggKzI3NCw2IEBAIHN0YXRpYyB2b2lkIGlvbl9kbWFfYnVmX3Jl
bGVhc2Uoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikKIAlfaW9uX2J1ZmZlcl9kZXN0cm95KGJ1ZmZl
cik7CiB9CiAKLXN0YXRpYyB2b2lkICppb25fZG1hX2J1Zl9rbWFwKHN0cnVjdCBkbWFfYnVmICpk
bWFidWYsIHVuc2lnbmVkIGxvbmcgb2Zmc2V0KQotewotCXN0cnVjdCBpb25fYnVmZmVyICpidWZm
ZXIgPSBkbWFidWYtPnByaXY7Ci0KLQlyZXR1cm4gYnVmZmVyLT52YWRkciArIG9mZnNldCAqIFBB
R0VfU0laRTsKLX0KLQotc3RhdGljIHZvaWQgaW9uX2RtYV9idWZfa3VubWFwKHN0cnVjdCBkbWFf
YnVmICpkbWFidWYsIHVuc2lnbmVkIGxvbmcgb2Zmc2V0LAotCQkJICAgICAgIHZvaWQgKnB0cikK
LXsKLX0KLQogc3RhdGljIGludCBpb25fZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBk
bWFfYnVmICpkbWFidWYsCiAJCQkJCWVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikK
IHsKQEAgLTM0OSw4ICszMzcsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIGRt
YV9idWZfb3BzID0gewogCS5kZXRhY2ggPSBpb25fZG1hX2J1Zl9kZXRhdGNoLAogCS5iZWdpbl9j
cHVfYWNjZXNzID0gaW9uX2RtYV9idWZfYmVnaW5fY3B1X2FjY2VzcywKIAkuZW5kX2NwdV9hY2Nl
c3MgPSBpb25fZG1hX2J1Zl9lbmRfY3B1X2FjY2VzcywKLQkubWFwID0gaW9uX2RtYV9idWZfa21h
cCwKLQkudW5tYXAgPSBpb25fZG1hX2J1Zl9rdW5tYXAsCiB9OwogCiBzdGF0aWMgaW50IGlvbl9h
bGxvYyhzaXplX3QgbGVuLCB1bnNpZ25lZCBpbnQgaGVhcF9pZF9tYXNrLCB1bnNpZ25lZCBpbnQg
ZmxhZ3MpCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
