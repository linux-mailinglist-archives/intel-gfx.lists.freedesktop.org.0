Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD92F1726C8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:17:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 338506ED1D;
	Thu, 27 Feb 2020 18:16:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D09F6ED04
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:16:29 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id q9so402568wmj.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q7TJHDqj8/6sjzRbpshntBJrPdaYH+7eV+1SBaB2f20=;
 b=i8v7+aLrC92CsQSMXJPKOTbK0B3BoAibdT5a4uhdZj0kxmrmmyPwZF4QwW7Jh/7kpI
 wXs0FlB/IsfStm4anE78rFz3LK/qqkORwSUN1Lc2ynwic4KPLek0E79PCJoAh1CDFzmp
 L48IegsfAmiG4z/wsltrZUPxxas7dGfASC6es=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q7TJHDqj8/6sjzRbpshntBJrPdaYH+7eV+1SBaB2f20=;
 b=NkvrzzvNEfcXi8zvj+bi4y+N4+alPtF6KLZxigQBvKdUGNiNu0qmNS0gjZ/Q6TwOjT
 v2mdev6wLvX574UqWgS75N265WdRuYOjTflvdUFAICUgIyJV70jCkn/k90M6SvgUG0Qm
 Kz7D3/TudXHIe14RweDp0gWoFA77M25EX8gcd2kBq+n2O+YGRg9uDwzrzP840DCHa8IP
 QNwDvTOKKhhvcUn3uu9SokNXHlI2U9Q5s/XzBeHSxaFCUg2s3aPPJDoaBbTOSOGSRtFF
 GHZggIajDeSHBB3JqUrkMx3uWj8iv+jd1wI8eDG2i3sdwAJWlbcXMaIGxG7gvzhV6Fue
 z56g==
X-Gm-Message-State: APjAAAVvsVERE77tMObRj/sMx66QCAxp//+C01iFwd+2Wx8adDKfra1K
 FRWGb5wFgAZBKzrb72U4A7iZsw==
X-Google-Smtp-Source: APXvYqw5Lug4TaB5woiW4R4DBqkFD5ZYx0Vz/K7K9pF3q+gD4sQJo6ua9FxuobtZBr56mLkbHBjUpg==
X-Received: by 2002:a1c:4341:: with SMTP id q62mr12341wma.107.1582827388084;
 Thu, 27 Feb 2020 10:16:28 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.16.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:16:26 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:15:17 +0100
Message-Id: <20200227181522.2711142-47-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 46/51] drm/repaper: Drop explicit
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 m.felsch@pengutronix.de,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsb3dzIHVzIHRvIGRyb3AgdGhlIGRybV9kcml2ZXIucmVsZWFzZSBjYWxsYmFjay4KClRoaXMg
aXMgbWFkZSBwb3NzaWJsZSBieSBhIHByZWNlZWRpbmcgcGF0Y2ggd2hpY2ggYWRkZWQgYSBkcm1t
XwpjbGVhbnVwIGFjdGlvbiB0byBkcm1fbW9kZV9jb25maWdfaW5pdCgpLCBoZW5jZSBhbGwgd2Ug
bmVlZCB0byBkbyB0bwplbnN1cmUgdGhhdCBkcm1fbW9kZV9jb25maWdfY2xlYW51cCgpIGlzIHJ1
biBvbiBmaW5hbCBkcm1fZGV2aWNlCmNsZWFudXAgaXMgY2hlY2sgdGhlIG5ldyBlcnJvciBjb2Rl
IGZvciBfaW5pdCgpLgoKdjI6IEV4cGxhaW4gd2h5IHRoaXMgY2xlYW51cCBpcyBwb3NzaWJsZSAo
TGF1cmVudCkuCgpDYzogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29u
Ym9hcmQuY29tPgpSZXZpZXdlZC1ieTogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5v
cmc+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
PgpDYzogIk5vcmFsZiBUcsO4bm5lcyIgPG5vcmFsZkB0cm9ubmVzLm9yZz4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vdGlueS9yZXBhcGVyLmMgfCA4IC0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGlueS9yZXBhcGVyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vdGlueS9yZXBhcGVyLmMKaW5kZXggNDc0MWZmNjcwZWM5Li4yZjcw
ZmIxYmUyMDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90aW55L3JlcGFwZXIuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vdGlueS9yZXBhcGVyLmMKQEAgLTkwOSwxMyArOTA5LDYgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBkcm1fbW9kZV9jb25maWdfZnVuY3MgcmVwYXBlcl9tb2RlX2NvbmZp
Z19mdW5jcyA9IHsKIAkuYXRvbWljX2NvbW1pdCA9IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdCwK
IH07CiAKLXN0YXRpYyB2b2lkIHJlcGFwZXJfcmVsZWFzZShzdHJ1Y3QgZHJtX2RldmljZSAqZHJt
KQotewotCURSTV9ERUJVR19EUklWRVIoIlxuIik7Ci0KLQlkcm1fbW9kZV9jb25maWdfY2xlYW51
cChkcm0pOwotfQotCiBzdGF0aWMgY29uc3QgdWludDMyX3QgcmVwYXBlcl9mb3JtYXRzW10gPSB7
CiAJRFJNX0ZPUk1BVF9YUkdCODg4OCwKIH07CkBAIC05NTMsNyArOTQ2LDYgQEAgREVGSU5FX0RS
TV9HRU1fQ01BX0ZPUFMocmVwYXBlcl9mb3BzKTsKIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBy
ZXBhcGVyX2RyaXZlciA9IHsKIAkuZHJpdmVyX2ZlYXR1cmVzCT0gRFJJVkVSX0dFTSB8IERSSVZF
Ul9NT0RFU0VUIHwgRFJJVkVSX0FUT01JQywKIAkuZm9wcwkJCT0gJnJlcGFwZXJfZm9wcywKLQku
cmVsZWFzZQkJPSByZXBhcGVyX3JlbGVhc2UsCiAJRFJNX0dFTV9DTUFfVk1BUF9EUklWRVJfT1BT
LAogCS5uYW1lCQkJPSAicmVwYXBlciIsCiAJLmRlc2MJCQk9ICJQZXJ2YXNpdmUgRGlzcGxheXMg
UmVQYXBlciBlLWluayBwYW5lbHMiLAotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
