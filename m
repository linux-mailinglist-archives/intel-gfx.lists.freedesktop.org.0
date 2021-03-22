Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CB73450C0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 21:30:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEDAA6E5B0;
	Mon, 22 Mar 2021 20:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 420106E067;
 Mon, 22 Mar 2021 20:30:03 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id z1so21001089edb.8;
 Mon, 22 Mar 2021 13:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7QH2qH8OXw7astC9J+hBZNIvd5jFa6HOZzbSlRf+8Ek=;
 b=T8MfESZQxe3NObZ/7MqvvJi28NxxdFf3ab07gERPhzLT804c2DkkhJkBMdizuiX7N5
 CHF46uFWWZ0cEHLJOYnXTiyTVv5tLvjO1lmS5Ohg2XPP88nZmWW9F5ARG6cD601rZ5/K
 zoiBTqPm5H0nLHbAPcra7yZ3RbLdPm8oZKbWma9nQPHRlRk5CMs6B2AjWWGtpKPrvkGd
 rL5fFWVmWmq+K/IWUKd2YrrT8XNdUQvFpqJ+tfEUQNjkhvUoBFoAG9jEiozLdABWs7F1
 P6ZC1gmMny9VZsWnwgXXF/Dsydybb92YeAKNqz04oOvYAWJ3XKyrs6O1pidMSVkxvnmE
 iM1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=7QH2qH8OXw7astC9J+hBZNIvd5jFa6HOZzbSlRf+8Ek=;
 b=I+PCkleJXH8mTX5Eej7abXCF5KCZ0jOaJBmUOQSDkjOmTaezV1Mt+C6mbV+QXvrKTd
 ecjqE/IvqN9So9i4mhwFahijHQ/6yczx37KEZUDIzUrhbLf4SkerEkkcW+oRvFMv/MTG
 djyF58W1+b3cPg7zp1xYIuPuzCuQcCGDdKsfjwdQ4tiVKVzB9RtPVgOJFN7sM7DLmOOk
 cH77dNlKZNbrGoK9NHA+3EF3BhCH1QqhLTWO94Z5huh6+EgeN5/5W3djfyzN2q9wdnOe
 uGEOfklEE60id9yjpfRbFnDaOJbojVG1e1HbN9f8ZktwzVVwuJVhJE6cuJfDkLCYTB7Z
 msGQ==
X-Gm-Message-State: AOAM533hwA5rtUMBHNc/NcsOYsfA8DFiRpZKKeIcyrmKaQUdUOJjWKbF
 PodevsYFiuKra05gxHniXjU=
X-Google-Smtp-Source: ABdhPJwU1mWLXQUCBk/cr2I4/KV5sNA0QBX6NdJBSPel6aICLgwoK3n4c4u3DzEAz75RN+WAzRwu0Q==
X-Received: by 2002:aa7:c447:: with SMTP id n7mr1365222edr.171.1616445001869; 
 Mon, 22 Mar 2021 13:30:01 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
 by smtp.gmail.com with ESMTPSA id x1sm10321496eji.8.2021.03.22.13.30.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 13:30:01 -0700 (PDT)
Date: Mon, 22 Mar 2021 21:29:58 +0100
From: Ingo Molnar <mingo@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <20210322202958.GA1955909@gmail.com>
References: <20210322160253.4032422-1-arnd@kernel.org>
 <20210322160253.4032422-3-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322160253.4032422-3-arnd@kernel.org>
Subject: Re: [Intel-gfx] [PATCH 02/11] x86: tboot: avoid
 Wstringop-overread-warning
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
Cc: dri-devel@lists.freedesktop.org, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, linux-scsi@vger.kernel.org, x86@kernel.org,
 James Smart <james.smart@broadcom.com>, tboot-devel@lists.sourceforge.net,
 Ingo Molnar <mingo@redhat.com>, Kalle Valo <kvalo@codeaurora.org>,
 ath11k@lists.infradead.org, Serge Hallyn <serge@hallyn.com>,
 Arnd Bergmann <arnd@arndb.de>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Ning Sun <ning.sun@intel.com>, Anders Larsen <al@alarsen.net>,
 Borislav Petkov <bp@alien8.de>, cgroups@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Martin Sebor <msebor@gcc.gnu.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, Tejun Heo <tj@kernel.org>,
 Simon Kelley <simon@thekelleys.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>, intel-gfx@lists.freedesktop.org,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


* Arnd Bergmann <arnd@kernel.org> wrote:

> From: Arnd Bergmann <arnd@arndb.de>
> 
> gcc-11 warns about using string operations on pointers that are
> defined at compile time as offsets from a NULL pointer. Unfortunately
> that also happens on the result of fix_to_virt(), which is a
> compile-time constant for a constantn input:
> 
> arch/x86/kernel/tboot.c: In function 'tboot_probe':
> arch/x86/kernel/tboot.c:70:13: error: '__builtin_memcmp_eq' specified bound 16 exceeds source size 0 [-Werror=stringop-overread]
>    70 |         if (memcmp(&tboot_uuid, &tboot->uuid, sizeof(tboot->uuid))) {
>       |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> I hope this can get addressed in gcc-11 before the release.
> 
> As a workaround, split up the tboot_probe() function in two halves
> to separate the pointer generation from the usage. This is a bit
> ugly, and hopefully gcc understands that the code is actually correct
> before it learns to peek into the noinline function.
> 
> Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=99578
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/x86/kernel/tboot.c | 44 ++++++++++++++++++++++++-----------------
>  1 file changed, 26 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/x86/kernel/tboot.c b/arch/x86/kernel/tboot.c
> index 4c09ba110204..f9af561c3cd4 100644
> --- a/arch/x86/kernel/tboot.c
> +++ b/arch/x86/kernel/tboot.c
> @@ -49,6 +49,30 @@ bool tboot_enabled(void)
>  	return tboot != NULL;
>  }
>  
> +/* noinline to prevent gcc from warning about dereferencing constant fixaddr */
> +static noinline __init bool check_tboot_version(void)
> +{
> +	if (memcmp(&tboot_uuid, &tboot->uuid, sizeof(tboot->uuid))) {
> +		pr_warn("tboot at 0x%llx is invalid\n", boot_params.tboot_addr);
> +		return false;
> +	}
> +
> +	if (tboot->version < 5) {
> +		pr_warn("tboot version is invalid: %u\n", tboot->version);
> +		return false;
> +	}
> +
> +	pr_info("found shared page at phys addr 0x%llx:\n",
> +		boot_params.tboot_addr);
> +	pr_debug("version: %d\n", tboot->version);
> +	pr_debug("log_addr: 0x%08x\n", tboot->log_addr);
> +	pr_debug("shutdown_entry: 0x%x\n", tboot->shutdown_entry);
> +	pr_debug("tboot_base: 0x%08x\n", tboot->tboot_base);
> +	pr_debug("tboot_size: 0x%x\n", tboot->tboot_size);
> +
> +	return true;
> +}
> +
>  void __init tboot_probe(void)
>  {
>  	/* Look for valid page-aligned address for shared page. */
> @@ -66,25 +90,9 @@ void __init tboot_probe(void)
>  
>  	/* Map and check for tboot UUID. */
>  	set_fixmap(FIX_TBOOT_BASE, boot_params.tboot_addr);
> -	tboot = (struct tboot *)fix_to_virt(FIX_TBOOT_BASE);
> -	if (memcmp(&tboot_uuid, &tboot->uuid, sizeof(tboot->uuid))) {
> -		pr_warn("tboot at 0x%llx is invalid\n", boot_params.tboot_addr);
> +	tboot = (void *)fix_to_virt(FIX_TBOOT_BASE);
> +	if (!check_tboot_version())
>  		tboot = NULL;
> -		return;
> -	}
> -	if (tboot->version < 5) {
> -		pr_warn("tboot version is invalid: %u\n", tboot->version);
> -		tboot = NULL;
> -		return;
> -	}
> -
> -	pr_info("found shared page at phys addr 0x%llx:\n",
> -		boot_params.tboot_addr);
> -	pr_debug("version: %d\n", tboot->version);
> -	pr_debug("log_addr: 0x%08x\n", tboot->log_addr);
> -	pr_debug("shutdown_entry: 0x%x\n", tboot->shutdown_entry);
> -	pr_debug("tboot_base: 0x%08x\n", tboot->tboot_base);
> -	pr_debug("tboot_size: 0x%x\n", tboot->tboot_size);

This is indeed rather ugly - and the other patch that removes a debug 
check seems counterproductive as well.

Do we know how many genuine bugs -Wstringop-overread-warning has 
caught or is about to catch?

I.e. the real workaround might be to turn off the -Wstringop-overread-warning,
until GCC-11 gets fixed?

Thanks,

	Ingo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
