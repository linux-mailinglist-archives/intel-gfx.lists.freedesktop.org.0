Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1091176739
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 23:28:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 872226E8C8;
	Mon,  2 Mar 2020 22:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3EBA6E8B3
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 22:27:27 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id n7so1807500wrt.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 14:27:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c6tQ9MfFxj9jmviVv9z34bxHB/dMfgbPWkMep8z10wQ=;
 b=eWpy+GExBDRswlCzQY7yz9eJf/6doLzIO5unWFveEZL6bVl2ufR9Hb3h2iH+2l/oBz
 IhoMEvy+q0Fi2INP+gej+Byaupa5PJBIHxBvfeJ26p7uMs3NZd7SNteI1O8mE+CSy5Is
 RfxvJ8QMdhmYkvnKScOjpffWDGbB+r27UuxiY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c6tQ9MfFxj9jmviVv9z34bxHB/dMfgbPWkMep8z10wQ=;
 b=slkWpSpXYDGHkFsU83E3szqTAz1o8HqvYmdGyBUYk21jzjiqMOQb9t0iYTlg9QfI+E
 JwRRt1DFbpPOA8WBmjhGwYzw5mZ0q2nNSls7AOj/rRxmCbuuae9k5QGVmnYrXRO8Fzi6
 SMkTGsikQaFV15MRQa9IsFqCxsvo0jr4YZucfEUjJKpIaWiFtLYE3XzVxZv3HRj6yH+D
 /nNokjxUeBuupA/dojPoqiBQwx+gD5vNAfGL7sgqMN2fz1Zbi4dKl/HBYH19AxvSlp4B
 EY8N80MYk1dFlv2Rs4lFzknwvLFQjwWn+v+VxlYUxXJZnldst2+ChnGpEuYmarizNXYe
 jLsA==
X-Gm-Message-State: ANhLgQ18oS85sBvZLfOiKF2WQpLwUl0dsVygXTEPXfNQfjJRsfmStXho
 Q+fgpobPUKxvbtEdVpTomTFhxg==
X-Google-Smtp-Source: ADFU+vupqTzURou/OSClNH9R3NF9co6OO3jTTZgj3hkys1nhGZbZruexIMOoQ0MvxWicN02s2Rwrsg==
X-Received: by 2002:a5d:4384:: with SMTP id i4mr1598274wrq.396.1583188046376; 
 Mon, 02 Mar 2020 14:27:26 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.27.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:27:25 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  2 Mar 2020 23:26:17 +0100
Message-Id: <20200302222631.3861340-38-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 37/51] drm/rockchip: Drop explicit
 drm_mode_config_cleanup call
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Francesco Lavra <francescolavra.fl@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyAoYWxtb3N0LCB0aGVyZSdzIHNvbWUgaW9tbXUgc3R1ZmYgd2l0aG91dCBzaWduaWZpY2Fu
Y2UpIHJpZ2h0CmFib3ZlIHRoZSBkcm1fZGV2X3B1dCgpLgoKVGhpcyBpcyBtYWRlIHBvc3NpYmxl
IGJ5IGEgcHJlY2VlZGluZyBwYXRjaCB3aGljaCBhZGRlZCBhIGRybW1fCmNsZWFudXAgYWN0aW9u
IHRvIGRybV9tb2RlX2NvbmZpZ19pbml0KCksIGhlbmNlIGFsbCB3ZSBuZWVkIHRvIGRvIHRvCmVu
c3VyZSB0aGF0IGRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKCkgaXMgcnVuIG9uIGZpbmFsIGRybV9k
ZXZpY2UKY2xlYW51cCBpcyBjaGVjayB0aGUgbmV3IGVycm9yIGNvZGUgZm9yIF9pbml0KCkuCgpB
c2lkZTogQW5vdGhlciBkcml2ZXIgd2l0aCBhIGJpdCBtdWNoIGRldm1fa3phbGxvYywgd2hpY2gg
c2hvdWxkCnByb2JhYmx5IHVzZSBkcm1tX2t6YWxsb2MgaW5zdGVhZCAuLi4KCnYyOiBFeHBsYWlu
IHdoeSB0aGlzIGNsZWFudXAgaXMgcG9zc2libGUgKExhdXJlbnQpLgoKdjM6IEp1bXAgb3V0IGF0
IHRoZSByaWdodCBsYWJlbCAoRnJhbmNlc2NvKQoKdjQ6IFRyeSBhZ2Fpbiwga2J1aWxkIGNhdWdo
dCB0aGF0IEkgZGlkbid0IGJ1aWxkIHRlc3QgdGhpcyBwcm9wZXJseQouLi4KCnY1OiBVc2UgZHJt
bV9tb2RlX2NvbmZpZ19pbml0KCkgZm9yIG1vcmUgY2xhcml0eSAoU2FtLCBUaG9tYXMpCgpDYzog
U2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6
aW1tZXJtYW5uQHN1c2UuZGU+CkNjOiBGcmFuY2VzY28gTGF2cmEgPGZyYW5jZXNjb2xhdnJhLmZs
QGdtYWlsLmNvbT4KQ2M6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNv
bmJvYXJkLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBp
bnRlbC5jb20+CkNjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgpDYzogIkhlaWtv
IFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQog
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyB8IDE0ICsrKysrLS0t
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCmluZGV4IDIwZWNi
MTUwOGEyMi4uMGYzZWIzOTJmZTM5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fZHJ2LmMKQEAgLTEzNSwxNCArMTM1LDE2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBf
ZHJtX2JpbmQoc3RydWN0IGRldmljZSAqZGV2KQogCWlmIChyZXQpCiAJCWdvdG8gZXJyX2ZyZWU7
CiAKLQlkcm1fbW9kZV9jb25maWdfaW5pdChkcm1fZGV2KTsKKwlyZXQgPSBkcm1tX21vZGVfY29u
ZmlnX2luaXQoZHJtX2Rldik7CisJaWYgKHJldCkKKwkJZ290byBlcnJfaW9tbXVfY2xlYW51cDsK
IAogCXJvY2tjaGlwX2RybV9tb2RlX2NvbmZpZ19pbml0KGRybV9kZXYpOwogCiAJLyogVHJ5IHRv
IGJpbmQgYWxsIHN1YiBkcml2ZXJzLiAqLwogCXJldCA9IGNvbXBvbmVudF9iaW5kX2FsbChkZXYs
IGRybV9kZXYpOwogCWlmIChyZXQpCi0JCWdvdG8gZXJyX21vZGVfY29uZmlnX2NsZWFudXA7CisJ
CWdvdG8gZXJyX2lvbW11X2NsZWFudXA7CiAKIAlyZXQgPSBkcm1fdmJsYW5rX2luaXQoZHJtX2Rl
diwgZHJtX2Rldi0+bW9kZV9jb25maWcubnVtX2NydGMpOwogCWlmIChyZXQpCkBAIC0xNzMsMTIg
KzE3NSw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHJtX2JpbmQoc3RydWN0IGRldmljZSAqZGV2
KQogCXJvY2tjaGlwX2RybV9mYmRldl9maW5pKGRybV9kZXYpOwogZXJyX3VuYmluZF9hbGw6CiAJ
Y29tcG9uZW50X3VuYmluZF9hbGwoZGV2LCBkcm1fZGV2KTsKLWVycl9tb2RlX2NvbmZpZ19jbGVh
bnVwOgotCWRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKGRybV9kZXYpOworZXJyX2lvbW11X2NsZWFu
dXA6CiAJcm9ja2NoaXBfaW9tbXVfY2xlYW51cChkcm1fZGV2KTsKIGVycl9mcmVlOgotCWRybV9k
ZXYtPmRldl9wcml2YXRlID0gTlVMTDsKLQlkZXZfc2V0X2RydmRhdGEoZGV2LCBOVUxMKTsKIAlk
cm1fZGV2X3B1dChkcm1fZGV2KTsKIAlyZXR1cm4gcmV0OwogfQpAQCAtMTk0LDExICsxOTMsOCBA
QCBzdGF0aWMgdm9pZCByb2NrY2hpcF9kcm1fdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikKIAog
CWRybV9hdG9taWNfaGVscGVyX3NodXRkb3duKGRybV9kZXYpOwogCWNvbXBvbmVudF91bmJpbmRf
YWxsKGRldiwgZHJtX2Rldik7Ci0JZHJtX21vZGVfY29uZmlnX2NsZWFudXAoZHJtX2Rldik7CiAJ
cm9ja2NoaXBfaW9tbXVfY2xlYW51cChkcm1fZGV2KTsKIAotCWRybV9kZXYtPmRldl9wcml2YXRl
ID0gTlVMTDsKLQlkZXZfc2V0X2RydmRhdGEoZGV2LCBOVUxMKTsKIAlkcm1fZGV2X3B1dChkcm1f
ZGV2KTsKIH0KIAotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
