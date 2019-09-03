Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D37A731D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 21:06:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC56C897E9;
	Tue,  3 Sep 2019 19:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7695897DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 19:05:56 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id r12so19575098edo.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2019 12:05:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BHSSDEkT7dUoxkAbSUA7HqJarSSXFug0EO2xPu8QeaE=;
 b=ERqkZNcfHiK664VPwJAQg1FLHPxZpeihLJ67gSY7S6G/onlZM654ri4ZUz9M4aaGUc
 bY33BEJ68Nl9HvU1eAaZaW0luaF2JVgAdmSztjEerCrPLo5TwVJDmcD2H/GMFwwC32fO
 3cfq8gDYlzvQneB2epIGnBRvv7jn4DzjY0M/BKOJ/z8bbgbZiF0eY9C+oiEA8dMCtIV6
 0IVGcYaXpVKGKgkaMhl6K9wnSE9740mqc/zT+EKlJe8REJjnz66lArswDCM+6nbUqTd/
 cl1bzlWD1f04ZcyIhnx4KGIOQoZv7UtJYYoCA+1yKmZBgzmUp+WhU51y+rFTkPICbqsh
 MBcw==
X-Gm-Message-State: APjAAAXdQ1Rdkhi5a0l3IvraRQAH+3oGG0Lab37sYu2mI7sHnrL6ORzN
 hDKi1ERH15KKZ7zjrQtTBV70oA==
X-Google-Smtp-Source: APXvYqy+JQSGWqGQuMtj6yyu118O5oO+3b1ZZ2WlJR4dfBvOlOeP+4E/+y50Ne51tVTLlxZlhCtQiA==
X-Received: by 2002:a50:9438:: with SMTP id p53mr18679424eda.291.1567537555279; 
 Tue, 03 Sep 2019 12:05:55 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id 60sm1766309edg.10.2019.09.03.12.05.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 12:05:54 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  3 Sep 2019 21:05:45 +0200
Message-Id: <20190903190545.31852-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190903190545.31852-1-daniel.vetter@ffwll.ch>
References: <20190903190545.31852-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BHSSDEkT7dUoxkAbSUA7HqJarSSXFug0EO2xPu8QeaE=;
 b=HhqwnK6bxhtv5asCKJmvx15Fz2sOmNFglhLHa1ykapOOf/Xl0/pUmQnUks/7GirIni
 i2k9kGXEd/AIGCTVbWZNOn1cCXeFPjt5VBjDxjL6OqghAxBDSCAO7wvAOn1sbYKhwsKz
 5XwQbndBw101DBNPm8vhz2fDt/u/kTIHXeMuA=
Subject: [Intel-gfx] [PATCH 3/3] fixup
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2lvY3RsLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX2lvY3RsLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2lvY3RsLmMKaW5kZXggM2MwMTVk
ZDNjOTRiLi4xY2I3YjRjM2M4N2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1faW9j
dGwuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2lvY3RsLmMKQEAgLTMzNSw3ICszMzUsNyBA
QCBkcm1fc2V0Y2xpZW50Y2FwKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsIHN0
cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2KQogCQlicmVhazsKIAljYXNlIERSTV9DTElFTlRfQ0FQ
X0FUT01JQzoKIAkJLyogVGhlIG1vZGVzZXR0aW5nIEREWCBoYXMgYSB0b3RhbGx5IGJyb2tlbiBp
ZGVhIG9mIGF0b21pYy4gKi8KLQkJaWYgKHN0cnN0cigiWCIsIGN1cnJlbnQtPmNvbW0pKQorCQlp
ZiAoc3Ryc3RyKGN1cnJlbnQtPmNvbW0sICJYIikpCiAJCQlyZXR1cm4gLUVPUE5PVFNVUFA7CiAJ
CWlmICghZHJtX2NvcmVfY2hlY2tfZmVhdHVyZShkZXYsIERSSVZFUl9BVE9NSUMpKQogCQkJcmV0
dXJuIC1FT1BOT1RTVVBQOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
