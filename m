Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FAB1906E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 20:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C79B89ECB;
	Thu,  9 May 2019 18:44:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 400EA89ECB
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 18:44:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 11:44:52 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by fmsmga004.fm.intel.com with ESMTP; 09 May 2019 11:44:51 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 May 2019 00:41:45 +0530
Message-Id: <1557429108-8004-1-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [PATCH 0/3] Extend BT2020 support in iCSC and fixes
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciBCVDIwMjAgWUNiQ3IgdG8gUkdCIGNvbnZlcnNp
b24KdXNpbmcgaW5wdXQgQ1NDLiBUaGlzIGFsc28gZml4ZXMgaXNzdWVzIHdpdGggQlQ2MDEgYW5k
IEJUNzA5CmNvZWZmaWNpZW50cy4KClVtYSBTaGFua2FyICgzKToKICBkcm0vaTkxNS9pY2w6IEhh
bmRsZSBZQ2JDciB0byBSR0IgY29udmVyc2lvbiBmb3IgQlQyMDIwIGNhc2UKICBkcm0vaTkxNS9p
Y2w6IEZpeCBZIHByZS1vZmZzZXQgZm9yIEZ1bGwgUmFuZ2UgWUNiQ3IKICBkcm0vaTkxNS9pY2w6
IEZpeGVkIElucHV0IENTQyBDby1lZmZpY2llbnRzIGZvciBCVDYwMS83MDkKCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYyB8IDU1ICsrKysrKysrKysrKysrKysrKysrKysrKysr
Ky0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlv
bnMoLSkKCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
