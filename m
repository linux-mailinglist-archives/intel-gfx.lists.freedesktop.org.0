Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8051510B50E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 19:04:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B786E43D;
	Wed, 27 Nov 2019 18:04:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 25F3E6E43D;
 Wed, 27 Nov 2019 18:04:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D7B4A0BCB;
 Wed, 27 Nov 2019 18:04:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Wed, 27 Nov 2019 18:04:40 -0000
Message-ID: <157487788009.9110.500752648527089825@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191127141523.5075-1-swati2.sharma@intel.com>
In-Reply-To: <20191127141523.5075-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_adding_gamma_state_checker_for_icl+_platforms_=28rev7=29?=
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
Zm9yIGljbCsgcGxhdGZvcm1zIChyZXY3KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvNjY4MTEvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoK
JCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApiZWUyNzEwZjlmMzUgZHJtL2k5MTUvY29s
b3I6IEV4dHJhY3QgaWNsX3JlYWRfbHV0cygpCi06MzM6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05H
X0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1h
eGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiMzMzogCiAgICAtcmVtb3ZlZCByZWFkb3V0cyBvZiBm
aW5lIGFuZCBjb2Fyc2Ugc2VnbWVudHMsIGZhaWx1cmUgdG8gcmVhZCBQQUxfUFJFQ19EQVRBCgp0
b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxNzUgbGluZXMgY2hlY2tlZApm
OWJiNTA2MzRjZTcgRk9SX1RFU1RJTkdfT05MWTogUHJpbnQgcmdiIHZhbHVlcyBvZiBodyBhbmQg
c3cgYmxvYnMKLToxODogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVy
cwojMTg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYzox
NTg0OgorCURSTV9ERUJVR19LTVMoImh3X2x1dC0+cmVkPTB4JXggc3dfbHV0LT5yZWQ9MHgleCBo
d19sdXQtPmJsdWU9MHgleCBzd19sdXQtPmJsdWU9MHgleCBod19sdXQtPmdyZWVuPTB4JXggc3df
bHV0LT5ncmVlbj0weCV4IiwgbHV0Mi0+cmVkLCBsdXQxLT5yZWQsIGx1dDItPmJsdWUsIGx1dDEt
PmJsdWUsIGx1dDItPmdyZWVuLCBsdXQxLT5ncmVlbik7Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2Fy
bmluZ3MsIDAgY2hlY2tzLCA4IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
