Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 071A02BC6A9
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Nov 2020 17:11:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E0189D42;
	Sun, 22 Nov 2020 16:11:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28A4389D49
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Nov 2020 16:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606061463;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=D4o3+oRulyAmQWJaTM5GlynW0/tmbkOzx3PzhPB5iTg=;
 b=JuTdFtHhsclSCFUt685nObhejVSN718q0xDzBI7qCmYl4/ObRaglwiPh1kkjwftUYKtjGT
 F9V7hg+6Ged1Ypc78HlKhU8yURVG+HfY97vOU+FDQTH2+EktMkCoujoBzuPIEBmLFdUcTH
 U0gcN5s+aBBBeO3IQtZ/9hGSdS8be9I=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-Wguv1KwmOuOHc7PwbuSEoQ-1; Sun, 22 Nov 2020 11:11:00 -0500
X-MC-Unique: Wguv1KwmOuOHc7PwbuSEoQ-1
Received: by mail-qt1-f200.google.com with SMTP id n12so11727522qta.9
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Nov 2020 08:10:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=D4o3+oRulyAmQWJaTM5GlynW0/tmbkOzx3PzhPB5iTg=;
 b=DREhnYEKzSQILYE26lR23oG/gPuxeBWZWhKMXYZVz6AbHxx0j4W8JcLzgj8HSfrCJr
 kiBsdxkOxzoye5H6uiUZZbh/uqG0XG3T8lemCisBgcEuoZ54kydvabSXmk548jE1Glu9
 9+XvTTp0uB7QRx4cWUTL9iRk8LP2aH95Q1Pp4pIsfd+GbdDfi85PYIv/YgSc176ETFlD
 iVEtmVfq7ldLOClBMwnT7SaDalbVKocw6QVdSSyMJC33XwVkf9lVdIf9ej2ZH2+kD1fS
 F94bunZZzAY1mykqz1RM+rBLu875aEWCXMfCWoKlKsWZBqn58HmVm2f+o8VkeLnoNJil
 wYoA==
X-Gm-Message-State: AOAM532h0ZzhV5UpfohgaLyL9995uUbYZP0zjuax2RQR3HIyo3GLVjCO
 1ISY6brdG85ud4FsERSDMB7mNA6jzWdvo/+UtmHpBWC+/DnxbaifM0psQIlqcrceQn0i5DAYQ6I
 JSSm4q6mzrpQfHJNdv9bgeIsjqmfC
X-Received: by 2002:ac8:5a8c:: with SMTP id c12mr23364790qtc.97.1606061459262; 
 Sun, 22 Nov 2020 08:10:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw6JfmMkGlJyoaKx6ihYsYbDuDsWkyDwIosiC/apv5eylMrcIvHPxlHVgnFDCnun9WXh4UZ3w==
X-Received: by 2002:ac8:5a8c:: with SMTP id c12mr23364770qtc.97.1606061458997; 
 Sun, 22 Nov 2020 08:10:58 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id l3sm2779806qth.13.2020.11.22.08.10.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 Nov 2020 08:10:58 -0800 (PST)
To: Matthew Wilcox <willy@infradead.org>
References: <20201121165058.1644182-1-trix@redhat.com>
 <20201122032304.GE4327@casper.infradead.org>
 <ddb08a27-3ca1-fb2e-d51f-4b471f1a56a3@redhat.com>
 <20201122145635.GG4327@casper.infradead.org>
From: Tom Rix <trix@redhat.com>
Message-ID: <0819ce06-c462-d4df-d3d9-14931dc5aefc@redhat.com>
Date: Sun, 22 Nov 2020 08:10:53 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201122145635.GG4327@casper.infradead.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC] MAINTAINERS tag for cleanup robot
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
Cc: linux-hyperv@vger.kernel.org, kvm@vger.kernel.org,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-scsi@vger.kernel.org, clang-built-linux@googlegroups.com,
 amd-gfx@lists.freedesktop.org, cluster-devel@redhat.com,
 linux-acpi@vger.kernel.org, tboot-devel@lists.sourceforge.net,
 coreteam@netfilter.org, xen-devel@lists.xenproject.org,
 MPT-FusionLinux.pdl@broadcom.com, linux-media@vger.kernel.org,
 alsa-devel@alsa-project.org, intel-gfx@lists.freedesktop.org,
 ecryptfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-omap@vger.kernel.org, devel@acpica.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com, joe@perches.com,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDExLzIyLzIwIDY6NTYgQU0sIE1hdHRoZXcgV2lsY294IHdyb3RlOgo+IE9uIFN1biwgTm92
IDIyLCAyMDIwIGF0IDA2OjQ2OjQ2QU0gLTA4MDAsIFRvbSBSaXggd3JvdGU6Cj4+IE9uIDExLzIx
LzIwIDc6MjMgUE0sIE1hdHRoZXcgV2lsY294IHdyb3RlOgo+Pj4gT24gU2F0LCBOb3YgMjEsIDIw
MjAgYXQgMDg6NTA6NThBTSAtMDgwMCwgdHJpeEByZWRoYXQuY29tIHdyb3RlOgo+Pj4+IFRoZSBm
aXhlciByZXZpZXcgaXMKPj4+PiBodHRwczovL3Jldmlld3MubGx2bS5vcmcvRDkxNzg5Cj4+Pj4K
Pj4+PiBBIHJ1biBvdmVyIGFsbHllc2NvbmZpZyBmb3IgeDg2XzY0IGZpbmRzIDYyIGlzc3Vlcywg
NSBhcmUgZmFsc2UgcG9zaXRpdmVzLgo+Pj4+IFRoZSBmYWxzZSBwb3NpdGl2ZXMgYXJlIGNhdXNl
ZCBieSBtYWNyb3MgcGFzc2VkIHRvIG90aGVyIG1hY3JvcyBhbmQgYnkKPj4+PiBzb21lIG1hY3Jv
IGV4cGFuc2lvbnMgdGhhdCBkaWQgbm90IGhhdmUgYW4gZXh0cmEgc2VtaWNvbG9uLgo+Pj4+Cj4+
Pj4gVGhpcyBjbGVhbnMgdXAgYWJvdXQgMSwwMDAgb2YgdGhlIGN1cnJlbnQgMTAsMDAwIC1XZXh0
cmEtc2VtaS1zdG10Cj4+Pj4gd2FybmluZ3MgaW4gbGludXgtbmV4dC4KPj4+IEFyZSBhbnkgb2Yg
dGhlbSBub3QgZmFsc2UtcG9zaXRpdmVzPyAgSXQncyBhbGwgdmVyeSB3ZWxsIHRvIGVuYWJsZQo+
Pj4gc3RyaWN0ZXIgd2FybmluZ3MsIGJ1dCBpZiB0aGV5IGRvbid0IGZpeCBhbnkgYnVncywgdGhl
eSdyZSBqdXN0IGNodXJuLgo+Pj4KPj4gV2hpbGUgZW5hYmxpbmcgYWRkaXRpb25hbCB3YXJuaW5n
cyBtYXkgYmUgYSBzaWRlIGVmZmVjdCBvZiB0aGlzIGVmZm9ydAo+Pgo+PiB0aGUgcHJpbWFyeSBn
b2FsIGlzIHRvIHNldCB1cCBhIGNsZWFuaW5nIHJvYm90LiBBZnRlciB0aGF0IGEgcmVmYWN0b3Jp
bmcgcm9ib3QuCj4gV2h5IGRvIHdlIG5lZWQgc3VjaCBhIHRoaW5nPyAgQWdhaW4sIGl0IHNvdW5k
cyBsaWtlIG1vcmUgY2h1cm4uCj4gSXQncyByZWFsbHkgYW5ub3lpbmcgd2hlbiBJJ20gd29ya2lu
ZyBvbiBzb21ldGhpbmcgaW1wb3J0YW50IHRoYXQgZ2V0cwo+IGRlcmFpbGVkIGJ5IHBvaW50bGVz
cyBjaHVybi4gIENodXJuIGFsc28gbWFrZXMgaXQgaGFyZGVyIHRvIGJhY2twb3J0Cj4gcGF0Y2hl
cyB0byBlYXJsaWVyIGtlcm5lbHMuCj4KQSByZWZhY3RvcmluZyBleGFtcGxlIG9uIG1vdmluZyB0
byB0cmVld2lkZSwgY29uc2lzdGVudCB1c2Ugb2YgYSBuZXcgYXBpIG1heSBoZWxwLgoKQ29uc2lk
ZXIKCjJlZmM0NTlkMDZmMTYzMDAwMWUzOTg0ODU0ODQ4YTU2NDcwODYyMzIKCnN5c2ZzOiBBZGQg
c3lzZnNfZW1pdCBhbmQgc3lzZnNfZW1pdF9hdCB0byBmb3JtYXQgc3lzZnMgb3V0cHV0CgpBIG5l
dyBhcGkgZm9yIHByaW50aW5nIGluIHRoZSBzeXNmcy7CoCBIb3cgZG8gd2UgdXNlIGl0IHRyZWV3
aWRlID8KCkRvbmUgbWFudWFsbHksIGl0IHdvdWxkIGJlIGEgaGVyb2ljIGVmZm9ydCByZXF1aXJp
bmcgaGlnaCBsZXZlbCBtYWludGFpbmVycyBwdXNoaW5nIGFuZCBsaWtlbHkgb25seSBnZXQgcGFy
dGlhbGx5IGRvbmUuCgpJZiBhIHJlZmFjdG9yaW5nIHByb2dyYW1hdGljIGZpeGl0IGlzIGRvbmUg
YW5kIHZhbGlkYXRlZCBvbiBhIG9uZSBzdWJzeXN0ZW0sIGl0IGNhbiBydW4gb24gYWxsIHRoZSBz
dWJzeXN0ZW1zLgoKVGhlIGVmZm9ydCBpcyBhIGNvdXBsZSBvZiB3ZWVrcyB0byB3cml0ZSBhbmQg
dmFsaWRhdGUgdGhlIGZpeGVyLCBob3VycyB0byBydW4gb3ZlciB0aGUgdHJlZS4KCkl0IHdvbid0
IGJlIHBlcmZlY3QgYnV0IHdpbGwgYmUgYmV0dGVyIHRoYW4gZG9pbmcgaXQgbWFudWFsbHkuCgpU
b20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
