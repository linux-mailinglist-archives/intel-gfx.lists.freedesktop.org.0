Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B8D3C6CD0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 11:02:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4DD06E061;
	Tue, 13 Jul 2021 09:02:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9991E89DEC;
 Tue, 13 Jul 2021 09:02:39 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id BC29D221D2;
 Tue, 13 Jul 2021 09:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1626166957; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=7FFP9WhCY9C7CZTQ6EWmeyFN/DqwjqBMDGbQZsz/Nhc=;
 b=VQPf8Vtkvqk6MoWXC+Bta7FMP3X9Am7qoQzzBcjJ7nIFQsQlqJieHDW9ysvzfRn7NU8O60
 2gwa/Waxdw4p8qbRYUWCXftKTGRywrDcm96wDwr7KOjvKG14aryDF3qLShj7pFmuKHQm6q
 S3/7oVldewL8Lk0qT3w8LUrzms3rFpQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1626166957;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=7FFP9WhCY9C7CZTQ6EWmeyFN/DqwjqBMDGbQZsz/Nhc=;
 b=ZcY9QWiOvEhTo6mzdQLJYb7UE+2ukj2NLPNs2/cNRtEhvMzcHgtfdDwzKND47Hb6UASgvO
 Ulg0lV+8JHfhbJBQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 795B713B3B;
 Tue, 13 Jul 2021 09:02:37 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id 8QWxHK1W7WDDTgAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Tue, 13 Jul 2021 09:02:37 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie, daniel@ffwll.ch, christian.koenig@amd.com,
 ville.syrjala@linux.intel.com, melissa.srw@gmail.com, jgg@ziepe.ca,
 lee.jones@linaro.org, chris@chris-wilson.co.uk, miaoqinglang@huawei.com
Date: Tue, 13 Jul 2021 11:02:35 +0200
Message-Id: <20210713090235.26372-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "drm/vgem: Implement mmap as GEM object
 function"
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IDM3NWNjYTFjZmViNSAoImRybS92Z2VtOiBJbXBsZW1lbnQgbW1hcCBhcyBHRU0gb2Jq
ZWN0IGZ1bmN0aW9uIikKYnJva2Ugc2V2ZXJsYSBJR1QgdGVzdHMgaW4gdmdlbV9iYXNpYy4gWzFd
IEF0dGVtcHRzIHRvIGZpeCB0aGUgaXNzdWUKaGF2ZSBub3Qgd29ya2VkIG91dCBzbyBmYXIuIFsy
XVszXSBSZXZlcnQgdGhlIG9yaWdpbmFsIHBhdGNoIGZvciBub3cuCgpOb3RlIHRoYXQgdGhlcmUg
aXMgYSBwYXRjaCB0aGF0IGNvbnZlcnRzIHZnZW0gdG8gc2htZW0gaGVscGVycy4gWzRdCk1lcmdp
bmcgdGhpcyBjaGFuZ2Ugd291bGQgYmUgcHJlZmVyYWJsZSB0byBtb2RpZnlpbmcgdmdlbSdzIG1t
YXAgY29kZS4KClsxXSBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL2ln
dEB2Z2VtX2Jhc2ljQHVubG9hZC5odG1sClsyXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9pbnRl
bC1nZngvMjAyMTA3MDkxNTQyNTYuMTIwMDUtMS10emltbWVybWFubkBzdXNlLmRlLwpbM10gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvaW50ZWwtZ2Z4LzIwMjEwNzEyMTIzMzIxLjM2NTgtMS10emlt
bWVybWFubkBzdXNlLmRlLwpbNF0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy85MDY3MS8KClNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFu
bkBzdXNlLmRlPgpGaXhlczogMzc1Y2NhMWNmZWI1ICgiZHJtL3ZnZW06IEltcGxlbWVudCBtbWFw
IGFzIEdFTSBvYmplY3QgZnVuY3Rpb24iKQpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBz
dXNlLmRlPgpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpD
YzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6ICJDaHJpc3RpYW4g
S8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogSmFzb24gR3VudGhvcnBlIDxq
Z2dAemllcGUuY2E+CkNjOiBNZWxpc3NhIFdlbiA8bWVsaXNzYS5zcndAZ21haWwuY29tPgpDYzog
UWluZ2xhbmcgTWlhbyA8bWlhb3FpbmdsYW5nQGh1YXdlaS5jb20+CkNjOiBHZXJkIEhvZmZtYW5u
IDxrcmF4ZWxAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5j
IHwgNDYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NDEgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vdmdlbS92Z2VtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYwpp
bmRleCBkZjYzNGFhNTI2MzguLmJmMzhhN2UzMTlkMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3ZnZW0vdmdlbV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5j
CkBAIC0yMzksNyArMjM5LDMyIEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2lvY3RsX2Rlc2MgdmdlbV9p
b2N0bHNbXSA9IHsKIAlEUk1fSU9DVExfREVGX0RSVihWR0VNX0ZFTkNFX1NJR05BTCwgdmdlbV9m
ZW5jZV9zaWduYWxfaW9jdGwsIERSTV9SRU5ERVJfQUxMT1cpLAogfTsKCi1ERUZJTkVfRFJNX0dF
TV9GT1BTKHZnZW1fZHJpdmVyX2ZvcHMpOworc3RhdGljIGludCB2Z2VtX21tYXAoc3RydWN0IGZp
bGUgKmZpbHAsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQoreworCXVuc2lnbmVkIGxvbmcg
ZmxhZ3MgPSB2bWEtPnZtX2ZsYWdzOworCWludCByZXQ7CisKKwlyZXQgPSBkcm1fZ2VtX21tYXAo
ZmlscCwgdm1hKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCisJLyogS2VlcCB0aGUgV0Mg
bW1hcGluZyBzZXQgYnkgZHJtX2dlbV9tbWFwKCkgYnV0IG91ciBwYWdlcworCSAqIGFyZSBvcmRp
bmFyeSBhbmQgbm90IHNwZWNpYWwuCisJICovCisJdm1hLT52bV9mbGFncyA9IGZsYWdzIHwgVk1f
RE9OVEVYUEFORCB8IFZNX0RPTlREVU1QOworCXJldHVybiAwOworfQorCitzdGF0aWMgY29uc3Qg
c3RydWN0IGZpbGVfb3BlcmF0aW9ucyB2Z2VtX2RyaXZlcl9mb3BzID0geworCS5vd25lcgkJPSBU
SElTX01PRFVMRSwKKwkub3BlbgkJPSBkcm1fb3BlbiwKKwkubW1hcAkJPSB2Z2VtX21tYXAsCisJ
LnBvbGwJCT0gZHJtX3BvbGwsCisJLnJlYWQJCT0gZHJtX3JlYWQsCisJLnVubG9ja2VkX2lvY3Rs
ID0gZHJtX2lvY3RsLAorCS5jb21wYXRfaW9jdGwJPSBkcm1fY29tcGF0X2lvY3RsLAorCS5yZWxl
YXNlCT0gZHJtX3JlbGVhc2UsCit9OwoKIHN0YXRpYyBzdHJ1Y3QgcGFnZSAqKnZnZW1fcGluX3Bh
Z2VzKHN0cnVjdCBkcm1fdmdlbV9nZW1fb2JqZWN0ICpibykKIHsKQEAgLTM2MiwxMiArMzg3LDI0
IEBAIHN0YXRpYyB2b2lkIHZnZW1fcHJpbWVfdnVubWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAq
b2JqLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1hCiAJdmdlbV91bnBpbl9wYWdlcyhibyk7CiB9Cgot
c3RhdGljIGludCB2Z2VtX3ByaW1lX21tYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0
cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQorc3RhdGljIGludCB2Z2VtX3ByaW1lX21tYXAoc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICpvYmosCisJCQkgICBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZt
YSkKIHsKKwlpbnQgcmV0OworCisJaWYgKG9iai0+c2l6ZSA8IHZtYS0+dm1fZW5kIC0gdm1hLT52
bV9zdGFydCkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlpZiAoIW9iai0+ZmlscCkKKwkJcmV0dXJu
IC1FTk9ERVY7CisKKwlyZXQgPSBjYWxsX21tYXAob2JqLT5maWxwLCB2bWEpOworCWlmIChyZXQp
CisJCXJldHVybiByZXQ7CisKIAl2bWFfc2V0X2ZpbGUodm1hLCBvYmotPmZpbHApOwogCXZtYS0+
dm1fZmxhZ3MgfD0gVk1fRE9OVEVYUEFORCB8IFZNX0RPTlREVU1QOwogCXZtYS0+dm1fcGFnZV9w
cm90ID0gcGdwcm90X3dyaXRlY29tYmluZSh2bV9nZXRfcGFnZV9wcm90KHZtYS0+dm1fZmxhZ3Mp
KTsKLQl2bWEtPnZtX3BhZ2VfcHJvdCA9IHBncHJvdF9kZWNyeXB0ZWQodm1hLT52bV9wYWdlX3By
b3QpOwoKIAlyZXR1cm4gMDsKIH0KQEAgLTM3OSw3ICs0MTYsNiBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRybV9nZW1fb2JqZWN0X2Z1bmNzIHZnZW1fZ2VtX29iamVjdF9mdW5jcyA9IHsKIAkuZ2V0
X3NnX3RhYmxlID0gdmdlbV9wcmltZV9nZXRfc2dfdGFibGUsCiAJLnZtYXAgPSB2Z2VtX3ByaW1l
X3ZtYXAsCiAJLnZ1bm1hcCA9IHZnZW1fcHJpbWVfdnVubWFwLAotCS5tbWFwID0gdmdlbV9wcmlt
ZV9tbWFwLAogCS52bV9vcHMgPSAmdmdlbV9nZW1fdm1fb3BzLAogfTsKCkBAIC0zOTcsNyArNDMz
LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZHJpdmVyIHZnZW1fZHJpdmVyID0gewogCS5w
cmltZV9mZF90b19oYW5kbGUgPSBkcm1fZ2VtX3ByaW1lX2ZkX3RvX2hhbmRsZSwKIAkuZ2VtX3By
aW1lX2ltcG9ydCA9IHZnZW1fcHJpbWVfaW1wb3J0LAogCS5nZW1fcHJpbWVfaW1wb3J0X3NnX3Rh
YmxlID0gdmdlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUsCi0JLmdlbV9wcmltZV9tbWFwID0gZHJt
X2dlbV9wcmltZV9tbWFwLAorCS5nZW1fcHJpbWVfbW1hcCA9IHZnZW1fcHJpbWVfbW1hcCwKCiAJ
Lm5hbWUJPSBEUklWRVJfTkFNRSwKIAkuZGVzYwk9IERSSVZFUl9ERVNDLAotLQoyLjMyLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
