Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB67817376
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 10:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38ACB8915A;
	Wed,  8 May 2019 08:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1DF08915A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 08:17:17 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id w33so18904210edb.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 May 2019 01:17:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=0N5lnGAYpVl8jLu0POCScTDd8sfYN5q61LdKD5JAjDs=;
 b=FQOSVkHo8NRjUs56xXOvI0PdBqsdwIK6lg0xPiePGjrmNiHXKTe9z4iq3GXaHytYVy
 CDdGzTMV1e3kbutZrGPJP01sf3X9R7XCnY+hB4GDJRXsewPN/7Jaot2hNPKjFDbbmuO4
 0T99F/ZRnu1L+epAuYfZd1QuTHg+h0fbMOBv8xLvKBkQghzH1m9dT4H942UKUY/399lN
 DNzL5SNjnf3co/o0HoEHrnYc6eg8nmDQBMT38Mtmqfi0JMLLxwf/N2Mcqr8RELqIRvce
 MY8p/OSJeCSnC8tJqcDRkmXJiY4vdB9zj4towvOq1ZRIuUFPOHksw25UcyWAjR0Cqwkv
 l/wg==
X-Gm-Message-State: APjAAAVL6uO0Vj5WQfueNSMi+3t5uB95Nsnbdz3qHM/6oktGpCFG/lQv
 D30QkOOeFFAjO6VPANHE/H6G5g==
X-Google-Smtp-Source: APXvYqz+mpxWshuU26UyHoB8ox7W8kTtZXnf6nLdtTuCZczDanWJ43OpBb+lAoPhFsj1Wz2jvfNgDw==
X-Received: by 2002:a17:906:4bda:: with SMTP id
 x26mr28323747ejv.176.1557303436362; 
 Wed, 08 May 2019 01:17:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id q33sm4932194eda.71.2019.05.08.01.17.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 01:17:15 -0700 (PDT)
Date: Wed, 8 May 2019 10:17:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Petr Mladek <pmladek@suse.com>
Message-ID: <20190508081712.GQ17751@phenom.ffwll.local>
Mail-Followup-To: Petr Mladek <pmladek@suse.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Will Deacon <will.deacon@arm.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 John Ogness <john.ogness@linutronix.de>,
 linux-kernel@vger.kernel.org
References: <20190502141643.21080-1-daniel.vetter@ffwll.ch>
 <20190506074553.21464-1-daniel.vetter@ffwll.ch>
 <20190506081614.b7b22k4prodskbiy@pathway.suse.cz>
 <20190506082628.wehkislebljxmk5d@pathway.suse.cz>
 <20190506093812.GG17751@phenom.ffwll.local>
 <20190506112448.rng2oefmp2c262dq@pathway.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506112448.rng2oefmp2c262dq@pathway.suse.cz>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=0N5lnGAYpVl8jLu0POCScTDd8sfYN5q61LdKD5JAjDs=;
 b=DAkTcLdGYhnJCVY4IkNJ0G0i4EJT46OzMiH5ZTn93wJXF5Z7EK0zgt6AHjy9PIzOKy
 3vJ+SHx2b75l1gsUddKs3lBS4ZUpZnQSqaQzW6e2X0yEPYCQP9Bpu40CQPzoUVktN4Cw
 4OtivpDrUpwc7KBYTgtxIEG9Vl59FRTONKQwE=
Subject: Re: [Intel-gfx] [PATCH] RFC: console: hack up console_lock more v2
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
Cc: John Ogness <john.ogness@linutronix.de>,
 Peter Zijlstra <peterz@infradead.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMDE6MjQ6NDhQTSArMDIwMCwgUGV0ciBNbGFkZWsgd3Jv
dGU6Cj4gT24gTW9uIDIwMTktMDUtMDYgMTE6Mzg6MTMsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4g
PiBPbiBNb24sIE1heSAwNiwgMjAxOSBhdCAxMDoyNjoyOEFNICswMjAwLCBQZXRyIE1sYWRlayB3
cm90ZToKPiA+ID4gT24gTW9uIDIwMTktMDUtMDYgMTA6MTY6MTQsIFBldHIgTWxhZGVrIHdyb3Rl
Ogo+ID4gPiA+IE9uIE1vbiAyMDE5LTA1LTA2IDA5OjQ1OjUzLCBEYW5pZWwgVmV0dGVyIHdyb3Rl
Ogo+ID4gPiA+ID4gY29uc29sZV90cnlsb2NrLCBjYWxsZWQgZnJvbSB3aXRoaW4gcHJpbnRrLCBj
YW4gYmUgY2FsbGVkIGZyb20gcHJldHR5Cj4gPiA+ID4gPiBtdWNoIGFueXdoZXJlLiBJbmNsdWRp
bmcgdHJ5X3RvX3dha2VfdXAuIE5vdGUgdGhhdCB0aGlzIGlzbid0IGNvbW1vbiwKPiA+ID4gPiA+
IHVzdWFsbHkgdGhlIGJveCBpcyBpbiBwcmV0dHkgYmFkIHNoYXBlIGF0IHRoYXQgcG9pbnQgYWxy
ZWFkeS4gQnV0IGl0Cj4gPiA+ID4gPiByZWFsbHkgZG9lc24ndCBoZWxwIHdoZW4gdGhlbiBsb2Nr
ZGVwIGp1bXBzIGluIGFuZCBzcGFtcyB0aGUgbG9ncywKPiA+ID4gPiA+IHBvdGVudGlhbGx5IG9i
c2N1cmluZyB0aGUgcmVhbCBiYWNrdHJhY2Ugd2UncmUgcmVhbGx5IGludGVyZXN0ZWQgaW4uCj4g
PiA+ID4gPiBPbmUgY2FzZSBJJ3ZlIHNlZW4gKHNsaWdodGx5IHNpbXBsaWZpZWQgYmFja3RyYWNl
KToKPiA+ID4gPiA+IAo+ID4gPiA+ID4gIENhbGwgVHJhY2U6Cj4gPiA+ID4gPiAgIDxJUlE+Cj4g
PiA+ID4gPiAgIGNvbnNvbGVfdHJ5bG9jaysweGUvMHg2MAo+ID4gPiA+ID4gICB2cHJpbnRrX2Vt
aXQrMHhmMS8weDMyMAo+ID4gPiA+ID4gICBwcmludGsrMHg0ZC8weDY5Cj4gPiA+ID4gPiAgIF9f
d2Fybl9wcmludGsrMHg0Ni8weDkwCj4gPiA+ID4gPiAgIG5hdGl2ZV9zbXBfc2VuZF9yZXNjaGVk
dWxlKzB4MmYvMHg0MAo+ID4gPiA+ID4gICBjaGVja19wcmVlbXB0X2N1cnIrMHg4MS8weGEwCj4g
PiA+ID4gPiAgIHR0d3VfZG9fd2FrZXVwKzB4MTQvMHgyMjAKPiA+ID4gPiA+ICAgdHJ5X3RvX3dh
a2VfdXArMHgyMTgvMHg1ZjAKPiA+ID4gPiAKPiA+ID4gPiB0cnlfdG9fd2FrZV91cCgpIHRha2Vz
IHAtPnBpX2xvY2suIEl0IGNvdWxkIGRlYWRsb2NrIGJlY2F1c2UgaXQKPiA+ID4gPiBjYW4gZ2V0
IGNhbGxlZCByZWN1cnNpdmVseSBmcm9tIHByaW50a19zYWZlX3VwKCkuCj4gPiA+ID4gCj4gPiA+
ID4gQW5kIHRoZXJlIGFyZSBtb3JlIGxvY2tzIHRha2VuIGZyb20gdHJ5X3RvX3dha2VfdXAoKSwg
Zm9yIGV4YW1wbGUsCj4gPiA+ID4gX190YXNrX3JxX2xvY2soKSB0YWtlbiBmcm9tIHR0d3VfcmVt
b3RlKCkuCj4gPiA+ID4gCj4gPiA+ID4gSU1ITywgdGhlIG1vc3QgcmVsaWFibGUgc29sdXRpb24g
d291bGQgYmUgZG8gY2FsbCB0aGUgZW50aXJlCj4gPiA+ID4gdXBfY29uc29sZV9zZW0oKSBmcm9t
IHByaW50ayBkZWZlcnJlZCBjb250ZXh0LiBXZSBjb3VsZCBhc3NpZ24KPiA+ID4gPiBmZXcgYnl0
ZXMgZm9yIHRoaXMgY29udGV4dCBpbiB0aGUgcGVyLUNQVSBwcmludGtfZGVmZXJyZWQKPiA+ID4g
PiB2YXJpYWJsZS4KPiA+ID4gCj4gPiA+IEFoLCBJIHdhcyB0b28gZmFzdCBhbmQgZGlkIHRoZSBz
YW1lIG1pc3Rha2UuIFRoaXMgd29uJ3QgaGVscCBiZWNhdXNlCj4gPiA+IGl0IHdvdWxkIHN0aWxs
IGNhbGwgdHJ5X3RvX3dha2VfdXAoKSByZWN1cnNpdmVseS4KPiA+IAo+ID4gVWggOi0vCj4gPiAK
PiA+ID4gV2UgbmVlZCB0byBjYWxsIGFsbCBwcmludGsncyB0aGF0IGNhbiBiZSBjYWxsZWQgdW5k
ZXIgbG9ja3MKPiA+ID4gdGFrZW4gaW4gdHJ5X3RvX3dha2VfdXAoKSBwYXRoIGluIHByaW50ayBk
ZWZlcnJlZCBjb250ZXh0Lgo+ID4gPiBVbmZvcnR1bmF0ZWx5IGl0IGlzIHdoYWNrIGEgbW9sZSBh
cHByb2FjaC4KPiA+IAo+ID4gSG0gc2luY2UgaXQncyB3aGFjay1hLW1vbGUgYW55d2F5LCB3aGF0
IGFib3V0IGNvbnZlcnRpbmcgdGhlIFdBUk5fT04gaW50bwo+ID4gYSBwcmlua3RfZGVmZXJyZWQs
IGxpa2UgYWxsIHRoZSBvdGhlciBzY2hlZHVsZXIgcmVsYXRlZCBjb2RlPyBGZWVscyBhCj4gPiBu
b3RjaCBtb3JlIGNvbnNpc3RlbnQgdG8gbWUgdGhhbiBsZWFraW5nIHRoZSBwcmludGtfY29udGV4
dCBpbnRvIGFyZWFzIGl0Cj4gPiB3YXNuJ3QgcmVhbGx5IG1lYW50IGJ1aWx0IGZvci4gU2NoZWR1
bGVyIGNvZGUgYWxyZWFkeSBmdWxseSBzdWJzY3JpYmVkIHRvCj4gPiB0aGUgd2hhY2stYS1tb2xl
IGFwcHJvYWNoIGFmdGVyIGFsbC4KPiAKPiBJIGFtIG5vdCBzdXJlIGhvdyBleGFjdGx5IHlvdSBt
ZWFuIHRoZSBjb252ZXJzaW9uLgo+IAo+IEFueXdheSwgd2UgZG8gbm90IHdhbnQgdG8gdXNlIHBy
aW50a19kZWZlcnJlZCgpIHRyZWV3aWRlLiBJdCByZWR1Y2VzCj4gdGhlIGNoYW5jZSB0aGF0IHRo
ZSBtZXNzYWdlcyByZWFjaCBjb25zb2xlcy4gU2NoZWR1bGVyIGlzIGFuCj4gZXhjZXB0aW9uIGJl
Y2F1c2Ugb2YgdGhlIHBvc3NpYmxlIGRlYWRsb2Nrcy4KPiAKPiBBIHNvbHV0aW9uIHdvdWxkIGJl
IHRvIGRlZmluZSBXQVJOX09OX0RFRkVSUkVEKCkgdGhhdCB3b3VsZAo+IGNhbGwgbm9ybWFsIFdB
Uk5fT04oKSBpbiBwcmludGsgZGVmZXJyZWQgY29udGV4dCBhbmQKPiB1c2UgaW4gc2NoZWR1bGVy
LgoKU2VudCBpdCBvdXQsIGFuZCB0aGVuIFNlcmdleSBwb2ludGVkIG91dCBwcmludGtfc2FmZV9l
bnRlci9leGl0ICh3aGljaCBJCmd1ZXNzIGlzIHdoYXQgeW91IG1lYW50LCBhbmQgd2hpY2ggSSBt
aXNzZWQpLCBidXQgd2UncmUgZG9pbmcgdGhpcyBhbHJlYWR5CmFyb3VuZCB0aGUgdXAoKSBjYWxs
IGluIF9fdXBfY29uc29sZV9zZW0uCgpTbyBJIHRoaW5rIHRoZXNlIGZ1cnRoZXIgcmVjdXJzaW9u
cyB5b3UncmUgcG9pbnRlZCBvdXQgYXJlIGFscmVhZHkgaGFuZGxlZApjb3JyZWN0bHksIGFuZCBh
bGwgd2UgbmVlZCB0byBkbyBpcyB0byBicmVhayB0aGUgbG9vcCBpbnZvbHZpbmcKc2VtYXBob3Jl
LmxvY2sgb2YgdGhlIGNvbnNvbGVfbG9jayBzZW1hcGhvcmUgb25seS4gV2hpY2ggSSB0aGluayB0
aGlzCnBhdGNoIGhlcmUgYWNoaWV2ZXMuCgpUaG91Z2h0cz8gT3IgYXJlIHdlIGFnYWluIG1pc3Np
bmcgc29tZXRoaW5nIGhlcmU/CgpUaGFua3MsIERhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0
d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
