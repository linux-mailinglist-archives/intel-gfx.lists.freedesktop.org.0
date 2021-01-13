Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D89E2F54C8
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 23:05:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7C566EC7A;
	Wed, 13 Jan 2021 22:05:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D2F6EC71
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 22:05:32 +0000 (UTC)
IronPort-SDR: EtY5yw03rL1vD7X4UFqOBznYdehvt2YavIuhQEM8Va47KJb6do+K98NpAdmwU3PDmhTYoAGKn7
 ddk+wN5T5wGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="177498741"
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="177498741"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 14:05:32 -0800
IronPort-SDR: hCVKO3WPdofxQY5uywP7RKOE29AKxLZ0Qz/SkyDzKh8MwrmNpEATs/uNNDtqHu6tOSPrclIBhg
 4iBIEBHd29Pg==
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="400696565"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 13 Jan 2021 14:05:31 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 14:09:26 -0800
Message-Id: <20210113220935.4151-10-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210113220935.4151-1-manasi.d.navare@intel.com>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 09/18] drm/i915: Rename VRR_CTL reg fields
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdp
dmUgdGhlIHBpcGVsaW5lIGZ1bGwgbGluZSBjb3VudCBiaXRzIG1vcmUgZGVzY3JpcHRpdmUgbmFt
ZXMKClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDE0ICsrKysr
KystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDI0OWE4MTU3NWI5ZC4uMzA3YzYxM2NiYzU3
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTQzNDYsMTMgKzQzNDYsMTMgQEAgZW51bSB7
CiAjZGVmaW5lIF9UUkFOU19WUlJfQ1RMX0IJCTB4NjE0MjAKICNkZWZpbmUgX1RSQU5TX1ZSUl9D
VExfQwkJMHg2MjQyMAogI2RlZmluZSBfVFJBTlNfVlJSX0NUTF9ECQkweDYzNDIwCi0jZGVmaW5l
IFRSQU5TX1ZSUl9DVEwodHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9UUkFOU19WUlJfQ1RM
X0EpCi0jZGVmaW5lICAgVlJSX0NUTF9WUlJfRU5BQkxFCQlSRUdfQklUKDMxKQotI2RlZmluZSAg
IFZSUl9DVExfSUdOX01BWF9TSElGVAkJUkVHX0JJVCgzMCkKLSNkZWZpbmUgICBWUlJfQ1RMX0ZM
SVBfTElORV9FTgkJUkVHX0JJVCgyOSkKLSNkZWZpbmUgICBWUlJfQ1RMX0xJTkVfQ09VTlRfTUFT
SwlSRUdfR0VOTUFTSygxMCwgMykKLSNkZWZpbmUgICBWUlJfQ1RMX0xJTkVfQ09VTlQoeCkJCVJF
R19GSUVMRF9QUkVQKFZSUl9DVExfTElORV9DT1VOVF9NQVNLLCAoeCkpCi0jZGVmaW5lICAgVlJS
X0NUTF9TV19GVUxMTElORV9DT1VOVAlSRUdfQklUKDApCisjZGVmaW5lIFRSQU5TX1ZSUl9DVEwo
dHJhbnMpCQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfVFJBTlNfVlJSX0NUTF9BKQorI2RlZmluZSAg
IFZSUl9DVExfVlJSX0VOQUJMRQkJCVJFR19CSVQoMzEpCisjZGVmaW5lICAgVlJSX0NUTF9JR05f
TUFYX1NISUZUCQkJUkVHX0JJVCgzMCkKKyNkZWZpbmUgICBWUlJfQ1RMX0ZMSVBfTElORV9FTgkJ
CVJFR19CSVQoMjkpCisjZGVmaW5lICAgVlJSX0NUTF9QSVBFTElORV9GVUxMX01BU0sJCVJFR19H
RU5NQVNLKDEwLCAzKQorI2RlZmluZSAgIFZSUl9DVExfUElQRUxJTkVfRlVMTCh4KQkJUkVHX0ZJ
RUxEX1BSRVAoVlJSX0NUTF9QSVBFTElORV9GVUxMX01BU0ssICh4KSkKKyNkZWZpbmUgICBWUlJf
Q1RMX1BJUEVMSU5FX0ZVTExfT1ZFUlJJREUJUkVHX0JJVCgwKQogCiAjZGVmaW5lIF9UUkFOU19W
UlJfVk1BWF9BCQkweDYwNDI0CiAjZGVmaW5lIF9UUkFOU19WUlJfVk1BWF9CCQkweDYxNDI0Ci0t
IAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
