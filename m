Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D0B2BC701
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Nov 2020 17:33:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 597B089D30;
	Sun, 22 Nov 2020 16:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0598D89D30
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Nov 2020 16:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606062804;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eSFXaX0DZkpNbOwM/RCeF/BEd3n14fz/kurtk7pTmoY=;
 b=StCMHC/HyCDcHG808p/9thQCbNHLB97ek1T9oforhFojh55MW9LfrBZih5vkd7qgZ43dSF
 OZ3JOWRoVWjL7zUSFlP0LDpmoWD2sc3F8Zm34Dd/PaZ0RswUInINC4teeaarn0nRRR/QOI
 +dDEJjm8SJb3l7vs6UWTL1dZHykwyjY=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-KyjPv1tXP-WPwlAB5tmmkA-1; Sun, 22 Nov 2020 11:33:22 -0500
X-MC-Unique: KyjPv1tXP-WPwlAB5tmmkA-1
Received: by mail-qt1-f197.google.com with SMTP id r16so1152518qtn.19
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Nov 2020 08:33:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=eSFXaX0DZkpNbOwM/RCeF/BEd3n14fz/kurtk7pTmoY=;
 b=jCsxZTB48Il6b+dVtAQ+EgDZ2nwUotuzHgPouHyu0DTpOJwNsvwO+ghtzWdh/QJR29
 FgfqETkR5M1VdfJrE7WFJEzAuEkHXKltxxprxPzHFJ4UIlF/ohUEPYvYGoStG8GHgKrs
 dejytpVn+cqiSUxRfIyHDDdx5UbZwT9/VWpu1GFtvoKfRB1zvtvUlLTEJPqB100pAKhp
 rB3/vU8kuM0Z2Z5XOWsJXrO9NXRCvBMEbZ8/NX6kWtezkxYcRigevYo64B4RRmJhqJ4C
 Z04WgLeLKIpge3cPKcEBxVbmR5hFM/FZ3u6/qx3bbo1e7UY2kPzVpqsWcBxxW8S9i7s4
 oi3Q==
X-Gm-Message-State: AOAM532PgJj9iKu+P8BnPPeJO4M1fwR+ZL0yvSILIo6XtPgcyXW/C3Vf
 JMQp+PSHun87oHEXnDW3uavnyGiLUPWP+qVLUmYlX0pZn/bZFsuF6iIXWiFYA7U2vIZswriSiI7
 E/CuNAG+xkMcnRpI53ZIMS/psFvx+
X-Received: by 2002:a37:a783:: with SMTP id q125mr25815216qke.10.1606062801576; 
 Sun, 22 Nov 2020 08:33:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx2n++9V878KrbbQS+4X3uFT/lj12S/EG8yAhFKA6vFd9PzTR06otQkDsZPYmv5N+Hbwviu/A==
X-Received: by 2002:a37:a783:: with SMTP id q125mr25815168qke.10.1606062801138; 
 Sun, 22 Nov 2020 08:33:21 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id 9sm7113466qke.6.2020.11.22.08.33.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 Nov 2020 08:33:20 -0800 (PST)
To: Joe Perches <joe@perches.com>, clang-built-linux@googlegroups.com
References: <20201121165058.1644182-1-trix@redhat.com>
 <2105f0c05e9eae8bee8e17dcc5314474b3c0bc73.camel@perches.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <6e8c1926-4209-8f10-d0f9-72c875a85a88@redhat.com>
Date: Sun, 22 Nov 2020 08:33:16 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <2105f0c05e9eae8bee8e17dcc5314474b3c0bc73.camel@perches.com>
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
 linux-scsi@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 cluster-devel@redhat.com, linux-acpi@vger.kernel.org,
 tboot-devel@lists.sourceforge.net, coreteam@netfilter.org,
 xen-devel@lists.xenproject.org, MPT-FusionLinux.pdl@broadcom.com,
 linux-media@vger.kernel.org, alsa-devel@alsa-project.org,
 intel-gfx@lists.freedesktop.org, ecryptfs@vger.kernel.org,
 linux-omap@vger.kernel.org, devel@acpica.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDExLzIxLzIwIDk6MTAgQU0sIEpvZSBQZXJjaGVzIHdyb3RlOgo+IE9uIFNhdCwgMjAyMC0x
MS0yMSBhdCAwODo1MCAtMDgwMCwgdHJpeEByZWRoYXQuY29tIHdyb3RlOgo+PiBBIGRpZmZpY3Vs
dCBwYXJ0IG9mIGF1dG9tYXRpbmcgY29tbWl0cyBpcyBjb21wb3NpbmcgdGhlIHN1YnN5c3RlbQo+
PiBwcmVhbWJsZSBpbiB0aGUgY29tbWl0IGxvZy4gIEZvciB0aGUgb25nb2luZyBlZmZvcnQgb2Yg
YSBmaXhlciBwcm9kdWNpbmcKPj4gb25lIG9yIHR3byBmaXhlcyBhIHJlbGVhc2UgdGhlIHVzZSBv
ZiAndHJlZXdpZGU6JyBkb2VzIG5vdCBzZWVtIGFwcHJvcHJpYXRlLgo+Pgo+PiBJdCB3b3VsZCBi
ZSBiZXR0ZXIgaWYgdGhlIG5vcm1hbCBwcmVmaXggd2FzIHVzZWQuICBVbmZvcnR1bmF0ZWx5IG5v
cm1hbCBpcwo+PiBub3QgY29uc2lzdGVudCBhY3Jvc3MgdGhlIHRyZWUuCj4+Cj4+IFNvIEkgYW0g
bG9va2luZyBmb3IgY29tbWVudHMgZm9yIGFkZGluZyBhIG5ldyB0YWcgdG8gdGhlIE1BSU5UQUlO
RVJTIGZpbGUKPj4KPj4gCUQ6IENvbW1pdCBzdWJzeXN0ZW0gcHJlZml4Cj4+Cj4+IGV4LyBmb3Ig
RlBHQSBERkwgRFJJVkVSUwo+Pgo+PiAJRDogZnBnYTogZGZsOgo+IEknbSBhbGwgZm9yIGl0LiAg
R29vZCBsdWNrIHdpdGggdGhlIGVmZm9ydC4gIEl0J3Mgbm90IGNvbXBsZXRlbHkgdHJpdmlhbC4K
Pgo+IEZyb20gYSBkZWNhZGUgYWdvOgo+Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8x
Mjg5OTE5MDc3LjI4NzQxLjUwLmNhbWVsQEpvZS1MYXB0b3AvCj4KPiAoYW5kIHRoYXQgdGhyZWFk
IHN0YXJ0ZWQgd2l0aCBleHRyYSBzZW1pY29sb24gcGF0Y2hlcyB0b28pCgpSZWFkaW5nIHRoZSBo
aXN0b3J5LCBob3cgYWJvdXQgdGhpcy4KCmdldF9tYXRhaW50YWluZXIucGwgb3V0cHV0cyBhIHNp
bmdsZSBwcmVmaXgsIGlmIG11bHRpcGxlIGZpbGVzIGhhdmUgdGhlIHNhbWUgcHJlZml4IGl0IHdv
cmtzLCBpZiB0aGV5IGRvbid0IGl0cyBhbiBlcnJvci4KCkFub3RoZXIgc2NyaXB0ICdjb21taXRf
b25lX2ZpbGUuc2gnIGRvZXMgdGhlIGNhbGwgdG8gZ2V0X21haW5haW50ZXIucGwgdG8gZ2V0IHRo
ZSBwcmVmaXggYW5kIGJlIGNhbGxlZCBieSBydW4tY2xhbmctdG9vbHMucHkgdG8gZ2V0IHRoZSBm
aXhlciBzcGVjaWZpYyBtZXNzYWdlLgoKRGVmZXIgbWluaW1pemluZyB0aGUgY29tbWl0cyBieSBj
b21iaW5pbmcgc2ltaWxhciBzdWJzeXN0ZW1zIHRpbGwgbGF0ZXIuCgpJbiBhIHN0ZWFkeSBzdGF0
ZSBjYXNlLCB0aGlzIHNob3VsZCBiZSB1bmNvbW1vbi4KCgo+Cj4+IENvbnRpbnVpbmcgd2l0aCBj
bGVhbmluZyB1cCBjbGFuZydzIC1XZXh0cmEtc2VtaS1zdG10Cj4+IGRpZmYgLS1naXQgYS9NYWtl
ZmlsZSBiL01ha2VmaWxlCj4gW10KPj4gQEAgLTE1NjcsMjAgKzE1NjcsMjEgQEAgaGVscDoKPj4g
wqAJIGVjaG8gICcnCj4+IMKgCUBlY2hvICAnU3RhdGljIGFuYWx5c2VyczonCj4+IMKgCUBlY2hv
ICAnICBjaGVja3N0YWNrICAgICAgLSBHZW5lcmF0ZSBhIGxpc3Qgb2Ygc3RhY2sgaG9ncycKPj4g
wqAJQGVjaG8gICcgIHZlcnNpb25jaGVjayAgICAtIFNhbml0eSBjaGVjayBvbiB2ZXJzaW9uLmgg
dXNhZ2UnCj4+IMKgCUBlY2hvICAnICBpbmNsdWRlY2hlY2sgICAgLSBDaGVjayBmb3IgZHVwbGlj
YXRlIGluY2x1ZGVkIGhlYWRlciBmaWxlcycKPj4gwqAJQGVjaG8gICcgIGV4cG9ydF9yZXBvcnQg
ICAtIExpc3QgdGhlIHVzYWdlcyBvZiBhbGwgZXhwb3J0ZWQgc3ltYm9scycKPj4gwqAJQGVjaG8g
ICcgIGhlYWRlcmRlcCAgICAgICAtIERldGVjdCBpbmNsdXNpb24gY3ljbGVzIGluIGhlYWRlcnMn
Cj4+IMKgCUBlY2hvICAnICBjb2NjaWNoZWNrICAgICAgLSBDaGVjayB3aXRoIENvY2NpbmVsbGUn
Cj4+IMKgCUBlY2hvICAnICBjbGFuZy1hbmFseXplciAgLSBDaGVjayB3aXRoIGNsYW5nIHN0YXRp
YyBhbmFseXplcicKPj4gwqAJQGVjaG8gICcgIGNsYW5nLXRpZHkgICAgICAtIENoZWNrIHdpdGgg
Y2xhbmctdGlkeScKPj4gKwlAZWNobyAgJyAgY2xhbmctdGlkeS1maXggIC0gQ2hlY2sgYW5kIGZp
eCB3aXRoIGNsYW5nLXRpZHknCj4gQSBwaXR5IHRoZSBvcmRlcmluZyBvZiB0aGUgY29kZSBiZWxv
dyBpc24ndCB0aGUgc2FtZSBhcyB0aGUgYWJvdmUuCgpUYWtlbiBjYXJlIHRoYW5rcyEKClRvbQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
