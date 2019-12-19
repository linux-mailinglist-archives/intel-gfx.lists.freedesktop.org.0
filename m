Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3FF12714A
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 00:16:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCE5F6EBAB;
	Thu, 19 Dec 2019 23:16:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 985396EBAB
 for <Intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 23:16:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19639835-1500050 for multiple; Thu, 19 Dec 2019 23:16:22 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
 <20191219180019.25562-9-tvrtko.ursulin@linux.intel.com>
 <157679060760.6469.5517436395560834938@skylake-alporthouse-com>
In-Reply-To: <157679060760.6469.5517436395560834938@skylake-alporthouse-com>
Message-ID: <157679738044.18690.9881479365518162583@skylake-alporthouse-com>
Date: Thu, 19 Dec 2019 23:16:20 +0000
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

Quoting Chris Wilson (2019-12-19 21:23:27)
> Quoting Tvrtko Ursulin (2019-12-19 18:00:19)
> > +       for (i = 0;
> > +            client->busy_root && i < ARRAY_SIZE(uabi_class_names);
> > +            i++) {
> > +               struct i915_engine_busy_attribute *i915_attr =
> > +                       &client->attr.busy[i];
> > +
> > +               i915_attr->client = client;
> > +               i915_attr->engine_class = i;
> > +
> > +               attr = &i915_attr->attr;
> > +
> > +               sysfs_attr_init(&attr->attr);
> > +
> > +               attr->attr.name = uabi_class_names[i];
> > +               attr->attr.mode = 0444;
> > +               attr->show = show_client_busy;
> > +
> > +               ret = sysfs_create_file(client->busy_root,
> > +                                       (struct attribute *)attr);
> 
> Do we need to hold a reference from the open file to the
> i915_drm_client?
> 
>         fd = open("/sys/i915/clients/0/0", O_RDONLY);
> 
>         v[0] = read_u64(fd);
>         sleep(2); rewind(fd);
>         v[1] = read_u64(fd);
> 
>         close(fd);

No. Since the sysfs_show() takes a sprintf snapshot of the value, the
above will simply return the same value over and over again. No new
dereferences into our state.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
