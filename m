Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B03377F9C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 11:41:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD4D46E441;
	Mon, 10 May 2021 09:41:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34FDD6E823
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 May 2021 01:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1620436236;
 bh=+UInIGR+uGT1HiFqln2P0HW+V5YTd6ogn2wqbcVDdvo=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=K1KPeCa9ja+OgZ3yBp+5lkz4iZTkDidonQi2BPsajm4vmp4E8wD15M/1vjUG05x+b
 yYh5MULageH9YXZBMS+WsgAVfyVWH2nHeyk5AuVF1rW8MKMJ9DZGSUjowSuoTbPAIe
 G4RidibdT70+uRvCP80MxDAK6twyfPDFB7j4ITpo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from hos.fritz.box ([91.39.128.24]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N6KUd-1lTh9p2l1F-016eMT; Sat, 08
 May 2021 03:10:36 +0200
Received: from afrie by hos.fritz.box with local (Exim 4.92)
 (envelope-from <afrie@gmx.net>)
 id 1lfBUH-0001IQ-Gi; Sat, 08 May 2021 03:10:33 +0200
Date: Sat, 8 May 2021 03:10:33 +0200
From: Andreas Friedrich <afrie@gmx.net>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20210508011033.GA3891@hos.afrie.home.de>
References: <20210429181450.GA25385@hos.afrie.home.de>
 <20210429235828.GZ1551@zhen-hp.sh.intel.com>
 <161977150734.8550.2371200514024347460@jlahtine-mobl.ger.corp.intel.com>
 <20210430103635.GA16501@hos.afrie.home.de>
 <162002960518.3526.10925040263559391423@jlahtine-mobl.ger.corp.intel.com>
 <20210503120050.GA16864@hos.afrie.home.de>
 <20210507235254.GA1590@hos.afrie.home.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210507235254.GA1590@hos.afrie.home.de>
X-Provags-ID: V03:K1:a6aas/AibCbr+sZduaIWsW2A/xOYboIRDX6cbXR5EunnbqviW4A
 awNhoudtqH1XuwDpIBpHBZtl6vS6jX396bS5tTg7yCMP55+oXvV3cjGSgQBB3AB9sgGI06N
 lnln+wu6OXwbUPHs/QAqXLlngW+mhNAaif5yQG8ISwIdezwcIpKUHqklIv6AIKYlqqp69tj
 aBNzaiCAvrIf1Lh1RscUQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:njkXf5tZiUI=:QSawK6FUgV51JYxxQIr1MW
 WG1anMLoAcf4BisjRAdfhPvjjhe1Rm6e5+XmmTIBkr72CMpocb6kTJJAfBfeN87eiiqc7M8Yr
 EiFhuD/9ukFVnVRorAIY539hi0qq3BjW+xxDSyD0Y74pUq9GGQPULyGvXVpJbU6AGTCd3Jtch
 VW0thwhAY/S2nhrxfDTHm/wR2NTGi42TK/gl8EdJ9kYrfVY4kLCaWhWi7mg9/959qSikXb8mX
 YXbNgCDlr+HU1q2rLf9pVqK9y0zLD/bSnc+heEYLbj40FM/Yz68vAJQ3+SpTUNQfjz9PkcD6j
 Gd0HmBmgJCVO6/eUQ8loxIgt13HOSAN0B3UWlDXFDX6PYPNoS/m2kY0pFgltns2euw3GCxiU7
 oNhgGz74kONlDsv7++kKSMYfRoR/kRrWyRMzQ+q9aDkAVpQw2YCj0ntWMPgN8OE7ID0e0dH8Y
 gjzRsMX56gIf+Al9JMJGQjyzzKPgv2Wywv9pqgU8tfJgpccuYrfo6zmZkp7Ept0FFeH1QIfjj
 uUGNdYA7Y925l3U5X8rmJNxX1bJOHb5Fv7gcH+nwBtY3MG4Cat31exZ4p5B6+2yXTMpUZ3Srv
 q0EqX+NXpHd+f5qRkBKRQ5fBhUpl2WIsPOM/AkI3Oe5skXlVmVRKfisdVHrOLLYNLVNQpegyc
 VPcVJl0SeIqxYIW2t+DWr5fuDT1UqR6v5hDW47Ue5A5L9+7s04ItND2p4+urJ10CQBxFHpsOg
 H3GKIoZB9rM+Lb0801lM9B4ghdxtek7zngHw88qrQvem5T6QjieHZZJH48FQ9Zgic7MjTlocl
 2npSDmIKL2RB2rRWeGUpxghV+N44U4A/ryUiF+nTWl0cQC0cvYlrwHF52RimsF2xW2Fkf+i6T
 +f0hPy2OVtSKpYc5vOwVMfUAiJvFKxDgExdwkeO7agHa8fhSd1+eMzP+cqgF3jmQpX+NEbDIF
 WKF8dH6x1947YPEOhCi9scOhEqzJuvQ64t0JmMl6KMVeMiE2khEVSvHwEvAgDiQyCTo3rYr3x
 BM264/xQ0OyTXYYvnFuGHc3XlPPGcf/IfwaSvyiyhOcY6cWERbuzZ4bBoXJK8TIKaKKI13bF0
 k7BUpdsXDe/fh0kNzQWqqduaOeSgJPbtadX5zvEZe7K+pO6kSFBFELaYeRsGtqAeGEPOUIX4M
 hdc9YkRer+8Ohe7+YFPPQrGUwwgBOaDgdGRb6jUYJtQ9gXDkgGiLgxHtl+7CHOZyq4ieI=
X-Mailman-Approved-At: Mon, 10 May 2021 09:41:14 +0000
Subject: Re: [Intel-gfx] REGRESSION with 5.12: Suspend not working on
 Toshiba notebook - NOT FIXED
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, May 08, 2021 at 01:52:54AM +0200, Andreas Friedrich wrote:

Hello Joonas,
...
> Fixed with 5.12.2
>   drm/i915: Disable runtime power management during shutdown,
>   commit 7962893ecb853aa7c8925ce237ab6c4274cfc1c7 upstream.

I was wrong. One of 10 suspend still hangs.

Best regards
Andreas Friedrich
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
