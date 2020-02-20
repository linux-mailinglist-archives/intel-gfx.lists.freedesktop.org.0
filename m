Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D45165E22
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 14:05:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BE706ED76;
	Thu, 20 Feb 2020 13:05:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B0B6ED76
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 13:05:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 05:05:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="283399590"
Received: from linux.intel.com ([10.54.29.200])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Feb 2020 05:05:21 -0800
Received: from [10.125.252.166] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.166])
 by linux.intel.com (Postfix) with ESMTP id 253CC580472;
 Thu, 20 Feb 2020 05:05:12 -0800 (PST)
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: Thomas Gleixner <tglx@linutronix.de>, Stephen Smalley
 <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>
References: <875zgizkyk.fsf@nanos.tec.linutronix.de>
 <7d6f4210-423f-e454-3910-9f8e17dff1aa@linux.intel.com>
Organization: Intel Corp.
Message-ID: <95aa57e6-4d78-39df-386c-a98734f19777@linux.intel.com>
Date: Thu, 20 Feb 2020 16:05:11 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <7d6f4210-423f-e454-3910-9f8e17dff1aa@linux.intel.com>
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
 Paul Mackerras <paulus@samba.org>, Jiri Olsa <jolsa@redhat.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Andi Kleen <ak@linux.intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Igor Lubashev <ilubashe@akamai.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Robert Richter <rric@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Stephane Eranian <eranian@google.com>,
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

Ck9uIDA3LjAyLjIwMjAgMTY6MzksIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPiAKPiBPbiAwNy4w
Mi4yMDIwIDE0OjM4LCBUaG9tYXMgR2xlaXhuZXIgd3JvdGU6Cj4+IEFsZXhleSBCdWRhbmtvdiA8
YWxleGV5LmJ1ZGFua292QGxpbnV4LmludGVsLmNvbT4gd3JpdGVzOgo+Pj4gT24gMjIuMDEuMjAy
MCAxNzoyNSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4+IE9uIDIyLjAxLjIwMjAgMTc6MDcs
IFN0ZXBoZW4gU21hbGxleSB3cm90ZToKPj4+Pj4+IEl0IGtlZXBzIHRoZSBpbXBsZW1lbnRhdGlv
biBzaW1wbGUgYW5kIHJlYWRhYmxlLiBUaGUgaW1wbGVtZW50YXRpb24gaXMgbW9yZQo+Pj4+Pj4g
cGVyZm9ybWFudCBpbiB0aGUgc2Vuc2Ugb2YgY2FsbGluZyB0aGUgQVBJIC0gb25lIGNhcGFibGUo
KSBjYWxsIGZvciBDQVBfUEVSRk1PTgo+Pj4+Pj4gcHJpdmlsZWdlZCBwcm9jZXNzLgo+Pj4+Pj4K
Pj4+Pj4+IFllcywgaXQgYmxvYXRzIGF1ZGl0IGxvZyBmb3IgQ0FQX1NZU19BRE1JTiBwcml2aWxl
Z2VkIGFuZCB1bnByaXZpbGVnZWQgcHJvY2Vzc2VzLAo+Pj4+Pj4gYnV0IHRoaXMgYmxvYXRpbmcg
YWxzbyBhZHZlcnRpc2VzIGFuZCBsZXZlcmFnZXMgdXNpbmcgbW9yZSBzZWN1cmUgQ0FQX1BFUkZN
T04KPj4+Pj4+IGJhc2VkIGFwcHJvYWNoIHRvIHVzZSBwZXJmX2V2ZW50X29wZW4gc3lzdGVtIGNh
bGwuCj4+Pj4+Cj4+Pj4+IEkgY2FuIGxpdmUgd2l0aCB0aGF0LsKgIFdlIGp1c3QgbmVlZCB0byBk
b2N1bWVudCB0aGF0IHdoZW4geW91IHNlZQo+Pj4+PiBib3RoIGEgQ0FQX1BFUkZNT04gYW5kIGEg
Q0FQX1NZU19BRE1JTiBhdWRpdCBtZXNzYWdlIGZvciBhIHByb2Nlc3MsCj4+Pj4+IHRyeSBvbmx5
IGFsbG93aW5nIENBUF9QRVJGTU9OIGZpcnN0IGFuZCBzZWUgaWYgdGhhdCByZXNvbHZlcyB0aGUK
Pj4+Pj4gaXNzdWUuwqAgV2UgaGF2ZSBhIHNpbWlsYXIgaXNzdWUgd2l0aCBDQVBfREFDX1JFQURf
U0VBUkNIIHZlcnN1cwo+Pj4+PiBDQVBfREFDX09WRVJSSURFLgo+Pj4+Cj4+Pj4gcGVyZiBzZWN1
cml0eSBbMV0gZG9jdW1lbnQgY2FuIGJlIHVwZGF0ZWQsIGF0IGxlYXN0LCB0byBhbGlnbiBhbmQg
ZG9jdW1lbnQgCj4+Pj4gdGhpcyBhdWRpdCBsb2dnaW5nIHNwZWNpZmljcy4KPj4+Cj4+PiBBbmQg
SSBwbGFuIHRvIHVwZGF0ZSB0aGUgZG9jdW1lbnQgcmlnaHQgYWZ0ZXIgdGhpcyBwYXRjaCBzZXQg
aXMgYWNjZXB0ZWQuCj4+PiBGZWVsIGZyZWUgdG8gbGV0IG1lIGtub3cgb2YgdGhlIHBsYWNlcyBp
biB0aGUga2VybmVsIGRvY3MgdGhhdCBhbHNvCj4+PiByZXF1aXJlIHVwZGF0ZSB3LnIudCBDQVBf
UEVSRk1PTiBleHRlbnNpb24uCj4+Cj4+IFRoZSBkb2N1bWVudGF0aW9uIHVwZGF0ZSB3YW50cyBi
ZSBwYXJ0IG9mIHRoZSBwYXRjaCBzZXQgYW5kIG5vdCBwbGFubmVkCj4+IHRvIGJlIGRvbmUgX2Fm
dGVyXyB0aGUgcGF0Y2ggc2V0IGlzIG1lcmdlZC4KPiAKPiBXZWxsLCBhY2NlcHRlZC4gSXQgaXMg
Z29pbmcgdG8gbWFrZSBwYXRjaGVzICMxMSBhbmQgYmV5b25kLgoKUGF0Y2hlcyAjMTEgYW5kICMx
MiBvZiB2NyBbMV0gY29udGFpbiBpbmZvcm1hdGlvbiBvbiBDQVBfUEVSRk1PTiBpbnRlbnRpb24g
YW5kIHVzYWdlLgpQYXRjaCBmb3IgbWFuLXBhZ2VzIFsyXSBleHRlbmRzIHBlcmZfZXZlbnRfb3Bl
bi4yIGRvY3VtZW50YXRpb24uCgpUaGFua3MsCkFsZXhleQoKLS0tClsxXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9sa21sL2M4ZGU5MzdhLTBiM2EtNzE0Ny1mNWVmLTY5ZjQ2N2U4N2ExM0BsaW51
eC5pbnRlbC5jb20vClsyXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzE4ZDEwODNkLWVm
ZTUtZjVmOC1jNTMxLWQxNDJjMGU1YzFhOEBsaW51eC5pbnRlbC5jb20vCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
