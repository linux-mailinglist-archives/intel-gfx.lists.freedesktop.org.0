Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DB5BF6B8
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 18:30:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 517A26EDDA;
	Thu, 26 Sep 2019 16:30:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 235706EDD8;
 Thu, 26 Sep 2019 16:30:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B15EA011A;
 Thu, 26 Sep 2019 16:30:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 26 Sep 2019 16:30:02 -0000
Message-ID: <20190926163002.6721.31970@emeril.freedesktop.org>
References: <20190926153700.19712-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190926153700.19712-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Delegate_our?=
 =?utf-8?q?_irq_handler_to_a_thread?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
M10gZHJtL2k5MTU6IERlbGVnYXRlIG91ciBpcnEgaGFuZGxlciB0byBhIHRocmVhZApVUkwgICA6
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjcyOTkvClN0YXRlIDog
d2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo3
NjRlYTdiMGEwYmQgZHJtL2k5MTU6IERlbGVnYXRlIG91ciBpcnEgaGFuZGxlciB0byBhIHRocmVh
ZAo0MmU4YTI2YmUzNzYgZHJtL2k5MTU6IERvbid0IGRpc2FibGUgaW50ZXJydXB0cyBmb3IgaW50
ZWxfZW5naW5lX2JyZWFkY3J1bWJzX2lycSgpCi06NzogV0FSTklORzpDT01NSVRfTE9HX0xPTkdf
TElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJlZmVyIGEgbWF4
aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzc6IApUaGUgZnVuY3Rpb24gaW50ZWxfZW5naW5lX2Jy
ZWFkY3J1bWJzX2lycSgpIGlzIGFsd2F5cyBpbnZva2VkIGZyb20gYW4gaW50ZXJydXB0Cgp0b3Rh
bDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA2NyBsaW5lcyBjaGVja2VkCmIxZWQ3
MTdkYzMyNCBkcm0vaTkxNTogRHJvcCB0aGUgSVJRLW9mZiBhc3NlcnRzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
