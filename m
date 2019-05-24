Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E16F29F4C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 21:44:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011EB6E0A2;
	Fri, 24 May 2019 19:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8F756E0A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 19:44:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16673346-1500050 for multiple; Fri, 24 May 2019 20:43:44 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190524185253.1088-1-jani.nikula@intel.com>
References: <20190524185253.1088-1-jani.nikula@intel.com>
Message-ID: <155872702294.6190.16866375205996135181@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 May 2019 20:43:42 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: make REG_BIT() and REG_GENMASK()
 work with variables
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNS0yNCAxOTo1Mjo1MykKPiBSRUdfQklUKCkgYW5k
IFJFR19HRU5NQVNLKCkgd2VyZSBpbnRlbmRlZCB0byB3b3JrIHdpdGggYm90aCBjb25zdGFudAo+
IGV4cHJlc3Npb25zIGFuZCBvdGhlcndpc2UsIHdpdGggdGhlIGZvcm1lciBoYXZpbmcgZXh0cmEg
Y29tcGlsZSB0aW1lCj4gY2hlY2tzIGZvciB0aGUgYml0IHJhbmdlcy4gSW5jcmVkaWJseSwgdGhl
IHJlc3VsdCBvZgo+IF9fYnVpbHRpbl9jb25zdGFudF9wKCkgaXMgbm90IGFuIGludGVnZXIgY29u
c3RhbnQgZXhwcmVzc2lvbiB3aGVuIGdpdmVuCj4gYSBub24tY29uc3RhbnQgZXhwcmVzc2lvbiwg
bGVhZGluZyB0byBlcnJvcnMgaW4gQlVJTERfQlVHX09OX1pFUk8oKS4KPiAKPiBSZXBsYWNlIF9f
YnVpbHRpbl9jb25zdGFudF9wKCkgd2l0aCB0aGUgX19pc19jb25zdGV4cHIoKSBtYWdpYyBzcGVs
bC4KPiAKPiBSZXBvcnRlZC1ieTogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDYgKysrLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gaW5kZXggNDlkY2UwNGRkNjg4Li4wMTljNDg3NDhkYzkg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtMTI2LDcgKzEyNiw3IEBACj4gICAq
Lwo+ICAjZGVmaW5lIFJFR19CSVQoX19uKSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFwKPiAgICAgICAgICgodTMyKShCSVQoX19uKSArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gLSAgICAgICAgICAgICAg
QlVJTERfQlVHX09OX1pFUk8oX19idWlsdGluX2NvbnN0YW50X3AoX19uKSAmJiAgICAgICAgICAg
XAo+ICsgICAgICAgICAgICAgIEJVSUxEX0JVR19PTl9aRVJPKF9faXNfY29uc3RleHByKF9fbikg
JiYgICAgICAgICBcCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKChfX24pIDwg
MCB8fCAoX19uKSA+IDMxKSkpKQo+ICAKPiAgLyoqCj4gQEAgLTE0MCw4ICsxNDAsOCBAQAo+ICAg
Ki8KPiAgI2RlZmluZSBSRUdfR0VOTUFTSyhfX2hpZ2gsIF9fbG93KSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBcCj4gICAgICAgICAoKHUzMikoR0VOTUFTSyhfX2hpZ2gsIF9f
bG93KSArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+IC0gICAgICAgICAgICAg
IEJVSUxEX0JVR19PTl9aRVJPKF9fYnVpbHRpbl9jb25zdGFudF9wKF9faGlnaCkgJiYgICAgICAg
IFwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBfX2J1aWx0aW5fY29uc3RhbnRf
cChfX2xvdykgJiYgICAgICAgICBcCj4gKyAgICAgICAgICAgICAgQlVJTERfQlVHX09OX1pFUk8o
X19pc19jb25zdGV4cHIoX19oaWdoKSAmJiAgICAgIFwKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBfX2lzX2NvbnN0ZXhwcihfX2xvdykgJiYgICAgICAgICAgICAgICBcCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKChfX2xvdykgPCAwIHx8IChfX2hpZ2gpID4g
MzEgfHwgKF9fbG93KSA+IChfX2hpZ2gpKSkpKQoKT2ssIG9uZSBvbGQgb25lIHJlbWFpbmluZyBp
biBfTUFTS0VEX0ZJRUxEKCkuCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
