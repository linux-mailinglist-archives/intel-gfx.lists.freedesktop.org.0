Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F022195275
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 08:58:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2BF66E9C2;
	Fri, 27 Mar 2020 07:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx.sdf.org (mx.sdf.org [205.166.94.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04F4E8994A
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 20:21:23 +0000 (UTC)
Received: from sdf.org (IDENT:lkml@faeroes.freeshell.org [205.166.94.9])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02QKLLpC027060
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Thu, 26 Mar 2020 20:21:21 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02QKLLox002497;
 Thu, 26 Mar 2020 20:21:21 GMT
Date: Thu, 26 Mar 2020 20:21:21 +0000
From: George Spelvin <lkml@SDF.ORG>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <20200326202121.GC15115@SDF.ORG>
References: <20200325192429.GA8865@SDF.ORG>
 <CAM0jSHNGok83kk1Z7vm4rKJw3O1uC=9czSuNfidW6wb900HppQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHNGok83kk1Z7vm4rKJw3O1uC=9czSuNfidW6wb900HppQ@mail.gmail.com>
X-Mailman-Approved-At: Fri, 27 Mar 2020 07:57:55 +0000
Subject: Re: [Intel-gfx] [PATCH]
 drivers/gpu/drm/i915/selftests/i915_buddy.c: Fix bug
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
Cc: lkml@sdf.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 26, 2020 at 05:04:43PM +0000, Matthew Auld wrote:
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Thank you!  I got some incomprehensible error emails (reproduced at 
https://patchwork.freedesktop.org/series/75090/) from the patchwork 
daemon, complaining about additional test failures.  Obviously, I care, 
but I can't tell if this is a genuine error, or just a flaky test being 
sensitive to the exact random number generation algorithm.

If you understand these messages, do they look like I broke something?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
