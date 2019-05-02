Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BA912392
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 22:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC538972B;
	Thu,  2 May 2019 20:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D50689728
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 20:46:57 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id w33so1080118edb.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 May 2019 13:46:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p0rauU0ja3fR+oPmh7A/vlojiO16XNZbGFS9RST2+60=;
 b=UgxDLIKRDF3ETtJbVY5rGrU3WYW6UJDwHq2OWv8bdkQodvxdBw8Tt4xDaCILcFEXoM
 8ibi0RFwUe/eW2eq9bX5lNWnINJYp/JQYlTZPzuaRfn1uusvrWaQQvO0xXbxxhm490cf
 LTXu9b30jKTzOSnojU5daSUpoyh0zELScS4pYp/EL31Y+jhGzO63N/1SkwPZ21N4oVOJ
 g6aPqkVxFjwXdcSDnkrNA4RXjAe/Ur9lib7ye2f+lhoIJksKJq18PkZReLVSmw37L0U2
 m5H3OgK1VnbXJhiTvdRDS87SxRKBxfQA9gz2S3LSxGgu4k2XihQ08BM7j3Q20Om/FCuV
 eJ2w==
X-Gm-Message-State: APjAAAW9QQH3xCE6EpX3i8/Ap60oMQegVwc5MaHEzXYhe1cI1vDgMwBe
 BBdPHIRcITjnYj2Hb2yLSQgurm1l0Kw=
X-Google-Smtp-Source: APXvYqz+fy7VdrUIGNccpP20f/DpOEh7Nto0S1P61xfQte4sjgmWCFXmQbZqnzrbJYH+M9hN6ahEig==
X-Received: by 2002:a17:906:c50:: with SMTP id
 t16mr2927525ejf.296.1556830015518; 
 Thu, 02 May 2019 13:46:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x30sm30594edd.74.2019.05.02.13.46.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 13:46:54 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu,  2 May 2019 22:46:48 +0200
Message-Id: <20190502204648.5537-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502194208.3535-1-daniel.vetter@ffwll.ch>
References: <20190502194208.3535-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p0rauU0ja3fR+oPmh7A/vlojiO16XNZbGFS9RST2+60=;
 b=Utp9CJUEOxFtr55aE1nrugTYkmR0xU54dXkC5U0oON7vdFRxWfEyIOj9VFCpeFYS5W
 TPxZvq7NqjcuhVbT+S9giMAiCwiHpX11hJlu9muRTwai2Mg897JaDmQ2hdEasPjtICuz
 GEGloN60OTTMoA4FApUKQSfeW6pOtM1aOJo5M=
Subject: [Intel-gfx] [PATCH] RFC: hung_task: taint kernel
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
cGx1cyB0byBmaWd1cmUKb3V0IHdoZXRoZXIgdGhlIGtlcm5lbCBpcyBzdGlsbCBoYXBweS4KCnYy
OiBXb3JrcyBtdWNoIGJldHRlciB3aGVuIEkgcHV0IHRoZSBlbHNlIHsgYWRkX3RhaW50KCkgfSBh
dCB0aGUgcmlnaHQKcGxhY2UuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwu
dmV0dGVyQGludGVsLmNvbT4KQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlv
bi5vcmc+CkNjOiBUZXRzdW8gSGFuZGEgPHBlbmd1aW4ta2VybmVsQEktbG92ZS5TQUtVUkEubmUu
anA+CkNjOiBEbWl0cnkgVnl1a292IDxkdnl1a292QGdvb2dsZS5jb20+CkNjOiAiUGF1bCBFLiBN
Y0tlbm5leSIgPHBhdWxtY2tAbGludXguaWJtLmNvbT4KQ2M6IFZhbGRpcyBLbGV0bmlla3MgPHZh
bGRpcy5rbGV0bmlla3NAdnQuZWR1PgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBm
ZndsbC5jaD4KQ2M6IFZpdGFseSBLdXpuZXRzb3YgPHZrdXpuZXRzQHJlZGhhdC5jb20+CkNjOiAi
TGl1LCBDaHVhbnNoZW5nIiA8Y2h1YW5zaGVuZy5saXVAaW50ZWwuY29tPgotLS0KIGtlcm5lbC9o
dW5nX3Rhc2suYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9rZXJuZWwvaHVuZ190YXNrLmMgYi9rZXJuZWwvaHVuZ190YXNrLmMKaW5kZXggZjEw
OGE5NTg4MmM2Li5kOTBkOThmNTNjY2IgMTAwNjQ0Ci0tLSBhL2tlcm5lbC9odW5nX3Rhc2suYwor
KysgYi9rZXJuZWwvaHVuZ190YXNrLmMKQEAgLTExNyw2ICsxMTcsOCBAQCBzdGF0aWMgdm9pZCBj
aGVja19odW5nX3Rhc2soc3RydWN0IHRhc2tfc3RydWN0ICp0LCB1bnNpZ25lZCBsb25nIHRpbWVv
dXQpCiAJCWNvbnNvbGVfdmVyYm9zZSgpOwogCQlodW5nX3Rhc2tfc2hvd19sb2NrID0gdHJ1ZTsK
IAkJaHVuZ190YXNrX2NhbGxfcGFuaWMgPSB0cnVlOworCX0gZWxzZSB7CisJCWFkZF90YWludChU
QUlOVF9XQVJOLCBMT0NLREVQX1NUSUxMX09LKTsKIAl9CiAKIAkvKgotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
