Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAA6215CD3
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 19:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0DBB89FD7;
	Mon,  6 Jul 2020 17:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 414 seconds by postgrey-1.36 at gabe;
 Mon, 06 Jul 2020 17:16:33 UTC
Received: from ec2.michaelkloos.com (ec2.michaelkloos.com
 [IPv6:2600:1f16:4be:b100:c339:bb54:64d2:a5b9])
 by gabe.freedesktop.org (Postfix) with ESMTP id E778F89FD7
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 17:16:33 +0000 (UTC)
Received: from qpc.home.michaelkloos.com
 (cpe-173-88-115-50.columbus.res.rr.com [173.88.115.50])
 by ec2.michaelkloos.com (Postfix) with ESMTPSA id A752889ECF6
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 17:09:38 +0000 (UTC)
From: "Michael T. Kloos" <michael@michaelkloos.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <c6865cce-6982-9522-9633-85450f2471c9@michaelkloos.com>
Date: Mon, 6 Jul 2020 13:09:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [Intel-gfx] CONFIG_DRM_FBDEV_OVERALLOC seems to have no effect.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUgc2VlbXMgdG8gYmUgYSBkaWZmZXJlbmNlIGluIGJlaGF2aW9yIG9mIENPTkZJR19EUk1f
RkJERVZfT1ZFUkFMTE9DIAphLmsuYS4gZHJtX2ttc19oZWxwZXIuZHJtX2ZiZGV2X292ZXJhbGxv
YyAoY21kbGluZSBwYXJhbSkgYmV0d2VlbiBteSAKTk9VVkVBVSBzeXN0ZW0gYW5kIG15IGk5MTUg
c3lzdGVtLsKgIE9uIG15IE5PVVZFQVUgc3lzdGVtLCBzcGVjaWZ5aW5nIApkcm1fa21zX2hlbHBl
ci5kcm1fZmJkZXZfb3ZlcmFsbG9jPTIwMCAoYXMgb3Bwb3NlZCB0byB0aGUgZGVmYXVsdCBvZiAK
MTAwKSBkb3VibGVzIHRoZSB5cmVzX3ZpcnR1YWwgcmVzb2x1dGlvbiBhcyByZXBvcnRlZCBieSBm
YnNldCBvciB0aGUgCmlvY3RsIEZCSU9HRVRfVlNDUkVFTklORk8uwqAgSG93ZXZlciwgb24gbXkg
aTkxNSBzeXN0ZW1zLCBubyBlZmZlY3QgaXMgCm9ic2VydmVkLsKgIEkgd291bGQgYmUgc3VycHJp
c2VkIGlmIEkndmUgbWFuYWdlZCB0byBzdHVtYmxlIGFjcm9zcyBhbiAKYWN0dWFsIGtlcm5lbCBi
dWcsIGJ1dCBzaW5jZSB0aGVzZSBmZWF0dXJlcyBhcmUgcmVsYXRpdmVseSBuZXcsIEkgCmZpZ3Vy
ZWQgSSdkIGFzayBhYm91dCBpdC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
