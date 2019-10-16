Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5C1D9255
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 15:22:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88DCF6E978;
	Wed, 16 Oct 2019 13:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CCB16E978
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 13:22:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 06:22:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="186148028"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga007.jf.intel.com with ESMTP; 16 Oct 2019 06:21:59 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2019 18:22:35 +0530
Message-Id: <20191016125236.3447-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/1] Add dsi_state in crtc_state
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
Cc: jani.nikula@intel.com, ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBpcyBhbm90aGVyIGFwcHJvYWNoIHRvd2FyZHMgc29sdmluZwp0d28gcHJvYmxl
bXMgdGhhdCB3ZSBhcmUgZmFjaW5nIGluIGVuYWJsaW5nIGRzaSBjbWQgbW9kZS4KCjEuIEdPUCBl
bmFibGVzIGRzaSBjbWQgbW9kZSBpbiBwZXJpb2RpYyB1cGRhdGUgbW9kZSBidXQKd2UgbmVlZCB0
byBlbmFibGUgZHNpIGNtZCBtb2RlIGluIFRFX0dBVEUgbW9kZS4KVG8gc2V0IGl0IHRvIFRFIEdB
VEUgbW9kZSB3ZSBuZWVkIHRvIGZvbGxvdyBhIGRpYWJsZQplbmFibGUgc2VxdWVuY2UuIFRoaXMg
d2lsbCBoZWxwIGluIHN0YXRlIGNoZWNrIGZvcgptb2RlX2NoYW5nZWQuCgoyLiBJbiBURSBnYXRl
IG1vZGUgd2UgbmVlZCB0byBzZXQgZnJhbWUgdXBkYXRlIGJpdCBvbiBldmVyeSBmbGlwCldpdGgg
dGhpcyB3ZSBjYW4gdWRwYXRlIHRoZSBGUk1DVEwgb24gZXZleSBmbGlwLgoKUFM6IE9QX01PREVf
TUFTSyBhbmQgT1BfTU9ERV9TSElGVCBhcmUgbm90IGRlZmluZWQgaW4gdGhpcyBwYXRjaC4KVGhl
eSBhcmUgcGFydCBvZiBteSBlYXJsaWVyIHNlcmllcwpodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzY3OTc0LwoKVmFuZGl0YSBLdWxrYXJuaSAoMSk6CiAgZHJtL2k5MTUv
ZHNpOiBBZGQgZHNpX3N0YXRlIGluIGNydGNfc3RhdGUKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ljbF9kc2kuYyAgICAgICAgfCAzOSArKysrKysrKysrKysrKysrKysrCiAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAxMiArKysrKysKIDIgZmls
ZXMgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygrKQoKLS0gCjIuMjEuMC41LmdhZWI1ODJhCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
