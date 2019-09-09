Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF6FAD845
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 13:50:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B2189688;
	Mon,  9 Sep 2019 11:50:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E7989688
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 11:50:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 04:50:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="196172673"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.90.21])
 by orsmga002.jf.intel.com with ESMTP; 09 Sep 2019 04:50:21 -0700
MIME-Version: 1.0
To: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190825224801.19117-1-prathap.kumar.valsan@intel.com>
References: <20190825224801.19117-1-prathap.kumar.valsan@intel.com>
Message-ID: <156802981996.16254.10371736850278360760@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Mon, 09 Sep 2019 14:50:20 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add sysfs interface to
 control class-of-service
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

UXVvdGluZyBQcmF0aGFwIEt1bWFyIFZhbHNhbiAoMjAxOS0wOC0yNiAwMTo0ODowMSkKPiBUbyBw
cm92aWRlIHNoYXJlZCBsYXN0LWxldmVsLWNhY2hlIGlzb2xhdGlvbiB0byBjcHUgd29ya2xvYWRz
IHJ1bm5pbmcKPiBjb25jdXJyZW50bHkgd2l0aCBncHUgd29ya2xvYWRzLCB0aGUgZ3B1IGFsbG9j
YXRpb24gb2YgY2FjaGUgbGluZXMgbmVlZHMKPiB0byBiZSByZXN0cmljdGVkIHRvIGNlcnRhaW4g
d2F5cy4gQ3VycmVudGx5IEdQVSBoYXJkd2FyZSBzdXBwb3J0cyBmb3VyCj4gY2xhc3Mtb2Ytc2Vy
dmljZShDTE9TKSBsZXZlbHMgYW5kIHRoZXJlIGlzIGFuIGFzc29jaWF0ZWQgd2F5LW1hc2sgZm9y
Cj4gZWFjaCBDTE9TLgo+IAo+IEhhcmR3YXJlIHN1cHBvcnRzIHJlYWRpbmcgc3VwcG9ydGVkIHdh
eS1tYXNrIGNvbmZpZ3VyYXRpb24gZm9yIEdQVSB1c2luZwo+IGEgYmlvcyBwY29kZSBpbnRlcmZh
Y2UuIFRoZSBzdXBwb3J0ZWQgd2F5LW1hc2tzIGFuZCB0aGUgb25lIGN1cnJlbnRseQo+IGFjdGl2
ZSBpcyBjb21tdW5pY2F0ZWQgdG8gdXNlcnNwYWNlIHZpYSBhIHN5c2ZzIGZpbGUtLWNsb3NjdHJs
LiBBZG1pbiB1c2VyCj4gY2FuIHRoZW4gc2VsZWN0IGEgbmV3IG1hc2sgYnkgd3JpdGluZyB0aGUg
bWFzayB2YWx1ZSB0byB0aGUgZmlsZS4KPiAKPiBOb3RlIG9mIENhdXRpb246IFJlc3RyaWN0aW5n
IGNhY2hlIHdheXMgdXNpbmcgdGhpcyBtZWNoYW5pc20gcHJlc2VudHMgYQo+IGxhcmdlciBhdHRh
Y2sgc3VyZmFjZSBmb3Igc2lkZS1jaGFubmVsIGF0dGFja3MuCgpJIHdvbmRlciBpZiB0aGlzIGlz
IGVub3VnaCB0byBqdXN0aWZ5IHNvbWUgZnVydGhlciBwcm90ZWN0aW9uIGJlZm9yZQplbmFibGlu
Zz8KCj4gRXhhbXBsZSB1c2FnZToKPiBUaGUgYWN0aXZlIHdheS1tYXNrIGlzIGhpZ2hsaWdodGVk
IHdpdGhpbiBzcXVhcmUgYnJhY2tldHMuCj4gPiBjYXQgL3N5cy9jbGFzcy9kcm0vY2FyZDAvY2xv
c2N0cmwKPiBbMHhmZmZmXSAweGZmMDAgMHhjMDAwIDB4ODAwMAoKSG93IGFib3V0IHR3byBmaWxl
cyBmb3IgZWFzaWVyIHNjcmlwdGluZyBpbnRlcmZhY2U/Cgovc3lzL2NsYXNzL2RybS9jYXJkMC9s
bGNfY2xvcwovc3lzL2NsYXNzL2RybS9jYXJkMC9sbGNfY2xvc19tb2RlcwoKUmVnYXJkcywgSm9v
bmFzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
