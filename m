Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F05E17AF77
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 21:12:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C86B66EC18;
	Thu,  5 Mar 2020 20:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com
 [IPv6:2607:f8b0:4864:20::c41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 144CD6EC16
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 20:12:42 +0000 (UTC)
Received: by mail-yw1-xc41.google.com with SMTP id p69so6868237ywh.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Mar 2020 12:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YyfWwdgBnW/FW8BbaaGwDDLx+nnNecS1HvcyXNNLD2U=;
 b=Q0tOol2NLwb5ysUL/jKRX8G4ypf6MAH6IfIpJDI5ZVDnUgcFFqtscnbJYUOpGfHsK3
 g8m9lcx/wA60V/nyXnSfyc3pU6T5NoyuFo1A6q0tIJTId83SxnZIdbiQaOW+4Bt/qa2h
 mTjb1C7B0pwOjPcEn53v+DH5LF4kDLOYyRl4H8SxIzwv3tKWjJoamgv0+q0YcdYXqP3X
 hQ7IzpDWNXLFaNX3JfYrHbL0BL4S+OLBFu/oV3+aadkJylI/KfZ1iHII2Me7PdtKQiEE
 LPgRi+/f2B+8hqJjVw3BPQe9lNQfRRQBAViBj4sLVjg7viphDHOEF9w3JKvdwMjc1yLx
 ZVYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YyfWwdgBnW/FW8BbaaGwDDLx+nnNecS1HvcyXNNLD2U=;
 b=JX347E6fL39k2phcoJ+C6H7LkYZjaUyMHpI1IEVR1gwWkYQzMm5qhFASeneU2wC16m
 eQyewl/pjnUpgVnM5BddhnQvx8u/VHyFubrZfLE2rvkg4VjUQaCv4yWqc0wIkRRyKJ1L
 5npxSFGQg5dyHa3EU/y54TrAtL4n72Hxm5+MJmKl2foysuikmB2ksCUt93ha3w4LJD+N
 G7rDX/USujQxfNW0GWzaPn7VQIAUxGPkoWjVZDyzxHaK/Q74vJet9dyOfa+VxRylMQbX
 m43ojvlK6NOSJR2hqjShgvkvqXlHm876yp56wgN9qk6Eei5cBgtSRzjusdHzfIqp5q1y
 9w3g==
X-Gm-Message-State: ANhLgQ2tMqvqK9X8rXpFX5nU4tiaqW34oz+u+3tlLZQqxs9dSP8HWzRx
 l2tml75pMHiBTH1MlMZRG1YmVw==
X-Google-Smtp-Source: ADFU+vvBwBOjKwxOSKIgRMyWwJZjfyUK4Cnh/+TOryCihgxjlrlMYSezkOXjcz8j4O+6FQaAGBIyDw==
X-Received: by 2002:a25:6c0a:: with SMTP id h10mr9011061ybc.47.1583439161283; 
 Thu, 05 Mar 2020 12:12:41 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id v189sm3986794ywa.28.2020.03.05.12.12.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 12:12:40 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  5 Mar 2020 15:12:23 -0500
Message-Id: <20200305201236.152307-4-sean@poorly.run>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
In-Reply-To: <20200305201236.152307-1-sean@poorly.run>
References: <20200305201236.152307-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 03/16] drm/i915: WARN if HDCP signalling is
 enabled upon disable
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
Cc: daniel.vetter@ffwll.ch, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+CgpIRENQIHNpZ25hbGxpbmcg
c2hvdWxkIG5vdCBiZSBsZWZ0IG9uLCBXQVJOIGlmIGl0IGlzCgpDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+ClJldmlld2VkLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0u
Y0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0u
b3JnPgpMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQv
MjAxOTEyMTIxOTAyMzAuMTg4NTA1LTQtc2VhbkBwb29ybHkucnVuICN2MgpMaW5rOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAyMDAxMTcxOTMxMDMuMTU2
ODIxLTQtc2VhbkBwb29ybHkucnVuICN2MwpMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAyMDAyMTgyMjAyNDIuMTA3MjY1LTQtc2VhbkBwb29ybHku
cnVuICN2NAoKQ2hhbmdlcyBpbiB2MjoKLUFkZGVkIHRvIHRoZSBzZXQgaW4gbGlldSBvZiBqdXN0
IGNsZWFyaW5nIHRoZSBiaXQKQ2hhbmdlcyBpbiB2MzoKLU5vbmUKQ2hhbmdlcyBpbiB2NDoKLU5v
bmUKQ2hhbmdlcyBpbiB2NToKLUNoYW5nZSBXQVJOX09OIHRvIGRybV9XQVJOX09OCi0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDIgKysKIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYwppbmRleCA3M2QwZjQ2NDhjMDZhLi40YWZmNTcxN2U5NDI4IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTE1OTMsNiArMTU5Myw4IEBAIHZvaWQgaW50
ZWxfZGRpX2Rpc2FibGVfdHJhbnNjb2Rlcl9mdW5jKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlCiAJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgVFJBTlNfRERJ
X0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSk7CiAJdmFsICY9IH5UUkFOU19ERElfRlVOQ19FTkFC
TEU7CiAKKwlkcm1fV0FSTl9PTihjcnRjLT5iYXNlLmRldiwgdmFsICYgVFJBTlNfRERJX0hEQ1Bf
U0lHTkFMTElORyk7CisKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewogCQlpZiAo
IWludGVsX2RwX21zdF9pc19tYXN0ZXJfdHJhbnMoY3J0Y19zdGF0ZSkpIHsKIAkJCXZhbCAmPSB+
KFRHTF9UUkFOU19ERElfUE9SVF9NQVNLIHwKLS0gClNlYW4gUGF1bCwgU29mdHdhcmUgRW5naW5l
ZXIsIEdvb2dsZSAvIENocm9taXVtIE9TCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
