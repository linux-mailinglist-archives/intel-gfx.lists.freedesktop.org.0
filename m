Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F8318F78B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:51:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010E16E243;
	Mon, 23 Mar 2020 14:50:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02AB96E207
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:50 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id m3so15135231wmi.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1JCoenPslol75s1mwKYdO0GZN9e4Jdsynr67HpA/NhM=;
 b=M4Twmz44U44lVNMnwYgqP2gQ0TGx5tYk+qytMLBkFzUEICdBVGBZbGpBSC2XNsQrZN
 WfPn3FqbxyUt3+ZGV0kc+gN0a9bYCCSrCdRbMZSnCB0J2OmP2P29t75A9TIW46fYN2qG
 dEjH0nXCrABKIkP+3CinCbvSvEd5i0cuB+K3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1JCoenPslol75s1mwKYdO0GZN9e4Jdsynr67HpA/NhM=;
 b=JJtwD0zcw21vIfdpTH5npLW/A/Gs3kdgfgTwioNVV1rRkQrCAr2eehIcJo4iO0MpIu
 h0LfCPcSbRpOSxQ/j70VUtvqZmsva0S5HJfqS/e75LijnzvD5Bq2rbz7e+8gzdpoiBqs
 jDyV4HE34b4CELAOlU9ef3ewLTZO4N7Q+nN2DSbwX1IEFzgCFX2nAn+z/kEjqrqsax1t
 U0Ogbesdx6ytWzSDs+Yez4qE2V0NeZRznF8KqIjI7ZGmjSX1ZJRLzuiC538MBftGOsYo
 W0kHGHRhL2N+BMymNscKGz6l9MvXULE4zA255Vv4vxfdSgVnKWIJgvTmX5WxT4K6aZ7T
 CO1A==
X-Gm-Message-State: ANhLgQ3QvxUE24+bGdX0eS2y3LjLxyV7godcSC4Y02zgZN1B+R9UNucF
 zoVXSIuWd0J4dnojQq+NK9WaaQ==
X-Google-Smtp-Source: ADFU+vt6UD0sIJ4p1KGfRPTnfOQAVI2yGhyIDGEb0Jkzi+wNUZhE6eYX0CXu28fbIM4NDQ77SQzQpg==
X-Received: by 2002:a7b:c8cd:: with SMTP id f13mr14363531wml.138.1584975049565; 
 Mon, 23 Mar 2020 07:50:49 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:48 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:36 +0100
Message-Id: <20200323144950.3018436-38-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
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
bV9tb2RlX2NvbmZpZ19pbml0KCkgZm9yIG1vcmUgY2xhcml0eSAoU2FtLCBUaG9tYXMpCgpBY2tl
ZC1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpDYzogU2FtIFJhdm5ib3JnIDxz
YW1AcmF2bmJvcmcub3JnPgpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2Uu
ZGU+CkNjOiBGcmFuY2VzY28gTGF2cmEgPGZyYW5jZXNjb2xhdnJhLmZsQGdtYWlsLmNvbT4KQ2M6
IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KU2ln
bmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBT
YW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVp
a29Ac250ZWNoLmRlPgpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNj
OiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyB8IDE0ICsrKysrLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCmluZGV4IDIwZWNiMTUwOGEyMi4uMGYzZWIz
OTJmZTM5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMK
QEAgLTEzNSwxNCArMTM1LDE2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHJtX2JpbmQoc3RydWN0
IGRldmljZSAqZGV2KQogCWlmIChyZXQpCiAJCWdvdG8gZXJyX2ZyZWU7CiAKLQlkcm1fbW9kZV9j
b25maWdfaW5pdChkcm1fZGV2KTsKKwlyZXQgPSBkcm1tX21vZGVfY29uZmlnX2luaXQoZHJtX2Rl
dik7CisJaWYgKHJldCkKKwkJZ290byBlcnJfaW9tbXVfY2xlYW51cDsKIAogCXJvY2tjaGlwX2Ry
bV9tb2RlX2NvbmZpZ19pbml0KGRybV9kZXYpOwogCiAJLyogVHJ5IHRvIGJpbmQgYWxsIHN1YiBk
cml2ZXJzLiAqLwogCXJldCA9IGNvbXBvbmVudF9iaW5kX2FsbChkZXYsIGRybV9kZXYpOwogCWlm
IChyZXQpCi0JCWdvdG8gZXJyX21vZGVfY29uZmlnX2NsZWFudXA7CisJCWdvdG8gZXJyX2lvbW11
X2NsZWFudXA7CiAKIAlyZXQgPSBkcm1fdmJsYW5rX2luaXQoZHJtX2RldiwgZHJtX2Rldi0+bW9k
ZV9jb25maWcubnVtX2NydGMpOwogCWlmIChyZXQpCkBAIC0xNzMsMTIgKzE3NSw5IEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfZHJtX2JpbmQoc3RydWN0IGRldmljZSAqZGV2KQogCXJvY2tjaGlwX2Ry
bV9mYmRldl9maW5pKGRybV9kZXYpOwogZXJyX3VuYmluZF9hbGw6CiAJY29tcG9uZW50X3VuYmlu
ZF9hbGwoZGV2LCBkcm1fZGV2KTsKLWVycl9tb2RlX2NvbmZpZ19jbGVhbnVwOgotCWRybV9tb2Rl
X2NvbmZpZ19jbGVhbnVwKGRybV9kZXYpOworZXJyX2lvbW11X2NsZWFudXA6CiAJcm9ja2NoaXBf
aW9tbXVfY2xlYW51cChkcm1fZGV2KTsKIGVycl9mcmVlOgotCWRybV9kZXYtPmRldl9wcml2YXRl
ID0gTlVMTDsKLQlkZXZfc2V0X2RydmRhdGEoZGV2LCBOVUxMKTsKIAlkcm1fZGV2X3B1dChkcm1f
ZGV2KTsKIAlyZXR1cm4gcmV0OwogfQpAQCAtMTk0LDExICsxOTMsOCBAQCBzdGF0aWMgdm9pZCBy
b2NrY2hpcF9kcm1fdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikKIAogCWRybV9hdG9taWNfaGVs
cGVyX3NodXRkb3duKGRybV9kZXYpOwogCWNvbXBvbmVudF91bmJpbmRfYWxsKGRldiwgZHJtX2Rl
dik7Ci0JZHJtX21vZGVfY29uZmlnX2NsZWFudXAoZHJtX2Rldik7CiAJcm9ja2NoaXBfaW9tbXVf
Y2xlYW51cChkcm1fZGV2KTsKIAotCWRybV9kZXYtPmRldl9wcml2YXRlID0gTlVMTDsKLQlkZXZf
c2V0X2RydmRhdGEoZGV2LCBOVUxMKTsKIAlkcm1fZGV2X3B1dChkcm1fZGV2KTsKIH0KIAotLSAK
Mi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
