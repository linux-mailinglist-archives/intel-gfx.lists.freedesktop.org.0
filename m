Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 564EC23EA9F
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:42:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D1C6E9A7;
	Fri,  7 Aug 2020 09:42:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 531 seconds by postgrey-1.36 at gabe;
 Fri, 07 Aug 2020 09:42:45 UTC
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E90256E9A7
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 09:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds201912;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dhBn85DVkd9WiwzdeA0ZAk87Jr2Z06qRR9qaDjfK2Q0=; b=m+PWgSDl91eMGK8rvIUKM0yLbY
 BTtvVt7GHjbFDWuiAwCew1o4DpGo0X5EvPmAu5NoF3KVa/WrJcno0rE7yU1ZuLLtdori78nG3MTCt
 /b8lIQ2wjTrAa0IiTxbfflVOoB7ItTWH5BtnD5ca03DmpWO/VJDk2VuV869dshjYbkabO+gvNdp24
 JWObB1zbNo/5PI0p3ZVDSwL/BO7R7V/6mJxK0CCdbPFRQbzPeg7iUN/yZAnyl20Pngs2xjN3NmTPy
 zdQzdFT7BoYqEc5G2bz0PhPFH2d51HiC/khBGUEla9ZiuFb88uEbH9k/urcGwnv8sV65Q7rLD6Dvg
 5yexQLUA==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:52994
 helo=[192.168.10.61])
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1k3yl5-0001BT-1d; Fri, 07 Aug 2020 11:33:51 +0200
To: Oleksandr Andrushchenko <andr2000@gmail.com>,
 xen-devel@lists.xenproject.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, boris.ostrovsky@oracle.com, jgross@suse.com,
 airlied@linux.ie, daniel@ffwll.ch
References: <20200731125109.18666-1-andr2000@gmail.com>
 <20200731125109.18666-6-andr2000@gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <a8930c22-756f-0fc9-6288-8945a058764e@tronnes.org>
Date: Fri, 7 Aug 2020 11:33:49 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200731125109.18666-6-andr2000@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/xen-front: Pass dumb buffer data
 offset to the backend
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
Cc: intel-gfx@lists.freedesktop.org, sstabellini@kernel.org,
 dan.carpenter@oracle.com,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpEZW4gMzEuMDcuMjAyMCAxNC41MSwgc2tyZXYgT2xla3NhbmRyIEFuZHJ1c2hjaGVua286Cj4g
RnJvbTogT2xla3NhbmRyIEFuZHJ1c2hjaGVua28gPG9sZWtzYW5kcl9hbmRydXNoY2hlbmtvQGVw
YW0uY29tPgo+IAo+IFdoaWxlIGltcG9ydGluZyBhIGRtYWJ1ZiBpdCBpcyBwb3NzaWJsZSB0aGF0
IHRoZSBkYXRhIG9mIHRoZSBidWZmZXIKPiBpcyBwdXQgd2l0aCBvZmZzZXQgd2hpY2ggaXMgaW5k
aWNhdGVkIGJ5IHRoZSBTR1Qgb2Zmc2V0Lgo+IFJlc3BlY3QgdGhlIG9mZnNldCB2YWx1ZSBhbmQg
Zm9yd2FyZCBpdCB0byB0aGUgYmFja2VuZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBPbGVrc2FuZHIg
QW5kcnVzaGNoZW5rbyA8b2xla3NhbmRyX2FuZHJ1c2hjaGVua29AZXBhbS5jb20+Cj4gLS0tCgpB
Y2tlZC1ieTogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
