Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8630E298EF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 15:29:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D14726E0DE;
	Fri, 24 May 2019 13:29:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD396E0DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 13:29:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 06:29:26 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 24 May 2019 06:29:24 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4ODTNlt028655; Fri, 24 May 2019 14:29:24 +0100
To: "Ye, Tony" <tony.ye@intel.com>, "Chris Wilson" <chris@chris-wilson.co.uk>, 
 intel-gfx@lists.freedesktop.org, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>
References: <20190519215043.10712-1-michal.wajdeczko@intel.com>
 <155834492612.6928.8334805033823811349@skylake-alporthouse-com>
 <op.z1227bxfxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <155834908381.6928.7399827371611888241@skylake-alporthouse-com>
 <op.z128ecw7xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <16ec65cf-f64a-497c-768a-451384c21d36@intel.com>
 <op.z14zw2dzxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <e49543a1-fce9-25a8-e9cc-08899fbb20f7@intel.com>
 <155870345816.2664.10432704458968406046@jlahtine-desk.ger.corp.intel.com>
Date: Fri, 24 May 2019 15:29:22 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z2aqe8gexaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <155870345816.2664.10432704458968406046@jlahtine-desk.ger.corp.intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/huc: Don't try to check HuC
 status if it's not loaded
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNCBNYXkgMjAxOSAxNToxMDo1OCArMDIwMCwgSm9vbmFzIExhaHRpbmVuICAKPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgoKPiBRdW90aW5nIFllLCBUb255
ICgyMDE5LTA1LTIyIDE0OjMyOjQxKQo+PiAgRnJvbSBVTUQgcGVyc3BlY3RpdmUsIHdoZW4gSHVD
IGlzIG5vdCB3b3JraW5nIGFzIGV4cGVjdGVkLCB1c3VhbGx5IHdlCj4+IGxvb2sgaW50byB0aGUg
a2VybmVsIGxvZyBhbmQgaTkxNV9odWNfbG9hZF9zdGF0dXMgZGVidWdmcyB0byBmaW5kIG91dAo+
PiB3aHkgaXQncyBub3Qgd29ya2luZy4gSXQgd2lsbCBiZSBoZWxwZnVsIHRvIGtub3cgdGhlIHJl
YXNvbiBvZiB0aGUKPj4gZmFpbHVyZSBmcm9tIHRoZSBlcnJvciBjb2RlLiBUaGUgdHlwaWNhbGx5
IGZhaWx1cmVzIHdlIGVuY291bnRlcmVkIGFyZQo+PiAiSHVDIEZXIG5vdCBsb2FkZWQgKEZXIG5v
dCBidWlsdCBpbnRvIGluaXRyYW1mcykiIGFuZCAiSHVDIEZXCj4+IGF1dGhlbnRpY2F0aW9uIGZh
aWxlZCIuCj4+Cj4+IEFuZCBpdCBsb29rcyBjbGVhcmVyIHRvIG1lIGlmIHdlIGNhbiBkZWZpbmUg
MCBhcyAiZGlzYWJsZWQgYnkgdXNlciIgdG8KPj4gZGlzdGluZ3Vpc2ggaXQgZnJvbSBvdGhlciBl
cnJvcnMgbGlrZSBFTk9ERVYsIEVOT1BLRyBhbmQgIm5vdAo+PiBhdXRoZW50aWNhdGVkIi4KPgo+
IFN1Z2dlc3Rpb24gYnkgQ2hyaXMgZm9yIDAvMSBmb3IgaHVjX3N0YXR1cyBtYWtlcyBzZW5zZSB0
byBtZSB0byByZWZsZWN0ICAKPiBpZgo+IEh1QyBhdXRoZW50aWNhdGlvbiB3YXMgc3VjY2VzZnVs
IG9yIG5vdC4gTW9zdGx5IGJlY2F1c2UgdGhlIG5hbWUgb2YgdGhlCj4gZGVidWdmcyBhbmQgZnVu
YyBpcyBodWNfc3RhdHVzLiBJdCBhbHNvIG5pY2VseSBtYXBzIHRvIGEgcmVnaXN0ZXIuCgpCdXQg
dGhpcyBlbnRyeSBpcyBub3QgbGltaXRlZCB0byAiaHVjIGF1dGhlbnRpY2F0aW9uIHN0YXR1cyIs
IGFzIHRoZW4Kd2Ugc2hvdWxkIGV2ZW4gbm90IHRyeSB0byBpbnRyb2R1Y2UgbmV3IGVycm9ycywg
YnV0IHJldHVybiAwIHRvIG1hdGNoCnJlZ2lzdGVyLgoKT24gb3RoZXIgaGFuZCwgdW5kZXIgbm9y
bWFsIGNvbmRpdGlvbnMsIHdlIGV4cGVjdCBIdUMgdG8gYmUgYXV0aGVudGljYXRlZAphbmQgcnVu
bmluZyBvciBleHBsaWNpdGx5IGRpc2FibGVkIGJ5IHRoZSB1c2VyLiBPdGhlciBjYXNlcyBhcmUg
dW5leHBlY3RlZAplcnJvciBjb25kaXRpb25zLiBJIHdvdWxkIGV4cGVjdCBmcm9tIHRoZSBBQkkg
dGhhdCB0aGVzZSBlcnJvciBjb25kaXRpb25zCndpbGwgYmUgcmVwb3J0ZWQgYXMgZXJyb3JzLiBG
b3IgbWUgQUJJIGlzIHNvbWV0aGluZyBtb3JlIHRoYW4gcmVnIHZhbHVlLgoKPgo+IE9uZSBjb3Vs
ZCBoYXZlIGh1Y19lbmFibGVkIHdoaWNoIHdvdWxkIHRoZW4gY29sbGFwc2UgdG8gZWFzeSAwLzEs
IGJ1dCAgCj4gdGhhdCdkCj4gYmUgYml0IHJlZHVuZGFudC4KCnRoYXQncyB3aHkgd2Ugd2FudGVk
IHRvIHByb3ZpZGUgbW9yZSBkZXRhaWxzIGluIG5ldyBlcnJvciBjb2RlcyBmb3IKZXhpc3Rpbmcg
R0VUUEFSQU0sIHdpdGhvdXQgYnJlYWtpbmcgY3VycmVudCB1c2FnZXMuCgpNaWNoYWwKCj4KPiBS
ZWdhcmRzLCBKb29uYXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
