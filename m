Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1AAFF199
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Nov 2019 17:13:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF1086E17E;
	Sat, 16 Nov 2019 16:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.lekensteyn.nl (mail.lekensteyn.nl
 [IPv6:2a02:2308::360:1:25])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 497106E17E
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Nov 2019 16:13:24 +0000 (UTC)
Received: by lekensteyn.nl with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <peter@lekensteyn.nl>)
 id 1iW0hL-0006oq-JC; Sat, 16 Nov 2019 17:13:20 +0100
Date: Sat, 16 Nov 2019 17:13:17 +0100
From: Peter Wu <peter@lekensteyn.nl>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20191116161317.GA373905@al>
References: <20191115153247.372989-1-peter@lekensteyn.nl>
 <20191115181405.GJ1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115181405.GJ1208@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Spam-Score: -0.0 (/)
X-Spam-Status: No, hits=-0.0 required=5.0 tests=NO_RELAYS=-0.001
 autolearn=unavailable autolearn_force=no
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lekensteyn.nl; s=s2048-2015-q1; 
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date;
 bh=n3VQR8hfoK+YQHzQz7+wzfljEuUWRgxNV6UE8Aalfj8=; 
 b=YWIq9fFYW0HQIOqt33jUTk7RcqtSlDXEzgTSHnRNoXR3WyCJurpC1/BZJBDMByJ4HcUiI/V17S9qvDOIQj0LZSIQsJj6n+0fwv4iepy4s8mC8cn8G7tWMXtmwz+m73BrVpLnqcSelv7ZxWfycde/QzmVDzoT4Gif8AxV2PAYsEefs6/6pQuWZqshwXm54ZOfSAF92u0PoYMqnqOoNZLC1uk5Gnyhy+sb7ZXQvMM2odLA/tseEDeu7at6nqDhGQgV99Ct8Dk2I8UP3eEBS3WiM41YtYETEZnkIiovLgEjzQI7l7KpspBJFU4DJ/MugZMnAXZ+WWN7h1+4moro1hAXQg==;
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel v2] SNA: fix PRIME output
 support since xserver 1.20
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

T24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMDg6MTQ6MDVQTSArMDIwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIEZyaSwgTm92IDE1LCAyMDE5IGF0IDA0OjMyOjQ3UE0gKzAxMDAsIFBldGVy
IFd1IHdyb3RlOgo+ID4gU2luY2UgIk1ha2UgUGl4bWFwRGlydHlVcGRhdGVSZWM6OnNyYyBhIERy
YXdhYmxlUHRyIiBpbiB4c2VydmVyLCB0aGUKPiA+ICJzcmMiIHBvaW50ZXIgbWlnaHQgcG9pbnQg
dG8gdGhlIHJvb3Qgd2luZG93IChjcmVhdGVkIGJ5IHRoZSBzZXJ2ZXIpCj4gPiBpbnN0ZWFkIG9m
IGEgcGl4bWFwIChhcyBjcmVhdGVkIGJ5IHhmODYtdmlkZW8taW50ZWwpLiBVc2UKPiA+IGdldF9k
cmF3YWJsZV9waXhtYXAgdG8gaGFuZGxlIGJvdGggY2FzZXMuCj4gPiAKPiA+IFdoZW4gYnVpbHQg
d2l0aCAtZnNhbml0aXplPWFkZHJlc3MsIHRoZSBmb2xsb3dpbmcgdGVzdCBvbiBhIGh5YnJpZAo+
ID4gZ3JhcGhpY3MgbGFwdG9wIHdpbGwgdHJpZ2dlciBhIGhlYXAtYnVmZmVyLW92ZXJmbG93IGVy
cm9yIGR1ZSB0bwo+ID4gdG9fc25hX2Zyb21fcGl4bWFwIHJlY2VpdmluZyBhIHdpbmRvdyBpbnN0
ZWFkIG9mIGEgcGl4bWFwOgo+ID4gCj4gPiAgICAgeHJhbmRyIC0tc2V0cHJvdmlkZXJvdXRwdXRz
b3VyY2UgbW9kZXNldHRpbmcgSW50ZWwKPiA+ICAgICB4cmFuZHIgLS1vdXRwdXQgRFAtMS0xIC0t
bW9kZSAyNTYweDE0NDAgICMgc2hvdWxkIG5vdCBjcmFzaAo+ID4gICAgIGdseGdlYXJzICAjIHNo
b3VsZCBkaXNwbGF5IGdlYXJzIG9uIGJvdGggc2NyZWVucwo+ID4gCj4gPiBXaXRoIG5vdXZlYXUg
aW5zdGVhZCBvZiBtb2Rlc2V0dGluZywgaXQgZG9lcyBub3QgY3Jhc2ggYnV0IHRoZSBleHRlcm5h
bAo+ID4gbW9uaXRvciByZW1haW5zIGJsYW5rIGFzaWRlIGZyb20gYSBtb3VzZSBjdXJzb3IuIFRo
aXMgcGF0Y2ggZml4ZXMgYm90aC4KPiA+IAo+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMDA4Ngo+IAo+IEFsc28KPiBCdWd6aWxsYTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExOTc2CgpJIG1h
cmtlZCB0aGlzIGJ1ZyBhcyBkdXBsaWNhdGUgb2YgdGhlIGZvcm1lciBzaW5jZSBpdCBpcyB0aGUg
c2FtZSBpc3N1ZS4KCkFib3V0IHRoZSBDSSBmYWlsdXJlCihodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9hcmNoaXZlcy9pbnRlbC1nZngvMjAxOS1Ob3ZlbWJlci8yMjAxODcuaHRtbCksCnNo
b3VsZCBJIGJlIGNvbmNlcm5lZD8gSSBjYW4ndCBzZWUgd2hhdCB0cmVlIGl0IGlzIHRyeWluZyB0
byBhcHBseSB0aGUKcGF0Y2ggdG8uIElzIGl0IGFjdHVhbGx5IHRyeWluZyB0byBhcHBseSBpdCB0
byB4Zjg2LXZpZGVvLWludGVsLCBvciBpcwppdCB0cnlpbmcgdGhlIExpbnV4IGtlcm5lbCBpbnN0
ZWFkPwoKPiA+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFd1IDxwZXRlckBsZWtlbnN0ZXluLm5sPgo+
ID4gLS0tCj4gPiB2MTogaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvaW50
ZWwtZ2Z4LzIwMTgtQXVndXN0LzE3MzUyMi5odG1sCj4gPiB2MjogcmViYXNlZCBvbiBjdXJyZW50
IG1hc3RlciAoMi45OS45MTctODkzLWdiZmY1ZWNhNCksIHJld29yZGVkIGNvbW1pdC4KPiA+IAo+
ID4gVGhpcyBwYXRjaCBoYXMgYmVlbiB0ZXN0ZWQgYXQgaHR0cHM6Ly9idWdzLmFyY2hsaW51eC5v
cmcvdGFzay82NDIzOCwgSQo+ID4gaGF2ZSBhZGRpdGlvbmFsbHkgdGVzdGVkIGl0IHdpdGggYm90
aCBtb2Rlc2V0dGluZyBhbmQgbm91dmVhdSB1bmRlcgo+ID4gQVNBTiwgdGhlIG1vZGVzZXR0aW5n
IEFTQU4gdHJhY2UgZm9yIHVucGF0Y2hlZCBpbnRlbCBjYW4gYmUgZm91bmQgYXQ6Cj4gPiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDAwODYjYzI0Cj4gPiAK
PiA+IGNvbW1pdCAyLjk5LjkxNy04OTEtZzU4MWRkYzVkICgic25hOiBGaXggY29tcGlsZXIgd2Fy
bmluZ3MgZHVlIHRvCj4gPiBEcmF3YWJsZVB0ciB2cy4gUGl4bWFwUHRyIikgaW5jb3Jwb3JhdGVk
IGFsbCBjb21waWxlciB3YXJuaW5nIGZpeGVzIGZyb20KPiA+IHYxIG9mIHRoaXMgcGF0Y2gsIGJ1
dCB1bmZvcnR1bmF0ZWx5IGxhY2tzIHRoaXMgY3J1Y2lhbCBidWdmaXguCj4gPiAtLS0KPiA+ICBz
cmMvc25hL3NuYV9hY2NlbC5jIHwgNiArKystLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc3JjL3NuYS9z
bmFfYWNjZWwuYyBiL3NyYy9zbmEvc25hX2FjY2VsLmMKPiA+IGluZGV4IGZhMzg2ZmY2Li5lZTg1
N2ExNCAxMDA2NDQKPiA+IC0tLSBhL3NyYy9zbmEvc25hX2FjY2VsLmMKPiA+ICsrKyBiL3NyYy9z
bmEvc25hX2FjY2VsLmMKPiA+IEBAIC0xNzY4NCwxMCArMTc2ODQsMTAgQEAgc3RhdGljIHZvaWQg
c25hX2FjY2VsX3Bvc3RfZGFtYWdlKHN0cnVjdCBzbmEgKnNuYSkKPiA+ICAJCQljb250aW51ZTsK
PiA+ICAKPiA+ICAjaWZkZWYgSEFTX0RJUlRZVFJBQ0tJTkdfRFJBV0FCTEVfU1JDCj4gPiAtCQlh
c3NlcnQoZGlydHktPnNyYy0+dHlwZSA9PSBEUkFXQUJMRV9QSVhNQVApOwo+ID4gKwkJc3JjID0g
Z2V0X2RyYXdhYmxlX3BpeG1hcChkaXJ0eS0+c3JjKTsKPiA+ICsjZWxzZQo+ID4gKwkJc3JjID0g
ZGlydHktPnNyYzsKPiA+ICAjZW5kaWYKPiA+IC0KPiA+IC0JCXNyYyA9IChQaXhtYXBQdHIpZGly
dHktPnNyYzsKPiA+ICAJCWRzdCA9IGRpcnR5LT5zbGF2ZV9kc3QtPm1hc3Rlcl9waXhtYXA7Cj4g
PiAgCj4gPiAgCQlyZWdpb24uZXh0ZW50cy54MSA9IGRpcnR5LT54Owo+ID4gLS0gCj4gPiAyLjIz
LjAKPiAKPiAtLSAKPiBWaWxsZSBTeXJqw6Rsw6QKPiBJbnRlbApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
