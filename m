Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 116A826197B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 20:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE46E6E897;
	Tue,  8 Sep 2020 18:15:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32E966E896
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 18:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599588948;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=50mk9sdh9hbyh1e4XQdkFs+dtPImc2wbb39xkIbGQz0=;
 b=GZvREZOn3pYzw/c2pbooPX2jR7QyYlCAbgVmSbNQ22aDBK8RchLV9w+/jrokcNgJy8XT35
 EMaKejq8b/bNYDrL88LBd/CyAMCel8Ob3VaONhdl006jtH1cRfIGhc33vvl/97b6VEA4QF
 Kjvx8e8iKC0ZaXkpgXxmDzbNwa3v5gc=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-OphXGnLoMxmjO2I5teZTqQ-1; Tue, 08 Sep 2020 14:15:46 -0400
X-MC-Unique: OphXGnLoMxmjO2I5teZTqQ-1
Received: by mail-qt1-f200.google.com with SMTP id s33so106969qth.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Sep 2020 11:15:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=50mk9sdh9hbyh1e4XQdkFs+dtPImc2wbb39xkIbGQz0=;
 b=LkKnYkRLzCe3KM8CAi07raDtqK9DieMLHdW8Vxq5NeBTSOsbjRew3suGFUfU+C94zM
 HGhcATxaGnXOafqhjKYEx83LY2WAnkpjhprv/6SXqK34SF7Yn5bQJ0fJS58BD9OLxBcC
 QqvAfSYOQJu8ps3HfRTs44Nh8EH/tXNmL+Dn1Zm2+rhxCaQUP6/PwjsQkAQO4O4zP964
 bwo4YUMPTVI0iJATXfHW3BJQfNCeSgdV9mZQZOpMUiPGA7sWcFk+4Or9PGFJMIbMLvFl
 kqeFEPiaBMeNSFFKhJu2Xy15Nb1g3Y70m6WJINrO/Us5cI5b6BdDhm2VCc/iMmg2wGJa
 IUpw==
X-Gm-Message-State: AOAM531SuzFxyUSXLLGnoXlIrSipYWLIBlg4q9DCNs1jzvjI40fWL0B7
 AUFnPjDl/EXZICyu4CxtHFcwtjUMxE+ZGU12nTvIHIYZMgf8yCptiPb8OQVdHu9bpG3Sq3bKEtv
 iW7/cB/pnDV/YYGSaGqydW6jPVbyf
X-Received: by 2002:a37:9d8e:: with SMTP id g136mr1343272qke.88.1599588946064; 
 Tue, 08 Sep 2020 11:15:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkkQ/iMjeVK757E/yFFbtvrA6MlinCWP1lCwVt7UE7sD7VXZgC+8QkWpNoBwkWRHfoYg8vMQ==
X-Received: by 2002:a37:9d8e:: with SMTP id g136mr1343253qke.88.1599588945795; 
 Tue, 08 Sep 2020 11:15:45 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id z17sm209301qti.38.2020.09.08.11.15.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Sep 2020 11:15:45 -0700 (PDT)
Message-ID: <e93d42d137ce8572244ecba8662167930399decc.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org
Date: Tue, 08 Sep 2020 14:15:44 -0400
In-Reply-To: <20200904115354.25336-18-ville.syrjala@linux.intel.com>
References: <20200904115354.25336-1-ville.syrjala@linux.intel.com>
 <20200904115354.25336-18-ville.syrjala@linux.intel.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v2 17/18] drm/dp: Add helpers for DFP YCbCr
 4:2:0 handling
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIwLTA5LTA0IGF0IDE0OjUzICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gQWRkIGhlbHBlcnMgdG8gZGV0ZXJtaW5lIHdoZXRoZXIgdGhlIERGUCBzdXBwb3J0cwo+IFlD
YkNyIDQ6MjowIHBhc3N0aHJvdWdoIG9yIFlDYkNyIDQ6NDo0LT40OjI6MCBjb252ZXJzaW9uLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMgfCA0NCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgaW5jbHVkZS9kcm0vZHJtX2RwX2hl
bHBlci5oICAgICB8ICA4ICsrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDUyIGluc2VydGlvbnMo
KykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwo+IGIv
ZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwo+IGluZGV4IDBkNWU5YmNmMTFkMC4uZGM2
OGUxMGFhMWZkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jCj4gQEAgLTgwOCw2ICs4MDgs
NTAgQEAgaW50IGRybV9kcF9kb3duc3RyZWFtX21heF9icGMoY29uc3QgdTgKPiBkcGNkW0RQX1JF
Q0VJVkVSX0NBUF9TSVpFXSwKPiAgfQo+ICBFWFBPUlRfU1lNQk9MKGRybV9kcF9kb3duc3RyZWFt
X21heF9icGMpOwo+ICAKPiArYm9vbCBkcm1fZHBfZG93bnN0cmVhbV80MjBfcGFzc3Rocm91Z2go
Y29uc3QgdTggZHBjZFtEUF9SRUNFSVZFUl9DQVBfU0laRV0sCj4gKwkJCQkgICAgICAgY29uc3Qg
dTggcG9ydF9jYXBbNF0pCj4gK3sKPiArCWlmICghZHJtX2RwX2lzX2JyYW5jaChkcGNkKSkKPiAr
CQlyZXR1cm4gZmFsc2U7Cj4gKwo+ICsJaWYgKGRwY2RbRFBfRFBDRF9SRVZdIDwgMHgxMykKPiAr
CQlyZXR1cm4gZmFsc2U7Cj4gKwo+ICsJc3dpdGNoIChwb3J0X2NhcFswXSAmIERQX0RTX1BPUlRf
VFlQRV9NQVNLKSB7Cj4gKwljYXNlIERQX0RTX1BPUlRfVFlQRV9EUDoKPiArCQlyZXR1cm4gdHJ1
ZTsKPiArCWNhc2UgRFBfRFNfUE9SVF9UWVBFX0hETUk6Cj4gKwkJaWYgKChkcGNkW0RQX0RPV05T
VFJFQU1QT1JUX1BSRVNFTlRdICYKPiBEUF9ERVRBSUxFRF9DQVBfSU5GT19BVkFJTEFCTEUpID09
IDApCj4gKwkJCXJldHVybiBmYWxzZTsKPiArCj4gKwkJcmV0dXJuIHBvcnRfY2FwWzNdICYgRFBf
RFNfSERNSV9ZQ0JDUjQyMF9QQVNTX1RIUk9VR0g7Cj4gKwlkZWZhdWx0Ogo+ICsJCXJldHVybiBm
YWxzZTsKPiArCX0KPiArfQo+ICtFWFBPUlRfU1lNQk9MKGRybV9kcF9kb3duc3RyZWFtXzQyMF9w
YXNzdGhyb3VnaCk7CgpGb3Jnb3QgdGhlIGtkb2NzIGFnYWluCgo+ICsKPiArYm9vbCBkcm1fZHBf
ZG93bnN0cmVhbV80NDRfdG9fNDIwX2NvbnZlcnNpb24oY29uc3QgdTgKPiBkcGNkW0RQX1JFQ0VJ
VkVSX0NBUF9TSVpFXSwKPiArCQkJCQkgICAgIGNvbnN0IHU4IHBvcnRfY2FwWzRdKQo+ICt7Cj4g
KwlpZiAoIWRybV9kcF9pc19icmFuY2goZHBjZCkpCj4gKwkJcmV0dXJuIGZhbHNlOwo+ICsKPiAr
CWlmIChkcGNkW0RQX0RQQ0RfUkVWXSA8IDB4MTMpCj4gKwkJcmV0dXJuIGZhbHNlOwo+ICsKPiAr
CXN3aXRjaCAocG9ydF9jYXBbMF0gJiBEUF9EU19QT1JUX1RZUEVfTUFTSykgewo+ICsJY2FzZSBE
UF9EU19QT1JUX1RZUEVfSERNSToKPiArCQlpZiAoKGRwY2RbRFBfRE9XTlNUUkVBTVBPUlRfUFJF
U0VOVF0gJgo+IERQX0RFVEFJTEVEX0NBUF9JTkZPX0FWQUlMQUJMRSkgPT0gMCkKPiArCQkJcmV0
dXJuIGZhbHNlOwo+ICsKPiArCQlyZXR1cm4gcG9ydF9jYXBbM10gJiBEUF9EU19IRE1JX1lDQkNS
NDQ0X1RPXzQyMF9DT05WOwo+ICsJZGVmYXVsdDoKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwl9Cj4g
K30KPiArRVhQT1JUX1NZTUJPTChkcm1fZHBfZG93bnN0cmVhbV80NDRfdG9fNDIwX2NvbnZlcnNp
b24pOwo+ICsKPiAgLyoqCj4gICAqIGRybV9kcF9kb3duc3RyZWFtX21vZGUoKSAtIHJldHVybiBh
IG1vZGUgZm9yIGRvd25zdHJlYW0gZmFjaW5nIHBvcnQKPiAgICogQGRwY2Q6IERpc3BsYXlQb3J0
IGNvbmZpZ3VyYXRpb24gZGF0YQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZHBfaGVs
cGVyLmggYi9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKPiBpbmRleCBmYmJhNGEwZjczNjYu
LmM5ZjI4NTE5MDRkMCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgK
PiArKysgYi9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKPiBAQCAtNDA3LDYgKzQwNywxMCBA
QCBzdHJ1Y3QgZHJtX2RldmljZTsKPiAgIyBkZWZpbmUgRFBfRFNfRFZJX0hJR0hfQ09MT1JfREVQ
VEgJICAgICgxIDw8IDIpCj4gIC8qIG9mZnNldCAzIGZvciBIRE1JICovCj4gICMgZGVmaW5lIERQ
X0RTX0hETUlfRlJBTUVfU0VRX1RPX0ZSQU1FX1BBQ0sgKDEgPDwgMCkKPiArIyBkZWZpbmUgRFBf
RFNfSERNSV9ZQ0JDUjQyMl9QQVNTX1RIUk9VR0ggICAoMSA8PCAxKQo+ICsjIGRlZmluZSBEUF9E
U19IRE1JX1lDQkNSNDIwX1BBU1NfVEhST1VHSCAgICgxIDw8IDIpCj4gKyMgZGVmaW5lIERQX0RT
X0hETUlfWUNCQ1I0NDRfVE9fNDIyX0NPTlYgICAgKDEgPDwgMykKPiArIyBkZWZpbmUgRFBfRFNf
SERNSV9ZQ0JDUjQ0NF9UT180MjBfQ09OViAgICAoMSA8PCA0KQo+ICAKPiAgI2RlZmluZSBEUF9N
QVhfRE9XTlNUUkVBTV9QT1JUUwkJICAgIDB4MTAKPiAgCj4gQEAgLTE2NjMsNiArMTY2NywxMCBA
QCBpbnQgZHJtX2RwX2Rvd25zdHJlYW1fbWluX3RtZHNfY2xvY2soY29uc3QgdTgKPiBkcGNkW0RQ
X1JFQ0VJVkVSX0NBUF9TSVpFXSwKPiAgaW50IGRybV9kcF9kb3duc3RyZWFtX21heF9icGMoY29u
c3QgdTggZHBjZFtEUF9SRUNFSVZFUl9DQVBfU0laRV0sCj4gIAkJCSAgICAgIGNvbnN0IHU4IHBv
cnRfY2FwWzRdLAo+ICAJCQkgICAgICBjb25zdCBzdHJ1Y3QgZWRpZCAqZWRpZCk7Cj4gK2Jvb2wg
ZHJtX2RwX2Rvd25zdHJlYW1fNDIwX3Bhc3N0aHJvdWdoKGNvbnN0IHU4IGRwY2RbRFBfUkVDRUlW
RVJfQ0FQX1NJWkVdLAo+ICsJCQkJICAgICAgIGNvbnN0IHU4IHBvcnRfY2FwWzRdKTsKPiArYm9v
bCBkcm1fZHBfZG93bnN0cmVhbV80NDRfdG9fNDIwX2NvbnZlcnNpb24oY29uc3QgdTgKPiBkcGNk
W0RQX1JFQ0VJVkVSX0NBUF9TSVpFXSwKPiArCQkJCQkgICAgIGNvbnN0IHU4IHBvcnRfY2FwWzRd
KTsKPiAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmRybV9kcF9kb3duc3RyZWFtX21vZGUoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwKPiAgCQkJCQkJY29uc3QgdTgKPiBkcGNkW0RQX1JFQ0VJVkVS
X0NBUF9TSVpFXSwKPiAgCQkJCQkJY29uc3QgdTggcG9ydF9jYXBbNF0pOwotLSAKQ2hlZXJzLAoJ
THl1ZGUgUGF1bCAoc2hlL2hlcikKCVNvZnR3YXJlIEVuZ2luZWVyIGF0IFJlZCBIYXQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
