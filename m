Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF822126FD
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 16:52:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 736FE6EAE3;
	Thu,  2 Jul 2020 14:52:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 253C06EAE3
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 14:51:59 +0000 (UTC)
IronPort-SDR: zZdpX5yBulEAP3jqfQbLimD4X1tfi80PY92uRx+MEBmMicyqniCOxpTnLB5zeDZ5Y016ScPJmY
 HbBBHjOClIRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="231775691"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="231775691"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 07:51:58 -0700
IronPort-SDR: t7UHM2sZOEaCU7Efm7eo4w+1Dvs7n7e4J4EpkacBW4zjC2UKvhGkcsbuQA21l51MhJqUNViovr
 3RKX6KmhpNcA==
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="482028657"
Received: from dandoron-mobl.ger.corp.intel.com (HELO [10.214.212.30])
 ([10.214.212.30])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 07:51:57 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-26-maarten.lankhorst@linux.intel.com>
 <20200624110515.454665-1-maarten.lankhorst@linux.intel.com>
 <b32f5114-8268-c03c-967d-0348f3bdab4b@linux.intel.com>
 <5dcfeaeb-7c6c-36be-b01e-a69ec5627fb8@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e44599b5-b28c-9142-c6df-a9ee62cca05f@linux.intel.com>
Date: Thu, 2 Jul 2020 15:51:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <5dcfeaeb-7c6c-36be-b01e-a69ec5627fb8@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Kill context before taking
 ctx->mutex
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

Ck9uIDAyLzA3LzIwMjAgMTQ6MjYsIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+IE9wIDMwLTA2
LTIwMjAgb20gMTY6MTYgc2NocmVlZiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMjQvMDYvMjAy
MCAxMjowNSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+PiBLaWxsaW5nIGNvbnRleHQgYmVm
b3JlIHRha2luZyBjdHgtPm11dGV4IGZpeGVzIGEgaGFuZyBpbgo+Pj4gZ2VtX2N0eF9wZXJzaXN0
ZW5jZS5jbG9zZS1yZXBsYWNlLXJhY2UsIHdoZXJlIGx1dF9jbG9zZQo+Pj4gdGFrZXMgb2JqLT5y
ZXN2LmxvY2sgd2hpY2ggaXMgYWxyZWFkeSBoZWxkIGJ5IGV4ZWNidWYsCj4+PiBjYXVzaW5nIGEg
c3RhbGxpbmcgaW5kZWZpbml0ZWx5Lgo+Pgo+PiBJZiB0aGlzIGlzIHRoZSBjb25zZXF1ZW5jZSBv
ZiBpbnZlcnRpbmcgdGhlIGxvY2tpbmcgb3JkZXIgSSB0aGluayB5b3UgbmVlZCB0byBtb3ZlIHRo
ZSBmaXggZWFybGllciBpbiB0aGUgc2VyaWVzLCB0byBwcmVjZWRlIHRoZSBwYXRjaCB3aGljaCBj
cmVhdGVzIHRoZSBpbnZlcnNpb24uIE90aGVyd2lzZSBBRkFJQ1QgdGhlIHJlLW9yZGVyIG9mIGtp
bGxfY29udGV4dCB2cyBsdXRfY2xvc2Ugc2VlbXMgZmluZS4KPiAKPiBZZWFoLCBpdCB3YXMganVz
dCBhIGJ1Z2ZpeCBJIGZvdW5kIHdoZW4gbG9va2luZyBhdCB0aGUgY29kZSwgaWYgeW91IHJldmll
dyBpdCBJIGNhbiBwdXNoIGl0IG5vdyBzbyBJIGRvbid0IGhhdmUgdG8gcmVzZW5kLsKgIDopCgpZ
b3UgYXJlIHNheWluZyBpdCdzIGEgYnVnIGluIGRybS10aXAgdG9kYXk/CgpGcm9tIHRoZSBjb21t
aXQ6CgpbIDE5MDQuMzQyODQ3XSAyIGxvY2tzIGhlbGQgYnkgZ2VtX2N0eF9wZXJzaXN0LzExNTIw
OgpbIDE5MDQuMzQyODQ5XSAgIzA6IGZmZmY4ODgyMTg4ZTQ5NjggKCZjdHgtPm11dGV4KXsrLisu
fS17MzozfSwgYXQ6IGNvbnRleHRfY2xvc2UrMHhlNi8weDg1MCBbaTkxNV0KWyAxOTA0LjM0Mjk0
MV0gICMxOiBmZmZmODg4MjFjNThhNWE4IChyZXNlcnZhdGlvbl93d19jbGFzc19tdXRleCl7Ky4r
Ln0tezM6M30sIGF0OiBsdXRfY2xvc2UrMHgyYzIvMHhiYTAgW2k5MTVdClsgMTkwNC4zNDMwMzNd
IDMgbG9ja3MgaGVsZCBieSBnZW1fY3R4X3BlcnNpc3QvMTE1MjE6ClsgMTkwNC4zNDMwMzVdICAj
MDogZmZmZmM5MDAwMDhmZjkzOCAocmVzZXJ2YXRpb25fd3dfY2xhc3NfYWNxdWlyZSl7Ky4rLn0t
ezA6MH0sIGF0OiBpOTE1X2dlbV9kb19leGVjYnVmZmVyKzB4MTAzZC8weDU0YzAgW2k5MTVdClsg
MTkwNC4zNDMxNTddICAjMTogZmZmZjg4ODIxYzU4YTVhOCAocmVzZXJ2YXRpb25fd3dfY2xhc3Nf
bXV0ZXgpeysuKy59LXszOjN9LCBhdDogZWJfdmFsaWRhdGVfdm1hcysweDYwMi8weDIwMTAgW2k5
MTVdClsgMTkwNC4zNDMyNjddICAjMjogZmZmZjg4ODIwYWZkOTIwMCAoJnZtLT5tdXRleC8xKXsr
LisufS17MzozfSwgYXQ6IGk5MTVfdm1hX3Bpbl93dysweDMzNS8weDIzMDAgW2k5MTVdCgpJIGRv
bid0IHNlZSB0d28gaW52ZXJ0ZWQgbG9ja3MgaW4gdHdvIHRocmVhZHMgLSB3aGF0IGlzIGhhcHBl
bmluZyBjYXVzaW5nICJzdGFsbGluZyIgLSBkZWFkbG9jaz8gTGl2ZWxvY2s/CgpSZWdhcmRzLAoK
VHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
