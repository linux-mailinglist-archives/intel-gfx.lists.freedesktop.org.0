Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAA726A0EC
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 10:31:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7925889D43;
	Tue, 15 Sep 2020 08:31:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A2F089D43
 for <Intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 08:31:15 +0000 (UTC)
IronPort-SDR: Mo99YwPsoONkHs03XxV9ntBgqqCuzKLMpm184MfZlSstfmAc6E5PGKeyZxPIs6uEoE8ewEcFhl
 sIEC84tNUWGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="156612310"
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="156612310"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 01:31:15 -0700
IronPort-SDR: m5uwOcxg8dXM6sMIv3fW5OesaSteOppplX2z1PJHIZDM8f32NOiTqtCWNcxVEh/3kYKJQ63zEi
 WssfTGDEryyg==
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="482680545"
Received: from oshaham-mobl.ger.corp.intel.com (HELO [10.214.241.3])
 ([10.214.241.3])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 01:31:11 -0700
To: Lu Baolu <baolu.lu@linux.intel.com>, Joerg Roedel <joro@8bytes.org>,
 Tom Murphy <murphyt7@tcd.ie>, David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
References: <20200912032200.11489-1-baolu.lu@linux.intel.com>
 <51a1baec-48d1-c0ac-181b-1fba92aa428d@linux.intel.com>
 <001f4446-7c43-9832-42d8-55dc4a13c2ae@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9173fed9-e60f-5189-e17d-b23bfabdaa38@linux.intel.com>
Date: Tue, 15 Sep 2020 09:31:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <001f4446-7c43-9832-42d8-55dc4a13c2ae@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 0/6] Convert the intel iommu driver to
 the dma-iommu api
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
Cc: Intel-gfx@lists.freedesktop.org, Ashok Raj <ashok.raj@intel.com>,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE1LzA5LzIwMjAgMDI6NDcsIEx1IEJhb2x1IHdyb3RlOgo+IEhpIFR2cnRrbywKPiAKPiBP
biA5LzE0LzIwIDQ6MDQgUE0sIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+Pgo+PiBIaSwKPj4KPj4g
T24gMTIvMDkvMjAyMCAwNDoyMSwgTHUgQmFvbHUgd3JvdGU6Cj4+PiBUb20gTXVycGh5IGhhcyBh
bG1vc3QgZG9uZSBhbGwgdGhlIHdvcmsuIEhpcyBsYXRlc3QgcGF0Y2ggc2VyaWVzIHdhcwo+Pj4g
cG9zdGVkIGhlcmUuCj4+Pgo+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtaW9tbXUv
MjAyMDA5MDMyMDE4MzkuNzMyNy0xLW11cnBoeXQ3QHRjZC5pZS8gCj4+Pgo+Pj4KPj4+IFRoYW5r
cyBhIGxvdCEKPj4+Cj4+PiBUaGlzIHNlcmllcyBpcyBhIGZvbGxvdy11cCB3aXRoIGJlbG93IGNo
YW5nZXM6Cj4+Pgo+Pj4gMS4gQWRkIGEgcXVpcmsgZm9yIHRoZSBpOTE1IGRyaXZlciBpc3N1ZSBk
ZXNjcmliZWQgaW4gVG9tJ3MgY292ZXIKPj4+IGxldHRlci4KPj4KPj4gTGFzdCB3ZWVrIEkgaGF2
ZSBjb3BpZWQgeW91IG9uIGFuIGk5MTUgc2VyaWVzIHdoaWNoIGFwcGVhcnMgdG8gcmVtb3ZlIAo+
PiB0aGUgbmVlZCBmb3IgdGhpcyBxdWlyay4gc28gaWYgd2UgZ2V0IHRob3NlIGk5MTUgcGF0Y2hl
cyByZXZpZXdlZCBhbmQgCj4+IG1lcmdlZCwgZG8geW91IHN0aWxsIHdhbnQgdG8gcHVyc3VlIHRo
aXMgcXVpcms/Cj4gCj4gSXQncyB1cCB0byB0aGUgZ3JhcGhpYyBndXlzLiBJIGRvbid0IGtub3cg
dGhlIGRldGFpbHMgaW4gaTkxNSBkcml2ZXIuCj4gSSBkb24ndCB0aGluayBteSB0ZXN0cyBjb3Vs
ZCBjb3ZlciBhbGwgY2FzZXMuCgpJIGFtIHRoZSBncmFwaGljIGd1eS4gOikgSSBqdXN0IG5lZWQg
c29tZSByZXZpZXdzIChpbnRlcm5hbGx5KSBmb3IgbXkgCnNlcmllcyBhbmQgdGhlbiB3ZSBjYW4g
bWVyZ2UgaXQsIGF0IHdoaWNoIHBvaW50IHlvdSBkb24ndCBuZWVkIHRoZSBxdWlyayAKcGF0Y2gg
YW55IG1vcmUuIEknbGwgdHJ5IHRvIGFjY2VsZXJhdGUgdGhpcy4KCldpdGggcmVnYXJkcyB0byB0
ZXN0aW5nLCB5b3UgY291bGQgc2VuZCB5b3VyIHNlcmllcyB3aXRoIG15IHBhdGNoZXMgb24gCnRv
cCB0byBvdXIgdHJ5Ym90IG1haWxpbmcgbGlzdCAoaW50ZWwtZ2Z4LXRyeWJvdEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcgLyAKaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Byb2plY3Qv
aW50ZWwtZ2Z4LXRyeWJvdC9zZXJpZXMvP29yZGVyaW5nPS1sYXN0X3VwZGF0ZWQpIAp3aGljaCB3
b3VsZCBzaG93IHlvdSBpZiBpdCBpcyBzdGlsbCBoaXR0aW5nIHRoZSBETUFSIGlzc3VlcyBpbiBp
OTE1LgoKPj4KPj4+IDIuIEZpeCBzZXZlcmFsIGJ1Z3MgaW4gcGF0Y2ggImlvbW11OiBBbGxvdyB0
aGUgZG1hLWlvbW11IGFwaSB0byB1c2UKPj4+IGJvdW5jZSBidWZmZXJzIiB0byBtYWtlIHRoZSBi
b3VuY2UgYnVmZmVyIHdvcmsgZm9yIHVudHJ1c3RlZCBkZXZpY2VzLgo+Pj4gMy4gU2V2ZXJhbCBj
bGVhbnVwcyBpbiBpb21tdS92dC1kIGRyaXZlciBhZnRlciB0aGUgY29udmVyc2lvbi4KPj4KPj4g
V2l0aCB0aGUgcHJldmlvdXMgdmVyc2lvbiBvZiB0aGUgc2VyaWVzIEkgaGl0IGEgcHJvYmxlbSBv
biBJdnlicmlkZ2UgCj4+IHdoZXJlIGFwcGFyZW50bHkgdGhlIGRtYSBlbmdpbmUgd2lkdGggaXMg
bm90IHJlc3BlY3RlZC4gQXQgbGVhc3QgdGhhdCAKPj4gaXMgbXkgbGF5bWFuIGludGVycHJldGF0
aW9uIG9mIHRoZSBlcnJvcnMuIEZyb20gdGhlIG9sZGVyIHRocmVhZDoKPj4KPj4gPDM+IFsyMDku
NTI2NjA1XSBETUFSOiBpbnRlbF9pb21tdV9tYXA6IGlvbW11IHdpZHRoICgzOSkgaXMgbm90IAo+
PiBzdWZmaWNpZW50IGZvciB0aGUgbWFwcGVkIGFkZHJlc3MgKGZmZmYwMDgwMDApCj4+Cj4+IFJl
bGV2YW50IGlvbW11IGJvb3QgcmVsYXRlZCBtZXNzYWdlcyBhcmU6Cj4+Cj4+IDw2PlvCoMKgwqAg
MC4xODQyMzRdIERNQVI6IEhvc3QgYWRkcmVzcyB3aWR0aCAzNgo+PiA8Nj5bwqDCoMKgIDAuMTg0
MjQ1XSBETUFSOiBEUkhEIGJhc2U6IDB4MDAwMDAwZmVkOTAwMDAgZmxhZ3M6IDB4MAo+PiA8Nj5b
wqDCoMKgIDAuMTg0Mjg4XSBETUFSOiBkbWFyMDogcmVnX2Jhc2VfYWRkciBmZWQ5MDAwMCB2ZXIg
MTowIGNhcCAKPj4gYzAwMDAwMjBlNjAyNjIgZWNhcCBmMDEwMWEKPj4gPDY+W8KgwqDCoCAwLjE4
NDMwOF0gRE1BUjogRFJIRCBiYXNlOiAweDAwMDAwMGZlZDkxMDAwIGZsYWdzOiAweDEKPj4gPDY+
W8KgwqDCoCAwLjE4NDMzN10gRE1BUjogZG1hcjE6IHJlZ19iYXNlX2FkZHIgZmVkOTEwMDAgdmVy
IDE6MCBjYXAgCj4+IGM5MDA4MDIwNjYwMjYyIGVjYXAgZjAxMDVhCj4+IDw2PlvCoMKgwqAgMC4x
ODQzNTddIERNQVI6IFJNUlIgYmFzZTogMHgwMDAwMDBkOGQyODAwMCBlbmQ6IDB4MDAwMDAwZDhk
NDZmZmYKPj4gPDY+W8KgwqDCoCAwLjE4NDM3N10gRE1BUjogUk1SUiBiYXNlOiAweDAwMDAwMGRi
MDAwMDAwIGVuZDogMHgwMDAwMDBkZjFmZmZmZgo+PiA8Nj5bwqDCoMKgIDAuMTg0Mzk4XSBETUFS
LUlSOiBJT0FQSUMgaWQgMiB1bmRlciBEUkhEIGJhc2XCoCAweGZlZDkxMDAwIAo+PiBJT01NVSAx
Cj4+IDw2PlvCoMKgwqAgMC4xODQ0MTRdIERNQVItSVI6IEhQRVQgaWQgMCB1bmRlciBEUkhEIGJh
c2UgMHhmZWQ5MTAwMAo+PiA8Nj5bwqDCoMKgIDAuMTg0NDI4XSBETUFSLUlSOiBRdWV1ZWQgaW52
YWxpZGF0aW9uIHdpbGwgYmUgZW5hYmxlZCB0byAKPj4gc3VwcG9ydCB4MmFwaWMgYW5kIEludHIt
cmVtYXBwaW5nLgo+PiA8Nj5bwqDCoMKgIDAuMTg1MTczXSBETUFSLUlSOiBFbmFibGVkIElSUSBy
ZW1hcHBpbmcgaW4geDJhcGljIG1vZGUKPj4KPj4gPDY+W8KgwqDCoCAwLjg3ODkzNF0gRE1BUjog
Tm8gQVRTUiBmb3VuZAo+PiA8Nj5bwqDCoMKgIDAuODc4OTY2XSBETUFSOiBkbWFyMDogVXNpbmcg
UXVldWVkIGludmFsaWRhdGlvbgo+PiA8Nj5bwqDCoMKgIDAuODc5MDA3XSBETUFSOiBkbWFyMTog
VXNpbmcgUXVldWVkIGludmFsaWRhdGlvbgo+Pgo+PiA8Nj5bwqDCoMKgIDAuOTE1MDMyXSBETUFS
OiBJbnRlbChSKSBWaXJ0dWFsaXphdGlvbiBUZWNobm9sb2d5IGZvciAKPj4gRGlyZWN0ZWQgSS9P
Cj4+IDw2PlvCoMKgwqAgMC45MTUwNjBdIFBDSS1ETUE6IFVzaW5nIHNvZnR3YXJlIGJvdW5jZSBi
dWZmZXJpbmcgZm9yIElPIAo+PiAoU1dJT1RMQikKPj4gPDY+W8KgwqDCoCAwLjkxNTA4NF0gc29m
dHdhcmUgSU8gVExCOiBtYXBwZWQgW21lbSAweGM4MGQ0MDAwLTB4Y2MwZDQwMDBdIAo+PiAoNjRN
QikKPj4KPj4gKEZ1bGwgYm9vdCBsb2cgYXQgCj4+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvVHJ5Ym90XzcwNTQvZmktaXZiLTM3NzAvYm9vdDAudHh0LCAKPj4gZmFp
bHVyZXMgYXQgCj4+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvVHJ5
Ym90XzcwNTQvZmktaXZiLTM3NzAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBibHQuaHRtbC4pIAo+
Pgo+Pgo+PiBEb2VzIHRoaXMgbG9vayBmYW1pbGlhciBvciBhdCBsZWFzdCBwbGF1c2libGUgdG8g
eW91PyBJcyB0aGlzIAo+PiBzb21ldGhpbmcgeW91ciBuZXcgc2VyaWVzIGhhcyBmaXhlZD8KPiAK
PiBUaGlzIGhhcHBlbnMgZHVyaW5nIGF0dGFjaGluZyBhIGRvbWFpbiB0byBkZXZpY2UuIEl0IGhh
cyBub3RoaW5nIHRvIGRvCj4gd2l0aCB0aGlzIHBhdGNoIHNlcmllcy4gSSB3aWxsIGxvb2sgaW50
byB0aGlzIGlzc3VlLCBidXQgbm90IGluIHRoaXMKPiBlbWFpbCB0aHJlYWQgY29udGV4dC4KCkkg
YW0gbm90IHN1cmUgd2hhdCBzdGVwIGlzIGF0dGFjaGluZyBkb21haW4gdG8gZGV2aWNlLCBidXQg
dGhlc2UgdHlwZSAKbWVzc2FnZXM6Cgo8Mz4gWzIwOS41MjY2MDVdIERNQVI6IGludGVsX2lvbW11
X21hcDogaW9tbXUgd2lkdGggKDM5KSBpcyBub3QKID4+IHN1ZmZpY2llbnQgZm9yIHRoZSBtYXBw
ZWQgYWRkcmVzcyAoZmZmZjAwODAwMCkKClRoZXkgZGVmaW5pdGVseSBhcHBlYXIgdG8gaGFwcGVu
IGF0IHJ1bnRpbWUsIGFzIGk5MTUgaXMgZ2V0dGluZyAKZXhlcmNpc2VkIGJ5IHVzZXJzcGFjZS4K
ClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
