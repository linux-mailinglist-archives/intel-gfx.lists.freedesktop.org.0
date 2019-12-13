Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B535111E954
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 18:43:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B58E06EB7C;
	Fri, 13 Dec 2019 17:43:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3C476EB7C;
 Fri, 13 Dec 2019 17:43:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 09:43:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="220958168"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 13 Dec 2019 09:43:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Dec 2019 19:43:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 13 Dec 2019 19:43:44 +0200
Message-Id: <20191213174348.27261-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/4] drm/edid: Add new modes from CTA-861-G
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
Cc: Hans Verkuil <hansverk@cisco.com>, intel-gfx@lists.freedesktop.org,
 Thomas Anderson <thomasanderson@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
dmlldyBmZWVkYmFjayBhZGRyZXNzZWQuIEkgY29uc2lkZXJlZCBjaGFuZ2luZyB0aGUgYXBwcm9h
Y2gKYmFzZWQgb24gVG9tJ3MgY29tbWVudHMgYnV0IGluIHRoZSBlbmQgZGVjaWRlZCB0aGF0IHBy
b2JhYmx5CmJldHRlciB0byBnbyB3aXRoIHRoaXMgZm9yIG5vdy4gV2UgY2FuIG1hc3NhZ2UgaXQg
bGF0ZXIgaWYKcmVxdWlyZWQuCgpDYzogSGFucyBWZXJrdWlsIDxoYW5zdmVya0BjaXNjby5jb20+
CkNjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpDYzogVGhvbWFz
IEFuZGVyc29uIDx0aG9tYXNhbmRlcnNvbkBnb29nbGUuY29tPgoKVmlsbGUgU3lyasOkbMOkICg0
KToKICBkcm0vZWRpZDogQWJzdHJhY3QgYXdheSBjZWFfZWRpZF9tb2Rlc1tdCiAgZHJtL2VkaWQ6
IEFkZCBDVEEtODYxLUcgbW9kZXMgd2l0aCBWSUMgPj0gMTkzCiAgZHJtL2VkaWQ6IFRocm93IGF3
YXkgdGhlIGR1bW15IFZJQyAwIGNlYSBtb2RlCiAgZHJtL2VkaWQ6IE1ha2Ugc3VyZSB0aGUgQ0VB
IG1vZGUgYXJyYXlzIGhhdmUgdGhlIGNvcnJlY3QgYW1vdW50IG9mCiAgICBtb2RlcwoKIGRyaXZl
cnMvZ3B1L2RybS9kcm1fZWRpZC5jIHwgMjE3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOTMgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25z
KC0pCgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
