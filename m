Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A923378FD2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 15:59:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6D96E487;
	Mon, 10 May 2021 13:59:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7E976E487
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 13:59:47 +0000 (UTC)
Received: from mobile-user-c1d2e5-142.dhcp.inet.fi ([193.210.229.142]
 helo=[192.168.1.190])
 by youngberry.canonical.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <tjaalton@ubuntu.com>)
 id 1lg6Rl-00030u-8B; Mon, 10 May 2021 13:59:45 +0000
To: Paul Zimmerman <pauldzim@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20210509044330.4655-1-pauldzim@gmail.com>
From: Timo Aaltonen <tjaalton@ubuntu.com>
Message-ID: <02957632-b050-f9eb-fcd8-75db9c92b8e0@ubuntu.com>
Date: Mon, 10 May 2021 16:59:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509044330.4655-1-pauldzim@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH RFC] Revert "drm/i915: Try to use
 fast+narrow link on eDP again and fall back to the old max strategy on
 failure"
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 9.5.2021 7.43, Paul Zimmerman wrote:
> This reverts commit 2bbd6dba84d44219387df051a1c799b7bac46099.
> 
> Since 5.12-rc2, my Dell XPS-15 laptop has had a blank screen on boot.
> The system seems to run fine other than having no display, I am able
> to ssh into the machine. I don't see anything interesting in the dmesg
> log. I bisected the problem down to this commit, and reverting it fixes
> the problem.

Have you tried with drm-tip? It has acca7762eb71bc0 which hopefully 
helps here.


-- 
t
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
