Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7D33C5C32
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 14:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9EAD89C49;
	Mon, 12 Jul 2021 12:33:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DE6489C49;
 Mon, 12 Jul 2021 12:33:25 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 1752A21CC4;
 Mon, 12 Jul 2021 12:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1626093204; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=AYKAdLtE/BUTuxBUhEydzXDOdy4Vi7yaFmbOtBvHMO8=;
 b=OVPq7nrtxdxhqVZUdjg0s7EpI7yTWJNyrWXQdajaaz0K2jbhImFfYrZjQhnWfa4UnOrWUg
 g2cuFnWjjeL1bs4LLXVEDp0oyeL3z1Xc4tHudktL75oMd+WVp/kSkdw2dBVVhDOZAJLuqX
 HfKnWD+q4LHVzmF/wek8S7ZjjItFhRY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1626093204;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=AYKAdLtE/BUTuxBUhEydzXDOdy4Vi7yaFmbOtBvHMO8=;
 b=tfYAqfkDSqt42WudBMcjBSa0Lk9aOzQgr4HRgB1SU62rp2FVdSj4ZpgHeSmpx73jpNWxVc
 MZ9XSHVuUTTej3Dw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id C156A13BAA;
 Mon, 12 Jul 2021 12:33:23 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id PAFTLZM27GCTWQAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Mon, 12 Jul 2021 12:33:23 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie, daniel@ffwll.ch, christian.koenig@amd.com,
 ville.syrjala@linux.intel.com, melissa.srw@gmail.com, jgg@ziepe.ca,
 lee.jones@linaro.org, chris@chris-wilson.co.uk, miaoqinglang@huawei.com
Date: Mon, 12 Jul 2021 14:33:21 +0200
Message-Id: <20210712123321.3658-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/vgem: Restore mmap functionality
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
ZWN0IGZ1bmN0aW9uIikKYWNjaWRlbnRhbGx5IHJlbW92ZWQgdGhlIGFjdHVhbCBtbWFwIGZ1bmN0
aW9uYWxpdHkgZnJvbSB2Z2VtLiBSZXN0b3JlCnRoZSBvcmlnaW5hbCBpbXBsZW1lbnRhdGlvbiBi
eSByZXN0b3JpbmcgdGhlIHZtX3Bnb2ZmIGluIHRoZSBtbWFwIGNvZGUuCgpGaXhlcyBhY2Nlc3Mg
dG8gdW5tYXBwZWQgbWVtb3J5OgoKWyAgMTA2LjU5MTc0NF0gQlVHOiBLQVNBTjogdm1hbGxvYy1v
dXQtb2YtYm91bmRzIGluIGRvX2ZhdWx0KzB4MzgvMHg0ODAKWyAgMTA2LjU5ODE1NF0gUmVhZCBv
ZiBzaXplIDggYXQgYWRkciBmZmZmZmZmZmMxMGM0NGE4IGJ5IHRhc2sgdmdlbV9iYXNpYy8xNTE0
ClsgIDEwNi42MDUxNzNdClsgIDEwNi42MDY2NzhdIENQVTogMSBQSUQ6IDE1MTQgQ29tbTogdmdl
bV9iYXNpYyBUYWludGVkOiBHICAgICAgICAgICAgRSAgICAgNS4xMy4wLTEtZGVmYXVsdCsgIzk5
MApbICAxMDYuNjE1NTM1XSBIYXJkd2FyZSBuYW1lOiBEZWxsIEluYy4gT3B0aVBsZXggOTAyMC8w
TjRZQzgsIEJJT1MgQTI0IDEwLzI0LzIwMTgKWyAgMTA2LjYyMjgxOF0gQ2FsbCBUcmFjZToKWyAg
MTA2LjYyNTI4OV0gIGR1bXBfc3RhY2srMHhhNS8weGRjClsgIDEwNi42Mjg2NDJdICBwcmludF9h
ZGRyZXNzX2Rlc2NyaXB0aW9uLmNvbnN0cHJvcC4wKzB4MTgvMHgxMDAKWyAgMTA2LjYzNDQzOV0g
ID8gZG9fZmF1bHQrMHgzOC8weDQ4MApbICAxMDYuNjM3ODcyXSAga2FzYW5fcmVwb3J0LmNvbGQr
MHg3Yy8weGQ4ClsgIDEwNi42NDE4MzRdICA/IGRvX2ZhdWx0KzB4MzgvMHg0ODAKWyAgMTA2LjY0
NTI3NF0gIGRvX2ZhdWx0KzB4MzgvMHg0ODAKWyAgMTA2LjY0ODUzNV0gIF9faGFuZGxlX21tX2Zh
dWx0KzB4OTM1LzB4YjAwClsgIDEwNi42NTI2NzZdICA/IHZtX2lvbWFwX21lbW9yeSsweGUwLzB4
ZTAKWyAgMTA2LjY1NjYzNF0gID8gX19sb2NrX3JlbGVhc2UrMHgxMmYvMHg0ZTAKWyAgMTA2LjY2
MDY5Nl0gID8gY291bnRfbWVtY2dfZXZlbnRfbW0ucGFydC4wKzB4YjkvMHgxOTAKWyAgMTA2LjY2
NTc5OV0gIGhhbmRsZV9tbV9mYXVsdCsweGQwLzB4MzcwClsgIDEwNi42Njk2NzVdICBkb191c2Vy
X2FkZHJfZmF1bHQrMHgyYTAvMHg4YzAKWyAgMTA2LjY3MzkwOF0gIGV4Y19wYWdlX2ZhdWx0KzB4
NjQvMHhmMApbICAxMDYuNjc3NjA0XSAgPyBhc21fZXhjX3BhZ2VfZmF1bHQrMHg4LzB4MzAKWyAg
MTA2LjY4MTczOV0gIGFzbV9leGNfcGFnZV9mYXVsdCsweDFlLzB4MzAKWyAgMTA2LjY4NTc4Ml0g
UklQOiAwMDMzOjB4NDAyZTEyCi4uLgoKdjI6CgkqIHJlc3RvcmUgdm1hLnZtX3Bnb2ZmIGluc3Rl
YWQgb2YgbWFwcGluZyB0aGUgcGFnZXMKClNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5u
IDx0emltbWVybWFubkBzdXNlLmRlPgpGaXhlczogMzc1Y2NhMWNmZWI1ICgiZHJtL3ZnZW06IElt
cGxlbWVudCBtbWFwIGFzIEdFTSBvYmplY3QgZnVuY3Rpb24iKQpDYzogVGhvbWFzIFppbW1lcm1h
bm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNo
PgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBN
ZWxpc3NhIFdlbiA8bWVsaXNzYS5zcndAZ21haWwuY29tPgpDYzogSmFzb24gR3VudGhvcnBlIDxq
Z2dAemllcGUuY2E+CkNjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KQ2M6IExl
ZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3ZnZW0v
dmdlbV9kcnYuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5j
IGIvZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYwppbmRleCBkZjYzNGFhNTI2MzguLmU5
MmQxZjJlMDJjNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jCkBAIC0zNjQsOCArMzY0LDggQEAg
c3RhdGljIHZvaWQgdmdlbV9wcmltZV92dW5tYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmos
IHN0cnVjdCBkbWFfYnVmX21hcCAqbWEKIAogc3RhdGljIGludCB2Z2VtX3ByaW1lX21tYXAoc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQogewot
CXZtYV9zZXRfZmlsZSh2bWEsIG9iai0+ZmlscCk7Ci0Jdm1hLT52bV9mbGFncyB8PSBWTV9ET05U
RVhQQU5EIHwgVk1fRE9OVERVTVA7CisJdm1hLT52bV9wZ29mZiAtPSBkcm1fdm1hX25vZGVfc3Rh
cnQoJm9iai0+dm1hX25vZGUpOworCXZtYS0+dm1fZmxhZ3MgfD0gVk1fSU8gfCBWTV9QRk5NQVAg
fCBWTV9ET05URVhQQU5EIHwgVk1fRE9OVERVTVA7CiAJdm1hLT52bV9wYWdlX3Byb3QgPSBwZ3By
b3Rfd3JpdGVjb21iaW5lKHZtX2dldF9wYWdlX3Byb3Qodm1hLT52bV9mbGFncykpOwogCXZtYS0+
dm1fcGFnZV9wcm90ID0gcGdwcm90X2RlY3J5cHRlZCh2bWEtPnZtX3BhZ2VfcHJvdCk7CiAKLS0g
CjIuMzIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
