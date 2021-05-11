Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B5037A873
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 16:06:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A90DF6EA44;
	Tue, 11 May 2021 14:06:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98C406EA47;
 Tue, 11 May 2021 14:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 740BA3F91F;
 Tue, 11 May 2021 16:06:26 +0200 (CEST)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="eWXuaS+X";
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n-93ihpsMnC1; Tue, 11 May 2021 16:06:21 +0200 (CEST)
Received: by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id BCF803F6B9;
 Tue, 11 May 2021 16:06:20 +0200 (CEST)
Received: from [192.168.0.209] (unknown [192.55.54.44])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 8503E360132;
 Tue, 11 May 2021 16:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1620741980; bh=7QkXcRCSZzcRG1O42g9xEHuy937rbA7zv1HOyuS7KVY=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=eWXuaS+XSGb3KMM6l0CuFaLQwZZky0LyAxBbG2LbL74yYDtw2PvkdRgLXP6bsMDb5
 lj+5CHQX2R6d4jbZS0ZaNLwlhf4D5gndl/H6/hsmze4CTMBkDhNXN5CB+G0KfwlWz/
 C/87IMO2lqO1Eu3BHjj7dgoTs2kOVq2ZYQU67SVw=
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
 <20210511132525.377190-7-thomas.hellstrom@linux.intel.com>
 <8ac6bc5c-17c0-2ffd-7f8c-823ab3c8a858@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <88ea8e22-3314-60a4-8f4b-0b37de444b1d@shipmail.org>
Date: Tue, 11 May 2021 16:06:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <8ac6bc5c-17c0-2ffd-7f8c-823ab3c8a858@amd.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/ttm,
 drm/ttm: Introduce a TTM i915 gem object backend
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

Ck9uIDUvMTEvMjEgMzo1OCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiBBbSAxMS4wNS4y
MSB1bSAxNToyNSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+PiBNb3N0IGxvZ2ljYWwgcGxh
Y2UgdG8gaW50cm9kdWNlIFRUTSBidWZmZXIgb2JqZWN0cyBpcyBhcyBhbiBpOTE1Cj4+IGdlbSBv
YmplY3QgYmFja2VuZC4gV2UgbmVlZCB0byBhZGQgc29tZSBvcHMgdG8gYWNjb3VudCBmb3IgYWRk
ZWQKPj4gZnVuY3Rpb25hbGl0eSBsaWtlIGRlbGF5ZWQgZGVsZXRlIGFuZCBMUlUgbGlzdCBtYW5p
cHVsYXRpb24uCj4+Cj4+IEluaXRpYWxseSB3ZSBzdXBwb3J0IG9ubHkgTE1FTSBhbmQgU1lTVEVN
IG1lbW9yeSwgYnV0IFNZU1RFTQo+PiAod2hpY2ggaW4gdGhpcyBjYXNlIG1lYW5zIGV2aWN0ZWQg
TE1FTSBvYmplY3RzKSBpcyBub3QKPj4gdmlzaWJsZSB0byBpOTE1IEdFTSB5ZXQuIFRoZSBwbGFu
IGlzIHRvIG1vdmUgdGhlIGk5MTUgZ2VtIHN5c3RlbSByZWdpb24KPj4gb3ZlciB0byB0aGUgVFRN
IHN5c3RlbSBtZW1vcnkgdHlwZSBpbiB1cGNvbWluZyBwYXRjaGVzLgo+Pgo+PiBXZSBzZXQgdXAg
R1BVIGJpbmRpbmdzIGRpcmVjdGx5IGJvdGggZnJvbSBMTUVNIGFuZCBmcm9tIHRoZSBzeXN0ZW0g
Cj4+IHJlZ2lvbiwKPj4gYXMgdGhlcmUgaXMgbm8gbmVlZCB0byB1c2UgdGhlIGxlZ2FjeSBUVE1f
VFQgbWVtb3J5IHR5cGUuIFdlIHJlc2VydmUKPj4gdGhhdCBmb3IgZnV0dXJlIHBvcnRpbmcgb2Yg
R0dUVCBiaW5kaW5ncyB0byBUVE0uCj4+Cj4+IFRoZXJlIGFyZSBzb21lIGNoYW5nZXMgdG8gVFRN
IHRvIGFsbG93IGZvciBwdXJnaW5nIHN5c3RlbSBtZW1vcnkgYnVmZmVyCj4+IG9iamVjdHMgYW5k
IHRvIHJlZnVzZSBzd2FwcGluZyBvZiBzb21lIG9iamVjdHM6IFVuZm9ydHVuYXRlbHkgaTkxNSBn
ZW0KPj4gc3RpbGwgcmVsaWVzIGhlYXZpbHkgb24gc2hvcnQtdGVybSBvYmplY3QgcGlubmluZywg
YW5kIHdlJ3ZlIGNob3NlbiB0bwo+PiBrZWVwIHNob3J0LXRlcm0tcGlubmVkIGJ1ZmZlciBvYmpl
Y3RzIG9uIHRoZSBUVE0gTFJVIGxpc3RzIGZvciBub3csCj4+IG1lYW5pbmcgdGhhdCB3ZSBuZWVk
IHNvbWUgc29ydCBvZiBtZWNoYW5pc20gdG8gdGVsbCBUVE0gdGhleSBhcmUgbm90Cj4+IHN3YXBw
YWJsZS4gQSBsb25nZXIgdGVybSBnb2FsIGlzIHRvIGdldCByaWQgb2YgdGhlIHNob3J0LXRlcm0g
cGlubmluZy4KPgo+IFdlbGwganVzdCB1c2UgdGhlIGV2aWN0aW9uX3ZhbHVhYmxlIGludGVyZmFj
ZSBmb3IgdGhpcy4KClllcywgd2UgZG8gdGhhdCBmb3IgdnJhbS9sbWVtIGV2aWN0aW9uLCBidXQg
d2UgaGF2ZSBub3RoaW5nIHNpbWlsYXIgZm9yIApzeXN0ZW0gc3dhcHBpbmcuIERvIEkgdW5kZXJz
dGFuZCB5b3UgY29ycmVjdGx5IHRoYXQgeW91IHdhbnQgbWUgdG8gYWRkIGEgCmNhbGwgdG8gZXZp
Y3Rpb25fdmFsdWFibGUoKSBhbHNvIGZvciB0aGF0IGluc3RlYWQgb2Ygc3dhcF9wb3NzaWJsZSgp
PwoKCj4KPiBJbiBnZW5lcmFsIHBsZWFzZSBtYWtlIHNlcGFyYXRlIHBhdGNoZXMgZm9yIHRoZSBU
VE0gY2hhbmdlcyBhbmQgZm9yIAo+IHRoZSBpOTE1IGNoYW5nZXMgdXNpbmcgdGhlbSBmb3IgZWFz
aWVyIHJldmlldy4KCkknbGwgcmVzcGluIHdpdGggYSBzcGxpdC4gRG8geW91IHdhbnQgbWUgdG8g
ZG8gdGhlIHNhbWUgYWxzbyBmb3IgdGhlIApvdGhlciB0d28gcGF0Y2hlcyB0aGF0IG1pbm1hbGx5
IHRvdWNoIFRUTT8KClRoYW5rcywKClRob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
