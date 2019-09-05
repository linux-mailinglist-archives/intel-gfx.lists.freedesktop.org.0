Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C13CAACE8
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 22:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ACA889FCC;
	Thu,  5 Sep 2019 20:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C596E89FCC;
 Thu,  5 Sep 2019 20:21:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CC34A47DF;
 Thu,  5 Sep 2019 20:21:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Date: Thu, 05 Sep 2019 20:21:17 -0000
Message-ID: <20190905202117.8129.99727@emeril.freedesktop.org>
References: <1567711031-26144-1-git-send-email-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1567711031-26144-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_adding_gamma_state_checker_for_CHV_and_i965?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogYWRkaW5nIGdhbW1hIHN0YXRlIGNoZWNrZXIg
Zm9yIENIViBhbmQgaTk2NQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjYyOTcvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hl
Y2twYXRjaCBvcmlnaW4vZHJtLXRpcAo3Zjk4OWUxZDgzNDkgZHJtL2k5MTUvZGlzcGxheTogQWRk
IGdhbW1hIHByZWNpc2lvbiBmdW5jdGlvbiBmb3IgQ0hWCjQ2OWQ5ZTZlZTU4NCBkcm0vaTkxNS9k
aXNwbGF5OiBFeHRyYWN0IGk5NjVfcmVhZF9sdXRzKCkKLToyMjogV0FSTklORzpDT01NSVRfTE9H
X0xPTkdfTElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJlZmVy
IGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzIyOiAKICAgICAtUmVuYW1lZCBpOTY1X3Jl
YWRfZ2FtbWFfbHV0XzEwcDYoKSB0byBpOTY1X3JlYWRfbHV0XzEwcDYoKSBbVmlsbGUsIFVtYV0K
CnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDY0IGxpbmVzIGNoZWNrZWQK
MDAyMzMxYTE0OGUwIGRybS9pOTE1L2Rpc3BsYXk6IEV4dHJhY3QgY2h2X3JlYWRfbHV0cygpCi06
NTY6IENIRUNLOk9QRU5fRU5ERURfTElORTogTGluZXMgc2hvdWxkIG5vdCBlbmQgd2l0aCBhICco
JwojNTY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYzox
NjM1OgorCQlibG9iX2RhdGFbaV0uZ3JlZW4gPSBpbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklF
TERfR0VUKAoKLTo1ODogQ0hFQ0s6T1BFTl9FTkRFRF9MSU5FOiBMaW5lcyBzaG91bGQgbm90IGVu
ZCB3aXRoIGEgJygnCiM1ODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jOjE2Mzc6CisJCWJsb2JfZGF0YVtpXS5ibHVlID0gaW50ZWxfY29sb3JfbHV0X3Bh
Y2soUkVHX0ZJRUxEX0dFVCgKCi06NjI6IENIRUNLOk9QRU5fRU5ERURfTElORTogTGluZXMgc2hv
dWxkIG5vdCBlbmQgd2l0aCBhICcoJwojNjI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY29sb3IuYzoxNjQxOgorCQlibG9iX2RhdGFbaV0ucmVkID0gaW50ZWxfY29s
b3JfbHV0X3BhY2soUkVHX0ZJRUxEX0dFVCgKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywg
MyBjaGVja3MsIDY0IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
