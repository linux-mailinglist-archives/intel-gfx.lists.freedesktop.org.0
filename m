Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F52DCE1
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 09:31:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0787389186;
	Mon, 29 Apr 2019 07:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C8B489189
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 07:31:53 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id e56so1930564ede.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 00:31:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=sRH6clAj444S0IaUD4V7ddMcW5DcLuncvupV6rJwYLQ=;
 b=dQvmqHvEQ0PMgO3C1tIynOy5s1FajAO+Ypse7iSP3gIckSrwdAGJbFm9G4q3smsayo
 BuuXRGqZgIKFQGvqOSEUA6Sj5zrSSbS5WgCosgxB5bmwFESuUHeFrPdB5qmAaTV94ixI
 suufkuDs8MVKCn5vzOHLvg8QLO558tLpgW+5xMc6oV/LR4f8BjHQfsQLfINNTWAk+ElK
 nlCYdPBNK+Em14wNkOdUCkl85tou1q5qCysHkdc3XV33TvOBk+T1gj5yqZ7J8yaTCxRH
 72U2K/WAeaS4G1MF1WmyaknHdhrJIkk6WssaYY+rh/TvWSRG46BQVbanrw5bHIHURTrD
 MZnw==
X-Gm-Message-State: APjAAAWMUPzppd/yh2AuwuDjNcVybT3lCbkPsQE78htxPsp2LPjZeh55
 ajCxsSeZH8oBkmBoXBDo9+H1PA==
X-Google-Smtp-Source: APXvYqyxVvlXBUb5f3ZfhGcOOXtL20mG6E5CTC1VgABIFt1t1KI3VjQphCsVTXb/6LwsAcWmU8fADQ==
X-Received: by 2002:a50:a5fb:: with SMTP id b56mr15148543edc.262.1556523111799; 
 Mon, 29 Apr 2019 00:31:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id v9sm9064152ede.32.2019.04.29.00.31.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 00:31:51 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:31:49 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20190429073149.GE3271@phenom.ffwll.local>
References: <20190418085805.5648-1-ramalingam.c@intel.com>
 <20190418085805.5648-8-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418085805.5648-8-ramalingam.c@intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sRH6clAj444S0IaUD4V7ddMcW5DcLuncvupV6rJwYLQ=;
 b=hTneKwWfOu9hRA8Yoqpia8II2IDoCPBOL4NiL7RImzbQT8VAk9smyK1ojTloGT720P
 sPlLhPvxAQXT2pU9suD9avcI5z4oZvAs2P38bmcbEVfjbUOQxpSe+U3hMgPL7t4iqmP8
 eMC0Mr6GUH1vJ3BKDcWNkQBJPjUboLahlh60c=
Subject: Re: [Intel-gfx] [PATCH v5 07/12] drm/hdcp: gathering hdcp related
 code into drm_hdcp.c
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBcHIgMTgsIDIwMTkgYXQgMDI6Mjg6MDBQTSArMDUzMCwgUmFtYWxpbmdhbSBDIHdy
b3RlOgo+IENvbnNpZGVyaW5nIHRoZSBzaWduaWZpY2FudCBzaXplIG9mIGhkY3AgcmVsYXRlZCBj
b2RlIGluIGRybSwgYWxsCj4gaGRjcCByZWxhdGVkIGNvZGVzIGFyZSBtb3ZlZCBpbnRvIHNlcGFy
YXRlIGZpbGUgY2FsbGVkIGRybV9oZGNwLmMuCj4gCj4gdjI6Cj4gICBSZWJhc2VkLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiBTdWdn
ZXN0ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYyB8IDc4IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9oZGNwLmMgICAgICB8IDgxICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKwoKTmVlZCB0byBtYWtlIHN1cmUgdGhpcyBpcyBzdGlsbCBp
bmNsdWRlZCBpbnRvCkRvY3VtZW5hdGlvbi9ncHUvZHJtLWttcy1oZWxwZXJzLnJzdC4gQnV0IGFu
IGVhcmxpZXIgcGF0Y2ggc2hvdWxkIHRha2UKY2FyZSBvZiB0aGF0LCBzbwoKUmV2aWV3ZWQtYnk6
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cgo+ICBpbmNsdWRlL2RybS9k
cm1fY29ubmVjdG9yLmggICAgIHwgIDIgLQo+ICBpbmNsdWRlL2RybS9kcm1faGRjcC5oICAgICAg
ICAgIHwgIDMgKysKPiAgNCBmaWxlcyBjaGFuZ2VkLCA4NCBpbnNlcnRpb25zKCspLCA4MCBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3Iu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMKPiBpbmRleCAwMzkwN2QxM2VmNjYu
LjQzNmNmOGU3NjRjYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rv
ci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYwo+IEBAIC04MjMsMTMg
KzgyMyw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3Byb3BfZW51bV9saXN0IGRybV90dl9z
dWJjb25uZWN0b3JfZW51bV9saXN0W10gPSB7Cj4gIERSTV9FTlVNX05BTUVfRk4oZHJtX2dldF90
dl9zdWJjb25uZWN0b3JfbmFtZSwKPiAgCQkgZHJtX3R2X3N1YmNvbm5lY3Rvcl9lbnVtX2xpc3Qp
Cj4gIAo+IC1zdGF0aWMgc3RydWN0IGRybV9wcm9wX2VudW1fbGlzdCBkcm1fY3BfZW51bV9saXN0
W10gPSB7Cj4gLQl7IERSTV9NT0RFX0NPTlRFTlRfUFJPVEVDVElPTl9VTkRFU0lSRUQsICJVbmRl
c2lyZWQiIH0sCj4gLQl7IERSTV9NT0RFX0NPTlRFTlRfUFJPVEVDVElPTl9ERVNJUkVELCAiRGVz
aXJlZCIgfSwKPiAtCXsgRFJNX01PREVfQ09OVEVOVF9QUk9URUNUSU9OX0VOQUJMRUQsICJFbmFi
bGVkIiB9LAo+IC19Owo+IC1EUk1fRU5VTV9OQU1FX0ZOKGRybV9nZXRfY29udGVudF9wcm90ZWN0
aW9uX25hbWUsIGRybV9jcF9lbnVtX2xpc3QpCj4gLQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRy
bV9wcm9wX2VudW1fbGlzdCBoZG1pX2NvbG9yc3BhY2VzW10gPSB7Cj4gIAkvKiBGb3IgRGVmYXVs
dCBjYXNlLCBkcml2ZXIgd2lsbCBzZXQgdGhlIGNvbG9yc3BhY2UgKi8KPiAgCXsgRFJNX01PREVf
Q09MT1JJTUVUUllfREVGQVVMVCwgIkRlZmF1bHQiIH0sCj4gQEAgLTg1NywxMyArODUwLDYgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3QgaGRtaV9jb2xvcnNwYWNlc1td
ID0gewo+ICAJeyBEUk1fTU9ERV9DT0xPUklNRVRSWV9EQ0lfUDNfUkdCX1RIRUFURVIsICJEQ0kt
UDNfUkdCX1RoZWF0ZXIiIH0sCj4gIH07Cj4gIAo+IC1zdGF0aWMgc3RydWN0IGRybV9wcm9wX2Vu
dW1fbGlzdCBkcm1faGRjcF9jb250ZW50X3R5cGVfZW51bV9saXN0W10gPSB7Cj4gLQl7IERSTV9N
T0RFX0hEQ1BfQ09OVEVOVF9UWVBFMCwgIkhEQ1AgVHlwZTAiIH0sCj4gLQl7IERSTV9NT0RFX0hE
Q1BfQ09OVEVOVF9UWVBFMSwgIkhEQ1AgVHlwZTEiIH0sCj4gLX07Cj4gLURSTV9FTlVNX05BTUVf
Rk4oZHJtX2dldF9oZGNwX2NvbnRlbnRfdHlwZV9uYW1lLAo+IC0JCSBkcm1faGRjcF9jb250ZW50
X3R5cGVfZW51bV9saXN0KQo+IC0KPiAgLyoqCj4gICAqIERPQzogc3RhbmRhcmQgY29ubmVjdG9y
IHByb3BlcnRpZXMKPiAgICoKPiBAQCAtMTUzOSw3MCArMTUyNSw2IEBAIGludCBkcm1fY29ubmVj
dG9yX2F0dGFjaF9zY2FsaW5nX21vZGVfcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3RvciwKPiAgfQo+ICBFWFBPUlRfU1lNQk9MKGRybV9jb25uZWN0b3JfYXR0YWNoX3NjYWxp
bmdfbW9kZV9wcm9wZXJ0eSk7Cj4gIAo+IC0vKioKPiAtICogZHJtX2Nvbm5lY3Rvcl9hdHRhY2hf
Y29udGVudF9wcm90ZWN0aW9uX3Byb3BlcnR5IC0gYXR0YWNoIGNvbnRlbnQgcHJvdGVjdGlvbgo+
IC0gKiBwcm9wZXJ0eQo+IC0gKgo+IC0gKiBAY29ubmVjdG9yOiBjb25uZWN0b3IgdG8gYXR0YWNo
IENQIHByb3BlcnR5IG9uLgo+IC0gKiBAaGRjcF9jb250ZW50X3R5cGU6IGlzIEhEQ1AgQ29udGVu
dCBUeXBlIHByb3BlcnR5IG5lZWRlZCBmb3IgY29ubmVjdG9yCj4gLSAqCj4gLSAqIFRoaXMgaXMg
dXNlZCB0byBhZGQgc3VwcG9ydCBmb3IgY29udGVudCBwcm90ZWN0aW9uIG9uIHNlbGVjdCBjb25u
ZWN0b3JzLgo+IC0gKiBDb250ZW50IFByb3RlY3Rpb24gaXMgaW50ZW50aW9uYWxseSB2YWd1ZSB0
byBhbGxvdyBmb3IgZGlmZmVyZW50IHVuZGVybHlpbmcKPiAtICogdGVjaG5vbG9naWVzLCBob3dl
dmVyIGl0IGlzIG1vc3QgaW1wbGVtZW50ZWQgYnkgSERDUC4KPiAtICoKPiAtICogV2hlbiBoZGNw
X2NvbnRlbnRfdHlwZSBpcyB0cnVlIGVudW0gcHJvcGVydHkgY2FsbGVkIEhEQ1AgQ29udGVudCBU
eXBlIGlzCj4gLSAqIGNyZWF0ZWQgKGlmIGl0IGlzIG5vdCBhbHJlYWR5KSBhbmQgYXR0YWNoZWQg
dG8gdGhlIGNvbm5lY3Rvci4KPiAtICoKPiAtICogVGhpcyBwcm9wZXJ0eSBpcyB1c2VkIGZvciBz
ZW5kaW5nIHRoZSBwcm90ZWN0ZWQgY29udGVudCdzIHN0cmVhbSB0eXBlCj4gLSAqIGZyb20gdXNl
cnNwYWNlIHRvIGtlcm5lbCBvbiBzZWxlY3RlZCBjb25uZWN0b3JzLiBQcm90ZWN0ZWQgY29udGVu
dCBwcm92aWRlcgo+IC0gKiB3aWxsIGRlY2lkZSB0aGVpciB0eXBlIG9mIHRoZWlyIGNvbnRlbnQg
YW5kIGRlY2xhcmUgdGhlIHNhbWUgdG8ga2VybmVsLgo+IC0gKgo+IC0gKiBDb250ZW50IHR5cGUg
d2lsbCBiZSB1c2VkIGR1cmluZyB0aGUgSERDUCAyLjIgYXV0aGVudGljYXRpb24uCj4gLSAqIENv
bnRlbnQgdHlwZSB3aWxsIGJlIHNldCB0byAmZHJtX2Nvbm5lY3Rvcl9zdGF0ZS5oZGNwX2NvbnRl
bnRfdHlwZS4KPiAtICoKPiAtICogVGhlIGNvbnRlbnQgcHJvdGVjdGlvbiB3aWxsIGJlIHNldCB0
byAmZHJtX2Nvbm5lY3Rvcl9zdGF0ZS5jb250ZW50X3Byb3RlY3Rpb24KPiAtICoKPiAtICogUmV0
dXJuczoKPiAtICogWmVybyBvbiBzdWNjZXNzLCBuZWdhdGl2ZSBlcnJubyBvbiBmYWlsdXJlLgo+
IC0gKi8KPiAtaW50IGRybV9jb25uZWN0b3JfYXR0YWNoX2NvbnRlbnRfcHJvdGVjdGlvbl9wcm9w
ZXJ0eSgKPiAtCQlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLCBib29sIGhkY3BfY29u
dGVudF90eXBlKQo+IC17Cj4gLQlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY29ubmVjdG9yLT5k
ZXY7Cj4gLQlzdHJ1Y3QgZHJtX3Byb3BlcnR5ICpwcm9wID0KPiAtCQkJZGV2LT5tb2RlX2NvbmZp
Zy5jb250ZW50X3Byb3RlY3Rpb25fcHJvcGVydHk7Cj4gLQo+IC0JaWYgKCFwcm9wKQo+IC0JCXBy
b3AgPSBkcm1fcHJvcGVydHlfY3JlYXRlX2VudW0oZGV2LCAwLCAiQ29udGVudCBQcm90ZWN0aW9u
IiwKPiAtCQkJCQkJZHJtX2NwX2VudW1fbGlzdCwKPiAtCQkJCQkJQVJSQVlfU0laRShkcm1fY3Bf
ZW51bV9saXN0KSk7Cj4gLQlpZiAoIXByb3ApCj4gLQkJcmV0dXJuIC1FTk9NRU07Cj4gLQo+IC0J
ZHJtX29iamVjdF9hdHRhY2hfcHJvcGVydHkoJmNvbm5lY3Rvci0+YmFzZSwgcHJvcCwKPiAtCQkJ
CSAgIERSTV9NT0RFX0NPTlRFTlRfUFJPVEVDVElPTl9VTkRFU0lSRUQpOwo+IC0JZGV2LT5tb2Rl
X2NvbmZpZy5jb250ZW50X3Byb3RlY3Rpb25fcHJvcGVydHkgPSBwcm9wOwo+IC0KPiAtCWlmICgh
aGRjcF9jb250ZW50X3R5cGUpCj4gLQkJcmV0dXJuIDA7Cj4gLQo+IC0JcHJvcCA9IGRldi0+bW9k
ZV9jb25maWcuaGRjcF9jb250ZW50X3R5cGVfcHJvcGVydHk7Cj4gLQlpZiAoIXByb3ApCj4gLQkJ
cHJvcCA9IGRybV9wcm9wZXJ0eV9jcmVhdGVfZW51bShkZXYsIDAsICJIRENQIENvbnRlbnQgVHlw
ZSIsCj4gLQkJCQkJZHJtX2hkY3BfY29udGVudF90eXBlX2VudW1fbGlzdCwKPiAtCQkJCQlBUlJB
WV9TSVpFKAo+IC0JCQkJCWRybV9oZGNwX2NvbnRlbnRfdHlwZV9lbnVtX2xpc3QpKTsKPiAtCWlm
ICghcHJvcCkKPiAtCQlyZXR1cm4gLUVOT01FTTsKPiAtCj4gLQlkcm1fb2JqZWN0X2F0dGFjaF9w
cm9wZXJ0eSgmY29ubmVjdG9yLT5iYXNlLCBwcm9wLAo+IC0JCQkJICAgRFJNX01PREVfSERDUF9D
T05URU5UX1RZUEUwKTsKPiAtCWRldi0+bW9kZV9jb25maWcuaGRjcF9jb250ZW50X3R5cGVfcHJv
cGVydHkgPSBwcm9wOwo+IC0KPiAtCXJldHVybiAwOwo+IC19Cj4gLUVYUE9SVF9TWU1CT0woZHJt
X2Nvbm5lY3Rvcl9hdHRhY2hfY29udGVudF9wcm90ZWN0aW9uX3Byb3BlcnR5KTsKPiAtCj4gIC8q
Kgo+ICAgKiBkcm1fbW9kZV9jcmVhdGVfYXNwZWN0X3JhdGlvX3Byb3BlcnR5IC0gY3JlYXRlIGFz
cGVjdCByYXRpbyBwcm9wZXJ0eQo+ICAgKiBAZGV2OiBEUk0gZGV2aWNlCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1faGRjcC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9oZGNwLmMK
PiBpbmRleCA3OGIwNDNjODE5NWUuLmEwOTYwNTA3ZTRmZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX2hkY3AuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1faGRjcC5jCj4g
QEAgLTE3LDYgKzE3LDkgQEAKPiAgI2luY2x1ZGUgPGRybS9kcm1fc3lzZnMuaD4KPiAgI2luY2x1
ZGUgPGRybS9kcm1fcHJpbnQuaD4KPiAgI2luY2x1ZGUgPGRybS9kcm1fZGV2aWNlLmg+Cj4gKyNp
bmNsdWRlIDxkcm0vZHJtX3Byb3BlcnR5Lmg+Cj4gKyNpbmNsdWRlIDxkcm0vZHJtX21vZGVfb2Jq
ZWN0Lmg+Cj4gKyNpbmNsdWRlIDxkcm0vZHJtX2Nvbm5lY3Rvci5oPgo+ICAKPiAgc3RydWN0IGhk
Y3Bfc3JtIHsKPiAgCXU4ICpzcm1fYnVmOwo+IEBAIC0zMzQsMyArMzM3LDgxIEBAIHZvaWQgZHJt
X3RlYXJkb3duX2hkY3Bfc3JtKHN0cnVjdCBjbGFzcyAqZHJtX2NsYXNzKQo+ICAJCWtmcmVlKHNy
bV9kYXRhKTsKPiAgCX0KPiAgfQo+ICsKPiArc3RhdGljIHN0cnVjdCBkcm1fcHJvcF9lbnVtX2xp
c3QgZHJtX2NwX2VudW1fbGlzdFtdID0gewo+ICsJeyBEUk1fTU9ERV9DT05URU5UX1BST1RFQ1RJ
T05fVU5ERVNJUkVELCAiVW5kZXNpcmVkIiB9LAo+ICsJeyBEUk1fTU9ERV9DT05URU5UX1BST1RF
Q1RJT05fREVTSVJFRCwgIkRlc2lyZWQiIH0sCj4gKwl7IERSTV9NT0RFX0NPTlRFTlRfUFJPVEVD
VElPTl9FTkFCTEVELCAiRW5hYmxlZCIgfSwKPiArfTsKPiArRFJNX0VOVU1fTkFNRV9GTihkcm1f
Z2V0X2NvbnRlbnRfcHJvdGVjdGlvbl9uYW1lLCBkcm1fY3BfZW51bV9saXN0KQo+ICsKPiArc3Rh
dGljIHN0cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3QgZHJtX2hkY3BfY29udGVudF90eXBlX2VudW1f
bGlzdFtdID0gewo+ICsJeyBEUk1fTU9ERV9IRENQX0NPTlRFTlRfVFlQRTAsICJIRENQIFR5cGUw
IiB9LAo+ICsJeyBEUk1fTU9ERV9IRENQX0NPTlRFTlRfVFlQRTEsICJIRENQIFR5cGUxIiB9LAo+
ICt9Owo+ICtEUk1fRU5VTV9OQU1FX0ZOKGRybV9nZXRfaGRjcF9jb250ZW50X3R5cGVfbmFtZSwK
PiArCQkgZHJtX2hkY3BfY29udGVudF90eXBlX2VudW1fbGlzdCkKPiArCj4gKy8qKgo+ICsgKiBk
cm1fY29ubmVjdG9yX2F0dGFjaF9jb250ZW50X3Byb3RlY3Rpb25fcHJvcGVydHkgLSBhdHRhY2gg
Y29udGVudCBwcm90ZWN0aW9uCj4gKyAqIHByb3BlcnR5Cj4gKyAqCj4gKyAqIEBjb25uZWN0b3I6
IGNvbm5lY3RvciB0byBhdHRhY2ggQ1AgcHJvcGVydHkgb24uCj4gKyAqIEBoZGNwX2NvbnRlbnRf
dHlwZTogaXMgSERDUCBDb250ZW50IFR5cGUgcHJvcGVydHkgbmVlZGVkIGZvciBjb25uZWN0b3IK
PiArICoKPiArICogVGhpcyBpcyB1c2VkIHRvIGFkZCBzdXBwb3J0IGZvciBjb250ZW50IHByb3Rl
Y3Rpb24gb24gc2VsZWN0IGNvbm5lY3RvcnMuCj4gKyAqIENvbnRlbnQgUHJvdGVjdGlvbiBpcyBp
bnRlbnRpb25hbGx5IHZhZ3VlIHRvIGFsbG93IGZvciBkaWZmZXJlbnQgdW5kZXJseWluZwo+ICsg
KiB0ZWNobm9sb2dpZXMsIGhvd2V2ZXIgaXQgaXMgbW9zdCBpbXBsZW1lbnRlZCBieSBIRENQLgo+
ICsgKgo+ICsgKiBXaGVuIGhkY3BfY29udGVudF90eXBlIGlzIHRydWUgZW51bSBwcm9wZXJ0eSBj
YWxsZWQgSERDUCBDb250ZW50IFR5cGUgaXMKPiArICogY3JlYXRlZCAoaWYgaXQgaXMgbm90IGFs
cmVhZHkpIGFuZCBhdHRhY2hlZCB0byB0aGUgY29ubmVjdG9yLgo+ICsgKgo+ICsgKiBUaGlzIHBy
b3BlcnR5IGlzIHVzZWQgZm9yIHNlbmRpbmcgdGhlIHByb3RlY3RlZCBjb250ZW50J3Mgc3RyZWFt
IHR5cGUKPiArICogZnJvbSB1c2Vyc3BhY2UgdG8ga2VybmVsIG9uIHNlbGVjdGVkIGNvbm5lY3Rv
cnMuIFByb3RlY3RlZCBjb250ZW50IHByb3ZpZGVyCj4gKyAqIHdpbGwgZGVjaWRlIHRoZWlyIHR5
cGUgb2YgdGhlaXIgY29udGVudCBhbmQgZGVjbGFyZSB0aGUgc2FtZSB0byBrZXJuZWwuCj4gKyAq
Cj4gKyAqIENvbnRlbnQgdHlwZSB3aWxsIGJlIHVzZWQgZHVyaW5nIHRoZSBIRENQIDIuMiBhdXRo
ZW50aWNhdGlvbi4KPiArICogQ29udGVudCB0eXBlIHdpbGwgYmUgc2V0IHRvICZkcm1fY29ubmVj
dG9yX3N0YXRlLmhkY3BfY29udGVudF90eXBlLgo+ICsgKgo+ICsgKiBUaGUgY29udGVudCBwcm90
ZWN0aW9uIHdpbGwgYmUgc2V0IHRvICZkcm1fY29ubmVjdG9yX3N0YXRlLmNvbnRlbnRfcHJvdGVj
dGlvbgo+ICsgKgo+ICsgKiBSZXR1cm5zOgo+ICsgKiBaZXJvIG9uIHN1Y2Nlc3MsIG5lZ2F0aXZl
IGVycm5vIG9uIGZhaWx1cmUuCj4gKyAqLwo+ICtpbnQgZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfY29u
dGVudF9wcm90ZWN0aW9uX3Byb3BlcnR5KAo+ICsJCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IsIGJvb2wgaGRjcF9jb250ZW50X3R5cGUpCj4gK3sKPiArCXN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYgPSBjb25uZWN0b3ItPmRldjsKPiArCXN0cnVjdCBkcm1fcHJvcGVydHkgKnByb3AgPQo+
ICsJCQlkZXYtPm1vZGVfY29uZmlnLmNvbnRlbnRfcHJvdGVjdGlvbl9wcm9wZXJ0eTsKPiArCj4g
KwlpZiAoIXByb3ApCj4gKwkJcHJvcCA9IGRybV9wcm9wZXJ0eV9jcmVhdGVfZW51bShkZXYsIDAs
ICJDb250ZW50IFByb3RlY3Rpb24iLAo+ICsJCQkJCQlkcm1fY3BfZW51bV9saXN0LAo+ICsJCQkJ
CQlBUlJBWV9TSVpFKGRybV9jcF9lbnVtX2xpc3QpKTsKPiArCWlmICghcHJvcCkKPiArCQlyZXR1
cm4gLUVOT01FTTsKPiArCj4gKwlkcm1fb2JqZWN0X2F0dGFjaF9wcm9wZXJ0eSgmY29ubmVjdG9y
LT5iYXNlLCBwcm9wLAo+ICsJCQkJICAgRFJNX01PREVfQ09OVEVOVF9QUk9URUNUSU9OX1VOREVT
SVJFRCk7Cj4gKwlkZXYtPm1vZGVfY29uZmlnLmNvbnRlbnRfcHJvdGVjdGlvbl9wcm9wZXJ0eSA9
IHByb3A7Cj4gKwo+ICsJaWYgKCFoZGNwX2NvbnRlbnRfdHlwZSkKPiArCQlyZXR1cm4gMDsKPiAr
Cj4gKwlwcm9wID0gZGV2LT5tb2RlX2NvbmZpZy5oZGNwX2NvbnRlbnRfdHlwZV9wcm9wZXJ0eTsK
PiArCWlmICghcHJvcCkKPiArCQlwcm9wID0gZHJtX3Byb3BlcnR5X2NyZWF0ZV9lbnVtKGRldiwg
MCwgIkhEQ1AgQ29udGVudCBUeXBlIiwKPiArCQkJCQlkcm1faGRjcF9jb250ZW50X3R5cGVfZW51
bV9saXN0LAo+ICsJCQkJCUFSUkFZX1NJWkUoCj4gKwkJCQkJZHJtX2hkY3BfY29udGVudF90eXBl
X2VudW1fbGlzdCkpOwo+ICsJaWYgKCFwcm9wKQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsKPiAr
CWRybV9vYmplY3RfYXR0YWNoX3Byb3BlcnR5KCZjb25uZWN0b3ItPmJhc2UsIHByb3AsCj4gKwkJ
CQkgICBEUk1fTU9ERV9IRENQX0NPTlRFTlRfVFlQRTApOwo+ICsJZGV2LT5tb2RlX2NvbmZpZy5o
ZGNwX2NvbnRlbnRfdHlwZV9wcm9wZXJ0eSA9IHByb3A7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30K
PiArRVhQT1JUX1NZTUJPTChkcm1fY29ubmVjdG9yX2F0dGFjaF9jb250ZW50X3Byb3RlY3Rpb25f
cHJvcGVydHkpOwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggYi9p
bmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiBpbmRleCAyZDJjMmQ1ZTc2ODEuLjllMmYxYTlk
ZTJhMCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiArKysgYi9p
bmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiBAQCAtMTM0Niw4ICsxMzQ2LDYgQEAgaW50IGRy
bV9jb25uZWN0b3JfYXR0YWNoX3NjYWxpbmdfbW9kZV9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciAqY29ubmVjdG9yLAo+ICAJCQkJCSAgICAgICB1MzIgc2NhbGluZ19tb2RlX21hc2spOwo+
ICBpbnQgZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfdnJyX2NhcGFibGVfcHJvcGVydHkoCj4gIAkJc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7Cj4gLWludCBkcm1fY29ubmVjdG9yX2F0dGFj
aF9jb250ZW50X3Byb3RlY3Rpb25fcHJvcGVydHkoCj4gLQkJc3RydWN0IGRybV9jb25uZWN0b3Ig
KmNvbm5lY3RvciwgYm9vbCBoZGNwX2NvbnRlbnRfdHlwZSk7Cj4gIGludCBkcm1fbW9kZV9jcmVh
dGVfYXNwZWN0X3JhdGlvX3Byb3BlcnR5KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpOwo+ICBpbnQg
ZHJtX21vZGVfY3JlYXRlX2NvbG9yc3BhY2VfcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3Ig
KmNvbm5lY3Rvcik7Cj4gIGludCBkcm1fbW9kZV9jcmVhdGVfY29udGVudF90eXBlX3Byb3BlcnR5
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpOwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1f
aGRjcC5oIGIvaW5jbHVkZS9kcm0vZHJtX2hkY3AuaAo+IGluZGV4IGZmMmJjZmMxZWNlZi4uMTQ1
YzgxYmExZTA5IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9oZGNwLmgKPiArKysgYi9p
bmNsdWRlL2RybS9kcm1faGRjcC5oCj4gQEAgLTI5OSw2ICsyOTksOSBAQCBzdHJ1Y3QgaGRjcDJf
c3JtX2hlYWRlciB7Cj4gIH0gX19wYWNrZWQ7Cj4gIAo+ICBzdHJ1Y3QgZHJtX2RldmljZTsKPiAr
c3RydWN0IGRybV9jb25uZWN0b3I7Cj4gIAo+ICBib29sIGRybV9oZGNwX2tzdnNfcmV2b2NhdGVk
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHU4ICprc3ZzLCB1MzIga3N2X2NvdW50KTsKPiAraW50
IGRybV9jb25uZWN0b3JfYXR0YWNoX2NvbnRlbnRfcHJvdGVjdGlvbl9wcm9wZXJ0eSgKPiArCQlz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLCBib29sIGhkY3BfY29udGVudF90eXBlKTsK
PiAgI2VuZGlmCj4gLS0gCj4gMi4xOS4xCj4gCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBF
bmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
