Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6594172DC5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 02:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD96E6EDAC;
	Fri, 28 Feb 2020 01:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B801C6EDAD
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582851652;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LQhInN/+fDfVG2QYCiT8kgUkr5XH+I4Rhxk+RUHmJOs=;
 b=ZrBR3MItkYO8g3+MXdhrC6wX9wIipM4+NDataVETkrujq5LmN4t7QRNy9YcBXoEaAOlVwX
 NttfGc1A4kMCv7AwI98vGJOHAhF+Rk04WbYGuvzzbZxU6pMan2GH8AV7tIu4vXcRzRq3D/
 5825RfnuFlNG4C9BYwJcOrHuIU0+ZJ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-491-0_fjoB25NmqFt-StItVqwQ-1; Thu, 27 Feb 2020 20:00:42 -0500
X-MC-Unique: 0_fjoB25NmqFt-StItVqwQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AF5BBDB78;
 Fri, 28 Feb 2020 01:00:40 +0000 (UTC)
Received: from tstellar.remote.csb (ovpn-117-123.phx2.redhat.com
 [10.3.117.123])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4B0135C54A;
 Fri, 28 Feb 2020 01:00:39 +0000 (UTC)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 gstreamer-devel@lists.freedesktop.org, Xorg Members List <members@x.org>,
 Mesa Dev <mesa-dev@lists.freedesktop.org>,
 "X.Org development" <xorg-devel@lists.x.org>,
 wayland <wayland-devel@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
References: <CAKMK7uHHK2SsCfpmZwEUyTJJHsoccKoadoko3cEBOoYDFkmeAw@mail.gmail.com>
From: Tom Stellard <tstellar@redhat.com>
Organization: Red Hat
Message-ID: <662b8d0c-d96b-13cd-d3a1-718550f84e4d@redhat.com>
Date: Thu, 27 Feb 2020 17:00:38 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <CAKMK7uHHK2SsCfpmZwEUyTJJHsoccKoadoko3cEBOoYDFkmeAw@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [Mesa-dev] gitlab.fd.o financial situation and
 impact on services
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
Reply-To: tstellar@redhat.com
Cc: "X.Org Foundation Board" <board@foundation.x.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 02/27/2020 01:27 PM, Daniel Vetter wrote:
> Hi all,
> 
> You might have read the short take in the X.org board meeting minutes
> already, here's the long version.
> 
> The good news: gitlab.fd.o has become very popular with our
> communities, and is used extensively. This especially includes all the
> CI integration. Modern development process and tooling, yay!
> 
> The bad news: The cost in growth has also been tremendous, and it's
> breaking our bank account. With reasonable estimates for continued
> growth we're expecting hosting expenses totalling 75k USD this year,
> and 90k USD next year. With the current sponsors we've set up we can't
> sustain that. We estimate that hosting expenses for gitlab.fd.o
> without any of the CI features enabled would total 30k USD, which is
> within X.org's ability to support through various sponsorships, mostly
> through XDC.
> 

Have you looked into applying for free credits from amazon:

https://aws.amazon.com/blogs/opensource/aws-promotional-credits-open-source-projects/

-Tom

> Note that X.org does no longer sponsor any CI runners themselves,
> we've stopped that. The huge additional expenses are all just in
> storing and serving build artifacts and images to outside CI runners
> sponsored by various companies. A related topic is that with the
> growth in fd.o it's becoming infeasible to maintain it all on
> volunteer admin time. X.org is therefore also looking for admin
> sponsorship, at least medium term.
> 
> Assuming that we want cash flow reserves for one year of gitlab.fd.o
> (without CI support) and a trimmed XDC and assuming no sponsor payment
> meanwhile, we'd have to cut CI services somewhere between May and June
> this year. The board is of course working on acquiring sponsors, but
> filling a shortfall of this magnitude is neither easy nor quick work,
> and we therefore decided to give an early warning as soon as possible.
> Any help in finding sponsors for fd.o is very much appreciated.
> 
> Thanks, Daniel
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
