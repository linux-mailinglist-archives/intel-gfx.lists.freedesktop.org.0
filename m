Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4127921D611
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 14:38:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96C126E0E1;
	Mon, 13 Jul 2020 12:38:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB12A6E0E1
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 12:38:04 +0000 (UTC)
IronPort-SDR: zJyrhMD/olDinb3sUv6hbNZGBIyC4HVP9pTdRNgeT9fK6DF37gGiOhQXqqYPeO2epUDFVHFmNr
 5gA6kuSglD7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9680"; a="210137521"
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; d="scan'208";a="210137521"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 05:38:04 -0700
IronPort-SDR: EO3B2qrs1RQQyHOKOCrYUqs9vNaGgetc64MWP8nB2LSmzWjROwMV027JJgpdRM5J2Zw1t07eng
 lMFC0mhU57tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; d="scan'208";a="307447599"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga004.fm.intel.com with ESMTP; 13 Jul 2020 05:38:03 -0700
Received: from [10.249.229.49] (abudanko-mobl.ccr.corp.intel.com
 [10.249.229.49])
 by linux.intel.com (Postfix) with ESMTP id 60D50580810;
 Mon, 13 Jul 2020 05:37:52 -0700 (PDT)
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <76718dc6-5483-5e2e-85b8-64e70306ee1f@linux.ibm.com>
 <7776fa40-6c65-2aa6-1322-eb3a01201000@linux.intel.com>
 <20200710170911.GD7487@kernel.org>
 <0d2e2306-22b2-a730-dc3f-edb3538b6561@linux.intel.com>
 <20200713121746.GA7029@kernel.org>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <0fadcf78-8b0e-ed03-a554-cc172b7d249c@linux.intel.com>
Date: Mon, 13 Jul 2020 15:37:51 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200713121746.GA7029@kernel.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v8 00/12] Introduce CAP_PERFMON to secure
 system performance monitoring and observability
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
Cc: Ravi Bangoria <ravi.bangoria@linux.ibm.com>,
 Song Liu <songliubraving@fb.com>, Andi Kleen <ak@linux.intel.com>,
 linux-man@vger.kernel.org,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>, James Morris <jmorris@namei.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, Serge Hallyn <serge@hallyn.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEzLjA3LjIwMjAgMTU6MTcsIEFybmFsZG8gQ2FydmFsaG8gZGUgTWVsbyB3cm90ZToKPiBF
bSBNb24sIEp1bCAxMywgMjAyMCBhdCAxMjo0ODoyNVBNICswMzAwLCBBbGV4ZXkgQnVkYW5rb3Yg
ZXNjcmV2ZXU6Cj4+Cj4+IE9uIDEwLjA3LjIwMjAgMjA6MDksIEFybmFsZG8gQ2FydmFsaG8gZGUg
TWVsbyB3cm90ZToKPj4+IEVtIEZyaSwgSnVsIDEwLCAyMDIwIGF0IDA1OjMwOjUwUE0gKzAzMDAs
IEFsZXhleSBCdWRhbmtvdiBlc2NyZXZldToKPj4+PiBPbiAxMC4wNy4yMDIwIDE2OjMxLCBSYXZp
IEJhbmdvcmlhIHdyb3RlOgo+Pj4+Pj4gQ3VycmVudGx5IGFjY2VzcyB0byBwZXJmX2V2ZW50cywg
aTkxNV9wZXJmIGFuZCBvdGhlciBwZXJmb3JtYW5jZQo+Pj4+Pj4gbW9uaXRvcmluZyBhbmQgb2Jz
ZXJ2YWJpbGl0eSBzdWJzeXN0ZW1zIG9mIHRoZSBrZXJuZWwgaXMgb3BlbiBvbmx5IGZvcgo+Pj4+
Pj4gYSBwcml2aWxlZ2VkIHByb2Nlc3MgWzFdIHdpdGggQ0FQX1NZU19BRE1JTiBjYXBhYmlsaXR5
IGVuYWJsZWQgaW4gdGhlCj4+Pj4+PiBwcm9jZXNzIGVmZmVjdGl2ZSBzZXQgWzJdLgo+IAo+Pj4+
Pj4gVGhpcyBwYXRjaCBzZXQgaW50cm9kdWNlcyBDQVBfUEVSRk1PTiBjYXBhYmlsaXR5IGRlc2ln
bmVkIHRvIHNlY3VyZQo+Pj4+Pj4gc3lzdGVtIHBlcmZvcm1hbmNlIG1vbml0b3JpbmcgYW5kIG9i
c2VydmFiaWxpdHkgb3BlcmF0aW9ucyBzbyB0aGF0Cj4+Pj4+PiBDQVBfUEVSRk1PTiB3b3VsZCBh
c3Npc3QgQ0FQX1NZU19BRE1JTiBjYXBhYmlsaXR5IGluIGl0cyBnb3Zlcm5pbmcgcm9sZQo+Pj4+
Pj4gZm9yIHBlcmZvcm1hbmNlIG1vbml0b3JpbmcgYW5kIG9ic2VydmFiaWxpdHkgc3Vic3lzdGVt
cyBvZiB0aGUga2VybmVsLgo+IAo+Pj4+PiBJJ20gc2VlaW5nIGFuIGlzc3VlIHdpdGggQ0FQX1BF
UkZNT04gd2hlbiBJIHRyeSB0byByZWNvcmQgZGF0YSBmb3IgYQo+Pj4+PiBzcGVjaWZpYyB0YXJn
ZXQuIEkgZG9uJ3Qga25vdyB3aGV0aGVyIHRoaXMgaXMgc29ydCBvZiBhIHJlZ3Jlc3Npb24gb3IK
Pj4+Pj4gYW4gZXhwZWN0ZWQgYmVoYXZpb3IuCj4gCj4+Pj4gVGhhbmtzIGZvciByZXBvcnRpbmcg
YW5kIHJvb3QgY2F1c2luZyB0aGlzIGNhc2UuIFRoZSBiZWhhdmlvciBsb29rcyBsaWtlCj4+Pj4g
a2luZCBvZiBleHBlY3RlZCBzaW5jZSBjdXJyZW50bHkgQ0FQX1BFUkZNT04gdGFrZXMgb3ZlciB0
aGUgcmVsYXRlZCBwYXJ0Cj4+Pj4gb2YgQ0FQX1NZU19BRE1JTiBjcmVkZW50aWFscyBvbmx5LiBB
Y3R1YWxseSBQZXJmIHNlY3VyaXR5IGRvY3MgWzFdIHNheQo+Pj4+IHRoYXQgYWNjZXNzIGNvbnRy
b2wgaXMgYWxzbyBzdWJqZWN0IHRvIENBUF9TWVNfUFRSQUNFIGNyZWRlbnRpYWxzLgo+IAo+Pj4g
SSB0aGluayB0aGF0IHN0YXRpbmcgdGhhdCBpbiB0aGUgZXJyb3IgbWVzc2FnZSB3b3VsZCBiZSBo
ZWxwZnVsLCBhZnRlcgo+Pj4gYWxsLCB3aG8gcmVhZHMgZG9jcz8gOC0pCj4gCj4+IEF0IGxlYXN0
IHRob3NlIHdobyB3cml0ZSBpdCA6RCAuLi4KPiAKPiBFdmVyeWJvZHkgc2hvdWxkIHJlYWQgaXQs
IHN1cmUgOi0pCj4gIAo+Pj4gSS5lLiwgdGhpczoKPj4+Cj4+PiAkIC4vcGVyZiBzdGF0IGxzCj4+
PiDCoCBFcnJvcjoKPj4+IMKgIEFjY2VzcyB0byBwZXJmb3JtYW5jZSBtb25pdG9yaW5nIGFuZCBv
YnNlcnZhYmlsaXR5IG9wZXJhdGlvbnMgaXMgbGltaXRlZC4KPj4+ICQKPj4+Cj4+PiBDb3VsZCBi
ZWNvbWU6Cj4+Pgo+Pj4gJCAuL3BlcmYgc3RhdCBscwo+Pj4gwqAgRXJyb3I6Cj4+PiDCoCBBY2Nl
c3MgdG8gcGVyZm9ybWFuY2UgbW9uaXRvcmluZyBhbmQgb2JzZXJ2YWJpbGl0eSBvcGVyYXRpb25z
IGlzIGxpbWl0ZWQuCj4+PiAgIFJpZ2h0IG5vdyBvbmx5IENBUF9QRVJGTU9OIGlzIGdyYW50ZWQs
IHlvdSBtYXkgbmVlZCBDQVBfU1lTX1BUUkFDRS4KPj4+ICQKPj4KPj4gSXQgd291bGQgYmV0dGVy
IHByb3ZpZGUgcmVmZXJlbmNlIHRvIHBlcmYgc2VjdXJpdHkgZG9jcyBpbiB0aGUgdG9vbCBvdXRw
dXQuCj4gCj4gU28gYWRkIGEgM3JkIGxpbmU6Cj4gCj4gJCAuL3BlcmYgc3RhdCBscwo+IMKgIEVy
cm9yOgo+IMKgIEFjY2VzcyB0byBwZXJmb3JtYW5jZSBtb25pdG9yaW5nIGFuZCBvYnNlcnZhYmls
aXR5IG9wZXJhdGlvbnMgaXMgbGltaXRlZC4KPiAgIFJpZ2h0IG5vdyBvbmx5IENBUF9QRVJGTU9O
IGlzIGdyYW50ZWQsIHlvdSBtYXkgbmVlZCBDQVBfU1lTX1BUUkFDRS4KPiAgIFBsZWFzZSByZWFk
IHRoZSAnUGVyZiBldmVudHMgYW5kIHRvb2wgc2VjdXJpdHknIGRvY3VtZW50Ogo+ICAgaHR0cHM6
Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvYWRtaW4tZ3VpZGUvcGVyZi1zZWN1cml0
eS5odG1sCklmIGl0IGhhZCB0aGF0IHBhdGNoIGJlbG93IHRoZW4gbWVzc2FnZSBjaGFuZ2Ugd291
bGQgbm90IGJlIHJlcXVpcmVkLgpIb3dldmVyIHRoaXMgdHdvIHNlbnRlbmNlcyBpbiB0aGUgZW5k
IG9mIHdob2xlIG1lc3NhZ2Ugd291bGQgc3RpbGwgYWRkIHVwOgoiUGxlYXNlIHJlYWQgdGhlICdQ
ZXJmIGV2ZW50cyBhbmQgdG9vbCBzZWN1cml0eScgZG9jdW1lbnQ6CiBodHRwczovL3d3dy5rZXJu
ZWwub3JnL2RvYy9odG1sL2xhdGVzdC9hZG1pbi1ndWlkZS9wZXJmLXNlY3VyaXR5Lmh0bWwiCgo+
IAo+PiBMb29rcyBsaWtlIGV4dGVuZGluZyBwdHJhY2VfbWF5X2FjY2VzcygpIGNoZWNrIGZvciBw
ZXJmX2V2ZW50cyB3aXRoIENBUF9QRVJGTU9OCj4gCj4gWW91IG1lYW4gdGhlIGZvbGxvd2luZz8K
CkV4YWN0bHkgdGhhdC4KCj4gCj4gZGlmZiAtLWdpdCBhL2tlcm5lbC9ldmVudHMvY29yZS5jIGIv
a2VybmVsL2V2ZW50cy9jb3JlLmMKPiBpbmRleCA4NTZkOThjMzZmNTYuLmEyMzk3ZjcyNGMxMCAx
MDA2NDQKPiAtLS0gYS9rZXJuZWwvZXZlbnRzL2NvcmUuYwo+ICsrKyBiL2tlcm5lbC9ldmVudHMv
Y29yZS5jCj4gQEAgLTExNTk1LDcgKzExNTk1LDcgQEAgU1lTQ0FMTF9ERUZJTkU1KHBlcmZfZXZl
bnRfb3BlbiwKPiAgCQkgKiBwZXJmX2V2ZW50X2V4aXRfdGFzaygpIHRoYXQgY291bGQgaW1wbHkp
Lgo+ICAJCSAqLwo+ICAJCWVyciA9IC1FQUNDRVM7Cj4gLQkJaWYgKCFwdHJhY2VfbWF5X2FjY2Vz
cyh0YXNrLCBQVFJBQ0VfTU9ERV9SRUFEX1JFQUxDUkVEUykpCj4gKwkJaWYgKCFwZXJmbW9uX2Nh
cGFibGUoKSAmJiAhcHRyYWNlX21heV9hY2Nlc3ModGFzaywgUFRSQUNFX01PREVfUkVBRF9SRUFM
Q1JFRFMpKQo+ICAJCQlnb3RvIGVycl9jcmVkOwo+ICAJfQo+IAo+PiBtYWtlcyBtb25pdG9yaW5n
IHNpbXBsZXIgYW5kIGV2ZW4gbW9yZSBzZWN1cmUgdG8gdXNlIHNpbmNlIFBlcmYgdG9vbCBuZWVk
Cj4+IG5vdCB0byBzdGFydC9zdG9wL3NpbmdsZS1zdGVwIGFuZCByZWFkL3dyaXRlIHJlZ2lzdGVy
cyBhbmQgbWVtb3J5IGFuZCBzbyBvbgo+PiBsaWtlIGEgZGVidWdnZXIgb3Igc3RyYWNlLWxpa2Ug
dG9vbC4gV2hhdCBkbyB5b3UgdGhpbms/Cj4gCj4gSSB0ZW5kIHRvIGFncmVlLCBQZXRlcj8KPiAg
Cj4+IEFsZXhlaQo+Pgo+Pj4KPj4+IC0gQXJuYWxkbwoKQWxleGVpCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
