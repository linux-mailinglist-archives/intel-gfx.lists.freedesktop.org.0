Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E09F23A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 10:48:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5790088F04;
	Tue, 30 Apr 2019 08:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6270588F04
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 08:48:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 01:48:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,413,1549958400"; d="scan'208";a="342050456"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.81])
 ([10.66.116.81])
 by fmsmga005.fm.intel.com with ESMTP; 30 Apr 2019 01:48:31 -0700
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20190426180151.30036-1-shashank.sharma@intel.com>
 <20190426180151.30036-2-shashank.sharma@intel.com> <87ftq0hpdt.fsf@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <67396461-22ed-8863-396e-713b1fa36682@intel.com>
Date: Tue, 30 Apr 2019 14:18:29 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <87ftq0hpdt.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/icl: Add register definitions
 for Multi Segmented gamma
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDQvMjkvMjAxOSA3OjQyIFBNLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBPbiBGcmksIDI2IEFw
ciAyMDE5LCBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+IHdyb3Rl
Ogo+PiBGcm9tOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgo+Pgo+PiBBZGQg
bWFjcm9zIHRvIGRlZmluZSBtdWx0aSBzZWdtZW50ZWQgZ2FtbWEgcmVnaXN0ZXJzCj4+Cj4+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiBDYzog
TWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPj4g
U2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KPj4gLS0t
Cj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDE3ICsrKysrKysrKysrKysr
KysrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCj4+IGluZGV4IGI3NDgyNGYwYjViMS4uZmM1MGU4NWNhODk1IDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4gQEAgLTcxOTgsNiArNzE5OCw3IEBAIGVudW0gewo+
PiAgICNkZWZpbmUgIEdBTU1BX01PREVfTU9ERV8xMEJJVAkoMSA8PCAwKQo+PiAgICNkZWZpbmUg
IEdBTU1BX01PREVfTU9ERV8xMkJJVAkoMiA8PCAwKQo+PiAgICNkZWZpbmUgIEdBTU1BX01PREVf
TU9ERV9TUExJVAkoMyA8PCAwKQo+PiArI2RlZmluZSAgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01V
TFRJX1NFR01FTlRFRAkoMyA8PCAwKQo+PiAgIAo+PiAgIC8qIERNQy9DU1IgKi8KPj4gICAjZGVm
aW5lIENTUl9QUk9HUkFNKGkpCQlfTU1JTygweDgwMDAwICsgKGkpICogNCkKPj4gQEAgLTEwMTQ0
LDYgKzEwMTQ1LDIyIEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewo+PiAgICNkZWZpbmUgUFJFX0NT
Q19HQU1DX0lOREVYKHBpcGUpCV9NTUlPX1BJUEUocGlwZSwgX1BSRV9DU0NfR0FNQ19JTkRFWF9B
LCBfUFJFX0NTQ19HQU1DX0lOREVYX0IpCj4+ICAgI2RlZmluZSBQUkVfQ1NDX0dBTUNfREFUQShw
aXBlKQkJX01NSU9fUElQRShwaXBlLCBfUFJFX0NTQ19HQU1DX0RBVEFfQSwgX1BSRV9DU0NfR0FN
Q19EQVRBX0IpCj4+ICAgCj4+ICsvKiBBZGQgcmVnaXN0ZXJzIGZvciBHZW4xMSBNdWx0aSBTZWdt
ZW50ZWQgR2FtbWEgTW9kZSAqLwo+PiArI2RlZmluZSBfUEFMX1BSRUNfTVVMVElfU0VHX0lOREVY
X0EJMHg0QTQwOAo+PiArI2RlZmluZSBfUEFMX1BSRUNfTVVMVElfU0VHX0lOREVYX0IJMHg0QUMw
OAo+PiArI2RlZmluZSAgUEFMX1BSRUNfTVVMVElfU0VHTUVOVF9BVVRPX0lOQ1JFTUVOVAkJQklU
KDE1KQo+PiArI2RlZmluZSAgUEFMX1BSRUNfTVVMVElfU0VHTUVOVF9JTkRFWF9WQUxVRV9NQVNL
CSgweDFmIDw8IDApCj4gU2VlIFJFR19CSVQoKSBhbmQgUkVHX0ZJRUxEX1BSRVAoKSBhdCB0aGUg
dG9wIG9mIHRoZSBmaWxlLgo+Cj4gQlIsCj4gSmFuaS4KCkdvdCBpdCBKYW5pLCBUaGFua3MgIQoK
UmVnYXJkcwoKU2hhc2hhbmsKCj4KPj4gKwo+PiArI2RlZmluZSBfUEFMX1BSRUNfTVVMVElfU0VH
X0RBVEFfQQkweDRBNDBDCj4+ICsjZGVmaW5lIF9QQUxfUFJFQ19NVUxUSV9TRUdfREFUQV9CCTB4
NEFDMEMKPj4gKwo+PiArI2RlZmluZSBQUkVDX1BBTF9NVUxUSV9TRUdfSU5ERVgocGlwZSkJX01N
SU9fUElQRShwaXBlLCBcCj4+ICsJCQkJCV9QQUxfUFJFQ19NVUxUSV9TRUdfSU5ERVhfQSwgXAo+
PiArCQkJCQlfUEFMX1BSRUNfTVVMVElfU0VHX0lOREVYX0IpCj4+ICsjZGVmaW5lIFBSRUNfUEFM
X01VTFRJX1NFR19EQVRBKHBpcGUpCV9NTUlPX1BJUEUocGlwZSwgXAo+PiArCQkJCQlfUEFMX1BS
RUNfTVVMVElfU0VHX0RBVEFfQSwgXAo+PiArCQkJCQlfUEFMX1BSRUNfTVVMVElfU0VHX0RBVEFf
QikKPj4gKwo+PiAgIC8qIHBpcGUgQ1NDICYgZGVnYW1tYS9nYW1tYSBMVVRzIG9uIENIViAqLwo+
PiAgICNkZWZpbmUgX0NHTV9QSVBFX0FfQ1NDX0NPRUZGMDEJKFZMVl9ESVNQTEFZX0JBU0UgKyAw
eDY3OTAwKQo+PiAgICNkZWZpbmUgX0NHTV9QSVBFX0FfQ1NDX0NPRUZGMjMJKFZMVl9ESVNQTEFZ
X0JBU0UgKyAweDY3OTA0KQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
