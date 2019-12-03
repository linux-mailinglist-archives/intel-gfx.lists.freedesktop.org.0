Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6863E1103A2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 18:37:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 985406EA44;
	Tue,  3 Dec 2019 17:37:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com
 [IPv6:2607:f8b0:4864:20::b44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCF1F6EA40
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 17:37:16 +0000 (UTC)
Received: by mail-yb1-xb44.google.com with SMTP id d95so1848141ybi.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Dec 2019 09:37:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UBWGlnwv4Vv3lZO/zfX1A8+cvPWGrGOAfy9S3S5HX8I=;
 b=N27wD2gu8TUDmg9rj38pFMrQ0iK5YvemuHB3CXz48HX/2+L/nrBBkVmPocgGAPOXe6
 gR2fNdndLDxE0OWjBnrup5OO3zvj/YY24oSpEcQu+t4Bs92r2DbjDrKFAkMgjZ2K17vQ
 ynhkBrWBfcfCV57jqa8IPyh5sdI2su0Q9nVzOHMIE+MXj5fPWt+Cq5MiTOcUJ72cmvQc
 UB1lvk73rXe4AlmPziMH7hQwXJ/j6yrVqVDGkzvNPjN3JA4uHpQeABM9XFJieIYGnLfL
 VhCA4Gfpuxzd5adGaW7iW+6K4eEfv64EhsubHsseLbxyfr8caPsOfeRVtXilwyS9bq3Z
 cBKw==
X-Gm-Message-State: APjAAAWGY+PO1HNXg2uI6wrUDQBJsrXOX1cWovT/VXTLrdSgyQpoLhzL
 2Q5CMzAs79dRja7Kgn4OoFXrEg==
X-Google-Smtp-Source: APXvYqzKkH47uFrEbPlnVN2ni6vYohlGrLaKhFWLORav+baal7eEhNZjav1pddjTgLy/0PuQ4ChJ/g==
X-Received: by 2002:a25:dec1:: with SMTP id v184mr5045858ybg.62.1575394636041; 
 Tue, 03 Dec 2019 09:37:16 -0800 (PST)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id g190sm1729426ywf.41.2019.12.03.09.37.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 09:37:15 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ramalingm.c@intel.com
Date: Tue,  3 Dec 2019 12:36:27 -0500
Message-Id: <20191203173638.94919-5-sean@poorly.run>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
In-Reply-To: <20191203173638.94919-1-sean@poorly.run>
References: <20191203173638.94919-1-sean@poorly.run>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UBWGlnwv4Vv3lZO/zfX1A8+cvPWGrGOAfy9S3S5HX8I=;
 b=bnkpDUyLuTywW2KNOURTlo5ZwpG4Anq4dv4h9mS5B5m0+zct+NLsuvMgkqgRA402q1
 8/tOOWcYf4bsHybeYkUrm4J6CCHuJtJGrC2OxnmiAzhXTkV6Uvzs0jYM14tCM8yHHBCj
 ALMMEwftNBjPg1JooyQdqktcx4NZ257pjkbvElXerp2e+tQ/h0BVe2ow7HNZKysJY+/y
 Xfl+sJjqKUFht0+b5xob20EvMJYlE55EWCfqe5Y0+819vvztIVwic/fHgAGXz3kE40wK
 bdtJd/QOoBHf20YlT3RF2cX2twAbJqobsc3YWLSUEJHKODZmjtAgoyQRiwT72d5h/YWL
 XP6A==
Subject: [Intel-gfx] [PATCH 04/11] drm/i915: Don't WARN on HDCP toggle if
 get_hw_state returns false
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: David Airlie <airlied@linux.ie>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+CgpOb3cgdGhhdCB3ZSBjYW4g
cmVseSBvbiB0cmFuc2NvZGVyIGRpc2FibGUgdG8gdG9nZ2xlIHNpZ25hbGxpbmcgb2ZmLAppdCdz
IGxlc3Mgb2YgYSBjYXRhc3Ryb3BoZSBpZiBnZXRfaHdfc3RhdGUoKSByZXR1cm5zIGZhbHNlLgoK
T25jZSB3ZSBlbmFibGUgTVNULCB0aGlzIHdpbGwgYmUgYSB2YWxpZCBleGl0IHBhdGggYW5kIHdl
IHdhbnQgdG8gbWFrZQpzdXJlIHdlJ3JlIG5vdCBzcGFtbWluZyB0aGUgbG9ncyBuZWVkbGVzc2x5
LgoKU2lnbmVkLW9mZi1ieTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IGU4YWM5OGE4ZWU3Zi4uY2EyODkxM2E0YzlmIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTE5ODMsNyArMTk4
Myw3IEBAIGludCBpbnRlbF9kZGlfdG9nZ2xlX2hkY3Bfc2lnbmFsbGluZyhzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqaW50ZWxfZW5jb2RlciwKIAlpZiAoV0FSTl9PTighd2FrZXJlZikpCiAJCXJldHVy
biAtRU5YSU87CiAKLQlpZiAoV0FSTl9PTighaW50ZWxfZW5jb2Rlci0+Z2V0X2h3X3N0YXRlKGlu
dGVsX2VuY29kZXIsICZwaXBlKSkpIHsKKwlpZiAoIWludGVsX2VuY29kZXItPmdldF9od19zdGF0
ZShpbnRlbF9lbmNvZGVyLCAmcGlwZSkpIHsKIAkJcmV0ID0gLUVJTzsKIAkJZ290byBvdXQ7CiAJ
fQotLSAKU2VhbiBQYXVsLCBTb2Z0d2FyZSBFbmdpbmVlciwgR29vZ2xlIC8gQ2hyb21pdW0gT1MK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
