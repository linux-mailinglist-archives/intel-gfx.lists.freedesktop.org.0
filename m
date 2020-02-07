Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D08B155897
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 14:39:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18426FC91;
	Fri,  7 Feb 2020 13:39:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 561E56FC91
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 13:39:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 05:39:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="220798400"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga007.jf.intel.com with ESMTP; 07 Feb 2020 05:39:21 -0800
Received: from [10.125.252.178] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.178])
 by linux.intel.com (Postfix) with ESMTP id 7EB57580458;
 Fri,  7 Feb 2020 05:39:13 -0800 (PST)
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: Thomas Gleixner <tglx@linutronix.de>, Stephen Smalley
 <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>
References: <875zgizkyk.fsf@nanos.tec.linutronix.de>
Organization: Intel Corp.
Message-ID: <7d6f4210-423f-e454-3910-9f8e17dff1aa@linux.intel.com>
Date: Fri, 7 Feb 2020 16:39:12 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <875zgizkyk.fsf@nanos.tec.linutronix.de>
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

Ck9uIDA3LjAyLjIwMjAgMTQ6MzgsIFRob21hcyBHbGVpeG5lciB3cm90ZToKPiBBbGV4ZXkgQnVk
YW5rb3YgPGFsZXhleS5idWRhbmtvdkBsaW51eC5pbnRlbC5jb20+IHdyaXRlczoKPj4gT24gMjIu
MDEuMjAyMCAxNzoyNSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4gT24gMjIuMDEuMjAyMCAx
NzowNywgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+PiBJdCBrZWVwcyB0aGUgaW1wbGVtZW50
YXRpb24gc2ltcGxlIGFuZCByZWFkYWJsZS4gVGhlIGltcGxlbWVudGF0aW9uIGlzIG1vcmUKPj4+
Pj4gcGVyZm9ybWFudCBpbiB0aGUgc2Vuc2Ugb2YgY2FsbGluZyB0aGUgQVBJIC0gb25lIGNhcGFi
bGUoKSBjYWxsIGZvciBDQVBfUEVSRk1PTgo+Pj4+PiBwcml2aWxlZ2VkIHByb2Nlc3MuCj4+Pj4+
Cj4+Pj4+IFllcywgaXQgYmxvYXRzIGF1ZGl0IGxvZyBmb3IgQ0FQX1NZU19BRE1JTiBwcml2aWxl
Z2VkIGFuZCB1bnByaXZpbGVnZWQgcHJvY2Vzc2VzLAo+Pj4+PiBidXQgdGhpcyBibG9hdGluZyBh
bHNvIGFkdmVydGlzZXMgYW5kIGxldmVyYWdlcyB1c2luZyBtb3JlIHNlY3VyZSBDQVBfUEVSRk1P
Tgo+Pj4+PiBiYXNlZCBhcHByb2FjaCB0byB1c2UgcGVyZl9ldmVudF9vcGVuIHN5c3RlbSBjYWxs
Lgo+Pj4+Cj4+Pj4gSSBjYW4gbGl2ZSB3aXRoIHRoYXQuwqAgV2UganVzdCBuZWVkIHRvIGRvY3Vt
ZW50IHRoYXQgd2hlbiB5b3Ugc2VlCj4+Pj4gYm90aCBhIENBUF9QRVJGTU9OIGFuZCBhIENBUF9T
WVNfQURNSU4gYXVkaXQgbWVzc2FnZSBmb3IgYSBwcm9jZXNzLAo+Pj4+IHRyeSBvbmx5IGFsbG93
aW5nIENBUF9QRVJGTU9OIGZpcnN0IGFuZCBzZWUgaWYgdGhhdCByZXNvbHZlcyB0aGUKPj4+PiBp
c3N1ZS7CoCBXZSBoYXZlIGEgc2ltaWxhciBpc3N1ZSB3aXRoIENBUF9EQUNfUkVBRF9TRUFSQ0gg
dmVyc3VzCj4+Pj4gQ0FQX0RBQ19PVkVSUklERS4KPj4+Cj4+PiBwZXJmIHNlY3VyaXR5IFsxXSBk
b2N1bWVudCBjYW4gYmUgdXBkYXRlZCwgYXQgbGVhc3QsIHRvIGFsaWduIGFuZCBkb2N1bWVudCAK
Pj4+IHRoaXMgYXVkaXQgbG9nZ2luZyBzcGVjaWZpY3MuCj4+Cj4+IEFuZCBJIHBsYW4gdG8gdXBk
YXRlIHRoZSBkb2N1bWVudCByaWdodCBhZnRlciB0aGlzIHBhdGNoIHNldCBpcyBhY2NlcHRlZC4K
Pj4gRmVlbCBmcmVlIHRvIGxldCBtZSBrbm93IG9mIHRoZSBwbGFjZXMgaW4gdGhlIGtlcm5lbCBk
b2NzIHRoYXQgYWxzbwo+PiByZXF1aXJlIHVwZGF0ZSB3LnIudCBDQVBfUEVSRk1PTiBleHRlbnNp
b24uCj4gCj4gVGhlIGRvY3VtZW50YXRpb24gdXBkYXRlIHdhbnRzIGJlIHBhcnQgb2YgdGhlIHBh
dGNoIHNldCBhbmQgbm90IHBsYW5uZWQKPiB0byBiZSBkb25lIF9hZnRlcl8gdGhlIHBhdGNoIHNl
dCBpcyBtZXJnZWQuCgpXZWxsLCBhY2NlcHRlZC4gSXQgaXMgZ29pbmcgdG8gbWFrZSBwYXRjaGVz
ICMxMSBhbmQgYmV5b25kLgoKVGhhbmtzLApBbGV4ZXkKCj4gCj4gVGhhbmtzLAo+IAo+ICAgICAg
ICAgdGdseAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
