Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DC937AC78
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 410366EAA2;
	Tue, 11 May 2021 16:52:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 192DC6EA98;
 Tue, 11 May 2021 16:51:58 +0000 (UTC)
IronPort-SDR: 4shID0ePVq9XkemK+pVliu5WUKudMCqfTgzWfIyQ70wpiP3xg+4W6m/QiCW1L3aW4gKAZSmfvY
 MiBjBpq7+DTg==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="186930915"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="186930915"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:51:30 -0700
IronPort-SDR: FRE4Xu5HVrBHlkS9d2mPXvULQD+0jiQD7h57ysCtsiq6uLLcD3Y8NW8tjHHYsfP+Acb9zGdrqw
 ELtp61U1M3Ag==
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="537104690"
Received: from rdavies-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.2.133])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:51:27 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 11 May 2021 17:51:05 +0100
Message-Id: <20210511165117.428062-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 00/12] DG1/LMEM uAPI basics
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
Cc: thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SnVzdCB0aGUgcmVhbGx5IGJhc2ljIHN0dWZmLCB3aGljaCB1bmxvY2tzIGFkZGluZyBtb3JlIGlu
dGVyZXN0aW5nIHRlc3RjYXNlcwpsYXRlciwgbGlrZSBnZW1fbG1lbV9zd2FwcGluZy4KCk9uIHRo
ZSBrZXJuZWwgc2lkZSB3ZSBsYW5kZWQgdGhlIHVBUEkgYml0c1sxXSBiZWhpbmQgQ09ORklHX0JS
T0tFTiwgd2hpY2ggaXMKYWxyZWFkeSBlbmFibGVkIGluIENJIGJ1aWxkcywgc28gaXQgc2hvdWxk
IGJlIHBvc3NpYmxlIHRvIGdldCBzb21lIG1vcmUgQkFUCnRlc3Rpbmcob3V0c2lkZSBvZiBqdXN0
IHRoZSBzZWxmdGVzdHMpIG9uIERHMSB0byB0aGUgcG9pbnQgd2hlcmUgd2UgY2FuIHN0YXJ0IHRv
CmV4ZXJjaXNlIHRoZSBMTUVNIHBhdGhzIHdpdGggdGhlIG5ldyBiaXRzIG9mIHVBUEkuCgpbMV0g
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84OTY0OC8KCkFuZHJ6ZWog
VHVya28gKDYpOgogIGxpYi9pOTE1L2dlbV9jcmVhdGU6IEFkZCBnZW1fY3JlYXRlX2V4dAogIGxp
Yi9pOTE1L2ludGVsX21lbW9yeV9yZWdpb246IEFkZCBtZW1vcnkgcmVnaW9ucyBzdHVicwogIHRl
c3RzL2k5MTUvZ2VtX2V4ZWNfYmFzaWM6IFVzZSBtZW1vcnkgcmVnaW9uIGludGVyZmFjZQogIHRl
c3RzL2k5MTUvZ2VtX2dwZ3B1X2ZpbGw6IFVzZSBtZW1vcnkgcmVnaW9uIGludGVyZmFjZQogIHRl
c3RzL2k5MTUvZ2VtX21lZGlhX2ZpbGw6IFVzZSBtZW1vcnkgcmVnaW9uIGludGVyZmFjZQogIFN5
bmNocm9uaXplIG1lbW9yeSByZWdpb24gdWFwaSBhbmQgdGVzdHMgd2l0aCBpOTE1X2RybS5oCgpE
b21pbmlrIEdyemVnb3J6ZWsgKDEpOgogIHRlc3RzL2dlbV9ncGdwdV9maWxsOiBDb252ZXJ0IGZy
b20gc2ltcGxlIHRvIHN0YW5kYXJkIGlndF9tYWluCgpLYWxhbWFyeiwgTHVrYXN6ICgxKToKICB0
ZXN0cy9pOTE1L2dlbV9leGVjX2Jhc2ljL2RnMTogSXRlcmF0ZSBvdmVyIGFsbCBtZW1vcnkgcmVn
aW9ucwoKTHVrYXN6IEthbGFtYXJ6ICgxKToKICBsaWIvaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9u
L2RnMTogQWRkIG5ldyBsaWIgdG8gcXVlcnkgbWVtb3J5IHJlZ2lvbgoKTWF0dGhldyBBdWxkICgy
KToKICBpOTE1X2RybS5oIHN5bmMKICB0ZXN0cy9pOTE1L2dlbV9jcmVhdGU6IGV4ZXJjaXNlIHBs
YWNlbWVudHMgZXh0ZW5zaW9uCgpaYmlnbmlldyBLZW1wY3p5xYRza2kgKDEpOgogIGxpYi9pOTE1
L2ludGVsX21lbW9yeV9yZWdpb246IEFkZCBuZXcgbWFjcm9zIGFuZCBzdXBwb3J0IGZvcgogICAg
aWd0X2NvbGxlY3Rpb24KCiBiZW5jaG1hcmtzL2dlbV9ibHQuYyAgICAgICAgICAgICAgICAgICAg
fCAgIDIgKy0KIGJlbmNobWFya3MvZ2VtX2J1c3kuYyAgICAgICAgICAgICAgICAgICB8ICAgMiAr
LQogYmVuY2htYXJrcy9nZW1fY3JlYXRlLmMgICAgICAgICAgICAgICAgIHwgICAyICstCiBiZW5j
aG1hcmtzL2dlbV9leGVjX2N0eC5jICAgICAgICAgICAgICAgfCAgIDIgKy0KIGJlbmNobWFya3Mv
Z2VtX2V4ZWNfZmF1bHQuYyAgICAgICAgICAgICB8ICAgMiArLQogYmVuY2htYXJrcy9nZW1fZXhl
Y19ub3AuYyAgICAgICAgICAgICAgIHwgICAyICstCiBiZW5jaG1hcmtzL2dlbV9leGVjX3JlbG9j
LmMgICAgICAgICAgICAgfCAgIDIgKy0KIGJlbmNobWFya3MvZ2VtX2V4ZWNfdHJhY2UuYyAgICAg
ICAgICAgICB8ICAgMiArLQogYmVuY2htYXJrcy9nZW1fbGF0ZW5jeS5jICAgICAgICAgICAgICAg
IHwgICAyICstCiBiZW5jaG1hcmtzL2dlbV9wcncuYyAgICAgICAgICAgICAgICAgICAgfCAgIDIg
Ky0KIGJlbmNobWFya3MvZ2VtX3NldF9kb21haW4uYyAgICAgICAgICAgICB8ICAgMiArLQogYmVu
Y2htYXJrcy9nZW1fc3lzbGF0ZW5jeS5jICAgICAgICAgICAgIHwgICAyICstCiBiZW5jaG1hcmtz
L2dlbV93c2ltLmMgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGJlbmNobWFya3MvcHJpbWVf
bG9va3VwLmMgICAgICAgICAgICAgICB8ICAgMiArLQogaW5jbHVkZS9kcm0tdWFwaS9pOTE1X2Ry
bS5oICAgICAgICAgICAgIHwgMzk0ICsrKysrKysrKysrKysrKysrKystLQogbGliL2k5MTUvZ2Vt
LmggICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAzIC0KIGxpYi9pOTE1L2dlbV9jcmVhdGUu
YyAgICAgICAgICAgICAgICAgICB8ICA0MyArKy0KIGxpYi9pOTE1L2dlbV9jcmVhdGUuaCAgICAg
ICAgICAgICAgICAgICB8ICAxOSArCiBsaWIvaTkxNS9nZW1fbW1hbi5jICAgICAgICAgICAgICAg
ICAgICAgfCAgIDIgKy0KIGxpYi9pOTE1L2dlbV9yaW5nLmMgICAgICAgICAgICAgICAgICAgICB8
ICAgMSArCiBsaWIvaTkxNS9nZW1fc3VibWlzc2lvbi5jICAgICAgICAgICAgICAgfCAgIDEgKwog
bGliL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jICAgICAgICAgIHwgNDQxICsrKysrKysrKysr
KysrKysrKysrKysrKwogbGliL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oICAgICAgICAgIHwg
MTMwICsrKysrKysKIGxpYi9pZ3RfZHJhdy5jICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAg
MiArLQogbGliL2lndF9kdW1teWxvYWQuYyAgICAgICAgICAgICAgICAgICAgIHwgICAyICstCiBs
aWIvaWd0X2ZiLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGxpYi9pbnRl
bF9iYXRjaGJ1ZmZlci5jICAgICAgICAgICAgICAgICB8ICAgMiArLQogbGliL2ludGVsX2J1Zm9w
cy5jICAgICAgICAgICAgICAgICAgICAgIHwgICAyICstCiBsaWIvaW9jdGxfd3JhcHBlcnMuYyAg
ICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGxpYi9pb2N0bF93cmFwcGVycy5oICAgICAgICAg
ICAgICAgICAgICB8ICAgMSArCiBsaWIvbWVzb24uYnVpbGQgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgIDEgKwogdGVzdHMvYW1kZ3B1L2FtZF9wcmltZS5jICAgICAgICAgICAgICAgIHwgICAx
ICsKIHRlc3RzL2NvcmVfaG90dW5wbHVnLmMgICAgICAgICAgICAgICAgICB8ICAgMSArCiB0ZXN0
cy9pOTE1L2FwaV9pbnRlbF9hbGxvY2F0b3IuYyAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9h
cGlfaW50ZWxfYmIuYyAgICAgICAgICAgICAgIHwgICAxICsKIHRlc3RzL2k5MTUvZ2VtX2JhZF9y
ZWxvYy5jICAgICAgICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV9iYXNpYy5jICAgICAg
ICAgICAgICAgICAgfCAgIDIgKy0KIHRlc3RzL2k5MTUvZ2VtX2JsaXRzLmMgICAgICAgICAgICAg
ICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV9idXN5LmMgICAgICAgICAgICAgICAgICAgfCAg
IDEgKwogdGVzdHMvaTkxNS9nZW1fY2xvc2UuYyAgICAgICAgICAgICAgICAgIHwgICAxICsKIHRl
c3RzL2k5MTUvZ2VtX2Nsb3NlX3JhY2UuYyAgICAgICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1
L2dlbV9jb25jdXJyZW50X2FsbC5jICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW1fY3Jl
YXRlLmMgICAgICAgICAgICAgICAgIHwgMTg5ICsrKysrKysrKysKIHRlc3RzL2k5MTUvZ2VtX2Nz
X3RsYi5jICAgICAgICAgICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV9jdHhfY2xvbmUu
YyAgICAgICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW1fY3R4X2NyZWF0ZS5jICAgICAg
ICAgICAgIHwgICAxICsKIHRlc3RzL2k5MTUvZ2VtX2N0eF9lbmdpbmVzLmMgICAgICAgICAgICB8
ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV9jdHhfZXhlYy5jICAgICAgICAgICAgICAgfCAgIDEgKwog
dGVzdHMvaTkxNS9nZW1fY3R4X2lzb2xhdGlvbi5jICAgICAgICAgIHwgICAxICsKIHRlc3RzL2k5
MTUvZ2VtX2N0eF9wYXJhbS5jICAgICAgICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV9j
dHhfc2hhcmVkLmMgICAgICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW1fY3R4X3NzZXUu
YyAgICAgICAgICAgICAgIHwgICAxICsKIHRlc3RzL2k5MTUvZ2VtX2N0eF9zd2l0Y2guYyAgICAg
ICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV9laW8uYyAgICAgICAgICAgICAgICAgICAg
fCAgIDEgKwogdGVzdHMvaTkxNS9nZW1fZXZpY3RfYWxpZ25tZW50LmMgICAgICAgIHwgICAxICsK
IHRlc3RzL2k5MTUvZ2VtX2V2aWN0X2V2ZXJ5dGhpbmcuYyAgICAgICB8ICAgMSArCiB0ZXN0cy9p
OTE1L2dlbV9leGVjX2FsaWdubWVudC5jICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW1f
ZXhlY19hc3luYy5jICAgICAgICAgICAgIHwgICAxICsKIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfYXdh
aXQuYyAgICAgICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV9leGVjX2JhbGFuY2VyLmMg
ICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW1fZXhlY19iYXNpYy5jICAgICAgICAgICAg
IHwgIDUzICsrLQogdGVzdHMvaTkxNS9nZW1fZXhlY19iaWcuYyAgICAgICAgICAgICAgIHwgICAx
ICsKIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfY2FwdHVyZS5jICAgICAgICAgICB8ICAgMSArCiB0ZXN0
cy9pOTE1L2dlbV9leGVjX2NyZWF0ZS5jICAgICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9n
ZW1fZXhlY19lbmRsZXNzLmMgICAgICAgICAgIHwgICAxICsKIHRlc3RzL2k5MTUvZ2VtX2V4ZWNf
ZmFpci5jICAgICAgICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV9leGVjX2ZlbmNlLmMg
ICAgICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW1fZXhlY19mbHVzaC5jICAgICAgICAg
ICAgIHwgICAxICsKIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfZ3R0ZmlsbC5jICAgICAgICAgICB8ICAg
MSArCiB0ZXN0cy9pOTE1L2dlbV9leGVjX2xhdGVuY3kuYyAgICAgICAgICAgfCAgIDEgKwogdGVz
dHMvaTkxNS9nZW1fZXhlY19sdXRfaGFuZGxlLmMgICAgICAgIHwgICAxICsKIHRlc3RzL2k5MTUv
Z2VtX2V4ZWNfbm9wLmMgICAgICAgICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV9leGVj
X3BhcmFsbGVsLmMgICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW1fZXhlY19wYXJhbXMu
YyAgICAgICAgICAgIHwgICAxICsKIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYyAgICAgICAg
ICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMgICAgICAgICAgfCAg
IDEgKwogdGVzdHMvaTkxNS9nZW1fZXhlY19zdG9yZS5jICAgICAgICAgICAgIHwgICAxICsKIHRl
c3RzL2k5MTUvZ2VtX2V4ZWNfc3VzcGVuZC5jICAgICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1
L2dlbV9leGVjX3doaXNwZXIuYyAgICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW1fZmRf
ZXhoYXVzdGlvbi5jICAgICAgICAgIHwgICAyICstCiB0ZXN0cy9pOTE1L2dlbV9mZW5jZV90aHJh
c2guYyAgICAgICAgICAgfCAgIDIgKy0KIHRlc3RzL2k5MTUvZ2VtX2ZlbmNlX3VwbG9hZC5jICAg
ICAgICAgICB8ICAgMiArLQogdGVzdHMvaTkxNS9nZW1fZmVuY2VkX2V4ZWNfdGhyYXNoLmMgICAg
IHwgICAxICsKIHRlc3RzL2k5MTUvZ2VtX2ZsaW5rX3JhY2UuYyAgICAgICAgICAgICB8ICAgMiAr
LQogdGVzdHMvaTkxNS9nZW1fZ3BncHVfZmlsbC5jICAgICAgICAgICAgIHwgIDYxICsrKy0KIHRl
c3RzL2k5MTUvZ2VtX2d0dF9jcHVfdGxiLmMgICAgICAgICAgICB8ICAgMiArLQogdGVzdHMvaTkx
NS9nZW1fZ3R0X2hvZy5jICAgICAgICAgICAgICAgIHwgICAxICsKIHRlc3RzL2k5MTUvZ2VtX2d0
dF9zcGVlZC5jICAgICAgICAgICAgICB8ICAgMiArLQogdGVzdHMvaTkxNS9nZW1faHVjX2NvcHku
YyAgICAgICAgICAgICAgIHwgICAxICsKIHRlc3RzL2k5MTUvZ2VtX2xpbmVhcl9ibGl0cy5jICAg
ICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV9sdXRfaGFuZGxlLmMgICAgICAgICAgICAg
fCAgIDIgKy0KIHRlc3RzL2k5MTUvZ2VtX21hZHZpc2UuYyAgICAgICAgICAgICAgICB8ICAgMiAr
LQogdGVzdHMvaTkxNS9nZW1fbWVkaWFfZmlsbC5jICAgICAgICAgICAgIHwgIDU3ICsrLQogdGVz
dHMvaTkxNS9nZW1fbW1hcC5jICAgICAgICAgICAgICAgICAgIHwgICAyICstCiB0ZXN0cy9pOTE1
L2dlbV9tbWFwX2d0dC5jICAgICAgICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW1fbW1h
cF9vZmZzZXQuYyAgICAgICAgICAgIHwgICAxICsKIHRlc3RzL2k5MTUvZ2VtX21tYXBfd2MuYyAg
ICAgICAgICAgICAgICB8ICAgMiArLQogdGVzdHMvaTkxNS9nZW1fcHBndHQuYyAgICAgICAgICAg
ICAgICAgIHwgICAxICsKIHRlc3RzL2k5MTUvZ2VtX3ByZWFkLmMgICAgICAgICAgICAgICAgICB8
ICAgMiArLQogdGVzdHMvaTkxNS9nZW1fcHdyaXRlLmMgICAgICAgICAgICAgICAgIHwgICAyICst
CiB0ZXN0cy9pOTE1L2dlbV9yZWFkd3JpdGUuYyAgICAgICAgICAgICAgfCAgIDIgKy0KIHRlc3Rz
L2k5MTUvZ2VtX3Jlc2V0X3N0YXRzLmMgICAgICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dl
bV9yaW5nZmlsbC5jICAgICAgICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW1fc2V0X3Rp
bGluZ192c19ndHQuYyAgICAgIHwgICAyICstCiB0ZXN0cy9pOTE1L2dlbV9zZXRfdGlsaW5nX3Zz
X3B3cml0ZS5jICAgfCAgIDIgKy0KIHRlc3RzL2k5MTUvZ2VtX3Nocmluay5jICAgICAgICAgICAg
ICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV9zb2Z0cGluLmMgICAgICAgICAgICAgICAgfCAg
IDEgKwogdGVzdHMvaTkxNS9nZW1fc3RyZWFtaW5nX3dyaXRlcy5jICAgICAgIHwgICAxICsKIHRl
c3RzL2k5MTUvZ2VtX3N5bmMuYyAgICAgICAgICAgICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1
L2dlbV90aWxlZF9mZW5jZV9ibGl0cy5jICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW1fdGls
ZWRfcHJlYWRfYmFzaWMuYyAgICAgIHwgICAyICstCiB0ZXN0cy9pOTE1L2dlbV90aWxlZF9wcmVh
ZF9wd3JpdGUuYyAgICAgfCAgIDIgKy0KIHRlc3RzL2k5MTUvZ2VtX3RpbGVkX3N3YXBwaW5nLmMg
ICAgICAgICB8ICAgMiArLQogdGVzdHMvaTkxNS9nZW1fdGlsZWRfd2IuYyAgICAgICAgICAgICAg
IHwgICAyICstCiB0ZXN0cy9pOTE1L2dlbV90aWxlZF93Yy5jICAgICAgICAgICAgICAgfCAgIDIg
Ky0KIHRlc3RzL2k5MTUvZ2VtX3RpbGluZ19tYXhfc3RyaWRlLmMgICAgICB8ICAgMiArLQogdGVz
dHMvaTkxNS9nZW1fdW5mZW5jZV9hY3RpdmVfYnVmZmVycy5jIHwgICAxICsKIHRlc3RzL2k5MTUv
Z2VtX3VucmVmX2FjdGl2ZV9idWZmZXJzLmMgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV91c2Vy
cHRyX2JsaXRzLmMgICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW1fdm1fY3JlYXRlLmMg
ICAgICAgICAgICAgIHwgICAxICsKIHRlc3RzL2k5MTUvZ2VtX3dhaXQuYyAgICAgICAgICAgICAg
ICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbV93YXRjaGRvZy5jICAgICAgICAgICAgICAgfCAg
IDEgKwogdGVzdHMvaTkxNS9nZW1fd29ya2Fyb3VuZHMuYyAgICAgICAgICAgIHwgICAxICsKIHRl
c3RzL2k5MTUvZ2VuM19taXhlZF9ibGl0cy5jICAgICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1
L2dlbjNfcmVuZGVyX2xpbmVhcl9ibGl0cy5jICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW4zX3Jl
bmRlcl9taXhlZF9ibGl0cy5jICAgIHwgICAxICsKIHRlc3RzL2k5MTUvZ2VuM19yZW5kZXJfdGls
ZWR4X2JsaXRzLmMgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dlbjNfcmVuZGVyX3RpbGVkeV9ibGl0
cy5jICAgfCAgIDEgKwogdGVzdHMvaTkxNS9nZW43X2V4ZWNfcGFyc2UuYyAgICAgICAgICAgIHwg
ICAxICsKIHRlc3RzL2k5MTUvZ2VuOV9leGVjX3BhcnNlLmMgICAgICAgICAgICB8ICAgMSArCiB0
ZXN0cy9pOTE1L2k5MTVfaGFuZ21hbi5jICAgICAgICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkx
NS9pOTE1X21vZHVsZV9sb2FkLmMgICAgICAgICAgIHwgICAyICstCiB0ZXN0cy9pOTE1L2k5MTVf
cG1fcmM2X3Jlc2lkZW5jeS5jICAgICAgfCAgIDEgKwogdGVzdHMvaTkxNS9pOTE1X3BtX3JwbS5j
ICAgICAgICAgICAgICAgIHwgICAxICsKIHRlc3RzL2k5MTUvaTkxNV9zdXNwZW5kLmMgICAgICAg
ICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L3BlcmZfcG11LmMgICAgICAgICAgICAgICAgICAg
fCAgIDEgKwogdGVzdHMvaTkxNS9zeXNmc19jbGllbnRzLmMgICAgICAgICAgICAgIHwgICAxICsK
IHRlc3RzL2k5MTUvc3lzZnNfdGltZXNsaWNlX2R1cmF0aW9uLmMgICB8ICAgMSArCiB0ZXN0cy9r
bXNfYmlnX2ZiLmMgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIHRlc3RzL2ttc19jY3Mu
YyAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQogdGVzdHMva21zX2ZsaXAuYyAgICAg
ICAgICAgICAgICAgICAgICAgIHwgICAyICstCiB0ZXN0cy9rbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmcuYyAgICAgICAgfCAgIDEgKwogdGVzdHMva21zX2dldGZiLmMgICAgICAgICAgICAgICAgICAg
ICAgIHwgICAyICstCiB0ZXN0cy9wcmltZV9idXN5LmMgICAgICAgICAgICAgICAgICAgICAgfCAg
IDEgKwogdGVzdHMvcHJpbWVfbW1hcC5jICAgICAgICAgICAgICAgICAgICAgIHwgICAyICstCiB0
ZXN0cy9wcmltZV9tbWFwX2ttcy5jICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIHRlc3RzL3By
aW1lX3NlbGZfaW1wb3J0LmMgICAgICAgICAgICAgICB8ICAgMiArLQogdGVzdHMvcHJpbWVfdmdl
bS5jICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIHRvb2xzL2ludGVsX3JlZy5jICAgICAg
ICAgICAgICAgICAgICAgICB8ICAgMiArLQogMTQ5IGZpbGVzIGNoYW5nZWQsIDE0NDcgaW5zZXJ0
aW9ucygrKSwgMTM0IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGxpYi9pOTE1L2dl
bV9jcmVhdGUuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGxpYi9pOTE1L2ludGVsX21lbW9yeV9yZWdp
b24uYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGxpYi9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaAoK
LS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
