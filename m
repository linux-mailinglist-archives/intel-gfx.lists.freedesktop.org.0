Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 092C03195FF
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 23:47:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8F06EE79;
	Thu, 11 Feb 2021 22:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE8A6EE79
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 22:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613083654;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rrr8Vpr1PrWm3e2+TXd8/x3qSksegBB4cPNSTCautaA=;
 b=VkTeXimdAxPyhHSbBVzsCAmq7tm1kqY1mwabXwM3TNSoojILJN7/8Hq316ZMyohYR4Knrr
 1Go1shw1HcdBEPfjxZELvgYWUoiZBmtZqvRSkUEemTkRCcE1KGn4Xs82POiEhl5ZUx0zvy
 AUm/vFDhpKU0uJr8GPGYZWqdeBQPLC8=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-61-Fz_wOWjDOXme5phqFXz7lw-1; Thu, 11 Feb 2021 17:47:31 -0500
X-MC-Unique: Fz_wOWjDOXme5phqFXz7lw-1
Received: by mail-qk1-f199.google.com with SMTP id f16so5715693qkk.20
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 14:47:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=rrr8Vpr1PrWm3e2+TXd8/x3qSksegBB4cPNSTCautaA=;
 b=Fdp7vsFKyYq+ialMCywfiii+XnsZMb5yVqCeY1N0PFrZTxjJpD6dD7D3XFYkcPJGgu
 T7bMNtE+UsNJLNgQereATbBUe+R4OxqBz0DhDQEInFDVH1DUH/knkbcozIUKiHuZ/SZh
 V2u/u39Yn5daShb7BepXhn1EmBJxXBZ/vE2W4t1VNFk/j84VZ8Mhi/6ZF2L9lmoLxXav
 tD37VJCbn8o/dAZ8UJNJkFCzQiYcQGsztx3KXdMueYU+QQ2GgX5hTgW1YzTnR5XmZSnd
 bygUMPR98DG56X20NZT7W0tTOKmP62o8ty9yMEhoNc6pbNTgtHCMvT0fSbjFFg73ra4a
 ekWA==
X-Gm-Message-State: AOAM533FRZhpqxZX19hoo+zMyGpU+NwHt4PUcBEm3+l16+MnxDqrC7Z+
 uWSHaI91c/eQUkX2/L9ke8dx+ZdNeEGVPr/0ZjgiQCd4nG56TRMNQNaw2kSaU3lY4VpSBpgDftO
 eZwp9SpmVlrF05MnevefY4n1eMfvU
X-Received: by 2002:a37:cd6:: with SMTP id 205mr46322qkm.73.1613083650749;
 Thu, 11 Feb 2021 14:47:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxuYQWeS7WpYtCtY9TiO04gcFwvwC0L/Q7xhkw5y3mgCBVlXQ942Vt5o6NYGAlSaFz0Y4RCRg==
X-Received: by 2002:a37:cd6:: with SMTP id 205mr46305qkm.73.1613083650558;
 Thu, 11 Feb 2021 14:47:30 -0800 (PST)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id s136sm4810987qka.106.2021.02.11.14.47.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 14:47:29 -0800 (PST)
Message-ID: <156c54a3e9af8815b2de066cc9455b8e45961561.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>, "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Thu, 11 Feb 2021 17:47:29 -0500
In-Reply-To: <0ef1186b257c4ce5bc2d4c7feadb0ef6@intel.com>
References: <20210127100830.162292-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YBH0FJolpTwO+BJG@intel.com>
 <SN6PR11MB3421882AC3045B652D2CBDC4DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
 <YBjx1O/3jeFcRPDw@intel.com> <YBj7TmOwNCqwits7@intel.com>
 <SN6PR11MB3421EAB14C44008CE72F09E6DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
 <20210202161400.GB578899@ideak-desk.fi.intel.com>
 <028439db4dce2eb73f9d796c221b6f8923f90f5f.camel@redhat.com>
 <0ef1186b257c4ce5bc2d4c7feadb0ef6@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
 suspend/resume
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
Reply-To: lyude@redhat.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTAyLTEwIGF0IDA0OjMzICswMDAwLCBHdXB0YSwgQW5zaHVtYW4gd3JvdGU6
Cj4gTXkgc2luY2VyZSBhcG9sb2d5LCBJIGhhZCBtaXNzZWQgdGhpcyB0aHJlYWQuCgpObyBwcm9i
bGVtISBIYXBwZW5zIGFsbCB0aGUgdGltZSB0byBtZSA6KQoKPiBXZSBoYXZlIGRlY2lkZWQgdG8g
a2VlcCB0aGUgYWx0ZXJuYXRpdmUgV0EgaS5lwqAgc2V0dGluZy9jbGVhcmluZyAweEMyMDAwIGJp
dAo+ICM3IAo+IGJlZm9yZSBlbnRlcmluZyBhZnRlciBleGl0aW5nIHMwaXggdG8gZml4IHRoZSBk
ZWVwZXIgczBpeCBwb3dlciBjb25zdW1wdGlvbgo+IGlzc3VlcyBvbiBJQ0xfUENICj4gZmFtaWxp
ZXMgcGxhdGZvcm1zLiBUaGlzIGFsdGVybmF0aXZlIFdBwqAgd2FzIGFkZGVkIHRvIEIuU3BlYyBv
biBvdXIgcmVxdWVzdC4KPiBCdXQgb24gVEdMX1BDSCBmaXJzdCBhbHRlcm5hdGl2ZSBXQSBsb2dp
YyBpLmXCoCBpbiBpcnFfcmVzZXQoKSB3YXMgd29ya2luZyB0bwo+IGF0dGFpbiBkZWVwZXIgczBp
eCByZXNpZGVuY2llcyBzbwo+IHdlIGhhdmVuJ3QgY2hhbmdlZCB0aGF0LgoKQXdlc29tZSwgdGhh
bmtzIGZvciB0aGUgaW5mbyEKCi0tIApTaW5jZXJlbHksCiAgIEx5dWRlIFBhdWwgKHNoZS9oZXIp
CiAgIFNvZnR3YXJlIEVuZ2luZWVyIGF0IFJlZCBIYXQKICAgCk5vdGU6IEkgZGVhbCB3aXRoIGEg
bG90IG9mIGVtYWlscyBhbmQgaGF2ZSBhIGxvdCBvZiBidWdzIG9uIG15IHBsYXRlLiBJZiB5b3Un
dmUKYXNrZWQgbWUgYSBxdWVzdGlvbiwgYXJlIHdhaXRpbmcgZm9yIGEgcmV2aWV3L21lcmdlIG9u
IGEgcGF0Y2gsIGV0Yy4gYW5kIEkKaGF2ZW4ndCByZXNwb25kZWQgaW4gYSB3aGlsZSwgcGxlYXNl
IGZlZWwgZnJlZSB0byBzZW5kIG1lIGFub3RoZXIgZW1haWwgdG8gY2hlY2sKb24gbXkgc3RhdHVz
LiBJIGRvbid0IGJpdGUhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
