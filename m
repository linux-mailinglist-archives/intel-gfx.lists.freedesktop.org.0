Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D5D3CAF4A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 00:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABC196E8C9;
	Thu, 15 Jul 2021 22:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 568446E8BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 22:39:15 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 p4-20020a17090a9304b029016f3020d867so5650954pjo.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 15:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WciUpITvEcHMdrnkAxX4EGa72kGWHk1hAVU4U/kERfQ=;
 b=bAAD2MAvv4do4lfSoOsyQp0dNCGz2SxmzldW3v2FLw0MjnDkf+hvIzT6+rqcrAxA2o
 qPqP83F2fgffxdpYeUFW/yMyMditQ+V6pYhszovcXeOB+C1uq6qv+aRm53H6PMmkWwLG
 kJ4ZsYPhQx53jUmf9f3X5nmz8BLA4NgDszaXEzsk5kesTDFNwm2S6m793gFUJs8TYSXp
 Rrm+scyRIrggf26+w/t/y/FqtFqRojXP/zx+dXQpvbrhR2DZ0roWnYbneLXMmYMuH+eA
 /FnaPve6pwK2L8xv5wmMdb7XLliOfJlNwB1dJ68svgfk6O7e77MM0uxvLklF+mWC6rFZ
 Tsaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WciUpITvEcHMdrnkAxX4EGa72kGWHk1hAVU4U/kERfQ=;
 b=MK1sV/yoZR3lXB3WrjvNa+fbkFKiVmB6Kfqxb19IM21bO73mKdMJfqYvwznDmonbsv
 cV44QxU+IdPdCT9n3qcPZhGy9XKrXGCoj0O35SkD0qbDFvGoGUg+x6Ma3jUMGo7tfGTj
 9PhbXWhw1sPa/cT6/15syy5mUn9f8r8D0o2NIe63J/99Fh4NGADfW41yfgfA0/RHRZ3p
 pl557bUtAAE6gZJuGP0nmtVtAteg2+V0COV3Ifr297cVy/0OUfCHvMBv94KfXPoJqDcn
 lcL/26jk2E5MdNPB6IDcn8rsmB4d5PHemadX+BSqvwW3C27msrIGKF2F/G9R+qZRDOsf
 rY2g==
X-Gm-Message-State: AOAM531zr+DBP/mpy12gSqGWZu8srcnLR3E6q4F5kUAwcqz7lB+h6W+9
 jIhT77q9gN1WXIqreZFzN9i8SAyzBlRJfA==
X-Google-Smtp-Source: ABdhPJwln5alaY0SRCNgr7HQimiY6NvglQIPRqZMtXsuuUDJPZS7T/NL9JrFSbr7WddJjrbPrkk8/Q==
X-Received: by 2002:a17:90b:4b4e:: with SMTP id
 mi14mr12504357pjb.109.1626388754644; 
 Thu, 15 Jul 2021 15:39:14 -0700 (PDT)
Received: from omlet.com ([134.134.137.87])
 by smtp.gmail.com with ESMTPSA id ft7sm9959459pjb.32.2021.07.15.15.39.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 15:39:14 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 15 Jul 2021 17:38:57 -0500
Message-Id: <20210715223900.1840576-5-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715223900.1840576-1-jason@jlekstrand.net>
References: <20210715223900.1840576-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/gem/ttm: Place new BOs in the
 requested region
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
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

X19pOTE1X2dlbV90dG1fb2JqZWN0X2luaXQoKSB3YXMgaWdub3JpbmcgdGhlIHBsYWNlbWVudCBy
ZXF1ZXN0cyBjb21pbmcKZnJvbSB0aGUgY2xpZW50IGFuZCBhbHdheXMgcGxhY2luZyBhbGwgQk9z
IGluIFNNRU0gdXBvbiBjcmVhdGlvbi4KSW5zdGVhZCwgY29tcHV0ZSB0aGUgcmVxdWVzdGVkIHBs
YWNlbWVudCBzZXQgZnJvbSB0aGUgb2JqZWN0IGFuZCBwYXNzCnRoYXQgaW50byB0dG1fYm9faW5p
dF9yZXNlcnZlZCgpLgoKU2lnbmVkLW9mZi1ieTogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtz
dHJhbmQubmV0PgpDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXgu
aW50ZWwuY29tPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzog
TWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgfCA4ICsrKysrKy0tCiAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwppbmRleCA2NTg5NDExMzk2ZDNmLi5kMzBmMjc0
YzMyOWM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRt
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCkBAIC04OTgs
NiArODk4LDggQEAgaW50IF9faTkxNV9nZW1fdHRtX29iamVjdF9pbml0KHN0cnVjdCBpbnRlbF9t
ZW1vcnlfcmVnaW9uICptZW0sCiB7CiAJc3RhdGljIHN0cnVjdCBsb2NrX2NsYXNzX2tleSBsb2Nr
X2NsYXNzOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gbWVtLT5pOTE1OworCXN0
cnVjdCB0dG1fcGxhY2UgcmVxdWVzdGVkLCBidXN5W0k5MTVfVFRNX01BWF9QTEFDRU1FTlRTXTsK
KwlzdHJ1Y3QgdHRtX3BsYWNlbWVudCBwbGFjZW1lbnQ7CiAJc3RydWN0IHR0bV9vcGVyYXRpb25f
Y3R4IGN0eCA9IHsKIAkJLmludGVycnVwdGlibGUgPSB0cnVlLAogCQkubm9fd2FpdF9ncHUgPSBm
YWxzZSwKQEAgLTkxOSw2ICs5MjEsOSBAQCBpbnQgX19pOTE1X2dlbV90dG1fb2JqZWN0X2luaXQo
c3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKIAkvKiBGb3JjaW5nIHRoZSBwYWdlIHNp
emUgaXMga2VybmVsIGludGVybmFsIG9ubHkgKi8KIAlHRU1fQlVHX09OKHBhZ2Vfc2l6ZSAmJiBv
YmotPm1tLm5fcGxhY2VtZW50cyk7CiAKKwlHRU1fQlVHX09OKG9iai0+bW0ubl9wbGFjZW1lbnRz
ID4gSTkxNV9UVE1fTUFYX1BMQUNFTUVOVFMpOworCWk5MTVfdHRtX3BsYWNlbWVudF9mcm9tX29i
aihvYmosICZyZXF1ZXN0ZWQsIGJ1c3ksICZwbGFjZW1lbnQpOworCiAJLyoKIAkgKiBJZiB0aGlz
IGZ1bmN0aW9uIGZhaWxzLCBpdCB3aWxsIGNhbGwgdGhlIGRlc3RydWN0b3IsIGJ1dAogCSAqIG91
ciBjYWxsZXIgc3RpbGwgb3ducyB0aGUgb2JqZWN0LiBTbyBubyBmcmVlaW5nIGluIHRoZQpAQCAt
OTI3LDggKzkzMiw3IEBAIGludCBfX2k5MTVfZ2VtX3R0bV9vYmplY3RfaW5pdChzdHJ1Y3QgaW50
ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAogCSAqIHVudGlsIHN1Y2Nlc3NmdWwgaW5pdGlhbGl6YXRp
b24uCiAJICovCiAJcmV0ID0gdHRtX2JvX2luaXRfcmVzZXJ2ZWQoJmk5MTUtPmJkZXYsIGk5MTVf
Z2VtX3RvX3R0bShvYmopLCBzaXplLAotCQkJCSAgIGJvX3R5cGUsICZpOTE1X3N5c19wbGFjZW1l
bnQsCi0JCQkJICAgcGFnZV9zaXplID4+IFBBR0VfU0hJRlQsCisJCQkJICAgYm9fdHlwZSwgJnBs
YWNlbWVudCwgcGFnZV9zaXplID4+IFBBR0VfU0hJRlQsCiAJCQkJICAgJmN0eCwgTlVMTCwgTlVM
TCwgaTkxNV90dG1fYm9fZGVzdHJveSk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIGk5MTVfdHRtX2Vy
cl90b19nZW0ocmV0KTsKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
