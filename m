Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF8922E5C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:22:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 047A989247;
	Mon, 20 May 2019 08:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7826789257
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:22:30 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id m4so22529999edd.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 01:22:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4UC6980ATt6g2nqFDn2Bpgan2GTqp4ZZAGnr3VO2LjI=;
 b=FajovWDBtqMB52SCP7OjiGjLWlrgs/AXDhqxNWvNaBONZsJMghfFHdmxN7THDLA0tn
 uMPldR8lkQC1URuGufe3z417g0exeFkXg2EoBdqkeo4BWWy7KI73adzvSojf4lynC6pW
 9T1GiF7VzN6GHbjZam7FeayhRi7f8oxCkmmqqEufLV/TxqlFmvHdGt04AmHgI8wdxybQ
 XFhgE3x+8VWDP43GB4dtoZEhjo/kwJZcubDsG0XKLlVXwz+E3wnUxWpKAhFTduI6pBft
 6KKz9bSxFdz4tJETaZgIbgA1A6/lvMeTIY04en7GiMvegzBcctD0fe+td6X+B2whCl2w
 iIow==
X-Gm-Message-State: APjAAAWhgmocUHDkM1tZ1QMJck7yT2lZHxuBq4rc11tHiDla7uY6bWEp
 12CIsJzVBaHCiA9tqDODuKB6cg==
X-Google-Smtp-Source: APXvYqzDLu9/GndEePgiMrQ6/ujxXJCreTf5PlH4FgvtQmGS1mXtvAIi9EhfVpK0KKXgJ8vPKQxX3Q==
X-Received: by 2002:a17:906:b741:: with SMTP id
 fx1mr5110659ejb.45.1558340548318; 
 Mon, 20 May 2019 01:22:28 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t25sm3021263ejx.8.2019.05.20.01.22.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:22:27 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 10:21:48 +0200
Message-Id: <20190520082216.26273-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4UC6980ATt6g2nqFDn2Bpgan2GTqp4ZZAGnr3VO2LjI=;
 b=dAezrIqrBzbowSUT4bmjJHvFuoRDUot4TIt1DhCg1IdwLfIZ3foHIhAdtsVYqWZwkH
 LtfD6E9Lp7CdA0Ph5XoRHNGw3IYX/hRpt6SrjJ0o0ikqzT8aSMWH8VLcAZjH2VdaA0DA
 +zsohuUeum3CLs9yqrlxm9Bd+Anxdag2Obl88=
Subject: [Intel-gfx] [PATCH 05/33] fbdev/sa1100fb: Remove dead code
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW90aXZhdGVkIGJlY2F1c2UgaXQgY29udGFpbnMgYSBzdHJ1Y3QgZGlzcGxheSwgd2hpY2ggaXMg
YSBmYmNvbgppbnRlcm5hbCBkYXRhIHN0cnVjdHVyZSB0aGF0IEkgd2FudCB0byByZW5hbWUuIEl0
IHNlZW1zIHRvIGhhdmUgYmVlbgpmb3JtZXJseSB1c2VkIGluIGRyaXZlcnMsIGJ1dCB0aGF0J3Mg
dmVyeSBsb25nIHRpbWUgYWdvLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xs
LmNoPgotLS0KIGRyaXZlcnMvdmlkZW8vZmJkZXYvc2ExMTAwZmIuYyB8IDI1IC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L3NhMTEwMGZiLmMgYi9kcml2ZXJzL3ZpZGVvL2ZiZGV2
L3NhMTEwMGZiLmMKaW5kZXggMTVhZTUwMDYzMjk2Li5mN2Y4ZGVlMDQ0YjEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvdmlkZW8vZmJkZXYvc2ExMTAwZmIuYworKysgYi9kcml2ZXJzL3ZpZGVvL2ZiZGV2
L3NhMTEwMGZiLmMKQEAgLTk3NCwzNSArOTc0LDEwIEBAIHN0YXRpYyB2b2lkIHNhMTEwMGZiX3Rh
c2soc3RydWN0IHdvcmtfc3RydWN0ICp3KQogICovCiBzdGF0aWMgdW5zaWduZWQgaW50IHNhMTEw
MGZiX21pbl9kbWFfcGVyaW9kKHN0cnVjdCBzYTExMDBmYl9pbmZvICpmYmkpCiB7Ci0jaWYgMAot
CXVuc2lnbmVkIGludCBtaW5fcGVyaW9kID0gKHVuc2lnbmVkIGludCktMTsKLQlpbnQgaTsKLQot
CWZvciAoaSA9IDA7IGkgPCBNQVhfTlJfQ09OU09MRVM7IGkrKykgewotCQlzdHJ1Y3QgZGlzcGxh
eSAqZGlzcCA9ICZmYl9kaXNwbGF5W2ldOwotCQl1bnNpZ25lZCBpbnQgcGVyaW9kOwotCi0JCS8q
Ci0JCSAqIERvIHdlIG93biB0aGlzIGRpc3BsYXk/Ci0JCSAqLwotCQlpZiAoZGlzcC0+ZmJfaW5m
byAhPSAmZmJpLT5mYikKLQkJCWNvbnRpbnVlOwotCi0JCS8qCi0JCSAqIE9rLCBjYWxjdWxhdGUg
aXRzIERNQSBwZXJpb2QKLQkJICovCi0JCXBlcmlvZCA9IHNhMTEwMGZiX2Rpc3BsYXlfZG1hX3Bl
cmlvZCgmZGlzcC0+dmFyKTsKLQkJaWYgKHBlcmlvZCA8IG1pbl9wZXJpb2QpCi0JCQltaW5fcGVy
aW9kID0gcGVyaW9kOwotCX0KLQotCXJldHVybiBtaW5fcGVyaW9kOwotI2Vsc2UKIAkvKgogCSAq
IEZJWE1FOiB3ZSBuZWVkIHRvIHZlcmlmeSBfYWxsXyBjb25zb2xlcy4KIAkgKi8KIAlyZXR1cm4g
c2ExMTAwZmJfZGlzcGxheV9kbWFfcGVyaW9kKCZmYmktPmZiLnZhcik7Ci0jZW5kaWYKIH0KIAog
LyoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
