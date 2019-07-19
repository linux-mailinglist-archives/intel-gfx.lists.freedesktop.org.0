Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE456EA4E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 19:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 296EB6E480;
	Fri, 19 Jul 2019 17:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25ED66E480
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 17:41:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 10:41:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; d="scan'208";a="168615753"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.10.91])
 by fmsmga008.fm.intel.com with ESMTP; 19 Jul 2019 10:41:40 -0700
Date: Fri, 19 Jul 2019 10:41:39 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190719174139.hyf3edzgy6lbjliv@ldmartin-desk1>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-17-lucas.demarchi@intel.com>
 <1518d0ab-38d6-c773-11b0-93490bcdc017@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1518d0ab-38d6-c773-11b0-93490bcdc017@linux.intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 16/22] drm/i915/tgl: Implement Wa_1604555607
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDc6MDM6MjZBTSArMDEwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4KPk9uIDEzLzA3LzIwMTkgMDI6MDksIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPj5G
cm9tOiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+Pgo+PkltcGxl
bWVudCBXYV8xNjA0NTU1NjA3IChzZXQgdGhlIERTIHBhaXJpbmcgdGltZXIgdG8gMTI4IGN5Y2xl
cykuCj4+RkZfTU9ERTIgaXMgcGFydCBvZiB0aGUgcmVnaXN0ZXIgc3RhdGUgY29udGV4dCwgdGhh
dCdzIHdoeSBpdCBpcwo+PmltcGxlbWVudGVkIGhlcmUuCj4+Cj4+U2lnbmVkLW9mZi1ieTogTWlj
aGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KPj5TaWduZWQtb2ZmLWJ5OiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPj4tLS0KPj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA4ICsrKysrKysrCj4+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgNSArKysrKwo+PiAg
MiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCj4+Cj4+ZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4+aW5kZXggZWQ5MjczOGEwNzM1Li4zNDdiYTE2
MzQ2ZDMgMTAwNjQ0Cj4+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYwo+PisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKPj5AQCAtNTg1LDYgKzU4NSwxNCBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRz
X2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+PiAgc3RhdGljIHZvaWQgdGds
X2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPj4g
IAkJCQkgICAgIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPj4gIHsKPj4rCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGVuZ2luZS0+aTkxNTsKPj4rCXUzMiB2YWw7Cj4+Kwo+
PisJLyogV2FfMTYwNDU1NTYwNzp0Z2wgKi8KPj4rCXZhbCA9IEk5MTVfUkVBRChGRl9NT0RFMik7
Cj4KPlN1Z2dlc3QgdG8gc3dpdGNoIHRvIHVuY29yZSBtbWlvIGFuZCBnZXQgaXQgZnJvbSB0aGUg
ZW5naW5lLgoKd2lsbCBkbyBmb3IgbmV4dCB2ZXJzaW9uCgp0aGFua3MKTHVjYXMgRGUgTWFyY2hp
Cgo+Cj5SZWdhcmRzLAo+Cj5UdnJ0a28KPgo+UC5TLiBSZW1vdmVkIE1pY2hlbCBmcm9tIENDLgo+
Cj4+Kwl2YWwgJj0gfkZGX01PREUyX1REU19USU1FUl9NQVNLOwo+PisJdmFsIHw9IEZGX01PREUy
X1REU19USU1FUl8xMjg7Cj4+Kwl3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZf
TU9ERTJfVERTX1RJTUVSX01BU0ssIHZhbCk7Cj4+ICB9Cj4+ICBzdGF0aWMgdm9pZAo+PmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAo+PmluZGV4IDBhMjY1N2NlMjg0Zi4uZDA0OGMzNDllMDdlIDEwMDY0
NAo+Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4rKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4+QEAgLTc3ODksNiArNzc4OSwxMSBAQCBlbnVtIHsK
Pj4gICNkZWZpbmUgICBQSVhFTF9ST1VORElOR19UUlVOQ19GQl9QQVNTVEhSVSAJKDEgPDwgMTUp
Cj4+ICAjZGVmaW5lICAgUEVSX1BJWEVMX0FMUEhBX0JZUEFTU19FTgkJKDEgPDwgNykKPj4rI2Rl
ZmluZSBGRl9NT0RFMgkJCV9NTUlPKDB4NjYwNCkKPj4rI2RlZmluZSAgIEZGX01PREUyX1REU19U
SU1FUl9TSElGVAkoMTYpCj4+KyNkZWZpbmUgICBGRl9NT0RFMl9URFNfVElNRVJfMTI4CSg0IDw8
IEZGX01PREUyX1REU19USU1FUl9TSElGVCkKPj4rI2RlZmluZSAgIEZGX01PREUyX1REU19USU1F
Ul9NQVNLCSgweGZmIDw8IEZGX01PREUyX1REU19USU1FUl9TSElGVCkKPj4rCj4+ICAvKiBQQ0gg
Ki8KPj4gICNkZWZpbmUgUENIX0RJU1BMQVlfQkFTRQkweGMwMDAwdQo+PgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
