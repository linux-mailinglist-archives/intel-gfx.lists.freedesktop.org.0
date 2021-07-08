Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF473C187E
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 19:39:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 776626E980;
	Thu,  8 Jul 2021 17:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F41B6E978
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 17:38:28 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 k31-20020a05600c1c9fb029021727d66d33so3042695wms.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 10:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rb+Oe0toTeOgIa8IYANnZUAlOMPcqkeH94RTQyNbWo4=;
 b=S3rdQIP9Mqjn5JnmJiqkQWCpNxC+MXmVCjZrYyp+UUFekxglKz26txWDkt8+TK6w5z
 3jQBJPqBEsJkixQ9YJ7VT/U136DfVY641fjDJTuXuEbzRal1cga6BIPxorcVs0lgjkur
 JHmP+2xCaow84P9nS3UB58FbevmgfN3vdVUKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rb+Oe0toTeOgIa8IYANnZUAlOMPcqkeH94RTQyNbWo4=;
 b=RiZ3tF5KW5N/PJHZf9lFeL+6i0OI4QYSHSAi/rAghSlwITtqhgxrqD1hB0fxqdwgCD
 Y2jGVbaInJNcqz6e7kdwBsEsbBHvy31HqYDlbEvOlTpUdVOF6/soP/vU7qicDVuoVJJQ
 JD+R5OSHGmyImT6J6u00UfCAOPFNw1wQv/JC3cypdwF7W/3pTe3MHiQc0jwfG3AgTesf
 g4b7ehLSJQCgaS8DAAi3fNCv1dIfZoaUiT1J/SpMAIeHdcmarUZZu1aiRCQVAVzyCX99
 Zut/rwfT08PQUHkNIVUIKccrLaY9dcvpHJ7sJjDodyp2CyWE4AecswzrqK/6sAtp9p4l
 oWLg==
X-Gm-Message-State: AOAM5327sLdyrjGZIqx9+b07/wrxZ+9CrWQjvGd7okczm40LOrNJqQYT
 hLZ7LRYvYDLHkYpzRCJTB7/5ag==
X-Google-Smtp-Source: ABdhPJzARFjuD8o/FtezQB2TZDKit1O5wm4srPP68GzbT+W98oCNxqARdhWL/s5uhK8xov1cfyseeg==
X-Received: by 2002:a1c:f206:: with SMTP id s6mr6529631wmc.15.1625765907304;
 Thu, 08 Jul 2021 10:38:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l4sm2521853wme.26.2021.07.08.10.38.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 10:38:26 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  8 Jul 2021 19:37:53 +0200
Message-Id: <20210708173754.3877540-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 19/20] drm/i915: Don't break exclusive fence
 ordering
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUncyBvbmx5IG9uZSBleGNsdXNpdmUgc2xvdCwgYW5kIHdlIG11c3Qgbm90IGJyZWFrIHRo
ZSBvcmRlcmluZy4KQWRkaW5nIGEgbmV3IGV4Y2x1c2l2ZSBmZW5jZSBkcm9wcyBhbGwgcHJldmlv
dXMgZmVuY2VzIGZyb20gdGhlCmRtYV9yZXN2LiBUbyBhdm9pZCB2aW9sYXRpbmcgdGhlIHNpZ25h
bGxpbmcgb3JkZXIgd2UgZXJyIG9uIHRoZSBzaWRlIG9mCm92ZXItc3luY2hyb25pemluZyBieSB3
YWl0aW5nIGZvciB0aGUgZXhpc3RpbmcgZmVuY2VzLCBldmVuIGlmCnVzZXJzcGFjZSBhc2tlZCB1
cyB0byBpZ25vcmUgdGhlbS4KCkEgYmV0dGVyIGZpeCB3b3VsZCBiZSB0byB1cyBhIGRtYV9mZW5j
ZV9jaGFpbiBvciBfYXJyYXkgbGlrZSBlLmcuCmFtZGdwdSBub3cgdXNlcywgYnV0IGl0IHByb2Jh
Ymx5IG1ha2VzIHNlbnNlIHRvIGxpZnQgdGhpcyBpbnRvCmRtYS1yZXN2LmMgY29kZSBhcyBhIHBy
b3BlciBjb25jZXB0LCBzbyB0aGF0IGRyaXZlcnMgZG9uJ3QgaGF2ZSB0bwpoYWNrIHVwIHRoZWly
IG93biBzb2x1dGlvbiBlYWNoIG9uIHRoZWlyIG93bi4gSGVuY2UgZ28gd2l0aCB0aGUgc2ltcGxl
CmZpeCBmb3Igbm93LgoKQW5vdGhlciBvcHRpb24gaXMgdGhlIGZlbmNlIGltcG9ydCBpb2N0bCBm
cm9tIEphc29uOgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjEwNjEwMjEw
OTI1LjY0MjU4Mi03LWphc29uQGpsZWtzdHJhbmQubmV0LwoKdjI6IEltcHJvdmUgY29tbWl0IG1l
c3NhZ2UgcGVyIEx1Y2FzJyBzdWdnZXN0aW9uLgoKQ2M6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBl
bmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVy
QGludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51
eC5pbnRlbC5jb20+CkNjOiAiVGhvbWFzIEhlbGxzdHLDtm0iIDx0aG9tYXMuaGVsbHN0cm9tQGxp
bnV4LmludGVsLmNvbT4KQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIHwgNiAr
KysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCA0
N2UwNzE3OTM0N2EuLjlkNzE3Yzg4NDJlMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0xNzc1LDYgKzE3NzUsNyBAQCBzdGF0aWMgaW50
IGViX21vdmVfdG9fZ3B1KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogCQlzdHJ1Y3QgaTkx
NV92bWEgKnZtYSA9IGV2LT52bWE7CiAJCXVuc2lnbmVkIGludCBmbGFncyA9IGV2LT5mbGFnczsK
IAkJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IHZtYS0+b2JqOworCQlib29sIGFz
eW5jLCB3cml0ZTsKIAogCQlhc3NlcnRfdm1hX2hlbGQodm1hKTsKIApAQCAtMTgwNiw3ICsxODA3
LDEwIEBAIHN0YXRpYyBpbnQgZWJfbW92ZV90b19ncHUoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAq
ZWIpCiAJCQkJZmxhZ3MgJj0gfkVYRUNfT0JKRUNUX0FTWU5DOwogCQl9CiAKLQkJaWYgKGVyciA9
PSAwICYmICEoZmxhZ3MgJiBFWEVDX09CSkVDVF9BU1lOQykpIHsKKwkJYXN5bmMgPSBmbGFncyAm
IEVYRUNfT0JKRUNUX0FTWU5DOworCQl3cml0ZSA9IGZsYWdzICYgRVhFQ19PQkpFQ1RfV1JJVEU7
CisKKwkJaWYgKGVyciA9PSAwICYmICghYXN5bmMgfHwgd3JpdGUpKSB7CiAJCQllcnIgPSBpOTE1
X3JlcXVlc3RfYXdhaXRfb2JqZWN0CiAJCQkJKGViLT5yZXF1ZXN0LCBvYmosIGZsYWdzICYgRVhF
Q19PQkpFQ1RfV1JJVEUpOwogCQl9Ci0tIAoyLjMyLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
