Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48335167BA
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 18:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0EA689C61;
	Tue,  7 May 2019 16:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7CF589C61;
 Tue,  7 May 2019 16:25:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 09:25:39 -0700
X-ExtLoop1: 1
Received: from nuc.iind.intel.com ([10.99.66.149])
 by orsmga001.jf.intel.com with ESMTP; 07 May 2019 09:25:37 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniel.vetter@intel.com
Date: Tue,  7 May 2019 21:57:34 +0530
Message-Id: <20190507162745.25600-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 00/11] HDCP2.2 Phase II
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBzZXJpZXMgYWRkcyB0aGUgY29udGVudCB0eXBlIGNhcGFiaWxpdHkgZm9yIEhEQ1AgdGhy
b3VnaCBhCmRybSBjb25uZXRvciBwcm9lcHJ0eSAiSERDUCBDb250ZW50IFR5cGUiLiBCeSBkZWZh
dWx0IHRoaXMgcHJvcGVydHkgd2lsbApiZSAiVHlwZSAwIi4gQW5kIHRoaXMgcHJvcGVydHkgaXMg
ZXhwb3NlZCBieSB0aGUgZHJpdmVycyB3aGljaCBoYXMgdGhlCkhEQ1AyLjIgY2FwYWJpbGl0eSB0
byBlbmFibGUgdGhlIHVzZXJzcGFjZSB0byBjb25maWd1cmUgZm9yICJUeXBlIDEiLgoKSERDUCBD
b250ZW50IFR5cGU6CglUaGlzIHByb3BlcnR5IGlzIHVzZWQgdG8gaW5kaWNhdGUgdGhlIGNvbnRl
bnQgdHlwZQpjbGFzc2lmaWNhdGlvbiBvZiBhIHN0cmVhbS4gV2hpY2ggaW5kaWNhdGUgdGhlIEhE
Q1AgdmVyc2lvbiByZXF1aXJlZApmb3IgdGhlIHJlbmRlcmluZyBvZiB0aGF0IHN0cmVhbXMuIFRo
aXMgY29udGVuIHR5cGUgaXMgb25lIG9mIHRoZQpwYXJhbWV0ZXIgaW4gdGhlIEhEQ1AyLjIgYXV0
aGVudGljYXRpb24gZmxvdywgYXMgZXZlbiBkb3duc3RyZWFtCnJlcGVhdGVycyB3aWxsIG1hbmRh
dGUgdGhlIEhEQ1AgdmVyc2lvbiByZXF1aXJlbWVudC4KClR3byB2YWx1ZXMgcG9zc2libGUgZm9y
IGNvbnRlbnQgdHlwZSBvZiBhIHN0cmVhbToKCVR5cGUgMDogU3RyZWFtIGNhbiBiZSByZW5kZXJl
ZCBvbmx5IG9uIEhEQ1AgZW5jcnlwdGVkIGxpbmsgbm8KCQlyZXN0cmljdGlvbiBvbiBIRENQIHZl
cnNpb25zLgoJVHlwZSAxOiBTdHJlYW0gY2FuIGJlIHJlbmRlcmVkIG9ubHkgb24gSERDUDIuMiBl
bmNyeXB0ZWQgbGluay4KCkFuZCBhbHNvIHRoaXMgc2VyaWVzIGFkZHMgYSB1ZXZlbnQgZm9yIGEg
Y2hhbmdlIGluIHRoZSBwcm9wZXJ0eSBzdGF0ZQpjaGFuZ2Ugb2YgYSBjb25uZWN0b3IuIFRoaXMg
aGVscHMgdGhlIHVzZXJzcGFjZSB0byBtb25pdG9yIHRoZSB1ZXZlbnQKZm9yIGEgcHJvcGVydHkg
c3RhdGUgY2hhbmdlIHRoYW4gdGhlIHRyaXZpYWwgcG9sbGluZy4KClVzZXJzcGFjZSBjb25zdW1l
ciBmb3IgYWJvdmUgIkhEQ1AgQ29udGVudCBUeXBlIiBwcm9wZXJ0eSBhbmQgdWV2ZW50IGlzCmFs
bW9zdCBhdCB0aGUgbGFzdCBwaGFzZSBvZiByZXZpZXcgYXQgI3dheWxhbmQgY29tbXVuaXR5LiBT
byBQYXRjaGVzIAo3LCA4LCA5LCAxMCBhbmQgMTEgY2FuIGJlIG1lcmdlZCBvbmx5IHdoZW4gcGF0
Y2hlcyBpbiAjd2F5bGFuZCBjb21tdW5pdHkKcmVjZWl2ZXMgdGhlIEFDSy4KCkhEQ1AgU1JNIGlz
IGltcGxlbWVudGVkIHRocm91Z2ggcmVxdWVzdF9maXJtd2FyZSgpIGludGVyZmFjZS4gSGVuY2UK
dXNlcnNwYWNlIGlzIGV4cGVjdGVkIHRvIHdyaXRlIHRoZSBzaWduYXR1cmUgdmFsaWRhdGVkIGxh
dGVzdCBhdmFpbGFibGUKU1JNIHRhYmxlIGludG8gL2xpYi9maXJtd2FyZS8gYXMgImRpc3BsYXlf
aGRjcF9zcm0uYmluIi4gT24gZXZlcnkgSERDUAphdXRoZW50aWNhdGlvbiBrZXJuZWwgd2lsbCBy
ZWFkIHRoZSBTUk0gZnJvbSBhYm92ZSBtZW50aW9uZWQgZmlsZSBhbmQKZG8gdGhlIHJldm9jYXRp
b24gY2hlY2suCgpBbmQgYWxzbyB0aGlzIHNlcmllcyBnYXRoZXJzIGFsbCBIRENQIHJlbGF0ZWQg
RFJNIGNvZGUgaW50byBkcm1faGRjcC5jCgpUaGFua3MgRGFuaWVsIFZldHRlciBmb3IgYWxsIHRo
ZSByZXZpZXdzLgoKdjc6CiAgZmV3IHN1Z2dlc3Rpb25zIGluIFNSTSBoYW5kbGluZyBhdCBkcm0g
aXMgYWRkcmVzc2VkIFtEYW5pZWxdCiAgQSBwcmVwIHBhdGNoIGlzIGFkZGVkLgogIGZpeCBhdCBj
b250ZW50X3R5cGUgYXR0YWNobWVudCBpcyBhZGRlZC4KClNlcmllcyBjYW4gYmUgY2xvbmVkIGZy
b20gZ2l0aHViCmh0dHBzOi8vZ2l0aHViLmNvbS9yYW1hbGluZ2FtcGMyMDA4L2RybS10aXAuZ2l0
IGhkY3AyXzJfcDJfdjcKClRlc3Qtd2l0aDogPDIwMTkwNTAyMTMxNjI1LjI3NTUxLTItcmFtYWxp
bmdhbS5jQGludGVsLmNvbT4KClJhbWFsaW5nYW0gQyAoMTEpOgogIGRybTogbW92ZSBjb250ZW50
IHByb3RlY3Rpb24gcHJvcGVydHkgdG8gbW9kZV9jb25maWcKICBkcm0vaTkxNTogZGVidWdmczog
SERDUDIuMiBjYXBhYmlsaXR5IHJlYWQKICBkcm06IGdlbmVyaWMgZm4gY29udmVydGluZyBiZTI0
IHRvIGNwdSBhbmQgdmljZSB2ZXJzYQogIGRybTogcmV2b2NhdGlvbiBjaGVjayBhdCBkcm0gc3Vi
c3lzdGVtCiAgZHJtL2k5MTU6IFNSTSByZXZvY2F0aW9uIGNoZWNrIGZvciBIRENQMS40IGFuZCAy
LjIKICBkcm0vaGRjcDogZ2F0aGVyaW5nIGhkY3AgcmVsYXRlZCBjb2RlIGludG8gZHJtX2hkY3Au
YwogIGRybTogQWRkIENvbnRlbnQgcHJvdGVjdGlvbiB0eXBlIHByb3BlcnR5CiAgZHJtL2k5MTU6
IEF0dGFjaCBjb250ZW50IHR5cGUgcHJvcGVydHkKICBkcm06IHVldmVudCBmb3IgY29ubmVjdG9y
IHN0YXR1cyBjaGFuZ2UKICBkcm0vaGRjcDogdXBkYXRlIGNvbnRlbnQgcHJvdGVjdGlvbiBwcm9w
ZXJ0eSB3aXRoIHVldmVudAogIGRybS9pOTE1OiB1cGRhdGUgdGhlIGhkY3Agc3RhdGUgd2l0aCB1
ZXZlbnQKCiBEb2N1bWVudGF0aW9uL2dwdS9kcm0ta21zLWhlbHBlcnMucnN0IHwgICA2ICsKIGRy
aXZlcnMvZ3B1L2RybS9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1
L2RybS9kcm1fYXRvbWljX3VhcGkuYyAgICAgfCAgIDggKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1f
Y29ubmVjdG9yLmMgICAgICAgfCAgNjEgKystLQogZHJpdmVycy9ncHUvZHJtL2RybV9oZGNwLmMg
ICAgICAgICAgICB8IDQ0NiArKysrKysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUv
ZHJtL2RybV9pbnRlcm5hbC5oICAgICAgICB8ICAgNCArCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3N5
c2ZzLmMgICAgICAgICAgIHwgIDM3ICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMgICB8ICAxMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMgICAgICB8
ICAzOSArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkY3AuYyAgICAgfCAxMDUgKysr
Ky0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZGNwLmggICAgIHwgICAzICstCiBkcml2
ZXJzL21pc2MvbWVpL2hkY3AvbWVpX2hkY3AuYyAgICAgIHwgICAyICstCiBpbmNsdWRlL2RybS9k
cm1fY29ubmVjdG9yLmggICAgICAgICAgIHwgIDE1ICstCiBpbmNsdWRlL2RybS9kcm1faGRjcC5o
ICAgICAgICAgICAgICAgIHwgIDMzICstCiBpbmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcuaCAg
ICAgICAgIHwgIDEyICsKIGluY2x1ZGUvZHJtL2RybV9zeXNmcy5oICAgICAgICAgICAgICAgfCAg
IDUgKy0KIGluY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaCAgICAgICAgICAgfCAgIDQgKwogMTcg
ZmlsZXMgY2hhbmdlZCwgNjk4IGluc2VydGlvbnMoKyksIDk3IGRlbGV0aW9ucygtKQogY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9kcm1faGRjcC5jCgotLSAKMi4xOS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
