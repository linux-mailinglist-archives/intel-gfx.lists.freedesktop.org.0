Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6464D1635AE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 23:03:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCCF06EAA2;
	Tue, 18 Feb 2020 22:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B4046EA9E
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 22:03:34 +0000 (UTC)
Received: by mail-yw1-xc44.google.com with SMTP id t141so10129389ywc.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 14:03:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9MJ2h70I41VNPuqusx++lycc2Hn4DBe7ATQubiICxr8=;
 b=ULFrCBCtzBrPZfrCgzWhdjzZHEXJN6H7GA8cqVycVY92zemxWZH71/nLV5izUT5tzO
 ziAn3t7YQayTJaNt2WC4RNpUCX/bUjRxKT8Rie6bEsnbVCEs+1GGX7g935ZLviqFzyao
 U6s1K1VHiISPjF8BrOgR8KM8Ro9aAQGVUkjB5OUo9PhxQgbW8pWR3lsOmvOJ19KADsCF
 olKE34IFXcpLi1RxWesZl0GjXJfJNufRm808AgbdTPiObgJ6XKuT8s0a4jmxDPrm/kuX
 CtXVAr3xO/Tx0CiYE1uEZ5AJ6GwjfPt45BVck54Yl2r01e7T9PKVACU0KIyh5BkQ4hzV
 10NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9MJ2h70I41VNPuqusx++lycc2Hn4DBe7ATQubiICxr8=;
 b=Sotd8QxfDrrRL8CmiMvpD0q9xU+dnv0l+Y/2o2ATR+KOQKWGfnRRc08FZUlUvsNeZD
 aXAo6jRfzDI+2662rVlYKCL0GDGrIYBoEhnrSrcM45T3XAkIYg4lhUKy2deUrkAGzABS
 0+spRuA1FunEeft28v65661OmzWbwCTZUd/m+XBZiOKFWIejEHp7C58y6J6y96qIoc8M
 OT9Q7XajASKFnZHUI9+eiVuJ8fwIiKd+QEdpZkS3uejvsuxtY4wKwsMmhR8q5hjtCpHO
 RP6jsGXUriOLtmLPowrofb2peSBGaP+dhxKKsBIIYWRqdak7Mw17GsX7Tn3MKWtXOZa/
 3UDQ==
X-Gm-Message-State: APjAAAUAY9fkGtwQIfhfcNrEDAieNBLkcSw9a+XDGt0A6bl1G8xTCl3j
 Bpf5Ebbq7/KJ6ENjuey8LTlG5w==
X-Google-Smtp-Source: APXvYqyLvvxhSnIZ1r9nlZ+/JeW/y97JevTE8oTIlAEMuLlFlQw9pJlp3I+ODPl1LZlGRBMDALO2Gw==
X-Received: by 2002:a81:38d6:: with SMTP id
 f205mr17237128ywa.387.1582063413682; 
 Tue, 18 Feb 2020 14:03:33 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id y17sm29597ywd.23.2020.02.18.14.03.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 14:03:33 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 17:02:32 -0500
Message-Id: <20200218220242.107265-5-sean@poorly.run>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
In-Reply-To: <20200218220242.107265-1-sean@poorly.run>
References: <20200218220242.107265-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 04/14] drm/i915: Intercept Aksv writes in the
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
LzIwMjAwMTE3MTkzMTAzLjE1NjgyMS01LXNlYW5AcG9vcmx5LnJ1biAjdjMKCkNoYW5nZXMgaW4g
djI6Ci1SZW1vdmUgJ2dlbmVyYXRlJyBpbiBpbnRlbF9kcF9hdXhfZ2VuZXJhdGVfeGZlcl9mbGFn
cywgbWFrZSBhcmcgY29uc3QgKFZpbGxlKQotQnVuZGxlIEFrc3YgaWYgc3RhdGVtZW50IHRvZ2V0
aGVyIChWaWxsZSkKLVJlbmFtZSAndHhidWYnIHRvICdha3N2JyAoVmlsbGUpCkNoYW5nZXMgaW4g
djM6Ci1Ob25lCkNoYW5nZXMgaW4gdjQ6Ci1Ob25lCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIHwgNjIgKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCA5NTQxYWIxMTYyNGQ4Li4xYzk0NzIxOGJj
MzAwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0xNTIzLDEy
ICsxNTIzLDI3IEBAIGludGVsX2RwX2F1eF9oZWFkZXIodTggdHhidWZbSEVBREVSX1NJWkVdLAog
CXR4YnVmWzNdID0gbXNnLT5zaXplIC0gMTsKIH0KIAorc3RhdGljIHUzMiBpbnRlbF9kcF9hdXhf
eGZlcl9mbGFncyhjb25zdCBzdHJ1Y3QgZHJtX2RwX2F1eF9tc2cgKm1zZykKK3sKKwkvKgorCSAq
IElmIHdlJ3JlIHRyeWluZyB0byBzZW5kIHRoZSBIRENQIEFrc3YsIHdlIG5lZWQgdG8gc2V0IGEg
dGhlIEFrc3YKKwkgKiBzZWxlY3QgYml0IHRvIGluZm9ybSB0aGUgaGFyZHdhcmUgdG8gc2VuZCB0
aGUgQWtzdiBhZnRlciBvdXIgaGVhZGVyCisJICogc2luY2Ugd2UgY2FuJ3QgYWNjZXNzIHRoYXQg
ZGF0YSBmcm9tIHNvZnR3YXJlLgorCSAqLworCWlmICgobXNnLT5yZXF1ZXN0ICYgfkRQX0FVWF9J
MkNfTU9UKSA9PSBEUF9BVVhfTkFUSVZFX1dSSVRFICYmCisJICAgIG1zZy0+YWRkcmVzcyA9PSBE
UF9BVVhfSERDUF9BS1NWKQorCQlyZXR1cm4gRFBfQVVYX0NIX0NUTF9BVVhfQUtTVl9TRUxFQ1Q7
CisKKwlyZXR1cm4gMDsKK30KKwogc3RhdGljIHNzaXplX3QKIGludGVsX2RwX2F1eF90cmFuc2Zl
cihzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LCBzdHJ1Y3QgZHJtX2RwX2F1eF9tc2cgKm1zZykKIHsK
IAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gY29udGFpbmVyX29mKGF1eCwgc3RydWN0IGlu
dGVsX2RwLCBhdXgpOwogCXU4IHR4YnVmWzIwXSwgcnhidWZbMjBdOwogCXNpemVfdCB0eHNpemUs
IHJ4c2l6ZTsKKwl1MzIgZmxhZ3MgPSBpbnRlbF9kcF9hdXhfeGZlcl9mbGFncyhtc2cpOwogCWlu
dCByZXQ7CiAKIAlpbnRlbF9kcF9hdXhfaGVhZGVyKHR4YnVmLCBtc2cpOwpAQCAtMTU0OSw3ICsx
NTY0LDcgQEAgaW50ZWxfZHBfYXV4X3RyYW5zZmVyKHN0cnVjdCBkcm1fZHBfYXV4ICphdXgsIHN0
cnVjdCBkcm1fZHBfYXV4X21zZyAqbXNnKQogCQkJbWVtY3B5KHR4YnVmICsgSEVBREVSX1NJWkUs
IG1zZy0+YnVmZmVyLCBtc2ctPnNpemUpOwogCiAJCXJldCA9IGludGVsX2RwX2F1eF94ZmVyKGlu
dGVsX2RwLCB0eGJ1ZiwgdHhzaXplLAotCQkJCQlyeGJ1ZiwgcnhzaXplLCAwKTsKKwkJCQkJcnhi
dWYsIHJ4c2l6ZSwgZmxhZ3MpOwogCQlpZiAocmV0ID4gMCkgewogCQkJbXNnLT5yZXBseSA9IHJ4
YnVmWzBdID4+IDQ7CiAKQEAgLTE1NzIsNyArMTU4Nyw3IEBAIGludGVsX2RwX2F1eF90cmFuc2Zl
cihzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LCBzdHJ1Y3QgZHJtX2RwX2F1eF9tc2cgKm1zZykKIAkJ
CXJldHVybiAtRTJCSUc7CiAKIAkJcmV0ID0gaW50ZWxfZHBfYXV4X3hmZXIoaW50ZWxfZHAsIHR4
YnVmLCB0eHNpemUsCi0JCQkJCXJ4YnVmLCByeHNpemUsIDApOworCQkJCQlyeGJ1ZiwgcnhzaXpl
LCBmbGFncyk7CiAJCWlmIChyZXQgPiAwKSB7CiAJCQltc2ctPnJlcGx5ID0gcnhidWZbMF0gPj4g
NDsKIAkJCS8qCkBAIC01OTQxLDE3ICs1OTU2LDkgQEAgc3RhdGljCiBpbnQgaW50ZWxfZHBfaGRj
cF93cml0ZV9hbl9ha3N2KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0
LAogCQkJCXU4ICphbikKIHsKLQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2lu
dGVsX2RwKHRvX2ludGVsX2VuY29kZXIoJmludGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UpKTsKLQlz
dGF0aWMgY29uc3Qgc3RydWN0IGRybV9kcF9hdXhfbXNnIG1zZyA9IHsKLQkJLnJlcXVlc3QgPSBE
UF9BVVhfTkFUSVZFX1dSSVRFLAotCQkuYWRkcmVzcyA9IERQX0FVWF9IRENQX0FLU1YsCi0JCS5z
aXplID0gRFJNX0hEQ1BfS1NWX0xFTiwKLQl9OwotCXU4IHR4YnVmW0hFQURFUl9TSVpFICsgRFJN
X0hEQ1BfS1NWX0xFTl0gPSB7fSwgcnhidWZbMl0sIHJlcGx5ID0gMDsKKwl1OCBha3N2W0RSTV9I
RENQX0tTVl9MRU5dID0ge307CiAJc3NpemVfdCBkcGNkX3JldDsKLQlpbnQgcmV0OwogCi0JLyog
T3V0cHV0IEFuIGZpcnN0LCB0aGF0J3MgZWFzeSAqLwogCWRwY2RfcmV0ID0gZHJtX2RwX2RwY2Rf
d3JpdGUoJmludGVsX2RpZ19wb3J0LT5kcC5hdXgsIERQX0FVWF9IRENQX0FOLAogCQkJCSAgICAg
YW4sIERSTV9IRENQX0FOX0xFTik7CiAJaWYgKGRwY2RfcmV0ICE9IERSTV9IRENQX0FOX0xFTikg
ewpAQCAtNTk2MSwyOSArNTk2OCwxOCBAQCBpbnQgaW50ZWxfZHBfaGRjcF93cml0ZV9hbl9ha3N2
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAogCX0KIAogCS8qCi0J
ICogU2luY2UgQWtzdiBpcyBPaC1Tby1TZWNyZXQsIHdlIGNhbid0IGFjY2VzcyBpdCBpbiBzb2Z0
d2FyZS4gU28gaW4KLQkgKiBvcmRlciB0byBnZXQgaXQgb24gdGhlIHdpcmUsIHdlIG5lZWQgdG8g
Y3JlYXRlIHRoZSBBVVggaGVhZGVyIGFzIGlmCi0JICogd2Ugd2VyZSB3cml0aW5nIHRoZSBkYXRh
LCBhbmQgdGhlbiB0aWNrbGUgdGhlIGhhcmR3YXJlIHRvIG91dHB1dCB0aGUKLQkgKiBkYXRhIG9u
Y2UgdGhlIGhlYWRlciBpcyBzZW50IG91dC4KKwkgKiBTaW5jZSBBa3N2IGlzIE9oLVNvLVNlY3Jl
dCwgd2UgY2FuJ3QgYWNjZXNzIGl0IGluIHNvZnR3YXJlLiBTbyB3ZQorCSAqIHNlbmQgYW4gZW1w
dHkgYnVmZmVyIG9mIHRoZSBjb3JyZWN0IGxlbmd0aCB0aHJvdWdoIHRoZSBEUCBoZWxwZXJzLiBP
bgorCSAqIHRoZSBvdGhlciBzaWRlLCBpbiB0aGUgdHJhbnNmZXIgaG9vaywgd2UnbGwgZ2VuZXJh
dGUgYSBmbGFnIGJhc2VkIG9uCisJICogdGhlIGRlc3RpbmF0aW9uIGFkZHJlc3Mgd2hpY2ggd2ls
bCB0aWNrbGUgdGhlIGhhcmR3YXJlIHRvIG91dHB1dCB0aGUKKwkgKiBBa3N2IG9uIG91ciBiZWhh
bGYgYWZ0ZXIgdGhlIGhlYWRlciBpcyBzZW50LgogCSAqLwotCWludGVsX2RwX2F1eF9oZWFkZXIo
dHhidWYsICZtc2cpOwotCi0JcmV0ID0gaW50ZWxfZHBfYXV4X3hmZXIoaW50ZWxfZHAsIHR4YnVm
LCBIRUFERVJfU0laRSArIG1zZy5zaXplLAotCQkJCXJ4YnVmLCBzaXplb2YocnhidWYpLAotCQkJ
CURQX0FVWF9DSF9DVExfQVVYX0FLU1ZfU0VMRUNUKTsKLQlpZiAocmV0IDwgMCkgewotCQlEUk1f
REVCVUdfS01TKCJXcml0ZSBBa3N2IG92ZXIgRFAvQVVYIGZhaWxlZCAoJWQpXG4iLCByZXQpOwot
CQlyZXR1cm4gcmV0OwotCX0gZWxzZSBpZiAocmV0ID09IDApIHsKLQkJRFJNX0RFQlVHX0tNUygi
QWtzdiB3cml0ZSBvdmVyIERQL0FVWCB3YXMgZW1wdHlcbiIpOwotCQlyZXR1cm4gLUVJTzsKLQl9
Ci0KLQlyZXBseSA9IChyeGJ1ZlswXSA+PiA0KSAmIERQX0FVWF9OQVRJVkVfUkVQTFlfTUFTSzsK
LQlpZiAocmVwbHkgIT0gRFBfQVVYX05BVElWRV9SRVBMWV9BQ0spIHsKLQkJRFJNX0RFQlVHX0tN
UygiQWtzdiB3cml0ZTogbm8gRFBfQVVYX05BVElWRV9SRVBMWV9BQ0sgJXhcbiIsCi0JCQkgICAg
ICByZXBseSk7Ci0JCXJldHVybiAtRUlPOworCWRwY2RfcmV0ID0gZHJtX2RwX2RwY2Rfd3JpdGUo
JmludGVsX2RpZ19wb3J0LT5kcC5hdXgsIERQX0FVWF9IRENQX0FLU1YsCisJCQkJICAgICBha3N2
LCBEUk1fSERDUF9LU1ZfTEVOKTsKKwlpZiAoZHBjZF9yZXQgIT0gRFJNX0hEQ1BfS1NWX0xFTikg
eworCQlEUk1fREVCVUdfS01TKCJGYWlsZWQgdG8gd3JpdGUgQWtzdiBvdmVyIERQL0FVWCAoJXpk
KVxuIiwKKwkJCSAgICAgIGRwY2RfcmV0KTsKKwkJcmV0dXJuIGRwY2RfcmV0ID49IDAgPyAtRUlP
IDogZHBjZF9yZXQ7CiAJfQogCXJldHVybiAwOwogfQotLSAKU2VhbiBQYXVsLCBTb2Z0d2FyZSBF
bmdpbmVlciwgR29vZ2xlIC8gQ2hyb21pdW0gT1MKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
