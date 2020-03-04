Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E61AD17963C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 18:04:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C62416E091;
	Wed,  4 Mar 2020 17:04:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF6796E091
 for <Intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 17:04:30 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id m25so3149184edq.8
 for <Intel-gfx@lists.freedesktop.org>; Wed, 04 Mar 2020 09:04:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=G51pjabRhtOj7K4gJqEQl7z10AVKb+aK6tYoU34tJlw=;
 b=eLlcUUpUqxFVcsOTcDs0fVi0QRdIgGmKgS0GjNKllJJ1qtlHsZPVxF+qcqJvaEg9iN
 eFKxhhVbCO2LCZkgY3ZiF/hMGLvSMekC6HeNTPHuUs58NgGsGFzx6b7O5UMyS4LD89yU
 Rn2+9M9ZWzM+/nxClHFyXMu+kOi94rswNEhdvDStE7GzW7QODAYytEtXGaisdrVy9Z2Y
 4Wk9nXWq4vpM8Se4+kPPmEOZRaU6oJdHPpSZn+9rLHV/PJWFuy5jKezevJ6GD8ASSOY9
 seWFZ5b9QKpKRbGOLx7KksNzVGV7AV6/fI080ybJGyeTncwF3gxpmWeXE43+A9Xb0HXw
 fQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=G51pjabRhtOj7K4gJqEQl7z10AVKb+aK6tYoU34tJlw=;
 b=V0OFXPGBikfJ2cYxuQniaJWI83CGo+PxPWMeeAVZZG5/K0cW/Iu+1VBc6zjU7JTSMH
 5EKJ+TajCpW+snaFV3S8bEpws56Qoyc1YCCP4ngNDaydWxz9eh4Wq+AhI9NRKVmy9YUh
 zsng6/OCWzf4HgshM/ZFJWh9ICTZZGCY6LR0Fqkq2V/ThsprBU3Oa5gag9t8EWIwARfe
 mEmLlDsAQrHhVmTtZK/W5Rz5OlGnWZeerdlKx5CAJSaCtOxXvf3OQCJCly5TTvEUvH7q
 6jmcNvclQ6DnqmtWa0BcQfLHqfk1nvtOdgRKgOtnlkFGIRdRU2WMKMO4KTMkJ7v4n33D
 /T/w==
X-Gm-Message-State: ANhLgQ2VkWNR9u0spFrrlj83RDptspJBM1RZ/THuYcfgoaJBLQ6IlmGo
 yUZRslj+uxsLS54bwsq/GVOy9msry7fxxXcz4EVBp/g/qwk=
X-Google-Smtp-Source: ADFU+vuWJkPZv6S3LWYceMw5vrKJ4MW/u0tnIapawl2j3ri2yJlsnG6Nqk1cFdVL/aeA6nG5tgD610tOFb2SgIMQT68=
X-Received: by 2002:a17:907:4300:: with SMTP id
 oa24mr3362369ejb.61.1583341469474; 
 Wed, 04 Mar 2020 09:04:29 -0800 (PST)
MIME-Version: 1.0
References: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
 <20200304160245.ewy55e2iqtcey6vs@rantogno-mobl4.amr.corp.intel.com>
 <bcb82998-13c1-d047-4d37-0d89c306beca@linux.intel.com>
 <20200304170137.7qe3fhyo4obgfuxk@rantogno-mobl4.amr.corp.intel.com>
In-Reply-To: <20200304170137.7qe3fhyo4obgfuxk@rantogno-mobl4.amr.corp.intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 4 Mar 2020 11:04:18 -0600
Message-ID: <CAOFGe97XnssnuPRuOsLeqRaVR1-uLeHiiLHcJFvSH-ejdCrvtQ@mail.gmail.com>
To: Rafael Antognolli <rafael.antognolli@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl:
 WaDisableGPGPUMidThreadPreemption
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
Cc: piotr.zdunowski@intel.com, Intel GFX <Intel-gfx@lists.freedesktop.org>,
 Jason Ekstrand <jason.ekstrand@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXIgNCwgMjAyMCBhdCAxMTowMSBBTSBSYWZhZWwgQW50b2dub2xsaQo8cmFmYWVs
LmFudG9nbm9sbGlAaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgTWFyIDA0LCAyMDIwIGF0
IDA0OjI0OjEzUE0gKzAwMDAsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+ID4KPiA+IE9uIDA0LzAz
LzIwMjAgMTY6MDIsIFJhZmFlbCBBbnRvZ25vbGxpIHdyb3RlOgo+ID4gPiBPbiBXZWQsIE1hciAw
NCwgMjAyMCBhdCAwMzozMTo0NFBNICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiA+ID4g
PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gPiA+
Cj4gPiA+ID4gRW5hYmxlIEZ0clBlckN0eHRQcmVlbXB0aW9uR3JhbnVsYXJpdHlDb250cm9sIGJp
dCBhbmQgc2VsZWN0IHRocmVhZC0KPiA+ID4gPiBncm91cCBhcyB0aGUgZGVmYXVsdCBwcmVlbXB0
aW9uIGxldmVsLgo+ID4gPiA+Cj4gPiA+ID4gdjI6Cj4gPiA+ID4gICAqIFJlbW92ZSByZWdpc3Rl
ciB3aGl0ZWxpc3RpbmcgKFJhZmFlbCwgVG9ueSkuCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gPiA+IENj
OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4gPiA+ID4g
Q2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiA+
ID4gPiBDYzogcGlvdHIuemR1bm93c2tpQGludGVsLmNvbQo+ID4gPiA+IENjOiBtaWNoYWwubXJv
emVrQGludGVsLmNvbQo+ID4gPiA+IENjOiBUb255IFllIDx0b255LnllQGludGVsLmNvbT4KPiA+
ID4gPiBDYzogUmFmYWVsIEFudG9nbm9sbGkgPHJhZmFlbC5hbnRvZ25vbGxpQGludGVsLmNvbT4K
PiA+ID4KPiA+ID4gVGhhbmtzIGZvciBDQydpbmcgbWUuIEkgYWxzbyBzYXcgYSByZXBseSBmcm9t
IEphc29uIHllc3RlcmRheSwgYnV0IEkKPiA+ID4gZG9uJ3Qgc2VlIGl0IGluIHRoZSBsaXN0IG5v
dyAodGhvdWdoIG15IG1haWwgY2xpZW50IGEgbWVzcyBsYXRlbHkpLgo+ID4KPiA+IEkgc2F3IG5v
dGhpbmcgZnJvbSBKYXNvbiwgYnV0IHRoZXJlIHdhcyBhbiBlbWFpbCBmcm9tIHlvdSBhc2tpbmcg
YWJvdXQKPiA+IGludGVyZmFjZSBkZXNjcmlwdG9ycyBhbmQgd2hpdGVsaXN0aW5nIHdoaWNoIGlz
IHdoeSBJIGNvcGllZCB5b3UuCj4gPgo+ID4gPiBCdXQgaGUgYXNrZWQgd2hldGhlciBpdCdzIHBv
c3NpYmxlIGZvciBNZWRpYSBhbmQgT3BlbkNMIGRyaXZlcnMgdG8KPiA+ID4gYWxzbyBkaXNhYmxl
IG1pZC10aHJlYWQgcHJlZW1wdGlvbiB0aHJvdWdoIHRoZQo+ID4gPiBJTlRFUkZBQ0VfREVTQ1JJ
UFRPUl9EQVRBLCBpbnN0ZWFkIG9mIGZyb20gdGhlIGtlcm5lbCBzaWRlLCBzbyB3ZSBjb3VsZAo+
ID4gPiB0cnkgdG8gZXhwZXJpbWVudCB3aXRoIGl0IGluIHRoZSBmdXR1cmUuCj4gPiA+Cj4gPiA+
IEFsc28sIGRvIHlvdSBoYXZlIGFuIGlkZWEgb2YgaG93IGJyb2tlbiBpdCBpcz8gT3IgaXMgaXQg
anVzdCBub3QgdGVzdGVkCj4gPiA+IGJlY2F1c2Ugbm8gZHJpdmVyIGlzIGN1cnJlbnRseSBpbXBs
ZW1lbnRpbmcgaXQ/IEFuZCBkbyB5b3Uga25vdyBpZiB0aGUKPiA+ID4gd2luZG93cyAzRCBkcml2
ZXJzIGltcGxlbWVudCBpdCBhdCBhbGw/IEkgc2VlIGNvZGUgaW4gdGhlIGRyaXZlciB0aGF0Cj4g
PiA+IHNlZW1zIHRvIG1lIHRoYXQgaXQncyBvbmx5IGRpc2FibGVkIGluIGNlcnRhaW4gY2FzZXMu
Li4KPiA+ID4KPiA+ID4gVG8gc3VtbWFyaXplLCBJIHRoaW5rIHdlIHNob3VsZCBlaXRoZXI6Cj4g
PiA+ICAgICAxKSBEaXNhYmxlIG1pZC10aHJlYWQgcHJlZW1wdGlvbiBmcm9tIHRoZSBrZXJuZWwg
YW5kIG5vdCB3aGl0ZWxpc3QKPiA+ID4gICAgIHRoZSByZWdpc3RlciAoanVzdCBsaWtlIHlvdSBk
byBpbiB0aGlzIHBhdGNoKTsgb3IKPiA+ID4gICAgIDIpIE5vdCBkbyBhbnl0aGluZyBhdCBhbGwg
ZnJvbSB0aGUga2VybmVsLCBhbmQgbGV0IHVzZXJzcGFjZSBkaXNhYmxlCj4gPiA+ICAgICBpdCBp
ZiBuZWVkZWQuCj4gPiA+Cj4gPiA+IEkgdGhpbmsgMikgaXMgYmV0dGVyLCBpZiBpdCdzIG5vdCBh
biBpc3N1ZSB0byB0aGUgb3RoZXIgdXNlcnNwYWNlCj4gPiA+IGRyaXZlcnMgKE9wZW5DTCBhbmQg
TWVkaWEpLgo+ID4KPiA+IEkga25vdyBpdCBpcyBzb21ld2hhdCBicm9rZW4gbGlrZSBpbgo+ID4g
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTI5My4KPiA+
Cj4gPiBBbmQgSSBrbm93IE9wZW5DTCBhbmQgTWVkaWEgd291bGQgcHJlZmVyIGk5MTUgdG8gaGFu
ZGxlIGl0LCBidXQgdGhhdCdzCj4gPiBhbHdheXMgdGhlIGNhc2UuIDopIE9wZW5DTCBhbmQgTWVk
aWEgZm9sa3MgYXJlIG9uIHRoZSB0aHJlYWQgc28gY2FuIGNvbW1lbnQKPiA+IGlmIHRoZXkgYXJl
IG9rYXkgd2l0aCBoYW5kbGluZyB0aGlzIHRoZW1zZWx2ZXMuCj4gPgo+ID4gSW5kZWVkIGEgYmxh
bmtldCBiYW4gaW4gaTkxNSBtZWFucyBubyBvbmUgY2FuIHRyeSBpdCBvdXQgbGF0ZXIgd2l0aG91
dAo+ID4gZnVydGhlciBrZXJuZWwgY2hhbmdlcy4KPgo+IFdlbGwsIGJhc2VkIG9uIHlvdXIgY29t
bWVudCBmcm9tIHRoZSBwcmV2aW91cyBwYXRjaDoKPgo+ICJHZW5lcmFsIHRoaW5raW5nIGlzLCBz
aW5jZSBNVFAgaXMgY29uc2lkZXJlZCBub3QgdmFsaWRhdGVkIC8gYnJva2VuIC8KPiBkYW5nZXJv
dXMsIGk5MTUgc2hvdWxkIGRlZmF1bHQgaXQgb2ZmLiBCdXQgeWVzLCB3aGl0ZWxpc3Rpbmcgb3Ig
bm90IG9uCj4gdG9wIGlzIG9wZW4uIgo+Cj4gTWF5YmUgd2Ugc2hvdWxkIHNpbXBseSBiYW4gaXQg
YW5kIGJlIGRvbmUuIFNvIHRoaXMgcGF0Y2ggaXM6Cj4KPiBBY2tlZC1ieTogUmFmYWVsIEFudG9n
bm9sbGkgPHJhZmFlbC5hbnRvZ25vbGxpQGludGVsLmNvbT4KCkFncmVlZC4gIElmIHdlIHRoaW5r
IHRoYXQgaXQncyBicm9rZW4gb3IgaXMgbGlrZWx5IHRvIHRha2UgYWRkaXRpb25hbAprZXJuZWwg
d29yayB0byBlbmFibGUgaXQgcHJvcGVybHksIHdlIHNob3VsZG4ndCBhbGxvdyB1c2Vyc3BhY2Ug
dG8KdHVybiBpdCBvbiB1bnRpbCB3ZSBrbm93IHRoZSBrZXJuZWwgaXMgaW4gZ29vZCBzaGFwZS4g
IEp1c3QgYmFuIGl0Cm91dHJpZ2h0IGFuZCB3ZSBjYW4gZmlndXJlIG91dCB3aGl0ZS1saXN0aW5n
IGxhdGVyIGlmIGFuZCB3aGVuIHdlIGdldAppdCBwcm9wZXJseSB3b3JraW5nLgoKQWNrZWQtYnk6
IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
