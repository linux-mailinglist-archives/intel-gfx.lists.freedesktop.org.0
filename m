Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 178BC3C5BBD
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 14:18:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F73989C63;
	Mon, 12 Jul 2021 12:17:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6676A89C49;
 Mon, 12 Jul 2021 12:17:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10042"; a="209943870"
X-IronPort-AV: E=Sophos;i="5.84,232,1620716400"; d="scan'208";a="209943870"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 05:17:44 -0700
X-IronPort-AV: E=Sophos;i="5.84,232,1620716400"; d="scan'208";a="648236697"
Received: from aaroncar-mobl2.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.240.41])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 05:17:42 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jul 2021 13:17:19 +0100
Message-Id: <20210712121719.891536-9-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210712121719.891536-1-tvrtko.ursulin@linux.intel.com>
References: <20210712121719.891536-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 8/8] drm: Document fdinfo format specification
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
Cc: David M Nieto <David.Nieto@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClByb3Bvc2Fs
IHRvIHN0YW5kYXJkaXNlIHRoZSBmZGluZm8gdGV4dCBmb3JtYXQgYXMgb3B0aW9uYWxseSBvdXRw
dXQgYnkgRFJNCmRyaXZlcnMuCgpJZGVhIGlzIHRoYXQgYSBzaW1wbGUgYnV0LCB3ZWxsIGRlZmlu
ZWQsIHNwZWMgd2lsbCBlbmFibGUgZ2VuZXJpYwp1c2Vyc3BhY2UgdG9vbHMgdG8gYmUgd3JpdHRl
biB3aGlsZSBhdCB0aGUgc2FtZSB0aW1lIGF2b2lkaW5nIGEgbW9yZSBoZWF2eQpoYW5kZWQgYXBw
cm9hY2ggb2YgYWRkaW5nIGEgbWlkLWxheWVyIHRvIERSTS4KCmk5MTUgaW1wbGVtZW50cyBhIHN1
YnNldCBvZiB0aGUgc3BlYywgZXZlcnl0aGluZyBhcGFydCBmcm9tIHRoZSBtZW1vcnkKc3RhdHMg
Y3VycmVudGx5LCBhbmQgYSBtYXRjaGluZyBpbnRlbF9ncHVfdG9wIHRvb2wgZXhpc3RzLgoKT3Bl
biBpcyB0byBzZWUgaWYgQU1EIGNhbiBtaWdyYXRlIHRvIHVzaW5nIHRoZSBwcm9wb3NlZCBHUFUg
dXRpbGlzYXRpb24Ka2V5LXZhbHVlIHBhaXJzLCBvciBpZiB0aGV5IGFyZSBub3Qgd29ya2FibGUg
dG8gc2VlIHdoZXRoZXIgdG8gZ28KdmVuZG9yIHNwZWNpZmljLCBvciBpZiBhIHN0YW5kYXJkaXNl
ZCAgYWx0ZXJuYXRpdmUgY2FuIGJlIGZvdW5kIHdoaWNoIGlzCndvcmthYmxlIGZvciBib3RoIGRy
aXZlcnMuCgpTYW1lIGZvciB0aGUgbWVtb3J5IHV0aWxpc2F0aW9uIGtleS12YWx1ZSBwYWlycyBw
cm9wb3NhbC4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+CkNjOiBEYXZpZCBNIE5pZXRvIDxEYXZpZC5OaWV0b0BhbWQuY29tPgpDYzogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsQGZmd2xsLmNoPgotLS0KIERvY3VtZW50YXRpb24vZ3B1L2RybS11c2FnZS1zdGF0
cy5yc3QgfCA5OSArKysrKysrKysrKysrKysrKysrKysrKysrKysKIERvY3VtZW50YXRpb24vZ3B1
L2k5MTUucnN0ICAgICAgICAgICAgfCAyNyArKysrKysrKwogRG9jdW1lbnRhdGlvbi9ncHUvaW5k
ZXgucnN0ICAgICAgICAgICB8ICAxICsKIDMgZmlsZXMgY2hhbmdlZCwgMTI3IGluc2VydGlvbnMo
KykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2dwdS9kcm0tdXNhZ2Utc3RhdHMu
cnN0CgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9ncHUvZHJtLXVzYWdlLXN0YXRzLnJzdCBi
L0RvY3VtZW50YXRpb24vZ3B1L2RybS11c2FnZS1zdGF0cy5yc3QKbmV3IGZpbGUgbW9kZSAxMDA2
NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5kMzVlNGEwMWJjNWIKLS0tIC9kZXYvbnVsbAorKysgYi9E
b2N1bWVudGF0aW9uL2dwdS9kcm0tdXNhZ2Utc3RhdHMucnN0CkBAIC0wLDAgKzEsOTkgQEAKKy4u
IF9kcm0tY2xpZW50LXVzYWdlLXN0YXRzOgorCis9PT09PT09PT09PT09PT09PT09PT09CitEUk0g
Y2xpZW50IHVzYWdlIHN0YXRzCis9PT09PT09PT09PT09PT09PT09PT09CisKK0RSTSBkcml2ZXJz
IGNhbiBjaG9vc2UgdG8gZXhwb3J0IHBhcnRseSBzdGFuZGFyZGlzZWQgdGV4dCBvdXRwdXQgdmlh
IHRoZQorYGZvcHMtPnNob3dfZmRpbmZvKClgIGFzIHBhcnQgb2YgdGhlIGRyaXZlciBzcGVjaWZp
YyBmaWxlIG9wZXJhdGlvbnMgcmVnaXN0ZXJlZAoraW4gdGhlIGBzdHJ1Y3QgZHJtX2RyaXZlcmAg
b2JqZWN0IHJlZ2lzdGVyZWQgd2l0aCB0aGUgRFJNIGNvcmUuCisKK09uZSBwdXJwb3NlIG9mIHRo
aXMgb3V0cHV0IGlzIHRvIGVuYWJsZSB3cml0aW5nIGFzIGdlbmVyaWMgYXMgcHJhY3RpY2FseQor
ZmVhc2libGUgYHRvcCgxKWAgbGlrZSB1c2Vyc3BhY2UgbW9uaXRvcmluZyB0b29scy4KKworR2l2
ZW4gdGhlIGRpZmZlcmVuY2VzIGJldHdlZW4gdmFyaW91cyBEUk0gZHJpdmVycyB0aGUgc3BlY2lm
aWNhdGlvbiBvZiB0aGUKK291dHB1dCBpcyBzcGxpdCBiZXR3ZWVuIGNvbW1vbiBhbmQgZHJpdmVy
IHNwZWNpZmljIHBhcnRzLiBIYXZpbmcgc2FpZCB0aGF0LAord2hlcmV2ZXIgcG9zc2libGUgZWZm
b3J0IHNob3VsZCBzdGlsbCBiZSBtYWRlIHRvIHN0YW5kYXJkaXNlIGFzIG11Y2ggYXMKK3Bvc3Np
YmxlLgorCitGaWxlIGZvcm1hdCBzcGVjaWZpY2F0aW9uCis9PT09PT09PT09PT09PT09PT09PT09
PT09CisKKy0gRmlsZSBzaGFsbCBjb250YWluIG9uZSBrZXkgdmFsdWUgcGFpciBwZXIgb25lIGxp
bmUgb2YgdGV4dC4KKy0gQ29sb24gY2hhcmFjdGVyIChgOmApIG11c3QgYmUgdXNlZCB0byBkZWxp
bWl0IGtleXMgYW5kIHZhbHVlcy4KKy0gQWxsIGtleXMgc2hhbGwgYmUgcHJlZml4ZWQgd2l0aCBg
ZHJtLWAuCistIFdoaXRlc3BhY2UgYmV0d2VlbiB0aGUgZGVsaW1pdGVyIGFuZCBmaXJzdCBub24t
d2hpdGVzcGFjZSBjaGFyYWN0ZXIgc2hhbGwgYmUKKyAgaWdub3JlZCB3aGVuIHBhcnNpbmcuCist
IE5laXRoZXIga2V5cyBvciB2YWx1ZXMgYXJlIGFsbG93ZWQgdG8gY29udGFpbiB3aGl0ZXNwYWNl
IGNoYXJhY3RlcnMuCistIE51bWVyaWNhbCBrZXkgdmFsdWUgcGFpcnMgY2FuIGVuZCB3aXRoIG9w
dGlvbmFsIHVuaXQgc3RyaW5nLgorLSBEYXRhIHR5cGUgb2YgdGhlIHZhbHVlIGlzIGZpeGVkIGFz
IGRlZmluZWQgaW4gdGhlIHNwZWNpZmljYXRpb24uCisKK0tleSB0eXBlcworLS0tLS0tLS0tCisK
KzEuIE1hbmRhdG9yeSwgZnVsbHkgc3RhbmRhcmRpc2VkLgorMi4gT3B0aW9uYWwsIGZ1bGx5IHN0
YW5kYXJkaXNlZC4KKzMuIERyaXZlciBzcGVjaWZpYy4KKworTWFuZGF0b3J5IGZ1bGx5IHN0YW5k
YXJkaXNlZCBrZXlzCistLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KKworLSBkcm0t
ZHJpdmVyOiA8c3RyaW5nPgorCitTdHJpbmcgc2hhbGwgY29udGFpbiBhIGZpeGVkIHN0cmluZyB1
bmlxdWVseSBpZGVudGlmaWVkIHRoZSBkcml2ZXIgaGFuZGxpbmcKK3RoZSBkZXZpY2UgaW4gcXVl
c3Rpb24uIEZvciBleGFtcGxlIG5hbWUgb2YgdGhlIHJlc3BlY3RpdmUga2VybmVsIG1vZHVsZS4K
KworT3B0aW9uYWwgZnVsbHkgc3RhbmRhcmRpc2VkIGtleXMKKy0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCisKKy0gZHJtLXBkZXY6IDxhYWFhOmJiLmNjLmQ+CisKK0ZvciBQQ0kgZGV2
aWNlcyB0aGlzIHNob3VsZCBjb250YWluIHRoZSBQQ0kgc2xvdCBhZGRyZXNzIG9mIHRoZSBkZXZp
Y2UgaW4KK3F1ZXN0aW9uLgorCistIGRybS1jbGllbnQtaWQ6IDx1aW50PgorCitVbmlxdWUgdmFs
dWUgcmVsYXRpbmcgdG8gdGhlIG9wZW4gRFJNIGZpbGUgZGVzY3JpcHRvciB1c2VkIHRvIGRpc3Rp
bmd1aXNoCitkdXBsaWNhdGVkIGFuZCBzaGFyZWQgZmlsZSBkZXNjcmlwdG9ycy4gQ29uY2VwdHVh
bGx5IHRoZSB2YWx1ZSBzaG91bGQgbWFwIDE6MQordG8gdGhlIGluIGtlcm5lbCByZXByZXNlbnRh
dGlvbiBvZiBgc3RydWN0IGRybV9maWxlYCBpbnN0YW5jZXMuCisKK1VuaXF1ZW5lc3Mgb2YgdGhl
IHZhbHVlIHNoYWxsIGJlIGVpdGhlciBnbG9iYWxseSB1bmlxdWUsIG9yIHVuaXF1ZSB3aXRoaW4g
dGhlCitzY29wZSBvZiBlYWNoIGRldmljZSwgaW4gd2hpY2ggY2FzZSBgZHJtLXBkZXZgIHNoYWxs
IGJlIHByZXNlbnQgYXMgd2VsbC4KKworVXNlcnNwYWNlIHNob3VsZCBtYWtlIHN1cmUgdG8gbm90
IGRvdWJsZSBhY2NvdW50IGFueSB1c2FnZSBzdGF0aXN0aWNzIGJ5IHVzaW5nCit0aGUgYWJvdmUg
ZGVzY3JpYmVkIGNyaXRlcmlhIGluIG9yZGVyIHRvIGFzc29jaWF0ZSBkYXRhIHRvIGluZGl2aWR1
YWwgY2xpZW50cy4KKworLSBkcm0tY2xpZW50LW5hbWU6IDxzdHJpbmc+CisKK1Byb2Nlc3MgbmFt
ZSBvZiB0aGUgdGhyZWFkIHdoaWNoIG9wZW5lZCB0aGUgZmlsZS4KKworLSBkcm0tY2xpZW50LXBp
ZDogPHVpbnQ+CisKK1BJRCBvZiB0aGUgdGhyZWFkIHdoaWNoIG9wZW5lZCB0aGUgZmlsZS4KKwor
LSBkcm0tZW5naW5lLTxzdHI+OiA8dWludD4gbnMKKworR1BVcyB1c3VhbGx5IGNvbnRhaW4gbXVs
dGlwbGUgZXhlY3V0aW9uIGVuZ2luZXMuIEVhY2ggc2hhbGwgYmUgZ2l2ZW4gYSBzdGFibGUKK2Fu
ZCB1bmlxdWUgc3RyaW5nLCB3aXRoIHBvc3NpYmxlIHZhbHVlcyBkb2N1bWVudGVkIGluIHRoZSBk
cml2ZXIgc3BlY2lmaWMKK3NwZWNpZmljYXRpb24gZG9jdW1lbnQuCisKK1ZhbHVlIHNoYWxsIGJl
IGEgbW9ub3RvbmljYWxseSBpbmNyZWFzaW5nIG51bWJlciBvZiBuYW5vc2Vjb25kcyB0aGUgcmVz
cGVjdGl2ZQorR1BVIGVuZ2luZSBzcGVudCBleGVjdXRpbmcgd29ya2xvYWRzIGJlbG9uZ2luZyB0
byB0aGlzIGNsaWVudC4KKworLSBkcm0tbWVtb3J5LTxzdHI+OiA8dWludD4gW0tpQnxNaUJdCisK
K0VhY2ggcG9zc2libGUgbWVtb3J5IHR5cGUgd2hpY2ggY2FuIGJlIHVzZWQgdG8gc3RvcmUgYnVm
ZmVyIG9iamVjdHMgYnkgdGhlCitHUFUgaW4gcXVlc3Rpb24gc2hhbGwgYmUgZ2l2ZW4gYSBzdGFi
bGUgYW5kIHVuaXF1ZSBuYW1lIHRvIGJlIHJldHVybmVkIGFzIHRoZQorc3RyaW5nIGhlcmUuCisK
K1ZhbHVlIHNoYWxsIHJlZmxlY3QgdGhlIGFtb3VudCBvZiBzdG9yYWdlIGN1cnJlbnRseSBjb25z
dW1lZCBieSB0aGUgYnVmZmVyCitvYmplY3QgYmVsb25nIHRvIHRoaXMgY2xpZW50LCBpbiB0aGUg
cmVzcGVjdGl2ZSBtZW1vcnkgcmVnaW9uLgorCitEZWZhdWx0IHVuaXQgc2hhbGwgYmUgYnl0ZXMg
d2l0aCBvcHRpb25hbCB1bml0IHNwZWNpZmllcnMgb2YgJ0tpQicgb3IgJ01pQicKK2luZGljYXRp
bmcga2liaS0gb3IgbWViaS1ieXRlcy4KKworPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQorRHJpdmVyIHNwZWNpZmljIGltcGxlbWVudGF0aW9ucworPT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQorCis6cmVmOmBpOTE1LXVzYWdlLXN0YXRzYApkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9ncHUvaTkxNS5yc3QgYi9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAppbmRleCAy
MDRlYmRhYWRiNDUuLjJiZmQyNDQxNTc2ZSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUv
aTkxNS5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKQEAgLTcwMSwzICs3MDEs
MzAgQEAgVGhlIHN0eWxlIGd1aWRlIGZvciBgYGk5MTVfcmVnLmhgYC4KIAogLi4ga2VybmVsLWRv
Yzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKICAgIDpkb2M6IFRoZSBpOTE1IHJl
Z2lzdGVyIG1hY3JvIGRlZmluaXRpb24gc3R5bGUgZ3VpZGUKKworLi4gX2k5MTUtdXNhZ2Utc3Rh
dHM6CisKK2k5MTUgRFJNIGNsaWVudCB1c2FnZSBzdGF0cyBpbXBsZW1lbnRhdGlvbgorPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CisKK1RoZSBkcm0vaTkxNSBkcml2
ZXJzIGltcGxlbWVudHMgdGhlIERSTSBjbGllbnQgdXNhZ2Ugc3RhdHMgc3BlY2lmaWNhdGlvbiBh
cworZG9jdW1lbnRlZCBpbiA6cmVmOmBkcm0tY2xpZW50LXVzYWdlLXN0YXRzYC4KKworRXhhbXBs
ZSBvZiB0aGUgb3V0cHV0IHNob3dpbmcgdGhlIGltcGxlbWVudGVkIGtleSB2YWx1ZSBwYWlycyBh
bmQgZW50aXJldHkgb2YKK3RoZSBjdXJyZW5seSBwb3NzaWJsZSBmb3JtYXQgb3B0aW9uczoKKwor
OjoKKworICAgICAgcG9zOiAgICAwCisgICAgICBmbGFnczogIDAxMDAwMDIKKyAgICAgIG1udF9p
ZDogMjEKKyAgICAgIGRybS1kcml2ZXI6IGk5MTUKKyAgICAgIGRybS1wZGV2OiAgIDAwMDA6MDA6
MDIuMAorICAgICAgZHJtLWNsaWVudC1pZDogICAgICA3CisgICAgICBkcm0tZW5naW5lLXJlbmRl
cjogIDkyODg4NjQ3MjMgbnMKKyAgICAgIGRybS1lbmdpbmUtY29weTogICAgMjAzNTA3MTEwOCBu
cworICAgICAgZHJtLWVuZ2luZS12aWRlbzogICAwIG5zCisgICAgICBkcm0tZW5naW5lLXZpZGVv
LWVuaGFuY2U6ICAgMCBucworCitQb3NzaWJsZSBgZHJtLWVuZ2luZS1gIGtleSBuYW1lcyBhcmU6
IGByZW5kZXJgLCBgY29weWAsIGB2aWRlb2AgYW5kCitgdmlkZW8tZW5oYW5jZWAuCmRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2dwdS9pbmRleC5yc3QgYi9Eb2N1bWVudGF0aW9uL2dwdS9pbmRl
eC5yc3QKaW5kZXggYjljMTIxNGQ4ZjIzLi5iOTlkZWRlOWE1YjEgMTAwNjQ0Ci0tLSBhL0RvY3Vt
ZW50YXRpb24vZ3B1L2luZGV4LnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2dwdS9pbmRleC5yc3QK
QEAgLTEwLDYgKzEwLDcgQEAgTGludXggR1BVIERyaXZlciBEZXZlbG9wZXIncyBHdWlkZQogICAg
ZHJtLWttcwogICAgZHJtLWttcy1oZWxwZXJzCiAgICBkcm0tdWFwaQorICAgZHJtLXVzYWdlLXN0
YXRzCiAgICBkcml2ZXItdWFwaQogICAgZHJtLWNsaWVudAogICAgZHJpdmVycwotLSAKMi4zMC4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
