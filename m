Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DF3E85FC
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:43:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A386EB64;
	Tue, 29 Oct 2019 10:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC6E66EB62
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 10:43:49 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-f_q__00gOjOwW2LVCQTfjw-1; Tue, 29 Oct 2019 06:43:43 -0400
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B317E1005500;
 Tue, 29 Oct 2019 10:43:39 +0000 (UTC)
Received: from [10.72.12.223] (ovpn-12-223.pek2.redhat.com [10.72.12.223])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 902D960BF1;
 Tue, 29 Oct 2019 10:42:12 +0000 (UTC)
To: Zhu Lingshan <lingshan.zhu@linux.intel.com>, kvm@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, kwankhede@nvidia.com,
 alex.williamson@redhat.com, mst@redhat.com, tiwei.bie@intel.com
References: <20191023130752.18980-1-jasowang@redhat.com>
 <20191023130752.18980-5-jasowang@redhat.com>
 <df1eb77c-d159-da11-bb8f-df2c19089ac6@linux.intel.com>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <14410ac9-cc01-185a-5dcf-7f6c78aefd65@redhat.com>
Date: Tue, 29 Oct 2019 18:42:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <df1eb77c-d159-da11-bb8f-df2c19089ac6@linux.intel.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: f_q__00gOjOwW2LVCQTfjw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1572345828;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8QKaEOxWqH0XbEXmeRTfx0XwaFmBJ9rzCJkgjIkFVeU=;
 b=eRJdBhE6ypYShLlzxQDxFq6FKV4MMsW9miJ28k6NtJrMv46AuJe/aeQ3Ofw0MYAs+VKvMY
 7Ylqq45t51v1SZS7EwjjyGblLXpKIdSSaSu5PW4fYJjBNoNXAEj5jtMXDfrNCSIPU9fYnp
 ESkINVtLT9owPJhO7GMweCnitgkbQs4=
Subject: Re: [Intel-gfx] [PATCH V5 4/6] mdev: introduce virtio device and
 its device ops
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
 heiko.carstens@de.ibm.com, virtualization@lists.linux-foundation.org,
 rob.miller@broadcom.com, lulu@redhat.com, eperezma@redhat.com,
 pasic@linux.ibm.com, borntraeger@de.ibm.com, haotian.wang@sifive.com,
 farman@linux.ibm.com, idos@mellanox.com, gor@linux.ibm.com,
 cunming.liang@intel.com, xiao.w.wang@intel.com, freude@linux.ibm.com,
 parav@mellanox.com, zhihong.wang@intel.com, stefanha@redhat.com,
 akrowiak@linux.ibm.com, netdev@vger.kernel.org, cohuck@redhat.com,
 oberpar@linux.ibm.com, maxime.coquelin@redhat.com, lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwMTkvMTAvMjkg5LiL5Y2IMzo0MiwgWmh1IExpbmdzaGFuIHdyb3RlOgo+Pgo+PiArwqDC
oMKgIHZvaWQgKCpzZXRfc3RhdHVzKShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYsIHU4IHN0YXR1
cyk7Cj4KPiBIaSBKYXNvbgo+Cj4gSXMgaXQgcG9zc2libGUgdG8gbWFrZSBzZXRfc3RhdHVzKCkg
cmV0dXJuIGFuIHU4IG9yIGJvb2wsIGJlY2F1c2UgdGhpcwo+IG1heSBmYWlsIGluIHJlYWwgaGFy
ZHdhcmUuIFdpdGhvdXQgYSByZXR1cm5lZCBjb2RlLCBJIGFtIG5vdCBzdXJlwqAKPiB3aGV0aGVy
IGl0IGlzIGEgZ29vZCBpZGVhIHRvIHNldCB0aGUgc3RhdHVzIHwgTkVFRF9SRVNFVCB3aGVuIGZh
aWwuCj4KPiBUaGFua3MsCj4gQlIKPiBaaHUgTGluZ3NoYW4gCgoKSGk6CgoKSXQncyBwb3NzaWJs
ZSBidXQgSSdtIG5vdCBzdXJlIHdoZXRoZXIgYW55IHVzZXIgd2lsbCBjYXJlIGFib3V0IGl0LiBF
LmcKc2VlIHZpcnRpb19hZGRfc3RhdHVzKCk6Cgp2b2lkIHZpcnRpb19hZGRfc3RhdHVzKHN0cnVj
dCB2aXJ0aW9fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBzdGF0dXMpCnsKwqDCoMKgIG1pZ2h0
X3NsZWVwKCk7CsKgwqDCoCBkZXYtPmNvbmZpZy0+c2V0X3N0YXR1cyhkZXYsIGRldi0+Y29uZmln
LT5nZXRfc3RhdHVzKGRldikgfCBzdGF0dXMpOwp9CkVYUE9SVF9TWU1CT0xfR1BMKHZpcnRpb19h
ZGRfc3RhdHVzKTsKCkFuZCBJIGJlbGlldmUgaG93IGl0IHdvcmsgc2hvdWxkIGJlOgoKdmlydGlv
X2FkZF9zdGF0dXMoeHl6KTsKCnN0YXR1cyA9IHZpcnRpb19nZXRfc3RhdHVzKCk7CgppZiAoIShz
dGF0dXMgJiB4eXopKQoKwqDCoMKgIGVycm9yOwoKVGhhbmtzCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
