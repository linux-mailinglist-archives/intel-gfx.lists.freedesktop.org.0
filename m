Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA58A8603
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 17:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25187893DB;
	Wed,  4 Sep 2019 15:17:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10C9F893DB
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 15:17:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 08:17:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="358134152"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.93])
 ([10.66.116.93])
 by orsmga005.jf.intel.com with ESMTP; 04 Sep 2019 08:17:11 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190903165227.6056-1-shashank.sharma@intel.com>
 <20190903172057.GZ7482@intel.com>
 <599fbdf3-e1b9-92e5-3303-58a1a8a83a55@intel.com>
 <20190904122634.GA7482@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <3c46e8fd-97bb-b573-5034-a83c0e7c9a21@intel.com>
Date: Wed, 4 Sep 2019 20:47:10 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904122634.GA7482@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 0/2] Enable Nearest-neighbor for Integer mode
 scaling
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDkvNC8yMDE5IDU6NTYgUE0sIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBXZWQsIFNl
cCAwNCwgMjAxOSBhdCAwODozMjowOUFNICswNTMwLCBTaGFybWEsIFNoYXNoYW5rIHdyb3RlOgo+
PiBIZWxsbyBWaWxsZSwKPj4KPj4gT24gOS8zLzIwMTkgMTA6NTAgUE0sIFZpbGxlIFN5cmrDpGzD
pCB3cm90ZToKPj4+IE9uIFR1ZSwgU2VwIDAzLCAyMDE5IGF0IDEwOjIyOjI1UE0gKzA1MzAsIFNo
YXNoYW5rIFNoYXJtYSB3cm90ZToKPj4+PiBCbHVycnkgb3V0cHV0cyBkdXJpbmcgdXBzY2FsaW5n
IHRoZSBidWZmZXIsIGlzIGEgZ2VuZXJpYyBwcm9ibGVtIG9mIGdmeAo+Pj4+IGluZHVzdHJ5LiBP
bmUgb2YgdGhlIG1ham9yIHJlYXNvbiBiZWhpbmQgdGhpcyBibHVycmluZXNzIGlzIHRoZQo+Pj4+
IGludGVycG9sYXRpb24gb2YgcGl4ZWwgdmFsdWVzIHVzZWQgYnkgbW9zdCBvZiB0aGUgdXBzY2Fs
aW5nIGhhcmR3YXJlcy4KPj4+Pgo+Pj4+IE5lYXJlc3QtbmVpZ2hib3IgaXMgYSBzY2FsaW5nIG1v
ZGUsIHdoaWNoIHdvcmtzIGJ5IGZpbGxpbmcgaW4gdGhlIG1pc3NpbmcKPj4+PiBjb2xvciB2YWx1
ZXMgaW4gdGhlIHVwc2NhbGVkIGltYWdlIHdpdGggdGhhdCBvZiB0aGUgY29vcmRpbmF0ZS1tYXBw
ZWQKPj4+PiBuZWFyZXN0IHNvdXJjZSBwaXhlbCB2YWx1ZS4KPj4+Pgo+Pj4+IE5lYXJlc3QtbmVp
Z2hib3IgY2FuIHByb2R1Y2UgKGFsbW9zdCkgbm9uLWJsdXJyeSBzY2FsaW5nIG91dHB1dHMgd2hl
bgo+Pj4+IHRoZSBzY2FsaW5nIHJhdGlvIGlzIGNvbXBsZXRlIGludGVnZXIuIEZvciBleGFtcGxl
Ogo+Pj4+IC0gaW5wdXQgYnVmZmVyIHJlc29sdXRpb246IDEyODB4NzIwKEhEKQo+Pj4+IC0gb3V0
cHV0IGJ1ZmZlciByZXNvbHV0aW9uOiAzODQweDIxNjAoVUhELzRLKQo+Pj4+IC0gc2NhbGluZyBy
YXRpbyAoaCkgPSAzODQwLzEyODAgPSAzCj4+Pj4gICAgIHNjYWxpbmcgcmF0aW8gKHYpID0gMjE2
MC83MjAgPSAzCj4+Pj4gSW4gc3VjaCBzY2VuYXJpb3MsIHdlIHNob3VsZCB0cnkgdG8gcGljayBO
ZWFyZXN0LW5laWdoYm9yIGFzIHNjYWxpbmcKPj4+PiBtZXRob2Qgd2hlbiBwb3NzaWJsZS4KPj4+
Pgo+Pj4+IE1hbnkgZ2FtaW5nIGNvbW11bml0aWVzIGhhdmUgYmVlbiBhc2tpbmcgZm9yIGludGVn
ZXItbW9kZSBzY2FsaW5nCj4+Pj4gc3VwcG9ydCwgc29tZSBsaW5rcyBhbmQgYmFja2dyb3VuZDoK
Pj4+PiBodHRwczovL3NvZnR3YXJlLmludGVsLmNvbS9lbi11cy9hcnRpY2xlcy9pbnRlZ2VyLXNj
YWxpbmctc3VwcG9ydC1vbi1pbnRlbC1ncmFwaGljcwo+Pj4+IGh0dHA6Ly90YW5hbGluLmNvbS9l
bi9hcnRpY2xlcy9sb3NzbGVzcy1zY2FsaW5nLwo+Pj4+IGh0dHBzOi8vY29tbXVuaXR5LmFtZC5j
b20vdGhyZWFkLzIwOTEwNwo+Pj4+IGh0dHBzOi8vd3d3Lm52aWRpYS5jb20vZW4tdXMvZ2Vmb3Jj
ZS9mb3J1bXMvZ2FtZS1yZWFkeS1kcml2ZXJzLzEzLzEwMDIvZmVhdHVyZS1yZXF1ZXN0LW5vbmJs
dXJyeS11cHNjYWxpbmctYXQtaW50ZWdlci1yYXQvCj4+Pj4KPj4+PiBUaGlzIHBhdGNoIHNlcmll
cyBlbmFibGVzIE5OIHNjYWxpbmcgb24gSW50ZWwgZGlzcGxheSAoSUNMKSwgd2hlbiB0aGUgdXBz
Y2FsaW5nCj4+Pj4gcmF0aW8gaXMgaW50ZWdlci4KPj4+IEkgdGhpbmsgd2UnZCBwcm9iYWJseSB3
YW50IGEgcHJvcGVydHkgZm9yIHRoaXMgc29ydCBvZiBzdHVmZi4gaWd0Cj4+PiBjb3VsZCBwZXJo
YXBzIGFsc28gdXNlIGl0IHRvIGVuYWJsZSBjcmMgYmFzZWQgc2NhbGluZyB0ZXN0cy4KPj4gSSB3
YXMgaW5pdGlhbGx5IHBsYW5uaW5nIHRvIGF0dGFjaCB0aGlzIHRvIHNjYWxpbmcgbW9kZSBwcm9w
ZXJ0eSwKPj4gcHJvYmFibHkgY3JlYXRlIGEgbmV3IG9wdGlvbiBpbiB0aGVyZSBjYWxsZWQgIklu
dGVnZXIgbW9kZSBzY2FsaW5nIiBvcgo+PiB3ZSBjYW4gdXNlIHRoZSAibWFpbnRhaW4gYXNwZWN0
IHJhdGlvIiBzdWItb3B0aW9uIHRvby4gRG8geW91IHRoaW5rIGl0Cj4+IHdvdWxkIG1ha2Ugc2Vu
c2UgPyBPciBzaG91bGQgd2UgY3JlYXRlIGEgbmV3IHByb3BlcnR5IGFsdG9nZXRoZXIgPwo+IEkg
d2FzIHRoaW5raW5nIGEgbmV3IHByb3AuIEl0IHdvdWxkIGFsc28gZXhwb3NlIHRoZSBwb3NzaWJp
bGl0eSBvZgo+IGFkZGluZyBldmVuIG1vcmUgZmlsdGVyL3dpbmRvdyBmdW5jdGlvbnMuIE1heWJl
IHNvbWVvbmUgd2FudHMgYQo+IGxpbmVhciBmaWx0ZXIgZm9yIGluc3RhbmNlLgpTb3VuZHMgZ29v
ZC4KPj4+IEFub3RoZXIgcHJvYmxlbSBpcyB0aGF0IHdlIGN1cnJlbnRseSBkb24ndCBleHBvc2Ug
dGhlIHBhbmVsIGZpdHRlcgo+Pj4gZm9yIGV4dGVybmFsIGRpc3BsYXlzIHNvIHRoaXMgd291bGQg
YmUgbGltaXRlZCB0byBlRFAvRFNJIG9ubHkuCj4+PiBJIGhhdmUgYSBicmFuY2ggdGhhdCBpbXBs
ZW1lbnRzIGJvcmRlcnMgKGZvciB1bmRlcnNjYW4pIGZvciBEUC9IRE1JCj4+PiB3aGljaCBpcyBh
dCBsZWFzdCBtb3ZpbmcgdGhlIGNvZGUgYSBsaXR0bGUgYml0IGludG8gYSBkaXJlY3Rpb24gd2hl
cmUKPj4+IHdlIGNvdWxkIGNvbnNpZGVyIGV4cG9zaW5nIHRoZSBwYW5lbCBmaXR0ZXIgZm9yIGV4
dGVybmFsIGRpc3BsYXlzLgo+PiBUaGlzIHdvdWxkIGJlIHZlcnkgaW50ZXJlc3RpbmcsIGRvIHlv
dSBoYXZlIGFueSBwbGFucyB0byBwdWJsaXNoIHRoaXMgc29vbiA/Cj4gSSBjYW4gc2VuZCBpdCBv
dXQuIEJlZW4gaGFuZ2luZyBvbiB0byBpdCBiZWNhdXNlIHRoZXJlJ3Mgb3RoZXIgcGVuZGluZwo+
IHN0dWZmIG9uIHRoZSBsaXN0IGFzIHdlbGwsIGJ1dCBhIGZldyBtb3JlIHBhdGNoZXMgcHJvYmFi
bHkgd29uJ3QgaHVydCA6KQoKTG9va2luZyBmb3J3YXJkIHRvIGl0LCB0aGVuIDopCgotIFNoYXNo
YW5rCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
