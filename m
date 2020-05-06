Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5102E1C6F53
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 13:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779DD6E869;
	Wed,  6 May 2020 11:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 330726E868;
 Wed,  6 May 2020 11:29:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D868A00CC;
 Wed,  6 May 2020 11:29:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 06 May 2020 11:29:51 -0000
Message-ID: <158876459115.11898.11217160018092564313@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200506112328.16562-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200506112328.16562-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Plumb_crtc_state_to_link_training_code?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFBsdW1iIGNydGMgc3RhdGUg
dG8gbGluayB0cmFpbmluZyBjb2RlClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy83Njk5My8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDQUxM
ICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaAogIENBTEwgICAgc2NyaXB0cy9hdG9taWMvY2hl
Y2stYXRvbWljcy5zaAogIERFU0NFTkQgIG9ianRvb2wKICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJh
dGVkL2NvbXBpbGUuaAogIEhEUlRFU1QgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9saW5rX3RyYWluaW5nLmgKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIDxjb21tYW5kLWxpbmU+
OjA6MDoKLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5p
bmcuaDoxNDoyNDogZXJyb3I6IOKAmHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl4oCZIGRlY2xhcmVk
IGluc2lkZSBwYXJhbWV0ZXIgbGlzdCB3aWxsIG5vdCBiZSB2aXNpYmxlIG91dHNpZGUgb2YgdGhp
cyBkZWZpbml0aW9uIG9yIGRlY2xhcmF0aW9uIFstV2Vycm9yXQogICAgICAgICAgIGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogICAgICAgICAgICAgICAgICAgICAg
ICBefn5+fn5+fn5+fn5+fn5+Ci4vZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9saW5rX3RyYWluaW5nLmg6MTc6MjQ6IGVycm9yOiDigJhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZeKAmSBkZWNsYXJlZCBpbnNpZGUgcGFyYW1ldGVyIGxpc3Qgd2lsbCBub3QgYmUgdmlzaWJsZSBv
dXRzaWRlIG9mIHRoaXMgZGVmaW5pdGlvbiBvciBkZWNsYXJhdGlvbiBbLVdlcnJvcl0KICAgICAg
ICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiAgICAgICAg
ICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn4KLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuaDoxOToyMzogZXJyb3I6IOKAmHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRl4oCZIGRlY2xhcmVkIGluc2lkZSBwYXJhbWV0ZXIgbGlzdCB3aWxsIG5v
dCBiZSB2aXNpYmxlIG91dHNpZGUgb2YgdGhpcyBkZWZpbml0aW9uIG9yIGRlY2xhcmF0aW9uIFst
V2Vycm9yXQogICAgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpOwogICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn4KY2MxOiBhbGwgd2Fy
bmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGU6Mjk5OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX3RyYWluaW5nLmhkcnRlc3QnIGZhaWxlZAptYWtlWzRdOiAqKiogW2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5oZHJ0ZXN0XSBF
cnJvciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDg4OiByZWNpcGUgZm9yIHRhcmdldCAnZHJp
dmVycy9ncHUvZHJtL2k5MTUnIGZhaWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9p
OTE1XSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDg4OiByZWNpcGUgZm9yIHRhcmdl
dCAnZHJpdmVycy9ncHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJzL2dwdS9kcm1d
IEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo0ODg6IHJlY2lwZSBmb3IgdGFyZ2V0ICdk
cml2ZXJzL2dwdScgZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVycm9yIDIKTWFr
ZWZpbGU6MTcyMjogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAqKiog
W2RyaXZlcnNdIEVycm9yIDIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
