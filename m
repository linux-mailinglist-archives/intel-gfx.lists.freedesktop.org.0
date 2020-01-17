Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CC71411B3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 20:31:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7F136F8D6;
	Fri, 17 Jan 2020 19:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDEAF6F8D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 19:31:09 +0000 (UTC)
Received: by mail-yw1-xc44.google.com with SMTP id l14so14845298ywj.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 11:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vw0YZIzYilg4if3Ue4FJsV410z1mun8IqIxc6oGE2sI=;
 b=YknXv6CmaGJlLUkmJKe5oTsWYP5Id1i6aH7rpUWrV84LPkyuAfPKQiBFtNXGonUgzP
 NWDEdpFo1aBlBwrLIhwOAU7HBD7TwlQS86/ose80wQcGLBK7tjmzjRtnOKUIwZ3ebuwU
 coIxHDzV9MkrzdppMc1Uq1QTfO/3kNeOl14r9cKxrUbNRzTSM+69aMnaNo5kkJU9HUnO
 NP/+dsm7Pw3m94FubNMnuvWcLYleRgFB5awSmbp2S572iNiK83+eQjnxsrN7t0Y6mtjY
 7L/+YMsbJKbLZmzSo80GuNu2B3+HgWDa1zwHcwpvfUU7Jr7a7lYapwyXyxKF0eewT3pL
 C48g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vw0YZIzYilg4if3Ue4FJsV410z1mun8IqIxc6oGE2sI=;
 b=eaHLY+sBxrr9JPKjavfgc+DXl9E8LuJx4rP5FHMAZTh1Gvh3fvqK5JqgvIrUp77fdV
 2dHNtfXymhFbPFpD/dGRAu47HSxpFby7KPvTbth7BycfF/aprpy6S0Rnwv2qYV2GaBWv
 phC1fsv7ejhBBLMhNjca4y3hw0bhg1FfMFJe4Ubemp4aJNrc/dizz9lmSqnNAqR0+KLt
 n7oH0du6bg3IroRaikZvda+KV5q2yW6eYYTRkbBh8BcvuemimKr9eaFrA2BQMRR3tbr5
 is5GPpAJdirANjW4YG8xghVoJ0spTtpqau4KPqVfW5f2bsdKI1EGod7/vaWATE9O1++z
 BUfg==
X-Gm-Message-State: APjAAAVQ0xO1uJOyzW/S6SK7ge60CNwb/UiFKqLILAVUjLI/u1f4BAKz
 aEo/CSgXDZpm2CHwBVJ3cvNW5hK39uh87Q==
X-Google-Smtp-Source: APXvYqxUFFMmX7Sk67neg7EQaixXOc9A/7Ol/EjOgbpqQiC3UynFaBufPQN+Ojysm8p3m41C5MXX7Q==
X-Received: by 2002:a81:1d09:: with SMTP id d9mr31029497ywd.146.1579289469007; 
 Fri, 17 Jan 2020 11:31:09 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id s3sm11710343ywf.22.2020.01.17.11.31.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 11:31:08 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 14:30:54 -0500
Message-Id: <20200117193103.156821-4-sean@poorly.run>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200117193103.156821-1-sean@poorly.run>
References: <20200117193103.156821-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 03/12] drm/i915: WARN if HDCP signalling is
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
MjAxOTEyMTIxOTAyMzAuMTg4NTA1LTQtc2VhbkBwb29ybHkucnVuICN2MgoKQ2hhbmdlcyBpbiB2
MjoKLSBBZGRlZCB0byB0aGUgc2V0IGluIGxpZXUgb2YganVzdCBjbGVhcmluZyB0aGUgYml0CkNo
YW5nZXMgaW4gdjM6Ci0gTm9uZQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggMzJlYTNjN2U4YjYyLi44N2I4
YjM0N2Y2ODIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAt
MTk5OCw2ICsxOTk4LDggQEAgdm9pZCBpbnRlbF9kZGlfZGlzYWJsZV90cmFuc2NvZGVyX2Z1bmMo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUKIAl2YWwgPSBJOTE1X1JF
QUQoVFJBTlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSk7CiAJdmFsICY9IH5UUkFOU19E
RElfRlVOQ19FTkFCTEU7CiAKKwlXQVJOX09OKHZhbCAmIFRSQU5TX0RESV9IRENQX1NJR05BTExJ
TkcpOworCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKIAkJaWYgKCFpbnRlbF9k
cF9tc3RfaXNfbWFzdGVyX3RyYW5zKGNydGNfc3RhdGUpKQogCQkJdmFsICY9IH5UR0xfVFJBTlNf
RERJX1BPUlRfTUFTSzsKLS0gClNlYW4gUGF1bCwgU29mdHdhcmUgRW5naW5lZXIsIEdvb2dsZSAv
IENocm9taXVtIE9TCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
