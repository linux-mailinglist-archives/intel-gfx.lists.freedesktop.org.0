Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0CD2C254
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 11:04:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95B4A89FE6;
	Tue, 28 May 2019 09:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA4FA89F06
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 09:03:46 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id f37so30563056edb.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 02:03:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rNBJhiQm3QtWHoSITdA9k7CBQWZOP0J/7NNptnKcbZo=;
 b=dHJxrzwjh44VXMaDAtTv2KDpZYGN76hfC4tGvgkb67uLWylqXec95nGDTte6e1i9o4
 FdGrIxTbhXoYCidd6Zmb7bxLCNK4N2SmguMzEQxo7Tj8FzIYb4fXXF0JTjyXgNyMofkg
 Ozmjlrq5Go91lbUo7XQBH1OtaZoXDL+eIdDtaq9WYceiocKM7RhZEDRxCaHSwNxZdwEV
 Gg01gRVd8FGLLNvT82dPBhlNBu7o/GRpTvtTmBpN84CJN8JeAplI0eoS9babVaEY/pQm
 3ClT62AlztdIrWX4no+Xdu+1U0lR+xKAncFvfD9Lo/CdAMiIrrB2+yXHkfdgPeU+/YEO
 0mMw==
X-Gm-Message-State: APjAAAXe7baxToaNSZbfhZdpdQbz8S/gEJWRAlKQcjt/wO8ccjG87dWP
 kUQGRZoBeVjhcv8jZAl/nKZM+A==
X-Google-Smtp-Source: APXvYqxNNixKWrlzaYumQEkWdIfNSLuYtCKS5s2p8GnMvuoJF4Q+3V//pjVusGXfoJ8b89my2E1rng==
X-Received: by 2002:a17:906:cd08:: with SMTP id
 oz8mr55467207ejb.67.1559034223020; 
 Tue, 28 May 2019 02:03:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x49sm4072656edm.25.2019.05.28.02.03.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 02:03:42 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Tue, 28 May 2019 11:02:53 +0200
Message-Id: <20190528090304.9388-23-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
References: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rNBJhiQm3QtWHoSITdA9k7CBQWZOP0J/7NNptnKcbZo=;
 b=dYYBlrvtmXuD/rIq0AB0jguBiU/CNNLAbA6WmSlJQIZ+yRCtx/LctjbM1MQD0W/b1y
 qLcBRd2UA/UxgxFxWmst9VBs+4cNWDRtceOXBTs/vxprZ2s4IAYBexP6TqvhJX1JQKPQ
 7DiZ1IZlG5hVp9FoIf3aOBg1jXZNd+XeHj29g=
Subject: [Intel-gfx] [PATCH 22/33] fbcon: Call
 fbcon_mode_deleted/new_modelist directly
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Yisheng Xie <ysxie@foxmail.com>, Mikulas Patocka <mpatocka@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSdtIG5vdCBlbnRpcmVseSBjbGVhciBvbiB3aGF0IG5ld19tb2RlbGlzdCBhY3R1YWxseSBkb2Vz
LCBpdCBzZWVtcwpleGNsdXNpdmVseSBmb3IgYSBzeXNmcyBpbnRlcmZhY2UuIFdoaWNoIGluIHRo
ZSBlbmQgZG9lcyBhbW91bnQgdG8gYQpub3JtYWwgZmJfc2V0X3BhciB0byBjaGVjayB0aGUgbW9k
ZSwgYnV0IHRoZW4gdGFrZXMgYSBkaWZmZXJlbnQgcGF0aAppbiBib3RoIGZibWVtLmMgYW5kIGZi
Y29uLmMuCgpJIGhhdmUgbm8gaWRlYSB3aHkgdGhlc2UgMiBwYXRocyBhcmUgZGlmZmVyZW50LCBi
dXQgdGhlbiBJIGFsc28gZG9uJ3QKcmVhbGx5IHdhbnQgdG8gZmluZCBvdXQuIFNvIGp1c3QgZG8g
dGhlIHNpbXBsZSBjb252ZXJzaW9uIHRvIGEgZGlyZWN0CmZ1bmN0aW9uIGNhbGwuCgp2Mjogc3Rh
dGljIGlubGluZSBmb3IgdGhlIGR1bW15IHZlcnNpb25zLCBJIGZvcmdvdC4KClNpZ25lZC1vZmYt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
U2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpSZXZpZXdlZC1ieTogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IEJhcnRsb21pZWog
Wm9sbmllcmtpZXdpY3ogPGIuem9sbmllcmtpZUBzYW1zdW5nLmNvbT4KQ2M6IERhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUBy
ZWRoYXQuY29tPgpDYzogTWlrdWxhcyBQYXRvY2thIDxtcGF0b2NrYUByZWRoYXQuY29tPgpDYzog
U2VyZ2V5IFNlbm96aGF0c2t5IDxzZXJnZXkuc2Vub3poYXRza3lAZ21haWwuY29tPgpDYzogS2Vl
cyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+CkNjOiBQZXRlciBSb3NpbiA8cGVkYUBheGVu
dGlhLnNlPgpDYzogWWlzaGVuZyBYaWUgPHlzeGllQGZveG1haWwuY29tPgpDYzogIk1pY2hhxYIg
TWlyb3PFgmF3IiA8bWlycS1saW51eEByZXJlLnFtcW0ucGw+CkNjOiBsaW51eC1mYmRldkB2Z2Vy
Lmtlcm5lbC5vcmcKLS0tCiBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJjb24uYyB8IDE0ICsr
Ky0tLS0tLS0tLS0tCiBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYyB8IDIyICsrKysr
KystLS0tLS0tLS0tLS0tLS0KIGluY2x1ZGUvbGludXgvZmIuaCAgICAgICAgICAgICAgIHwgIDUg
LS0tLS0KIGluY2x1ZGUvbGludXgvZmJjb24uaCAgICAgICAgICAgIHwgIDYgKysrKysrCiA0IGZp
bGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYmNvbi5jIGIvZHJpdmVycy92aWRlby9mYmRl
di9jb3JlL2ZiY29uLmMKaW5kZXggZTMyNjdkNzEzOTVjLi41MTUzNjYzMDg1MzcgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYmNvbi5jCisrKyBiL2RyaXZlcnMvdmlkZW8v
ZmJkZXYvY29yZS9mYmNvbi5jCkBAIC0zMDE5LDggKzMwMTksOCBAQCBzdGF0aWMgdm9pZCBmYmNv
bl9zZXRfYWxsX3ZjcyhzdHJ1Y3QgZmJfaW5mbyAqaW5mbykKIAkJZmJjb25fbW9kZWNoYW5nZWQo
aW5mbyk7CiB9CiAKLXN0YXRpYyBpbnQgZmJjb25fbW9kZV9kZWxldGVkKHN0cnVjdCBmYl9pbmZv
ICppbmZvLAotCQkJICAgICAgc3RydWN0IGZiX3ZpZGVvbW9kZSAqbW9kZSkKK2ludCBmYmNvbl9t
b2RlX2RlbGV0ZWQoc3RydWN0IGZiX2luZm8gKmluZm8sCisJCSAgICAgICBzdHJ1Y3QgZmJfdmlk
ZW9tb2RlICptb2RlKQogewogCXN0cnVjdCBmYl9pbmZvICpmYl9pbmZvOwogCXN0cnVjdCBmYmNv
bl9kaXNwbGF5ICpwOwpAQCAtMzI2Miw3ICszMjYyLDcgQEAgc3RhdGljIHZvaWQgZmJjb25fZmJf
YmxhbmtlZChzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgaW50IGJsYW5rKQogCW9wcy0+Ymxhbmtfc3Rh
dGUgPSBibGFuazsKIH0KIAotc3RhdGljIHZvaWQgZmJjb25fbmV3X21vZGVsaXN0KHN0cnVjdCBm
Yl9pbmZvICppbmZvKQordm9pZCBmYmNvbl9uZXdfbW9kZWxpc3Qoc3RydWN0IGZiX2luZm8gKmlu
Zm8pCiB7CiAJaW50IGk7CiAJc3RydWN0IHZjX2RhdGEgKnZjOwpAQCAtMzMyNCw3ICszMzI0LDYg
QEAgc3RhdGljIGludCBmYmNvbl9ldmVudF9ub3RpZnkoc3RydWN0IG5vdGlmaWVyX2Jsb2NrICpz
ZWxmLAogewogCXN0cnVjdCBmYl9ldmVudCAqZXZlbnQgPSBkYXRhOwogCXN0cnVjdCBmYl9pbmZv
ICppbmZvID0gZXZlbnQtPmluZm87Ci0Jc3RydWN0IGZiX3ZpZGVvbW9kZSAqbW9kZTsKIAlzdHJ1
Y3QgZmJfY29uMmZibWFwICpjb24yZmI7CiAJc3RydWN0IGZiX2JsaXRfY2FwcyAqY2FwczsKIAlp
bnQgaWR4LCByZXQgPSAwOwpAQCAtMzMzNiwxMCArMzMzNSw2IEBAIHN0YXRpYyBpbnQgZmJjb25f
ZXZlbnRfbm90aWZ5KHN0cnVjdCBub3RpZmllcl9ibG9jayAqc2VsZiwKIAljYXNlIEZCX0VWRU5U
X01PREVfQ0hBTkdFX0FMTDoKIAkJZmJjb25fc2V0X2FsbF92Y3MoaW5mbyk7CiAJCWJyZWFrOwot
CWNhc2UgRkJfRVZFTlRfTU9ERV9ERUxFVEU6Ci0JCW1vZGUgPSBldmVudC0+ZGF0YTsKLQkJcmV0
ID0gZmJjb25fbW9kZV9kZWxldGVkKGluZm8sIG1vZGUpOwotCQlicmVhazsKIAljYXNlIEZCX0VW
RU5UX1NFVF9DT05TT0xFX01BUDoKIAkJLyogY2FsbGVkIHdpdGggY29uc29sZSBsb2NrIGhlbGQg
Ki8KIAkJY29uMmZiID0gZXZlbnQtPmRhdGE7CkBAIC0zMzUzLDkgKzMzNDgsNiBAQCBzdGF0aWMg
aW50IGZiY29uX2V2ZW50X25vdGlmeShzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKnNlbGYsCiAJY2Fz
ZSBGQl9FVkVOVF9CTEFOSzoKIAkJZmJjb25fZmJfYmxhbmtlZChpbmZvLCAqKGludCAqKWV2ZW50
LT5kYXRhKTsKIAkJYnJlYWs7Ci0JY2FzZSBGQl9FVkVOVF9ORVdfTU9ERUxJU1Q6Ci0JCWZiY29u
X25ld19tb2RlbGlzdChpbmZvKTsKLQkJYnJlYWs7CiAJY2FzZSBGQl9FVkVOVF9HRVRfUkVROgog
CQljYXBzID0gZXZlbnQtPmRhdGE7CiAJCWZiY29uX2dldF9yZXF1aXJlbWVudChpbmZvLCBjYXBz
KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jIGIvZHJpdmVy
cy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMKaW5kZXggNzMyNjlkZWRjZDQ1Li5jYmRkMTQxZTc2
OTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jCisrKyBiL2Ry
aXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jCkBAIC05NjYsMTYgKzk2NiwxMSBAQCBmYl9z
ZXRfdmFyKHN0cnVjdCBmYl9pbmZvICppbmZvLCBzdHJ1Y3QgZmJfdmFyX3NjcmVlbmluZm8gKnZh
cikKIAkJLyogbWFrZSBzdXJlIHdlIGRvbid0IGRlbGV0ZSB0aGUgdmlkZW9tb2RlIG9mIGN1cnJl
bnQgdmFyICovCiAJCXJldCA9IGZiX21vZGVfaXNfZXF1YWwoJm1vZGUxLCAmbW9kZTIpOwogCi0J
CWlmICghcmV0KSB7Ci0JCSAgICBzdHJ1Y3QgZmJfZXZlbnQgZXZlbnQ7Ci0KLQkJICAgIGV2ZW50
LmluZm8gPSBpbmZvOwotCQkgICAgZXZlbnQuZGF0YSA9ICZtb2RlMTsKLQkJICAgIHJldCA9IGZi
X25vdGlmaWVyX2NhbGxfY2hhaW4oRkJfRVZFTlRfTU9ERV9ERUxFVEUsICZldmVudCk7Ci0JCX0K
KwkJaWYgKCFyZXQpCisJCQlmYmNvbl9tb2RlX2RlbGV0ZWQoaW5mbywgJm1vZGUxKTsKIAogCQlp
ZiAoIXJldCkKLQkJICAgIGZiX2RlbGV0ZV92aWRlb21vZGUoJm1vZGUxLCAmaW5mby0+bW9kZWxp
c3QpOworCQkJZmJfZGVsZXRlX3ZpZGVvbW9kZSgmbW9kZTEsICZpbmZvLT5tb2RlbGlzdCk7CiAK
IAogCQlyZXQgPSAocmV0KSA/IC1FSU5WQUwgOiAwOwpAQCAtMTk5Miw3ICsxOTg3LDYgQEAgc3Vi
c3lzX2luaXRjYWxsKGZibWVtX2luaXQpOwogCiBpbnQgZmJfbmV3X21vZGVsaXN0KHN0cnVjdCBm
Yl9pbmZvICppbmZvKQogewotCXN0cnVjdCBmYl9ldmVudCBldmVudDsKIAlzdHJ1Y3QgZmJfdmFy
X3NjcmVlbmluZm8gdmFyID0gaW5mby0+dmFyOwogCXN0cnVjdCBsaXN0X2hlYWQgKnBvcywgKm47
CiAJc3RydWN0IGZiX21vZGVsaXN0ICptb2RlbGlzdDsKQEAgLTIwMTIsMTQgKzIwMDYsMTIgQEAg
aW50IGZiX25ld19tb2RlbGlzdChzdHJ1Y3QgZmJfaW5mbyAqaW5mbykKIAkJfQogCX0KIAotCWVy
ciA9IDE7CisJaWYgKGxpc3RfZW1wdHkoJmluZm8tPm1vZGVsaXN0KSkKKwkJcmV0dXJuIDE7CiAK
LQlpZiAoIWxpc3RfZW1wdHkoJmluZm8tPm1vZGVsaXN0KSkgewotCQlldmVudC5pbmZvID0gaW5m
bzsKLQkJZXJyID0gZmJfbm90aWZpZXJfY2FsbF9jaGFpbihGQl9FVkVOVF9ORVdfTU9ERUxJU1Qs
ICZldmVudCk7Ci0JfQorCWZiY29uX25ld19tb2RlbGlzdChpbmZvKTsKIAotCXJldHVybiBlcnI7
CisJcmV0dXJuIDA7CiB9CiAKIE1PRFVMRV9MSUNFTlNFKCJHUEwiKTsKZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvZmIuaCBiL2luY2x1ZGUvbGludXgvZmIuaAppbmRleCA3OTRiMzg2NDE1Yjcu
LjdhNzg4ZWQ4YzdiNSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9mYi5oCisrKyBiL2luY2x1
ZGUvbGludXgvZmIuaApAQCAtMTI2LDggKzEyNiw2IEBAIHN0cnVjdCBmYl9jdXJzb3JfdXNlciB7
CiAKIC8qCVRoZSByZXNvbHV0aW9uIG9mIHRoZSBwYXNzZWQgaW4gZmJfaW5mbyBhYm91dCB0byBj
aGFuZ2UgKi8gCiAjZGVmaW5lIEZCX0VWRU5UX01PREVfQ0hBTkdFCQkweDAxCi0vKiAgICAgIEFu
IGVudHJ5IGZyb20gdGhlIG1vZGVsaXN0IHdhcyByZW1vdmVkICovCi0jZGVmaW5lIEZCX0VWRU5U
X01PREVfREVMRVRFICAgICAgICAgICAgMHgwNAogCiAjaWZkZWYgQ09ORklHX0dVTVNUSVhfQU0y
MDBFUEQKIC8qIG9ubHkgdXNlZCBieSBtYWNoLXB4YS9hbTIwMGVwZC5jICovCkBAIC0xNDIsOSAr
MTQwLDYgQEAgc3RydWN0IGZiX2N1cnNvcl91c2VyIHsKIC8qICAgICAgQSBoYXJkd2FyZSBkaXNw
bGF5IGJsYW5rIGNoYW5nZSBvY2N1cnJlZCAqLwogI2RlZmluZSBGQl9FVkVOVF9CTEFOSyAgICAg
ICAgICAgICAgICAgIDB4MDkKIC8qICAgICAgUHJpdmF0ZSBtb2RlbGlzdCBpcyB0byBiZSByZXBs
YWNlZCAqLwotI2RlZmluZSBGQl9FVkVOVF9ORVdfTU9ERUxJU1QgICAgICAgICAgIDB4MEEKLS8q
CVRoZSByZXNvbHV0aW9uIG9mIHRoZSBwYXNzZWQgaW4gZmJfaW5mbyBhYm91dCB0byBjaGFuZ2Ug
YW5kCi0gICAgICAgIGFsbCB2YydzIHNob3VsZCBiZSBjaGFuZ2VkICAgICAgICAgKi8KICNkZWZp
bmUgRkJfRVZFTlRfTU9ERV9DSEFOR0VfQUxMCTB4MEIKIC8qCUEgc29mdHdhcmUgZGlzcGxheSBi
bGFuayBjaGFuZ2Ugb2NjdXJyZWQgKi8KICNkZWZpbmUgRkJfRVZFTlRfQ09OQkxBTksgICAgICAg
ICAgICAgICAweDBDCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2ZiY29uLmggYi9pbmNsdWRl
L2xpbnV4L2ZiY29uLmgKaW5kZXggNzkwYzQyZWM3YjVkLi5jMTM5ODM0MzQyZjUgMTAwNjQ0Ci0t
LSBhL2luY2x1ZGUvbGludXgvZmJjb24uaAorKysgYi9pbmNsdWRlL2xpbnV4L2ZiY29uLmgKQEAg
LTksNiArOSw5IEBAIHZvaWQgZmJjb25fZmJfdW5yZWdpc3RlcmVkKHN0cnVjdCBmYl9pbmZvICpp
bmZvKTsKIHZvaWQgZmJjb25fZmJfdW5iaW5kKHN0cnVjdCBmYl9pbmZvICppbmZvKTsKIHZvaWQg
ZmJjb25fc3VzcGVuZGVkKHN0cnVjdCBmYl9pbmZvICppbmZvKTsKIHZvaWQgZmJjb25fcmVzdW1l
ZChzdHJ1Y3QgZmJfaW5mbyAqaW5mbyk7CitpbnQgZmJjb25fbW9kZV9kZWxldGVkKHN0cnVjdCBm
Yl9pbmZvICppbmZvLAorCQkgICAgICAgc3RydWN0IGZiX3ZpZGVvbW9kZSAqbW9kZSk7Cit2b2lk
IGZiY29uX25ld19tb2RlbGlzdChzdHJ1Y3QgZmJfaW5mbyAqaW5mbyk7CiAjZWxzZQogc3RhdGlj
IGlubGluZSB2b2lkIGZiX2NvbnNvbGVfaW5pdCh2b2lkKSB7fQogc3RhdGljIGlubGluZSB2b2lk
IGZiX2NvbnNvbGVfZXhpdCh2b2lkKSB7fQpAQCAtMTcsNiArMjAsOSBAQCBzdGF0aWMgaW5saW5l
IHZvaWQgZmJjb25fZmJfdW5yZWdpc3RlcmVkKHN0cnVjdCBmYl9pbmZvICppbmZvKSB7fQogc3Rh
dGljIGlubGluZSB2b2lkIGZiY29uX2ZiX3VuYmluZChzdHJ1Y3QgZmJfaW5mbyAqaW5mbykge30K
IHN0YXRpYyBpbmxpbmUgdm9pZCBmYmNvbl9zdXNwZW5kZWQoc3RydWN0IGZiX2luZm8gKmluZm8p
IHt9CiBzdGF0aWMgaW5saW5lIHZvaWQgZmJjb25fcmVzdW1lZChzdHJ1Y3QgZmJfaW5mbyAqaW5m
bykge30KK3N0YXRpYyBpbmxpbmUgaW50IGZiY29uX21vZGVfZGVsZXRlZChzdHJ1Y3QgZmJfaW5m
byAqaW5mbywKKwkJCQkgICAgIHN0cnVjdCBmYl92aWRlb21vZGUgKm1vZGUpIHsgcmV0dXJuIDA7
IH0KK3N0YXRpYyBpbmxpbmUgdm9pZCBmYmNvbl9uZXdfbW9kZWxpc3Qoc3RydWN0IGZiX2luZm8g
KmluZm8pIHt9CiAjZW5kaWYKIAogI2VuZGlmIC8qIF9MSU5VWF9GQkNPTl9IICovCi0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
