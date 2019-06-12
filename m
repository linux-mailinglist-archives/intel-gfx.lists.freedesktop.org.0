Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F9B42EC1
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 20:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0730B8981B;
	Wed, 12 Jun 2019 18:34:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6740F8981B
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 18:34:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 11:34:26 -0700
X-ExtLoop1: 1
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga008.fm.intel.com with ESMTP; 12 Jun 2019 11:34:26 -0700
Date: Wed, 12 Jun 2019 11:36:12 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190612183611.GA5765@intel.com>
References: <20190423154901.15222-1-manasi.d.navare@intel.com>
 <20190423154901.15222-4-manasi.d.navare@intel.com>
 <db47851d-8ee7-0e01-c39f-44da70c1b1e1@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db47851d-8ee7-0e01-c39f-44da70c1b1e1@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/dp: Trigger modeset if
 master_crtc or slaves bitmask changes
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMTA6MzI6MDRBTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMjMtMDQtMjAxOSBvbSAxNzo0OSBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6
Cj4gPiBBZGQgdGhlIGNvbXBhcmlzb24gYmV0d2VlbiB0aGUgY3VycmVudCBzdGF0ZSBhbmQgbmV3
X2NydGNfc3RhdGUgZm9yCj4gPiBuZXdseSBhZGRlZCBtYXN0ZXJfY3J0YyBwb2ludGVyIGFuZCBz
bGF2ZSBiaXRtYXNrIHNvIHRoYXQKPiA+IGlmIGFueSBvZiB0aG9zZSBjaGFuZ2UgdGhlbiB0aGUg
Y3VyZXJudCBtYXN0ZXItc2xhdmUgbGlua3MgaGF2ZQo+ID4gY2hhbmdlZCBhbmQgd2UgbmVlZCB0
byByZWNvbmZpZ3VyZSB0aGUgdHJhbnNjb2RlciBwb3J0IHN5bmMgcmVnaXN0ZXIKPiA+IGFuZCBo
ZW5jZSB0cmlnZ2VyIGEgZnVsbCBtb2Rlc2V0Lgo+ID4KPiA+IFN1Z2dlc3RlZC1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogTWF0
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IE1h
bmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgfCA1ICsrKysrCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNw
bGF5LmMKPiA+IGluZGV4IDgxZThjYjlmZTIyMS4uNGJkMjNlNjFjNmZkIDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKPiA+IEBAIC0xMjUyNCw2ICsxMjUyNCwxMSBA
QCBpbnRlbF9waXBlX2NvbmZpZ19jb21wYXJlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKPiA+ICAJUElQRV9DT05GX0NIRUNLX0lORk9GUkFNRShzcGQpOwo+ID4gIAlQSVBFX0NP
TkZfQ0hFQ0tfSU5GT0ZSQU1FKGhkbWkpOwo+ID4gIAo+ID4gKwlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMSkgewo+ID4gKwkJUElQRV9DT05GX0NIRUNLX0kodHJhbnNfcG9ydF9zeW5jX3Ns
YXZlcyk7Cj4gPiArCQlQSVBFX0NPTkZfQ0hFQ0tfUChtYXN0ZXJfY3J0Yyk7Cj4gPiArCX0KPiA+
ICsKPiA+ICAjdW5kZWYgUElQRV9DT05GX0NIRUNLX1gKPiA+ICAjdW5kZWYgUElQRV9DT05GX0NI
RUNLX0kKPiA+ICAjdW5kZWYgUElQRV9DT05GX0NIRUNLX0JPT0wKPiAKPiBTaG91bGQgcHJvYmFi
bHkgYmUgbWVyZ2VkIHdpdGggcGF0Y2ggMS80CgpZZXMgaW4gbXkgbmV4dCByZXZpc2lvbiB3aWxs
IGNvbWJpbmUgdGhpcyBpbnRvIHBhdGNoIDEsIGFsc28gbmVlZCBhbm90aGVyIHBhdGNoIGZvcgpI
VyBzdGF0ZSByZWFkb3V0LCB0aGF0IHNob3VsZCBiZSBhIHNlcGFyYXRlIHBhdGNoIHRob3VnaCBy
aWdodD8KCk1hbmFzaQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
