Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E35D1155749
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 13:03:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155EC6EAA6;
	Fri,  7 Feb 2020 12:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1485 seconds by postgrey-1.36 at gabe;
 Fri, 07 Feb 2020 12:03:33 UTC
Received: from Galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E0B66EAA6
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 12:03:33 +0000 (UTC)
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1j01xc-000288-1g; Fri, 07 Feb 2020 12:38:12 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 7CCA5100375; Fri,  7 Feb 2020 11:38:11 +0000 (GMT)
From: Thomas Gleixner <tglx@linutronix.de>
To: Alexey Budankov <alexey.budankov@linux.intel.com>,
 Stephen Smalley <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>
In-Reply-To: <2b608e26-354b-3df9-aea9-58e56dc0c5e5@linux.intel.com>
Date: Fri, 07 Feb 2020 11:38:11 +0000
Message-ID: <875zgizkyk.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
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

QWxleGV5IEJ1ZGFua292IDxhbGV4ZXkuYnVkYW5rb3ZAbGludXguaW50ZWwuY29tPiB3cml0ZXM6
Cj4gT24gMjIuMDEuMjAyMCAxNzoyNSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+PiBPbiAyMi4w
MS4yMDIwIDE3OjA3LCBTdGVwaGVuIFNtYWxsZXkgd3JvdGU6Cj4+Pj4gSXQga2VlcHMgdGhlIGlt
cGxlbWVudGF0aW9uIHNpbXBsZSBhbmQgcmVhZGFibGUuIFRoZSBpbXBsZW1lbnRhdGlvbiBpcyBt
b3JlCj4+Pj4gcGVyZm9ybWFudCBpbiB0aGUgc2Vuc2Ugb2YgY2FsbGluZyB0aGUgQVBJIC0gb25l
IGNhcGFibGUoKSBjYWxsIGZvciBDQVBfUEVSRk1PTgo+Pj4+IHByaXZpbGVnZWQgcHJvY2Vzcy4K
Pj4+Pgo+Pj4+IFllcywgaXQgYmxvYXRzIGF1ZGl0IGxvZyBmb3IgQ0FQX1NZU19BRE1JTiBwcml2
aWxlZ2VkIGFuZCB1bnByaXZpbGVnZWQgcHJvY2Vzc2VzLAo+Pj4+IGJ1dCB0aGlzIGJsb2F0aW5n
IGFsc28gYWR2ZXJ0aXNlcyBhbmQgbGV2ZXJhZ2VzIHVzaW5nIG1vcmUgc2VjdXJlIENBUF9QRVJG
TU9OCj4+Pj4gYmFzZWQgYXBwcm9hY2ggdG8gdXNlIHBlcmZfZXZlbnRfb3BlbiBzeXN0ZW0gY2Fs
bC4KPj4+Cj4+PiBJIGNhbiBsaXZlIHdpdGggdGhhdC7CoCBXZSBqdXN0IG5lZWQgdG8gZG9jdW1l
bnQgdGhhdCB3aGVuIHlvdSBzZWUKPj4+IGJvdGggYSBDQVBfUEVSRk1PTiBhbmQgYSBDQVBfU1lT
X0FETUlOIGF1ZGl0IG1lc3NhZ2UgZm9yIGEgcHJvY2VzcywKPj4+IHRyeSBvbmx5IGFsbG93aW5n
IENBUF9QRVJGTU9OIGZpcnN0IGFuZCBzZWUgaWYgdGhhdCByZXNvbHZlcyB0aGUKPj4+IGlzc3Vl
LsKgIFdlIGhhdmUgYSBzaW1pbGFyIGlzc3VlIHdpdGggQ0FQX0RBQ19SRUFEX1NFQVJDSCB2ZXJz
dXMKPj4+IENBUF9EQUNfT1ZFUlJJREUuCj4+IAo+PiBwZXJmIHNlY3VyaXR5IFsxXSBkb2N1bWVu
dCBjYW4gYmUgdXBkYXRlZCwgYXQgbGVhc3QsIHRvIGFsaWduIGFuZCBkb2N1bWVudCAKPj4gdGhp
cyBhdWRpdCBsb2dnaW5nIHNwZWNpZmljcy4KPgo+IEFuZCBJIHBsYW4gdG8gdXBkYXRlIHRoZSBk
b2N1bWVudCByaWdodCBhZnRlciB0aGlzIHBhdGNoIHNldCBpcyBhY2NlcHRlZC4KPiBGZWVsIGZy
ZWUgdG8gbGV0IG1lIGtub3cgb2YgdGhlIHBsYWNlcyBpbiB0aGUga2VybmVsIGRvY3MgdGhhdCBh
bHNvCj4gcmVxdWlyZSB1cGRhdGUgdy5yLnQgQ0FQX1BFUkZNT04gZXh0ZW5zaW9uLgoKVGhlIGRv
Y3VtZW50YXRpb24gdXBkYXRlIHdhbnRzIGJlIHBhcnQgb2YgdGhlIHBhdGNoIHNldCBhbmQgbm90
IHBsYW5uZWQKdG8gYmUgZG9uZSBfYWZ0ZXJfIHRoZSBwYXRjaCBzZXQgaXMgbWVyZ2VkLgoKVGhh
bmtzLAoKICAgICAgICB0Z2x4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
