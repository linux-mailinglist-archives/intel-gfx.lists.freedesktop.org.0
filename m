Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D0D17AF7A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 21:13:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7DF56EC1C;
	Thu,  5 Mar 2020 20:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com
 [IPv6:2607:f8b0:4864:20::c41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B1256EC12
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 20:12:43 +0000 (UTC)
Received: by mail-yw1-xc41.google.com with SMTP id p124so2997583ywc.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Mar 2020 12:12:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X1YqvBKqg7/VryAOK9RwH9BwHNsCXx8VTJSjh1czkIs=;
 b=WzmoRSygBRqtMF2E4liPFh4tPPyi4/X+gij40jjbnQGdpI7tnDsPZPwelNWSI11FFt
 ONllhwj38ovOW7Z58Nw+Bxg0Y+Kh8g6gZXAz6OsyQNIDNDdxuallgTh2WhdP6XwOE7hT
 gPNsDDVlh/c9W1BnaoTuaWZ5WuiPy/DE28dqxLPvu5C4qj1rqQdTlRzo/pBP/PQcjMhj
 5dR2KAKWsdKWZT+VkbVCKvfzSc9X1fWWb6VvjavVlClHTwQ7xOfLFFdtvzKYeNGS1Ioz
 i+KNiX0D2tIbmr6AnVkd8l/J1puamjZXEc0cLCdJRuwZcR8JB96tVI9dWHC/RziJUPQK
 wFyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X1YqvBKqg7/VryAOK9RwH9BwHNsCXx8VTJSjh1czkIs=;
 b=a5zw5wNPNQTIuawy2TCruigs0lzH1k+W5S0tTBtnJ6iwR1o104+hOwdKZOMkZgesl8
 +EtMHQN82h3EbHZuQyOII7tek8AXM2VLJgnHrUBpMezKlw9SIZzym8C4liAPIx7gHnBm
 VBCCrnnbtj33bvh3smAiSQqhL5Du2VEMudwaLYfHBKyoY2Jpym6WC5j4jX1oxry+kRds
 6VBRlgSsY5nq6qd4W+eSOzurZDGF6C/Y55HJ+JbLWxK7QjN2M97dG2m9yOPjprmRPd7v
 D10FHoWsIn6TUaxBasHlx5MoZhxYeDNnDyqU0MmAtAWhXapKcxr38rxZ8yxbFn+MviaE
 3fCg==
X-Gm-Message-State: ANhLgQ0x27ok8p/WXDR2VHPK1/1MZO5PeJnr/aksyT85PKEKQjaUkKqh
 IN2Hza8jXnNxnyL9TfkRnsnjSw==
X-Google-Smtp-Source: ADFU+vuu3V2zZ8MmnIYrKOdrjJctybwN1t7BQPqknIdWWLBncyI3sTtUFzI+aL5HSlmkGd4WqdwKDw==
X-Received: by 2002:a25:9390:: with SMTP id a16mr9026054ybm.189.1583439162412; 
 Thu, 05 Mar 2020 12:12:42 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id w132sm12523793ywc.51.2020.03.05.12.12.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 12:12:42 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  5 Mar 2020 15:12:24 -0500
Message-Id: <20200305201236.152307-5-sean@poorly.run>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
In-Reply-To: <20200305201236.152307-1-sean@poorly.run>
References: <20200305201236.152307-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 04/16] drm/i915: Intercept Aksv writes in the
 aux hooks
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

RnJvbTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+CgpJbnN0ZWFkIG9mIGhhbmQg
cm9sbGluZyB0aGUgdHJhbnNmZXIgb3Vyc2VsdmVzIGluIHRoZSBoZGNwIGhvb2ssIGluc3BlY3QK
YXV4IG1lc3NhZ2VzIGFuZCBhZGQgdGhlIGFrc3YgZmxhZyBpbiB0aGUgYXV4IHRyYW5zZmVyIGhv
b2suCgpJSVJDLCB0aGlzIHdhcyB0aGUgb3JpZ2luYWwgaW1wbGVtZW50YXRpb24gYW5kIGZvbGtz
IHdhbnRlZCB0aGlzIGhhY2sgdG8KYmUgaXNvbGF0ZWQgdG8gdGhlIGhkY3AgY29kZSwgd2hpY2gg
bWFrZXMgc2Vuc2UuCgpIb3dldmVyIGluIHRlc3RpbmcgYW4gTEcgbW9uaXRvciBvbiBteSBkZXNr
LCBJIG5vdGljZWQgaXQgd2FzIHBhc3NpbmcKYmFjayBhIERFRkVSIHJlcGx5LiBUaGlzIHdhc24n
dCBoYW5kbGVkIGluIG91ciBoYW5kLXJvbGxlZCBjb2RlIGFuZCBIRENQCmF1dGggd2FzIGZhaWxp
bmcgYXMgYSByZXN1bHQuIEluc3RlYWQgb2YgY29weS9wYXN0aW5nIGFsbCBvZiB0aGUgcmV0cnkK
bG9naWMgYW5kIGRlbGF5cyBmcm9tIGRybSBkcCBoZWxwZXJzLCBsZXQncyBqdXN0IHVzZSB0aGUg
aGVscGVycyBhbmQgaGlkZQp0aGUgYWtzdiBzZWxlY3QgYXMgYmVzdCBhcyB3ZSBjYW4uCgpSZXZp
ZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+Ckxpbms6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MTIwMzE3MzYzOC45NDkx
OS0zLXNlYW5AcG9vcmx5LnJ1biAjdjEKTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkxMjEyMTkwMjMwLjE4ODUwNS01LXNlYW5AcG9vcmx5LnJ1
biAjdjIKTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lk
LzIwMjAwMTE3MTkzMTAzLjE1NjgyMS01LXNlYW5AcG9vcmx5LnJ1biAjdjMKTGluazogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMjAwMjE4MjIwMjQyLjEw
NzI2NS01LXNlYW5AcG9vcmx5LnJ1biAjdjQKCkNoYW5nZXMgaW4gdjI6Ci1SZW1vdmUgJ2dlbmVy
YXRlJyBpbiBpbnRlbF9kcF9hdXhfZ2VuZXJhdGVfeGZlcl9mbGFncywgbWFrZSBhcmcgY29uc3Qg
KFZpbGxlKQotQnVuZGxlIEFrc3YgaWYgc3RhdGVtZW50IHRvZ2V0aGVyIChWaWxsZSkKLVJlbmFt
ZSAndHhidWYnIHRvICdha3N2JyAoVmlsbGUpCkNoYW5nZXMgaW4gdjM6Ci1Ob25lCkNoYW5nZXMg
aW4gdjQ6Ci1Ob25lCkNoYW5nZXMgaW4gdjU6Ci1Ob25lCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgNjIgKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCAwYTQxN2NkMmFmMmJjLi4xZjgwYTEy
NDRhYmJiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0xNTM0
LDEyICsxNTM0LDI3IEBAIGludGVsX2RwX2F1eF9oZWFkZXIodTggdHhidWZbSEVBREVSX1NJWkVd
LAogCXR4YnVmWzNdID0gbXNnLT5zaXplIC0gMTsKIH0KIAorc3RhdGljIHUzMiBpbnRlbF9kcF9h
dXhfeGZlcl9mbGFncyhjb25zdCBzdHJ1Y3QgZHJtX2RwX2F1eF9tc2cgKm1zZykKK3sKKwkvKgor
CSAqIElmIHdlJ3JlIHRyeWluZyB0byBzZW5kIHRoZSBIRENQIEFrc3YsIHdlIG5lZWQgdG8gc2V0
IGEgdGhlIEFrc3YKKwkgKiBzZWxlY3QgYml0IHRvIGluZm9ybSB0aGUgaGFyZHdhcmUgdG8gc2Vu
ZCB0aGUgQWtzdiBhZnRlciBvdXIgaGVhZGVyCisJICogc2luY2Ugd2UgY2FuJ3QgYWNjZXNzIHRo
YXQgZGF0YSBmcm9tIHNvZnR3YXJlLgorCSAqLworCWlmICgobXNnLT5yZXF1ZXN0ICYgfkRQX0FV
WF9JMkNfTU9UKSA9PSBEUF9BVVhfTkFUSVZFX1dSSVRFICYmCisJICAgIG1zZy0+YWRkcmVzcyA9
PSBEUF9BVVhfSERDUF9BS1NWKQorCQlyZXR1cm4gRFBfQVVYX0NIX0NUTF9BVVhfQUtTVl9TRUxF
Q1Q7CisKKwlyZXR1cm4gMDsKK30KKwogc3RhdGljIHNzaXplX3QKIGludGVsX2RwX2F1eF90cmFu
c2ZlcihzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LCBzdHJ1Y3QgZHJtX2RwX2F1eF9tc2cgKm1zZykK
IHsKIAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gY29udGFpbmVyX29mKGF1eCwgc3RydWN0
IGludGVsX2RwLCBhdXgpOwogCXU4IHR4YnVmWzIwXSwgcnhidWZbMjBdOwogCXNpemVfdCB0eHNp
emUsIHJ4c2l6ZTsKKwl1MzIgZmxhZ3MgPSBpbnRlbF9kcF9hdXhfeGZlcl9mbGFncyhtc2cpOwog
CWludCByZXQ7CiAKIAlpbnRlbF9kcF9hdXhfaGVhZGVyKHR4YnVmLCBtc2cpOwpAQCAtMTU2MCw3
ICsxNTc1LDcgQEAgaW50ZWxfZHBfYXV4X3RyYW5zZmVyKHN0cnVjdCBkcm1fZHBfYXV4ICphdXgs
IHN0cnVjdCBkcm1fZHBfYXV4X21zZyAqbXNnKQogCQkJbWVtY3B5KHR4YnVmICsgSEVBREVSX1NJ
WkUsIG1zZy0+YnVmZmVyLCBtc2ctPnNpemUpOwogCiAJCXJldCA9IGludGVsX2RwX2F1eF94ZmVy
KGludGVsX2RwLCB0eGJ1ZiwgdHhzaXplLAotCQkJCQlyeGJ1ZiwgcnhzaXplLCAwKTsKKwkJCQkJ
cnhidWYsIHJ4c2l6ZSwgZmxhZ3MpOwogCQlpZiAocmV0ID4gMCkgewogCQkJbXNnLT5yZXBseSA9
IHJ4YnVmWzBdID4+IDQ7CiAKQEAgLTE1ODMsNyArMTU5OCw3IEBAIGludGVsX2RwX2F1eF90cmFu
c2ZlcihzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LCBzdHJ1Y3QgZHJtX2RwX2F1eF9tc2cgKm1zZykK
IAkJCXJldHVybiAtRTJCSUc7CiAKIAkJcmV0ID0gaW50ZWxfZHBfYXV4X3hmZXIoaW50ZWxfZHAs
IHR4YnVmLCB0eHNpemUsCi0JCQkJCXJ4YnVmLCByeHNpemUsIDApOworCQkJCQlyeGJ1Ziwgcnhz
aXplLCBmbGFncyk7CiAJCWlmIChyZXQgPiAwKSB7CiAJCQltc2ctPnJlcGx5ID0gcnhidWZbMF0g
Pj4gNDsKIAkJCS8qCkBAIC01OTU5LDE3ICs1OTc0LDkgQEAgc3RhdGljCiBpbnQgaW50ZWxfZHBf
aGRjcF93cml0ZV9hbl9ha3N2KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19w
b3J0LAogCQkJCXU4ICphbikKIHsKLQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3Rv
X2ludGVsX2RwKHRvX2ludGVsX2VuY29kZXIoJmludGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UpKTsK
LQlzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9kcF9hdXhfbXNnIG1zZyA9IHsKLQkJLnJlcXVlc3Qg
PSBEUF9BVVhfTkFUSVZFX1dSSVRFLAotCQkuYWRkcmVzcyA9IERQX0FVWF9IRENQX0FLU1YsCi0J
CS5zaXplID0gRFJNX0hEQ1BfS1NWX0xFTiwKLQl9OwotCXU4IHR4YnVmW0hFQURFUl9TSVpFICsg
RFJNX0hEQ1BfS1NWX0xFTl0gPSB7fSwgcnhidWZbMl0sIHJlcGx5ID0gMDsKKwl1OCBha3N2W0RS
TV9IRENQX0tTVl9MRU5dID0ge307CiAJc3NpemVfdCBkcGNkX3JldDsKLQlpbnQgcmV0OwogCi0J
LyogT3V0cHV0IEFuIGZpcnN0LCB0aGF0J3MgZWFzeSAqLwogCWRwY2RfcmV0ID0gZHJtX2RwX2Rw
Y2Rfd3JpdGUoJmludGVsX2RpZ19wb3J0LT5kcC5hdXgsIERQX0FVWF9IRENQX0FOLAogCQkJCSAg
ICAgYW4sIERSTV9IRENQX0FOX0xFTik7CiAJaWYgKGRwY2RfcmV0ICE9IERSTV9IRENQX0FOX0xF
TikgewpAQCAtNTk3OSwyOSArNTk4NiwxOCBAQCBpbnQgaW50ZWxfZHBfaGRjcF93cml0ZV9hbl9h
a3N2KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAogCX0KIAogCS8q
Ci0JICogU2luY2UgQWtzdiBpcyBPaC1Tby1TZWNyZXQsIHdlIGNhbid0IGFjY2VzcyBpdCBpbiBz
b2Z0d2FyZS4gU28gaW4KLQkgKiBvcmRlciB0byBnZXQgaXQgb24gdGhlIHdpcmUsIHdlIG5lZWQg
dG8gY3JlYXRlIHRoZSBBVVggaGVhZGVyIGFzIGlmCi0JICogd2Ugd2VyZSB3cml0aW5nIHRoZSBk
YXRhLCBhbmQgdGhlbiB0aWNrbGUgdGhlIGhhcmR3YXJlIHRvIG91dHB1dCB0aGUKLQkgKiBkYXRh
IG9uY2UgdGhlIGhlYWRlciBpcyBzZW50IG91dC4KKwkgKiBTaW5jZSBBa3N2IGlzIE9oLVNvLVNl
Y3JldCwgd2UgY2FuJ3QgYWNjZXNzIGl0IGluIHNvZnR3YXJlLiBTbyB3ZQorCSAqIHNlbmQgYW4g
ZW1wdHkgYnVmZmVyIG9mIHRoZSBjb3JyZWN0IGxlbmd0aCB0aHJvdWdoIHRoZSBEUCBoZWxwZXJz
LiBPbgorCSAqIHRoZSBvdGhlciBzaWRlLCBpbiB0aGUgdHJhbnNmZXIgaG9vaywgd2UnbGwgZ2Vu
ZXJhdGUgYSBmbGFnIGJhc2VkIG9uCisJICogdGhlIGRlc3RpbmF0aW9uIGFkZHJlc3Mgd2hpY2gg
d2lsbCB0aWNrbGUgdGhlIGhhcmR3YXJlIHRvIG91dHB1dCB0aGUKKwkgKiBBa3N2IG9uIG91ciBi
ZWhhbGYgYWZ0ZXIgdGhlIGhlYWRlciBpcyBzZW50LgogCSAqLwotCWludGVsX2RwX2F1eF9oZWFk
ZXIodHhidWYsICZtc2cpOwotCi0JcmV0ID0gaW50ZWxfZHBfYXV4X3hmZXIoaW50ZWxfZHAsIHR4
YnVmLCBIRUFERVJfU0laRSArIG1zZy5zaXplLAotCQkJCXJ4YnVmLCBzaXplb2YocnhidWYpLAot
CQkJCURQX0FVWF9DSF9DVExfQVVYX0FLU1ZfU0VMRUNUKTsKLQlpZiAocmV0IDwgMCkgewotCQlE
Uk1fREVCVUdfS01TKCJXcml0ZSBBa3N2IG92ZXIgRFAvQVVYIGZhaWxlZCAoJWQpXG4iLCByZXQp
OwotCQlyZXR1cm4gcmV0OwotCX0gZWxzZSBpZiAocmV0ID09IDApIHsKLQkJRFJNX0RFQlVHX0tN
UygiQWtzdiB3cml0ZSBvdmVyIERQL0FVWCB3YXMgZW1wdHlcbiIpOwotCQlyZXR1cm4gLUVJTzsK
LQl9Ci0KLQlyZXBseSA9IChyeGJ1ZlswXSA+PiA0KSAmIERQX0FVWF9OQVRJVkVfUkVQTFlfTUFT
SzsKLQlpZiAocmVwbHkgIT0gRFBfQVVYX05BVElWRV9SRVBMWV9BQ0spIHsKLQkJRFJNX0RFQlVH
X0tNUygiQWtzdiB3cml0ZTogbm8gRFBfQVVYX05BVElWRV9SRVBMWV9BQ0sgJXhcbiIsCi0JCQkg
ICAgICByZXBseSk7Ci0JCXJldHVybiAtRUlPOworCWRwY2RfcmV0ID0gZHJtX2RwX2RwY2Rfd3Jp
dGUoJmludGVsX2RpZ19wb3J0LT5kcC5hdXgsIERQX0FVWF9IRENQX0FLU1YsCisJCQkJICAgICBh
a3N2LCBEUk1fSERDUF9LU1ZfTEVOKTsKKwlpZiAoZHBjZF9yZXQgIT0gRFJNX0hEQ1BfS1NWX0xF
TikgeworCQlEUk1fREVCVUdfS01TKCJGYWlsZWQgdG8gd3JpdGUgQWtzdiBvdmVyIERQL0FVWCAo
JXpkKVxuIiwKKwkJCSAgICAgIGRwY2RfcmV0KTsKKwkJcmV0dXJuIGRwY2RfcmV0ID49IDAgPyAt
RUlPIDogZHBjZF9yZXQ7CiAJfQogCXJldHVybiAwOwogfQotLSAKU2VhbiBQYXVsLCBTb2Z0d2Fy
ZSBFbmdpbmVlciwgR29vZ2xlIC8gQ2hyb21pdW0gT1MKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
