Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE3F85D60
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 10:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D06A6E6BF;
	Thu,  8 Aug 2019 08:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89BAC6E673;
 Thu,  8 Aug 2019 08:52:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 83C28A363D;
 Thu,  8 Aug 2019 08:52:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 08 Aug 2019 08:52:47 -0000
Message-ID: <20190808085247.4819.62024@emeril.freedesktop.org>
References: <20190808074207.18274-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190808074207.18274-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/19=5D_drm/i915=3A_Fix_up_the_inverse_?=
 =?utf-8?q?mapping_for_default_ctx-=3Eengines=5B=5D?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzE5
XSBkcm0vaTkxNTogRml4IHVwIHRoZSBpbnZlcnNlIG1hcHBpbmcgZm9yIGRlZmF1bHQgY3R4LT5l
bmdpbmVzW10KVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzY0ODg2LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmln
aW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNS4yCkNvbW1pdDogZHJtL2k5MTU6IEZpeCB1
cCB0aGUgaW52ZXJzZSBtYXBwaW5nIGZvciBkZWZhdWx0IGN0eC0+ZW5naW5lc1tdCk9rYXkhCgpD
b21taXQ6IGRybS9pOTE1OiBEZWZlciBmaW5hbCBpbnRlbF93YWtlcmVmX3B1dCB0byBwcm9jZXNz
IGNvbnRleHQKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZS5jOjE5OjI2
OiBlcnJvcjogaW5jb3JyZWN0IHR5cGUgaW4gY29uZGl0aW9uYWwKK2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZS5jOjE5OjI2OiAgICBnb3QgdW5rbm93biB0eXBlIDExIDxu
b2lkZW50PgoKQ29tbWl0OiBkcm0vaTkxNS9wbXU6IFVzZSBHVCBwYXJrZWQgZm9yIGVzdGltYXRp
bmcgUkM2IHdoaWxlIGFzbGVlcApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRHJvcCB0aGUgZnVk
Z2Ugd2FybmluZyBvbiByaW5nIHJlc3RhcnQgZm9yIGN0Zy9lbGsKT2theSEKCkNvbW1pdDogZHJt
L2k5MTUvc2VsZnRlc3RzOiBQYXNzIGludGVsX2NvbnRleHQgdG8gbW9ja19yZXF1ZXN0Ck9rYXkh
CgpDb21taXQ6IGRybS9pOTE1L2d0OiBNYWtlIGRlZmVycmVkIGNvbnRleHQgYWxsb2NhdGlvbiBl
eHBsaWNpdApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUHVzaCB0aGUgcmluZyBjcmVhdGlvbiBm
bGFncyB0byB0aGUgYmFja2VuZApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogTGlmdCB0aW1lbGlu
ZSBpbnRvIGludGVsX2NvbnRleHQKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IE9ubHkgaW5jbHVk
ZSBhY3RpdmUgZW5naW5lcyBpbiB0aGUgY2FwdHVyZSBzdGF0ZQpPa2F5IQoKQ29tbWl0OiBkcm0v
aTkxNTogTWFrZSBkZWJ1Z2ZzL3Blcl9maWxlX3N0YXRzIHNjYWxlIGJldHRlcgpPa2F5IQoKQ29t
bWl0OiBkcm0vaTkxNS9ndDogVHJhY2sgdGltZWxpbmUgYWN0aXZlbmVzcyBpbiBlbnRlci9leGl0
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBDb252ZXJ0IHRpbWVsaW5lIHRyYWNraW5nIHRv
IHNwaW5sb2NrCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBHdWFyZCB0aW1lbGluZSBwaW5u
aW5nIHdpdGggaXRzIG93biBtdXRleApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUHJvdGVjdCBy
ZXF1ZXN0IHJldGlyZW1lbnQgd2l0aCB0aW1lbGluZS0+bXV0ZXgKT2theSEKCkNvbW1pdDogZHJt
L2k5MTUvZ3Q6IE1hcmsgY29udGV4dC0+YWN0aXZlX2NvdW50IGFzIHByb3RlY3RlZCBieSB0aW1l
bGluZS0+bXV0ZXgKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEZvcmdvIGxhc3RfZmVuY2UgYWN0
aXZlIHJlcXVlc3QgdHJhY2tpbmcKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvb3ZlcmxheTogU3dp
dGNoIHRvIHVzaW5nIGk5MTVfYWN0aXZlIHRyYWNraW5nCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1
OiBFeHRyYWN0IGludGVsX2Zyb250YnVmZmVyIGFjdGl2ZSB0cmFja2luZwpPa2F5IQoKQ29tbWl0
OiBkcm0vaTkxNTogTWFya3VwIGV4cGVjdGVkIHRpbWVsaW5lIGxvY2tzIGZvciBpOTE1X2FjdGl2
ZQpPa2F5IQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
