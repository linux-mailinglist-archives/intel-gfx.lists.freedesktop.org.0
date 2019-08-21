Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0C09725C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 08:40:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EA656E905;
	Wed, 21 Aug 2019 06:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 602CA6E908
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 06:39:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 23:39:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,411,1559545200"; d="scan'208";a="195935540"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 23:39:54 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 12:02:20 +0530
Message-Id: <20190821063236.19705-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/15] DSB enablement.
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGlzcGxheSBTdGF0ZSBCdWZmZXIgKERTQikgaXMgaGFyZHdhcmUgY2FwYWJpbGl0eSB3aGljaCBh
bGxvd3MgZHJpdmVyIHRvIGJhdGNoIHN1Ym1pdCBIVyBwcm9ncmFtbWluZy4KCkFzIHBhcnQgb2Yg
aW5pdGlhbCBlbmFibGVtZW50IGNvbW1vbiBhcGkgY3JlYXRlZCB3aGljaCBjdXJyZW50bHkgdXNl
ZCB0byBwcm9ncmFtIGdhbW1hIGx1dCBwcm9yYW1taW5nLgoKR29pbmcgZm9yd2FkIERTQiBzdXBw
b3J0IGNhbiBiZSBhZGRlZCBmb3IgSERSIGFuZCBmbGlwIHJlbGF0ZWQgb3BlcmF0aW9uLgoKSFNE
RVM6IDEyMDk5NzgyNDEKQlNwZWM6IDMyMDIwCgp2MTogSW5pdGlhbCB2ZXJzaW9uLgoKdjI6IE1v
dmUgaW50ZWxfZHNiIGZpbGVzIHVuZGVyIGRpc3BsYXkgZm9sZGVyIGFuZCBmaXhlZCBhbiBpc3N1
ZS4KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpD
YzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8
cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5j
aD4KQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KQ2M6IE1pY2hlbCBUaGllcnJ5
IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+CkNjOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJA
aW50ZWwuY29tPgpDYzogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29t
PgpDYzogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KQ2M6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmltZXNo
IE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KCkFuaW1lc2ggTWFubmEgKDE1KToKICBk
cm0vaTkxNS9kc2I6IGZlYXR1cmUgZmxhZyBhZGRlZCBmb3IgZGlzcGxheSBzdGF0ZSBidWZmZXIu
CiAgZHJtL2k5MTUvZHNiOiBEU0IgY29udGV4dCBjcmVhdGlvbi4KICBkcm0vaTkxNS9kc2I6IHNp
bmdsZSByZWdpc3RlciB3cml0ZSBmdW5jdGlvbiBmb3IgRFNCLgogIGRybS9pOTE1L2RzYjogQWRk
ZWQgZW51bSBmb3IgcmVnIHdyaXRlIGNhcGFiaWxpdHkuCiAgZHJtL2k5MTUvZHNiOiBJbmRleGVk
IHJlZ2lzdGVyIHdyaXRlIGZ1bmN0aW9uIGZvciBEU0IuCiAgZHJtL2k5MTUvZHNiOiBVcGRhdGUg
aTkxNV93cml0ZSB0byBjYWxsIGRzYi13cml0ZS4KICBkcm0vaTkxNS9kc2I6IFJlZ2lzdGVyIGRl
ZmluaXRpb24gb2YgRFNCIHJlZ2lzdGVycy4KICBkcm0vaTkxNS9kc2I6IENoZWNrIERTQiBlbmdp
bmUgc3RhdHVzLgogIGRybS9pOTE1L2RzYjogZnVuY3Rpb25zIHRvIGVuYWJsZS9kaXNhYmxlIERT
QiBlbmdpbmUuCiAgZHJtL2k5MTUvZHNiOiBmdW5jdGlvbiB0byB0cmlnZ2VyIHdvcmtsb2FkIGV4
ZWN1dGlvbiBvZiBEU0IuCiAgZHJtL2k5MTUvZHNiOiBmdW5jdGlvbiB0byBkZXN0cm95IERTQiBj
b250ZXh0LgogIGRybS9pOTE1L2RzYjogRWFybHkgcHJlcGFyZSBvZiBkc2IgY29udGV4dC4KICBk
cm0vaTkxNS9kc2I6IENsZWFudXAgb2YgRFNCIGNvbnRleHQuCiAgZHJtL2k5MTUvZHNiOiBEb2N1
bWVudGF0aW9uIGZvciBEU0IuCiAgZHJtL2k5MTUvZHNiOiBFbmFibGUgZ2FtbWEgbHV0IHByb2dy
YW1taW5nIHVzaW5nIERTQi4KCiBEb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdCAgICAgICAgICAg
ICAgICAgICAgfCAgIDkgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAg
ICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
YyAgICB8ICAgNCArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyAgfCAgMjcgKysKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAg
ICB8ICAgNiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jICAgICAg
fCAzMTMgKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5oICAgICAgfCAgNDggKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
ICAgICAgICAgICAgICAgfCAgIDkgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgICAgICAgICAgICB8ICA1MyArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rldmlj
ZV9pbmZvLmggICAgICB8ICAgMSArCiAxMCBmaWxlcyBjaGFuZ2VkLCA0NjEgaW5zZXJ0aW9ucygr
KSwgMTAgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
