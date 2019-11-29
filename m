Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7F210D413
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 11:30:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D74E06E8BE;
	Fri, 29 Nov 2019 10:30:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 048C46E8BD;
 Fri, 29 Nov 2019 10:30:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 02:30:49 -0800
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="207302366"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 02:30:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org
Date: Fri, 29 Nov 2019 12:29:38 +0200
Message-Id: <2dd4e6fb18637e3315bd57d422c6ae4a2080e844.1575022735.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575022735.git.jani.nikula@intel.com>
References: <cover.1575022735.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 08/14] video: fbdev: make fbops member of
 struct fb_info a const pointer
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm93IHRoYXQgd2Ugbm8gbG9uZ2VyIG1vZGlmeSB0aGUgZmJvcHMsIG9yIGhvbGQgbm9uLWNvbnN0
IHBvaW50ZXJzIHRvCml0LCB3ZSBjYW4gbWFrZSBpdCBjb25zdC4gQWZ0ZXIgdGhpcywgd2UgY2Fu
IHN0YXJ0IG1ha2luZyB0aGUgZmJvcHMKY29uc3QgYWxsIG92ZXIgdGhlIHBsYWNlLgoKQ2M6IGxp
bnV4LWZiZGV2QHZnZXIua2VybmVsLm9yZwpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KLS0tCiBpbmNsdWRlL2xpbnV4L2ZiLmggfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L2ZiLmggYi9pbmNsdWRlL2xpbnV4L2ZiLmgKaW5kZXggYTZhZDUyODk5MGRlLi42NTU3
ZmFiZGVhNjIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvZmIuaAorKysgYi9pbmNsdWRlL2xp
bnV4L2ZiLmgKQEAgLTQ3Miw3ICs0NzIsNyBAQCBzdHJ1Y3QgZmJfaW5mbyB7CiAJc3RydWN0IGZi
X2RlZmVycmVkX2lvICpmYmRlZmlvOwogI2VuZGlmCiAKLQlzdHJ1Y3QgZmJfb3BzICpmYm9wczsK
Kwljb25zdCBzdHJ1Y3QgZmJfb3BzICpmYm9wczsKIAlzdHJ1Y3QgZGV2aWNlICpkZXZpY2U7CQkv
KiBUaGlzIGlzIHRoZSBwYXJlbnQgKi8KIAlzdHJ1Y3QgZGV2aWNlICpkZXY7CQkvKiBUaGlzIGlz
IHRoaXMgZmIgZGV2aWNlICovCiAJaW50IGNsYXNzX2ZsYWc7ICAgICAgICAgICAgICAgICAgICAv
KiBwcml2YXRlIHN5c2ZzIGZsYWdzICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
