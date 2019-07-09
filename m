Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B68363760
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 15:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABBA989686;
	Tue,  9 Jul 2019 13:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 428 seconds by postgrey-1.36 at gabe;
 Tue, 09 Jul 2019 13:59:33 UTC
Received: from lb1-smtp-cloud7.xs4all.net (lb1-smtp-cloud7.xs4all.net
 [194.109.24.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E85B895C4
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 13:59:33 +0000 (UTC)
Received: from xps13 ([83.160.161.190]) by smtp-cloud7.xs4all.net with ESMTPSA
 id kqXbhm3nw0SBqkqXeh3BQp; Tue, 09 Jul 2019 15:52:23 +0200
Message-ID: <2a52d8bd1b44e5518abb965ef503c2f1014d9829.camel@tiscali.nl>
From: Paul Bolle <pebolle@tiscali.nl>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Date: Tue, 09 Jul 2019 15:52:19 +0200
In-Reply-To: <1561834612.3071.6.camel@HansenPartnership.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfLBYmG6SmpCBQxXyyp03Mr6NJuF8UR9yPwgqcZqIHX05s+2+W+qnQulaCZklgoi56/AdNQf58A0NFPcAaa8L8FBahO9a2NofpxTF+uEmhMI3Uwbs6Qgu
 QLeZX72Dad4KHd78nqKA7glOxAZNPQJ81npwNy2baFdSkdqo5wR5r6FKm7sfQQ+8I6nVzynT/TROhdnc5yY4YDSUJRLqG9jDX4koJ/99FUQXQZFDryAyzZKe
 QmOGx3avDDiw0cirOmK+A1cSfZrBf/qRE0WoOTdJOoc=
Subject: Re: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
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
Cc: intel-gfx@lists.freedesktop.org,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFtZXMsCgpKYW1lcyBCb3R0b21sZXkgc2NocmVlZiBvcCB6YSAyOS0wNi0yMDE5IG9tIDEx
OjU2IFstMDcwMF06Cj4gVGhlIHN5bXB0b21zIGFyZSByZWFsbHkgd2VpcmQ6IHRoZSBzY3JlZW4g
aW1hZ2UgaXMgbG9ja2VkIGluIHBsYWNlLiAKPiBUaGUgbWFjaGluZSBpcyBzdGlsbCBmdW5jdGlv
bmFsIGFuZCBpZiBJIGxvZyBpbiBvdmVyIHRoZSBuZXR3b3JrIEkgY2FuCj4gZG8gYW55dGhpbmcg
SSBsaWtlLCBpbmNsdWRpbmcga2lsbGluZyB0aGUgWCBzZXJ2ZXIgYW5kIHRoZSBkaXNwbGF5IHdp
bGwKPiBuZXZlciBhbHRlci4gIEl0IGFsc28gc2VlbXMgdGhhdCB0aGUgc3lzdGVtIGlzIGFjY2Vw
dGluZyBrZXlib2FyZCBpbnB1dAo+IGJlY2F1c2Ugd2hlbiBpdCBmcmVlemVzIEkgY2FuIGNhdCBp
bmZvcm1hdGlvbiB0byBhIGZpbGUgKGlmIHRoZSBtb3VzZQo+IHdhcyBvdmVyIGFuIHh0ZXJtKSBh
bmQgdmVyaWZ5IG92ZXIgdGhlIG5ldHdvcmsgdGhlIGZpbGUgY29udGVudHMuIAo+IE5vdGhpbmcg
dW51c3VhbCBhcHBlYXJzIGluIGRtZXNnIHdoZW4gdGhlIGxvY2t1cCBoYXBwZW5zLgo+IAo+IFRo
ZSBsYXN0IGtlcm5lbCBJIGJvb3RlZCBzdWNjZXNzZnVsbHkgb24gdGhlIHN5c3RlbSB3YXMgNS4w
LCBzbyBJJ2xsCj4gdHJ5IGNvbXBpbGluZyA1LjEgdG8gbmFycm93IGRvd24gdGhlIGNoYW5nZXMu
CgpVcGdyYWRpbmcgdG8gNS4yIChmcm9tIDUuMS55KSBvbiBhICJEZWxsIFhQUyAxMyA5MzUwIiAo
aXMgdGhhdCBhIHNreWxha2UgdG9vPykKc2hvd2VkIHNpbWlsYXIgc3ltcHRvbXMuIFRoZXJlJ3Mg
bm8gcGF0dGVybiB0byB0aGUgZnJlZXplcyB0aGF0IEkgY2FuIHNlZS4KVGhleSdyZSByYXRoZXIg
ZnJlcXVlbnQgdG9vICh0aGluayBldmVyeSBmZXcgbWludXRlcykuIEVnLCB0d28gZnJlZXplcyB3
aGlsZQpjb21wb3NpbmcgdGhpcyBtZXNzYWdlIQoKTXkgdG90YWxseSBzaWxseSB3b3JrYXJvdW5k
IGlzIHN1c3BlbmRpbmcgKHZpYSBGbiArIEluc2VydCkgYW5kIHJlc3VtaW5nLgoKRGlkIHlvdSBt
YW5hZ2UgdG8gbmFycm93IHRoaXMgYW55IGZ1cnRoZXI/CgpUaGFua3MsCgoKUGF1bCBCb2xsZQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
