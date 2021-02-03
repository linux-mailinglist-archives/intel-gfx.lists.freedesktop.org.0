Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED1330D922
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 12:47:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1CA589DA3;
	Wed,  3 Feb 2021 11:47:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3422589C59;
 Wed,  3 Feb 2021 11:47:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23774353-1500050 for multiple; Wed, 03 Feb 2021 11:47:42 +0000
MIME-Version: 1.0
In-Reply-To: <20210203114456.895974-1-tvrtko.ursulin@linux.intel.com>
References: <20210203114456.895974-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Wed, 03 Feb 2021 11:47:42 +0000
Message-ID: <161235286280.6538.17980167968377203664@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/2] intel_gpu_top: Show
 banner messages when cycling sort modes
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-02-03 11:44:55)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> It is useful to let the user know what is the currently active sort mode.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  tools/intel_gpu_top.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 584aa21b198a..b409106f3718 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -1479,6 +1479,8 @@ print_header_token(const char *cont, int lines, int con_w, int con_h, int *rem,
>         return lines;
>  }
>  
> +static const char *header_msg;
> +
>  static int
>  print_header(const struct igt_device_card *card,
>              const char *codename,
> @@ -1593,8 +1595,14 @@ print_header(const struct igt_device_card *card,
>                 if (lines++ < con_h)
>                         printf("\n");
>  
> -               if (lines++ < con_h)
> -                       printf("\n");
> +               if (lines++ < con_h) {
> +                       if (header_msg) {
> +                               printf(" >>> %s\n", header_msg);
> +                               header_msg = NULL;

I was just about to ask if we showed it once, then cleared it 1s later.
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

> +                       } else {
> +                               printf("\n");
> +                       }
> +               }
>         }
>  
>         return lines;
> @@ -2146,12 +2154,15 @@ static void select_client_sort(void)
>         switch (++client_sort % 3) {
>         case 0:
>                 client_cmp = client_last_cmp;
> +               header_msg = "Sorting clients by current GPU usage.";
>                 break;
>         case 1:
>                 client_cmp = client_total_cmp;
> +               header_msg = "Sorting clients by accummulated GPU usage.";
>                 break;
>         case 2:
>                 client_cmp = client_id_cmp;
> +               header_msg = "Sorting clients by sysfs id.";

Do we care about "sysfs"? Just "Sorting clients by id."?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
