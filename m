Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C1DBDFCA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 16:15:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D9589316;
	Wed, 25 Sep 2019 14:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6E4389316
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 14:15:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 07:15:27 -0700
X-ExtLoopCount2: 2 from 10.237.72.174
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="179825308"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 25 Sep 2019 07:15:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2019 17:15:24 +0300
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Wed, 25 Sep 2019 17:15:24 +0300
Resent-Message-ID: <20190925141524.GB1208@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.fi.intel.com with IMAP (fetchmail-6.3.26)
 for <vsyrjala@localhost> (single-drop); Wed, 25 Sep 2019 17:01:49 +0300 (EEST)
Received: from orsmga001.jf.intel.com (orsmga001.jf.intel.com [10.7.209.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 757535802B1
 for <ville.syrjala@linux.intel.com>; Wed, 25 Sep 2019 06:55:05 -0700 (PDT)
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="272971373"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 25 Sep 2019 06:55:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2019 16:55:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 16:54:58 +0300
Message-Id: <20190925135502.24055-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/4] drm/edid: Add new modes from CTA-861-G
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
Cc: intel-gfc@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
bWFpbmRlciBvZiB0aGUgbmV3IENUQS04NjEtRyBtb2Rlcy4gSSBhbHJlYWR5IHB1c2hlZCB0aGUg
Zmlyc3QgcGF0Y2gKYWRkaW5nIHRoZSBtb2RlcyB3aXRoIFZJQzwxMjguIEkgZGlkIGltcHJvdmUg
dGhlIEJVSUxEX0JVR19PTigpcyBpbiB0aGUKbGFzdCBwYXRjaCBhIGJpdCB0byBtYWtlIGl0IGVh
c2llciB0byB2aXN1YWxseSBkb3VibGUgY2hlY2sgdGhlIG51bWJlcnMKYWdhaW5zdCBWSUMgY29t
bWVudHMgaW4gdGhlIG1vZGUgYXJyYXlzLgoKVmlsbGUgU3lyasOkbMOkICg0KToKICBkcm0vZWRp
ZDogQWJzdHJhY3QgYXdheSBjZWFfZWRpZF9tb2Rlc1tdCiAgZHJtL2VkaWQ6IEFkZCBDVEEtODYx
LUcgbW9kZXMgd2l0aCBWSUMgPj0gMTkzCiAgZHJtL2VkaWQ6IFRocm93IGF3YXkgdGhlIGR1bW15
IFZJQyAwIGNlYSBtb2RlCiAgZHJtL2VkaWQ6IE1ha2Ugc3VyZSB0aGUgQ0VBIG1vZGUgYXJyYXlz
IGhhdmUgdGhlIGNvcnJlY3QgYW1vdW50IG9mCiAgICBtb2RlcwoKIGRyaXZlcnMvZ3B1L2RybS9k
cm1fZWRpZC5jIHwgMjMwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyMDYgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCgotLSAKMi4y
MS4wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
