Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAD71CD80
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 19:09:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19999892FA;
	Tue, 14 May 2019 17:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9924A892FA;
 Tue, 14 May 2019 17:09:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 10:09:42 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by fmsmga005.fm.intel.com with ESMTP; 14 May 2019 10:09:38 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 14 May 2019 23:06:26 +0530
Message-Id: <1557855394-12214-5-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
References: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v10 04/12] drm: Enable HDR infoframe support
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
Cc: dcastagna@chromium.org, jonas@kwiboo.se, seanpaul@chromium.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW5hYmxlIER5bmFtaWMgUmFuZ2UgYW5kIE1hc3RlcmluZyBJbmZvZnJhbWUgZm9yIEhEUgpjb250
ZW50LCB3aGljaCBpcyBkZWZpbmVkIGluIENFQSA4NjEuMyBzcGVjLgoKVGhlIG1ldGFkYXRhIHdp
bGwgYmUgY29tcHV0ZWQgYmFzZWQgb24gYmxlbmRpbmcKcG9saWN5IGluIHVzZXJzcGFjZSBjb21w
b3NpdG9ycyBhbmQgcGFzc2VkIGFzIGEgY29ubmVjdG9yCnByb3BlcnR5IGJsb2IgdG8gZHJpdmVy
LiBUaGUgc2FtZSB3aWxsIGJlIHNlbnQgYXMgaW5mb2ZyYW1lCnRvIHBhbmVsIHdoaWNoIHN1cHBv
cnQgSERSLgoKQWRkZWQgdGhlIGNvbnN0IHZlcnNpb24gb2YgaW5mb2ZyYW1lIGZvciBEUk0gbWV0
YWRhdGEKZm9yIEhEUi4KCnYyOiBSZWJhc2UgYW5kIGFkZGVkIFZpbGxlJ3MgUE9DIGNoYW5nZXMu
Cgp2MzogTm8gQ2hhbmdlCgp2NDogQWRkcmVzc2VkIFNoYXNoYW5rJ3MgcmV2aWV3IGNvbW1lbnRz
IGFuZCBtZXJnZWQgdGhlCnBhdGNoIG1ha2luZyBkcm0gaW5mb2ZyYW1lIGZ1bmN0aW9uIGFyZ3Vt
ZW50cyBhcyBjb25zdGFudC4KCnY1OiBSZWJhc2UKCnY2OiBGaXhlZCBjaGVja3BhdGNoIHdhcm5p
bmdzIHdpdGggLS1zdHJpY3Qgb3B0aW9uLiBBZGRyZXNzZWQKU2hhc2hhbmsncyByZXZpZXcgY29t
bWVudHMgYW5kIGFkZGVkIGhpcyBSQi4KCnY3OiBBZGRyZXNzZWQgQnJpYW4gU3RhcmtleSdzIHJl
dmlldyBjb21tZW50cy4gTWVyZ2VkIDIgcGF0Y2hlcwppbnRvIG9uZS4KCnY4OiBBZGRyZXNzZWQg
Sm9uYXMgS2FybG1hbiByZXZpZXcgY29tbWVudHMuCgp2OTogQWRkcmVzc2VkIEpvbmFzIEthcmxt
YW4gcmV2aWV3IGNvbW1lbnRzLgoKU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFu
a2FyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hh
bmsuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyB8ICA0
MyArKysrKysrKysrKwogZHJpdmVycy92aWRlby9oZG1pLmMgICAgICAgfCAxODcgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2RybS9kcm1fZWRp
ZC5oICAgICB8ICAgNSArKwogaW5jbHVkZS9saW51eC9oZG1pLmggICAgICAgfCAgMjcgKysrKysr
KwogNCBmaWxlcyBjaGFuZ2VkLCAyNjIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fZWRpZC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMKaW5kZXgg
MmUwYjViZS4uNzNiNzkwNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMKQEAgLTQ5MDMsNiArNDkwMyw0OSBAQCBz
dGF0aWMgYm9vbCBpc19oZG1pMl9zaW5rKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3Ip
CiB9CiAKIC8qKgorICogZHJtX2hkbWlfaW5mb2ZyYW1lX3NldF9oZHJfbWV0YWRhdGEoKSAtIGZp
bGwgYW4gSERNSSBEUk0gaW5mb2ZyYW1lIHdpdGgKKyAqICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBIRFIgbWV0YWRhdGEgZnJvbSB1c2Vyc3BhY2UKKyAqIEBmcmFtZTog
SERNSSBEUk0gaW5mb2ZyYW1lCisgKiBAaGRyX21ldGFkYXRhOiBoZHJfc291cmNlX21ldGFkYXRh
IGluZm8gZnJvbSB1c2Vyc3BhY2UKKyAqCisgKiBSZXR1cm46IDAgb24gc3VjY2VzcyBvciBhIG5l
Z2F0aXZlIGVycm9yIGNvZGUgb24gZmFpbHVyZS4KKyAqLworaW50Citkcm1faGRtaV9pbmZvZnJh
bWVfc2V0X2hkcl9tZXRhZGF0YShzdHJ1Y3QgaGRtaV9kcm1faW5mb2ZyYW1lICpmcmFtZSwKKwkJ
CQkgICAgY29uc3Qgc3RydWN0IGhkcl9vdXRwdXRfbWV0YWRhdGEgKmhkcl9tZXRhZGF0YSkKK3sK
KwlpbnQgZXJyOworCisJaWYgKCFmcmFtZSB8fCAhaGRyX21ldGFkYXRhKQorCQlyZXR1cm4gLUVJ
TlZBTDsKKworCWVyciA9IGhkbWlfZHJtX2luZm9mcmFtZV9pbml0KGZyYW1lKTsKKwlpZiAoZXJy
IDwgMCkKKwkJcmV0dXJuIGVycjsKKworCURSTV9ERUJVR19LTVMoInR5cGUgPSAleFxuIiwgZnJh
bWUtPnR5cGUpOworCisJZnJhbWUtPmVvdGYgPSBoZHJfbWV0YWRhdGEtPmhkbWlfbWV0YWRhdGFf
dHlwZTEuZW90ZjsKKwlmcmFtZS0+bWV0YWRhdGFfdHlwZSA9IGhkcl9tZXRhZGF0YS0+aGRtaV9t
ZXRhZGF0YV90eXBlMS5tZXRhZGF0YV90eXBlOworCisJbWVtY3B5KCZmcmFtZS0+ZGlzcGxheV9w
cmltYXJpZXMsCisJICAgICAgICZoZHJfbWV0YWRhdGEtPmhkbWlfbWV0YWRhdGFfdHlwZTEuZGlz
cGxheV9wcmltYXJpZXMsIDEyKTsKKworCW1lbWNweSgmZnJhbWUtPndoaXRlX3BvaW50LAorCSAg
ICAgICAmaGRyX21ldGFkYXRhLT5oZG1pX21ldGFkYXRhX3R5cGUxLndoaXRlX3BvaW50LCA0KTsK
KworCWZyYW1lLT5tYXhfZGlzcGxheV9tYXN0ZXJpbmdfbHVtaW5hbmNlID0KKwkJaGRyX21ldGFk
YXRhLT5oZG1pX21ldGFkYXRhX3R5cGUxLm1heF9kaXNwbGF5X21hc3RlcmluZ19sdW1pbmFuY2U7
CisJZnJhbWUtPm1pbl9kaXNwbGF5X21hc3RlcmluZ19sdW1pbmFuY2UgPQorCQloZHJfbWV0YWRh
dGEtPmhkbWlfbWV0YWRhdGFfdHlwZTEubWluX2Rpc3BsYXlfbWFzdGVyaW5nX2x1bWluYW5jZTsK
KwlmcmFtZS0+bWF4X2ZhbGwgPSBoZHJfbWV0YWRhdGEtPmhkbWlfbWV0YWRhdGFfdHlwZTEubWF4
X2ZhbGw7CisJZnJhbWUtPm1heF9jbGwgPSBoZHJfbWV0YWRhdGEtPmhkbWlfbWV0YWRhdGFfdHlw
ZTEubWF4X2NsbDsKKworCXJldHVybiAwOworfQorRVhQT1JUX1NZTUJPTChkcm1faGRtaV9pbmZv
ZnJhbWVfc2V0X2hkcl9tZXRhZGF0YSk7CisKKy8qKgogICogZHJtX2hkbWlfYXZpX2luZm9mcmFt
ZV9mcm9tX2Rpc3BsYXlfbW9kZSgpIC0gZmlsbCBhbiBIRE1JIEFWSSBpbmZvZnJhbWUgd2l0aAog
ICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGF0YSBmcm9t
IGEgRFJNIGRpc3BsYXkgbW9kZQogICogQGZyYW1lOiBIRE1JIEFWSSBpbmZvZnJhbWUKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvdmlkZW8vaGRtaS5jIGIvZHJpdmVycy92aWRlby9oZG1pLmMKaW5kZXgg
Nzk5YWU0OS4uYzVlY2QxNiAxMDA2NDQKLS0tIGEvZHJpdmVycy92aWRlby9oZG1pLmMKKysrIGIv
ZHJpdmVycy92aWRlby9oZG1pLmMKQEAgLTY1MCw2ICs2NTAsMTQ3IEBAIHNzaXplX3QgaGRtaV92
ZW5kb3JfaW5mb2ZyYW1lX3BhY2soc3RydWN0IGhkbWlfdmVuZG9yX2luZm9mcmFtZSAqZnJhbWUs
CiAJcmV0dXJuIDA7CiB9CiAKKy8qKgorICogaGRtaV9kcm1faW5mb2ZyYW1lX2luaXQoKSAtIGlu
aXRpYWxpemUgYW4gSERNSSBEeW5hbWluYyBSYW5nZSBhbmQKKyAqIG1hc3RlcmluZyBpbmZvZnJh
bWUKKyAqIEBmcmFtZTogSERNSSBEUk0gaW5mb2ZyYW1lCisgKgorICogUmV0dXJucyAwIG9uIHN1
Y2Nlc3Mgb3IgYSBuZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUuCisgKi8KK2ludCBoZG1p
X2RybV9pbmZvZnJhbWVfaW5pdChzdHJ1Y3QgaGRtaV9kcm1faW5mb2ZyYW1lICpmcmFtZSkKK3sK
KwltZW1zZXQoZnJhbWUsIDAsIHNpemVvZigqZnJhbWUpKTsKKworCWZyYW1lLT50eXBlID0gSERN
SV9JTkZPRlJBTUVfVFlQRV9EUk07CisJZnJhbWUtPnZlcnNpb24gPSAxOworCWZyYW1lLT5sZW5n
dGggPSBIRE1JX0RSTV9JTkZPRlJBTUVfU0laRTsKKworCXJldHVybiAwOworfQorRVhQT1JUX1NZ
TUJPTChoZG1pX2RybV9pbmZvZnJhbWVfaW5pdCk7CisKK3N0YXRpYyBpbnQgaGRtaV9kcm1faW5m
b2ZyYW1lX2NoZWNrX29ubHkoY29uc3Qgc3RydWN0IGhkbWlfZHJtX2luZm9mcmFtZSAqZnJhbWUp
Cit7CisJaWYgKGZyYW1lLT50eXBlICE9IEhETUlfSU5GT0ZSQU1FX1RZUEVfRFJNIHx8CisJICAg
IGZyYW1lLT52ZXJzaW9uICE9IDEpCisJCXJldHVybiAtRUlOVkFMOworCisJcmV0dXJuIDA7Cit9
CisKKy8qKgorICogaGRtaV9kcm1faW5mb2ZyYW1lX2NoZWNrKCkgLSBjaGVjayBhIEhETUkgRFJN
IGluZm9mcmFtZQorICogQGZyYW1lOiBIRE1JIERSTSBpbmZvZnJhbWUKKyAqCisgKiBWYWxpZGF0
ZXMgdGhhdCB0aGUgaW5mb2ZyYW1lIGlzIGNvbnNpc3RlbnQuCisgKiBSZXR1cm5zIDAgb24gc3Vj
Y2VzcyBvciBhIG5lZ2F0aXZlIGVycm9yIGNvZGUgb24gZmFpbHVyZS4KKyAqLworaW50IGhkbWlf
ZHJtX2luZm9mcmFtZV9jaGVjayhzdHJ1Y3QgaGRtaV9kcm1faW5mb2ZyYW1lICpmcmFtZSkKK3sK
KwlyZXR1cm4gaGRtaV9kcm1faW5mb2ZyYW1lX2NoZWNrX29ubHkoZnJhbWUpOworfQorRVhQT1JU
X1NZTUJPTChoZG1pX2RybV9pbmZvZnJhbWVfY2hlY2spOworCisvKioKKyAqIGhkbWlfZHJtX2lu
Zm9mcmFtZV9wYWNrX29ubHkoKSAtIHdyaXRlIEhETUkgRFJNIGluZm9mcmFtZSB0byBiaW5hcnkg
YnVmZmVyCisgKiBAZnJhbWU6IEhETUkgRFJNIGluZm9mcmFtZQorICogQGJ1ZmZlcjogZGVzdGlu
YXRpb24gYnVmZmVyCisgKiBAc2l6ZTogc2l6ZSBvZiBidWZmZXIKKyAqCisgKiBQYWNrcyB0aGUg
aW5mb3JtYXRpb24gY29udGFpbmVkIGluIHRoZSBAZnJhbWUgc3RydWN0dXJlIGludG8gYSBiaW5h
cnkKKyAqIHJlcHJlc2VudGF0aW9uIHRoYXQgY2FuIGJlIHdyaXR0ZW4gaW50byB0aGUgY29ycmVz
cG9uZGluZyBjb250cm9sbGVyCisgKiByZWdpc3RlcnMuIEFsc28gY29tcHV0ZXMgdGhlIGNoZWNr
c3VtIGFzIHJlcXVpcmVkIGJ5IHNlY3Rpb24gNS4zLjUgb2YKKyAqIHRoZSBIRE1JIDEuNCBzcGVj
aWZpY2F0aW9uLgorICoKKyAqIFJldHVybnMgdGhlIG51bWJlciBvZiBieXRlcyBwYWNrZWQgaW50
byB0aGUgYmluYXJ5IGJ1ZmZlciBvciBhIG5lZ2F0aXZlCisgKiBlcnJvciBjb2RlIG9uIGZhaWx1
cmUuCisgKi8KK3NzaXplX3QgaGRtaV9kcm1faW5mb2ZyYW1lX3BhY2tfb25seShjb25zdCBzdHJ1
Y3QgaGRtaV9kcm1faW5mb2ZyYW1lICpmcmFtZSwKKwkJCQkgICAgIHZvaWQgKmJ1ZmZlciwgc2l6
ZV90IHNpemUpCit7CisJdTggKnB0ciA9IGJ1ZmZlcjsKKwlzaXplX3QgbGVuZ3RoOworCWludCBp
OworCisJbGVuZ3RoID0gSERNSV9JTkZPRlJBTUVfSEVBREVSX1NJWkUgKyBmcmFtZS0+bGVuZ3Ro
OworCisJaWYgKHNpemUgPCBsZW5ndGgpCisJCXJldHVybiAtRU5PU1BDOworCisJbWVtc2V0KGJ1
ZmZlciwgMCwgc2l6ZSk7CisKKwlwdHJbMF0gPSBmcmFtZS0+dHlwZTsKKwlwdHJbMV0gPSBmcmFt
ZS0+dmVyc2lvbjsKKwlwdHJbMl0gPSBmcmFtZS0+bGVuZ3RoOworCXB0clszXSA9IDA7IC8qIGNo
ZWNrc3VtICovCisKKwkvKiBzdGFydCBpbmZvZnJhbWUgcGF5bG9hZCAqLworCXB0ciArPSBIRE1J
X0lORk9GUkFNRV9IRUFERVJfU0laRTsKKworCSpwdHIrKyA9IGZyYW1lLT5lb3RmOworCSpwdHIr
KyA9IGZyYW1lLT5tZXRhZGF0YV90eXBlOworCisJZm9yIChpID0gMDsgaSA8IDM7IGkrKykgewor
CQkqcHRyKysgPSBmcmFtZS0+ZGlzcGxheV9wcmltYXJpZXNbaV0ueDsKKwkJKnB0cisrID0gZnJh
bWUtPmRpc3BsYXlfcHJpbWFyaWVzW2ldLnggPj4gODsKKwkJKnB0cisrID0gZnJhbWUtPmRpc3Bs
YXlfcHJpbWFyaWVzW2ldLnk7CisJCSpwdHIrKyA9IGZyYW1lLT5kaXNwbGF5X3ByaW1hcmllc1tp
XS55ID4+IDg7CisJfQorCisJKnB0cisrID0gZnJhbWUtPndoaXRlX3BvaW50Lng7CisJKnB0cisr
ID0gZnJhbWUtPndoaXRlX3BvaW50LnggPj4gODsKKworCSpwdHIrKyA9IGZyYW1lLT53aGl0ZV9w
b2ludC55OworCSpwdHIrKyA9IGZyYW1lLT53aGl0ZV9wb2ludC55ID4+IDg7CisKKwkqcHRyKysg
PSBmcmFtZS0+bWF4X2Rpc3BsYXlfbWFzdGVyaW5nX2x1bWluYW5jZTsKKwkqcHRyKysgPSBmcmFt
ZS0+bWF4X2Rpc3BsYXlfbWFzdGVyaW5nX2x1bWluYW5jZSA+PiA4OworCisJKnB0cisrID0gZnJh
bWUtPm1pbl9kaXNwbGF5X21hc3RlcmluZ19sdW1pbmFuY2U7CisJKnB0cisrID0gZnJhbWUtPm1p
bl9kaXNwbGF5X21hc3RlcmluZ19sdW1pbmFuY2UgPj4gODsKKworCSpwdHIrKyA9IGZyYW1lLT5t
YXhfY2xsOworCSpwdHIrKyA9IGZyYW1lLT5tYXhfY2xsID4+IDg7CisKKwkqcHRyKysgPSBmcmFt
ZS0+bWF4X2ZhbGw7CisJKnB0cisrID0gZnJhbWUtPm1heF9mYWxsID4+IDg7CisKKwloZG1pX2lu
Zm9mcmFtZV9zZXRfY2hlY2tzdW0oYnVmZmVyLCBsZW5ndGgpOworCisJcmV0dXJuIGxlbmd0aDsK
K30KK0VYUE9SVF9TWU1CT0woaGRtaV9kcm1faW5mb2ZyYW1lX3BhY2tfb25seSk7CisKKy8qKgor
ICogaGRtaV9kcm1faW5mb2ZyYW1lX3BhY2soKSAtIGNoZWNrIGEgSERNSSBEUk0gaW5mb2ZyYW1l
LAorICogICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFuZCB3cml0ZSBpdCB0byBiaW5hcnkg
YnVmZmVyCisgKiBAZnJhbWU6IEhETUkgRFJNIGluZm9mcmFtZQorICogQGJ1ZmZlcjogZGVzdGlu
YXRpb24gYnVmZmVyCisgKiBAc2l6ZTogc2l6ZSBvZiBidWZmZXIKKyAqCisgKiBWYWxpZGF0ZXMg
dGhhdCB0aGUgaW5mb2ZyYW1lIGlzIGNvbnNpc3RlbnQgYW5kIHVwZGF0ZXMgZGVyaXZlZCBmaWVs
ZHMKKyAqIChlZy4gbGVuZ3RoKSBiYXNlZCBvbiBvdGhlciBmaWVsZHMsIGFmdGVyIHdoaWNoIGl0
IHBhY2tzIHRoZSBpbmZvcm1hdGlvbgorICogY29udGFpbmVkIGluIHRoZSBAZnJhbWUgc3RydWN0
dXJlIGludG8gYSBiaW5hcnkgcmVwcmVzZW50YXRpb24gdGhhdAorICogY2FuIGJlIHdyaXR0ZW4g
aW50byB0aGUgY29ycmVzcG9uZGluZyBjb250cm9sbGVyIHJlZ2lzdGVycy4gVGhpcyBmdW5jdGlv
bgorICogYWxzbyBjb21wdXRlcyB0aGUgY2hlY2tzdW0gYXMgcmVxdWlyZWQgYnkgc2VjdGlvbiA1
LjMuNSBvZiB0aGUgSERNSSAxLjQKKyAqIHNwZWNpZmljYXRpb24uCisgKgorICogUmV0dXJucyB0
aGUgbnVtYmVyIG9mIGJ5dGVzIHBhY2tlZCBpbnRvIHRoZSBiaW5hcnkgYnVmZmVyIG9yIGEgbmVn
YXRpdmUKKyAqIGVycm9yIGNvZGUgb24gZmFpbHVyZS4KKyAqLworc3NpemVfdCBoZG1pX2RybV9p
bmZvZnJhbWVfcGFjayhzdHJ1Y3QgaGRtaV9kcm1faW5mb2ZyYW1lICpmcmFtZSwKKwkJCQl2b2lk
ICpidWZmZXIsIHNpemVfdCBzaXplKQoreworCWludCByZXQ7CisKKwlyZXQgPSBoZG1pX2RybV9p
bmZvZnJhbWVfY2hlY2soZnJhbWUpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKKwlyZXR1
cm4gaGRtaV9kcm1faW5mb2ZyYW1lX3BhY2tfb25seShmcmFtZSwgYnVmZmVyLCBzaXplKTsKK30K
K0VYUE9SVF9TWU1CT0woaGRtaV9kcm1faW5mb2ZyYW1lX3BhY2spOworCiAvKgogICogaGRtaV92
ZW5kb3JfYW55X2luZm9mcmFtZV9jaGVjaygpIC0gY2hlY2sgYSB2ZW5kb3IgaW5mb2ZyYW1lCiAg
Ki8KQEAgLTc1OCw2ICs4OTksMTAgQEAgc3NpemVfdCBoZG1pX3ZlbmRvcl9pbmZvZnJhbWVfcGFj
ayhzdHJ1Y3QgaGRtaV92ZW5kb3JfaW5mb2ZyYW1lICpmcmFtZSwKIAkJbGVuZ3RoID0gaGRtaV9h
dmlfaW5mb2ZyYW1lX3BhY2tfb25seSgmZnJhbWUtPmF2aSwKIAkJCQkJCSAgICAgIGJ1ZmZlciwg
c2l6ZSk7CiAJCWJyZWFrOworCWNhc2UgSERNSV9JTkZPRlJBTUVfVFlQRV9EUk06CisJCWxlbmd0
aCA9IGhkbWlfZHJtX2luZm9mcmFtZV9wYWNrX29ubHkoJmZyYW1lLT5kcm0sCisJCQkJCQkgICAg
ICBidWZmZXIsIHNpemUpOworCQlicmVhazsKIAljYXNlIEhETUlfSU5GT0ZSQU1FX1RZUEVfU1BE
OgogCQlsZW5ndGggPSBoZG1pX3NwZF9pbmZvZnJhbWVfcGFja19vbmx5KCZmcmFtZS0+c3BkLAog
CQkJCQkJICAgICAgYnVmZmVyLCBzaXplKTsKQEAgLTgwNiw2ICs5NTEsOSBAQCBzc2l6ZV90IGhk
bWlfdmVuZG9yX2luZm9mcmFtZV9wYWNrKHN0cnVjdCBoZG1pX3ZlbmRvcl9pbmZvZnJhbWUgKmZy
YW1lLAogCWNhc2UgSERNSV9JTkZPRlJBTUVfVFlQRV9BVkk6CiAJCWxlbmd0aCA9IGhkbWlfYXZp
X2luZm9mcmFtZV9wYWNrKCZmcmFtZS0+YXZpLCBidWZmZXIsIHNpemUpOwogCQlicmVhazsKKwlj
YXNlIEhETUlfSU5GT0ZSQU1FX1RZUEVfRFJNOgorCQlsZW5ndGggPSBoZG1pX2RybV9pbmZvZnJh
bWVfcGFjaygmZnJhbWUtPmRybSwgYnVmZmVyLCBzaXplKTsKKwkJYnJlYWs7CiAJY2FzZSBIRE1J
X0lORk9GUkFNRV9UWVBFX1NQRDoKIAkJbGVuZ3RoID0gaGRtaV9zcGRfaW5mb2ZyYW1lX3BhY2so
JmZyYW1lLT5zcGQsIGJ1ZmZlciwgc2l6ZSk7CiAJCWJyZWFrOwpAQCAtODM4LDYgKzk4Niw4IEBA
IHN0YXRpYyBjb25zdCBjaGFyICpoZG1pX2luZm9mcmFtZV90eXBlX2dldF9uYW1lKGVudW0gaGRt
aV9pbmZvZnJhbWVfdHlwZSB0eXBlKQogCQlyZXR1cm4gIlNvdXJjZSBQcm9kdWN0IERlc2NyaXB0
aW9uIChTUEQpIjsKIAljYXNlIEhETUlfSU5GT0ZSQU1FX1RZUEVfQVVESU86CiAJCXJldHVybiAi
QXVkaW8iOworCWNhc2UgSERNSV9JTkZPRlJBTUVfVFlQRV9EUk06CisJCXJldHVybiAiRHluYW1p
YyBSYW5nZSBhbmQgTWFzdGVyaW5nIjsKIAl9CiAJcmV0dXJuICJSZXNlcnZlZCI7CiB9CkBAIC0x
Mjg0LDYgKzE0MzQsNDAgQEAgc3RhdGljIHZvaWQgaGRtaV9hdWRpb19pbmZvZnJhbWVfbG9nKGNv
bnN0IGNoYXIgKmxldmVsLAogCQkJZnJhbWUtPmRvd25taXhfaW5oaWJpdCA/ICJZZXMiIDogIk5v
Iik7CiB9CiAKKy8qKgorICogaGRtaV9kcm1faW5mb2ZyYW1lX2xvZygpIC0gbG9nIGluZm8gb2Yg
SERNSSBEUk0gaW5mb2ZyYW1lCisgKiBAbGV2ZWw6IGxvZ2dpbmcgbGV2ZWwKKyAqIEBkZXY6IGRl
dmljZQorICogQGZyYW1lOiBIRE1JIERSTSBpbmZvZnJhbWUKKyAqLworc3RhdGljIHZvaWQgaGRt
aV9kcm1faW5mb2ZyYW1lX2xvZyhjb25zdCBjaGFyICpsZXZlbCwKKwkJCQkgICBzdHJ1Y3QgZGV2
aWNlICpkZXYsCisJCQkJICAgY29uc3Qgc3RydWN0IGhkbWlfZHJtX2luZm9mcmFtZSAqZnJhbWUp
Cit7CisJaW50IGk7CisKKwloZG1pX2luZm9mcmFtZV9sb2dfaGVhZGVyKGxldmVsLCBkZXYsCisJ
CQkJICAoc3RydWN0IGhkbWlfYW55X2luZm9mcmFtZSAqKWZyYW1lKTsKKwloZG1pX2xvZygibGVu
Z3RoOiAlZFxuIiwgZnJhbWUtPmxlbmd0aCk7CisJaGRtaV9sb2coIm1ldGFkYXRhIHR5cGU6ICVk
XG4iLCBmcmFtZS0+bWV0YWRhdGFfdHlwZSk7CisJaGRtaV9sb2coImVvdGY6ICVkXG4iLCBmcmFt
ZS0+ZW90Zik7CisJZm9yIChpID0gMDsgaSA8IDM7IGkrKykgeworCQloZG1pX2xvZygieFslZF06
ICVkXG4iLCBpLCBmcmFtZS0+ZGlzcGxheV9wcmltYXJpZXNbaV0ueCk7CisJCWhkbWlfbG9nKCJ5
WyVkXTogJWRcbiIsIGksIGZyYW1lLT5kaXNwbGF5X3ByaW1hcmllc1tpXS55KTsKKwl9CisKKwlo
ZG1pX2xvZygid2hpdGUgcG9pbnQgeDogJWRcbiIsIGZyYW1lLT53aGl0ZV9wb2ludC54KTsKKwlo
ZG1pX2xvZygid2hpdGUgcG9pbnQgeTogJWRcbiIsIGZyYW1lLT53aGl0ZV9wb2ludC55KTsKKwor
CWhkbWlfbG9nKCJtYXhfZGlzcGxheV9tYXN0ZXJpbmdfbHVtaW5hbmNlOiAlZFxuIiwKKwkJIGZy
YW1lLT5tYXhfZGlzcGxheV9tYXN0ZXJpbmdfbHVtaW5hbmNlKTsKKwloZG1pX2xvZygibWluX2Rp
c3BsYXlfbWFzdGVyaW5nX2x1bWluYW5jZTogJWRcbiIsCisJCSBmcmFtZS0+bWluX2Rpc3BsYXlf
bWFzdGVyaW5nX2x1bWluYW5jZSk7CisKKwloZG1pX2xvZygibWF4X2NsbDogJWRcbiIsIGZyYW1l
LT5tYXhfY2xsKTsKKwloZG1pX2xvZygibWF4X2ZhbGw6ICVkXG4iLCBmcmFtZS0+bWF4X2ZhbGwp
OworfQorCiBzdGF0aWMgY29uc3QgY2hhciAqCiBoZG1pXzNkX3N0cnVjdHVyZV9nZXRfbmFtZShl
bnVtIGhkbWlfM2Rfc3RydWN0dXJlIHMzZF9zdHJ1Y3QpCiB7CkBAIC0xMzcyLDYgKzE1NTYsOSBA
QCB2b2lkIGhkbWlfaW5mb2ZyYW1lX2xvZyhjb25zdCBjaGFyICpsZXZlbCwKIAljYXNlIEhETUlf
SU5GT0ZSQU1FX1RZUEVfVkVORE9SOgogCQloZG1pX3ZlbmRvcl9hbnlfaW5mb2ZyYW1lX2xvZyhs
ZXZlbCwgZGV2LCAmZnJhbWUtPnZlbmRvcik7CiAJCWJyZWFrOworCWNhc2UgSERNSV9JTkZPRlJB
TUVfVFlQRV9EUk06CisJCWhkbWlfZHJtX2luZm9mcmFtZV9sb2cobGV2ZWwsIGRldiwgJmZyYW1l
LT5kcm0pOworCQlicmVhazsKIAl9CiB9CiBFWFBPUlRfU1lNQk9MKGhkbWlfaW5mb2ZyYW1lX2xv
Zyk7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZWRpZC5oIGIvaW5jbHVkZS9kcm0vZHJt
X2VkaWQuaAppbmRleCA5ZDNiNWI5Li40YmE1NmY1IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9k
cm1fZWRpZC5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9lZGlkLmgKQEAgLTI1LDYgKzI1LDcgQEAK
IAogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAjaW5jbHVkZSA8bGludXgvaGRtaS5oPgorI2lu
Y2x1ZGUgPGRybS9kcm1fbW9kZS5oPgogCiBzdHJ1Y3QgZHJtX2RldmljZTsKIHN0cnVjdCBpMmNf
YWRhcHRlcjsKQEAgLTM3MCw2ICszNzEsMTAgQEAgaW50IGRybV9hdl9zeW5jX2RlbGF5KHN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJCQkJICAgY29uc3Qgc3RydWN0IGRybV9kaXNw
bGF5X21vZGUgKm1vZGUsCiAJCQkJICAgZW51bSBoZG1pX3F1YW50aXphdGlvbl9yYW5nZSByZ2Jf
cXVhbnRfcmFuZ2UpOwogCitpbnQKK2RybV9oZG1pX2luZm9mcmFtZV9zZXRfaGRyX21ldGFkYXRh
KHN0cnVjdCBoZG1pX2RybV9pbmZvZnJhbWUgKmZyYW1lLAorCQkJCSAgICBjb25zdCBzdHJ1Y3Qg
aGRyX291dHB1dF9tZXRhZGF0YSAqaGRyX21ldGFkYXRhKTsKKwogLyoqCiAgKiBkcm1fZWxkX21u
bCAtIEdldCBFTEQgbW9uaXRvciBuYW1lIGxlbmd0aCBpbiBieXRlcy4KICAqIEBlbGQ6IHBvaW50
ZXIgdG8gYW4gZWxkIG1lbW9yeSBzdHJ1Y3R1cmUgd2l0aCBtbmwgc2V0CmRpZmYgLS1naXQgYS9p
bmNsdWRlL2xpbnV4L2hkbWkuaCBiL2luY2x1ZGUvbGludXgvaGRtaS5oCmluZGV4IDY3ODA0NzYu
LjdlZGFmY2YgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvaGRtaS5oCisrKyBiL2luY2x1ZGUv
bGludXgvaGRtaS5oCkBAIC00Nyw2ICs0Nyw3IEBAIGVudW0gaGRtaV9pbmZvZnJhbWVfdHlwZSB7
CiAJSERNSV9JTkZPRlJBTUVfVFlQRV9BVkkgPSAweDgyLAogCUhETUlfSU5GT0ZSQU1FX1RZUEVf
U1BEID0gMHg4MywKIAlIRE1JX0lORk9GUkFNRV9UWVBFX0FVRElPID0gMHg4NCwKKwlIRE1JX0lO
Rk9GUkFNRV9UWVBFX0RSTSA9IDB4ODcsCiB9OwogCiAjZGVmaW5lIEhETUlfSUVFRV9PVUkgMHgw
MDBjMDMKQEAgLTE4NSwxMiArMTg2LDM3IEBAIHN0cnVjdCBoZG1pX2F2aV9pbmZvZnJhbWUgewog
CXVuc2lnbmVkIHNob3J0IHJpZ2h0X2JhcjsKIH07CiAKKy8qIERSTSBJbmZvZnJhbWUgYXMgcGVy
IENUQSA4NjEuRyBzcGVjICovCitzdHJ1Y3QgaGRtaV9kcm1faW5mb2ZyYW1lIHsKKwllbnVtIGhk
bWlfaW5mb2ZyYW1lX3R5cGUgdHlwZTsKKwl1bnNpZ25lZCBjaGFyIHZlcnNpb247CisJdW5zaWdu
ZWQgY2hhciBsZW5ndGg7CisJZW51bSBoZG1pX2VvdGYgZW90ZjsKKwllbnVtIGhkbWlfbWV0YWRh
dGFfdHlwZSBtZXRhZGF0YV90eXBlOworCXN0cnVjdCB7CisJCXUxNiB4LCB5OworCX0gZGlzcGxh
eV9wcmltYXJpZXNbM107CisJc3RydWN0IHsKKwkJdTE2IHgsIHk7CisJfSB3aGl0ZV9wb2ludDsK
Kwl1MTYgbWF4X2Rpc3BsYXlfbWFzdGVyaW5nX2x1bWluYW5jZTsKKwl1MTYgbWluX2Rpc3BsYXlf
bWFzdGVyaW5nX2x1bWluYW5jZTsKKwl1MTYgbWF4X2NsbDsKKwl1MTYgbWF4X2ZhbGw7Cit9Owor
CiBpbnQgaGRtaV9hdmlfaW5mb2ZyYW1lX2luaXQoc3RydWN0IGhkbWlfYXZpX2luZm9mcmFtZSAq
ZnJhbWUpOwogc3NpemVfdCBoZG1pX2F2aV9pbmZvZnJhbWVfcGFjayhzdHJ1Y3QgaGRtaV9hdmlf
aW5mb2ZyYW1lICpmcmFtZSwgdm9pZCAqYnVmZmVyLAogCQkJCXNpemVfdCBzaXplKTsKIHNzaXpl
X3QgaGRtaV9hdmlfaW5mb2ZyYW1lX3BhY2tfb25seShjb25zdCBzdHJ1Y3QgaGRtaV9hdmlfaW5m
b2ZyYW1lICpmcmFtZSwKIAkJCQkgICAgIHZvaWQgKmJ1ZmZlciwgc2l6ZV90IHNpemUpOwogaW50
IGhkbWlfYXZpX2luZm9mcmFtZV9jaGVjayhzdHJ1Y3QgaGRtaV9hdmlfaW5mb2ZyYW1lICpmcmFt
ZSk7CitpbnQgaGRtaV9kcm1faW5mb2ZyYW1lX2luaXQoc3RydWN0IGhkbWlfZHJtX2luZm9mcmFt
ZSAqZnJhbWUpOworc3NpemVfdCBoZG1pX2RybV9pbmZvZnJhbWVfcGFjayhzdHJ1Y3QgaGRtaV9k
cm1faW5mb2ZyYW1lICpmcmFtZSwgdm9pZCAqYnVmZmVyLAorCQkJCXNpemVfdCBzaXplKTsKK3Nz
aXplX3QgaGRtaV9kcm1faW5mb2ZyYW1lX3BhY2tfb25seShjb25zdCBzdHJ1Y3QgaGRtaV9kcm1f
aW5mb2ZyYW1lICpmcmFtZSwKKwkJCQkgICAgIHZvaWQgKmJ1ZmZlciwgc2l6ZV90IHNpemUpOwor
aW50IGhkbWlfZHJtX2luZm9mcmFtZV9jaGVjayhzdHJ1Y3QgaGRtaV9kcm1faW5mb2ZyYW1lICpm
cmFtZSk7CiAKIGVudW0gaGRtaV9zcGRfc2RpIHsKIAlIRE1JX1NQRF9TRElfVU5LTk9XTiwKQEAg
LTM4MSw2ICs0MDcsNyBAQCBzc2l6ZV90IGhkbWlfdmVuZG9yX2luZm9mcmFtZV9wYWNrX29ubHko
Y29uc3Qgc3RydWN0IGhkbWlfdmVuZG9yX2luZm9mcmFtZSAqZnJhbQogCXN0cnVjdCBoZG1pX3Nw
ZF9pbmZvZnJhbWUgc3BkOwogCXVuaW9uIGhkbWlfdmVuZG9yX2FueV9pbmZvZnJhbWUgdmVuZG9y
OwogCXN0cnVjdCBoZG1pX2F1ZGlvX2luZm9mcmFtZSBhdWRpbzsKKwlzdHJ1Y3QgaGRtaV9kcm1f
aW5mb2ZyYW1lIGRybTsKIH07CiAKIHNzaXplX3QgaGRtaV9pbmZvZnJhbWVfcGFjayh1bmlvbiBo
ZG1pX2luZm9mcmFtZSAqZnJhbWUsIHZvaWQgKmJ1ZmZlciwKLS0gCjEuOS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
