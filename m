Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 713BA3143C2
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 00:28:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDCCB6EA1F;
	Mon,  8 Feb 2021 23:28:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D50B6EA1F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 23:28:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23816764-1500050 for multiple; Mon, 08 Feb 2021 23:27:38 +0000
MIME-Version: 1.0
In-Reply-To: <fe6040b5-72a0-9882-439e-ea7fc0b3935d@redhat.com>
References: <fe6040b5-72a0-9882-439e-ea7fc0b3935d@redhat.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, stable@vger.kernel.org
Date: Mon, 08 Feb 2021 23:27:38 +0000
Message-ID: <161282685855.9448.10484374241892252440@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [5.10.y regression] i915 clear-residuals mitigation
 is causing gfx issues
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Hans de Goede (2021-02-08 20:38:58)
> Hi All,
> 
> We (Fedora) have been receiving reports from multiple users about gfx issues / glitches
> stating with 5.10.9. All reporters are users of Ivy Bridge / Haswell iGPUs and all
> reporters report that adding i915.mitigations=off to the cmdline fixes things, see:

I tried to reproduce this on the w/e on hsw-gt1, to no avail; and piglit
did not report any differences with and without mitigations. I have yet
to test other platforms. So I don't yet have an alternative. Though note
that v5.11 and v5.12 will behave similarly, so we need to urgently find
a fix for Linus's tree anyway.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
