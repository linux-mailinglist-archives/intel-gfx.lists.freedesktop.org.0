Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D063C21AFC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 17:53:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41EF689935;
	Fri, 17 May 2019 15:53:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B6589895
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 15:53:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 08:53:36 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by fmsmga005.fm.intel.com with ESMTP; 17 May 2019 08:53:34 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 21:50:49 +0530
Message-Id: <1558110049-3360-1-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20190517140619.GS24299@intel.com>
References: <20190517140619.GS24299@intel.com>
Subject: [Intel-gfx] [v12 06/12] drm/i915: Write HDR infoframe and send to
 panel
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW5hYmxlIHdyaXRpbmcgb2YgSERSIG1ldGFkYXRhIGluZm9mcmFtZSB0byBwYW5lbC4KVGhlIGRh
dGEgd2lsbCBiZSBwcm92aWQgYnkgdXNlcnNhcGFjZSBjb21wb3NpdG9ycywgYmFzZWQKb24gYmxl
bmRpbmcgcG9saWNpZXMgYW5kIHBhc3NzZWQgdG8gZHJpdmVyIHRocm91Z2ggYSBibG9iCnByb3Bl
cnR5LgoKdjI6IFJlYmFzZQoKdjM6IEZpeGVkIGEgd2FybmluZyBtZXNzYWdlCgp2NDogQWRkcmVz
c2VkIFNoYXNoYW5rJ3MgcmV2aWV3IGNvbW1lbnRzCgp2NTogUmViYXNlLiBBZGRlZCBpbmZvZnJh
bWUgY2FsY3VsYXRpb24gaW4gY29tcHV0ZSBjb25maWcuCgp2NjogQWRkcmVzc2VkIFNoYXNoYW5r
J3MgcmV2aWV3IGNvbW1lbnQuIEFkZGVkIEhEUiBtZXRhZGF0YQpzdXBwb3J0IGZyb20gR0VOMTAg
b253YXJkcyBhcyBwZXIgU2hhc2hhbmsncyByZWNvbW1lbmRhdGlvbi4KCnY3OiBBZGRyZXNzZWQg
U2hhc2hhbmsncyByZXZpZXcgY29tbWVudHMKCnY4OiBBZGRlZCBTaGFzaGFuaydzIFJCLgoKdjk6
IEFkZHJlc3NlZCBWaWxsZSdzIHJldmlldyBjb21tZW50cy4KCnYxMDogUmVtb3ZlZCBhIHJlZHVu
ZGFudCBjaGVjayBhcyBjb3JlIGFscmVhZHkgaGFuZGxlcyBpdCwgYXMgcGVyClZpbGxlJ3MgY29t
bWVudC4KClNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggIHwgIDEgKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5jIHwgNDAgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2Rydi5oCmluZGV4IDUyNThhYmIuLjQwZTJjNTIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rydi5oCkBAIC05MTAsNiArOTEwLDcgQEAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgewog
CQl1bmlvbiBoZG1pX2luZm9mcmFtZSBhdmk7CiAJCXVuaW9uIGhkbWlfaW5mb2ZyYW1lIHNwZDsK
IAkJdW5pb24gaGRtaV9pbmZvZnJhbWUgaGRtaTsKKwkJdW5pb24gaGRtaV9pbmZvZnJhbWUgZHJt
OwogCX0gaW5mb2ZyYW1lczsKIAogCS8qIEhETUkgc2NyYW1ibGluZyBzdGF0dXMgKi8KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2hkbWkuYwppbmRleCA4MWQ3MmY2Li5lNzE5OWJlIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfaGRtaS5jCkBAIC01NzMsNiArNTczLDcgQEAgc3RhdGljIHUzMiBoc3dfaW5mb2Zy
YW1lc19lbmFibGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCUhETUlfSU5GT0ZS
QU1FX1RZUEVfQVZJLAogCUhETUlfSU5GT0ZSQU1FX1RZUEVfU1BELAogCUhETUlfSU5GT0ZSQU1F
X1RZUEVfVkVORE9SLAorCUhETUlfSU5GT0ZSQU1FX1RZUEVfRFJNLAogfTsKIAogdTMyIGludGVs
X2hkbWlfaW5mb2ZyYW1lX2VuYWJsZSh1bnNpZ25lZCBpbnQgdHlwZSkKQEAgLTc5NSw2ICs3OTYs
MzcgQEAgdm9pZCBpbnRlbF9yZWFkX2luZm9mcmFtZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKIAlyZXR1cm4gdHJ1ZTsKIH0KIAorc3RhdGljIGJvb2wKK2ludGVsX2hkbWlfY29tcHV0
ZV9kcm1faW5mb2ZyYW1lKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAorCQkJCSBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkgc3RydWN0IGRybV9jb25uZWN0
b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCit7CisJc3RydWN0IGhkbWlfZHJtX2luZm9mcmFtZSAqZnJh
bWUgPSAmY3J0Y19zdGF0ZS0+aW5mb2ZyYW1lcy5kcm0uZHJtOworCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOworCWludCByZXQ7
CisKKwlpZiAoIShJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2
X3ByaXYpKSkKKwkJcmV0dXJuIHRydWU7CisKKwlpZiAoIWNydGNfc3RhdGUtPmhhc19pbmZvZnJh
bWUpCisJCXJldHVybiB0cnVlOworCisJY3J0Y19zdGF0ZS0+aW5mb2ZyYW1lcy5lbmFibGUgfD0K
KwkJaW50ZWxfaGRtaV9pbmZvZnJhbWVfZW5hYmxlKEhETUlfSU5GT0ZSQU1FX1RZUEVfRFJNKTsK
KworCXJldCA9IGRybV9oZG1pX2luZm9mcmFtZV9zZXRfaGRyX21ldGFkYXRhKGZyYW1lLCBjb25u
X3N0YXRlKTsKKwlpZiAocmV0IDwgMCkgeworCQlEUk1fREVCVUdfS01TKCJjb3VsZG4ndCBzZXQg
SERSIG1ldGFkYXRhIGluIGluZm9mcmFtZVxuIik7CisJCXJldHVybiBmYWxzZTsKKwl9CisKKwly
ZXQgPSBoZG1pX2RybV9pbmZvZnJhbWVfY2hlY2soZnJhbWUpOworCWlmIChXQVJOX09OKHJldCkp
CisJCXJldHVybiBmYWxzZTsKKworCXJldHVybiB0cnVlOworfQorCiBzdGF0aWMgdm9pZCBnNHhf
c2V0X2luZm9mcmFtZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkgICAgICAg
Ym9vbCBlbmFibGUsCiAJCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCkBAIC0xMTgwLDYgKzEyMTIsOSBAQCBzdGF0aWMgdm9pZCBoc3dfc2V0X2luZm9m
cmFtZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJaW50ZWxfd3JpdGVfaW5mb2Zy
YW1lKGVuY29kZXIsIGNydGNfc3RhdGUsCiAJCQkgICAgICBIRE1JX0lORk9GUkFNRV9UWVBFX1ZF
TkRPUiwKIAkJCSAgICAgICZjcnRjX3N0YXRlLT5pbmZvZnJhbWVzLmhkbWkpOworCWludGVsX3dy
aXRlX2luZm9mcmFtZShlbmNvZGVyLCBjcnRjX3N0YXRlLAorCQkJICAgICAgSERNSV9JTkZPRlJB
TUVfVFlQRV9EUk0sCisJCQkgICAgICAmY3J0Y19zdGF0ZS0+aW5mb2ZyYW1lcy5kcm0pOwogfQog
CiB2b2lkIGludGVsX2RwX2R1YWxfbW9kZV9zZXRfdG1kc19vdXRwdXQoc3RydWN0IGludGVsX2hk
bWkgKmhkbWksIGJvb2wgZW5hYmxlKQpAQCAtMjM4Niw2ICsyNDIxLDExIEBAIGludCBpbnRlbF9o
ZG1pX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQlyZXR1
cm4gLUVJTlZBTDsKIAl9CiAKKwlpZiAoIWludGVsX2hkbWlfY29tcHV0ZV9kcm1faW5mb2ZyYW1l
KGVuY29kZXIsIHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKSkgeworCQlEUk1fREVCVUdfS01TKCJi
YWQgRFJNIGluZm9mcmFtZVxuIik7CisJCXJldHVybiAtRUlOVkFMOworCX0KKwogCXJldHVybiAw
OwogfQogCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
