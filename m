Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3EC5D86C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 01:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5CE6E0AB;
	Tue,  2 Jul 2019 23:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com
 [IPv6:2607:f8b0:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC1F6E0AB
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 23:43:06 +0000 (UTC)
Received: by mail-pf1-x441.google.com with SMTP id 19so227564pfa.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Jul 2019 16:43:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LTgfihGXkEgE7V7ZvRB8XdBiWcmNn66JyBkQtEriRk0=;
 b=TPwA5fy8nJ8mEMmu1Llycfngnby52ttiuwbsB3ZAzPp+EaXpxBKAJgN+Me5i9HleZc
 Rou9PX8BlOAN0FkiXHtSy5Cc1+qyvdXG9Q/lrTrFko53tX6cTbhwkf5r/XP6Yi5JcQjv
 sbkm/dpwNJM+2SK3zJpFTmOqrVBO4hDo+ydFW99vECUcvTccgG2k5OCN1V7HXrXvN52E
 zsMa90x/sDjHrvCL7mHvS0shGhM68ty1FVHiFhNpPM59NwdCDbrnJTsGt/ZzNkveSj2r
 yl3oEHOUHthsSs5f4v5em4wXyucFfSmVSQA3bRHzHIiocU8RPU3PjdPWo0FUUpUbCJwJ
 ufVw==
X-Gm-Message-State: APjAAAXCdCHD6HfHU4V+J3clcUyj6Zc8Gq1RHI0Rege7lUf66rirmugB
 Qxw0ZvRoAnc2E9O+y28ug113sg==
X-Google-Smtp-Source: APXvYqxMrtEt3V36G22mr92OvqabbK78jBsl92tu6Jwy8M05KqbMoo/X/FtN36wmj4NWP71nG0RwvA==
X-Received: by 2002:a17:90a:3344:: with SMTP id
 m62mr8497489pjb.135.1562110986433; 
 Tue, 02 Jul 2019 16:43:06 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id c26sm167611pfr.172.2019.07.02.16.43.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 16:43:05 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Date: Tue,  2 Jul 2019 16:42:57 -0700
Message-Id: <20190702234258.136349-4-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190702234258.136349-1-dbasehore@chromium.org>
References: <20190702234258.136349-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LTgfihGXkEgE7V7ZvRB8XdBiWcmNn66JyBkQtEriRk0=;
 b=L2a+LvEruMo/zpxKW+/XMxfMFGcYLx94EpJC8aEhmGfqKH9C8cHJatTddYsXQcusm3
 D/P24vPx7fkT8mrTszUpF3+qhmaXnS7zvUjJRkErCijr7jDmfGk/xxWCWFa2BdYlNg2w
 /CelQ0Bm7R/JAQTpds6GWZ4C+gZ/urmVtP6rs=
Subject: [Intel-gfx] [PATCH v4 3/4] drm/connector: Split out orientation
 quirk detection
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
Cc: Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm90IGV2ZXJ5IHBsYXRmb3JtIG5lZWRzIHF1aXJrIGRldGVjdGlvbiBmb3IgcGFuZWwgb3JpZW50
YXRpb24sIHNvCnNwbGl0IHRoZSBkcm1fY29ubmVjdG9yX2luaXRfcGFuZWxfb3JpZW50YXRpb25f
cHJvcGVydHkgaW50byB0d28KZnVuY3Rpb25zLiBPbmUgZm9yIHBsYXRmb3JtcyB3aXRob3V0IHRo
ZSBuZWVkIGZvciBxdWlya3MsIGFuZCB0aGUKb3RoZXIgZm9yIHBsYXRmb3JtcyB0aGF0IG5lZWQg
cXVpcmtzLgoKU2lnbmVkLW9mZi1ieTogRGVyZWsgQmFzZWhvcmUgPGRiYXNlaG9yZUBjaHJvbWl1
bS5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYyB8IDQ1ICsrKysrKysr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAu
YyB8ICA0ICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jICB8ICAyICstCiBpbmNs
dWRlL2RybS9kcm1fY29ubmVjdG9yLmggICAgIHwgIDIgKysKIDQgZmlsZXMgY2hhbmdlZCwgMzgg
aW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2RybV9jb25uZWN0b3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMKaW5k
ZXggZTE3NTg2YWFhODBmLi5jNGIwMWFkZjkyN2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fY29ubmVjdG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYwpA
QCAtMTg5NCwzMSArMTg5NCwyMyBAQCBFWFBPUlRfU1lNQk9MKGRybV9jb25uZWN0b3Jfc2V0X3Zy
cl9jYXBhYmxlX3Byb3BlcnR5KTsKICAqIGRybV9jb25uZWN0b3JfaW5pdF9wYW5lbF9vcmllbnRh
dGlvbl9wcm9wZXJ0eSAtCiAgKglpbml0aWFsaXplIHRoZSBjb25uZWN0ZXJzIHBhbmVsX29yaWVu
dGF0aW9uIHByb3BlcnR5CiAgKiBAY29ubmVjdG9yOiBjb25uZWN0b3IgZm9yIHdoaWNoIHRvIGlu
aXQgdGhlIHBhbmVsLW9yaWVudGF0aW9uIHByb3BlcnR5LgotICogQHdpZHRoOiB3aWR0aCBpbiBw
aXhlbHMgb2YgdGhlIHBhbmVsLCB1c2VkIGZvciBwYW5lbCBxdWlyayBkZXRlY3Rpb24KLSAqIEBo
ZWlnaHQ6IGhlaWdodCBpbiBwaXhlbHMgb2YgdGhlIHBhbmVsLCB1c2VkIGZvciBwYW5lbCBxdWly
ayBkZXRlY3Rpb24KICAqCiAgKiBUaGlzIGZ1bmN0aW9uIHNob3VsZCBvbmx5IGJlIGNhbGxlZCBm
b3IgYnVpbHQtaW4gcGFuZWxzLCBhZnRlciBzZXR0aW5nCiAgKiBjb25uZWN0b3ItPmRpc3BsYXlf
aW5mby5wYW5lbF9vcmllbnRhdGlvbiBmaXJzdCAoaWYga25vd24pLgogICoKLSAqIFRoaXMgZnVu
Y3Rpb24gd2lsbCBjaGVjayBmb3IgcGxhdGZvcm0gc3BlY2lmaWMgKGUuZy4gRE1JIGJhc2VkKSBx
dWlya3MKLSAqIG92ZXJyaWRpbmcgZGlzcGxheV9pbmZvLnBhbmVsX29yaWVudGF0aW9uIGZpcnN0
LCB0aGVuIGlmIHBhbmVsX29yaWVudGF0aW9uCi0gKiBpcyBub3QgRFJNX01PREVfUEFORUxfT1JJ
RU5UQVRJT05fVU5LTk9XTiBpdCB3aWxsIGF0dGFjaCB0aGUKLSAqICJwYW5lbCBvcmllbnRhdGlv
biIgcHJvcGVydHkgdG8gdGhlIGNvbm5lY3Rvci4KKyAqIFRoaXMgZnVuY3Rpb24gd2lsbCBjaGVj
ayBpZiB0aGUgcGFuZWxfb3JpZW50YXRpb24gaXMgbm90CisgKiBEUk1fTU9ERV9QQU5FTF9PUklF
TlRBVElPTl9VTktOT1dOLiBJZiBub3QsIGl0IHdpbGwgYXR0YWNoIHRoZSAicGFuZWwKKyAqIG9y
aWVudGF0aW9uIiBwcm9wZXJ0eSB0byB0aGUgY29ubmVjdG9yLgogICoKICAqIFJldHVybnM6CiAg
KiBaZXJvIG9uIHN1Y2Nlc3MsIG5lZ2F0aXZlIGVycm5vIG9uIGZhaWx1cmUuCiAgKi8KIGludCBk
cm1fY29ubmVjdG9yX2luaXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVydHkoCi0Jc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvciwgaW50IHdpZHRoLCBpbnQgaGVpZ2h0KQorCXN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiB7CiAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNv
bm5lY3Rvci0+ZGV2OwogCXN0cnVjdCBkcm1fZGlzcGxheV9pbmZvICppbmZvID0gJmNvbm5lY3Rv
ci0+ZGlzcGxheV9pbmZvOwogCXN0cnVjdCBkcm1fcHJvcGVydHkgKnByb3A7Ci0JaW50IG9yaWVu
dGF0aW9uX3F1aXJrOwotCi0Jb3JpZW50YXRpb25fcXVpcmsgPSBkcm1fZ2V0X3BhbmVsX29yaWVu
dGF0aW9uX3F1aXJrKHdpZHRoLCBoZWlnaHQpOwotCWlmIChvcmllbnRhdGlvbl9xdWlyayAhPSBE
Uk1fTU9ERV9QQU5FTF9PUklFTlRBVElPTl9VTktOT1dOKQotCQlpbmZvLT5wYW5lbF9vcmllbnRh
dGlvbiA9IG9yaWVudGF0aW9uX3F1aXJrOwogCiAJaWYgKGluZm8tPnBhbmVsX29yaWVudGF0aW9u
ID09IERSTV9NT0RFX1BBTkVMX09SSUVOVEFUSU9OX1VOS05PV04pCiAJCXJldHVybiAwOwpAQCAt
MTk0MSw2ICsxOTMzLDM1IEBAIGludCBkcm1fY29ubmVjdG9yX2luaXRfcGFuZWxfb3JpZW50YXRp
b25fcHJvcGVydHkoCiB9CiBFWFBPUlRfU1lNQk9MKGRybV9jb25uZWN0b3JfaW5pdF9wYW5lbF9v
cmllbnRhdGlvbl9wcm9wZXJ0eSk7CiAKKy8qKgorICogZHJtX2Nvbm5lY3Rvcl9pbml0X3BhbmVs
X29yaWVudGF0aW9uX3Byb3BlcnR5X3F1aXJrIC0KKyAqCWluaXRpYWxpemUgdGhlIGNvbm5lY3Rl
cnMgcGFuZWxfb3JpZW50YXRpb24gcHJvcGVydHkgd2l0aCBhIHF1aXJrCisgKglvdmVycmlkZQor
ICogQGNvbm5lY3RvcjogY29ubmVjdG9yIGZvciB3aGljaCB0byBpbml0IHRoZSBwYW5lbC1vcmll
bnRhdGlvbiBwcm9wZXJ0eS4KKyAqIEB3aWR0aDogd2lkdGggaW4gcGl4ZWxzIG9mIHRoZSBwYW5l
bCwgdXNlZCBmb3IgcGFuZWwgcXVpcmsgZGV0ZWN0aW9uCisgKiBAaGVpZ2h0OiBoZWlnaHQgaW4g
cGl4ZWxzIG9mIHRoZSBwYW5lbCwgdXNlZCBmb3IgcGFuZWwgcXVpcmsgZGV0ZWN0aW9uCisgKgor
ICogVGhpcyBmdW5jdGlvbiB3aWxsIGNoZWNrIGZvciBwbGF0Zm9ybSBzcGVjaWZpYyAoZS5nLiBE
TUkgYmFzZWQpIHF1aXJrcworICogb3ZlcnJpZGluZyBkaXNwbGF5X2luZm8ucGFuZWxfb3JpZW50
YXRpb24gZmlyc3QsIHRoZW4gaWYgcGFuZWxfb3JpZW50YXRpb24KKyAqIGlzIG5vdCBEUk1fTU9E
RV9QQU5FTF9PUklFTlRBVElPTl9VTktOT1dOIGl0IHdpbGwgYXR0YWNoIHRoZQorICogInBhbmVs
IG9yaWVudGF0aW9uIiBwcm9wZXJ0eSB0byB0aGUgY29ubmVjdG9yLgorICoKKyAqIFJldHVybnM6
CisgKiBaZXJvIG9uIHN1Y2Nlc3MsIG5lZ2F0aXZlIGVycm5vIG9uIGZhaWx1cmUuCisgKi8KK2lu
dCBkcm1fY29ubmVjdG9yX2luaXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVydHlfcXVpcmsoCisJ
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgaW50IHdpZHRoLCBpbnQgaGVpZ2h0KQor
eworCWludCBvcmllbnRhdGlvbl9xdWlyazsKKworCW9yaWVudGF0aW9uX3F1aXJrID0gZHJtX2dl
dF9wYW5lbF9vcmllbnRhdGlvbl9xdWlyayh3aWR0aCwgaGVpZ2h0KTsKKwlpZiAob3JpZW50YXRp
b25fcXVpcmsgIT0gRFJNX01PREVfUEFORUxfT1JJRU5UQVRJT05fVU5LTk9XTikKKwkJY29ubmVj
dG9yLT5kaXNwbGF5X2luZm8ucGFuZWxfb3JpZW50YXRpb24gPSBvcmllbnRhdGlvbl9xdWlyazsK
KworCXJldHVybiBkcm1fY29ubmVjdG9yX2luaXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVydHko
Y29ubmVjdG9yKTsKK30KK0VYUE9SVF9TWU1CT0woZHJtX2Nvbm5lY3Rvcl9pbml0X3BhbmVsX29y
aWVudGF0aW9uX3Byb3BlcnR5X3F1aXJrKTsKKwogaW50IGRybV9jb25uZWN0b3Jfc2V0X29ial9w
cm9wKHN0cnVjdCBkcm1fbW9kZV9vYmplY3QgKm9iaiwKIAkJCQkgICAgc3RydWN0IGRybV9wcm9w
ZXJ0eSAqcHJvcGVydHksCiAJCQkJICAgIHVpbnQ2NF90IHZhbHVlKQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RwLmMKaW5kZXggYjA5OWE5ZGMyOGZkLi43ZDRlNjFjZjU0NjMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHAuYwpAQCAtNzI4Miw4ICs3MjgyLDggQEAgc3RhdGljIGJvb2wgaW50ZWxfZWRwX2luaXRf
Y29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJaW50ZWxfcGFuZWxfc2V0dXBf
YmFja2xpZ2h0KGNvbm5lY3RvciwgcGlwZSk7CiAKIAlpZiAoZml4ZWRfbW9kZSkKLQkJZHJtX2Nv
bm5lY3Rvcl9pbml0X3BhbmVsX29yaWVudGF0aW9uX3Byb3BlcnR5KAotCQkJY29ubmVjdG9yLCBm
aXhlZF9tb2RlLT5oZGlzcGxheSwgZml4ZWRfbW9kZS0+dmRpc3BsYXkpOworCQlkcm1fY29ubmVj
dG9yX2luaXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVydHlfcXVpcmsoY29ubmVjdG9yLAorCQkJ
CWZpeGVkX21vZGUtPmhkaXNwbGF5LCBmaXhlZF9tb2RlLT52ZGlzcGxheSk7CiAKIAlyZXR1cm4g
dHJ1ZTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jCmluZGV4IGJmZTI4OTFlYWMzNy4uYWNhOTllY2Uw
NDVlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS92bHZfZHNpLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jCkBAIC0xNjYyLDcgKzE2NjIsNyBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9kc2lfYWRkX3Byb3BlcnRpZXMoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29u
bmVjdG9yKQogCiAJCWNvbm5lY3Rvci0+YmFzZS5kaXNwbGF5X2luZm8ucGFuZWxfb3JpZW50YXRp
b24gPQogCQkJdmx2X2RzaV9nZXRfcGFuZWxfb3JpZW50YXRpb24oY29ubmVjdG9yKTsKLQkJZHJt
X2Nvbm5lY3Rvcl9pbml0X3BhbmVsX29yaWVudGF0aW9uX3Byb3BlcnR5KAorCQlkcm1fY29ubmVj
dG9yX2luaXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVydHlfcXVpcmsoCiAJCQkJJmNvbm5lY3Rv
ci0+YmFzZSwKIAkJCQljb25uZWN0b3ItPnBhbmVsLmZpeGVkX21vZGUtPmhkaXNwbGF5LAogCQkJ
CWNvbm5lY3Rvci0+cGFuZWwuZml4ZWRfbW9kZS0+dmRpc3BsYXkpOwpkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oIGIvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCmlu
ZGV4IDQ3ZTc0OWI3NGU1Zi4uMDQ2OGZkOWE0NDE4IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9k
cm1fY29ubmVjdG9yLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCkBAIC0xMzcw
LDYgKzEzNzAsOCBAQCB2b2lkIGRybV9jb25uZWN0b3Jfc2V0X2xpbmtfc3RhdHVzX3Byb3BlcnR5
KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiB2b2lkIGRybV9jb25uZWN0b3Jfc2V0
X3Zycl9jYXBhYmxlX3Byb3BlcnR5KAogCQlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9y
LCBib29sIGNhcGFibGUpOwogaW50IGRybV9jb25uZWN0b3JfaW5pdF9wYW5lbF9vcmllbnRhdGlv
bl9wcm9wZXJ0eSgKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKTsKK2ludCBkcm1f
Y29ubmVjdG9yX2luaXRfcGFuZWxfb3JpZW50YXRpb25fcHJvcGVydHlfcXVpcmsoCiAJc3RydWN0
IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgaW50IHdpZHRoLCBpbnQgaGVpZ2h0KTsKIGludCBk
cm1fY29ubmVjdG9yX2F0dGFjaF9tYXhfYnBjX3Byb3BlcnR5KHN0cnVjdCBkcm1fY29ubmVjdG9y
ICpjb25uZWN0b3IsCiAJCQkJCSAgaW50IG1pbiwgaW50IG1heCk7Ci0tIAoyLjIyLjAuNDEwLmdk
OGZkYmUyMWI1LWdvb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
