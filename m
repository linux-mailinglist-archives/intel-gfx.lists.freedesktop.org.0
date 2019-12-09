Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43612117103
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 17:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6577B6E4B7;
	Mon,  9 Dec 2019 16:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26B06E4B7
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 16:02:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 08:02:15 -0800
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="206937408"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 08:02:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Dec 2019 18:01:53 +0200
Message-Id: <cover.1575907078.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v4 00/15] drm/i915/dsi: enable DSC
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

djQgb2YgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTU0MC8KCkFk
ZGVkIHBhdGNoZXMgNyBhbmQgMTQgKGJ5IFZhbmRpdGEpIHRvIGltcHJvdmUgc3RhdGUgY2hlY2tp
bmcuIFdlIG1heQpzdGlsbCBuZWVkIHRvIGltcHJvdmUgdGhlIGNoZWNrcyBmb3IgaG9yaXpvbnRh
bCB0aW1pbmdzIGR1ZSB0byBwb3RlbnRpYWwKcm91bmQtdHJpcCBlcnJvcnMsIGJ1dCB3ZSdyZSBw
cm9ncmVzc2luZy4gT3RoZXJ3aXNlIG1vc3RseSB1bmNoYW5nZWQKZnJvbSB2My4KCkJSLApKYW5p
LgoKCkphbmkgTmlrdWxhICgxNCk6CiAgZHJtL2k5MTUvYmlvczogcGFzcyBkZXZkYXRhIHRvIHBh
cnNlX2RkaV9wb3J0CiAgZHJtL2k5MTUvYmlvczogcGFyc2UgY29tcHJlc3Npb24gcGFyYW1ldGVy
cyBibG9jawogIGRybS9pOTE1L2Jpb3M6IGFkZCBzdXBwb3J0IGZvciBxdWVyeWluZyBEU0MgZGV0
YWlscyBmb3IgZW5jb2RlcgogIGRybS9pOTE1L2RzYzogbW92ZSBEUCBzcGVjaWZpYyBjb21wdXRl
IHBhcmFtcyB0byBpbnRlbF9kcC5jCiAgZHJtL2k5MTUvZHNjOiBtb3ZlIHNsaWNlIGhlaWdodCBj
YWxjdWxhdGlvbiB0byBlbmNvZGVyCiAgZHJtL2k5MTUvZHNjOiBhZGQgc3VwcG9ydCBmb3IgY29t
cHV0aW5nIGFuZCB3cml0aW5nIFBQUyBmb3IgRFNJCiAgICBlbmNvZGVycwogIGRybS9pOTE1L2Rz
YzogYWRkIGJhc2ljIGhhcmR3YXJlIHN0YXRlIHJlYWRvdXQgc3VwcG9ydAogIGRybS9pOTE1L2Rz
aTogc2V0IHBpcGVfYnBwIG9uIElDTCBjb25maWd1cmUgY29uZmlnCiAgZHJtL2k5MTUvZHNpOiBh
YnN0cmFjdCBhZmVfY2xrIGNhbGN1bGF0aW9uCiAgZHJtL2k5MTUvZHNpOiB1c2UgYWZlX2Nsaygp
IGluc3RlYWQgb2YgaW50ZWxfZHNpX2JpdHJhdGUoKQogIGRybS9pOTE1L2RzaTogdGFrZSBjb21w
cmVzc2lvbiBpbnRvIGFjY291bnQgaW4gYWZlX2NsaygpCiAgZHJtL2k5MTUvZHNpOiB1c2UgY29t
cHJlc3NlZCBwaXhlbCBmb3JtYXQgd2l0aCBEU0MKICBkcm0vaTkxNS9kc2k6IGFjY291bnQgZm9y
IERTQyBpbiBob3Jpem9udGFsIHRpbWluZ3MKICBkcm0vaTkxNS9kc2k6IGFkZCBzdXBwb3J0IGZv
ciBEU0MKClZhbmRpdGEgS3Vsa2FybmkgKDEpOgogIGRybS9pOTE1L2RzaTogRml4IHN0YXRlIG1p
c21hdGNoIHdhcm5zIGZvciBob3Jpem9udGFsIHRpbWluZ3Mgd2l0aCBEU0MKCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyAgICAgICAgfCAxOTggKysrKysrKysrKysrKyst
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAgICAgfCAxNjcg
KysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3Mu
aCAgICAgfCAgIDUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAg
ICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
ICB8ICAgNCArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAg
fCAgNTkgKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZz
LmggfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jICAg
ICB8IDEyMCArKysrKy0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
ZHNjLmggICAgIHwgICAyICsKIDkgZmlsZXMgY2hhbmdlZCwgNDUxIGluc2VydGlvbnMoKyksIDEw
OCBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
