Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D19732014B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 10:27:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27F89891AC;
	Thu, 16 May 2019 08:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CBE7891AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 08:27:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 01:27:08 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 16 May 2019 01:27:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Harish Chegondi <harish.chegondi@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <55619dbe3b3399292d86420725a0138ced488cca.1557985315.git.harish.chegondi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1557985315.git.harish.chegondi@intel.com>
 <55619dbe3b3399292d86420725a0138ced488cca.1557985315.git.harish.chegondi@intel.com>
Date: Thu, 16 May 2019 11:30:29 +0300
Message-ID: <87o942ajiy.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: skip the second CRC even for
 GEN 7 GPUs
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxNSBNYXkgMjAxOSwgSGFyaXNoIENoZWdvbmRpIDxoYXJpc2guY2hlZ29uZGlAaW50
ZWwuY29tPiB3cm90ZToKPiBkaXNwbGF5X3BpcGVfY3JjX2lycV9oYW5kbGVyKCkgc2tpcHMgdGhl
IGZpcnN0IENSQyBmb3IgYWxsIEdQVXMgYW5kIHRoZQo+IHNlY29uZCBDUkMgZm9yIEdFTjgrIEdQ
VXMuIFRoZSBzZWNvbmQgQ1JDIGlzIGludmFsaWQgZXZlbiBmb3IgQllUIHdoaWNoCj4gaXMgYSBH
RU43IEdQVS4gU28sIHNraXAgdGhlIHNlY29uZCBDUkMgZXZlbiBmb3IgR0VONyBHUFVzLgo+Cj4g
Q2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gQ2M6IFRvbWkgU2FydmVs
YSA8dG9taS5wLnNhcnZlbGFAaW50ZWwuY29tPgo+IENjOiBQZXRyaSBMYXR2YWxhIDxwZXRyaS5s
YXR2YWxhQGludGVsLmNvbT4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0
QGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBIYXJpc2ggQ2hlZ29uZGkgPGhhcmlz
aC5jaGVnb25kaUBpbnRlbC5jb20+Cj4gUmVmZXJlbmNlczogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTkxCgpzL1JlZmVyZW5jZXM6L0J1Z3ppbGxhOi8K
CkFja2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKCj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYwo+IGluZGV4IDIzMzIxMWZkZTBlYS4uMzgwOWU5ZjdmYWUyIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jCj4gQEAgLTE3NzUsMTEgKzE3NzUsMTEgQEAgc3RhdGljIHZvaWQgZGlzcGxh
eV9waXBlX2NyY19pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
Cj4gIAkgKiBib25rZXJzLiBTbyBsZXQncyBqdXN0IHdhaXQgZm9yIHRoZSBuZXh0IHZibGFuayBh
bmQgcmVhZAo+ICAJICogb3V0IHRoZSBidWdneSByZXN1bHQuCj4gIAkgKgo+IC0JICogT24gR0VO
OCsgc29tZXRpbWVzIHRoZSBzZWNvbmQgQ1JDIGlzIGJvbmtlcnMgYXMgd2VsbCwgc28KPiArCSAq
IE9uIEdFTjcrIHNvbWV0aW1lcyB0aGUgc2Vjb25kIENSQyBpcyBib25rZXJzIGFzIHdlbGwsIHNv
Cj4gIAkgKiBkb24ndCB0cnVzdCB0aGF0IG9uZSBlaXRoZXIuCj4gIAkgKi8KPiAgCWlmIChwaXBl
X2NyYy0+c2tpcHBlZCA8PSAwIHx8Cj4gLQkgICAgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOCAm
JiBwaXBlX2NyYy0+c2tpcHBlZCA9PSAxKSkgewo+ICsJICAgIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDcgJiYgcGlwZV9jcmMtPnNraXBwZWQgPT0gMSkpIHsKPiAgCQlwaXBlX2NyYy0+c2tpcHBl
ZCsrOwo+ICAJCXNwaW5fdW5sb2NrKCZwaXBlX2NyYy0+bG9jayk7Cj4gIAkJcmV0dXJuOwoKLS0g
CkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
