Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA1B3B8F45
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 10:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A12936E9CF;
	Thu,  1 Jul 2021 08:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 260A76EA81;
 Thu,  1 Jul 2021 08:58:47 +0000 (UTC)
Received: from imap.suse.de (imap-alt.suse-dmz.suse.de [192.168.254.47])
 (using TLSv1.2 with cipher ECDHE-ECDSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id C54B91FF8B;
 Thu,  1 Jul 2021 08:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1625129925; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pCxv0yfjaANquWqomeqUkvuDxC7BCGfFD+RKVELDnoc=;
 b=hHl0v69vZDu3+EwZ+MG1OgMyolUXpQbDAAj9rehWCna07XOCjyXN9QZbQ1RJeOQDrpCTSj
 yp4RVIVhusmBAbxj642I0qrjLaUnNS5b4FdakrH32dL6iX5u+VTvbUk44VrtqpPZuA4blv
 7Nle9nVF0FGjJ18Sp3Tls1AXEHR68To=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1625129925;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pCxv0yfjaANquWqomeqUkvuDxC7BCGfFD+RKVELDnoc=;
 b=ItAenV+ULDVpA5NtXIbwQM9VaUgRbSKQx4I6US/y7XO3JU6nIHOvByS5EFwT67qWK7UgrE
 FqTBYERBMyYi48CQ==
Received: from imap3-int (imap-alt.suse-dmz.suse.de [192.168.254.47])
 by imap.suse.de (Postfix) with ESMTP id 7CDBC11CC0;
 Thu,  1 Jul 2021 08:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1625129925; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pCxv0yfjaANquWqomeqUkvuDxC7BCGfFD+RKVELDnoc=;
 b=hHl0v69vZDu3+EwZ+MG1OgMyolUXpQbDAAj9rehWCna07XOCjyXN9QZbQ1RJeOQDrpCTSj
 yp4RVIVhusmBAbxj642I0qrjLaUnNS5b4FdakrH32dL6iX5u+VTvbUk44VrtqpPZuA4blv
 7Nle9nVF0FGjJ18Sp3Tls1AXEHR68To=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1625129925;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pCxv0yfjaANquWqomeqUkvuDxC7BCGfFD+RKVELDnoc=;
 b=ItAenV+ULDVpA5NtXIbwQM9VaUgRbSKQx4I6US/y7XO3JU6nIHOvByS5EFwT67qWK7UgrE
 FqTBYERBMyYi48CQ==
Received: from director2.suse.de ([192.168.254.72]) by imap3-int with ESMTPSA
 id CJWpHcWD3WA0IgAALh3uQQ
 (envelope-from <tzimmermann@suse.de>); Thu, 01 Jul 2021 08:58:45 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch,
 chris@chris-wilson.co.uk, mika.kuoppala@linux.intel.com,
 matthew.brost@intel.com, maarten.lankhorst@linux.intel.com,
 lucas.demarchi@intel.com, ville.syrjala@linux.intel.com
Date: Thu,  1 Jul 2021 10:58:33 +0200
Message-Id: <20210701085833.26566-3-tzimmermann@suse.de>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210701085833.26566-1-tzimmermann@suse.de>
References: <20210701085833.26566-1-tzimmermann@suse.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915: Drop all references to DRM IRQ
 midlayer
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
Cc: intel-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVtb3ZlIGFsbCByZWZlcmVuY2VzIHRvIERSTSdzIElSUSBtaWRsYXllci4gaTkxNSB1c2VzIExp
bnV4JyBpbnRlcnJ1cHQKZnVuY3Rpb25zIGRpcmVjdGx5LgoKdjI6CgkqIGFsc28gcmVtb3ZlIGFu
IG91dGRhdGVkIGNvbW1lbnQKCSogbW92ZSBJUlEgZml4IGludG8gc2VwYXJhdGUgcGF0Y2gKCSog
dXBkYXRlIEZpeGVzIHRhZyAoRGFuaWVsKQoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIFppbW1lcm1h
bm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CkZpeGVzOiBiMzE4YjgyNDU1YmQgKCJkcm0vaTkxNTog
TnVrZSBkcm1fZHJpdmVyIGlycSB2ZnVuY3MiKQpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4K
Q2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6
IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwg
MSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgNSAtLS0tLQogMiBmaWxlcyBj
aGFuZ2VkLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IDg1MGI0
OTljNzFjOC4uNzNkZTQ1NDcyZjYwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTQyLDcg
KzQyLDYgQEAKICNpbmNsdWRlIDxkcm0vZHJtX2FwZXJ0dXJlLmg+CiAjaW5jbHVkZSA8ZHJtL2Ry
bV9hdG9taWNfaGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9pb2N0bC5oPgotI2luY2x1ZGUg
PGRybS9kcm1faXJxLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9tYW5hZ2VkLmg+CiAjaW5jbHVkZSA8
ZHJtL2RybV9wcm9iZV9oZWxwZXIuaD4KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKaW5kZXggN2Qw
Y2U4YjlmOGVkLi4yZGU1MWVhODNlMDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwpAQCAtMzMs
NyArMzMsNiBAQAogI2luY2x1ZGUgPGxpbnV4L3N5c3JxLmg+CiAKICNpbmNsdWRlIDxkcm0vZHJt
X2Rydi5oPgotI2luY2x1ZGUgPGRybS9kcm1faXJxLmg+CiAKICNpbmNsdWRlICJkaXNwbGF5L2lu
dGVsX2RlLmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgiCkBAIC00
NTY0LDEwICs0NTYzLDYgQEAgdm9pZCBpbnRlbF9ydW50aW1lX3BtX2VuYWJsZV9pbnRlcnJ1cHRz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogYm9vbCBpbnRlbF9pcnFzX2Vu
YWJsZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewotCS8qCi0JICogV2Ug
b25seSB1c2UgZHJtX2lycV91bmluc3RhbGwoKSBhdCB1bmxvYWQgYW5kIFZUIHN3aXRjaCwgc28K
LQkgKiB0aGlzIGlzIHRoZSBvbmx5IHRoaW5nIHdlIG5lZWQgdG8gY2hlY2suCi0JICovCiAJcmV0
dXJuIGRldl9wcml2LT5ydW50aW1lX3BtLmlycXNfZW5hYmxlZDsKIH0KIAotLSAKMi4zMi4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
