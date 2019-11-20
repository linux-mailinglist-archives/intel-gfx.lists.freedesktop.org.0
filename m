Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D35F10380D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 11:56:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3DC06E23F;
	Wed, 20 Nov 2019 10:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 391556E23F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 10:56:15 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id 8so7317724wmo.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 02:56:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JjFMOaCeGH9JROPsuOGBrMP11R57ZOXn6oqH37RHktY=;
 b=TZamB5Xbh8tcdFMIsHngrI7NxgJEAqRHXmgr2Bix/BhIOrZ0Y+TJ1hHVwL8xspfdh6
 BddBcGApRqAEmW1C3ZXUN8k/A1WZafnGH9qlHvrK/OpIg8OqsbQSYYY7gYpsTX2ItwwX
 RWcIKXuzSuFhFbKJVg/NeZX2QMPAOKP/XZFnNP469jiOY9wviF8IktNGrIhQQ2IhhcML
 vxRjmVzjnxam7V4HXs1U8i9XtnAp5+Hsd66GGsTZO99pwdZ2s9B+OMam29bZDkNFdvil
 oFyihjt6SMZISuYQqmUTHgAzsYcPOzz2B4x/gUxj3VIrjblzrpkya73lNuFZAQmKs+v5
 SHKQ==
X-Gm-Message-State: APjAAAWfN9s69U6u1/xozoKbr9+mJXwQ0QwDOtQyCFx/RhpZ9dApoJd7
 rEIBDRMgzqZtsI59LRB/7kPnPQ==
X-Google-Smtp-Source: APXvYqw/47BZ5KcwK7RVhJ9Ph7mNdq0/WEIut+JpU/tMKjfMnCcriWYrX+AOttR4RzYHhfL+SQG/jA==
X-Received: by 2002:a1c:96c9:: with SMTP id y192mr2511706wmd.8.1574247373806; 
 Wed, 20 Nov 2019 02:56:13 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id c15sm30796132wrx.78.2019.11.20.02.56.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 02:56:12 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 20 Nov 2019 11:56:07 +0100
Message-Id: <20191120105607.3023-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119210844.16947-4-daniel.vetter@ffwll.ch>
References: <20191119210844.16947-4-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JjFMOaCeGH9JROPsuOGBrMP11R57ZOXn6oqH37RHktY=;
 b=Us1Lehu5jYPWv2Zo6d6t/Uab94E25yywuZHTZ5IXjkEw8OC+KJyLv0VlgNUBaAn+GW
 D3dTXqSs8hqAZY3pxKLqrTjP16uxMK6lrC69rExoWseqrhekdrjfS9o4evqfSN7kgUqz
 m1ltwjuxARvl1NHypf255OEhwrg54o9fLz5jQ=
Subject: [Intel-gfx] [PATCH] drm/msm: Don't init ww_mutec acquire ctx before
 needed
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
Cc: freedreno@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-arm-msm@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIGxvY2tpbmcgc2VtYW50aWNzIGl0IHJlYWxseSBkb2Vzbid0IG1hdHRlciB3aGVuIHdlIGdy
YWIgdGhlCnRpY2tldC4gQnV0IGZvciBsb2NrZGVwIHZhbGlkYXRpb24gaXQgZG9lczogdGhlIGFj
cXVpcmUgY3R4IGlzIGEgZmFrZQpsb2NrZGVwLiBTaW5jZSBvdGhlciBkcml2ZXJzIG1pZ2h0IHdh
bnQgdG8gZG8gYSBmdWxsIG11bHRpLWxvY2sgZGFuY2UKaW4gdGhlaXIgZmF1bHQtaGFuZGxlciwg
bm90IGp1c3QgbG9jayBhIHNpbmdsZSBkbWFfcmVzdi4gVGhlcmVmb3JlIHdlCm11c3QgaW5pdCB0
aGUgYWNxdWlyZV9jdHggb25seSBhZnRlciB3ZSd2ZSBkb25lIGFsbCB0aGUgY29weV8qX3VzZXIg
b3IKYW55dGhpbmcgZWxzZSB0aGF0IG1pZ2h0IHRyaWdnZXIgYSBwYWdlZmF1bHQuIEZvciBtc20g
dGhpcyBtZWFucyB3ZQpuZWVkIHRvIG1vdmUgaXQgcGFzdCBzdWJtaXRfbG9va3VwX29iamVjdHMu
CgpBc2lkZTogV2h5IGlzIG1zbSBzdGlsbCB1c2luZyBzdHJ1Y3RfbXV0ZXgsIGl0IHNlZW1zIHRv
IGJlIHVzaW5nCmRtYV9yZXN2X2xvY2sgZm9yIGdlbmVyYWwgYnVmZmVyIHN0YXRlIHByb3RlY3Rp
b24/Cgp2MjoKLSBBZGQgY29tbWVudCB0byBleHBsYWluIHdoeSB0aGUgd3cgdGlja2V0IHNldHVw
IGlzIHNlcGFyYXRlIChSb2IpCi0gRml4IHVwIGVycm9yIGhhbmRsaW5nLCB3ZSBuZWVkIHRvIG1h
a2Ugc3VyZSB3ZSBkb24ndCBjYWxsCiAgd3dfYWNxdWlyZV9maW5pIHdpdGhvdXQgX2luaXQuCgpT
aWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6
IFJvYiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4KQ2M6IFNlYW4gUGF1bCA8c2VhbkBwb29y
bHkucnVuPgpDYzogbGludXgtYXJtLW1zbUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGZyZWVkcmVub0Bs
aXN0cy5mcmVlZGVza3RvcC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3Vi
bWl0LmMgfCA5ICsrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3Vi
bWl0LmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMKaW5kZXggZmIxZmRk
N2ZhM2VmLi4zODVkNDk2NWE4ZDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNt
X2dlbV9zdWJtaXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMK
QEAgLTU0LDcgKzU0LDYgQEAgc3RhdGljIHN0cnVjdCBtc21fZ2VtX3N1Ym1pdCAqc3VibWl0X2Ny
ZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCiAJSU5JVF9MSVNUX0hFQUQoJnN1Ym1pdC0+
bm9kZSk7CiAJSU5JVF9MSVNUX0hFQUQoJnN1Ym1pdC0+Ym9fbGlzdCk7Ci0Jd3dfYWNxdWlyZV9p
bml0KCZzdWJtaXQtPnRpY2tldCwgJnJlc2VydmF0aW9uX3d3X2NsYXNzKTsKIAogCXJldHVybiBz
dWJtaXQ7CiB9CkBAIC0zOTAsOCArMzg5LDYgQEAgc3RhdGljIHZvaWQgc3VibWl0X2NsZWFudXAo
c3RydWN0IG1zbV9nZW1fc3VibWl0ICpzdWJtaXQpCiAJCWxpc3RfZGVsX2luaXQoJm1zbV9vYmot
PnN1Ym1pdF9lbnRyeSk7CiAJCWRybV9nZW1fb2JqZWN0X3B1dCgmbXNtX29iai0+YmFzZSk7CiAJ
fQotCi0Jd3dfYWNxdWlyZV9maW5pKCZzdWJtaXQtPnRpY2tldCk7CiB9CiAKIGludCBtc21faW9j
dGxfZ2VtX3N1Ym1pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLApAQCAtNDA4
LDYgKzQwNSw3IEBAIGludCBtc21faW9jdGxfZ2VtX3N1Ym1pdChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LCB2b2lkICpkYXRhLAogCXN0cnVjdCBtc21fcmluZ2J1ZmZlciAqcmluZzsKIAlpbnQgb3V0
X2ZlbmNlX2ZkID0gLTE7CiAJc3RydWN0IHBpZCAqcGlkID0gZ2V0X3BpZCh0YXNrX3BpZChjdXJy
ZW50KSk7CisJYm9vbCBoYXNfd3dfdGlja2V0ID0gZmFsc2U7CiAJdW5zaWduZWQgaTsKIAlpbnQg
cmV0LCBzdWJtaXRpZDsKIAlpZiAoIWdwdSkKQEAgLTQ4OSw2ICs0ODcsOSBAQCBpbnQgbXNtX2lv
Y3RsX2dlbV9zdWJtaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAlpZiAo
cmV0KQogCQlnb3RvIG91dDsKIAorCS8qIGNvcHlfKl91c2VyIHdoaWxlIGhvbGRpbmcgYSB3dyB0
aWNrZXQgdXBzZXRzIGxvY2tkZXAgKi8KKwl3d19hY3F1aXJlX2luaXQoJnN1Ym1pdC0+dGlja2V0
LCAmcmVzZXJ2YXRpb25fd3dfY2xhc3MpOworCWhhc193d190aWNrZXQgPSB0cnVlOwogCXJldCA9
IHN1Ym1pdF9sb2NrX29iamVjdHMoc3VibWl0KTsKIAlpZiAocmV0KQogCQlnb3RvIG91dDsKQEAg
LTU4OCw2ICs1ODksOCBAQCBpbnQgbXNtX2lvY3RsX2dlbV9zdWJtaXQoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwgdm9pZCAqZGF0YSwKIAogb3V0OgogCXN1Ym1pdF9jbGVhbnVwKHN1Ym1pdCk7CisJ
aWYgKGhhc193d190aWNrZXQpCisJCXd3X2FjcXVpcmVfZmluaSgmc3VibWl0LT50aWNrZXQpOwog
CWlmIChyZXQpCiAJCW1zbV9nZW1fc3VibWl0X2ZyZWUoc3VibWl0KTsKIG91dF91bmxvY2s6Ci0t
IAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
