Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4708B15F51C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 19:38:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FEE06FB84;
	Fri, 14 Feb 2020 18:38:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 411196FB84
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 18:37:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20229962-1500050 for multiple; Fri, 14 Feb 2020 18:37:58 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Brian Welty <brian.welty@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200213001418.5899-1-brian.welty@intel.com>
 <158155408885.11180.1339348747260218156@skylake-alporthouse-com>
 <6783dddd-a9e4-c8b2-c169-b5aa7088dd7f@intel.com>
 <383e75e2-a29a-4c8c-e3ba-579008464a45@intel.com>
 <158170497173.15393.11944816323451861470@skylake-alporthouse-com>
In-Reply-To: <158170497173.15393.11944816323451861470@skylake-alporthouse-com>
Message-ID: <158170547436.15393.11492800361928971610@skylake-alporthouse-com>
Date: Fri, 14 Feb 2020 18:37:54 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fix selftest_mocs for
 DGFX
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

Quoting Chris Wilson (2020-02-14 18:29:31)
> +static bool has_l3cc(struct drm_i915_private *i915)
> +{
> +       return true;
> +}
> +
> +static bool has_mocs(struct drm_i915_private *i915)
> +{
> +       return !IS_DGFX(i915);
> +}
> +
>  static int live_mocs_init(struct live_mocs *arg, struct intel_gt *gt)
>  {
> +       struct drm_i915_mocs_table table;
>         int err;
> 
> -       if (!get_mocs_settings(gt->i915, &arg->table))
> +       memset(arg, 0, sizeof(*arg));
> +
> +       if (!get_mocs_settings(gt->i915, &table))
>                 return -EINVAL;

On top of that, if we did something like return a mask from
get_mocs_settings() for HAS_L3CC | HAS_MOCS (or put it into table) we
can share the init with the main code and reduce potential drift.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
