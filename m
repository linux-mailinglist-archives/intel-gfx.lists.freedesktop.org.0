Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F58F3262
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 16:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 032C66F6C8;
	Thu,  7 Nov 2019 15:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13DC46F6C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 15:11:48 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-179-cC6C2CnIObebYy1VhuzwIg-1; Thu, 07 Nov 2019 10:11:41 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5061D800C61;
 Thu,  7 Nov 2019 15:11:37 +0000 (UTC)
Received: from jason-ThinkPad-X1-Carbon-6th.redhat.com
 (ovpn-12-21.pek2.redhat.com [10.72.12.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 019B2600D1;
 Thu,  7 Nov 2019 15:11:11 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 kwankhede@nvidia.com, alex.williamson@redhat.com, mst@redhat.com,
 tiwei.bie@intel.com
Date: Thu,  7 Nov 2019 23:11:03 +0800
Message-Id: <20191107151109.23261-1-jasowang@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: cC6C2CnIObebYy1VhuzwIg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1573139508;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=FrBgMaUl+cnUHfuZj6Cms+/UBTPhWI76SfAU6TTRzaU=;
 b=jIU2cLabz9A7wBWOyVKXej4bqIul9Rp7VMEO1n6gDjg9b4Q+dnDv839+eJL1QLTwDinpGI
 MzJh4pTWIu0nyv8XNycQlsWLODorsifNin0xyMYpg2YGtwnQ5A2OQsW9ne59qwV58h6M8a
 qa0iuguIsvE2aFtLprCHBk7x4Vl5/aU=
Subject: [Intel-gfx] [PATCH V11 0/6] mdev based hardware virtio offloading
 support
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
Cc: rdunlap@infradead.org, christophe.de.dinechin@gmail.com,
 sebott@linux.ibm.com, airlied@linux.ie, Jason Wang <jasowang@redhat.com>,
 heiko.carstens@de.ibm.com, virtualization@lists.linux-foundation.org,
 rob.miller@broadcom.com, lulu@redhat.com, eperezma@redhat.com,
 pasic@linux.ibm.com, borntraeger@de.ibm.com, haotian.wang@sifive.com,
 farman@linux.ibm.com, parav@mellanox.com, gor@linux.ibm.com,
 cunming.liang@intel.com, xiao.w.wang@intel.com, freude@linux.ibm.com,
 stefanha@redhat.com, zhihong.wang@intel.com, akrowiak@linux.ibm.com,
 netdev@vger.kernel.org, cohuck@redhat.com, oberpar@linux.ibm.com,
 maxime.coquelin@redhat.com, lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgYWxsOgoKVGhlcmUgYXJlIGhhcmR3YXJlcyB0aGF0IGNhbiBkbyB2aXJ0aW8gZGF0YXBhdGgg
b2ZmbG9hZGluZyB3aGlsZQpoYXZpbmcgaXRzIG93biBjb250cm9sIHBhdGguIFRoaXMgcGF0aCB0
cmllcyB0byBpbXBsZW1lbnQgYSBtZGV2IGJhc2VkCnVuaWZpZWQgQVBJIHRvIHN1cHBvcnQgdXNp
bmcga2VybmVsIHZpcnRpbyBkcml2ZXIgdG8gZHJpdmUgdGhvc2UKZGV2aWNlcy4gVGhpcyBpcyBk
b25lIGJ5IGludHJvZHVjaW5nIGEgbmV3IG1kZXYgdHJhbnNwb3J0IGZvciB2aXJ0aW8KKHZpcnRp
b19tZGV2KSBhbmQgcmVnaXN0ZXIgaXRzZWxmIGFzIGEgbmV3IGtpbmQgb2YgbWRldiBkcml2ZXIu
IFRoZW4KaXQgcHJvdmlkZXMgYSB1bmlmaWVkIHdheSBmb3Iga2VybmVsIHZpcnRpbyBkcml2ZXIg
dG8gdGFsayB3aXRoIG1kZXYKZGV2aWNlIGltcGxlbWVudGF0aW9uLgoKVGhvdWdoIHRoZSBzZXJp
ZXMgb25seSBjb250YWlucyBrZXJuZWwgZHJpdmVyIHN1cHBvcnQsIHRoZSBnb2FsIGlzIHRvCm1h
a2UgdGhlIHRyYW5zcG9ydCBnZW5lcmljIGVub3VnaCB0byBzdXBwb3J0IHVzZXJzcGFjZSBkcml2
ZXJzLiBUaGlzCm1lYW5zIHZob3N0LW1kZXZbMV0gY291bGQgYmUgYnVpbHQgb24gdG9wIGFzIHdl
bGwgYnkgcmVzdWluZyB0aGUKdHJhbnNwb3J0LgoKQSBzYW1wbGUgZHJpdmVyIGlzIGFsc28gaW1w
bGVtZW50ZWQgd2hpY2ggc2ltdWxhdGUgYSB2aXJpdG8tbmV0Cmxvb3BiYWNrIGV0aGVybmV0IGRl
dmljZSBvbiB0b3Agb2YgdnJpbmdoICsgd29ya3F1ZXVlLiBUaGlzIGNvdWxkIGJlCnVzZWQgYXMg
YSByZWZlcmVuY2UgaW1wbGVtZW50YXRpb24gZm9yIHJlYWwgaGFyZHdhcmUgZHJpdmVyLgoKQWxz
byBhIHJlYWwgSUZDIFZGIGRyaXZlciB3YXMgYWxzbyBwb3N0ZWQgaGVyZVsyXSB3aGljaCBpcyBh
IGdvb2QKcmVmZXJlbmNlIGZvciB2ZW5kb3JzIHdobyBpcyBpbnRlcmVzdGVkIGluIHRoZWlyIG93
biB2aXJ0aW8gZGF0YXBhdGgKb2ZmbG9hZGluZyBwcm9kdWN0LgoKQ29uc2lkZXIgbWRldiBmcmFt
ZXdvcmsgb25seSBzdXBwb3J0IFZGSU8gZGV2aWNlIGFuZCBkcml2ZXIgcmlnaHQgbm93LAp0aGlz
IHNlcmllcyBhbHNvIGV4dGVuZCBpdCB0byBzdXBwb3J0IG90aGVyIHR5cGVzLiBUaGlzIGlzIGRv
bmUKdGhyb3VnaCBpbnRyb2R1Y2luZyBjbGFzcyBpZCB0byB0aGUgZGV2aWNlIGFuZCBwYWlyaW5n
IGl0IHdpdGgKaWRfdGFsYmUgY2xhaW1lZCBieSB0aGUgZHJpdmVyLiBPbiB0b3AsIHRoaXMgc2Vy
aXMgYWxzbyBkZWNvdXBsZQpkZXZpY2Ugc3BlY2lmaWMgb3BzIG91dCBvZiB0aGUgY29tbW9uIG9u
ZXMgZm9yIGltcGxlbWVudGluZyBjbGFzcwpzcGVjaWZpYyBvcGVyYXRpb25zIG92ZXIgbWRldiBi
dXMuCgpQa3RnZW4gdGVzdCB3YXMgZG9uZSB3aXRoIHZpcml0by1uZXQgKyBtdm5ldCBsb29wIGJh
Y2sgZGV2aWNlLgoKUGxlYXNlIHJldmlldy4KClsxXSBodHRwczovL2xrbWwub3JnL2xrbWwvMjAx
OS8xMS81LzQyNApbMl0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvMTEvNS8yMjcKCkNoYW5n
ZXMgZnJvbSBWMTA6Ci0gcmVuYW1lIG12bmV0IHRvIG12bmV0X2xvb3BiYWNrCi0gZml4IHR5cG8g
aW4gdGhlIGhlbHAgdGV4dCBmb3Igc2FtcGxlIEtjb25maWcKCkNoYW5nZXMgZnJvbSBWOToKLSBU
d2VhayB0aGUgaGVscCB0ZXh0IGZvciB2aXJpdG8tbWRldiBrY29uZmlnCgpDaGFuZ2VzIGZyb20g
Vjg6Ci0gdHJ5IHNpbGVudCBjaGVja3BhdGNoLCBzb21lIGFyZSBzdGlsbCB0aGVyZSBiZWN1YXNl
IHRoZXkgd2VyZSBpbmhlcml0ZWQKICBmcm9tIHZpcnRpb19jb25maWdfb3BzIHdoaWNoIG5lZWRz
IHRvIGJlIHJlc29sdmVkIGluIGFuIGluZGVwZW5kZW50IHNlcmllcwotIHR3ZWFrIG9uIHRoZSBj
b21tZW50IGFuZCBkb2MKLSByZW1vdmUgVklSVElPX01ERVZfRl9WRVJTSU9OXzEgY29tcGxldGVs
eQotIHJlbmFtZSBDT05GSUdfVklSVElPX01ERVZfREVWSUNFIHRvIENPTkZJR19WSVJUSU9fTURF
VgoKQ2hhbmdlcyBmcm9tIFY3OgotIGRyb3Age3NldHxnZXR9X21kZXZfZmVhdHVyZXMgZm9yIHZp
cnRpbwotIHR5cG8gYW5kIGNvbW1lbnQgc3R5bGUgZml4ZXMKCkNoYW5nZXMgZnJvbSBWNjoKLSBy
ZW5hbWUgb3BzIGZpbGVzIGFuZCBjb21waWxlIGd1YXJkCgpDaGFuZ2VzIGZyb20gVjU6Ci0gdXNl
IGRldl93YXJuKCkgaW5zdGVhZCBvZiBXQVJOKDEpIHdoZW4gY2xhc3MgaWQgaXMgbm90IHNldAot
IHZhbGlkYXRlIGlkX3RhYmxlIGJlZm9yZSB0cnlpbmcgdG8gZG8gbWF0Y2hpbmcgYmV0d2VlbiBk
ZXZpY2UgYW5kCiAgZHJpdmVyCi0gYWRkIHdpbGRjYXJkIGZvciBtb2Rwb3N0IHNjcmlwdAotIHVz
ZSB1bmlxdWUgbmFtZSBmb3IgaWRfdGFibGUKLSBtb3ZlIGdldF9tZGV2X2ZlYXR1cmVzKCkgdG8g
YmUgdGhlIGZpcnN0IG1lbWJlciBvZiB2aXJ0aW9fZGV2aWNlX29wcwogIGFuZCBtb3JlIGNvbW1l
bnRzIGZvciBpdAotIHR5cG8gZml4ZXMgZm9yIHRoZSBjb21tZW50cyBhYm92ZSB2aXJ0aW9fbWRl
dl9vcHMKCkNoYW5nZXMgZnJvbSBWNDoKLSBrZWVwIG1kZXZfc2V0X2NsYXNzKCkgZm9yIHRoZSBk
ZXZpY2UgdGhhdCBkb2Vzbid0IHVzZSBkZXZpY2Ugb3BzCi0gdXNlIHVuaW9uIGZvciBkZXZpY2Ug
b3BzIHBvaW50ZXIgaW4gbWRldl9kZXZpY2UKLSBpbnRyb2R1Y2UgY2xhc3Mgc3BlY2lmaWMgaGVs
cGVyIGZvciBnZXR0aW5nIGlzIGRldmljZSBvcHMKLSB1c2UgV0FSTl9PTiBpbnN0ZWFkIG9mIEJV
R19PTiBpbiBtZGV2X3NldF92aXJ0aW9fb3BzCi0gZXhwbGFpbiBkZXRhaWxzIG9mIGdldF9tZGV2
X2ZlYXR1cmVzKCkgYW5kIGdldF92ZW5kb3JfaWQoKQotIGRpc3Rpbmd1aXNoIHRoZSBvcHRpb25h
bCB2aXJpdG8gZGV2aWNlIG9wcyBmcm9tIG1hbmRhdG9yeSBvbmVzIGFuZAogIG1ha2UgZ2V0X2dl
bmVyYXRpb24oKSBvcHRpb25hbAotIHJlbmFtZSB2ZmlvX21kZXYuaCB0byB2ZmlvX21kZXZfb3Bz
LmgsIHJlbmFtZSB2aXJpdG9fbWRldi5oIHRvCiAgdmlydGlvX21kZXZfb3BzLmgKLSBkb24ndCBh
YnVzZSB2ZXJzaW9uIGZpbGVkcyBpbiB2aXJ0aW9fbWRldiBzdHJ1Y3R1cmUsIHVzZSBmZWF0dXJl
cwogIGluc3RlYWQKLSBmaXggd2FybmluZyBkdXJpbmcgZGV2aWNlIHJlbW92ZQotIHN0eWxlICYg
ZG9jcyB0d2Vha3MgYW5kIHR5cG8gZml4ZXMKCkNoYW5nZXMgZnJvbSBWMzoKLSBkb2N1bWVudCB0
aGF0IGNsYXNzIGlkIChkZXZpY2Ugb3BzKSBtdXN0IGJlIHNwZWNpZmllZCBpbiBjcmVhdGUoKQot
IGFkZCBXQVJOKCkgd2hlbiB0cnlpbmcgdG8gc2V0IGNsYXNzX2lkIHdoZW4gaXQgaGFzIGFscmVh
ZHkgc2V0Ci0gYWRkIFdBUk4oKSB3aGVuIGNsYXNzX2lkIGlzIG5vdCBzcGVjaWZpZWQgaW4gY3Jl
YXRlKCkgYW5kIGNvcnJlY3RseQogIHJldHVybiBhbiBlcnJvciBpbiB0aGlzIGNhc2UKLSBjb3Jy
ZWN0IHRoZSBwcm90b3R5cGUgb2YgbWRldl9zZXRfY2xhc3MoKSBpbiB0aGUgZG9jCi0gYWRkIGRv
Y3VtZW50aW9uIG9mIG1kZXZfc2V0X2NsYXNzKCkKLSByZW1vdmUgdGhlIHVubmVjZXNzYXJ5ICJj
bGFzc19pZF9mYWlsIiBsYWJlbCB3aGVuIGNsYXNzIGlkIGlzIG5vdAogIHNwZWNpZmllZCBpbiBj
cmVhdGUoKQotIGNvbnZlcnQgaWRfdGFibGUgaW4gdmZpb19tZGV2IHRvIGNvbnN0Ci0gbW92ZSBt
ZGV2X3NldF9jbGFzcyBhbmQgaXRzIGZyaWVuZHMgYWZ0ZXIgbWRldl91dWlkKCkKLSBzdXFhc2gg
dGhlIHBhdGNoIG9mIGJ1cyB1ZXZlbnQgaW50byBwYXRjaCBvZiBpbnRyb2R1Y2luZyBjbGFzcyBp
ZAotIHR3ZWFrIHRoZSB3b3JkcyBpbiB0aGUgZG9jcyBwZXIgQ29ybmVsaWEgc3VnZ2VzdGlvbgot
IHRpZSBjbGFzc19pZCBhbmQgZGV2aWNlIG9wcyB0aHJvdWdoIGNsYXNzIHNwZWNpZmljIGluaXRp
YWxpemF0aW9uCiAgcm91dGluZSBsaWtlIG1kZXZfc2V0X3ZmaW9fb3BzKCkKLSB0eXBvcyBmaXhl
cyBpbiB0aGUgZG9jcyBvZiB2aXJ0aW8tbWRldiBjYWxsYmFja3MKLSBkb2N1bWVudCB0aGUgdXNh
Z2Ugb2YgdmlydHF1ZXVlcyBpbiBzdHJ1Y3QgdmlydGlvX21kZXZfZGV2aWNlCi0gcmVtb3ZlIHRo
ZSB1c2VsZXNzIHZxcyBhcnJheSBpbiBzdHJ1Y3QgdmlydGlvX21kZXZfZGV2aWNlCi0gcmVuYW1l
IE1ERVZfSURfWFhYIHRvIE1ERVZfQ0xBU1NfSURfWFhYCgpDaGFuZ2VzIGZyb20gVjI6Ci0gZmFp
bCB3aGVuIGNsYXNzX2lkIGlzIG5vdCBzcGVjaWZpZWQKLSBkcm9wIHRoZSB2cmluZ2ggcGF0Y2gK
LSBtYXRjaCB0aGUgZG9jIHRvIHRoZSBjb2RlCi0gdHdlYWsgdGhlIGNvbW1pdCBsb2cKLSBtb3Zl
IGRldmljZV9vcHMgZnJvbSBwYXJlbnQgdG8gbWRldiBkZXZpY2UKLSByZW1vdmUgdGhlIHVudXNl
ZCBNREVWX0lEX1ZIT1NUCgpDaGFuZ2VzIGZyb20gVjE6Ci0gbW92ZSB2aXJ0aW9fbWRldi5jIHRv
IGRyaXZlcnMvdmlydGlvCi0gc3RvcmUgY2xhc3NfaWQgaW4gbWRldl9kZXZpY2UgaW5zdGVhZCBv
ZiBtZGV2X3BhcmVudAotIHN0b3JlIGRldmljZV9vcHMgaW4gbWRldl9kZXZpY2UgaW5zdGVhZCBv
ZiBtZGV2X3BhcmVudAotIHJlb3JkZXIgdGhlIHBhdGNoLCB2cmluZ2ggZml4IGNvbWVzIGZpcnN0
Ci0gcmVhbGx5IHNpbGVudCBjb21waWxpbmcgd2FybmluZ3MKLSByZWFsbHkgc3dpdGNoIHRvIHVz
ZSB1MTYgZm9yIGNsYXNzX2lkCi0gdWV2ZW50IGFuZCBtb2Rwb3N0IHN1cHBvcnQgZm9yIG1kZXYg
Y2xhc3NfaWQKLSB2cmFpb3VzIHR3ZWFrcyBwZXIgY29tbWVudHMgZnJvbSBQYXJhdgoKQ2hhbmdl
cyBmcm9tIFJGQy1WMjoKLSBzaWxlbnQgY29tcGlsZSB3YXJuaW5ncyBvbiBzb21lIHNwZWNpZmlj
IGNvbmZpZ3VyYXRpb24KLSB1c2UgdTE2IGluc3RlYWQgdTggZm9yIGNsYXNzIGlkCi0gcmVzZXZl
IE1ERVZfSURfVkhPU1QgZm9yIGZ1dHVyZSB2aG9zdC1tZGV2IHdvcmsKLSBpbnRyb2R1Y2UgInZp
cnRpbyIgdHlwZSBmb3IgbXZuZXQgYW5kIG1ha2UgInZob3N0IiB0eXBlIGZvciBmdXR1cmUKICB3
b3JrCi0gYWRkIGVudHJpZXMgaW4gTUFJTlRBSU5FUgotIHR3ZWFrIGFuZCB0eXBvcyBmaXhlcyBp
biBjb21taXQgbG9nCgpDaGFuZ2VzIGZyb20gUkZDLVYxOgotIHJlbmFtZSBkZXZpY2UgaWQgdG8g
Y2xhc3MgaWQKLSBhZGQgZG9jcyBmb3IgY2xhc3MgaWQgYW5kIGRldmljZSBzcGVjaWZpYyBvcHMg
KGRldmljZV9vcHMpCi0gc3BsaXQgZGV2aWNlX29wcyBpbnRvIHNlcGVyYXRlIGhlYWRlcnMKLSBk
cm9wIHRoZSBtZGV2X3NldF9kbWFfb3BzKCkKLSB1c2UgZGV2aWNlX29wcyB0byBpbXBsZW1lbnQg
dGhlIHRyYW5zcG9ydCBBUEksIHRoZW4gaXQncyBub3QgYSBwYXJ0CiAgb2YgVUFQSSBhbnkgbW9y
ZQotIHVzZSBHRlBfQVRPTUlDIGluIG12bmV0IHNhbXBsZSBkZXZpY2UgYW5kIG90aGVyIHR3ZWFr
cwotIHNldF92cmluZ19iYXNlL2dldF92cmluZ19iYXNlIHN1cHBvcnQgZm9yIG12bmV0IGRldmlj
ZQoKSmFzb24gV2FuZyAoNik6CiAgbWRldjogY2xhc3MgaWQgc3VwcG9ydAogIG1vZHBvc3Q6IGFk
ZCBzdXBwb3J0IGZvciBtZGV2IGNsYXNzIGlkCiAgbWRldjogaW50cm9kdWNlIGRldmljZSBzcGVj
aWZpYyBvcHMKICBtZGV2OiBpbnRyb2R1Y2UgdmlydGlvIGRldmljZSBhbmQgaXRzIGRldmljZSBv
cHMKICB2aXJ0aW86IGludHJvZHVjZSBhIG1kZXYgYmFzZWQgdHJhbnNwb3J0CiAgZG9jczogc2Ft
cGxlIGRyaXZlciB0byBkZW1vbnN0cmF0ZSBob3cgdG8gaW1wbGVtZW50IHZpcnRpby1tZGV2CiAg
ICBmcmFtZXdvcmsKCiAuLi4vZHJpdmVyLWFwaS92ZmlvLW1lZGlhdGVkLWRldmljZS5yc3QgICAg
ICAgfCAgMzggKy0KIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQva3ZtZ3QuYyAgICAgICAgICAgICAg
fCAgMTcgKy0KIGRyaXZlcnMvczM5MC9jaW8vdmZpb19jY3dfb3BzLmMgICAgICAgICAgICAgICB8
ICAxNyArLQogZHJpdmVycy9zMzkwL2NyeXB0by92ZmlvX2FwX29wcy5jICAgICAgICAgICAgIHwg
IDEzICstCiBkcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2NvcmUuYyAgICAgICAgICAgICAgICAgfCAg
NjAgKysKIGRyaXZlcnMvdmZpby9tZGV2L21kZXZfZHJpdmVyLmMgICAgICAgICAgICAgICB8ICAy
NSArCiBkcml2ZXJzL3ZmaW8vbWRldi9tZGV2X3ByaXZhdGUuaCAgICAgICAgICAgICAgfCAgIDgg
KwogZHJpdmVycy92ZmlvL21kZXYvdmZpb19tZGV2LmMgICAgICAgICAgICAgICAgIHwgIDQ1ICst
CiBkcml2ZXJzL3ZpcnRpby9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTMgKwog
ZHJpdmVycy92aXJ0aW8vTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRy
aXZlcnMvdmlydGlvL3ZpcnRpb19tZGV2LmMgICAgICAgICAgICAgICAgICB8IDQwNiArKysrKysr
KysrKwogaW5jbHVkZS9saW51eC9tZGV2LmggICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDU3
ICstCiBpbmNsdWRlL2xpbnV4L21kZXZfdmZpb19vcHMuaCAgICAgICAgICAgICAgICAgfCAgNTIg
KysKIGluY2x1ZGUvbGludXgvbWRldl92aXJ0aW9fb3BzLmggICAgICAgICAgICAgICB8IDE0NyAr
KysrCiBpbmNsdWRlL2xpbnV4L21vZF9kZXZpY2V0YWJsZS5oICAgICAgICAgICAgICAgfCAgIDgg
Kwogc2FtcGxlcy9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDEwICsK
IHNhbXBsZXMvdmZpby1tZGV2L01ha2VmaWxlICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiBz
YW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYyAgICAgICAgICAgICAgICAgICAgfCAgMTkgKy0KIHNh
bXBsZXMvdmZpby1tZGV2L21kcHkuYyAgICAgICAgICAgICAgICAgICAgICB8ICAxOSArLQogc2Ft
cGxlcy92ZmlvLW1kZXYvbXR0eS5jICAgICAgICAgICAgICAgICAgICAgIHwgIDE3ICstCiBzYW1w
bGVzL3ZmaW8tbWRldi9tdm5ldF9sb29wYmFjay5jICAgICAgICAgICAgfCA2ODcgKysrKysrKysr
KysrKysrKysrCiBzY3JpcHRzL21vZC9kZXZpY2V0YWJsZS1vZmZzZXRzLmMgICAgICAgICAgICAg
fCAgIDMgKwogc2NyaXB0cy9tb2QvZmlsZTJhbGlhcy5jICAgICAgICAgICAgICAgICAgICAgIHwg
IDExICsKIDI0IGZpbGVzIGNoYW5nZWQsIDE1ODYgaW5zZXJ0aW9ucygrKSwgOTEgZGVsZXRpb25z
KC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy92aXJ0aW8vdmlydGlvX21kZXYuYwogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWRldl92ZmlvX29wcy5oCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZGV2X3ZpcnRpb19vcHMuaAogY3JlYXRlIG1vZGUgMTAw
NjQ0IHNhbXBsZXMvdmZpby1tZGV2L212bmV0X2xvb3BiYWNrLmMKCi0tIAoyLjE5LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
