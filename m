Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C24147B4
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 11:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D103289147;
	Mon,  6 May 2019 09:38:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFEC189147
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 09:38:17 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id f37so14574098edb.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 May 2019 02:38:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=MUCBKoTdL7VxsTLho10xCSR8XMf/U+cya+mYQZsv5YA=;
 b=TQIVbqPSn1QXq1xXlFRFiwdB8w8LtXDs2Nm/st69web7c7LqoV3LSjBWH0s4QvEto5
 tFivonJCTbt15hYI3r+smmbN+rRawmhfMlBK01nBI3uLiTewDfIAnfaMMyHb5CU/Icvk
 P1GB0p+k64ep/jhGi+aBKoS5Q1BRYj4PE8kX5laaclK+yRa8BxHF0ciV+kYvtsZgBK43
 ZURTGnlXyxdI8czPM9HDGnhNctCqmf2xGMyShJkx/DJAShcdtErjGr52LqYJ7hYCLqxa
 nHkcuP8cDdVuhevk5428K8cI/YzSE3GIuTb7QwFgvR1p54ihQ2hxZ6mdQjXkwJg6kVKM
 59Rg==
X-Gm-Message-State: APjAAAUpd9seOy9F3y7XudQDeYnmcqA6Sb3RjIOhJEZR5f2NOlYhmbhV
 ypDJh/eyeyHjqWmL2/BPiyo5hA==
X-Google-Smtp-Source: APXvYqw3h5nl5mbp+FVa0nCaCTx5coCf2LzYGxq4yAq8+03Hn5kxlCza/d+7Jjzk2FFRKDNEt/P9yw==
X-Received: by 2002:a17:906:3403:: with SMTP id
 c3mr18303929ejb.177.1557135496310; 
 Mon, 06 May 2019 02:38:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id g11sm157101eda.42.2019.05.06.02.38.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 May 2019 02:38:15 -0700 (PDT)
Date: Mon, 6 May 2019 11:38:13 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Petr Mladek <pmladek@suse.com>
Message-ID: <20190506093812.GG17751@phenom.ffwll.local>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506082628.wehkislebljxmk5d@pathway.suse.cz>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=MUCBKoTdL7VxsTLho10xCSR8XMf/U+cya+mYQZsv5YA=;
 b=GrqoWz8ic+tDcnjbjpjFtcOjd6NbN54Wyvv5rMJIdupSUBjBwo0/ROqMu7caGtGH06
 lZiC9iXum79qeSwTMg5qAqzmJdIyIYMAQHMaeBPWRVkfeWFAQ3qQkV21tSPWc4JOWaoi
 g8cWXqYAaDYT9ZB5vyO8Cm30d3U03sJVI9Z5o=
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
 Peter Zijlstra <peterz@infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMTA6MjY6MjhBTSArMDIwMCwgUGV0ciBNbGFkZWsgd3Jv
dGU6Cj4gT24gTW9uIDIwMTktMDUtMDYgMTA6MTY6MTQsIFBldHIgTWxhZGVrIHdyb3RlOgo+ID4g
T24gTW9uIDIwMTktMDUtMDYgMDk6NDU6NTMsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiA+IGNv
bnNvbGVfdHJ5bG9jaywgY2FsbGVkIGZyb20gd2l0aGluIHByaW50aywgY2FuIGJlIGNhbGxlZCBm
cm9tIHByZXR0eQo+ID4gPiBtdWNoIGFueXdoZXJlLiBJbmNsdWRpbmcgdHJ5X3RvX3dha2VfdXAu
IE5vdGUgdGhhdCB0aGlzIGlzbid0IGNvbW1vbiwKPiA+ID4gdXN1YWxseSB0aGUgYm94IGlzIGlu
IHByZXR0eSBiYWQgc2hhcGUgYXQgdGhhdCBwb2ludCBhbHJlYWR5LiBCdXQgaXQKPiA+ID4gcmVh
bGx5IGRvZXNuJ3QgaGVscCB3aGVuIHRoZW4gbG9ja2RlcCBqdW1wcyBpbiBhbmQgc3BhbXMgdGhl
IGxvZ3MsCj4gPiA+IHBvdGVudGlhbGx5IG9ic2N1cmluZyB0aGUgcmVhbCBiYWNrdHJhY2Ugd2Un
cmUgcmVhbGx5IGludGVyZXN0ZWQgaW4uCj4gPiA+IE9uZSBjYXNlIEkndmUgc2VlbiAoc2xpZ2h0
bHkgc2ltcGxpZmllZCBiYWNrdHJhY2UpOgo+ID4gPiAKPiA+ID4gIENhbGwgVHJhY2U6Cj4gPiA+
ICAgPElSUT4KPiA+ID4gICBjb25zb2xlX3RyeWxvY2srMHhlLzB4NjAKPiA+ID4gICB2cHJpbnRr
X2VtaXQrMHhmMS8weDMyMAo+ID4gPiAgIHByaW50aysweDRkLzB4NjkKPiA+ID4gICBfX3dhcm5f
cHJpbnRrKzB4NDYvMHg5MAo+ID4gPiAgIG5hdGl2ZV9zbXBfc2VuZF9yZXNjaGVkdWxlKzB4MmYv
MHg0MAo+ID4gPiAgIGNoZWNrX3ByZWVtcHRfY3VycisweDgxLzB4YTAKPiA+ID4gICB0dHd1X2Rv
X3dha2V1cCsweDE0LzB4MjIwCj4gPiA+ICAgdHJ5X3RvX3dha2VfdXArMHgyMTgvMHg1ZjAKPiA+
IAo+ID4gdHJ5X3RvX3dha2VfdXAoKSB0YWtlcyBwLT5waV9sb2NrLiBJdCBjb3VsZCBkZWFkbG9j
ayBiZWNhdXNlIGl0Cj4gPiBjYW4gZ2V0IGNhbGxlZCByZWN1cnNpdmVseSBmcm9tIHByaW50a19z
YWZlX3VwKCkuCj4gPiAKPiA+IEFuZCB0aGVyZSBhcmUgbW9yZSBsb2NrcyB0YWtlbiBmcm9tIHRy
eV90b193YWtlX3VwKCksIGZvciBleGFtcGxlLAo+ID4gX190YXNrX3JxX2xvY2soKSB0YWtlbiBm
cm9tIHR0d3VfcmVtb3RlKCkuCj4gPiAKPiA+IElNSE8sIHRoZSBtb3N0IHJlbGlhYmxlIHNvbHV0
aW9uIHdvdWxkIGJlIGRvIGNhbGwgdGhlIGVudGlyZQo+ID4gdXBfY29uc29sZV9zZW0oKSBmcm9t
IHByaW50ayBkZWZlcnJlZCBjb250ZXh0LiBXZSBjb3VsZCBhc3NpZ24KPiA+IGZldyBieXRlcyBm
b3IgdGhpcyBjb250ZXh0IGluIHRoZSBwZXItQ1BVIHByaW50a19kZWZlcnJlZAo+ID4gdmFyaWFi
bGUuCj4gCj4gQWgsIEkgd2FzIHRvbyBmYXN0IGFuZCBkaWQgdGhlIHNhbWUgbWlzdGFrZS4gVGhp
cyB3b24ndCBoZWxwIGJlY2F1c2UKPiBpdCB3b3VsZCBzdGlsbCBjYWxsIHRyeV90b193YWtlX3Vw
KCkgcmVjdXJzaXZlbHkuCgpVaCA6LS8KCj4gV2UgbmVlZCB0byBjYWxsIGFsbCBwcmludGsncyB0
aGF0IGNhbiBiZSBjYWxsZWQgdW5kZXIgbG9ja3MKPiB0YWtlbiBpbiB0cnlfdG9fd2FrZV91cCgp
IHBhdGggaW4gcHJpbnRrIGRlZmVycmVkIGNvbnRleHQuCj4gVW5mb3J0dW5hdGVseSBpdCBpcyB3
aGFjayBhIG1vbGUgYXBwcm9hY2guCgpIbSBzaW5jZSBpdCdzIHdoYWNrLWEtbW9sZSBhbnl3YXks
IHdoYXQgYWJvdXQgY29udmVydGluZyB0aGUgV0FSTl9PTiBpbnRvCmEgcHJpbmt0X2RlZmVycmVk
LCBsaWtlIGFsbCB0aGUgb3RoZXIgc2NoZWR1bGVyIHJlbGF0ZWQgY29kZT8gRmVlbHMgYQpub3Rj
aCBtb3JlIGNvbnNpc3RlbnQgdG8gbWUgdGhhbiBsZWFraW5nIHRoZSBwcmludGtfY29udGV4dCBp
bnRvIGFyZWFzIGl0Cndhc24ndCByZWFsbHkgbWVhbnQgYnVpbHQgZm9yLiBTY2hlZHVsZXIgY29k
ZSBhbHJlYWR5IGZ1bGx5IHN1YnNjcmliZWQgdG8KdGhlIHdoYWNrLWEtbW9sZSBhcHByb2FjaCBh
ZnRlciBhbGwuCgpUaGlzIHdvdWxkIG1lYW4gd2UgZHJvcCB0aGUgYmFja3RyYWNlIGZyb20gdGhl
IG5hdGl2ZV9zbXBfc2VuZF9yZXNjaGVkdWxlLApvciBtYXliZSB3ZSBuZWVkIGEgcHJpbnRrX2Rl
ZmVycmVkX2JhY2t0cmFjZSgpPwotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
