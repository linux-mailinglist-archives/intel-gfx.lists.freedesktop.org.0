Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 773D125A908
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 12:01:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 519B76E181;
	Wed,  2 Sep 2020 10:01:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 65DA46E181;
 Wed,  2 Sep 2020 10:01:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62545A47DB;
 Wed,  2 Sep 2020 10:01:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mohammed Khajapasha" <mohammed.khajapasha@intel.com>
Date: Wed, 02 Sep 2020 10:01:53 -0000
Message-ID: <159904091339.24288.16723518934136768803@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200902090052.7649-1-mohammed.khajapasha@intel.com>
In-Reply-To: <20200902090052.7649-1-mohammed.khajapasha@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/kms=3A_Add_separate_hotplug_event_call_for_drm_connector?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2ttczogQWRkIHNlcGFyYXRlIGhvdHBs
dWcgZXZlbnQgY2FsbCBmb3IgZHJtIGNvbm5lY3RvcgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvODEyNTcvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFy
eSA9PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNjcmlwdHMv
YXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBERVNDRU5EICBvYmp0b29sCiAgQ0hLICAgICBpbmNs
dWRlL2dlbmVyYXRlZC9jb21waWxlLmgKICBDQyAgICAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJv
YmVfaGVscGVyLm8KZHJpdmVycy9ncHUvZHJtL2RybV9wcm9iZV9oZWxwZXIuYzogSW4gZnVuY3Rp
b24g4oCYZHJtX2ttc19jb25uZWN0b3JfaG90cGx1Z19oZWxwZXLigJk6CmRyaXZlcnMvZ3B1L2Ry
bS9kcm1fcHJvYmVfaGVscGVyLmM6NjEyOjI6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBv
ZiBmdW5jdGlvbiDigJhkcm1fc3lzZnNfY29ubmVjdG9yX2hvdHBsdWdfZXZlbnTigJk7IGRpZCB5
b3UgbWVhbiDigJhkcm1fc3lzZnNfY29ubmVjdG9yX3N0YXR1c19ldmVudOKAmT8gWy1XZXJyb3I9
aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCiAgZHJtX3N5c2ZzX2Nvbm5lY3Rvcl9ob3Rw
bHVnX2V2ZW50KGRldiwgY29ubmVjdG9yKTsKICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn4KICBkcm1fc3lzZnNfY29ubmVjdG9yX3N0YXR1c19ldmVudApjYzE6IHNvbWUgd2Fybmlu
Z3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyODM6IHJl
Y2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vZHJtX3Byb2JlX2hlbHBlci5vJyBmYWls
ZWQKbWFrZVszXTogKioqIFtkcml2ZXJzL2dwdS9kcm0vZHJtX3Byb2JlX2hlbHBlci5vXSBFcnJv
ciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTAwOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVy
cy9ncHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJzL2dwdS9kcm1dIEVycm9yIDIK
c2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDA6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dw
dScgZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVycm9yIDIKTWFrZWZpbGU6MTc4
ODogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNd
IEVycm9yIDIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
