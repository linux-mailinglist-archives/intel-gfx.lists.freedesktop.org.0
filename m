Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB39C242AA5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Aug 2020 15:54:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 200986E0F2;
	Wed, 12 Aug 2020 13:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.smtpout.orange.fr (smtp03.smtpout.orange.fr
 [80.12.242.125])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B874D6E0D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Aug 2020 12:55:03 +0000 (UTC)
Received: from [192.168.1.20] ([86.206.72.116]) by mwinf5d57 with ME
 id Ecuw2300Q2WY4aW03cux0b; Wed, 12 Aug 2020 14:55:01 +0200
X-ME-Helo: [192.168.1.20]
X-ME-Auth: dmluY2VudC5ndWVuYXRAb3JhbmdlLmZy
X-ME-Date: Wed, 12 Aug 2020 14:55:01 +0200
X-ME-IP: 86.206.72.116
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com
From: Vincent Guenat <vincent.guenat@orange.fr>
Message-ID: <0bfcc9dd-942e-d9c7-dc23-f69998740419@orange.fr>
Date: Wed, 12 Aug 2020 14:54:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Language: en-GB
X-Mailman-Approved-At: Wed, 12 Aug 2020 13:54:37 +0000
Subject: [Intel-gfx] [i915] flip_done timed out errors with i7-1065G7 on
 kernel > 4.19
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello there,

I am seeing this error after recently installing Archlinux on my Razer 
Blade Stealth with the kernel version 5.7.12. I have seen it as well on 
4.19, 5.4.55 and 5.8.0.

The error happens during boot time where it significantly increases boot 
time. It starts with a time out in |drm_atomic_helper_wait_for_flip_done 
followed by more time out in |||drm_atomic_helper_wait_for_dependencies 
and |||||drm_atomic_helper_wait_for_flip_done, each of them taking about 
10 seconds (which is the value in the source code as far as I can see). 
There are 11-12 time out at each boot.|||
||||||
|||A similar issue was already discovered in previous version of the 
kernel, but the selected solution of adding video=SVIDEO-1:d to the 
kernel parameters has proved unsuccessful so far.|||
Note that Xorg also fails to launch, but this may be due to a 
misconfiguration from my side, as I start it with startx.

There is more details (including a dmesg output for the kernel version 
5.8.0) in my post on the Archlinux forums: 
https://bbs.archlinux.org/viewtopic.php?id=258051

Thank you for any time you may spend on this problem,
Vincent Guenat
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
