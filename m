Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70ED33B41CF
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 12:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC39E6ED1B;
	Fri, 25 Jun 2021 10:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64DE56ED1B;
 Fri, 25 Jun 2021 10:38:46 +0000 (UTC)
IronPort-SDR: Cn7LDpkguuMhQlC3AHxRYKLKycVYSCSiPJROa4K92gxM0veakE9iwZtfUd6pyqtU48z8bIxrV9
 WxOcwsoMOHBw==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="207466384"
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="207466384"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 03:38:46 -0700
IronPort-SDR: JrHFnTugLMZMMp00JDtqZ/pHSRftrFHGr8CPEZt6oM2jqYiAg4CT1mYLinWEFH6UqiXcaqtC4g
 aFmnvq1NzB3w==
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="488139141"
Received: from adalyx-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.15.48])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 03:38:45 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Jun 2021 11:38:24 +0100
Message-Id: <20210625103824.558481-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210625103824.558481-1-matthew.auld@intel.com>
References: <20210625103824.558481-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/gtt: ignore min_page_size for
 paging structures
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIG1pbl9wYWdlX3NpemUgaXMgb25seSBuZWVkZWQgZm9yIHBhZ2VzIGluc2VydGVkIGludG8g
dGhlIEdUVCwgYW5kCmZvciBvdXIgcGFnaW5nIHN0cnVjdHVyZXMgd2Ugb25seSBuZWVkIGF0IG1v
c3QgNEsgYnl0ZXMsIHNvIHNpbXBseQppZ25vcmUgdGhlIG1pbl9wYWdlX3NpemUgcmVzdHJpY3Rp
b25zIGhlcmUsIG90aGVyd2lzZSB3ZSBtaWdodCBzZWUgc29tZQpzZXZlcmUgb3ZlcmFsbG9jYXRp
b24gb24gc29tZSBkZXZpY2VzLgoKdjIoVGhvbWFzKTogYWRkIHNvbWUgY29tbWVudGFyeQoKU2ln
bmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogVGhv
bWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5jIHwgMTQgKysrKysrKysr
KysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuYwppbmRleCAwODRlYTY1ZDU5YzAuLmY3ZTAzNTJl
ZGI2MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMKQEAgLTE2LDcgKzE2LDE5IEBA
IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICphbGxvY19wdF9sbWVtKHN0cnVjdCBpOTE1X2Fk
ZHJlc3Nfc3BhY2UgKnZtLCBpbnQgc3opCiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iajsKIAotCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbSh2bS0+aTkxNSwgc3os
IDApOworCS8qCisJICogVG8gYXZvaWQgc2V2ZXJlIG92ZXItYWxsb2NhdGlvbiB3aGVuIGRlYWxp
bmcgd2l0aCBtaW5fcGFnZV9zaXplCisJICogcmVzdHJpY3Rpb25zLCB3ZSBvdmVycmlkZSB0aGF0
IGJlaGF2aW91ciBoZXJlIGJ5IGFsbG93aW5nIGFuIG9iamVjdAorCSAqIHNpemUgYW5kIHBhZ2Ug
bGF5b3V0IHdoaWNoIGNhbiBiZSBzbWFsbGVyLiBJbiBwcmFjdGljZSB0aGlzIHNob3VsZCBiZQor
CSAqIHRvdGFsbHkgZmluZSwgc2luY2UgR1RUIHBhZ2luZyBzdHJ1Y3R1cmVzIGFyZSBub3QgdHlw
aWNhbGx5IGluc2VydGVkCisJICogaW50byB0aGUgR1RULgorCSAqCisJICogTm90ZSB0aGF0IHdl
IGFsc28gaGl0IHRoaXMgcGF0aCBmb3IgdGhlIHNjcmF0Y2ggcGFnZSwgYW5kIGZvciB0aGlzCisJ
ICogY2FzZSBpdCBtaWdodCBuZWVkIHRvIGJlIDY0SywgYnV0IHRoYXQgc2hvdWxkIHdvcmsgZmlu
ZSBoZXJlIHNpbmNlIHdlCisJICogdXNlZCB0aGUgcGFzc2VkIGluIHNpemUgZm9yIHRoZSBwYWdl
IHNpemUsIHdoaWNoIHNob3VsZCBlbnN1cmUgaXQKKwkgKiBhbHNvIGhhcyB0aGUgc2FtZSBhbGln
bm1lbnQuCisJICovCisJb2JqID0gX19pOTE1X2dlbV9vYmplY3RfY3JlYXRlX2xtZW1fd2l0aF9w
cyh2bS0+aTkxNSwgc3osIHN6LCAwKTsKIAkvKgogCSAqIEVuc3VyZSBhbGwgcGFnaW5nIHN0cnVj
dHVyZXMgZm9yIHRoaXMgdm0gc2hhcmUgdGhlIHNhbWUgZG1hLXJlc3YKIAkgKiBvYmplY3QgdW5k
ZXJuZWF0aCwgd2l0aCB0aGUgaWRlYSB0aGF0IG9uZSBvYmplY3RfbG9jaygpIHdpbGwgbG9jawot
LSAKMi4yNi4zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
