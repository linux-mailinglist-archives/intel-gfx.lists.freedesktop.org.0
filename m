Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AF81457BD
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 15:25:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C6716F54F;
	Wed, 22 Jan 2020 14:25:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39F1C6F54E
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 14:25:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 06:25:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="259481099"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2020 06:25:20 -0800
Received: from [10.252.5.6] (unknown [10.252.5.6])
 by linux.intel.com (Postfix) with ESMTP id C8A54580100;
 Wed, 22 Jan 2020 06:25:10 -0800 (PST)
To: Stephen Smalley <sds@tycho.nsa.gov>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>
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
Message-ID: <ac0dbab7-de47-ee34-bb88-4c43d3538b7d@linux.intel.com>
Date: Wed, 22 Jan 2020 17:25:09 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
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
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>,
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

Ck9uIDIyLjAxLjIwMjAgMTc6MDcsIFN0ZXBoZW4gU21hbGxleSB3cm90ZToKPiBPbiAxLzIyLzIw
IDU6NDUgQU0sIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPj4KPj4gT24gMjEuMDEuMjAyMCAyMToy
NywgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4KPj4+IE9uIDIxLjAxLjIwMjAgMjA6NTUsIEFs
ZXhlaSBTdGFyb3ZvaXRvdiB3cm90ZToKPj4+PiBPbiBUdWUsIEphbiAyMSwgMjAyMCBhdCA5OjMx
IEFNIEFsZXhleSBCdWRhbmtvdgo+Pj4+IDxhbGV4ZXkuYnVkYW5rb3ZAbGludXguaW50ZWwuY29t
PiB3cm90ZToKPj4+Pj4KPj4+Pj4KPj4+Pj4gT24gMjEuMDEuMjAyMCAxNzo0MywgU3RlcGhlbiBT
bWFsbGV5IHdyb3RlOgo+Pj4+Pj4gT24gMS8yMC8yMCA2OjIzIEFNLCBBbGV4ZXkgQnVkYW5rb3Yg
d3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+PiBJbnRyb2R1Y2UgQ0FQX1BFUkZNT04gY2FwYWJpbGl0eSBk
ZXNpZ25lZCB0byBzZWN1cmUgc3lzdGVtIHBlcmZvcm1hbmNlCj4+Pj4+Pj4gbW9uaXRvcmluZyBh
bmQgb2JzZXJ2YWJpbGl0eSBvcGVyYXRpb25zIHNvIHRoYXQgQ0FQX1BFUkZNT04gd291bGQgYXNz
aXN0Cj4+Pj4+Pj4gQ0FQX1NZU19BRE1JTiBjYXBhYmlsaXR5IGluIGl0cyBnb3Zlcm5pbmcgcm9s
ZSBmb3IgcGVyZl9ldmVudHMsIGk5MTVfcGVyZgo+Pj4+Pj4+IGFuZCBvdGhlciBwZXJmb3JtYW5j
ZSBtb25pdG9yaW5nIGFuZCBvYnNlcnZhYmlsaXR5IHN1YnN5c3RlbXMuCj4+Pj4+Pj4KPj4+Pj4+
PiBDQVBfUEVSRk1PTiBpbnRlbmRzIHRvIGhhcmRlbiBzeXN0ZW0gc2VjdXJpdHkgYW5kIGludGVn
cml0eSBkdXJpbmcgc3lzdGVtCj4+Pj4+Pj4gcGVyZm9ybWFuY2UgbW9uaXRvcmluZyBhbmQgb2Jz
ZXJ2YWJpbGl0eSBvcGVyYXRpb25zIGJ5IGRlY3JlYXNpbmcgYXR0YWNrCj4+Pj4+Pj4gc3VyZmFj
ZSB0aGF0IGlzIGF2YWlsYWJsZSB0byBhIENBUF9TWVNfQURNSU4gcHJpdmlsZWdlZCBwcm9jZXNz
IFsxXS4KPj4+Pj4+PiBQcm92aWRpbmcgYWNjZXNzIHRvIHN5c3RlbSBwZXJmb3JtYW5jZSBtb25p
dG9yaW5nIGFuZCBvYnNlcnZhYmlsaXR5Cj4+Pj4+Pj4gb3BlcmF0aW9ucyB1bmRlciBDQVBfUEVS
Rk1PTiBjYXBhYmlsaXR5IHNpbmdseSwgd2l0aG91dCB0aGUgcmVzdCBvZgo+Pj4+Pj4+IENBUF9T
WVNfQURNSU4gY3JlZGVudGlhbHMsIGV4Y2x1ZGVzIGNoYW5jZXMgdG8gbWlzdXNlIHRoZSBjcmVk
ZW50aWFscyBhbmQKPj4+Pj4+PiBtYWtlcyBvcGVyYXRpb24gbW9yZSBzZWN1cmUuCj4+Pj4+Pj4K
Pj4+Pj4+PiBDQVBfUEVSRk1PTiBpbnRlbmRzIHRvIHRha2Ugb3ZlciBDQVBfU1lTX0FETUlOIGNy
ZWRlbnRpYWxzIHJlbGF0ZWQgdG8KPj4+Pj4+PiBzeXN0ZW0gcGVyZm9ybWFuY2UgbW9uaXRvcmlu
ZyBhbmQgb2JzZXJ2YWJpbGl0eSBvcGVyYXRpb25zIGFuZCBiYWxhbmNlCj4+Pj4+Pj4gYW1vdW50
IG9mIENBUF9TWVNfQURNSU4gY3JlZGVudGlhbHMgZm9sbG93aW5nIHRoZSByZWNvbW1lbmRhdGlv
bnMgaW4gdGhlCj4+Pj4+Pj4gY2FwYWJpbGl0aWVzIG1hbiBwYWdlIFsxXSBmb3IgQ0FQX1NZU19B
RE1JTjogIk5vdGU6IHRoaXMgY2FwYWJpbGl0eSBpcwo+Pj4+Pj4+IG92ZXJsb2FkZWQ7IHNlZSBO
b3RlcyB0byBrZXJuZWwgZGV2ZWxvcGVycywgYmVsb3cuIgo+Pj4+Pj4+Cj4+Pj4+Pj4gQWx0aG91
Z2ggdGhlIHNvZnR3YXJlIHJ1bm5pbmcgdW5kZXIgQ0FQX1BFUkZNT04gY2FuIG5vdCBlbnN1cmUg
YXZvaWRhbmNlCj4+Pj4+Pj4gb2YgcmVsYXRlZCBoYXJkd2FyZSBpc3N1ZXMsIHRoZSBzb2Z0d2Fy
ZSBjYW4gc3RpbGwgbWl0aWdhdGUgdGhlc2UgaXNzdWVzCj4+Pj4+Pj4gZm9sbG93aW5nIHRoZSBv
ZmZpY2lhbCBlbWJhcmdvZWQgaGFyZHdhcmUgaXNzdWVzIG1pdGlnYXRpb24gcHJvY2VkdXJlIFsy
XS4KPj4+Pj4+PiBUaGUgYnVncyBpbiB0aGUgc29mdHdhcmUgaXRzZWxmIGNvdWxkIGJlIGZpeGVk
IGZvbGxvd2luZyB0aGUgc3RhbmRhcmQKPj4+Pj4+PiBrZXJuZWwgZGV2ZWxvcG1lbnQgcHJvY2Vz
cyBbM10gdG8gbWFpbnRhaW4gYW5kIGhhcmRlbiBzZWN1cml0eSBvZiBzeXN0ZW0KPj4+Pj4+PiBw
ZXJmb3JtYW5jZSBtb25pdG9yaW5nIGFuZCBvYnNlcnZhYmlsaXR5IG9wZXJhdGlvbnMuCj4+Pj4+
Pj4KPj4+Pj4+PiBbMV0gaHR0cDovL21hbjcub3JnL2xpbnV4L21hbi1wYWdlcy9tYW43L2NhcGFi
aWxpdGllcy43Lmh0bWwKPj4+Pj4+PiBbMl0gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRt
bC9sYXRlc3QvcHJvY2Vzcy9lbWJhcmdvZWQtaGFyZHdhcmUtaXNzdWVzLmh0bWwKPj4+Pj4+PiBb
M10gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvYWRtaW4tZ3VpZGUvc2Vj
dXJpdHktYnVncy5odG1sCj4+Pj4+Pj4KPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQnVk
YW5rb3YgPGFsZXhleS5idWRhbmtvdkBsaW51eC5pbnRlbC5jb20+Cj4+Pj4+Pj4gLS0tCj4+Pj4+
Pj4gwqDCoCBpbmNsdWRlL2xpbnV4L2NhcGFiaWxpdHkuaMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEy
ICsrKysrKysrKysrKwo+Pj4+Pj4+IMKgwqAgaW5jbHVkZS91YXBpL2xpbnV4L2NhcGFiaWxpdHku
aMKgwqDCoMKgIHzCoCA4ICsrKysrKystCj4+Pj4+Pj4gwqDCoCBzZWN1cml0eS9zZWxpbnV4L2lu
Y2x1ZGUvY2xhc3NtYXAuaCB8wqAgNCArKy0tCj4+Pj4+Pj4gwqDCoCAzIGZpbGVzIGNoYW5nZWQs
IDIxIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Pj4+Pj4KPj4+Pj4+PiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9saW51eC9jYXBhYmlsaXR5LmggYi9pbmNsdWRlL2xpbnV4L2NhcGFiaWxp
dHkuaAo+Pj4+Pj4+IGluZGV4IGVjY2UwZjQzYzczYS4uODc4NDk2OWQ5MWUxIDEwMDY0NAo+Pj4+
Pj4+IC0tLSBhL2luY2x1ZGUvbGludXgvY2FwYWJpbGl0eS5oCj4+Pj4+Pj4gKysrIGIvaW5jbHVk
ZS9saW51eC9jYXBhYmlsaXR5LmgKPj4+Pj4+PiBAQCAtMjUxLDYgKzI1MSwxOCBAQCBleHRlcm4g
Ym9vbCBwcml2aWxlZ2VkX3dydF9pbm9kZV91aWRnaWQoc3RydWN0IHVzZXJfbmFtZXNwYWNlICpu
cywgY29uc3Qgc3RydWN0Cj4+Pj4+Pj4gwqDCoCBleHRlcm4gYm9vbCBjYXBhYmxlX3dydF9pbm9k
ZV91aWRnaWQoY29uc3Qgc3RydWN0IGlub2RlICppbm9kZSwgaW50IGNhcCk7Cj4+Pj4+Pj4gwqDC
oCBleHRlcm4gYm9vbCBmaWxlX25zX2NhcGFibGUoY29uc3Qgc3RydWN0IGZpbGUgKmZpbGUsIHN0
cnVjdCB1c2VyX25hbWVzcGFjZSAqbnMsIGludCBjYXApOwo+Pj4+Pj4+IMKgwqAgZXh0ZXJuIGJv
b2wgcHRyYWNlcl9jYXBhYmxlKHN0cnVjdCB0YXNrX3N0cnVjdCAqdHNrLCBzdHJ1Y3QgdXNlcl9u
YW1lc3BhY2UgKm5zKTsKPj4+Pj4+PiArc3RhdGljIGlubGluZSBib29sIHBlcmZtb25fY2FwYWJs
ZSh2b2lkKQo+Pj4+Pj4+ICt7Cj4+Pj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgdXNlcl9uYW1lc3BhY2Ug
Km5zID0gJmluaXRfdXNlcl9uczsKPj4+Pj4+PiArCj4+Pj4+Pj4gK8KgwqDCoCBpZiAobnNfY2Fw
YWJsZV9ub2F1ZGl0KG5zLCBDQVBfUEVSRk1PTikpCj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiBuc19jYXBhYmxlKG5zLCBDQVBfUEVSRk1PTik7Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICvCoMKg
wqAgaWYgKG5zX2NhcGFibGVfbm9hdWRpdChucywgQ0FQX1NZU19BRE1JTikpCj4+Pj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgIHJldHVybiBuc19jYXBhYmxlKG5zLCBDQVBfU1lTX0FETUlOKTsKPj4+Pj4+
PiArCj4+Pj4+Pj4gK8KgwqDCoCByZXR1cm4gZmFsc2U7Cj4+Pj4+Pj4gK30KPj4+Pj4+Cj4+Pj4+
PiBXaHkgX25vYXVkaXQoKT/CoCBOb3JtYWxseSBvbmx5IHVzZWQgd2hlbiBhIHBlcm1pc3Npb24g
ZmFpbHVyZSBpcyBub24tZmF0YWwgdG8gdGhlIG9wZXJhdGlvbi7CoCBPdGhlcndpc2UsIHdlIHdh
bnQgdGhlIGF1ZGl0IG1lc3NhZ2UuCj4+Cj4+IFNvIGZhciBzbyBnb29kLCBJIHN1Z2dlc3QgdXNp
bmcgdGhlIHNpbXBsZXN0IHZlcnNpb24gZm9yIHY2Ogo+Pgo+PiBzdGF0aWMgaW5saW5lIGJvb2wg
cGVyZm1vbl9jYXBhYmxlKHZvaWQpCj4+IHsKPj4gwqDCoMKgwqByZXR1cm4gY2FwYWJsZShDQVBf
UEVSRk1PTikgfHwgY2FwYWJsZShDQVBfU1lTX0FETUlOKTsKPj4gfQo+Pgo+PiBJdCBrZWVwcyB0
aGUgaW1wbGVtZW50YXRpb24gc2ltcGxlIGFuZCByZWFkYWJsZS4gVGhlIGltcGxlbWVudGF0aW9u
IGlzIG1vcmUKPj4gcGVyZm9ybWFudCBpbiB0aGUgc2Vuc2Ugb2YgY2FsbGluZyB0aGUgQVBJIC0g
b25lIGNhcGFibGUoKSBjYWxsIGZvciBDQVBfUEVSRk1PTgo+PiBwcml2aWxlZ2VkIHByb2Nlc3Mu
Cj4+Cj4+IFllcywgaXQgYmxvYXRzIGF1ZGl0IGxvZyBmb3IgQ0FQX1NZU19BRE1JTiBwcml2aWxl
Z2VkIGFuZCB1bnByaXZpbGVnZWQgcHJvY2Vzc2VzLAo+PiBidXQgdGhpcyBibG9hdGluZyBhbHNv
IGFkdmVydGlzZXMgYW5kIGxldmVyYWdlcyB1c2luZyBtb3JlIHNlY3VyZSBDQVBfUEVSRk1PTgo+
PiBiYXNlZCBhcHByb2FjaCB0byB1c2UgcGVyZl9ldmVudF9vcGVuIHN5c3RlbSBjYWxsLgo+IAo+
IEkgY2FuIGxpdmUgd2l0aCB0aGF0LsKgIFdlIGp1c3QgbmVlZCB0byBkb2N1bWVudCB0aGF0IHdo
ZW4geW91IHNlZSBib3RoIGEgQ0FQX1BFUkZNT04gYW5kIGEgQ0FQX1NZU19BRE1JTiBhdWRpdCBt
ZXNzYWdlIGZvciBhIHByb2Nlc3MsIHRyeSBvbmx5IGFsbG93aW5nIENBUF9QRVJGTU9OIGZpcnN0
IGFuZCBzZWUgaWYgdGhhdCByZXNvbHZlcyB0aGUgaXNzdWUuwqAgV2UgaGF2ZSBhIHNpbWlsYXIg
aXNzdWUgd2l0aCBDQVBfREFDX1JFQURfU0VBUkNIIHZlcnN1cyBDQVBfREFDX09WRVJSSURFLgoK
cGVyZiBzZWN1cml0eSBbMV0gZG9jdW1lbnQgY2FuIGJlIHVwZGF0ZWQsIGF0IGxlYXN0LCB0byBh
bGlnbiBhbmQgZG9jdW1lbnQgCnRoaXMgYXVkaXQgbG9nZ2luZyBzcGVjaWZpY3MuCgp+QWxleGV5
CgpbMV0gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvYWRtaW4tZ3VpZGUv
cGVyZi1zZWN1cml0eS5odG1sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
