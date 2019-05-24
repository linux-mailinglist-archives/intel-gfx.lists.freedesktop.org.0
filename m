Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6002529396
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:54:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC3F36E0B1;
	Fri, 24 May 2019 08:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 888BF6E04B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:08 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id g57so13290644edc.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4UC6980ATt6g2nqFDn2Bpgan2GTqp4ZZAGnr3VO2LjI=;
 b=HSaZYKbD4jy1OxerS4b26yFZeqEq6caQiJ7rvBi5TttlHtDEmMaDWdQljqdK5mh6j6
 35H0T644/C7SW64OqSgFl9bBRJR0ptzTRqi2lxhU4TVgX51O1AZF/8CeuNU3D0OtiGuH
 C1fukkbF4gM86Gz9MMsr/DpJv8cWTSZzwiRVhs2/2lx+hHtV8n3Pwa33Aav0xwcxWjkJ
 rY8h3MfiedfjMe8LcC6wzGaqjl0jIkymZsB+a6/56kvhxEQkYwyX53ifDeOcHA5ivEcY
 ijWaaMlkz1YHoGeyN1yeko3FLTtDJz3Xn3YvcUFSq2Rrmus7M+IJRaLOkAz+iI2BnrXB
 uslg==
X-Gm-Message-State: APjAAAUYKgbIpyK0T/YT/W+fQh9kuUBXrAAXfHPgf2QR9s2hD1dRbXFs
 Ho5P1aci0VGweXUgVG+LZR2/Uw==
X-Google-Smtp-Source: APXvYqwTY3aF88Cn8gj5s91H5pdsh0XKSkWschqmBu0U2owFwDrDJnYNwYVmMODqBB3WlfzTrjql6Q==
X-Received: by 2002:a50:91e3:: with SMTP id h32mr8775962eda.103.1558688046885; 
 Fri, 24 May 2019 01:54:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:06 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:26 +0200
Message-Id: <20190524085354.27411-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4UC6980ATt6g2nqFDn2Bpgan2GTqp4ZZAGnr3VO2LjI=;
 b=MXvhQ883ZI6MjoDcmscQSlUHPlY4GSGpnnDA7EA0oL6KCVyvdIJCcSA8ZDob+rYv4Q
 Yrk2iypjjBOiEc8bbaoBiT/LxMHAUbs29PGFrSSCOCFddDPLeF1ApmMfSQx33fqaD3qL
 5ewV+rgyTUCICdJmwbrcAG6Ua66Y3MSNyoDNg=
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
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
