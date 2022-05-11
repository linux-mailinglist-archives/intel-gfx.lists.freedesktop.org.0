Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 702B25236B0
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 17:07:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB0510E953;
	Wed, 11 May 2022 15:07:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C124110E937;
 Wed, 11 May 2022 15:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652281667; x=1683817667;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=t2HgBupAWKeBAHSd0bqsRrXECEzDTCuDh4Nw/cjCeD0=;
 b=N62GQSS//UsPk98jzY63hk2C9N/21iXnRtGV5nJV649BCZW5LPLqXi6z
 0DOBTpS/jiq9z9M+48Z+5/VlMOOq8NEoZHmKrlDyjNMzLeSU7mNDIXeik
 WZN0e/OYRuhsDCSsz9r2C0wUab3EAzTiO6/iSsMU6Z7hBpl8TZMXIS1D1
 eLlqEt7BfBJk/CZIY73101xcWghOmmoyPFFgcY6vN4J38q0+hRlcs/iPe
 w0PVwUpPgidmVq1FkdNGLMnXQVhUxLLuVuCfaFAPBBoh0YiKcnmFR1Lwb
 iEC/y8iY7TU26DKcO15pt+6Ro+IbcOlGg9ixHN1ttYlc8qjdREumD3ENt A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="269659697"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="269659697"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 08:07:39 -0700
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="520554602"
Received: from mmlucey-mobl1.ger.corp.intel.com (HELO [10.213.195.130])
 ([10.213.195.130])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 08:07:38 -0700
Message-ID: <0d539d4c-8ae0-946a-a83c-0808ea266b92@linux.intel.com>
Date: Wed, 11 May 2022 16:07:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 igt-dev@lists.freedesktop.org
References: <20220511121821.1010974-1-tvrtko.ursulin@linux.intel.com>
 <20220511121821.1010974-9-tvrtko.ursulin@linux.intel.com>
 <acdb9b6a-871a-2671-1292-bc1585e26737@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <acdb9b6a-871a-2671-1292-bc1585e26737@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 8/8] gputop: Basic vendor agnostic GPU
 top tool
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
Cc: Rob Clark <robdclark@chromium.org>, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/05/2022 15:42, Christian König wrote:
> Just two bugs I've found and you should probably handle:
> 
> 1. On amdgpu we probably want to filter engines which are not used by an 
> application. This confuses gputop in it's display. E.g. when you have 
> one application using only gfx and the other only sdma both are grouped 
> together which is not correct at all.

Grouped as displayed as single line? Pid/name? But either way if they 
have different client ids they shouldn't be grouped. That would be a bug 
which I don't quite see in the code so if you could please confirm these 
details I will look into it some more.

The situation where one application uses one engine, and another uses 
another is exactly present in my "screenshot" from the cover letter so 
it is supposed to work.

> 2. Invalid inputs, especially engines with the same name let the tool 
> crash in a segmentation fault.
> 
> Take this input for example:
> drm-engine-gfx:    21475769304 ns
> drm-engine-compute:    0 ns
> drm-engine-dma:    0 ns
> drm-engine-dec:    0 ns
> drm-engine-enc:    0 ns
> drm-engine-enc_1:    0 ns
> drm-engine-dec:    0 ns
> drm-engine-enc:    0 ns
> drm-engine-jpeg:    0 ns
> 
> Not really an issue, cause that shouldn't happen in practice, but quite 
> annoying during testing.

I can easily make it ignore that sort of a (broken) client, not sure 
that anything smarter than that would be useful.

Regards,

Tvrtko

> Maybe I will find time tomorrow looking over the code.
> 
> Thanks,
> Christian.
> 
> Am 11.05.22 um 14:18 schrieb Tvrtko Ursulin:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Rudimentary vendor agnostic example of how lib_igt_drm_clients can be 
>> used
>> to display a sorted by card and usage list of processes using GPUs.
>>
>> Borrows a bit of code from intel_gpu_top but for now omits the fancy
>> features like interactive functionality, card selection, client
>> aggregation, sort modes, JSON output  and pretty engine names. Also no
>> support for global GPU or system metrics.
>>
>> On the other hand it shows clients from all DRM cards which
>> intel_gpu_top does not do.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Rob Clark <robdclark@chromium.org>
>> Cc: Christian König <ckoenig.leichtzumerken@gmail.com>
>> ---
>>   tools/gputop.c    | 260 ++++++++++++++++++++++++++++++++++++++++++++++
>>   tools/meson.build |   5 +
>>   2 files changed, 265 insertions(+)
>>   create mode 100644 tools/gputop.c
>>
>> diff --git a/tools/gputop.c b/tools/gputop.c
>> new file mode 100644
>> index 000000000000..d259cac1ab17
>> --- /dev/null
>> +++ b/tools/gputop.c
>> @@ -0,0 +1,260 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright © 2022 Intel Corporation
>> + */
>> +
>> +#include <assert.h>
>> +#include <ctype.h>
>> +#include <dirent.h>
>> +#include <errno.h>
>> +#include <fcntl.h>
>> +#include <inttypes.h>
>> +#include <limits.h>
>> +#include <locale.h>
>> +#include <math.h>
>> +#include <poll.h>
>> +#include <signal.h>
>> +#include <stdint.h>
>> +#include <stdio.h>
>> +#include <stdlib.h>
>> +#include <string.h>
>> +#include <sys/ioctl.h>
>> +#include <sys/stat.h>
>> +#include <sys/types.h>
>> +#include <unistd.h>
>> +#include <termios.h>
>> +#include <sys/sysmacros.h>
>> +#include <stdbool.h>
>> +
>> +#include "igt_drm_clients.h"
>> +#include "igt_drm_fdinfo.h"
>> +
>> +static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", 
>> "█" };
>> +
>> +static void n_spaces(const unsigned int n)
>> +{
>> +    unsigned int i;
>> +
>> +    for (i = 0; i < n; i++)
>> +        putchar(' ');
>> +}
>> +
>> +static void print_percentage_bar(double percent, int max_len)
>> +{
>> +    int bar_len, i, len = max_len - 2;
>> +    const int w = 8;
>> +
>> +    assert(max_len > 0);
>> +
>> +    bar_len = ceil(w * percent * len / 100.0);
>> +    if (bar_len > w * len)
>> +        bar_len = w * len;
>> +
>> +    putchar('|');
>> +
>> +    for (i = bar_len; i >= w; i -= w)
>> +        printf("%s", bars[w]);
>> +    if (i)
>> +        printf("%s", bars[i]);
>> +
>> +    len -= (bar_len + (w - 1)) / w;
>> +    n_spaces(len);
>> +
>> +    putchar('|');
>> +}
>> +
>> +static int
>> +print_client_header(struct igt_drm_client *c, int lines, int con_w, 
>> int con_h,
>> +            int *engine_w)
>> +{
>> +    const char *pidname = "    PID               NAME ";
>> +    int ret, len = strlen(pidname);
>> +
>> +    if (lines++ >= con_h || len >= con_w)
>> +        return lines;
>> +    printf("\033[7m");
>> +    ret = printf("DRM minor %u", c->drm_minor);
>> +    n_spaces(con_w - ret);
>> +
>> +    if (lines++ >= con_h)
>> +        return lines;
>> +    printf("\n%s", pidname);
>> +
>> +    if (c->engines->num_engines) {
>> +        unsigned int i;
>> +        int width;
>> +
>> +        *engine_w = width = (con_w - len) / c->engines->num_engines;
>> +
>> +        for (i = 0; i <= c->engines->max_engine_id; i++) {
>> +            const char *name = c->engines->names[i];
>> +            int name_len = strlen(name);
>> +            int pad = (width - name_len) / 2;
>> +            int spaces = width - pad - name_len;
>> +
>> +            if (!name)
>> +                continue;
>> +
>> +            if (pad < 0 || spaces < 0)
>> +                continue;
>> +
>> +            n_spaces(pad);
>> +            printf("%s", name);
>> +            n_spaces(spaces);
>> +            len += pad + name_len + spaces;
>> +        }
>> +    }
>> +
>> +    n_spaces(con_w - len);
>> +    printf("\033[0m\n");
>> +
>> +    return lines;
>> +}
>> +
>> +
>> +static bool
>> +newheader(const struct igt_drm_client *c, const struct igt_drm_client 
>> *pc)
>> +{
>> +    return !pc || c->drm_minor != pc->drm_minor;
>> +}
>> +
>> +static int
>> +print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
>> +         double t, int lines, int con_w, int con_h,
>> +         unsigned int period_us, int *engine_w)
>> +{
>> +    unsigned int i;
>> +
>> +    /* Filter out idle clients. */
>> +    if (!c->total_runtime || c->samples < 2)
>> +        return lines;
>> +
>> +    /* Print header when moving to a different DRM card. */
>> +    if (newheader(c, *prevc)) {
>> +        lines = print_client_header(c, lines, con_w, con_h, engine_w);
>> +        if (lines >= con_h)
>> +            return lines;
>> +    }
>> +
>> +    *prevc = c;
>> +
>> +    printf("%8u %17s ", c->pid, c->print_name);
>> +    lines++;
>> +
>> +    for (i = 0; c->samples > 1 && i <= c->engines->max_engine_id; i++) {
>> +        double pct;
>> +
>> +        if (!c->engines->capacity[i])
>> +            continue;
>> +
>> +        pct = (double)c->val[i] / period_us / 1e3 * 100 /
>> +              c->engines->capacity[i];
>> +
>> +        /*
>> +         * Guard against fluctuations between our scanning period and
>> +         * GPU times as exported by the kernel in fdinfo.
>> +         */
>> +        if (pct > 100.0)
>> +            pct = 100.0;
>> +
>> +        print_percentage_bar(pct, *engine_w);
>> +    }
>> +
>> +    putchar('\n');
>> +
>> +    return lines;
>> +}
>> +
>> +static int
>> +__client_id_cmp(const struct igt_drm_client *a,
>> +        const struct igt_drm_client *b)
>> +{
>> +    if (a->id > b->id)
>> +        return 1;
>> +    else if (a->id < b->id)
>> +        return -1;
>> +    else
>> +        return 0;
>> +}
>> +
>> +static int client_cmp(const void *_a, const void *_b, void *unused)
>> +{
>> +    const struct igt_drm_client *a = _a;
>> +    const struct igt_drm_client *b = _b;
>> +    long val_a, val_b;
>> +
>> +    /* DRM cards into consecutive buckets first. */
>> +    val_a = a->drm_minor;
>> +    val_b = b->drm_minor;
>> +    if (val_a > val_b)
>> +        return 1;
>> +    else if (val_b > val_a)
>> +        return -1;
>> +
>> +    /*
>> +     * Within buckets sort by last sampling period aggregated 
>> runtime, with
>> +     * client id as a tie-breaker.
>> +     */
>> +    val_a = a->last_runtime;
>> +    val_b = b->last_runtime;
>> +    if (val_a == val_b)
>> +        return __client_id_cmp(a, b);
>> +    else if (val_b > val_a)
>> +        return 1;
>> +    else
>> +        return -1;
>> +
>> +}
>> +
>> +int main(int argc, char **argv)
>> +{
>> +    unsigned int period_us = 2e6;
>> +    struct igt_drm_clients *clients = NULL;
>> +    int con_w = -1, con_h = -1;
>> +
>> +    clients = igt_drm_clients_init(NULL);
>> +    if (!clients)
>> +        exit(1);
>> +
>> +    igt_drm_clients_scan(clients, NULL, NULL, 0);
>> +
>> +    for (;;) {
>> +        struct igt_drm_client *c, *prevc = NULL;
>> +        int i, engine_w = 0, lines = 0;
>> +        struct winsize ws;
>> +
>> +        if (ioctl(0, TIOCGWINSZ, &ws) != -1) {
>> +            con_w = ws.ws_col;
>> +            con_h = ws.ws_row;
>> +            if (con_w == 0 && con_h == 0) {
>> +                /* Serial console. */
>> +                con_w = 80;
>> +                con_h = 24;
>> +            }
>> +        }
>> +
>> +        igt_drm_clients_scan(clients, NULL, NULL, 0);
>> +        igt_drm_clients_sort(clients, client_cmp);
>> +
>> +        printf("\033[H\033[J");
>> +
>> +        igt_for_each_drm_client(clients, c, i) {
>> +            assert(c->status != IGT_DRM_CLIENT_PROBE);
>> +            if (c->status != IGT_DRM_CLIENT_ALIVE)
>> +                break; /* Active clients are first in the array. */
>> +
>> +            lines = print_client(c, &prevc, (double)period_us / 1e6,
>> +                         lines, con_w, con_h, period_us,
>> +                         &engine_w);
>> +            if (lines >= con_h)
>> +                break;
>> +        }
>> +
>> +        if (lines++ < con_h)
>> +            printf("\n");
>> +
>> +        usleep(period_us);
>> +    }
>> +
>> +    return 0;
>> +}
>> diff --git a/tools/meson.build b/tools/meson.build
>> index e65aceeef9fa..508964004bb0 100644
>> --- a/tools/meson.build
>> +++ b/tools/meson.build
>> @@ -69,6 +69,11 @@ if libudev.found()
>>              install : true)
>>   endif
>> +executable('gputop', 'gputop.c',
>> +           install : true,
>> +           install_rpath : bindir_rpathdir,
>> +           dependencies : [lib_igt_drm_clients,lib_igt_drm_fdinfo,math])
>> +
>>   intel_l3_parity_src = [ 'intel_l3_parity.c', 
>> 'intel_l3_udev_listener.c' ]
>>   executable('intel_l3_parity', sources : intel_l3_parity_src,
>>          dependencies : tool_deps,
> 
