Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF3470A126
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 23:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3016A10E584;
	Fri, 19 May 2023 21:00:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75BCE10E584;
 Fri, 19 May 2023 21:00:47 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DBB9161705;
 Fri, 19 May 2023 21:00:46 +0000 (UTC)
Received: from rdvivi-mobl4 (unknown [192.55.55.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 2D4B9C433EF;
 Fri, 19 May 2023 21:00:44 +0000 (UTC)
Date: Fri, 19 May 2023 17:00:40 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Prahlad Kilambi <prahladk@google.com>
Message-ID: <ZGfjeFpx3gOW3m2t@rdvivi-mobl4>
References: <20230428081457.857009-5-tvrtko.ursulin@linux.intel.com>
 <20230519193656.1929553-1-prahladk@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230519193656.1929553-1-prahladk@google.com>
Subject: Re: [Intel-gfx] [RFC 4/4] drm/i915: Expose RPS thresholds in sysfs
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 19, 2023 at 07:36:56PM +0000, Prahlad Kilambi wrote:
> > One question is are we able to find a "one size fits all" values.
> 
> > However regardless of that, given we already expose frequency controls in sysfs
> > with the same reasoning of allowing system owners explicit control if so wanted,
> > I think exposing the thresholds can be equally justified.
> 
> Exposing these RPS thresholds via sysfs allows for dynamic tuning of these values at runtime. Common scenarios where we can benefit from variable frequency ramping include plugged in vs battery where differing thresholds allow to weight more for performance vs power. Data from testing on ChromeOS Gen12 platforms where GuC isn't enabled indicates gains > 10% across several games. See https://gitlab.freedesktop.org/drm/intel/-/issues/8389#note_1890428 for details.
> 

In general we should always try to reduce the knobs and specially with a register
that doesn't work with the new platforms with FW on control of all these variations.
But this is a compelling argument.

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
(if patch 3 doesn't break compilation and the other chunk has the placement explained
this is a rv-b for the series)
