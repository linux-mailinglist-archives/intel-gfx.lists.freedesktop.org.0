Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E61D03A6CA9
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 19:04:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A863E6E04A;
	Mon, 14 Jun 2021 17:04:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C6776E04A;
 Mon, 14 Jun 2021 17:04:30 +0000 (UTC)
IronPort-SDR: RqwjaB/4bVku6eObzk3M55S3BTyTzTZhTbZsU69cmdXvy/+q5wmYrCzv88P4Qizij8wX2XC9UC
 kF8ABZ48vTCQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="291478236"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="291478236"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 10:04:29 -0700
IronPort-SDR: IkFlGlKLx5LGW+aCIzHPR8c9pXA8xoVBWfHN7eZyHFEViQMGf+S+s42Z6aDaEip9mQ0XGiOMGu
 w+txkH4Nrffw==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="451656420"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.254.188.63])
 ([10.254.188.63])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 10:04:29 -0700
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210610043649.144416-1-matthew.brost@intel.com>
 <20210610043649.144416-2-matthew.brost@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <8c17827d-69e6-99b6-d063-1f6fcd16aa9a@intel.com>
Date: Mon, 14 Jun 2021 10:04:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210610043649.144416-2-matthew.brost@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915/guc: Introduce unified HXG
 messages
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA2LzkvMjAyMSA5OjM2IFBNLCBNYXR0aGV3IEJyb3N0IHdyb3RlOgo+IEZyb206IE1pY2hh
bCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+Cj4gTmV3IEd1QyBmaXJt
d2FyZSB3aWxsIHVuaWZ5IGZvcm1hdCBvZiBNTUlPIGFuZCBDVEIgSDJHIG1lc3NhZ2VzLgo+IElu
dHJvZHVjZSB0aGVpciBkZWZpbml0aW9ucyBub3cgdG8gYWxsb3cgZ3JhZHVhbCB0cmFuc2l0aW9u
IG9mCj4gb3VyIGNvZGUgdG8gbWF0Y2ggbmV3IGNoYW5nZXMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBN
YXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBN
aWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBDYzogTWljaGHF
giBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+IC0tLQo+ICAgLi4uL2dw
dS9kcm0vaTkxNS9ndC91Yy9hYmkvZ3VjX21lc3NhZ2VzX2FiaS5oIHwgMjEzICsrKysrKysrKysr
KysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDIxMyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvYWJpL2d1Y19tZXNzYWdlc19hYmkuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2FiaS9ndWNfbWVzc2FnZXNfYWJpLmgKPiBpbmRl
eCA3NzVlMjFmMzA1OGMuLjI5YWM4MjNhY2Q0YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9hYmkvZ3VjX21lc3NhZ2VzX2FiaS5oCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvYWJpL2d1Y19tZXNzYWdlc19hYmkuaAo+IEBAIC02LDYgKzYsMjE5IEBA
Cj4gICAjaWZuZGVmIF9BQklfR1VDX01FU1NBR0VTX0FCSV9ICj4gICAjZGVmaW5lIF9BQklfR1VD
X01FU1NBR0VTX0FCSV9ICj4gICAKPiArLyoqCj4gKyAqIERPQzogSFhHIE1lc3NhZ2UKPiArICoK
PiArICogQWxsIG1lc3NhZ2VzIGV4Y2hhbmdlZCB3aXRoIEd1QyBhcmUgZGVmaW5lZCB1c2luZyAz
MiBiaXQgZHdvcmRzLgo+ICsgKiBGaXJzdCBkd29yZCBpcyB0cmVhdGVkIGFzIGEgbWVzc2FnZSBo
ZWFkZXIuIFJlbWFpbmluZyBkd29yZHMgYXJlIG9wdGlvbmFsLgo+ICsgKgo+ICsgKiAgKy0tLSst
LS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tKwo+ICsgKiAgfCAgIHwgQml0cyAgfCBEZXNjcmlwdGlvbiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ICsgKiAgKz09PSs9PT09
PT09Kz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09Kwo+ICsgKiAgfCAgIHwgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ICsgKiAgfCAwIHwgICAgMzEg
fCAqKk9SSUdJTioqIC0gb3JpZ2luYXRvciBvZiB0aGUgbWVzc2FnZSAgICAgICAgICAgICAgICAg
ICAgICAgfAo+ICsgKiAgfCAgIHwgICAgICAgfCAgIC0gX2BHVUNfSFhHX09SSUdJTl9IT1NUYCA9
IDAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ICsgKiAgfCAgIHwgICAgICAgfCAg
IC0gX2BHVUNfSFhHX09SSUdJTl9HVUNgID0gMSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfAo+ICsgKiAgfCAgIHwgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ICsgKiAgfCAgICstLS0tLS0tKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Kwo+ICsgKiAgfCAgIHwgMzA6MjggfCAqKlRZUEUqKiAtIG1lc3NhZ2UgdHlwZSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ICsgKiAgfCAgIHwgICAgICAgfCAgIC0gX2BH
VUNfSFhHX1RZUEVfUkVRVUVTVGAgPSAwICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+
ICsgKiAgfCAgIHwgICAgICAgfCAgIC0gX2BHVUNfSFhHX1RZUEVfRVZFTlRgID0gMSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfAo+ICsgKiAgfCAgIHwgICAgICAgfCAgIC0gX2BHVUNf
SFhHX1RZUEVfTk9fUkVTUE9OU0VfQlVTWWAgPSAzICAgICAgICAgICAgICAgICAgICAgfAo+ICsg
KiAgfCAgIHwgICAgICAgfCAgIC0gX2BHVUNfSFhHX1RZUEVfTk9fUkVTUE9OU0VfUkVUUllgID0g
NSAgICAgICAgICAgICAgICAgICAgfAo+ICsgKiAgfCAgIHwgICAgICAgfCAgIC0gX2BHVUNfSFhH
X1RZUEVfUkVTUE9OU0VfRkFJTFVSRWAgPSA2ICAgICAgICAgICAgICAgICAgICAgfAo+ICsgKiAg
fCAgIHwgICAgICAgfCAgIC0gX2BHVUNfSFhHX1RZUEVfUkVTUE9OU0VfU1VDQ0VTU2AgPSA3ICAg
ICAgICAgICAgICAgICAgICAgfAo+ICsgKiAgfCAgICstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKiAgfCAg
IHwgIDI3OjAgfCAqKkFVWCoqIC0gYXV4aWxpYXJ5IGRhdGEgKGRlcGVuZHMgb24gVFlQRSkgICAg
ICAgICAgICAgICAgICAgfAo+ICsgKiAgKy0tLSstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKiAgfCAxIHwg
IDMxOjAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfAo+ICsgKiAgKy0tLSstLS0tLS0tKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ICsgKiAgfC4uLnwgICAg
ICAgfCAqKlBBWUxPQUQqKiAtIG9wdGlvbmFsIHBheWxvYWQgKGRlcGVuZHMgb24gVFlQRSkgICAg
ICAgICAgICAgfAo+ICsgKiAgKy0tLSstLS0tLS0tKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ICsgKiAgfCBuIHwgIDMxOjAg
fCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfAo+ICsgKiAgKy0tLSstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKi8KPiArCj4gKyNkZWZpbmUg
R1VDX0hYR19NU0dfTUlOX0xFTgkJCTF1Cj4gKyNkZWZpbmUgR1VDX0hYR19NU0dfMF9PUklHSU4J
CQkoMHgxIDw8IDMxKQo+ICsjZGVmaW5lICAgR1VDX0hYR19PUklHSU5fSE9TVAkJCTB1Cj4gKyNk
ZWZpbmUgICBHVUNfSFhHX09SSUdJTl9HVUMJCQkxdQo+ICsjZGVmaW5lIEdVQ19IWEdfTVNHXzBf
VFlQRQkJCSgweDcgPDwgMjgpCj4gKyNkZWZpbmUgICBHVUNfSFhHX1RZUEVfUkVRVUVTVAkJCTB1
Cj4gKyNkZWZpbmUgICBHVUNfSFhHX1RZUEVfRVZFTlQJCQkxdQo+ICsjZGVmaW5lICAgR1VDX0hY
R19UWVBFX05PX1JFU1BPTlNFX0JVU1kJCTN1Cj4gKyNkZWZpbmUgICBHVUNfSFhHX1RZUEVfTk9f
UkVTUE9OU0VfUkVUUlkJNXUKPiArI2RlZmluZSAgIEdVQ19IWEdfVFlQRV9SRVNQT05TRV9GQUlM
VVJFCQk2dQo+ICsjZGVmaW5lICAgR1VDX0hYR19UWVBFX1JFU1BPTlNFX1NVQ0NFU1MJCTd1Cj4g
KyNkZWZpbmUgR1VDX0hYR19NU0dfMF9BVVgJCQkoMHhmZmZmZmZmIDw8IDApCj4gKyNkZWZpbmUg
R1VDX0hYR19NU0dfbl9QQVlMT0FECQkJKDB4ZmZmZmZmZmYgPDwgMCkKPiArCj4gKy8qKgo+ICsg
KiBET0M6IEhYRyBSZXF1ZXN0Cj4gKyAqCj4gKyAqIFRoZSBgSFhHIFJlcXVlc3RgXyBtZXNzYWdl
IHNob3VsZCBiZSB1c2VkIHRvIGluaXRpYXRlIHN5bmNocm9ub3VzIGFjdGl2aXR5Cj4gKyAqIGZv
ciB3aGljaCBjb25maXJtYXRpb24gb3IgcmV0dXJuIGRhdGEgaXMgZXhwZWN0ZWQuCj4gKyAqCj4g
KyAqIFRoZSByZWNpcGllbnQgb2YgdGhpcyBtZXNzYWdlIHNoYWxsIHVzZSBgSFhHIFJlc3BvbnNl
YF8sIGBIWEcgRmFpbHVyZWBfCj4gKyAqIG9yIGBIWEcgUmV0cnlgXyBtZXNzYWdlIGFzIGEgZGVm
aW5pdGUgcmVwbHksIGFuZCBtYXkgdXNlIGBIWEcgQnVzeWBfCj4gKyAqIG1lc3NhZ2UgYXMgYSBp
bnRlcm1lZGlhdGUgcmVwbHkuCj4gKyAqCj4gKyAqIEZvcm1hdCBvZiBAREFUQTAgYW5kIGFsbCBA
REFUQW4gZmllbGRzIGRlcGVuZHMgb24gdGhlIEBBQ1RJT04gY29kZS4KPiArICoKPiArICogICst
LS0rLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLSsKPiArICogIHwgICB8IEJpdHMgIHwgRGVzY3JpcHRpb24gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiArICogICs9PT0r
PT09PT09PSs9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PSsKPiArICogIHwgMCB8ICAgIDMxIHwgT1JJR0lOICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiArICogIHwgICArLS0t
LS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLSsKPiArICogIHwgICB8IDMwOjI4IHwgVFlQRSA9IEdVQ19IWEdfVFlQRV9SRVFV
RVNUXyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiArICogIHwgICArLS0tLS0t
LSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLSsKPiArICogIHwgICB8IDI3OjE2IHwgKipEQVRBMCoqIC0gcmVxdWVzdCBkYXRhIChk
ZXBlbmRzIG9uIEFDVElPTikgICAgICAgICAgICAgICAgIHwKPiArICogIHwgICArLS0tLS0tLSst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLSsKPiArICogIHwgICB8ICAxNTowIHwgKipBQ1RJT04qKiAtIHJlcXVlc3RlZCBhY3Rpb24g
Y29kZSAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiArICogICstLS0rLS0tLS0tLSstLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LSsKPiArICogIHwgMSB8ICAzMTowIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiArICogICstLS0rLS0tLS0tLSsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwK
PiArICogIHwuLi58ICAgICAgIHwgKipEQVRBbioqIC0gb3B0aW9uYWwgZGF0YSAoZGVwZW5kcyBv
biBBQ1RJT04pICAgICAgICAgICAgICAgIHwKPiArICogICstLS0rLS0tLS0tLSsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiAr
ICogIHwgbiB8ICAzMTowIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwKPiArICogICstLS0rLS0tLS0tLSstLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKPiArICov
Cj4gKwo+ICsjZGVmaW5lIEdVQ19IWEdfUkVRVUVTVF9NU0dfTUlOX0xFTgkJR1VDX0hYR19NU0df
TUlOX0xFTgo+ICsjZGVmaW5lIEdVQ19IWEdfUkVRVUVTVF9NU0dfMF9EQVRBMAkJKDB4ZmZmIDw8
IDE2KQo+ICsjZGVmaW5lIEdVQ19IWEdfUkVRVUVTVF9NU0dfMF9BQ1RJT04JCSgweGZmZmYgPDwg
MCkKPiArI2RlZmluZSBHVUNfSFhHX1JFUVVFU1RfTVNHX25fREFUQW4JCUdVQ19IWEdfTVNHX25f
UEFZTE9BRAo+ICsKPiArLyoqCj4gKyAqIERPQzogSFhHIEV2ZW50Cj4gKyAqCj4gKyAqIFRoZSBg
SFhHIEV2ZW50YF8gbWVzc2FnZSBzaG91bGQgYmUgdXNlZCB0byBpbml0aWF0ZSBhc3luY2hyb25v
dXMgYWN0aXZpdHkKPiArICogdGhhdCBkb2VzIG5vdCBpbnZvbHZlcyBpbW1lZGlhdGUgY29uZmly
bWF0aW9uIG5vciBkYXRhLgo+ICsgKgo+ICsgKiBGb3JtYXQgb2YgQERBVEEwIGFuZCBhbGwgQERB
VEFuIGZpZWxkcyBkZXBlbmRzIG9uIHRoZSBAQUNUSU9OIGNvZGUuCj4gKyAqCj4gKyAqICArLS0t
Ky0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0rCj4gKyAqICB8ICAgfCBCaXRzICB8IERlc2NyaXB0aW9uICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gKyAqICArPT09Kz09
PT09PT0rPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0rCj4gKyAqICB8IDAgfCAgICAzMSB8IE9SSUdJTiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gKyAqICB8ICAgKy0tLS0t
LS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0rCj4gKyAqICB8ICAgfCAzMDoyOCB8IFRZUEUgPSBHVUNfSFhHX1RZUEVfRVZFTlRf
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gKyAqICB8ICAgKy0tLS0tLS0r
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0rCj4gKyAqICB8ICAgfCAyNzoxNiB8ICoqREFUQTAqKiAtIGV2ZW50IGRhdGEgKGRlcGVu
ZHMgb24gQUNUSU9OKSAgICAgICAgICAgICAgICAgICB8Cj4gKyAqICB8ICAgKy0tLS0tLS0rLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0rCj4gKyAqICB8ICAgfCAgMTU6MCB8ICoqQUNUSU9OKiogLSBldmVudCBhY3Rpb24gY29kZSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gKyAqICArLS0tKy0tLS0tLS0rLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0r
Cj4gKyAqICB8IDEgfCAgMzE6MCB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gKyAqICArLS0tKy0tLS0tLS0rICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4g
KyAqICB8Li4ufCAgICAgICB8ICoqREFUQW4qKiAtIG9wdGlvbmFsIGV2ZW50ICBkYXRhIChkZXBl
bmRzIG9uIEFDVElPTikgICAgICAgICB8Cj4gKyAqICArLS0tKy0tLS0tLS0rICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gKyAq
ICB8IG4gfCAgMzE6MCB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8Cj4gKyAqICArLS0tKy0tLS0tLS0rLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4gKyAqLwo+
ICsKPiArI2RlZmluZSBHVUNfSFhHX0VWRU5UX01TR19NSU5fTEVOCQlHVUNfSFhHX01TR19NSU5f
TEVOCj4gKyNkZWZpbmUgR1VDX0hYR19FVkVOVF9NU0dfMF9EQVRBMAkJKDB4ZmZmIDw8IDE2KQo+
ICsjZGVmaW5lIEdVQ19IWEdfRVZFTlRfTVNHXzBfQUNUSU9OCQkoMHhmZmZmIDw8IDApCj4gKyNk
ZWZpbmUgR1VDX0hYR19FVkVOVF9NU0dfbl9EQVRBbgkJR1VDX0hYR19NU0dfbl9QQVlMT0FECj4g
Kwo+ICsvKioKPiArICogRE9DOiBIWEcgQnVzeQo+ICsgKgo+ICsgKiBUaGUgYEhYRyBCdXN5YF8g
bWVzc2FnZSBtYXkgYmUgdXNlZCB0byBhY2tub3dsZWRnZSByZWNlcHRpb24gb2YgdGhlIGBIWEcg
UmVxdWVzdGBfCj4gKyAqIG1lc3NhZ2UgaWYgdGhlIHJlY2lwaWVudCBleHBlY3RzIHRoYXQgaXQg
cHJvY2Vzc2luZyB3aWxsIGJlIGxvbmdlciB0aGFuIGRlZmF1bHQKPiArICogdGltZW91dC4KPiAr
ICoKPiArICogVGhlIEBDT1VOVEVSIGZpZWxkIG1heSBiZSB1c2VkIGFzIGEgcHJvZ3Jlc3MgaW5k
aWNhdG9yLgo+ICsgKgo+ICsgKiAgKy0tLSstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKiAgfCAgIHwgQml0
cyAgfCBEZXNjcmlwdGlvbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfAo+ICsgKiAgKz09PSs9PT09PT09Kz09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Kwo+ICsgKiAgfCAwIHwgICAgMzEg
fCBPUklHSU4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfAo+ICsgKiAgfCAgICstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKiAgfCAgIHwgMzA6MjggfCBU
WVBFID0gR1VDX0hYR19UWVBFX05PX1JFU1BPTlNFX0JVU1lfICAgICAgICAgICAgICAgICAgICAg
ICAgfAo+ICsgKiAgfCAgICstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKiAgfCAgIHwgIDI3OjAgfCAqKkNP
VU5URVIqKiAtIHByb2dyZXNzIGluZGljYXRvciAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fAo+ICsgKiAgKy0tLSstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKi8KPiArCj4gKyNkZWZpbmUgR1VDX0hY
R19CVVNZX01TR19MRU4JCQlHVUNfSFhHX01TR19NSU5fTEVOCj4gKyNkZWZpbmUgR1VDX0hYR19C
VVNZX01TR18wX0NPVU5URVIJCUdVQ19IWEdfTVNHXzBfQVVYCj4gKwo+ICsvKioKPiArICogRE9D
OiBIWEcgUmV0cnkKPiArICoKPiArICogVGhlIGBIWEcgUmV0cnlgXyBtZXNzYWdlIHNob3VsZCBi
ZSB1c2VkIGJ5IHJlY2lwaWVudCB0byBpbmRpY2F0ZSB0aGF0IHRoZQo+ICsgKiBgSFhHIFJlcXVl
c3RgXyBtZXNzYWdlIHdhcyBkcm9wcGVkIGFuZCBpdCBzaG91bGQgYmUgcmVzZW50IGFnYWluLgo+
ICsgKgo+ICsgKiBUaGUgQFJFQVNPTiBmaWVsZCBtYXkgYmUgdXNlZCB0byBwcm92aWRlIGFkZGl0
aW9uYWwgaW5mb3JtYXRpb24uCj4gKyAqCj4gKyAqICArLS0tKy0tLS0tLS0rLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4gKyAq
ICB8ICAgfCBCaXRzICB8IERlc2NyaXB0aW9uICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8Cj4gKyAqICArPT09Kz09PT09PT0rPT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0rCj4gKyAqICB8
IDAgfCAgICAzMSB8IE9SSUdJTiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8Cj4gKyAqICB8ICAgKy0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4gKyAqICB8ICAg
fCAzMDoyOCB8IFRZUEUgPSBHVUNfSFhHX1RZUEVfTk9fUkVTUE9OU0VfUkVUUllfICAgICAgICAg
ICAgICAgICAgICAgICB8Cj4gKyAqICB8ICAgKy0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4gKyAqICB8ICAgfCAg
Mjc6MCB8ICoqUkVBU09OKiogLSByZWFzb24gZm9yIHJldHJ5ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8Cj4gKyAqICB8ICAgfCAgICAgICB8ICAtIF9gR1VDX0hYR19SRVRSWV9SRUFT
T05fVU5TUEVDSUZJRURgID0gMCAgICAgICAgICAgICAgICAgICB8Cj4gKyAqICArLS0tKy0tLS0t
LS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0rCj4gKyAqLwo+ICsKPiArI2RlZmluZSBHVUNfSFhHX1JFVFJZX01TR19MRU4JCQlH
VUNfSFhHX01TR19NSU5fTEVOCj4gKyNkZWZpbmUgR1VDX0hYR19SRVRSWV9NU0dfMF9SRUFTT04J
CUdVQ19IWEdfTVNHXzBfQVVYCj4gKyNkZWZpbmUgICBHVUNfSFhHX1JFVFJZX1JFQVNPTl9VTlNQ
RUNJRklFRAkwdQoKSSB0aG91Z2h0IHdlIGhhZCBhZ3JlZWQgdG8gcmVtb3ZlIHRoZSBlbnRyaWVz
IHRoYXQgaGFkbid0IHlldCBsYW5kZWQgaW4gCnRoZSBvZmZpY2lhbCBzcGVjcywgaS5lLiB0aGUg
cmVhc29uIGhlcmU/IE5vdCBhIGJsb2NrZXIgZ2l2ZW4gdGhhdCB0aGUgCm9ubHkgZGVmaW5lZCBj
YXNlcyBtYXRjaGVzIHRoZSBNQlosIGJ1dCBpZiB5b3UgbmVlZCB0byBkbyBhbm90aGVyIHNwaW4g
CmJldHRlciB0byByZW1vdmUgaXQgZm9yIG5vdy4KClJldmlld2VkLWJ5OiBEYW5pZWxlIENlcmFv
bG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgoKRGFuaWVsZQoKPiAr
Cj4gKy8qKgo+ICsgKiBET0M6IEhYRyBGYWlsdXJlCj4gKyAqCj4gKyAqIFRoZSBgSFhHIEZhaWx1
cmVgXyBtZXNzYWdlIHNoYWxsIGJlIHVzZWQgYXMgYSByZXBseSB0byB0aGUgYEhYRyBSZXF1ZXN0
YF8KPiArICogbWVzc2FnZSB0aGF0IGNvdWxkIG5vdCBiZSBwcm9jZXNzZWQgZHVlIHRvIGFuIGVy
cm9yLgo+ICsgKgo+ICsgKiAgKy0tLSstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKiAgfCAgIHwgQml0cyAg
fCBEZXNjcmlwdGlvbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfAo+ICsgKiAgKz09PSs9PT09PT09Kz09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Kwo+ICsgKiAgfCAwIHwgICAgMzEgfCBP
UklHSU4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfAo+ICsgKiAgfCAgICstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKiAgfCAgIHwgMzA6MjggfCBUWVBF
ID0gR1VDX0hYR19UWVBFX1JFU1BPTlNFX0ZBSUxVUkVfICAgICAgICAgICAgICAgICAgICAgICAg
fAo+ICsgKiAgfCAgICstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKiAgfCAgIHwgMjc6MTYgfCAqKkhJTlQq
KiAtIGFkZGl0aW9uYWwgZXJyb3IgaGludCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+
ICsgKiAgfCAgICstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKiAgfCAgIHwgIDE1OjAgfCAqKkVSUk9SKiog
LSBlcnJvci9yZXN1bHQgY29kZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+ICsg
KiAgKy0tLSstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+ICsgKi8KPiArCj4gKyNkZWZpbmUgR1VDX0hYR19GQUlM
VVJFX01TR19MRU4JCQlHVUNfSFhHX01TR19NSU5fTEVOCj4gKyNkZWZpbmUgR1VDX0hYR19GQUlM
VVJFX01TR18wX0hJTlQJCSgweGZmZiA8PCAxNikKPiArI2RlZmluZSBHVUNfSFhHX0ZBSUxVUkVf
TVNHXzBfRVJST1IJCSgweGZmZmYgPDwgMCkKPiArCj4gKy8qKgo+ICsgKiBET0M6IEhYRyBSZXNw
b25zZQo+ICsgKgo+ICsgKiBUaGUgYEhYRyBSZXNwb25zZWBfIG1lc3NhZ2Ugc2hhbGwgYmUgdXNl
ZCBhcyBhIHJlcGx5IHRvIHRoZSBgSFhHIFJlcXVlc3RgXwo+ICsgKiBtZXNzYWdlIHRoYXQgd2Fz
IHN1Y2Nlc3NmdWxseSBwcm9jZXNzZWQgd2l0aG91dCBhbiBlcnJvci4KPiArICoKPiArICogICst
LS0rLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLSsKPiArICogIHwgICB8IEJpdHMgIHwgRGVzY3JpcHRpb24gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiArICogICs9PT0r
PT09PT09PSs9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PSsKPiArICogIHwgMCB8ICAgIDMxIHwgT1JJR0lOICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiArICogIHwgICArLS0t
LS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLSsKPiArICogIHwgICB8IDMwOjI4IHwgVFlQRSA9IEdVQ19IWEdfVFlQRV9SRVNQ
T05TRV9TVUNDRVNTXyAgICAgICAgICAgICAgICAgICAgICAgIHwKPiArICogIHwgICArLS0tLS0t
LSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLSsKPiArICogIHwgICB8ICAyNzowIHwgKipEQVRBMCoqIC0gZGF0YSAoZGVwZW5kcyBv
biBBQ1RJT04gZnJvbSBgSFhHIFJlcXVlc3RgXykgICAgIHwKPiArICogICstLS0rLS0tLS0tLSst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLSsKPiArICogIHwgMSB8ICAzMTowIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiArICogICstLS0rLS0tLS0tLSsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwKPiArICogIHwuLi58ICAgICAgIHwgKipEQVRBbioqIC0gZGF0YSAoZGVwZW5kcyBvbiBBQ1RJ
T04gZnJvbSBgSFhHIFJlcXVlc3RgXykgICAgIHwKPiArICogICstLS0rLS0tLS0tLSsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwK
PiArICogIHwgbiB8ICAzMTowIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiArICogICstLS0rLS0tLS0tLSstLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKPiAr
ICovCj4gKwo+ICsjZGVmaW5lIEdVQ19IWEdfUkVTUE9OU0VfTVNHX01JTl9MRU4JCUdVQ19IWEdf
TVNHX01JTl9MRU4KPiArI2RlZmluZSBHVUNfSFhHX1JFU1BPTlNFX01TR18wX0RBVEEwCQlHVUNf
SFhHX01TR18wX0FVWAo+ICsjZGVmaW5lIEdVQ19IWEdfUkVTUE9OU0VfTVNHX25fREFUQW4JCUdV
Q19IWEdfTVNHX25fUEFZTE9BRAo+ICsKPiArLyogZGVwcmVjYXRlZCAqLwo+ICAgI2RlZmluZSBJ
TlRFTF9HVUNfTVNHX1RZUEVfU0hJRlQJMjgKPiAgICNkZWZpbmUgSU5URUxfR1VDX01TR19UWVBF
X01BU0sJCSgweEYgPDwgSU5URUxfR1VDX01TR19UWVBFX1NISUZUKQo+ICAgI2RlZmluZSBJTlRF
TF9HVUNfTVNHX0RBVEFfU0hJRlQJMTYKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
