Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1638828DA9E
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 09:42:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071856EA16;
	Wed, 14 Oct 2020 07:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C67786EA16;
 Wed, 14 Oct 2020 07:42:54 +0000 (UTC)
IronPort-SDR: 4+7qopIdlgNmqZmReCWpTUwlbQ5vkTKt53sUaPhW2sO2ilmeIZ7685ofDUAifGCdqhKe3VEJPT
 GsxwL4ukDEsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="166177603"
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="166177603"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 00:42:53 -0700
IronPort-SDR: P4svZ7Sdh2wK3q71Neyg2FuiMAI1SDH5lZWQuG1RS8oFjlznhn9Az8Tfr9K02/7KzqCIpIHq8b
 VX1VCdM608ng==
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="463789907"
Received: from anayshtu-mobl1.ger.corp.intel.com (HELO [10.252.53.34])
 ([10.252.53.34])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 00:42:51 -0700
To: Matt Roper <matthew.d.roper@intel.com>,
 Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
References: <20201013192948.63470-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20201013210819.GO3805439@mdroper-desk1.amr.corp.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <b9582fdb-4b04-a011-a963-e1a3ef9aa01f@linux.intel.com>
Date: Wed, 14 Oct 2020 09:42:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201013210819.GO3805439@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/jsl: Split EHL/JSL platform
 info and PCI ids
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTMtMTAtMjAyMCBvbSAyMzowOCBzY2hyZWVmIE1hdHQgUm9wZXI6Cj4gT24gV2VkLCBPY3Qg
MTQsIDIwMjAgYXQgMTI6NTk6NDhBTSArMDUzMCwgVGVqYXMgVXBhZGh5YXkgd3JvdGU6Cj4+IFJl
Y2VudGx5IHdlIGNhbWUgYWNyb3NzIHJlcXVpcmVtZW50IHRvIGlkZW50aWZ5IEVITCBhbmQgSlNM
Cj4+IHBsYXRmb3JtIHRvIHByb2dyYW0gdGhlbSBkaWZmZXJlbnRseS4gVGh1cyBTcGxpdCB0aGUg
YmFzaWMKPj4gcGxhdGZvcm0gZGVmaW5pdGlvbiwgbWFjcm9zLCBhbmQgUENJIElEcyB0byBkaWZm
ZXJlbnRpYXRlCj4+IGJldHdlZW4gRUhMIGFuZCBKU0wgcGxhdGZvcm1zLiBBbHNvLCBJU19FTEtI
QVJUTEFLRSBpcyByZXBsYWNlZAo+PiB3aXRoIElTX0pTTF9FSEwgZXZlcnl3aGVyZS4KPj4KPj4g
Q2hhbmdlcyBzaW5jZSBWMSA6Cj4+IAktIFJlYmFzZWQgdG8gYXZvaWQgbWVyZ2UgY29uZmxpY3Rz
Cj4+IAktIEFkZGVkIG1pc3NlZCBjaGVjayBmb3IgamFzcGVybGFrZSBpbiBpbnRlbF91Y19mdy5j
Cj4+Cj4+IENjIDogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPj4gQ2Mg
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBUZWphcyBVcGFkaHlheSA8dGVqYXNrdW1hcnguc3VyZW5kcmFrdW1hci51cGFk
aHlheUBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3Bl
ckBpbnRlbC5jb20+Cj4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lj
bF9kc2kuYyAgICAgICAgIHwgIDQgKystLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jZGNsay5jICAgICB8ICA0ICsrLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY29tYm9fcGh5LmMgfCAgNiArKystLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICAgfCAxMiArKysrKystLS0tLS0KPj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICAgfCAgOCArKysrLS0tLQo+
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgICB8ICAyICst
Cj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgIHwgMTYg
KysrKysrKystLS0tLS0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5j
ICAgICAgICAgICB8ICAyICstCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jICAgIHwgIDQgKystLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWNfZncuYyAgICAgICB8ICAxICsKPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggICAgICAgICAgICAgICAgfCAgNyArKysrLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BjaS5jICAgICAgICAgICAgICAgIHwgIDkgKysrKysrKysrCj4+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jICAgICAgIHwgIDEgKwo+PiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCAgICAgICB8ICAxICsKPj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BjaC5jICAgICAgICAgICAgICAgfCAgNiArKystLS0KPj4gIGluY2x1
ZGUvZHJtL2k5MTVfcGNpaWRzLmggICAgICAgICAgICAgICAgICAgICAgfCAgOSArKysrKystLS0K
Pj4gIDE2IGZpbGVzIGNoYW5nZWQsIDU0IGluc2VydGlvbnMoKyksIDM4IGRlbGV0aW9ucygtKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+PiBpbmRleCA0NDAwZTgz
Zjc4M2YuLjA5NjY1MjkyMTQ1MyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pY2xfZHNpLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
Y2xfZHNpLmMKPj4gQEAgLTQ1NSw3ICs0NTUsNyBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfY29u
ZmlnX3BoeV9sYW5lc19zZXF1ZW5jZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPj4g
IAkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIElDTF9QT1JUX1RYX0RXMl9HUlAocGh5KSwgdG1w
KTsKPj4gIAo+PiAgCQkvKiBGb3IgRUhMLCBUR0wsIHNldCBsYXRlbmN5IG9wdGltaXphdGlvbiBm
b3IgUENTX0RXMSBsYW5lcyAqLwo+PiAtCQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpIHx8
IChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSkgewo+PiArCQlpZiAoSVNfSlNMX0VITChkZXZf
cHJpdikgfHwgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpKSB7Cj4+ICAJCQl0bXAgPSBpbnRl
bF9kZV9yZWFkKGRldl9wcml2LAo+PiAgCQkJCQkgICAgSUNMX1BPUlRfUENTX0RXMV9BVVgocGh5
KSk7Cj4+ICAJCQl0bXAgJj0gfkxBVEVOQ1lfT1BUSU1fTUFTSzsKPj4gQEAgLTYxMiw3ICs2MTIs
NyBAQCBnZW4xMV9kc2lfc2V0dXBfZHBoeV90aW1pbmdzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAo+PiAgCQl9Cj4+ICAJfQo+PiAgCj4+IC0JaWYgKElTX0VMS0hBUlRMQUtFKGRldl9w
cml2KSkgewo+PiArCWlmIChJU19KU0xfRUhMKGRldl9wcml2KSkgewo+PiAgCQlmb3JfZWFjaF9k
c2lfcGh5KHBoeSwgaW50ZWxfZHNpLT5waHlzKSB7Cj4+ICAJCQl0bXAgPSBpbnRlbF9kZV9yZWFk
KGRldl9wcml2LCBJQ0xfRFBIWV9DSEtOKHBoeSkpOwo+PiAgCQkJdG1wIHw9IElDTF9EUEhZX0NI
S05fQUZFX09WRVJfUFBJX1NUUkFQOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jCj4+IGluZGV4IDdkYmYxNTMyNzlmYi4uN2I0NjMzMGZhNjljIDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4+IEBAIC0yNTg4
LDcgKzI1ODgsNyBAQCBzdGF0aWMgaW50IGludGVsX2NvbXB1dGVfbWF4X2RvdGNsayhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+ICAgKi8KPj4gIHZvaWQgaW50ZWxfdXBkYXRl
X21heF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+ICB7Cj4+IC0J
aWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkgewo+PiArCWlmIChJU19KU0xfRUhMKGRldl9w
cml2KSkgewo+PiAgCQlpZiAoZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiA9PSAyNDAwMCkKPj4gIAkJ
CWRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSA9IDU1MjAwMDsKPj4gIAkJZWxzZQo+PiBAQCAtMjgy
OSw3ICsyODI5LDcgQEAgdm9pZCBpbnRlbF9pbml0X2NkY2xrX2hvb2tzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKPj4gIAkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxj
X2NkY2xrID0gYnh0X21vZGVzZXRfY2FsY19jZGNsazsKPj4gIAkJZGV2X3ByaXYtPmRpc3BsYXku
Y2FsY192b2x0YWdlX2xldmVsID0gdGdsX2NhbGNfdm9sdGFnZV9sZXZlbDsKPj4gIAkJZGV2X3By
aXYtPmNkY2xrLnRhYmxlID0gaWNsX2NkY2xrX3RhYmxlOwo+PiAtCX0gZWxzZSBpZiAoSVNfRUxL
SEFSVExBS0UoZGV2X3ByaXYpKSB7Cj4+ICsJfSBlbHNlIGlmIChJU19KU0xfRUhMKGRldl9wcml2
KSkgewo+PiAgCQlkZXZfcHJpdi0+ZGlzcGxheS5zZXRfY2RjbGsgPSBieHRfc2V0X2NkY2xrOwo+
PiAgCQlkZXZfcHJpdi0+ZGlzcGxheS5id19jYWxjX21pbl9jZGNsayA9IHNrbF9id19jYWxjX21p
bl9jZGNsazsKPj4gIAkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0gYnh0
X21vZGVzZXRfY2FsY19jZGNsazsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NvbWJvX3BoeS5jCj4+IGluZGV4IDkzMjI2NWYxYWM5MC4uZDVhZDYxZTQwODNlIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3Bo
eS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5
LmMKPj4gQEAgLTE4OCw3ICsxODgsNyBAQCBzdGF0aWMgYm9vbCBoYXNfcGh5X21pc2Moc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcGh5IHBoeSkKPj4gIAkgKiBQSFktQiBhbmQg
bWF5IG5vdCBldmVuIGhhdmUgaW5zdGFuY2VzIG9mIHRoZSByZWdpc3RlciBmb3IgdGhlCj4+ICAJ
ICogb3RoZXIgY29tYm8gUEhZJ3MuCj4+ICAJICovCj4+IC0JaWYgKElTX0VMS0hBUlRMQUtFKGk5
MTUpIHx8Cj4+ICsJaWYgKElTX0pTTF9FSEwoaTkxNSkgfHwKPj4gIAkgICAgSVNfUk9DS0VUTEFL
RShpOTE1KSB8fAo+PiAgCSAgICBJU19ERzEoaTkxNSkpCj4+ICAJCXJldHVybiBwaHkgPCBQSFlf
QzsKPj4gQEAgLTI4Myw3ICsyODMsNyBAQCBzdGF0aWMgYm9vbCBpY2xfY29tYm9fcGh5X3Zlcmlm
eV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4+ICAJCXJldCAmPSBj
aGVja19waHlfcmVnKGRldl9wcml2LCBwaHksIElDTF9QT1JUX0NPTVBfRFc4KHBoeSksCj4+ICAJ
CQkJICAgICBJUkVGR0VOLCBJUkVGR0VOKTsKPj4gIAo+PiAtCQlpZiAoSVNfRUxLSEFSVExBS0Uo
ZGV2X3ByaXYpKSB7Cj4+ICsJCWlmIChJU19KU0xfRUhMKGRldl9wcml2KSkgewo+PiAgCQkJaWYg
KGVobF92YnRfZGRpX2RfcHJlc2VudChkZXZfcHJpdikpCj4+ICAJCQkJZXhwZWN0ZWRfdmFsID0g
SUNMX1BIWV9NSVNDX01VWF9ERElEOwo+PiAgCj4+IEBAIC0zNzcsNyArMzc3LDcgQEAgc3RhdGlj
IHZvaWQgaWNsX2NvbWJvX3BoeXNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCj4+ICAJCSAqICJpbnRlcm5hbCIgY2hpbGQgZGV2aWNlcy4KPj4gIAkJICovCj4+ICAJCXZh
bCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIElDTF9QSFlfTUlTQyhwaHkpKTsKPj4gLQkJaWYg
KElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSAmJiBwaHkgPT0gUEhZX0EpIHsKPj4gKwkJaWYgKElT
X0pTTF9FSEwoZGV2X3ByaXYpICYmIHBoeSA9PSBQSFlfQSkgewo+PiAgCQkJdmFsICY9IH5JQ0xf
UEhZX01JU0NfTVVYX0RESUQ7Cj4+ICAKPj4gIAkJCWlmIChlaGxfdmJ0X2RkaV9kX3ByZXNlbnQo
ZGV2X3ByaXYpKQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPj4g
aW5kZXggMzVlZGJkODI2NDQzLi5iYjBiOTkzMDk1OGYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+PiBAQCAtMjM2Myw3ICsyMzYzLDcgQEAgc3RhdGlj
IHU4IGludGVsX2RkaV9kcF92b2x0YWdlX21heChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+
PiAgCQllbHNlCj4+ICAJCQl0Z2xfZ2V0X2RrbF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0
ZSwgJm5fZW50cmllcyk7Cj4+ICAJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID09IDEx
KSB7Cj4+IC0JCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpCj4+ICsJCWlmIChJU19KU0xf
RUhMKGRldl9wcml2KSkKPj4gIAkJCWVobF9nZXRfY29tYm9fYnVmX3RyYW5zKGVuY29kZXIsIGNy
dGNfc3RhdGUsICZuX2VudHJpZXMpOwo+PiAgCQllbHNlIGlmIChpbnRlbF9waHlfaXNfY29tYm8o
ZGV2X3ByaXYsIHBoeSkpCj4+ICAJCQlpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhlbmNvZGVyLCBj
cnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPj4gQEAgLTI1NDQsNyArMjU0NCw3IEBAIHN0YXRpYyB2
b2lkIGljbF9kZGlfY29tYm9fdnN3aW5nX3Byb2dyYW0oc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCj4+ICAKPj4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKPj4gIAkJZGRp
X3RyYW5zbGF0aW9ucyA9IHRnbF9nZXRfY29tYm9fYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3Rh
dGUsICZuX2VudHJpZXMpOwo+PiAtCWVsc2UgaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkK
Pj4gKwllbHNlIGlmIChJU19KU0xfRUhMKGRldl9wcml2KSkKPj4gIAkJZGRpX3RyYW5zbGF0aW9u
cyA9IGVobF9nZXRfY29tYm9fYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJp
ZXMpOwo+PiAgCWVsc2UKPj4gIAkJZGRpX3RyYW5zbGF0aW9ucyA9IGljbF9nZXRfY29tYm9fYnVm
X3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+PiBAQCAtMzEzNSw3ICsz
MTM1LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX2Nsa19zZWxlY3Qoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsCj4+ICAJCWlmICghaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2LCBw
aHkpKQo+PiAgCQkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERESV9DTEtfU0VMKHBvcnQpLAo+
PiAgCQkJCSAgICAgICBpY2xfcGxsX3RvX2RkaV9jbGtfc2VsKGVuY29kZXIsIGNydGNfc3RhdGUp
KTsKPj4gLQkJZWxzZSBpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmIHBvcnQgPj0gUE9S
VF9DKQo+PiArCQllbHNlIGlmIChJU19KU0xfRUhMKGRldl9wcml2KSAmJiBwb3J0ID49IFBPUlRf
QykKPj4gIAkJCS8qCj4+ICAJCQkgKiBNRyBkb2VzIG5vdCBleGlzdCBidXQgdGhlIHByb2dyYW1t
aW5nIGlzIHJlcXVpcmVkCj4+ICAJCQkgKiB0byB1bmdhdGUgRERJQyBhbmQgRERJRAo+PiBAQCAt
MzE4NCw3ICszMTg0LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX2Nsa19kaXNhYmxlKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQo+PiAgCj4+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTEpIHsKPj4gIAkJaWYgKCFpbnRlbF9waHlfaXNfY29tYm8oZGV2X3ByaXYsIHBoeSkg
fHwKPj4gLQkJICAgIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYgcG9ydCA+PSBQT1JUX0Mp
KQo+PiArCQkgICAgKElTX0pTTF9FSEwoZGV2X3ByaXYpICYmIHBvcnQgPj0gUE9SVF9DKSkKPj4g
IAkJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBERElfQ0xLX1NFTChwb3J0KSwKPj4gIAkJCQkg
ICAgICAgRERJX0NMS19TRUxfTk9ORSk7Cj4+ICAJfSBlbHNlIGlmIChJU19DQU5OT05MQUtFKGRl
dl9wcml2KSkgewo+PiBAQCAtNDMyOCw3ICs0MzI4LDcgQEAgdm9pZCBpbnRlbF9kZGlfY29tcHV0
ZV9taW5fdm9sdGFnZV9sZXZlbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4+
ICB7Cj4+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIgJiYgY3J0Y19zdGF0ZS0+cG9y
dF9jbG9jayA+IDU5NDAwMCkKPj4gIAkJY3J0Y19zdGF0ZS0+bWluX3ZvbHRhZ2VfbGV2ZWwgPSAy
Owo+PiAtCWVsc2UgaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSAmJiBjcnRjX3N0YXRlLT5w
b3J0X2Nsb2NrID4gNTk0MDAwKQo+PiArCWVsc2UgaWYgKElTX0pTTF9FSEwoZGV2X3ByaXYpICYm
IGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPiA1OTQwMDApCj4+ICAJCWNydGNfc3RhdGUtPm1pbl92
b2x0YWdlX2xldmVsID0gMzsKPj4gIAllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEx
ICYmIGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPiA1OTQwMDApCj4+ICAJCWNydGNfc3RhdGUtPm1p
bl92b2x0YWdlX2xldmVsID0gMTsKPj4gQEAgLTUxOTksNyArNTE5OSw3IEBAIHZvaWQgaW50ZWxf
ZGRpX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9y
dCkKPj4gIAkJZW5jb2Rlci0+aHBkX3BpbiA9IHJrbF9ocGRfcGluKGRldl9wcml2LCBwb3J0KTsK
Pj4gIAllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQo+PiAgCQllbmNvZGVyLT5o
cGRfcGluID0gdGdsX2hwZF9waW4oZGV2X3ByaXYsIHBvcnQpOwo+PiAtCWVsc2UgaWYgKElTX0VM
S0hBUlRMQUtFKGRldl9wcml2KSkKPj4gKwllbHNlIGlmIChJU19KU0xfRUhMKGRldl9wcml2KSkK
Pj4gIAkJZW5jb2Rlci0+aHBkX3BpbiA9IGVobF9ocGRfcGluKGRldl9wcml2LCBwb3J0KTsKPj4g
IAllbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkKPj4gIAkJZW5jb2Rlci0+aHBkX3BpbiA9
IGljbF9ocGRfcGluKGRldl9wcml2LCBwb3J0KTsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gaW5kZXggY2YxNDE3ZmY1NGQ3Li5jMDE2YjVkOTU2
MWUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCj4+IEBAIC03MzMxLDcgKzczMzEsNyBAQCBib29sIGludGVsX3BoeV9pc19jb21ibyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGh5IHBoeSkKPj4gIAkJcmV0dXJu
IGZhbHNlOwo+PiAgCWVsc2UgaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKQo+PiAgCQlyZXR1
cm4gcGh5IDw9IFBIWV9EOwo+PiAtCWVsc2UgaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkK
Pj4gKwllbHNlIGlmIChJU19KU0xfRUhMKGRldl9wcml2KSkKPj4gIAkJcmV0dXJuIHBoeSA8PSBQ
SFlfQzsKPj4gIAllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+PiAgCQlyZXR1
cm4gcGh5IDw9IFBIWV9COwo+PiBAQCAtNzM0NSw3ICs3MzQ1LDcgQEAgYm9vbCBpbnRlbF9waHlf
aXNfdGMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBoeSBwaHkpCj4+
ICAJCXJldHVybiBmYWxzZTsKPj4gIAllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEy
KQo+PiAgCQlyZXR1cm4gcGh5ID49IFBIWV9EICYmIHBoeSA8PSBQSFlfSTsKPj4gLQllbHNlIGlm
IChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYmICFJU19FTEtIQVJUTEFLRShkZXZfcHJpdikp
Cj4+ICsJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSAmJiAhSVNfSlNMX0VITChk
ZXZfcHJpdikpCj4+ICAJCXJldHVybiBwaHkgPj0gUEhZX0MgJiYgcGh5IDw9IFBIWV9GOwo+PiAg
CWVsc2UKPj4gIAkJcmV0dXJuIGZhbHNlOwo+PiBAQCAtNzM1NSw3ICs3MzU1LDcgQEAgZW51bSBw
aHkgaW50ZWxfcG9ydF90b19waHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0g
cG9ydCBwb3J0KQo+PiAgewo+PiAgCWlmIChJU19ST0NLRVRMQUtFKGk5MTUpICYmIHBvcnQgPj0g
UE9SVF9EKQo+PiAgCQlyZXR1cm4gKGVudW0gcGh5KXBvcnQgLSAxOwo+PiAtCWVsc2UgaWYgKElT
X0VMS0hBUlRMQUtFKGk5MTUpICYmIHBvcnQgPT0gUE9SVF9EKQo+PiArCWVsc2UgaWYgKElTX0pT
TF9FSEwoaTkxNSkgJiYgcG9ydCA9PSBQT1JUX0QpCj4+ICAJCXJldHVybiBQSFlfQTsKPj4gIAo+
PiAgCXJldHVybiAoZW51bSBwaHkpcG9ydDsKPj4gQEAgLTE3MTE5LDcgKzE3MTE5LDcgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfc2V0dXBfb3V0cHV0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCj4+ICAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0gpOwo+PiAgCQlpbnRl
bF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9JKTsKPj4gIAkJaWNsX2RzaV9pbml0KGRldl9wcml2
KTsKPj4gLQl9IGVsc2UgaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkgewo+PiArCX0gZWxz
ZSBpZiAoSVNfSlNMX0VITChkZXZfcHJpdikpIHsKPj4gIAkJaW50ZWxfZGRpX2luaXQoZGV2X3By
aXYsIFBPUlRfQSk7Cj4+ICAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0IpOwo+PiAg
CQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9DKTsKPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiBpbmRleCA0ZjgyNjZjM2VkNDMuLjA5MDJhOWFlZWRhMSAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiBAQCAtMzMy
LDcgKzMzMiw3IEBAIGludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCkKPj4gIAkJc2l6ZSA9IEFSUkFZX1NJWkUoY25sX3JhdGVzKTsKPj4gIAkJaWYgKElT
X0dFTihkZXZfcHJpdiwgMTApKQo+PiAgCQkJbWF4X3JhdGUgPSBjbmxfbWF4X3NvdXJjZV9yYXRl
KGludGVsX2RwKTsKPj4gLQkJZWxzZSBpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKQo+PiAr
CQllbHNlIGlmIChJU19KU0xfRUhMKGRldl9wcml2KSkKPj4gIAkJCW1heF9yYXRlID0gZWhsX21h
eF9zb3VyY2VfcmF0ZShpbnRlbF9kcCk7Cj4+ICAJCWVsc2UKPj4gIAkJCW1heF9yYXRlID0gaWNs
X21heF9zb3VyY2VfcmF0ZShpbnRlbF9kcCk7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKPj4gaW5kZXggMmNjMGU4NGU0MWVhLi40OGMzMGM1MGEz
MDEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBs
bF9tZ3IuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxf
bWdyLmMKPj4gQEAgLTE1Miw3ICsxNTIsNyBAQCBpbnRlbF9jb21ib19wbGxfZW5hYmxlX3JlZyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPj4gIAkJCSAgIHN0cnVjdCBpbnRlbF9zaGFy
ZWRfZHBsbCAqcGxsKQo+PiAgewo+PiAgCj4+IC0JaWYgKElTX0VMS0hBUlRMQUtFKGk5MTUpICYm
IChwbGwtPmluZm8tPmlkID09IERQTExfSURfRUhMX0RQTEw0KSkKPj4gKwlpZiAoSVNfSlNMX0VI
TChpOTE1KSAmJiAocGxsLT5pbmZvLT5pZCA9PSBEUExMX0lEX0VITF9EUExMNCkpCj4+ICAJCXJl
dHVybiBNR19QTExfRU5BQkxFKDApOwo+PiAgCj4+ICAJcmV0dXJuIENOTF9EUExMX0VOQUJMRShw
bGwtPmluZm8tPmlkKTsKPj4gQEAgLTM1NTEsNyArMzU1MSw3IEBAIHN0YXRpYyBib29sIGljbF9n
ZXRfY29tYm9fcGh5X2RwbGwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4+ICAJ
CQlCSVQoRFBMTF9JRF9FSExfRFBMTDQpIHwKPj4gIAkJCUJJVChEUExMX0lEX0lDTF9EUExMMSkg
fAo+PiAgCQkJQklUKERQTExfSURfSUNMX0RQTEwwKTsKPj4gLQl9IGVsc2UgaWYgKElTX0VMS0hB
UlRMQUtFKGRldl9wcml2KSAmJiBwb3J0ICE9IFBPUlRfQSkgewo+PiArCX0gZWxzZSBpZiAoSVNf
SlNMX0VITChkZXZfcHJpdikgJiYgcG9ydCAhPSBQT1JUX0EpIHsKPj4gIAkJZHBsbF9tYXNrID0K
Pj4gIAkJCUJJVChEUExMX0lEX0VITF9EUExMNCkgfAo+PiAgCQkJQklUKERQTExfSURfSUNMX0RQ
TEwxKSB8Cj4+IEBAIC0zODUzLDcgKzM4NTMsNyBAQCBzdGF0aWMgYm9vbCBpY2xfcGxsX2dldF9o
d19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4+ICAJCWh3X3N0YXRl
LT5jZmdjcjEgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LAo+PiAgCQkJCQkJIFRHTF9EUExMX0NG
R0NSMShpZCkpOwo+PiAgCX0gZWxzZSB7Cj4+IC0JCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJp
dikgJiYgaWQgPT0gRFBMTF9JRF9FSExfRFBMTDQpIHsKPj4gKwkJaWYgKElTX0pTTF9FSEwoZGV2
X3ByaXYpICYmIGlkID09IERQTExfSURfRUhMX0RQTEw0KSB7Cj4+ICAJCQlod19zdGF0ZS0+Y2Zn
Y3IwID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwKPj4gIAkJCQkJCQkgSUNMX0RQTExfQ0ZHQ1Iw
KDQpKTsKPj4gIAkJCWh3X3N0YXRlLT5jZmdjcjEgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LAo+
PiBAQCAtMzkwMiw3ICszOTAyLDcgQEAgc3RhdGljIHZvaWQgaWNsX2RwbGxfd3JpdGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAgCQljZmdjcjBfcmVnID0gVEdMX0RQTExf
Q0ZHQ1IwKGlkKTsKPj4gIAkJY2ZnY3IxX3JlZyA9IFRHTF9EUExMX0NGR0NSMShpZCk7Cj4+ICAJ
fSBlbHNlIHsKPj4gLQkJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSAmJiBpZCA9PSBEUExM
X0lEX0VITF9EUExMNCkgewo+PiArCQlpZiAoSVNfSlNMX0VITChkZXZfcHJpdikgJiYgaWQgPT0g
RFBMTF9JRF9FSExfRFBMTDQpIHsKPj4gIAkJCWNmZ2NyMF9yZWcgPSBJQ0xfRFBMTF9DRkdDUjAo
NCk7Cj4+ICAJCQljZmdjcjFfcmVnID0gSUNMX0RQTExfQ0ZHQ1IxKDQpOwo+PiAgCQl9IGVsc2Ug
ewo+PiBAQCAtNDA3Niw3ICs0MDc2LDcgQEAgc3RhdGljIHZvaWQgY29tYm9fcGxsX2VuYWJsZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4+ICB7Cj4+ICAJaTkxNV9yZWdfdCBl
bmFibGVfcmVnID0gaW50ZWxfY29tYm9fcGxsX2VuYWJsZV9yZWcoZGV2X3ByaXYsIHBsbCk7Cj4+
ICAKPj4gLQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmCj4+ICsJaWYgKElTX0pTTF9F
SEwoZGV2X3ByaXYpICYmCj4+ICAJICAgIHBsbC0+aW5mby0+aWQgPT0gRFBMTF9JRF9FSExfRFBM
TDQpIHsKPj4gIAo+PiAgCQkvKgo+PiBAQCAtNDE4OSw3ICs0MTg5LDcgQEAgc3RhdGljIHZvaWQg
Y29tYm9fcGxsX2Rpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAg
Cj4+ICAJaWNsX3BsbF9kaXNhYmxlKGRldl9wcml2LCBwbGwsIGVuYWJsZV9yZWcpOwo+PiAgCj4+
IC0JaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSAmJgo+PiArCWlmIChJU19KU0xfRUhMKGRl
dl9wcml2KSAmJgo+PiAgCSAgICBwbGwtPmluZm8tPmlkID09IERQTExfSURfRUhMX0RQTEw0KQo+
PiAgCQlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChkZXZfcHJpdiwgUE9XRVJfRE9NQUlOX0RQTExf
RENfT0ZGLAo+PiAgCQkJCQlwbGwtPndha2VyZWYpOwo+PiBAQCAtNDM1Niw3ICs0MzU2LDcgQEAg
dm9pZCBpbnRlbF9zaGFyZWRfZHBsbF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4+ICAJ
CWRwbGxfbWdyID0gJnJrbF9wbGxfbWdyOwo+PiAgCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTIpCj4+ICAJCWRwbGxfbWdyID0gJnRnbF9wbGxfbWdyOwo+PiAtCWVsc2UgaWYgKElT
X0VMS0hBUlRMQUtFKGRldl9wcml2KSkKPj4gKwllbHNlIGlmIChJU19KU0xfRUhMKGRldl9wcml2
KSkKPj4gIAkJZHBsbF9tZ3IgPSAmZWhsX3BsbF9tZ3I7Cj4+ICAJZWxzZSBpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMSkKPj4gIAkJZHBsbF9tZ3IgPSAmaWNsX3BsbF9tZ3I7Cj4+IEBAIC00
NDk4LDcgKzQ0OTgsNyBAQCBzdGF0aWMgdm9pZCByZWFkb3V0X2RwbGxfaHdfc3RhdGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4+ICAJcGxsLT5vbiA9IHBsbC0+aW5mby0+ZnVuY3Mt
PmdldF9od19zdGF0ZShpOTE1LCBwbGwsCj4+ICAJCQkJCQkgJnBsbC0+c3RhdGUuaHdfc3RhdGUp
Owo+PiAgCj4+IC0JaWYgKElTX0VMS0hBUlRMQUtFKGk5MTUpICYmIHBsbC0+b24gJiYKPj4gKwlp
ZiAoSVNfSlNMX0VITChpOTE1KSAmJiBwbGwtPm9uICYmCj4+ICAJICAgIHBsbC0+aW5mby0+aWQg
PT0gRFBMTF9JRF9FSExfRFBMTDQpIHsKPj4gIAkJcGxsLT53YWtlcmVmID0gaW50ZWxfZGlzcGxh
eV9wb3dlcl9nZXQoaTkxNSwKPj4gIAkJCQkJCSAgICAgICBQT1dFUl9ET01BSU5fRFBMTF9EQ19P
RkYpOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jCj4+IGluZGV4IGYxYzAzOWUx
YjVhZC4uOGE3MmUwZmUzNGNhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9zc2V1LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3Nl
dS5jCj4+IEBAIC0xNjksNyArMTY5LDcgQEAgc3RhdGljIHZvaWQgZ2VuMTFfc3NldV9pbmZvX2lu
aXQoc3RydWN0IGludGVsX2d0ICpndCkKPj4gIAl1OCBldV9lbjsKPj4gIAl1OCBzX2VuOwo+PiAg
Cj4+IC0JaWYgKElTX0VMS0hBUlRMQUtFKGd0LT5pOTE1KSkKPj4gKwlpZiAoSVNfSlNMX0VITChn
dC0+aTkxNSkpCj4+ICAJCWludGVsX3NzZXVfc2V0X2luZm8oc3NldSwgMSwgNCwgOCk7Cj4+ICAJ
ZWxzZQo+PiAgCQlpbnRlbF9zc2V1X3NldF9pbmZvKHNzZXUsIDEsIDgsIDgpOwo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPj4gaW5kZXggNzhjNTQ4MGM2
NDAxLi5jNjQzM2I3MmY1ZTkgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwo+PiBAQCAtMTIxMiw3ICsxMjEyLDcgQEAgaWNsX2d0X3dvcmthcm91
bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpOTE1X3dhX2xp
c3QgKndhbCkKPj4gIAo+PiAgCS8qIFdhXzE2MDcwODcwNTY6aWNsLGVobCxqc2wgKi8KPj4gIAlp
ZiAoSVNfSUNFTEFLRShpOTE1KSB8fAo+PiAtCSAgICBJU19FSExfUkVWSUQoaTkxNSwgRUhMX1JF
VklEX0EwLCBFSExfUkVWSURfQTApKSB7Cj4+ICsJCUlTX0pTTF9FSExfUkVWSUQoaTkxNSwgRUhM
X1JFVklEX0EwLCBFSExfUkVWSURfQTApKSB7Cj4+ICAJCXdhX3dyaXRlX29yKHdhbCwKPj4gIAkJ
CSAgICBTTElDRV9VTklUX0xFVkVMX0NMS0dBVEUsCj4+ICAJCQkgICAgTDNfQ0xLR0FURV9ESVMg
fCBMM19DUjJYX0NMS0dBVEVfRElTKTsKPj4gQEAgLTE4MzksNyArMTgzOSw3IEBAIHJjc19lbmdp
bmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dh
X2xpc3QgKndhbCkKPj4gIAkJCSAgICBHRU4xMl9GRl9URVNTRUxBVElPTl9ET1BfR0FURV9ESVNB
QkxFKTsKPj4gIAo+PiAgCQkvKiBXYV8yMjAxMDI3MTAyMTplaGwgKi8KPj4gLQkJaWYgKElTX0VM
S0hBUlRMQUtFKGk5MTUpKQo+PiArCQlpZiAoSVNfSlNMX0VITChpOTE1KSkKPj4gIAkJCXdhX21h
c2tlZF9lbih3YWwsCj4+ICAJCQkJICAgICBHRU45X0NTX0RFQlVHX01PREUxLAo+PiAgCQkJCSAg
ICAgRkZfRE9QX0NMT0NLX0dBVEVfRElTQUJMRSk7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWNfZncuYwo+PiBpbmRleCA4MGU4YjZjM2JjOGMuLjAzN2JjYWYzYzhiNSAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwo+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4+IEBAIC01Myw2
ICs1Myw3IEBAIHZvaWQgaW50ZWxfdWNfZndfY2hhbmdlX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfdWNf
ZncgKnVjX2Z3LAo+PiAgI2RlZmluZSBJTlRFTF9VQ19GSVJNV0FSRV9ERUZTKGZ3X2RlZiwgZ3Vj
X2RlZiwgaHVjX2RlZikgXAo+PiAgCWZ3X2RlZihST0NLRVRMQUtFLCAgMCwgZ3VjX2RlZih0Z2ws
IDM1LCAyLCAwKSwgaHVjX2RlZih0Z2wsICA3LCA1LCAwKSkgXAo+PiAgCWZ3X2RlZihUSUdFUkxB
S0UsICAgMCwgZ3VjX2RlZih0Z2wsIDM1LCAyLCAwKSwgaHVjX2RlZih0Z2wsICA3LCA1LCAwKSkg
XAo+PiArCWZ3X2RlZihKQVNQRVJMQUtFLCAgMCwgZ3VjX2RlZihlaGwsIDMzLCAwLCA0KSwgaHVj
X2RlZihlaGwsICA5LCAwLCAwKSkgXAo+PiAgCWZ3X2RlZihFTEtIQVJUTEFLRSwgMCwgZ3VjX2Rl
ZihlaGwsIDMzLCAwLCA0KSwgaHVjX2RlZihlaGwsICA5LCAwLCAwKSkgXAo+PiAgCWZ3X2RlZihJ
Q0VMQUtFLCAgICAgMCwgZ3VjX2RlZihpY2wsIDMzLCAwLCAwKSwgaHVjX2RlZihpY2wsICA5LCAw
LCAwKSkgXAo+PiAgCWZ3X2RlZihDT01FVExBS0UsICAgNSwgZ3VjX2RlZihjbWwsIDMzLCAwLCAw
KSwgaHVjX2RlZihjbWwsICA0LCAwLCAwKSkgXAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPj4g
aW5kZXggOWMyNjcyYzU2Y2MxLi5jOTVkYjJkNTQ4NWMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaAo+PiBAQCAtMTQxNyw3ICsxNDE3LDggQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4+ICAjZGVmaW5lIElTX0NPTUVUTEFLRShkZXZf
cHJpdikJSVNfUExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX0NPTUVUTEFLRSkKPj4gICNkZWZpbmUg
SVNfQ0FOTk9OTEFLRShkZXZfcHJpdikJSVNfUExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX0NBTk5P
TkxBS0UpCj4+ICAjZGVmaW5lIElTX0lDRUxBS0UoZGV2X3ByaXYpCUlTX1BMQVRGT1JNKGRldl9w
cml2LCBJTlRFTF9JQ0VMQUtFKQo+PiAtI2RlZmluZSBJU19FTEtIQVJUTEFLRShkZXZfcHJpdikJ
SVNfUExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX0VMS0hBUlRMQUtFKQo+PiArI2RlZmluZSBJU19K
U0xfRUhMKGRldl9wcml2KQkoSVNfUExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX0pBU1BFUkxBS0Up
IHx8IFwKPj4gKwkJCQlJU19QTEFURk9STShkZXZfcHJpdiwgSU5URUxfRUxLSEFSVExBS0UpKQo+
PiAgI2RlZmluZSBJU19USUdFUkxBS0UoZGV2X3ByaXYpCUlTX1BMQVRGT1JNKGRldl9wcml2LCBJ
TlRFTF9USUdFUkxBS0UpCj4+ICAjZGVmaW5lIElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpCUlTX1BM
QVRGT1JNKGRldl9wcml2LCBJTlRFTF9ST0NLRVRMQUtFKQo+PiAgI2RlZmluZSBJU19ERzEoZGV2
X3ByaXYpICAgICAgICBJU19QTEFURk9STShkZXZfcHJpdiwgSU5URUxfREcxKQo+PiBAQCAtMTU1
OCw4ICsxNTU5LDggQEAgZXh0ZXJuIGNvbnN0IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3Mga2Js
X3Jldmlkc1tdOwo+PiAgCj4+ICAjZGVmaW5lIEVITF9SRVZJRF9BMCAgICAgICAgICAgIDB4MAo+
PiAgCj4+IC0jZGVmaW5lIElTX0VITF9SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwKPj4gLQkoSVNf
RUxLSEFSVExBS0UocCkgJiYgSVNfUkVWSUQocCwgc2luY2UsIHVudGlsKSkKPj4gKyNkZWZpbmUg
SVNfSlNMX0VITF9SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwKPj4gKwkoSVNfSlNMX0VITChwKSAm
JiBJU19SRVZJRChwLCBzaW5jZSwgdW50aWwpKQo+PiAgCj4+ICBlbnVtIHsKPj4gIAlUR0xfUkVW
SURfQTAsCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+PiBpbmRleCAyNDk3MzA1NjFiNmMuLjE2
ZDRlNzJiZWQwOSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
Ywo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCj4+IEBAIC04NDYsNiAr
ODQ2LDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gZWhsX2luZm8g
PSB7Cj4+ICAJLnBwZ3R0X3NpemUgPSAzNiwKPj4gIH07Cj4+ICAKPj4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8ganNsX2luZm8gPSB7Cj4+ICsJR0VOMTFfRkVBVFVSRVMs
Cj4+ICsJUExBVEZPUk0oSU5URUxfSkFTUEVSTEFLRSksCj4+ICsJLnJlcXVpcmVfZm9yY2VfcHJv
YmUgPSAxLAo+PiArCS5wbGF0Zm9ybV9lbmdpbmVfbWFzayA9IEJJVChSQ1MwKSB8IEJJVChCQ1Mw
KSB8IEJJVChWQ1MwKSB8IEJJVChWRUNTMCksCj4+ICsJLnBwZ3R0X3NpemUgPSAzNiwKPj4gK307
Cj4+ICsKPj4gICNkZWZpbmUgR0VOMTJfRkVBVFVSRVMgXAo+PiAgCUdFTjExX0ZFQVRVUkVTLCBc
Cj4+ICAJR0VOKDEyKSwgXAo+PiBAQCAtOTg1LDYgKzk5Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgcGNpX2RldmljZV9pZCBwY2lpZGxpc3RbXSA9IHsKPj4gIAlJTlRFTF9DTkxfSURTKCZjbmxf
aW5mbyksCj4+ICAJSU5URUxfSUNMXzExX0lEUygmaWNsX2luZm8pLAo+PiAgCUlOVEVMX0VITF9J
RFMoJmVobF9pbmZvKSwKPj4gKwlJTlRFTF9KU0xfSURTKCZqc2xfaW5mbyksCj4+ICAJSU5URUxf
VEdMXzEyX0lEUygmdGdsX2luZm8pLAo+PiAgCUlOVEVMX1JLTF9JRFMoJnJrbF9pbmZvKSwKPj4g
IAl7MCwgMCwgMH0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCj4+
IGluZGV4IGFkYzgzNmYxNWZkZS4uZTY3Y2VjOGZhMmFhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKPj4gQEAgLTYyLDYgKzYyLDcgQEAgc3RhdGljIGNv
bnN0IGNoYXIgKiBjb25zdCBwbGF0Zm9ybV9uYW1lc1tdID0gewo+PiAgCVBMQVRGT1JNX05BTUUo
Q0FOTk9OTEFLRSksCj4+ICAJUExBVEZPUk1fTkFNRShJQ0VMQUtFKSwKPj4gIAlQTEFURk9STV9O
QU1FKEVMS0hBUlRMQUtFKSwKPj4gKwlQTEFURk9STV9OQU1FKEpBU1BFUkxBS0UpLAo+PiAgCVBM
QVRGT1JNX05BTUUoVElHRVJMQUtFKSwKPj4gIAlQTEFURk9STV9OQU1FKFJPQ0tFVExBS0UpLAo+
PiAgCVBMQVRGT1JNX05BTUUoREcxKSwKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RldmljZV9pbmZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZp
Y2VfaW5mby5oCj4+IGluZGV4IDZhM2Q2MDcyMThhYS4uZDkyZmEwNDFjNzAwIDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKPj4gQEAgLTc5LDYgKzc5LDcg
QEAgZW51bSBpbnRlbF9wbGF0Zm9ybSB7Cj4+ICAJLyogZ2VuMTEgKi8KPj4gIAlJTlRFTF9JQ0VM
QUtFLAo+PiAgCUlOVEVMX0VMS0hBUlRMQUtFLAo+PiArCUlOVEVMX0pBU1BFUkxBS0UsCj4+ICAJ
LyogZ2VuMTIgKi8KPj4gIAlJTlRFTF9USUdFUkxBS0UsCj4+ICAJSU5URUxfUk9DS0VUTEFLRSwK
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMKPj4gaW5kZXggNmM5NzE5MmU5Y2E4Li5mMzFjMGRh
YmQwY2MgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jCj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jCj4+IEBAIC0xMTUsNyArMTE1
LDcgQEAgaW50ZWxfcGNoX3R5cGUoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LCB1bnNpZ25lZCBzaG9ydCBpZCkKPj4gIAkJcmV0dXJuIFBDSF9JQ1A7Cj4+ICAJY2FzZSBJ
TlRFTF9QQ0hfTUNDX0RFVklDRV9JRF9UWVBFOgo+PiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYt
PmRybSwgIkZvdW5kIE11bGUgQ3JlZWsgQ2FueW9uIFBDSFxuIik7Cj4+IC0JCWRybV9XQVJOX09O
KCZkZXZfcHJpdi0+ZHJtLCAhSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKTsKPj4gKwkJZHJtX1dB
Uk5fT04oJmRldl9wcml2LT5kcm0sICFJU19KU0xfRUhMKGRldl9wcml2KSk7Cj4+ICAJCXJldHVy
biBQQ0hfTUNDOwo+PiAgCWNhc2UgSU5URUxfUENIX1RHUF9ERVZJQ0VfSURfVFlQRToKPj4gIAlj
YXNlIElOVEVMX1BDSF9UR1AyX0RFVklDRV9JRF9UWVBFOgo+PiBAQCAtMTI2LDcgKzEyNiw3IEBA
IGludGVsX3BjaF90eXBlKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
dW5zaWduZWQgc2hvcnQgaWQpCj4+ICAJY2FzZSBJTlRFTF9QQ0hfSlNQX0RFVklDRV9JRF9UWVBF
Ogo+PiAgCWNhc2UgSU5URUxfUENIX0pTUDJfREVWSUNFX0lEX1RZUEU6Cj4+ICAJCWRybV9kYmdf
a21zKCZkZXZfcHJpdi0+ZHJtLCAiRm91bmQgSmFzcGVyIExha2UgUENIXG4iKTsKPj4gLQkJZHJt
X1dBUk5fT04oJmRldl9wcml2LT5kcm0sICFJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpOwo+PiAr
CQlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgIUlTX0pTTF9FSEwoZGV2X3ByaXYpKTsKPj4g
IAkJcmV0dXJuIFBDSF9KU1A7Cj4+ICAJZGVmYXVsdDoKPj4gIAkJcmV0dXJuIFBDSF9OT05FOwo+
PiBAQCAtMTU3LDcgKzE1Nyw3IEBAIGludGVsX3ZpcnRfZGV0ZWN0X3BjaChjb25zdCBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+ICAKPj4gIAlpZiAoSVNfVElHRVJMQUtFKGRl
dl9wcml2KSB8fCBJU19ST0NLRVRMQUtFKGRldl9wcml2KSkKPj4gIAkJaWQgPSBJTlRFTF9QQ0hf
VEdQX0RFVklDRV9JRF9UWVBFOwo+PiAtCWVsc2UgaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2
KSkKPj4gKwllbHNlIGlmIChJU19KU0xfRUhMKGRldl9wcml2KSkKPj4gIAkJaWQgPSBJTlRFTF9Q
Q0hfTUNDX0RFVklDRV9JRF9UWVBFOwo+PiAgCWVsc2UgaWYgKElTX0lDRUxBS0UoZGV2X3ByaXYp
KQo+PiAgCQlpZCA9IElOVEVMX1BDSF9JQ1BfREVWSUNFX0lEX1RZUEU7Cj4+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAo+
PiBpbmRleCAwOTU0NjNmZjdjYjkuLmEwNWVmNjM3NWM4MyAxMDA2NDQKPj4gLS0tIGEvaW5jbHVk
ZS9kcm0vaTkxNV9wY2lpZHMuaAo+PiArKysgYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCj4+
IEBAIC01NzksMTUgKzU3OSwxOCBAQAo+PiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTUxLCBpbmZv
KSwgXAo+PiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTVELCBpbmZvKQo+PiAgCj4+IC0vKiBFSEwv
SlNMICovCj4+ICsvKiBFSEwgKi8KPj4gICNkZWZpbmUgSU5URUxfRUhMX0lEUyhpbmZvKSBcCj4+
ICAJSU5URUxfVkdBX0RFVklDRSgweDQ1MDAsIGluZm8pLAlcCj4+ICAJSU5URUxfVkdBX0RFVklD
RSgweDQ1NzEsIGluZm8pLCBcCj4+ICAJSU5URUxfVkdBX0RFVklDRSgweDQ1NTEsIGluZm8pLCBc
Cj4+ICAJSU5URUxfVkdBX0RFVklDRSgweDQ1NDEsIGluZm8pLCBcCj4+IC0JSU5URUxfVkdBX0RF
VklDRSgweDRFNzEsIGluZm8pLCBcCj4+ICAJSU5URUxfVkdBX0RFVklDRSgweDQ1NTcsIGluZm8p
LCBcCj4+IC0JSU5URUxfVkdBX0RFVklDRSgweDQ1NTUsIGluZm8pLCBcCj4+ICsJSU5URUxfVkdB
X0RFVklDRSgweDQ1NTUsIGluZm8pCj4+ICsKPj4gKy8qIEpTTCAqLwo+PiArI2RlZmluZSBJTlRF
TF9KU0xfSURTKGluZm8pIFwKPj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4NEU3MSwgaW5mbyksIFwK
Pj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4NEU2MSwgaW5mbyksIFwKPj4gIAlJTlRFTF9WR0FfREVW
SUNFKDB4NEU1NywgaW5mbyksIFwKPj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4NEU1NSwgaW5mbyks
IFwKPj4gLS0gCj4+IDIuMjguMAo+PgpUaGFua3MsIHB1c2hlZC4gOikKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
