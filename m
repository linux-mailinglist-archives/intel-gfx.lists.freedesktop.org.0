Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4621AE518
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 20:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 410CA6E12A;
	Fri, 17 Apr 2020 18:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D47926E12A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 18:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587149447;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FEQcyKsUFlvlqNQ28O436XHN57/ALlZFwemOJrJcKiY=;
 b=jWb2xZxEbxul1pjONxvp6joviG4xAEGryGq9KI8MwWh84+E0nR30CvhmDZcBvb7IsrrEq3
 xYHTzSaDmZY8XW8tO0KmpM0rkM6qVYFLdnnpiJ323ZGw+404n2t9yxmFPkNg0UZTQDFXhk
 T9x5oou7a4Hmg5jP1E9Af8NKMZai/F8=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-190-X4UMkC-_MJaigOcqbSwKqQ-1; Fri, 17 Apr 2020 14:50:43 -0400
X-MC-Unique: X4UMkC-_MJaigOcqbSwKqQ-1
Received: by mail-qk1-f198.google.com with SMTP id x7so1819889qkb.17
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 11:50:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=ZnWcM515VRJQEPQttXJFW8hgEvDLb2ejIMZCxK5sfl4=;
 b=Sq6DZk5zjbxnZxjRdcH2maVVVb4dBghk1aYbOFDNf+1sqk5bpR0f9WXT+rAsIM6xna
 UxOo4WmF1lso+9EXkJ7Ow+ZuQ2OZ78c6H7uyONDrvONbrg8Zjeo6XBHvhcUo9GnLObvW
 1f66dZfujjmpjr6bfZkY0+84DcGu+txR1PquWPxMNEyq8CVa8SuPJImMlUDtnGuQrmpl
 GBygdAi6MZfB41GVoNlXl0hSH5P3dxtPqZ6ro22ShL8fKEG8yNAXAtC+O/9u5hvnOqyY
 rl8c8syS0qpMMWdjV+8p3NAn9FvnBXgX+Jmmu6j/I7a675YTD5So7Le7aTf7uOn7p1o7
 ENUA==
X-Gm-Message-State: AGi0PuZ4iHw9YUa20s3qMbmQBFJ5/ZORAM61nHjRLKTpIwImZFGV8Uq5
 yFtaYRUxlAbQPQDDNuxdbpYuWEz9TVIC7So8ocZvblUz2jTAClt9lQ8hgeNMSMoy4IolgYgVVNB
 eA32Rg6iubBImEnQz6IluBtvYWMa1
X-Received: by 2002:a37:c43:: with SMTP id 64mr4377698qkm.119.1587149442460;
 Fri, 17 Apr 2020 11:50:42 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ+KNP9pIRo72yxfgXbkvzhkGHlHhkgHegT+cNPXrPim+h/4evE46LZKGgBQJwlq7rdmecPaw==
X-Received: by 2002:a37:c43:: with SMTP id 64mr4377662qkm.119.1587149441889;
 Fri, 17 Apr 2020 11:50:41 -0700 (PDT)
Received: from Ruby.lyude.net (static-173-76-190-23.bstnma.ftas.verizon.net.
 [173.76.190.23])
 by smtp.gmail.com with ESMTPSA id j76sm9827900qke.114.2020.04.17.11.50.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 11:50:41 -0700 (PDT)
Message-ID: <e4b4d38ede3548f1c4c0b78fa67bcf0cf562cba7.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 14:50:39 -0400
In-Reply-To: <20200417152734.464-2-ville.syrjala@linux.intel.com>
References: <20200417152734.464-1-ville.syrjala@linux.intel.com>
 <20200417152734.464-2-ville.syrjala@linux.intel.com>
Organization: Red Hat
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Push MST link retraining to
 the hotplug work
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIwLTA0LTE3IGF0IDE4OjI3ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gV2Ugc2hvdWxkbid0IHRyeSB0byBkbyBsaW5rIHJldHJhaW5pbmcgZnJvbSB0aGUgc2hvcnQg
aHBkIGhhbmRsZXIuCj4gV2UgY2FuJ3QgdGFrZSBhbnkgbW9kZXNldCBsb2NrcyB0aGVyZSBzbyB0
aGlzIGlzIHJhY3kgYXMgaGVsbC4KPiBQdXNoIHRoZSB3aG9sZSB0aGluZyBpbnRvIHRoZSBob3Rw
bHVnIHdvcmsgbGlrZSB3ZSBkbyB3aXRoIFNTVC4KPiAKPiBXZSdsbCBqdXN0IGhhdmUgdG8gYWRq
dXN0IHRoZSBTU1QgcmV0cmFpbmluZyBjb2RlIHRvIGRlYWwgd2l0aAo+IHRoZSBNU1QgZW5jb2Rl
cnMgYW5kIG11bHRpcGxlIHBpcGVzLgo+IAo+IFRPRE86IEkgaGF2ZSBhIGZlZWxpbmcgd2Ugc2hv
dWxkIGp1c3QgcmlwIHRoaXMgYWxsIG91dCBhbmQKPiBkbyBhIGZ1bGwgbW9kZXNldCBpbnN0ZWFk
LiBTdHVmZiBsaWtlIHBvcnQgc3luYyBhbmQgdGhlIHRnbCsKPiBNU1QgbWFzdGVyIHRyYW5zY29k
ZXIgc3R1ZmYgbWF5YmUgZG9lc24ndCB3b3JrIHdlbGwgaWYgd2UKPiB0cnkgdG8gcmV0cmFpbiB3
aXRob3V0IGZvbGxvd2luZyB0aGUgcHJvcGVyIG1vZGVzZXQgc2VxdWVuY2UuCj4gU28gZmFyIGhh
dmVuJ3QgZG9uZSBhbnkgYWN0dWFsIHRlc3RzIHRvIGNvbmZpcm0gdGhhdCB0aG91Z2guCgpUbyBh
bnN3ZXIgeW91ciBmZWVsaW5nIGhlcmU6IHllcy13ZSBzaG91bGQsIEkgaGF2ZSBzb21lIGJyYW5j
aGVzIGZvciBkb2luZwp0aGlzIHNvcnQgb2YgdGhpbmcgd2l0aCBpOTE1IGJ1dCB0aGV5IGFyZSBh
bmNpZW50IGF0IHRoaXMgcG9pbnQuIE9uY2UgSSBnZXQgdG8KZmFsbGJhY2sgbGluayByZXRyYWlu
aW5nIHdlIHNob3VsZCBiZSBhYmxlIHRvIHVzZSB0aGlzIGluIGk5MTUgdG8gaGFuZGxlCmZpZ3Vy
aW5nIG91dCB3aGF0IGFsbCBuZWVkcyB0byBiZSByZXNldCBmb3IgYW4gTVNUIHRyYWluaW5nLgoK
ZndpdyAtIElmIHlvdSBoYXZlIHNvbWUgbmVlZCBmb3IgZmFsbGJhY2sgbGluayByZXRyYWluaW5n
IHNvb24gSSBjYW4gbW92ZSBpdAp1cCBvbiBteSB0b2RvIGxpc3QgZm9yIE1TVC4gSSd2ZSBnb3Qg
dGhlIGhhcmQgZGVzaWduIHBhcnRzIGFscmVhZHkgZmlndXJlZCBvdXQKZnJvbSB0aGUgbGFzdCB0
aW1lIEkgdHJpZWQgaW1wbGVtZW50aW5nIGl0LCBzbyB3cml0aW5nIG5ldyBwYXRjaGVzIHNob3Vs
ZG4ndApiZSB0b28gZGlmZmljdWx0LgoKKG5vdGUgLSB0aGlzIHBhdGNoIGlzIHN0aWxsIHdvcnRo
IG1lcmdpbmcgSSdkIGltYWdpbmUsIHNpbmNlIHRoaXMgbG9va3MgbGlrZQppdCBzaG91bGQgYXQg
bGVhc3QgaGFuZGxlIHJldHJhaW5pbmcgYW4gTVNUIHRvcG9sb2d5IGF0IHRoZSBzYW1lIGxpbmsg
cmF0ZQpqdXN0IGZpbmUpCgo+IAo+IENjOiBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8
IDE2NSArKysrKysrKysrKysrKysrKystLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEyMiBpbnNl
cnRpb25zKCspLCA0MyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKPiBpbmRleCA0ZDQ4OThkYjM4ZTkuLjU1NjM3MTMzOGFhOSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBAQCAtNTYyOCw2ICs1NjI4
LDcgQEAgc3RhdGljIGludAo+ICBpbnRlbF9kcF9jaGVja19tc3Rfc3RhdHVzKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApCj4gIHsKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
ZHBfdG9faTkxNShpbnRlbF9kcCk7Cj4gKwlib29sIG5lZWRfcmV0cmFpbiA9IGZhbHNlOwo+ICAK
PiAgCWlmICghaW50ZWxfZHAtPmlzX21zdCkKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiBAQCAtNTY0
NywxNiArNTY0OCwxMSBAQCBpbnRlbF9kcF9jaGVja19tc3Rfc3RhdHVzKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApCj4gIAkJfQo+ICAKPiAgCQkvKiBjaGVjayBsaW5rIHN0YXR1cyAtIGVzaVsx
MF0gPSAweDIwMGMgKi8KPiAtCQkvKgo+IC0JCSAqIEZJWE1FIGtpbGwgdGhpcyBhbmQgdXNlIHRo
ZSBTU1QgcmV0cmFpbmluZyBhcHByb2FjaAo+IC0JCSAqIGZvciBNU1QgYXMgd2VsbC4KPiAtCQkg
Ki8KPiAtCQlpZiAoaW50ZWxfZHAtPmFjdGl2ZV9tc3RfbGlua3MgPiAwICYmCj4gKwkJaWYgKGlu
dGVsX2RwLT5hY3RpdmVfbXN0X2xpbmtzID4gMCAmJiAhbmVlZF9yZXRyYWluICYmCj4gIAkJICAg
ICFkcm1fZHBfY2hhbm5lbF9lcV9vaygmZXNpWzEwXSwgaW50ZWxfZHAtPmxhbmVfY291bnQpKSB7
Cj4gIAkJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sCj4gIAkJCQkgICAgImNoYW5uZWwgRVEgbm90
IG9rLCByZXRyYWluaW5nXG4iKTsKPiAtCQkJaW50ZWxfZHBfc3RhcnRfbGlua190cmFpbihpbnRl
bF9kcCk7Cj4gLQkJCWludGVsX2RwX3N0b3BfbGlua190cmFpbihpbnRlbF9kcCk7Cj4gKwkJCW5l
ZWRfcmV0cmFpbiA9IHRydWU7Cj4gIAkJfQo+ICAKPiAgCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJt
LCAiZ290IGVzaSAlM3BoXG4iLCBlc2kpOwo+IEBAIC01Njc2LDcgKzU2NzIsNyBAQCBpbnRlbF9k
cF9jaGVja19tc3Rfc3RhdHVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gIAkJfQo+ICAJ
fQo+ICAKPiAtCXJldHVybiAwOwo+ICsJcmV0dXJuIG5lZWRfcmV0cmFpbjsKPiAgfQo+ICAKPiAg
c3RhdGljIGJvb2wKPiBAQCAtNTcxMywyMCArNTcwOSwxMDIgQEAgaW50ZWxfZHBfbmVlZHNfbGlu
a19yZXRyYWluKHN0cnVjdCBpbnRlbF9kcAo+ICppbnRlbF9kcCkKPiAgCXJldHVybiAhZHJtX2Rw
X2NoYW5uZWxfZXFfb2sobGlua19zdGF0dXMsIGludGVsX2RwLT5sYW5lX2NvdW50KTsKPiAgfQo+
ICAKPiArc3RhdGljIGJvb2wgaW50ZWxfZHBfaGFzX2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLAo+ICsJCQkJICAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUKPiAq
Y29ubl9zdGF0ZSkKPiArewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90
b19pOTE1KGludGVsX2RwKTsKPiArCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOwo+ICsJ
ZW51bSBwaXBlIHBpcGU7Cj4gKwo+ICsJaWYgKCFjb25uX3N0YXRlLT5iZXN0X2VuY29kZXIpCj4g
KwkJcmV0dXJuIGZhbHNlOwo+ICsKPiArCS8qIFNTVCAqLwo+ICsJZW5jb2RlciA9ICZkcF90b19k
aWdfcG9ydChpbnRlbF9kcCktPmJhc2U7Cj4gKwlpZiAoY29ubl9zdGF0ZS0+YmVzdF9lbmNvZGVy
ID09ICZlbmNvZGVyLT5iYXNlKQo+ICsJCXJldHVybiB0cnVlOwo+ICsKPiArCS8qIE1TVCAqLwo+
ICsJZm9yX2VhY2hfcGlwZShpOTE1LCBwaXBlKSB7Cj4gKwkJZW5jb2RlciA9ICZpbnRlbF9kcC0+
bXN0X2VuY29kZXJzW3BpcGVdLT5iYXNlOwo+ICsJCWlmIChjb25uX3N0YXRlLT5iZXN0X2VuY29k
ZXIgPT0gJmVuY29kZXItPmJhc2UpCj4gKwkJCXJldHVybiB0cnVlOwo+ICsJfQo+ICsKPiArCXJl
dHVybiBmYWxzZTsKPiArfQo+ICsKPiArc3RhdGljIGludCBpbnRlbF9kcF9wcmVwX2xpbmtfcmV0
cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ICsJCQkJICAgICAgc3RydWN0IGRybV9t
b2Rlc2V0X2FjcXVpcmVfY3R4ICpjdHgsCj4gKwkJCQkgICAgICB1MzIgKmNydGNfbWFzaykKPiAr
ewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2Rw
KTsKPiArCXN0cnVjdCBkcm1fY29ubmVjdG9yX2xpc3RfaXRlciBjb25uX2l0ZXI7Cj4gKwlzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3I7Cj4gKwlpbnQgcmV0ID0gMDsKPiArCj4gKwkq
Y3J0Y19tYXNrID0gMDsKPiArCj4gKwlpZiAoIWludGVsX2RwX25lZWRzX2xpbmtfcmV0cmFpbihp
bnRlbF9kcCkpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJf
YmVnaW4oJmk5MTUtPmRybSwgJmNvbm5faXRlcik7Cj4gKwlmb3JfZWFjaF9pbnRlbF9jb25uZWN0
b3JfaXRlcihjb25uZWN0b3IsICZjb25uX2l0ZXIpIHsKPiArCQlzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
cl9zdGF0ZSAqY29ubl9zdGF0ZSA9Cj4gKwkJCWNvbm5lY3Rvci0+YmFzZS5zdGF0ZTsKPiArCQlz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsKPiArCQlzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YzsKPiArCj4gKwkJaWYgKCFpbnRlbF9kcF9oYXNfY29ubmVjdG9yKGludGVsX2RwLCBj
b25uX3N0YXRlKSkKPiArCQkJY29udGludWU7Cj4gKwo+ICsJCWNydGMgPSB0b19pbnRlbF9jcnRj
KGNvbm5fc3RhdGUtPmNydGMpOwo+ICsJCWlmICghY3J0YykKPiArCQkJY29udGludWU7Cj4gKwo+
ICsJCXJldCA9IGRybV9tb2Rlc2V0X2xvY2soJmNydGMtPmJhc2UubXV0ZXgsIGN0eCk7Cj4gKwkJ
aWYgKHJldCkKPiArCQkJYnJlYWs7Cj4gKwo+ICsJCWNydGNfc3RhdGUgPSB0b19pbnRlbF9jcnRj
X3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOwo+ICsKPiArCQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJt
LAo+ICFpbnRlbF9jcnRjX2hhc19kcF9lbmNvZGVyKGNydGNfc3RhdGUpKTsKPiArCj4gKwkJaWYg
KCFjcnRjX3N0YXRlLT5ody5hY3RpdmUpCj4gKwkJCWNvbnRpbnVlOwo+ICsKPiArCQlpZiAoY29u
bl9zdGF0ZS0+Y29tbWl0ICYmCj4gKwkJICAgICF0cnlfd2FpdF9mb3JfY29tcGxldGlvbigmY29u
bl9zdGF0ZS0+Y29tbWl0LT5od19kb25lKSkKPiArCQkJY29udGludWU7Cj4gKwo+ICsJCSpjcnRj
X21hc2sgfD0gZHJtX2NydGNfbWFzaygmY3J0Yy0+YmFzZSk7Cj4gKwl9Cj4gKwlkcm1fY29ubmVj
dG9yX2xpc3RfaXRlcl9lbmQoJmNvbm5faXRlcik7Cj4gKwo+ICsJaWYgKCFpbnRlbF9kcF9uZWVk
c19saW5rX3JldHJhaW4oaW50ZWxfZHApKQo+ICsJCSpjcnRjX21hc2sgPSAwOwoKQWxzbyBmd2l3
IF4gdGhpcyBpcyB0aGUga2luZCBvZiBsb2dpYyBJIHdhcyB0aGlua2luZyBmb3IgdGhlIE1TVCBo
ZWxwZXJzIChlLmcuCmhhdmluZyBoZWxwZXJzICgrIHNldHRpbmcgbGlua19zdGF0dXMgZm9yIGVh
Y2ggYWZmZWN0ZWQgY29ubmVjdG9yLCBldGMuIGV0LikuCmFnYWluIHRob3VnaC1pdCdzIGZpbmUg
aWYgdGhpcyBzdGF5cyBpbiBpOTE1IGZvciBub3csIGJ1dCB3ZSBzaG91bGQgbW92ZSBpdCBpbgp0
aGUgZnV0dXJlLgoKPiArCj4gKwlyZXR1cm4gcmV0Owo+ICt9Cj4gKwo+ICtzdGF0aWMgYm9vbCBp
bnRlbF9kcF9pc19jb25uZWN0ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKPiArewo+ICsJ
c3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gaW50ZWxfZHAtPmF0dGFjaGVkX2Nv
bm5lY3RvcjsKPiArCj4gKwlyZXR1cm4gY29ubmVjdG9yLT5iYXNlLnN0YXR1cyA9PSBjb25uZWN0
b3Jfc3RhdHVzX2Nvbm5lY3RlZCB8fAo+ICsJCWludGVsX2RwLT5pc19tc3Q7Cj4gK30KPiArCj4g
IGludCBpbnRlbF9kcF9yZXRyYWluX2xpbmsoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
Cj4gIAkJCSAgc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4ICpjdHgpCj4gIHsKPiAgCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5k
ZXYpOwo+ICAJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNv
ZGVyKTsKPiAtCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9IGludGVsX2RwLT5h
dHRhY2hlZF9jb25uZWN0b3I7Cj4gLQlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9z
dGF0ZTsKPiAtCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOwo+ICAJc3RydWN0
IGludGVsX2NydGMgKmNydGM7Cj4gKwl1MzIgY3J0Y19tYXNrOwo+ICAJaW50IHJldDsKPiAgCj4g
LQkvKiBGSVhNRSBoYW5kbGUgdGhlIE1TVCBjb25uZWN0b3JzIGFzIHdlbGwgKi8KPiAtCj4gLQlp
ZiAoIWNvbm5lY3RvciB8fCBjb25uZWN0b3ItPmJhc2Uuc3RhdHVzICE9Cj4gY29ubmVjdG9yX3N0
YXR1c19jb25uZWN0ZWQpCj4gKwlpZiAoIWludGVsX2RwX2lzX2Nvbm5lY3RlZChpbnRlbF9kcCkp
Cj4gIAkJcmV0dXJuIDA7Cj4gIAo+ICAJcmV0ID0gZHJtX21vZGVzZXRfbG9jaygmZGV2X3ByaXYt
PmRybS5tb2RlX2NvbmZpZy5jb25uZWN0aW9uX211dGV4LAo+IEBAIC01NzM0LDQ2ICs1ODEyLDQy
IEBAIGludCBpbnRlbF9kcF9yZXRyYWluX2xpbmsoc3RydWN0IGludGVsX2VuY29kZXIKPiAqZW5j
b2RlciwKPiAgCWlmIChyZXQpCj4gIAkJcmV0dXJuIHJldDsKPiAgCj4gLQljb25uX3N0YXRlID0g
Y29ubmVjdG9yLT5iYXNlLnN0YXRlOwo+IC0KPiAtCWNydGMgPSB0b19pbnRlbF9jcnRjKGNvbm5f
c3RhdGUtPmNydGMpOwo+IC0JaWYgKCFjcnRjKQo+IC0JCXJldHVybiAwOwo+IC0KPiAtCXJldCA9
IGRybV9tb2Rlc2V0X2xvY2soJmNydGMtPmJhc2UubXV0ZXgsIGN0eCk7Cj4gKwlyZXQgPSBpbnRl
bF9kcF9wcmVwX2xpbmtfcmV0cmFpbihpbnRlbF9kcCwgY3R4LCAmY3J0Y19tYXNrKTsKPiAgCWlm
IChyZXQpCj4gIAkJcmV0dXJuIHJldDsKPiAgCj4gLQljcnRjX3N0YXRlID0gdG9faW50ZWxfY3J0
Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKPiAtCj4gLQlkcm1fV0FSTl9PTigmZGV2X3ByaXYt
PmRybSwgIWludGVsX2NydGNfaGFzX2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkpOwo+IC0KPiAtCWlm
ICghY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQo+ICsJaWYgKGNydGNfbWFzayA9PSAwKQo+ICAJCXJl
dHVybiAwOwo+ICAKPiAtCWlmIChjb25uX3N0YXRlLT5jb21taXQgJiYKPiAtCSAgICAhdHJ5X3dh
aXRfZm9yX2NvbXBsZXRpb24oJmNvbm5fc3RhdGUtPmNvbW1pdC0+aHdfZG9uZSkpCj4gLQkJcmV0
dXJuIDA7Cj4gKwlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIltFTkNPREVSOiVkOiVzXSBy
ZXRyYWluaW5nIGxpbmtcbiIsCj4gKwkJICAgIGVuY29kZXItPmJhc2UuYmFzZS5pZCwgZW5jb2Rl
ci0+YmFzZS5uYW1lKTsKPiAgCj4gLQlpZiAoIWludGVsX2RwX25lZWRzX2xpbmtfcmV0cmFpbihp
bnRlbF9kcCkpCj4gLQkJcmV0dXJuIDA7Cj4gKwlmb3JfZWFjaF9pbnRlbF9jcnRjX21hc2soJmRl
dl9wcml2LT5kcm0sIGNydGMsIGNydGNfbWFzaykgewo+ICsJCWNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlID0KPiArCQkJdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5i
YXNlLnN0YXRlKTsKPiAgCj4gLQkvKiBTdXBwcmVzcyB1bmRlcnJ1bnMgY2F1c2VkIGJ5IHJlLXRy
YWluaW5nICovCj4gLQlpbnRlbF9zZXRfY3B1X2ZpZm9fdW5kZXJydW5fcmVwb3J0aW5nKGRldl9w
cml2LCBjcnRjLT5waXBlLCBmYWxzZSk7Cj4gLQlpZiAoY3J0Y19zdGF0ZS0+aGFzX3BjaF9lbmNv
ZGVyKQo+IC0JCWludGVsX3NldF9wY2hfZmlmb191bmRlcnJ1bl9yZXBvcnRpbmcoZGV2X3ByaXYs
Cj4gLQkJCQkJCSAgICAgIGludGVsX2NydGNfcGNoX3RyYW5zY29kZQo+IHIoY3J0YyksIGZhbHNl
KTsKPiArCQkvKiBTdXBwcmVzcyB1bmRlcnJ1bnMgY2F1c2VkIGJ5IHJlLXRyYWluaW5nICovCj4g
KwkJaW50ZWxfc2V0X2NwdV9maWZvX3VuZGVycnVuX3JlcG9ydGluZyhkZXZfcHJpdiwgY3J0Yy0+
cGlwZSwKPiBmYWxzZSk7Cj4gKwkJaWYgKGNydGNfc3RhdGUtPmhhc19wY2hfZW5jb2RlcikKPiAr
CQkJaW50ZWxfc2V0X3BjaF9maWZvX3VuZGVycnVuX3JlcG9ydGluZyhkZXZfcHJpdiwKPiArCQkJ
CQkJCSAgICAgIGludGVsX2NydGNfcGNoX3QKPiByYW5zY29kZXIoY3J0YyksIGZhbHNlKTsKPiAr
CX0KPiAgCj4gIAlpbnRlbF9kcF9zdGFydF9saW5rX3RyYWluKGludGVsX2RwKTsKPiAgCWludGVs
X2RwX3N0b3BfbGlua190cmFpbihpbnRlbF9kcCk7Cj4gIAo+IC0JLyogS2VlcCB1bmRlcnJ1biBy
ZXBvcnRpbmcgZGlzYWJsZWQgdW50aWwgdGhpbmdzIGFyZSBzdGFibGUgKi8KPiAtCWludGVsX3dh
aXRfZm9yX3ZibGFuayhkZXZfcHJpdiwgY3J0Yy0+cGlwZSk7Cj4gKwlmb3JfZWFjaF9pbnRlbF9j
cnRjX21hc2soJmRldl9wcml2LT5kcm0sIGNydGMsIGNydGNfbWFzaykgewo+ICsJCWNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KPiArCQkJdG9faW50ZWxfY3J0Y19z
dGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKPiAgCj4gLQlpbnRlbF9zZXRfY3B1X2ZpZm9fdW5kZXJy
dW5fcmVwb3J0aW5nKGRldl9wcml2LCBjcnRjLT5waXBlLCB0cnVlKTsKPiAtCWlmIChjcnRjX3N0
YXRlLT5oYXNfcGNoX2VuY29kZXIpCj4gLQkJaW50ZWxfc2V0X3BjaF9maWZvX3VuZGVycnVuX3Jl
cG9ydGluZyhkZXZfcHJpdiwKPiAtCQkJCQkJICAgICAgaW50ZWxfY3J0Y19wY2hfdHJhbnNjb2Rl
Cj4gcihjcnRjKSwgdHJ1ZSk7Cj4gKwkJLyogS2VlcCB1bmRlcnJ1biByZXBvcnRpbmcgZGlzYWJs
ZWQgdW50aWwgdGhpbmdzIGFyZSBzdGFibGUgKi8KPiArCQlpbnRlbF93YWl0X2Zvcl92Ymxhbmso
ZGV2X3ByaXYsIGNydGMtPnBpcGUpOwo+ICsKPiArCQlpbnRlbF9zZXRfY3B1X2ZpZm9fdW5kZXJy
dW5fcmVwb3J0aW5nKGRldl9wcml2LCBjcnRjLT5waXBlLAo+IHRydWUpOwo+ICsJCWlmIChjcnRj
X3N0YXRlLT5oYXNfcGNoX2VuY29kZXIpCj4gKwkJCWludGVsX3NldF9wY2hfZmlmb191bmRlcnJ1
bl9yZXBvcnRpbmcoZGV2X3ByaXYsCj4gKwkJCQkJCQkgICAgICBpbnRlbF9jcnRjX3BjaF90Cj4g
cmFuc2NvZGVyKGNydGMpLCB0cnVlKTsKPiArCX0KPiAgCj4gIAlyZXR1cm4gMDsKPiAgfQo+IEBA
IC03NDE1LDcgKzc0ODksOCBAQCBpbnRlbF9kcF9ocGRfcHVsc2Uoc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydAo+ICppbnRlbF9kaWdfcG9ydCwgYm9vbCBsb25nX2hwZCkKPiAgCX0KPiAgCj4gIAlp
ZiAoaW50ZWxfZHAtPmlzX21zdCkgewo+IC0JCWlmIChpbnRlbF9kcF9jaGVja19tc3Rfc3RhdHVz
KGludGVsX2RwKSA9PSAtRUlOVkFMKSB7Cj4gKwkJc3dpdGNoIChpbnRlbF9kcF9jaGVja19tc3Rf
c3RhdHVzKGludGVsX2RwKSkgewo+ICsJCWNhc2UgLUVJTlZBTDoKPiAgCQkJLyoKPiAgCQkJICog
SWYgd2Ugd2VyZSBpbiBNU1QgbW9kZSwgYW5kIGRldmljZSBpcyBub3QKPiAgCQkJICogdGhlcmUs
IGdldCBvdXQgb2YgTVNUIG1vZGUKPiBAQCAtNzQyOSw2ICs3NTA0LDEwIEBAIGludGVsX2RwX2hw
ZF9wdWxzZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0Cj4gKmludGVsX2RpZ19wb3J0LCBib29s
IGxvbmdfaHBkKQo+ICAJCQkJCQkJaW50ZWxfZHAtPmlzX21zdCk7Cj4gIAo+ICAJCQlyZXR1cm4g
SVJRX05PTkU7Cj4gKwkJY2FzZSAxOgo+ICsJCQlyZXR1cm4gSVJRX05PTkU7Cj4gKwkJZGVmYXVs
dDoKPiArCQkJYnJlYWs7Cj4gIAkJfQo+ICAJfQo+ICAKLS0gCkNoZWVycywKCUx5dWRlIFBhdWwg
KHNoZS9oZXIpCglBc3NvY2lhdGUgU29mdHdhcmUgRW5naW5lZXIgYXQgUmVkIEhhdAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
