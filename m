Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEBD3D0E0C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 13:46:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 509A86E8A4;
	Wed, 21 Jul 2021 11:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 205C46E8A4;
 Wed, 21 Jul 2021 11:46:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="211419358"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211419358"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 04:45:59 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="576666657"
Received: from jduplooy-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.232.177])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 04:45:57 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jul 2021 12:44:48 +0100
Message-Id: <20210721114449.196015-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: document caching related bits
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VHJ5IHRvIGRvY3VtZW50IHRoZSBvYmplY3QgY2FjaGluZyByZWxhdGVkIGJpdHMsIGxpa2UgY2Fj
aGVfY29oZXJlbnQgYW5kCmNhY2hlX2RpcnR5LgoKdjIoVmlsbGUpOgogLSBBcyBwb2ludGVkIG91
dCBieSBWaWxsZSwgZml4IHRoZSBjb21wbGV0ZWx5IGluY29ycmVjdCBhc3N1bXB0aW9ucwogICBh
Ym91dCB0aGUgInBhcnRpYWwiIGNvaGVyZW5jeSBvbiBzaGFyZWQgTExDIHBsYXRmb3Jtcy4KClN1
Z2dlc3RlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KU2lnbmVk
LW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1pa2EgS3VvcHBh
bGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oICB8IDE3MyArKysrKysrKysrKysrKysrKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAgOSAtCiAyIGZp
bGVzIGNoYW5nZWQsIDE2OSBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKaW5kZXggZWYz
ZGUyYWU5NzIzLi5hODA5NDI0YmM4YzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKQEAgLTkyLDYgKzkyLDc2IEBAIHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0X29wcyB7CiAJY29uc3QgY2hhciAqbmFtZTsgLyogZnJpZW5kbHkgbmFt
ZSBmb3IgZGVidWcsIGUuZy4gbG9ja2RlcCBjbGFzc2VzICovCiB9OwogCisvKioKKyAqIGVudW0g
aTkxNV9jYWNoZV9sZXZlbCAtIFRoZSBzdXBwb3J0ZWQgR1RUIGNhY2hpbmcgdmFsdWVzIGZvciBz
eXN0ZW0gbWVtb3J5CisgKiBwYWdlcy4KKyAqCisgKiBUaGVzZSB0cmFuc2xhdGUgdG8gc29tZSBz
cGVjaWFsIEdUVCBQVEUgYml0cyB3aGVuIGJpbmRpbmcgcGFnZXMgaW50byBzb21lCisgKiBhZGRy
ZXNzIHNwYWNlLiBJdCBhbHNvIGRldGVybWluZXMgd2hldGhlciBhbiBvYmplY3QsIG9yIHJhdGhl
ciBpdHMgcGFnZXMgYXJlCisgKiBjb2hlcmVudCB3aXRoIHRoZSBHUFUsIHdoZW4gYWxzbyByZWFk
aW5nIG9yIHdyaXRpbmcgdGhyb3VnaCB0aGUgQ1BVIGNhY2hlCisgKiB3aXRoIHRob3NlIHBhZ2Vz
LgorICoKKyAqIFVzZXJzcGFjZSBjYW4gYWxzbyBjb250cm9sIHRoaXMgdGhyb3VnaCBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX2NhY2hpbmcuCisgKi8KK2VudW0gaTkxNV9jYWNoZV9sZXZlbCB7CisJLyoq
CisJICogQEk5MTVfQ0FDSEVfTk9ORToKKwkgKgorCSAqIE5vdCBjb2hlcmVudCB3aXRoIHRoZSBD
UFUgY2FjaGUuIElmIHRoZSBjYWNoZSBpcyBkaXJ0eSBhbmQgd2UgbmVlZAorCSAqIHRoZSB1bmRl
cmx5aW5nIHBhZ2VzIHRvIGJlIGNvaGVyZW50IHdpdGggc29tZSBsYXRlciBHUFUgYWNjZXNzIHRo
ZW4KKwkgKiB3ZSBuZWVkIHRvIG1hbnVhbGx5IGZsdXNoIHRoZSBwYWdlcy4KKwkgKgorCSAqIE5v
dGUgdGhhdCBvbiBzaGFyZWQgTExDIHBsYXRmb3JtcyByZWFkcyBhbmQgd3JpdGVzIHRocm91Z2gg
dGhlIENQVQorCSAqIGNhY2hlIGFyZSBzdGlsbCBjb2hlcmVudCBldmVuIHdpdGggdGhpcyBzZXR0
aW5nLiBTZWUgYWxzbworCSAqICZkcm1faTkxNV9nZW1fb2JqZWN0LmNhY2hlX2NvaGVyZW50IGZv
ciBtb3JlIGRldGFpbHMuCisJICoKKwkgKiBOb3RlIHRoYXQgb24gcGxhdGZvcm1zIHdpdGggYSBz
aGFyZWQgTExDIHRoaXMgc2hvdWxkIGlkZWFsbHkgb25seSBiZQorCSAqIHVzZWQgZm9yIHNjYW5v
dXQgc3VyZmFjZXMsIG90aGVyd2lzZSB3ZSBlbmQgdXAgb3Zlci1mbHVzaGluZyBpbiBzb21lCisJ
ICogcGxhY2VzLgorCSAqLworCUk5MTVfQ0FDSEVfTk9ORSA9IDAsCisJLyoqCisJICogQEk5MTVf
Q0FDSEVfTExDOgorCSAqCisJICogQ29oZXJlbnQgd2l0aCB0aGUgQ1BVIGNhY2hlLiBJZiB0aGUg
Y2FjaGUgaXMgZGlydHksIHRoZW4gdGhlIEdQVSB3aWxsCisJICogZW5zdXJlIHRoYXQgYWNjZXNz
IHJlbWFpbnMgY29oZXJlbnQsIHdoZW4gYm90aCByZWFkaW5nIGFuZCB3cml0aW5nCisJICogdGhy
b3VnaCB0aGUgQ1BVIGNhY2hlLgorCSAqCisJICogTm90IHVzZWQgZm9yIHNjYW5vdXQgc3VyZmFj
ZXMuCisJICoKKwkgKiBBcHBsaWVzIHRvIGJvdGggcGxhdGZvcm1zIHdpdGggc2hhcmVkIExMQyhI
QVNfTExDKSwgYW5kIHNub29waW5nCisJICogYmFzZWQgcGxhdGZvcm1zKEhBU19TTk9PUCkuCisJ
ICoKKwkgKiBUaGlzIHNob3VsZCBiZSB0aGUgZGVmYXVsdCBmb3IgcGxhdGZvcm1zIHdoaWNoIHNo
YXJlIHRoZSBMTEMgd2l0aCB0aGUKKwkgKiBDUFUuIFRoZSBvbmx5IGV4Y2VwdGlvbiBpcyBzY2Fu
b3V0IG9iamVjdHMsIHdoZXJlIHRoZSBkaXNwbGF5IGVuZ2luZQorCSAqIGlzIG5vdCBjb2hlcmVu
dCB3aXRoIHRoZSBMTEMuIEZvciBzdWNoIG9iamVjdHMgSTkxNV9DQUNIRV9OT05FIG9yCisJICog
STkxNV9DQUNIRV9XVCBzaG91bGQgYmUgdXNlZC4KKwkgKi8KKwlJOTE1X0NBQ0hFX0xMQywKKwkv
KioKKwkgKiBASTkxNV9DQUNIRV9MM19MTEM6CisJICoKKwkgKiBFeHBsaWNpdGx5IGVuYWJsZSB0
aGUgR2Z4IEwzIGNhY2hlLCB3aXRoIHNub29wZWQgTExDLgorCSAqCisJICogVGhlIEdmeCBMMyBz
aXRzIGJldHdlZW4gdGhlIGRvbWFpbiBzcGVjaWZpYyBjYWNoZXMsIGUuZworCSAqIHNhbXBsZXIv
cmVuZGVyIGNhY2hlcywgYW5kIHRoZSBsYXJnZXIgTExDLiBMTEMgaXMgY29oZXJlbnQgd2l0aCB0
aGUKKwkgKiBHUFUsIGJ1dCBMMyBpcyBvbmx5IHZpc2libGUgdG8gdGhlIEdQVSwgc28gbGlrZWx5
IG5lZWRzIHRvIGJlIGZsdXNoZWQKKwkgKiB3aGVuIHRoZSB3b3JrbG9hZCBjb21wbGV0ZXMuCisJ
ICoKKwkgKiBOb3QgdXNlZCBmb3Igc2Nhbm91dCBzdXJmYWNlcy4KKwkgKgorCSAqIE9ubHkgZXhw
b3NlZCBvbiBzb21lIGdlbjcgKyBHR1RULiBNb3JlIHJlY2VudCBoYXJkd2FyZSBoYXMgZHJvcHBl
ZAorCSAqIHRoaXMuCisJICovCisJSTkxNV9DQUNIRV9MM19MTEMsCisJLyoqCisJICogQEk5MTVf
Q0FDSEVfV1Q6CisJICoKKwkgKiBoc3c6Z3QzZSBXcml0ZS10aHJvdWdoIGZvciBzY2Fub3V0IGJ1
ZmZlcnMuCisJICovCisJSTkxNV9DQUNIRV9XVCwKK307CisKIGVudW0gaTkxNV9tYXBfdHlwZSB7
CiAJSTkxNV9NQVBfV0IgPSAwLAogCUk5MTVfTUFQX1dDLApAQCAtMjI4LDE0ICsyOTgsMTA5IEBA
IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0IHsKIAl1bnNpZ25lZCBpbnQgbWVtX2ZsYWdzOwog
I2RlZmluZSBJOTE1X0JPX0ZMQUdfU1RSVUNUX1BBR0UgQklUKDApIC8qIE9iamVjdCBiYWNrZWQg
Ynkgc3RydWN0IHBhZ2VzICovCiAjZGVmaW5lIEk5MTVfQk9fRkxBR19JT01FTSAgICAgICBCSVQo
MSkgLyogT2JqZWN0IGJhY2tlZCBieSBJTyBtZW1vcnkgKi8KLQkvKgotCSAqIElzIHRoZSBvYmpl
Y3QgdG8gYmUgbWFwcGVkIGFzIHJlYWQtb25seSB0byB0aGUgR1BVCi0JICogT25seSBob25vdXJl
ZCBpZiBoYXJkd2FyZSBoYXMgcmVsZXZhbnQgcHRlIGJpdAorCS8qKgorCSAqIEBjYWNoZV9sZXZl
bDogVGhlIGRlc2lyZWQgR1RUIGNhY2hpbmcgbGV2ZWwuCisJICoKKwkgKiBTZWUgZW51bSBpOTE1
X2NhY2hlX2xldmVsIGZvciBwb3NzaWJsZSB2YWx1ZXMsIGFsb25nIHdpdGggd2hhdAorCSAqIGVh
Y2ggZG9lcy4KIAkgKi8KIAl1bnNpZ25lZCBpbnQgY2FjaGVfbGV2ZWw6MzsKLQl1bnNpZ25lZCBp
bnQgY2FjaGVfY29oZXJlbnQ6MjsKKwkvKioKKwkgKiBAY2FjaGVfY29oZXJlbnQ6CisJICoKKwkg
KiBUcmFjayB3aGV0aGVyIHRoZSBwYWdlcyBhcmUgY29oZXJlbnQgd2l0aCB0aGUgR1BVIGlmIHJl
YWRpbmcgb3IKKwkgKiB3cml0aW5nIHRocm91Z2ggdGhlIENQVSBjYWNoZXMuIFRoZSBsYXJnZWx5
IGRlcGVuZHMgb24gdGhlCisJICogQGNhY2hlX2xldmVsIHNldHRpbmcuCisJICoKKwkgKiBPbiBw
bGF0Zm9ybXMgd2hpY2ggZG9uJ3QgaGF2ZSB0aGUgc2hhcmVkIExMQyhIQVNfU05PT1ApLCBsaWtl
IG9uIEF0b20KKwkgKiBwbGF0Zm9ybXMsIGNvaGVyZW5jeSBtdXN0IGJlIGV4cGxpY2l0bHkgcmVx
dWVzdGVkIHdpdGggc29tZSBzcGVjaWFsCisJICogR1RUIGNhY2hpbmcgYml0cyhzZWUgZW51bSBp
OTE1X2NhY2hlX2xldmVsKS4gV2hlbiBlbmFibGluZyBjb2hlcmVuY3kKKwkgKiBpdCBkb2VzIGNv
bWUgYXQgYSBwZXJmb3JtYW5jZSBhbmQgcG93ZXIgY29zdCBvbiBzdWNoIHBsYXRmb3Jtcy4gT24K
KwkgKiB0aGUgZmxpcCBzaWRlIHRoZSBrZXJuZWwgZG9lcyBuZWVkIHRvIG1hbnVhbGx5IGZsdXNo
IGFueSBidWZmZXJzCisJICogd2hpY2ggbmVlZCB0byBiZSBjb2hlcmVudCB3aXRoIHRoZSBHUFUs
IGlmIHRoZSBvYmplY3QgaXMgbm90CisJICogY29oZXJlbnQgaS5lIEBjYWNoZV9jb2hlcmVudCBp
cyB6ZXJvLgorCSAqCisJICogT24gcGxhdGZvcm1zIHRoYXQgc2hhcmUgdGhlIExMQyB3aXRoIHRo
ZSBDUFUoSEFTX0xMQyksIGFsbCBHVCBtZW1vcnkKKwkgKiBhY2Nlc3Mgd2lsbCBhdXRvbWF0aWNh
bGx5IHNub29wIHRoZSBDUFUgY2FjaGVzKGV2ZW4gd2l0aCBDQUNIRV9OT05FKS4KKwkgKiBUaGUg
b25lIGV4Y2VwdGlvbiBpcyB3aGVuIGRlYWxpbmcgd2l0aCB0aGUgZGlzcGxheSBlbmdpbmUsIGxp
a2Ugd2l0aAorCSAqIHNjYW5vdXQgc3VyZmFjZXMuIFRvIGhhbmRsZSB0aGlzIHRoZSBrZXJuZWwg
d2lsbCBhbHdheXMgZmx1c2ggdGhlCisJICogc3VyZmFjZSBvdXQgb2YgdGhlIENQVSBjYWNoZXMg
d2hlbiBwcmVwYXJpbmcgaXQgZm9yIHNjYW5vdXQuICBBbHNvCisJICogbm90ZSB0aGF0IHNpbmNl
IHNjYW5vdXQgc3VyZmFjZXMgYXJlIG9ubHkgZXZlciByZWFkIGJ5IHRoZSBkaXNwbGF5CisJICog
ZW5naW5lIHdlIG9ubHkgbmVlZCB0byBjYXJlIGFib3V0IGZsdXNoaW5nIGFueSB3cml0ZXMgdGhy
b3VnaCB0aGUgQ1BVCisJICogY2FjaGUsIHJlYWRzIG9uIHRoZSBvdGhlciBoYW5kIHdpbGwgYWx3
YXlzIGJlIGNvaGVyZW50LgorCSAqCisJICogU29tZXRoaW5nIHN0cmFuZ2UgaGVyZSBpcyB3aHkg
QGNhY2hlX2NvaGVyZW50IGlzIG5vdCBhIHNpbXBsZQorCSAqIGJvb2xlYW4sIGkuZSBjb2hlcmVu
dCB2cyBub24tY29oZXJlbnQuIFRoZSByZWFzb25pbmcgZm9yIHRoaXMgaXMgYmFjaworCSAqIHRv
IHRoZSBkaXNwbGF5IGVuZ2luZSBub3QgYmVpbmcgZnVsbHkgY29oZXJlbnQuIEFzIGEgcmVzdWx0
IHNjYW5vdXQKKwkgKiBzdXJmYWNlcyB3aWxsIGVpdGhlciBiZSBtYXJrZWQgYXMgSTkxNV9DQUNI
RV9OT05FIG9yIEk5MTVfQ0FDSEVfV1QuCisJICogSW4gdGhlIGNhc2Ugb2Ygc2VlaW5nIEk5MTVf
Q0FDSEVfTk9ORSB0aGUga2VybmVsIG1ha2VzIHRoZSBhc3N1bXB0aW9uCisJICogdGhhdCB0aGlz
IGlzIGxpa2VseSBhIHNjYW5vdXQgc3VyZmFjZSwgYW5kIHdpbGwgc2V0IEBjYWNoZV9jb2hlcmVu
dAorCSAqIGFzIG9ubHkgSTkxNV9CT19DQUNIRV9DT0hFUkVOVF9GT1JfUkVBRCwgb24gcGxhdGZv
cm1zIHdpdGggdGhlIHNoYXJlZAorCSAqIExMQy4gVGhlIGtlcm5lbCB1c2VzIHRoaXMgdG8gYXZv
aWQgZmx1c2hpbmcgcmVhZHMsIHdoaWxlIHRoZW4gYWxzbworCSAqIGFwcGx5aW5nIHNvbWUgb3B0
aW1pc2F0aW9ucyB0byBhbHdheXMgZmx1c2ggd3JpdGVzIHRocm91Z2ggdGhlIENQVQorCSAqIGNh
Y2hlIGFzIGVhcmx5IGFzIHBvc3NpYmxlLCB3aGVyZSBpdCBjYW4sIGluIGVmZmVjdCBrZWVwaW5n
CisJICogQGNhY2hlX2RpcnR5IGNsZWFuLCBzbyB3ZSBjYW4gcG90ZW50aWFsbHkgYXZvaWQgc3Rh
bGxpbmcgd2hlbgorCSAqIGZsdXNoaW5nIHRoZSBzdXJmYWNlIGp1c3QgYmVmb3JlIGRvaW5nIHRo
ZSBzY2Fub3V0LiAgVGhpcyBkb2VzIG1lYW4KKwkgKiB3ZSBtaWdodCB1bm5lY2Vzc2FyaWx5IGZs
dXNoIG5vbi1zY2Fub3V0IG9iamVjdHMgaW4gc29tZSBwbGFjZXMsIGJ1dAorCSAqIHRoZSBkZWZh
dWx0IGFzc3VtcHRpb24gaXMgdGhhdCBhbGwgbm9ybWFsIG9iamVjdHMgc2hvdWxkIGJlIHVzaW5n
CisJICogSTkxNV9DQUNIRV9MTEMsIGF0IGxlYXN0IG9uIHBsYXRmb3JtcyB3aXRoIHRoZSBzaGFy
ZWQgTExDLgorCSAqCisJICogSTkxNV9CT19DQUNIRV9DT0hFUkVOVF9GT1JfUkVBRDoKKwkgKgor
CSAqIFdoZW4gcmVhZGluZyB0aHJvdWdoIHRoZSBDUFUgY2FjaGUsIHRoZSBHUFUgaXMgc3RpbGwg
Y29oZXJlbnQuIFJlYWRzCisJICogdGhyb3VnaCB0aGUgQ1BVIGNhY2hlIG9ubHkgYmVjb21lIGEg
Y29uY2VybiB3aGVuIHdyaXRlcyBjYW4gYnlwYXNzCisJICogdGhlIENQVSBjYWNoZS4KKwkgKgor
CSAqIEFzIGFuIGV4YW1wbGUsIGlmIHNvbWUgb2JqZWN0IGlzIG1hcHBlZCBvbiB0aGUgQ1BVIHdp
dGggd3JpdGUtYmFjaworCSAqIGNhY2hpbmcsIGFuZCB3ZSByZWFkIHNvbWUgcGFnZSwgdGhlbiB0
aGUgY2FjaGUgbGlrZWx5IG5vdyBjb250YWlucworCSAqIHRoZSBkYXRhIGZyb20gdGhhdCByZWFk
LiBBdCB0aGlzIHBvaW50IHRoZSBjYWNoZSBhbmQgbWFpbiBtZW1vcnkKKwkgKiBtYXRjaCB1cCwg
c28gYWxsIGdvb2QuIEJ1dCBuZXh0IHRoZSBHUFUgbmVlZHMgdG8gd3JpdGUgc29tZSBkYXRhIHRv
CisJICogdGhhdCBzYW1lIHBhZ2UuIE5vdyBpZiB0aGUgQGNhY2hlX2xldmVsIGlzIEk5MTVfQ0FD
SEVfTk9ORSBhbmQgdGhlCisJICogdGhlIHBsYXRmb3JtIGRvZXNuJ3QgaGF2ZSB0aGUgc2hhcmVk
IExMQywgdGhlbiB0aGUgR1BVIHdpbGwKKwkgKiBlZmZlY3RpdmVseSBza2lwIGludmFsaWRhdGlu
ZyB0aGUgY2FjaGUob3IgaG93ZXZlciB0aGF0IHdvcmtzCisJICogaW50ZXJuYWxseSkgd2hlbiB3
cml0aW5nIHRoZSBuZXcgdmFsdWUuICBUaGlzIGlzIHJlYWxseSBiYWQgc2luY2UgdGhlCisJICog
R1BVIGhhcyBqdXN0IHdyaXR0ZW4gc29tZSBuZXcgZGF0YSB0byBtYWluIG1lbW9yeSwgYnV0IHRo
ZSBDUFUgY2FjaGUKKwkgKiBpcyBzdGlsbCB2YWxpZCBhbmQgbm93IGNvbnRhaW5zIHN0YWxlIGRh
dGEuIEFzIGEgcmVzdWx0IHRoZSBuZXh0IHRpbWUKKwkgKiB3ZSBkbyBhIGNhY2hlZCByZWFkIHdp
dGggdGhlIENQVSwgd2UgYXJlIHJld2FyZGVkIHdpdGggc3RhbGUgZGF0YS4KKwkgKiBMaWtld2lz
ZSBpZiB0aGUgY2FjaGUgaXMgbGF0ZXIgZmx1c2hlZCwgd2UgbWlnaHQgYmUgcmV3YXJkZWQgd2l0
aAorCSAqIG92ZXJ3cml0aW5nIG1haW4gbWVtb3J5IHdpdGggc3RhbGUgZGF0YS4KKwkgKgorCSAq
IEk5MTVfQk9fQ0FDSEVfQ09IRVJFTlRfRk9SX1dSSVRFOgorCSAqCisJICogV2hlbiB3cml0aW5n
IHRocm91Z2ggdGhlIENQVSBjYWNoZSwgdGhlIEdQVSBpcyBzdGlsbCBjb2hlcmVudC4gTm90ZQor
CSAqIHRoYXQgdGhpcyBhbHNvIGltcGxpZXMgSTkxNV9CT19DQUNIRV9DT0hFUkVOVF9GT1JfUkVB
RC4KKwkgKi8KICNkZWZpbmUgSTkxNV9CT19DQUNIRV9DT0hFUkVOVF9GT1JfUkVBRCBCSVQoMCkK
ICNkZWZpbmUgSTkxNV9CT19DQUNIRV9DT0hFUkVOVF9GT1JfV1JJVEUgQklUKDEpCisJdW5zaWdu
ZWQgaW50IGNhY2hlX2NvaGVyZW50OjI7CisKKwkvKioKKwkgKiBAY2FjaGVfZGlydHk6CisJICoK
KwkgKiBUcmFjayBpZiB3ZSBhcmUgd2UgZGlydHkgd2l0aCB3cml0ZXMgdGhyb3VnaCB0aGUgQ1BV
IGNhY2hlIGZvciB0aGlzCisJICogb2JqZWN0LiBBcyBhIHJlc3VsdCByZWFkaW5nIGRpcmVjdGx5
IGZyb20gbWFpbiBtZW1vcnkgbWlnaHQgeWllbGQKKwkgKiBzdGFsZSBkYXRhLgorCSAqCisJICog
VGhpcyBhbHNvIHRpZXMgaW50byB3aGV0aGVyIHRoZSBrZXJuZWwgaXMgdHJhY2tpbmcgdGhlIG9i
amVjdCBhcworCSAqIGNvaGVyZW50IHdpdGggdGhlIEdQVSwgYXMgcGVyIEBjYWNoZV9jb2hlcmVu
dCwgYXMgaXQgZGV0ZXJtaW5lcyBpZgorCSAqIGZsdXNoaW5nIG1pZ2h0IGJlIG5lZWRlZCBhdCB2
YXJpb3VzIHBvaW50cy4KKwkgKgorCSAqIEFub3RoZXIgcGFydCBvZiBAY2FjaGVfZGlydHkgaXMg
bWFuYWdpbmcgZmx1c2hpbmcgd2hlbiBmaXJzdAorCSAqIGFjcXVpcmluZyB0aGUgcGFnZXMgZm9y
IHN5c3RlbSBtZW1vcnksIGF0IHRoaXMgcG9pbnQgdGhlIHBhZ2VzIGFyZQorCSAqIGNvbnNpZGVy
ZWQgZm9yZWlnbiwgc28gdGhlIGRlZmF1bHQgYXNzdW1wdGlvbiBpcyB0aGF0IHRoZSBjYWNoZSBp
cworCSAqIGRpcnR5LCBmb3IgZXhhbXBsZSB0aGUgcGFnZSB6ZXJvaW5nIGRvbmUgYnkgdGhlIGtl
cm5lbCBtaWdodCBsZWF2ZQorCSAqIHdyaXRlcyB0aG91Z2ggdGhlIENQVSBjYWNoZSwgb3Igc3dh
cHBpbmctaW4sIHdoaWxlIHRoZSBhY3R1YWwgZGF0YSBpbgorCSAqIG1haW4gbWVtb3J5IGlzIHBv
dGVudGlhbGx5IHN0YWxlLiAgTm90ZSB0aGF0IHRoaXMgaXMgYSBwb3RlbnRpYWwKKwkgKiBzZWN1
cml0eSBpc3N1ZSB3aGVuIGRlYWxpbmcgd2l0aCB1c2Vyc3BhY2Ugb2JqZWN0cyBhbmQgemVyb2lu
Zy4gTm93LAorCSAqIHdoZXRoZXIgd2UgYWN0dWFsbHkgbmVlZCBhcHBseSB0aGUgYmlnIHNsZWRn
ZWhhbW1lciBvZiBmbHVzaGluZyBhbGwKKwkgKiB0aGUgcGFnZXMgb24gYWNxdWlyZSBkZXBlbmRz
IG9uIGlmIEBjYWNoZV9jb2hlcmVudCBpcyBtYXJrZWQgYXMKKwkgKiBJOTE1X0JPX0NBQ0hFX0NP
SEVSRU5UX0ZPUl9XUklURSwgaS5lIHRoYXQgdGhlIEdQVSB3aWxsIGJlIGNvaGVyZW50CisJICog
Zm9yIGJvdGggcmVhZHMgYW5kIHdyaXRlcyB0aG91Z2ggdGhlIENQVSBjYWNoZS4KKwkgKgorCSAq
IE5vdGUgdGhhdCBvbiBzaGFyZWQgTExDIHBsYXRmb3JtcyB3ZSBzdGlsbCBhcHBseSB0aGUgaGVh
dnkgZmx1c2ggZm9yCisJICogSTkxNV9DQUNIRV9OT05FIG9iamVjdHMsIHVuZGVyIHRoZSBhc3N1
bXB0aW9uIHRoYXQgdGhpcyBpcyBnb2luZyB0bworCSAqIGJlIHVzZWQgZm9yIHNjYW5vdXQuCisJ
ICovCiAJdW5zaWduZWQgaW50IGNhY2hlX2RpcnR5OjE7CiAKIAkvKioKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCmluZGV4IGY5OWI2YzBkZDA2OC4uYWMxNDRkMGM2OWE1IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKQEAgLTM5NCwxNSArMzk0LDYgQEAgc3RydWN0IGRybV9pOTE1X2Rpc3BsYXlfZnVu
Y3MgewogCXZvaWQgKCpyZWFkX2x1dHMpKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKTsKIH07CiAKLWVudW0gaTkxNV9jYWNoZV9sZXZlbCB7Ci0JSTkxNV9DQUNIRV9OT05FID0g
MCwKLQlJOTE1X0NBQ0hFX0xMQywgLyogYWxzbyB1c2VkIGZvciBzbm9vcGFibGUgbWVtb3J5IG9u
IG5vbi1MTEMgKi8KLQlJOTE1X0NBQ0hFX0wzX0xMQywgLyogZ2VuNyssIEwzIHNpdHMgYmV0d2Vl
biB0aGUgZG9tYWluIHNwZWNpZmMKLQkJCSAgICAgIGNhY2hlcywgZWcgc2FtcGxlci9yZW5kZXIg
Y2FjaGVzLCBhbmQgdGhlCi0JCQkgICAgICBsYXJnZSBMYXN0LUxldmVsLUNhY2hlLiBMTEMgaXMg
Y29oZXJlbnQgd2l0aAotCQkJICAgICAgdGhlIENQVSwgYnV0IEwzIGlzIG9ubHkgdmlzaWJsZSB0
byB0aGUgR1BVLiAqLwotCUk5MTVfQ0FDSEVfV1QsIC8qIGhzdzpndDNlIFdyaXRlVGhyb3VnaCBm
b3Igc2Nhbm91dHMgKi8KLX07CiAKICNkZWZpbmUgSTkxNV9DT0xPUl9VTkVWSUNUQUJMRSAoLTEp
IC8qIGEgbm9uLXZtYSBzaGFyaW5nIHRoZSBhZGRyZXNzIHNwYWNlICovCiAKLS0gCjIuMjYuMwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
