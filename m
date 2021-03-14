Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D2F343C50
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 10:10:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE53389DC7;
	Mon, 22 Mar 2021 09:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D29C89F55
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Mar 2021 10:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1615717813;
 bh=bU4lPCqu2GZT9PWfQVMXtMOJiLDOK+tw1FmlaIjSoPs=;
 h=X-UI-Sender-Class:Subject:From:To:Date;
 b=ks69f66wQNPuyJGFmJyR9bqnEGJzrslSjJLN7WybbHChKNoXFikO57ZmzGeBkCCoP
 gnzY0/QebRKNL5XhiT9rilE43UkLNHmTJjd6CwRDpaWkPViAwXMiK/uxSpvtAPmg9f
 /J2aychO416Tayuv4jmGzN9Nn5hN5wigh/E5UTEM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.4] ([84.157.29.67]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N7iCg-1lqVq30uP4-014oeq for
 <intel-gfx@lists.freedesktop.org>; Sun, 14 Mar 2021 11:30:13 +0100
Message-ID: <28b8cfd3f29d3e5ed4224c687ef173d6c45e028d.camel@gmx.net>
From: Mario =?ISO-8859-1?Q?H=FCttel?= <mario.huettel@gmx.net>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 14 Mar 2021 11:30:12 +0100
User-Agent: Evolution 3.38.4 
MIME-Version: 1.0
X-Provags-ID: V03:K1:WG0wwccSBzEh3BBqmVA3Yi4Ua9BnVPqwaOTK1IMCu261+GIDsNF
 naB64HlK/uKSGFCEeuzGb2h79i1SrGBoPZ5qEbZt6BqtqEZdqBEGzhEMN43LkqQeE0DCTtx
 2rSEhvtwowlHOtvsqbcXZibTLPoY+GBFyjdf8ZiwtRBe9TMoVJf3LxkPXzwC0CBlakjAb6R
 Va9MNhVoEiGPGC2qH0wyA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W2TxSagt+Z4=:NJ0iso421EAqhCHcZKtjqW
 iyFObzizoDRWt9rMjiDkfU8gly7SB5s4TSHe2i44UyATZbZaYuCQXTmEqaNZI1/pfyIWeZz3w
 Fzh32Ofja9qelULhuFni6OMYFm2R3d/l7p4MZJc2J4s6c17WcV3Xt9hRx0lh3SnhcMKlKTrFC
 ema3s4UldsXs5mXKzQai06cvs8kXQokjZDGd6KmoyGN8w287nh5JuUG5Jb8pOygD+BCrg9Vuq
 i5kCHdlF/dl0RI+UDb77hcNPI4rqStQ4PdXE5JnD3PJ1XmjaJA4UNFx8nuRTJphqNjg/bd7GV
 1YuwTMLqzPDKpuF2c3jE3SxxVtXT1JqgFwUmZki3pi0QGkm5H1GmJvfGZJFAM6/pC65eRjK0a
 NWpqEsheaG9ALgLhVk6ywIhvg0TLeYdIb1W0kzcUiP3R8jeILxd/CAokQAzkBUze1zQ8o+1H0
 J4zJLr2mXSxL6uW4QdV4HOzSUyScPftQzimXYhFBjjwCq9mrx3zDPvI2C9/X68AzrZRCBICVH
 uuwsYxmu/UbLmGWg72Nvoh6eHj+Ee74J1wJ6bdCwShFbEoK+geHmsBNs/Xvn0OUf5J1FAp+mK
 lWUwlNZk5TrfPt9Gh1L+x4T3uDzpPrBwDNLpW5pnd3YXB2vgc3puiz8rOxLdTzJqZN/nSpju0
 R8i+QlAzC9Sy/mzExyw3kZtP2AXt1j/6ZS11Be6NSZGrnKMxYQnb1pYAijFyK2z1mCYwLrXiR
 jeNd3xFzQ+8aopyQJ/oko/yLsmYQfYtwFvWAPyka5HL5kBeIw1lrWrkpqckvYFeujW2jMh7Ih
 9Sza4x9E4k2w7Re6A50asKrPK3jA1ts2/bbrx9E2H3Qkaz2scMouwwHQ/9O9OrWYH9uYFt3CO
 fDW0tp+d/SaNK6uDlgHw==
X-Mailman-Approved-At: Mon, 22 Mar 2021 09:10:09 +0000
Subject: [Intel-gfx] [bug report] drm/i915: Computer does not shutdown,
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

Hello,

It seems, like the mailing list, didn't accept my email. So I'll send
it again:

I want to report a bug. I have a PC with Intel i7-6700K processor (with
integrated graphics) and an AsRock Fatal1ty Z170 Gaming K6 mainboard. I
use the CPU's integrated graphics.
My system is Archlinux with Kernel v5.11.6.

Using this setup, my PC works normally. However, when I shut it down,
the power is not cut. Fans keep spinning and LEDs stay on. I couldn't
detect any other problem when shutting down. Drives etc. stop as
expected and the video is blank. Even after waiting several hours, the
system doesn't power down.

Restarts work normally.

I haven't yet found any other people on the internet that have the same
bug.

I used git bisect to find the commit that causes this behavior on my
machine. The result is: fe0f1e3bfdfeb53e18f1206aea4f40b9bd1f291c is the
first bad commit.

I hope this is the correct mailing list for this issue.

Let me know if you need more information or someone to test it.

Thanks

Mario

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
