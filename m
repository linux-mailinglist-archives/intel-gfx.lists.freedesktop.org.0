Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97672115DC8
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 18:37:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ABC46E200;
	Sat,  7 Dec 2019 17:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4DB116E0EA;
 Sat,  7 Dec 2019 17:36:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4258AA0087;
 Sat,  7 Dec 2019 17:36:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 07 Dec 2019 17:36:59 -0000
Message-ID: <157574021924.17887.10509582568679113514@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/8=5D_drm/i915=3A_Fix_cmdparser_drm?=
 =?utf-8?q?=2Edebug?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvOF0g
ZHJtL2k5MTU6IEZpeCBjbWRwYXJzZXIgZHJtLmRlYnVnClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83MDU4Ni8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1t
YXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmQwMjcwN2MwYjJmOCBkcm0v
aTkxNTogRml4IGNtZHBhcnNlciBkcm0uZGVidWcKNDZlNDFiZDQzNTQ1IGRybS9pOTE1OiBSZW1v
dmUgcmVkdW5kYW50IHBhcmFtZXRlcnMgZnJvbSBpbnRlbF9lbmdpbmVfY21kX3BhcnNlcgotOjIy
NTogRVJST1I6UE9JTlRFUl9MT0NBVElPTjogIihmb28qKSIgc2hvdWxkIGJlICIoZm9vICopIgoj
MjI1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYzoxMzQ5Ogor
CSoodTY0KikoY21kICsgMSkgPSBzaGFkb3dfYWRkciArIHRhcmdldF9jbWRfb2Zmc2V0OwoKdG90
YWw6IDEgZXJyb3JzLCAwIHdhcm5pbmdzLCAwIGNoZWNrcywgMzQwIGxpbmVzIGNoZWNrZWQKNGRj
Y2QwNTM4NjUxIGRybS9pOTE1OiBTaW1wbGlmeSBlcnJvciBlc2NhcGUgZnJvbSBjbWRwYXJzZXIK
MTBlZGMyY2I5ZTNkIGRybS9pOTE1L2dlbTogVGlkeSB1cCBlcnJvciBoYW5kbGluZyBmb3IgZWJf
cGFyc2UoKQo2YTk2ZjFhNTU0ZDIgZHJtL2k5MTU6IEFsaWduIHN0YXJ0IGZvciBtZW1jcHlfZnJv
bV93YwpmMDM4ZjVhZjE3Y2YgZHJtL2k5MTU6IFByZXBhcmUgZ2VuNyBjbWRwYXJzZXIgZm9yIGFz
eW5jIGV4ZWN1dGlvbgphMjEzMGQwMWFkOTUgZHJtL2k5MTU6IEFzeW5jaHJvbm91cyBjbWRwYXJz
ZXIKZmI2NThkMGRkNmIwIEhBWDogVXNlIGFsaWFzaW5nLXBwZ3R0IGZvciBnZW43Ci06ODogV0FS
TklORzpDT01NSVRfTUVTU0FHRTogTWlzc2luZyBjb21taXQgZGVzY3JpcHRpb24gLSBBZGQgYW4g
YXBwcm9wcmlhdGUgb25lCgotOjI4OiBFUlJPUjpNSVNTSU5HX1NJR05fT0ZGOiBNaXNzaW5nIFNp
Z25lZC1vZmYtYnk6IGxpbmUocykKCnRvdGFsOiAxIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVj
a3MsIDE2IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
