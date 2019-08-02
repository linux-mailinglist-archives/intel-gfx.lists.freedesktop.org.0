Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2387F707
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 14:40:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05EB56E02E;
	Fri,  2 Aug 2019 12:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com
 [IPv6:2607:f8b0:4864:20::643])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADBA96E02D;
 Fri,  2 Aug 2019 12:40:19 +0000 (UTC)
Received: by mail-pl1-x643.google.com with SMTP id i2so33635046plt.1;
 Fri, 02 Aug 2019 05:40:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QLZJUYtz9c/vneBc7snc3K+WGGpV37J3xyW0EJcXsTs=;
 b=I+KGn593iVMGrcG331+c2mMyraBbJPoANnF262/K30KqEVuwK3M9z0qyhdnmqgGddA
 YTwivirRAPuAB7aFtAJLE1mHHBEwoixwxwHF+Vu2O/Q2aIUmBJek4j9L6on7OtuWBUlY
 dzJoLMXRWq5oq1xKLuI8kjgQEwNM86J4j9IWfXBe4ElLB+ht7OaxWZ2V/XBb4B5Liym1
 6AJn4Lg8t8SQb7UIC52pIto6NNXip6z5RYWrRfV7Oae9q1vu8HgTbvLfasvxXG9AnvPV
 e00H9As1NIDG3vkVmFc9HvowCN9pl2xdG+0POYYmF7Jg44jUi9Oc9s8Q4BRI6hupaR9H
 cq9w==
X-Gm-Message-State: APjAAAXQ6v9hDxPOH1UN3Vuyava4CW5zglwB2AbFP8BvTlN/Ofc8fHc/
 ReysVFYUrayJnFs1MKb17ug=
X-Google-Smtp-Source: APXvYqxrnjH7ex/6pEQR0PP0CJ0wiDiHlzBBFCGaYn7H9aYWDBJ6+jUqjBc53T0gjKH8X9W0YZFvqA==
X-Received: by 2002:a17:902:110b:: with SMTP id
 d11mr136803582pla.213.1564749619024; 
 Fri, 02 Aug 2019 05:40:19 -0700 (PDT)
Received: from localhost.localdomain ([121.137.63.184])
 by smtp.gmail.com with ESMTPSA id o3sm3978851pje.1.2019.08.02.05.40.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 05:40:18 -0700 (PDT)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri,  2 Aug 2019 21:39:56 +0900
Message-Id: <20190802123956.2450-2-sergey.senozhatsky@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802123956.2450-1-sergey.senozhatsky@gmail.com>
References: <20190802123956.2450-1-sergey.senozhatsky@gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QLZJUYtz9c/vneBc7snc3K+WGGpV37J3xyW0EJcXsTs=;
 b=RYCawBcHwmBhNKJ7E51R+JhmS7cqBiAMsH+ORnvToU1cvZinsI1MQ5+jXqzzbnRB8M
 nPDfFLI4awk40v+XJ/+nPo1Ut8Jf/rR6OWWq4XETJLbS9D8hz6NlE3ZptyYko33HjzJB
 aqocmNA+PWtlfhC1OGBOX2lcE+HxTPdI2UCtGjTiH/J5ozrr0E3rUMdFtgvJ1VmLlrUl
 SrHGJ9M6nDRjSb0EdBc6ZSYM7+dcYi8NHw88D3bmcqOq9gAoLqyEzgJP969+NFuaoTsK
 JqfaF//eB/BtHClNldO9worDkC15RpdVqNXD+QNFWpBTZty6PzqVXXVfyrPLUhIiA14W
 XGFg==
Subject: [Intel-gfx] [PATCH 2/2] i915: do not leak module ref counter
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

cHV0X2ZpbGVzeXN0ZW0oKSBiZWZvcmUgaTkxNV9nZW1mc19pbml0KCkgZGVhbHMgd2l0aAprZXJu
X21vdW50KCkgZXJyb3IuCgpTaWduZWQtb2ZmLWJ5OiBTZXJnZXkgU2Vub3poYXRza3kgPHNlcmdl
eS5zZW5vemhhdHNreUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtZnMuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bWZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1mcy5jCmluZGV4IGNmMDVi
YTcyZGY5ZC4uZDQzNzE4OGQxNzM2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1mcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbWZz
LmMKQEAgLTI0LDggKzI0LDEwIEBAIGludCBpOTE1X2dlbWZzX2luaXQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpCiAJCXJldHVybiAtRU5PREVWOwogCiAJZ2VtZnMgPSBrZXJuX21vdW50
KHR5cGUpOwotCWlmIChJU19FUlIoZ2VtZnMpKQorCWlmIChJU19FUlIoZ2VtZnMpKSB7CisJCXB1
dF9maWxlc3lzdGVtKHR5cGUpOwogCQlyZXR1cm4gUFRSX0VSUihnZW1mcyk7CisJfQogCiAJLyoK
IAkgKiBFbmFibGUgaHVnZS1wYWdlcyBmb3Igb2JqZWN0cyB0aGF0IGFyZSBhdCBsZWFzdCBIUEFH
RV9QTURfU0laRSwgbW9zdAotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
