Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC415C3DC
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 21:52:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EAEA89CA4;
	Mon,  1 Jul 2019 19:52:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C7FA89CA4
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 19:52:46 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id r6so12088795qkc.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Jul 2019 12:52:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=5qwy56A7aO0rAwOIWYirYK/KxMditVfbcrPEs83nnWU=;
 b=NwZe7TuBnl/g3ukuIwUblu7EHjNfs5OnGWQvJu300/b3xzoE0Gu9UFZx7zpShM3GzE
 7MAmuUGmJWdJCvvRLAm8sc7a79bTbzcJ53ICfWBQvTYVjea59g+wFh0HI6DqADjnxo1j
 RhqO6IO3LRwR8ChECFRr/6Z5c5ZhDn2nwYTPUiv/vEEq8+CnSl7bhO60sAHo4/C4EMNh
 z3MOvajcl/nx5Z/mtvOhJpVAHoCENvuuPePYgiG0LkxixKHqORxbA8Fvzae9IEzqmFyW
 dYL06jC0A/3FSgUTWycYfhyEHgwU634fXDjN7zSHO5LOmVmnW8jkIhtr3jvym4lkofnB
 RFkA==
X-Gm-Message-State: APjAAAX88ASOiEX/TPjprSgMWEPJN1r48vkzJ5QsxUsTa3bdoFSmev+H
 1XyygPiLf4GGlTb7cvncLAGq8A==
X-Google-Smtp-Source: APXvYqxF7/+E4YtsyFx7rqbbjDb9k69hGyHDY/ZlbekOpmvNcCvM5GrMSAwhAQ5hRemr9gnHD8xMMw==
X-Received: by 2002:a37:bc84:: with SMTP id
 m126mr15104755qkf.303.1562010765491; 
 Mon, 01 Jul 2019 12:52:45 -0700 (PDT)
Received: from dhcp-10-20-1-11.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id a19sm5801039qka.103.2019.07.01.12.52.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 12:52:44 -0700 (PDT)
Message-ID: <5f6173cd747ccb72b21162cba2ce73f8f986105b.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>, 
 dri-devel@lists.freedesktop.org
Date: Mon, 01 Jul 2019 15:52:43 -0400
In-Reply-To: <20190628082454.16345-2-stanislav.lisovskiy@intel.com>
References: <20190628082454.16345-1-stanislav.lisovskiy@intel.com>
 <20190628082454.16345-2-stanislav.lisovskiy@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm: Add helper to compare edids.
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
Cc: simon.ser@intel.com, daniel.vetter@ffwll.ch,
 intel-gfx@lists.freedesktop.org, martin.peres@intel.com,
 paul.kocialkowski@bootlin.com, ppaalanen@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U29ycnkgZm9yIHRoZSBsYXRlIHJlc3BvbnNlISBJIGxpa2UgdGhlIGlkZWEgaGVyZSBhbmQgSSd2
ZSBicm91Z2h0IHVwIGVkaWQKY29tcGFyaXNvbiBhIGNvdXBsZSB0aW1lcy4gSG9wZWZ1bGx5IHRo
aXMgaXNuJ3Qgb3ZlcmtpbGwsIGJ1dCBJIGhhZCBhIGxpdHRsZQptb3JlIGluIG1pbmQgdGhlbiBq
dXN0IGEgaGVscGVyIGxpa2UgdGhpcyAoYW5kIEkndmUgaGFkIHRoaXMgb24gbXkgbWluZCBmb3Ig
YQp3aGlsZSEKCldoZW4gaXQgY29tZXMgdG8gc3VzcGVuZC9yZXN1bWUgcmVwcm9iaW5nLCBJIHRo
aW5rIHRoZXJlJ3MgbW9yZSB3b3JrIHRoZW4ganVzdApjb21wYXJpbmcgZWRpZHMgdGhhdCBhcmUg
cmVkdW5kYW50LiBJIHRoaW5rIG1vc3QgZHJpdmVycyBoYXZlIGNvbm5lY3RvcnMgdGhhdApmYWxs
IGludG8gb25lIG9mIHRoZSBmb2xsb3dpbmcgY2xhc3NlczoKCiAqIEFsd2F5cyAiaW4tc3luYyIg
d2l0aCBldmVudHMsIGUuZy4gZXZlbnQgaGFuZGxpbmcgZG9lcyBub3Qgc3RvcCBqdXN0CiAgIGJl
Y2F1c2UgdGhlIGRldmljZSBpcyBzdXNwZW5kZWQuIFRoaXMgaXMgYWN0dWFsbHkgdHJ1ZSBpbiBz
b21lIGNhc2VzIGZvcgogICBub3V2ZWF1IGFuZCBhbWRncHUsIHdoZXJlIGJvdGggZHJpdmVycyBj
YW4gcmVseSBvbiBBQ1BJIGZpcm13YXJlIHRvIHNlbmQKICAgZXZlbnRzIHdoaWxlIHRoZSBkZXZp
Y2UgaXMgc3VzcGVuZGVkLgogKiBPbmx5IGluLXN5bmMgd2l0aCBldmVudHMgd2hpbGUgdGhlIGRl
dmljZSBpcyBhd2FrZS4gT2YgY291cnNlLCB0aGF0J3MgdGhlCiAgIHdob2xlIHJlYXNvbiBmb3Ig
dGhlc2UgcGF0Y2hlcyEKCkZyb20gd2hhdCBJIHVuZGVyc3RhbmQgYmFzZWQgb24gcHJldmlvdXMg
ZGlzY3Vzc2lvbnMgd2l0aCBzb21lIG90aGVyIGludGVsCmVuZ2luZWVycyBiYWNrIHdoZW4gdGhl
eSB3ZXJlIHRyeWluZyB0byBtYWtlIHRoZSBpOTE1IHN1c3BlbmQvcmVzdW1lIHByb2Nlc3MKZmFz
dGVyLCBob3RwbHVnIHByb2JpbmcgY2FuIGJlIGEgcHJldHR5IHNpZ25pZmljYW50IHRpbWVzaW5r
IGluIHNvbWUgY2FzZXMuCkFkZGl0aW9uYWxseSwgaXQncyBub3QgYWx3YXlzIG5lc3NlY2FyaWx5
IGV2ZXJ5d2hlcmUgaWYgc29tZSBjb25uZWN0b3JzIGFyZQphYmxlIHRvIHN0YXkgaW4gc3luYywg
YW5kIHRoYXQgbWlnaHQgYmUgYSBiZW5lZml0LgoKQWRkaXRpb25hbGx5LCBJIHRoaW5rIHRoZXJl
J3MgYSBudW1iZXIgb2Ygb3RoZXIgcGFydHMgb2YgdGhlIHByb2Nlc3MgdGhhdCBJCndvdWxkIGlt
YWdpbmUgZXZlcnkgZHJpdmVyIHdvdWxkIGVuZCB1cCBuZWVkaW5nIHRvIGltcGxlbWVudC4gQSBj
b3VwbGUgcmF0aGVyCnNpbXBsZSBleGFtcGxlczogc2tpcHBpbmcgZWRpZCBjb21wYXJpc29ucyBm
b3IgZGlzY29ubmVjdGVkIG9yIG5ld2x5LWNvbm5lY3RlZApjb25uZWN0b3JzLCBhc3N1bWluZyB0
aGF0IGZhaWx1cmUgdG8gcmVhZCBhbiBFRElEIG9uIGEgY29ubmVjdGVkIGNvbm5lY3Rvcgp0aGF0
IGNvdWxkIGhhdmUgaXQncyBFRElEIHJlYWQgYmVmb3JlIHN1c3BlbmQgbWVhbnMgd2UgaGF2ZSB0
byBjb25zaWRlciBzYWlkCmNvbm5lY3RvciB0byBiZSBjaGFuZ2VkLCBldGMuIFNvIHdoeSBub3Qg
YWRkIGhlbHBlcnMgdG8gaGFuZGxlIGFsbCBvZiB0aGlzCmJvaWxlcnBsYXRlIGFzIHdlbGw/CgpB
biBpZGVhIEkgaGFkIGF0IG9uZSBwb2ludCB3b3VsZCBiZSB0byBhZGQgdGhlIGFiaWxpdHkgdG8g
bWFyayB3aGVuIGEgZHJpdmVyCmJlbGlldmVzIGEgRFJNIGNvbm5lY3RvciBoYXMgZ29uZSAib3V0
IG9mIHN5bmMiIGxpa2UgSSBtZW50aW9uZWQgYWJvdmUuIEEKc2ltcGxlIGV4YW1wbGU6IG9uIGxh
cHRvcHMgSSd2ZSBvYnNlcnZlZCB3aXRoIG5vdXZlYXUgdGhhdCBzdXBwb3J0ZWQgQUNQSQpob3Rw
bHVnIGV2ZW50cywgQUNQSSBob3RwbHVnIGV2ZW50cyBvbmx5IGV2ZXIgc2VlbWVkIHRvIGNvbWUg
aWYgYSBjb25uZWN0b3IKd2FzIHBsdWdnZWQgaW4gLSBub3QgaWYgYSBjb25uZWN0b3Igd2FzIHJl
bW92ZWQuIElmIHdlIHVzZSB0aGlzIGxvZ2ljIGR1cmluZwp0aGUgcnVudGltZSByZXN1bWUsIHdl
IGNvdWxkIGFzY2VydGFpbiB0aGF0IHVubGVzcyBhbiBBQ1BJIGhvdHBsdWcgZXZlbnQgd2FzCnJl
Y2VpdmVkIGJlZm9yZSB3ZSByZXN1bWVkIHRoYXQgd2UgY2FuIGFjdHVhbGx5IHNraXAgcmVwcm9i
aW5nIGFueSBjb25uZWN0b3JzCnRoYXQgd2VyZSBkaXNjb25uZWN0ZWQgYXQgcnVudGltZSBzdXNw
ZW5kIGFuZCBvbmx5IHByb2JlIHRoZSBvbmVzIHRoYXQgd2VyZQpjb25uZWN0ZWQuCgpTbywgbWF5
YmUgd2UgY291bGQgaGF2ZSBoZWxwZXJzIGxpa2UgdGhpczoKCi8qIEluZm9ybSBEUk0gdGhhdCB3
ZSd2ZSBkaXNhYmxlZCBvdXIgcHJpbWFyeSBtZWFucyBvZiByZWNlaXZpbmcgSFBECiAqIGV2ZW50
cy4KICovCmRybV9jb25uZWN0b3Jfc3VzcGVuZF9ocGQoKQoKLyogQSBoZWxwZXIgdGhhdCBnb2Vz
IHRocm91Z2ggYW5kIHBlcmZvcm1zIGJhc2ljIGNvbm5lY3RvciByZXByb2JpbmcgYW5kCiAqIEVE
SUQgY29tcGFyaXNvbnMgb24gY29ubmVjdG9ycyBtYXJrZWQgd2l0aAogKiBkcm1fY29ubmVjdG9y
X3JlcHJvYmVfb25faHBkX3Jlc3VtZSgpLiBGaXJlcyBvZmYgYW4gSFBEIGV2ZW50IGlmIGFueQog
KiBjb25uZWN0b3IgY2hhbmdlcyBhcmUgZm91bmQvcmV0dXJucyBhbiBpbnQvZXRjLiBldGMuIHdo
YXRldmVyLgogKgogKiBUbyBiZSBjYWxsZWQgYnkgdGhlIGRyaXZlciAqYWZ0ZXIqIGl0IGhhcyBy
ZS1lbmFibGVkIEhQRCBkZXRlY3Rpb24KICogZm9yIGFsbCBvZiBpdCdzIGNvbm5lY3RvcnMuCiAq
Lwpkcm1fY29ubmVjdG9yX3Jlc3VtZV9ocGQoKQoKLyogSW5kaWNhdGUgdG8gRFJNIHRoYXQgdGhl
IGdpdmVuIGNvbm5lY3RvciBubyBsb25nZXIgaGFzIEhQRCwgYW5kIHdpbGwgbmVlZAogKiB0byBi
ZSByZXByb2JlZCBvbiByZXN1bWUKICovCmRybV9jb25uZWN0b3JfcmVwcm9iZV9vbl9ocGRfcmVz
dW1lKCkKCi8qIENvbnZpZW5lbmNlIGZ1bmN0aW9uIHRvIGluZGljYXRlIHRvIERSTSB0aGF0IGFs
bCBjb25uZWN0b3JzIGhhdmUgbG9zdAogKiB0aGVpciBwcmltYXJ5IG1lYW5zIHRvIHJlY2VpdmUg
SFBEIGV2ZW50cywgYW5kIHdpbGwgbmVlZCB0byBiZQogKiByZXByb2JlZCBvbiByZXN1bWUuIFVz
ZWZ1bCBmb3Igc2NlbmFyaW9zIGxpa2UgUzMgc3VzcGVuZC4KICovCmRybV9jb25uZWN0b3JfcmVw
cm9iZV9hbGxfb25faHBkX3Jlc3VtZSgpCgpJIHRoaW5rIHRoaXMgd291bGQgYWxzbyBmaXQgaW4g
bmljZWx5IHdpdGggdGhlIG5ldyBob3RwbHVnIHVldmVudCBpZGVhcwp0aGF0IGhhdmUgYmVlbiBm
bG9hdGluZyBhcm91bmQgcmVjZW50bHksIHNpbmNlIHdlIGNvdWxkIHRoZW4gdXNlIHRoZXNlCmhl
bHBlcnMgdG8gY29tcHJlc3MgYWxsIG9mIHRoZSBjb25uZWN0b3IgY2hhbmdlcyB0aGF0IGhhcHBl
bmVkIG92ZXIgYQpzL3IgY3ljbGUgaW50byBhIHNpbmdsZSBldmVudCAob3IsIG5vIGV2ZW50ISkK
Ck9uIEZyaSwgMjAxOS0wNi0yOCBhdCAxMToyNCArMDMwMCwgU3RhbmlzbGF2IExpc292c2tpeSB3
cm90ZToKPiBNYW55IGRyaXZlcnMgd291bGQgYmVuZWZpdCBmcm9tIHVzaW5nCj4gZHJtIGhlbHBl
ciB0byBjb21wYXJlIGVkaWQsIHJhdGhlcgo+IHRoYW4gYm90aGVyaW5nIHdpdGggb3duIGltcGxl
bWVudGF0aW9uLgo+IAo+IHYyOiBBZGRlZCBkb2N1bWVudGF0aW9uIGZvciB0aGlzIGZ1bmN0aW9u
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNv
dnNraXlAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyB8IDMz
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2RybS9kcm1fZWRp
ZC5oICAgICB8ICA5ICsrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDQyIGluc2VydGlvbnMo
KykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX2VkaWQuYwo+IGluZGV4IDlkOGYyYjk1MjAwNC4uZWFhZDUxNTVmYmRkIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9lZGlkLmMKPiBAQCAtMTM2MSw2ICsxMzYxLDM5IEBAIHN0YXRpYyBib29sIGRy
bV9lZGlkX2lzX3plcm8oY29uc3QgdTggKmluX2VkaWQsIGludAo+IGxlbmd0aCkKPiAgCXJldHVy
biB0cnVlOwo+ICB9Cj4gIAo+ICsvKioKPiArICogZHJtX2VkaWRfYXJlX2VxdWFsIC0gY29tcGFy
ZSB0d28gZWRpZCBibG9icy4KPiArICogQGVkaWQxOiBwb2ludGVyIHRvIGZpcnN0IGJsb2IKPiAr
ICogQGVkaWQyOiBwb2ludGVyIHRvIHNlY29uZCBibG9iCj4gKyAqIFRoaXMgaGVscGVyIGNhbiBi
ZSB1c2VkIGR1cmluZyBwcm9iaW5nIHRvIGRldGVybWluZSBpZgo+ICsgKiBlZGlkIGhhZCBjaGFu
Z2VkLgo+ICsgKi8KPiArYm9vbCBkcm1fZWRpZF9hcmVfZXF1YWwoc3RydWN0IGVkaWQgKmVkaWQx
LCBzdHJ1Y3QgZWRpZCAqZWRpZDIpCj4gK3sKPiArCWludCBlZGlkMV9sZW4sIGVkaWQyX2xlbjsK
PiArCWJvb2wgZWRpZDFfcHJlc2VudCA9IGVkaWQxICE9IE5VTEw7Cj4gKwlib29sIGVkaWQyX3By
ZXNlbnQgPSBlZGlkMiAhPSBOVUxMOwo+ICsKPiArCWlmIChlZGlkMV9wcmVzZW50ICE9IGVkaWQy
X3ByZXNlbnQpCj4gKwkJcmV0dXJuIGZhbHNlOwo+ICsKPiArCWlmIChlZGlkMSkgewo+ICsKPiAr
CQllZGlkMV9sZW4gPSBFRElEX0xFTkdUSCAqICgxICsgZWRpZDEtPmV4dGVuc2lvbnMpOwo+ICsJ
CWVkaWQyX2xlbiA9IEVESURfTEVOR1RIICogKDEgKyBlZGlkMi0+ZXh0ZW5zaW9ucyk7Cj4gKwo+
ICsJCWlmIChlZGlkMV9sZW4gIT0gZWRpZDJfbGVuKQo+ICsJCQlyZXR1cm4gZmFsc2U7Cj4gKwo+
ICsJCWlmIChtZW1jbXAoZWRpZDEsIGVkaWQyLCBlZGlkMV9sZW4pKQo+ICsJCQlyZXR1cm4gZmFs
c2U7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIHRydWU7Cj4gK30KPiArRVhQT1JUX1NZTUJPTChkcm1f
ZWRpZF9hcmVfZXF1YWwpOwo+ICsKPiArCj4gIC8qKgo+ICAgKiBkcm1fZWRpZF9ibG9ja192YWxp
ZCAtIFNhbml0eSBjaGVjayB0aGUgRURJRCBibG9jayAoYmFzZSBvciBleHRlbnNpb24pCj4gICAq
IEByYXdfZWRpZDogcG9pbnRlciB0byByYXcgRURJRCBibG9jawo+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL2RybS9kcm1fZWRpZC5oIGIvaW5jbHVkZS9kcm0vZHJtX2VkaWQuaAo+IGluZGV4IGI5NzE5
NDE4YzNkMi4uNzE2OTY0ZjYzMzEyIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9lZGlk
LmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1fZWRpZC5oCj4gQEAgLTM1NCw2ICszNTQsMTUgQEAg
ZHJtX2xvYWRfZWRpZF9maXJtd2FyZShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+
ICB9Cj4gICNlbmRpZgo+ICAKPiArLyoqCj4gKyAqIGRybV9lZGlkX2FyZV9lcXVhbCAtIGNvbXBh
cmUgdHdvIGVkaWQgYmxvYnMuCj4gKyAqIEBlZGlkMTogcG9pbnRlciB0byBmaXJzdCBibG9iCj4g
KyAqIEBlZGlkMjogcG9pbnRlciB0byBzZWNvbmQgYmxvYgo+ICsgKiBUaGlzIGhlbHBlciBjYW4g
YmUgdXNlZCBkdXJpbmcgcHJvYmluZyB0byBkZXRlcm1pbmUgaWYKPiArICogZWRpZCBoYWQgY2hh
bmdlZC4KPiArICovCj4gK2Jvb2wgZHJtX2VkaWRfYXJlX2VxdWFsKHN0cnVjdCBlZGlkICplZGlk
MSwgc3RydWN0IGVkaWQgKmVkaWQyKTsKPiArCj4gIGludAo+ICBkcm1faGRtaV9hdmlfaW5mb2Zy
YW1lX2Zyb21fZGlzcGxheV9tb2RlKHN0cnVjdCBoZG1pX2F2aV9pbmZvZnJhbWUgKmZyYW1lLAo+
ICAJCQkJCSBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAotLSAKQ2hlZXJzLAoJTHl1
ZGUgUGF1bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
