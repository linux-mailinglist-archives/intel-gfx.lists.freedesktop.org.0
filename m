Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDC5108B22
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 10:44:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C60AC6E0F0;
	Mon, 25 Nov 2019 09:44:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 861AF6E0D0
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 09:44:06 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id t2so17092420wrr.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 01:44:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8hpBAi/pZFlll+DPJCdIzsjixXdb4nKfYkOd8MlOFBA=;
 b=Z5eLp0ZAPyLtYbjyFpb6FnBxJoOqb5zz4Yy460SHwckGb+Ylg/Rig1A/VKznGK7xnk
 W0VAMEsWGLO4W511f6VtWau5Zt/kYsb5t+/gWnevp2zSDbK4o5W6UtNtPKcGo9F+LAL/
 7PY41EsthwnIv/hRI5cS6vgwTRoF9Cfa312odXmUMDZzuJ9ayYGQpud7CvHAdoXhFE4A
 0qLR3ln45fHA2b/YuALBJvmy7jc+V8mD6Q3yg+IevWAtTrg3tg/bn4Pu8hVgMexIoSC5
 yloYO6XNHrWfFY6VippR5BQZbcfaYjmnMHPZdWx2YoeagkSnZIk2578BwM83kEdi3FdN
 AmEw==
X-Gm-Message-State: APjAAAXYeZbm75PRV2FZRBkDs20esUKcMwoTSGb2puUg7cZjc0UPNewg
 pr2TA8HT7Qm2mNfe5vzKiwXaEA==
X-Google-Smtp-Source: APXvYqwgiLAplJg5Yh+JXV/ILpyKDrtCFstj+m4TmjF69SZbLZrUV+E0/HOtNdZWE6C7IMPJkt9q1A==
X-Received: by 2002:adf:f010:: with SMTP id j16mr31434843wro.206.1574675045183; 
 Mon, 25 Nov 2019 01:44:05 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id x2sm7598233wmc.3.2019.11.25.01.44.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 01:44:04 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 25 Nov 2019 10:43:54 +0100
Message-Id: <20191125094356.161941-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191125094356.161941-1-daniel.vetter@ffwll.ch>
References: <20191125094356.161941-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8hpBAi/pZFlll+DPJCdIzsjixXdb4nKfYkOd8MlOFBA=;
 b=ZIKz9bxLfotsLoAB2e4VeRO+CsM/sKapVeODn24UtPjlRFVp/CYfWouHtuEk/nEdhp
 IMqMBOo2nW38o9v3DR+HdLrbnX/tjaFvSiIXKzkvClSbrBcqQLg52bhKfhYdOdziTEQd
 OSmNCzd2FO958TzAMrulD37aZlu4fey3iXKQ0=
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Use dma_resv locking wrappers
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSdsbCBhZGQgbW9yZSBmYW5jeSBsb2dpYyB0byB0aGVtIHNvb24sIHNvIGV2ZXJ5b25lIHJlYWxs
eSBoYXMgdG8gdXNlCnRoZW0uIFBsdXMgdGhleSBhbHJlYWR5IHByb3ZpZGUgc29tZSBuaWNlIGFk
ZGl0aW9uYWwgZGVidWcKaW5mcmFzdHJ1Y3R1cmUgb24gdG9wIG9mIGRpcmVjdCB3d19tdXRleCB1
c2FnZSBmb3IgdGhlIGZlbmNlcyB0cmFja2VkCmJ5IGRtYV9yZXN2LgoKQXNpZGU6IFdlIG1pZ2h0
IHdhbnQgdG8gY3JlYXRlIHdyYXBwZXJzIGZvciBpOTE1X3ZtYSBsb2NraW5nIG9mIHRoZQotPnJl
c3YgbGlrZSB3ZSBoYXZlIGZvciB0aGUgaTkxNV9nZW1fYm8gaXRzZWxmIGFscmVhZHkuCgpTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxk
QGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4Lmlu
dGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyB8IDYgKysrLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCmluZGV4IDdhODdlODI3
MDQ2MC4uN2I4ZjRlYmQ5OTg2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9leGVjYnVmZmVyLmMKQEAgLTE4NDgsNyArMTg0OCw3IEBAIHN0YXRpYyBpbnQgZWJfbW92
ZV90b19ncHUoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCiAJZm9yIChpID0gMDsgaSA8IGNv
dW50OyBpKyspIHsKIAkJc3RydWN0IGk5MTVfdm1hICp2bWEgPSBlYi0+dm1hW2ldOwogCi0JCWVy
ciA9IHd3X211dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmdm1hLT5yZXN2LT5sb2NrLCAmYWNxdWly
ZSk7CisJCWVyciA9IGRtYV9yZXN2X2xvY2tfaW50ZXJydXB0aWJsZSh2bWEtPnJlc3YsICZhY3F1
aXJlKTsKIAkJaWYgKCFlcnIpCiAJCQljb250aW51ZTsKIApAQCAtMTg1OSw3ICsxODU5LDcgQEAg
c3RhdGljIGludCBlYl9tb3ZlX3RvX2dwdShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKIAkJ
CWRvIHsKIAkJCQlpbnQgaiA9IGkgLSAxOwogCi0JCQkJd3dfbXV0ZXhfdW5sb2NrKCZlYi0+dm1h
W2pdLT5yZXN2LT5sb2NrKTsKKwkJCQlkbWFfcmVzdl91bmxvY2soZWItPnZtYVtqXS0+cmVzdik7
CiAKIAkJCQlzd2FwKGViLT5mbGFnc1tpXSwgZWItPmZsYWdzW2pdKTsKIAkJCQlzd2FwKGViLT52
bWFbaV0sICBlYi0+dm1hW2pdKTsKQEAgLTE4NjgsNyArMTg2OCw3IEBAIHN0YXRpYyBpbnQgZWJf
bW92ZV90b19ncHUoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCiAJCQlHRU1fQlVHX09OKHZt
YSAhPSBlYi0+dm1hWzBdKTsKIAkJCXZtYS0+ZXhlY19mbGFncyA9ICZlYi0+ZmxhZ3NbMF07CiAK
LQkJCWVyciA9IHd3X211dGV4X2xvY2tfc2xvd19pbnRlcnJ1cHRpYmxlKCZ2bWEtPnJlc3YtPmxv
Y2ssCisJCQllcnIgPSBkbWFfcmVzdl9sb2NrX3Nsb3dfaW50ZXJydXB0aWJsZSh2bWEtPnJlc3Ys
CiAJCQkJCQkJICAgICAgICZhY3F1aXJlKTsKIAkJfQogCQlpZiAoZXJyKQotLSAKMi4yNC4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
