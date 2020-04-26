Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C879A1B9105
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Apr 2020 17:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E34EC8951E;
	Sun, 26 Apr 2020 15:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
 [79.96.170.134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CA688951E
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Apr 2020 15:02:15 +0000 (UTC)
Received: from 185.80.35.16 (185.80.35.16) (HELO kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.415)
 id 2c4431b5b229701a; Sun, 26 Apr 2020 17:02:13 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Sun, 26 Apr 2020 17:02:12 +0200
Message-ID: <15275956.dygttixizy@kreacher>
In-Reply-To: <20200410192629.6779-1-chris@chris-wilson.co.uk>
References: <20200410192629.6779-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] cpufreq/pstate: Only mention the BIOS
 disabling turbo mode once
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
Cc: Viresh Kumar <viresh.kumar@linaro.org>, intel-gfx@lists.freedesktop.org,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Len Brown <lenb@kernel.org>, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Friday, April 10, 2020 9:26:29 PM CEST Chris Wilson wrote:
> Make a note of the first time we discover the turbo mode has been
> disabled by the BIOS, as otherwise we complain every time we try to
> update the mode.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
> Cc: Len Brown <lenb@kernel.org>
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  drivers/cpufreq/intel_pstate.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
> index c81e1ff29069..b4c014464a20 100644
> --- a/drivers/cpufreq/intel_pstate.c
> +++ b/drivers/cpufreq/intel_pstate.c
> @@ -1058,7 +1058,7 @@ static ssize_t store_no_turbo(struct kobject *a, struct kobj_attribute *b,
>  
>  	update_turbo_state();
>  	if (global.turbo_disabled) {
> -		pr_warn("Turbo disabled by BIOS or unavailable on processor\n");
> +		pr_notice_once("Turbo disabled by BIOS or unavailable on processor\n");
>  		mutex_unlock(&intel_pstate_limits_lock);
>  		mutex_unlock(&intel_pstate_driver_lock);
>  		return -EPERM;
> 

Applied as a fix for 5.7-rc4, sorry for the delay.

Thanks!



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
