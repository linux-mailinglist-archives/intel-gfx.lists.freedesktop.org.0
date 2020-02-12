Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA2915AD01
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 17:17:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 396236F539;
	Wed, 12 Feb 2020 16:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC9CB6F539
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 16:17:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 08:16:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="237749520"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga006.jf.intel.com with ESMTP; 12 Feb 2020 08:16:42 -0800
Received: from [10.252.13.176] (abudanko-mobl.ccr.corp.intel.com
 [10.252.13.176])
 by linux.intel.com (Postfix) with ESMTP id F2D1D5803DA;
 Wed, 12 Feb 2020 08:16:32 -0800 (PST)
To: Stephen Smalley <sds@tycho.nsa.gov>
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
 <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
 <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
 <CAADnVQK-JzK-GUk4KOozn4c1xr=7TiCpB9Fi0QDC9nE6iVn8iQ@mail.gmail.com>
 <537bdb28-c9e4-f44f-d665-25250065a6bb@linux.intel.com>
 <63d9700f-231d-7973-5307-3e56a48c54cb@linux.intel.com>
 <d7213569-9578-7201-6106-f5ebc95bd6be@tycho.nsa.gov>
 <2e38c33d-f085-1320-8cc2-45f74b6ad86d@linux.intel.com>
 <dd6a1382-7b2f-a6e6-a1ac-009566d7f556@tycho.nsa.gov>
 <8141da2e-49cf-c02d-69e9-8a7cbdc91431@linux.intel.com>
 <7c367905-e8c9-7665-d923-c850e05c757a@tycho.nsa.gov>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <220e87bf-226e-ca35-acc0-89dc82dc7811@linux.intel.com>
Date: Wed, 12 Feb 2020 19:16:31 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <7c367905-e8c9-7665-d923-c850e05c757a@tycho.nsa.gov>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 01/10] capabilities: introduce
 CAP_PERFMON to kernel and user space
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Peter Zijlstra <peterz@infradead.org>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Andi Kleen <ak@linux.intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@amacapital.net>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTIuMDIuMjAyMCAxODoyMSwgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+IE9uIDIvMTIvMjAg
ODo1MyBBTSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+PiBPbiAxMi4wMi4yMDIwIDE2OjMyLCBT
dGVwaGVuIFNtYWxsZXkgd3JvdGU6Cj4+PiBPbiAyLzEyLzIwIDM6NTMgQU0sIEFsZXhleSBCdWRh
bmtvdiB3cm90ZToKPj4+PiBIaSBTdGVwaGVuLAo+Pj4+Cj4+Pj4gT24gMjIuMDEuMjAyMCAxNzow
NywgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+PiBPbiAxLzIyLzIwIDU6NDUgQU0sIEFsZXhl
eSBCdWRhbmtvdiB3cm90ZToKPj4+Pj4+Cj4+Pj4+PiBPbiAyMS4wMS4yMDIwIDIxOjI3LCBBbGV4
ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+PiBPbiAyMS4wMS4yMDIwIDIwOjU1LCBB
bGV4ZWkgU3Rhcm92b2l0b3Ygd3JvdGU6Cj4+Pj4+Pj4+IE9uIFR1ZSwgSmFuIDIxLCAyMDIwIGF0
IDk6MzEgQU0gQWxleGV5IEJ1ZGFua292Cj4+Pj4+Pj4+IDxhbGV4ZXkuYnVkYW5rb3ZAbGludXgu
aW50ZWwuY29tPiB3cm90ZToKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gT24gMjEuMDEu
MjAyMCAxNzo0MywgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+Pj4+Pj4+IE9uIDEvMjAvMjAg
NjoyMyBBTSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4+Pj4+Pj4+Pgo+Pj4+IDxTTklQPgo+
Pj4+Pj4+Pj4+PiBJbnRyb2R1Y2UgQ0FQX1BFUkZNT04gY2FwYWJpbGl0eSBkZXNpZ25lZCB0byBz
ZWN1cmUgc3lzdGVtIHBlcmZvcm1hbmNlCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBXaHkgX25vYXVk
aXQoKT/CoCBOb3JtYWxseSBvbmx5IHVzZWQgd2hlbiBhIHBlcm1pc3Npb24gZmFpbHVyZSBpcyBu
b24tZmF0YWwgdG8gdGhlIG9wZXJhdGlvbi7CoCBPdGhlcndpc2UsIHdlIHdhbnQgdGhlIGF1ZGl0
IG1lc3NhZ2UuCj4+Pj4+Pgo+Pj4+Pj4gU28gZmFyIHNvIGdvb2QsIEkgc3VnZ2VzdCB1c2luZyB0
aGUgc2ltcGxlc3QgdmVyc2lvbiBmb3IgdjY6Cj4+Pj4+Pgo+Pj4+Pj4gc3RhdGljIGlubGluZSBi
b29sIHBlcmZtb25fY2FwYWJsZSh2b2lkKQo+Pj4+Pj4gewo+Pj4+Pj4gwqDCoMKgwqDCoMKgcmV0
dXJuIGNhcGFibGUoQ0FQX1BFUkZNT04pIHx8IGNhcGFibGUoQ0FQX1NZU19BRE1JTik7Cj4+Pj4+
PiB9Cj4+Pj4+Pgo+Pj4+Pj4gSXQga2VlcHMgdGhlIGltcGxlbWVudGF0aW9uIHNpbXBsZSBhbmQg
cmVhZGFibGUuIFRoZSBpbXBsZW1lbnRhdGlvbiBpcyBtb3JlCj4+Pj4+PiBwZXJmb3JtYW50IGlu
IHRoZSBzZW5zZSBvZiBjYWxsaW5nIHRoZSBBUEkgLSBvbmUgY2FwYWJsZSgpIGNhbGwgZm9yIENB
UF9QRVJGTU9OCj4+Pj4+PiBwcml2aWxlZ2VkIHByb2Nlc3MuCj4+Pj4+Pgo+Pj4+Pj4gWWVzLCBp
dCBibG9hdHMgYXVkaXQgbG9nIGZvciBDQVBfU1lTX0FETUlOIHByaXZpbGVnZWQgYW5kIHVucHJp
dmlsZWdlZCBwcm9jZXNzZXMsCj4+Pj4+PiBidXQgdGhpcyBibG9hdGluZyBhbHNvIGFkdmVydGlz
ZXMgYW5kIGxldmVyYWdlcyB1c2luZyBtb3JlIHNlY3VyZSBDQVBfUEVSRk1PTgo+Pj4+Pj4gYmFz
ZWQgYXBwcm9hY2ggdG8gdXNlIHBlcmZfZXZlbnRfb3BlbiBzeXN0ZW0gY2FsbC4KPj4+Pj4KPj4+
Pj4gSSBjYW4gbGl2ZSB3aXRoIHRoYXQuwqAgV2UganVzdCBuZWVkIHRvIGRvY3VtZW50IHRoYXQg
d2hlbiB5b3Ugc2VlIGJvdGggYSBDQVBfUEVSRk1PTiBhbmQgYSBDQVBfU1lTX0FETUlOIGF1ZGl0
IG1lc3NhZ2UgZm9yIGEgcHJvY2VzcywgdHJ5IG9ubHkgYWxsb3dpbmcgQ0FQX1BFUkZNT04gZmly
c3QgYW5kIHNlZSBpZiB0aGF0IHJlc29sdmVzIHRoZSBpc3N1ZS7CoCBXZSBoYXZlIGEgc2ltaWxh
ciBpc3N1ZSB3aXRoIENBUF9EQUNfUkVBRF9TRUFSQ0ggdmVyc3VzIENBUF9EQUNfT1ZFUlJJREUu
Cj4+Pj4KPj4+PiBJIGFtIHRyeWluZyB0byByZXByb2R1Y2UgdGhpcyBkb3VibGUgbG9nZ2luZyB3
aXRoIENBUF9QRVJGTU9OLgo+Pj4+IEkgYW0gdXNpbmcgdGhlIHJlZnBvbGljeSB2ZXJzaW9uIHdp
dGggZW5hYmxlZCBwZXJmX2V2ZW50IHRjbGFzcyBbMV0sIGluIHBlcm1pc3NpdmUgbW9kZS4KPj4+
PiBXaGVuIHJ1bm5pbmcgcGVyZiBzdGF0IC1hIEkgYW0gb2JzZXJ2aW5nIHRoaXMgQVZDIGF1ZGl0
IG1lc3NhZ2VzOgo+Pj4+Cj4+Pj4gdHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE0OTY2OTUuNjY2Ojg2
OTEpOiBhdmM6wqAgZGVuaWVkwqAgeyBvcGVuIH0gZm9ywqAgcGlkPTI3NzkgY29tbT0icGVyZiIg
c2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4dD11c2VyX3U6dXNl
cl9yOnVzZXJfc3lzdGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQo+Pj4+IHR5
cGU9QVZDIG1zZz1hdWRpdCgxNTgxNDk2Njk1LjY2Njo4NjkxKTogYXZjOsKgIGRlbmllZMKgIHsg
a2VybmVsIH0gZm9ywqAgcGlkPTI3NzkgY29tbT0icGVyZiIgc2NvbnRleHQ9dXNlcl91OnVzZXJf
cjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRj
bGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQo+Pj4+IHR5cGU9QVZDIG1zZz1hdWRpdCgxNTgx
NDk2Njk1LjY2Njo4NjkxKTogYXZjOsKgIGRlbmllZMKgIHsgY3B1IH0gZm9ywqAgcGlkPTI3Nzkg
Y29tbT0icGVyZiIgc2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4
dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3Np
dmU9MQo+Pj4+IHR5cGU9QVZDIG1zZz1hdWRpdCgxNTgxNDk2Njk1LjY2Njo4NjkyKTogYXZjOsKg
IGRlbmllZMKgIHsgd3JpdGUgfSBmb3LCoCBwaWQ9Mjc3OSBjb21tPSJwZXJmIiBzY29udGV4dD11
c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9z
eXN0ZW1kX3QgdGNsYXNzPXBlcmZfZXZlbnQgcGVybWlzc2l2ZT0xCj4+Pj4KPj4+PiBIb3dldmVy
IHRoZXJlIGlzIG5vIGNhcGFiaWxpdHkgcmVsYXRlZCBtZXNzYWdlcyBhcm91bmQuIEkgc3VwcG9z
ZSBteSByZWZwb2xpY3kgc2hvdWxkCj4+Pj4gYmUgbW9kaWZpZWQgc29tZWhvdyB0byBvYnNlcnZl
IGNhcGFiaWxpdHkgcmVsYXRlZCBBVkNzLgo+Pj4+Cj4+Pj4gQ291bGQgeW91IHBsZWFzZSBjb21t
ZW50IG9yIGNsYXJpZnkgb24gaG93IHRvIGVuYWJsZSBjYXBzIHJlbGF0ZWQgQVZDcyBpbiBvcmRl
cgo+Pj4+IHRvIHRlc3QgdGhlIGNvbmNlcm5lZCBsb2dnaW5nLgo+Pj4KPj4+IFRoZSBuZXcgcGVy
Zm1vbiBwZXJtaXNzaW9uIGhhcyB0byBiZSBkZWZpbmVkIGluIHlvdXIgcG9saWN5OyB5b3UnbGwg
aGF2ZSBhIG1lc3NhZ2UgaW4gZG1lc2cgYWJvdXQgIlBlcm1pc3Npb24gcGVyZm1vbiBpbiBjbGFz
cyBjYXBhYmlsaXR5MiBub3QgZGVmaW5lZCBpbiBwb2xpY3kuIi7CoCBZb3UgY2FuIGVpdGhlciBh
ZGQgaXQgdG8gdGhlIGNvbW1vbiBjYXAyIGRlZmluaXRpb24gaW4gcmVmcG9saWN5L3BvbGljeS9m
bGFzay9hY2Nlc3NfdmVjdG9ycyBhbmQgcmVidWlsZCB5b3VyIHBvbGljeSBvciBleHRyYWN0IHlv
dXIgYmFzZSBtb2R1bGUgYXMgQ0lMLCBhZGQgaXQgdGhlcmUsIGFuZCBpbnNlcnQgdGhlIHVwZGF0
ZWQgbW9kdWxlLgo+Pgo+PiBZZXMsIEkgYWxyZWFkeSBoYXZlIGl0IGxpa2UgdGhpczoKPj4gY29t
bW9uIGNhcDIKPj4gewo+PiA8LS0tLS0tPm1hY19vdmVycmlkZTwtLT4jIHVudXNlZCBieSBTRUxp
bnV4Cj4+IDwtLS0tLS0+bWFjX2FkbWluCj4+IDwtLS0tLS0+c3lzbG9nCj4+IDwtLS0tLS0+d2Fr
ZV9hbGFybQo+PiA8LS0tLS0tPmJsb2NrX3N1c3BlbmQKPj4gPC0tLS0tLT5hdWRpdF9yZWFkCj4+
IDwtLS0tLS0+cGVyZm1vbgo+PiB9Cj4+Cj4+IGRtZXNnIHN0b3BwZWQgcmVwb3J0aW5nIHBlcmZt
b24gYXMgbm90IGRlZmluZWQgYnV0IGF1ZGl0LmxvZyBzdGlsbCBkb2Vzbid0IHJlcG9ydCBDQVBf
UEVSRk1PTiBkZW5pYWxzLgo+PiBCVFcsIGF1ZGl0IGV2ZW4gZG9lc24ndCByZXBvcnQgQ0FQX1NZ
U19BRE1JTiBkZW5pYWxzLCBob3dldmVyIHBlcmZtb25fY2FwYWJsZSgpIGRvZXMgY2hlY2sgZm9y
IGl0Lgo+IAo+IFNvbWUgZGVuaWFscyBtYXkgYmUgc2lsZW5jZWQgYnkgZG9udGF1ZGl0IHJ1bGVz
OyBzZW1vZHVsZSAtREIgd2lsbCBzdHJpcCB0aG9zZSBhbmQgc2Vtb2R1bGUgLUIgd2lsbCByZXN0
b3JlIHRoZW0uwqAgT3RoZXIgcG9zc2liaWxpdHkgaXMgdGhhdCB0aGUgcHJvY2VzcyBkb2Vzbid0
IGhhdmUgQ0FQX1BFUkZNT04gaW4gaXRzIGVmZmVjdGl2ZSBzZXQgYW5kIHRoZXJlZm9yZSBuZXZl
ciByZWFjaGVzIFNFTGludXggYXQgYWxsOyBkZW5pZWQgZmlyc3QgYnkgdGhlIGNhcGFiaWxpdHkg
bW9kdWxlLgoKWWVzLCB0aGF0IGFsbCBtYWtlcyBzZW5zZS4Kc2VsaW51eF9jYXBhYmxlKCkgY2Fs
bHMgYXZjX2F1ZGl0KCkgbG9nZ2luZyBidXQgY2FwX2NhcGFibGUoKSBkb2Vzbid0LCBzbyBwcm9w
ZXIgb3JkZXIgbWF0dGVycy4KSSBhbSBkb2luZyBkZWJ1ZyB0cmFjaW5nIG9mIHRoZSBrZXJuZWwg
Y29kZSB0byByZXZlYWwgdGhlIGV4YWN0IHJlYXNvbnMuCgp+QWxleGV5Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
