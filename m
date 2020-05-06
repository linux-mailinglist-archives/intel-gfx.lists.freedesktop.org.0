Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFBE1C7014
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 14:14:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23B026E871;
	Wed,  6 May 2020 12:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2AD96E866
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 12:14:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21126310-1500050 for multiple; Wed, 06 May 2020 13:14:12 +0100
MIME-Version: 1.0
In-Reply-To: <05a4b95e-8e08-91dd-acc9-f30e03275091@intel.com>
References: <20200504111249.1367096-1-lionel.g.landwerlin@intel.com>
 <20200504111249.1367096-5-lionel.g.landwerlin@intel.com>
 <158859141809.10831.14803227619074428481@build.alporthouse.com>
 <05a4b95e-8e08-91dd-acc9-f30e03275091@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158876724753.927.9551621902927778819@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 06 May 2020 13:14:07 +0100
Subject: Re: [Intel-gfx] [PATCH v12 4/4] drm/i915/perf: enable filtering on
 multiple contexts
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

Quoting Lionel Landwerlin (2020-05-06 13:04:57)
> On 04/05/2020 14:23, Chris Wilson wrote:
> > Quoting Lionel Landwerlin (2020-05-04 12:12:49)
> >> Add 2 new properties to the i915-perf open ioctl to specify an array
> >> of GEM context handles as well as the length of the array.
> >>
> >> This can be used by drivers using multiple GEM contexts to implement a
> >> single GL context.
> >>
> >> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> >> Link: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/4464
> > >From what I recall of the tests, the API extension looked reasonable.
> > Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> > -Chris
> 
> Is that Rb for the whole series?

I believe they are all tagged, and if not, then make it so.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
