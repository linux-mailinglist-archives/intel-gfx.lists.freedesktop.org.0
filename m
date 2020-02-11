Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9842A1594C0
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 17:22:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE93E6EEAF;
	Tue, 11 Feb 2020 16:22:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A5DB6EEAE;
 Tue, 11 Feb 2020 16:22:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 08:22:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="280974677"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 11 Feb 2020 08:22:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Feb 2020 18:22:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 11 Feb 2020 18:22:05 +0200
Message-Id: <20200211162208.16224-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200211162208.16224-1-ville.syrjala@linux.intel.com>
References: <20200211162208.16224-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/7] drm/imx: Remove the bogus
 possible_clones setup
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkl0
J3Mgbm90IGF0IGFsbCBjbGVhciB3aGF0IGNsb25pbmcgb3B0aW9ucyB0aGlzIGRyaXZlciBzdXBw
b3J0cy4KU28gbGV0J3MganVzdCBjbGVhciBwb3NzaWJsZV9jbG9uZXMgaW5zdGVhZCBvZiBzZXR0
aW5nIGl0IHRvIHNvbWUKYm9ndXMgdmFsdWUuCgp2MjogQWRqdXN0IHRoZSBGSVhNRSAoRGFuaWVs
KQoKQ2M6IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+CkFja2VkLWJ5OiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pbXgvaW14LWRybS1jb3JlLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2lteC9pbXgtZHJtLWNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pbXgvaW14LWRybS1jb3JlLmMK
aW5kZXggZGE4N2M3MGU0MTNiLi45ZThlMGI3MDM0OTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pbXgvaW14LWRybS1jb3JlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2lteC9pbXgtZHJt
LWNvcmUuYwpAQCAtMTM5LDggKzEzOSw4IEBAIGludCBpbXhfZHJtX2VuY29kZXJfcGFyc2Vfb2Yo
c3RydWN0IGRybV9kZXZpY2UgKmRybSwKIAogCWVuY29kZXItPnBvc3NpYmxlX2NydGNzID0gY3J0
Y19tYXNrOwogCi0JLyogRklYTUU6IHRoaXMgaXMgdGhlIG1hc2sgb2Ygb3V0cHV0cyB3aGljaCBj
YW4gY2xvbmUgdGhpcyBvdXRwdXQuICovCi0JZW5jb2Rlci0+cG9zc2libGVfY2xvbmVzID0gfjA7
CisJLyogRklYTUU6IGNsb25pbmcgc3VwcG9ydCBub3QgY2xlYXIsIGRpc2FibGUgaXQgYWxsIGZv
ciBub3cgKi8KKwllbmNvZGVyLT5wb3NzaWJsZV9jbG9uZXMgPSAwOwogCiAJcmV0dXJuIDA7CiB9
Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
