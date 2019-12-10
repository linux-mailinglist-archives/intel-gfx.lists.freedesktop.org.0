Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE92118ADE
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 15:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2DA86E112;
	Tue, 10 Dec 2019 14:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8F616E112;
 Tue, 10 Dec 2019 14:31:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19527855-1500050 for multiple; Tue, 10 Dec 2019 14:30:50 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191210142531.6447-1-janusz.krzysztofik@linux.intel.com>
References: <20191210142531.6447-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <157598825003.15362.12796328052956396686@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 10 Dec 2019 14:30:50 +0000
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t] lib/sysfs: Add support for
 getting boolean module parameters
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
Cc: =?utf-8?q?Micha=C5=82_Czapli=C5=84ski?= <michal.czaplinski@intel.com>,
 Jari Tahvanainen <jari.tahvanainen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2019-12-10 14:25:31)
> Boolean module parameters are exposed as "Y"/"N" strings, not 0/1.
> Make igt_sysfs_get_boolean() helper useful for getting their values.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  lib/igt_sysfs.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/igt_sysfs.c b/lib/igt_sysfs.c
> index c439944d..c2b8291d 100644
> --- a/lib/igt_sysfs.c
> +++ b/lib/igt_sysfs.c
> @@ -474,11 +474,23 @@ bool igt_sysfs_set_u32(int dir, const char *attr, uint32_t value)
>   */
>  bool igt_sysfs_get_boolean(int dir, const char *attr)
>  {
> +       char *buf;
>         int result;
>  
> -       if (igt_sysfs_scanf(dir, attr, "%d", &result) != 1)
> +       buf = igt_sysfs_get(dir, attr);
> +       if (!buf)
>                 return false;
>  
> +       if (sscanf(buf, "%d", &result) == 1)
> +               goto out;
> +
> +       /* kernel's param_get_bool() returns "Y"/"N" */
> +       if (!strcmp(buf, "Y"))
> +               result = true;
> +       else
> +               result = false;

result = !strcasecmp(buf, "Y");

Just for compactness?

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
