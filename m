Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3471843634
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85B14898A4;
	Thu, 13 Jun 2019 13:03:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7ED2898A4;
 Thu, 13 Jun 2019 13:03:51 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 299CC284C4A
To: "Ser, Simon" <simon.ser@intel.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>
References: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
 <11db9a1438142d413ad228e6d1953463dfbb9236.1559562608.git.guillaume.tucker@collabora.com>
 <20190606072140.rgmp6twpi4z5mvjk@ahiler-desk1.fi.intel.com>
 <b6543a8d7086abe7a15a5fe689de6ead0fbe62f1.camel@intel.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <92c16b42-a667-370e-0217-23af165a9529@collabora.com>
Date: Thu, 13 Jun 2019 13:56:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <b6543a8d7086abe7a15a5fe689de6ead0fbe62f1.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/4] gitlab-ci: add
 libatomic to Fedora docker image
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDYvMDYvMjAxOSAwODoyNiwgU2VyLCBTaW1vbiB3cm90ZToKPiBPbiBUaHUsIDIwMTktMDYt
MDYgYXQgMTA6MjEgKzAzMDAsIEFya2FkaXVzeiBIaWxlciB3cm90ZToKPj4gT24gTW9uLCBKdW4g
MDMsIDIwMTkgYXQgMTI6NTQ6NDhQTSArMDEwMCwgR3VpbGxhdW1lIFR1Y2tlciB3cm90ZToKPj4+
IEFkZCBsaWJhdG9taWMgdG8gdGhlIEZlZG9yYSBkb2NrZXIgaW1hZ2Ugc28gaXQgY2FuIGxpbmsg
YmluYXJpZXMgdGhhdAo+Pj4gdXNlIF9fYXRvbWljXyogZnVuY3Rpb25zLgo+Pj4KPj4+IFNpZ25l
ZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNrZXJAY29sbGFib3JhLmNv
bT4KPj4+IC0tLQo+Pj4gIERvY2tlcmZpbGUuZmVkb3JhIHwgMiArLQo+Pj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9E
b2NrZXJmaWxlLmZlZG9yYSBiL0RvY2tlcmZpbGUuZmVkb3JhCj4+PiBpbmRleCA2Njg2ZTU4NzYx
M2QuLmM4NGI0MTJiMDcyMyAxMDA2NDQKPj4+IC0tLSBhL0RvY2tlcmZpbGUuZmVkb3JhCj4+PiAr
KysgYi9Eb2NrZXJmaWxlLmZlZG9yYQo+Pj4gQEAgLTEsNyArMSw3IEBACj4+PiAgRlJPTSBmZWRv
cmE6MzAKPj4+ICAKPj4+ICBSVU4gZG5mIGluc3RhbGwgLXkgXAo+Pj4gLQlnY2MgZmxleCBiaXNv
biBtZXNvbiBuaW5qYS1idWlsZCB4ZG90b29sIFwKPj4+ICsJZ2NjIGZsZXggYmlzb24gbGliYXRv
bWljIG1lc29uIG5pbmphLWJ1aWxkIHhkb3Rvb2wgXAo+Pj4gIAkncGtnY29uZmlnKGxpYmRybSkn
IFwKPj4+ICAJJ3BrZ2NvbmZpZyhwY2lhY2Nlc3MpJyBcCj4+PiAgCSdwa2djb25maWcobGlia21v
ZCknIFwKPj4KPj4gUmV2aWV3ZWQtYnk6IEFya2FkaXVzeiBIaWxlciA8YXJrYWRpdXN6LmhpbGVy
QGludGVsLmNvbT4KPj4KPj4gSSB3b25kZXIgaG93IGRvZXMgdGhlIGxpYmF0b21pYyBnZXRzIGlu
c3RhbGxlZCBpbXBsaWNpdGx5IGluIERlYmlhbi4KPiAKPiBJdCdzIGEgZGVwZW5kZW5jeSBvZiBH
Q0MuIFByb2JhYmx5IGEgZ29vZCBpZGVhIHRvIGFkZCBpdCBhbnl3YXk/CkZhaXIgZW5vdWdoLCBJ
J20gYWRkaW5nIGl0IGluIHRoZSB2Mi4KCkd1aWxsYXVtZQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
