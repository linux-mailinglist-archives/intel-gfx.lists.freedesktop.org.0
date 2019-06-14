Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED0546AEB
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E605F89873;
	Fri, 14 Jun 2019 20:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8463C8982E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:29 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id p26so5271226edr.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1K5gHUH66VVqzh7UAeMon8dGU/CWhoeaJEa8aQTsAVk=;
 b=Fq0AbLB36GxcXFFg6HF6/mMOc7pL8sezqw1JYt5a8Hn5XhwFZFwNSd+6zaB7xkzB/F
 XMOX2e4KO9UlChs6nw6ps31ewuKBuoLB7Q83cvS+m/fSKMfk5gDhXSzFTvuTkWG8AFp1
 ctgN2fTgx+NXbEy4VmCHEXmxJaiJsLhoA77baW/U3tzyG4bcsKnEkp6JQNh1IYbEjtlN
 lArX0eZcZU1jevPcrrLmX8GhoVMjya6XSc7SmobwclosM0t2RNJelQfnm1LV6PxXyThR
 Gz+DKIInCha3yUfw2wcpluOspref+NHLZH4cRfeJT1CZaoOK8q2uXw3U9rxrU3hdb8sz
 CbmQ==
X-Gm-Message-State: APjAAAW007P9w418LyRGnDbS6qufwZIkQitPgbwqJtNYi+PnssGYnzhE
 +v9czCWUHnwVE0JZpTgfzDaSdQ==
X-Google-Smtp-Source: APXvYqzuM+XPRtiL8TsxrPUJK8i9bGVa3U2FTEao0kO/2dFR1W5aDvY4KKMHc4BqWRd1mJFuc7PQfQ==
X-Received: by 2002:aa7:df93:: with SMTP id b19mr26006957edy.153.1560544647884; 
 Fri, 14 Jun 2019 13:37:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:27 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:36:14 +0200
Message-Id: <20190614203615.12639-59-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1K5gHUH66VVqzh7UAeMon8dGU/CWhoeaJEa8aQTsAVk=;
 b=IFCXlLm4omIFJ3WO45Pgmupj2Z+027I+y67j+iNRtL3oAbPnU+ROtF1Ct9xgGO+9Jz
 ccInSuSZLR0B3Ugdbcc3yLT+OHDWp5uY74gZJE2tRUdS4jhjGxZZhEvmcyTE2ibsPPgy
 Fbh/4zuGjHvjLDBg3XnAh9jb4B+x2cwA5weN0=
Subject: [Intel-gfx] [PATCH 58/59] drm/todo: Add new debugfs todo
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R3JlZyBpcyBidXN5IGFscmVhZHksIGJ1dCBtYXliZSBoZSB3b24ndCBkbyBldmVyeXRoaW5nIC4u
LgoKQ2M6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+ClNp
Z25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0K
IERvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0IHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdCBiL0Rv
Y3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0CmluZGV4IDk3MTc1NDBlZTI4Zi4uMDI2ZTU1YzUxN2Ux
IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdAorKysgYi9Eb2N1bWVudGF0
aW9uL2dwdS90b2RvLnJzdApAQCAtMzc1LDYgKzM3NSw5IEBAIFRoZXJlJ3MgYSBidW5jaCBvZiBp
c3N1ZXMgd2l0aCBpdDoKICAgdGhpcyAodG9nZXRoZXIgd2l0aCB0aGUgZHJtX21pbm9yLT5kcm1f
ZGV2aWNlIG1vdmUpIHdvdWxkIGFsbG93IHVzIHRvIHJlbW92ZQogICBkZWJ1Z2ZzX2luaXQuCiAK
Ky0gRHJvcCB0aGUgcmV0dXJuIGNvZGUgYW5kIGVycm9yIGNoZWNraW5nIGZyb20gYWxsIGRlYnVn
ZnMgZnVuY3Rpb25zLiBHcmVnIEtIIGlzCisgIHdvcmtpbmcgb24gdGhpcyBhbHJlYWR5LgorCiBD
b250YWN0OiBEYW5pZWwgVmV0dGVyCiAKIEtNUyBjbGVhbnVwcwotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
