Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F71BE948A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 02:25:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61A86E875;
	Wed, 30 Oct 2019 01:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F0056E868
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 01:25:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 18:25:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; d="scan'208";a="211945558"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga002.jf.intel.com with ESMTP; 29 Oct 2019 18:25:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 18:24:43 -0700
Message-Id: <20191030012448.14937-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] tgl: MST support
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

QWRkaXRpb25hbCBjb2RlIHRvIHN1cHBvcnQgbW9yZSB0aGFuIG9uZSBkaXNwbGF5IHdoZW4gdXNp
bmcgTVNUIHdpdGgKVEdMLiBJdCdzIHN0aWxsIFdJUCEgRnJvbSB3aGF0IEkgY291bGQgY2hlY2sg
b24gbXkgdGVzdHMgd2UgYXJlIGNvcnJlY3RseQp0cmFja2luZyB0aGUgbWFzdGVyIHRyYW5zY29k
ZXIgYW5kIHNldHRpbmcgaXQgYWNjb3JkaW5nbHkgb24KVFJBTlNfRERJX0ZVTkNfQ1RMIGFuZCBE
UF9UUF9DVEwuCgpJIHRyaWVkIGFsc28gc2V0dGluZyBNU1QgbW9kZSBvbiB0aGUgc2xhdmUncyBE
UF9UUF9DVEwuIEkgY291bGQgZ2V0IHRoZQpzZWNvbmQgZGlzcGxheSB0byBzaG93IHVwIHNvbWUg
dGltZXMgYW5kIHdlIGRvbid0IGdldCBzdHVjayBvbiAidGltZW91dAp3YWl0aW5nIGZvciBBQ1Qi
IGVycm9yIG1lc3NhZ2UuICBUaGlzIGlzIG5vdCBhY2NvcmRpbmcgdG8gdGhlIHNwZWMKdGhvdWdo
LCBhbmQgaXQgc3RpbGwgZG9lc24ndCB3b3JrIG1vc3Qgb2YgdGhlIHRpbWUuIFNvLi4uIEkgZGlk
bid0IGFkZAppdCBoZXJlLgoKSSBndWVzcyBub3cgSSBuZWVkIGFub3RoZXIgcGFpciBvZiBleWVz
IHRvIGNoZWNrIHdoYXQgSSdtIGRvaW5nIHdyb25nCnNpbmNlIGNvbnRpbnVpbmcgdG8gc3RhcmUg
YXQgdGhlIHNwZWMgYW5kIGNvZGUgaXNuJ3QgaGVscGluZy4gSm9zw6ksCkltcmU/CgpKb3PDqSBS
b2JlcnRvIGRlIFNvdXphICgyKToKICBkcm0vaTkxNTogQWRkIGZvcl9lYWNoX25ld19pbnRlbF9j
b25uZWN0b3JfaW5fc3RhdGUoKQogIGRybS9pOTE1L3RnbDogU2VsZWN0IG1hc3RlciB0cmFuc2Nv
ZGVyIGluIERQIE1TVAoKTHVjYXMgRGUgTWFyY2hpICgzKToKICBkcm0vaTkxNTogYWRkIHdyYXBw
ZXJzIHRvIGdldCBpbnRlbCBjb25uZWN0b3Igc3RhdGUKICBkcm0vaTkxNS90Z2w6IGRvIG5vdCBl
bmFibGUgdHJhbnNjb2RlciBjbG9jayB0d2ljZSBvbiBNU1QKICBkcm0vaTkxNTogYXZvaWQgcmVh
ZGluZyBEUF9UUF9DVEwgdHdpY2UKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jICAgICAgfCAgNTQgKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyAgfCAgMTYgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5oICB8ICAgOCArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmggICAgfCAgMjEgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX21zdC5jICAgfCAxNTkgKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX21zdC5oICAgfCAgIDIgKwogNiBmaWxlcyBjaGFuZ2VkLCAyMzYg
aW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCgotLSAKMi4yMy4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
