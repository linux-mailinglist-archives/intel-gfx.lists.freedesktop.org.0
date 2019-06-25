Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3CE5233B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 08:01:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B48B489F38;
	Tue, 25 Jun 2019 06:01:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8EE189F35;
 Tue, 25 Jun 2019 06:01:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 23:01:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,413,1557212400"; d="scan'208";a="163535723"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by fmsmga007.fm.intel.com with ESMTP; 24 Jun 2019 23:01:35 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.151) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 25 Jun 2019 07:01:34 +0100
Date: Tue, 25 Jun 2019 09:01:32 +0300
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20190625060132.rsidgloshp7oz4ud@ahiler-desk1.fi.intel.com>
References: <20181016222341.1537-1-drawat@vmware.com>
 <20181016222341.1537-5-drawat@vmware.com>
 <CAKMK7uEUN_-cdkMxvO1VwhD7YhGTNgd56y+Z8Pjv53Ri7wMSNw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uEUN_-cdkMxvO1VwhD7YhGTNgd56y+Z8Pjv53Ri7wMSNw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
User-Agent: NeoMutt/20180716
X-Originating-IP: [10.237.68.151]
Subject: Re: [Intel-gfx] [PATCH i-g-t 5/5] tests/kms_selftest: Integrate
 kernel selftest test-drm_modeset
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
Cc: IGT development <igt-dev@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, Deepak Rawat <drawat@vmware.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgMDM6MjA6MDJQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBUdWUsIE9jdCAxNiwgMjAxOCBhdCAwMzoyMzo0MVBNIC0wNzAwLCBEZWVwYWsg
UmF3YXQgd3JvdGU6Cj4gPiBDYWxsIGtlcm5lbCBzZWxmdGVzdCBtb2R1bGUgdGVzdC1kcm1fbW9k
ZXNldCBmb3IgdGVzdGluZyBLTVMuCj4gPgo+ID4gdjI6Cj4gPiAtIEFkZCB0ZXN0IGFscGhhYmV0
aWNhbGx5Lgo+ID4gLSBBZGQgdGVzdCB0byBtZXNvbiBidWlsZC4KPiA+Cj4gPiB2MzogUmVuYW1l
IHRvIGttc19zZWxmdGVzdC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEZWVwYWsgUmF3YXQgPGRy
YXdhdEB2bXdhcmUuY29tPgo+IAo+IEp1c3QgcmVhbGl6ZWQgdGhhdCB0aGlzIG5ldmVyIGxhbmRl
ZCAuLi4gYW55IHJlYXNvbnM/IFdvdWxkIGJlIG5pY2UgdG8gZ2V0Cj4gdGhpcyBoYW5kbGVkLgo+
IAo+IFBldHJpL0FyZWs/Cj4gCj4gQ2hlZXJzLCBEYW5pZWwKCldoYXQgZG8geW91IG1lYW4gYnkg
InRoaXMgbmV2ZXIgbGFuZGVkIj8KCmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aWd0LWdwdS10b29scy9jb21taXQvNzc2NmIxZTIzNDhiCgpjb21taXQgNzc2NmIxZTIzNDhiMzJj
YzhlZDU4YTk3MmM2ZmQ1M2IyMDI3OTU0OQpBdXRob3I6ICAgICBEZWVwYWsgUmF3YXQgPGRyYXdh
dEB2bXdhcmUuY29tPgpBdXRob3JEYXRlOiBUdWUgT2N0IDE2IDE1OjIzOjQxIDIwMTggLTA3MDAK
Q29tbWl0OiAgICAgRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ29tbWl0
RGF0ZTogV2VkIE9jdCAxNyAwOTo0MTowNyAyMDE4ICswMjAwCgp0ZXN0cy9rbXNfc2VsZnRlc3Q6
IEludGVncmF0ZSBrZXJuZWwgc2VsZnRlc3QgdGVzdC1kcm1fbW9kZXNldAoKLS0gCkNoZWVycywK
QXJlawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
