Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 432DDE1BE2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 15:11:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A276E128;
	Wed, 23 Oct 2019 13:11:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA636E128
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 13:11:11 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-RJarepR0PYeS969OfkOvEw-1; Wed, 23 Oct 2019 09:11:04 -0400
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E8E047B;
 Wed, 23 Oct 2019 13:10:58 +0000 (UTC)
Received: from jason-ThinkPad-X1-Carbon-6th.redhat.com
 (ovpn-12-126.pek2.redhat.com [10.72.12.126])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CB482600CC;
 Wed, 23 Oct 2019 13:07:58 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 kwankhede@nvidia.com, alex.williamson@redhat.com, mst@redhat.com,
 tiwei.bie@intel.com
Date: Wed, 23 Oct 2019 21:07:46 +0800
Message-Id: <20191023130752.18980-1-jasowang@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: RJarepR0PYeS969OfkOvEw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571836270;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=qtx994Rd94G9nH4lOA8VDgGSSgdKvPnh3lGGKTP7LFQ=;
 b=SVdwwb3SZtWmAkLmuDWi8EZvmUmD4OvaVhUpkLUMoxSoEjFt5JzmStxkoldpJc0fDcrKgk
 z3sT6purAl8lWn1ChrwyrsF/a1haJFPEqFEh3fKPN2Jgo+bvD3Bm9SHCSABu4QYqrlUzG/
 jKK3OnRDS8VOeiYLH5h5Rp7pvE3SJe4=
Subject: [Intel-gfx] [PATCH V5 0/6] mdev based hardware virtio offloading
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
Cc: christophe.de.dinechin@gmail.com, sebott@linux.ibm.com, airlied@linux.ie,
 Jason Wang <jasowang@redhat.com>, heiko.carstens@de.ibm.com,
 virtualization@lists.linux-foundation.org, rob.miller@broadcom.com,
 lulu@redhat.com, eperezma@redhat.com, pasic@linux.ibm.com,
 borntraeger@de.ibm.com, haotian.wang@sifive.com, farman@linux.ibm.com,
 idos@mellanox.com, gor@linux.ibm.com, cunming.liang@intel.com,
 xiao.w.wang@intel.com, freude@linux.ibm.com, parav@mellanox.com,
 zhihong.wang@intel.com, stefanha@redhat.com, akrowiak@linux.ibm.com,
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
byBhIHJlYWwgSUNGIFZGIGRyaXZlciB3YXMgYWxzbyBwb3N0ZWQgaGVyZVsyXSB3aGljaCBpcyBh
IGdvb2QKcmVmZXJlbmNlIGZvciB2ZW5kb3JzIHdobyBpcyBpbnRlcmVzdGVkIGluIHRoZWlyIG93
biB2aXJ0aW8gZGF0YXBhdGgKb2ZmbG9hZGluZyBwcm9kdWN0LgoKQ29uc2lkZXIgbWRldiBmcmFt
ZXdvcmsgb25seSBzdXBwb3J0IFZGSU8gZGV2aWNlIGFuZCBkcml2ZXIgcmlnaHQgbm93LAp0aGlz
IHNlcmllcyBhbHNvIGV4dGVuZCBpdCB0byBzdXBwb3J0IG90aGVyIHR5cGVzLiBUaGlzIGlzIGRv
bmUKdGhyb3VnaCBpbnRyb2R1Y2luZyBjbGFzcyBpZCB0byB0aGUgZGV2aWNlIGFuZCBwYWlyaW5n
IGl0IHdpdGgKaWRfdGFsYmUgY2xhaW1lZCBieSB0aGUgZHJpdmVyLiBPbiB0b3AsIHRoaXMgc2Vy
aXMgYWxzbyBkZWNvdXBsZQpkZXZpY2Ugc3BlY2lmaWMgcGFyZW50cyBvcHMgb3V0IG9mIHRoZSBj
b21tb24gb25lcy4KClBrdGdlbiB0ZXN0IHdhcyBkb25lIHdpdGggdmlyaXRvLW5ldCArIG12bmV0
IGxvb3AgYmFjayBkZXZpY2UuCgpQbGVhc2UgcmV2aWV3LgoKWzFdIGh0dHBzOi8vbGttbC5vcmcv
bGttbC8yMDE5LzEwLzIyLzI2MgpbMl0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvMTAvMTUv
MTIyNgoKQ2hhbmdlcyBmcm9tIFY0OgoKLSBrZWVwIG1kZXZfc2V0X2NsYXNzKCkgZm9yIHRoZSBk
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
ZG9jcyB0d2Vha3MgYW5kIHR5cG8gZml4ZXMKCkNoYW5nZXMgZnJvbSBWMzoKCi0gZG9jdW1lbnQg
dGhhdCBjbGFzcyBpZCAoZGV2aWNlIG9wcykgbXVzdCBiZSBzcGVjaWZpZWQgaW4gY3JlYXRlKCkK
LSBhZGQgV0FSTigpIHdoZW4gdHJ5aW5nIHRvIHNldCBjbGFzc19pZCB3aGVuIGl0IGhhcyBhbHJl
YWR5IHNldAotIGFkZCBXQVJOKCkgd2hlbiBjbGFzc19pZCBpcyBub3Qgc3BlY2lmaWVkIGluIGNy
ZWF0ZSgpIGFuZCBjb3JyZWN0bHkKICByZXR1cm4gYW4gZXJyb3IgaW4gdGhpcyBjYXNlCi0gY29y
cmVjdCB0aGUgcHJvdG90eXBlIG9mIG1kZXZfc2V0X2NsYXNzKCkgaW4gdGhlIGRvYwotIGFkZCBk
b2N1bWVudGlvbiBvZiBtZGV2X3NldF9jbGFzcygpCi0gcmVtb3ZlIHRoZSB1bm5lY2Vzc2FyeSAi
Y2xhc3NfaWRfZmFpbCIgbGFiZWwgd2hlbiBjbGFzcyBpZCBpcyBub3QKICBzcGVjaWZpZWQgaW4g
Y3JlYXRlKCkKLSBjb252ZXJ0IGlkX3RhYmxlIGluIHZmaW9fbWRldiB0byBjb25zdAotIG1vdmUg
bWRldl9zZXRfY2xhc3MgYW5kIGl0cyBmcmllbmRzIGFmdGVyIG1kZXZfdXVpZCgpCi0gc3VxYXNo
IHRoZSBwYXRjaCBvZiBidXMgdWV2ZW50IGludG8gcGF0Y2ggb2YgaW50cm9kdWNpbmcgY2xhc3Mg
aWQKLSB0d2VhayB0aGUgd29yZHMgaW4gdGhlIGRvY3MgcGVyIENvcm5lbGlhIHN1Z2dlc3Rpb24K
LSB0aWUgY2xhc3NfaWQgYW5kIGRldmljZSBvcHMgdGhyb3VnaCBjbGFzcyBzcGVjaWZpYyBpbml0
aWFsaXphdGlvbgogIHJvdXRpbmUgbGlrZSBtZGV2X3NldF92ZmlvX29wcygpCi0gdHlwb3MgZml4
ZXMgaW4gdGhlIGRvY3Mgb2YgdmlydGlvLW1kZXYgY2FsbGJhY2tzCi0gZG9jdW1lbnQgdGhlIHVz
YWdlIG9mIHZpcnRxdWV1ZXMgaW4gc3RydWN0IHZpcnRpb19tZGV2X2RldmljZQotIHJlbW92ZSB0
aGUgdXNlbGVzcyB2cXMgYXJyYXkgaW4gc3RydWN0IHZpcnRpb19tZGV2X2RldmljZQotIHJlbmFt
ZSBNREVWX0lEX1hYWCB0byBNREVWX0NMQVNTX0lEX1hYWAoKQ2hhbmdlcyBmcm9tIFYyOgoKLSBm
YWlsIHdoZW4gY2xhc3NfaWQgaXMgbm90IHNwZWNpZmllZAotIGRyb3AgdGhlIHZyaW5naCBwYXRj
aAotIG1hdGNoIHRoZSBkb2MgdG8gdGhlIGNvZGUKLSB0d2VhayB0aGUgY29tbWl0IGxvZwotIG1v
dmUgZGV2aWNlX29wcyBmcm9tIHBhcmVudCB0byBtZGV2IGRldmljZQotIHJlbW92ZSB0aGUgdW51
c2VkIE1ERVZfSURfVkhPU1QKCkNoYW5nZXMgZnJvbSBWMToKCi0gbW92ZSB2aXJ0aW9fbWRldi5j
IHRvIGRyaXZlcnMvdmlydGlvCi0gc3RvcmUgY2xhc3NfaWQgaW4gbWRldl9kZXZpY2UgaW5zdGVh
ZCBvZiBtZGV2X3BhcmVudAotIHN0b3JlIGRldmljZV9vcHMgaW4gbWRldl9kZXZpY2UgaW5zdGVh
ZCBvZiBtZGV2X3BhcmVudAotIHJlb3JkZXIgdGhlIHBhdGNoLCB2cmluZ2ggZml4IGNvbWVzIGZp
cnN0Ci0gcmVhbGx5IHNpbGVudCBjb21waWxpbmcgd2FybmluZ3MKLSByZWFsbHkgc3dpdGNoIHRv
IHVzZSB1MTYgZm9yIGNsYXNzX2lkCi0gdWV2ZW50IGFuZCBtb2Rwb3N0IHN1cHBvcnQgZm9yIG1k
ZXYgY2xhc3NfaWQKLSB2cmFpb3VzIHR3ZWFrcyBwZXIgY29tbWVudHMgZnJvbSBQYXJhdgoKQ2hh
bmdlcyBmcm9tIFJGQy1WMjoKCi0gc2lsZW50IGNvbXBpbGUgd2FybmluZ3Mgb24gc29tZSBzcGVj
aWZpYyBjb25maWd1cmF0aW9uCi0gdXNlIHUxNiBpbnN0ZWFkIHU4IGZvciBjbGFzcyBpZAotIHJl
c2V2ZSBNREVWX0lEX1ZIT1NUIGZvciBmdXR1cmUgdmhvc3QtbWRldiB3b3JrCi0gaW50cm9kdWNl
ICJ2aXJ0aW8iIHR5cGUgZm9yIG12bmV0IGFuZCBtYWtlICJ2aG9zdCIgdHlwZSBmb3IgZnV0dXJl
CiAgd29yawotIGFkZCBlbnRyaWVzIGluIE1BSU5UQUlORVIKLSB0d2VhayBhbmQgdHlwb3MgZml4
ZXMgaW4gY29tbWl0IGxvZwoKQ2hhbmdlcyBmcm9tIFJGQy1WMToKCi0gcmVuYW1lIGRldmljZSBp
ZCB0byBjbGFzcyBpZAotIGFkZCBkb2NzIGZvciBjbGFzcyBpZCBhbmQgZGV2aWNlIHNwZWNpZmlj
IG9wcyAoZGV2aWNlX29wcykKLSBzcGxpdCBkZXZpY2Vfb3BzIGludG8gc2VwZXJhdGUgaGVhZGVy
cwotIGRyb3AgdGhlIG1kZXZfc2V0X2RtYV9vcHMoKQotIHVzZSBkZXZpY2Vfb3BzIHRvIGltcGxl
bWVudCB0aGUgdHJhbnNwb3J0IEFQSSwgdGhlbiBpdCdzIG5vdCBhIHBhcnQKICBvZiBVQVBJIGFu
eSBtb3JlCi0gdXNlIEdGUF9BVE9NSUMgaW4gbXZuZXQgc2FtcGxlIGRldmljZSBhbmQgb3RoZXIg
dHdlYWtzCi0gc2V0X3ZyaW5nX2Jhc2UvZ2V0X3ZyaW5nX2Jhc2Ugc3VwcG9ydCBmb3IgbXZuZXQg
ZGV2aWNlCgpKYXNvbiBXYW5nICg2KToKICBtZGV2OiBjbGFzcyBpZCBzdXBwb3J0CiAgbW9kcG9z
dDogYWRkIHN1cHBvcnQgZm9yIG1kZXYgY2xhc3MgaWQKICBtZGV2OiBpbnRyb2R1Y2UgZGV2aWNl
IHNwZWNpZmljIG9wcwogIG1kZXY6IGludHJvZHVjZSB2aXJ0aW8gZGV2aWNlIGFuZCBpdHMgZGV2
aWNlIG9wcwogIHZpcnRpbzogaW50cm9kdWNlIGEgbWRldiBiYXNlZCB0cmFuc3BvcnQKICBkb2Nz
OiBzYW1wbGUgZHJpdmVyIHRvIGRlbW9uc3RyYXRlIGhvdyB0byBpbXBsZW1lbnQgdmlydGlvLW1k
ZXYKICAgIGZyYW1ld29yawoKIC4uLi9kcml2ZXItYXBpL3ZmaW8tbWVkaWF0ZWQtZGV2aWNlLnJz
dCAgICAgICB8ICAzOCArLQogTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9rdm1ndC5jICAgICAgICAg
ICAgICB8ICAxNyArLQogZHJpdmVycy9zMzkwL2Npby92ZmlvX2Njd19vcHMuYyAgICAgICAgICAg
ICAgIHwgIDE3ICstCiBkcml2ZXJzL3MzOTAvY3J5cHRvL3ZmaW9fYXBfb3BzLmMgICAgICAgICAg
ICAgfCAgMTMgKy0KIGRyaXZlcnMvdmZpby9tZGV2L21kZXZfY29yZS5jICAgICAgICAgICAgICAg
ICB8ICA1OSArKwogZHJpdmVycy92ZmlvL21kZXYvbWRldl9kcml2ZXIuYyAgICAgICAgICAgICAg
IHwgIDIyICsKIGRyaXZlcnMvdmZpby9tZGV2L21kZXZfcHJpdmF0ZS5oICAgICAgICAgICAgICB8
ICAgOCArCiBkcml2ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYuYyAgICAgICAgICAgICAgICAgfCAg
NDUgKy0KIGRyaXZlcnMvdmlydGlvL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICB8ICAg
NyArCiBkcml2ZXJzL3ZpcnRpby9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEg
KwogZHJpdmVycy92aXJ0aW8vdmlydGlvX21kZXYuYyAgICAgICAgICAgICAgICAgIHwgNDEzICsr
KysrKysrKysrCiBpbmNsdWRlL2xpbnV4L21kZXYuaCAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgNTcgKy0KIGluY2x1ZGUvbGludXgvbW9kX2RldmljZXRhYmxlLmggICAgICAgICAgICAgICB8
ICAgOCArCiBpbmNsdWRlL2xpbnV4L3ZmaW9fbWRldl9vcHMuaCAgICAgICAgICAgICAgICAgfCAg
NTIgKysKIGluY2x1ZGUvbGludXgvdmlydGlvX21kZXZfb3BzLmggICAgICAgICAgICAgICB8IDE1
OSArKysrCiBzYW1wbGVzL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
IDcgKwogc2FtcGxlcy92ZmlvLW1kZXYvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgIHwgICAx
ICsKIHNhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5jICAgICAgICAgICAgICAgICAgICB8ICAxOSAr
LQogc2FtcGxlcy92ZmlvLW1kZXYvbWRweS5jICAgICAgICAgICAgICAgICAgICAgIHwgIDE5ICst
CiBzYW1wbGVzL3ZmaW8tbWRldi9tdHR5LmMgICAgICAgICAgICAgICAgICAgICAgfCAgMTcgKy0K
IHNhbXBsZXMvdmZpby1tZGV2L212bmV0LmMgICAgICAgICAgICAgICAgICAgICB8IDY5MSArKysr
KysrKysrKysrKysrKysKIHNjcmlwdHMvbW9kL2RldmljZXRhYmxlLW9mZnNldHMuYyAgICAgICAg
ICAgICB8ICAgMyArCiBzY3JpcHRzL21vZC9maWxlMmFsaWFzLmMgICAgICAgICAgICAgICAgICAg
ICAgfCAgMTAgKwogMjQgZmlsZXMgY2hhbmdlZCwgMTU5NCBpbnNlcnRpb25zKCspLCA5MSBkZWxl
dGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3ZpcnRpby92aXJ0aW9fbWRldi5j
CiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC92ZmlvX21kZXZfb3BzLmgKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3ZpcnRpb19tZGV2X29wcy5oCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgc2FtcGxlcy92ZmlvLW1kZXYvbXZuZXQuYwoKLS0gCjIuMTkuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
