Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71518154C35
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 20:26:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40E076E1C0;
	Thu,  6 Feb 2020 19:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C0D36E1C0
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 19:26:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20141170-1500050 for multiple; Thu, 06 Feb 2020 19:26:03 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200206014439.2137800-1-chris@chris-wilson.co.uk>
 <20200206014439.2137800-3-chris@chris-wilson.co.uk>
 <87d0arad7t.fsf@gaia.fi.intel.com>
In-Reply-To: <87d0arad7t.fsf@gaia.fi.intel.com>
Message-ID: <158101716219.7306.1389843493650600993@skylake-alporthouse-com>
Date: Thu, 06 Feb 2020 19:26:02 +0000
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Stop invalidating the PD
 cachelines for gen7
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

Quoting Mika Kuoppala (2020-02-06 16:32:22)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Trust that the HW does the right thing after simply updating the
> > PD_DIR_BASE?
> 
> Bspec offers an invalidate before writing the base.
> 
> So, lets assume the DCLV write is superfluous as it will be
> the same.
> 
> Then the sequence would be TLB_INVLIDATE followed by
> PP_DIR_BASE (which will all pds)

I can recommend not doing the 
	*cs++ = _MASKED_BIT_ENABLE(INSTPM_TLB_INVALIDATE);
first.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
