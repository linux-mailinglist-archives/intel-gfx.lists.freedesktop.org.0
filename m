Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E201E296725
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 00:26:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 436AF6E41B;
	Thu, 22 Oct 2020 22:26:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CF766E40B
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 22:25:44 +0000 (UTC)
IronPort-SDR: 6gZhP+ZXpefpyXUT64lMw0OgPcKpz2HcDbFfRqIbbtkbYr6x7+xdK/rHDYAwaTU1s/1TUKRVW3
 T+E8CjgD9wUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="155386815"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="155386815"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 15:25:42 -0700
IronPort-SDR: X/5OxsHH18IE6KV12n2ffzuOU81uUdoogTOD37v9cuGHTteVvVFyuPboOiI0eGLaTNGj0qaFGq
 vflIFksjVuAA==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="534153952"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Oct 2020 15:25:42 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Oct 2020 15:27:02 -0700
Message-Id: <20201022222709.29386-5-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201022222709.29386-1-manasi.d.navare@intel.com>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/11] drm/i915/display/dp: Add VRR crtc state
 variables
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

SW50cm9kdWNlIFZSUiBzdHJ1Y3QgaW4gaW50ZWxfY3J0Y19zdGF0ZSBhbmQgYWRkClZSUiBjcnRj
IHN0YXRlIHZhcmlhYmxlcyBFbmFibGUsIFZ0b3RhbG1pbiBhbmQgVnRvdGFsbWF4CnRvIGJlIGRl
cml2ZWQgZnJvbSBtb2RlIHRpbWluZ3MgYW5kIFZSUiBjcnRjIHByb3BlcnR5LgoKQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCA3ICsrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IGY2ZjA2MjY2NDllMC4uZjZm
N2VjMDI0ZGE3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaApAQCAtMTA5Miw2ICsxMDkyLDEzIEBAIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlIHsKIAlzdHJ1Y3QgaW50ZWxfZHNiICpkc2I7CiAKIAl1MzIgcHNyMl9tYW5fdHJhY2tf
Y3RsOworCisJLyogVmFyaWFibGUgUmVmcmVzaCBSYXRlIHN0YXRlICovCisJc3RydWN0IHsKKwkJ
Ym9vbCBlbmFibGU7CisJCXUxNiB2dG90YWxtaW47CisJCXUxNiB2dG90YWxtYXg7CisJfSB2cnI7
CiB9OwogCiBlbnVtIGludGVsX3BpcGVfY3JjX3NvdXJjZSB7Ci0tIAoyLjE5LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
