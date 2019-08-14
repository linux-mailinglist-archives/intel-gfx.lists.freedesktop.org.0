Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5F18D378
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 14:49:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE20489954;
	Wed, 14 Aug 2019 12:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE8A189467
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 12:49:41 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id r12so6975780edo.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 05:49:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xrwgCZkZbQQzVAnG9P17t6lBncNusW/FD+4nVOJZEOs=;
 b=SRB8kYdj96t3KuH5e3Rt2TaqZyHRFOT/4b1ooB9ZrNcovvSX5HAtfcYgPMCmtMb0fm
 H+ghDXIyT5Jdr11Xz4T9RANfpvDf/+fj0lRA7oEP1CK7NoK48YLkYuWlYtWHBYel/GDE
 7zckO48yyJflQy65tcD/Ygg1Q+AbVmrQb7pil0IHTSdJBxM6YW+fQfnbgPlcx3I9lpBH
 iqSzfWZuAW+4ldaJbBtmhK700sLDqhwWSUuOPDYl/z3l9TUOVjCnbORJEDLorovMTdah
 W7Vp+qTLZsdApPO21ZZKjcK8KPdFJ+MCyZsFY7YH7BIvTpE7sJVR5db5TACT5NYAFiZC
 5pKw==
X-Gm-Message-State: APjAAAVtBqX3WUzECLMaLBU2nVk8f8ScYTu9CWy/m6p/Qqy3B3zgyG3A
 BzxN/sYq0njPjwLBgwqDiut4lBBE9G0Sqw==
X-Google-Smtp-Source: APXvYqz5xHh1EE44MukcxUO/9EnM8WxO9RkV2pEunMygDAhRtReJgs+522lnOcNJijD/Aw83KFSdkA==
X-Received: by 2002:a17:907:2134:: with SMTP id
 qo20mr7567162ejb.295.1565786980227; 
 Wed, 14 Aug 2019 05:49:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id j37sm26170264ede.23.2019.08.14.05.49.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 05:49:39 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 14 Aug 2019 14:49:32 +0200
Message-Id: <20190814124933.19056-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xrwgCZkZbQQzVAnG9P17t6lBncNusW/FD+4nVOJZEOs=;
 b=bbKzQ8OwcDiK+EWJ3VavHLIveB9zBzcSXWXbnWj62/N4tDXIOg36Bw2eSJjVfXK61i
 EGoQnP/jz7USiVKbnthOp8hsCqWWx9hVJhd1+65wz6kW9xEzmyXz/zWUh97paZ0lV358
 dK1H93CJv0DpuA272Y/XMPXHkPrl3Azk014Hk=
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Comment userptr recursion on
 struct_mutex
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
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGlzY3Vzc2VkIHRoaXMgYSBiaXQgd2l0aCBDaHJpcywgSSB0aGluayBhIGNvbW1lbnQgaGVyZSBp
cyB3YXJyYW50ZWQKdGhhdCB0aGlzIHdpbGwgYmUgYmFkIG9uY2Ugd2UgaGF2ZSBtb3JlIHRoYW4g
b25lIGk5MTUgaW5zdGFuY2UuIEFuZApsb2NrZGVwIHdvbid0IGNhdGNoIGl0LgoKQ2M6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3VzZXJwdHIuYyB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKaW5kZXggNzRk
YTM1NjExZDdjLi43MGRjNTA2YTU0MjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3VzZXJwdHIuYwpAQCAtMTM1LDYgKzEzNSwxMiBAQCB1c2VycHRyX21uX2ludmFsaWRh
dGVfcmFuZ2Vfc3RhcnQoc3RydWN0IG1tdV9ub3RpZmllciAqX21uLAogCQkJc3dpdGNoIChtdXRl
eF90cnlsb2NrX3JlY3Vyc2l2ZSh1bmxvY2spKSB7CiAJCQlkZWZhdWx0OgogCQkJY2FzZSBNVVRF
WF9UUllMT0NLX0ZBSUxFRDoKKwkJCQkvKgorCQkJCSAqIE5PVEU6IFRoaXMgb25seSB3b3JrcyBi
ZWNhdXNlIHRoZXJlJ3Mgb25seQorCQkJCSAqIGV2ZXIgb25lIGk5MTUtc3R5bGUgc3RydWN0X211
dGV4IGluIHRoZQorCQkJCSAqIGVudGlyZSBzeXN0ZW0uIElmIHdlIGNvdWxkIGhhdmUgdHdvIGk5
MTUKKwkJCQkgKiBpbnN0YW5jZXMsIHRoaXMgd291bGQgZGVhZGxvY2suCisJCQkJICovCiAJCQkJ
aWYgKG11dGV4X2xvY2tfa2lsbGFibGVfbmVzdGVkKHVubG9jaywgSTkxNV9NTV9TSFJJTktFUikp
IHsKIAkJCQkJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwogCQkJCQlyZXR1cm4gLUVJTlRSOwot
LSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
