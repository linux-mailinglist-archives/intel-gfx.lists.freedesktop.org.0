Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0706D126FAE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 22:24:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A7F56E3F5;
	Thu, 19 Dec 2019 21:24:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CCB36E3F5
 for <Intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 21:24:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19639319-1500050 for multiple; Thu, 19 Dec 2019 21:23:30 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
 <20191219180019.25562-9-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191219180019.25562-9-tvrtko.ursulin@linux.intel.com>
Message-ID: <157679060760.6469.5517436395560834938@skylake-alporthouse-com>
Date: Thu, 19 Dec 2019 21:23:27 +0000
Subject: Re: [Intel-gfx] [RFC 8/8] drm/i915: Expose per-engine client
 busyness
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2019-12-19 18:00:19)
> +       for (i = 0;
> +            client->busy_root && i < ARRAY_SIZE(uabi_class_names);
> +            i++) {
> +               struct i915_engine_busy_attribute *i915_attr =
> +                       &client->attr.busy[i];
> +
> +               i915_attr->client = client;
> +               i915_attr->engine_class = i;
> +
> +               attr = &i915_attr->attr;
> +
> +               sysfs_attr_init(&attr->attr);
> +
> +               attr->attr.name = uabi_class_names[i];
> +               attr->attr.mode = 0444;
> +               attr->show = show_client_busy;
> +
> +               ret = sysfs_create_file(client->busy_root,
> +                                       (struct attribute *)attr);

Do we need to hold a reference from the open file to the
i915_drm_client?

	fd = open("/sys/i915/clients/0/0", O_RDONLY);

	v[0] = read_u64(fd);
	sleep(2); rewind(fd);
	v[1] = read_u64(fd);

	close(fd);

I was thinking whether or not poll("/sys/i915/clients") would return
events for new clients and so whether or not we could do something like

if (poll("/sys/i915/clients", timeout) > 0) {
	for_each_new_client:
		client = open("/sys/i915/client/$id");
}

for_each_client:
	printf("%s: {rcs:%llu, ...}", client->name, read_u64(client->rcs));

Might be a bit heavy on the fds :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
