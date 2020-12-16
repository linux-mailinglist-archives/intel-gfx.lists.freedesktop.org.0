Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8615E2DC358
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 16:44:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E32C16E20A;
	Wed, 16 Dec 2020 15:44:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2CD76E209;
 Wed, 16 Dec 2020 15:44:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23345714-1500050 for multiple; Wed, 16 Dec 2020 15:44:00 +0000
MIME-Version: 1.0
In-Reply-To: <20201216152809.706094-1-tvrtko.ursulin@linux.intel.com>
References: <20201216152809.706094-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Wed, 16 Dec 2020 15:44:01 +0000
Message-ID: <160813344178.9127.8687502283562592577@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/2] intel_gpu_top: Support
 exiting the tool by pressing 'q'
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

Quoting Tvrtko Ursulin (2020-12-16 15:28:08)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Analoguous to top(1) we can enable the user to exit from the tool by
> pressing 'q' on the console.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  man/intel_gpu_top.rst |  6 ++++
>  tools/intel_gpu_top.c | 77 +++++++++++++++++++++++++++++++++++--------
>  2 files changed, 70 insertions(+), 13 deletions(-)
> 
> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
> index 5552e9699d26..2e0c3a05acc1 100644
> --- a/man/intel_gpu_top.rst
> +++ b/man/intel_gpu_top.rst
> @@ -48,6 +48,12 @@ OPTIONS
>  -d
>      Select a specific GPU using supported filter.
>  
> +RUNTIME CONTROL
> +===============
> +
> +Supported keys:
> +
> +    'q'    Exit from the tool.
>  
>  DEVICE SELECTION
>  ================
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index dbd353673e55..68911940f1d0 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -23,24 +23,26 @@
>  
>  #include "igt_device_scan.h"
>  
> -#include <stdio.h>
> -#include <sys/types.h>
> -#include <dirent.h>
> -#include <stdint.h>
>  #include <assert.h>
> -#include <string.h>
>  #include <ctype.h>
> -#include <stdlib.h>
> -#include <unistd.h>
> -#include <sys/stat.h>
> +#include <dirent.h>
> +#include <errno.h>
>  #include <fcntl.h>
>  #include <inttypes.h>
> -#include <sys/ioctl.h>
> -#include <errno.h>
> -#include <math.h>
> -#include <locale.h>
>  #include <limits.h>
> +#include <locale.h>
> +#include <math.h>
> +#include <poll.h>
>  #include <signal.h>
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <sys/ioctl.h>
> +#include <sys/stat.h>
> +#include <sys/types.h>
> +#include <unistd.h>
> +#include <termios.h>
>  
>  #include "igt_perf.h"
>  
> @@ -1246,6 +1248,54 @@ static char *tr_pmu_name(struct igt_device_card *card)
>         return device;
>  }
>  
> +static void interactive_stdin(void)
> +{
> +       struct termios termios = { };
> +       int ret;
> +
> +       ret = fcntl(0, F_GETFL, NULL);
> +       ret |= O_NONBLOCK;
> +       ret = fcntl(0, F_SETFL, ret);
> +       assert(ret == 0);

I always have to double check that O_NONBLOCK is in F_SETFL and not
F_SETFD.

> +
> +       ret = tcgetattr(0, &termios);
> +       assert(ret == 0);
> +
> +       termios.c_lflag &= ~ICANON;
> +       termios.c_cc[VMIN] = 1;
> +       termios.c_cc[VTIME] = 0; /* Deciseconds only - we'll use poll. */
> +
> +       ret = tcsetattr(0, TCSAFLUSH, &termios);
> +       assert(ret == 0);
> +}
> +
> +static void process_stdin(unsigned int timeout_us)
> +{
> +       struct pollfd p = { .fd = 0, .events = POLLIN };
> +       int ret;
> +
> +       ret = poll(&p, 1, timeout_us / 1000);

Replacing the usleep in the mainloop.

Hmm. Won't this have a problem if this run as a daemon (with stdin
closed)?

> +       if (ret <= 0) {
> +               if (ret < 0)
> +                       stop_top = true;
> +               return;
> +       }
> +
> +       for (;;) {
> +               char c;
> +
> +               ret = read(0, &c, 1);
> +               if (ret <= 0)
> +                       break;

O_NONBLOCK on 0.

So on each mainloop, we check for a key press, consume all that are in
the buffer, then return to the mainloop.

> +
> +               switch (c) {
> +               case 'q':
> +                       stop_top = true;
> +                       break;
> +               };
> +       }
> +}
> +
>  int main(int argc, char **argv)
>  {
>         unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
> @@ -1315,6 +1365,7 @@ int main(int argc, char **argv)
>         switch (output_mode) {
>         case INTERACTIVE:

INTERACTIVE is the default mode when run in a terminal.

>                 pops = &term_pops;
> +               interactive_stdin();
>                 break;
>         case STDOUT:
>                 pops = &stdout_pops;
> @@ -1427,7 +1478,7 @@ int main(int argc, char **argv)
>                 if (stop_top)
>                         break;
>  
> -               usleep(period_us);
> +               process_stdin(period_us);

Just the question about what happens if run with 0 closed...

if (!process_stdin(period_us))
	usleep(period_us);
?

>         }
>  
>         free(codename);
> -- 
> 2.25.1
> 
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
