Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DC916536B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 01:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD67B6ECC1;
	Thu, 20 Feb 2020 00:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D5B96ECC1;
 Thu, 20 Feb 2020 00:15:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46715A0088;
 Thu, 20 Feb 2020 00:15:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Thu, 20 Feb 2020 00:15:41 -0000
Message-ID: <158215774125.17408.43287495992139659@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219233117.5698-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20200219233117.5698-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/ehl=3A_Donot_reuse_icl_get_and_put_dplls?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZWhsOiBEb25vdCByZXVzZSBp
Y2wgZ2V0IGFuZCBwdXQgZHBsbHMKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzczNjgxLwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNBTEwg
ICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAgICBzY3JpcHRzL2F0b21pYy9jaGVj
ay1hdG9taWNzLnNoCiAgREVTQ0VORCAgb2JqdG9vbAogIENISyAgICAgaW5jbHVkZS9nZW5lcmF0
ZWQvY29tcGlsZS5oCiAgQ0MgW01dICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLm8KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4vaW5jbHVkZS9kcm0vZHJtX21tLmg6
NDk6MCwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9kcm0vZHJtX3ZtYV9tYW5hZ2Vy
Lmg6MjYsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvZHJtL2RybV9nZW0uaDo0MCwK
ICAgICAgICAgICAgICAgICBmcm9tIC4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaDo1
MywKICAgICAgICAgICAgICAgICBmcm9tIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oOjQ2LAogICAgICAgICAgICAgICAgIGZyb20gZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jOjI0Ogpkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmM6IEluIGZ1bmN0aW9uIOKAmGljbF9nZXRfY29tYm9f
cGh5X2RwbGzigJk6CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3Iu
YzozMDIyOjE2OiBlcnJvcjog4oCYZGV2X3ByaXbigJkgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGlu
IHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYZGV2X2NyaXTigJk/CiAgIGRybV9kYmdf
a21zKCZkZXZfcHJpdi0+ZHJtLAogICAgICAgICAgICAgICAgXgouL2luY2x1ZGUvZHJtL2RybV9w
cmludC5oOjQzMjoxNTogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDigJhkcm1fZGJnX2tt
c+KAmQogIGRybV9kZXZfZGJnKChkcm0pLT5kZXYsIERSTV9VVF9LTVMsIGZtdCwgIyNfX1ZBX0FS
R1NfXykKICAgICAgICAgICAgICAgXn5+CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBsbF9tZ3IuYzozMDIyOjE2OiBub3RlOiBlYWNoIHVuZGVjbGFyZWQgaWRlbnRpZmllciBp
cyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rpb24gaXQgYXBwZWFycyBpbgogICBk
cm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKICAgICAgICAgICAgICAgIF4KLi9pbmNsdWRlL2Ry
bS9kcm1fcHJpbnQuaDo0MzI6MTU6IG5vdGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8g4oCYZHJt
X2RiZ19rbXPigJkKICBkcm1fZGV2X2RiZygoZHJtKS0+ZGV2LCBEUk1fVVRfS01TLCBmbXQsICMj
X19WQV9BUkdTX18pCiAgICAgICAgICAgICAgIF5+fgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI2
NzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBsbF9tZ3IubycgZmFpbGVkCm1ha2VbNF06ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcGxsX21nci5vXSBFcnJvciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTA1
OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUnIGZhaWxlZAptYWtlWzNd
OiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1XSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVp
bGQ6NTA1OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtJyBmYWlsZWQKbWFrZVsy
XTogKioqIFtkcml2ZXJzL2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1
MDU6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFpbGVkCm1ha2VbMV06ICoqKiBb
ZHJpdmVycy9ncHVdIEVycm9yIDIKTWFrZWZpbGU6MTY4MTogcmVjaXBlIGZvciB0YXJnZXQgJ2Ry
aXZlcnMnIGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
