Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31892B9399
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 16:59:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A2F86FD24;
	Fri, 20 Sep 2019 14:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 86ABA6FD24;
 Fri, 20 Sep 2019 14:59:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7F4EBA00E9;
 Fri, 20 Sep 2019 14:59:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 20 Sep 2019 14:59:50 -0000
Message-ID: <20190920145950.25914.30079@emeril.freedesktop.org>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/23=5D_drm/i915/dp=3A_Fix_dsc_bpp_calc?=
 =?utf-8?q?ulations=2C_v2=2E?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzIz
XSBkcm0vaTkxNS9kcDogRml4IGRzYyBicHAgY2FsY3VsYXRpb25zLCB2Mi4KVVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2OTk4LwpTdGF0ZSA6IHdhcm5p
bmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVy
c2lvbjogdjAuNi4wCkNvbW1pdDogZHJtL2k5MTUvZHA6IEZpeCBkc2MgYnBwIGNhbGN1bGF0aW9u
cywgdjIuCk9rYXkhCgpDb21taXQ6IEhBWCBkcm0vaTkxNTogRGlzYWJsZSBGRUMgZW50aXJlbHkg
Zm9yIG5vdwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUHJlcGFyZSB0byBzcGxpdCBjcnRjIHN0
YXRlIGluIHVhcGkgYW5kIGh3IHN0YXRlCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBIYW5kbGUg
YSBmZXcgbW9yZSBjYXNlcyBmb3IgaHcvc3cgc3BsaXQKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6
IENvbXBsZXRlIHN3L2h3IHNwbGl0Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBHZXQgcmlkIG9m
IGNydGNfc3RhdGUtPmZiX2NoYW5nZWQKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFJlbW92ZSBi
ZWdpbi9maW5pc2hfY3J0Y19jb21taXQuCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBSZW5hbWUg
cGxhbmFyIGxpbmtlZCBwbGFuZSB2YXJpYWJsZXMKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IERv
IG5vdCBhZGQgYWxsIHBsYW5lcyB3aGVuIGNoZWNraW5nIHNjYWxlcnMgb24gZ2xrKwpPa2F5IQoK
Q29tbWl0OiBkcm0vaTkxNS9kcDogQWxsb3cgYmlnIGpvaW5lciBtb2RlcyBpbiBpbnRlbF9kcF9t
b2RlX3ZhbGlkKCkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFRyeSB0byBtYWtlIGJpZ2pvaW5l
ciB3b3JrIGluIGF0b21pYyBjaGVjay4KT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEVuYWJsZSBi
aWcgam9pbmVyIHN1cHBvcnQgaW4gZW5hYmxlIGFuZCBkaXNhYmxlIHNlcXVlbmNlcy4KT2theSEK
CkNvbW1pdDogZHJtL2k5MTU6IE1ha2UgaGFyZHdhcmUgcmVhZG91dCB3b3JrIG9uIGk5MTUuCk9r
YXkhCgpDb21taXQ6IGRybS9pOTE1OiBQcmVwYXJlIHVwZGF0ZV9zbGF2ZSgpIGZvciBiaWdqb2lu
ZXIgcGxhbmUgdXBkYXRlcwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogTGluayBwbGFuZXMgaW4g
YSBiaWdqb2luZXIgY29uZmlndXJhdGlvbi4KT2theSEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
