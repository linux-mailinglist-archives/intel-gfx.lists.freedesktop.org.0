Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 814E730FAD0
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 19:10:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE0366EE0C;
	Thu,  4 Feb 2021 18:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4FF6EE0C
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 18:10:52 +0000 (UTC)
IronPort-SDR: uwuiWpLbp3bqPv7Cz6pYtFz8hllgwyIrkZl+An1voJixJzy3D++qQ2dMatm2fs+RJ/QUUc00Pg
 oRBXEydWJxWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="181447643"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="181447643"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 10:10:51 -0800
IronPort-SDR: YsT22v+AAYKOjzojFpzchPeu6ukh9qBc/H98EFlrtb5QdKme4r6aoFpaob8YmaRIV65ketpy9C
 JMT4pRXdhJWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="415267572"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 04 Feb 2021 10:10:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Feb 2021 20:10:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 20:10:34 +0200
Message-Id: <20210204181048.24202-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/14] drm/i915: Clean up the DDI clock
 routing mess
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkEg
cmV2aXNlZCB2ZXJzaW9uIG9mIHRoZSBEREkgY2xvY2sgcm91dGluZyByZWZhY3RvcmluZy4KCkRy
b3BwZWQgdGhlIGljbF9kcGNsa2FfY2ZnY3IwX3JlZygpICYgY28uIGV4dHJhY3Rpb24gYXMgTHVj
YXMKc3VnZ2VzdGVkIHNpbmNlIHRoZXkgZ290IHJlbW92ZWQgYXQgdGhlIGVuZCBhbnl3YXkuIFdh
cyBhIGJpdAp3b3JyaWVkIGl0IG1pZ2h0IG1ha2UgdGhpbmdzIG1vcmUgY29uZnVzaW5nIGR1ZSB0
bwppY2xfZHBjbGthX2NmZ2NyMF9jbGtfb2ZmKCkgYWxyZWFkeSBiZWluZyB0aGVyZSwgYnV0IGxv
b2tzIE9LCmluIHRoZSBlbmQgYW55d2F5IEkgdGhpbmsuCgpBbHNvIGRpZCBhIGJ1bmNoIGlmIHMv
ZGV2X3ByaXYvaTkxNS8gYmFzZWQgb24gTHVjYXMncyByZXZpZXcuCkRpZG4ndCBmZWVsIGNvbWZv
cnRhYmxlIHNuZWFraW5nIGFsbCBvZiBpdCBpbnRvIHRoZSBvdGhlciBwYXRjaGVzCnNpbmNlIGl0
IHdvdWxkIGhhdmUgbG93ZXJlZCB0aGUgU05SLiBIZW5jZSB0aGUgbmV3IHBhdGNoIGF0IHRoZQpl
bmQgdG8gY2xlYW4gdXAgdGhlIHN0cmFnZ2xlcnMuCgpWaWxsZSBTeXJqw6Rsw6QgKDE0KToKICBk
cm0vaTkxNTogSW50cm9kdWNlIC57ZW5hYmxlLGRpc2FibGV9X2Nsb2NrKCkgZW5jb2RlciB2ZnVu
Y3MKICBkcm0vaTkxNTogRXh0cmFjdCBoc3dfZGRpX3tlbmFibGUsZGlzYWJsZX1fY2xvY2soKQog
IGRybS9pOTE1OiBFeHRyYWN0IHNrbF9kZGlfe2VuYWJsZSxkaXNhYmxlfV9jbG9jaygpCiAgZHJt
L2kxOTU6IEV4dHJhY3QgY25sX2RkaV97ZW5hYmxlLGRpc2FibGV9X2Nsb2NrKCkKICBkcm0vaTkx
NTogQ29udmVydCBERzEgb3ZlciB0byAue2VuYWJsZSxkaXNhYmxlfV9jbG9jaygpCiAgZHJtL2k5
MTU6IEV4dHJhY3QgaWNsKyAue2VuYWJsZSxkaXNhYmxlfV9jbG9jaygpIHZmdW5jcwogIGRybS9p
OTE1OiBVc2UgaW50ZWxfZGVfcm13KCkgZm9yIERESSBjbG9jayByb3V0aW5nCiAgZHJtL2k5MTU6
IFNwcmlua2xlIGEgZmV3IG1pc3NpbmcgbG9ja3MgYXJvdW5kIHNoYXJlZCBEREkgY2xvY2sKICAg
IHJlZ2lzdGVycwogIGRybS9pOTE1OiBTcHJpbmtsZSBXQVJOKCFwbGwpIGludG8gaWNsL2RnMSAu
Y2xvY2tfZW5hYmxlKCkKICBkcm0vaTkxNTogRXh0cmFjdCBfY25sX2RkaV97ZW5hYmxlLGRpc2Fi
bGV9X2Nsb2NrKCkKICBkcm0vaTkxNTogU3BsaXQgYWRsLXMvcmtsIGZyb20gaWNsX2RkaV9jb21i
b197ZW5hYmxlLGRpc2FibGV9X2Nsb2NrKCkKICBkcm0vaTkxNTogVXNlIC5kaXNhYmxlX2Nsb2Nr
KCkgZm9yIHBsbCBzYW5pdGF0aW9uCiAgZHJtL2k5MTU6IFJlbG9jYXRlIGljbF9zYW5pdGl6ZV9l
bmNvZGVyX3BsbF9tYXBwaW5nKCkKICBkcm0vaTkxNTogcy9kZXZfcHJpdi9pOTE1LyBmb3IgdGhl
IHJlbWFpbmRlciBvZiBEREkgY2xvY2sgcm91dGluZwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaWNsX2RzaS5jICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jICAgICAgfCA1NzYgKysrKysrKysrKy0tLS0tLS0tCiAuLi4vZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDYgKwogMyBmaWxlcyBjaGFu
Z2VkLCAzMTUgaW5zZXJ0aW9ucygrKSwgMjY4IGRlbGV0aW9ucygtKQoKLS0gCjIuMjYuMgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
