Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3ED24ACA0
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 03:29:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADAE16E0EE;
	Thu, 20 Aug 2020 01:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 231D76E0EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 01:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=xaxXqdpS74cNSxj/Y2sXvNlljNTwknRKu7QvddkLfLA=; b=UUz5F/Mc0CbqbCyNIdyMjR7wp7
 xdTuaZwdsoOOEoWJppFlFJgD+XLSaPL74RPdduDeqkWSUrsmr9NbTRvB7dPxnkSL7SmSfubfIAbhD
 Y48CYkVzhE5WR4izzualSGIt8d1WZ8+wVMgF2eZr4AJb9it61gkZHcM+kghxQAtut0CFmEtJE5FTI
 hkseCTrx/SULPTuBWO+m3LmiAW/yUqXpeKwBb4RZbqe+Xu/D9ST17120ooaSzCA/qt16OCD+NCEGh
 QWv8ZzaEDFiNUzU6AFHTjbXiXfpzDr/oic+8P64LKe85xG6rR+3neXqtkUs2PNjudC2uxK6H9D7+H
 qM0kqSlQ==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1k8ZOc-0006qY-Bn
 for intel-gfx@lists.freedesktop.org; Thu, 20 Aug 2020 01:29:38 +0000
Date: Thu, 20 Aug 2020 02:29:38 +0100
From: Matthew Wilcox <willy@infradead.org>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200820012938.GK17456@casper.infradead.org>
References: <20200819184850.24779-1-willy@infradead.org>
 <159786536403.23598.3689667945091435003@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159786536403.23598.3689667945091435003@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?eturn_head_pages_from_find=5Fget=5Fentry_and_find=5Flock=5Fentr?=
 =?utf-8?q?y_=28rev2=29?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMTksIDIwMjAgYXQgMDc6Mjk6MjRQTSAtMDAwMCwgUGF0Y2h3b3JrIHdyb3Rl
Ogo+ID09IFNlcmllcyBEZXRhaWxzID09Cj4gCj4gU2VyaWVzOiBSZXR1cm4gaGVhZCBwYWdlcyBm
cm9tIGZpbmRfZ2V0X2VudHJ5IGFuZCBmaW5kX2xvY2tfZW50cnkgKHJldjIpCj4gVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzgwODE4Lwo+IFN0YXRlIDog
ZmFpbHVyZQo+IAo+ID09IFN1bW1hcnkgPT0KPiAKPiBDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNj
YWxscy5zaAo+ICAgQ0FMTCAgICBzY3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoCj4gICBE
RVNDRU5EICBvYmp0b29sCj4gICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVkL2NvbXBpbGUuaAo+
ICAgQ0MgICAgICBtbS9tZW1jb250cm9sLm8KPiBtbS9tZW1jb250cm9sLmM6IEluIGZ1bmN0aW9u
IOKAmG1jX2hhbmRsZV9maWxlX3B0ZeKAmToKPiBtbS9tZW1jb250cm9sLmM6NTU0ODo5OiBlcnJv
cjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYZmluZF9nZXRfc3dhcF9wYWdl
4oCZOyBkaWQgeW91IG1lYW4g4oCYZ2V0X3N3YXBfcGFnZeKAmT8gWy1XZXJyb3I9aW1wbGljaXQt
ZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gICByZXR1cm4gZmluZF9nZXRfc3dhcF9wYWdlKHZtYS0+
dm1fZmlsZS0+Zl9tYXBwaW5nLAo+ICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fgo+ICAgICAg
ICAgIGdldF9zd2FwX3BhZ2UKPiBtbS9tZW1jb250cm9sLmM6NTU0ODo5OiB3YXJuaW5nOiByZXR1
cm4gbWFrZXMgcG9pbnRlciBmcm9tIGludGVnZXIgd2l0aG91dCBhIGNhc3QgWy1XaW50LWNvbnZl
cnNpb25dCj4gICByZXR1cm4gZmluZF9nZXRfc3dhcF9wYWdlKHZtYS0+dm1fZmlsZS0+Zl9tYXBw
aW5nLAo+ICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn4KPiAgICAgbGluZWFyX3BhZ2VfaW5kZXgodm1hLCBhZGRyKSk7Cj4gICAgIH5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+Cj4gY2MxOiBzb21lIHdhcm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMg
ZXJyb3JzCgpUaGlzIGRvZXNuJ3QgbWFrZSBzZW5zZS4gIERhdmUgQWlybGllIHBvaW50ZWQgbWUg
YXQgd2hhdCBoZSBiZWxpZXZlcyB0bwpiZSB0aGUgY29uZmlnIGZpbGUgdXNlZCBbMV0gYW5kIEkg
Y2FuJ3QgcmVwcm9kdWNlIGl0LiAgSXMgaXQgcG9zc2libGUKdGhlIGJ1aWxkLWJvdCBhcHBsaWVk
IG9ubHkgMi84IGFuZCBub3QgMS84PwoKWzFdIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9nZngtY2kvaTkxNS1pbmZyYS8tL2Jsb2IvbWFzdGVyL2tjb25maWcvZGVidWcKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
