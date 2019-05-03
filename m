Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D0C1262D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 03:46:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4DC89230;
	Fri,  3 May 2019 01:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 3531 seconds by postgrey-1.36 at gabe;
 Fri, 03 May 2019 01:46:28 UTC
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99EC189230
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 01:46:28 +0000 (UTC)
Received: from fsav403.sakura.ne.jp (fsav403.sakura.ne.jp [133.242.250.102])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x430l87H085453;
 Fri, 3 May 2019 09:47:09 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav403.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav403.sakura.ne.jp);
 Fri, 03 May 2019 09:47:08 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav403.sakura.ne.jp)
Received: from [192.168.1.8] (softbank126012062002.bbtec.net [126.12.62.2])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x430l3WU085429
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Fri, 3 May 2019 09:47:08 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20190502194208.3535-1-daniel.vetter@ffwll.ch>
 <20190502204648.5537-1-daniel.vetter@ffwll.ch>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <7e4ef8c8-2def-5af9-f80e-b276fea8696a@i-love.sakura.ne.jp>
Date: Fri, 3 May 2019 09:47:03 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502204648.5537-1-daniel.vetter@ffwll.ch>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] RFC: hung_task: taint kernel
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
Cc: "Liu, Chuansheng" <chuansheng.liu@intel.com>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 LKML <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS8wNS8wMyA1OjQ2LCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IFRoZXJlJ3MgdGhlIGh1
bmdfdGFza19wYW5pYyBzeXNjdGwsIGJ1dCB0aGF0J3MgYSBiaXQgYW4gZXh0cmVtZSBtZWFzdXJl
Lgo+IEFzIGEgZmFsbGJhY2sgdGFpbnQgYXQgbGVhc3QgdGhlIG1hY2hpbmUuCj4gCj4gT3VyIENJ
IHVzZXMgdGhpcyB0byBkZWNpZGUgd2hlbiBhIHJlYm9vdCBpcyBuZWNlc3NhcnksIHBsdXMgdG8g
ZmlndXJlCj4gb3V0IHdoZXRoZXIgdGhlIGtlcm5lbCBpcyBzdGlsbCBoYXBweS4KCldoeSB5b3Vy
IENJIGNhbid0IHdhdGNoIGZvciAiYmxvY2tlZCBmb3IgbW9yZSB0aGFuIiBtZXNzYWdlIGluc3Rl
YWQgb2YKc2V0dGluZyB0aGUgdGFpbnQgZmxhZz8gSG93IGRvZXMgeW91ciBDSSBkZWNpZGUgYSBy
ZWJvb3QgaXMgbmVjZXNzYXJ5PwoKVGhlcmUgaXMgbm8gbmVlZCB0byBzZXQgdGhlIHRhaW50ZWQg
ZmxhZyB3aGVuIHNvbWUgdGFzayB3YXMganVzdCBibG9ja2VkCmZvciBhIHdoaWxlLiBJdCBtaWdo
dCBiZSBkdWUgdG8gbWVtb3J5IHByZXNzdXJlLCBpdCBtaWdodCBiZSBkdWUgdG8gc2V0dGluZwp2
ZXJ5IHNob3J0IHRpbWVvdXQgKGUuZy4gYSBmZXcgc2Vjb25kcyksIGl0IG1pZ2h0IGJlIGR1ZSB0
byBidXN5IENQVXMgZG9pbmcKc29tZXRoaW5nIGVsc2UuLi4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
