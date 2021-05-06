Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DB8375855
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 18:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF886E7D1;
	Thu,  6 May 2021 16:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46AB26E7D1
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 May 2021 16:19:33 +0000 (UTC)
IronPort-SDR: 9he+1AG1OBbwbDnb7yCs5Le+r4zNEzWZL7QzEnbM6ja7KN2LY82iv3Pflwj3IKdJ9uuS1/tuVo
 58GmQ/3yngiw==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="195395907"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="195395907"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 09:19:33 -0700
IronPort-SDR: p8e66esUpVtsC3UemzPayGyc1sfoauLeiOoZaitoQ+qWzt2Inb6mYqvenTggmgJYGf+WP6d9YU
 jUWhJe6ujdtg==
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="407072105"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 09:19:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 May 2021 19:19:20 +0300
Message-Id: <20210506161930.309688-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/10] drm/i915/adl_p: Add support for
 Display Page Tables
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyB2MiBvZiBbMV0sIHJlYmFzaW5nIHRoZSBwYXRjaHNldCBvbiB0aGUgbGF0ZXN0IGRy
bS10aXAgdHJlZSBhbmQKYWRkaW5nIFJldmlld2VkLWJ5IHRhZ3MuCgpbMV0gaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84OTA3OC8KCkNsaW50b24gVGF5bG9yICgyKToK
ICBkcm0vaTkxNS9hZGxfcDogQWRkIFBDSSBEZXZpY2VzIElEcwogIGRybS9pOTE1L2FkbF9wOiBB
RExfUCBkZXZpY2UgaW5mbyBlbmFibGluZwoKSW1yZSBEZWFrICgzKToKICBkcm0vaTkxNS9hZGxf
cDogRGlzYWJsZSBzdXBwb3J0IGZvciA5MC8yNzAgRkIgcm90YXRpb24KICBkcm0vaTkxNS9hZGxf
cDogUmVxdWlyZSBhIG1pbmltdW0gb2YgOCB0aWxlcyBzdHJpZGUgZm9yIERQVCBGQnMKICBkcm0v
aTkxNS9hZGxfcDogRW5hYmxlIHJlbWFwcGluZyB0byBwYWQgRFBUIEZCIHN0cmlkZXMgdG8gUE9U
CgpKb3PDqSBSb2JlcnRvIGRlIFNvdXphICgyKToKICBkcm0vaTkxNS94ZWxwZDogRmFsbGJhY2sg
dG8gcGxhbmUgc3RyaWRlIGxpbWl0YXRpb25zIHdoZW4gdXNpbmcgRFBUCiAgZHJtL2k5MTUvYWRs
X3A6IEFkZCBzdHJpZGUgcmVzdHJpY3Rpb24gd2hlbiB1c2luZyBEUFQKCkp1aGEtUGVra2EgSGVp
a2tpbMOkICgxKToKICBkcm0vaTkxNS94ZWxwZDogU3VwcG9ydCAxMjhrIHBsYW5lIHN0cmlkZQoK
TWF0dCBSb3BlciAoMSk6CiAgZHJtL2k5MTUveGVscGQ6IGFkZCBYRV9MUEQgZGlzcGxheSBjaGFy
YWN0ZXJpc3RpY3MKClZpbGxlIFN5cmrDpGzDpCAoMSk6CiAgZHJtL2k5MTUveGVscGQ6IEZpcnN0
IHN0YWIgYXQgRFBUIHN1cHBvcnQKCiBhcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMgICAg
ICAgICAgICAgICAgfCAgIDEgKwogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21p
Y19wbGFuZS5jIHwgICA3ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyAgfCAzODQgKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuaCAgfCAgIDEgKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5oICAgIHwgICAyICsKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAyNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYi5jICAgICAgIHwgIDM3ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiLmggICAgICAgfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYyAgICAgIHwgICA2ICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVy
c2FsX3BsYW5lLmMgICAgfCAgNjggKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9w
cGd0dC5oICAgICAgICAgIHwgICA3ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dn
dHQuYyAgICAgICAgICB8ICAgNyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0
LmggICAgICAgICAgIHwgICA1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAg
ICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAg
ICAgICAgICAgfCAgMjIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAg
ICAgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMg
ICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oICAg
ICAgfCAgIDEgKwogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCAgICAgICAgICAgICAgICAgICAg
IHwgIDIxICsKIDE5IGZpbGVzIGNoYW5nZWQsIDU0NSBpbnNlcnRpb25zKCspLCA1NiBkZWxldGlv
bnMoLSkKCi0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
