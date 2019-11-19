Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFF5101168
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 03:42:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFCD06E86F;
	Tue, 19 Nov 2019 02:42:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97EF26E86C
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 02:42:11 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-329-4cOlU2tvMXC5DECDNT46wg-1; Mon, 18 Nov 2019 21:42:09 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4EFF91005500;
 Tue, 19 Nov 2019 02:42:03 +0000 (UTC)
Received: from [10.72.12.132] (ovpn-12-132.pek2.redhat.com [10.72.12.132])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8EBE087C4;
 Tue, 19 Nov 2019 02:41:33 +0000 (UTC)
To: Jason Gunthorpe <jgg@mellanox.com>, "Michael S. Tsirkin" <mst@redhat.com>
References: <20191118105923.7991-1-jasowang@redhat.com>
 <20191118105923.7991-5-jasowang@redhat.com>
 <20191118134056.GJ3873@mellanox.com>
 <20191118152642-mutt-send-email-mst@kernel.org>
 <20191118202843.GN3873@mellanox.com>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <a09f528f-cfca-69cf-4728-91ff33c5caa7@redhat.com>
Date: Tue, 19 Nov 2019 10:41:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191118202843.GN3873@mellanox.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: 4cOlU2tvMXC5DECDNT46wg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1574131330;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IUiYCybqdPHUAVmdenBaFfgHEX9iWoqNrPMKM7zZuNU=;
 b=UKo8dy1QDrvaCTeUE8gQqu73nWLm1AhjvgJoKD9F9M1FZbuuz3USbpptWmF8EiUSzuzpP4
 sh3RHlZgSfwQQ+XpJ5T6b4m8l0H0OF7ds+lDh67GSTKdXrfMYqOteYsU9obj38C/DVZnAW
 xOU5se2wbxmO0D4Kv2tgiSaxxWbZksA=
Subject: Re: [Intel-gfx] [PATCH V13 4/6] mdev: introduce mediated virtio bus
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
Cc: "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "christophe.de.dinechin@gmail.com" <christophe.de.dinechin@gmail.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, "airlied@linux.ie" <airlied@linux.ie>,
 "heiko.carstens@de.ibm.com" <heiko.carstens@de.ibm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "oberpar@linux.ibm.com" <oberpar@linux.ibm.com>,
 "kwankhede@nvidia.com" <kwankhede@nvidia.com>,
 "rob.miller@broadcom.com" <rob.miller@broadcom.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "sebott@linux.ibm.com" <sebott@linux.ibm.com>,
 "lulu@redhat.com" <lulu@redhat.com>,
 "eperezma@redhat.com" <eperezma@redhat.com>,
 "pasic@linux.ibm.com" <pasic@linux.ibm.com>,
 "borntraeger@de.ibm.com" <borntraeger@de.ibm.com>,
 "haotian.wang@sifive.com" <haotian.wang@sifive.com>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "cunming.liang@intel.com" <cunming.liang@intel.com>,
 "farman@linux.ibm.com" <farman@linux.ibm.com>,
 Parav Pandit <parav@mellanox.com>, "gor@linux.ibm.com" <gor@linux.ibm.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "xiao.w.wang@intel.com" <xiao.w.wang@intel.com>,
 "freude@linux.ibm.com" <freude@linux.ibm.com>,
 "stefanha@redhat.com" <stefanha@redhat.com>,
 "zhihong.wang@intel.com" <zhihong.wang@intel.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "akrowiak@linux.ibm.com" <akrowiak@linux.ibm.com>,
 "aadam@redhat.com" <aadam@redhat.com>, Jiri Pirko <jiri@mellanox.com>,
 "tiwei.bie@intel.com" <tiwei.bie@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "cohuck@redhat.com" <cohuck@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "maxime.coquelin@redhat.com" <maxime.coquelin@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "lingshan.zhu@intel.com" <lingshan.zhu@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwMTkvMTEvMTkg5LiK5Y2INDoyOCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOgo+IE9uIE1v
biwgTm92IDE4LCAyMDE5IGF0IDAzOjI3OjEzUE0gLTA1MDAsIE1pY2hhZWwgUy4gVHNpcmtpbiB3
cm90ZToKPj4gT24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgMDE6NDE6MDBQTSArMDAwMCwgSmFzb24g
R3VudGhvcnBlIHdyb3RlOgo+Pj4gT24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgMDY6NTk6MjFQTSAr
MDgwMCwgSmFzb24gV2FuZyB3cm90ZToKPj4+PiArc3RydWN0IGJ1c190eXBlIG1kZXZfdmlydGlv
X2J1c190eXBlOwo+Pj4+ICsKPj4+PiArc3RydWN0IG1kZXZfdmlydGlvX2RldmljZSB7Cj4+Pj4g
KwlzdHJ1Y3QgbWRldl9kZXZpY2UgbWRldjsKPj4+PiArCWNvbnN0IHN0cnVjdCBtZGV2X3ZpcnRp
b19vcHMgKm9wczsKPj4+PiArCXUxNiBjbGFzc19pZDsKPj4+PiArfTsKPj4+IFRoaXMgc2VlbXMg
dG8gc2hhcmUgbm90aGluZyB3aXRoIG1kZXYgKGllIG1kZXYtdmZpbyksIHdoeSBpcyBpdCBvbiB0
aGUKPj4+IHNhbWUgYnVzPwo+PiBJIG11c3QgYmUgbWlzc2luZyBzb21ldGhpbmcgLSB3aGljaCBi
dXMgZG8gdGhleSBzaGFyZT8KPiBtZGV2X2J1c190eXBlID8KPgo+IEphc29uCgoKTm90ZTogdmly
dGlvIGhhcyBpdHMgb3duIGJ1czogbWRldl92aXJ0aW9fYnVzX3R5cGUuIFNvIHRoZXkgYXJlIG5v
dCB0aGUgCnNhbWUgYnVzLgoKVGhhbmtzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
