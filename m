Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1019C31A994
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Feb 2021 03:01:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6F46F3F1;
	Sat, 13 Feb 2021 02:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C0776F3F0
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Feb 2021 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613181683;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zjpah8Hf/rnLwpX1c7PhlmX1vx/mR8bI5eSWEK58GmI=;
 b=f+mq2ahQ7WiVAwxBZev+OnYkIeZ9QJEd6aeHjLJueKVsBlrZnXxq0+Ae6o0u1r/wcPV6ja
 vmDM2mvnfmwZiILgyqTJ0daFftWuxCKLUcGcfwC5Wx4lw419tQ/A27vTa5lPO0ocoMvDkB
 NgZPTb3ARz6IkmDDy3CdJBH/8cwDE+I=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-396-Up88hOALMoyKjWSxauEcVg-1; Fri, 12 Feb 2021 21:01:20 -0500
X-MC-Unique: Up88hOALMoyKjWSxauEcVg-1
Received: by mail-qk1-f198.google.com with SMTP id n62so1089534qkn.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 18:01:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=zjpah8Hf/rnLwpX1c7PhlmX1vx/mR8bI5eSWEK58GmI=;
 b=KPsxPJBcHzB3FQBp3EwHgCycgXF6ByHAZ/+byUhYENO88bVHke0k5tLqOApekZMW11
 75EK7nFCCgtN3chu+N0BWGznm2COPuXuEv5qUnlg58L1HGUy8+DCMjwo3EJgjQLDHkBX
 wqo0sGHY/cx6PU+yQB69/3OFy2n8/PXOtREff3gseGVmthxxihGiOOvMdiMx4xvfVs5k
 df2VbZmSxWoVBbQTrMUw2SAaKY71JkUw+IgyHirQoqSmtoFnWCsdboZT86617CE47FVw
 Pi82qd0KFmOaurH193MR42uSHcg+41C0n+MMFlMl34UqwKowv05Gztie7wv/6QsSl6vv
 VJ0w==
X-Gm-Message-State: AOAM533uYqd3yi7YMj8k9U8kh5L/qbrHOHqyq45D1vmESW6iEm09zEX4
 zKpj1u6rJJnVq5hQwUkXuxylsewp/BnrX+UYR9NFQaz9RLk097KHluqCVc+ukVmQZXh5q80516L
 J4F0B2rHGJyz+aOB90qza8iv26GWp
X-Received: by 2002:ae9:e715:: with SMTP id m21mr5752585qka.217.1613181679250; 
 Fri, 12 Feb 2021 18:01:19 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzTBTJJqt1nch+ZHsTj7uaBJLoGlpxWnapSMexSgYlmzEZ/IBNI5/MdPZNuHbWlLn6SVVE5MQ==
X-Received: by 2002:ae9:e715:: with SMTP id m21mr5752548qka.217.1613181678734; 
 Fri, 12 Feb 2021 18:01:18 -0800 (PST)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id t19sm7731404qke.109.2021.02.12.18.01.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Feb 2021 18:01:17 -0800 (PST)
Message-ID: <3d17544ae9f0e658447c09872007c18963b13dfe.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>, 
 "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 12 Feb 2021 21:01:16 -0500
In-Reply-To: <c72586deb3c529096f0e943f2fe1707db73658fe.camel@intel.com>
References: <20210210083338.100068-1-khaled.almahallawy@intel.com>
 <d8606a5519a777c6531accdd8406b17a1dac3c66.camel@redhat.com>
 <c72586deb3c529096f0e943f2fe1707db73658fe.camel@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [RFC PATCH 1/2] drm/dp: Make number of AUX retries
 configurable by display drivers.
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
Reply-To: lyude@redhat.com
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 "seanpaul@chromium.org" <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

KGFkZGluZyBkYW52ZXQgdG8gaGVyZSwgYXMgSSdkIGltYWdpbmUgdGhleSBtaWdodCBiZSBpbnRl
cmVzdGVkIGluIHNlZWluZyBzb21lCm9mIHRoaXMpCgpUaGFuayB5b3UgZm9yIHRoZSBkZXNjcmlw
dGl2ZSB3cml0ZSB1cC4gSSB0aGluayB3ZSBjYW4gc29sdmUgc29tZSBvZiB0aGUKcHJvYmxlbXMg
eW91IGRlc2NyaWJlZCBoZXJlLCBob3dldmVyIHRoZSBwYXRjaGVzIHRoYXQgeW91IHN1Ym1pdHRl
ZCBkZWZpbml0ZWx5Cndvbid0IHdvcmsgYXMtaXMuIEluIHBhdGNoIDIsIGJ5IHJldmVydGluZyBJ
bnRlbCBiYWNrIHRvIHVzaW5nIG9ubHkgNyByZXRyaWVzCnlvdSB0ZWNobmljYWxseSBicmVhayB3
aGF0ZXZlciBtb25pdG9yIG9yaWdpbmFsbHkgcHJvbXB0ZWQgdXMgdG8gYnVtcCB0aGUgcmV0cnkK
Y291bnQgdXAgdG8gMzIgaW4gdGhlIGZpcnN0IHBsYWNlLiBBbmQgd2UgaGF2ZSB0byB0cnkgb3Vy
IGhhcmRlc3QgdG8gYXZvaWQKYnJlYWtpbmcgcGVvcGxlJ3MgZGlzcGxheXMgd2hlbiB0aGV5IHdl
cmUgYWxyZWFkeSB3b3JraW5nLgoKQWxzbywgSSdsbCBkZWZpbml0ZWx5IHBvaW50IG91dCB0aG91
Z2ggdGhhdCBhIGZldyBvZiB0aGUgaXNzdWVzIHlvdSd2ZSBwb2ludGVkCm91dCBhY3R1YWxseSBl
eGlzdCBhcyB3b3JrYXJvdW5kcyBmb3IgYmFkIERpc3BsYXlQb3J0IGRldmljZXMgKHdoaWNoIGlz
IGEgYmlnCnJlYXNvbiB3ZSBoYXZlIHRoZXNlIGhlbHBlcnMpLCBidXQgSSB0aGluayB3ZSBtaWdo
dCBiZSBhYmxlIHRvIGZpeCBzb21lIG9mIHRoZQppc3N1ZXMgeW91J3ZlIG1lbnRpb25lZCBieSBj
b21pbmcgdXAgd2l0aCBiZXR0ZXIgd29ya2Fyb3VuZHMuIE1vcmUgZGV0YWlscyBiZWxvdwoKT24g
VGh1LCAyMDIxLTAyLTExIGF0IDA2OjU2ICswMDAwLCBBbG1haGFsbGF3eSwgS2hhbGVkIHdyb3Rl
Ogo+IE9uIFdlZCwgMjAyMS0wMi0xMCBhdCAxMzowMyAtMDUwMCwgTHl1ZGUgUGF1bCB3cm90ZToK
PiA+IE9uIFdlZCwgMjAyMS0wMi0xMCBhdCAwMDozMyAtMDgwMCwgS2hhbGVkIEFsbWFoYWxsYXd5
IHdyb3RlOgo+ID4gPiBUaGUgbnVtYmVyIG9mIEFVWCByZXRyaWVzIHNwZWNpZmllZCBpbiB0aGUg
RFAgc3BlY3MgaXMgNy4KPiA+ID4gQ3VycmVudGx5LCB0byBtYWtlCj4gPiA+IERlbGwgNGsgbW9u
aXRvcnMgaGFwcGllciwgdGhlIG51bWJlciBvZiByZXRyaWVzIGFyZSAzMi4KPiA+ID4gaTkxNSBh
bHNvIHJldHJpZXMgNSB0aW1lcyAoaW50ZWxfZHBfYXV4X3hmZXIpIHdoaWNoIG1lYW5zIGluIHRo
ZQo+ID4gPiBjYXNlIG9mIEFVWAo+ID4gPiB0aW1lb3V0IHdlIGFjdHVhbGx5IHJldHJpZXMgMzIg
KiA1ID0gMTYwIHRpbWVzLgo+ID4gCj4gPiBJcyB0aGVyZSBhbnkgZ29vZCByZWFzb24gZm9yIGk5
MTUgdG8gYWN0dWFsbHkgYmUgZG9pbmcgcmV0cmllcwo+ID4gaXRzZWxmPyBJdCBzZWVtcwo+ID4g
bGlrZSBhbiBlYXNpZXIgc29sdXRpb24gaGVyZSBtaWdodCBqdXN0IHRvIGJlIHRvIGZpeCBpOTE1
IHNvIGl0Cj4gPiBkb2Vzbid0IHJldHJ5LAo+ID4gYW5kIGp1c3QgcmVseSBvbiBEUk0gdG8gZG8g
dGhlIHJldHJpZXMgYXMgYXBwcm9wcmlhdGUuCj4gPiAKPiA+IFRoYXQgYmVpbmcgc2FpZCB0aG91
Z2gsIEknbSBvcGVuIHRvIHRoaXMgaWYgdGhlcmUgaXMgYSBsZWdpdGltYXRlCj4gPiByZWFzb24g
Zm9yCj4gPiBpOTE1IHRvIGJlIGhhbmRsaW5nIHJldHJpZXMgb24gaXRzIG93bgo+IAo+IGk5MTUg
b3Igb3RoZXJzIG1heSBiZW5lZml0IGZyb20gY29udHJvbGxpbmcgQVVYIHJldHJpZXMgdG8gb3B0
aW1pemUgYW5kCj4gbWluaW1pemUgdGltaW5nIHNwZW50IG9uIHRoZSBhdXggdHJhbnNhY3Rpb25z
Lgo+IMKgCj4gZHJtX2RwY2RfYWNjZXNzIGhhbmRsZXMgbXVsdGlwbGUgYXV4IHJldHJpZXMgY2Fz
ZXMgdGhlIHNhbWUgd2F5IChyZXRyeQo+IDMyIHRpbWVzIGF0IHdvcnN0IGNhc2UpLiBUaGUgNCBj
YXNlcyBhcmU6Cj4gMS0gKkFVWCByZWNlaXZlIG9yIElPIGVycm9yKi4gSSBiZWxpZXZlIGl0IGlz
IHVwIHRvIHNwZWNpZmljCj4gaW1wbGVtZW50YXRpb24vSFcgb25jZSBpdCBkZXRlY3RzIGEgcmVj
ZWl2ZSBlcnJvciB0byByZXRyeSBiYXNlZCBvbgo+IHRoZWlyIGludGVybmFsIHVuZGVyc3RhbmRp
bmcgdXNpbmcgdGhlIHRpbWVvdXQgYXBwcm9wcmlhdGUgdG8gdGhlIEhXCj4gY2FwYWJpbGl0aWVz
LgoKVGhpcyBtYWtlcyBzZW5zZSBzbyBmYXIKCj4gwqAKPiAyLSAqQVVYIFRpbWVvdXQqIEFzIHRo
ZSBkcml2ZXIgZm9sbG93cyB0aGUgc3BlY3MgZm9yIHRoZSByZWNvbW1lbmRlZAo+IHRpbWVvdXQg
dGltZXIgYXMgZGVmaW5lZCBpbiBzZWN0aW9uwqAgKDIuMTEuMiBBVVggVHJhbnNhY3Rpb24KPiBS
ZXNwb25zZS9SZXBseSBUaW1lb3V0cyksIHRoZSBkcml2ZXIgaGFzIG1vcmUgaW50ZWxsaWdlbmNl
IHRvIGtub3cgaG93Cj4gbWFueSByZXRyaWVzIGl0IG5lZWRzLiBUaGlzIGlzIG1vcmUgdXNlZnVs
IGluIGNhc2Ugb2YgRFAtQUxUIGlmIHNvbWUKPiBpc3N1ZXMgaGFwcGVuIGluIFR5cGUtQyBzdGFj
ayB0aGF0IGNhdXNlIEFVWCB0aW1lb3V0IChlLmcuIFVTQjMgZG9jawo+IGRldGVjdGVkIGFzIGhp
Z2ggc3BlZWQgKFVTQjIpIGNhdXNpbmcgU0JVL0FVWCBsaW5lcyB0byBiZSBkaXNhYmxlZCkuCj4g
QWxzbyB0aGUgZGlzY29ubmVjdCBvZiBNU1QgaHViL2RvY2tzIGlzIGRlcGVuZGVudCBob3cgZmFz
dCBhIHVzZXJzcGFjZQo+IGRpc2Nvbm5lY3QgYWxsIE1TVCBjb25uZWN0b3JzLsKgIE5vdCBhbGwg
dXNlciBzcGFjZXMgZG8gaXQgYXMgZmFzdCBsaWtlCj4gQ2hyb21lICh1YnVudHUgaXMgYW4gZXhh
bXBsZSk6IAo+IGh0dHBzOi8vY2hyb21pdW0tcmV2aWV3Lmdvb2dsZXNvdXJjZS5jb20vYy9jaHJv
bWl1bS9zcmMvKy8yNTEyNTUwL8KgIAoKU28gLSBJJ20gbm90IGV4YWN0bHkgZm9sbG93aW5nIGhv
dyB0aGlzIHBvcnRpb24gb2YgdGhlIHNwZWNpZmljYXRpb24gaXMgcmVsZXZhbnQKdG8gdGhlIGlz
c3VlIHRoYXQgeW91J3JlIGJyaW5naW5nIHVwIGhlcmUuIElmIEkgdW5kZXJzdGFuZCBzZWN0aW9u
IDIuMTEuMgpjb3JyZWN0bHksIGEgInJlc3BvbnNlIiBoZXJlIGlzIGRlZmluZWQgYXMgYSB0cmFu
c21pc3Npb24gZnJvbSB0aGUgRFBSWCB3aGljaAppbmZvcm1zIHVzIG9uIHRoZSBjdXJyZW50IHN0
YXRlIG9mIHRoZSB0cmFuc2FjdGlvbiB0aGF0IHdlJ3ZlIHN0YXJ0ZWQuIFRoaXMKd291bGQgYmUg
YW55IG9uZSBvZiB0aGUgYXV4IHJlc3BvbnNlIHN0YXR1c2VzIHlvdSd2ZSBtZW50aW9uZWQgaW4g
dGhpcyBlbWFpbDoKQVVYX05BQ0ssIEFVWF9BQ0ssIG9yIEFVWF9ERUZFUi4gSXQgZG9lc24ndCBh
Y3R1YWxseSBoYXZlIGFueXRoaW5nIHRvIGRvIHdpdGgKdGhlIG51bWJlciBvZiByZXRyaWVzIHdl
IGhhdmUgdG8gZG8sIGJlY2F1c2UgKGlnbm9yaW5nIHRoZSBmYWN0IHdlIHJldHJ5IG9uCkFVWF9O
QUNLUyBpbiBEUk0gZm9yIGEgbW9tZW50IGhlcmUpIHRoYXQgcmVwbHkgY291bGQgYmUgYW4gQVVY
X0RFRkVSIHdoaWNoIHdvdWxkCmluZGljYXRlIHRoYXQgd2UgaGF2ZSB0byByZXNlbmQgdGhlIHRy
YW5zYWN0aW9uIGFuZCB0cnkgYWdhaW4uIEkgdGhpbmsgdGhpcyBpcwp0aGUgY29ycmVjdCB1bmRl
cnN0YW5kaW5nIG9mIHNlY3Rpb24gMi4xMS4yLCBiZWNhdXNlIEkgZGVmaW5pdGVseSBkb24ndCB0
aGluawpyZWFsIHdvcmxkIERQIGRldmljZXMgYXJlIGFibGUgdG8gYWN0dWFsbHkgY29tcGxldGUg
YSBmdWxsIEFVWCB0cmFuc2FjdGlvbgp3aXRoaW4gYSB0aW1lc3BhbiBvZiAzMDAtNDAwwrVzIHJl
bGlhYmx5IGZvciB0aGUgbW9zdCBwYXJ0LgoKVGhlIHNlY29uZCB0aGluZyB0byBtZW50aW9uIGhl
cmUgaXMgdGhhdCByZWdhcmRsZXNzIG9mIHRoZSBmaXJzdCBwb2ludCwgSSBkb24ndAp0aGluayB5
b3VyIHBvaW50IGFib3V0IE1TVCBkaXNwbGF5cyBuZWVkaW5nIHRvIGJlIHJlbW92ZWQgYnkgdXNl
cnNwYWNlIGlzCmNvcnJlY3QuIEl0IGlzIHRydWUgdGhhdCB1c2Vyc3BhY2UgY2FuIGFjdHVhbGx5
IGhvbGQgb250byByZWZlcmVuY2VzIHRvIHJlbW92ZWQKTVNUIGNvbm5lY3RvcnMgYWZ0ZXIgdGhl
eSd2ZSBiZWVuIHJlbW92ZWQsIGJ1dCB0aGUgbWFpbiBwdXJwb3NlIG9mIHRoaXMgYmVpbmcKcG9z
c2libGUgaXMgaW4gb3JkZXIgdG8gYWNjb21tb2RhdGUgbGVnYWN5IGNsaWVudHMgdGhhdCB3b3Vs
ZG4ndCBiZSBhYmxlIHRvCmhhbmRsZSBhIGNvbm5lY3RvciBkaXNhcHBlYXJpbmcgdW5kZXIgdGhl
bSBjbGVhbmx5LiBPbmNlIHRoZSBNU1QgdG9wb2xvZ3kgd2hpY2gKYSBjb25uZWN0b3IgY29ycmVz
cG9uZHMgdG8gaXMgcmVtb3ZlZCwgdGhlIE1TVCBjb25uZWN0b3IgaXMgcmVtb3ZlZCBBU0FQIGZy
b20KdGhlIGtlcm5lbCdzIGNhY2hlIG9mIHRoZSByZXNwZWN0aXZlIERpc3BsYXlQb3J0J3MgTVNU
IHRvcG9sb2d5IGFsb25nIHdpdGggYWxsCm9mIHRoZSBjb25uZWN0b3JzIGJlbG93IGl0LiBBdCB0
aGUgc2FtZSB0aW1lLCB0aGUgcmVzcGVjdGl2ZSBEUk0gY29ubmVjdG9ycyBhcmUKYWxzbyB1bnJl
Z2lzdGVyZWQgZnJvbSB1c2Vyc3BhY2UuCgpEUk0gZXhwbGljaXRseSBkb2Vzbid0IGFsbG93IGFu
eSBraW5kIG9mIGNsaWVudCB0byBlbmFibGUgbmV3IGRpc3BsYXlzIG9uCmNvbm5lY3RvcnMgdGhh
dCBhcmUgdW5yZWdpc3RlcmVkLCBhbmQgd2lsbCByZWplY3QgYW55IG1vZGVzZXRzIGludm9sdmlu
ZyB0aGVtCndpdGggdGhlIGV4Y2VwdGlvbiBvZiBtb2Rlc2V0cyB3aGljaCBvbmx5IGRpc2FibGUg
ZGlzcGxheXMgb24gdGhvc2UgdW5yZWdpc3RlcmVkCmNvbm5lY3RvcnMgKHRoaXMgbGFzdCBwYXJ0
IGlzIG1haW5seSBqdXN0IHRvIGJlIG5pY2UgdG8gbGVnYWN5IGNsaWVudHMpLiBTbyBpdApkb2Vz
bid0IHJlYWxseSBtYXR0ZXIgaG93IHF1aWNrbHkgdXNlcnNwYWNlIGRpc2FibGVzIHRoZSBkaXNw
bGF5IGNvbmZpZ3VyYXRpb24Kb24gdGhvc2UgY29ubmVjdG9ycywgZnJvbSB0aGUga2VybmVsJ3Mg
cGVyc3BlY3RpdmUgdGhleSdyZSBhbHJlYWR5IGdvbmUgYW5kIGEKbmV3IE1TVCB0b3BvbG9neSBj
YW4gYmUgY29ubmVjdGVkIHRvIHRoZSBzeXN0ZW0uIFRoZSBleHBlY3RhdGlvbiBpcyB0aGF0IGV2
ZW4gaWYKdXNlcnNwYWNlIGRvZXNuJ3QgdHVybiB0aG9zZSBjb25uZWN0b3JzIG9mZiwgdGhlIG9u
bHkgcG9zc2libGUgbW92ZSBpcyB0byBtb3ZlCnRoZSBDUlRDcyBvbiB0aGVtIHRvIG5ldyBjb25u
ZWN0b3JzIG9yIGRpc2FibGUgdGhlbSBvdXRyaWdodC4KCkFueXdheS1pZiB0aGVyZSAtaXMtIGFj
dHVhbGx5IGEgcHJvYmxlbSBjYXVzZWQgYnkgdXNlcnNwYWNlIG5vdCBkaXNhYmxpbmcKZGlzcGxh
eXMgb24gdGhvc2UgY29ubmVjdG9ycywgdGhhdCdzIGRlZmluaXRlbHkgbm90IGludGVudGlvbmFs
IGFuZCBub3QgaG93CnRoaW5ncyBhcmUgc3VwcG9zZWQgdG8gd29yay4gQnV0IHRoaXMgcGFydCBv
ZiB0aGUgTVNUIGhlbHBlcnMgaW4gRFJNIGlzIHByZXR0eQpzb2xpZCBhdCB0aGlzIHBvaW50LCBh
bmQgbW9zdCB0aW1lcyB3aGVuIHBlb3BsZSBwb2ludCBvdXQgdGhpcyBvZGRpdHkgd2l0aCBNU1QK
aXQgZW5kcyB1cCBiZWluZyBhIGJ1ZyBvbiB1c2Vyc3BhY2UncyBlbmQuIEZlZWwgZnJlZSB0byBw
cm92ZSBtZSB3cm9uZyB0aG91Z2ghCgo+IAo+IDMtICpBVVhfTkFDSyogRFAgc3BlYyBtZW50aW9u
cyByZXRyeSAzIHRpbWVzIGZvciBOQUNLKDIuMTYuMS4zIEdUQyBMb2NrCj4gQWNxdWlzaXRpb24p
LiBIb3dldmVyLCBzb21ldGltZXMgd2UgcmVhbGx5IGRvbuKAmXQgbmVlZCBhbnkgcmV0cnkgZm9y
Cj4gTkFDSywgaWYgRFBSWCByZXBsaWVkIEFVWF9OQUNLIGZvciBEUENEIHRoYXQgaXQgZG9lc27i
gJl0IHN1cHBvcnQgKGUuZy4KPiByZWFkaW5nIExUVFBSIENhcGFiaWxpdHkgYW5kIElEIEZpZWxk
IGF0IERQQ0QgRjAwMDBoIH4gRjAwMDcpLgoKQWgsIHllcywgLXRoaXMtLiBPcmlnaW5hbGx5IHdl
IGRpZCBhY3R1YWxseSBqdXN0IGFib3J0IGFueSB0cmFuc2FjdGlvbiBvbgpBVVhfTkFDSywgd2hp
Y2ggaXMgaG9uZXN0bHkgdGhlIGNvcnJlY3QgdGhpbmcgdGhhdCB3ZSBzaG91bGQgYmUgZG9pbmcu
IEJ1dCBpdApsb29rcyBsaWtlIEkgYWN0dWFsbHkgY2hhbmdlZCB0aGlzIGF0IG9uZSBwb2ludCBh
ZnRlciBmaW5kaW5nIHNvbWUgRFAgZGV2aWNlcwp0aGF0IHdvdWxkIHNlbmQgQVVYX05BQ0sgaW5z
dGVhZCBvZiBBVVhfREVGRVIgd2hlbiB0aGV5IHdlcmVuJ3QgeWV0IHJlYWR5IHRvCnJlY2VpdmUg
bWVzc2FnZXMuIEx1Y2tpbHkgaXQgc2VlbXMgSSB3cm90ZSB1cCBhIHByZXR0eSBsb25nIGV4cGxh
bmF0aW9uIGFyb3VuZAp0aGlzIHdoZW4gSSBjaGFuZ2VkIHRoaXMgYmVoYXZpb3IgYmFjayBpbjoK
CjgyOTIyZGEzOTE5MCAoImRybS9kcF9oZWxwZXI6IFJldHJ5IGF1eCB0cmFuc2FjdGlvbnMgb24g
YWxsIGVycm9ycyIpCgpUaGlzIHdhcyBhbG1vc3QgZml2ZSB5ZWFycyBhZ28gdGhvdWdoIHdoZW4g
SSB3YXMgcXVpdGUgbmV3IHRvIHdvcmtpbmcgb24gRFJNLCBzbwpyZWFkaW5nIHRocm91Z2ggdGhp
cyBjb21taXQgSSBhbHJlYWR5IHRoaW5rIEkgaGF2ZSBzb21lIG11Y2ggYmV0dGVyIGlkZWFzIGZv
cgpob3cgd2UgY2FuIGhhbmRsZSBpc3N1ZXMgd2l0aCBEaXNwbGF5UG9ydCBkZXZpY2VzIGxpa2Ug
dGhpcy4gRm9yIHN0YXJ0ZXJzLCB0aGlzCmlzbid0IHRoZSBmaXJzdCB3b3JrYXJvdW5kIHJlZ2Fy
ZGluZyBhIERpc3BsYXlQb3J0IGRldmljZSBvciBpdCdzIGNvbm5lY3RlZApzb3VyY2UgZGV2aWNl
IHdha2luZyB1cC4gVGhlcmUncyBhbHNvOgoKZjgwOGY2MzM3MmNjICgiZHJtL2RwX2hlbHBlcjog
UGVyZm9ybSB0aHJvdy1hd2F5IHJlYWQgYmVmb3JlIGFjdHVhbCByZWFkIGluCmRybV9kcF9kcGNk
X3JlYWQoKSIpCgpXaGljaCB3YXMgb3JpZ2luYWxseSBhZGRlZCBhcyBhIHdvcmthcm91bmQgaW4g
dGhlIEludGVsIGRyaXZlciwgYW5kIHRoZW4gZ290Cm1vdmVkIGludG8gdGhlIERSTSBoZWxwZXJz
IGJ5IG1lLiBUaGUgaW1wb3J0YW50IHRoaW5nIGFib3V0IHRoZXNlIHR3bwp3b3JrYXJvdW5kcyB0
aGF0IHN0aWNrcyBvdXQgdG8gbWUgaXMgdGhhdCB0aGV5J3JlIGJvdGggaXNzdWVzIHdpdGggRFAg
c2lua3MvaHVicwp0aGF0IG9ubHkgaGFwcGVuIHdoZW4gZWl0aGVyIHRoZSBzb3VyY2UgaXMgZmly
c3QgY29ubmVjdGVkIHRvIGEgc2luayBvciBodWIsIG9yCndoZW4gdGhlIHNpbmsvaHViIGlzIHdh
a2luZyB1cCBmcm9tIGEgbG93IHBvd2VyIHN0YXRlIGxpa2UgRDMuIFNvIGl0IHNlZW1zIGxpa2UK
aW4gYm90aCBvZiB0aGVzZSBpbnN0YW5jZXMsIGFmdGVyIHdlIG1hbmFnZSBvbmUgInN1Y2Nlc3Nm
dWwiIHRyYW5zYWN0aW9uICh3aGVyZQp3ZSBkZWZpbmUgInN1Y2Nlc3NmdWwiIGFzIGJvdGggYW4g
QVVYX0FDSywgLWFuZC0gdGhlIG1vbml0b3IgZ2l2aW5nIHVzIGEKc2Vuc2libGUgcmVwbHkgaW5z
dGVhZCBvZiByYW5kb20gZ2FyYmFnZSkgdGhlbiB0aGluZ3Mgc3RhcnQgdG8gYmVjb21lIG5vcm1h
bCBhbmQKbWF0Y2ggdXAgd2l0aCB0aGUgc3BlYy4KClRoZSBjb21tb25hbGl0eSBiZXR3ZWVuIHRo
ZXNlIHR3byB3b3JrYXJvdW5kcyBtYWtlcyBtZSB0aGluayB0aGF0IHdlIGNvdWxkIHNvbHZlCnRo
ZSBBVVhfTkFDSyBwcm9ibGVtIGhlcmUgKC1hbmQtIHRoaXMganVua3kgdGhyb3dhd2F5IHJlYWQp
IGlmIHdlIGp1c3Qga2VwdAp0cmFjayBvZiB3aGV0aGVyIG9yIG5vdCB3ZSd2ZSBtYW5hZ2VkIGEg
InN1Y2Nlc3NmdWwiIHRyYW5zYWN0aW9uIGF0IGxlYXN0IG9uY2UsCmFmdGVyIHdoaWNoIHBvaW50
IHdlIGNhbiBqdXN0IGltbWVkaWF0ZWx5IGFib3J0IG9uIGFueSBBVVhfTkFDSyB3ZSByZWNlaXZl
IGxpa2UKd2UgdXNlZCB0by4gV2hpY2ggd291bGQgc29sdmUgdGhlIGlzc3VlIHlvdSdyZSBtZW50
aW9uaW5nIGhlcmUgd2l0aCBvdXIgaGFuZGxpbmcKb2YgQVVYX05BQ0tTLCB3aXRob3V0IGJyZWFr
aW5nIHRoZSBtb25pdG9ycyB0aGF0IGFjdHVhbGx5IG5lZWQgdGhvc2UKd29ya2Fyb3VuZHMuIEZp
cnN0LCB3ZSB3b3VsZCB3ZSBhZGQgYSBmaWVsZCB0byBkcm1fZHBfYXV4IGNhbGxlZCAicmVhZHki
LiBUaGVuLAp3ZSB3b3VsZCB3YW50IEFVWCB0cmFuc2FjdGlvbnMgdG8gZ28gbGlrZSB0aGlzOgoK
MS4gV2hlbmV2ZXIgZWl0aGVyIG9mIHRoZSBmb2xsb3dpbmcgZXZlbnRzIG9jY3VyOgogICAxYS4g
QSBuZXcgRFAgZGV2aWNlIGJlaW5nIGNvbm5lY3RlZCB0byB0aGUgc3lzdGVtCiAgIDFiLiBCcmlu
Z2luZyBhbiBhbHJlYWR5LWNvbm5lY3RlZCBEUCBkZXZpY2Ugb3V0IG9mIGEgbG93IHBvd2VyIHN0
YXRlIHRocm91Z2gKICAgICAgIERQQ0QgcmVnaXN0ZXIgMDA2MDBoIG9yIHNvbWUgb3RoZXIgbWVj
aGFuaXNtCiAgIFdlIHNldCB0aGUgInJlYWR5IiBmaWVsZCB0byBGYWxzZQoyLiBUaGVuLCB3aGVu
IHRoZSBkcml2ZXIgYXR0ZW1wdHMgYW4gQVVYIGNoYW5uZWwgdHJhbnNhY3Rpb24uIFdlIHN0YXJ0
IHRvCiAgIGF0dGVtcHQgYSBzaW5nbGUgRFBDRCByZWdpc3RlciByZWFkIGZyb20gMDAwMDBoIGFu
ZCByZXRyeSB1bnRpbCB0aGF0CiAgIHRyYW5zYWN0aW9uIGhhcyBjb21wbGV0ZWQgd2l0aCBBVVhf
QUNLLiBUYWtlIG5vdGUgdGhhdCB3ZSB3aWxsIHJldHJ5IHRoaXMKICAgdHJhbnNhY3Rpb24gYSB0
b3RhbCBvZiAzMiB0aW1lcyBsaWtlIHVzdWFsLCBidXQgd2Ugd2lsbCBrZWVwIHJldHJ5aW5nIGV2
ZW4gaW4KICAgdGhlIGZhY2Ugb2YgYW4gQVVYX05BQ0suCjMuIElmIHRoZSBhZm9yZW1lbnRpb25l
ZCB0cmFuc2FjdGlvbiBuZXZlciBjb21wbGV0ZXMgd2l0aCBBVVhfQUNLLCB3ZSBjb25zaWRlcgog
ICB0aGUgZHJpdmVyJ3MgRFBDRCB0cmFuc2FjdGlvbiB0byBoYXZlIGZhaWxlZCBhbmQgcmV0dXJu
IHRoZSBhcHByb3ByaWF0ZQogICByZXR1cm4gY29kZS4KICAgSG93ZXZlci1pZiB0aGUgdHJhbnNh
Y3Rpb24gZG9lcyBjb21wbGV0ZSB3aXRoIEFVWF9BQ0ssIHdlIHNldCB0aGUgInJlYWR5IgogICBm
aWVsZCB0byB0cnVlLgo0LiBXZSB0aGVuIGF0dGVtcHQgdGhlIG9yaWdpbmFsIEFVWCB0cmFuc2Fj
dGlvbiB0aGF0IHRoZSBkcml2ZXIgcmVxdWVzdGVkLgo1LiBGb3IgdGhlIHRyYW5zYWN0aW9uIGlu
IDQsIGFuZCBhbnkgc3Vic2VxdWVudCB0cmFuc2FjdGlvbnMsIGFzIGxvbmcgYXMgInJlYWR5Igog
ICBpcyBzZXQgdG8gVHJ1ZSB3ZSBnbyB3aXRoIHRoZSBzYW1lIDMyIHJldHJpZXMgb24gQVVYX0RF
RkVScywgYnV0IGFib3J0IHRoZQogICB0cmFuc2FjdGlvbiBpbW1lZGlhdGVseSBvbiBhbiBBVVhf
TkFDSy4KCj4gNC0gKkFVWF9ERUZFUiogVGhlIHNwZWNzIHN0YXRlZCB3ZSBtYXkgcmV0cnkgNyB0
aW1lcyBvbiBBVVhfREVGRVIKPiAoMy41LjEuMi4zIExBTkV4X0NIQU5ORUxfRVFfRE9ORSBTZXF1
ZW5jZSkgYW5kIG1heSB0ZXJtaW5hdGUgTFQuIEFsc28KPiB3aXRoIHRoZSBpbmNyZWFzZWQgdXNh
Z2Ugb2YgVVNCNCwgVEJUL1R5cGUtQyBEb2Nrcy9EaXNwbGF5cywgYW5kIGFjdGl2ZQo+IGNhYmxl
cywgdGhlIHVzZSBvZiBMVFRQUiBiZWNvbWVzIGNvbW1vbiB3aGljaCBhZGRzIG1vcmUgY2hhbGxl
bmdlCj4gZXNwZWNpYWxseSBpZiB3ZSBoYXZlIG11bHRpcGxlIExUVFBScyBhbmQgYWxsIG9wZXJh
dGUgaW4gbm9uLUxUVFBSCj4gbW9kZS4gSW4gdGhpcyBjYXNlIGFsbCBMVFRQUnMgd2lsbCByZXBs
eSBBVVhfREVGRVIgaW4gMzAwdXMgaWYgaXQgZGlkCj4gbm90IHJlY2VpdmUgYW55IGF1eCByZXNw
b25zZSBmcm9tIG90aGVyIExUVFBScyBhbmQgRFBSWC4gVGhlIFNDUiBzdGF0ZXMKPiB3ZSBuZWVk
IHRvIHJldHJ5IDcgdGltZXMgYW5kIG5vdCBtb3JlIHRoYW4gNTBtcyAoRFAgdjIuMCBTQ1Igb24g
OGIvMTBiCj4gRFBUWCBhbmQgTFRUUFIgUmVxdWlyZW1lbnRzIFVwZGF0ZSB0byBTZWN0aW9uIDMu
NikKCkknbSBub3Qgc3VyZSB3aGVyZSB5b3UncmUgZ2V0dGluZyA3IHJldHJpZXMgYW5kIG5vdCBt
b3JlIHRoZW4gNTBtcyBmcm9tLiBJCmN1cnJlbnRseSBoYXZlIGEgY29weSBvZiB0aGUgRFAgdjIu
MCBzdGFuZGFyZCwgYnV0IEknbSBub3Qgc3VyZSB3aGF0IFNDUiBpcy4gSXMKdGhpcyBzb21lIHNv
cnQgb2YgdXBkYXRlIHRvIFNlY3Rpb24gMy42IGZyb20gdGhlIERQIHYyLjAgc3RhbmRhcmQ/IEJl
Y2F1c2UgSSBzZWUKc29tZSBtZW50aW9ucyBvZiA1MG1zIHJlc3BvbnNlIHRpbWVzIGluIG15IGNv
cHkgb2YgdGhlIDIuMCBzdGFuZGFyZCByZWdhcmRpbmcKTFRUUFIsIGJ1dCB0aGV5IGRvbid0IGF0
IGFsbCBsb29rIHJlbGF0ZWQgdG8gd2hhdCB5b3UncmUgdGFsa2luZyBhYm91dCBoZXJlLiAoSWYK
aXQgaXMgc29tZSB1cGRhdGUgSSBkb24ndCBoYXZlIGFjY2VzcyB0bywgSSdsbCBwb2tlIHRoZSBY
Lm9yZyBWRVNBIGNvbnRhY3RzIGFuZApzZWUgaWYgdGhleSBjYW4gZ2V0IG1lIGFjY2VzcyB0byB0
aGlzKS4KClJlZ2FyZGxlc3MgdGhvdWdoLCBJJ20gc3RpbGwgbm90IHN1cmUgSSB1bmRlcnN0YW5k
IHRoZSBpc3N1ZSBoZXJlLiBJZiB3ZSdyZQpyZXRyeWluZyBhIHRyYW5zYWN0aW9uLCBpdCdzIGJl
Y2F1c2UgdGhlIHRyYW5zYWN0aW9uIGRpZG4ndCBzdWNjZWVkIC0gd2hpY2ggaW4KdHVybiBtZWFu
cyB0aGF0IHNvbWV0aGluZyB3ZW50IHdyb25nIG9uIHRoZSBEUFJYJ3MgZW5kLiBJbiB0aGUgZXZl
bnQgb2YKc29tZXRoaW5nIGdvaW5nIHdyb25nIHdpdGggdGhlIERQUlggZm9yIGxvbmcgZW5vdWdo
IHRoYXQgd2UgZW5kIHVwIGV4Y2VlZGluZwp0aGF0IDUwbXMgdGltZW91dCwgd291bGRuJ3QgdGhh
dCBhbHJlYWR5IG1lYW4gdGhhdCB0aGUgbGluayB0cmFpbmluZyBwcm9jZXNzIGlzCmFscmVhZHkg
ZmFpbGluZyBhbmQgbmVlZHMgdG8gYmUgYWJvcnRlZD8gT3IgYXJlIHlvdSBzYXlpbmcgdGhhdCB3
ZSB3b3VsZCByZWNlaXZlCkFVWF9OQUNLcyBpbiBzdWNoIGFuIGV2ZW50LCB3aGljaCBjb3VsZCBj
YXVzZSB1cyB0byBrZWVwIHJldHJ5aW5nIHRoZQp0cmFuc2FjdGlvbiBmb3IgbG9uZ2VyIHRoZW4g
NTBtcywgcmVzdWx0aW5nIGluIHRoZSBEUFJYIGVuZGluZyB0aGUgbGluayB0cmFpbmluZwpwcmVt
YXR1cmVseT8gSWYgaXQncyB0aGUgZm9ybWVyLCBob3BlZnVsbHkgdGhlIHNvbHV0aW9uIEkgc3Vn
Z2VzdGVkIGZvciB5b3VyCnRoaXJkIHBvaW50IHdvdWxkIGVuZCB1cCBmaXhpbmcgdGhpcyBhbnl3
YXkgKGJ1dCBJJ20gYWx3YXlzIG9wZW4gdG8gZGlzY3Vzc2lvbgppZiB0aGF0IHNvbHV0aW9uIGlz
bid0IGVub3VnaCkuCgo+IAo+IEluIGFkZGl0aW9uIEkgYmVsaWV2ZSB0aGlzIGZ1bmN0aW9uIGlz
IG5vdCBjb3JyZWN0IGluIHRyZWF0aW5nCj4gQVVYX0RFRkVSIGFuZCBBVVhfTkFDSyBhcyAtRUlP
LiBFc3BlY2lhbGx5IGZvciBBVVhfREVGRVIsIGl0IGlzIGEgdmFsaWQKPiAxIGJ5dGUgcmVzcG9u
c2UgdGhhdCBjYW4gcHJvdmlkZSBhIHZhbHVhYmxlIGRlYnVnZ2luZyBpbmZvcm1hdGlvbgo+IGVz
cGVjaWFsbHkgaW4gdGhlIGNhc2Ugb2Ygb24tYm9hcmQgTFRUUFIgd2hlcmUgdGhlcmUgaXMgbm8g
d2F5IHRvCj4gY2FwdHVyZSB0aGlzIEFVWCByZXNwb25zZSBiZXR3ZWVuIHRoZSBTb0MgYW5kIExU
VFBSIHVubGVzcyB5b3Ugc29sZGVyCj4gdHdvIHdpcmVzIG9uIEFVWF9QIGFuZCBBVVhfTiBsaW5l
cyBhbmQgdXNlIGkyYy9hdXggYW5hbHl6ZXIgdG8gZGVjb2RlLgo+IEF0IGxlYXN0IHdlIHNob3Vs
ZCBwcm92aWRlIHRoZSBzYW1lIGRlYnVnIGluZm9ybWF0aW9uIGFzIHdlIGRvIGluCj4gZHJtX2Rw
X2kyY19kb19tc2cgYnkgcHJpbnRpbmcgQVVYX0RFRkVSIGFuZCBBVVhfTkFDSy4KPiAKPiBUaGFu
ayB5b3UgZm9yIHlvdXIgZmVlZGJhY2sgYW5kIHJldmlldy4KCklzIHRoZSBkZWJ1Z2dpbmcgb3V0
cHV0IGZvciBEUENEIHRyYW5zYWN0aW9ucyAoZS5nLiBzZXR0aW5nIGJpdCAweDEwMCBmb3IKZHJt
LmRlYnVnIG9uIHRoZSBrZXJuZWwgY29tbWFuZGxpbmUpIG5vdCBzdWZmaWNpZW50IGVub3VnaCBm
b3IgdGhpcyBraW5kIG9mCmRlYnVnZ2luZz8gSSdtIGZpbmUgd2l0aCB1cyBiZWluZyBtb3JlIHNw
ZWNpZmljIHdpdGggb3VyIHJldHVybiBjb2RlcyBpbiB0aGF0CmNhc2UsIEkganVzdCB3b25kZXIg
aWYgdGhleSB3b3VsZCBjb25mbGljdCB3aXRoIGFueSBvZiB0aGUgZXJyb3IgY29kZXMgc29tZSBv
Zgp0aGUgRFJNIERQIGhlbHBlcnMgYWxyZWFkeSByZXR1cm4uCgpBbnl3YXktbGV0IG1lIGtub3cg
aWYgdGhlcmUncyBhbnl0aGluZyBpbiBteSByZXNwb25zZXMgSSBuZWVkIHRvIGNsYXJpZnksIG9y
CmFueXRoaW5nIEkgbWlzc2VkIGhlcmUuIEFsc28sIHNvcnJ5IGZvciB0aGUgdmVyeSBsb25nIHJl
c3BvbnNlISBUaGVyZSB3YXMgYSBsb3QKb2YgY29udGV4dCBJIGhhZCB0byBkdW1wIGhlcmUgZm9y
IHRoaXMgdG8gbWFrZSBzZW5zZS4KCj4gLS1LaGFsZWQKPiA+IAo+ID4gPiBTbyBtYWtpbmcgdGhl
IG51bWJlciBvZiBhdXggcmV0aXJlcyBhIHZhcmlhYmxlIHRvIGFsbG93IGZvciBmaW5lCj4gPiA+
IHR1bmluZyBhbmQKPiA+ID4gb3B0aW1pemF0aW9uIG9mIGF1eCB0aW1pbmcuCj4gPiA+IAo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBLaGFsZWQgQWxtYWhhbGxhd3kgPGtoYWxlZC5hbG1haGFsbGF3eUBp
bnRlbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIu
YyB8IDEwICsrKy0tLS0tLS0KPiA+ID4gIGluY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaCAgICAg
fCAgMSArCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlv
bnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hl
bHBlci5jCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwo+ID4gPiBpbmRl
eCBlZWRiYjQ4ODE1YjcuLjhmZGY1N2I0YTA2YyAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2RybV9kcF9oZWxwZXIuYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Rw
X2hlbHBlci5jCj4gPiA+IEBAIC0yNDksMTMgKzI0OSw3IEBAIHN0YXRpYyBpbnQgZHJtX2RwX2Rw
Y2RfYWNjZXNzKHN0cnVjdAo+ID4gPiBkcm1fZHBfYXV4ICphdXgsIHU4Cj4gPiA+IHJlcXVlc3Qs
Cj4gPiA+ICAKPiA+ID4gICAgICAgICBtdXRleF9sb2NrKCZhdXgtPmh3X211dGV4KTsKPiA+ID4g
IAo+ID4gPiAtICAgICAgIC8qCj4gPiA+IC0gICAgICAgICogVGhlIHNwZWNpZmljYXRpb24gZG9l
c24ndCBnaXZlIGFueSByZWNvbW1lbmRhdGlvbiBvbiBob3cKPiA+ID4gb2Z0ZW4gdG8KPiA+ID4g
LSAgICAgICAgKiByZXRyeSBuYXRpdmUgdHJhbnNhY3Rpb25zLiBXZSB1c2VkIHRvIHJldHJ5IDcg
dGltZXMgbGlrZQo+ID4gPiBmb3IKPiA+ID4gLSAgICAgICAgKiBhdXggaTJjIHRyYW5zYWN0aW9u
cyBidXQgcmVhbCB3b3JsZCBkZXZpY2VzIHRoaXMgd2Fzbid0Cj4gPiA+IC0gICAgICAgICogc3Vm
ZmljaWVudCwgYnVtcCB0byAzMiB3aGljaCBtYWtlcyBEZWxsIDRrIG1vbml0b3JzCj4gPiA+IGhh
cHBpZXIuCj4gPiA+IC0gICAgICAgICovCj4gPiA+IC0gICAgICAgZm9yIChyZXRyeSA9IDA7IHJl
dHJ5IDwgMzI7IHJldHJ5KyspIHsKPiA+ID4gKyAgICAgICBmb3IgKHJldHJ5ID0gMDsgcmV0cnkg
PCBhdXgtPm51bV9yZXRyaWVzOyByZXRyeSsrKSB7Cj4gPiA+ICAgICAgICAgICAgICAgICBpZiAo
cmV0ICE9IDAgJiYgcmV0ICE9IC1FVElNRURPVVQpIHsKPiA+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgdXNsZWVwX3JhbmdlKEFVWF9SRVRSWV9JTlRFUlZBTCwKPiA+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIEFVWF9SRVRSWV9JTlRFUlZBTCArIDEwMCk7Cj4gPiA+
IEBAIC0xNzQ0LDYgKzE3MzgsOCBAQCB2b2lkIGRybV9kcF9hdXhfaW5pdChzdHJ1Y3QgZHJtX2Rw
X2F1eCAqYXV4KQo+ID4gPiAgICAgICAgIGF1eC0+ZGRjLnJldHJpZXMgPSAzOwo+ID4gPiAgCj4g
PiA+ICAgICAgICAgYXV4LT5kZGMubG9ja19vcHMgPSAmZHJtX2RwX2kyY19sb2NrX29wczsKPiA+
ID4gKyAgICAgICAvKlN0aWxsIG1ha2luZyB0aGUgRGVsbCA0ayBtb25pdG9ycyBoYXBwaWVyKi8K
PiA+ID4gKyAgICAgICBhdXgtPm51bV9yZXRyaWVzID0gMzI7Cj4gPiA+ICB9Cj4gPiA+ICBFWFBP
UlRfU1lNQk9MKGRybV9kcF9hdXhfaW5pdCk7Cj4gPiA+ICAKPiA+ID4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaAo+ID4gPiBiL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxw
ZXIuaAo+ID4gPiBpbmRleCBlZGZmZDFkY2NhM2UuLjE2Y2JmYzhmNWU2NiAxMDA2NDQKPiA+ID4g
LS0tIGEvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oCj4gPiA+ICsrKyBiL2luY2x1ZGUvZHJt
L2RybV9kcF9oZWxwZXIuaAo+ID4gPiBAQCAtMTg3Niw2ICsxODc2LDcgQEAgc3RydWN0IGRybV9k
cF9hdXggewo+ID4gPiAgICAgICAgIHN0cnVjdCBtdXRleCBod19tdXRleDsKPiA+ID4gICAgICAg
ICBzdHJ1Y3Qgd29ya19zdHJ1Y3QgY3JjX3dvcms7Cj4gPiA+ICAgICAgICAgdTggY3JjX2NvdW50
Owo+ID4gPiArICAgICAgIGludCBudW1fcmV0cmllczsKPiA+ID4gICAgICAgICBzc2l6ZV90ICgq
dHJhbnNmZXIpKHN0cnVjdCBkcm1fZHBfYXV4ICphdXgsCj4gPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgZHJtX2RwX2F1eF9tc2cgKm1zZyk7Cj4gPiA+ICAgICAgICAgLyoq
Ci0tIApTaW5jZXJlbHksCkx5dWRlIFBhdWwgKHNoZS9oZXIpClNvZnR3YXJlIEVuZ2luZWVyIGF0
IFJlZCBIYXQKCk5vdGU6IEkgZGVhbCB3aXRoIGEgbG90IG9mIGVtYWlscyBhbmQgaGF2ZSBhIGxv
dCBvZiBidWdzIG9uIG15IHBsYXRlLiBJZiB5b3UndmUKYXNrZWQgbWUgYSBxdWVzdGlvbiwgYXJl
IHdhaXRpbmcgZm9yIGEgcmV2aWV3L21lcmdlIG9uIGEgcGF0Y2gsIGV0Yy4gYW5kIEkKaGF2ZW4n
dCByZXNwb25kZWQgaW4gYSB3aGlsZSwgcGxlYXNlIGZlZWwgZnJlZSB0byBzZW5kIG1lIGFub3Ro
ZXIgZW1haWwgdG8gY2hlY2sKb24gbXkgc3RhdHVzLiBJIGRvbid0IGJpdGUhCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
