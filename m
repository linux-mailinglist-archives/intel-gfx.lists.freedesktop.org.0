Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AB4AA0D3
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 13:06:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD376E02F;
	Thu,  5 Sep 2019 11:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 80B916E02F;
 Thu,  5 Sep 2019 11:06:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72C73A0071;
 Thu,  5 Sep 2019 11:06:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 05 Sep 2019 11:06:04 -0000
Message-ID: <20190905110604.8129.39253@emeril.freedesktop.org>
References: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Expose_margin_connector_properties_for_underscan_=28?=
 =?utf-8?q?rev4=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEV4cG9zZSBtYXJnaW4gY29u
bmVjdG9yIHByb3BlcnRpZXMgZm9yIHVuZGVyc2NhbiAocmV2NCkKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2MjI1LwpTdGF0ZSA6IHdhcm5pbmcKCj09
IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjog
djAuNi4wCkNvbW1pdDogZHJtL2VkaWQ6IEFkZCBkcm1faGRtaV9hdmlfaW5mb2ZyYW1lX2JhcnMo
KQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUGFyYW1ldHJpemUgUEZJVF9QSVBFCk9rYXkhCgpD
b21taXQ6IGRybS9pOTE1OiBSZXBsYWNlIHNvbWUgYWNjaWRlbnRhbCBJOTE1X1JFQURfRlcoKXMg
d2l0aCB0aGUgbm9ybWFsIHZlcnNpb24KT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEZpeCBza2wr
IG5vbi1zY2FsZWQgcGZpdCBtb2RlcwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRmxhdHRlbiBh
IGJ1bmNoIG9mIHRoZSBwZml0IGZ1bmN0aW9ucwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogVXNl
IGRybV9yZWN0IHRvIHN0b3JlIHRoZSBwZml0IHdpbmRvdyBwb3Mvc2l6ZQpPa2F5IQoKQ29tbWl0
OiBkcm0vaTkxNTogQ2hlY2sgcGlwZSBzb3VyY2Ugc2l6ZSBhZ2FpbnN0IHBmaXQgbGltaXRzCk9r
YXkhCgpDb21taXQ6IGRybS9pOTE1OiBDaGVjayBwZml0IHNjYWxpbmcgZmFjdG9ycwpPa2F5IQoK
Q29tbWl0OiBkcm0vaTkxNTogQ2hlY2sgcGZpdCBtaW5pbXVtIHRpbWluZ3MKT2theSEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
