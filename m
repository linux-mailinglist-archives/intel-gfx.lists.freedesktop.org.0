Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF0C189A21
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 12:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8D1D6E8B7;
	Wed, 18 Mar 2020 11:01:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7019C6E8B7
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 11:01:56 +0000 (UTC)
IronPort-SDR: Fdkp+ByEa1p1DDwrK0vzJS/qyFkaXE6ojDk6mYfUB1VdSAr088At90GIKqgZZgYO2inC50afiK
 CLY4p2roJIcQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 04:01:55 -0700
IronPort-SDR: kwoe0OT+YhZ4bRITciHNBNArgW+4Zkhsjyq6CE3yvj0pD7jzt+20VUPMf+Qc9hjlDEQDNlAXc5
 Cl6zMos8rQNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="244790960"
Received: from unknown (HELO localhost.localdomain) ([10.214.196.8])
 by orsmga003.jf.intel.com with ESMTP; 18 Mar 2020 04:01:54 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 11:01:37 +0000
Message-Id: <20200318110146.22339-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] Per client engine busyness
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkFub3RoZXIg
cmUtc3BpbiBvZiB0aGUgcGVyLWNsaWVudCBlbmdpbmUgYnVzeW5lc3Mgc2VyaWVzLiBIaWdobGln
aHRzIGZyb20gdGhpcwp2ZXJzaW9uOgoKICogQ2hlY2twYXRjaCBjbGVhbnVwIGFuZCBiaXRzIG9m
IHJldmlldyBmZWVkYmFjayBvbmx5LgoKSW50ZXJuYWxseSB3ZSB0cmFjayB0aW1lIHNwZW50IG9u
IGVuZ2luZXMgZm9yIGVhY2ggc3RydWN0IGludGVsX2NvbnRleHQuIFRoaXMKY2FuIHNlcnZlIGFz
IGEgYnVpbGRpbmcgYmxvY2sgZm9yIHNldmVyYWwgZmVhdHVyZXMgZnJvbSB0aGUgd2FudCBsaXN0
OgpzbWFydGVyIHNjaGVkdWxlciBkZWNpc2lvbnMsIGdldHJ1c2FnZSgyKS1saWtlIHBlci1HRU0t
Y29udGV4dCBmdW5jdGlvbmFsaXR5CndhbnRlZCBieSBzb21lIGN1c3RvbWVycywgY2dyb3VwcyBj
b250cm9sbGVyLCBkeW5hbWljIFNTRVUgdHVuaW5nLC4uLgoKRXh0ZXJuYWxseSwgaW4gc3lzZnMs
IHdlIGV4cG9zZSB0aW1lIHNwZW50IG9uIEdQVSBwZXIgY2xpZW50IGFuZCBwZXIgZW5naW5lCmNs
YXNzLgoKU3lzZnMgaW50ZXJmYWNlIGVuYWJsZXMgdXMgdG8gaW1wbGVtZW50IGEgInRvcC1saWtl
IiB0b29sIGZvciBHUFUgdGFza3MuIE9yIHdpdGgKYSAic2NyZWVuc2hvdCI6Cn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+CmludGVsLWdwdS10b3AgLSAgOTA2LyA5NTUgTUh6OyAgICAwJSBSQzY7ICA1
LjMwIFdhdHRzOyAgICAgIDkzMyBpcnFzL3MKCiAgICAgIElNQyByZWFkczogICAgIDQ0MTQgTWlC
L3MKICAgICBJTUMgd3JpdGVzOiAgICAgMzgwNSBNaUIvcwoKICAgICAgICAgIEVOR0lORSAgICAg
IEJVU1kgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE1JX1NFTUEgTUlfV0FJ
VAogICAgIFJlbmRlci8zRC8wICAgOTMuNDYlIHzilojilojilojilojilojilojilojilojiloji
lojilojilojilojilojilojilojilojilojilojilojilojilojilojilojilojilojilojiloji
lojilojilojilojilosgIHwgICAgICAwJSAgICAgIDAlCiAgICAgICBCbGl0dGVyLzAgICAgMC4w
MCUgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgIDAlICAgICAgMCUK
ICAgICAgICAgVmlkZW8vMCAgICAwLjAwJSB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgICAgMCUgICAgICAwJQogIFZpZGVvRW5oYW5jZS8wICAgIDAuMDAlIHwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAwJSAgICAgIDAlCgogIFBJRCAgICAg
ICAgICAgIE5BTUUgIFJlbmRlci8zRCAgICAgIEJsaXR0ZXIgICAgICAgIFZpZGVvICAgICAgVmlk
ZW9FbmhhbmNlCiAyNzMzICAgICAgIG5ldmVyYmFsbCB84paI4paI4paI4paI4paI4paI4paMICAg
ICB8fCAgICAgICAgICAgIHx8ICAgICAgICAgICAgfHwgICAgICAgICAgICB8CiAyMDQ3ICAgICAg
ICAgICAgWG9yZyB84paI4paI4paI4paKICAgICAgICB8fCAgICAgICAgICAgIHx8ICAgICAgICAg
ICAgfHwgICAgICAgICAgICB8CiAyNzM3ICAgICAgICBnbHhnZWFycyB84paI4paNICAgICAgICAg
IHx8ICAgICAgICAgICAgfHwgICAgICAgICAgICB8fCAgICAgICAgICAgIHwKIDIxMjggICAgICAg
ICAgIHhmd200IHwgICAgICAgICAgICB8fCAgICAgICAgICAgIHx8ICAgICAgICAgICAgfHwgICAg
ICAgICAgICB8CiAyMDQ3ICAgICAgICAgICAgWG9yZyB8ICAgICAgICAgICAgfHwgICAgICAgICAg
ICB8fCAgICAgICAgICAgIHx8ICAgICAgICAgICAgfAp+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgoK
SW1wbGVtZW50YXRpb24gd2lzZSB3ZSBhZGQgYSBhIGJ1bmNoIG9mIGZpbGVzIGluIHN5c2ZzIGxp
a2U6CgoJIyBjZCAvc3lzL2NsYXNzL2RybS9jYXJkMC9jbGllbnRzLwoJIyB0cmVlCgkuCgnilJzi
lIDilIAgNwoJ4pSCICAg4pSc4pSA4pSAIGJ1c3kKCeKUgiAgIOKUgiAgIOKUnOKUgOKUgCAwCgni
lIIgICDilIIgICDilJzilIDilIAgMQoJ4pSCICAg4pSCICAg4pSc4pSA4pSAIDIKCeKUgiAgIOKU
giAgIOKUlOKUgOKUgCAzCgnilIIgICDilJzilIDilIAgbmFtZQoJ4pSCICAg4pSU4pSA4pSAIHBp
ZAoJ4pSc4pSA4pSAIDgKCeKUgiAgIOKUnOKUgOKUgCBidXN5CgnilIIgICDilIIgICDilJzilIDi
lIAgMAoJ4pSCICAg4pSCICAg4pSc4pSA4pSAIDEKCeKUgiAgIOKUgiAgIOKUnOKUgOKUgCAyCgni
lIIgICDilIIgICDilJTilIDilIAgMwoJ4pSCICAg4pSc4pSA4pSAIG5hbWUKCeKUgiAgIOKUlOKU
gOKUgCBwaWQKCeKUlOKUgOKUgCA5CgkgICAg4pSc4pSA4pSAIGJ1c3kKCSAgICDilIIgICDilJzi
lIDilIAgMAoJICAgIOKUgiAgIOKUnOKUgOKUgCAxCgkgICAg4pSCICAg4pSc4pSA4pSAIDIKCSAg
ICDilIIgICDilJTilIDilIAgMwoJICAgIOKUnOKUgOKUgCBuYW1lCgkgICAg4pSU4pSA4pSAIHBp
ZAoKRmlsZXMgaW4gJ2J1c3knIGRpcmVjdG9yaWVzIGFyZSBudW1iZXJlZCB1c2luZyB0aGUgZW5n
aW5lIGNsYXNzIEFCSSB2YWx1ZXMgYW5kCnRoZXkgY29udGFpbiBhY2N1bXVsYXRlZCBuYW5vc2Vj
b25kcyBlYWNoIGNsaWVudCBzcGVudCBvbiBlbmdpbmVzIG9mIGEKcmVzcGVjdGl2ZSBjbGFzcy4K
Ckl0IGlzIHN0aWwgYSBSRkMgc2luY2UgaXQgbWlzc2VzIGRlZGljYXRlZCB0ZXN0IGNhc2VzIHRv
IGVuc3VyZSB0aGluZ3MgcmVhbGx5CndvcmsgYXMgYWR2ZXJ0aXNlZC4KClR2cnRrbyBVcnN1bGlu
ICg5KToKICBkcm0vaTkxNTogVXBkYXRlIGNsaWVudCBuYW1lIG9uIGNvbnRleHQgY3JlYXRlCiAg
ZHJtL2k5MTU6IE1ha2UgR0VNIGNvbnRleHRzIHRyYWNrIERSTSBjbGllbnRzCiAgZHJtL2k5MTU6
IFVzZSBleHBsaWNpdCBmbGFnIHRvIG1hcmsgdW5yZWFjaGFibGUgaW50ZWxfY29udGV4dAogIGRy
bS9pOTE1OiBUcmFjayBydW50aW1lIHNwZW50IGluIHVucmVhY2hhYmxlIGludGVsX2NvbnRleHRz
CiAgZHJtL2k5MTU6IFRyYWNrIHJ1bnRpbWUgc3BlbnQgaW4gY2xvc2VkIEdFTSBjb250ZXh0cwog
IGRybS9pOTE1OiBUcmFjayBhbGwgdXNlciBjb250ZXh0cyBwZXIgY2xpZW50CiAgZHJtL2k5MTU6
IEV4cG9zZSBwZXItZW5naW5lIGNsaWVudCBidXN5bmVzcwogIGRybS9pOTE1OiBUcmFjayBjb250
ZXh0IGN1cnJlbnQgYWN0aXZlIHRpbWUKICBkcm0vaTkxNTogUHJlZmVyIHNvZnR3YXJlIHRyYWNr
ZWQgY29udGV4dCBidXN5bmVzcwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9j
b250ZXh0LmMgICB8ICA2MyArKystCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250
ZXh0X3R5cGVzLmggfCAgMjEgKy0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNi
dWZmZXIuYyAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4
dC5jICAgICAgIHwgIDE4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0
LmggICAgICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRf
dHlwZXMuaCB8ICAyNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAg
ICAgICAgIHwgIDU1ICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5j
ICAgICAgICB8ICAxMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAg
ICAgICAgIHwgIDI5ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RybV9jbGllbnQuYyAg
ICAgICAgfCAyNzQgKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RybV9jbGllbnQuaCAgICAgICAgfCAgMzMgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dwdV9lcnJvci5jICAgICAgICAgfCAgMjUgKy0KIDEyIGZpbGVzIGNoYW5nZWQsIDQ3MyBpbnNl
cnRpb25zKCspLCA4OCBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
