Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CA52A079E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 15:16:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 280736EDD9;
	Fri, 30 Oct 2020 14:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AEBF6EDD9
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 14:16:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 7B9D23F7A5;
 Fri, 30 Oct 2020 15:15:56 +0100 (CET)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=OYJ5edcb; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.352
X-Spam-Level: 
X-Spam-Status: No, score=-2.352 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.253,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cdQ8Y-a8clVv; Fri, 30 Oct 2020 15:15:55 +0100 (CET)
Received: by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 99DDA3F4C2;
 Fri, 30 Oct 2020 15:15:55 +0100 (CET)
Received: from localhost.localdomain (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 90C2D361802;
 Fri, 30 Oct 2020 15:16:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1604067362; bh=XeezdxjiDPHLnoPW0UGb/2YdXqlFcBvq9yE1+U4aeSc=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=OYJ5edcb0GsWyH1YRP1/gCyuWuOv7YDhZAA/UQWbNNSnQFq6DnmoiihdTDRO+CDBx
 ER7nN6DVi+xnyfF3fTZVV5wS87CIs/L2g2e6QmSdVYqae8ps4irsLiB2oVjef7/Pnq
 YRstRTzcIxA3ihj92imjWQbVSVZUQlhSYKN/X4lM=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-15-maarten.lankhorst@linux.intel.com>
 <02b0d2c2-5687-03b1-7741-34a3c2c819ac@shipmail.org>
 <c327ca8c-2fcd-ff90-381c-16f414f0df3a@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <9fd5bb67-a436-cfd7-dd7c-ddfe183faf7a@shipmail.org>
Date: Fri, 30 Oct 2020 15:15:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <c327ca8c-2fcd-ff90-381c-16f414f0df3a@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 14/61] drm/i915: Reject UNSYNCHRONIZED
 for userptr
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzMwLzIwIDExOjEwIEFNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBPcCAzMC0x
MC0yMDIwIG9tIDEwOjI2IHNjaHJlZWYgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKToKPj4gT24g
MTAvMTYvMjAgMTI6NDMgUE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+Pj4gV2Ugc2hvdWxk
IG5vdCBhbGxvdyB0aGlzIGFueSBtb3JlLCBhcyBpdCB3aWxsIGJyZWFrIHdpdGggdGhlIG5ldyB1
c2VycHRyCj4+PiBpbXBsZW1lbnRhdGlvbiwgaXQgY291bGQgc3RpbGwgYmUgbWFkZSB0byB3b3Jr
LCBidXQgdGhlcmUncyBubyBwb2ludCBpbgo+Pj4gZG9pbmcgc28uCj4+Pgo+Pj4gU2lnbmVkLW9m
Zi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KPj4gSWZkZWZzIGRvbid0IGFwcGVhciBjb25zaXN0ZW50IHdpdGggdGhlIGNvbW1pdCBtZXNz
YWdlLiBXcm9uZyBwYXRjaCBvciBzZXBhcmF0ZSBwYXRjaD8KPj4KPj4gQWxzbyBwbGVhc2UgYWRk
IGEgZGlzY3Vzc2lvbiB3aGF0IGltcGFjdCB0aGlzIGhhcyBvbiBleGlzdGluZyB1c2VyLXNwYWNl
Lgo+Pgo+Pgo+IEltcGFjdCBzaG91bGQgYmUgbG93LCB4Zjg2LXZpZGVvLWludGVsIHdpdGggU05B
IHdhcyB1c2luZyB1bnN5bmNocm9uaXplZCwgYnV0IHdpbGwgZmFsbCBiYWNrIHRvIHN5bmNocm9u
aXplZCBpZiBub3QgYXZhaWxhYmxlLgoKU291bmRzIG9rIHRvIG1lIGlmIHRoYXQncyB0aGUgb25s
eSBpbXBhY3QuIEFsc28gaGVyZSB0aGUgcmV2aWV3IGNvbW1lbnQgCndhcyBhYm91dCBhZGRpbmcg
dG8gdGhlIGNvbW1pdCBtZXNzYWdlLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
