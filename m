Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AD33CAF48
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 00:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A65856E8C8;
	Thu, 15 Jul 2021 22:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28E4C6E8C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 22:39:19 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id y4so6991778pfi.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 15:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iyozTSomnY57D+e+B5ZX9prvxFTQugp7z+hR/eTorww=;
 b=fsIHp9qJxKQCYTxYSygRbtrVdskVdQpwPhqRmenzAggXpqTfWpSOYPuWU4dZqgeAWG
 VMEp1XkQODBah750DFVcFKcObHVrRO57f03WJD7egh59VIdqtryyDEj6zb1OnfogCjq/
 Zs23oe/Z+q7LSzrG0qSj1FNmXRHzVd7gZjvo+BQINDK6FTqkBMdKhxi2g2HKDiWDWa9b
 kxZJX6gbq744sCeNyUtkSh835TIG29Ifn8ywMkIzA73od3/QvhzrHtF/T+gr7Vp1qGO6
 iAICpn2ZoxVGzQXkWaBWrzPt7aVgY/kTuLtbVg9ckF7o1pd7WI+a2cRrolitlN9vhnK+
 najA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iyozTSomnY57D+e+B5ZX9prvxFTQugp7z+hR/eTorww=;
 b=EJF528NQiGEfYuKk6IRCLQ9Kf3mVQw6ds8rg+JF1lc5O7jbqXgIAKUTLaTqo7bxRao
 wA2Tn1PkwLvIkufysMD42P6LggXJ70Qvhz2ZflOE2obnyi5UHZqUc7+0eKuV0irTvT6U
 HEK5OeSPQ7NvxM+sKAWpwt2YviKj3nJAaf18p1emvWol8RB3s+1JnOJJ4aYAl/dHwJJe
 A+4UqQtQvlHmNhVTgMWvf/Oce6a6qDNvxcqIWQWLQnnoXSVRstj3ZaRgTuRW74v3ibZc
 JAJF6rBbacUmpPWEk7dhhbdaW8FSyXKpW5eJhbrmC4nINJ6nU87Q7k/GeSYsPDEy5DNb
 z9KA==
X-Gm-Message-State: AOAM530IymvcnG0SQhnMAAiv0UZez/1KCjrx/GpJ6dQ7OS9d8tyUTI5G
 Hmj8zcN4ba1dwbubgnXgAAuZdTD7MN6Y7Q==
X-Google-Smtp-Source: ABdhPJzYSaPU+NPZ30UE5b17SAlXEWyCx2wEdozswkNTiUkviFPP1WjAWB1Krwz9f844/0/dmn7/QQ==
X-Received: by 2002:a05:6a00:16c6:b029:32d:e190:9dd0 with SMTP id
 l6-20020a056a0016c6b029032de1909dd0mr6960538pfc.70.1626388758467; 
 Thu, 15 Jul 2021 15:39:18 -0700 (PDT)
Received: from omlet.com ([134.134.137.87])
 by smtp.gmail.com with ESMTPSA id ft7sm9959459pjb.32.2021.07.15.15.39.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 15:39:18 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 15 Jul 2021 17:38:59 -0500
Message-Id: <20210715223900.1840576-7-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715223900.1840576-1-jason@jlekstrand.net>
References: <20210715223900.1840576-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/gem: Correct the locking and pin
 pattern for dma-buf (v6)
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29t
PgoKSWYgb3VyIGV4cG9ydGVkIGRtYS1idWZzIGFyZSBpbXBvcnRlZCBieSBhbm90aGVyIGluc3Rh
bmNlIG9mIG91ciBkcml2ZXIsCnRoYXQgaW5zdGFuY2Ugd2lsbCB0eXBpY2FsbHkgaGF2ZSB0aGUg
aW1wb3J0ZWQgZG1hLWJ1ZnMgbG9ja2VkIGR1cmluZwpkbWFfYnVmX21hcF9hdHRhY2htZW50KCku
IEJ1dCB0aGUgZXhwb3J0ZXIgYWxzbyBsb2NrcyB0aGUgc2FtZSByZXNlcnZhdGlvbgpvYmplY3Qg
aW4gdGhlIG1hcF9kbWFfYnVmKCkgY2FsbGJhY2ssIHdoaWNoIGxlYWRzIHRvIHJlY3Vyc2l2ZSBs
b2NraW5nLgoKU28gdGFraW5nIHRoZSBsb2NrIGluc2lkZSBfcGluX3BhZ2VzX3VubG9ja2VkKCkg
aXMgaW5jb3JyZWN0LgoKQWRkaXRpb25hbGx5LCB0aGUgY3VycmVudCBwaW5uaW5nIGNvZGUgcGF0
aCBpcyBjb250cmFyeSB0byB0aGUgZGVmaW5lZAp3YXkgdGhhdCBwaW5uaW5nIHNob3VsZCBvY2N1
ci4KClJlbW92ZSB0aGUgZXhwbGljaXQgcGluL3VucGluIGZyb20gdGhlIG1hcC91bWFwIGZ1bmN0
aW9ucyBhbmQgbW92ZSB0aGVtCnRvIHRoZSBhdHRhY2gvZGV0YWNoIGFsbG93aW5nIGNvcnJlY3Qg
bG9ja2luZyB0byBvY2N1ciwgYW5kIHRvIG1hdGNoCnRoZSBzdGF0aWMgZG1hLWJ1ZiBkcm1fcHJp
bWUgcGF0dGVybi4KCkFkZCBhIGxpdmUgc2VsZnRlc3QgdG8gZXhlcmNpc2UgYm90aCBkeW5hbWlj
IGFuZCBub24tZHluYW1pYwpleHBvcnRzLgoKdjI6Ci0gRXh0ZW5kIHRoZSBzZWxmdGVzdCB3aXRo
IGEgZmFrZSBkeW5hbWljIGltcG9ydGVyLgotIFByb3ZpZGUgcmVhbCBwaW4gYW5kIHVucGluIGNh
bGxiYWNrcyB0byBub3QgYWJ1c2UgdGhlIGludGVyZmFjZS4KdjM6IChydWhsKQotIFJlbW92ZSB0
aGUgZHluYW1pYyBleHBvcnQgc3VwcG9ydCBhbmQgbW92ZSB0aGUgcGlubmluZyBpbnRvIHRoZQog
IGF0dGFjaC9kZXRhY2ggcGF0aC4KdjQ6IChydWhsKQotIFB1dCBwYWdlcyBkb2VzIG5vdCBuZWVk
IHRvIGFzc2VydCBvbiB0aGUgZG1hLXJlc3YKdjU6IChqYXNvbikKLSBMb2NrIGFyb3VuZCBkbWFf
YnVmX3VubWFwX2F0dGFjaG1lbnQoKSB3aGVuIGVtdWxhdGluZyBhIGR5bmFtaWMKICBpbXBvcnRl
ciBpbiB0aGUgc3VidGVzdHMuCi0gVXNlIHBpbl9wYWdlc191bmxvY2tlZAp2NjogKGphc29uKQot
IFVzZSBkbWFfYnVmX2F0dGFjaCBpbnN0ZWFkIG9mIGRtYV9idWZfYXR0YWNoX2R5bmFtaWMgaW4g
dGhlIHNlbGZ0ZXN0cwoKUmVwb3J0ZWQtYnk6IE1pY2hhZWwgSi4gUnVobCA8bWljaGFlbC5qLnJ1
aGxAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhl
bGxzdHJvbUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgSi4gUnVobCA8
bWljaGFlbC5qLnJ1aGxAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8
amFzb25Aamxla3N0cmFuZC5uZXQ+ClJldmlld2VkLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25A
amxla3N0cmFuZC5uZXQ+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Rt
YWJ1Zi5jICAgIHwgIDQzICsrKysrKy0tCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9kbWFidWYuYyAgfCAxMDMgKysrKysrKysrKysrKysrKystCiAyIGZpbGVzIGNoYW5nZWQs
IDEzMiBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKaW5kZXggNjE2YzNhMmYxYmFmMC4uOWE2NTVmNjlhMDY3
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwpAQCAtMTIs
NiArMTIsOCBAQAogI2luY2x1ZGUgImk5MTVfZ2VtX29iamVjdC5oIgogI2luY2x1ZGUgImk5MTVf
c2NhdHRlcmxpc3QuaCIKIAorSTkxNV9TRUxGVEVTVF9ERUNMQVJFKHN0YXRpYyBib29sIGZvcmNl
X2RpZmZlcmVudF9kZXZpY2VzOykKKwogc3RhdGljIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpkbWFfYnVmX3RvX29iaihzdHJ1Y3QgZG1hX2J1ZiAqYnVmKQogewogCXJldHVybiB0b19pbnRl
bF9ibyhidWYtPnByaXYpOwpAQCAtMjUsMTUgKzI3LDExIEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFi
bGUgKmk5MTVfZ2VtX21hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFj
aG1lCiAJc3RydWN0IHNjYXR0ZXJsaXN0ICpzcmMsICpkc3Q7CiAJaW50IHJldCwgaTsKIAotCXJl
dCA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXNfdW5sb2NrZWQob2JqKTsKLQlpZiAocmV0KQot
CQlnb3RvIGVycjsKLQogCS8qIENvcHkgc2cgc28gdGhhdCB3ZSBtYWtlIGFuIGluZGVwZW5kZW50
IG1hcHBpbmcgKi8KIAlzdCA9IGttYWxsb2Moc2l6ZW9mKHN0cnVjdCBzZ190YWJsZSksIEdGUF9L
RVJORUwpOwogCWlmIChzdCA9PSBOVUxMKSB7CiAJCXJldCA9IC1FTk9NRU07Ci0JCWdvdG8gZXJy
X3VucGluX3BhZ2VzOworCQlnb3RvIGVycjsKIAl9CiAKIAlyZXQgPSBzZ19hbGxvY190YWJsZShz
dCwgb2JqLT5tbS5wYWdlcy0+bmVudHMsIEdGUF9LRVJORUwpOwpAQCAtNTgsOCArNTYsNiBAQCBz
dGF0aWMgc3RydWN0IHNnX3RhYmxlICppOTE1X2dlbV9tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1
Zl9hdHRhY2htZW50ICphdHRhY2htZQogCXNnX2ZyZWVfdGFibGUoc3QpOwogZXJyX2ZyZWU6CiAJ
a2ZyZWUoc3QpOwotZXJyX3VucGluX3BhZ2VzOgotCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdl
cyhvYmopOwogZXJyOgogCXJldHVybiBFUlJfUFRSKHJldCk7CiB9CkBAIC02OCwxMyArNjQsOSBA
QCBzdGF0aWMgdm9pZCBpOTE1X2dlbV91bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFj
aG1lbnQgKmF0dGFjaG1lbnQsCiAJCQkJICAgc3RydWN0IHNnX3RhYmxlICpzZywKIAkJCQkgICBl
bnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaiA9IGRtYV9idWZfdG9fb2JqKGF0dGFjaG1lbnQtPmRtYWJ1Zik7Ci0KIAlkbWFfdW5t
YXBfc2d0YWJsZShhdHRhY2htZW50LT5kZXYsIHNnLCBkaXIsIERNQV9BVFRSX1NLSVBfQ1BVX1NZ
TkMpOwogCXNnX2ZyZWVfdGFibGUoc2cpOwogCWtmcmVlKHNnKTsKLQotCWk5MTVfZ2VtX29iamVj
dF91bnBpbl9wYWdlcyhvYmopOwogfQogCiBzdGF0aWMgaW50IGk5MTVfZ2VtX2RtYWJ1Zl92bWFw
KHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKm1hcCkKQEAgLTE2
OCw3ICsxNjAsMzEgQEAgc3RhdGljIGludCBpOTE1X2dlbV9lbmRfY3B1X2FjY2VzcyhzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hX2J1ZiwgZW51bSBkbWFfZGF0YV9kaXJlY3QKIAlyZXR1cm4gZXJyOwogfQog
CisvKioKKyAqIGk5MTVfZ2VtX2RtYWJ1Zl9hdHRhY2ggLSBEbyBhbnkgZXh0cmEgYXR0YWNoIHdv
cmsgbmVjZXNzYXJ5CisgKiBAZG1hYnVmOiBpbXBvcnRlZCBkbWEtYnVmCisgKiBAYXR0YWNoOiBu
ZXcgYXR0YWNoIHRvIGRvIHdvcmsgb24KKyAqCisgKi8KK3N0YXRpYyBpbnQgaTkxNV9nZW1fZG1h
YnVmX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAorCQkJCSAgc3RydWN0IGRtYV9idWZf
YXR0YWNobWVudCAqYXR0YWNoKQoreworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmog
PSBkbWFfYnVmX3RvX29iaihkbWFidWYpOworCisJcmV0dXJuIGk5MTVfZ2VtX29iamVjdF9waW5f
cGFnZXNfdW5sb2NrZWQob2JqKTsKK30KKworc3RhdGljIHZvaWQgaTkxNV9nZW1fZG1hYnVmX2Rl
dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAorCQkJCSAgIHN0cnVjdCBkbWFfYnVmX2F0dGFj
aG1lbnQgKmF0dGFjaCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gZG1h
X2J1Zl90b19vYmooZG1hYnVmKTsKKworCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmop
OworfQorCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIGk5MTVfZG1hYnVmX29wcyA9
ICB7CisJLmF0dGFjaCA9IGk5MTVfZ2VtX2RtYWJ1Zl9hdHRhY2gsCisJLmRldGFjaCA9IGk5MTVf
Z2VtX2RtYWJ1Zl9kZXRhY2gsCiAJLm1hcF9kbWFfYnVmID0gaTkxNV9nZW1fbWFwX2RtYV9idWYs
CiAJLnVubWFwX2RtYV9idWYgPSBpOTE1X2dlbV91bm1hcF9kbWFfYnVmLAogCS5yZWxlYXNlID0g
ZHJtX2dlbV9kbWFidWZfcmVsZWFzZSwKQEAgLTIwNCw2ICsyMjAsOCBAQCBzdGF0aWMgaW50IGk5
MTVfZ2VtX29iamVjdF9nZXRfcGFnZXNfZG1hYnVmKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmopCiAJc3RydWN0IHNnX3RhYmxlICpwYWdlczsKIAl1bnNpZ25lZCBpbnQgc2dfcGFnZV9z
aXplczsKIAorCWFzc2VydF9vYmplY3RfaGVsZChvYmopOworCiAJcGFnZXMgPSBkbWFfYnVmX21h
cF9hdHRhY2htZW50KG9iai0+YmFzZS5pbXBvcnRfYXR0YWNoLAogCQkJCSAgICAgICBETUFfQklE
SVJFQ1RJT05BTCk7CiAJaWYgKElTX0VSUihwYWdlcykpCkBAIC0yNDEsNyArMjU5LDggQEAgc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICppOTE1X2dlbV9wcmltZV9pbXBvcnQoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwKIAlpZiAoZG1hX2J1Zi0+b3BzID09ICZpOTE1X2RtYWJ1Zl9vcHMpIHsKIAkJb2Jq
ID0gZG1hX2J1Zl90b19vYmooZG1hX2J1Zik7CiAJCS8qIGlzIGl0IGZyb20gb3VyIGRldmljZT8g
Ki8KLQkJaWYgKG9iai0+YmFzZS5kZXYgPT0gZGV2KSB7CisJCWlmIChvYmotPmJhc2UuZGV2ID09
IGRldiAmJgorCQkgICAgIUk5MTVfU0VMRlRFU1RfT05MWShmb3JjZV9kaWZmZXJlbnRfZGV2aWNl
cykpIHsKIAkJCS8qCiAJCQkgKiBJbXBvcnRpbmcgZG1hYnVmIGV4cG9ydGVkIGZyb20gb3V0IG93
biBnZW0gaW5jcmVhc2VzCiAJCQkgKiByZWZjb3VudCBvbiBnZW0gaXRzZWxmIGluc3RlYWQgb2Yg
Zl9jb3VudCBvZiBkbWFidWYuCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9pOTE1X2dlbV9kbWFidWYuYwppbmRleCBkZDc0YmMwOWVjODhkLi40NDUxYmJiNDkx
N2U0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX2RtYWJ1Zi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fZG1hYnVmLmMKQEAgLTM1LDcgKzM1LDcgQEAgc3RhdGljIGludCBpZ3RfZG1hYnVmX2V4
cG9ydCh2b2lkICphcmcpCiBzdGF0aWMgaW50IGlndF9kbWFidWZfaW1wb3J0X3NlbGYodm9pZCAq
YXJnKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJnOwotCXN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
aiwgKmltcG9ydF9vYmo7CiAJc3RydWN0IGRybV9nZW1fb2JqZWN0ICppbXBvcnQ7CiAJc3RydWN0
IGRtYV9idWYgKmRtYWJ1ZjsKIAlpbnQgZXJyOwpAQCAtNjUsMTQgKzY1LDExMiBAQCBzdGF0aWMg
aW50IGlndF9kbWFidWZfaW1wb3J0X3NlbGYodm9pZCAqYXJnKQogCQllcnIgPSAtRUlOVkFMOwog
CQlnb3RvIG91dF9pbXBvcnQ7CiAJfQorCWltcG9ydF9vYmogPSB0b19pbnRlbF9ibyhpbXBvcnQp
OworCisJaTkxNV9nZW1fb2JqZWN0X2xvY2soaW1wb3J0X29iaiwgTlVMTCk7CisJZXJyID0gX19f
X2k5MTVfZ2VtX29iamVjdF9nZXRfcGFnZXMoaW1wb3J0X29iaik7CisJaTkxNV9nZW1fb2JqZWN0
X3VubG9jayhpbXBvcnRfb2JqKTsKKwlpZiAoZXJyKSB7CisJCXByX2VycigiU2FtZSBvYmplY3Qg
ZG1hLWJ1ZiBnZXRfcGFnZXMgZmFpbGVkIVxuIik7CisJCWdvdG8gb3V0X2ltcG9ydDsKKwl9CiAK
IAllcnIgPSAwOwogb3V0X2ltcG9ydDoKLQlpOTE1X2dlbV9vYmplY3RfcHV0KHRvX2ludGVsX2Jv
KGltcG9ydCkpOworCWk5MTVfZ2VtX29iamVjdF9wdXQoaW1wb3J0X29iaik7CitvdXRfZG1hYnVm
OgorCWRtYV9idWZfcHV0KGRtYWJ1Zik7CitvdXQ6CisJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmop
OworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbnQgaWd0X2RtYWJ1Zl9pbXBvcnRfc2FtZV9k
cml2ZXIodm9pZCAqYXJnKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJn
OworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosICppbXBvcnRfb2JqOworCXN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqaW1wb3J0OworCXN0cnVjdCBkbWFfYnVmICpkbWFidWY7CisJc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqaW1wb3J0X2F0dGFjaDsKKwlzdHJ1Y3Qgc2dfdGFibGUg
KnN0OworCWxvbmcgdGltZW91dDsKKwlpbnQgZXJyOworCisJZm9yY2VfZGlmZmVyZW50X2Rldmlj
ZXMgPSB0cnVlOworCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oaTkxNSwgUEFH
RV9TSVpFKTsKKwlpZiAoSVNfRVJSKG9iaikpCisJCWdvdG8gb3V0X3JldDsKKworCWRtYWJ1ZiA9
IGk5MTVfZ2VtX3ByaW1lX2V4cG9ydCgmb2JqLT5iYXNlLCAwKTsKKwlpZiAoSVNfRVJSKGRtYWJ1
ZikpIHsKKwkJcHJfZXJyKCJpOTE1X2dlbV9wcmltZV9leHBvcnQgZmFpbGVkIHdpdGggZXJyPSVk
XG4iLAorCQkgICAgICAgKGludClQVFJfRVJSKGRtYWJ1ZikpOworCQllcnIgPSBQVFJfRVJSKGRt
YWJ1Zik7CisJCWdvdG8gb3V0OworCX0KKworCWltcG9ydCA9IGk5MTVfZ2VtX3ByaW1lX2ltcG9y
dCgmaTkxNS0+ZHJtLCBkbWFidWYpOworCWlmIChJU19FUlIoaW1wb3J0KSkgeworCQlwcl9lcnIo
Imk5MTVfZ2VtX3ByaW1lX2ltcG9ydCBmYWlsZWQgd2l0aCBlcnI9JWRcbiIsCisJCSAgICAgICAo
aW50KVBUUl9FUlIoaW1wb3J0KSk7CisJCWVyciA9IFBUUl9FUlIoaW1wb3J0KTsKKwkJZ290byBv
dXRfZG1hYnVmOworCX0KKworCWlmIChpbXBvcnQgPT0gJm9iai0+YmFzZSkgeworCQlwcl9lcnIo
Imk5MTVfZ2VtX3ByaW1lX2ltcG9ydCByZXVzZWQgZ2VtIG9iamVjdCFcbiIpOworCQllcnIgPSAt
RUlOVkFMOworCQlnb3RvIG91dF9pbXBvcnQ7CisJfQorCisJaW1wb3J0X29iaiA9IHRvX2ludGVs
X2JvKGltcG9ydCk7CisKKwlpOTE1X2dlbV9vYmplY3RfbG9jayhpbXBvcnRfb2JqLCBOVUxMKTsK
KwllcnIgPSBfX19faTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlcyhpbXBvcnRfb2JqKTsKKwlpZiAo
ZXJyKSB7CisJCXByX2VycigiRGlmZmVyZW50IG9iamVjdHMgZG1hLWJ1ZiBnZXRfcGFnZXMgZmFp
bGVkIVxuIik7CisJCWk5MTVfZ2VtX29iamVjdF91bmxvY2soaW1wb3J0X29iaik7CisJCWdvdG8g
b3V0X2ltcG9ydDsKKwl9CisKKwkvKgorCSAqIElmIHRoZSBleHBvcnRlZCBvYmplY3QgaXMgbm90
IGluIHN5c3RlbSBtZW1vcnksIHNvbWV0aGluZworCSAqIHdlaXJkIGlzIGdvaW5nIG9uLiBUT0RP
OiBXaGVuIHAycCBpcyBzdXBwb3J0ZWQsIHRoaXMgaXMgbm8KKwkgKiBsb25nZXIgY29uc2lkZXJl
ZCB3ZWlyZC4KKwkgKi8KKwlpZiAob2JqLT5tbS5yZWdpb24gIT0gaTkxNS0+bW0ucmVnaW9uc1tJ
TlRFTF9SRUdJT05fU01FTV0pIHsKKwkJcHJfZXJyKCJFeHBvcnRlZCBkbWEtYnVmIGlzIG5vdCBp
biBzeXN0ZW0gbWVtb3J5XG4iKTsKKwkJZXJyID0gLUVJTlZBTDsKKwl9CisKKwlpOTE1X2dlbV9v
YmplY3RfdW5sb2NrKGltcG9ydF9vYmopOworCisJLyogTm93IHRyeSBhIGZha2UgYW4gaW1wb3J0
ZXIgKi8KKwlpbXBvcnRfYXR0YWNoID0gZG1hX2J1Zl9hdHRhY2goZG1hYnVmLCBvYmotPmJhc2Uu
ZGV2LT5kZXYpOworCWlmIChJU19FUlIoaW1wb3J0X2F0dGFjaCkpCisJCWdvdG8gb3V0X2ltcG9y
dDsKKworCXN0ID0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudChpbXBvcnRfYXR0YWNoLCBETUFfQklE
SVJFQ1RJT05BTCk7CisJaWYgKElTX0VSUihzdCkpCisJCWdvdG8gb3V0X2RldGFjaDsKKworCXRp
bWVvdXQgPSBkbWFfcmVzdl93YWl0X3RpbWVvdXQoZG1hYnVmLT5yZXN2LCBmYWxzZSwgdHJ1ZSwg
NSAqIEhaKTsKKwlpZiAoIXRpbWVvdXQpIHsKKwkJcHJfZXJyKCJkbWFidWYgd2FpdCBmb3IgZXhj
bHVzaXZlIGZlbmNlIHRpbWVkIG91dC5cbiIpOworCQl0aW1lb3V0ID0gLUVUSU1FOworCX0KKwll
cnIgPSB0aW1lb3V0ID4gMCA/IDAgOiB0aW1lb3V0OworCWRtYV9idWZfdW5tYXBfYXR0YWNobWVu
dChpbXBvcnRfYXR0YWNoLCBzdCwgRE1BX0JJRElSRUNUSU9OQUwpOworb3V0X2RldGFjaDoKKwlk
bWFfYnVmX2RldGFjaChkbWFidWYsIGltcG9ydF9hdHRhY2gpOworb3V0X2ltcG9ydDoKKwlpOTE1
X2dlbV9vYmplY3RfcHV0KGltcG9ydF9vYmopOwogb3V0X2RtYWJ1ZjoKIAlkbWFfYnVmX3B1dChk
bWFidWYpOwogb3V0OgogCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKK291dF9yZXQ6CisJZm9y
Y2VfZGlmZmVyZW50X2RldmljZXMgPSBmYWxzZTsKIAlyZXR1cm4gZXJyOwogfQogCkBAIC0yODYs
NiArMzg0LDcgQEAgaW50IGk5MTVfZ2VtX2RtYWJ1Zl9saXZlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfc3VidGVz
dCB0ZXN0c1tdID0gewogCQlTVUJURVNUKGlndF9kbWFidWZfZXhwb3J0KSwKKwkJU1VCVEVTVChp
Z3RfZG1hYnVmX2ltcG9ydF9zYW1lX2RyaXZlciksCiAJfTsKIAogCXJldHVybiBpOTE1X3N1YnRl
c3RzKHRlc3RzLCBpOTE1KTsKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
