Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9333BA0FC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 15:12:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D58206E17C;
	Fri,  2 Jul 2021 13:12:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [IPv6:2a01:e0c:1:1599::14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70CC26E17C;
 Fri,  2 Jul 2021 13:12:35 +0000 (UTC)
Received: from [192.168.1.190] (unknown [91.155.165.229])
 (Authenticated sender: martin.peres@free.fr)
 by smtp5-g21.free.fr (Postfix) with ESMTPSA id 9332E5FF3F;
 Fri,  2 Jul 2021 15:12:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
 s=smtp-20201208; t=1625231554;
 bh=vKUM2f1Cw/W/uNwyZOwCq0u1SM1S7vnk+jenXPOPh3c=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=MA3M9rghZtdIeCSraQN7EgQdKLPUoH0cqhwwEDs5p4+hDQjPV+fhIafFJzPvohke5
 /KCriOnAzznOlrkGjkl0Eo1cjVRvCu5TntcPu3HOxNUlQ2AGvW5nfDx+KQSp7f8idA
 Q9wJiEc+yoi0G7EbIrr8k7corACi+PYNP48l+05k5/F6a0Zqc6A9ApCHO4nt3wRneC
 3dkWX6e8QEItoCJ91zvvk+b13SOYs50s6VnsX4THWVbf5x/dhQIfosnq2cRM8etbqd
 WZja12cglcWEoqHcSRf6f7qw+tDUwcxSbnOLQRTjFtXQ8j+L6Q/kMDn/19N3Oork29
 YIT/lPYcGPd7A==
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-48-matthew.brost@intel.com>
 <88cbe963-7188-f4ae-5acf-01a80bd2fe25@free.fr>
 <20210630180052.GA8283@sdutt-i7>
 <7c3e1d46-74eb-6f2d-53ca-d73ce9e61c03@free.fr>
 <d9e31651-dd97-fb39-0045-7cd62650bd03@free.fr>
 <2d649c1a-82fc-cced-4020-f7d9d96c3bc4@intel.com>
From: Martin Peres <martin.peres@free.fr>
Message-ID: <040272cf-cbd5-73ef-c763-71948474be82@free.fr>
Date: Fri, 2 Jul 2021 16:12:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <2d649c1a-82fc-cced-4020-f7d9d96c3bc4@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 47/47] drm/i915/guc: Unblock GuC submission
 on Gen11+
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDIvMDcvMjAyMSAxNjowNiwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPiAKPiAKPiBPbiAw
Mi4wNy4yMDIxIDEwOjEzLCBNYXJ0aW4gUGVyZXMgd3JvdGU6Cj4+IE9uIDAxLzA3LzIwMjEgMjE6
MjQsIE1hcnRpbiBQZXJlcyB3cm90ZToKPj4gWy4uLl0KPj4+Pgo+Pj4+Pgo+Pj4+Pj4gK8KgwqDC
oMKgwqDCoMKgIGk5MTUtPnBhcmFtcy5lbmFibGVfZ3VjID0gRU5BQkxFX0dVQ19MT0FEX0hVQzsK
Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+Pj4+PiArwqDCoMKgIH0KPj4+Pj4+ICsK
Pj4+Pj4+ICvCoMKgwqAgLyogRGVmYXVsdDogZW5hYmxlIEh1QyBhdXRoZW50aWNhdGlvbiBhbmQg
R3VDIHN1Ym1pc3Npb24gKi8KPj4+Pj4+ICvCoMKgwqAgaTkxNS0+cGFyYW1zLmVuYWJsZV9ndWMg
PSBFTkFCTEVfR1VDX0xPQURfSFVDIHwKPj4+Pj4+IEVOQUJMRV9HVUNfU1VCTUlTU0lPTjsKPj4+
Pj4KPj4+Pj4gVGhpcyBzZWVtcyB0byBiZSBpbiBjb250cmFkaWN0aW9uIHdpdGggdGhlIEd1QyBz
dWJtaXNzaW9uIHBsYW4gd2hpY2gKPj4+Pj4gc3RhdGVzOgo+Pj4+Pgo+Pj4+PiAiTm90IGVuYWJs
ZWQgYnkgZGVmYXVsdCBvbiBhbnkgY3VycmVudCBwbGF0Zm9ybXMgYnV0IGNhbiBiZSBlbmFibGVk
IHZpYQo+Pj4+PiBtb2RwYXJhbSBlbmFibGVfZ3VjIi4KPj4+Pj4KPj4+Pgo+Pj4+IEkgZG9uJ3Qg
YmVsaWV2ZSBhbnkgY3VycmVudCBwbGF0Zm9ybSBnZXRzIHRoaXMgcG9pbnQgd2hlcmUgR3VDCj4+
Pj4gc3VibWlzc2lvbiB3b3VsZCBiZSBlbmFibGVkIGJ5IGRlZmF1bHQuIFRoZSBmaXJzdCB3b3Vs
ZCBiZSBBREwtUCB3aGljaAo+Pj4+IGlzbid0IG91dCB5ZXQuCj4+Pgo+Pj4gSXNuJ3QgdGhhdCBl
eGFjdGx5IHdoYXQgdGhlIGxpbmUgYWJvdmUgZG9lcz8KPj4KPj4gSW4gY2FzZSB5b3UgbWlzc2Vk
IHRoaXMgY3J1Y2lhbCBwYXJ0IG9mIHRoZSByZXZpZXcuIFBsZWFzZSBhbnN3ZXIgdGhlCj4+IGFi
b3ZlIHF1ZXN0aW9uLgo+IAo+IEkgZ3Vlc3MgdGhlcmUgaXMgc29tZSBtaXN1bmRlcnN0YW5kaW5n
IGhlcmUsIGFuZCBJIG11c3QgYWRtaXQgSSBoYWQKPiBzaW1pbGFyIGRvdWJ0LCBidXQgaWYgeW91
IGxvb2sgYmV5b25kIHBhdGNoIGRpZmYgYW5kIGNoZWNrIGZ1bmN0aW9uIGNvZGUKPiB5b3Ugd2ls
bCBmaW5kIHRoYXQgdGhlIHZlcnkgY29uZGl0aW9uIGlzOgo+IAo+IAkvKiBEb24ndCBlbmFibGUg
R3VDL0h1QyBvbiBwcmUtR2VuMTIgKi8KPiAJaWYgKEdSQVBISUNTX1ZFUihpOTE1KSA8IDEyKSB7
Cj4gCQlpOTE1LT5wYXJhbXMuZW5hYmxlX2d1YyA9IDA7Cj4gCQlyZXR1cm47Cj4gCX0KPiAKPiBz
byBhbGwgcHJlLUdlbjEyIHBsYXRmb3JtcyB3aWxsIGNvbnRpbnVlIHRvIGhhdmUgR3VDL0h1QyBk
aXNhYmxlZC4KClRoYW5rcyBNaWNoYWwsIGJ1dCB0aGVuIHRoZSBwcm9ibGVtIGlzIHRoZSBvdGhl
ciB3YXk6IGhvdyBjYW4gb25lIGVuYWJsZSAKaXQgb24gZ2VuMTE/CgpJIGxpa2Ugd2hhdCBEYW5p
ZWxlIHdhcyBnb2luZyBmb3IgaGVyZTogc2VwYXJhdGluZyB0aGUgY2FwYWJpbGl0eSBmcm9tIAp0
aGUgdXNlci1yZXF1ZXN0ZWQgdmFsdWUsIGJ1dCB0aGVuIGl0IHNlZW1zIHRoZSBwYXRjaCBzdG9w
cGVkIGhhbGYgd2F5LiAKSG93IGFib3V0IG5ldmVyIHRvdWNoaW5nIHRoZSBwYXJhbWV0ZXIsIGFu
ZCBoYXZpbmcgYSBBTkQgYmV0d2VlbiB0aGUgdHdvIAp2YWx1ZXMgdG8gZ2V0IHRoZSBlZmZlY3Rp
dmUgZW5hYmxlX2d1Yz8KClJpZ2h0IG5vdywgdGhlIGNvZGUgaXMgcmVhbGx5IGNvbmZ1c2luZyA6
cwoKVGhhbmtzLApNYXJ0aW4KCj4gCj4gVGhhbmtzLAo+IE1pY2hhbAo+IApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
