Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A035D471897
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Dec 2021 06:42:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8BE10E5A1;
	Sun, 12 Dec 2021 05:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 301 seconds by postgrey-1.36 at gabe;
 Sun, 12 Dec 2021 05:42:09 UTC
Received: from nmtao102.oxsus-vadesecure.net (mta-102b.oxsus-vadesecure.net
 [51.81.61.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 642FF10E5A1
 for <intel-gfx@lists.freedesktop.org>; Sun, 12 Dec 2021 05:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; bh=20Tk3beuRmLCI778AOPIwE6rwtO2bN/hxddxXi
 XS7sA=; c=relaxed/relaxed; d=earthlink.net; h=from:reply-to:subject:
 date:to:cc:resent-date:resent-from:resent-to:resent-cc:in-reply-to:
 references:list-id:list-help:list-unsubscribe:list-subscribe:list-post:
 list-owner:list-archive; q=dns/txt; s=dk12062016; t=1639287425;
 x=1639892225; b=KrmK1EYbyb2XajRwJXJ2mgGmChN4p+f1iEujg6rbtI3Z0/z13DXIt9/
 oga0aNO93vM1lGtHr0nIKvssdxHt+cGEwdFsaZQlrZUeeq+KkgsKGvPMhiegp0XA8Mv8vaW
 NGv2v/auIQi2QZB2Hs85O3GycAIa+TiR3k6XNBVLBjnEuMjzlPsPQEW4hq6EHfgWuKs/Thn
 HDryCfbUSzQPd3yJUh9BPiRs1IswCIpDOkEesigBHguT2Q+EJeMBQxIly19wl20plFoj/7A
 xcFs5baVl9bsZ0XnWJa2FO+bn7SUO7ZZTlQXr7seCsnOPjABkTbGv4gQijFSI3Fujfv9z61
 5mw==
Received: from [192.168.0.11] ([24.50.25.135])
 by smtp.oxsus-vadesecure.net ESMTP oxsus1nmtao02p with ngmta
 id dfca5451-16bfeb3a48baa935; Sun, 12 Dec 2021 05:37:05 +0000
To: intel-gfx@lists.freedesktop.org
From: Felix Miata <mrmazda@earthlink.net>
Organization: less than infinite
Message-ID: <e63cb7d2-4d6f-ce11-6ba1-0d44b21cde75@earthlink.net>
Date: Sun, 12 Dec 2021 00:37:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 SeaMonkey/2.49.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Intel-gfx] KMS start locks up RocketLake-S GT1
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Is there a command line option needed for RocketLake-S GT1 on i5-11400? Is it
supposed to use some module other than i915? Tumbleweed kernel 5.15.6 locks up,
apparently when KMS should be kicking in. I can't get any logs or dmesg except
when booting with nomodeset.
-- 
Evolution as taught in public schools is, like religion,
	based on faith, not based on science.

 Team OS/2 ** Reg. Linux User #211409 ** a11y rocks!

Felix Miata
