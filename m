Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CB513131
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 17:32:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 388036E7F7;
	Fri,  3 May 2019 15:32:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF39E6E7F6
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 15:31:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 08:31:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,426,1549958400"; d="scan'208";a="167379383"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga004.fm.intel.com with ESMTP; 03 May 2019 08:31:53 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 3 May 2019 08:31:53 -0700
Received: from bgsmsx154.gar.corp.intel.com (10.224.48.47) by
 FMSMSX155.amr.corp.intel.com (10.18.116.71) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 3 May 2019 08:31:52 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.147]) by
 BGSMSX154.gar.corp.intel.com ([169.254.7.108]) with mapi id 14.03.0415.000;
 Fri, 3 May 2019 21:01:50 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915: Allow ICL pipe "HDR mode" when the
 cursor is visible
Thread-Index: AQHVASKBkCg0QHTukESVbRoa4bSvVKZZh73g
Date: Fri, 3 May 2019 15:31:49 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F81FECC9B@BGSMSX104.gar.corp.intel.com>
References: <20190502200607.14504-1-ville.syrjala@linux.intel.com>
 <20190502200607.14504-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20190502200607.14504-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjMxODYxOGItMjViYy00ZDcyLTllZWMtNTA2MGQxMTJkOGQxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoic2d3cXBjdHZzQnJ2OXMwbFFkWUNiVWJjQ0JSNW81eFZkSnd4ZHN6NVQyOHkreEdtQVF5SEdac3B4TE9TNFM1USJ9
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Allow ICL pipe "HDR mode"
 when the cursor is visible
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFZpbGxlIFN5cmphbGEgW21h
aWx0bzp2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbV0NCj5TZW50OiBGcmlkYXksIE1heSAz
LCAyMDE5IDE6MzYgQU0NCj5UbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPkNj
OiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IFNoYXJtYSwgU2hhc2hhbmsN
Cj48c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4NCj5TdWJqZWN0OiBbUEFUQ0ggMi8yXSBkcm0v
aTkxNTogQWxsb3cgSUNMIHBpcGUgIkhEUiBtb2RlIiB3aGVuIHRoZSBjdXJzb3IgaXMgdmlzaWJs
ZQ0KPg0KPkZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+DQo+VHVybnMgb3V0IHRoZSBjdXJzb3IgaXMgY29tcGF0aWJsZSB3aXRoIHRoZSBwaXBl
ICJIRFIgbW9kZSIuIEl0J3Mgb25seSB0aGUgYWN0dWFsIFNEUg0KPnBsYW5lcyB0aGF0IGdldCBl
bnRpcmVseSBieXBhc3NlZCBkdXJpbmcgYmxlbmRpbmcuIFNvIGxldCdzIGlnbm9yZSB0aGUgY3Vy
c29yIHdoZW4NCj5jaGVja2luZyBpZiB3ZSBoYXZlIGFueSBwbGFuZXMgYWN0aXZlIHRoYXQgYXJl
bid0IEhEUiBjb21wYXRpYmxlLiBUaGlzIGZpeGVzIHRoZQ0KPnJlZ3Jlc3Npb25zIGluIHRoZSBr
bXNfY3Vyc29yX2NyYyBhbmQga21zX3BsYW5lX2N1cnNvciB0ZXN0cy4NCg0KQ2hlY2tlZCBmb3Ig
ZGV0YWlscyBhcm91bmQgdGhpcyBpbiBzcGVjLCBjb3VsZG4ndCBnZXQgYW55dGhpbmcgc3BlY2lm
aWMgYXJvdW5kIGhvdyBjdXJzb3INCmJlaGF2ZXMgd3J0IEhEUl9NT0RFLiBCdXQgd2l0aCB0aGUg
dGVzdCByZXN1bHRzIGl0IGFwcGVhcnMgdGhhdCB0aGV5IGRvIGZvbGxvdyB0aGUgSERSDQpwcmVj
aXNpb24uIFdpdGggdGhpcyBvYnNlcnZhdGlvbiBhbmQgZGF0YSwgY2hhbmdlIGxvb2tzIG9rLg0K
DQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPkNj
OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPkNjOiBTaGFzaGFuayBTaGFy
bWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+DQo+QnVnemlsbGE6IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDU3OQ0KPkZpeGVzOiAwOWIyNTgxMmRi
MTAgKCJkcm0vaTkxNTogRW5hYmxlIHBpcGUgSERSIG1vZGUgb24gSUNMIGlmIG9ubHkgSERSIHBs
YW5lcyBhcmUNCj51c2VkIikNCj5TaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPi0tLQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kaXNwbGF5LmMgfCAzICsrLQ0KPiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pDQo+DQo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rpc3BsYXkuYw0KPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jDQo+
aW5kZXggMjgwNDJhMTYwODRkLi5jYzEyMDM5MDFlZjQgMTAwNjQ0DQo+LS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jDQo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGlzcGxheS5jDQo+QEAgLTg5MjcsNyArODkyNyw4IEBAIHN0YXRpYyB2b2lkIGJkd19z
ZXRfcGlwZW1pc2MoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4qY3J0Y19zdGF0ZSkN
Cj4gCQkJUElQRU1JU0NfWVVWNDIwX01PREVfRlVMTF9CTEVORDsNCj4NCj4gCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDExICYmDQo+LQkgICAgKGNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMg
JiB+aWNsX2hkcl9wbGFuZV9tYXNrKCkpID09IDApDQo+KwkgICAgKGNydGNfc3RhdGUtPmFjdGl2
ZV9wbGFuZXMgJiB+KGljbF9oZHJfcGxhbmVfbWFzaygpIHwNCj4rCQkJCQkgICBCSVQoUExBTkVf
Q1VSU09SKSkpID09IDApDQo+IAkJdmFsIHw9IFBJUEVNSVNDX0hEUl9NT0RFX1BSRUNJU0lPTjsN
Cj4NCj4gCUk5MTVfV1JJVEUoUElQRU1JU0MoY3J0Yy0+cGlwZSksIHZhbCk7DQo+LS0NCj4yLjIx
LjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
