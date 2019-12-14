Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E736511F179
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 11:58:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8AB6E334;
	Sat, 14 Dec 2019 10:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FB506E32F;
 Sat, 14 Dec 2019 10:58:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19577194-1500050 for multiple; Sat, 14 Dec 2019 10:58:37 +0000
MIME-Version: 1.0
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191213215614.24558-4-niranjana.vishwanathapura@intel.com>
References: <20191213215614.24558-1-niranjana.vishwanathapura@intel.com>
 <20191213215614.24558-4-niranjana.vishwanathapura@intel.com>
Message-ID: <157632111528.7535.2801931080292335530@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 14 Dec 2019 10:58:35 +0000
Subject: Re: [Intel-gfx] [RFC v2 03/12] drm/i915/svm: Implicitly migrate BOs
 upon CPU access
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
Cc: kenneth.w.graunke@intel.com, sanjay.k.kumar@intel.com,
 dri-devel@lists.freedesktop.org, jason.ekstrand@intel.com,
 dave.hansen@intel.com, jglisse@redhat.com, jgg@mellanox.com,
 daniel.vetter@intel.com, dan.j.williams@intel.com, ira.weiny@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Niranjana Vishwanathapura (2019-12-13 21:56:05)
> +int i915_gem_object_migrate_region(struct drm_i915_gem_object *obj,
> +                                  u32 *regions, int size)
> +{
> +       struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
> +       struct intel_context *ce = dev_priv->engine[BCS0]->kernel_context;
> +       int i, ret;
> +
>         mutex_lock(&dev_priv->drm.struct_mutex);
>         ret = i915_gem_object_prepare_move(obj);

You appear to be based on a very broken code base. I'd recommend not
doing that.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
