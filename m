Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0161366B71
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 13:14:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 714B36E34D;
	Fri, 12 Jul 2019 11:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E313F6E34C;
 Fri, 12 Jul 2019 11:14:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B95FAA0094;
 Fri, 12 Jul 2019 11:14:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Shi" <alex.shi@linux.alibaba.com>
Date: Fri, 12 Jul 2019 11:14:43 -0000
Message-ID: <20190712111443.29166.31430@emeril.freedesktop.org>
References: <20190712061002.154235-1-alex.shi@linux.alibaba.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190712061002.154235-1-alex.shi@linux.alibaba.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Docs?=
 =?utf-8?q?=3A_move_more_driver=2C_device_related_docs_into_drivers_dir_fo?=
 =?utf-8?q?llows_kernel_source?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRG9jczogbW92ZSBtb3JlIGRyaXZlciwgZGV2
aWNlIHJlbGF0ZWQgZG9jcyBpbnRvIGRyaXZlcnMgZGlyIGZvbGxvd3Mga2VybmVsIHNvdXJjZQpV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjM2MzMvClN0
YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlpbmc6IERvY3M6IG1vdmUgbW9yZSBk
cml2ZXIsIGRldmljZSByZWxhdGVkIGRvY3MgaW50byBkcml2ZXJzIGRpciBmb2xsb3dzIGtlcm5l
bCBzb3VyY2UKZXJyb3I6IG1vZGUgY2hhbmdlIGZvciBEb2N1bWVudGF0aW9uL2Nkcm9tL2Nkcm9t
LXN0YW5kYXJkLnJzdCwgd2hpY2ggaXMgbm90IGluIGN1cnJlbnQgSEVBRAplcnJvcjogY291bGQg
bm90IGJ1aWxkIGZha2UgYW5jZXN0b3IKaGludDogVXNlICdnaXQgYW0gLS1zaG93LWN1cnJlbnQt
cGF0Y2gnIHRvIHNlZSB0aGUgZmFpbGVkIHBhdGNoClBhdGNoIGZhaWxlZCBhdCAwMDAxIERvY3M6
IG1vdmUgbW9yZSBkcml2ZXIsIGRldmljZSByZWxhdGVkIGRvY3MgaW50byBkcml2ZXJzIGRpciBm
b2xsb3dzIGtlcm5lbCBzb3VyY2UKV2hlbiB5b3UgaGF2ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0s
IHJ1biAiZ2l0IGFtIC0tY29udGludWUiLgpJZiB5b3UgcHJlZmVyIHRvIHNraXAgdGhpcyBwYXRj
aCwgcnVuICJnaXQgYW0gLS1za2lwIiBpbnN0ZWFkLgpUbyByZXN0b3JlIHRoZSBvcmlnaW5hbCBi
cmFuY2ggYW5kIHN0b3AgcGF0Y2hpbmcsIHJ1biAiZ2l0IGFtIC0tYWJvcnQiLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
