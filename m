Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F99729383
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2B176E04B;
	Fri, 24 May 2019 08:54:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87EE86E04B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:09 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id w33so9958101edb.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yy90SY5/chDu3adwLkHoQhEeL0uOM1NOJmociVMUU4s=;
 b=Io9NCDgiIxYZwr7rzPdDylP5zegN+nNy6PE29LqVxJuVrzKqgKJF1xhQF3GNjBRBMd
 +fZpoauJm8cVOtsml5FkdIhvIGVK5izZc9G6S7zODVuUQ99USkWvUF/b8i8P3oouWpdF
 /925Z//0WnXVQrtZrhpYQt9QpqMRulKA2BabjN1YFBJmIi/mofZxT3/YRDmfs40jmNn9
 7rK5IHeLnP8l0uTrg8QoeHXXTm6Y1xzUqe5niNNHrZ+3VGePJfhMTxK7vbWeRvaEsFKV
 5hoytt1tu6AV4vaVCTUYX80TUFXOTA6BlmgXsxUQxDnwgJ/E9WIUPUkTWZmZan7QUBli
 T4/A==
X-Gm-Message-State: APjAAAWld3VxyMQDpp4nz9EkXJUqBHaF8stlIkILa0lD4CU895/pamR6
 deR7ENTuNBhCU2tqtCJ/l0i2IQ==
X-Google-Smtp-Source: APXvYqz15CcdTjoLDAvdkpWywDjCZ1ETBfsWrIz7EZVLfyKyYHnY14mFy7VmZfhdjvd4e/aLWEyXzA==
X-Received: by 2002:a50:b19a:: with SMTP id
 m26mr103783554edd.243.1558688048165; 
 Fri, 24 May 2019 01:54:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:07 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:27 +0200
Message-Id: <20190524085354.27411-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yy90SY5/chDu3adwLkHoQhEeL0uOM1NOJmociVMUU4s=;
 b=cr4/gjFrfCNevqAiAU9XqP6SgaiJysx3vBZGTSUBi4Tj3eINXfE6JbxBD90g/EpTwJ
 4JQVeLiyNj3LzpQgPFL5r1fEe1QbInyfZNSa+ug0Hhv2ZX76nidAtG293D6DcIILXwb9
 ub+6k0ddJsOAmQfUOdPQyaUFYod34VrM/+dBQ=
Subject: [Intel-gfx] [PATCH 06/33] fbdev/cyber2000: Remove struct display
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
 Russell King <linux@armlinux.org.uk>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW50aXJlbHkgdW51c2VkLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBpbnRlbC5jb20+CkNjOiBSdXNzZWxsIEtpbmcgPGxpbnV4QGFybWxpbnV4Lm9yZy51az4K
Q2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwotLS0KIGRyaXZlcnMvdmlk
ZW8vZmJkZXYvY3liZXIyMDAwZmIuYyB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2N5YmVyMjAwMGZiLmMgYi9kcml2
ZXJzL3ZpZGVvL2ZiZGV2L2N5YmVyMjAwMGZiLmMKaW5kZXggOWE1NzUxY2I0ZTE2Li40NTJlZjA3
YjNhMDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY3liZXIyMDAwZmIuYworKysg
Yi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2N5YmVyMjAwMGZiLmMKQEAgLTYxLDcgKzYxLDYgQEAKIHN0
cnVjdCBjZmJfaW5mbyB7CiAJc3RydWN0IGZiX2luZm8JCWZiOwogCXN0cnVjdCBkaXNwbGF5X3N3
aXRjaAkqZGlzcHN3OwotCXN0cnVjdCBkaXNwbGF5CQkqZGlzcGxheTsKIAl1bnNpZ25lZCBjaGFy
CQlfX2lvbWVtICpyZWdpb247CiAJdW5zaWduZWQgY2hhcgkJX19pb21lbSAqcmVnczsKIAl1X2lu
dAkJCWlkOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
