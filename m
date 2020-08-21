Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F9024D246
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 12:27:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F228B6EAD3;
	Fri, 21 Aug 2020 10:27:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8AD276EACA;
 Fri, 21 Aug 2020 10:27:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84A2DA3C0D;
 Fri, 21 Aug 2020 10:27:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Joerg Roedel" <jroedel@suse.de>
Date: Fri, 21 Aug 2020 10:27:26 -0000
Message-ID: <159800564651.16201.8949972966575967242@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200821085011.28878-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200821085011.28878-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_mm=3A_Track_page_table_modifications_in_=5F?=
 =?utf-8?b?X2FwcGx5X3RvX3BhZ2VfcmFuZ2UoKSBjb25zdHJ1Y3Rpb24gKHJldjIp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggbW06IFRy
YWNrIHBhZ2UgdGFibGUgbW9kaWZpY2F0aW9ucyBpbiBfX2FwcGx5X3RvX3BhZ2VfcmFuZ2UoKSBj
b25zdHJ1Y3Rpb24gKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy84MDg5Mi8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDQUxMICAg
IHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaAogIENBTEwgICAgc2NyaXB0cy9hdG9taWMvY2hlY2st
YXRvbWljcy5zaAogIERFU0NFTkQgIG9ianRvb2wKICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVk
L2NvbXBpbGUuaAogIENDIFtNXSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Bh
Z2VzLm8KZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmM6IEluIGZ1bmN0
aW9uIOKAmGk5MTVfZ2VtX29iamVjdF9tYXDigJk6CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9wYWdlcy5jOjMxODoyOiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVu
Y3Rpb24g4oCYZmx1c2hfdm1fYXJlYeKAmTsgZGlkIHlvdSBtZWFuIOKAmGZyZWVfdm1fYXJlYeKA
mT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCiAgZmx1c2hfdm1fYXJl
YShhcmVhKTsKICBefn5+fn5+fn5+fn5+CiAgZnJlZV92bV9hcmVhCmNjMTogYWxsIHdhcm5pbmdz
IGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjgzOiByZWNp
cGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLm8n
IGZhaWxlZAptYWtlWzRdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9w
YWdlcy5vXSBFcnJvciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTAwOiByZWNpcGUgZm9yIHRh
cmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUnIGZhaWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMv
Z3B1L2RybS9pOTE1XSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTAwOiByZWNpcGUg
Zm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJz
L2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDA6IHJlY2lwZSBmb3Ig
dGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVy
cm9yIDIKTWFrZWZpbGU6MTc4OTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZApt
YWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
