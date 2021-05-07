Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 579F8376D69
	for <lists+intel-gfx@lfdr.de>; Sat,  8 May 2021 01:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A21396EEAC;
	Fri,  7 May 2021 23:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD496EEAC
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 May 2021 23:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620430844;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xpZNBVkzHWBgBpwD/437ZHXFplyvXE1pm0xa/Lj3R5Q=;
 b=HVGoHPMMxCrdv2y9PuPbJqyq7qy+Ye27QZJ8JgsxgEsjnlr7PmaTFNDJhb0G4VF1z+eJiU
 XyfDnGJt1deUk5cHGj3Kbyf6JGgiNtHWwJjbHCo2TFyyUedoxDEqzuCRG4fO3z/GkM2DF4
 lNpiFL2YOanONbFy5HC3CRhAbV8V2Iw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-378-Xu3iR-68M_G-dIN_2mDalQ-1; Fri, 07 May 2021 19:40:39 -0400
X-MC-Unique: Xu3iR-68M_G-dIN_2mDalQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 05F9710060C3;
 Fri,  7 May 2021 23:40:38 +0000 (UTC)
Received: from Ruby.redhat.com (ovpn-112-131.rdu2.redhat.com [10.10.112.131])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3F8A110016F4;
 Fri,  7 May 2021 23:40:35 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org
Date: Fri,  7 May 2021 19:39:47 -0400
Message-Id: <20210507233947.751846-10-lyude@redhat.com>
In-Reply-To: <20210507233947.751846-1-lyude@redhat.com>
References: <20210507233947.751846-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-gfx] [RFC v5 9/9] drm/nouveau/kms/nv50-: Add basic DPCD
 backlight support for nouveau
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
Cc: Rajeev Nandan <rajeevny@codeaurora.org>,
 Jani Nikula <jani.nikula@intel.com>, David Airlie <airlied@linux.ie>,
 open list <linux-kernel@vger.kernel.org>, greg.depoire@gmail.com,
 Ben Skeggs <bskeggs@redhat.com>, Dave Airlie <airlied@redhat.com>,
 James Jones <jajones@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBhZGRzIHN1cHBvcnQgZm9yIGNvbnRyb2xsaW5nIHBhbmVsIGJhY2tsaWdodHMgb3ZlciBl
RFAgdXNpbmcgVkVTQSdzCnN0YW5kYXJkIGJhY2tsaWdodCBjb250cm9sIGludGVyZmFjZS4gTHVj
a2lseSwgTnZpZGlhIHdhcyBjb29sIGVub3VnaCB0bwpuZXZlciBjb21lIHVwIHdpdGggdGhlaXIg
b3duIHByb3ByaWV0YXJ5IGJhY2tsaWdodCBjb250cm9sIGludGVyZmFjZSAoYXQKbGVhc3QsIG5v
dCBhbnkgdGhhdCBJIG9yIHRoZSBsYXB0b3AgbWFudWZhY3R1cmVycyBJJ3ZlIHRhbGtlZCB0byBh
cmUgYXdhcmUKb2YpLCBzbyB0aGlzIHNob3VsZCB3b3JrIGZvciBhbnkgbGFwdG9wIHBhbmVscyB3
aGljaCBzdXBwb3J0IHRoZSBWRVNBCmJhY2tsaWdodCBjb250cm9sIGludGVyZmFjZS4KCk5vdGUg
dGhhdCB3ZSBkb24ndCB5ZXQgcHJvdmlkZSB0aGUgcGFuZWwgYmFja2xpZ2h0IGZyZXF1ZW5jeSB0
byB0aGUgRFJNIERQCmJhY2tsaWdodCBoZWxwZXJzLiBUaGlzIHNob3VsZCBiZSBmaW5lIGZvciB0
aGUgdGltZSBiZWluZywgc2luY2UgaXQncyBub3QKcmVxdWlyZWQgdG8gZ2V0IGJhc2ljIGJhY2ts
aWdodCBjb250cm9scyB3b3JraW5nLgoKRm9yIHJlZmVyZW5jZTogdGhlcmUncyBzb21lIG1lbnRp
b25zIG9mIFBXTSBiYWNrbGlnaHQgdmFsdWVzIGluCm5vdXZlYXVfcmVnLmgsIGJ1dCBJJ20gbm90
IHN1cmUgdGhlc2UgYXJlIHRoZSB2YWx1ZXMgd2Ugd291bGQgd2FudCB0byB1c2UuCklmIHdlIGZp
Z3VyZSBvdXQgaG93IHRvIGdldCB0aGlzIGluZm9ybWF0aW9uIGluIHRoZSBmdXR1cmUsIHdlJ2xs
IGhhdmUgdGhlCmJlbmVmaXQgb2YgbW9yZSBncmFudWxhciBiYWNrbGlnaHQgY29udHJvbC4KClNp
Z25lZC1vZmYtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CkNjOiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAZ21haWwu
Y29tPgpDYzogZ3JlZy5kZXBvaXJlQGdtYWlsLmNvbQotLS0KIGRyaXZlcnMvZ3B1L2RybS9ub3V2
ZWF1L2Rpc3BudjUwL2Rpc3AuYyAgICAgfCAgMjggKysrKwogZHJpdmVycy9ncHUvZHJtL25vdXZl
YXUvbm91dmVhdV9iYWNrbGlnaHQuYyB8IDE2NiArKysrKysrKysrKysrKysrKystLQogZHJpdmVy
cy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9jb25uZWN0b3IuaCB8ICAgOSArLQogZHJpdmVycy9n
cHUvZHJtL25vdXZlYXUvbm91dmVhdV9lbmNvZGVyLmggICB8ICAgMSArCiA0IGZpbGVzIGNoYW5n
ZWQsIDE4NiBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vbm91dmVhdS9kaXNwbnY1MC9kaXNwLmMgYi9kcml2ZXJzL2dwdS9kcm0vbm91
dmVhdS9kaXNwbnY1MC9kaXNwLmMKaW5kZXggYzQ2ZDAzNzRiNmU2Li44MGFkMmQ2YjdlNGIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL2Rpc3AuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vbm91dmVhdS9kaXNwbnY1MC9kaXNwLmMKQEAgLTMxLDYgKzMxLDcgQEAK
ICNpbmNsdWRlIDxsaW51eC9kbWEtbWFwcGluZy5oPgogI2luY2x1ZGUgPGxpbnV4L2hkbWkuaD4K
ICNpbmNsdWRlIDxsaW51eC9jb21wb25lbnQuaD4KKyNpbmNsdWRlIDxsaW51eC9pb3BvbGwuaD4K
IAogI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNf
aGVscGVyLmg+CkBAIC0xNjQ4LDE1ICsxNjQ5LDMwIEBAIG52NTBfc29yX3VwZGF0ZShzdHJ1Y3Qg
bm91dmVhdV9lbmNvZGVyICpudl9lbmNvZGVyLCB1OCBoZWFkLAogCWNvcmUtPmZ1bmMtPnNvci0+
Y3RybChjb3JlLCBudl9lbmNvZGVyLT5vciwgbnZfZW5jb2Rlci0+Y3RybCwgYXN5aCk7CiB9CiAK
Ky8qIFRPRE86IFNob3VsZCB3ZSBleHRlbmQgdGhpcyB0byBQV00tb25seSBiYWNrbGlnaHRzPwor
ICogQXMgd2VsbCwgc2hvdWxkIHdlIGFkZCBhIERSTSBoZWxwZXIgZm9yIHdhaXRpbmcgZm9yIHRo
ZSBiYWNrbGlnaHQgdG8gYWNrbm93bGVkZ2UKKyAqIHRoZSBwYW5lbCBiYWNrbGlnaHQgaGFzIGJl
ZW4gc2h1dCBvZmY/IEludGVsIGRvZXNuJ3Qgc2VlbSB0byBkbyB0aGlzLCBhbmQgdXNlcyBhCisg
KiBmaXhlZCB0aW1lIGRlbGF5IGZyb20gdGhlIHZiaW9z4oCmCisgKi8KIHN0YXRpYyB2b2lkCiBu
djUwX3Nvcl9hdG9taWNfZGlzYWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsIHN0cnVj
dCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKIAlzdHJ1Y3Qgbm91dmVhdV9lbmNvZGVyICpu
dl9lbmNvZGVyID0gbm91dmVhdV9lbmNvZGVyKGVuY29kZXIpOworCXN0cnVjdCBub3V2ZWF1X2Ry
bSAqZHJtID0gbm91dmVhdV9kcm0obnZfZW5jb2Rlci0+YmFzZS5iYXNlLmRldik7CiAJc3RydWN0
IG5vdXZlYXVfY3J0YyAqbnZfY3J0YyA9IG5vdXZlYXVfY3J0Yyhudl9lbmNvZGVyLT5jcnRjKTsK
IAlzdHJ1Y3Qgbm91dmVhdV9jb25uZWN0b3IgKm52X2Nvbm5lY3RvciA9IG52NTBfb3V0cF9nZXRf
b2xkX2Nvbm5lY3RvcihzdGF0ZSwgbnZfZW5jb2Rlcik7CisJc3RydWN0IG5vdXZlYXVfYmFja2xp
Z2h0ICpiYWNrbGlnaHQgPSBudl9jb25uZWN0b3ItPmJhY2tsaWdodDsKIAlzdHJ1Y3QgZHJtX2Rw
X2F1eCAqYXV4ID0gJm52X2Nvbm5lY3Rvci0+YXV4OworCWludCByZXQ7CiAJdTggcHdyOwogCisJ
aWYgKGJhY2tsaWdodCAmJiBiYWNrbGlnaHQtPnVzZXNfZHBjZCkgeworCQlyZXQgPSBkcm1fZWRw
X2JhY2tsaWdodF9kaXNhYmxlKGF1eCwgJmJhY2tsaWdodC0+ZWRwX2luZm8pOworCQlpZiAocmV0
IDwgMCkKKwkJCU5WX0VSUk9SKGRybSwgIkZhaWxlZCB0byBkaXNhYmxlIGJhY2tsaWdodCBvbiBb
Q09OTkVDVE9SOiVkOiVzXTogJWRcbiIsCisJCQkJIG52X2Nvbm5lY3Rvci0+YmFzZS5iYXNlLmlk
LCBudl9jb25uZWN0b3ItPmJhc2UubmFtZSwgcmV0KTsKKwl9CisKIAlpZiAobnZfZW5jb2Rlci0+
ZGNiLT50eXBlID09IERDQl9PVVRQVVRfRFApIHsKIAkJaW50IHJldCA9IGRybV9kcF9kcGNkX3Jl
YWRiKGF1eCwgRFBfU0VUX1BPV0VSLCAmcHdyKTsKIApAQCAtMTY5NSw2ICsxNzExLDkgQEAgbnY1
MF9zb3JfYXRvbWljX2VuYWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsIHN0cnVjdCBk
cm1fYXRvbWljX3N0YXRlICpzdGEKIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gZW5jb2Rlci0+
ZGV2OwogCXN0cnVjdCBub3V2ZWF1X2RybSAqZHJtID0gbm91dmVhdV9kcm0oZGV2KTsKIAlzdHJ1
Y3Qgbm91dmVhdV9jb25uZWN0b3IgKm52X2Nvbm5lY3RvcjsKKyNpZmRlZiBDT05GSUdfRFJNX05P
VVZFQVVfQkFDS0xJR0hUCisJc3RydWN0IG5vdXZlYXVfYmFja2xpZ2h0ICpiYWNrbGlnaHQ7Cisj
ZW5kaWYKIAlzdHJ1Y3QgbnZiaW9zICpiaW9zID0gJmRybS0+dmJpb3M7CiAJYm9vbCBoZGEgPSBm
YWxzZTsKIAl1OCBwcm90byA9IE5WNTA3RF9TT1JfU0VUX0NPTlRST0xfUFJPVE9DT0xfQ1VTVE9N
OwpAQCAtMTc2OSw2ICsxNzg4LDE0IEBAIG52NTBfc29yX2F0b21pY19lbmFibGUoc3RydWN0IGRy
bV9lbmNvZGVyICplbmNvZGVyLCBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhCiAJCQlwcm90
byA9IE5WODg3RF9TT1JfU0VUX0NPTlRST0xfUFJPVE9DT0xfRFBfQjsKIAogCQludjUwX2F1ZGlv
X2VuYWJsZShlbmNvZGVyLCBudl9jcnRjLCBudl9jb25uZWN0b3IsIHN0YXRlLCBtb2RlKTsKKwor
I2lmZGVmIENPTkZJR19EUk1fTk9VVkVBVV9CQUNLTElHSFQKKwkJYmFja2xpZ2h0ID0gbnZfY29u
bmVjdG9yLT5iYWNrbGlnaHQ7CisJCWlmIChiYWNrbGlnaHQgJiYgYmFja2xpZ2h0LT51c2VzX2Rw
Y2QpCisJCQlkcm1fZWRwX2JhY2tsaWdodF9lbmFibGUoJm52X2Nvbm5lY3Rvci0+YXV4LCAmYmFj
a2xpZ2h0LT5lZHBfaW5mbywKKwkJCQkJCSAodTE2KWJhY2tsaWdodC0+ZGV2LT5wcm9wcy5icmln
aHRuZXNzKTsKKyNlbmRpZgorCiAJCWJyZWFrOwogCWRlZmF1bHQ6CiAJCUJVRygpOwpAQCAtMjI5
NCw2ICsyMzIxLDcgQEAgbnY1MF9kaXNwX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QgZHJtX2F0
b21pY19zdGF0ZSAqc3RhdGUpCiAJbnY1MF9jcmNfYXRvbWljX3N0YXJ0X3JlcG9ydGluZyhzdGF0
ZSk7CiAJaWYgKCFmbHVzaGVkKQogCQludjUwX2NyY19hdG9taWNfcmVsZWFzZV9ub3RpZmllcl9j
b250ZXh0cyhzdGF0ZSk7CisKIAlkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfaHdfZG9uZShzdGF0
ZSk7CiAJZHJtX2F0b21pY19oZWxwZXJfY2xlYW51cF9wbGFuZXMoZGV2LCBzdGF0ZSk7CiAJZHJt
X2F0b21pY19oZWxwZXJfY29tbWl0X2NsZWFudXBfZG9uZShzdGF0ZSk7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2JhY2tsaWdodC5jIGIvZHJpdmVycy9ncHUv
ZHJtL25vdXZlYXUvbm91dmVhdV9iYWNrbGlnaHQuYwppbmRleCA3MmYzNWEyYmFiY2IuLjFjYmQ3
MWFiYzgwYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9iYWNr
bGlnaHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2JhY2tsaWdodC5j
CkBAIC00MiwxMSArNDIsNiBAQAogc3RhdGljIHN0cnVjdCBpZGEgYmxfaWRhOwogI2RlZmluZSBC
TF9OQU1FX1NJWkUgMTUgLy8gMTIgZm9yIG5hbWUgKyAyIGZvciBkaWdpdHMgKyAxIGZvciAnXDAn
CiAKLXN0cnVjdCBub3V2ZWF1X2JhY2tsaWdodCB7Ci0Jc3RydWN0IGJhY2tsaWdodF9kZXZpY2Ug
KmRldjsKLQlpbnQgaWQ7Ci19OwotCiBzdGF0aWMgYm9vbAogbm91dmVhdV9nZXRfYmFja2xpZ2h0
X25hbWUoY2hhciBiYWNrbGlnaHRfbmFtZVtCTF9OQU1FX1NJWkVdLAogCQkJICAgc3RydWN0IG5v
dXZlYXVfYmFja2xpZ2h0ICpibCkKQEAgLTE0OCw2ICsxNDMsOTggQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBiYWNrbGlnaHRfb3BzIG52NTBfYmxfb3BzID0gewogCS51cGRhdGVfc3RhdHVzID0gbnY1
MF9zZXRfaW50ZW5zaXR5LAogfTsKIAorLyoKKyAqIGVEUCBicmlnaHRuZXNzIGNhbGxiYWNrcyBu
ZWVkIHRvIGhhcHBlbiB1bmRlciBsb2NrLCBzaW5jZSB3ZSBuZWVkIHRvCisgKiBlbmFibGUvZGlz
YWJsZSB0aGUgYmFja2xpZ2h0IG91cnNlbHZlcyBmb3IgbW9kZXNldHMKKyAqLworc3RhdGljIGlu
dAorbnY1MF9lZHBfZ2V0X2JyaWdodG5lc3Moc3RydWN0IGJhY2tsaWdodF9kZXZpY2UgKmJkKQor
eworCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSBkZXZfZ2V0X2RydmRhdGEoYmQt
PmRldi5wYXJlbnQpOworCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjb25uZWN0b3ItPmRldjsK
KwlzdHJ1Y3QgZHJtX2NydGMgKmNydGM7CisJc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4
IGN0eDsKKwlpbnQgcmV0ID0gMDsKKworCWRybV9tb2Rlc2V0X2FjcXVpcmVfaW5pdCgmY3R4LCAw
KTsKKworcmV0cnk6CisJcmV0ID0gZHJtX21vZGVzZXRfbG9jaygmZGV2LT5tb2RlX2NvbmZpZy5j
b25uZWN0aW9uX211dGV4LCAmY3R4KTsKKwlpZiAocmV0ID09IC1FREVBRExLKQorCQlnb3RvIGRl
YWRsb2NrOworCWVsc2UgaWYgKHJldCA8IDApCisJCWdvdG8gb3V0OworCisJY3J0YyA9IGNvbm5l
Y3Rvci0+c3RhdGUtPmNydGM7CisJaWYgKCFjcnRjKQorCQlnb3RvIG91dDsKKworCXJldCA9IGRy
bV9tb2Rlc2V0X2xvY2soJmNydGMtPm11dGV4LCAmY3R4KTsKKwlpZiAocmV0ID09IC1FREVBRExL
KQorCQlnb3RvIGRlYWRsb2NrOworCWVsc2UgaWYgKHJldCA8IDApCisJCWdvdG8gb3V0OworCisJ
aWYgKCFjcnRjLT5zdGF0ZS0+YWN0aXZlKQorCQlnb3RvIG91dDsKKworCXJldCA9IGJkLT5wcm9w
cy5icmlnaHRuZXNzOworb3V0OgorCWRybV9tb2Rlc2V0X2Ryb3BfbG9ja3MoJmN0eCk7CisJZHJt
X21vZGVzZXRfYWNxdWlyZV9maW5pKCZjdHgpOworCXJldHVybiByZXQ7CitkZWFkbG9jazoKKwlk
cm1fbW9kZXNldF9iYWNrb2ZmKCZjdHgpOworCWdvdG8gcmV0cnk7Cit9CisKK3N0YXRpYyBpbnQK
K252NTBfZWRwX3NldF9icmlnaHRuZXNzKHN0cnVjdCBiYWNrbGlnaHRfZGV2aWNlICpiZCkKK3sK
KwlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gZGV2X2dldF9kcnZkYXRhKGJkLT5k
ZXYucGFyZW50KTsKKwlzdHJ1Y3Qgbm91dmVhdV9jb25uZWN0b3IgKm52X2Nvbm5lY3RvciA9IG5v
dXZlYXVfY29ubmVjdG9yKGNvbm5lY3Rvcik7CisJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNv
bm5lY3Rvci0+ZGV2OworCXN0cnVjdCBkcm1fY3J0YyAqY3J0YzsKKwlzdHJ1Y3QgZHJtX2RwX2F1
eCAqYXV4ID0gJm52X2Nvbm5lY3Rvci0+YXV4OworCXN0cnVjdCBub3V2ZWF1X2JhY2tsaWdodCAq
bnZfYmwgPSBudl9jb25uZWN0b3ItPmJhY2tsaWdodDsKKwlzdHJ1Y3QgZHJtX21vZGVzZXRfYWNx
dWlyZV9jdHggY3R4OworCWludCByZXQgPSAwOworCisJZHJtX21vZGVzZXRfYWNxdWlyZV9pbml0
KCZjdHgsIDApOworcmV0cnk6CisJcmV0ID0gZHJtX21vZGVzZXRfbG9jaygmZGV2LT5tb2RlX2Nv
bmZpZy5jb25uZWN0aW9uX211dGV4LCAmY3R4KTsKKwlpZiAocmV0ID09IC1FREVBRExLKQorCQln
b3RvIGRlYWRsb2NrOworCWVsc2UgaWYgKHJldCA8IDApCisJCWdvdG8gb3V0OworCisJY3J0YyA9
IGNvbm5lY3Rvci0+c3RhdGUtPmNydGM7CisJaWYgKCFjcnRjKQorCQlnb3RvIG91dDsKKworCXJl
dCA9IGRybV9tb2Rlc2V0X2xvY2soJmNydGMtPm11dGV4LCAmY3R4KTsKKwlpZiAocmV0ID09IC1F
REVBRExLKQorCQlnb3RvIGRlYWRsb2NrOworCWVsc2UgaWYgKHJldCA8IDApCisJCWdvdG8gb3V0
OworCisJaWYgKGNydGMtPnN0YXRlLT5hY3RpdmUpCisJCXJldCA9IGRybV9lZHBfYmFja2xpZ2h0
X3NldF9sZXZlbChhdXgsICZudl9ibC0+ZWRwX2luZm8sIGJkLT5wcm9wcy5icmlnaHRuZXNzKTsK
Kworb3V0OgorCWRybV9tb2Rlc2V0X2Ryb3BfbG9ja3MoJmN0eCk7CisJZHJtX21vZGVzZXRfYWNx
dWlyZV9maW5pKCZjdHgpOworCXJldHVybiByZXQ7CitkZWFkbG9jazoKKwlkcm1fbW9kZXNldF9i
YWNrb2ZmKCZjdHgpOworCWdvdG8gcmV0cnk7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgYmFj
a2xpZ2h0X29wcyBudjUwX2VkcF9ibF9vcHMgPSB7CisJLmdldF9icmlnaHRuZXNzID0gbnY1MF9l
ZHBfZ2V0X2JyaWdodG5lc3MsCisJLnVwZGF0ZV9zdGF0dXMgPSBudjUwX2VkcF9zZXRfYnJpZ2h0
bmVzcywKK307CisKIHN0YXRpYyBpbnQKIG52YTNfZ2V0X2ludGVuc2l0eShzdHJ1Y3QgYmFja2xp
Z2h0X2RldmljZSAqYmQpCiB7CkBAIC0xOTQsOCArMjgxLDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgYmFja2xpZ2h0X29wcyBudmEzX2JsX29wcyA9IHsKIAkudXBkYXRlX3N0YXR1cyA9IG52YTNf
c2V0X2ludGVuc2l0eSwKIH07CiAKKy8qIEZJWE1FOiBwZXJmb3JtIGJhY2tsaWdodCBwcm9iaW5n
IGZvciBlRFAgX2JlZm9yZV8gdGhpcywgdGhpcyBvbmx5IGdldHMgY2FsbGVkIGFmdGVyIGNvbm5l
Y3RvcgorICogcmVnaXN0cmF0aW9uIHdoaWNoIGhhcHBlbnMgYWZ0ZXIgdGhlIGluaXRpYWwgbW9k
ZXNldAorICovCiBzdGF0aWMgaW50Ci1udjUwX2JhY2tsaWdodF9pbml0KHN0cnVjdCBub3V2ZWF1
X2VuY29kZXIgKm52X2VuY29kZXIsCitudjUwX2JhY2tsaWdodF9pbml0KHN0cnVjdCBub3V2ZWF1
X2JhY2tsaWdodCAqYmwsCisJCSAgICBzdHJ1Y3Qgbm91dmVhdV9jb25uZWN0b3IgKm52X2Nvbm4s
CisJCSAgICBzdHJ1Y3Qgbm91dmVhdV9lbmNvZGVyICpudl9lbmNvZGVyLAogCQkgICAgc3RydWN0
IGJhY2tsaWdodF9wcm9wZXJ0aWVzICpwcm9wcywKIAkJICAgIGNvbnN0IHN0cnVjdCBiYWNrbGln
aHRfb3BzICoqb3BzKQogewpAQCAtMjA1LDYgKzI5Nyw0MSBAQCBudjUwX2JhY2tsaWdodF9pbml0
KHN0cnVjdCBub3V2ZWF1X2VuY29kZXIgKm52X2VuY29kZXIsCiAJaWYgKCFudmlmX3JkMzIoZGV2
aWNlLCBOVjUwX1BESVNQX1NPUl9QV01fQ1RMKGZmcyhudl9lbmNvZGVyLT5kY2ItPm9yKSAtIDEp
KSkKIAkJcmV0dXJuIC1FTk9ERVY7CiAKKwlpZiAobnZfY29ubi0+dHlwZSA9PSBEQ0JfQ09OTkVD
VE9SX2VEUCkgeworCQlpbnQgcmV0OworCQl1MTYgY3VycmVudF9sZXZlbDsKKwkJdTggZWRwX2Rw
Y2RbRURQX0RJU1BMQVlfQ1RMX0NBUF9TSVpFXTsKKwkJdTggY3VycmVudF9tb2RlOworCisJCXJl
dCA9IGRybV9kcF9kcGNkX3JlYWQoJm52X2Nvbm4tPmF1eCwgRFBfRURQX0RQQ0RfUkVWLCBlZHBf
ZHBjZCwKKwkJCQkgICAgICAgRURQX0RJU1BMQVlfQ1RMX0NBUF9TSVpFKTsKKwkJaWYgKHJldCA8
IDApCisJCQlyZXR1cm4gcmV0OworCisJCWlmIChkcm1fZWRwX2JhY2tsaWdodF9zdXBwb3J0ZWQo
ZWRwX2RwY2QpKSB7CisJCQlOVl9ERUJVRyhkcm0sICJEUENEIGJhY2tsaWdodCBjb250cm9scyBz
dXBwb3J0ZWQgb24gJXNcbiIsCisJCQkJIG52X2Nvbm4tPmJhc2UubmFtZSk7CisKKwkJCXJldCA9
IGRybV9lZHBfYmFja2xpZ2h0X2luaXQoJm52X2Nvbm4tPmF1eCwgJmJsLT5lZHBfaW5mbywgMCwg
ZWRwX2RwY2QsCisJCQkJCQkgICAgICZjdXJyZW50X2xldmVsLCAmY3VycmVudF9tb2RlKTsKKwkJ
CWlmIChyZXQgPCAwKQorCQkJCXJldHVybiByZXQ7CisKKwkJCXJldCA9IGRybV9lZHBfYmFja2xp
Z2h0X2VuYWJsZSgmbnZfY29ubi0+YXV4LCAmYmwtPmVkcF9pbmZvLCBjdXJyZW50X2xldmVsKTsK
KwkJCWlmIChyZXQgPCAwKSB7CisJCQkJTlZfRVJST1IoZHJtLCAiRmFpbGVkIHRvIGVuYWJsZSBi
YWNrbGlnaHQgb24gJXM6ICVkXG4iLAorCQkJCQkgbnZfY29ubi0+YmFzZS5uYW1lLCByZXQpOwor
CQkJCXJldHVybiByZXQ7CisJCQl9CisKKwkJCSpvcHMgPSAmbnY1MF9lZHBfYmxfb3BzOworCQkJ
cHJvcHMtPmJyaWdodG5lc3MgPSBjdXJyZW50X2xldmVsOworCQkJcHJvcHMtPm1heF9icmlnaHRu
ZXNzID0gYmwtPmVkcF9pbmZvLm1heDsKKwkJCWJsLT51c2VzX2RwY2QgPSB0cnVlOworCQkJcmV0
dXJuIDA7CisJCX0KKwl9CisKIAlpZiAoZHJtLT5jbGllbnQuZGV2aWNlLmluZm8uY2hpcHNldCA8
PSAweGEwIHx8CiAJICAgIGRybS0+Y2xpZW50LmRldmljZS5pbmZvLmNoaXBzZXQgPT0gMHhhYSB8
fAogCSAgICBkcm0tPmNsaWVudC5kZXZpY2UuaW5mby5jaGlwc2V0ID09IDB4YWMpCkBAIC0yNDUs
NiArMzcyLDEwIEBAIG5vdXZlYXVfYmFja2xpZ2h0X2luaXQoc3RydWN0IGRybV9jb25uZWN0b3Ig
KmNvbm5lY3RvcikKIAlpZiAoIW52X2VuY29kZXIpCiAJCXJldHVybiAwOwogCisJYmwgPSBremFs
bG9jKHNpemVvZigqYmwpLCBHRlBfS0VSTkVMKTsKKwlpZiAoIWJsKQorCQlyZXR1cm4gLUVOT01F
TTsKKwogCXN3aXRjaCAoZGV2aWNlLT5pbmZvLmZhbWlseSkgewogCWNhc2UgTlZfREVWSUNFX0lO
Rk9fVjBfQ1VSSUU6CiAJCXJldCA9IG52NDBfYmFja2xpZ2h0X2luaXQobnZfZW5jb2RlciwgJnBy
b3BzLCAmb3BzKTsKQEAgLTI1NywyMCArMzg4LDE5IEBAIG5vdXZlYXVfYmFja2xpZ2h0X2luaXQo
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAljYXNlIE5WX0RFVklDRV9JTkZPX1Yw
X1ZPTFRBOgogCWNhc2UgTlZfREVWSUNFX0lORk9fVjBfVFVSSU5HOgogCWNhc2UgTlZfREVWSUNF
X0lORk9fVjBfQU1QRVJFOiAvL1hYWDogbm90IGNvbmZpcm1lZAotCQlyZXQgPSBudjUwX2JhY2ts
aWdodF9pbml0KG52X2VuY29kZXIsICZwcm9wcywgJm9wcyk7CisJCXJldCA9IG52NTBfYmFja2xp
Z2h0X2luaXQoYmwsIG5vdXZlYXVfY29ubmVjdG9yKGNvbm5lY3RvciksCisJCQkJCSAgbnZfZW5j
b2RlciwgJnByb3BzLCAmb3BzKTsKIAkJYnJlYWs7CiAJZGVmYXVsdDoKLQkJcmV0dXJuIDA7CisJ
CXJldCA9IDA7CisJCWdvdG8gZmFpbF9hbGxvYzsKIAl9CiAKLQlpZiAocmV0ID09IC1FTk9ERVYp
Ci0JCXJldHVybiAwOwotCWVsc2UgaWYgKHJldCkKLQkJcmV0dXJuIHJldDsKLQotCWJsID0ga3ph
bGxvYyhzaXplb2YoKmJsKSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCFibCkKLQkJcmV0dXJuIC1FTk9N
RU07CisJaWYgKHJldCkgeworCQlpZiAocmV0ID09IC1FTk9ERVYpCisJCQlyZXQgPSAwOworCQln
b3RvIGZhaWxfYWxsb2M7CisJfQogCiAJaWYgKCFub3V2ZWF1X2dldF9iYWNrbGlnaHRfbmFtZShi
YWNrbGlnaHRfbmFtZSwgYmwpKSB7CiAJCU5WX0VSUk9SKGRybSwgIkZhaWxlZCB0byByZXRyaWV2
ZSBhIHVuaXF1ZSBuYW1lIGZvciB0aGUgYmFja2xpZ2h0IGludGVyZmFjZVxuIik7CkBAIC0yODcs
NyArNDE3LDkgQEAgbm91dmVhdV9iYWNrbGlnaHRfaW5pdChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAq
Y29ubmVjdG9yKQogCX0KIAogCW5vdXZlYXVfY29ubmVjdG9yKGNvbm5lY3RvciktPmJhY2tsaWdo
dCA9IGJsOwotCWJsLT5kZXYtPnByb3BzLmJyaWdodG5lc3MgPSBibC0+ZGV2LT5vcHMtPmdldF9i
cmlnaHRuZXNzKGJsLT5kZXYpOworCWlmICghYmwtPmRldi0+cHJvcHMuYnJpZ2h0bmVzcykKKwkJ
YmwtPmRldi0+cHJvcHMuYnJpZ2h0bmVzcyA9CisJCQlibC0+ZGV2LT5vcHMtPmdldF9icmlnaHRu
ZXNzKGJsLT5kZXYpOwogCWJhY2tsaWdodF91cGRhdGVfc3RhdHVzKGJsLT5kZXYpOwogCiAJcmV0
dXJuIDA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2Nvbm5l
Y3Rvci5oIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9jb25uZWN0b3IuaAppbmRl
eCBkMGI4NTljNGE4MGUuLjQwZjkwZTM1MzU0MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L25vdXZlYXUvbm91dmVhdV9jb25uZWN0b3IuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVh
dS9ub3V2ZWF1X2Nvbm5lY3Rvci5oCkBAIC00Niw3ICs0NiwxNCBAQCBzdHJ1Y3QgbnZrbV9pMmNf
cG9ydDsKIHN0cnVjdCBkY2Jfb3V0cHV0OwogCiAjaWZkZWYgQ09ORklHX0RSTV9OT1VWRUFVX0JB
Q0tMSUdIVAotc3RydWN0IG5vdXZlYXVfYmFja2xpZ2h0Oworc3RydWN0IG5vdXZlYXVfYmFja2xp
Z2h0IHsKKwlzdHJ1Y3QgYmFja2xpZ2h0X2RldmljZSAqZGV2OworCisJc3RydWN0IGRybV9lZHBf
YmFja2xpZ2h0X2luZm8gZWRwX2luZm87CisJYm9vbCB1c2VzX2RwY2QgOiAxOworCisJaW50IGlk
OworfTsKICNlbmRpZgogCiAjZGVmaW5lIG5vdXZlYXVfY29ubl9hdG9tKHApICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXApkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9lbmNvZGVyLmggYi9kcml2ZXJzL2dwdS9kcm0v
bm91dmVhdS9ub3V2ZWF1X2VuY29kZXIuaAppbmRleCAxZmZjYzBhNDkxZmQuLjc3YzJmZWQ3NmU4
YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9lbmNvZGVyLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9lbmNvZGVyLmgKQEAgLTMwLDYg
KzMwLDcgQEAKICNpbmNsdWRlIDxzdWJkZXYvYmlvcy9kY2IuaD4KIAogI2luY2x1ZGUgPGRybS9k
cm1fZW5jb2Rlcl9zbGF2ZS5oPgorI2luY2x1ZGUgPGRybS9kcm1fZHBfaGVscGVyLmg+CiAjaW5j
bHVkZSA8ZHJtL2RybV9kcF9tc3RfaGVscGVyLmg+CiAjaW5jbHVkZSAiZGlzcG52MDQvZGlzcC5o
Igogc3RydWN0IG52NTBfaGVhZF9hdG9tOwotLSAKMi4zMC4yCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
