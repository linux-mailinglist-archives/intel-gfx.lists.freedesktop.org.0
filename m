Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5AF38F687
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 01:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E9A96E429;
	Mon, 24 May 2021 23:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D98686E429
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 23:52:48 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id w33so35143093lfu.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 16:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:content-transfer-encoding:cc:in-reply-to:references
 :from:to:subject:date:message-id:user-agent;
 bh=Bv+iT1d6XXjk5XsKYADcBOul8rjTXVc2//hAleRHN/o=;
 b=vinyRR9LKFgriLi/CDIov3G1nu8qHQnv6kQAhNhqtfy4S/YHVF0nDJ46hdsq/LzyK2
 io9h/0+9y6vfFLi9d28wBCiYNOgspHxaiolkgVsQ8pTBTcpsh3aGVVQBmsDaReF9EKS9
 LQB+iz48yphz1AXarDGT9iG2QL7ayuzsZBTyyigl1oi1sOI8xbRh+gv/g2n9gsUcR/o7
 1g3SWH2DBRQIbkzrOj9aRYZaB4F18xM9dXBEbKDwBvI5fkYw0s4UGeFatHh+XnmrobbU
 u2WzE83pTvEf+7zMHWS7ALiZ9eLg7AQUQsslzKIqrLtoOmsr+FGkU4JzU0dA9gCoDzat
 XzIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding:cc
 :in-reply-to:references:from:to:subject:date:message-id:user-agent;
 bh=Bv+iT1d6XXjk5XsKYADcBOul8rjTXVc2//hAleRHN/o=;
 b=J9SIp6Sbk0MB6qHJ8WAJRouJuAbBiM37g3tkyn081DU3FXlroe5JP7zYOrZ6SPruBO
 ALcOE5jbxlGJDDYxshygv9YWp5Y1bgEIH5cCqMFpZUVvf7aGue6QfoNVsH1XbaB/AceL
 8aTIQfr0ym5m9Q8wvHAmqssFlR45M2xWRNE620Wmvz/11MWdk+HnNV6Gss+egDI3I6n6
 yBRtJBSo/VZx/9jgiqv8b/lpTI/VQ0iZnNXe/RICOgJJ71MV4eHEcY9/noc/iYylSkZB
 tzBH207n7RNBQFgaGz3ZPDEV2KDWsPAp2nfnNWtH7u1OR4fobdS1H95MYqQLQNb4IbUe
 a9cA==
X-Gm-Message-State: AOAM532G4nkHXgvuQnqEYOMqknehqlOBviYCw8/GlroP1MVFnEXi8ooV
 AuRYcD0X5oaotF9ULpw9sZpo3Q==
X-Google-Smtp-Source: ABdhPJzfvTGdNAkkR71WH7mcKKLVtiGCi3h2CwpYWC5p2Qtf3B1mC9f45PYqJX/xA7ZZp8a2mxPWYw==
X-Received: by 2002:a19:c747:: with SMTP id x68mr12087861lff.516.1621900367120; 
 Mon, 24 May 2021 16:52:47 -0700 (PDT)
Received: from localhost (host-109-233-88-83.jmdi.pl. [109.233.88.83])
 by smtp.gmail.com with ESMTPSA id p2sm1546084lfh.31.2021.05.24.16.52.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 May 2021 16:52:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20210506191451.77768-9-matthew.brost@intel.com>
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <20210506191451.77768-9-matthew.brost@intel.com>
From: =?utf-8?q?Micha=C5=82?= Winiarski <michal@hardline.pl>
To: Matthew Brost <matthew.brost@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 25 May 2021 01:52:44 +0200
Message-ID: <162190036494.39241.3181852486794252116@macragge.ultramar.hardline.pl>
User-Agent: alot/0.9.1
Subject: Re: [Intel-gfx] [RFC PATCH 08/97] drm/i915/guc: Keep strict GuC ABI
 definitions
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEJyb3N0ICgyMDIxLTA1LTA2IDIxOjEzOjIyKQo+IEZyb206IE1pY2hh
bCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IAo+IE91ciBmd2lmLmgg
ZmlsZSBpcyBub3cgbWl4IG9mIHN0cmljdCBmaXJtd2FyZSBBQkkgZGVmaW5pdGlvbnMgYW5kCj4g
c2V0IG9mIG91ciBoZWxwZXJzLiBJbiBhbnRpY2lwYXRpb24gb2YgdXBjb21pbmcgY2hhbmdlcyB0
byB0aGUgR3VDCj4gaW50ZXJmYWNlIHRyeSB0byBrZWVwIHRoZW0gc2VwYXJhdGUgaW4gc21hbGxl
ciBtYWludGFpbmFibGUgZmlsZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3pr
byA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBC
cm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+Cj4gQ2M6IE1pY2hhxYIgV2luaWFyc2tpIDxt
aWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBNaWNoYcWCIFdpbmlhcnNr
aSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+CgotTWljaGHFggoKPiAtLS0KPiAgLi4uL2dw
dS9kcm0vaTkxNS9ndC91Yy9hYmkvZ3VjX2FjdGlvbnNfYWJpLmggIHwgIDUxICsrKysrCj4gIC4u
Li9ndC91Yy9hYmkvZ3VjX2NvbW11bmljYXRpb25fY3RiX2FiaS5oICAgICB8IDEwNiArKysrKysr
KysKPiAgLi4uL2d0L3VjL2FiaS9ndWNfY29tbXVuaWNhdGlvbl9tbWlvX2FiaS5oICAgIHwgIDUy
ICsrKysrCj4gIC4uLi9ncHUvZHJtL2k5MTUvZ3QvdWMvYWJpL2d1Y19lcnJvcnNfYWJpLmggICB8
ICAxNCArKwo+ICAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2FiaS9ndWNfbWVzc2FnZXNfYWJpLmgg
fCAgMjEgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3aWYuaCAg
IHwgMjAzICstLS0tLS0tLS0tLS0tLS0tLQo+ICA2IGZpbGVzIGNoYW5nZWQsIDI1MCBpbnNlcnRp
b25zKCspLCAxOTcgZGVsZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9hYmkvZ3VjX2FjdGlvbnNfYWJpLmgKPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2FiaS9ndWNfY29tbXVuaWNhdGlvbl9jdGJf
YWJpLmgKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2Fi
aS9ndWNfY29tbXVuaWNhdGlvbl9tbWlvX2FiaS5oCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9hYmkvZ3VjX2Vycm9yc19hYmkuaAo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvYWJpL2d1Y19tZXNzYWdlc19hYmku
aApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
