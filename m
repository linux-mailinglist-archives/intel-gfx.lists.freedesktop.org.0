Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44051164909
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 16:45:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A0C6EC33;
	Wed, 19 Feb 2020 15:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14C146EC33
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 15:45:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 07:45:50 -0800
X-IronPort-AV: E=Sophos;i="5.70,461,1574150400"; d="scan'208";a="229145463"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 07:45:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Feb 2020 17:45:42 +0200
Message-Id: <20200219154542.19574-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915: make dbuf configurations const
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW5zdXJlIGNvbnN0IGRhdGEgZ29lcyB0byByb2RhdGEuCgpGaXhlczogZmYyY2Q4NjM1ZTQxICgi
ZHJtL2k5MTU6IENvcnJlY3RseSBtYXAgREJVRiBzbGljZXMgdG8gcGlwZXMiKQpDYzogTWF0dCBS
b3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkg
PHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
IHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IGZmYWMwYjg2MmNhNS4uOWI3NGMzN2U0ZmE0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTQxNzgsNyArNDE3OCw3IEBAIHN0cnVjdCBk
YnVmX3NsaWNlX2NvbmZfZW50cnkgewogICogYXMgaXMgZnJvbSBCU3BlYyBpdHNlbGYgLSB0aGF0
IHdheSBpdCBpcyBhdCBsZWFzdCBlYXNpZXIKICAqIHRvIGNvbXBhcmUsIGNoYW5nZSBhbmQgY2hl
Y2suCiAgKi8KLXN0YXRpYyBzdHJ1Y3QgZGJ1Zl9zbGljZV9jb25mX2VudHJ5IGljbF9hbGxvd2Vk
X2RidWZzW10gPQorc3RhdGljIGNvbnN0IHN0cnVjdCBkYnVmX3NsaWNlX2NvbmZfZW50cnkgaWNs
X2FsbG93ZWRfZGJ1ZnNbXSA9CiAvKiBBdXRvZ2VuZXJhdGVkIHdpdGggaWd0L3Rvb2xzL2ludGVs
X2RidWZfbWFwIHRvb2w6ICovCiB7CiAJewpAQCAtNDI0MCw3ICs0MjQwLDcgQEAgc3RhdGljIHN0
cnVjdCBkYnVmX3NsaWNlX2NvbmZfZW50cnkgaWNsX2FsbG93ZWRfZGJ1ZnNbXSA9CiAgKiBhcyBp
cyBmcm9tIEJTcGVjIGl0c2VsZiAtIHRoYXQgd2F5IGl0IGlzIGF0IGxlYXN0IGVhc2llcgogICog
dG8gY29tcGFyZSwgY2hhbmdlIGFuZCBjaGVjay4KICAqLwotc3RhdGljIHN0cnVjdCBkYnVmX3Ns
aWNlX2NvbmZfZW50cnkgdGdsX2FsbG93ZWRfZGJ1ZnNbXSA9CitzdGF0aWMgY29uc3Qgc3RydWN0
IGRidWZfc2xpY2VfY29uZl9lbnRyeSB0Z2xfYWxsb3dlZF9kYnVmc1tdID0KIC8qIEF1dG9nZW5l
cmF0ZWQgd2l0aCBpZ3QvdG9vbHMvaW50ZWxfZGJ1Zl9tYXAgdG9vbDogKi8KIHsKIAl7Ci0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
