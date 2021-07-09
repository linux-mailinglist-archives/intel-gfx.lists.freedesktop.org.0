Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDD53C2706
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 17:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68B586EA40;
	Fri,  9 Jul 2021 15:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5B546EA3F;
 Fri,  9 Jul 2021 15:42:59 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 78DE31FD82;
 Fri,  9 Jul 2021 15:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1625845378; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=mmgIzdgfyMu4ThUIjpayeTSBv68QO84Olz3jNi34ylk=;
 b=kSKLS/Ev5OJ5+J4IFpdMJI/vD/7IeyqbyoD7gRlBZhWk2Q99CE9/tPkMccIIShR9wUzpMk
 QUC+p570sz+CPyvsF8Vrt9AseM8nRY6eCfw8wjMsp+zMQCHGH2ldqUehttm0N86xlweuVH
 KLW/YiHXqgcfBPudfwdhNfieoN/gR/I=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1625845378;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=mmgIzdgfyMu4ThUIjpayeTSBv68QO84Olz3jNi34ylk=;
 b=UslZprxKTVr4kxQV2GaqrDwKZwfmLEC2b+vGH3Hz7x8vlsFbEN4vNZv3K+iJSjdK/q8BfV
 HejQSzLXEYwKTvBQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 3054B13A3D;
 Fri,  9 Jul 2021 15:42:58 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id rI5+CYJu6GALRwAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Fri, 09 Jul 2021 15:42:58 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie, daniel@ffwll.ch, christian.koenig@amd.com,
 ville.syrjala@linux.intel.com, melissa.srw@gmail.com, jgg@ziepe.ca,
 lee.jones@linaro.org, chris@chris-wilson.co.uk, miaoqinglang@huawei.com
Date: Fri,  9 Jul 2021 17:42:56 +0200
Message-Id: <20210709154256.12005-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/vgem: Restore mmap functionality
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
aW9uYWxpdHkgZnJvbSB2Z2VtLiBSZXN0b3JlCnRoZSBvcmlnaW5hbCBpbXBsZW1lbnRhdGlvbiBh
bmQgVk1BIGZsYWdzLgoKRml4ZXMgYWNjZXNzIHRvIHVubWFwcGVkIG1lbW9yeToKClsgIDEwNi41
OTE3NDRdIEJVRzogS0FTQU46IHZtYWxsb2Mtb3V0LW9mLWJvdW5kcyBpbiBkb19mYXVsdCsweDM4
LzB4NDgwClsgIDEwNi41OTgxNTRdIFJlYWQgb2Ygc2l6ZSA4IGF0IGFkZHIgZmZmZmZmZmZjMTBj
NDRhOCBieSB0YXNrIHZnZW1fYmFzaWMvMTUxNApbICAxMDYuNjA1MTczXQpbICAxMDYuNjA2Njc4
XSBDUFU6IDEgUElEOiAxNTE0IENvbW06IHZnZW1fYmFzaWMgVGFpbnRlZDogRyAgICAgICAgICAg
IEUgICAgIDUuMTMuMC0xLWRlZmF1bHQrICM5OTAKWyAgMTA2LjYxNTUzNV0gSGFyZHdhcmUgbmFt
ZTogRGVsbCBJbmMuIE9wdGlQbGV4IDkwMjAvME40WUM4LCBCSU9TIEEyNCAxMC8yNC8yMDE4Clsg
IDEwNi42MjI4MThdIENhbGwgVHJhY2U6ClsgIDEwNi42MjUyODldICBkdW1wX3N0YWNrKzB4YTUv
MHhkYwpbICAxMDYuNjI4NjQyXSAgcHJpbnRfYWRkcmVzc19kZXNjcmlwdGlvbi5jb25zdHByb3Au
MCsweDE4LzB4MTAwClsgIDEwNi42MzQ0MzldICA/IGRvX2ZhdWx0KzB4MzgvMHg0ODAKWyAgMTA2
LjYzNzg3Ml0gIGthc2FuX3JlcG9ydC5jb2xkKzB4N2MvMHhkOApbICAxMDYuNjQxODM0XSAgPyBk
b19mYXVsdCsweDM4LzB4NDgwClsgIDEwNi42NDUyNzRdICBkb19mYXVsdCsweDM4LzB4NDgwClsg
IDEwNi42NDg1MzVdICBfX2hhbmRsZV9tbV9mYXVsdCsweDkzNS8weGIwMApbICAxMDYuNjUyNjc2
XSAgPyB2bV9pb21hcF9tZW1vcnkrMHhlMC8weGUwClsgIDEwNi42NTY2MzRdICA/IF9fbG9ja19y
ZWxlYXNlKzB4MTJmLzB4NGUwClsgIDEwNi42NjA2OTZdICA/IGNvdW50X21lbWNnX2V2ZW50X21t
LnBhcnQuMCsweGI5LzB4MTkwClsgIDEwNi42NjU3OTldICBoYW5kbGVfbW1fZmF1bHQrMHhkMC8w
eDM3MApbICAxMDYuNjY5Njc1XSAgZG9fdXNlcl9hZGRyX2ZhdWx0KzB4MmEwLzB4OGMwClsgIDEw
Ni42NzM5MDhdICBleGNfcGFnZV9mYXVsdCsweDY0LzB4ZjAKWyAgMTA2LjY3NzYwNF0gID8gYXNt
X2V4Y19wYWdlX2ZhdWx0KzB4OC8weDMwClsgIDEwNi42ODE3MzldICBhc21fZXhjX3BhZ2VfZmF1
bHQrMHgxZS8weDMwClsgIDEwNi42ODU3ODJdIFJJUDogMDAzMzoweDQwMmUxMgouLi4KClNpZ25l
ZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpGaXhlczog
Mzc1Y2NhMWNmZWI1ICgiZHJtL3ZnZW06IEltcGxlbWVudCBtbWFwIGFzIEdFTSBvYmplY3QgZnVu
Y3Rpb24iKQpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5j
aD4KQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpDYzogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPgpDYzogTWVsaXNzYSBXZW4gPG1lbGlzc2Euc3J3QGdtYWlsLmNvbT4K
Q2M6IEphc29uIEd1bnRob3JwZSA8amdnQHppZXBlLmNhPgpDYzogR2VyZCBIb2ZmbWFubiA8a3Jh
eGVsQHJlZGhhdC5jb20+CkNjOiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZHJ2LmMgfCAxMSArKysrKysrKysrLQogMSBmaWxl
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdl
bV9kcnYuYwppbmRleCBkZjYzNGFhNTI2MzguLmY1MGZkMTBjNGZhZCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdmdlbS92
Z2VtX2Rydi5jCkBAIC0zNjQsOCArMzY0LDE3IEBAIHN0YXRpYyB2b2lkIHZnZW1fcHJpbWVfdnVu
bWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1hCgog
c3RhdGljIGludCB2Z2VtX3ByaW1lX21tYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0
cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQogeworCWludCByZXQ7CisKKwlpZiAoIW9iai0+Zmls
cCkKKwkJcmV0dXJuIC1FTk9ERVY7CisKKwlyZXQgPSBjYWxsX21tYXAob2JqLT5maWxwLCB2bWEp
OworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKIAl2bWFfc2V0X2ZpbGUodm1hLCBvYmotPmZp
bHApOwotCXZtYS0+dm1fZmxhZ3MgfD0gVk1fRE9OVEVYUEFORCB8IFZNX0RPTlREVU1QOworCXZt
YS0+dm1fZmxhZ3MgfD0gVk1fSU8gfCBWTV9QRk5NQVAgfCBWTV9ET05URVhQQU5EIHwgVk1fRE9O
VERVTVA7CiAJdm1hLT52bV9wYWdlX3Byb3QgPSBwZ3Byb3Rfd3JpdGVjb21iaW5lKHZtX2dldF9w
YWdlX3Byb3Qodm1hLT52bV9mbGFncykpOwogCXZtYS0+dm1fcGFnZV9wcm90ID0gcGdwcm90X2Rl
Y3J5cHRlZCh2bWEtPnZtX3BhZ2VfcHJvdCk7CgotLQoyLjMyLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
