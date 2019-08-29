Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4DDA151F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 11:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 285516E088;
	Thu, 29 Aug 2019 09:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CB4A6E087;
 Thu, 29 Aug 2019 09:47:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06379A0094;
 Thu, 29 Aug 2019 09:47:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 29 Aug 2019 09:47:26 -0000
Message-ID: <20190829094726.10004.81823@emeril.freedesktop.org>
References: <20190829081150.10271-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190829081150.10271-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/36=5D_drm/i915/execlists=3A_Try_rearr?=
 =?utf-8?q?anging_breadcrumb_flush?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzM2
XSBkcm0vaTkxNS9leGVjbGlzdHM6IFRyeSByZWFycmFuZ2luZyBicmVhZGNydW1iIGZsdXNoClVS
TCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NTk3OS8KU3Rh
dGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAK
U3BhcnNlIHZlcnNpb246IHYwLjYuMApDb21taXQ6IGRybS9pOTE1L2V4ZWNsaXN0czogVHJ5IHJl
YXJyYW5naW5nIGJyZWFkY3J1bWIgZmx1c2gKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZ3R0OiBE
b3duZ3JhZGUgQmF5dHJhaWwgYmFjayB0byBhbGlhc2luZy1wcGd0dApPa2F5IQoKQ29tbWl0OiBk
cm0vaTkxNS9ndHQ6IERvd25ncmFkZSBDaGVycnl2aWV3IGJhY2sgdG8gYWxpYXNpbmctcHBndHQK
T2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFJlbW92ZSBwcGd0dC0+ZGlydHlfZW5naW5lcwpPa2F5
IQoKQ29tbWl0OiBkcm0vaTkxNTogVXNlIFJDVSBmb3IgdW5sb2NrZWQgdm1faWRyIGxvb2t1cApP
a2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVwbGFjZSBvYmotPnBpbl9nbG9iYWwgd2l0aCBvYmot
PmZyb250YnVmZmVyCk9rYXkhCgpDb21taXQ6IGRtYS1mZW5jZTogU2VyaWFsaXNlIHNpZ25hbCBl
bmFibGluZyAoZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmcpCk9rYXkhCgpDb21taXQ6IGRy
bS9tbTogUGFjayBhbGxvY2F0ZWQvc2Nhbm5lZCBib29sZWFuIGludG8gYSBiaXRmaWVsZApPa2F5
IQoKQ29tbWl0OiBkcm0vaTkxNTogTWFrZSBzaHJpbmsvdW5zaHJpbmsgYmUgYXRvbWljCk9rYXkh
CgpDb21taXQ6IGRybS9pOTE1OiBPbmx5IHRyYWNrIGJvdW5kIGVsZW1lbnRzIG9mIHRoZSBHVFQK
T2theSEKCkNvbW1pdDogZHJtL2k5MTU6IE1ha2UgaTkxNV92bWEuZmxhZ3MgYXRvbWljX3QgZm9y
IG11dGV4IHJlZHVjdGlvbgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogTWFyayB1cCBhZGRyZXNz
IHNwYWNlcyB0aGF0IG1heSBuZWVkIHRvIGFsbG9jYXRlCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1
OiBQdWxsIGk5MTVfdm1hX3BpbiB1bmRlciB0aGUgdm0tPm11dGV4Ck9rYXkhCgpDb21taXQ6IGRy
bS9pOTE1OiBQdXNoIHRoZSBpOTE1X2FjdGl2ZS5yZXRpcmUgaW50byBhIHdvcmtlcgpPa2F5IQoK
Q29tbWl0OiBkcm0vaTkxNTogQ29vcmRpbmF0ZSBpOTE1X2FjdGl2ZSB3aXRoIGl0cyBvd24gbXV0
ZXgKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IE1vdmUgaWRsZSBiYXJyaWVyIGNsZWFudXAgaW50
byBlbmdpbmUtcG0KT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IERyb3Agc3RydWN0X211dGV4IGZy
b20gYXJvdW5kIGk5MTVfcmV0aXJlX3JlcXVlc3RzKCkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6
IFJlbW92ZSB0aGUgR0VNIGlkbGUgd29ya2VyCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBNZXJn
ZSB3YWl0X2Zvcl90aW1lbGluZXMgd2l0aCByZXRpcmVfcmVxdWVzdApPa2F5IQoKQ29tbWl0OiBk
cm0vaTkxNTogTW92ZSByZXF1ZXN0IHJ1bnRpbWUgbWFuYWdlbWVudCBvbnRvIGd0Ck9rYXkhCgpD
b21taXQ6IGRybS9pOTE1OiBNb3ZlIGdsb2JhbCBhY3Rpdml0eSB0cmFja2luZyBmcm9tIEdFTSB0
byBHVApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogU2VyaWFsaXNlIHRoZSBmaWxsIEJMVCB3aXRo
IHRoZSB2bWEgcGlubmluZwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9leGVjbGlzdHM6IEFsd2F5
cyByZXF1ZXN0IGNvbXBsZXRpb24gYmVmb3JlIG1hcmtpbmcgYW4gZXJyb3IKT2theSEKCkNvbW1p
dDogZHJtL2k5MTU6IE9ubHkgZW5xdWV1ZSBhbHJlYWR5IGNvbXBsZXRlZCByZXF1ZXN0cwpPa2F5
IQoKQ29tbWl0OiBkcm0vaTkxNS9leGVjbGlzdHM6IEZvcmNlIHByZWVtcHRpb24KT2theSEKCkNv
bW1pdDogZHJtL2k5MTU6IE1hcmsgdXAgInNlbnRpbmVsIiByZXF1ZXN0cwpPa2F5IQoKQ29tbWl0
OiBkcm0vaTkxNS9leGVjbGlzdHM6IENhbmNlbCBiYW5uZWQgY29udGV4dHMgb24gc2NoZWR1bGUt
b3V0Ck9rYXkhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
