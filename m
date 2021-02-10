Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6AE316465
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 11:55:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9BA46E1F1;
	Wed, 10 Feb 2021 10:55:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF6546E1F1;
 Wed, 10 Feb 2021 10:55:49 +0000 (UTC)
IronPort-SDR: g+vFeiUtyx1vVFpTNct4ej2izqpKbTF/w3HY0Y3RPtn+d/ogP64Ij03evKxpl1SADkSztmoG9r
 L5kE9SpujH2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="181277236"
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="181277236"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 02:55:49 -0800
IronPort-SDR: ds6NOMXZYoxPlOunUvGneSMlXEZl22TJ6Gp7mZusXIFGle961JAStjHzVK9jYAY8JQRwtYoyQV
 YTtL5k2Wtaww==
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="379914395"
Received: from baruchs-mobl.ger.corp.intel.com (HELO [10.214.255.101])
 ([10.214.255.101])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 02:55:47 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20210210093756.61424-1-tvrtko.ursulin@linux.intel.com>
 <20210210093756.61424-2-tvrtko.ursulin@linux.intel.com>
 <161295335978.6673.9313077497176923458@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <554d9a81-771d-b709-5986-48dd71171f02@linux.intel.com>
Date: Wed, 10 Feb 2021 10:55:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <161295335978.6673.9313077497176923458@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/3] intel_gpu_top:
 Aggregate clients by PID by default
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/02/2021 10:35, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-02-10 09:37:55)
>> +static struct clients *aggregated_clients(struct clients *clients)
>> +{
>> +       struct client *ac, *c, *cp = NULL;
>> +       struct clients *aggregated;
>> +       int tmp, num = 0;
>> +
>> +       /* Sort by pid first to make it easy to aggregate while walking. */
>> +       sort_clients(clients, client_pid_cmp);
> 
> You could eliminate this tiny bit of duplication by always calling
> aggregated_clients() and returning here for !aggregate_pids.

Okay, I did something like that.

>> +       aggregated = calloc(1, sizeof(*clients));
>> +       assert(aggregated);
>> +
>> +       ac = calloc(clients->num_clients, sizeof(*c));
>> +       assert(ac);
>> +
>> +       aggregated->num_classes = clients->num_classes;
>> +       aggregated->class = clients->class;
>> +       aggregated->client = ac;
>> +
>> +       for_each_client(clients, c, tmp) {
>> +               unsigned int i;
>> +
>> +               if (c->status == FREE)
>> +                       break;
>> +
>> +               assert(c->status == ALIVE);
>> +
>> +               if ((cp && c->pid != cp->pid) || !cp) {
>> +                       ac = &aggregated->client[num];
>> +
>> +                       /* New pid. */
>> +                       ac->clients = aggregated;
>> +                       ac->status = ALIVE;
>> +                       ac->id = ++num;
>> +                       ac->pid = c->pid;
>> +                       strcpy(ac->name, c->name);
>> +                       strcpy(ac->print_name, c->print_name);
>> +                       ac->engines = c->engines;
>> +                       ac->val = calloc(clients->num_classes,
>> +                                        sizeof(ac->val[0]));
>> +                       assert(ac->val);
>> +                       ac->samples = 1;
>> +               }
>> +
>> +               cp = c;
>> +
>> +               if (c->samples < 2)
>> +                       continue;
>> +
>> +               ac->samples = 2; /* All what matters for display. */
>> +               ac->total_runtime += c->total_runtime;
>> +               ac->last_runtime += c->last_runtime;
>> +
>> +               for (i = 0; i < clients->num_classes; i++)
>> +                       ac->val[i] += c->val[i];
>> +       }
>> +
>> +       aggregated->num_clients = num;
>> +       aggregated->active_clients = num;
>> +
>> +       return sort_clients(aggregated, client_cmp);
>>   }
> 
> Ok, that works very well. Hmm. The sort order does seem a little jumpy
> though. May I suggest ac->id = -c->pid; instead of num;

Done it although I thought 1st pass being sort by pid already, num as id 
would follow a stable order. I guess your point was inversion to 
preserve order when cycling sort modes?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
