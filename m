Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A184A70D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 18:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E596E200;
	Tue, 18 Jun 2019 16:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B12E6E0C4;
 Tue, 18 Jun 2019 13:34:11 +0000 (UTC)
Received: from 179.186.105.91.dynamic.adsl.gvt.net.br ([179.186.105.91]
 helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEFP-0007CG-72; Tue, 18 Jun 2019 13:34:03 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1hdEFM-00008f-4G; Tue, 18 Jun 2019 10:34:00 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Tue, 18 Jun 2019 10:33:58 -0300
Message-Id: <6f09587b7678f2fb378d736f45a02ffa9412cc99.1560864716.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 18 Jun 2019 16:35:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20170209; h=Sender:Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3pt+lvuNJTl0R7q+cDc7mElDC2SrbdpyQw7HovUZcjM=; b=B6VLnbVASmJOveAXuJlXWMBGF
 cSjBXTuJTPybZr5q2iqqH16k8QN3sWX1eMGy5BwQ4lCWRMhZsV13dyWkcfxYVKKtF3G9QcWYi0lVg
 tDoc3QPZ9bMIixzCfhriR7kObOttuGy6QFB1/BYdyYLTEkzGBS1ht7Npm/+6HGwWMl3VsTczEHrPt
 3O4zLgvWja0VUNS6T2Vmovv1T0tbVpA6/cnI7iWw+gqpuBiLe50Xq39mlVx3HauhSewrto+ThH0C6
 V2NLcWvLD6tw7b2Vaoy71tmCLHR00npK04ddP9L2StMkyKDlfYIczIU7Wz2iat3RYJgfttxfBsWVj
 rFRhknlAg==;
Subject: [Intel-gfx] [PATCH] docs: fix some broken references due to
 txt->rst renames
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, dri-devel@lists.freedesktop.org,
 Ajay Gupta <ajayg@nvidia.com>, Jonathan Corbet <corbet@lwn.net>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@infradead.org>, linux-i2c@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Amit Kucheria <amit.kucheria@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Otto Sabart <ottosabart@seberm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUgYXJlIHRocmVlIGxlZnQtb3ZlcnMgZnJvbSB0aGUgcmVjZW50IGZpbGUgcmVuYW1lcywK
cHJvYmFibHkgZHVlIHRvIHNvbWUgb3RoZXIgY29uZmxpY3RpbmcgcGF0Y2guCgpGaXggdGhlbS4K
ClNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitzYW1zdW5nQGtl
cm5lbC5vcmc+Ci0tLQoKVGhpcyBwYXRjaCBpcyBhZ2FpbnN0IHRvZGF5J3MgbmV4dC0yMDE5MDYx
NyBicmFuY2guIE5vdCBzdXJlIGlmIGl0CndpbGwgYXBwbHkgY2xlYW5seSBhdCAtZG9jcyB0cmVl
LiBJZiBub3QsICBQbGVhc2UgbGV0IG1lIGtub3cgZm9yIG1lIHRvCnNwbGl0LgoKIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vaWRsZS1zdGF0ZXMudHh0IHwgMiArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oICAgICAgICAgICAgICAgfCAyICst
CiBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLW52aWRpYS1ncHUuYyAgICAgICAgICAgICAgICAgICB8
IDIgKy0KIDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vaWRsZS1z
dGF0ZXMudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9pZGxlLXN0
YXRlcy50eHQKaW5kZXggM2JkYmU2NzViOWU2Li5kOGQ5YWE3MTY3ZTggMTAwNjQ0Ci0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vaWRsZS1zdGF0ZXMudHh0CisrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vaWRsZS1zdGF0ZXMudHh0CkBA
IC03MDMsNCArNzAzLDQgQEAgY3B1cyB7CiAgICAgaHR0cHM6Ly93d3cuZGV2aWNldHJlZS5vcmcv
c3BlY2lmaWNhdGlvbnMvCiAKIFs2XSBBUk0gTGludXggS2VybmVsIGRvY3VtZW50YXRpb24gLSBC
b290aW5nIEFBcmNoNjQgTGludXgKLSAgICBEb2N1bWVudGF0aW9uL2FybTY0L2Jvb3RpbmcudHh0
CisgICAgRG9jdW1lbnRhdGlvbi9hcm02NC9ib290aW5nLnJzdApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcnVudGltZV9wbS5oCmluZGV4IGYyZDYyOTlhODE2MS4uM2NiMzkxY2Q4MWMxIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oCkBAIC00NCw3ICs0NCw3IEBAIGVu
dW0gaTkxNV9kcm1fc3VzcGVuZF9tb2RlIHsKICAqIHRvIGJlIGRpc2FibGVkLiBUaGlzIHNob3Vs
ZG4ndCBoYXBwZW4gYW5kIHdlJ2xsIHByaW50IHNvbWUgZXJyb3IgbWVzc2FnZXMgaW4KICAqIGNh
c2UgaXQgaGFwcGVucy4KICAqCi0gKiBGb3IgbW9yZSwgcmVhZCB0aGUgRG9jdW1lbnRhdGlvbi9w
b3dlci9ydW50aW1lX3BtLnR4dC4KKyAqIEZvciBtb3JlLCByZWFkIHRoZSBEb2N1bWVudGF0aW9u
L3Bvd2VyL3J1bnRpbWVfcG0ucnN0LgogICovCiBzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSB7CiAJ
YXRvbWljX3Qgd2FrZXJlZl9jb3VudDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9p
MmMtbnZpZGlhLWdwdS5jIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1udmlkaWEtZ3B1LmMKaW5k
ZXggY2ZjNzZiNWRlNzI2Li41YTEyMzVmZDg2YmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaTJjL2J1
c3Nlcy9pMmMtbnZpZGlhLWdwdS5jCisrKyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtbnZpZGlh
LWdwdS5jCkBAIC0zNjQsNyArMzY0LDcgQEAgc3RhdGljIHZvaWQgZ3B1X2kyY19yZW1vdmUoc3Ry
dWN0IHBjaV9kZXYgKnBkZXYpCiAvKgogICogV2UgbmVlZCBncHVfaTJjX3N1c3BlbmQoKSBldmVu
IGlmIGl0IGlzIHN0dWIsIGZvciBydW50aW1lIHBtIHRvIHdvcmsKICAqIGNvcnJlY3RseS4gV2l0
aG91dCBpdCwgbHNwY2kgc2hvd3MgcnVudGltZSBwbSBzdGF0dXMgYXMgIkQwIiBmb3IgdGhlIGNh
cmQuCi0gKiBEb2N1bWVudGF0aW9uL3Bvd2VyL3BjaS50eHQgYWxzbyBpbnNpc3RzIGZvciBkcml2
ZXIgdG8gcHJvdmlkZSB0aGlzLgorICogRG9jdW1lbnRhdGlvbi9wb3dlci9wY2kucnN0IGFsc28g
aW5zaXN0cyBmb3IgZHJpdmVyIHRvIHByb3ZpZGUgdGhpcy4KICAqLwogc3RhdGljIF9fbWF5YmVf
dW51c2VkIGludCBncHVfaTJjX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQogewotLSAKMi4y
MS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
