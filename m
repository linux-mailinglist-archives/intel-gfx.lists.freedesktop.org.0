Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 293287A198
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 09:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30AA56E417;
	Tue, 30 Jul 2019 07:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A228B6E417
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 07:06:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 00:06:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,325,1559545200"; d="scan'208";a="323115109"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.93.100])
 by orsmga004.jf.intel.com with ESMTP; 30 Jul 2019 00:06:20 -0700
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190729112612.37476-1-michal.wajdeczko@intel.com>
References: <20190729112612.37476-1-michal.wajdeczko@intel.com>
Message-ID: <156447037950.6153.16062882371331302443@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 30 Jul 2019 10:06:19 +0300
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/uc: Don't fail on HuC firmware
 failure
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTI5IDE0OjI2OjEyKQo+IEh1QyBpcyB1
c3VhbGx5IG5vdCBhIGNyaXRpY2FsIGNvbXBvbmVudCwgc28gd2UgY2FuIHNhZmVseSBpZ25vcmUK
PiBmaXJtd2FyZSBsb2FkIG9yIGF1dGhlbnRpY2F0aW9uIGZhaWx1cmVzIHVubGVzcyBIdUMgd2Fz
IGV4cGxpY2l0bHkKPiByZXF1ZXN0ZWQgYnkgdGhlIHVzZXIuCgpEbyB3ZSBoYXZlIHRoZSBmYXVs
dCBpbmplY3Rpb24gYW5kIHJlc3BlY3RpdmUgSUdUIHBhdGNoZXMgc29tZXdoZXJlPwoKUmVnYXJk
cywgSm9vbmFzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
