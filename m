Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 815E37D6F1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 10:08:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0359B6E3C7;
	Thu,  1 Aug 2019 08:08:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 298D56E3C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 08:08:16 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 01:08:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,333,1559545200"; d="scan'208";a="372523606"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by fmsmga006.fm.intel.com with ESMTP; 01 Aug 2019 01:08:13 -0700
Date: Thu, 1 Aug 2019 11:08:11 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190801080811.GA27472@intel.intel>
References: <20190730133035.1977-1-chris@chris-wilson.co.uk>
 <20190730133035.1977-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730133035.1977-2-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 01/17] drm/i915/execlists: Always clear
 pending&inflight requests on reset
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgo+IElmIHdlIHNraXAgdGhlIHJlc2V0IGFzIHdlIGZvdW5kIHRoZSBlbmdpbmUg
aW5hY3RpdmUgYXQgdGhlIHRpbWUgb2YgdGhlCj4gcmVzZXQsIHdlIHN0aWxsIG5lZWQgdG8gY2xl
YXIgdGhlIHJlc2lkdWFsIGluZmxpZ2h0ICYgcGVuZGluZyByZXF1ZXN0Cj4gYm9va2tlZXBpbmcg
dG8gcmVmbGVjdCB0aGUgY3VycmVudCBzdGF0ZSBvZiBIVy4KClsuLi5dCgo+IFdoZXJlIG5vdCBo
YXZpbmcgY2xlYXJlZCB0aGUgcGVuZGluZyBhcnJheSBvbiByZXNldCwgaXQgcGVyc2lzdHMKPiBp
bmRlZmluaXRlbHkuCgpkZXMgdGhpcyBmaXggQnVnIDExMTE0NCgqKT8KCj4gLQo+IC0JLyoKPiAt
CSAqIENhdGNoIHVwIHdpdGggYW55IG1pc3NlZCBjb250ZXh0LXN3aXRjaCBpbnRlcnJ1cHRzLgo+
IC0JICoKPiAtCSAqIElkZWFsbHkgd2Ugd291bGQganVzdCByZWFkIHRoZSByZW1haW5pbmcgQ1NC
IGVudHJpZXMgbm93IHRoYXQgd2UKPiAtCSAqIGtub3cgdGhlIGdwdSBpcyBpZGxlLiBIb3dldmVy
LCB0aGUgQ1NCIHJlZ2lzdGVycyBhcmUgc29tZXRpbWVzXlcKPiAtCSAqIG9mdGVuIHRyYXNoZWQg
YWNyb3NzIGEgR1BVIHJlc2V0ISBJbnN0ZWFkIHdlIGhhdmUgdG8gcmVseSBvbgo+IC0JICogZ3Vl
c3NpbmcgdGhlIG1pc3NlZCBjb250ZXh0LXN3aXRjaCBldmVudHMgYnkgbG9va2luZyBhdCB3aGF0
Cj4gLQkgKiByZXF1ZXN0cyB3ZXJlIGNvbXBsZXRlZC4KPiAtCSAqLwo+IC0JZXhlY2xpc3RzX2Nh
bmNlbF9wb3J0X3JlcXVlc3RzKGV4ZWNsaXN0cyk7Cj4gLQoKd2h5IGRpZCB0aGlzIGVuZCB1cCBo
ZXJlIGluIGEgZmlyc3QgcGxhY2U/CgpSZXZpZXdlZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0
aUBpbnRlbC5jb20+CgpBbmRpCgooKikgaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTExMTQ0Cgo+ICAJaWYgKCFycSkgewo+ICAJCWNlLT5yaW5nLT5oZWFkID0g
Y2UtPnJpbmctPnRhaWw7Cj4gIAkJZ290byBvdXRfcmVwbGF5Owo+IEBAIC0yMzU2LDYgKzIzNDQs
NyBAQCBzdGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUsIGJvb2wgc3RhbGxlZCkKPiAgCj4gIHVud2luZDoKPiAgCS8qIFB1c2ggYmFjayBh
bnkgaW5jb21wbGV0ZSByZXF1ZXN0cyBmb3IgcmVwbGF5IGFmdGVyIHRoZSByZXNldC4gKi8KPiAr
CWV4ZWNsaXN0c19jYW5jZWxfcG9ydF9yZXF1ZXN0cyhleGVjbGlzdHMpOwo+ICAJX191bndpbmRf
aW5jb21wbGV0ZV9yZXF1ZXN0cyhlbmdpbmUpOwo+ICB9Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
