Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E68558A2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 22:19:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6632E6E109;
	Tue, 25 Jun 2019 20:19:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4D8F6E109
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 20:19:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 13:19:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,417,1557212400"; d="scan'208";a="313195560"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 25 Jun 2019 13:19:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190625174547.22164-1-chris@chris-wilson.co.uk>
 <op.z3ydosirxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <156148843527.2637.1647850966438714639@skylake-alporthouse-com>
 <50e16efa-e399-e9ca-7053-81400ff12083@intel.com>
 <156149346309.2637.7209968352789206254@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <a766c7f9-d578-d2e9-84bc-f8b88e67f5e7@intel.com>
Date: Tue, 25 Jun 2019 13:19:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <156149346309.2637.7209968352789206254@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Compact init params debug to
 a single line
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA2LzI1LzE5IDE6MTEgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDYtMjUgMjE6MDY6MTApCj4+Cj4+Cj4+IE9uIDYvMjUv
MTkgMTE6NDcgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPj4+IERvIHdlIGV2ZW4gbmVlZCB0byBk
dW1wIHRoZW0/IFRoZXkgYXJlIGFsbW9zdCBhbGwgc3RhdGljLCB3aXRoIHRoZQo+Pj4gZXhjZXB0
aW9uIG9mIGRlYnVnIGxldmVsIGFuZCBhZHMgYWRkcmVzcz8gSXMgaXQgdXNlZnVsPwo+Pgo+PiBJ
biBteSBleHBlcmllbmNlIGl0IGNhbiBiZSB1c2VmdWwgd2hlbiB3ZSBnZXQgYSBidWcgcmVwb3J0
IHdoZXJlIGd1Ywo+PiBmYWlsZWQgdG8gbG9hZCBvciB3aGVuIHdlJ3JlIHRlc3RpbmcgYW4gaW50
ZXJmYWNlIGNoYW5nZSB0byBkb3VibGUtY2hlY2sKPj4gdGhhdCB0aGUgcGFyYW1ldGVycyBhcmUg
c2V0IGFzIGV4cGVjdGVkLiBCdXQgSSBhZ3JlZSB0aGVyZSBpcyBubyBuZWVkIHRvCj4+IGR1bXAg
YWxsIHRoZSBkd29yZHMgd2UgZG9uJ3Qgc2V0LiBNYXliZSB3ZSBjYW4gcmVkdWNlIEdVQ19DVExf
TUFYX0RXT1JEUwo+PiB0byB0aGUgbnVtYmVyIG9mIHVzZWQgZHdvcmRzLCBvciBhZGQgYSBuZXcg
ZGVmaW5lIHNldCB0byB0aGF0IGFuZCB1c2UgaXQKPj4gZm9yIGJ1ZiBzaXplPwo+IAo+IElmIHlv
dSBoYXZlIHVzZWQgdGhlbSwgdGhlbiBieSBkZWZpbml0aW9uIHRoZXkgYXJlIHVzZWZ1bCA6KQo+
IAo+IElmIHlvdSBrbm93IHdoZW4geW91IG5lZWQgdGhlIGluZm9ybWF0aW9uLCBlLmcuIHRoZSBp
bml0IHNlcXVlbmNlCj4gZmFpbGVkOyB0aGVuIGR1bXAgdGhlbj8KPiAtQ2hyaXMKPiAKCkhhdmlu
ZyB0aGVtIGR1bXBlZCBvbmx5IG9uIGd1YyBsb2FkaW5nIGVycm9yIHNvdW5kcyBvayB0byBtZSwg
YnV0IHdlIAptaWdodCBoYXZlIHRvIHN0b3JlIHRoZW0gc29tZXdoZXJlLCBiZWNhdXNlIG9uY2Ug
d2UndmUgc3RhcnRlZCB0aGUgbG9hZCAKR3VDIGlzIGZyZWUgdG8gb3ZlcndyaXRlIHRob3NlIHJl
Z2lzdGVycyB0byByZXR1cm4gaW5mb3JtYXRpb24gdG8gdXMuIEkgCnRoaW5rIGF0IHRoZSBtb21l
bnQgaXQgb25seSB3cml0ZXMgdG8gU0NSQVRDSF8xMyBhbmQgU0NSQVRDSF8xNSwgd2hpY2ggCndl
IGRvIG5vdCByZWFjaCB3aXRoIHRoZSBwYXJhbWV0ZXJzLCBidXQgYmV0dGVyIHRvIGJlIGZ1dHVy
ZSBwcm9vZi4KCkRhbmllbGUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
