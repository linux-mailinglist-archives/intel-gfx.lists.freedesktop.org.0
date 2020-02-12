Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0A515A400
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 09:53:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C46F06EA03;
	Wed, 12 Feb 2020 08:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96BE66EA03
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 08:53:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 00:53:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226740960"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga007.fm.intel.com with ESMTP; 12 Feb 2020 00:53:37 -0800
Received: from [10.125.252.164] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.164])
 by linux.intel.com (Postfix) with ESMTP id 25BB9580409;
 Wed, 12 Feb 2020 00:53:28 -0800 (PST)
To: Stephen Smalley <sds@tycho.nsa.gov>
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
 <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
 <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
 <CAADnVQK-JzK-GUk4KOozn4c1xr=7TiCpB9Fi0QDC9nE6iVn8iQ@mail.gmail.com>
 <537bdb28-c9e4-f44f-d665-25250065a6bb@linux.intel.com>
 <63d9700f-231d-7973-5307-3e56a48c54cb@linux.intel.com>
 <d7213569-9578-7201-6106-f5ebc95bd6be@tycho.nsa.gov>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <2e38c33d-f085-1320-8cc2-45f74b6ad86d@linux.intel.com>
Date: Wed, 12 Feb 2020 11:53:27 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <d7213569-9578-7201-6106-f5ebc95bd6be@tycho.nsa.gov>
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

SGkgU3RlcGhlbiwKCk9uIDIyLjAxLjIwMjAgMTc6MDcsIFN0ZXBoZW4gU21hbGxleSB3cm90ZToK
PiBPbiAxLzIyLzIwIDU6NDUgQU0sIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPj4KPj4gT24gMjEu
MDEuMjAyMCAyMToyNywgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4KPj4+IE9uIDIxLjAxLjIw
MjAgMjA6NTUsIEFsZXhlaSBTdGFyb3ZvaXRvdiB3cm90ZToKPj4+PiBPbiBUdWUsIEphbiAyMSwg
MjAyMCBhdCA5OjMxIEFNIEFsZXhleSBCdWRhbmtvdgo+Pj4+IDxhbGV4ZXkuYnVkYW5rb3ZAbGlu
dXguaW50ZWwuY29tPiB3cm90ZToKPj4+Pj4KPj4+Pj4KPj4+Pj4gT24gMjEuMDEuMjAyMCAxNzo0
MywgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+Pj4gT24gMS8yMC8yMCA2OjIzIEFNLCBBbGV4
ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4+Pj4+Pj4KPFNOSVA+Cj4+Pj4+Pj4gSW50cm9kdWNlIENBUF9Q
RVJGTU9OIGNhcGFiaWxpdHkgZGVzaWduZWQgdG8gc2VjdXJlIHN5c3RlbSBwZXJmb3JtYW5jZQo+
Pj4+Pj4KPj4+Pj4+IFdoeSBfbm9hdWRpdCgpP8KgIE5vcm1hbGx5IG9ubHkgdXNlZCB3aGVuIGEg
cGVybWlzc2lvbiBmYWlsdXJlIGlzIG5vbi1mYXRhbCB0byB0aGUgb3BlcmF0aW9uLsKgIE90aGVy
d2lzZSwgd2Ugd2FudCB0aGUgYXVkaXQgbWVzc2FnZS4KPj4KPj4gU28gZmFyIHNvIGdvb2QsIEkg
c3VnZ2VzdCB1c2luZyB0aGUgc2ltcGxlc3QgdmVyc2lvbiBmb3IgdjY6Cj4+Cj4+IHN0YXRpYyBp
bmxpbmUgYm9vbCBwZXJmbW9uX2NhcGFibGUodm9pZCkKPj4gewo+PiDCoMKgwqDCoHJldHVybiBj
YXBhYmxlKENBUF9QRVJGTU9OKSB8fCBjYXBhYmxlKENBUF9TWVNfQURNSU4pOwo+PiB9Cj4+Cj4+
IEl0IGtlZXBzIHRoZSBpbXBsZW1lbnRhdGlvbiBzaW1wbGUgYW5kIHJlYWRhYmxlLiBUaGUgaW1w
bGVtZW50YXRpb24gaXMgbW9yZQo+PiBwZXJmb3JtYW50IGluIHRoZSBzZW5zZSBvZiBjYWxsaW5n
IHRoZSBBUEkgLSBvbmUgY2FwYWJsZSgpIGNhbGwgZm9yIENBUF9QRVJGTU9OCj4+IHByaXZpbGVn
ZWQgcHJvY2Vzcy4KPj4KPj4gWWVzLCBpdCBibG9hdHMgYXVkaXQgbG9nIGZvciBDQVBfU1lTX0FE
TUlOIHByaXZpbGVnZWQgYW5kIHVucHJpdmlsZWdlZCBwcm9jZXNzZXMsCj4+IGJ1dCB0aGlzIGJs
b2F0aW5nIGFsc28gYWR2ZXJ0aXNlcyBhbmQgbGV2ZXJhZ2VzIHVzaW5nIG1vcmUgc2VjdXJlIENB
UF9QRVJGTU9OCj4+IGJhc2VkIGFwcHJvYWNoIHRvIHVzZSBwZXJmX2V2ZW50X29wZW4gc3lzdGVt
IGNhbGwuCj4gCj4gSSBjYW4gbGl2ZSB3aXRoIHRoYXQuwqAgV2UganVzdCBuZWVkIHRvIGRvY3Vt
ZW50IHRoYXQgd2hlbiB5b3Ugc2VlIGJvdGggYSBDQVBfUEVSRk1PTiBhbmQgYSBDQVBfU1lTX0FE
TUlOIGF1ZGl0IG1lc3NhZ2UgZm9yIGEgcHJvY2VzcywgdHJ5IG9ubHkgYWxsb3dpbmcgQ0FQX1BF
UkZNT04gZmlyc3QgYW5kIHNlZSBpZiB0aGF0IHJlc29sdmVzIHRoZSBpc3N1ZS7CoCBXZSBoYXZl
IGEgc2ltaWxhciBpc3N1ZSB3aXRoIENBUF9EQUNfUkVBRF9TRUFSQ0ggdmVyc3VzIENBUF9EQUNf
T1ZFUlJJREUuCgpJIGFtIHRyeWluZyB0byByZXByb2R1Y2UgdGhpcyBkb3VibGUgbG9nZ2luZyB3
aXRoIENBUF9QRVJGTU9OLgpJIGFtIHVzaW5nIHRoZSByZWZwb2xpY3kgdmVyc2lvbiB3aXRoIGVu
YWJsZWQgcGVyZl9ldmVudCB0Y2xhc3MgWzFdLCBpbiBwZXJtaXNzaXZlIG1vZGUuCldoZW4gcnVu
bmluZyBwZXJmIHN0YXQgLWEgSSBhbSBvYnNlcnZpbmcgdGhpcyBBVkMgYXVkaXQgbWVzc2FnZXM6
Cgp0eXBlPUFWQyBtc2c9YXVkaXQoMTU4MTQ5NjY5NS42NjY6ODY5MSk6IGF2YzogIGRlbmllZCAg
eyBvcGVuIH0gZm9yICBwaWQ9Mjc3OSBjb21tPSJwZXJmIiBzY29udGV4dD11c2VyX3U6dXNlcl9y
OnVzZXJfc3lzdGVtZF90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNs
YXNzPXBlcmZfZXZlbnQgcGVybWlzc2l2ZT0xCnR5cGU9QVZDIG1zZz1hdWRpdCgxNTgxNDk2Njk1
LjY2Njo4NjkxKTogYXZjOiAgZGVuaWVkICB7IGtlcm5lbCB9IGZvciAgcGlkPTI3NzkgY29tbT0i
cGVyZiIgc2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4dD11c2Vy
X3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQp0
eXBlPUFWQyBtc2c9YXVkaXQoMTU4MTQ5NjY5NS42NjY6ODY5MSk6IGF2YzogIGRlbmllZCAgeyBj
cHUgfSBmb3IgIHBpZD0yNzc5IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNl
cl9zeXN0ZW1kX3QgdGNvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y2xhc3M9
cGVyZl9ldmVudCBwZXJtaXNzaXZlPTEKdHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE0OTY2OTUuNjY2
Ojg2OTIpOiBhdmM6ICBkZW5pZWQgIHsgd3JpdGUgfSBmb3IgIHBpZD0yNzc5IGNvbW09InBlcmYi
IHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNvbnRleHQ9dXNlcl91OnVz
ZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y2xhc3M9cGVyZl9ldmVudCBwZXJtaXNzaXZlPTEKCkhvd2V2
ZXIgdGhlcmUgaXMgbm8gY2FwYWJpbGl0eSByZWxhdGVkIG1lc3NhZ2VzIGFyb3VuZC4gSSBzdXBw
b3NlIG15IHJlZnBvbGljeSBzaG91bGQgCmJlIG1vZGlmaWVkIHNvbWVob3cgdG8gb2JzZXJ2ZSBj
YXBhYmlsaXR5IHJlbGF0ZWQgQVZDcy4KCkNvdWxkIHlvdSBwbGVhc2UgY29tbWVudCBvciBjbGFy
aWZ5IG9uIGhvdyB0byBlbmFibGUgY2FwcyByZWxhdGVkIEFWQ3MgaW4gb3JkZXIKdG8gdGVzdCB0
aGUgY29uY2VybmVkIGxvZ2dpbmcuCgpUaGFua3MsCkFsZXhleQoKLS0tClsxXSBodHRwczovL2dp
dGh1Yi5jb20vU0VMaW51eFByb2plY3QvcmVmcG9saWN5LmdpdApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
