Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AABA343356
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Mar 2021 17:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5531E6E02A;
	Sun, 21 Mar 2021 16:08:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C19626E02A
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Mar 2021 16:08:48 +0000 (UTC)
IronPort-SDR: SyoVScAOT+bV3C88djQN+tenNami782jJAXHMTvbZtdLul93V2S2qQDjrrnxk/gQzWtNHKrNfY
 QnEHsj9UNz7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="190237106"
X-IronPort-AV: E=Sophos;i="5.81,266,1610438400"; d="scan'208";a="190237106"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 09:08:47 -0700
IronPort-SDR: 1BiZUMjPUCHteFNkcx4384XcplIWc/CpIvA7IvNAawMom2y49/g46vOIRO/opuT3lijsNfd8nu
 RcMuI9W25LxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,266,1610438400"; d="scan'208";a="375456483"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 21 Mar 2021 09:08:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sun, 21 Mar 2021 18:08:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 21 Mar 2021 18:08:44 +0200
Message-Id: <20210321160844.4260-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel] sna: Allow DRI3 on gen2/3
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk9u
Y2Ugd2UgaGF2ZSBEUkkzIGluIE1lc2EgaTkxNSBkcml2ZXIgd2UgY2FuIGFsbG93IERSSTMKb24g
Z2VuMi8zLgoKQnV0IGR1ZSB0byB0aGUgc3VwcG9zZWQgbWlzc2luZyBEUkkyIGZhbGxiYWNrIHdp
dGggb2xkZXIgTWVzYQpsZXQncyBvbmx5IGRvIHRoYXQgaWYgdGhlIHVzZXIgZXhwbGljaXRseSBy
ZXF1ZXN0cyBpdC4gTm90ZQp0aGF0IHdoZW4gSSB0cmllZCB0aGlzIHdpdGggbW9kZXJuIE1lc2Eg
dGhhdCBsYWNrcyBpOTE1IERSSTMKc3VwcG9ydCB0aGluZ3Mgc2VlbWVkIHRvIGZhbGwgYmFjayB0
byBEUkkyIGp1c3QgZmluZSwgYnV0CmJldHRlciBzYWZlIHRoYW4gc29ycnkgSSBndWVzcy4KCkNj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmVmZXJlbmNlczogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL21lc2EvbWVzYS8tL21lcmdlX3JlcXVlc3RzLzk3
MzQKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBzcmMvc25hL3NuYV9kcml2ZXIuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3NuYS9z
bmFfZHJpdmVyLmMgYi9zcmMvc25hL3NuYV9kcml2ZXIuYwppbmRleCBkODEwYjI2MmI0NTIuLmIw
ZTE2ODMzNjJkMyAxMDA2NDQKLS0tIGEvc3JjL3NuYS9zbmFfZHJpdmVyLmMKKysrIGIvc3JjL3Nu
YS9zbmFfZHJpdmVyLmMKQEAgLTQ0NCw3ICs0NDQsOCBAQCBzdGF0aWMgdm9pZCBzZXR1cF9kcmko
c3RydWN0IHNuYSAqc25hKQogCXNuYS0+ZHJpMy5vdmVycmlkZSA9CiAJCSFzbmEtPmRyaTMuYXZh
aWxhYmxlIHx8CiAJCXhmODZJc09wdGlvblNldChzbmEtPk9wdGlvbnMsIE9QVElPTl9EUkkpOwot
CWlmIChsZXZlbCA+PSAzICYmIHNuYS0+a2dlbS5nZW4gPj0gMDQwKQorCWlmIChsZXZlbCA+PSAz
ICYmIChzbmEtPmtnZW0uZ2VuID49IDA0MCB8fAorCQkJICAgeGY4NklzT3B0aW9uU2V0KHNuYS0+
T3B0aW9ucywgT1BUSU9OX0RSSSkpKQogCQlzbmEtPmRyaTMuZW5hYmxlID0gc25hLT5kcmkzLmF2
YWlsYWJsZTsKICNlbmRpZgogI2lmIEhBVkVfRFJJMgotLSAKMi4yNi4yCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
