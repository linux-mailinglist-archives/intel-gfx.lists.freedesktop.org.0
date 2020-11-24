Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9D32C30B2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 20:24:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EB0A6E526;
	Tue, 24 Nov 2020 19:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CAFE6E526
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 19:24:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23096137-1500050 for multiple; Tue, 24 Nov 2020 19:24:34 +0000
MIME-Version: 1.0
In-Reply-To: <20201124191316.1660749-3-lucas.demarchi@intel.com>
References: <20201124191316.1660749-1-lucas.demarchi@intel.com>
 <20201124191316.1660749-3-lucas.demarchi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 19:24:32 +0000
Message-ID: <160624587276.28476.13546091969094258197@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: group display-related
 register calls
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

Quoting Lucas De Marchi (2020-11-24 19:13:15)
> intel_gt_driver_register() may be called earlier than
> intel_opregion_register() and acpi_video_register(), so move it up.
> 
> intel_display_debugfs_register() may be called later, together with the
> other display-related initializations. There is a slight change in
> behavior that sysfs files will show up before the display-related
> debugfs files, but that shouldn't be a problem - userspace shouldn't be
> relying in debugfs.
> 
> This allows us to group all the display-related calls under a single
> check for "HAS_DISPLAY()" that can be later moved to a better place.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

They do seem to be independent and movable,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
